unint64_t type metadata accessor for INStartCallIntent()
{
  result = lazy cache variable for type metadata for INStartCallIntent;
  if (!lazy cache variable for type metadata for INStartCallIntent)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for INStartCallIntent);
  }

  return result;
}

void specialized BiomeEventSending.logEventForVoiceTriggerOnHeadset(currentRequest:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioSource();
  v61 = *(v4 - 8);
  __chkstk_darwin(v4);
  v56 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11AudioSourceVSg_ADtMd, &_s13SiriUtilities11AudioSourceVSg_ADtMR);
  __chkstk_darwin(v60);
  v7 = &v52 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
  __chkstk_darwin(v8 - 8);
  v57 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v62 = (&v52 - v11);
  __chkstk_darwin(v12);
  v14 = &v52 - v13;
  __chkstk_darwin(v15);
  v17 = &v52 - v16;
  v18 = type metadata accessor for InputOrigin();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v52 - v23;
  if (a1)
  {
    v58 = v14;
    v59 = v7;
    v25 = one-time initialization token for siriPhone;

    if (v25 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    __swift_project_value_buffer(v26, static Logger.siriPhone);

    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v53 = v28;
      v54 = a2;
      v29 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v63 = v52;
      *v29 = 136315394;
      CurrentRequest.inputOrigin.getter();
      v30 = InputOrigin.rawValue.getter();
      v55 = v4;
      v32 = v31;
      (*(v19 + 8))(v24, v18);
      v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v32, &v63);
      v34 = v55;

      *(v29 + 4) = v33;
      *(v29 + 12) = 2080;
      CurrentRequest.audioSource.getter();
      if (__swift_getEnumTagSinglePayload(v17, 1, v34) == 1)
      {
        outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v17, &_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
        v35 = 0xE300000000000000;
        v36 = 6369134;
      }

      else
      {
        v36 = AudioSource.aceValue.getter();
        v35 = v41;
        (*(v61 + 8))(v17, v34);
      }

      v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v35, &v63);

      *(v29 + 14) = v42;
      _os_log_impl(&dword_0, v27, v53, "#TipKitDiscoverabilitySending InputOrigin: %s, AudioSource: %s", v29, 0x16u);
      swift_arrayDestroy();

      v4 = v55;
    }

    else
    {
    }

    CurrentRequest.inputOrigin.getter();
    v43 = InputOrigin.isVoiceTrigger.getter();
    (*(v19 + 8))(v21, v18);
    v45 = v58;
    v44 = v59;
    if ((v43 & 1) == 0)
    {
      goto LABEL_26;
    }

    CurrentRequest.audioSource.getter();
    v46 = v62;
    static AudioSource.bluetoothDoAPDevice.getter();
    __swift_storeEnumTagSinglePayload(v46, 0, 1, v4);
    v47 = *(v60 + 48);
    outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(v45, v44, &_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
    outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(v46, v44 + v47, &_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
    if (__swift_getEnumTagSinglePayload(v44, 1, v4) == 1)
    {
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v46, &_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v45, &_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
      if (__swift_getEnumTagSinglePayload(v44 + v47, 1, v4) == 1)
      {
        outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v44, &_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
LABEL_25:
        BiomeEventSender.donateTipKitEvent(_:)(PhoneCallFlowDelegatePlugin_PhoneDiscoverabilityEvent_callWithAirPods);
        goto LABEL_26;
      }
    }

    else
    {
      v48 = v57;
      outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(v44, v57, &_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
      if (__swift_getEnumTagSinglePayload(v44 + v47, 1, v4) != 1)
      {
        v49 = v61;
        v50 = v56;
        (*(v61 + 32))(v56, v44 + v47, v4);
        lazy protocol witness table accessor for type StartCallRCHFlowDelegate and conformance StartCallRCHFlowDelegate(&lazy protocol witness table cache variable for type AudioSource and conformance AudioSource, &type metadata accessor for AudioSource, &protocol conformance descriptor for AudioSource);
        LODWORD(v60) = dispatch thunk of static Equatable.== infix(_:_:)();
        v51 = *(v49 + 8);
        v51(v50, v4);
        outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v62, &_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
        outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v45, &_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
        v51(v48, v4);
        outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v44, &_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
        if (v60)
        {
          goto LABEL_25;
        }

LABEL_26:

        return;
      }

      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v62, &_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v45, &_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
      (*(v61 + 8))(v48, v4);
    }

    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v44, &_s13SiriUtilities11AudioSourceVSg_ADtMd, &_s13SiriUtilities11AudioSourceVSg_ADtMR);
    goto LABEL_26;
  }

  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v37 = type metadata accessor for Logger();
  __swift_project_value_buffer(v37, static Logger.siriPhone);
  v62 = Logger.logObject.getter();
  v38 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v62, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&dword_0, v62, v38, "#TipKitDiscoverabilitySending Cannot find CurrentRequest, not donating to Biome", v39, 2u);
  }

  v40 = v62;
}

void static StartCallRCHFlowDelegate.makeLaunchAppCommandForHandle(app:sharedGlobals:intent:intentResponse:biomeEventSender:unsupportedFlowCats:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void *, void), uint64_t a8)
{
  OUTLINED_FUNCTION_29_35();
  v15 = v14[3];
  v16 = v14[4];
  __swift_project_boxed_opaque_existential_1(v14, v15);
  v17 = OUTLINED_FUNCTION_63();
  specialized static StartCallRCHFlowDelegate.makeLaunchAppCommandForHandle(app:sharedGlobals:intent:intentResponse:biomeEventSender:unsupportedFlowCats:_:)(v17, v18, v10, v9, v19, a6, a7, a8, v8, v15, v16);
}

uint64_t implicit closure #1 in StartCallRCHFlowDelegate.init(sharedGlobals:appResolved:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25DucTemplatingLocalContextVSgMd, &_s11SiriKitFlow25DucTemplatingLocalContextVSgMR);
  __chkstk_darwin(v2 - 8);
  v39 = &v31 - v3;
  v4 = type metadata accessor for Locale();
  v37 = *(v4 - 8);
  v38 = v4;
  __chkstk_darwin(v4);
  v32 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CATOption();
  __chkstk_darwin(v6 - 8);
  outlined init with copy of SignalProviding(a1, v52);
  type metadata accessor for StartCallCATs(0);
  static CATOption.defaultMode.getter();
  v7 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for PhoneCallDisplayTextCATs(0);
  static CATOption.defaultMode.getter();
  v41 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for PhoneCallCommonCATs(0);
  static CATOption.defaultMode.getter();
  v40 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for UnsupportedFlowCATs(0);
  static CATOption.defaultMode.getter();
  v8 = CATWrapper.__allocating_init(options:globals:)();
  v9 = type metadata accessor for AppInfoBuilder();
  v10 = swift_allocObject();
  type metadata accessor for TemplatingOperationManager();
  swift_allocObject();
  v11 = v10;
  v36 = v10;

  v12 = TemplatingOperationManager.init()();
  type metadata accessor for StartCallCatTemplatingService(0);
  v13 = swift_allocObject();
  v51[3] = v9;
  v51[4] = &protocol witness table for AppInfoBuilder;
  v51[0] = v11;
  v35 = v7;
  *(v13 + direct field offset for StartCallCatTemplatingService.startCallCatFamily) = v7;
  v33 = v12;
  v34 = v8;
  *(v13 + direct field offset for StartCallCatTemplatingService.unsupportedFlowCats) = v8;
  *(v13 + direct field offset for StartCallCatTemplatingService.operationManager) = v12;
  outlined init with copy of SignalProviding(v52, v48);
  outlined init with copy of SignalProviding(v51, v47);

  static CATOption.defaultMode.getter();
  v14 = CATWrapper.__allocating_init(options:globals:)();
  v46[3] = &type metadata for LabelTemplatesProvider;
  v46[4] = &protocol witness table for LabelTemplatesProvider;
  v15 = swift_allocObject();
  v46[0] = v15;
  *(v15 + 16) = 0u;
  *(v15 + 32) = 0u;
  v16 = class metadata base offset for PhoneCallBaseCatTemplatingService;
  v17 = (v13 + *(*v13 + class metadata base offset for PhoneCallBaseCatTemplatingService + 16));
  *v17 = 0x3D65737561705C1BLL;
  v17[1] = 0xEC0000005C303532;
  v18 = v13 + *(*v13 + v16 + 56);
  *v18 = 0u;
  *(v18 + 1) = 0u;
  *(v18 + 4) = 0;
  outlined init with copy of SignalProviding(v48, v13 + *(*v13 + v16 + 72));
  v19 = v49;
  v20 = v50;
  __swift_project_boxed_opaque_existential_1(v48, v49);
  (*(v20 + 8))(&v44, v19, v20);
  v21 = *(*v13 + class metadata base offset for PhoneCallBaseCatTemplatingService + 40);
  outlined init with take of SPHConversation(&v44, v13 + v21);
  v22 = class metadata base offset for PhoneCallBaseCatTemplatingService;
  v23 = v40;
  *(v13 + *(*v13 + class metadata base offset for PhoneCallBaseCatTemplatingService + 24)) = v41;
  *(v13 + *(*v13 + v22 + 32)) = v23;
  outlined init with copy of SignalProviding(v47, v13 + *(*v13 + v22 + 48));
  outlined init with copy of SignalProviding(v46, v13 + *(*v13 + class metadata base offset for PhoneCallBaseCatTemplatingService + 64));
  *(v13 + *(*v13 + class metadata base offset for PhoneCallBaseCatTemplatingService + 80)) = v14;
  outlined init with copy of SignalProviding(v13 + v21, &v44);
  __swift_project_boxed_opaque_existential_1(&v44, v45);

  v24 = v32;
  dispatch thunk of DeviceState.siriLocale.getter();
  v43[0] = Locale.identifier.getter();
  v43[1] = v25;
  v42[0] = 45;
  v42[1] = 0xE100000000000000;
  v43[5] = 95;
  v43[6] = 0xE100000000000000;
  lazy protocol witness table accessor for type String and conformance String();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  (*(v37 + 8))(v24, v38);

  type metadata accessor for INIntentSlotValueType(0);
  lazy protocol witness table accessor for type StartCallRCHFlowDelegate and conformance StartCallRCHFlowDelegate(&lazy protocol witness table cache variable for type INIntentSlotValueType and conformance INIntentSlotValueType, type metadata accessor for INIntentSlotValueType, &protocol conformance descriptor for INIntentSlotValueType);
  Dictionary.init(dictionaryLiteral:)();
  v26 = v49;
  v27 = v50;
  __swift_project_boxed_opaque_existential_1(v48, v49);
  (*(v27 + 24))(v43, v26, v27);
  outlined init with copy of SignalProviding(v13 + v21, v42);
  v28 = type metadata accessor for DucTemplatingLocalContext();
  __swift_storeEnumTagSinglePayload(v39, 1, 1, v28);
  v29 = DucTemplatingService.init(ducFamily:locale:extensionValueTypeNamesByValueType:aceServiceInvoker:deviceState:localContext:)();

  __swift_destroy_boxed_opaque_existential_1(v52);
  __swift_destroy_boxed_opaque_existential_1(v47);
  __swift_destroy_boxed_opaque_existential_1(v51);
  __swift_destroy_boxed_opaque_existential_1(v46);
  __swift_destroy_boxed_opaque_existential_1(&v44);
  __swift_destroy_boxed_opaque_existential_1(v48);

  return v29;
}

uint64_t StartCallRCHFlowDelegate.makeAceViewProvider()()
{
  static Signpost.begin(_:)();
  OUTLINED_FUNCTION_10_75();
  v1 = dispatch thunk of BaseRCHFlowDelegate.makeDialogTemplating()();
  outlined init with copy of SignalProviding(v0 + direct field offset for StartCallRCHFlowDelegate.sharedGlobals, v4);
  type metadata accessor for StartCallAceViewProvider(0);
  swift_allocObject();
  v2 = StartCallAceViewProvider.init(templatingService:isDirectInvocation:sharedGlobals:)(v1, 1, v4);
  OUTLINED_FUNCTION_13_57();

  return v2;
}

uint64_t StartCallRCHFlowDelegate.makeNLContextProvider()()
{
  static Signpost.begin(_:)();
  OUTLINED_FUNCTION_10_75();
  v1 = (v0 + direct field offset for StartCallRCHFlowDelegate.sharedGlobals);
  __swift_project_boxed_opaque_existential_1((v0 + direct field offset for StartCallRCHFlowDelegate.sharedGlobals), *(v0 + direct field offset for StartCallRCHFlowDelegate.sharedGlobals + 24));
  v2 = OUTLINED_FUNCTION_36_2();
  v3(v2);
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v4 = OUTLINED_FUNCTION_36_2();
  v5(v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB17NLContextProviderCySo07INStartB6IntentCSo0hbI8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin0aB17NLContextProviderCySo07INStartB6IntentCSo0hbI8ResponseCGMR);
  swift_allocObject();
  v6 = specialized PhoneCallNLContextProvider.init(deviceState:assistantProperties:)();
  OUTLINED_FUNCTION_13_57();

  return v6;
}

void *StartCallRCHFlowDelegate.makeDialogTemplating()()
{
  static Signpost.begin(_:)();
  OUTLINED_FUNCTION_10_75();
  (*(**(v0 + direct field offset for StartCallRCHFlowDelegate.dialogTemplatingContainer) + 184))(v8);
  v1 = v8[0];
  v2 = *(v0 + direct field offset for StartCallRCHFlowDelegate.sharedGlobals + 32);
  __swift_project_boxed_opaque_existential_1((v0 + direct field offset for StartCallRCHFlowDelegate.sharedGlobals), *(v0 + direct field offset for StartCallRCHFlowDelegate.sharedGlobals + 24));
  v3 = *(v2 + 72);

  v4 = OUTLINED_FUNCTION_36_2();
  v5 = v3(v4);
  v6 = (*(*v5 + 128))(v5);

  specialized BidirectionalCollection.last.getter(v6, v8);

  if (v8[4])
  {
    outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(&v9, v10, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
    outlined destroy of TransformationResult(v8);
  }

  else
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v8, &_s27PhoneCallFlowDelegatePlugin20TransformationResultVSgMd, &_s27PhoneCallFlowDelegatePlugin20TransformationResultVSgMR);
    memset(v10, 0, sizeof(v10));
    v11 = 0;
  }

  (*(*v1 + class metadata base offset for PhoneCallBaseCatTemplatingService + 96))(v10);

  OUTLINED_FUNCTION_13_57();

  return v1;
}

Swift::Void __swiftcall StartCallRCHFlowDelegate.reloadSiriLanguage()()
{
  v1 = v0;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v2 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v2, static Logger.siriPhone);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_16_4(v4))
  {
    v5 = OUTLINED_FUNCTION_65_0();
    *v5 = 0;
    OUTLINED_FUNCTION_36_0(&dword_0, v6, v7, "siriLanguage changed");
    OUTLINED_FUNCTION_26_0(v5);
  }

  (*(**(v1 + direct field offset for StartCallRCHFlowDelegate.dialogTemplatingContainer) + 192))();
}

uint64_t @objc StartCallRCHFlowDelegate.reloadSiriLanguage()()
{

  StartCallRCHFlowDelegate.reloadSiriLanguage()();
}

uint64_t StartCallRCHFlowDelegate.makeIntentFromParse(parse:previousIntent:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v6 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v6, static Logger.siriPhone);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_16_4(v8))
  {
    v9 = OUTLINED_FUNCTION_65_0();
    *v9 = 0;
    _os_log_impl(&dword_0, v7, v8, "#StartCallRCHFlowDelegate makeIntentFromParse", v9, 2u);
    OUTLINED_FUNCTION_26_0(v9);
  }

  outlined init with copy of SignalProviding(v3 + direct field offset for StartCallRCHFlowDelegate.sharedGlobals, v15);
  v10 = *(v3 + direct field offset for StartCallRCHFlowDelegate.appResolved);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin015IntentFromParseC14StrategyHelperCySo07INStartbF0CGMd, &_s27PhoneCallFlowDelegatePlugin015IntentFromParseC14StrategyHelperCySo07INStartbF0CGMR);
  inited = swift_initStackObject();
  outlined init with take of SPHConversation(v15, inited + 24);
  *(inited + 16) = v10;

  specialized IntentFromParseFlowStrategyHelper.makeIntentFromParse(parse:previousIntent:)(a1, a2);
  v13 = v12;
  swift_setDeallocating();
  specialized IntentFromParseFlowStrategyHelper.__deallocating_deinit();
  return v13;
}

void StartCallRCHFlowDelegate.makeConfirmationStateFromParse(parse:)()
{
  OUTLINED_FUNCTION_66();
  v177 = v0;
  v178 = v1;
  v176 = v2;
  v167 = type metadata accessor for USOParse();
  OUTLINED_FUNCTION_7();
  v160 = v3;
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_12_5();
  v159 = v5 - v6;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v7);
  OUTLINED_FUNCTION_91();
  v164 = v8;
  OUTLINED_FUNCTION_15_0();
  type metadata accessor for SiriKitConfirmationState();
  OUTLINED_FUNCTION_7();
  v174 = v10;
  v175 = v9;
  __chkstk_darwin(v9);
  OUTLINED_FUNCTION_4();
  v161 = v12 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR);
  v14 = OUTLINED_FUNCTION_21(v13);
  __chkstk_darwin(v14);
  v166 = &v157 - v15;
  OUTLINED_FUNCTION_15_0();
  type metadata accessor for Siri_Nlu_External_UserParse();
  OUTLINED_FUNCTION_7();
  v168 = v17;
  v169 = v16;
  __chkstk_darwin(v16);
  OUTLINED_FUNCTION_12_5();
  v163 = v18 - v19;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v20);
  v158 = &v157 - v21;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v22);
  OUTLINED_FUNCTION_91();
  v162 = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin18CommonDirectActionOSgMd, &_s27PhoneCallFlowDelegatePlugin18CommonDirectActionOSgMR);
  v25 = OUTLINED_FUNCTION_21(v24);
  __chkstk_darwin(v25);
  OUTLINED_FUNCTION_12_5();
  v165 = v26 - v27;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v28);
  v172 = &v157 - v29;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v30);
  OUTLINED_FUNCTION_91();
  v171 = v31;
  OUTLINED_FUNCTION_15_0();
  v32 = type metadata accessor for Parse.DirectInvocation();
  OUTLINED_FUNCTION_7();
  v170 = v33;
  __chkstk_darwin(v34);
  OUTLINED_FUNCTION_4();
  v37 = v36 - v35;
  v38 = type metadata accessor for PhoneCallNLv3Intent(0);
  v39 = OUTLINED_FUNCTION_21(v38);
  __chkstk_darwin(v39);
  OUTLINED_FUNCTION_12_5();
  v42 = v40 - v41;
  __chkstk_darwin(v43);
  OUTLINED_FUNCTION_91();
  v173 = v44;
  OUTLINED_FUNCTION_15_0();
  v45 = type metadata accessor for NLIntent();
  OUTLINED_FUNCTION_7();
  v47 = v46;
  __chkstk_darwin(v48);
  OUTLINED_FUNCTION_12_5();
  v51 = v49 - v50;
  __chkstk_darwin(v52);
  v54 = &v157 - v53;
  v55 = type metadata accessor for Parse();
  OUTLINED_FUNCTION_7();
  v57 = v56;
  __chkstk_darwin(v58);
  OUTLINED_FUNCTION_4();
  v61 = v60 - v59;
  (*(v57 + 16))(v60 - v59, v178, v55);
  v62 = OUTLINED_FUNCTION_36_2();
  v64 = v63(v62);
  if (v64 == enum case for Parse.NLv3IntentOnly(_:))
  {
    v65 = OUTLINED_FUNCTION_36_2();
    v66(v65);
    (*(v47 + 32))(v54, v61, v45);
    (*(v47 + 16))(v51, v54, v45);
    v67 = v173;
    PhoneCallNLv3Intent.init(intent:)(v51, v173);
    v68 = *(v177 + direct field offset for StartCallRCHFlowDelegate.sharedGlobals + 24);
    v69 = *(v177 + direct field offset for StartCallRCHFlowDelegate.sharedGlobals + 32);
    __swift_project_boxed_opaque_existential_1((v177 + direct field offset for StartCallRCHFlowDelegate.sharedGlobals), v68);
    (*(v69 + 80))(v179, v68, v69);
    outlined init with copy of PhoneCallNLv3Intent(v67, v42);
    OUTLINED_FUNCTION_66_0();
    v74 = specialized SKTransformer.convertToSKIntent<A>(phoneCallNLIntent:rchFlowContext:)(v70, v71, v72, 0, v73);
    OUTLINED_FUNCTION_1_124();
    _s27PhoneCallFlowDelegatePlugin18CommonDirectActionOWOhTm_0(v42, v75);
    outlined destroy of SKTransformer(v179);
    if (v74)
    {
      if (specialized PhoneCallNLIntent.hasCallConfirmation(_:)(1))
      {

        OUTLINED_FUNCTION_1_124();
        _s27PhoneCallFlowDelegatePlugin18CommonDirectActionOWOhTm_0(v67, v76);
        v77 = OUTLINED_FUNCTION_6_91();
        v78(v77);
LABEL_17:
        v97 = OUTLINED_FUNCTION_27_39();
        v98(v97);
        goto LABEL_43;
      }

      v102 = specialized PhoneCallNLIntent.hasCallConfirmation(_:)(0);
      v103 = (v174 + 104);
      if (v102)
      {

        OUTLINED_FUNCTION_1_124();
        _s27PhoneCallFlowDelegatePlugin18CommonDirectActionOWOhTm_0(v67, v104);
        v105 = OUTLINED_FUNCTION_6_91();
        v106(v105);
        (*v103)(v176, enum case for SiriKitConfirmationState.confirmed(_:), v175);
      }

      else
      {
        v131 = specialized PhoneCallNLIntent.hasCallConfirmation(_:)(2);

        OUTLINED_FUNCTION_1_124();
        _s27PhoneCallFlowDelegatePlugin18CommonDirectActionOWOhTm_0(v67, v132);
        v133 = OUTLINED_FUNCTION_6_91();
        v134(v133);
        if (v131)
        {
          v135 = &enum case for SiriKitConfirmationState.cancelled(_:);
        }

        else
        {
          v135 = &enum case for SiriKitConfirmationState.unset(_:);
        }

        (*v103)(v176, *v135, v175);
      }

      goto LABEL_43;
    }

    OUTLINED_FUNCTION_1_124();
    _s27PhoneCallFlowDelegatePlugin18CommonDirectActionOWOhTm_0(v67, v99);
    v100 = OUTLINED_FUNCTION_6_91();
    v101(v100);
LABEL_36:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow19BaseRCHFlowDelegateCySo17INStartCallIntentCSo0ghI8ResponseCGMd, &_s11SiriKitFlow19BaseRCHFlowDelegateCySo17INStartCallIntentCSo0ghI8ResponseCGMR);
    v155 = method lookup function for BaseRCHFlowDelegate();
    v155(v178);
    goto LABEL_43;
  }

  if (v64 == enum case for Parse.directInvocation(_:))
  {
    v79 = OUTLINED_FUNCTION_36_2();
    v80(v79);
    v81 = v170;
    (*(v170 + 32))(v37, v61, v32);
    v82 = v171;
    static CommonDirectAction.from(_:)(v171);
    (*(v81 + 8))(v37, v32);
    v83 = v172;
    outlined init with take of CommonDirectAction?(v82, v172);
    v84 = type metadata accessor for CommonDirectAction(0);
    if (__swift_getEnumTagSinglePayload(v83, 1, v84) != 1)
    {
      v85 = v165;
      outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(v83, v165, &_s27PhoneCallFlowDelegatePlugin18CommonDirectActionOSgMd, &_s27PhoneCallFlowDelegatePlugin18CommonDirectActionOSgMR);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload == 7 || EnumCaseMultiPayload == 6)
      {
        v153 = OUTLINED_FUNCTION_27_39();
        v154(v153);
        outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v83, &_s27PhoneCallFlowDelegatePlugin18CommonDirectActionOSgMd, &_s27PhoneCallFlowDelegatePlugin18CommonDirectActionOSgMR);
        goto LABEL_43;
      }

      _s27PhoneCallFlowDelegatePlugin18CommonDirectActionOWOhTm_0(v85, type metadata accessor for CommonDirectAction);
    }

    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v83, &_s27PhoneCallFlowDelegatePlugin18CommonDirectActionOSgMd, &_s27PhoneCallFlowDelegatePlugin18CommonDirectActionOSgMR);
    goto LABEL_36;
  }

  if (v64 != enum case for Parse.NLv4IntentOnly(_:))
  {
    if (v64 == enum case for Parse.uso(_:))
    {
      v107 = OUTLINED_FUNCTION_36_2();
      v108(v107);
      v109 = v160;
      v110 = v164;
      v111 = v167;
      (*(v160 + 32))(v164, v61, v167);
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
      }

      v112 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_9_0(v112, static Logger.siriPhone);
      v113 = v159;
      (*(v109 + 16))(v159, v110, v111);
      v114 = Logger.logObject.getter();
      v115 = static os_log_type_t.debug.getter();
      v116 = os_log_type_enabled(v114, v115);
      v117 = v163;
      if (v116)
      {
        v118 = OUTLINED_FUNCTION_42();
        v119 = OUTLINED_FUNCTION_36();
        v179[0] = v119;
        *v118 = 136315138;
        USOParse.userParse.getter();
        v120 = v161;
        Siri_Nlu_External_UserParse.siriKitConfirmationState.getter(v161);
        v121 = v168;
        (*(v168 + 8))(v117, v169);
        v122 = SiriKitConfirmationState.rawValue.getter();
        v123 = v113;
        v125 = v124;
        (*(v174 + 8))(v120, v175);
        v126 = *(v109 + 8);
        v127 = v123;
        v117 = v163;
        v126(v127, v167);
        v128 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v122, v125, v179);

        *(v118 + 4) = v128;
        _os_log_impl(&dword_0, v114, v115, "#StartCallRCHFlowDelegate returns %s", v118, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v119);
        v129 = v119;
        v110 = v164;
        OUTLINED_FUNCTION_26_0(v129);
        v130 = v118;
        v111 = v167;
        OUTLINED_FUNCTION_26_0(v130);
      }

      else
      {

        v126 = *(v109 + 8);
        v126(v113, v111);
        v121 = v168;
      }

      v156 = v169;
      USOParse.userParse.getter();
      Siri_Nlu_External_UserParse.siriKitConfirmationState.getter(v176);
      (*(v121 + 8))(v117, v156);
      v126(v110, v111);
      goto LABEL_43;
    }

    v151 = OUTLINED_FUNCTION_36_2();
    v152(v151);
    goto LABEL_36;
  }

  v87 = OUTLINED_FUNCTION_36_2();
  v88(v87);
  v89 = v166;
  static ConversionUtils.toUserParse(from:)();
  v90 = v169;
  if (__swift_getEnumTagSinglePayload(v89, 1, v169) == 1)
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v89, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR);
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v91 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v91, static Logger.siriPhone);
    v92 = Logger.logObject.getter();
    v93 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_16_4(v93))
    {
      v94 = OUTLINED_FUNCTION_65_0();
      *v94 = 0;
      OUTLINED_FUNCTION_36_0(&dword_0, v95, v96, "#StartCallRCHFlowDelegate NLv4: Could not convert NLv4 User Dialog Act to User Parse");
      OUTLINED_FUNCTION_26_0(v94);
    }

    swift_unknownObjectRelease();
    goto LABEL_17;
  }

  v136 = v168;
  v137 = v162;
  (*(v168 + 32))(v162, v89, v90);
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v138 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v138, static Logger.siriPhone);
  v139 = v158;
  (*(v136 + 16))(v158, v137, v90);
  v140 = Logger.logObject.getter();
  v141 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v140, v141))
  {
    v142 = OUTLINED_FUNCTION_42();
    v143 = OUTLINED_FUNCTION_36();
    v179[0] = v143;
    *v142 = 136315138;
    v144 = v161;
    Siri_Nlu_External_UserParse.siriKitConfirmationState.getter(v161);
    v178 = SiriKitConfirmationState.rawValue.getter();
    v145 = v139;
    v147 = v146;
    (*(v174 + 8))(v144, v175);
    v148 = *(v136 + 8);
    v148(v145, v90);
    v149 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v178, v147, v179);

    *(v142 + 4) = v149;
    _os_log_impl(&dword_0, v140, v141, "#StartCallRCHFlowDelegate returns %s", v142, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v143);
    OUTLINED_FUNCTION_26_0(v143);
    v150 = v142;
    v137 = v162;
    OUTLINED_FUNCTION_26_0(v150);
  }

  else
  {

    v148 = *(v136 + 8);
    v148(v139, v90);
  }

  Siri_Nlu_External_UserParse.siriKitConfirmationState.getter(v176);
  swift_unknownObjectRelease();
  v148(v137, v90);
LABEL_43:
  OUTLINED_FUNCTION_65();
}

uint64_t StartCallRCHFlowDelegate.makeDisambiguationList(app:intent:parameterName:intentResolutionResult:_:)()
{
  OUTLINED_FUNCTION_66();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_29_35();
  v8 = dispatch thunk of BaseRCHFlowDelegate.makeDialogTemplating()();
  v9 = OUTLINED_FUNCTION_63();
  specialized CallingIntentRCHFlowDelegate.buildDisambiguationList(app:intent:parameterName:intentResolutionResult:templatingService:_:)(v9, v10, v1, v0, v7, v8, v5, v3);
  OUTLINED_FUNCTION_65();
}

uint64_t StartCallRCHFlowDelegate.makeUnsupportedValueBehavior(app:intent:parameterName:intentResolutionResult:)@<X0>(uint64_t a1@<X2>, void *a2@<X3>, uint64_t a3@<X8>)
{

  v6._countAndFlagsBits = a1;
  v6._object = a2;
  value = PhoneCallSlotNames.init(rawValue:)(v6).value;
  v8 = type metadata accessor for UnsupportedValueBehavior();
  v9 = *(*(v8 - 8) + 104);
  v10 = &enum case for UnsupportedValueBehavior.dialogAndPrompt(_:);
  if (value == 3)
  {
    v10 = &enum case for UnsupportedValueBehavior.punchOutWithCommand(_:);
  }

  if (value == 13)
  {
    v10 = &enum case for UnsupportedValueBehavior.dialogAndStop(_:);
  }

  v11 = *v10;

  return v9(a3, v11, v8);
}

uint64_t StartCallRCHFlowDelegate.makeErrorDialogBehavior(app:intent:intentResponse:)@<X0>(id a1@<X2>, uint64_t a2@<X8>)
{
  if (!a1)
  {
    goto LABEL_10;
  }

  v3 = [a1 code];
  if (_INStartCallIntentResponseCodeFailureScreenTimeRestrictionEnabled == v3 || _INStartCallIntentResponseCodeFailureDownTimeRestrictionEnabled == v3)
  {
    v5 = &enum case for ErrorDialogBehavior.textOnly(_:);
    goto LABEL_11;
  }

  if ((v3 - 9) <= 3)
  {
    v5 = *(&off_535BC0 + (v3 - 9));
  }

  else
  {
LABEL_10:
    v5 = &enum case for ErrorDialogBehavior.openAppButton(_:);
  }

LABEL_11:
  v6 = *v5;
  type metadata accessor for ErrorDialogBehavior();
  OUTLINED_FUNCTION_23_1();
  v9 = *(v8 + 104);

  return v9(a2, v6, v7);
}

void StartCallRCHFlowDelegate.makeLaunchAppCommandViewBehavior(app:intent:intentResolutionResult:intentResponse:executionStep:_:)()
{
  OUTLINED_FUNCTION_66();
  v1 = v0;
  v56 = v2;
  v57 = v3;
  v5 = v4;
  v7 = v6;
  v54 = *v0;
  v55 = v8;
  v9 = type metadata accessor for LaunchAppBehavior();
  OUTLINED_FUNCTION_7();
  v11 = v10;
  __chkstk_darwin(v12);
  OUTLINED_FUNCTION_4();
  v15 = v14 - v13;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v17 = OUTLINED_FUNCTION_21(v16);
  __chkstk_darwin(v17);
  v53 = &v53 - v18;
  OUTLINED_FUNCTION_15_0();
  v19 = type metadata accessor for RCHExecutionStep();
  OUTLINED_FUNCTION_7();
  v21 = v20;
  __chkstk_darwin(v22);
  OUTLINED_FUNCTION_4();
  v25 = v24 - v23;
  (*(v21 + 104))(v24 - v23, enum case for RCHExecutionStep.handle(_:), v19);
  v26 = static RCHExecutionStep.== infix(_:_:)();
  v27 = v19;
  v28 = v5;
  (*(v21 + 8))(v25, v27);
  if ((v26 & 1) != 0 && v5 && [v5 code] == &dword_0 + 2)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v29 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v29, static Logger.siriPhone);

    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = OUTLINED_FUNCTION_42();
      v33 = OUTLINED_FUNCTION_36();
      v58 = v33;
      *v32 = 136315138;
      v34 = dispatch thunk of App.debugDescription.getter();
      v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v35, &v58);

      *(v32 + 4) = v36;
      _os_log_impl(&dword_0, v30, v31, "#StartCallRCHFlowDelegate Preparing direct launchApp for app: %s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v33);
      OUTLINED_FUNCTION_4_5();
      v37 = v32;
      v28 = v5;
      OUTLINED_FUNCTION_26_0(v37);
    }

    v38 = type metadata accessor for TaskPriority();
    __swift_storeEnumTagSinglePayload(v53, 1, 1, v38);
    v39 = swift_allocObject();
    v39[2] = 0;
    v39[3] = 0;
    v39[4] = v7;
    v39[5] = v1;
    v41 = v55;
    v40 = v56;
    v39[6] = v55;
    v39[7] = v28;
    v42 = v57;
    v39[8] = v40;
    v39[9] = v42;
    v39[10] = v54;

    v43 = v41;
    v44 = v28;

    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();
  }

  else
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v45 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v45, static Logger.siriPhone);

    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = OUTLINED_FUNCTION_42();
      v49 = OUTLINED_FUNCTION_36();
      v58 = v49;
      *v48 = 136315138;
      v50 = dispatch thunk of App.debugDescription.getter();
      v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v51, &v58);

      *(v48 + 4) = v52;
      _os_log_impl(&dword_0, v46, v47, "#StartCallRCHFlowDelegate Preparing launchApp button for app: %s", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v49);
      OUTLINED_FUNCTION_4_5();
      OUTLINED_FUNCTION_26_0(v48);
    }

    (*(v11 + 104))(v15, enum case for LaunchAppBehavior.withDialogAndButton(_:), v9);
    v56(v15);
    (*(v11 + 8))(v15, v9);
  }

  OUTLINED_FUNCTION_65();
}

uint64_t closure #1 in StartCallRCHFlowDelegate.makeLaunchAppCommandViewBehavior(app:intent:intentResolutionResult:intentResponse:executionStep:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[17] = v12;
  v8[18] = v13;
  v8[15] = a7;
  v8[16] = a8;
  v8[13] = a5;
  v8[14] = a6;
  v8[12] = a4;
  v9 = type metadata accessor for LaunchAppBehavior();
  v8[19] = v9;
  v8[20] = *(v9 - 8);
  v8[21] = swift_task_alloc();

  return _swift_task_switch(closure #1 in StartCallRCHFlowDelegate.makeLaunchAppCommandViewBehavior(app:intent:intentResolutionResult:intentResponse:executionStep:_:), 0, 0);
}

uint64_t closure #1 in StartCallRCHFlowDelegate.makeLaunchAppCommandViewBehavior(app:intent:intentResolutionResult:intentResponse:executionStep:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v21 = *(v20 + 144);
  v31 = *(v20 + 112);
  v22 = swift_task_alloc();
  *(v20 + 176) = v22;
  *(v22 + 16) = *(v20 + 96);
  *(v22 + 32) = v31;
  *(v22 + 48) = v21;
  v23 = swift_task_alloc();
  *(v20 + 184) = v23;
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SAIntentGroupLaunchAppWithIntent, SAIntentGroupLaunchAppWithIntent_ptr);
  *v23 = v20;
  v23[1] = closure #1 in StartCallRCHFlowDelegate.makeLaunchAppCommandViewBehavior(app:intent:intentResolutionResult:intentResponse:executionStep:_:);
  OUTLINED_FUNCTION_66_0();

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v24, v25, v26, 0xD000000000000063, v27, v28, v22, v29, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t closure #1 in StartCallRCHFlowDelegate.makeLaunchAppCommandViewBehavior(app:intent:intentResolutionResult:intentResponse:executionStep:_:)()
{
  v7 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v2 = v7;
  *(v7 + 192) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v3, v4, v5);
}

{
  v34 = v0;
  v2 = *(v0 + 112);
  v1 = *(v0 + 120);
  v3 = *(v0 + 88);
  v4 = (*(v0 + 104) + direct field offset for StartCallRCHFlowDelegate.sharedGlobals);
  v5 = v4[3];
  v6 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v5);
  (*(v6 + 8))(v5, v6);
  if (static EmergencyUtils.requiresEmergencyConfirmation(intent:intentResponse:)(v2, v1))
  {
    v32 = static EmergencyUtils.shouldOpenMicForEmergency(intent:deviceState:)(*(v0 + 112));
  }

  else
  {
    v32 = 1;
  }

  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v7 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v7, static Logger.siriPhone);
  v8 = v3;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v33 = v12;
    *v11 = 136315394;
    *(v0 + 56) = outlined bridged method (pb) of @objc _UNNotificationContact.cnContactIdentifier.getter(v8, &selRef_aceId);
    *(v0 + 64) = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    v14 = String.init<A>(describing:)();
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v33);

    *(v11 + 4) = v16;
    *(v11 + 12) = 2080;
    *(v0 + 72) = outlined bridged method (pb) of @objc _UNNotificationContact.cnContactIdentifier.getter(v8, &selRef_refId);
    *(v0 + 80) = v17;
    v18 = String.init<A>(describing:)();
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v33);

    *(v11 + 14) = v20;
    _os_log_impl(&dword_0, v9, v10, "#StartCallRCHFlowDelegate LaunchAppWithIntent aceId: %s, refId: %s", v11, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_26_0(v12);
    OUTLINED_FUNCTION_26_0(v11);
  }

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 67109120;
    *(v23 + 4) = v32 & 1;
    _os_log_impl(&dword_0, v21, v22, "#StartCallRCHFlowDelegate LaunchAppBehavior shouldDialog: %{BOOL}d", v23, 8u);
    OUTLINED_FUNCTION_4_5();
  }

  v25 = *(v0 + 160);
  v24 = *(v0 + 168);
  v26 = *(v0 + 152);
  v27 = *(v0 + 128);
  v28 = *(v0 + 104);

  INStartCallIntent.setLaunchId(app:)(*(v28 + direct field offset for StartCallRCHFlowDelegate.appResolved));
  *v24 = v8;
  *(v24 + 8) = 0;
  *(v24 + 9) = v32 & 1;
  (*(v25 + 104))(v24, enum case for LaunchAppBehavior.withAutomaticPunchOut(_:), v26);
  v29 = v8;
  v27(v24);

  (*(v25 + 8))(v24, v26);

  OUTLINED_FUNCTION_11();

  return v30();
}

{

  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v1 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v1, static Logger.siriPhone);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = OUTLINED_FUNCTION_42();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&dword_0, v2, v3, "#StartCallRCHFlowDelegate Error constructing launchApp, using .withDialogAndButton to continue in app. Error: %@", v4, 0xCu);
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v5, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_26_0(v5);
    OUTLINED_FUNCTION_26_0(v4);
  }

  v8 = v0[20];
  v7 = v0[21];
  v9 = v0[19];
  v10 = v0[16];

  (*(v8 + 104))(v7, enum case for LaunchAppBehavior.withDialogAndButton(_:), v9);
  v10(v7);

  (*(v8 + 8))(v7, v9);

  OUTLINED_FUNCTION_11();

  return v11();
}

uint64_t closure #1 in closure #1 in StartCallRCHFlowDelegate.makeLaunchAppCommandViewBehavior(app:intent:intentResolutionResult:intentResponse:executionStep:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15[0] = a4;
  v15[1] = a5;
  v6 = type metadata accessor for CATOption();
  __chkstk_darwin(v6 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo32SAIntentGroupLaunchAppWithIntentCs5Error_pGMd, &_sScCySo32SAIntentGroupLaunchAppWithIntentCs5Error_pGMR);
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = v15 - v10;
  (*(v8 + 16))(v15 - v10, a1, v7, v9);
  v12 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v13 = swift_allocObject();
  (*(v8 + 32))(v13 + v12, v11, v7);
  if (one-time initialization token for instance != -1)
  {
    swift_once();
  }

  type metadata accessor for UnsupportedFlowCATs(0);
  static CATOption.defaultMode.getter();
  CATWrapper.__allocating_init(options:globals:)();
  _s27PhoneCallFlowDelegatePlugin05Startb7RCHFlowD0C29makeLaunchAppCommandForHandle3app13sharedGlobals6intent0Q8Response16biomeEventSender011unsupportedC4Cats_y04SiriJ10Resolution0J0C_AA06SharedP9Providing_pSo07INStartB6IntentCSo07INStartb6IntentR0CSgAA05BiomeT7Sending_pAA011UnsupportedC4CATsCys6ResultOySo013SAIntentGroupiJ10WithIntentCs5Error_pGctFZTf4nnnnennn_nAA05BiometU0V_Tt6g5();
}

uint64_t closure #1 in static StartCallRCHFlowDelegate.makeLaunchAppCommandForHandle(app:sharedGlobals:intent:intentResponse:biomeEventSender:unsupportedFlowCats:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return _swift_task_switch(closure #1 in static StartCallRCHFlowDelegate.makeLaunchAppCommandForHandle(app:sharedGlobals:intent:intentResponse:biomeEventSender:unsupportedFlowCats:_:), 0, 0);
}

uint64_t closure #1 in static StartCallRCHFlowDelegate.makeLaunchAppCommandForHandle(app:sharedGlobals:intent:intentResponse:biomeEventSender:unsupportedFlowCats:_:)()
{
  v1 = [objc_allocWithZone(SAResultCallback) init];
  v0[6] = v1;
  [v1 setCode:SAResultCallbackAnyErrorCodeValue];
  v0[7] = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v2 = swift_allocObject();
  v0[8] = v2;
  *(v2 + 16) = xmmword_426260;
  v3 = swift_task_alloc();
  v0[9] = v3;
  *v3 = v0;
  v3[1] = closure #1 in static StartCallRCHFlowDelegate.makeLaunchAppCommandForHandle(app:sharedGlobals:intent:intentResponse:biomeEventSender:unsupportedFlowCats:_:);
  v4 = v0[2];

  return static MyriadEmergencyCallOutputs.myriadEmergencyCallCommand(catFamily:)(v4);
}

{
  v1 = *(v0 + 64);
  v2 = *(v0 + 48);
  v3 = *(v0 + 24);
  *(v1 + 32) = *(v0 + 88);
  outlined bridged method (mbnn) of @objc SAResultCallback.commands.setter(v1, v2);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_426260;
  *(v4 + 32) = v2;
  v5 = v2;
  outlined bridged method (mbnn) of @objc SABaseClientBoundCommand.callbacks.setter(v4, v3);
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v6 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v6, static Logger.siriPhone);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_16_4(v8))
  {
    v9 = OUTLINED_FUNCTION_65_0();
    *v9 = 0;
    _os_log_impl(&dword_0, v7, v8, "#StartCallRCHFlowDelegate Added MyriadEmergencyCall as ResultCallback for HomePod LaunchApp", v9, 2u);
    OUTLINED_FUNCTION_26_0(v9);
  }

  v10 = *(v0 + 24);
  v11 = *(v0 + 32);

  v11(v10, 0);
  OUTLINED_FUNCTION_11();

  return v12();
}

{
  v1 = *(v0 + 64);

  *(v1 + 16) = 0;

  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v2 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v2, static Logger.siriPhone);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = OUTLINED_FUNCTION_65_0();
    *v5 = 0;
    _os_log_impl(&dword_0, v3, v4, "#StartCallRCHFlowDelegate Failure attaching MyriadEmergencyCall ResultCallback, returning LaunchApp as-is", v5, 2u);
    OUTLINED_FUNCTION_26_0(v5);
  }

  v6 = *(v0 + 32);
  v7 = *(v0 + 24);

  v6(v7, 0);
  OUTLINED_FUNCTION_11();

  return v8();
}

uint64_t closure #1 in static StartCallRCHFlowDelegate.makeLaunchAppCommandForHandle(app:sharedGlobals:intent:intentResponse:biomeEventSender:unsupportedFlowCats:_:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  OUTLINED_FUNCTION_4_2();
  *v6 = v5;
  *(v4 + 80) = v1;

  if (!v1)
  {
    *(v4 + 88) = a1;
  }

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t StartCallRCHFlowDelegate.__ivar_destroyer()
{

  return __swift_destroy_boxed_opaque_existential_1((v0 + direct field offset for StartCallRCHFlowDelegate.sharedGlobals));
}

void _s27PhoneCallFlowDelegatePlugin05Startb7RCHFlowD0C29makeLaunchAppCommandForHandle3app13sharedGlobals6intent0Q8Response16biomeEventSender011unsupportedC4Cats_y04SiriJ10Resolution0J0C_AA06SharedP9Providing_pSo07INStartB6IntentCSo07INStartb6IntentR0CSgAA05BiomeT7Sending_pAA011UnsupportedC4CATsCys6ResultOySo013SAIntentGroupiJ10WithIntentCs5Error_pGctFZTf4nnnnennn_nAA05BiometU0V_Tt6g5()
{
  OUTLINED_FUNCTION_66();
  v42 = v0;
  v43 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v9 = OUTLINED_FUNCTION_21(v8);
  __chkstk_darwin(v9);
  v11 = &v41 - v10;
  v13 = v7[3];
  v12 = v7[4];
  __swift_project_boxed_opaque_existential_1(v7, v13);
  v14 = (*(v12 + 112))(v13, v12);
  specialized BiomeEventSending.logEventForVoiceTriggerOnHeadset(currentRequest:)(v14, v5);

  if (INStartCallIntent.isThirdPartyCallKitCallBack.getter())
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v15 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v15, static Logger.siriPhone);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_16_4(v17))
    {
      *OUTLINED_FUNCTION_65_0() = 0;
      OUTLINED_FUNCTION_23_39(&dword_0, v18, v17, "#StartCallRCHFlowDelegate 1P-extension redial/callback request wants to build LaunchApp for a 3P call.");
      OUTLINED_FUNCTION_4_5();
    }

    v19 = OUTLINED_FUNCTION_63();
    closure #1 in static ThirdPartyCallKitLaunchAppBuilder.makeLaunchApp(intent:intentResponse:)(v19, v20, v21, v22);
    v40 = v44[0];
    v42(v44[0], 0);
    outlined consume of Result<SAIntentGroupLaunchAppWithIntent, Error>(v40, 0);
  }

  else
  {
    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SAIntentGroupLaunchAppWithIntent, SAIntentGroupLaunchAppWithIntent_ptr);
    v23 = static SAIntentGroupLaunchAppWithIntent.launchAppWithIntent(app:intent:intentResponse:)();
    v24 = OUTLINED_FUNCTION_63();
    if (static EmergencyUtils.requiresEmergencyConfirmation(intent:intentResponse:)(v24, v25) & 1) != 0 && (v26 = v7[3], v27 = v7[4], __swift_project_boxed_opaque_existential_1(v7, v26), (*(v27 + 8))(v44, v26, v27), __swift_project_boxed_opaque_existential_1(v44, v44[3]), LOBYTE(v26) = dispatch thunk of DeviceState.isHomePod.getter(), __swift_destroy_boxed_opaque_existential_1(v44), (v26))
    {
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
      }

      v28 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_9_0(v28, static Logger.siriPhone);
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_16_4(v30))
      {
        *OUTLINED_FUNCTION_65_0() = 0;
        OUTLINED_FUNCTION_23_39(&dword_0, v31, v30, "#StartCallRCHFlowDelegate Building custom LaunchApp for HomePod emergency call");
        OUTLINED_FUNCTION_4_5();
      }

      v32 = type metadata accessor for TaskPriority();
      __swift_storeEnumTagSinglePayload(v11, 1, 1, v32);
      v33 = swift_allocObject();
      v33[2] = 0;
      v33[3] = 0;
      v33[4] = v3;
      v33[5] = v23;
      v34 = v43;
      v33[6] = v42;
      v33[7] = v34;

      _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();
    }

    else
    {
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
      }

      v35 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_9_0(v35, static Logger.siriPhone);
      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_16_4(v37))
      {
        *OUTLINED_FUNCTION_65_0() = 0;
        OUTLINED_FUNCTION_23_39(&dword_0, v38, v37, "#StartCallRCHFlowDelegate Returning default LaunchApp");
        OUTLINED_FUNCTION_4_5();
      }

      v39 = v23;
      v42(v23, 0);
    }
  }

  OUTLINED_FUNCTION_65();
}

void specialized static StartCallRCHFlowDelegate.makeLaunchAppCommandForHandle(app:sharedGlobals:intent:intentResponse:biomeEventSender:unsupportedFlowCats:_:)(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, void (*a7)(void *, void), uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v48 = a7;
  v49 = a8;
  v46 = a6;
  v47 = a1;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  __chkstk_darwin(v15 - 8);
  v45 = &v45 - v16;
  v17 = *(a10 - 8);
  v19 = __chkstk_darwin(v18);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v21, a5, a10, v19);
  v22 = a2[3];
  v23 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v22);
  v24 = (*(v23 + 112))(v22, v23);
  BiomeEventSending.logEventForVoiceTriggerOnHeadset(currentRequest:)(v24, a10, a11);

  (*(v17 + 8))(v21, a10);
  if (INStartCallIntent.isThirdPartyCallKitCallBack.getter())
  {
    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    __swift_project_value_buffer(v25, static Logger.siriPhone);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_0, v26, v27, "#StartCallRCHFlowDelegate 1P-extension redial/callback request wants to build LaunchApp for a 3P call.", v28, 2u);
    }

    closure #1 in static ThirdPartyCallKitLaunchAppBuilder.makeLaunchApp(intent:intentResponse:)(a3, a4, &v50, v51);
    v44 = v51[0];
    v48(v51[0], 0);
    outlined consume of Result<SAIntentGroupLaunchAppWithIntent, Error>(v44, 0);
  }

  else
  {
    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SAIntentGroupLaunchAppWithIntent, SAIntentGroupLaunchAppWithIntent_ptr);
    v29 = static SAIntentGroupLaunchAppWithIntent.launchAppWithIntent(app:intent:intentResponse:)();
    if (static EmergencyUtils.requiresEmergencyConfirmation(intent:intentResponse:)(a3, a4) & 1) != 0 && (v30 = a2[3], v31 = a2[4], __swift_project_boxed_opaque_existential_1(a2, v30), (*(v31 + 8))(v51, v30, v31), __swift_project_boxed_opaque_existential_1(v51, v51[3]), LOBYTE(v30) = dispatch thunk of DeviceState.isHomePod.getter(), __swift_destroy_boxed_opaque_existential_1(v51), (v30))
    {
      if (one-time initialization token for siriPhone != -1)
      {
        swift_once();
      }

      v32 = type metadata accessor for Logger();
      __swift_project_value_buffer(v32, static Logger.siriPhone);
      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&dword_0, v33, v34, "#StartCallRCHFlowDelegate Building custom LaunchApp for HomePod emergency call", v35, 2u);
      }

      v36 = type metadata accessor for TaskPriority();
      __swift_storeEnumTagSinglePayload(v45, 1, 1, v36);
      v37 = swift_allocObject();
      v37[2] = 0;
      v37[3] = 0;
      v37[4] = v46;
      v37[5] = v29;
      v38 = v49;
      v37[6] = v48;
      v37[7] = v38;

      _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();
    }

    else
    {
      if (one-time initialization token for siriPhone != -1)
      {
        swift_once();
      }

      v39 = type metadata accessor for Logger();
      __swift_project_value_buffer(v39, static Logger.siriPhone);
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&dword_0, v40, v41, "#StartCallRCHFlowDelegate Returning default LaunchApp", v42, 2u);
      }

      v43 = v29;
      v48(v29, 0);
    }
  }
}

uint64_t partial apply for closure #1 in StartCallRCHFlowDelegate.makeLaunchAppCommandViewBehavior(app:intent:intentResolutionResult:intentResponse:executionStep:_:)(uint64_t a1)
{
  v3 = v1[3];
  v13 = v1[2];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  v8 = v1[8];
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_18(v9);
  *v10 = v11;
  v10[1] = partial apply for closure #1 in StartCallRCHFlowDelegate.makeLaunchAppCommandViewBehavior(app:intent:intentResolutionResult:intentResponse:executionStep:_:);

  return closure #1 in StartCallRCHFlowDelegate.makeLaunchAppCommandViewBehavior(app:intent:intentResolutionResult:intentResponse:executionStep:_:)(a1, v13, v3, v4, v5, v6, v7, v8);
}

uint64_t instantiation function for generic protocol witness table for StartCallRCHFlowDelegate(uint64_t a1)
{
  result = lazy protocol witness table accessor for type StartCallRCHFlowDelegate and conformance StartCallRCHFlowDelegate(&lazy protocol witness table cache variable for type StartCallRCHFlowDelegate and conformance StartCallRCHFlowDelegate, type metadata accessor for StartCallRCHFlowDelegate, &protocol conformance descriptor for StartCallRCHFlowDelegate);
  *(a1 + 8) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type StartCallRCHFlowDelegate and conformance StartCallRCHFlowDelegate(&lazy protocol witness table cache variable for type StartCallRCHFlowDelegate and conformance BaseRCHFlowDelegate<A, B>, type metadata accessor for StartCallRCHFlowDelegate, &protocol conformance descriptor for BaseRCHFlowDelegate<A, B>);
  *(a1 + 16) = result;
  return result;
}

uint64_t partial apply for closure #1 in static StartCallRCHFlowDelegate.makeLaunchAppCommandForHandle(app:sharedGlobals:intent:intentResponse:biomeEventSender:unsupportedFlowCats:_:)()
{
  OUTLINED_FUNCTION_30_39();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_18(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_8_80(v1);

  return closure #1 in static StartCallRCHFlowDelegate.makeLaunchAppCommandForHandle(app:sharedGlobals:intent:intentResponse:biomeEventSender:unsupportedFlowCats:_:)(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t objectdestroy_15Tm()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t closure #1 in static StartCallRCHFlowDelegate.makeLaunchAppCommandForHandle(app:sharedGlobals:intent:intentResponse:biomeEventSender:unsupportedFlowCats:_:)partial apply()
{
  OUTLINED_FUNCTION_30_39();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_18(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_8_80(v1);

  return closure #1 in static StartCallRCHFlowDelegate.makeLaunchAppCommandForHandle(app:sharedGlobals:intent:intentResponse:biomeEventSender:unsupportedFlowCats:_:)(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t StartVideoCallAceViewProvider.init(templatingService:sharedGlobals:)(uint64_t a1, void *a2)
{
  *(v2 + direct field offset for StartVideoCallAceViewProvider.templatingService) = a1;
  outlined init with copy of SignalProviding(a2, v2 + direct field offset for StartVideoCallAceViewProvider.sharedGlobals);
  v4 = DefaultAceViewProvider.init()();
  __swift_destroy_boxed_opaque_existential_1(a2);
  return v4;
}

uint64_t StartVideoCallAceViewProvider.makeAceViewsForResolveNeedsDisambiguation(app:parameterName:intent:utteranceViews:disambiguationList:deviceIsLocked:_:)(uint64_t a1, uint64_t a2, void *a3, void *a4, unint64_t a5, uint64_t a6, char a7, void (*a8)(uint64_t, void), uint64_t a9)
{
  v17 = type metadata accessor for CATOption();
  __chkstk_darwin(v17 - 8);

  v18._countAndFlagsBits = a2;
  v18._object = a3;
  if (PhoneCallSlotNames.init(rawValue:)(v18).value == PhoneCallFlowDelegatePlugin_PhoneCallSlotNames_contact)
  {
    v32 = a7;
    v31 = direct field offset for StartVideoCallAceViewProvider.sharedGlobals;
    type metadata accessor for PhoneCallDisplayTextCATs(0);
    static CATOption.defaultMode.getter();
    v30 = CATWrapper.__allocating_init(options:globals:)();
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, static Logger.siriPhone);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_0, v20, v21, "#StartCallViewBuilders Providing DefaultDisambiguationBuilder", v22, 2u);
    }

    outlined init with copy of SignalProviding(v33 + v31, v36);
    v34[0] = a1;
    v34[1] = a4;
    v34[2] = a2;
    v34[3] = a3;
    v34[4] = a6;
    v35 = v32 & 1;
    v36[5] = v30;

    v23 = a4;

    specialized IdiomSensitiveViewBuilder.makeViews(utteranceViews:_:)(a5, a8, a9);
    return outlined destroy of DefaultDisambiguationBuilder<INStartVideoCallIntent>(v34);
  }

  else
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v25 = type metadata accessor for Logger();
    __swift_project_value_buffer(v25, static Logger.siriPhone);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_0, v26, v27, "Not disambiguating contacts - not building a disambiguation snippet", v28, 2u);
    }

    if (a5 >> 62)
    {
      type metadata accessor for SAAceView();

      v29 = _bridgeCocoaArray<A>(_:)();
    }

    else
    {

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      type metadata accessor for SAAceView();
      v29 = a5;
    }

    a8(v29, 0);
  }
}

uint64_t StartVideoCallAceViewProvider.__ivar_destroyer()
{

  v1 = (v0 + direct field offset for StartVideoCallAceViewProvider.sharedGlobals);

  return __swift_destroy_boxed_opaque_existential_1(v1);
}

uint64_t StartVideoCallAceViewProvider.deinit()
{
  v0 = DefaultAceViewProvider.deinit();

  __swift_destroy_boxed_opaque_existential_1((v0 + direct field offset for StartVideoCallAceViewProvider.sharedGlobals));
  return v0;
}

uint64_t StartVideoCallAceViewProvider.__deallocating_deinit()
{
  StartVideoCallAceViewProvider.deinit();

  return swift_deallocClassInstance();
}

uint64_t outlined destroy of DefaultDisambiguationBuilder<INStartVideoCallIntent>(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin28DefaultDisambiguationBuilder33_6270EEFB01DDA464E81F258DCCAFA0E4LLVySo012INStartVideoB6IntentCGMd, &_s27PhoneCallFlowDelegatePlugin28DefaultDisambiguationBuilder33_6270EEFB01DDA464E81F258DCCAFA0E4LLVySo012INStartVideoB6IntentCGMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for StartVideoCallAceViewProvider(uint64_t a1)
{
  result = type metadata singleton initialization cache for StartVideoCallAceViewProvider;
  if (!type metadata singleton initialization cache for StartVideoCallAceViewProvider)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t StartVideoCallFlow.init(app:sharedGlobals:)(uint64_t a1, void *a2)
{
  v5 = (v2 + direct field offset for StartVideoCallFlow.flowName);
  *v5 = 0xD000000000000012;
  v5[1] = 0x800000000044F320;
  outlined init with copy of SignalProviding(a2, v8);
  v6 = specialized CallingFlowAbstraction.init(app:flowName:sharedGlobals:)(a1, 0xD000000000000012, 0x800000000044F320, v8);
  __swift_destroy_boxed_opaque_existential_1(a2);
  return v6;
}

uint64_t StartVideoCallFlow.makeRCHFlow(input:intent:app:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v41 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08RCHChildC9ProducersVySo22INStartVideoCallIntentCSo0fghI8ResponseCGMd, &_s11SiriKitFlow08RCHChildC9ProducersVySo22INStartVideoCallIntentCSo0fghI8ResponseCGMR);
  OUTLINED_FUNCTION_7();
  v38 = v6;
  v39 = v5;
  __chkstk_darwin(v5);
  v40 = v33 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08RCHChildC14ProducersAsyncVySo22INStartVideoCallIntentCSo0ghiJ8ResponseCGMd, &_s11SiriKitFlow08RCHChildC14ProducersAsyncVySo22INStartVideoCallIntentCSo0ghiJ8ResponseCGMR);
  OUTLINED_FUNCTION_7();
  v35 = v9;
  v36 = v8;
  __chkstk_darwin(v8);
  v37 = v33 - v10;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0abC7FactoryO0A16RCHFlowProducersVy_So012INStartVideoB6IntentCSo0ijbK8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin0abC7FactoryO0A16RCHFlowProducersVy_So012INStartVideoB6IntentCSo0ijbK8ResponseCGMR);
  __chkstk_darwin(v34);
  v12 = v33 - v11;
  v13 = type metadata accessor for CATOption();
  v14 = __chkstk_darwin(v13 - 8);
  v15 = *(*v3 + 152);
  v15(&v46, v14);
  v16 = one-time initialization token for instance;

  if (v16 != -1)
  {
    swift_once();
  }

  v17 = static BiomeEventSender.instance;
  type metadata accessor for StartVideoCallRCHFlowDelegate(0);
  v18 = swift_allocObject();

  v33[1] = specialized StartVideoCallRCHFlowDelegate.init(sharedGlobals:appResolved:biomeEventSender:)(&v46, a3, v17, v18);
  (v15)(&v46);
  type metadata accessor for PhoneCallDisplayTextCATsSimple(0);
  static CATOption.defaultMode.getter();
  v19 = CATWrapperSimple.__allocating_init(options:globals:)();
  type metadata accessor for StartCallCATsSimple(0);
  static CATOption.defaultMode.getter();
  v20 = CATWrapperSimple.__allocating_init(options:globals:)();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin28CallingIntentRCHFlowStrategyCySo012INStartVideobG0CSo0jkbG8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin28CallingIntentRCHFlowStrategyCySo012INStartVideobG0CSo0jkbG8ResponseCGMR);
  swift_allocObject();
  v22 = specialized CallingIntentRCHFlowStrategy.init(sharedGlobals:appResolved:phoneCallDisplayTextCATsSimple:startCallCATsSimple:)(&v46, a3, v19, v20);
  _s27PhoneCallFlowDelegatePlugin0abC7FactoryO015getGenericStartB9Producers8delegate3appAC0a7RCHFlowJ0Vy_10IntentTypeQz0n8ResponseO0QzGx_17SiriAppResolution0R0CtAA07CallingnmD0RzlFZAA0i5VideobmD0C_Tt2g5();
  (v15)(&v46);
  v23 = v47;
  v24 = v48;
  __swift_project_boxed_opaque_existential_1(&v46, v47);
  (*(v24 + 104))(v43, v23, v24);
  v26 = v44;
  v25 = v45;
  __swift_project_boxed_opaque_existential_1(v43, v44);
  v42 = v22;
  (*(v35 + 16))(v37, &v12[*(v34 + 36)], v36);
  (*(v38 + 16))(v40, v12, v39);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08RCHChildC7FactoryCySo22INStartVideoCallIntentCSo0fghI8ResponseCGMd, &_s11SiriKitFlow08RCHChildC7FactoryCySo22INStartVideoCallIntentCSo0fghI8ResponseCGMR);
  swift_allocObject();
  v27 = RCHChildFlowFactory.init(producers:withFallbacks:)();
  v28 = a3;
  v29 = *(v25 + 8);
  v30 = lazy protocol witness table accessor for type CallingIntentRCHFlowStrategy<INStartVideoCallIntent, INStartVideoCallIntentResponse> and conformance CallingIntentRCHFlowStrategy<A, B>();
  v31 = v29(&v42, v27, v28, v41, v21, v30, v26, v25);

  outlined destroy of PhoneCallFlowFactory.PhoneRCHFlowProducers<INStartVideoCallIntent, INStartVideoCallIntentResponse>(v12);

  __swift_destroy_boxed_opaque_existential_1(v43);
  __swift_destroy_boxed_opaque_existential_1(&v46);
  return v31;
}

uint64_t StartVideoCallFlow.deinit()
{
  v0 = specialized CallingFlowAbstraction.deinit();

  return v0;
}

uint64_t StartVideoCallFlow.__deallocating_deinit()
{
  specialized CallingFlowAbstraction.deinit();

  return swift_deallocClassInstance();
}

unint64_t lazy protocol witness table accessor for type CallingIntentRCHFlowStrategy<INStartVideoCallIntent, INStartVideoCallIntentResponse> and conformance CallingIntentRCHFlowStrategy<A, B>()
{
  result = lazy protocol witness table cache variable for type CallingIntentRCHFlowStrategy<INStartVideoCallIntent, INStartVideoCallIntentResponse> and conformance CallingIntentRCHFlowStrategy<A, B>;
  if (!lazy protocol witness table cache variable for type CallingIntentRCHFlowStrategy<INStartVideoCallIntent, INStartVideoCallIntentResponse> and conformance CallingIntentRCHFlowStrategy<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s27PhoneCallFlowDelegatePlugin28CallingIntentRCHFlowStrategyCySo012INStartVideobG0CSo0jkbG8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin28CallingIntentRCHFlowStrategyCySo012INStartVideobG0CSo0jkbG8ResponseCGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CallingIntentRCHFlowStrategy<INStartVideoCallIntent, INStartVideoCallIntentResponse> and conformance CallingIntentRCHFlowStrategy<A, B>);
  }

  return result;
}

uint64_t outlined destroy of PhoneCallFlowFactory.PhoneRCHFlowProducers<INStartVideoCallIntent, INStartVideoCallIntentResponse>(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0abC7FactoryO0A16RCHFlowProducersVy_So012INStartVideoB6IntentCSo0ijbK8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin0abC7FactoryO0A16RCHFlowProducersVy_So012INStartVideoB6IntentCSo0ijbK8ResponseCGMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for StartVideoCallFlow(uint64_t a1)
{
  result = type metadata singleton initialization cache for StartVideoCallFlow;
  if (!type metadata singleton initialization cache for StartVideoCallFlow)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id static StartVideoCallIntentConversion.convertToIntent(phoneCallNLIntent:app:sharedGlobals:previousIntent:previousIntentResponse:groupResolver:)(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void *a6)
{
  v11 = a6[3];
  v12 = a6[4];
  v13 = __swift_project_boxed_opaque_existential_1(a6, v11);

  return specialized static StartVideoCallIntentConversion.convertToIntent(phoneCallNLIntent:app:sharedGlobals:previousIntent:previousIntentResponse:groupResolver:)(a1, a2, a3, a4, a5, v13, v11, v12);
}

id specialized static StartVideoCallIntentConversion.convertToIntent(phoneCallNLIntent:app:sharedGlobals:previousIntent:previousIntentResponse:groupResolver:)(void *a1, uint64_t a2, void *a3, id a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v98 = a8;
  v14 = type metadata accessor for Locale();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v99 = &v86 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a7 - 8);
  v19 = __chkstk_darwin(v18);
  v21 = &v86 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v17 + 16);
  v101 = a7;
  v22(v21, a6, a7, v19);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (PhoneCallNLIntent.hasAnyConfirmation()())
  {
    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    __swift_project_value_buffer(v23, static Logger.siriPhone);
    v24 = a4;
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v103[0] = v28;
      *v27 = 136315138;
      v102[0] = a4;
      v29 = v24;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo22INStartVideoCallIntentCSgMd, &_sSo22INStartVideoCallIntentCSgMR);
      v30 = String.init<A>(describing:)();
      v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, v103);

      *(v27 + 4) = v32;
      _os_log_impl(&dword_0, v25, v26, "#StartVideoCallIntentConversion is confirmation, returning previousIntent: %s.", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v28);
    }

    v33 = v24;
  }

  else
  {
    v90 = v15;
    v91 = v14;
    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v97 = v17;
    v34 = type metadata accessor for Logger();
    v100 = __swift_project_value_buffer(v34, static Logger.siriPhone);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_0, v35, v36, "#StartVideoCallIntentConversion called with NLv4IntentOnly", v37, 2u);
    }

    v96 = v21;

    v38 = a1[3];
    v39 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v38);
    v40 = (*(v39 + 128))(v38, v39);
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v93 = PhoneCallNLIntent.isEmergencyContactCall()();
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v41 = PhoneCallNLIntent.getPersons()();
    v42 = objc_allocWithZone(INStartVideoCallIntent);
    v43 = @nonobjc INStartVideoCallIntent.init(contacts:)(v41);
    v44 = _s27PhoneCallFlowDelegatePlugin20NLv4IntentConversionPAAE03setG8Metadata3for13sharedGlobals3app08previousG00G4TypeQzAJ_AA06SharedM9Providing_p17SiriAppResolution0T0CAJSgtFZAA010StartVideobgH0O_Tt3g5(v43, a3, a2, a4);

    outlined init with copy of SignalProviding(a1, v103);
    v45 = v44;

    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.debug.getter();

    v48 = os_log_type_enabled(v46, v47);
    v94 = v40;
    v95 = a2;
    if (v48)
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v87 = v50;
      v88 = swift_slowAlloc();
      v102[0] = v88;
      *v49 = 138413058;
      *(v49 + 4) = v45;
      *v50 = v45;
      *(v49 + 12) = 2080;
      v51 = v45;
      v52 = dispatch thunk of App.debugDescription.getter();
      v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v53, v102);
      v89 = a3;
      v55 = v54;

      *(v49 + 14) = v55;
      *(v49 + 22) = 2080;
      v56 = v104;
      v57 = v105;
      __swift_project_boxed_opaque_existential_1(v103, v104);
      (*(v57 + 24))(v56, v57);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin04SiriA7Contact_pMd, &_s27PhoneCallFlowDelegatePlugin04SiriA7Contact_pMR);
      v58 = Array.description.getter();
      v60 = v59;

      __swift_destroy_boxed_opaque_existential_1(v103);
      v61 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v58, v60, v102);

      *(v49 + 24) = v61;
      *(v49 + 32) = 2080;
      type metadata accessor for ContactQuery();
      a3 = v89;
      v62 = Array.debugDescription.getter();
      v64 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, v63, v102);

      *(v49 + 34) = v64;
      _os_log_impl(&dword_0, v46, v47, "#StartVideoCallIntentConversion with intent:%@ resolvedApp:%s phoneCallNLIntent=%s contactQueries=%s", v49, 0x2Au);
      outlined destroy of NSObject?(v87);

      swift_arrayDestroy();
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(v103);
    }

    v65 = a3[3];
    v66 = a3[4];
    __swift_project_boxed_opaque_existential_1(a3, v65);
    v67 = *(v66 + 56);
    a4 = v45;
    v68 = v67(v65, v66);
    LOBYTE(v65) = (*(*v68 + 232))(v68);

    v17 = v97;
    if (v65)
    {
      static SiriKitEventSender.current.getter();
      type metadata accessor for EmergencyContactResolution();
      swift_allocObject();
      v21 = v96;
      _s27PhoneCallFlowDelegatePlugin33ReferenceContactResolutionWrapperO21resolveUpdateSKIntent13siriKitIntent14contactQueries012hasEmergencyG03app02nlO013sharedGlobals18multicardinalIndex0mN11EventSender09emergencygH00P13GroupResolveryAA013NCRResolvableO0_p_Say13SiriInference0G5QueryVGSb07SiriAppH03AppCAA0aB8NLIntent_pAA06SharedW9Providing_pSiSg04SirinC004SirinZ7Sending_pAA0sgH0CAA0G14GroupResolving_ptFZTf4ennnnnnnnnn_nSo012INStartVideobO0C_Tt9g5Tf4nnnnnnnnne_n();

      __swift_destroy_boxed_opaque_existential_1(v103);
    }

    else
    {
      v69 = a3[3];
      v70 = a3[4];
      __swift_project_boxed_opaque_existential_1(a3, v69);
      (*(v70 + 8))(v103, v69, v70);
      __swift_project_boxed_opaque_existential_1(v103, v104);
      v71 = v99;
      dispatch thunk of DeviceState.siriLocale.getter();
      static SiriKitEventSender.current.getter();
      type metadata accessor for EmergencyContactResolution();
      v72 = swift_allocObject();
      v73 = a1[3];
      v74 = a1[4];
      v75 = __swift_project_boxed_opaque_existential_1(a1, v73);
      LOBYTE(v84) = 1;
      _s27PhoneCallFlowDelegatePlugin17ContactResolutionC19updateSiriKitIntent04sirijK014contactQueries012hasEmergencyF03app6locale02nlK013sharedGlobals18multicardinalIndex0lJ11EventSender09emergencyfG0yAA013NCRResolvableK0_p_Say0I9Inference0F5QueryVGSb0i3AppG03AppCSg10Foundation6LocaleVAA0aB8NLIntent_pAA06SharedU9Providing_pSiSg0ijC00ijX7Sending_pAA0pfG0CtFZTf4ennnnnnnnnn_nSo012INStartVideobK0C_Tt9g5Tf4nnnnnennnn_n(a4, v94, v93, v95, v71, v75, a3, 0, v84, v102, v72, v73, v74, v85, v86, v87, v88, v89, v90, v91, v92, v94, v95, v96, v97);

      __swift_destroy_boxed_opaque_existential_1(v102);
      (*(v90 + 8))(v71, v91);
      __swift_destroy_boxed_opaque_existential_1(v103);
      v21 = v96;
    }

    v76 = outlined bridged method (pb) of @objc INStartVideoCallIntent.contacts.getter(a4);
    v77 = one-time initialization token for instance;
    v78 = a4;
    if (v77 != -1)
    {
      swift_once();
    }

    _s27PhoneCallFlowDelegatePlugin34AppSelectionSignalsGatheringHelperO23triggerSignalCollection13sharedGlobals8contacts05phoneB8NLIntent05smartfG018eligibleAppsFinder8skIntentyAA06SharedO9Providing_p_SaySo8INPersonCGSgAA0abR0_pAA05SmartfG14FeatureManagerCSgAA012PrefetchableF7Finding_pAA07CallingX0_pSgtFZTf4nnnnenn_nAA08EligiblefV0C_Tt5g5(a3, v76, a1, 0, static EligibleAppFinder.instance);

    v79 = Logger.logObject.getter();
    v80 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      *v81 = 138412290;
      *(v81 + 4) = v78;
      *v82 = a4;
      v78 = v78;
      _os_log_impl(&dword_0, v79, v80, "#StartVideoCallIntentConversion ends with %@", v81, 0xCu);
      outlined destroy of NSObject?(v82);
    }
  }

  (*(v17 + 8))(v21, v101);
  return a4;
}

uint64_t StartVideoCallRCHFlowDelegate.__allocating_init(sharedGlobals:appResolved:biomeEventSender:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(a3, *(a3 + 24));
  OUTLINED_FUNCTION_9_10();
  __chkstk_darwin(v5);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_79_10();
  (*(v6 + 16))(v3);
  v7 = OUTLINED_FUNCTION_8_2();
  OUTLINED_FUNCTION_154_0(v7, v8);
  v9 = OUTLINED_FUNCTION_40_0();
  return OUTLINED_FUNCTION_161_1(v9);
}

void specialized SKTransformer.nlv3Conversion<A>(phoneCallNLIntent:rchFlowContext:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_159_2();
  v4 = v3;
  v6 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo08INSearchE13HistoryIntentCGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo08INSearchE13HistoryIntentCGMR);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v7);
  v8 = OUTLINED_FUNCTION_53_1();
  static Transformer<>.transformer(sharedGlobals:app:previousIntent:)(v8, v9, v4);
  v10 = Transformer.transform.getter();
  v11 = OUTLINED_FUNCTION_63();
  v12(v11);
  v10(&v13, v6);

  OUTLINED_FUNCTION_87_8();
  OUTLINED_FUNCTION_160_3();
}

{
  OUTLINED_FUNCTION_159_2();
  OUTLINED_FUNCTION_25_42();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo07INStartE6IntentCGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo07INStartE6IntentCGMR);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_26_36();
  OUTLINED_FUNCTION_130_4();
  OUTLINED_FUNCTION_106();
  v5 = swift_allocObject();
  OUTLINED_FUNCTION_65_20(v5);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMR);
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INStartCallIntent, INStartCallIntent_ptr);
  OUTLINED_FUNCTION_49_29();
  Transformer.init(transform:)();
  Transformer.transform.getter();
  v6 = OUTLINED_FUNCTION_24_44();
  v7(v6);
  v8 = OUTLINED_FUNCTION_34_26();
  v3(v8);
  OUTLINED_FUNCTION_90_5();

  OUTLINED_FUNCTION_87_8();
  OUTLINED_FUNCTION_160_3();
}

{
  OUTLINED_FUNCTION_159_2();
  OUTLINED_FUNCTION_25_42();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo012INStartVideoE6IntentCGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo012INStartVideoE6IntentCGMR);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_26_36();
  OUTLINED_FUNCTION_130_4();
  OUTLINED_FUNCTION_106();
  v5 = swift_allocObject();
  OUTLINED_FUNCTION_65_20(v5);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMR);
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INStartVideoCallIntent, INStartVideoCallIntent_ptr);
  OUTLINED_FUNCTION_49_29();
  Transformer.init(transform:)();
  Transformer.transform.getter();
  v6 = OUTLINED_FUNCTION_24_44();
  v7(v6);
  v8 = OUTLINED_FUNCTION_34_26();
  v3(v8);
  OUTLINED_FUNCTION_90_5();

  OUTLINED_FUNCTION_87_8();
  OUTLINED_FUNCTION_160_3();
}

{
  OUTLINED_FUNCTION_159_2();
  OUTLINED_FUNCTION_25_42();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo012INStartAudioE6IntentCGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo012INStartAudioE6IntentCGMR);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_26_36();
  OUTLINED_FUNCTION_130_4();
  OUTLINED_FUNCTION_106();
  v5 = swift_allocObject();
  OUTLINED_FUNCTION_65_20(v5);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMR);
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INStartAudioCallIntent, INStartAudioCallIntent_ptr);
  OUTLINED_FUNCTION_49_29();
  Transformer.init(transform:)();
  Transformer.transform.getter();
  v6 = OUTLINED_FUNCTION_24_44();
  v7(v6);
  v8 = OUTLINED_FUNCTION_34_26();
  v3(v8);
  OUTLINED_FUNCTION_90_5();

  OUTLINED_FUNCTION_87_8();
  OUTLINED_FUNCTION_160_3();
}

{
  OUTLINED_FUNCTION_159_2();
  OUTLINED_FUNCTION_25_42();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo30INIdentifyIncomingCallerIntentCGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo30INIdentifyIncomingCallerIntentCGMR);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_26_36();
  OUTLINED_FUNCTION_130_4();
  OUTLINED_FUNCTION_106();
  v5 = swift_allocObject();
  OUTLINED_FUNCTION_65_20(v5);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMR);
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INIdentifyIncomingCallerIntent, INIdentifyIncomingCallerIntent_ptr);
  OUTLINED_FUNCTION_49_29();
  Transformer.init(transform:)();
  Transformer.transform.getter();
  v6 = OUTLINED_FUNCTION_24_44();
  v7(v6);
  v8 = OUTLINED_FUNCTION_34_26();
  v3(v8);
  OUTLINED_FUNCTION_90_5();

  OUTLINED_FUNCTION_87_8();
  OUTLINED_FUNCTION_160_3();
}

void specialized SKTransformer.nlv3Conversion<A>(phoneCallNLIntent:rchFlowContext:)()
{
  OUTLINED_FUNCTION_30_1();
  OUTLINED_FUNCTION_91_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo08INHangUpE6IntentCGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo08INHangUpE6IntentCGMR);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v1);
  OUTLINED_FUNCTION_26_36();
  v2 = OUTLINED_FUNCTION_138_4();
  outlined init with copy of SignalProviding(v2, v3);
  OUTLINED_FUNCTION_70();
  v4 = swift_allocObject();
  OUTLINED_FUNCTION_158_1(v4);

  v5 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMR);
  v6 = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INHangUpCallIntent, INHangUpCallIntent_ptr);
  OUTLINED_FUNCTION_152_1(v6, v7, v8, v6);
  v9 = Transformer.transform.getter();
  v10 = OUTLINED_FUNCTION_53_1();
  v11(v10);
  v12 = OUTLINED_FUNCTION_34_26();
  v9(v12);
  OUTLINED_FUNCTION_90_5();

  OUTLINED_FUNCTION_29_2();
}

{
  OUTLINED_FUNCTION_30_1();
  OUTLINED_FUNCTION_91_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo08INAnswerE6IntentCGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo08INAnswerE6IntentCGMR);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v1);
  OUTLINED_FUNCTION_26_36();
  v2 = OUTLINED_FUNCTION_138_4();
  outlined init with copy of SignalProviding(v2, v3);
  OUTLINED_FUNCTION_70();
  v4 = swift_allocObject();
  OUTLINED_FUNCTION_158_1(v4);

  v5 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMR);
  v6 = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INAnswerCallIntent, INAnswerCallIntent_ptr);
  OUTLINED_FUNCTION_152_1(v6, v7, v8, v6);
  v9 = Transformer.transform.getter();
  v10 = OUTLINED_FUNCTION_53_1();
  v11(v10);
  v12 = OUTLINED_FUNCTION_34_26();
  v9(v12);
  OUTLINED_FUNCTION_90_5();

  OUTLINED_FUNCTION_29_2();
}

void specialized SKTransformer.nlv4Conversion<A>(phoneCallNLIntent:rchFlowContext:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_159_2();
  v4 = v3;
  v6 = v5;
  OUTLINED_FUNCTION_118_5();
  v7 = type metadata accessor for ContactGroupResolver();
  OUTLINED_FUNCTION_7();
  v9 = v8;
  __chkstk_darwin(v10);
  OUTLINED_FUNCTION_4();
  v13 = v12 - v11;
  if (v6)
  {
    OUTLINED_FUNCTION_130_4();
    if (v4)
    {
      objc_opt_self();
      v4 = swift_dynamicCastObjCClass();
    }

    ContactGroupResolver.init()();
    v14 = OUTLINED_FUNCTION_145_1();
    v17 = static Transformer<>.convertToIntent(phoneCallNLIntent:app:sharedGlobals:previousIntent:)(v14, v15, v16);
    _s27PhoneCallFlowDelegatePlugin20NLv4IntentConversionPAAE03setG8Metadata3for13sharedGlobals3app08previousG00G4TypeQzAJ_AA06SharedM9Providing_p17SiriAppResolution0T0CAJSgtFZAA06Searchb7HistorygH0O_Tt3g5(v17, v36, v6, v4);

    (*(v9 + 8))(v13, v7);
    __swift_destroy_boxed_opaque_existential_1(v36);
    OUTLINED_FUNCTION_87_8();
    OUTLINED_FUNCTION_160_3();
  }

  else
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    v19 = __swift_project_value_buffer(v18, static Logger.siriPhone);
    v20 = OUTLINED_FUNCTION_126_4(v19);
    static os_log_type_t.error.getter();
    v21 = OUTLINED_FUNCTION_28_3();
    if (os_log_type_enabled(v21, v22))
    {
      OUTLINED_FUNCTION_13_14();
      swift_slowAlloc();
      OUTLINED_FUNCTION_16_56();
      v36[0] = swift_slowAlloc();
      dword_0 = 136315138;
      v23 = OUTLINED_FUNCTION_53_20();
      *&dword_4 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, v25);
      OUTLINED_FUNCTION_6_92();
      _os_log_impl(v26, v27, v28, v29, v30, v31);
      __swift_destroy_boxed_opaque_existential_1(v36[0]);
      OUTLINED_FUNCTION_5_39();

      OUTLINED_FUNCTION_10_76();
    }

    OUTLINED_FUNCTION_53_20();
    static SiriKitLifecycle._logCrashToEventBus(_:)();
    OUTLINED_FUNCTION_11_4();
    OUTLINED_FUNCTION_13_58("Fatal error", v32, v33, v34, v35, "PhoneCallFlowDelegatePlugin/PhoneLog.swift");
    __break(1u);
  }
}

{
  OUTLINED_FUNCTION_159_2();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo05INAddE17ParticipantIntentCGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo05INAddE17ParticipantIntentCGMR);
  OUTLINED_FUNCTION_7();
  v13 = v12;
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v14);
  OUTLINED_FUNCTION_26_36();
  if (v8)
  {
    OUTLINED_FUNCTION_130_4();
    OUTLINED_FUNCTION_106();
    v15 = swift_allocObject();
    *(v15 + 16) = v8;
    *(v15 + 24) = v6;
    outlined init with take of SPHConversation(v37, v15 + 32);
    v16 = v6;
    swift_retain_n();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMR);
    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INAddCallParticipantIntent, INAddCallParticipantIntent_ptr);
    OUTLINED_FUNCTION_49_29();
    Transformer.init(transform:)();
    v17 = Transformer.transform.getter();
    (*(v13 + 8))(v3, v11);
    v17(v37, v10);

    OUTLINED_FUNCTION_160_3();
  }

  else
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    v19 = __swift_project_value_buffer(v18, static Logger.siriPhone);
    v20 = OUTLINED_FUNCTION_126_4(v19);
    static os_log_type_t.error.getter();
    v21 = OUTLINED_FUNCTION_28_3();
    if (os_log_type_enabled(v21, v22))
    {
      OUTLINED_FUNCTION_13_14();
      swift_slowAlloc();
      OUTLINED_FUNCTION_16_56();
      v23 = swift_slowAlloc();
      *&v37[0] = v23;
      *v4 = 136315138;
      v24 = OUTLINED_FUNCTION_53_20();
      *(v4 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, v26);
      OUTLINED_FUNCTION_6_92();
      _os_log_impl(v27, v28, v29, v30, v31, v32);
      __swift_destroy_boxed_opaque_existential_1(v23);
      OUTLINED_FUNCTION_5_39();

      OUTLINED_FUNCTION_10_76();
    }

    OUTLINED_FUNCTION_53_20();
    static SiriKitLifecycle._logCrashToEventBus(_:)();
    OUTLINED_FUNCTION_11_4();
    OUTLINED_FUNCTION_13_58("Fatal error", v33, v34, v35, v36, "PhoneCallFlowDelegatePlugin/PhoneLog.swift");
    __break(1u);
  }
}

void specialized SKTransformer.nlv4Conversion<A>(phoneCallNLIntent:rchFlowContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  specialized SKTransformer.nlv4Conversion<A>(phoneCallNLIntent:rchFlowContext:)();
}

{
  specialized SKTransformer.nlv4Conversion<A>(phoneCallNLIntent:rchFlowContext:)();
}

void specialized SKTransformer.nlv4Conversion<A>(phoneCallNLIntent:rchFlowContext:)()
{
  OUTLINED_FUNCTION_30_1();
  v4 = v3;
  v5 = v0;
  v7 = v6;
  v9 = v8;
  OUTLINED_FUNCTION_118_5();
  v10 = type metadata accessor for ContactGroupResolver();
  OUTLINED_FUNCTION_7();
  v12 = v11;
  __chkstk_darwin(v13);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_79_10();
  if (v9)
  {
    outlined init with copy of SignalProviding(v5, v30);
    if (v7)
    {
      objc_opt_self();
      v7 = swift_dynamicCastObjCClass();
    }

    ContactGroupResolver.init()();
    (v4)(v1, v9, v30, v7, 0, v2);

    (*(v12 + 8))(v2, v10);
    __swift_destroy_boxed_opaque_existential_1(v30);
    OUTLINED_FUNCTION_29_2();
  }

  else
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    v15 = __swift_project_value_buffer(v14, static Logger.siriPhone);
    v16 = OUTLINED_FUNCTION_126_4(v15);
    static os_log_type_t.error.getter();
    v17 = OUTLINED_FUNCTION_28_3();
    if (os_log_type_enabled(v17, v18))
    {
      OUTLINED_FUNCTION_13_14();
      swift_slowAlloc();
      OUTLINED_FUNCTION_16_56();
      v19 = swift_slowAlloc();
      OUTLINED_FUNCTION_114_4(v19);
      *(v4 + 4) = OUTLINED_FUNCTION_44_22(4.8149e-34);
      OUTLINED_FUNCTION_6_92();
      _os_log_impl(v20, v21, v22, v23, v24, v25);
      __swift_destroy_boxed_opaque_existential_1(0);
      OUTLINED_FUNCTION_5_39();

      OUTLINED_FUNCTION_10_76();
    }

    OUTLINED_FUNCTION_53_20();
    static SiriKitLifecycle._logCrashToEventBus(_:)();
    OUTLINED_FUNCTION_11_4();
    OUTLINED_FUNCTION_13_58("Fatal error", v26, v27, v28, v29, "PhoneCallFlowDelegatePlugin/PhoneLog.swift");
    __break(1u);
  }
}

{
  specialized SKTransformer.nlv4Conversion<A>(phoneCallNLIntent:rchFlowContext:)();
}

{
  OUTLINED_FUNCTION_30_1();
  v38 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo08INHangUpE6IntentCGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo08INHangUpE6IntentCGMR);
  OUTLINED_FUNCTION_7();
  v12 = v11;
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v13);
  OUTLINED_FUNCTION_26_36();
  v41 = type metadata accessor for ContactGroupResolver();
  OUTLINED_FUNCTION_7();
  v15 = v14;
  __chkstk_darwin(v16);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_79_10();
  if (v9)
  {
    outlined init with copy of SignalProviding(v0, v40);
    if (v7)
    {
      objc_opt_self();
      v17 = swift_dynamicCastObjCClass();
    }

    else
    {
      v17 = 0;
    }

    ContactGroupResolver.init()();
    outlined init with copy of SignalProviding(v40, v39);
    OUTLINED_FUNCTION_70();
    v18 = swift_allocObject();
    v18[2] = v9;
    v18[3] = v17;
    outlined init with take of SPHConversation(v39, (v18 + 4));
    v18[9] = v5;
    v19 = v5;

    v20 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMR);
    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INHangUpCallIntent, INHangUpCallIntent_ptr);
    Transformer.init(transform:)();
    v21 = Transformer.transform.getter();
    (*(v12 + 8))(v0, v10);
    v21(v39, v38);
    if (v1)
    {
    }

    (*(v15 + 8))(v2, v41);
    __swift_destroy_boxed_opaque_existential_1(v40);
    OUTLINED_FUNCTION_29_2();
  }

  else
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    v23 = __swift_project_value_buffer(v22, static Logger.siriPhone);
    v24 = OUTLINED_FUNCTION_126_4(v23);
    static os_log_type_t.error.getter();
    v25 = OUTLINED_FUNCTION_28_3();
    if (os_log_type_enabled(v25, v26))
    {
      OUTLINED_FUNCTION_13_14();
      swift_slowAlloc();
      OUTLINED_FUNCTION_16_56();
      v27 = swift_slowAlloc();
      OUTLINED_FUNCTION_114_4(v27);
      *(v12 + 4) = OUTLINED_FUNCTION_44_22(4.8149e-34);
      OUTLINED_FUNCTION_6_92();
      _os_log_impl(v28, v29, v30, v31, v32, v33);
      __swift_destroy_boxed_opaque_existential_1(v0);
      OUTLINED_FUNCTION_5_39();

      OUTLINED_FUNCTION_10_76();
    }

    OUTLINED_FUNCTION_53_20();
    static SiriKitLifecycle._logCrashToEventBus(_:)();
    OUTLINED_FUNCTION_11_4();
    OUTLINED_FUNCTION_13_58("Fatal error", v34, v35, v36, v37, "PhoneCallFlowDelegatePlugin/PhoneLog.swift");
    __break(1u);
  }
}

{
  OUTLINED_FUNCTION_30_1();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  OUTLINED_FUNCTION_118_5();
  v7 = type metadata accessor for ContactGroupResolver();
  OUTLINED_FUNCTION_7();
  v9 = v8;
  __chkstk_darwin(v10);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_79_10();
  if (v6)
  {
    v11 = OUTLINED_FUNCTION_138_4();
    outlined init with copy of SignalProviding(v11, v12);
    if (v4)
    {
      objc_opt_self();
      swift_dynamicCastObjCClass();
    }

    ContactGroupResolver.init()();
    OUTLINED_FUNCTION_145_1();
    _s27PhoneCallFlowDelegatePlugin06AnswerB16IntentConversionO09convertToG005phoneB8NLIntent3app13sharedGlobals08previousG00pG8Response13groupResolverSo08INAnswerbG0CSgAA0abL0_p_17SiriAppResolution0V0CAA06SharedO9Providing_pAMSo08INIntentQ0CSgAA21ContactGroupResolving_ptFZTf4nnnnnen_n0U9Inference012ContactGroupS0V_Tt5g5();

    (*(v9 + 8))(v0, v7);
    __swift_destroy_boxed_opaque_existential_1(&v29);
    OUTLINED_FUNCTION_29_2();
  }

  else
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    v14 = __swift_project_value_buffer(v13, static Logger.siriPhone);
    v15 = OUTLINED_FUNCTION_126_4(v14);
    static os_log_type_t.error.getter();
    v16 = OUTLINED_FUNCTION_28_3();
    if (os_log_type_enabled(v16, v17))
    {
      OUTLINED_FUNCTION_13_14();
      swift_slowAlloc();
      OUTLINED_FUNCTION_16_56();
      v18 = swift_slowAlloc();
      OUTLINED_FUNCTION_114_4(v18);
      *&dword_4 = OUTLINED_FUNCTION_44_22(4.8149e-34);
      OUTLINED_FUNCTION_6_92();
      _os_log_impl(v19, v20, v21, v22, v23, v24);
      __swift_destroy_boxed_opaque_existential_1(v2);
      OUTLINED_FUNCTION_5_39();

      OUTLINED_FUNCTION_10_76();
    }

    OUTLINED_FUNCTION_53_20();
    static SiriKitLifecycle._logCrashToEventBus(_:)();
    OUTLINED_FUNCTION_11_4();
    OUTLINED_FUNCTION_13_58("Fatal error", v25, v26, v27, v28, "PhoneCallFlowDelegatePlugin/PhoneLog.swift");
    __break(1u);
  }
}

void specialized SKTransformer.nlv4Conversion<A>(phoneCallNLIntent:rchFlowContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_30_1();
  a19 = v23;
  a20 = v24;
  v26 = v25;
  v28 = v27;
  OUTLINED_FUNCTION_88();
  v29 = type metadata accessor for ContactGroupResolver();
  OUTLINED_FUNCTION_7();
  v31 = v30;
  __chkstk_darwin(v32);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_79_10();
  if (v28)
  {
    outlined init with copy of SignalProviding(v20, v63);
    if (v26)
    {
      objc_opt_self();
      v33 = swift_dynamicCastObjCClass();
    }

    else
    {
      v33 = 0;
    }

    ContactGroupResolver.init()();
    __swift_project_boxed_opaque_existential_1(v20, v20[3]);
    OUTLINED_FUNCTION_40_0();
    if (PhoneCallNLIntent.hasAnyConfirmation()())
    {
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_0_6();
        swift_once();
      }

      v34 = type metadata accessor for Logger();
      __swift_project_value_buffer(v34, static Logger.siriPhone);
      v35 = v33;
      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.debug.getter();

      v62 = v35;
      if (os_log_type_enabled(v36, v37))
      {
        OUTLINED_FUNCTION_13_14();
        v38 = swift_slowAlloc();
        OUTLINED_FUNCTION_12_17();
        v61 = swift_slowAlloc();
        a10 = v61;
        *v38 = 136315138;
        v39 = v35;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo30INIdentifyIncomingCallerIntentCSgMd, &_sSo30INIdentifyIncomingCallerIntentCSgMR);
        v40 = String.init<A>(describing:)();
        v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v41, &a10);

        *(v38 + 4) = v42;
        _os_log_impl(&dword_0, v36, v37, "#IdentifyCallerIntentConversion is confirmation, returning previousIntent: %s.", v38, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v61);
        OUTLINED_FUNCTION_8();

        OUTLINED_FUNCTION_8();
      }

      (*(v31 + 8))(v22, v29);
      __swift_destroy_boxed_opaque_existential_1(v63);
      if (v33)
      {
        v43 = v62;
      }
    }

    else
    {
      v44 = [objc_allocWithZone(INIdentifyIncomingCallerIntent) init];
      _s27PhoneCallFlowDelegatePlugin20NLv4IntentConversionPAAE03setG8Metadata3for13sharedGlobals3app08previousG00G4TypeQzAJ_AA06SharedM9Providing_p17SiriAppResolution0T0CAJSgtFZAA014IdentifyCallergH0O_Tt3g5(v44, v63, v28, v33);

      (*(v31 + 8))(v22, v29);
      __swift_destroy_boxed_opaque_existential_1(v63);
    }

    OUTLINED_FUNCTION_29_2();
  }

  else
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v45 = type metadata accessor for Logger();
    v46 = __swift_project_value_buffer(v45, static Logger.siriPhone);
    v47 = OUTLINED_FUNCTION_126_4(v46);
    static os_log_type_t.error.getter();
    v48 = OUTLINED_FUNCTION_28_3();
    if (os_log_type_enabled(v48, v49))
    {
      OUTLINED_FUNCTION_13_14();
      swift_slowAlloc();
      OUTLINED_FUNCTION_16_56();
      v50 = swift_slowAlloc();
      OUTLINED_FUNCTION_114_4(v50);
      *(v21 + 4) = OUTLINED_FUNCTION_44_22(4.8149e-34);
      OUTLINED_FUNCTION_6_92();
      _os_log_impl(v51, v52, v53, v54, v55, v56);
      __swift_destroy_boxed_opaque_existential_1(v20);
      OUTLINED_FUNCTION_5_39();

      OUTLINED_FUNCTION_10_76();
    }

    OUTLINED_FUNCTION_53_20();
    static SiriKitLifecycle._logCrashToEventBus(_:)();
    OUTLINED_FUNCTION_11_4();
    OUTLINED_FUNCTION_13_58("Fatal error", v57, v58, v59, v60, "PhoneCallFlowDelegatePlugin/PhoneLog.swift");
    __break(1u);
  }
}

uint64_t StartVideoCallRCHFlowDelegate.init(sharedGlobals:appResolved:biomeEventSender:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_mutable_project_boxed_opaque_existential_1(a3, *(a3 + 24));
  OUTLINED_FUNCTION_9_10();
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_79_10();
  (*(v5 + 16))(v3);
  v6 = OUTLINED_FUNCTION_8_2();
  OUTLINED_FUNCTION_154_0(v6, v7);
  v8 = OUTLINED_FUNCTION_40_0();
  return OUTLINED_FUNCTION_161_1(v8);
}

void StartVideoCallRCHFlowDelegate.makeDialogTemplating()()
{
  v1 = type metadata accessor for CATOption();
  v2 = OUTLINED_FUNCTION_21(v1);
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_4();
  outlined init with copy of SignalProviding(v0 + direct field offset for StartVideoCallRCHFlowDelegate.sharedGlobals, v4);
  type metadata accessor for StartCallCATs(0);
  static CATOption.defaultMode.getter();
  CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for PhoneCallDisplayTextCATs(0);
  static CATOption.defaultMode.getter();
  CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for PhoneCallCommonCATs(0);
  static CATOption.defaultMode.getter();
  CATWrapper.__allocating_init(options:globals:)();
  OUTLINED_FUNCTION_88();
  v3 = type metadata accessor for AppInfoBuilder();
  OUTLINED_FUNCTION_79(v3);
  type metadata accessor for StartVideoCallTemplatingService(0);
  swift_allocObject();
  specialized StartVideoCallTemplatingService.init(sharedGlobals:catFamily:displayTextCats:phoneCallCommonCats:appInfoBuilder:)();
}

uint64_t StartVideoCallRCHFlowDelegate.makeIntentFromParse(parse:previousIntent:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v6, static Logger.siriPhone);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_16_4(v8))
  {
    v9 = OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_39_22(v9);
    OUTLINED_FUNCTION_34_5();
    _os_log_impl(v10, v11, v12, v13, v14, 2u);
    OUTLINED_FUNCTION_8();
  }

  outlined init with copy of SignalProviding(v3 + direct field offset for StartVideoCallRCHFlowDelegate.sharedGlobals, v20);
  v15 = *(v3 + direct field offset for StartVideoCallRCHFlowDelegate.appResolved);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin015IntentFromParseC14StrategyHelperCySo012INStartVideobF0CGMd, &_s27PhoneCallFlowDelegatePlugin015IntentFromParseC14StrategyHelperCySo012INStartVideobF0CGMR);
  inited = swift_initStackObject();
  outlined init with take of SPHConversation(v20, inited + 24);
  *(inited + 16) = v15;

  specialized IntentFromParseFlowStrategyHelper.makeIntentFromParse(parse:previousIntent:)(a1, a2);
  v18 = v17;
  swift_setDeallocating();
  specialized IntentFromParseFlowStrategyHelper.__deallocating_deinit();
  return v18;
}

void StartVideoCallRCHFlowDelegate.makeConfirmationStateFromParse(parse:)()
{
  OUTLINED_FUNCTION_66();
  v1 = v0;
  v3 = v2;
  v64 = v4;
  v5 = type metadata accessor for PhoneCallNLv3Intent(0);
  v6 = OUTLINED_FUNCTION_21(v5);
  __chkstk_darwin(v6);
  OUTLINED_FUNCTION_12_5();
  v9 = v7 - v8;
  __chkstk_darwin(v10);
  OUTLINED_FUNCTION_91();
  v63 = v11;
  OUTLINED_FUNCTION_15_0();
  type metadata accessor for NLIntent();
  OUTLINED_FUNCTION_7();
  __chkstk_darwin(v12);
  OUTLINED_FUNCTION_12_5();
  v15 = v13 - v14;
  __chkstk_darwin(v16);
  v17 = type metadata accessor for Parse();
  OUTLINED_FUNCTION_7();
  v19 = v18;
  __chkstk_darwin(v20);
  OUTLINED_FUNCTION_4();
  v23 = v22 - v21;
  (*(v19 + 16))(v22 - v21, v3, v17);
  if ((*(v19 + 88))(v23, v17) != enum case for Parse.NLv3IntentOnly(_:))
  {
    (*(v19 + 8))(v23, v17);
    goto LABEL_8;
  }

  (*(v19 + 96))(v23, v17);
  v24 = OUTLINED_FUNCTION_141_2();
  v25(v24);
  v26 = *(v1 + direct field offset for StartVideoCallRCHFlowDelegate.appResolved);
  if (v26)
  {
    v27 = OUTLINED_FUNCTION_53_1();
    v28(v27);

    PhoneCallNLv3Intent.init(intent:)(v15, v63);
    __swift_project_boxed_opaque_existential_1((v1 + direct field offset for StartVideoCallRCHFlowDelegate.sharedGlobals), *(v1 + direct field offset for StartVideoCallRCHFlowDelegate.sharedGlobals + 24));
    v29 = OUTLINED_FUNCTION_129();
    v30(v29);
    outlined init with copy of PhoneCallNLv3Intent(v63, v9);

    v31 = specialized SKTransformer.convertToSKIntent<A>(phoneCallNLIntent:rchFlowContext:)(v9, v26, 0, 0, v65);

    outlined destroy of SKTransformer(v65);
    OUTLINED_FUNCTION_3_114();
    _s27PhoneCallFlowDelegatePlugin0aB10NLv3IntentVWOhTm_0(v9, v32);
    if (v31)
    {
      if (specialized PhoneCallNLIntent.hasCallConfirmation(_:)(1))
      {

        OUTLINED_FUNCTION_3_114();
        _s27PhoneCallFlowDelegatePlugin0aB10NLv3IntentVWOhTm_0(v63, v33);
        v34 = OUTLINED_FUNCTION_60_17();
        v35(v34);
        v36 = &enum case for SiriKitConfirmationState.rejected(_:);
      }

      else
      {
        if ((specialized PhoneCallNLIntent.hasCallConfirmation(_:)(0) & 1) == 0)
        {
          v46 = specialized PhoneCallNLIntent.hasCallConfirmation(_:)(2);

          OUTLINED_FUNCTION_3_114();
          _s27PhoneCallFlowDelegatePlugin0aB10NLv3IntentVWOhTm_0(v63, v47);
          v48 = OUTLINED_FUNCTION_60_17();
          v49(v48);
          type metadata accessor for SiriKitConfirmationState();
          OUTLINED_FUNCTION_23_1();
          if (v46)
          {
            v51 = &enum case for SiriKitConfirmationState.cancelled(_:);
          }

          else
          {
            v51 = &enum case for SiriKitConfirmationState.unset(_:);
          }

          (*(v50 + 104))(v64, *v51);
          goto LABEL_16;
        }

        OUTLINED_FUNCTION_3_114();
        _s27PhoneCallFlowDelegatePlugin0aB10NLv3IntentVWOhTm_0(v63, v41);
        v42 = OUTLINED_FUNCTION_60_17();
        v43(v42);
        v36 = &enum case for SiriKitConfirmationState.confirmed(_:);
      }

      v44 = *v36;
      type metadata accessor for SiriKitConfirmationState();
      OUTLINED_FUNCTION_23_1();
      (*(v45 + 104))(v64, v44);
LABEL_16:
      OUTLINED_FUNCTION_65();
      return;
    }

    OUTLINED_FUNCTION_3_114();
    _s27PhoneCallFlowDelegatePlugin0aB10NLv3IntentVWOhTm_0(v63, v37);
    v38 = OUTLINED_FUNCTION_60_17();
    v39(v38);
LABEL_8:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow19BaseRCHFlowDelegateCySo22INStartVideoCallIntentCSo0ghiJ8ResponseCGMd, &_s11SiriKitFlow19BaseRCHFlowDelegateCySo22INStartVideoCallIntentCSo0ghiJ8ResponseCGMR);
    v40 = method lookup function for BaseRCHFlowDelegate();
    v40(v3);
    goto LABEL_16;
  }

  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v52 = type metadata accessor for Logger();
  __swift_project_value_buffer(v52, static Logger.siriPhone);
  v53 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  v54 = OUTLINED_FUNCTION_28_3();
  if (os_log_type_enabled(v54, v55))
  {
    OUTLINED_FUNCTION_13_14();
    v56 = swift_slowAlloc();
    OUTLINED_FUNCTION_12_17();
    v57 = swift_slowAlloc();
    v65[0] = v57;
    *v56 = 136315138;
    *(v56 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000044, 0x80000000004629B0, v65);
    OUTLINED_FUNCTION_18_30();
    _os_log_impl(v58, v59, v60, v61, v62, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v57);
    OUTLINED_FUNCTION_10_76();

    OUTLINED_FUNCTION_8();
  }

  static SiriKitLifecycle._logCrashToEventBus(_:)();
  OUTLINED_FUNCTION_11_4();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t StartVideoCallRCHFlowDelegate.makeNLContextProvider()()
{
  v0 = OUTLINED_FUNCTION_55();
  __swift_project_boxed_opaque_existential_1(v0, v1);
  v2 = OUTLINED_FUNCTION_1_1();
  v3(v2);
  v4 = OUTLINED_FUNCTION_55();
  __swift_project_boxed_opaque_existential_1(v4, v5);
  v6 = OUTLINED_FUNCTION_1_1();
  v7(v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB17NLContextProviderCySo012INStartVideoB6IntentCSo0hibJ8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin0aB17NLContextProviderCySo012INStartVideoB6IntentCSo0hibJ8ResponseCGMR);
  swift_allocObject();
  return specialized PhoneCallNLContextProvider.init(deviceState:assistantProperties:)();
}

void StartVideoCallRCHFlowDelegate.makeLaunchAppCommandViewBehavior(app:intent:intentResolutionResult:intentResponse:executionStep:)()
{
  OUTLINED_FUNCTION_66();
  v2 = v1;
  v4 = v3;
  v5 = type metadata accessor for RCHExecutionStep();
  OUTLINED_FUNCTION_7();
  v7 = v6;
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_4();
  (*(v7 + 104))(v10 - v9, enum case for RCHExecutionStep.handle(_:), v5);
  v11 = static RCHExecutionStep.== infix(_:_:)();
  v12 = OUTLINED_FUNCTION_63();
  v13(v12);
  if ((v11 & 1) != 0 && v2 && [v2 code] == &dword_0 + 2)
  {
    v14 = *(v0 + direct field offset for StartVideoCallRCHFlowDelegate.biomeEventSender + 24);
    v15 = *(v0 + direct field offset for StartVideoCallRCHFlowDelegate.biomeEventSender + 32);
    __swift_project_boxed_opaque_existential_1((v0 + direct field offset for StartVideoCallRCHFlowDelegate.biomeEventSender), v14);
    v16 = *(v0 + direct field offset for StartVideoCallRCHFlowDelegate.sharedGlobals + 24);
    v17 = *(v0 + direct field offset for StartVideoCallRCHFlowDelegate.sharedGlobals + 32);
    __swift_project_boxed_opaque_existential_1((v0 + direct field offset for StartVideoCallRCHFlowDelegate.sharedGlobals), v16);
    v18 = (*(v17 + 112))(v16, v17);
    BiomeEventSending.logEventForVoiceTriggerOnHeadset(currentRequest:)(v18, v14, v15);

    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SAIntentGroupLaunchAppWithIntent, SAIntentGroupLaunchAppWithIntent_ptr);
    *v4 = static SAIntentGroupLaunchAppWithIntent.launchAppWithIntent(app:intent:intentResponse:)();
    *(v4 + 8) = 256;
    v19 = &enum case for LaunchAppBehavior.withAutomaticPunchOut(_:);
  }

  else
  {
    v19 = &enum case for LaunchAppBehavior.withDialogAndButton(_:);
  }

  v20 = *v19;
  type metadata accessor for LaunchAppBehavior();
  OUTLINED_FUNCTION_23_1();
  (*(v21 + 104))(v4, v20);
  OUTLINED_FUNCTION_65();
}

uint64_t StartVideoCallRCHFlowDelegate.makeUnsupportedValueBehavior(app:intent:parameterName:intentResolutionResult:)@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for UnsupportedValueBehavior.dialogAndPrompt(_:);
  type metadata accessor for UnsupportedValueBehavior();
  OUTLINED_FUNCTION_23_1();
  v5 = *(v4 + 104);

  return v5(a1, v2, v3);
}

uint64_t StartVideoCallRCHFlowDelegate.makeAceViewProvider()(uint64_t a1)
{
  v2 = dispatch thunk of BaseRCHFlowDelegate.makeDialogTemplating()();
  outlined init with copy of SignalProviding(v1 + direct field offset for StartVideoCallRCHFlowDelegate.sharedGlobals, v4);
  type metadata accessor for StartVideoCallAceViewProvider(0);
  swift_allocObject();
  return StartVideoCallAceViewProvider.init(templatingService:sharedGlobals:)(v2, v4);
}

uint64_t StartVideoCallRCHFlowDelegate.makeDisambiguationList(app:intent:parameterName:intentResolutionResult:_:)()
{
  OUTLINED_FUNCTION_66();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = dispatch thunk of BaseRCHFlowDelegate.makeDialogTemplating()();
  v11 = OUTLINED_FUNCTION_63();
  specialized CallingIntentRCHFlowDelegate.buildDisambiguationList(app:intent:parameterName:intentResolutionResult:templatingService:_:)(v11, v12, v9, v7, v5, v10, v3, v1);
  OUTLINED_FUNCTION_65();
}

uint64_t StartVideoCallRCHFlowDelegate.__ivar_destroyer()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + direct field offset for StartVideoCallRCHFlowDelegate.sharedGlobals));
  __swift_destroy_boxed_opaque_existential_1((v0 + direct field offset for StartVideoCallRCHFlowDelegate.biomeEventSender));
}

uint64_t StartVideoCallRCHFlowDelegate.deinit()
{
  v0 = BaseRCHFlowDelegate.deinit();
  __swift_destroy_boxed_opaque_existential_1((v0 + direct field offset for StartVideoCallRCHFlowDelegate.sharedGlobals));
  __swift_destroy_boxed_opaque_existential_1((v0 + direct field offset for StartVideoCallRCHFlowDelegate.biomeEventSender));

  return v0;
}

uint64_t StartVideoCallRCHFlowDelegate.__deallocating_deinit()
{
  StartVideoCallRCHFlowDelegate.deinit();

  return swift_deallocClassInstance();
}

id @nonobjc INAnswerCallIntent.init(audioRoute:callIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  v6 = [v3 initWithAudioRoute:a1 callIdentifier:v5];

  return v6;
}

id @nonobjc INStartVideoCallIntent.init(contacts:)(uint64_t a1)
{
  if (a1)
  {
    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
    v2.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v2.super.isa = 0;
  }

  v3 = [v1 initWithContacts:v2.super.isa];

  return v3;
}

uint64_t outlined bridged method (pb) of @objc INPerson.sourceAppBundleIdentifier.getter(void *a1)
{
  v1 = [a1 sourceAppBundleIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t _s13SiriUtilities11TransformerV27PhoneCallFlowDelegatePluginAD0dE8NLIntent_pRszSo16INCallAudioRouteVRs_rlE11transformer10intentType13sharedGlobals14previousIntentACyAdE_pAGGqd__m_AD06SharedQ9Providing_pSo8INIntentCSgtAORbd__lFZAgdE_pcfU_So08INAnswereS0C_Tt1t4G5@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  result = _s13SiriUtilities11TransformerV27PhoneCallFlowDelegatePluginAD0dE8NLIntent_pRszSo16INCallAudioRouteVRs_rlE11transformer10intentType13sharedGlobals14previousIntentACyAdE_pAGGqd__m_AD06SharedQ9Providing_pSo8INIntentCSgtAORbd__lFZAgdE_pcfU_So08INAnswereS0C_Tt1t4g5(a1, a2, a3);
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

uint64_t specialized StartVideoCallRCHFlowDelegate.init(sharedGlobals:appResolved:biomeEventSender:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14[3] = a5;
  v14[4] = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v14);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_1, a3, a5);
  outlined init with copy of SignalProviding(a1, a4 + direct field offset for StartVideoCallRCHFlowDelegate.sharedGlobals);
  *(a4 + direct field offset for StartVideoCallRCHFlowDelegate.appResolved) = a2;
  outlined init with copy of SignalProviding(v14, a4 + direct field offset for StartVideoCallRCHFlowDelegate.biomeEventSender);
  v12 = BaseRCHFlowDelegate.init()();
  __swift_destroy_boxed_opaque_existential_1(a1);
  __swift_destroy_boxed_opaque_existential_1(v14);
  return v12;
}

void specialized StartVideoCallTemplatingService.init(sharedGlobals:catFamily:displayTextCats:phoneCallCommonCats:appInfoBuilder:)()
{
  OUTLINED_FUNCTION_66();
  v1 = v0;
  v3 = v2;
  v46 = v4;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v44 = v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25DucTemplatingLocalContextVSgMd, &_s11SiriKitFlow25DucTemplatingLocalContextVSgMR);
  OUTLINED_FUNCTION_21(v11);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v12);
  OUTLINED_FUNCTION_27_3();
  v45 = v13;
  OUTLINED_FUNCTION_15_0();
  type metadata accessor for Locale();
  OUTLINED_FUNCTION_7();
  v42 = v15;
  v43 = v14;
  __chkstk_darwin(v14);
  OUTLINED_FUNCTION_4();
  v18 = v17 - v16;
  v19 = type metadata accessor for CATOption();
  v20 = OUTLINED_FUNCTION_21(v19);
  __chkstk_darwin(v20);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_98();
  v55[3] = type metadata accessor for AppInfoBuilder();
  v55[4] = &protocol witness table for AppInfoBuilder;
  v55[0] = v3;
  *(v1 + direct field offset for StartVideoCallTemplatingService.catFamily) = v8;
  outlined init with copy of SignalProviding(v10, v52);
  outlined init with copy of SignalProviding(v55, v51);
  type metadata accessor for StartCallCATs(0);
  OUTLINED_FUNCTION_19_7();

  static CATOption.defaultMode.getter();
  v41 = CATWrapper.__allocating_init(options:globals:)();
  v50[3] = &type metadata for LabelTemplatesProvider;
  v50[4] = &protocol witness table for LabelTemplatesProvider;
  v21 = swift_allocObject();
  v50[0] = v21;
  *(v21 + 16) = 0u;
  *(v21 + 32) = 0u;
  v22 = (v1 + *(*v1 + class metadata base offset for PhoneCallBaseCatTemplatingService + 16));
  *v22 = 0x3D65737561705C1BLL;
  v22[1] = 0xEC0000005C303532;
  OUTLINED_FUNCTION_72_0();
  v24 = v1 + *(v23 + class metadata base offset for PhoneCallBaseCatTemplatingService + 56);
  *v24 = v25;
  *(v24 + 1) = v25;
  *(v24 + 4) = 0;
  OUTLINED_FUNCTION_72_0();
  outlined init with copy of SignalProviding(v52, v1 + *(v26 + class metadata base offset for PhoneCallBaseCatTemplatingService + 72));
  v27 = v53;
  v28 = v54;
  __swift_project_boxed_opaque_existential_1(v52, v53);
  OUTLINED_FUNCTION_148_0();
  v29(&v48, v27, v28);
  OUTLINED_FUNCTION_72_0();
  v31 = *(v30 + class metadata base offset for PhoneCallBaseCatTemplatingService + 40);
  outlined init with take of SPHConversation(&v48, v1 + v31);
  OUTLINED_FUNCTION_72_0();
  *(v1 + *(v32 + class metadata base offset for PhoneCallBaseCatTemplatingService + 24)) = v6;
  OUTLINED_FUNCTION_72_0();
  *(v1 + *(v33 + class metadata base offset for PhoneCallBaseCatTemplatingService + 32)) = v46;
  OUTLINED_FUNCTION_72_0();
  outlined init with copy of SignalProviding(v51, v1 + *(v34 + class metadata base offset for PhoneCallBaseCatTemplatingService + 48));
  OUTLINED_FUNCTION_72_0();
  outlined init with copy of SignalProviding(v50, v1 + *(v35 + class metadata base offset for PhoneCallBaseCatTemplatingService + 64));
  OUTLINED_FUNCTION_72_0();
  *(v1 + *(v36 + class metadata base offset for PhoneCallBaseCatTemplatingService + 80)) = v41;
  outlined init with copy of SignalProviding(v1 + v31, &v48);
  __swift_project_boxed_opaque_existential_1(&v48, v49);
  OUTLINED_FUNCTION_64();

  dispatch thunk of DeviceState.siriLocale.getter();
  v47[5] = Locale.identifier.getter();
  v47[6] = v37;
  v47[0] = 45;
  v47[1] = 0xE100000000000000;
  v47[10] = 95;
  v47[11] = 0xE100000000000000;
  lazy protocol witness table accessor for type String and conformance String();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  (*(v42 + 8))(v18, v43);

  type metadata accessor for INIntentSlotValueType(0);
  lazy protocol witness table accessor for type StartVideoCallRCHFlowDelegate and conformance StartVideoCallRCHFlowDelegate(&lazy protocol witness table cache variable for type INIntentSlotValueType and conformance INIntentSlotValueType, type metadata accessor for INIntentSlotValueType);
  Dictionary.init(dictionaryLiteral:)();
  __swift_project_boxed_opaque_existential_1(v52, v53);
  v38 = OUTLINED_FUNCTION_33_4();
  v39(v38);
  outlined init with copy of SignalProviding(v1 + v31, v47);
  v40 = type metadata accessor for DucTemplatingLocalContext();
  __swift_storeEnumTagSinglePayload(v45, 1, 1, v40);
  DucTemplatingService.init(ducFamily:locale:extensionValueTypeNamesByValueType:aceServiceInvoker:deviceState:localContext:)();

  __swift_destroy_boxed_opaque_existential_1(v44);
  __swift_destroy_boxed_opaque_existential_1(v51);
  __swift_destroy_boxed_opaque_existential_1(v55);
  __swift_destroy_boxed_opaque_existential_1(v50);
  __swift_destroy_boxed_opaque_existential_1(&v48);
  OUTLINED_FUNCTION_161_1(v52);
  OUTLINED_FUNCTION_65();
}

void _s27PhoneCallFlowDelegatePlugin17ContactResolutionC07resolveF7Queries07contactI013siriKitIntent3app02nlM013sharedGlobalsSaySo8INPersonCGSay13SiriInference0F5QueryVG_AA013NCRResolvableM0_p0s3AppG00W0CSgAA0aB8NLIntent_pAA06SharedQ9Providing_ptFZTf4nennnn_nSo07INStartbM0C_Tt4g5Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_66();
  a19 = v21;
  a20 = v22;
  v131 = v23;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v141 = v30;
  v31 = type metadata accessor for ResolvedSiriKitContact();
  OUTLINED_FUNCTION_7();
  v33 = v32;
  __chkstk_darwin(v34);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_98();
  v140 = type metadata accessor for RecommenderType();
  OUTLINED_FUNCTION_7();
  v138 = v35;
  __chkstk_darwin(v36);
  OUTLINED_FUNCTION_5_4();
  v139 = v37;
  OUTLINED_FUNCTION_15_0();
  v134 = type metadata accessor for SearchSuggestedContacts();
  OUTLINED_FUNCTION_7();
  v133 = v38;
  __chkstk_darwin(v39);
  OUTLINED_FUNCTION_5_4();
  OUTLINED_FUNCTION_13(v40);
  v41 = type metadata accessor for ContactResolverDomain();
  v42 = OUTLINED_FUNCTION_21(v41);
  __chkstk_darwin(v42);
  OUTLINED_FUNCTION_5_4();
  OUTLINED_FUNCTION_13(v43);
  v137 = type metadata accessor for ContactActionType();
  OUTLINED_FUNCTION_7();
  v135 = v44;
  __chkstk_darwin(v45);
  OUTLINED_FUNCTION_16_2();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v46);
  OUTLINED_FUNCTION_13_5();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v47);
  OUTLINED_FUNCTION_91();
  v146 = v48;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference27ContactHandleTypePreferenceVSgMd, &_s13SiriInference27ContactHandleTypePreferenceVSgMR);
  v50 = OUTLINED_FUNCTION_21(v49);
  __chkstk_darwin(v50);
  OUTLINED_FUNCTION_16_2();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v51);
  OUTLINED_FUNCTION_91();
  v149 = v52;
  OUTLINED_FUNCTION_15_0();
  v150 = type metadata accessor for Locale();
  OUTLINED_FUNCTION_7();
  v145 = v53;
  __chkstk_darwin(v54);
  OUTLINED_FUNCTION_16_2();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v55);
  OUTLINED_FUNCTION_91();
  v148 = v56;
  v57 = OUTLINED_FUNCTION_15_0();
  v58 = type metadata accessor for ContactResolverConfigHashable(v57);
  OUTLINED_FUNCTION_23_1();
  __chkstk_darwin(v59);
  OUTLINED_FUNCTION_16_2();
  v144 = v60;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v61);
  v63 = v123 - v62;
  v64 = _swiftEmptyArrayStorage;
  v123[0] = v20;
  if (v27)
  {
    App.appIdentifier.getter();
    if (v65)
    {
      OUTLINED_FUNCTION_150_3();
      v66 = v25;
      OUTLINED_FUNCTION_76_3();
      v68 = v67[2];
      v69 = v67;
      if (v68 >= v67[3] >> 1)
      {
        OUTLINED_FUNCTION_142_2();
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v69 = v122;
      }

      v69[2] = v68 + 1;
      v64 = v69;
      v70 = &v69[2 * v68];
      v70[4] = v27;
      v70[5] = v29;
      v25 = v66;
    }

    else
    {
      v64 = _swiftEmptyArrayStorage;
    }
  }

  v142 = v63;
  v143 = v58;
  v147 = v64;
  if (one-time initialization token for emptyStartCallIntent != -1)
  {
    OUTLINED_FUNCTION_6_30(&one-time initialization token for emptyStartCallIntent);
  }

  v123[1] = v31;
  v71 = [static PhoneCallIntentClassNames.emptyStartCallIntent _className];
  v72 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v74 = v73;

  v75 = v25[3];
  v76 = v25[4];
  __swift_project_boxed_opaque_existential_1(v25, v75);
  OUTLINED_FUNCTION_50_28();
  v77(v75, v76);
  OUTLINED_FUNCTION_156_1();
  v78 = v148;
  DeviceState.siriInputLocale.getter();
  v79 = v147;

  v80 = v29;
  v81 = outlined bridged method (ob) of @objc INIntent.intentId.getter(v80);
  if (v82)
  {
    v83 = v81;
  }

  else
  {
    v83 = 0;
  }

  if (v82)
  {
    v84 = v82;
  }

  else
  {
    v84 = 0xE000000000000000;
  }

  v85 = v144;
  v127 = v83;
  *v144 = v83;
  v85[1] = v84;
  v129 = v72;
  v85[2] = v72;
  v85[3] = v74;
  v86 = v143;
  v87 = v85 + *(v143 + 24);
  v125 = *(v145 + 16);
  v125(v87, v78, v150);
  *(v85 + *(v86 + 28)) = v79;

  v126 = v84;

  v128 = v74;

  static ContactResolverConfigHashable.chooseHandleTypePreference(skIntent:)(v131, v149);
  v88 = [v80 preferredCallProvider];
  v124 = v25;
  if (v88 == &dword_0 + 2)
  {
    v131 = v33;
    ObjectType = swift_getObjectType();
    dynamic_cast_existential_1_unconditional(v80, ObjectType, &protocol descriptor for CallingIntent);
    v84 = v90;
    v91 = swift_getObjectType();
    v78 = *(v84 + 24);
    v92 = v80;
    v78(v91, v84);

    OUTLINED_FUNCTION_80_2();
    v95 = OUTLINED_FUNCTION_112_5();
    v96 = v137;
    v97(v95);
    v33 = v131;
  }

  else
  {
    OUTLINED_FUNCTION_80_2();
    v93 = OUTLINED_FUNCTION_112_5();
    v96 = v137;
    v94(v93);
  }

  (*(v84 + 32))(v146, v78, v96);
  v98 = OUTLINED_FUNCTION_140_3(&a9);
  v125(v98, v148, v150);
  static ContactResolverDomain.phone.getter();
  outlined init with copy of ContactHandleTypePreference?(v149, v130);
  (*(v133 + 104))(v136, enum case for SearchSuggestedContacts.ifOnlyMatchIsSuggested(_:), v134);
  (*(v138 + 104))(v139, enum case for RecommenderType.mlRecommender(_:), v140);
  v99 = v144;
  v100 = v147;
  ContactResolverConfig.init(intentId:intentTypeName:locale:logRunTimeData:processNLv3SpeechAlternatives:bundleIds:domainsToSearchForHistory:searchSuggestedContacts:handleTypePreference:recommender:customGenerator:)();
  (*(v84 + 16))(v132, v146, v96);
  ContactResolverConfig.actionType.setter();
  v101 = OUTLINED_FUNCTION_145_1();
  v102(v101);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v149, &_s13SiriInference27ContactHandleTypePreferenceVSgMd, &_s13SiriInference27ContactHandleTypePreferenceVSgMR);
  (*(v145 + 8))(v148, v150);
  v103 = v142;
  outlined init with take of ContactResolverConfigHashable(v99, v142);
  __swift_destroy_boxed_opaque_existential_1(v151);
  v104 = v124[3];
  v105 = v124[4];
  __swift_project_boxed_opaque_existential_1(v124, v104);
  v106 = OUTLINED_FUNCTION_35_29();
  v107(v106);
  OUTLINED_FUNCTION_62_22();
  OUTLINED_FUNCTION_64_18();
  v108();
  if (v104)
  {

    __swift_destroy_boxed_opaque_existential_1(v151);
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v109 = type metadata accessor for Logger();
    __swift_project_value_buffer(v109, static Logger.siriPhone);
    OUTLINED_FUNCTION_5();
    swift_errorRetain();
    v110 = Logger.logObject.getter();
    static os_log_type_t.error.getter();

    if (OUTLINED_FUNCTION_115_1())
    {
      OUTLINED_FUNCTION_13_14();
      swift_slowAlloc();
      OUTLINED_FUNCTION_16_56();
      v111 = swift_slowAlloc();
      OUTLINED_FUNCTION_144_2(v111);
      OUTLINED_FUNCTION_125_4(4.8149e-34);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v112 = String.init<A>(describing:)();
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v112, v113, v151);
      OUTLINED_FUNCTION_89_6();

      *(v105 + 4) = v33;
      OUTLINED_FUNCTION_6_92();
      _os_log_impl(v114, v115, v116, v117, v118, v119);
      __swift_destroy_boxed_opaque_existential_1(v100);
      OUTLINED_FUNCTION_5_39();

      OUTLINED_FUNCTION_10_76();
    }

    OUTLINED_FUNCTION_1_125();
    _s27PhoneCallFlowDelegatePlugin0aB10NLv3IntentVWOhTm_0(v103, v120);
  }

  else
  {
    OUTLINED_FUNCTION_157_2();

    OUTLINED_FUNCTION_1_125();
    _s27PhoneCallFlowDelegatePlugin0aB10NLv3IntentVWOhTm_0(v103, v121);
  }

  OUTLINED_FUNCTION_65();
}

void _s27PhoneCallFlowDelegatePlugin17ContactResolutionC07resolveF7Queries07contactI013siriKitIntent3app02nlM013sharedGlobalsSaySo8INPersonCGSay13SiriInference0F5QueryVG_AA013NCRResolvableM0_p0s3AppG00W0CSgAA0aB8NLIntent_pAA06SharedQ9Providing_ptFZTf4nennnn_nSo012INStartVideobM0C_Tt4g5()
{
  OUTLINED_FUNCTION_66();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v110 = v7;
  v93[1] = type metadata accessor for ResolvedSiriKitContact();
  OUTLINED_FUNCTION_7();
  v93[3] = v8;
  __chkstk_darwin(v9);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_98();
  v109 = type metadata accessor for RecommenderType();
  OUTLINED_FUNCTION_7();
  v107 = v10;
  __chkstk_darwin(v11);
  OUTLINED_FUNCTION_5_4();
  v108 = v12;
  OUTLINED_FUNCTION_15_0();
  v103 = type metadata accessor for SearchSuggestedContacts();
  OUTLINED_FUNCTION_7();
  v102 = v13;
  __chkstk_darwin(v14);
  OUTLINED_FUNCTION_5_4();
  v105 = v15;
  OUTLINED_FUNCTION_15_0();
  v16 = type metadata accessor for ContactResolverDomain();
  v17 = OUTLINED_FUNCTION_21(v16);
  __chkstk_darwin(v17);
  OUTLINED_FUNCTION_5_4();
  OUTLINED_FUNCTION_13(v18);
  v106 = type metadata accessor for ContactActionType();
  OUTLINED_FUNCTION_7();
  v104 = v19;
  __chkstk_darwin(v20);
  OUTLINED_FUNCTION_16_2();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v21);
  v23 = v93 - v22;
  __chkstk_darwin(v24);
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_23(v25);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference27ContactHandleTypePreferenceVSgMd, &_s13SiriInference27ContactHandleTypePreferenceVSgMR);
  v27 = OUTLINED_FUNCTION_21(v26);
  __chkstk_darwin(v27);
  OUTLINED_FUNCTION_16_2();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v28);
  OUTLINED_FUNCTION_91();
  v116 = v29;
  OUTLINED_FUNCTION_15_0();
  type metadata accessor for Locale();
  OUTLINED_FUNCTION_7();
  v114 = v31;
  v115 = v30;
  __chkstk_darwin(v30);
  OUTLINED_FUNCTION_16_2();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v32);
  OUTLINED_FUNCTION_91();
  v34 = v33;
  v35 = OUTLINED_FUNCTION_15_0();
  v113 = type metadata accessor for ContactResolverConfigHashable(v35);
  OUTLINED_FUNCTION_23_1();
  __chkstk_darwin(v36);
  OUTLINED_FUNCTION_16_2();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v37);
  OUTLINED_FUNCTION_91();
  v111 = v38;
  v39 = _swiftEmptyArrayStorage;
  v97 = v23;
  if (v4)
  {
    v40 = App.appIdentifier.getter();
    if (v41)
    {
      v42 = v40;
      v43 = v41;
      OUTLINED_FUNCTION_76_3();
      v39 = v44;
      v45 = v44[2];
      if (v45 >= v44[3] >> 1)
      {
        OUTLINED_FUNCTION_142_2();
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v39 = v92;
      }

      v39[2] = v45 + 1;
      v46 = &v39[2 * v45];
      v46[4] = v42;
      v46[5] = v43;
    }
  }

  v47 = v6;
  v93[2] = v0;
  if (one-time initialization token for emptyStartCallIntent != -1)
  {
    OUTLINED_FUNCTION_6_30(&one-time initialization token for emptyStartCallIntent);
  }

  v48 = [static PhoneCallIntentClassNames.emptyStartCallIntent _className];
  v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v96 = v49;
  v51 = v50;

  v53 = v2[3];
  v52 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v53);
  OUTLINED_FUNCTION_50_28();
  v54(v53, v52);
  OUTLINED_FUNCTION_156_1();
  DeviceState.siriInputLocale.getter();

  v55 = outlined bridged method (ob) of @objc INIntent.intentId.getter(v47);
  if (v56)
  {
    v57 = v55;
  }

  else
  {
    v57 = 0;
  }

  v95 = v57;
  if (v56)
  {
    v58 = v56;
  }

  else
  {
    v58 = 0xE000000000000000;
  }

  v59 = v99;
  *v99 = v57;
  v59[1] = v58;
  v93[5] = v58;
  v59[2] = v49;
  v59[3] = v51;
  v93[4] = v51;
  v60 = *(v113 + 24);
  v61 = v113;
  v98 = v2;
  v62 = *(v114 + 16);
  v94 = v34;
  v62(v59 + v60, v34, v115);
  v63 = *(v61 + 28);
  v112 = v39;
  *(v59 + v63) = v39;

  v64 = v116;
  static ContactResolverConfigHashable.chooseHandleTypePreference(skIntent:)(&protocol witness table for INStartVideoCallIntent, v116);
  v65 = v104;
  v66 = v106;
  (*(v104 + 104))(v97, enum case for ContactActionType.phoneCall(_:), v106);
  v67 = v101;
  v68 = OUTLINED_FUNCTION_141_2();
  v69(v68);
  v70 = OUTLINED_FUNCTION_129();
  (v62)(v70);
  static ContactResolverDomain.phone.getter();
  outlined init with copy of ContactHandleTypePreference?(v64, v100);
  (*(v102 + 104))(v105, enum case for SearchSuggestedContacts.ifOnlyMatchIsSuggested(_:), v103);
  (*(v107 + 104))(v108, enum case for RecommenderType.mlRecommender(_:), v109);
  OUTLINED_FUNCTION_107_6();
  ContactResolverConfig.init(intentId:intentTypeName:locale:logRunTimeData:processNLv3SpeechAlternatives:bundleIds:domainsToSearchForHistory:searchSuggestedContacts:handleTypePreference:recommender:customGenerator:)();
  v71 = OUTLINED_FUNCTION_112_5();
  v72(v71, v67, v66);
  ContactResolverConfig.actionType.setter();
  (*(v65 + 8))(v67, v66);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v116, &_s13SiriInference27ContactHandleTypePreferenceVSgMd, &_s13SiriInference27ContactHandleTypePreferenceVSgMR);
  (*(v114 + 8))(v94, v115);
  v73 = v111;
  outlined init with take of ContactResolverConfigHashable(v59, v111);
  __swift_destroy_boxed_opaque_existential_1(v117);
  v74 = v98[3];
  v75 = v98[4];
  __swift_project_boxed_opaque_existential_1(v98, v74);
  v76 = OUTLINED_FUNCTION_35_29();
  v77(v76);
  OUTLINED_FUNCTION_62_22();
  OUTLINED_FUNCTION_64_18();
  v78();
  if (v74)
  {

    __swift_destroy_boxed_opaque_existential_1(v117);
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v79 = type metadata accessor for Logger();
    __swift_project_value_buffer(v79, static Logger.siriPhone);
    OUTLINED_FUNCTION_5();
    swift_errorRetain();
    v80 = Logger.logObject.getter();
    static os_log_type_t.error.getter();

    if (OUTLINED_FUNCTION_115_1())
    {
      OUTLINED_FUNCTION_13_14();
      swift_slowAlloc();
      OUTLINED_FUNCTION_16_56();
      v81 = swift_slowAlloc();
      OUTLINED_FUNCTION_144_2(v81);
      OUTLINED_FUNCTION_125_4(4.8149e-34);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v82 = String.init<A>(describing:)();
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v82, v83, v117);
      OUTLINED_FUNCTION_89_6();

      *(v75 + 4) = v66;
      OUTLINED_FUNCTION_6_92();
      _os_log_impl(v84, v85, v86, v87, v88, v89);
      __swift_destroy_boxed_opaque_existential_1(v67);
      OUTLINED_FUNCTION_5_39();

      OUTLINED_FUNCTION_10_76();
    }

    OUTLINED_FUNCTION_1_125();
    _s27PhoneCallFlowDelegatePlugin0aB10NLv3IntentVWOhTm_0(v73, v90);
  }

  else
  {
    OUTLINED_FUNCTION_157_2();

    OUTLINED_FUNCTION_1_125();
    _s27PhoneCallFlowDelegatePlugin0aB10NLv3IntentVWOhTm_0(v73, v91);
  }

  OUTLINED_FUNCTION_65();
}

void _s27PhoneCallFlowDelegatePlugin17ContactResolutionC07resolveF7Queries07contactI013siriKitIntent3app02nlM013sharedGlobalsSaySo8INPersonCGSay13SiriInference0F5QueryVG_AA013NCRResolvableM0_p0s3AppG00W0CSgAA0aB8NLIntent_pAA06SharedQ9Providing_ptFZTf4nennnn_nSo08INSearchb7HistoryM0C_Tt4g5()
{
  OUTLINED_FUNCTION_66();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  type metadata accessor for ResolvedSiriKitContact();
  OUTLINED_FUNCTION_7();
  __chkstk_darwin(v7);
  OUTLINED_FUNCTION_4();
  v95 = type metadata accessor for RecommenderType();
  OUTLINED_FUNCTION_7();
  v93 = v8;
  __chkstk_darwin(v9);
  OUTLINED_FUNCTION_5_4();
  v94 = v10;
  OUTLINED_FUNCTION_15_0();
  v89 = type metadata accessor for SearchSuggestedContacts();
  OUTLINED_FUNCTION_7();
  v88 = v11;
  __chkstk_darwin(v12);
  OUTLINED_FUNCTION_5_4();
  v91 = v13;
  OUTLINED_FUNCTION_15_0();
  v14 = type metadata accessor for ContactResolverDomain();
  v15 = OUTLINED_FUNCTION_21(v14);
  __chkstk_darwin(v15);
  OUTLINED_FUNCTION_5_4();
  OUTLINED_FUNCTION_13(v16);
  v92 = type metadata accessor for ContactActionType();
  OUTLINED_FUNCTION_7();
  v90 = v17;
  __chkstk_darwin(v18);
  OUTLINED_FUNCTION_16_2();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v19);
  OUTLINED_FUNCTION_13_5();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v20);
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_23(v21);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference27ContactHandleTypePreferenceVSgMd, &_s13SiriInference27ContactHandleTypePreferenceVSgMR);
  v23 = OUTLINED_FUNCTION_21(v22);
  __chkstk_darwin(v23);
  OUTLINED_FUNCTION_16_2();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v24);
  OUTLINED_FUNCTION_91();
  v100 = v25;
  OUTLINED_FUNCTION_15_0();
  v101 = type metadata accessor for Locale();
  OUTLINED_FUNCTION_7();
  v27 = v26;
  __chkstk_darwin(v28);
  OUTLINED_FUNCTION_16_2();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v29);
  OUTLINED_FUNCTION_91();
  v99 = v30;
  v31 = OUTLINED_FUNCTION_15_0();
  v32 = type metadata accessor for ContactResolverConfigHashable(v31);
  OUTLINED_FUNCTION_23_1();
  __chkstk_darwin(v33);
  OUTLINED_FUNCTION_16_2();
  v98 = v34;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v35);
  OUTLINED_FUNCTION_96_6();
  v36 = _swiftEmptyArrayStorage;
  v96 = v0;
  v97 = v37;
  if (v4)
  {
    App.appIdentifier.getter();
    if (v38)
    {
      OUTLINED_FUNCTION_150_3();
      OUTLINED_FUNCTION_76_3();
      v36 = v39;
      v40 = v39[2];
      if (v40 >= v39[3] >> 1)
      {
        OUTLINED_FUNCTION_142_2();
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v36 = v80;
      }

      v36[2] = v40 + 1;
      v41 = &v36[2 * v40];
      v41[4] = v4;
      v41[5] = v27;
      v32 = v97;
    }
  }

  v42 = v2;
  if (one-time initialization token for emptyStartCallIntent != -1)
  {
    OUTLINED_FUNCTION_6_30(&one-time initialization token for emptyStartCallIntent);
  }

  v43 = [static PhoneCallIntentClassNames.emptyStartCallIntent _className];
  v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v46 = v45;

  __swift_project_boxed_opaque_existential_1(v42, v42[3]);
  v47 = OUTLINED_FUNCTION_1_1();
  v48(v47);
  OUTLINED_FUNCTION_156_1();
  DeviceState.siriInputLocale.getter();

  v49 = v6;
  v50 = outlined bridged method (ob) of @objc INIntent.intentId.getter(v49);
  if (v51)
  {
    v52 = v50;
  }

  else
  {
    v52 = 0;
  }

  if (v51)
  {
    v53 = v51;
  }

  else
  {
    v53 = 0xE000000000000000;
  }

  *v98 = v52;
  v98[1] = v53;
  v98[2] = v44;
  v98[3] = v46;
  v82 = *(v27 + 16);
  v82(v98 + *(v32 + 24), v99, v101);
  *(v98 + *(v32 + 28)) = v36;

  static ContactResolverConfigHashable.chooseHandleTypePreference(skIntent:)(&protocol witness table for INSearchCallHistoryIntent, v100);
  v83 = v42;
  if ([v49 preferredCallProvider] == &dword_0 + 2)
  {
    ObjectType = swift_getObjectType();
    if (dynamic_cast_existential_1_conditional(v49, ObjectType, &protocol descriptor for CallingIntent))
    {
      v56 = v55;
      v57 = swift_getObjectType();
      v81 = *(v56 + 24);
      v58 = v49;
      v81(v57, v56);
    }
  }

  v59 = OUTLINED_FUNCTION_112_5();
  v60(v59);
  (*(v90 + 32))(v86, v46, v92);
  v82(v84, v99, v101);
  static ContactResolverDomain.phone.getter();
  outlined init with copy of ContactHandleTypePreference?(v100, v85);
  (*(v88 + 104))(v91, enum case for SearchSuggestedContacts.ifOnlyMatchIsSuggested(_:), v89);
  (*(v93 + 104))(v94, enum case for RecommenderType.mlRecommender(_:), v95);
  OUTLINED_FUNCTION_107_6();
  ContactResolverConfig.init(intentId:intentTypeName:locale:logRunTimeData:processNLv3SpeechAlternatives:bundleIds:domainsToSearchForHistory:searchSuggestedContacts:handleTypePreference:recommender:customGenerator:)();
  (*(v90 + 16))(v87, v86, v92);
  ContactResolverConfig.actionType.setter();
  (*(v90 + 8))(v86, v92);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v100, &_s13SiriInference27ContactHandleTypePreferenceVSgMd, &_s13SiriInference27ContactHandleTypePreferenceVSgMR);
  OUTLINED_FUNCTION_17();
  v61(v99, v101);
  outlined init with take of ContactResolverConfigHashable(v98, v96);
  __swift_destroy_boxed_opaque_existential_1(v102);
  v62 = v83[3];
  v63 = v83[4];
  __swift_project_boxed_opaque_existential_1(v83, v62);
  v64 = OUTLINED_FUNCTION_35_29();
  v65(v64);
  OUTLINED_FUNCTION_62_22();
  OUTLINED_FUNCTION_64_18();
  v66();
  if (v62)
  {

    __swift_destroy_boxed_opaque_existential_1(v102);
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v67 = type metadata accessor for Logger();
    __swift_project_value_buffer(v67, static Logger.siriPhone);
    OUTLINED_FUNCTION_5();
    swift_errorRetain();
    v68 = Logger.logObject.getter();
    static os_log_type_t.error.getter();

    if (OUTLINED_FUNCTION_115_1())
    {
      OUTLINED_FUNCTION_13_14();
      swift_slowAlloc();
      OUTLINED_FUNCTION_16_56();
      v69 = swift_slowAlloc();
      OUTLINED_FUNCTION_144_2(v69);
      OUTLINED_FUNCTION_125_4(4.8149e-34);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v70 = String.init<A>(describing:)();
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v70, v71, v102);
      OUTLINED_FUNCTION_89_6();

      *(v63 + 4) = v36;
      OUTLINED_FUNCTION_6_92();
      _os_log_impl(v72, v73, v74, v75, v76, v77);
      __swift_destroy_boxed_opaque_existential_1(v98);
      OUTLINED_FUNCTION_5_39();

      OUTLINED_FUNCTION_10_76();
    }

    OUTLINED_FUNCTION_1_125();
    _s27PhoneCallFlowDelegatePlugin0aB10NLv3IntentVWOhTm_0(v96, v78);
  }

  else
  {
    OUTLINED_FUNCTION_157_2();

    OUTLINED_FUNCTION_1_125();
    _s27PhoneCallFlowDelegatePlugin0aB10NLv3IntentVWOhTm_0(v96, v79);
  }

  OUTLINED_FUNCTION_65();
}

void _s27PhoneCallFlowDelegatePlugin05StartB16IntentConversionO09convertToG005phoneB8NLIntent3app13sharedGlobals08previousG00pG8Response13groupResolverSo07INStartbG0CSgAA0abL0_p_17SiriAppResolution0V0CAA06SharedO9Providing_pAMSo08INIntentQ0CSgAA21ContactGroupResolving_ptFZTf4nnnnnen_n0U9Inference012ContactGroupS0V_Tt5g5()
{
  OUTLINED_FUNCTION_66();
  v1 = v0;
  v276 = v2;
  v274 = v3;
  v5 = v4;
  v7 = v6;
  v262 = type metadata accessor for Locale();
  OUTLINED_FUNCTION_7();
  v261 = v8;
  __chkstk_darwin(v9);
  OUTLINED_FUNCTION_5_4();
  OUTLINED_FUNCTION_13(v10);
  v11 = type metadata accessor for ContactGroupResolver();
  OUTLINED_FUNCTION_7();
  v13 = v12;
  __chkstk_darwin(v14);
  OUTLINED_FUNCTION_5_4();
  OUTLINED_FUNCTION_23(v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo18INCallRecordFilterCSgGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo18INCallRecordFilterCSgGMR);
  OUTLINED_FUNCTION_7();
  v265 = v17;
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v18);
  v20 = &v247 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVySay27PhoneCallFlowDelegatePlugin8SmsGroup_pGSaySo06INCallJ0CGSgGMd, &_s13SiriUtilities11TransformerVySay27PhoneCallFlowDelegatePlugin8SmsGroup_pGSaySo06INCallJ0CGSgGMR);
  OUTLINED_FUNCTION_7();
  v273 = v22;
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v23);
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_23(v24);
  v277 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo21INCallDestinationTypeVGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo21INCallDestinationTypeVGMR);
  OUTLINED_FUNCTION_7();
  v272 = v25;
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v26);
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_23(v27);
  v278 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo011INPreferredE8ProviderVGMd, _s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo011INPreferredE8ProviderVGMR);
  OUTLINED_FUNCTION_7();
  v271 = v28;
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v29);
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_23(v30);
  v279 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallCapabilityVGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallCapabilityVGMR);
  OUTLINED_FUNCTION_7();
  v270 = v31;
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v32);
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_23(v33);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGMR);
  OUTLINED_FUNCTION_7();
  v269 = v35;
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v36);
  v38 = &v247 - v37;
  v290[3] = v11;
  v290[4] = &protocol witness table for ContactGroupResolver;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v290);
  v260 = v13;
  v41 = *(v13 + 16);
  v40 = v13 + 16;
  v259 = boxed_opaque_existential_1;
  v264 = v11;
  v258 = v41;
  v41(boxed_opaque_existential_1, v1, v11);
  v275 = v7;
  OUTLINED_FUNCTION_86(v7);
  if (PhoneCallNLIntent.hasAnyConfirmation()())
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v42 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v42, static Logger.siriPhone);
    v43 = v276;
    v44 = v276;
    v45 = Logger.logObject.getter();
    static os_log_type_t.debug.getter();

    if (OUTLINED_FUNCTION_132_3())
    {
      OUTLINED_FUNCTION_13_14();
      swift_slowAlloc();
      OUTLINED_FUNCTION_16_56();
      v46 = swift_slowAlloc();
      v289[0] = v46;
      *v38 = 136315138;
      v286 = v43;
      v47 = v44;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17INStartCallIntentCSgMd, &_sSo17INStartCallIntentCSgMR);
      v48 = String.init<A>(describing:)();
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v49, v289);
      OUTLINED_FUNCTION_89_6();

      *(v38 + 4) = v5;
      OUTLINED_FUNCTION_29_13();
      OUTLINED_FUNCTION_45_21(v50, v51, v52, v53);
      _os_log_impl(v54, v55, v56, v57, v58, v59);
      __swift_destroy_boxed_opaque_existential_1(v46);
      OUTLINED_FUNCTION_5_39();

      OUTLINED_FUNCTION_10_76();
    }

    v60 = v44;
    goto LABEL_12;
  }

  v266 = v21;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v267 = v34;
  v61 = type metadata accessor for Logger();
  v62 = __swift_project_value_buffer(v61, static Logger.siriPhone);
  v63 = Logger.logObject.getter();
  v64 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_16_4(v64))
  {
    v65 = OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_39_22(v65);
    OUTLINED_FUNCTION_56_17();
    _os_log_impl(v66, v67, v68, v69, v70, 2u);
    OUTLINED_FUNCTION_8();
  }

  v71 = v274[4];
  __swift_project_boxed_opaque_existential_1(v274, v274[3]);
  v72 = OUTLINED_FUNCTION_5();
  v73(v72, v71);
  OUTLINED_FUNCTION_155_0();
  OUTLINED_FUNCTION_102_0();
  v74 = swift_allocObject();
  OUTLINED_FUNCTION_94_9(v74);
  v63[7] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMR);
  v75 = OUTLINED_FUNCTION_118_5();
  type metadata accessor for INCallAudioRoute(v75);
  v268 = v38;
  Transformer.init(transform:)();
  OUTLINED_FUNCTION_155_0();
  OUTLINED_FUNCTION_102_0();
  v76 = swift_allocObject();
  OUTLINED_FUNCTION_94_9(v76);
  v63[7] = v5;
  type metadata accessor for INCallCapability(0);

  Transformer.init(transform:)();
  OUTLINED_FUNCTION_155_0();
  OUTLINED_FUNCTION_102_0();
  v77 = swift_allocObject();
  OUTLINED_FUNCTION_94_9(v77);
  v63[7] = v5;
  type metadata accessor for INPreferredCallProvider(0);

  Transformer.init(transform:)();
  type metadata accessor for INCallDestinationType(0);
  Transformer.init(transform:)();
  outlined init with copy of SignalProviding(v289, &v286);
  outlined init with copy of SignalProviding(v290, &v284);
  v78 = swift_allocObject();
  OUTLINED_FUNCTION_94_9(v78);
  outlined init with take of SPHConversation(&v284, (v63 + 7));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay27PhoneCallFlowDelegatePlugin8SmsGroup_pGMd, &_sSay27PhoneCallFlowDelegatePlugin8SmsGroup_pGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo11INCallGroupCGSgMd, &_sSaySo11INCallGroupCGSgMR);
  Transformer.init(transform:)();
  Transformer.transform.getter();
  OUTLINED_FUNCTION_66_17();
  v79 = v275;
  v80(v275);
  v257 = v62;

  v81 = v286;
  Transformer.transform.getter();
  OUTLINED_FUNCTION_66_17();
  v82(v79);
  v255 = v81;

  v83 = v286;
  Transformer.transform.getter();
  OUTLINED_FUNCTION_66_17();
  v84(v79);
  OUTLINED_FUNCTION_117_3();
  v253 = v83;

  v252 = v286;
  __swift_project_boxed_opaque_existential_1(v79, v79[3]);
  v85 = OUTLINED_FUNCTION_64();
  v256 = v86(v85);
  OUTLINED_FUNCTION_86(v79);
  HIDWORD(v251) = PhoneCallNLIntent.isEmergencyContactCall()();
  Transformer.transform.getter();
  OUTLINED_FUNCTION_66_17();
  v87(v79);

  p_isa = &v286->isa;
  v250 = Transformer.transform.getter();
  v254 = v88;
  v89 = v79[4];
  v249 = v79[3];
  __swift_project_boxed_opaque_existential_1(v79, v249);
  v249 = (*(v89 + 136))(v249, v89);
  v286 = v249;
  v250(&v284, &v286);

  v254 = v284;
  v250 = v79[4];
  OUTLINED_FUNCTION_86(v79);
  v90 = PhoneCallNLIntent.getPersons()();
  v91 = swift_allocObject();
  v249 = v91;
  v91[2].isa = v255;
  v91[3].isa = v90;
  v250 = v90;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo18INCallRecordFilterCSgMd, &_sSo18INCallRecordFilterCSgMR);
  Transformer.init(transform:)();
  v92 = Transformer.transform.getter();
  OUTLINED_FUNCTION_17();
  v93(v20, v16);
  v92(&v286, v79);

  v94 = v286;
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INStartCallIntent, INStartCallIntent_ptr);
  OUTLINED_FUNCTION_86(v79);
  v95 = PhoneCallNLIntent.isGroupFaceTimeCall()();
  v96 = INStartCallIntent.init(callRecordFilter:callRecordToCallBack:audioRoute:destinationType:preferredCallProvider:contacts:ttyType:callCapability:isGroupCall:callGroups:)(v94, 0, p_isa, v252, v253, v250, 0, v255, v95, v254);
  v283 = v96;
  OUTLINED_FUNCTION_155_0();

  v97 = Logger.logObject.getter();
  v98 = static os_log_type_t.debug.getter();

  if (OUTLINED_FUNCTION_132_3())
  {
    v99 = swift_slowAlloc();
    v100 = OUTLINED_FUNCTION_49_22();
    v265 = OUTLINED_FUNCTION_131_5(v100, v282);
    *&v284 = v265;
    *v99 = 138413058;
    *(v99 + 4) = v96;
    *v100 = v96;
    *(v99 + 12) = 2080;
    v101 = v96;
    v255 = v97;
    v102 = dispatch thunk of App.debugDescription.getter();
    v104 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v102, v103, &v284);

    *(v99 + 14) = v104;
    *(v99 + 22) = 2080;
    LODWORD(v254) = v98;
    v105 = v288[1];
    __swift_project_boxed_opaque_existential_1(&v286, v288[0]);
    v106 = OUTLINED_FUNCTION_5();
    v108 = v107(v106, v105);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin04SiriA7Contact_pMd, &_s27PhoneCallFlowDelegatePlugin04SiriA7Contact_pMR);
    OUTLINED_FUNCTION_90();
    v109 = Array.description.getter();
    v111 = v110;

    __swift_destroy_boxed_opaque_existential_1(&v286);
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v109, v111, &v284);
    OUTLINED_FUNCTION_5();

    *(v99 + 24) = v108;
    *(v99 + 32) = 2080;
    type metadata accessor for ContactQuery();
    v112 = Array.debugDescription.getter();
    v114 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v112, v113, &v284);

    *(v99 + 34) = v114;
    v115 = v255;
    _os_log_impl(&dword_0, v255, v254, "#INStartCallIntentConversion Starts with intent:%@ resolvedApp:%s phoneCallNLIntent=%s contactQueries=%s", v99, 0x2Au);
    v116 = OUTLINED_FUNCTION_140_3(v282);
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v116, v117, v118);
    OUTLINED_FUNCTION_5_39();

    OUTLINED_FUNCTION_78_12(v288);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_8();

    OUTLINED_FUNCTION_8();
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(&v286);
  }

  v119 = v274;
  v120 = v96;
  v121 = _s27PhoneCallFlowDelegatePlugin20NLv4IntentConversionPAAE03setG8Metadata3for13sharedGlobals3app08previousG00G4TypeQzAJ_AA06SharedM9Providing_p17SiriAppResolution0T0CAJSgtFZAA05StartbgH0O_Tt3g5(v120, v119, v5, v276);

  swift_beginAccess();
  v283 = v121;

  v122 = type metadata accessor for App();
  v123 = v121;
  App.appIdentifier.getter();
  App.__allocating_init(appIdentifier:)();
  v124 = v119[4];
  v125 = OUTLINED_FUNCTION_33_4();
  __swift_project_boxed_opaque_existential_1(v125, v126);
  v127 = OUTLINED_FUNCTION_19_7();
  v128(v127, v124);
  OUTLINED_FUNCTION_24_2();
  v130 = (*(v129 + 232))();

  v131 = v275;
  if (v130)
  {
    static SiriKitEventSender.current.getter();
    v132 = type metadata accessor for EmergencyContactResolution();
    v276 = OUTLINED_FUNCTION_79(v132);
    v133 = OUTLINED_FUNCTION_78_12(&v287);
    v258(v133, v259, v264);
    v134 = OUTLINED_FUNCTION_55();
    _s27PhoneCallFlowDelegatePlugin33ReferenceContactResolutionWrapperO20runCombinedSRRandCRR33_6E03C60D186988DA16A96BF8932754FFLL13siriKitIntent3app02nlW013sharedGlobals20contactGroupResolverAC20SRRResolutionResultsAELLVAA013NCRResolvableW0_p_07SiriAppH03AppCAA0aB8NLIntent_pAA22SharedGlobalsProviding_pAA0G14GroupResolving_ptFZTf4ennnnn_nSo07INStartbW0C_Tt4g5Tf4nnnne_n13SiriInference0G13GroupResolverV_Tg5Tm(v134, v135, v131, v119, v122, v136, v137, v138, &unk_535DD0, closure #1 in static Transformer<>.transformer(device:groupResolver:)partial apply, v247, p_isa, v249, v250, v251, v252, v253, v254, v255, v256, v257, v258);
    v140 = v139;
    v142 = v141;
    if (specialized Array.count.getter(v139))
    {
      v143 = Logger.logObject.getter();
      v40 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_16_4(v40))
      {
        v144 = OUTLINED_FUNCTION_65_0();
        OUTLINED_FUNCTION_39_22(v144);
        OUTLINED_FUNCTION_56_17();
        _os_log_impl(v145, v146, v147, v148, v149, 2u);
        OUTLINED_FUNCTION_8();
      }

      INStartCallIntent.overwriteContacts(newContacts:)(v140);
    }

    if (specialized Array.count.getter(v142))
    {
      v150 = Logger.logObject.getter();
      v40 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_16_4(v40))
      {
        v151 = OUTLINED_FUNCTION_65_0();
        OUTLINED_FUNCTION_39_22(v151);
        OUTLINED_FUNCTION_56_17();
        _os_log_impl(v152, v153, v154, v155, v156, 2u);
        OUTLINED_FUNCTION_8();
      }

      INStartCallIntent.overwriteCallGroups(newCallGroups:)(v142);
    }

    if (specialized Array.count.getter(v142))
    {
    }

    else
    {
      v173 = specialized Array.count.getter(v140);

      if (!v173)
      {
        v207 = v119[3];
        v208 = v119[4];
        __swift_project_boxed_opaque_existential_1(v119, v207);
        (*(v208 + 8))(&v284, v207, v208);
        __swift_project_boxed_opaque_existential_1(&v284, v285);
        OUTLINED_FUNCTION_80_2();
        dispatch thunk of DeviceState.siriLocale.getter();
        v209 = v131[3];
        v130 = v131[4];
        __swift_project_boxed_opaque_existential_1(v131, v209);
        OUTLINED_FUNCTION_86_7();
        v250 = v209;
        v251 = v130;
        p_isa = &v286;
        v249 = v276;
        OUTLINED_FUNCTION_48_26();
        OUTLINED_FUNCTION_82_11(v210, v211, v212, v213, v214, v215, v216, v217, v247, p_isa, v249, v250, v251, v252, v253, v254, v255, v256, v257, v258, v259);
        OUTLINED_FUNCTION_17();
        v218(v40, v262);
        __swift_destroy_boxed_opaque_existential_1(&v284);
        OUTLINED_FUNCTION_104_5();
LABEL_32:
        OUTLINED_FUNCTION_17();
        v184(v263, v264);

        __swift_destroy_boxed_opaque_existential_1(&v286);
        goto LABEL_33;
      }
    }

    v174 = v123;
    v175 = Logger.logObject.getter();
    v176 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v175, v176))
    {
      OUTLINED_FUNCTION_13_14();
      v177 = swift_slowAlloc();
      v130 = OUTLINED_FUNCTION_49_22();
      *v177 = 138412290;
      *(v177 + 4) = v174;
      *v130 = v174;
      v178 = v174;
      OUTLINED_FUNCTION_29_36();
      _os_log_impl(v179, v180, v181, v182, v183, 0xCu);
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v130, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      OUTLINED_FUNCTION_8();

      OUTLINED_FUNCTION_8();
    }

    OUTLINED_FUNCTION_104_5();
    goto LABEL_32;
  }

  v157 = v119[4];
  v158 = OUTLINED_FUNCTION_33_4();
  __swift_project_boxed_opaque_existential_1(v158, v159);
  v160 = OUTLINED_FUNCTION_19_7();
  v161(v160, v157);
  __swift_project_boxed_opaque_existential_1(&v286, v288[0]);
  OUTLINED_FUNCTION_80_2();
  OUTLINED_FUNCTION_19_7();
  dispatch thunk of DeviceState.siriLocale.getter();
  static SiriKitEventSender.current.getter();
  v162 = type metadata accessor for EmergencyContactResolution();
  v163 = OUTLINED_FUNCTION_79(v162);
  v130 = v131[3];
  v164 = v131[4];
  __swift_project_boxed_opaque_existential_1(v131, v130);
  OUTLINED_FUNCTION_86_7();
  LOBYTE(v247) = 1;
  OUTLINED_FUNCTION_82_11(v165, v166, BYTE4(v164) & 1, v167, v168, v169, v170, v171, v247, &v284, v163, v130, v164, v252, v253, v254, v255, v256, v257, v258, v259);

  __swift_destroy_boxed_opaque_existential_1(&v284);
  OUTLINED_FUNCTION_17();
  v172(v40, v262);
  __swift_destroy_boxed_opaque_existential_1(&v286);
  OUTLINED_FUNCTION_104_5();
LABEL_33:
  v185 = v123;
  v186 = outlined bridged method (ob) of @objc INStartCallIntent.contacts.getter(v185);
  v187 = one-time initialization token for instance;
  v188 = v185;
  v189 = v280;
  if (v187 != -1)
  {
    OUTLINED_FUNCTION_60_2(&one-time initialization token for instance);
  }

  _s27PhoneCallFlowDelegatePlugin34AppSelectionSignalsGatheringHelperO23triggerSignalCollection13sharedGlobals8contacts05phoneB8NLIntent05smartfG018eligibleAppsFinder8skIntentyAA06SharedO9Providing_p_SaySo8INPersonCGSgAA0abR0_pAA05SmartfG14FeatureManagerCSgAA012PrefetchableF7Finding_pAA07CallingX0_pSgtFZTf4nnnnenn_nAA08EligiblefV0C_Tt5g5(v119, v186, v131, 0, static EligibleAppFinder.instance);

  v190 = v289[4];
  __swift_project_boxed_opaque_existential_1(v289, v289[3]);
  OUTLINED_FUNCTION_7_1();
  if (dispatch thunk of DeviceState.isXRDevice.getter())
  {
    v191 = v188;
    v192 = outlined bridged method (ob) of @objc INStartCallIntent.contacts.getter(v191);
    if (v192)
    {
      v193 = v192;
      if (specialized Array.count.getter(v192))
      {
LABEL_38:
        OUTLINED_FUNCTION_153_0();
        if (v190)
        {
          specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v194 = *(v193 + 32);
        }

        OUTLINED_FUNCTION_160();
        outlined bridged method (pb) of @objc INPerson.sourceAppBundleIdentifier.getter(v190);
        OUTLINED_FUNCTION_150_3();

        if (v130)
        {
          v195 = v193;
        }

        else
        {
          v195 = 0;
        }

        if (v130)
        {
          v196 = v130;
        }

        else
        {
          v196 = 0xE000000000000000;
        }

        v197 = static PhoneReferenceResolution.getContactSourceType(contactSource:)(v195, v196);

        if (static PhoneReferenceResolution.isTelephonyTargetFromSrr(contactSourceType:)(v197))
        {
          v198 = Logger.logObject.getter();
          v199 = static os_log_type_t.debug.getter();
          if (OUTLINED_FUNCTION_16_4(v199))
          {
            v276 = v185;
            OUTLINED_FUNCTION_13_14();
            v130 = swift_slowAlloc();
            OUTLINED_FUNCTION_12_17();
            v200 = swift_slowAlloc();
            v286 = v200;
            *v130 = 136315138;
            if (v197)
            {
              if (v197 == 1)
              {
                v201 = 0x8000000000453AB0;
                v202 = 0xD000000000000012;
              }

              else
              {
                v201 = 0xED00007465677261;
                v202 = 0x54746C7561666564;
              }
            }

            else
            {
              v201 = 0xEB00000000737365;
              v202 = 0x6E69737542727273;
            }

            v219 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v202, v201, &v286);

            *(v130 + 4) = v219;
            OUTLINED_FUNCTION_56_17();
            _os_log_impl(v220, v221, v222, v223, v224, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v200);
            OUTLINED_FUNCTION_8();

            OUTLINED_FUNCTION_8();

            v189 = v280;
            v131 = v275;
            v185 = v276;
          }

          else
          {
          }

          v225 = v191;
          INStartCallIntent.updatePreferredCallProvider(preferredCallProvider:)(1);
        }

        OUTLINED_FUNCTION_104_5();
        goto LABEL_67;
      }
    }

    v203 = outlined bridged method (ob) of @objc INStartCallIntent.contacts.getter(v191);
    if (v203)
    {
      v204 = v203;
      if (specialized Array.count.getter(v203))
      {
        OUTLINED_FUNCTION_153_0();
        if (v190)
        {
          specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v205 = *(v204 + 32);
        }

        OUTLINED_FUNCTION_160();
        v206 = outlined bridged method (ob) of @objc INPerson.siriMatches.getter(v190);
        if (!v206)
        {
          goto LABEL_59;
        }

        v193 = v206;
        if (specialized Array.count.getter(v206))
        {
          goto LABEL_38;
        }
      }
    }
  }

LABEL_59:

LABEL_67:
  __swift_project_boxed_opaque_existential_1(v131, v131[3]);
  v226 = v188;
  OUTLINED_FUNCTION_53_1();
  v227 = PhoneCallNLIntent.isGroupFaceTimeCall()();
  INStartCallIntent.updateIsGroupCall(isGroupCall:)(v227);

  v228 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  v229 = OUTLINED_FUNCTION_28_3();
  if (os_log_type_enabled(v229, v230))
  {
    OUTLINED_FUNCTION_13_14();
    v231 = swift_slowAlloc();
    v232 = OUTLINED_FUNCTION_49_22();
    *v231 = 138412290;
    *(v231 + 4) = v226;
    *v232 = v185;
    v233 = v226;
    OUTLINED_FUNCTION_6_92();
    _os_log_impl(v234, v235, v236, v237, v238, v239);
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v232, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_5_39();

    OUTLINED_FUNCTION_10_76();
  }

  OUTLINED_FUNCTION_17();
  v240(v281, v130);
  OUTLINED_FUNCTION_17();
  v241 = OUTLINED_FUNCTION_134_2();
  v242(v241);
  OUTLINED_FUNCTION_17();
  v243(v189, v278);
  OUTLINED_FUNCTION_17();
  v244 = OUTLINED_FUNCTION_147_3();
  v245(v244);
  OUTLINED_FUNCTION_17();
  v246(v268, v267);
  __swift_destroy_boxed_opaque_existential_1(v289);
LABEL_12:
  __swift_destroy_boxed_opaque_existential_1(v290);
  OUTLINED_FUNCTION_65();
}

void _s27PhoneCallFlowDelegatePlugin010StartAudioB16IntentConversionO09convertToH005phoneB8NLIntent3app13sharedGlobals08previousH00qH8Response13groupResolverSo07INStartgbH0CSgAA0abM0_p_17SiriAppResolution0W0CAA06SharedP9Providing_pAMSo08INIntentR0CSgAA21ContactGroupResolving_ptFZTf4nnnnnen_n0V9Inference012ContactGroupT0V_Tt5g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_66();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v191 = v26;
  v28 = v27;
  v188 = type metadata accessor for Locale();
  OUTLINED_FUNCTION_7();
  v187 = v29;
  __chkstk_darwin(v30);
  OUTLINED_FUNCTION_5_4();
  OUTLINED_FUNCTION_23(v31);
  v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo21INCallDestinationTypeVGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo21INCallDestinationTypeVGMR);
  OUTLINED_FUNCTION_7();
  v33 = v32;
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v34);
  OUTLINED_FUNCTION_27_3();
  v192 = v35;
  OUTLINED_FUNCTION_15_0();
  v36 = type metadata accessor for ContactGroupResolver();
  OUTLINED_FUNCTION_7();
  v38 = v37;
  __chkstk_darwin(v39);
  OUTLINED_FUNCTION_16_2();
  OUTLINED_FUNCTION_9_3();
  v41 = __chkstk_darwin(v40);
  v42 = *(v38 + 16);
  v194 = &v176 - v43;
  v42(v41);
  OUTLINED_FUNCTION_86(v28);
  if (PhoneCallNLIntent.hasAnyConfirmation()())
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v44 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v44, static Logger.siriPhone);
    v45 = v23;
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v46, v47))
    {
      OUTLINED_FUNCTION_13_14();
      v48 = v38;
      v49 = swift_slowAlloc();
      OUTLINED_FUNCTION_12_17();
      v50 = swift_slowAlloc();
      v198[0] = v50;
      *v49 = 136315138;
      v196[0] = v23;
      v51 = v45;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo22INStartAudioCallIntentCSgMd, &_sSo22INStartAudioCallIntentCSgMR);
      v52 = String.init<A>(describing:)();
      v54 = v36;
      v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v53, v198);

      *(v49 + 4) = v55;
      v36 = v54;
      OUTLINED_FUNCTION_34_5();
      _os_log_impl(v56, v57, v58, v59, v60, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v50);
      OUTLINED_FUNCTION_8();

      v38 = v48;
      OUTLINED_FUNCTION_8();
    }

    v61 = v45;
    goto LABEL_36;
  }

  v185 = v33;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v62 = type metadata accessor for Logger();
  v190 = __swift_project_value_buffer(v62, static Logger.siriPhone);
  v63 = Logger.logObject.getter();
  v64 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_16_4(v64))
  {
    v65 = OUTLINED_FUNCTION_65_0();
    *v65 = 0;
    OUTLINED_FUNCTION_29_13();
    _os_log_impl(v66, v67, v68, v69, v65, 2u);
    OUTLINED_FUNCTION_5_39();
  }

  OUTLINED_FUNCTION_73_11();
  OUTLINED_FUNCTION_148_0();
  v70 = OUTLINED_FUNCTION_7_1();
  v71(v70);
  OUTLINED_FUNCTION_73_11();
  v72 = OUTLINED_FUNCTION_7_1();
  v184 = v73(v72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMR);
  v74 = OUTLINED_FUNCTION_88();
  type metadata accessor for INCallDestinationType(v74);
  Transformer.init(transform:)();
  v75 = Transformer.transform.getter();
  v75(v196, v28);
  v183 = v38;
  v182 = v36;

  v76 = v196[0];
  __swift_project_boxed_opaque_existential_1(v28, v28[3]);
  v77 = OUTLINED_FUNCTION_141_2();
  v79 = v78(v77);
  __swift_project_boxed_opaque_existential_1(v28, v28[3]);

  OUTLINED_FUNCTION_53_1();
  HIDWORD(v180) = PhoneCallNLIntent.isEmergencyContactCall()();
  OUTLINED_FUNCTION_86(v28);
  v80 = PhoneCallNLIntent.getPersons()();
  v81 = objc_allocWithZone(INStartAudioCallIntent);
  v82 = @nonobjc INStartAudioCallIntent.init(destinationType:contacts:)(v76, v80);
  v83 = v191;
  v84 = _s27PhoneCallFlowDelegatePlugin20NLv4IntentConversionPAAE03setG8Metadata3for13sharedGlobals3app08previousG00G4TypeQzAJ_AA06SharedM9Providing_p17SiriAppResolution0T0CAJSgtFZAA010StartAudiobgH0O_Tt3g5(v82, v25, v191, v23);

  outlined init with copy of SignalProviding(v28, v196);
  v85 = v84;

  v86 = Logger.logObject.getter();
  v87 = static os_log_type_t.debug.getter();
  v181 = v79;

  if (OUTLINED_FUNCTION_132_3())
  {
    v88 = swift_slowAlloc();
    v89 = v42;
    v90 = OUTLINED_FUNCTION_49_22();
    v179 = OUTLINED_FUNCTION_131_5(v90, &v199);
    v195[0] = v179;
    *v88 = 138413058;
    *(v88 + 4) = v85;
    *v90 = v85;
    v42 = v89;
    *(v88 + 12) = 2080;
    v91 = v85;
    v177 = v86;
    v92 = dispatch thunk of App.debugDescription.getter();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v92, v93, v195);
    OUTLINED_FUNCTION_160();
    *(v88 + 14) = v83;
    *(v88 + 22) = 2080;
    __swift_project_boxed_opaque_existential_1(v196, v197);
    v94 = OUTLINED_FUNCTION_33_4();
    v96 = v95(v94);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin04SiriA7Contact_pMd, &_s27PhoneCallFlowDelegatePlugin04SiriA7Contact_pMR);
    OUTLINED_FUNCTION_90();
    v83 = Array.description.getter();

    __swift_destroy_boxed_opaque_existential_1(v196);
    v97 = OUTLINED_FUNCTION_33_4();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v97, v98, v99);
    OUTLINED_FUNCTION_19_7();

    *(v88 + 24) = v96;
    *(v88 + 32) = 2080;
    type metadata accessor for ContactQuery();
    v100 = Array.debugDescription.getter();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v100, v101, v195);
    OUTLINED_FUNCTION_160();
    *(v88 + 34) = v83;
    v102 = v87;
    v87 = v177;
    _os_log_impl(&dword_0, v177, v102, "#StartAudioCallIntentConversion starts with intent:%@ resolvedApp:%s phoneCallNLIntent=%s contactQueries=%s", v88, 0x2Au);
    v103 = OUTLINED_FUNCTION_78_12(&v199);
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v103, v104, v105);
    OUTLINED_FUNCTION_8();

    OUTLINED_FUNCTION_78_12(&v200);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_8();

    OUTLINED_FUNCTION_8();
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(v196);
  }

  v106 = OUTLINED_FUNCTION_73_11();
  v38 = v83 + 56;
  v36 = *(v83 + 56);
  v107 = v85;
  (v36)(v87, v83);
  OUTLINED_FUNCTION_24_2();
  v109 = (*(v108 + 232))();

  if (v109)
  {
    static SiriKitEventSender.current.getter();
    v110 = type metadata accessor for EmergencyContactResolution();
    v179 = OUTLINED_FUNCTION_79(v110);
    OUTLINED_FUNCTION_78_12(&a18);
    OUTLINED_FUNCTION_108_6();
    (v42)();
    _s27PhoneCallFlowDelegatePlugin33ReferenceContactResolutionWrapperO20runCombinedSRRandCRR33_6E03C60D186988DA16A96BF8932754FFLL13siriKitIntent3app02nlW013sharedGlobals20contactGroupResolverAC20SRRResolutionResultsAELLVAA013NCRResolvableW0_p_07SiriAppH03AppCAA0aB8NLIntent_pAA22SharedGlobalsProviding_pAA0G14GroupResolving_ptFZTf4ennnnn_nSo07INStartbW0C_Tt4g5Tf4nnnne_n13SiriInference0G13GroupResolverV_Tg5Tm(v107, v191, v28, v25, v106, closure #1 in static ReferenceContactResolutionWrapper.runCombinedSRRandCRR(siriKitIntent:app:nlIntent:sharedGlobals:contactGroupResolver:)partial apply, closure #1 in static ReferenceContactResolutionWrapper.resolveRREntity(rrEntity:siriKitIntent:app:nlIntent:sharedGlobals:contactGroupResolver:)partial apply, &protocol witness table for INStartAudioCallIntent, &unk_535E20, closure #1 in static Transformer<>.transformer(device:groupResolver:)partial apply, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187);
    v112 = v111;
    v114 = v113;
    specialized Array.count.getter(v111);
    OUTLINED_FUNCTION_95_4();
    if (v115)
    {
      v116 = Logger.logObject.getter();
      v36 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_16_4(v36))
      {
        v117 = OUTLINED_FUNCTION_65_0();
        OUTLINED_FUNCTION_39_22(v117);
        OUTLINED_FUNCTION_56_17();
        _os_log_impl(v118, v119, v120, v121, v122, 2u);
        OUTLINED_FUNCTION_95_4();
        OUTLINED_FUNCTION_8();
      }

      INStartAudioCallIntent.overwriteContacts(newContacts:)(v112);
      OUTLINED_FUNCTION_108_6();
    }

    if (specialized Array.count.getter(v114))
    {
      v123 = Logger.logObject.getter();
      v36 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_16_4(v36))
      {
        v124 = OUTLINED_FUNCTION_65_0();
        OUTLINED_FUNCTION_39_22(v124);
        OUTLINED_FUNCTION_56_17();
        _os_log_impl(v125, v126, v127, v128, v129, 2u);
        OUTLINED_FUNCTION_95_4();
        OUTLINED_FUNCTION_8();
      }

      OUTLINED_FUNCTION_108_6();
    }

    if (specialized Array.count.getter(v114))
    {
    }

    else
    {
      v142 = specialized Array.count.getter(v112);

      if (!v142)
      {
        OUTLINED_FUNCTION_73_11();
        OUTLINED_FUNCTION_148_0();
        v165 = OUTLINED_FUNCTION_7_1();
        v166(v165);
        __swift_project_boxed_opaque_existential_1(v195, v195[3]);
        v167 = v186;
        OUTLINED_FUNCTION_5();
        dispatch thunk of DeviceState.siriLocale.getter();
        v169 = v28[3];
        v168 = v28[4];
        __swift_project_boxed_opaque_existential_1(v28, v169);
        OUTLINED_FUNCTION_86_7();
        v179 = v169;
        v180 = v168;
        v177 = v196;
        v178 = v169;
        OUTLINED_FUNCTION_48_26();
        v170 = OUTLINED_FUNCTION_119_7();
        _s27PhoneCallFlowDelegatePlugin17ContactResolutionC19updateSiriKitIntent04sirijK014contactQueries012hasEmergencyF03app6locale02nlK013sharedGlobals18multicardinalIndex0lJ11EventSender09emergencyfG0yAA013NCRResolvableK0_p_Say0I9Inference0F5QueryVGSb0i3AppG03AppCSg10Foundation6LocaleVAA0aB8NLIntent_pAA06SharedU9Providing_pSiSg0ijC00ijX7Sending_pAA0pfG0CtFZTf4ennnnnnnnnn_nSo012INStartAudiobK0C_Tt9g5Tf4nnnnnennnn_n(v170, v171, v172, v173, v167, v174, v25, 0, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188);
        OUTLINED_FUNCTION_17();
        v175(v167, v188);
        __swift_destroy_boxed_opaque_existential_1(v195);
LABEL_30:
        (*(v38 + 8))(v189, v36);

        __swift_destroy_boxed_opaque_existential_1(v196);
        goto LABEL_31;
      }
    }

    v143 = v107;
    v144 = Logger.logObject.getter();
    v145 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v144, v145))
    {
      OUTLINED_FUNCTION_13_14();
      v38 = swift_slowAlloc();
      v36 = OUTLINED_FUNCTION_49_22();
      *v38 = 138412290;
      *(v38 + 4) = v143;
      *v36 = v143;
      v146 = v143;
      OUTLINED_FUNCTION_34_5();
      _os_log_impl(v147, v148, v149, v150, v151, 0xCu);
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v36, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      OUTLINED_FUNCTION_108_6();
      OUTLINED_FUNCTION_8();

      OUTLINED_FUNCTION_95_4();
      OUTLINED_FUNCTION_8();
    }

    goto LABEL_30;
  }

  OUTLINED_FUNCTION_73_11();
  OUTLINED_FUNCTION_148_0();
  v130 = OUTLINED_FUNCTION_7_1();
  v131(v130);
  __swift_project_boxed_opaque_existential_1(v196, v197);
  v38 = v186;
  OUTLINED_FUNCTION_7_1();
  dispatch thunk of DeviceState.siriLocale.getter();
  static SiriKitEventSender.current.getter();
  v132 = type metadata accessor for EmergencyContactResolution();
  v133 = OUTLINED_FUNCTION_79(v132);
  v134 = v28[3];
  v135 = v28[4];
  __swift_project_boxed_opaque_existential_1(v28, v134);
  OUTLINED_FUNCTION_86_7();
  v179 = v134;
  v180 = v135;
  v177 = v195;
  v178 = v133;
  OUTLINED_FUNCTION_48_26();
  v136 = OUTLINED_FUNCTION_119_7();
  _s27PhoneCallFlowDelegatePlugin17ContactResolutionC19updateSiriKitIntent04sirijK014contactQueries012hasEmergencyF03app6locale02nlK013sharedGlobals18multicardinalIndex0lJ11EventSender09emergencyfG0yAA013NCRResolvableK0_p_Say0I9Inference0F5QueryVGSb0i3AppG03AppCSg10Foundation6LocaleVAA0aB8NLIntent_pAA06SharedU9Providing_pSiSg0ijC00ijX7Sending_pAA0pfG0CtFZTf4ennnnnnnnnn_nSo012INStartAudiobK0C_Tt9g5Tf4nnnnnennnn_n(v136, v137, v138, v139, v38, v140, v25, 0, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188);

  __swift_destroy_boxed_opaque_existential_1(v195);
  OUTLINED_FUNCTION_17();
  v141(v38, v188);
  __swift_destroy_boxed_opaque_existential_1(v196);
  OUTLINED_FUNCTION_108_6();
  OUTLINED_FUNCTION_95_4();
LABEL_31:
  v152 = outlined bridged method (pb) of @objc INStartAudioCallIntent.contacts.getter(v107);
  v153 = one-time initialization token for instance;
  v154 = v107;
  if (v153 != -1)
  {
    OUTLINED_FUNCTION_60_2(&one-time initialization token for instance);
  }

  _s27PhoneCallFlowDelegatePlugin34AppSelectionSignalsGatheringHelperO23triggerSignalCollection13sharedGlobals8contacts05phoneB8NLIntent05smartfG018eligibleAppsFinder8skIntentyAA06SharedO9Providing_p_SaySo8INPersonCGSgAA0abR0_pAA05SmartfG14FeatureManagerCSgAA012PrefetchableF7Finding_pAA07CallingX0_pSgtFZTf4nnnnenn_nAA08EligiblefV0C_Tt5g5(v25, v152, v28, 0, static EligibleAppFinder.instance);

  v155 = Logger.logObject.getter();
  v156 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v155, v156))
  {
    OUTLINED_FUNCTION_13_14();
    v38 = swift_slowAlloc();
    v157 = OUTLINED_FUNCTION_49_22();
    *v38 = 138412290;
    *(v38 + 4) = v154;
    *v157 = v107;
    v158 = v154;
    OUTLINED_FUNCTION_34_5();
    _os_log_impl(v159, v160, v161, v162, v163, 0xCu);
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v157, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_8();

    OUTLINED_FUNCTION_95_4();
    OUTLINED_FUNCTION_8();
  }

  OUTLINED_FUNCTION_17();
  v164(v192, v193);
  __swift_destroy_boxed_opaque_existential_1(v198);
LABEL_36:
  (*(v38 + 8))(v194, v36);
  OUTLINED_FUNCTION_65();
}

void _s27PhoneCallFlowDelegatePlugin010StartVideoB16IntentConversionO09convertToH005phoneB8NLIntent3app13sharedGlobals08previousH00qH8Response13groupResolverSo07INStartgbH0CSgAA0abM0_p_17SiriAppResolution0W0CAA06SharedP9Providing_pAMSo08INIntentR0CSgAA21ContactGroupResolving_ptFZTf4nnnnnen_n0V9Inference012ContactGroupT0V_Tt5g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_66();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v195 = v29;
  v31 = v30;
  v32 = type metadata accessor for Locale();
  OUTLINED_FUNCTION_7();
  v34 = v33;
  __chkstk_darwin(v35);
  OUTLINED_FUNCTION_5_4();
  v193 = v36;
  OUTLINED_FUNCTION_15_0();
  type metadata accessor for ContactGroupResolver();
  OUTLINED_FUNCTION_7();
  v38 = v37;
  __chkstk_darwin(v39);
  OUTLINED_FUNCTION_16_2();
  v194 = v40;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v41);
  OUTLINED_FUNCTION_96_6();
  v196 = v42;
  v190 = *(v38 + 16);
  v190(v20, v24);
  OUTLINED_FUNCTION_55_25();
  if (PhoneCallNLIntent.hasAnyConfirmation()())
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v43 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v43, static Logger.siriPhone);
    v44 = v26;
    v45 = Logger.logObject.getter();
    static os_log_type_t.debug.getter();

    if (OUTLINED_FUNCTION_132_3())
    {
      OUTLINED_FUNCTION_13_14();
      swift_slowAlloc();
      OUTLINED_FUNCTION_16_56();
      v46 = swift_slowAlloc();
      OUTLINED_FUNCTION_144_2(v46);
      *v31 = 136315138;
      v197[0] = v26;
      v47 = v44;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo22INStartVideoCallIntentCSgMd, &_sSo22INStartVideoCallIntentCSgMR);
      v48 = String.init<A>(describing:)();
      v50 = v20;
      v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v49, v198);

      *(v31 + 4) = v51;
      v20 = v50;
      OUTLINED_FUNCTION_29_13();
      OUTLINED_FUNCTION_45_21(v52, v53, v54, v55);
      _os_log_impl(v56, v57, v58, v59, v60, v61);
      __swift_destroy_boxed_opaque_existential_1(v34);
      OUTLINED_FUNCTION_5_39();

      OUTLINED_FUNCTION_10_76();
    }

    v62 = v44;
    goto LABEL_36;
  }

  v184 = v34;
  v185 = v32;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v187 = v38;
  v63 = type metadata accessor for Logger();
  v64 = __swift_project_value_buffer(v63, static Logger.siriPhone);
  v65 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  v66 = OUTLINED_FUNCTION_28_3();
  if (os_log_type_enabled(v66, v67))
  {
    v68 = OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_11_1(v68);
    OUTLINED_FUNCTION_18_30();
    _os_log_impl(v69, v70, v71, v72, v73, 2u);
    OUTLINED_FUNCTION_8();
  }

  __swift_project_boxed_opaque_existential_1(v31, v31[3]);
  v74 = OUTLINED_FUNCTION_4_3();
  v76 = v75(v74);
  OUTLINED_FUNCTION_55_25();
  HIDWORD(v183) = PhoneCallNLIntent.isEmergencyContactCall()();
  OUTLINED_FUNCTION_55_25();
  PhoneCallNLIntent.getPersons()();
  v77 = objc_allocWithZone(INStartVideoCallIntent);
  v78 = OUTLINED_FUNCTION_40_0();
  v79 = @nonobjc INStartVideoCallIntent.init(contacts:)(v78);
  v80 = _s27PhoneCallFlowDelegatePlugin20NLv4IntentConversionPAAE03setG8Metadata3for13sharedGlobals3app08previousG00G4TypeQzAJ_AA06SharedM9Providing_p17SiriAppResolution0T0CAJSgtFZAA010StartVideobgH0O_Tt3g5(v79, v28, v195, v26);

  outlined init with copy of SignalProviding(v31, v198);
  v81 = v80;

  v82 = Logger.logObject.getter();
  v83 = static os_log_type_t.debug.getter();

  v191 = v20;
  v192 = v64;
  v186 = v76;
  if (OUTLINED_FUNCTION_115_1())
  {
    v182 = v28;
    v84 = swift_slowAlloc();
    v85 = OUTLINED_FUNCTION_49_22();
    v197[0] = OUTLINED_FUNCTION_131_5(v85, &a15);
    *v84 = 138413058;
    *(v84 + 4) = v81;
    *v85 = v81;
    *(v84 + 12) = 2080;
    v86 = v81;
    v181 = v83;
    v87 = dispatch thunk of App.debugDescription.getter();
    v89 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v87, v88, v197);

    *(v84 + 14) = v89;
    *(v84 + 22) = 2080;
    v90 = v200;
    __swift_project_boxed_opaque_existential_1(v198, v199);
    v91 = OUTLINED_FUNCTION_64();
    v93 = v92(v91, v90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin04SiriA7Contact_pMd, &_s27PhoneCallFlowDelegatePlugin04SiriA7Contact_pMR);
    OUTLINED_FUNCTION_90();
    v94 = Array.description.getter();
    v96 = v95;

    __swift_destroy_boxed_opaque_existential_1(v198);
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v94, v96, v197);
    OUTLINED_FUNCTION_64();

    *(v84 + 24) = v93;
    *(v84 + 32) = 2080;
    type metadata accessor for ContactQuery();
    v97 = Array.debugDescription.getter();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v97, v98, v197);
    OUTLINED_FUNCTION_160();
    *(v84 + 34) = v94;
    _os_log_impl(&dword_0, v82, v181, "#StartVideoCallIntentConversion with intent:%@ resolvedApp:%s phoneCallNLIntent=%s contactQueries=%s", v84, 0x2Au);
    v99 = OUTLINED_FUNCTION_78_12(&a15);
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v99, v100, v101);
    OUTLINED_FUNCTION_8();

    OUTLINED_FUNCTION_78_12(&a16);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_8();

    v28 = v182;
    OUTLINED_FUNCTION_8();
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(v198);
  }

  v102 = v28[4];
  v103 = OUTLINED_FUNCTION_129();
  __swift_project_boxed_opaque_existential_1(v103, v104);
  v105 = *(v102 + 56);
  v106 = v81;
  v107 = OUTLINED_FUNCTION_55();
  v105(v107);
  OUTLINED_FUNCTION_24_2();
  v109 = (*(v108 + 232))();

  v110 = &unk_427000;
  if (v109)
  {
    static SiriKitEventSender.current.getter();
    v111 = type metadata accessor for EmergencyContactResolution();
    v112 = OUTLINED_FUNCTION_79(v111);
    (v190)(v194, v191, v196);
    v113 = _s27PhoneCallFlowDelegatePlugin33ReferenceContactResolutionWrapperO20runCombinedSRRandCRR33_6E03C60D186988DA16A96BF8932754FFLL13siriKitIntent3app02nlW013sharedGlobals20contactGroupResolverAC20SRRResolutionResultsAELLVAA013NCRResolvableW0_p_07SiriAppH03AppCAA0aB8NLIntent_pAA22SharedGlobalsProviding_pAA0G14GroupResolving_ptFZTf4ennnnn_nSo012INStartVideobW0C_Tt4g5Tf4nnnne_n13SiriInference0G13GroupResolverV_Tg5(v106, v195, v31, v28);
    v115 = v114;
    if (specialized Array.count.getter(v113))
    {
      v116 = Logger.logObject.getter();
      static os_log_type_t.debug.getter();
      v117 = OUTLINED_FUNCTION_28_3();
      if (os_log_type_enabled(v117, v118))
      {
        v119 = OUTLINED_FUNCTION_65_0();
        *v119 = 0;
        OUTLINED_FUNCTION_40_3();
        _os_log_impl(v120, v121, v122, v123, v119, 2u);
        OUTLINED_FUNCTION_8();
      }

      INStartVideoCallIntent.overwriteContacts(newContacts:)(v113);
    }

    if (specialized Array.count.getter(v115))
    {
      v124 = Logger.logObject.getter();
      static os_log_type_t.debug.getter();
      v125 = OUTLINED_FUNCTION_28_3();
      if (os_log_type_enabled(v125, v126))
      {
        v127 = OUTLINED_FUNCTION_65_0();
        *v127 = 0;
        OUTLINED_FUNCTION_40_3();
        _os_log_impl(v128, v129, v130, v131, v127, 2u);
        OUTLINED_FUNCTION_8();
      }
    }

    if (specialized Array.count.getter(v115))
    {
    }

    else
    {
      v144 = specialized Array.count.getter(v113);

      if (!v144)
      {
        v170 = OUTLINED_FUNCTION_129();
        __swift_project_boxed_opaque_existential_1(v170, v171);
        v172 = OUTLINED_FUNCTION_4_3();
        v173(v172);
        __swift_project_boxed_opaque_existential_1(v197, v197[3]);
        OUTLINED_FUNCTION_4_3();
        dispatch thunk of DeviceState.siriLocale.getter();
        v174 = v31[3];
        v175 = v31[4];
        __swift_project_boxed_opaque_existential_1(v31, v174);
        OUTLINED_FUNCTION_86_7();
        OUTLINED_FUNCTION_48_26();
        _s27PhoneCallFlowDelegatePlugin17ContactResolutionC19updateSiriKitIntent04sirijK014contactQueries012hasEmergencyF03app6locale02nlK013sharedGlobals18multicardinalIndex0lJ11EventSender09emergencyfG0yAA013NCRResolvableK0_p_Say0I9Inference0F5QueryVGSb0i3AppG03AppCSg10Foundation6LocaleVAA0aB8NLIntent_pAA06SharedU9Providing_pSiSg0ijC00ijX7Sending_pAA0pfG0CtFZTf4ennnnnnnnnn_nSo012INStartVideobK0C_Tt9g5Tf4nnnnnennnn_n(v106, v186, v176, v195, v193, v177, v28, 0, v180, v198, v112, v174, v175, v183, v184, v185, v186, v187, v190, v191, v192, v193, v194, v195, v196);
        v178 = OUTLINED_FUNCTION_84_8();
        v179(v178);
        __swift_destroy_boxed_opaque_existential_1(v197);
        v38 = v189;
LABEL_30:
        (*(v38 + 8))(v194, v196);

        __swift_destroy_boxed_opaque_existential_1(v198);
        v110 = &unk_427000;
        goto LABEL_31;
      }
    }

    v145 = v106;
    v146 = Logger.logObject.getter();
    static os_log_type_t.debug.getter();

    if (OUTLINED_FUNCTION_115_1())
    {
      OUTLINED_FUNCTION_13_14();
      v147 = swift_slowAlloc();
      v148 = OUTLINED_FUNCTION_49_22();
      *v147 = 138412290;
      *(v147 + 4) = v145;
      *v148 = v145;
      v149 = v145;
      OUTLINED_FUNCTION_40_3();
      _os_log_impl(v150, v151, v152, v153, v147, 0xCu);
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v148, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      OUTLINED_FUNCTION_8();

      OUTLINED_FUNCTION_8();
    }

    v38 = v187;
    goto LABEL_30;
  }

  v132 = OUTLINED_FUNCTION_129();
  __swift_project_boxed_opaque_existential_1(v132, v133);
  OUTLINED_FUNCTION_50_28();
  v134 = OUTLINED_FUNCTION_55();
  v135(v134);
  __swift_project_boxed_opaque_existential_1(v198, v199);
  OUTLINED_FUNCTION_4_3();
  dispatch thunk of DeviceState.siriLocale.getter();
  static SiriKitEventSender.current.getter();
  v136 = type metadata accessor for EmergencyContactResolution();
  v137 = OUTLINED_FUNCTION_79(v136);
  v138 = v31[3];
  v139 = v31[4];
  __swift_project_boxed_opaque_existential_1(v31, v138);
  OUTLINED_FUNCTION_86_7();
  OUTLINED_FUNCTION_48_26();
  _s27PhoneCallFlowDelegatePlugin17ContactResolutionC19updateSiriKitIntent04sirijK014contactQueries012hasEmergencyF03app6locale02nlK013sharedGlobals18multicardinalIndex0lJ11EventSender09emergencyfG0yAA013NCRResolvableK0_p_Say0I9Inference0F5QueryVGSb0i3AppG03AppCSg10Foundation6LocaleVAA0aB8NLIntent_pAA06SharedU9Providing_pSiSg0ijC00ijX7Sending_pAA0pfG0CtFZTf4ennnnnnnnnn_nSo012INStartVideobK0C_Tt9g5Tf4nnnnnennnn_n(v106, v186, v140, v195, v193, v141, v28, 0, v180, v197, v137, v138, v139, v183, v184, v185, v186, v187, v190, v191, v192, v193, v194, v195, v196);

  __swift_destroy_boxed_opaque_existential_1(v197);
  v142 = OUTLINED_FUNCTION_84_8();
  v143(v142);
  __swift_destroy_boxed_opaque_existential_1(v198);
  v38 = v188;
LABEL_31:
  v154 = outlined bridged method (pb) of @objc INStartVideoCallIntent.contacts.getter(v106);
  v155 = one-time initialization token for instance;
  v156 = v106;
  if (v155 != -1)
  {
    OUTLINED_FUNCTION_60_2(&one-time initialization token for instance);
  }

  _s27PhoneCallFlowDelegatePlugin34AppSelectionSignalsGatheringHelperO23triggerSignalCollection13sharedGlobals8contacts05phoneB8NLIntent05smartfG018eligibleAppsFinder8skIntentyAA06SharedO9Providing_p_SaySo8INPersonCGSgAA0abR0_pAA05SmartfG14FeatureManagerCSgAA012PrefetchableF7Finding_pAA07CallingX0_pSgtFZTf4nnnnenn_nAA08EligiblefV0C_Tt5g5(v28, v154, v31, 0, static EligibleAppFinder.instance);

  v157 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();

  if (OUTLINED_FUNCTION_132_3())
  {
    OUTLINED_FUNCTION_13_14();
    v158 = swift_slowAlloc();
    v159 = OUTLINED_FUNCTION_49_22();
    *v158 = v110[411];
    *(v158 + 4) = v156;
    *v159 = v106;
    v156 = v156;
    OUTLINED_FUNCTION_29_13();
    OUTLINED_FUNCTION_45_21(v160, v161, v162, v163);
    _os_log_impl(v164, v165, v166, v167, v168, v169);
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v159, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_5_39();

    OUTLINED_FUNCTION_10_76();
  }

  v20 = v191;
LABEL_36:
  (*(v38 + 8))(v20, v196);
  OUTLINED_FUNCTION_65();
}

void _s27PhoneCallFlowDelegatePlugin06AnswerB16IntentConversionO09convertToG005phoneB8NLIntent3app13sharedGlobals08previousG00pG8Response13groupResolverSo08INAnswerbG0CSgAA0abL0_p_17SiriAppResolution0V0CAA06SharedO9Providing_pAMSo08INIntentQ0CSgAA21ContactGroupResolving_ptFZTf4nnnnnen_n0U9Inference012ContactGroupS0V_Tt5g5()
{
  OUTLINED_FUNCTION_66();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v48 = v6;
  v8 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSSSgGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSSSgGMR);
  OUTLINED_FUNCTION_7();
  v50 = v10;
  v51 = v9;
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v11);
  OUTLINED_FUNCTION_79_10();
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGMR);
  OUTLINED_FUNCTION_7();
  v13 = v12;
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v14);
  v16 = &v48 - v15;
  OUTLINED_FUNCTION_86(v8);
  v17 = v3;
  if (!PhoneCallNLIntent.hasAnyConfirmation()())
  {
LABEL_9:
    v49 = v13;
    v29 = OUTLINED_FUNCTION_138_4();
    outlined init with copy of SignalProviding(v29, v30);
    OUTLINED_FUNCTION_102_0();
    v31 = swift_allocObject();
    outlined init with take of SPHConversation(v54, v31 + 16);
    *(v31 + 56) = v17;
    v32 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMR);
    type metadata accessor for INCallAudioRoute(0);
    Transformer.init(transform:)();
    *(swift_allocObject() + 16) = v1;
    v33 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    Transformer.init(transform:)();
    Transformer.transform.getter();
    v34 = OUTLINED_FUNCTION_146_2();
    v35(v34);

    v36 = *&v54[0];
    Transformer.transform.getter();
    v37 = OUTLINED_FUNCTION_146_2();
    v38(v37);

    v39 = *(&v54[0] + 1);
    if (*(&v54[0] + 1))
    {
      v40 = *&v54[0];
      v42 = v48;
      v41 = v49;
    }

    else
    {
      v42 = v48;
      v40 = static AnswerCallIntentConversion.getCallIdentifierFromCallNotifications(sharedGlobals:app:)(v5);
      v39 = v43;
      v41 = v49;
    }

    v44 = objc_allocWithZone(INAnswerCallIntent);
    v45 = @nonobjc INAnswerCallIntent.init(audioRoute:callIdentifier:)(v36, v40, v39);
    _s27PhoneCallFlowDelegatePlugin20NLv4IntentConversionPAAE03setG8Metadata3for13sharedGlobals3app08previousG00G4TypeQzAJ_AA06SharedM9Providing_p17SiriAppResolution0T0CAJSgtFZAA06AnswerbgH0O_Tt3g5(v45, v5, v42, v3);

    v46 = OUTLINED_FUNCTION_84_8();
    v47(v46);
    (*(v41 + 8))(v16, v52);
    goto LABEL_13;
  }

  if (!v3)
  {
    v17 = 0;
    goto LABEL_9;
  }

  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v18, static Logger.siriPhone);
  v19 = v3;
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v20, v21))
  {
    OUTLINED_FUNCTION_13_14();
    v22 = swift_slowAlloc();
    OUTLINED_FUNCTION_12_17();
    v23 = swift_slowAlloc();
    *&v54[0] = v23;
    *v22 = 136315138;
    v53 = v3;
    v24 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo18INAnswerCallIntentCSgMd, &_sSo18INAnswerCallIntentCSgMR);
    v25 = String.init<A>(describing:)();
    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, v54);

    *(v22 + 4) = v27;
    _os_log_impl(&dword_0, v20, v21, "#AnswerCallIntentConversion is confirmation, returning previousIntent: %s.", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v23);
    OUTLINED_FUNCTION_8();

    OUTLINED_FUNCTION_5_39();
  }

  v28 = v19;
LABEL_13:
  OUTLINED_FUNCTION_65();
}

uint64_t instantiation function for generic protocol witness table for StartVideoCallRCHFlowDelegate(uint64_t a1)
{
  result = lazy protocol witness table accessor for type StartVideoCallRCHFlowDelegate and conformance StartVideoCallRCHFlowDelegate(&lazy protocol witness table cache variable for type StartVideoCallRCHFlowDelegate and conformance StartVideoCallRCHFlowDelegate, type metadata accessor for StartVideoCallRCHFlowDelegate);
  *(a1 + 8) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type StartVideoCallRCHFlowDelegate and conformance StartVideoCallRCHFlowDelegate(&lazy protocol witness table cache variable for type StartVideoCallRCHFlowDelegate and conformance BaseRCHFlowDelegate<A, B>, type metadata accessor for StartVideoCallRCHFlowDelegate);
  *(a1 + 16) = result;
  return result;
}

uint64_t type metadata accessor for StartVideoCallRCHFlowDelegate(uint64_t a1)
{
  result = type metadata singleton initialization cache for StartVideoCallRCHFlowDelegate;
  if (!type metadata singleton initialization cache for StartVideoCallRCHFlowDelegate)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void _s27PhoneCallFlowDelegatePlugin33ReferenceContactResolutionWrapperO20runCombinedSRRandCRR33_6E03C60D186988DA16A96BF8932754FFLL13siriKitIntent3app02nlW013sharedGlobals20contactGroupResolverAC20SRRResolutionResultsAELLVAA013NCRResolvableW0_p_07SiriAppH03AppCAA0aB8NLIntent_pAA22SharedGlobalsProviding_pAA0G14GroupResolving_ptFZTf4ennnnn_nSo07INStartbW0C_Tt4g5Tf4nnnne_n13SiriInference0G13GroupResolverV_Tg5Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_66();
  v288 = v23;
  v289 = v24;
  v292 = v25;
  v294 = v26;
  v28 = v27;
  v30 = v29;
  v285 = v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s32SiriReferenceResolutionDataModel11RRCandidateVSgMd, &_s32SiriReferenceResolutionDataModel11RRCandidateVSgMR);
  v33 = OUTLINED_FUNCTION_21(v32);
  __chkstk_darwin(v33);
  OUTLINED_FUNCTION_16_2();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v34);
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_13(v35);
  v286 = type metadata accessor for RREntity();
  OUTLINED_FUNCTION_7();
  v265 = v36;
  __chkstk_darwin(v37);
  OUTLINED_FUNCTION_16_2();
  v284 = v38;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v39);
  OUTLINED_FUNCTION_13_5();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v40);
  OUTLINED_FUNCTION_13_5();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v41);
  OUTLINED_FUNCTION_13_5();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v42);
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_13(v43);
  v293 = type metadata accessor for RRCandidate();
  OUTLINED_FUNCTION_7();
  v291 = v44;
  __chkstk_darwin(v45);
  OUTLINED_FUNCTION_16_2();
  v283 = v46;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v47);
  OUTLINED_FUNCTION_13_5();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v48);
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_23(v49);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s32SiriReferenceResolutionDataModel8RRResultOSgMd, &_s32SiriReferenceResolutionDataModel8RRResultOSgMR);
  OUTLINED_FUNCTION_21(v50);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v51);
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_13(v52);
  v274 = type metadata accessor for RRResult();
  OUTLINED_FUNCTION_7();
  v272 = v53;
  __chkstk_darwin(v54);
  OUTLINED_FUNCTION_16_2();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v55);
  OUTLINED_FUNCTION_13_5();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v56);
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_13(v57);
  v58 = type metadata accessor for MatchedResultsSetting();
  OUTLINED_FUNCTION_7();
  v60 = v59;
  __chkstk_darwin(v61);
  OUTLINED_FUNCTION_12_5();
  v64 = v62 - v63;
  __chkstk_darwin(v65);
  OUTLINED_FUNCTION_96_6();
  type metadata accessor for ContactGroupResolver();
  OUTLINED_FUNCTION_7();
  __chkstk_darwin(v66);
  OUTLINED_FUNCTION_4();
  v69 = (v68 - v67);
  v277 = v70;
  v71 = *(v70 + 16);
  v280 = v69;
  v278 = v72;
  v71();
  v73 = OUTLINED_FUNCTION_8_2();
  __swift_project_boxed_opaque_existential_1(v73, v74);
  v75 = OUTLINED_FUNCTION_7_1();
  v77 = v76(v75);
  v296 = v77;
  v281 = v60;
  v78 = *(v60 + 104);
  v290 = v22;
  v282 = v58;
  v78(v22, enum case for MatchedResultsSetting.defaultMatching(_:), v58);
  v287 = v28;
  OUTLINED_FUNCTION_86(v28);
  if (PhoneCallNLIntent.hasOnlyCallVerb()())
  {
    v79 = v30;
    if (App.isFirstParty()() && static UsoUtils.buildDummyReferenceEntity()())
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*(&dword_10 + (v296 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v296 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v77 = v296;
      (*(v281 + 8))(v290, v282);
      v78(v290, enum case for MatchedResultsSetting.extremelySalientResultsOnly(_:), v282);
    }
  }

  else
  {
    v79 = v30;
  }

  if (!specialized Array.count.getter(v77))
  {
    if (one-time initialization token for siriPhone != -1)
    {
      goto LABEL_96;
    }

    goto LABEL_19;
  }

  v80 = v290;
  if (one-time initialization token for siriPhone != -1)
  {
LABEL_91:
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v81 = type metadata accessor for Logger();
  v82 = __swift_project_value_buffer(v81, static Logger.siriPhone);
  v83 = Logger.logObject.getter();
  v84 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_16_4(v84))
  {
    OUTLINED_FUNCTION_13_14();
    v85 = swift_slowAlloc();
    OUTLINED_FUNCTION_12_17();
    v86 = swift_slowAlloc();
    v295[0] = v86;
    *v85 = 136315138;
    swift_beginAccess();
    v87 = v282;
    (*(v281 + 16))(v64, v80, v282);
    v88 = String.init<A>(describing:)();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v88, v89, v295);
    OUTLINED_FUNCTION_89_6();

    *(v85 + 4) = v87;
    _os_log_impl(&dword_0, v83, v84, "#ReferenceContactResolutionWrapper Querying SRR with match setting: %s", v85, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v86);
    OUTLINED_FUNCTION_8();

    OUTLINED_FUNCTION_8();
  }

  v90 = v279;
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INStartCallIntent, INStartCallIntent_ptr);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v92 = outlined bridged method (pb) of @objc static INIntent.typeName()(ObjCClassFromMetadata);
  if (v93)
  {
    v94 = v92;
  }

  else
  {
    v94 = 0;
  }

  __chkstk_darwin(v92);
  *(&v261 - 4) = &v296;
  *(&v261 - 3) = v80;
  *(&v261 - 2) = v294;
  static SiriKitEventSender.current.getter();
  _s27PhoneCallFlowDelegatePlugin0A21SelfPerformanceLoggerC8signpost19domainExecutionType04taskL018siriKitEventSender_xSo020FLOWSchemaFLOWDomainkL0V_SS04SirioC00toP7Sending_pxyXEtlFZSay0T28ReferenceResolutionDataModel8RRResultOG_Tt4g5();
  OUTLINED_FUNCTION_5();

  __swift_destroy_boxed_opaque_existential_1(v295);
  specialized Collection.first.getter(v94);

  OUTLINED_FUNCTION_116_3();
  if (__swift_getEnumTagSinglePayload(v95, v96, &v261) == 1)
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v90, &_s32SiriReferenceResolutionDataModel8RRResultOSgMd, &_s32SiriReferenceResolutionDataModel8RRResultOSgMR);
    OUTLINED_FUNCTION_59_14();
    goto LABEL_17;
  }

  v292 = v82;
  v275 = a22;
  v276 = a21;
  v110 = v272;
  v111 = v271;
  (*(v272 + 32))(v271, v90, &v261);
  v112 = v110 + 16;
  v113 = *(v110 + 16);
  v114 = v269;
  v113(v269, v111, &v261);
  v115 = (*(v110 + 88))(v114, &v261);
  if (v115 == enum case for RRResult.foundMatch(_:))
  {
    v273 = v79;
    v116 = OUTLINED_FUNCTION_97_7();
    v117(v116);
    v118 = v291;
    v119 = OUTLINED_FUNCTION_112_5();
    v120 = v293;
    v121(v119, v114, v293);
    v79 = (v118 + 16);
    v122 = *(v118 + 16);
    v123 = v267;
    v122(v267, v112, v120);
    v124 = Logger.logObject.getter();
    v125 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v124, v125))
    {
      OUTLINED_FUNCTION_13_14();
      swift_slowAlloc();
      OUTLINED_FUNCTION_16_56();
      v126 = swift_slowAlloc();
      v295[0] = v126;
      *v123 = 136315138;
      lazy protocol witness table accessor for type StartVideoCallRCHFlowDelegate and conformance StartVideoCallRCHFlowDelegate(&lazy protocol witness table cache variable for type RRCandidate and conformance RRCandidate, &type metadata accessor for RRCandidate);
      dispatch thunk of CustomStringConvertible.description.getter();
      OUTLINED_FUNCTION_150_3();
      v127 = *(v118 + 8);
      v127(v123, v293);
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v123, &v261, v295);
      OUTLINED_FUNCTION_19_7();
      OUTLINED_FUNCTION_116_3();

      *(v123 + 4) = v123;
      OUTLINED_FUNCTION_45_21(&dword_0, v124, v125, "#ReferenceContactResolutionWrapper .foundMatch %s");
      _os_log_impl(v128, v129, v130, v131, v132, v133);
      __swift_destroy_boxed_opaque_existential_1(v126);
      v120 = v293;
      OUTLINED_FUNCTION_8();

      OUTLINED_FUNCTION_10_76();
    }

    else
    {

      v127 = *(v118 + 8);
      v177 = OUTLINED_FUNCTION_8_2();
      (v127)(v177);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy32SiriReferenceResolutionDataModel11RRCandidateVGMd, &_ss23_ContiguousArrayStorageCy32SiriReferenceResolutionDataModel11RRCandidateVGMR);
    v178 = (*(v118 + 80) + 32) & ~*(v118 + 80);
    v179 = swift_allocObject();
    *(v179 + 16) = xmmword_424FD0;
    v122((v179 + v178), v270, v120);
    v180 = v268;
    specialized Collection.first.getter(v179);

    if (__swift_getEnumTagSinglePayload(v180, 1, v120) == 1)
    {
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v180, &_s32SiriReferenceResolutionDataModel11RRCandidateVSgMd, &_s32SiriReferenceResolutionDataModel11RRCandidateVSgMR);
      v181 = Logger.logObject.getter();
      static os_log_type_t.debug.getter();
      v182 = OUTLINED_FUNCTION_28_3();
      os_log_type_enabled(v182, v183);
      OUTLINED_FUNCTION_115_3();
      if (v184)
      {
        v185 = OUTLINED_FUNCTION_65_0();
        OUTLINED_FUNCTION_11_1(v185);
        OUTLINED_FUNCTION_18_30();
        _os_log_impl(v186, v187, v188, v189, v190, 2u);
        OUTLINED_FUNCTION_8();
      }

      OUTLINED_FUNCTION_59_14();
      v191 = v293;
    }

    else
    {
      v191 = v120;
      v207 = v264;
      RRCandidate.entity.getter();
      v127(v180, v120);
      v208 = v265;
      v209 = v266;
      v210 = v286;
      (*(v265 + 32))(v266, v207, v286);
      OUTLINED_FUNCTION_30_40();
      OUTLINED_FUNCTION_103_5();
      v211 = v280;
      _s27PhoneCallFlowDelegatePlugin33ReferenceContactResolutionWrapperO15resolveRREntity33_6E03C60D186988DA16A96BF8932754FFLL8rrEntity13siriKitIntent3app02nlW013sharedGlobals20contactGroupResolverAC20SRRResolutionResultsAELLV04SirifH9DataModel0K0V_AA013NCRResolvableW0_p07SiriAppH03AppCSgAA0aB8NLIntent_pAA22SharedGlobalsProviding_pAA0G14GroupResolving_ptFZTf4nennnnn_nSo07INStartbW0C_Tt5g5Tf4nnnnne_n13SiriInference0G13GroupResolverV_Tg5Tm();
      (*(v208 + 8))(v209, v210);
      v79 = v211;
      OUTLINED_FUNCTION_115_3();
    }

    v127(v270, v191);
    v212 = OUTLINED_FUNCTION_137_3();
    v213(v212);
    OUTLINED_FUNCTION_17();
    goto LABEL_22;
  }

  if (v115 != enum case for RRResult.needsDisambiguation(_:))
  {
    if (v115 == enum case for RRResult.foundMatchPlural(_:))
    {
      v192 = OUTLINED_FUNCTION_97_7();
      v193(v192);
      v194 = *v114;

      v195 = Logger.logObject.getter();
      v196 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v195, v196))
      {
        OUTLINED_FUNCTION_13_14();
        swift_slowAlloc();
        OUTLINED_FUNCTION_16_56();
        v197 = swift_slowAlloc();
        v295[0] = v197;
        *v114 = 136315138;
        v198 = v293;
        v199 = Array.description.getter();
        getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v199, v200, v295);
        OUTLINED_FUNCTION_89_6();
        OUTLINED_FUNCTION_116_3();

        *(v114 + 4) = v90;
        OUTLINED_FUNCTION_45_21(&dword_0, v195, v196, "#ReferenceContactResolutionWrapper .foundMatchPlural %s");
        _os_log_impl(v201, v202, v203, v204, v205, v206);
        OUTLINED_FUNCTION_161_1(v197);
        OUTLINED_FUNCTION_8();

        OUTLINED_FUNCTION_8();
      }

      else
      {

        v198 = v293;
      }

      v230 = v291;
      v231 = v273;
      specialized Collection.first.getter(v194);

      if (__swift_getEnumTagSinglePayload(v231, 1, v198) != 1)
      {
        v254 = v262;
        RRCandidate.entity.getter();
        (*(v230 + 8))(v231, v198);
        v255 = v265;
        v256 = v263;
        v257 = v286;
        (*(v265 + 32))(v263, v254, v286);
        OUTLINED_FUNCTION_30_40();
        OUTLINED_FUNCTION_59_14();
        _s27PhoneCallFlowDelegatePlugin33ReferenceContactResolutionWrapperO15resolveRREntity33_6E03C60D186988DA16A96BF8932754FFLL8rrEntity13siriKitIntent3app02nlW013sharedGlobals20contactGroupResolverAC20SRRResolutionResultsAELLV04SirifH9DataModel0K0V_AA013NCRResolvableW0_p07SiriAppH03AppCSgAA0aB8NLIntent_pAA22SharedGlobalsProviding_pAA0G14GroupResolving_ptFZTf4nennnnn_nSo07INStartbW0C_Tt5g5Tf4nnnnne_n13SiriInference0G13GroupResolverV_Tg5Tm();
        (*(v255 + 8))(v256, v257);
        v258 = OUTLINED_FUNCTION_17_54();
        v259(v258);
        OUTLINED_FUNCTION_23_40();
        goto LABEL_22;
      }

      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v231, &_s32SiriReferenceResolutionDataModel11RRCandidateVSgMd, &_s32SiriReferenceResolutionDataModel11RRCandidateVSgMR);
      v232 = Logger.logObject.getter();
      static os_log_type_t.debug.getter();
      v233 = OUTLINED_FUNCTION_28_3();
      if (os_log_type_enabled(v233, v234))
      {
        v235 = OUTLINED_FUNCTION_65_0();
        OUTLINED_FUNCTION_11_1(v235);
        OUTLINED_FUNCTION_18_30();
        _os_log_impl(v236, v237, v238, v239, v240, 2u);
        OUTLINED_FUNCTION_8();
      }

      v241 = OUTLINED_FUNCTION_17_54();
      v242(v241);
      OUTLINED_FUNCTION_23_40();
      OUTLINED_FUNCTION_139_1();
      v243();
      OUTLINED_FUNCTION_59_14();
      goto LABEL_23;
    }

    if (v115 == enum case for RRResult.noMatch(_:))
    {
      v214 = Logger.logObject.getter();
      static os_log_type_t.debug.getter();
      v215 = OUTLINED_FUNCTION_28_3();
      os_log_type_enabled(v215, v216);
      OUTLINED_FUNCTION_59_14();
      if (v217)
      {
        v218 = OUTLINED_FUNCTION_65_0();
        OUTLINED_FUNCTION_11_1(v218);
        OUTLINED_FUNCTION_18_30();
        _os_log_impl(v219, v220, v221, v222, v223, 2u);
        OUTLINED_FUNCTION_8();
      }

      v224 = OUTLINED_FUNCTION_17_54();
      v225(v224);
    }

    else
    {
      v244 = OUTLINED_FUNCTION_140_3(&v293);
      v245 = v271;
      v113(v244, v271, &v261);
      v246 = Logger.logObject.getter();
      v247 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v246, v247))
      {
        OUTLINED_FUNCTION_13_14();
        v248 = swift_slowAlloc();
        OUTLINED_FUNCTION_12_17();
        v249 = swift_slowAlloc();
        v295[0] = v249;
        *v248 = 136315138;
        lazy protocol witness table accessor for type StartVideoCallRCHFlowDelegate and conformance StartVideoCallRCHFlowDelegate(&lazy protocol witness table cache variable for type RRResult and conformance RRResult, &type metadata accessor for RRResult);
        v250 = dispatch thunk of CustomStringConvertible.description.getter();
        v252 = v251;
        v79 = *(v272 + 8);
        (v79)(v111, &v261);
        v253 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v250, v252, v295);

        *(v248 + 4) = v253;
        _os_log_impl(&dword_0, v246, v247, "#ReferenceContactResolutionWrapper dropping result of type %s!", v248, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v249);
        OUTLINED_FUNCTION_10_76();

        OUTLINED_FUNCTION_8();

        (v79)(v271, &v261);
        v114 = v269;
      }

      else
      {

        v79 = *(v272 + 8);
        v260 = OUTLINED_FUNCTION_141_2();
        v79(v260);
        (v79)(v245, &v261);
      }

      (v79)(v114, &v261);
      OUTLINED_FUNCTION_59_14();
    }

LABEL_17:
    OUTLINED_FUNCTION_23_40();
    goto LABEL_22;
  }

  v134 = OUTLINED_FUNCTION_97_7();
  v135(v134);
  v136 = *v114;

  v137 = Logger.logObject.getter();
  v138 = static os_log_type_t.debug.getter();

  if (OUTLINED_FUNCTION_115_1())
  {
    OUTLINED_FUNCTION_13_14();
    v139 = swift_slowAlloc();
    OUTLINED_FUNCTION_12_17();
    v140 = swift_slowAlloc();
    v295[0] = v140;
    *v139 = 136315138;
    v141 = Array.description.getter();
    v143 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v141, v142, v295);

    *(v139 + 4) = v143;
    OUTLINED_FUNCTION_116_3();
    OUTLINED_FUNCTION_18_30();
    _os_log_impl(v144, v145, v146, v147, v148, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v140);
    OUTLINED_FUNCTION_10_76();

    OUTLINED_FUNCTION_8();
  }

  v270 = *(v136 + 16);
  if (!v270)
  {

    v150 = _swiftEmptyArrayStorage;
    OUTLINED_FUNCTION_59_14();
LABEL_78:
    static ReferenceContactResolutionWrapper.dedupePersons(persons:sharedGlobals:)(v150, v294);

    static ReferenceContactResolutionWrapper.skeletonINPerson(persons:)();
    OUTLINED_FUNCTION_40_0();

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v226 = swift_allocObject();
    *(v226 + 16) = xmmword_426260;
    *(v226 + 32) = v138;
    v227 = OUTLINED_FUNCTION_17_54();
    v228(v227);
    OUTLINED_FUNCTION_23_40();
    OUTLINED_FUNCTION_139_1();
    v229();
    goto LABEL_23;
  }

  v273 = v79;
  v64 = 0;
  v269 = *(v291 + 16);
  v149 = (*(v291 + 80) + 32) & ~*(v291 + 80);
  v261 = v136;
  v268 = v136 + v149;
  v150 = _swiftEmptyArrayStorage;
  v267 = (v291 + 8);
  v266 = *(v291 + 72);
  v265 += 8;
  OUTLINED_FUNCTION_59_14();
  v151 = v293;
  v291 = v152;
  while (1)
  {
    v153 = v283;
    (v269)(v283, v268 + v266 * v64, v151);
    v154 = v284;
    RRCandidate.entity.getter();
    (*v267)(v153, v151);
    OUTLINED_FUNCTION_30_40();
    OUTLINED_FUNCTION_103_5();
    _s27PhoneCallFlowDelegatePlugin33ReferenceContactResolutionWrapperO15resolveRREntity33_6E03C60D186988DA16A96BF8932754FFLL8rrEntity13siriKitIntent3app02nlW013sharedGlobals20contactGroupResolverAC20SRRResolutionResultsAELLV04SirifH9DataModel0K0V_AA013NCRResolvableW0_p07SiriAppH03AppCSgAA0aB8NLIntent_pAA22SharedGlobalsProviding_pAA0G14GroupResolving_ptFZTf4nennnnn_nSo07INStartbW0C_Tt5g5Tf4nnnnne_n13SiriInference0G13GroupResolverV_Tg5Tm();
    v138 = v155;
    (*v265)(v154, v286);

    if (v138 >> 62)
    {
      v156 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v156 = *(&dword_10 + (v138 & 0xFFFFFFFFFFFFFF8));
    }

    v157 = v150 >> 62;
    if (v150 >> 62)
    {
      v158 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v158 = *(&dword_10 + (v150 & 0xFFFFFFFFFFFFFF8));
    }

    v159 = v156 + v158;
    if (__OFADD__(v158, v156))
    {
      __break(1u);
LABEL_90:
      __break(1u);
      goto LABEL_91;
    }

    if (swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (!v157)
      {
        v160 = v150 & 0xFFFFFFFFFFFFFF8;
        if (v159 <= *(&dword_18 + (v150 & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          goto LABEL_44;
        }

        goto LABEL_43;
      }

LABEL_42:
      _CocoaArrayWrapper.endIndex.getter();
      goto LABEL_43;
    }

    if (v157)
    {
      goto LABEL_42;
    }

LABEL_43:
    v150 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v160 = v150 & 0xFFFFFFFFFFFFFF8;
LABEL_44:
    v292 = v150;
    v161 = *(v160 + 16);
    v162 = (*(v160 + 24) >> 1) - v161;
    v163 = v160 + 8 * v161;
    v279 = v160;
    if (v138 >> 62)
    {
      break;
    }

    v164 = *(&dword_10 + (v138 & 0xFFFFFFFFFFFFFF8));
    if (v164)
    {
      if (v162 < v164)
      {
        goto LABEL_94;
      }

      type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
      swift_arrayInitWithCopy();
      goto LABEL_54;
    }

LABEL_58:

    v150 = v292;
    v151 = v293;
    if (v156 > 0)
    {
      goto LABEL_90;
    }

LABEL_59:
    if (++v64 == v270)
    {

      OUTLINED_FUNCTION_116_3();
      goto LABEL_78;
    }
  }

  v165 = _CocoaArrayWrapper.endIndex.getter();
  if (!v165)
  {
    goto LABEL_58;
  }

  v166 = v165;
  v167 = _CocoaArrayWrapper.endIndex.getter();
  if (v162 < v167)
  {
    goto LABEL_93;
  }

  if (v166 < 1)
  {
    goto LABEL_95;
  }

  v262 = v167;
  v263 = v156;
  v264 = v64;
  v168 = v163 + 32;
  lazy protocol witness table accessor for type [INPerson] and conformance [A]();
  v169 = 0;
  v156 = &_sSaySo8INPersonCGMR;
  do
  {
    v170 = OUTLINED_FUNCTION_145_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(v170, v171);
    v79 = specialized protocol witness for Collection.subscript.read in conformance [A](v295, v169, v138);
    v173 = *v172;
    (v79)(v295, 0);
    *(v168 + 8 * v169++) = v173;
  }

  while (v166 != v169);
  OUTLINED_FUNCTION_59_14();
  v80 = v290;
  v64 = v264;
  OUTLINED_FUNCTION_117_3();
  v164 = v262;
LABEL_54:

  v150 = v292;
  v151 = v293;
  if (v164 < v156)
  {
    goto LABEL_90;
  }

  if (v164 < 1)
  {
    goto LABEL_59;
  }

  v174 = *(v279 + 16);
  v175 = __OFADD__(v174, v164);
  v176 = v174 + v164;
  if (!v175)
  {
    *(v279 + 16) = v176;
    goto LABEL_59;
  }

  __break(1u);
LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  OUTLINED_FUNCTION_0_6();
  swift_once();
LABEL_19:
  v97 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v97, static Logger.siriPhone);
  v98 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  v99 = OUTLINED_FUNCTION_28_3();
  os_log_type_enabled(v99, v100);
  OUTLINED_FUNCTION_59_14();
  if (v101)
  {
    v102 = OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_11_1(v102);
    OUTLINED_FUNCTION_18_30();
    _os_log_impl(v103, v104, v105, v106, v107, 2u);
    OUTLINED_FUNCTION_8();
  }

  OUTLINED_FUNCTION_17();
LABEL_22:
  OUTLINED_FUNCTION_139_1();
  v108();
LABEL_23:

  OUTLINED_FUNCTION_17();
  v109(v79, v278);
  OUTLINED_FUNCTION_65();
}

void _s27PhoneCallFlowDelegatePlugin33ReferenceContactResolutionWrapperO15resolveRREntity33_6E03C60D186988DA16A96BF8932754FFLL8rrEntity13siriKitIntent3app02nlW013sharedGlobals20contactGroupResolverAC20SRRResolutionResultsAELLV04SirifH9DataModel0K0V_AA013NCRResolvableW0_p07SiriAppH03AppCSgAA0aB8NLIntent_pAA22SharedGlobalsProviding_pAA0G14GroupResolving_ptFZTf4nennnnn_nSo07INStartbW0C_Tt5g5Tf4nnnnne_n13SiriInference0G13GroupResolverV_Tg5Tm()
{
  OUTLINED_FUNCTION_66();
  v54 = v2;
  v55 = v1;
  v4 = v3;
  v52 = v5;
  v53 = v6;
  v50 = v7;
  v51 = v8;
  OUTLINED_FUNCTION_118_5();
  v9 = type metadata accessor for ContactGroupResolver();
  OUTLINED_FUNCTION_7();
  v11 = v10;
  __chkstk_darwin(v12);
  OUTLINED_FUNCTION_4();
  v15 = v14 - v13;
  (*(v11 + 16))(v14 - v13, v4, v9);
  static Signpost.begin(_:)();
  v56 = v16;
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
  v17 = RREntity.convertData<A>(to:)();
  Signpost.OpenSignpost.end()();
  if (v17)
  {
    v18 = one-time initialization token for siriPhone;
    v19 = v17;
    if (v18 != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v20, static Logger.siriPhone);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_74_8(v22))
    {
      v23 = OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_92_7(v23);
      OUTLINED_FUNCTION_29_36();
      _os_log_impl(v24, v25, v26, v27, v28, 2u);
      OUTLINED_FUNCTION_8();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v29 = swift_allocObject();
    v30 = v29;
    *(v29 + 16) = xmmword_426260;
    *(v29 + 32) = v19;
  }

  else
  {
    RREntity.usoEntity.getter();
    OUTLINED_FUNCTION_88();
    type metadata accessor for UsoEntity_common_Person();
    OUTLINED_FUNCTION_3_83();

    if (v57)
    {
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_0_6();
        swift_once();
      }

      v31 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_9_0(v31, static Logger.siriPhone);
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_74_8(v33))
      {
        v34 = OUTLINED_FUNCTION_65_0();
        OUTLINED_FUNCTION_92_7(v34);
        OUTLINED_FUNCTION_29_36();
        _os_log_impl(v35, v36, v37, v38, v39, 2u);
        OUTLINED_FUNCTION_8();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy13SiriInference12ContactQueryVGMd, &_ss23_ContiguousArrayStorageCy13SiriInference12ContactQueryVGMR);
      OUTLINED_FUNCTION_88();
      type metadata accessor for ContactQuery();
      v40 = OUTLINED_FUNCTION_102_4();
      *(v40 + 16) = xmmword_424FD0;
      UsoEntity_common_Person.toContactQuery()();
      _s27PhoneCallFlowDelegatePlugin17ContactResolutionC07resolveF7Queries07contactI013siriKitIntent3app02nlM013sharedGlobalsSaySo8INPersonCGSay13SiriInference0F5QueryVG_AA013NCRResolvableM0_p0s3AppG00W0CSgAA0aB8NLIntent_pAA06SharedQ9Providing_ptFZTf4nennnn_nSo07INStartbM0C_Tt4g5Tm(v40, v50, v51, v52, v53, v54, v41, v42, v49[0], v49[1], v49[2], v50, v51, v52, v53, v54, v55, v56, v57, v58);
      v30 = v43;
    }

    else
    {
      RREntity.usoEntity.getter();
      OUTLINED_FUNCTION_88();
      type metadata accessor for UsoEntity_common_Group();
      OUTLINED_FUNCTION_3_83();

      RREntity.usoEntity.getter();
      OUTLINED_FUNCTION_88();
      type metadata accessor for UsoEntity_common_Agent();
      OUTLINED_FUNCTION_3_83();

      RREntity.usoEntity.getter();
      OUTLINED_FUNCTION_88();
      type metadata accessor for UsoEntity_common_App();
      OUTLINED_FUNCTION_3_83();

      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_0_6();
        swift_once();
      }

      v44 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_9_0(v44, static Logger.siriPhone);
      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.error.getter();
      if (OUTLINED_FUNCTION_16_4(v46))
      {
        v47 = OUTLINED_FUNCTION_65_0();
        *v47 = 0;
        _os_log_impl(&dword_0, v45, v46, "#ReferenceContactResolutionWrapper resolved entity was not recognized as a person or group", v47, 2u);
        OUTLINED_FUNCTION_8();
      }

      v30 = _swiftEmptyArrayStorage;
    }
  }

  __chkstk_darwin(v29);
  v48 = v0;
  specialized Sequence.compactMap<A>(_:)(v55, &v49[-4], v30);

  (*(v11 + 8))(v15, v9);
  OUTLINED_FUNCTION_65();
}

void _s27PhoneCallFlowDelegatePlugin33ReferenceContactResolutionWrapperO18resolveCommonGroup33_6E03C60D186988DA16A96BF8932754FFLL5group13siriKitIntent3app02nlW013sharedGlobals07contactL8ResolverAC20SRRResolutionResultsAELLV12SiriOntology017UsoEntity_common_L0C_AA013NCRResolvableW0_p07SiriAppH03AppCSgAA0aB8NLIntent_pAA22SharedGlobalsProviding_pAA0gL9Resolving_ptFZTf4nennnnn_nSo07INStartbW0C_Tt5g5Tf4nnnnne_n13SiriInference0gL8ResolverV_Tg5Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_66();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v91 = v27;
  v29 = v28;
  v90 = v30;
  v89 = v31;
  v33 = v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVySay27PhoneCallFlowDelegatePlugin8SmsGroup_pGSaySo06INCallJ0CGSgGMd, &_s13SiriUtilities11TransformerVySay27PhoneCallFlowDelegatePlugin8SmsGroup_pGSaySo06INCallJ0CGSgGMR);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v35);
  v93 = type metadata accessor for ContactQuery();
  OUTLINED_FUNCTION_7();
  v37 = v36;
  __chkstk_darwin(v38);
  OUTLINED_FUNCTION_5_4();
  OUTLINED_FUNCTION_13(v39);
  v40 = type metadata accessor for ContactGroupResolver();
  v99[3] = v40;
  v99[4] = &protocol witness table for ContactGroupResolver;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v99);
  (*(*(v40 - 8) + 16))(boxed_opaque_existential_1, v26, v40);
  v42 = dispatch thunk of UsoEntity_common_Group.name.getter();
  LOBYTE(v40) = specialized Optional<A>.isNilOrEmpty.getter(v42, v43);

  if ((v40 & 1) == 0 || (v44 = dispatch thunk of UsoEntity_common_Group.members.getter()) == 0)
  {
    if (one-time initialization token for siriPhone != -1)
    {
LABEL_37:
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v47 = type metadata accessor for Logger();
    __swift_project_value_buffer(v47, static Logger.siriPhone);
    v48 = Logger.logObject.getter();
    static os_log_type_t.debug.getter();
    v49 = OUTLINED_FUNCTION_28_3();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_92_7(v51);
      OUTLINED_FUNCTION_40_3();
      _os_log_impl(v52, v53, v54, v55, v29, 2u);
      OUTLINED_FUNCTION_8();
    }

    v56 = v91[4];
    __swift_project_boxed_opaque_existential_1(v91, v91[3]);
    v57 = OUTLINED_FUNCTION_40_0();
    v58(v57, v56);
    outlined init with copy of SignalProviding(v98, v97);
    outlined init with copy of SignalProviding(v99, &v95);
    v59 = swift_allocObject();
    outlined init with take of SPHConversation(v97, v59 + 16);
    outlined init with take of SPHConversation(&v95, v59 + 56);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay27PhoneCallFlowDelegatePlugin8SmsGroup_pGMd, &_sSay27PhoneCallFlowDelegatePlugin8SmsGroup_pGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo11INCallGroupCGSgMd, &_sSaySo11INCallGroupCGSgMR);
    Transformer.init(transform:)();
    __swift_destroy_boxed_opaque_existential_1(v98);
    v60 = Transformer.transform.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin8SmsGroup_pGMd, &_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin8SmsGroup_pGMR);
    OUTLINED_FUNCTION_106();
    v61 = swift_allocObject();
    *(v61 + 16) = xmmword_424FD0;
    *(v61 + 56) = type metadata accessor for UsoEntity_common_Group();
    *(v61 + 64) = &protocol witness table for UsoEntity_common_Group;
    *(v61 + 32) = v33;
    v98[0] = v61;

    v60(v97, v98);

    v72 = OUTLINED_FUNCTION_23_40();
    v73(v72, v34);
    goto LABEL_34;
  }

  v45 = v44;
  v86 = v29;
  v87 = v24;
  v98[0] = _swiftEmptyArrayStorage;
  v46 = specialized Array.count.getter(v44);
  v34 = 0;
  v29 = (v45 & 0xC000000000000001);
  v33 = v45 & 0xFFFFFFFFFFFFFF8;
  v92 = _swiftEmptyArrayStorage;
  while (v46 != v34)
  {
    if (v29)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v34 >= *(&dword_10 + (v45 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_36;
      }
    }

    v24 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    dispatch thunk of CodeGenListEntry.entry.getter();

    ++v34;
    if (*&v97[0])
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*(&dword_10 + (v98[0] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v98[0] & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v92 = v98[0];
      v34 = v24;
    }
  }

  v62 = OUTLINED_FUNCTION_140_3(&a17);
  v63 = specialized Array.count.getter(v62);
  if (!v63)
  {

    v66 = _swiftEmptyArrayStorage;
LABEL_29:
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v74 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v74, static Logger.siriPhone);
    v75 = Logger.logObject.getter();
    static os_log_type_t.debug.getter();
    v76 = OUTLINED_FUNCTION_28_3();
    if (os_log_type_enabled(v76, v77))
    {
      v78 = OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_103(v78);
      OUTLINED_FUNCTION_21_12();
      _os_log_impl(v79, v80, v81, v82, v83, 2u);
      OUTLINED_FUNCTION_10_76();
    }

    _s27PhoneCallFlowDelegatePlugin17ContactResolutionC07resolveF7Queries07contactI013siriKitIntent3app02nlM013sharedGlobalsSaySo8INPersonCGSay13SiriInference0F5QueryVG_AA013NCRResolvableM0_p0s3AppG00W0CSgAA0aB8NLIntent_pAA06SharedQ9Providing_ptFZTf4nennnn_nSo07INStartbM0C_Tt4g5Tm(v66, v89, v90, v86, v91, v87, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, *(&v95 + 1), v96);
    OUTLINED_FUNCTION_5();

LABEL_34:
    OUTLINED_FUNCTION_161_1(v99);
    OUTLINED_FUNCTION_65();
    return;
  }

  v64 = v63;
  v98[0] = _swiftEmptyArrayStorage;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v63 & ~(v63 >> 63), 0);
  if ((v64 & 0x8000000000000000) == 0)
  {
    v65 = 0;
    v66 = v98[0];
    v67 = v24 & 0xC000000000000001;
    do
    {
      if (v67)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
      }

      UsoEntity_common_Agent.toContactQuery()();

      v98[0] = v66;
      v68 = v66[2];
      if (v68 >= v66[3] >> 1)
      {
        OUTLINED_FUNCTION_142_2();
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v69, v70, v71);
        v66 = v98[0];
      }

      ++v65;
      v66[2] = v68 + 1;
      (*(v37 + 32))(v66 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v68, v88, v93);
    }

    while (v64 != v65);

    goto LABEL_29;
  }

  __break(1u);
}

void *_s27PhoneCallFlowDelegatePlugin33ReferenceContactResolutionWrapperO20runCombinedSRRandCRR33_6E03C60D186988DA16A96BF8932754FFLL13siriKitIntent3app02nlW013sharedGlobals20contactGroupResolverAC20SRRResolutionResultsAELLVAA013NCRResolvableW0_p_07SiriAppH03AppCAA0aB8NLIntent_pAA22SharedGlobalsProviding_pAA0G14GroupResolving_ptFZTf4ennnnn_nSo012INStartVideobW0C_Tt4g5Tf4nnnne_n13SiriInference0G13GroupResolverV_Tg5(uint64_t a1, char *a2, void *a3, void *a4)
{
  v210 = a4;
  v204 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s32SiriReferenceResolutionDataModel11RRCandidateVSgMd, &_s32SiriReferenceResolutionDataModel11RRCandidateVSgMR);
  __chkstk_darwin(v6 - 8);
  v184 = &v181 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v189 = (&v181 - v9);
  v203 = type metadata accessor for RREntity();
  v185 = *(v203 - 8);
  __chkstk_darwin(v203);
  v202 = &v181 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v182 = &v181 - v12;
  __chkstk_darwin(v13);
  v183 = &v181 - v14;
  __chkstk_darwin(v15);
  v186 = &v181 - v16;
  __chkstk_darwin(v17);
  v187 = &v181 - v18;
  v209 = type metadata accessor for RRCandidate();
  v207 = *(v209 - 8);
  __chkstk_darwin(v209);
  v201 = &v181 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v188 = &v181 - v21;
  __chkstk_darwin(v22);
  v197 = &v181 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s32SiriReferenceResolutionDataModel8RRResultOSgMd, &_s32SiriReferenceResolutionDataModel8RRResultOSgMR);
  __chkstk_darwin(v24 - 8);
  v208 = &v181 - v25;
  v193 = type metadata accessor for RRResult();
  v192 = *(v193 - 8);
  __chkstk_darwin(v193);
  v194 = &v181 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v190 = (&v181 - v28);
  __chkstk_darwin(v29);
  v191 = &v181 - v30;
  v31 = type metadata accessor for MatchedResultsSetting();
  v32 = *(v31 - 8);
  __chkstk_darwin(v31);
  v34 = &v181 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v37 = &v181 - v36;
  v38 = type metadata accessor for ContactGroupResolver();
  v39 = __chkstk_darwin(v38);
  v195 = v41;
  v42 = *(v41 + 16);
  v198 = &v181 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v196 = v43;
  v42(v39);
  v44 = a3[3];
  v45 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v44);
  v46 = (*(v45 + 144))(v44, v45);
  v212 = v46;
  v199 = v32;
  v200 = v31;
  v47 = *(v32 + 104);
  v206 = v37;
  v47(v37, enum case for MatchedResultsSetting.defaultMatching(_:), v31);
  v48 = a3[3];
  v205 = a3;
  __swift_project_boxed_opaque_existential_1(a3, v48);
  if (PhoneCallNLIntent.hasOnlyCallVerb()())
  {
    v49 = a2;
    if (App.isFirstParty()() && static UsoUtils.buildDummyReferenceEntity()())
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*(&dword_10 + (v212 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v212 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v46 = v212;
      v50 = v200;
      v51 = v206;
      (*(v199 + 8))(v206, v200);
      v47(v51, enum case for MatchedResultsSetting.extremelySalientResultsOnly(_:), v50);
    }
  }

  else
  {
    v49 = a2;
  }

  if (!specialized Array.count.getter(v46))
  {
    v67 = v206;
    if (one-time initialization token for siriPhone != -1)
    {
      goto LABEL_93;
    }

    goto LABEL_16;
  }

  v52 = v206;
  if (one-time initialization token for siriPhone != -1)
  {
LABEL_88:
    swift_once();
  }

  v53 = type metadata accessor for Logger();
  v54 = __swift_project_value_buffer(v53, static Logger.siriPhone);
  v55 = Logger.logObject.getter();
  v56 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v211 = v58;
    *v57 = 136315138;
    swift_beginAccess();
    (*(v199 + 16))(v34, v52, v200);
    v59 = String.init<A>(describing:)();
    v61 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, v60, &v211);

    *(v57 + 4) = v61;
    _os_log_impl(&dword_0, v55, v56, "#ReferenceContactResolutionWrapper Querying SRR with match setting: %s", v57, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v58);
  }

  v62 = v208;
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INStartCallIntent, INStartCallIntent_ptr);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v64 = outlined bridged method (pb) of @objc static INIntent.typeName()(ObjCClassFromMetadata);
  __chkstk_darwin(v64);
  *(&v181 - 4) = &v212;
  *(&v181 - 3) = v52;
  *(&v181 - 2) = v210;
  static SiriKitEventSender.current.getter();
  v65 = _s27PhoneCallFlowDelegatePlugin0A21SelfPerformanceLoggerC8signpost19domainExecutionType04taskL018siriKitEventSender_xSo020FLOWSchemaFLOWDomainkL0V_SS04SirioC00toP7Sending_pxyXEtlFZSay0T28ReferenceResolutionDataModel8RRResultOG_Tt4g5();

  __swift_destroy_boxed_opaque_existential_1(&v211);
  specialized Collection.first.getter(v65);

  v66 = v193;
  if (__swift_getEnumTagSinglePayload(v62, 1, v193) == 1)
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v62, &_s32SiriReferenceResolutionDataModel8RRResultOSgMd, &_s32SiriReferenceResolutionDataModel8RRResultOSgMR);
    v49 = v198;
    goto LABEL_14;
  }

  v208 = v54;
  v75 = v192;
  v76 = v191;
  (*(v192 + 32))(v191, v62, v66);
  v77 = *(v75 + 16);
  v78 = v190;
  v77(v190, v76, v66);
  v79 = (*(v75 + 88))(v78, v66);
  if (v79 == enum case for RRResult.foundMatch(_:))
  {
    v194 = v49;
    (*(v75 + 96))(v78, v66);
    v80 = v207;
    v81 = v197;
    v82 = v209;
    (*(v207 + 32))(v197, v78, v209);
    v83 = *(v80 + 16);
    v84 = v188;
    v83(v188, v81, v82);
    v85 = Logger.logObject.getter();
    v86 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v85, v86))
    {
      v87 = v84;
      v88 = swift_slowAlloc();
      v89 = swift_slowAlloc();
      v211 = v89;
      *v88 = 136315138;
      lazy protocol witness table accessor for type StartVideoCallRCHFlowDelegate and conformance StartVideoCallRCHFlowDelegate(&lazy protocol witness table cache variable for type RRCandidate and conformance RRCandidate, &type metadata accessor for RRCandidate);
      v90 = dispatch thunk of CustomStringConvertible.description.getter();
      v92 = v91;
      v93 = v87;
      v94 = *(v80 + 8);
      v94(v93, v209);
      v95 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v90, v92, &v211);
      v66 = v193;

      *(v88 + 4) = v95;
      _os_log_impl(&dword_0, v85, v86, "#ReferenceContactResolutionWrapper .foundMatch %s", v88, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v89);
      v82 = v209;
    }

    else
    {

      v94 = *(v80 + 8);
      v94(v84, v82);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy32SiriReferenceResolutionDataModel11RRCandidateVGMd, &_ss23_ContiguousArrayStorageCy32SiriReferenceResolutionDataModel11RRCandidateVGMR);
    v129 = (*(v80 + 80) + 32) & ~*(v80 + 80);
    v130 = swift_allocObject();
    *(v130 + 16) = xmmword_424FD0;
    v83((v130 + v129), v197, v82);
    v131 = v189;
    specialized Collection.first.getter(v130);

    if (__swift_getEnumTagSinglePayload(v131, 1, v82) == 1)
    {
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v131, &_s32SiriReferenceResolutionDataModel11RRCandidateVSgMd, &_s32SiriReferenceResolutionDataModel11RRCandidateVSgMR);
      v132 = Logger.logObject.getter();
      v133 = static os_log_type_t.debug.getter();
      v134 = os_log_type_enabled(v132, v133);
      v135 = v206;
      v136 = v192;
      v137 = v191;
      if (v134)
      {
        v138 = swift_slowAlloc();
        *v138 = 0;
        _os_log_impl(&dword_0, v132, v133, "#ReferenceContactResolutionWrapper no entity resolved for rrCandidate", v138, 2u);
      }

      v73 = _swiftEmptyArrayStorage;
      v49 = v198;
      v139 = v209;
    }

    else
    {
      v139 = v82;
      v149 = v186;
      RRCandidate.entity.getter();
      v94(v131, v82);
      v150 = v185;
      v151 = v187;
      v152 = v203;
      (*(v185 + 32))(v187, v149, v203);
      v153 = v198;
      v73 = _s27PhoneCallFlowDelegatePlugin33ReferenceContactResolutionWrapperO15resolveRREntity33_6E03C60D186988DA16A96BF8932754FFLL8rrEntity13siriKitIntent3app02nlW013sharedGlobals20contactGroupResolverAC20SRRResolutionResultsAELLV04SirifH9DataModel0K0V_AA013NCRResolvableW0_p07SiriAppH03AppCSgAA0aB8NLIntent_pAA22SharedGlobalsProviding_pAA0G14GroupResolving_ptFZTf4nennnnn_nSo012INStartVideobW0C_Tt5g5Tf4nnnnne_n13SiriInference0G13GroupResolverV_Tg5(v151, v204, v194, v205, v210, v198);
      (*(v150 + 8))(v151, v152);
      v49 = v153;
      v135 = v206;
      v136 = v192;
      v137 = v191;
    }

    v94(v197, v139);
    (*(v136 + 8))(v137, v66);
    (*(v199 + 8))(v135, v200);
    goto LABEL_20;
  }

  if (v79 != enum case for RRResult.needsDisambiguation(_:))
  {
    if (v79 == enum case for RRResult.foundMatchPlural(_:))
    {
      v194 = v49;
      (*(v192 + 96))(v78, v66);
      v140 = *v78;

      v141 = Logger.logObject.getter();
      v142 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v141, v142))
      {
        v143 = swift_slowAlloc();
        v144 = swift_slowAlloc();
        v211 = v144;
        *v143 = 136315138;
        v145 = v209;
        v146 = Array.description.getter();
        v148 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v146, v147, &v211);
        v66 = v193;

        *(v143 + 4) = v148;
        _os_log_impl(&dword_0, v141, v142, "#ReferenceContactResolutionWrapper .foundMatchPlural %s", v143, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v144);
      }

      else
      {

        v145 = v209;
      }

      v160 = v207;
      v161 = v184;
      specialized Collection.first.getter(v140);

      if (__swift_getEnumTagSinglePayload(v161, 1, v145) == 1)
      {
        outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v161, &_s32SiriReferenceResolutionDataModel11RRCandidateVSgMd, &_s32SiriReferenceResolutionDataModel11RRCandidateVSgMR);
        v162 = Logger.logObject.getter();
        v163 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v162, v163))
        {
          v164 = swift_slowAlloc();
          *v164 = 0;
          _os_log_impl(&dword_0, v162, v163, "#ReferenceContactResolutionWrapper no entity resolved for rrCandidate", v164, 2u);
        }

        (*(v192 + 8))(v191, v66);
        (*(v199 + 8))(v52, v200);
        v73 = _swiftEmptyArrayStorage;
        v49 = v198;
      }

      else
      {
        v177 = v182;
        RRCandidate.entity.getter();
        (*(v160 + 8))(v161, v145);
        v178 = v185;
        v179 = v183;
        v180 = v203;
        (*(v185 + 32))(v183, v177, v203);
        v49 = v198;
        v73 = _s27PhoneCallFlowDelegatePlugin33ReferenceContactResolutionWrapperO15resolveRREntity33_6E03C60D186988DA16A96BF8932754FFLL8rrEntity13siriKitIntent3app02nlW013sharedGlobals20contactGroupResolverAC20SRRResolutionResultsAELLV04SirifH9DataModel0K0V_AA013NCRResolvableW0_p07SiriAppH03AppCSgAA0aB8NLIntent_pAA22SharedGlobalsProviding_pAA0G14GroupResolving_ptFZTf4nennnnn_nSo012INStartVideobW0C_Tt5g5Tf4nnnnne_n13SiriInference0G13GroupResolverV_Tg5(v179, v204, v194, v205, v210, v198);
        (*(v178 + 8))(v179, v180);
        (*(v192 + 8))(v191, v66);
        (*(v199 + 8))(v52, v200);
      }

      goto LABEL_20;
    }

    if (v79 == enum case for RRResult.noMatch(_:))
    {
      v154 = Logger.logObject.getter();
      v155 = static os_log_type_t.debug.getter();
      v156 = os_log_type_enabled(v154, v155);
      v49 = v198;
      if (v156)
      {
        v157 = swift_slowAlloc();
        *v157 = 0;
        _os_log_impl(&dword_0, v154, v155, "#ReferenceContactResolutionWrapper found a .nomatch", v157, 2u);
      }

      (*(v192 + 8))(v191, v66);
    }

    else
    {
      v165 = v194;
      v166 = v191;
      v77(v194, v191, v66);
      v167 = Logger.logObject.getter();
      v168 = v66;
      v169 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v167, v169))
      {
        v170 = swift_slowAlloc();
        v171 = swift_slowAlloc();
        v211 = v171;
        *v170 = 136315138;
        lazy protocol witness table accessor for type StartVideoCallRCHFlowDelegate and conformance StartVideoCallRCHFlowDelegate(&lazy protocol witness table cache variable for type RRResult and conformance RRResult, &type metadata accessor for RRResult);
        v172 = dispatch thunk of CustomStringConvertible.description.getter();
        v174 = v173;
        v175 = *(v192 + 8);
        v175(v165, v168);
        v176 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v172, v174, &v211);

        *(v170 + 4) = v176;
        _os_log_impl(&dword_0, v167, v169, "#ReferenceContactResolutionWrapper dropping result of type %s!", v170, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v171);

        v175(v191, v168);
        v78 = v190;
      }

      else
      {

        v175 = *(v192 + 8);
        v175(v165, v168);
        v175(v166, v168);
      }

      v175(v78, v168);
      v49 = v198;
      v52 = v206;
    }

LABEL_14:
    (*(v199 + 8))(v52, v200);
    goto LABEL_19;
  }

  (*(v192 + 96))(v78, v66);
  v96 = *v78;

  v97 = Logger.logObject.getter();
  v98 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v97, v98))
  {
    v99 = swift_slowAlloc();
    v100 = swift_slowAlloc();
    v211 = v100;
    *v99 = 136315138;
    v101 = Array.description.getter();
    v103 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v101, v102, &v211);

    *(v99 + 4) = v103;
    v66 = v193;
    _os_log_impl(&dword_0, v97, v98, "#ReferenceContactResolutionWrapper found a .needsDisambiguation match %s", v99, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v100);
  }

  v190 = *(v96 + 16);
  if (!v190)
  {

    v105 = _swiftEmptyArrayStorage;
    v49 = v198;
LABEL_75:
    static ReferenceContactResolutionWrapper.dedupePersons(persons:sharedGlobals:)(v105, v210);

    static ReferenceContactResolutionWrapper.skeletonINPerson(persons:)();
    v159 = v158;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v73 = swift_allocObject();
    *(v73 + 1) = xmmword_426260;
    v73[4] = v159;
    (*(v192 + 8))(v191, v66);
    (*(v199 + 8))(v52, v200);
    goto LABEL_20;
  }

  v194 = v49;
  v34 = 0;
  v189 = *(v207 + 16);
  v104 = (*(v207 + 80) + 32) & ~*(v207 + 80);
  v181 = v96;
  v188 = (v96 + v104);
  v105 = _swiftEmptyArrayStorage;
  v187 = (v207 + 8);
  v186 = *(v207 + 72);
  v185 += 8;
  v49 = v198;
  v106 = v209;
  v207 += 16;
  while (1)
  {
    v107 = v201;
    v189(v201, &v188[v186 * v34], v106);
    v108 = v202;
    RRCandidate.entity.getter();
    (*v187)(v107, v106);
    v109 = _s27PhoneCallFlowDelegatePlugin33ReferenceContactResolutionWrapperO15resolveRREntity33_6E03C60D186988DA16A96BF8932754FFLL8rrEntity13siriKitIntent3app02nlW013sharedGlobals20contactGroupResolverAC20SRRResolutionResultsAELLV04SirifH9DataModel0K0V_AA013NCRResolvableW0_p07SiriAppH03AppCSgAA0aB8NLIntent_pAA22SharedGlobalsProviding_pAA0G14GroupResolving_ptFZTf4nennnnn_nSo012INStartVideobW0C_Tt5g5Tf4nnnnne_n13SiriInference0G13GroupResolverV_Tg5(v108, v204, v194, v205, v210, v49);
    (*v185)(v108, v203);

    if (v109 >> 62)
    {
      v67 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v67 = *(&dword_10 + (v109 & 0xFFFFFFFFFFFFFF8));
    }

    v110 = v105 >> 62;
    if (v105 >> 62)
    {
      v111 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v111 = *(&dword_10 + (v105 & 0xFFFFFFFFFFFFFF8));
    }

    v112 = v111 + v67;
    if (__OFADD__(v111, v67))
    {
      __break(1u);
LABEL_87:
      __break(1u);
      goto LABEL_88;
    }

    if (swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (!v110)
      {
        v113 = v105 & 0xFFFFFFFFFFFFFF8;
        if (v112 <= *(&dword_18 + (v105 & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          goto LABEL_41;
        }

        goto LABEL_40;
      }

LABEL_39:
      _CocoaArrayWrapper.endIndex.getter();
      goto LABEL_40;
    }

    if (v110)
    {
      goto LABEL_39;
    }

LABEL_40:
    v105 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v113 = v105 & 0xFFFFFFFFFFFFFF8;
LABEL_41:
    v208 = v105;
    v114 = *(v113 + 16);
    v115 = (*(v113 + 24) >> 1) - v114;
    v116 = v113 + 8 * v114;
    v197 = v113;
    if (v109 >> 62)
    {
      break;
    }

    v117 = *(&dword_10 + (v109 & 0xFFFFFFFFFFFFFF8));
    if (v117)
    {
      if (v115 < v117)
      {
        goto LABEL_91;
      }

      type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
      swift_arrayInitWithCopy();
      goto LABEL_51;
    }

LABEL_55:

    v105 = v208;
    v106 = v209;
    if (v67 > 0)
    {
      goto LABEL_87;
    }

LABEL_56:
    if (++v34 == v190)
    {

      v66 = v193;
      goto LABEL_75;
    }
  }

  v118 = _CocoaArrayWrapper.endIndex.getter();
  if (!v118)
  {
    goto LABEL_55;
  }

  v119 = v118;
  v120 = _CocoaArrayWrapper.endIndex.getter();
  if (v115 < v120)
  {
    goto LABEL_90;
  }

  if (v119 < 1)
  {
    goto LABEL_92;
  }

  v182 = v120;
  v183 = v67;
  v184 = v34;
  v121 = v116 + 32;
  lazy protocol witness table accessor for type [INPerson] and conformance [A]();
  for (i = 0; i != v119; ++i)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8INPersonCGMd, &_sSaySo8INPersonCGMR);
    v123 = specialized protocol witness for Collection.subscript.read in conformance [A](&v211, i, v109);
    v125 = *v124;
    v123(&v211, 0);
    *(v121 + 8 * i) = v125;
  }

  v49 = v198;
  v52 = v206;
  v34 = v184;
  v67 = v183;
  v117 = v182;
LABEL_51:

  v105 = v208;
  v106 = v209;
  if (v117 < v67)
  {
    goto LABEL_87;
  }

  if (v117 < 1)
  {
    goto LABEL_56;
  }

  v126 = *(v197 + 2);
  v127 = __OFADD__(v126, v117);
  v128 = v126 + v117;
  if (!v127)
  {
    *(v197 + 2) = v128;
    goto LABEL_56;
  }

  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  swift_once();
LABEL_16:
  v68 = type metadata accessor for Logger();
  __swift_project_value_buffer(v68, static Logger.siriPhone);
  v69 = Logger.logObject.getter();
  v70 = static os_log_type_t.debug.getter();
  v71 = os_log_type_enabled(v69, v70);
  v49 = v198;
  if (v71)
  {
    v72 = swift_slowAlloc();
    *v72 = 0;
    _os_log_impl(&dword_0, v69, v70, "#ReferenceContactResolutionWrapper - No references found", v72, 2u);
  }

  (*(v199 + 8))(v67, v200);
LABEL_19:
  v73 = _swiftEmptyArrayStorage;
LABEL_20:

  (*(v195 + 8))(v49, v196);
  return v73;
}

uint64_t _s27PhoneCallFlowDelegatePlugin33ReferenceContactResolutionWrapperO15resolveRREntity33_6E03C60D186988DA16A96BF8932754FFLL8rrEntity13siriKitIntent3app02nlW013sharedGlobals20contactGroupResolverAC20SRRResolutionResultsAELLV04SirifH9DataModel0K0V_AA013NCRResolvableW0_p07SiriAppH03AppCSgAA0aB8NLIntent_pAA22SharedGlobalsProviding_pAA0G14GroupResolving_ptFZTf4nennnnn_nSo012INStartVideobW0C_Tt5g5Tf4nnnnne_n13SiriInference0G13GroupResolverV_Tg5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v52 = a4;
  v53 = a5;
  v50 = a2;
  v51 = a3;
  v8 = type metadata accessor for ContactGroupResolver();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, a6, v8, v10);
  static Signpost.begin(_:)();
  v54 = v13;
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
  v14 = RREntity.convertData<A>(to:)();
  Signpost.OpenSignpost.end()();
  if (v14)
  {
    v15 = one-time initialization token for siriPhone;
    v16 = v14;
    if (v15 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static Logger.siriPhone);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_0, v18, v19, "#ReferenceContactResolutionWrapper resolved to an INPerson", v20, 2u);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v21 = swift_allocObject();
    v22 = v21;
    *(v21 + 16) = xmmword_426260;
    *(v21 + 32) = v16;
    goto LABEL_14;
  }

  RREntity.usoEntity.getter();
  type metadata accessor for UsoEntity_common_Person();
  static UsoEntity_CodeGenConverter.convertAs<A>(entity:asType:)();

  if (v55)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    __swift_project_value_buffer(v23, static Logger.siriPhone);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_0, v24, v25, "#ReferenceContactResolutionWrapper resolved to a common_Person", v26, 2u);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy13SiriInference12ContactQueryVGMd, &_ss23_ContiguousArrayStorageCy13SiriInference12ContactQueryVGMR);
    type metadata accessor for ContactQuery();
    *(swift_allocObject() + 16) = xmmword_424FD0;
    UsoEntity_common_Person.toContactQuery()();
LABEL_13:
    _s27PhoneCallFlowDelegatePlugin17ContactResolutionC07resolveF7Queries07contactI013siriKitIntent3app02nlM013sharedGlobalsSaySo8INPersonCGSay13SiriInference0F5QueryVG_AA013NCRResolvableM0_p0s3AppG00W0CSgAA0aB8NLIntent_pAA06SharedQ9Providing_ptFZTf4nennnn_nSo012INStartVideobM0C_Tt4g5();
    v22 = v27;

    goto LABEL_14;
  }

  RREntity.usoEntity.getter();
  type metadata accessor for UsoEntity_common_Group();
  static UsoEntity_CodeGenConverter.convertAs<A>(entity:asType:)();

  v31 = v55;
  if (v55)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    __swift_project_value_buffer(v32, static Logger.siriPhone);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_0, v33, v34, "#ReferenceContactResolutionWrapper resolved to a common_Group", v35, 2u);
    }

    _s27PhoneCallFlowDelegatePlugin33ReferenceContactResolutionWrapperO18resolveCommonGroup33_6E03C60D186988DA16A96BF8932754FFLL5group13siriKitIntent3app02nlW013sharedGlobals07contactL8ResolverAC20SRRResolutionResultsAELLV12SiriOntology017UsoEntity_common_L0C_AA013NCRResolvableW0_p07SiriAppH03AppCSgAA0aB8NLIntent_pAA22SharedGlobalsProviding_pAA0gL9Resolving_ptFZTf4nennnnn_nSo012INStartVideobW0C_Tt5g5Tf4nnnnne_n13SiriInference0gL8ResolverV_Tg5(v31, v50, v51, v52, v53, v12);
    v22 = v36;
  }

  else
  {
    RREntity.usoEntity.getter();
    type metadata accessor for UsoEntity_common_Agent();
    static UsoEntity_CodeGenConverter.convertAs<A>(entity:asType:)();

    if (v55)
    {
      if (one-time initialization token for siriPhone != -1)
      {
        swift_once();
      }

      v37 = type metadata accessor for Logger();
      __swift_project_value_buffer(v37, static Logger.siriPhone);
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        *v40 = 0;
        _os_log_impl(&dword_0, v38, v39, "#ReferenceContactResolutionWrapper resolved to a common_Agent", v40, 2u);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy13SiriInference12ContactQueryVGMd, &_ss23_ContiguousArrayStorageCy13SiriInference12ContactQueryVGMR);
      type metadata accessor for ContactQuery();
      *(swift_allocObject() + 16) = xmmword_424FD0;
      UsoEntity_common_Agent.toContactQuery()();
      goto LABEL_13;
    }

    RREntity.usoEntity.getter();
    type metadata accessor for UsoEntity_common_App();
    static UsoEntity_CodeGenConverter.convertAs<A>(entity:asType:)();

    if (v55)
    {
      if (one-time initialization token for siriPhone != -1)
      {
        swift_once();
      }

      v41 = type metadata accessor for Logger();
      __swift_project_value_buffer(v41, static Logger.siriPhone);
      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        *v44 = 0;
        _os_log_impl(&dword_0, v42, v43, "#ReferenceContactResolutionWrapper resolved to a common_app - Not convertible to INPerson", v44, 2u);
      }
    }

    else
    {
      if (one-time initialization token for siriPhone != -1)
      {
        swift_once();
      }

      v45 = type metadata accessor for Logger();
      __swift_project_value_buffer(v45, static Logger.siriPhone);
      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        *v48 = 0;
        _os_log_impl(&dword_0, v46, v47, "#ReferenceContactResolutionWrapper resolved entity was not recognized as a person or group", v48, 2u);
      }
    }

    v22 = _swiftEmptyArrayStorage;
  }

LABEL_14:
  __chkstk_darwin(v21);
  *(&v49 - 2) = a1;
  specialized Sequence.compactMap<A>(_:)(partial apply for closure #1 in static ReferenceContactResolutionWrapper.resolveRREntity(rrEntity:siriKitIntent:app:nlIntent:sharedGlobals:contactGroupResolver:), (&v49 - 4), v22);
  v29 = v28;

  (*(v9 + 8))(v12, v8);
  return v29;
}

void _s27PhoneCallFlowDelegatePlugin33ReferenceContactResolutionWrapperO18resolveCommonGroup33_6E03C60D186988DA16A96BF8932754FFLL5group13siriKitIntent3app02nlW013sharedGlobals07contactL8ResolverAC20SRRResolutionResultsAELLV12SiriOntology017UsoEntity_common_L0C_AA013NCRResolvableW0_p07SiriAppH03AppCSgAA0aB8NLIntent_pAA22SharedGlobalsProviding_pAA0gL9Resolving_ptFZTf4nennnnn_nSo012INStartVideobW0C_Tt5g5Tf4nnnnne_n13SiriInference0gL8ResolverV_Tg5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v43[4] = a4;
  v43[3] = a3;
  v43[2] = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVySay27PhoneCallFlowDelegatePlugin8SmsGroup_pGSaySo06INCallJ0CGSgGMd, &_s13SiriUtilities11TransformerVySay27PhoneCallFlowDelegatePlugin8SmsGroup_pGSaySo06INCallJ0CGSgGMR);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v43 - v11;
  v46 = type metadata accessor for ContactQuery();
  v13 = *(v46 - 8);
  __chkstk_darwin(v46);
  v45 = v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ContactGroupResolver();
  v50[3] = v15;
  v50[4] = &protocol witness table for ContactGroupResolver;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v50);
  (*(*(v15 - 8) + 16))(boxed_opaque_existential_1, a6, v15);
  v17 = dispatch thunk of UsoEntity_common_Group.name.getter();
  LOBYTE(a6) = specialized Optional<A>.isNilOrEmpty.getter(v17, v18);

  if ((a6 & 1) == 0 || (v19 = dispatch thunk of UsoEntity_common_Group.members.getter()) == 0)
  {
    v13 = v10;
    if (one-time initialization token for siriPhone != -1)
    {
LABEL_35:
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static Logger.siriPhone);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_0, v23, v24, "#ReferenceContactResolutionWrapper resolved to a named common_Group", v25, 2u);
    }

    v26 = a5[3];
    v27 = a5[4];
    __swift_project_boxed_opaque_existential_1(a5, v26);
    (*(v27 + 8))(v49, v26, v27);
    outlined init with copy of SignalProviding(v49, v48);
    outlined init with copy of SignalProviding(v50, v47);
    v28 = swift_allocObject();
    outlined init with take of SPHConversation(v48, v28 + 16);
    outlined init with take of SPHConversation(v47, v28 + 56);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay27PhoneCallFlowDelegatePlugin8SmsGroup_pGMd, &_sSay27PhoneCallFlowDelegatePlugin8SmsGroup_pGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo11INCallGroupCGSgMd, &_sSaySo11INCallGroupCGSgMR);
    Transformer.init(transform:)();
    __swift_destroy_boxed_opaque_existential_1(v49);
    v29 = Transformer.transform.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin8SmsGroup_pGMd, &_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin8SmsGroup_pGMR);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_424FD0;
    *(v30 + 56) = type metadata accessor for UsoEntity_common_Group();
    *(v30 + 64) = &protocol witness table for UsoEntity_common_Group;
    *(v30 + 32) = a1;
    v49[0] = v30;

    v29(v48, v49);

    (*(v13 + 8))(v12, v9);
    goto LABEL_32;
  }

  v20 = v19;
  v43[1] = a5;
  v49[0] = _swiftEmptyArrayStorage;
  v9 = specialized Array.count.getter(v19);
  v12 = 0;
  a5 = (v20 & 0xC000000000000001);
  a1 = v20 & 0xFFFFFFFFFFFFFF8;
  v44 = _swiftEmptyArrayStorage;
  while (v9 != v12)
  {
    if (a5)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v12 >= *(&dword_10 + (v20 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_34;
      }
    }

    v21 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    dispatch thunk of CodeGenListEntry.entry.getter();

    ++v12;
    if (*&v48[0])
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*(&dword_10 + (v49[0] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v49[0] & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v44 = v49[0];
      v12 = v21;
    }
  }

  v31 = v44;
  v32 = specialized Array.count.getter(v44);
  if (!v32)
  {
LABEL_27:

    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    __swift_project_value_buffer(v39, static Logger.siriPhone);
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_0, v40, v41, "#ReferenceContactResolutionWrapper resolved to an unnamed common_Group", v42, 2u);
    }

    _s27PhoneCallFlowDelegatePlugin17ContactResolutionC07resolveF7Queries07contactI013siriKitIntent3app02nlM013sharedGlobalsSaySo8INPersonCGSay13SiriInference0F5QueryVG_AA013NCRResolvableM0_p0s3AppG00W0CSgAA0aB8NLIntent_pAA06SharedQ9Providing_ptFZTf4nennnn_nSo012INStartVideobM0C_Tt4g5();

LABEL_32:
    __swift_destroy_boxed_opaque_existential_1(v50);
    return;
  }

  v33 = v32;
  v49[0] = _swiftEmptyArrayStorage;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v32 & ~(v32 >> 63), 0);
  if ((v33 & 0x8000000000000000) == 0)
  {
    v34 = 0;
    v35 = v49[0];
    v36 = v45;
    do
    {
      if ((v31 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
      }

      UsoEntity_common_Agent.toContactQuery()();

      v49[0] = v35;
      v38 = *(v35 + 16);
      v37 = *(v35 + 24);
      if (v38 >= v37 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v37 > 1, v38 + 1, 1);
        v35 = v49[0];
      }

      ++v34;
      *(v35 + 16) = v38 + 1;
      (*(v13 + 32))(v35 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v38, v36, v46);
    }

    while (v33 != v34);
    goto LABEL_27;
  }

  __break(1u);
}

uint64_t _s27PhoneCallFlowDelegatePlugin0aB10NLv3IntentVWOhTm_0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_23_1();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t lazy protocol witness table accessor for type StartVideoCallRCHFlowDelegate and conformance StartVideoCallRCHFlowDelegate(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroyTm_14()
{

  OUTLINED_FUNCTION_161_1((v0 + 32));
  OUTLINED_FUNCTION_106();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t objectdestroy_4Tm()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = OUTLINED_FUNCTION_161_1((v0 + 56));

  return _swift_deallocObject(v1, 96, 7);
}

uint64_t objectdestroy_45Tm()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  OUTLINED_FUNCTION_70();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t OUTLINED_FUNCTION_55_25()
{
  v1 = v0[3];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return v1;
}

id OUTLINED_FUNCTION_65_20(uint64_t a1)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = v2;
  outlined init with take of SPHConversation((v3 - 104), a1 + 32);

  return v2;
}

void *OUTLINED_FUNCTION_73_11()
{
  v2 = v0[3];

  return __swift_project_boxed_opaque_existential_1(v0, v2);
}

BOOL OUTLINED_FUNCTION_74_8(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void OUTLINED_FUNCTION_82_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  v27 = *(v25 - 520);

  _s27PhoneCallFlowDelegatePlugin17ContactResolutionC19updateSiriKitIntent04sirijK014contactQueries012hasEmergencyF03app6locale02nlK013sharedGlobals18multicardinalIndex0lJ11EventSender09emergencyfG0yAA013NCRResolvableK0_p_Say0I9Inference0F5QueryVGSb0i3AppG03AppCSg10Foundation6LocaleVAA0aB8NLIntent_pAA06SharedU9Providing_pSiSg0ijC00ijX7Sending_pAA0pfG0CtFZTf4ennnnnnnnnn_nSo07INStartbK0C_Tt9g5Tf4nnnnnennnn_n(v21, v27, a3, v22, v24, a6, v23, 0, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21);
}

uint64_t OUTLINED_FUNCTION_94_9(uint64_t a1)
{

  return outlined init with take of SPHConversation((v1 - 208), a1 + 16);
}

uint64_t OUTLINED_FUNCTION_102_4()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_124_3()
{

  return specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
}

uint64_t OUTLINED_FUNCTION_125_4(float a1)
{
  *v2 = a1;
  *(v3 - 144) = v1;

  return swift_errorRetain();
}

uint64_t OUTLINED_FUNCTION_127_4@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 128) = a1;

  return specialized ContiguousArray.reserveCapacity(_:)();
}

uint64_t OUTLINED_FUNCTION_130_4()
{

  return outlined init with copy of SignalProviding(v0, v1 - 104);
}

uint64_t OUTLINED_FUNCTION_131_5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 - 256) = a1;

  return swift_slowAlloc();
}

BOOL OUTLINED_FUNCTION_132_3()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_152_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return Transformer.init(transform:)();
}

uint64_t OUTLINED_FUNCTION_153_0()
{

  return specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v0 & 0xC000000000000001) == 0, v0);
}

uint64_t OUTLINED_FUNCTION_154_0(void *a1, uint64_t a2)
{

  return specialized StartVideoCallRCHFlowDelegate.init(sharedGlobals:appResolved:biomeEventSender:)(a1, a2, v5, v2, v3, v4);
}

uint64_t OUTLINED_FUNCTION_155_0()
{

  return outlined init with copy of SignalProviding(v0, v1 - 208);
}

id OUTLINED_FUNCTION_158_1(void *a1)
{
  a1[2] = v2;
  a1[3] = v1;
  outlined init with take of SPHConversation((v4 - 120), (a1 + 4));
  a1[9] = v3;

  return v3;
}

uint64_t specialized INPersonContainingIntent.hasSiriMatches.getter(uint64_t (*a1)(uint64_t))
{
  result = a1(v1);
  if (result)
  {
    v3 = result;
    if (specialized Array.count.getter(result))
    {
      v4 = (v3 & 0xC000000000000001);
      specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v3 & 0xC000000000000001) == 0, v3);
      if ((v3 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v5 = *(v3 + 32);
      }

      OUTLINED_FUNCTION_40_0();

      v6 = [v3 & 0xC000000000000001 siriMatches];

      if (v6)
      {
        type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
        v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v8 = specialized Array.count.getter(v7);

        return v8 != 0;
      }
    }

    else
    {
    }

    return 0;
  }

  return result;
}

uint64_t specialized INPersonContainingIntent.isFirstContactRelatedOrMyself.getter(uint64_t (*a1)(uint64_t))
{
  v2 = a1(v1);
  if (!v2)
  {
    goto LABEL_7;
  }

  v3 = v2;
  if (!specialized Array.count.getter(v2))
  {

LABEL_7:
    v8 = 0;
    goto LABEL_8;
  }

  v4 = OUTLINED_FUNCTION_41_34();
  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v4, v5, v6);
  if ((v3 & 0xC000000000000001) != 0)
  {
    v7 = OUTLINED_FUNCTION_151();
  }

  else
  {
    v7 = *(v3 + 32);
  }

  v8 = v7;

LABEL_8:
  v9 = [v8 relationship];
  v10 = v9;
  v11 = v9 != 0;
  if (v9)
  {
  }

  if (v8)
  {
    v12 = v10 != 0;
    v13 = [v8 isMe];

    v11 = v12 | v13;
  }

  return v11 & 1;
}

void StartVideoCallTemplatingService.__allocating_init(sharedGlobals:catFamily:displayTextCats:phoneCallCommonCats:appInfoBuilder:)()
{
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_29_1();
  swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v0, *(v0 + 24));
  OUTLINED_FUNCTION_30_7();
  __chkstk_darwin(v1);
  OUTLINED_FUNCTION_4();
  v3 = OUTLINED_FUNCTION_28_4(v2);
  v4(v3);
  OUTLINED_FUNCTION_43_29();
  v5 = OUTLINED_FUNCTION_40_0();
  __swift_destroy_boxed_opaque_existential_1(v5);
  OUTLINED_FUNCTION_65();
}

uint64_t _s27PhoneCallFlowDelegatePlugin22ContactsSlotTemplatingV19isMissingMeCardCase6intentSbx_tFZSo05INAddB17ParticipantIntentC_So0obpQ8ResponseCTt0g5Tm(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t))
{
  v4 = a2();
  v5 = v4;
  if (!v4)
  {
    v10 = 0;
    v12 = 0;
LABEL_8:
    v8 = 0;
    goto LABEL_9;
  }

  v6 = specialized Array.count.getter(v4);
  if (!v6)
  {

    v10 = 0;
    v12 = 0;
    LODWORD(v5) = 0;
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_89_7(v6, (v5 & 0xC000000000000001) == 0);
  if ((v5 & 0xC000000000000001) != 0)
  {
    v7 = OUTLINED_FUNCTION_88_5();
  }

  else
  {
    v7 = *(v5 + 32);
  }

  v8 = v7;

  LODWORD(v5) = [v8 isMe];
  v9 = [v8 displayName];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

LABEL_9:
  v13 = specialized Optional<A>.isNilOrEmpty.getter(v10, v12);

  if (v8)
  {
    v14 = [v8 personHandle];
    v15 = v14;
    if (v14)
    {
      v16 = [v14 label];

      if (v16)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }
    }
  }

  v17 = OUTLINED_FUNCTION_69();
  v19 = specialized Optional<A>.isNilOrEmpty.getter(v17, v18);

  if (v5)
  {
    v20 = specialized INPersonContainingIntent.hasSiriMatches.getter(a3);

    v21 = (v20 ^ 1) & v13 & !v19;
  }

  else
  {

    v21 = 0;
  }

  return v21 & 1;
}

void specialized ContactsSlotTemplating.makeParameterPromptDialog(app:parameterName:intent:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t (*a21)(void *))
{
  OUTLINED_FUNCTION_66();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v31 = OUTLINED_FUNCTION_21(v30);
  __chkstk_darwin(v31);
  OUTLINED_FUNCTION_12_5();
  __chkstk_darwin(v32);
  v34 = &v78 - v33;
  __chkstk_darwin(v35);
  v37 = &v78 - v36;
  v38 = OUTLINED_FUNCTION_13_24();
  if ((_s27PhoneCallFlowDelegatePlugin22ContactsSlotTemplatingV19isMissingMeCardCase6intentSbx_tFZSo05INAddB17ParticipantIntentC_So0obpQ8ResponseCTt0g5Tm(v38, v39, v23) & 1) == 0)
  {
    v49 = *(v21 + 40);
    type metadata accessor for SpeakableString();
    OUTLINED_FUNCTION_7_6();
    __swift_storeEnumTagSinglePayload(v50, v51, v52, v53);
    v54 = [v29 preferredCallProvider] == &dword_0 + 2;
    (*(*v49 + class metadata base offset for StartCallCATs + 1344))(v37, v54, 0, 0, 0, 0, v27, v25);
    v34 = v37;
    goto LABEL_22;
  }

  v80 = v21;
  v81 = v25;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v40 = type metadata accessor for Logger();
  v41 = __swift_project_value_buffer(v40, static Logger.siriPhone);
  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_10_0(v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 0;
    _os_log_impl(&dword_0, v42, v41, "User requested a handle label with inferred isMe=true, but no MeCard person exists. Provide specific prompt dialog for this case StartCall#PromptForContactsKnownLabel.", v44, 2u);
    OUTLINED_FUNCTION_26_0(v44);
  }

  v45 = a21(v29);
  if (!v45)
  {
    v55 = 0;
LABEL_17:
    v60 = type metadata accessor for SpeakableString();
    v61 = 1;
    goto LABEL_18;
  }

  v46 = v45;
  if (specialized Array.count.getter(v45))
  {
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v46 & 0xC000000000000001) == 0, v46);
    if ((v46 & 0xC000000000000001) != 0)
    {
      v47 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v47 = *(v46 + 32);
    }

    v48 = v47;
  }

  else
  {
    v48 = 0;
  }

  v55 = [v48 personHandle];

  if (!v55)
  {
    goto LABEL_17;
  }

  v56 = [v55 label];
  if (!v56)
  {
    goto LABEL_17;
  }

  v57 = v56;
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v58 = OUTLINED_FUNCTION_13_24();
  OUTLINED_FUNCTION_94(v58, v59);
  v60 = type metadata accessor for SpeakableString();
  v61 = 0;
LABEL_18:
  __swift_storeEnumTagSinglePayload(v34, v61, 1, v60);
  type metadata accessor for DialogPersonHandle();
  v79 = v55;
  v62 = DialogPersonHandle.__allocating_init(handle:)();
  type metadata accessor for DialogPersonHandle.Builder();
  swift_allocObject();
  DialogPersonHandle.Builder.init()();
  if (v62)
  {

    DialogPersonHandle.label.getter();
  }

  else
  {
    type metadata accessor for SpeakableString();
    OUTLINED_FUNCTION_7_6();
    __swift_storeEnumTagSinglePayload(v63, v64, v65, v66);
  }

  dispatch thunk of DialogPersonHandle.Builder.withLabel(_:)();
  OUTLINED_FUNCTION_40_0();

  v67 = OUTLINED_FUNCTION_39_8();
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v67, v68, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v69 = @"PhoneNumber";
  v70 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  OUTLINED_FUNCTION_22_38(v70);
  type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_23_3();
  __swift_storeEnumTagSinglePayload(v71, v72, v73, v74);
  dispatch thunk of DialogPersonHandle.Builder.withType(_:)();

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v37, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v75 = dispatch thunk of DialogPersonHandle.Builder.build()();

  OUTLINED_FUNCTION_17_55();
  v77 = *(v76 + class metadata base offset for StartCallCATs + 1376);

  v77(v34, v75, v27, v81);

LABEL_22:
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v34, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_65();
}

uint64_t specialized ContactsSlotTemplating.makeParameterPromptDialog(app:parameterName:intent:_:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  __chkstk_darwin(v10 - 8);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v41 - v14;
  __chkstk_darwin(v16);
  v18 = &v41 - v17;
  if ((_s27PhoneCallFlowDelegatePlugin22ContactsSlotTemplatingV19isMissingMeCardCase6intentSbx_tFZSo05INAddB17ParticipantIntentC_So0obpQ8ResponseCTt0g5Tm(a4, outlined bridged method (pb) of @objc INStartVideoCallIntent.contacts.getter, outlined bridged method (pb) of @objc INStartVideoCallIntent.contacts.getter) & 1) == 0)
  {
    v27 = *(v6 + 40);
    v28 = type metadata accessor for SpeakableString();
    __swift_storeEnumTagSinglePayload(v18, 1, 1, v28);
    (*(*v27 + class metadata base offset for StartCallCATs + 1344))(v18, 0, 0, 0, 0, 0, a5, a6);
    v15 = v18;
    return outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v15, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  }

  v43 = v6;
  v44 = a6;
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
    _os_log_impl(&dword_0, v20, v21, "User requested a handle label with inferred isMe=true, but no MeCard person exists. Provide specific prompt dialog for this case StartCall#PromptForContactsKnownLabel.", v22, 2u);
  }

  v23 = outlined bridged method (pb) of @objc INStartVideoCallIntent.contacts.getter(a4);
  if (!v23)
  {
    v29 = 0;
LABEL_17:
    v32 = type metadata accessor for SpeakableString();
    v33 = 1;
    goto LABEL_18;
  }

  v24 = v23;
  if (specialized Array.count.getter(v23))
  {
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v24 & 0xC000000000000001) == 0, v24);
    if ((v24 & 0xC000000000000001) != 0)
    {
      v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v25 = *(v24 + 32);
    }

    v26 = v25;
  }

  else
  {
    v26 = 0;
  }

  v29 = [v26 personHandle];

  if (!v29)
  {
    goto LABEL_17;
  }

  v30 = [v29 label];
  if (!v30)
  {
    goto LABEL_17;
  }

  v31 = v30;
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  SpeakableString.init(print:speak:)();
  v32 = type metadata accessor for SpeakableString();
  v33 = 0;
LABEL_18:
  __swift_storeEnumTagSinglePayload(v15, v33, 1, v32);
  type metadata accessor for DialogPersonHandle();
  v42 = v29;
  v34 = DialogPersonHandle.__allocating_init(handle:)();
  type metadata accessor for DialogPersonHandle.Builder();
  swift_allocObject();
  DialogPersonHandle.Builder.init()();
  if (v34)
  {

    DialogPersonHandle.label.getter();
  }

  else
  {
    v35 = type metadata accessor for SpeakableString();
    __swift_storeEnumTagSinglePayload(v12, 1, 1, v35);
  }

  dispatch thunk of DialogPersonHandle.Builder.withLabel(_:)();

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v12, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v36 = @"PhoneNumber";
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  SpeakableString.init(print:speak:)();
  v37 = type metadata accessor for SpeakableString();
  __swift_storeEnumTagSinglePayload(v18, 0, 1, v37);
  dispatch thunk of DialogPersonHandle.Builder.withType(_:)();

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v18, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v38 = dispatch thunk of DialogPersonHandle.Builder.build()();

  v39 = *(**(v43 + 40) + class metadata base offset for StartCallCATs + 1376);

  v39(v15, v38, a5, v44);

  return outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v15, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
}

void specialized ContactsSlotTemplating.makeParameterValueConfirmationDialog(app:parameterName:intentResolutionResult:intent:inferenceSource:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t (*a21)(void *))
{
  OUTLINED_FUNCTION_66();
  v76 = v22;
  v77 = v23;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v75 = type metadata accessor for Locale();
  OUTLINED_FUNCTION_7();
  v73 = v30;
  __chkstk_darwin(v31);
  OUTLINED_FUNCTION_4();
  v34 = v33 - v32;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v36 = OUTLINED_FUNCTION_21(v35);
  __chkstk_darwin(v36);
  OUTLINED_FUNCTION_12_5();
  v39 = v37 - v38;
  *&v41 = __chkstk_darwin(v40).n128_u64[0];
  v43 = &v68 - v42;
  v74 = [v29 confirmationReason];
  v44 = [v29 itemToConfirm];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
  if (swift_dynamicCast())
  {
    v45 = v80;
    goto LABEL_10;
  }

  v46 = a21(v27);
  if (!v46)
  {
    goto LABEL_9;
  }

  v47 = v46;
  if (!specialized Array.count.getter(v46))
  {

LABEL_9:
    v45 = 0;
    goto LABEL_10;
  }

  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v47 & 0xC000000000000001) == 0, v47);
  if ((v47 & 0xC000000000000001) != 0)
  {
    v48 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v48 = *(v47 + 32);
  }

  v45 = v48;

LABEL_10:
  v49 = a21(v27);
  if (v49)
  {
    v50 = v49;
    if (specialized Array.count.getter(v49))
    {
      specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v50 & 0xC000000000000001) == 0, v50);
      v51 = v25;
      if ((v50 & 0xC000000000000001) != 0)
      {
        v52 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v52 = *(v50 + 32);
      }

      v53 = v52;

      v54 = [v53 personHandle];

      if (v54)
      {
        v72 = [v54 isSuggested];
      }

      else
      {
        v72 = 0;
      }

      v25 = v51;
      goto LABEL_20;
    }
  }

  v72 = 0;
LABEL_20:
  v55 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v56, v57, v58, v55);
  if ((v25 & 1) == 0)
  {
    SpeakableString.init(print:speak:)();
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v43, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_23_3();
    __swift_storeEnumTagSinglePayload(v59, v60, v61, v55);
    outlined init with take of OnDeviceCarPlayWithInputFlowStrategy<CarPlayRCHFlowProvider<INStartCallIntent>>(v39, v43, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  }

  v71 = *(v21 + 40);
  v70 = [v27 preferredCallProvider];
  type metadata accessor for PhonePerson(0);
  static Device.current.getter();
  __swift_project_boxed_opaque_existential_1(v78, v79);
  dispatch thunk of DeviceState.siriLocale.getter();
  __swift_destroy_boxed_opaque_existential_1(v78);
  v62 = v45;
  v63 = static PhonePerson.make(phonePerson:options:locale:)(v45, 0, v34);
  v69 = v43;
  v64 = *(v73 + 8);
  v65 = v75;
  v64(v34, v75);
  static Device.current.getter();
  __swift_project_boxed_opaque_existential_1(v78, v79);
  dispatch thunk of DeviceState.siriLocale.getter();
  __swift_destroy_boxed_opaque_existential_1(v78);
  v66 = static PhonePerson.make(phonePerson:options:locale:)(v45, 0, v34);
  v64(v34, v65);
  v67 = v69;
  (*(*v71 + class metadata base offset for StartCallCATs + 96))(v70 == &dword_0 + 2, v63, v66, (v74 & 0xFFFFFFFFFFFFFFFELL) == 2, v72, v69, v76, v77);

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v67, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_65();
}

uint64_t specialized ContactsSlotTemplating.makeParameterValueConfirmationDialog(app:parameterName:intentResolutionResult:intent:inferenceSource:_:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, char a6, uint64_t a7, uint64_t a8)
{
  v45 = a7;
  v46 = a8;
  v12 = type metadata accessor for Locale();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  __chkstk_darwin(v16 - 8);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v20 = __chkstk_darwin(v19).n128_u64[0];
  v22 = &v39 - v21;
  v44 = [a4 confirmationReason];
  v23 = [a4 itemToConfirm];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
  if (swift_dynamicCast())
  {
    v43 = v49;
    goto LABEL_10;
  }

  v24 = outlined bridged method (pb) of @objc INStartVideoCallIntent.contacts.getter(a5);
  if (!v24)
  {
    goto LABEL_9;
  }

  v25 = v24;
  if (!specialized Array.count.getter(v24))
  {

LABEL_9:
    v43 = 0;
    goto LABEL_10;
  }

  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v25 & 0xC000000000000001) == 0, v25);
  if ((v25 & 0xC000000000000001) != 0)
  {
    v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v26 = *(v25 + 32);
  }

  v43 = v26;

LABEL_10:
  v27 = outlined bridged method (pb) of @objc INStartVideoCallIntent.contacts.getter(a5);
  if (v27)
  {
    v28 = v27;
    if (specialized Array.count.getter(v27))
    {
      specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v28 & 0xC000000000000001) == 0, v28);
      if ((v28 & 0xC000000000000001) != 0)
      {
        v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v29 = *(v28 + 32);
      }

      v30 = v29;

      v31 = [v30 personHandle];

      if (v31)
      {
        v42 = [v31 isSuggested];

        goto LABEL_18;
      }
    }

    else
    {
    }
  }

  v42 = 0;
LABEL_18:
  v32 = type metadata accessor for SpeakableString();
  __swift_storeEnumTagSinglePayload(v22, 1, 1, v32);
  if ((a6 & 1) == 0)
  {
    SpeakableString.init(print:speak:)();
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v22, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    __swift_storeEnumTagSinglePayload(v18, 0, 1, v32);
    outlined init with take of OnDeviceCarPlayWithInputFlowStrategy<CarPlayRCHFlowProvider<INStartCallIntent>>(v18, v22, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  }

  v41 = *(v8 + 40);
  type metadata accessor for PhonePerson(0);
  static Device.current.getter();
  __swift_project_boxed_opaque_existential_1(v47, v48);
  dispatch thunk of DeviceState.siriLocale.getter();
  __swift_destroy_boxed_opaque_existential_1(v47);
  v33 = v43;
  v34 = static PhonePerson.make(phonePerson:options:locale:)(v43, 0, v15);
  v35 = *(v13 + 8);
  v35(v15, v12);
  static Device.current.getter();
  v40 = v22;
  __swift_project_boxed_opaque_existential_1(v47, v48);
  dispatch thunk of DeviceState.siriLocale.getter();
  __swift_destroy_boxed_opaque_existential_1(v47);
  v36 = static PhonePerson.make(phonePerson:options:locale:)(v33, 0, v15);
  v35(v15, v12);
  v37 = v40;
  (*(*v41 + class metadata base offset for StartCallCATs + 96))(0, v34, v36, (v44 & 0xFFFFFFFFFFFFFFFELL) == 2, v42, v40, v45, v46);

  return outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v37, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
}

void specialized ContactsSlotTemplating.makeParameterValueDisambiguationDialog(app:parameterName:intentResolutionResult:disambiguationList:deviceIsLocked:intent:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t (*a22)(void *, __n128), uint64_t (*a23)(uint64_t))
{
  OUTLINED_FUNCTION_66();
  v151 = v23;
  v26 = v25;
  v28 = v27;
  v148 = v29;
  v149 = a21;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v30);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v31);
  v145 = &v139[-v32];
  type metadata accessor for InteractionType();
  OUTLINED_FUNCTION_7();
  v143 = v34;
  v144 = v33;
  __chkstk_darwin(v33);
  OUTLINED_FUNCTION_12_5();
  v142 = v35 - v36;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v37);
  v39 = &v139[-v38];
  v153 = type metadata accessor for Locale();
  OUTLINED_FUNCTION_7();
  v147 = v40;
  __chkstk_darwin(v41);
  OUTLINED_FUNCTION_12_5();
  OUTLINED_FUNCTION_29_26();
  __chkstk_darwin(v42);
  OUTLINED_FUNCTION_13_5();
  v150 = v43;
  OUTLINED_FUNCTION_4_0();
  v45 = __chkstk_darwin(v44);
  v152 = &v139[-v46];
  v47 = a22(v26, v45);
  v48 = [v28 disambiguationItems];
  v49 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v50 = *(v49 + 16);

  v51 = &selRef_alternatives;
  if (v50)
  {
    v51 = &selRef_disambiguationItems;
  }

  v52 = [v28 *v51];
  v53 = v47;
  v54 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v55 = specialized _arrayConditionalCast<A, B>(_:)(v54);
  v56 = _swiftEmptyArrayStorage;
  if (v55)
  {
    v57 = v55;
  }

  else
  {
    v57 = _swiftEmptyArrayStorage;
  }

  v154 = v57;
  if (!v47)
  {
    v146 = 0;
    goto LABEL_14;
  }

  v58 = specialized Array.count.getter(v47);
  if (!v58)
  {
    goto LABEL_12;
  }

  v59 = _swiftEmptyArrayStorage;
  OUTLINED_FUNCTION_89_7(v58, (v47 & 0xC000000000000001) == 0);
  if ((v47 & 0xC000000000000001) != 0)
  {
    goto LABEL_104;
  }

  v60 = *(v47 + 32);
  while (1)
  {
    v61 = [v60 siriMatches];

    v56 = v59;
    if (v61)
    {
      type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
      v62 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v146 = specialized Array.count.getter(v62);
    }

    else
    {
LABEL_12:
      v146 = specialized Array.count.getter(v53);
    }

LABEL_14:
    v59 = App.isFirstParty()();
    v63 = *(v54 + 16);
    v64 = v154;
    static EmergencyUtils.isForeignEmergencyDisambiguation(_:)(v154);
    if (v65)
    {
      break;
    }

    static EmergencyUtils.isRegularEmergencyDisambiguation(_:)(v64);
    if ((v75 & 1) == 0)
    {
      v152 = a23;

      v87 = PhoneContactDisambiguationProperties.isHandleDisambiguation.getter(v86);

      if (v87)
      {
        goto LABEL_40;
      }

      v93 = v154;
      v94 = specialized Array.count.getter(v154);
      if (v94 == 1)
      {
        v95 = OUTLINED_FUNCTION_41_34();
        specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v95, v96, v97);
        if ((v93 & 0xC000000000000001) != 0)
        {
          v98 = OUTLINED_FUNCTION_151();
        }

        else
        {
          v98 = *(v93 + 32);
        }

        v87 = v98;
        v99 = INPerson.hasHandleLabel.getter();

        if (v99)
        {
LABEL_40:
          if (v53)
          {
            v88 = specialized Array.count.getter(v53);
            v89 = v154;
            if (v88)
            {
              OUTLINED_FUNCTION_89_7(v88, (v53 & 0xC000000000000001) == 0);
              if ((v53 & 0xC000000000000001) != 0)
              {
                OUTLINED_FUNCTION_88_5();
              }

              else
              {
                v90 = *(v53 + 32);
              }

              OUTLINED_FUNCTION_61();

              v91 = v87;
              LODWORD(v145) = INPerson.hasHandleLabel.getter();
              v146 = v91;
            }

            else
            {

              LODWORD(v145) = 0;
              v146 = 0;
            }
          }

          else
          {
            LODWORD(v145) = 0;
            v146 = 0;
            v89 = v154;
          }

          ContactRelatedOr = specialized INPersonContainingIntent.isFirstContactRelatedOrMyself.getter(v152);
          v112 = specialized Array.count.getter(v89);
          v113 = 0;
          v53 = v89 & 0xC000000000000001;
          v59 = v89 & 0xFFFFFFFFFFFFFF8;
          v24 = &unk_548000;
          v54 = &unk_548000;
          do
          {
            v114 = v113;
            if (v112 == v113)
            {
              break;
            }

            if (v53)
            {
              OUTLINED_FUNCTION_39_8();
              v115 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v113 >= *(v59 + 16))
              {
                goto LABEL_101;
              }

              v115 = OUTLINED_FUNCTION_71_13();
            }

            v39 = v115;
            if (__OFADD__(v114, 1))
            {
              goto LABEL_100;
            }

            v116 = [v115 personHandle];
            if (!v116)
            {

              break;
            }

            v26 = v116;
            v117 = [v116 type];

            v113 = v114 + 1;
            v118 = v117 == &dword_0 + 2;
            v89 = v154;
          }

          while (v118);
          specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, v53 == 0, v89);
          if (v53)
          {
            v119 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v119 = *(v89 + 32);
          }

          v120 = v119;

          type metadata accessor for PhonePerson(0);
          v121 = v151;
          __swift_project_boxed_opaque_existential_1(v151, v151[3]);
          v122 = v150;
          dispatch thunk of DeviceState.siriLocale.getter();
          v123 = static PhonePerson.make(phonePerson:options:locale:)(v120, ContactRelatedOr & 1, v122);

          (*(v147 + 8))(v122, v153);
          v124 = *(*v121[5] + class metadata base offset for StartCallCATs + 352);

          v124(v145 & 1, v112 == v114, v123, v148, v149);
        }

        else
        {
LABEL_64:

LABEL_65:
          if ((v59 & (v63 < v146)) == 1)
          {

            OUTLINED_FUNCTION_17_55();
            (*(v107 + class metadata base offset for StartCallCATs + 416))(v148, v149);
          }

          else
          {
            v54 = v151;
            if (!v53)
            {
              goto LABEL_95;
            }

            v108 = specialized Array.count.getter(v53);
            if (v108)
            {
              OUTLINED_FUNCTION_89_7(v108, (v53 & 0xC000000000000001) == 0);
              v109 = (v53 & 0xC000000000000001) != 0 ? OUTLINED_FUNCTION_88_5() : *(v53 + 32);
              v110 = v109;
            }

            else
            {
LABEL_92:
              v110 = 0;
            }

            v126 = [v110 relationship];

            if (v126)
            {
              v127 = v145;
              INPersonRelationship.toSpeakableString(startCallCats:)();
            }

            else
            {
LABEL_95:
              type metadata accessor for SpeakableString();
              v127 = v145;
              OUTLINED_FUNCTION_7_6();
              __swift_storeEnumTagSinglePayload(v128, v129, v130, v131);
            }

            (*(**(v54 + 40) + class metadata base offset for StartCallCATs + 288))(v127, v148, v149);
            outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v127, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
          }
        }
      }

      else
      {
        if (v94 < 6)
        {
          goto LABEL_64;
        }

        v141 = v56;
        v150 = v53;
        v53 = v151;
        __swift_project_boxed_opaque_existential_1(v151, v151[3]);
        OUTLINED_FUNCTION_45_22();
        dispatch thunk of DeviceState.interactionType.getter();
        v100 = v142;
        v101 = v143;
        v54 = v144;
        (*(v143 + 104))(v142, enum case for InteractionType.dialogDriven(_:), v144);
        v140 = specialized == infix<A>(_:_:)(v39, v100);
        v102 = *(v101 + 8);
        v102(v100, v54);
        v102(v39, v54);
        if ((v140 & 1) == 0)
        {

          v53 = v150;
          goto LABEL_65;
        }

        v145 = v26;

        v144 = *(v53 + 40);
        v158 = _swiftEmptyArrayStorage;
        v103 = v154;
        v104 = specialized Array.count.getter(v154);
        v39 = 0;
        v150 = v103 & 0xC000000000000001;
        v151 = v104;
        v146 = (v103 & 0xFFFFFFFFFFFFFF8);
        v59 = v147 + 8;
        while (v151 != v39)
        {
          if (v150)
          {
            v105 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v39 >= *(v146 + 2))
            {
              goto LABEL_103;
            }

            v105 = v154[v39 + 4];
          }

          v26 = v105;
          v53 = v39 + 1;
          if (__OFADD__(v39, 1))
          {
            goto LABEL_102;
          }

          type metadata accessor for PhonePerson(0);
          v54 = specialized INPersonContainingIntent.isFirstContactRelatedOrMyself.getter(v152);
          static Device.current.getter();
          __swift_project_boxed_opaque_existential_1(v155, v156);
          OUTLINED_FUNCTION_40_0();
          dispatch thunk of DeviceState.siriLocale.getter();
          __swift_destroy_boxed_opaque_existential_1(v155);
          v106 = static PhonePerson.make(phonePerson:options:locale:)(v26, v54 & 1, v24);
          (*v59)(v24, v153);

          ++v39;
          if (v106)
          {
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*(&dword_10 + (v158 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v158 & 0xFFFFFFFFFFFFFF8)) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v141 = v158;
            v39 = v53;
          }
        }

        type metadata accessor for PhonePersonList();
        PhonePersonList.__allocating_init(list:)(v141);
        OUTLINED_FUNCTION_35_0();
        (*(v125 + class metadata base offset for StartCallCATs + 448))();
LABEL_38:
      }

LABEL_97:
      OUTLINED_FUNCTION_65();
      return;
    }

    v146 = v151[5];
    v141 = v56;
    v158 = v56;
    v24 = specialized Array.count.getter(v64);
    v76 = 0;
    v150 = v64 & 0xFFFFFFFFFFFFFF8;
    v151 = (v64 & 0xC000000000000001);
    v77 = (v147 + 8);
    while (1)
    {
      if (v24 == v76)
      {

        OUTLINED_FUNCTION_35_0();
        (*(v92 + class metadata base offset for StartCallCATs + 384))(v141, v148, v149);

        goto LABEL_97;
      }

      if (v151)
      {
        OUTLINED_FUNCTION_39_8();
        v79 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        OUTLINED_FUNCTION_58_14();
        if (v78)
        {
          goto LABEL_99;
        }

        v79 = OUTLINED_FUNCTION_71_13();
      }

      v39 = v79;
      v53 = (v76 + 1);
      if (__OFADD__(v76, 1))
      {
        break;
      }

      type metadata accessor for PhonePerson(0);
      static Device.current.getter();
      v54 = v157;
      __swift_project_boxed_opaque_existential_1(v155, v156);
      v59 = v152;
      dispatch thunk of DeviceState.siriLocale.getter();
      __swift_destroy_boxed_opaque_existential_1(v155);
      v26 = static PhonePerson.make(phonePerson:options:locale:)(v39, 0, v59);

      (*v77)(v59, v153);
      ++v76;
      if (v26)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        OUTLINED_FUNCTION_51_29();
        if (v78)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v141 = v158;
        v76 = v53;
      }
    }

    __break(1u);
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
LABEL_101:
    __break(1u);
LABEL_102:
    __break(1u);
LABEL_103:
    __break(1u);
LABEL_104:

    v60 = OUTLINED_FUNCTION_88_5();
  }

  v150 = v53;
  v66 = specialized Array.count.getter(v64);
  v67 = 0;
  v68 = v64 & 0xC000000000000001;
  v69 = v64 & 0xFFFFFFFFFFFFFF8;
  while (v66 != v67)
  {
    if (v68)
    {
      OUTLINED_FUNCTION_39_8();
      v70 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v67 >= *(v69 + 16))
      {
        goto LABEL_91;
      }

      v70 = OUTLINED_FUNCTION_71_13();
    }

    v71 = v70;
    if (__OFADD__(v67, 1))
    {
      __break(1u);
LABEL_91:
      __break(1u);
      goto LABEL_92;
    }

    v72 = [v70 personHandle];
    if (v72)
    {
      v73 = v72;
      v74 = [v72 emergencyType];

      if (v74 == &dword_0 + 2)
      {

        v80 = v151;
        v81 = v151[5];
        type metadata accessor for SirikitDeviceState();
        outlined init with copy of SignalProviding(v80, v155);
        v82 = SirikitDeviceState.__allocating_init(from:)();
        type metadata accessor for PhonePerson(0);
        v83 = v71;
        static Device.current.getter();
        __swift_project_boxed_opaque_existential_1(v155, v156);
        v84 = v152;
        dispatch thunk of DeviceState.siriLocale.getter();
        __swift_destroy_boxed_opaque_existential_1(v155);
        v85 = static PhonePerson.make(phonePerson:options:locale:)(v71, 0, v84);

        (*(v147 + 8))(v84, v153);
        (*(*v81 + class metadata base offset for StartCallCATs + 320))(v82, v85, v148, v149);

        goto LABEL_38;
      }
    }

    ++v67;
  }

  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v132 = type metadata accessor for Logger();
  __swift_project_value_buffer(v132, static Logger.siriPhone);
  v133 = Logger.logObject.getter();
  v134 = static os_log_type_t.error.getter();
  if (OUTLINED_FUNCTION_10_0(v134))
  {
    v135 = swift_slowAlloc();
    v136 = swift_slowAlloc();
    v155[0] = v136;
    *v135 = 136315138;
    *(v135 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000005ALL, 0x800000000045AD30, v155);
    OUTLINED_FUNCTION_57(&dword_0, v137, v138, "%s");
    __swift_destroy_boxed_opaque_existential_1(v136);
    OUTLINED_FUNCTION_26_0(v136);
    OUTLINED_FUNCTION_26_0(v135);
  }

  static SiriKitLifecycle._logCrashToEventBus(_:)();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void specialized ContactsSlotTemplating.makeParameterValueUnsupportedDialog(app:parameterName:intentResolutionResult:intent:multicardinalValueIndex:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t (*a22)(id), uint64_t (*a23)(uint64_t), uint64_t (*a24)(uint64_t))
{
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_35_30();
  v164 = a24;
  v165 = a23;
  v30 = a22;
  v171 = a21;
  v175 = type metadata accessor for Locale();
  OUTLINED_FUNCTION_7();
  v167 = v31;
  __chkstk_darwin(v32);
  OUTLINED_FUNCTION_12_5();
  v162 = v33 - v34;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v35);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v37 = OUTLINED_FUNCTION_21(v36);
  __chkstk_darwin(v37);
  OUTLINED_FUNCTION_12_5();
  OUTLINED_FUNCTION_29_26();
  __chkstk_darwin(v38);
  OUTLINED_FUNCTION_13_5();
  v163 = v39;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v40);
  OUTLINED_FUNCTION_13_5();
  v166 = v41;
  OUTLINED_FUNCTION_4_0();
  v43 = __chkstk_darwin(v42);
  v161 = v158 - v44;
  v173 = v27;
  v45 = (a22)(v27, v43);
  if (v45)
  {
    v46 = v45;
    if ((v29 & 1) == 0)
    {
      OUTLINED_FUNCTION_68_14();
      if (v25)
      {
        goto LABEL_110;
      }

      v50 = *(v46 + 8 * v28 + 32);
      goto LABEL_11;
    }
  }

  v47 = a22(v173);
  if (!v47)
  {
    goto LABEL_13;
  }

  v48 = v47;
  if (!specialized Array.count.getter(v47))
  {

LABEL_13:
    v174 = 0;
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_69_15();
  if (v25)
  {
    v49 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v49 = *(v48 + 32);
  }

  v174 = v49;
  v25 = v28;

LABEL_14:
  v51 = [v24 unsupportedReason];
  if (_INStartCallContactUnsupportedReasonForeignEmergencyDisambiguation == v51)
  {
    OUTLINED_FUNCTION_6_93();
    (*(v52 + class metadata base offset for StartCallCATs + 1632))(v25);
LABEL_16:
    OUTLINED_FUNCTION_65();

    return;
  }

  switch(v51)
  {
    case 2uLL:
      OUTLINED_FUNCTION_6_93();
      (*(v55 + class metadata base offset for StartCallCATs + 1696))(v25);
      goto LABEL_16;
    case 3uLL:
      type metadata accessor for PhoneStartCallIntent.Builder(0);
      v24 = swift_allocObject();
      v26 = PhoneStartCallIntent.Builder.init()();
      v70 = v30(v173);
      v30 = _swiftEmptyArrayStorage;
      v160 = v25;
      if (!v70)
      {
        goto LABEL_53;
      }

      v158[1] = v26;
      v159 = _swiftEmptyArrayStorage;
      v176 = _swiftEmptyArrayStorage;
      v71 = specialized Array.count.getter(v70);
      OUTLINED_FUNCTION_39_28(v71);
      while (2)
      {
        if (v170 != v28)
        {
          if (v169)
          {
            OUTLINED_FUNCTION_39_8();
            specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            OUTLINED_FUNCTION_58_14();
            if (v60)
            {
              goto LABEL_109;
            }

            OUTLINED_FUNCTION_71_13();
          }

          OUTLINED_FUNCTION_80_10();
          if (!v62)
          {
            v72 = type metadata accessor for PhonePerson(0);
            static Device.current.getter();
            v30 = v179;
            OUTLINED_FUNCTION_16_57();
            dispatch thunk of DeviceState.siriLocale.getter();
            v73 = OUTLINED_FUNCTION_24_45();
            v24 = v72;
            v76 = static PhonePerson.make(phonePerson:options:locale:)(v73, v74, v75);

            v77 = OUTLINED_FUNCTION_79_11();
            v78(v77);
            ++v28;
            if (v76)
            {
              v24 = &v176;
              specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
              OUTLINED_FUNCTION_51_29();
              if (v60)
              {
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              OUTLINED_FUNCTION_69();
              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              v159 = v176;
              v28 = v26;
            }

            continue;
          }

LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          OUTLINED_FUNCTION_69();
          v50 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_11:
          v174 = v50;

          v25 = v29;
          goto LABEL_14;
        }

        break;
      }

LABEL_53:
      v83 = 0x4E574F4E4B4E55;
      type metadata accessor for PhonePersonList();
      v84 = OUTLINED_FUNCTION_61();
      PhonePersonList.__allocating_init(list:)(v84);
      OUTLINED_FUNCTION_48_27();
      (*(v85 + 352))();

      if (![v173 preferredCallProvider])
      {
        v89 = 0xE700000000000000;
        v90 = 0x4E574F4E4B4E55;
        goto LABEL_70;
      }

      v86 = INPreferredCallProviderGetBackingType();
      switch(v86)
      {
        case 4:
          v87 = @"THIRD_PARTY_PROVIDER";
          goto LABEL_67;
        case 3:
          v87 = @"FACETIME_PROVIDER";
LABEL_67:
          v105 = v87;
          goto LABEL_69;
        case 2:
          v87 = @"TELEPHONY_PROVIDER";
          goto LABEL_67;
      }

      OUTLINED_FUNCTION_78_13();
      v87 = [v106 stringWithFormat:@"(unknown: %i)"];
LABEL_69:
      v107 = v87;
      v90 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v89 = v108;

LABEL_70:
      v109 = v161;
      OUTLINED_FUNCTION_94(v90, v89);
      v110 = type metadata accessor for SpeakableString();
      v111 = 1;
      OUTLINED_FUNCTION_23_3();
      __swift_storeEnumTagSinglePayload(v112, v113, v114, v110);
      OUTLINED_FUNCTION_35_0();
      (*(v115 + 320))(v109);

      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v109, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
      OUTLINED_FUNCTION_77_13();
      v117 = (*(v116 + 376))();

      if (v174)
      {
        v118 = [v174 personHandle];
        if (v118)
        {
          v119 = v118;
          v120 = [v118 label];

          if (v120 && (v121 = static String._unconditionallyBridgeFromObjectiveC(_:)(), v123 = v122, v120, v123))
          {
            OUTLINED_FUNCTION_22_38(v121);
            v111 = 0;
          }

          else
          {
            v111 = 1;
          }
        }
      }

      __swift_storeEnumTagSinglePayload(v166, v111, 1, v110);
      v124 = *(v117 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin20PhoneStartCallIntent_contacts);
      if (v124 && (v125 = *(v124 + 24), specialized Array.count.getter(v125)))
      {
        v126 = OUTLINED_FUNCTION_41_34();
        specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v126, v127, v128);
        if ((v125 & 0xC000000000000001) != 0)
        {

          OUTLINED_FUNCTION_151();
        }

        else
        {
        }

        v129 = DialogPerson.personHandle.getter();
      }

      else
      {
        v129 = 0;
      }

      v130 = specialized INPersonContainingIntent.hasSiriMatches.getter(v164);
      v170 = v129;
      if ((v130 & 1) == 0)
      {
        v139 = v174;
        v138 = v174;
        goto LABEL_92;
      }

      if (!v174)
      {
        goto LABEL_91;
      }

      v131 = [v174 siriMatches];
      if (!v131)
      {
        goto LABEL_91;
      }

      v132 = v131;
      type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
      v133 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (!specialized Array.count.getter(v133))
      {

LABEL_91:
        v138 = 0;
        goto LABEL_92;
      }

      v134 = OUTLINED_FUNCTION_41_34();
      specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v134, v135, v136);
      if ((v133 & 0xC000000000000001) != 0)
      {
        v137 = OUTLINED_FUNCTION_151();
      }

      else
      {
        v137 = *(v133 + 32);
      }

      v138 = v137;

LABEL_92:

      if (![v173 preferredCallProvider])
      {
        v142 = 0xE700000000000000;
        goto LABEL_103;
      }

      v140 = INPreferredCallProviderGetBackingType();
      switch(v140)
      {
        case 4:
          v141 = @"THIRD_PARTY_PROVIDER";
          goto LABEL_100;
        case 3:
          v141 = @"FACETIME_PROVIDER";
LABEL_100:
          v143 = v141;
          goto LABEL_102;
        case 2:
          v141 = @"TELEPHONY_PROVIDER";
          goto LABEL_100;
      }

      OUTLINED_FUNCTION_78_13();
      v141 = [v144 stringWithFormat:@"(unknown: %i)"];
LABEL_102:
      v145 = v141;
      v83 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v142 = v146;

LABEL_103:
      v147 = v163;
      OUTLINED_FUNCTION_94(v83, v142);
      OUTLINED_FUNCTION_23_3();
      __swift_storeEnumTagSinglePayload(v148, v149, v150, v110);
      type metadata accessor for PhonePerson(0);
      ContactRelatedOr = specialized INPersonContainingIntent.isFirstContactRelatedOrMyself.getter(v165);
      static Device.current.getter();
      __swift_project_boxed_opaque_existential_1(v177, v178);
      v152 = v162;
      OUTLINED_FUNCTION_45_22();
      dispatch thunk of DeviceState.siriLocale.getter();
      __swift_destroy_boxed_opaque_existential_1(v177);
      v153 = static PhonePerson.make(phonePerson:options:locale:)(v138, ContactRelatedOr & 1, v152);
      (*(v167 + 8))(v152, v175);
      OUTLINED_FUNCTION_48_27();
      (*(v154 + class metadata base offset for StartCallCATs + 1824))(v117, v147, v153, v166, v170, v160, v171);

      OUTLINED_FUNCTION_28_2();
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v155, v156, v157);
      OUTLINED_FUNCTION_28_2();
LABEL_104:
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v104, v102, v103);
LABEL_105:
      OUTLINED_FUNCTION_65();
      return;
    case 4uLL:
      v160 = v25;
      v57 = v30(v173);
      v30 = _swiftEmptyArrayStorage;
      if (!v57)
      {
        goto LABEL_51;
      }

      v58 = v57;
      v168 = _swiftEmptyArrayStorage;
      v176 = _swiftEmptyArrayStorage;
      v59 = specialized Array.count.getter(v57);
      OUTLINED_FUNCTION_37_29(v59);
      while (2)
      {
        if (v173 == v28)
        {

LABEL_51:
          type metadata accessor for PhonePersonList();
          v81 = OUTLINED_FUNCTION_61();
          PhonePersonList.__allocating_init(list:)(v81);
          OUTLINED_FUNCTION_17_55();
          (*(v82 + class metadata base offset for StartCallCATs + 1664))();

          goto LABEL_105;
        }

        if (v170)
        {
          specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          OUTLINED_FUNCTION_58_14();
          if (v60)
          {
            goto LABEL_108;
          }

          v61 = *(v58 + 8 * v28 + 32);
        }

        OUTLINED_FUNCTION_80_10();
        if (!v62)
        {
          v30 = type metadata accessor for PhonePerson(0);
          static Device.current.getter();
          OUTLINED_FUNCTION_16_57();
          dispatch thunk of DeviceState.siriLocale.getter();
          v63 = OUTLINED_FUNCTION_24_45();
          v24 = v30;
          v66 = static PhonePerson.make(phonePerson:options:locale:)(v63, v64, v65);

          v67 = OUTLINED_FUNCTION_79_11();
          v68(v67);
          ++v28;
          if (v66)
          {
            v24 = &v176;
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            OUTLINED_FUNCTION_75_12();
            if (v60)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v168 = v176;
            v28 = v26;
          }

          continue;
        }

        break;
      }

      __break(1u);
      goto LABEL_107;
    case 5uLL:
      OUTLINED_FUNCTION_6_93();
      (*(v69 + class metadata base offset for StartCallCATs + 1888))(v25);
      goto LABEL_16;
    case 6uLL:
      OUTLINED_FUNCTION_6_93();
      (*(v56 + class metadata base offset for StartCallCATs + 1728))(v25);
      goto LABEL_16;
    case 7uLL:
      OUTLINED_FUNCTION_6_93();
      (*(v79 + class metadata base offset for StartCallCATs + 1856))(v25);
      goto LABEL_16;
    default:
      if (_s27PhoneCallFlowDelegatePlugin22ContactsSlotTemplatingV19isMissingMeCardCase6intentSbx_tFZSo05INAddB17ParticipantIntentC_So0obpQ8ResponseCTt0g5Tm(v173, v165, v164))
      {
        OUTLINED_FUNCTION_6_93();
        (*(v80 + class metadata base offset for StartCallCATs + 1792))(v25);
        goto LABEL_16;
      }

      v160 = v25;
      if (v174)
      {
        v88 = INPerson.nameLowercasedWithFirstUppercased.getter();
      }

      else
      {
        v88 = 0;
      }

      type metadata accessor for PhonePerson(0);
      static Device.current.getter();
      OUTLINED_FUNCTION_20_49(v177, v178);
      dispatch thunk of DeviceState.siriLocale.getter();
      __swift_destroy_boxed_opaque_existential_1(v177);
      v173 = OUTLINED_FUNCTION_82_12();

      v91 = OUTLINED_FUNCTION_47_26();
      v92(v91);
      v93 = v172;
      v169 = __swift_project_boxed_opaque_existential_1(v172 + 8, v172[11]);
      OUTLINED_FUNCTION_20_49(v93, v93[3]);
      OUTLINED_FUNCTION_13_24();
      dispatch thunk of DeviceState.siriLocale.getter();
      v94 = OUTLINED_FUNCTION_36_29();
      v96 = v95(v94);
      v98 = v97;
      v99 = OUTLINED_FUNCTION_55();
      v170(v99);
      if (v98)
      {
        OUTLINED_FUNCTION_22_38(v96);
      }

      v100 = type metadata accessor for SpeakableString();
      OUTLINED_FUNCTION_65_21(v100);
      App.isFirstParty()();
      OUTLINED_FUNCTION_37();
      OUTLINED_FUNCTION_29_37();
      OUTLINED_FUNCTION_73_12();
      v101();
      OUTLINED_FUNCTION_87_9();

      v102 = &_s16SiriDialogEngine15SpeakableStringVSgMd;
      v103 = &_s16SiriDialogEngine15SpeakableStringVSgMR;
      v104 = v26;
      goto LABEL_104;
  }
}

void specialized ContactsSlotTemplating.makeParameterValueUnsupportedDialog(app:parameterName:intentResolutionResult:intent:multicardinalValueIndex:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t (*a22)(uint64_t), uint64_t a23, uint64_t (*a24)(uint64_t), uint64_t (*a25)(uint64_t))
{
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_35_30();
  v162 = a25;
  v163 = a24;
  v31 = a22;
  v161 = a23;
  v169 = a21;
  v173 = type metadata accessor for Locale();
  OUTLINED_FUNCTION_7();
  v165 = v32;
  __chkstk_darwin(v33);
  OUTLINED_FUNCTION_12_5();
  v159 = v34 - v35;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v36);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v38 = OUTLINED_FUNCTION_21(v37);
  __chkstk_darwin(v38);
  OUTLINED_FUNCTION_12_5();
  OUTLINED_FUNCTION_29_26();
  __chkstk_darwin(v39);
  OUTLINED_FUNCTION_13_5();
  v160 = v40;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v41);
  OUTLINED_FUNCTION_13_5();
  v164 = v42;
  OUTLINED_FUNCTION_4_0();
  v44 = __chkstk_darwin(v43);
  v158 = &v155 - v45;
  v171 = v28;
  v46 = (a22)(v28, v44);
  if (v46)
  {
    v47 = v46;
    if ((v30 & 1) == 0)
    {
      OUTLINED_FUNCTION_68_14();
      if (v26)
      {
        goto LABEL_104;
      }

      v51 = *(v47 + 8 * v29 + 32);
      goto LABEL_11;
    }
  }

  v48 = a22(v171);
  if (!v48)
  {
    goto LABEL_13;
  }

  v49 = v48;
  if (!specialized Array.count.getter(v48))
  {

LABEL_13:
    v172 = 0;
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_69_15();
  if (v26)
  {
    v50 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v50 = *(v49 + 32);
  }

  v172 = v50;
  v26 = v29;

LABEL_14:
  v52 = [v25 unsupportedReason];
  if (_INStartCallContactUnsupportedReasonForeignEmergencyDisambiguation == v52)
  {
    OUTLINED_FUNCTION_6_93();
    (*(v53 + class metadata base offset for StartCallCATs + 1632))(v26);
LABEL_16:
    OUTLINED_FUNCTION_65();

    return;
  }

  switch(v52)
  {
    case 2uLL:
      OUTLINED_FUNCTION_6_93();
      (*(v56 + class metadata base offset for StartCallCATs + 1696))(v26);
      goto LABEL_16;
    case 3uLL:
      type metadata accessor for PhoneStartCallIntent.Builder(0);
      v25 = swift_allocObject();
      v27 = PhoneStartCallIntent.Builder.init()();
      v71 = v31(v171);
      v31 = _swiftEmptyArrayStorage;
      v157 = v26;
      if (!v71)
      {
        goto LABEL_53;
      }

      v155 = v27;
      v156 = _swiftEmptyArrayStorage;
      v174 = _swiftEmptyArrayStorage;
      v72 = specialized Array.count.getter(v71);
      OUTLINED_FUNCTION_39_28(v72);
      while (2)
      {
        if (v168 != v29)
        {
          if (v167)
          {
            OUTLINED_FUNCTION_39_8();
            specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            OUTLINED_FUNCTION_58_14();
            if (v61)
            {
              goto LABEL_103;
            }

            OUTLINED_FUNCTION_71_13();
          }

          OUTLINED_FUNCTION_80_10();
          if (!v63)
          {
            v73 = type metadata accessor for PhonePerson(0);
            static Device.current.getter();
            v31 = v177;
            OUTLINED_FUNCTION_16_57();
            dispatch thunk of DeviceState.siriLocale.getter();
            v74 = OUTLINED_FUNCTION_24_45();
            v25 = v73;
            v77 = static PhonePerson.make(phonePerson:options:locale:)(v74, v75, v76);

            v78 = OUTLINED_FUNCTION_79_11();
            v79(v78);
            ++v29;
            if (v77)
            {
              v25 = &v174;
              specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
              OUTLINED_FUNCTION_51_29();
              if (v61)
              {
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              OUTLINED_FUNCTION_69();
              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              v156 = v174;
              v29 = v27;
            }

            continue;
          }

LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          OUTLINED_FUNCTION_69();
          v51 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_11:
          v172 = v51;

          v26 = v30;
          goto LABEL_14;
        }

        break;
      }

LABEL_53:
      type metadata accessor for PhonePersonList();
      v84 = OUTLINED_FUNCTION_61();
      PhonePersonList.__allocating_init(list:)(v84);
      OUTLINED_FUNCTION_48_27();
      (*(v85 + 352))();

      v86 = INPreferredCallProviderGetBackingType();
      switch(v86)
      {
        case 4:
          v87 = @"THIRD_PARTY_PROVIDER";
          goto LABEL_61;
        case 3:
          v87 = @"FACETIME_PROVIDER";
LABEL_61:
          v89 = v87;
          goto LABEL_63;
        case 2:
          v87 = @"TELEPHONY_PROVIDER";
          goto LABEL_61;
      }

      OUTLINED_FUNCTION_78_13();
      v87 = [v90 stringWithFormat:@"(unknown: %i)"];
LABEL_63:
      v91 = v87;
      v92 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      v93 = v158;
      OUTLINED_FUNCTION_22_38(v92);
      v94 = type metadata accessor for SpeakableString();
      v95 = 1;
      OUTLINED_FUNCTION_23_3();
      __swift_storeEnumTagSinglePayload(v96, v97, v98, v94);
      OUTLINED_FUNCTION_35_0();
      (*(v99 + 320))(v93);

      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v93, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
      OUTLINED_FUNCTION_77_13();
      v102 = (*(v100 + 376))(v101);

      if (v172)
      {
        v103 = [v172 personHandle];
        if (v103)
        {
          v104 = v103;
          v105 = [v103 label];

          if (v105)
          {
            v106 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v108 = v107;

            if (v108)
            {
              OUTLINED_FUNCTION_94(v106, v108);
              v95 = 0;
            }

            else
            {
              v95 = 1;
            }
          }
        }
      }

      __swift_storeEnumTagSinglePayload(v164, v95, 1, v94);
      v123 = *(v102 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin20PhoneStartCallIntent_contacts);
      if (v123 && (v124 = *(v123 + 24), specialized Array.count.getter(v124)))
      {
        v125 = OUTLINED_FUNCTION_41_34();
        specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v125, v126, v127);
        if ((v124 & 0xC000000000000001) != 0)
        {

          OUTLINED_FUNCTION_151();
        }

        else
        {
        }

        v128 = v163;
        v129 = DialogPerson.personHandle.getter();
      }

      else
      {
        v129 = 0;
        v128 = v163;
      }

      v130 = specialized INPersonContainingIntent.hasSiriMatches.getter(v162);
      v168 = v129;
      if ((v130 & 1) == 0)
      {
        v137 = v172;
        v131 = v172;
        goto LABEL_89;
      }

      if (!v172)
      {
        goto LABEL_88;
      }

      v131 = [v172 siriMatches];
      if (!v131)
      {
        goto LABEL_89;
      }

      type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
      v132 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (!specialized Array.count.getter(v132))
      {

LABEL_88:
        v131 = 0;
        goto LABEL_89;
      }

      v133 = OUTLINED_FUNCTION_41_34();
      specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v133, v134, v135);
      if ((v132 & 0xC000000000000001) != 0)
      {
        v136 = OUTLINED_FUNCTION_151();
      }

      else
      {
        v136 = *(v132 + 32);
      }

      v131 = v136;

LABEL_89:
      v138 = v170[5];

      v139 = INPreferredCallProviderGetBackingType();
      switch(v139)
      {
        case 4:
          v140 = @"THIRD_PARTY_PROVIDER";
          goto LABEL_95;
        case 3:
          v140 = @"FACETIME_PROVIDER";
LABEL_95:
          v141 = v140;
          goto LABEL_97;
        case 2:
          v140 = @"TELEPHONY_PROVIDER";
          goto LABEL_95;
      }

      OUTLINED_FUNCTION_78_13();
      v140 = [v142 stringWithFormat:@"(unknown: %i)"];
LABEL_97:
      v143 = v140;
      v144 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      v145 = v160;
      OUTLINED_FUNCTION_22_38(v144);
      OUTLINED_FUNCTION_23_3();
      __swift_storeEnumTagSinglePayload(v146, v147, v148, v94);
      type metadata accessor for PhonePerson(0);
      ContactRelatedOr = specialized INPersonContainingIntent.isFirstContactRelatedOrMyself.getter(v128);
      static Device.current.getter();
      __swift_project_boxed_opaque_existential_1(v175, v176);
      v150 = v159;
      dispatch thunk of DeviceState.siriLocale.getter();
      __swift_destroy_boxed_opaque_existential_1(v175);
      v151 = static PhonePerson.make(phonePerson:options:locale:)(v131, ContactRelatedOr & 1, v150);
      (*(v165 + 8))(v150, v173);
      (*(*v138 + class metadata base offset for StartCallCATs + 1824))(v102, v145, v151, v164, v168, v157, v169);

      OUTLINED_FUNCTION_28_2();
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v152, v153, v154);
      OUTLINED_FUNCTION_28_2();
LABEL_98:
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v122, v120, v121);
LABEL_99:
      OUTLINED_FUNCTION_65();
      return;
    case 4uLL:
      v157 = v26;
      v58 = v31(v171);
      v31 = _swiftEmptyArrayStorage;
      if (!v58)
      {
        goto LABEL_51;
      }

      v59 = v58;
      v166 = _swiftEmptyArrayStorage;
      v174 = _swiftEmptyArrayStorage;
      v60 = specialized Array.count.getter(v58);
      OUTLINED_FUNCTION_37_29(v60);
      while (2)
      {
        if (v171 == v29)
        {

LABEL_51:
          type metadata accessor for PhonePersonList();
          v82 = OUTLINED_FUNCTION_61();
          PhonePersonList.__allocating_init(list:)(v82);
          OUTLINED_FUNCTION_17_55();
          (*(v83 + class metadata base offset for StartCallCATs + 1664))();

          goto LABEL_99;
        }

        if (v168)
        {
          specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          OUTLINED_FUNCTION_58_14();
          if (v61)
          {
            goto LABEL_102;
          }

          v62 = *(v59 + 8 * v29 + 32);
        }

        OUTLINED_FUNCTION_80_10();
        if (!v63)
        {
          v31 = type metadata accessor for PhonePerson(0);
          static Device.current.getter();
          OUTLINED_FUNCTION_16_57();
          dispatch thunk of DeviceState.siriLocale.getter();
          v64 = OUTLINED_FUNCTION_24_45();
          v25 = v31;
          v67 = static PhonePerson.make(phonePerson:options:locale:)(v64, v65, v66);

          v68 = OUTLINED_FUNCTION_79_11();
          v69(v68);
          ++v29;
          if (v67)
          {
            v25 = &v174;
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            OUTLINED_FUNCTION_75_12();
            if (v61)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v166 = v174;
            v29 = v27;
          }

          continue;
        }

        break;
      }

      __break(1u);
      goto LABEL_101;
    case 5uLL:
      OUTLINED_FUNCTION_6_93();
      (*(v70 + class metadata base offset for StartCallCATs + 1888))(v26);
      goto LABEL_16;
    case 6uLL:
      OUTLINED_FUNCTION_6_93();
      (*(v57 + class metadata base offset for StartCallCATs + 1728))(v26);
      goto LABEL_16;
    case 7uLL:
      OUTLINED_FUNCTION_6_93();
      (*(v80 + class metadata base offset for StartCallCATs + 1856))(v26);
      goto LABEL_16;
    default:
      if (_s27PhoneCallFlowDelegatePlugin22ContactsSlotTemplatingV19isMissingMeCardCase6intentSbx_tFZSo05INAddB17ParticipantIntentC_So0obpQ8ResponseCTt0g5Tm(v171, v163, v162))
      {
        OUTLINED_FUNCTION_6_93();
        (*(v81 + class metadata base offset for StartCallCATs + 1792))(v26);
        goto LABEL_16;
      }

      v157 = v26;
      if (v172)
      {
        v88 = INPerson.nameLowercasedWithFirstUppercased.getter();
      }

      else
      {
        v88 = 0;
      }

      type metadata accessor for PhonePerson(0);
      static Device.current.getter();
      OUTLINED_FUNCTION_20_49(v175, v176);
      dispatch thunk of DeviceState.siriLocale.getter();
      __swift_destroy_boxed_opaque_existential_1(v175);
      v171 = OUTLINED_FUNCTION_82_12();

      v109 = OUTLINED_FUNCTION_47_26();
      v110(v109);
      v111 = v170;
      v167 = __swift_project_boxed_opaque_existential_1(v170 + 8, v170[11]);
      OUTLINED_FUNCTION_20_49(v111, v111[3]);
      OUTLINED_FUNCTION_13_24();
      dispatch thunk of DeviceState.siriLocale.getter();
      v112 = OUTLINED_FUNCTION_36_29();
      v114 = v113(v112);
      v116 = v115;
      v117 = OUTLINED_FUNCTION_55();
      v168(v117);
      if (v116)
      {
        OUTLINED_FUNCTION_22_38(v114);
      }

      v118 = type metadata accessor for SpeakableString();
      OUTLINED_FUNCTION_65_21(v118);
      App.isFirstParty()();
      OUTLINED_FUNCTION_37();
      OUTLINED_FUNCTION_29_37();
      OUTLINED_FUNCTION_73_12();
      v119();
      OUTLINED_FUNCTION_87_9();

      v120 = &_s16SiriDialogEngine15SpeakableStringVSgMd;
      v121 = &_s16SiriDialogEngine15SpeakableStringVSgMR;
      v122 = v27;
      goto LABEL_98;
  }
}

void specialized SlotTemplating.toAnySlotTemplating()()
{
  v1 = OUTLINED_FUNCTION_19_43();
  v3 = outlined init with copy of CallTypesSlotTemplating(v1, v2);
  v11 = OUTLINED_FUNCTION_14_59(v3, v4, v5, v6, v7, v8, v9, v10, v54, v59, v61, v66, v68, v72, v74);
  outlined init with copy of CallTypesSlotTemplating(v11, v12);
  OUTLINED_FUNCTION_102_0();
  v13 = swift_allocObject();
  OUTLINED_FUNCTION_0_118(v13, v14, v15, v16, v17, v18, v19, v20, v55, v62, v69);
  outlined init with copy of CallTypesSlotTemplating(v21, v22);
  OUTLINED_FUNCTION_102_0();
  v23 = swift_allocObject();
  OUTLINED_FUNCTION_0_118(v23, v24, v25, v26, v27, v28, v29, v30, v56, v63, v70);
  outlined init with copy of CallTypesSlotTemplating(v31, v32);
  OUTLINED_FUNCTION_102_0();
  v33 = swift_allocObject();
  OUTLINED_FUNCTION_1_126(v33, v34, v35, v36, v37, v38, v39, v40, v41, v57, v64, v42);
  OUTLINED_FUNCTION_102_0();
  v43 = swift_allocObject();
  OUTLINED_FUNCTION_2_119(v43, v44, v45, v46, v47, v48, v49, v50, v51, v58, v60, v65, v67, v71, v73, v74, v75, v52);
  *v0 = partial apply for specialized implicit closure #2 in implicit closure #1 in AnySlotTemplating.init<A>(delegate:);
  v0[1] = v13;
  v0[2] = partial apply for specialized implicit closure #4 in implicit closure #3 in AnySlotTemplating.init<A>(delegate:);
  v0[3] = v23;
  v0[4] = partial apply for specialized implicit closure #6 in implicit closure #5 in AnySlotTemplating.init<A>(delegate:);
  v0[5] = v33;
  v0[6] = partial apply for specialized implicit closure #8 in implicit closure #7 in AnySlotTemplating.init<A>(delegate:);
  v0[7] = v53;
}

{
  v1 = OUTLINED_FUNCTION_19_43();
  v3 = outlined init with copy of DateCreatedSlotTemplating(v1, v2);
  v11 = OUTLINED_FUNCTION_14_59(v3, v4, v5, v6, v7, v8, v9, v10, v54, v59, v61, v66, v68, v72, v74);
  outlined init with copy of DateCreatedSlotTemplating(v11, v12);
  OUTLINED_FUNCTION_102_0();
  v13 = swift_allocObject();
  OUTLINED_FUNCTION_0_118(v13, v14, v15, v16, v17, v18, v19, v20, v55, v62, v69);
  outlined init with copy of DateCreatedSlotTemplating(v21, v22);
  OUTLINED_FUNCTION_102_0();
  v23 = swift_allocObject();
  OUTLINED_FUNCTION_0_118(v23, v24, v25, v26, v27, v28, v29, v30, v56, v63, v70);
  outlined init with copy of DateCreatedSlotTemplating(v31, v32);
  OUTLINED_FUNCTION_102_0();
  v33 = swift_allocObject();
  OUTLINED_FUNCTION_1_126(v33, v34, v35, v36, v37, v38, v39, v40, v41, v57, v64, v42);
  OUTLINED_FUNCTION_102_0();
  v43 = swift_allocObject();
  OUTLINED_FUNCTION_2_119(v43, v44, v45, v46, v47, v48, v49, v50, v51, v58, v60, v65, v67, v71, v73, v74, v75, v52);
  *v0 = partial apply for specialized implicit closure #2 in implicit closure #1 in AnySlotTemplating.init<A>(delegate:);
  v0[1] = v13;
  v0[2] = partial apply for specialized implicit closure #4 in implicit closure #3 in AnySlotTemplating.init<A>(delegate:);
  v0[3] = v23;
  v0[4] = partial apply for specialized implicit closure #6 in implicit closure #5 in AnySlotTemplating.init<A>(delegate:);
  v0[5] = v33;
  v0[6] = partial apply for specialized implicit closure #8 in implicit closure #7 in AnySlotTemplating.init<A>(delegate:);
  v0[7] = v53;
}

{
  v1 = OUTLINED_FUNCTION_19_43();
  v3 = outlined init with copy of UnseenSlotTemplating(v1, v2);
  v11 = OUTLINED_FUNCTION_14_59(v3, v4, v5, v6, v7, v8, v9, v10, v54, v59, v61, v66, v68, v72, v74);
  outlined init with copy of UnseenSlotTemplating(v11, v12);
  OUTLINED_FUNCTION_102_0();
  v13 = swift_allocObject();
  OUTLINED_FUNCTION_0_118(v13, v14, v15, v16, v17, v18, v19, v20, v55, v62, v69);
  outlined init with copy of UnseenSlotTemplating(v21, v22);
  OUTLINED_FUNCTION_102_0();
  v23 = swift_allocObject();
  OUTLINED_FUNCTION_0_118(v23, v24, v25, v26, v27, v28, v29, v30, v56, v63, v70);
  outlined init with copy of UnseenSlotTemplating(v31, v32);
  OUTLINED_FUNCTION_102_0();
  v33 = swift_allocObject();
  OUTLINED_FUNCTION_1_126(v33, v34, v35, v36, v37, v38, v39, v40, v41, v57, v64, v42);
  OUTLINED_FUNCTION_102_0();
  v43 = swift_allocObject();
  OUTLINED_FUNCTION_2_119(v43, v44, v45, v46, v47, v48, v49, v50, v51, v58, v60, v65, v67, v71, v73, v74, v75, v52);
  *v0 = partial apply for specialized implicit closure #2 in implicit closure #1 in AnySlotTemplating.init<A>(delegate:);
  v0[1] = v13;
  v0[2] = partial apply for specialized implicit closure #4 in implicit closure #3 in AnySlotTemplating.init<A>(delegate:);
  v0[3] = v23;
  v0[4] = partial apply for specialized implicit closure #6 in implicit closure #5 in AnySlotTemplating.init<A>(delegate:);
  v0[5] = v33;
  v0[6] = partial apply for specialized implicit closure #8 in implicit closure #7 in AnySlotTemplating.init<A>(delegate:);
  v0[7] = v53;
}

{
  v1 = OUTLINED_FUNCTION_21_49();
  v2 = OUTLINED_FUNCTION_34_27(v1, v71);
  OUTLINED_FUNCTION_10_77(v2, v3, v4, v5, v6, v7, v8, v9, v51, v56, v58, v63, v65, v69);
  OUTLINED_FUNCTION_102_0();
  v10 = swift_allocObject();
  OUTLINED_FUNCTION_0_118(v10, v11, v12, v13, v14, v15, v16, v17, v52, v59, v66);
  OUTLINED_FUNCTION_34_27(v18, v19);
  OUTLINED_FUNCTION_102_0();
  v20 = swift_allocObject();
  OUTLINED_FUNCTION_0_118(v20, v21, v22, v23, v24, v25, v26, v27, v53, v60, v67);
  OUTLINED_FUNCTION_34_27(v28, v29);
  OUTLINED_FUNCTION_102_0();
  v30 = swift_allocObject();
  OUTLINED_FUNCTION_1_126(v30, v31, v32, v33, v34, v35, v36, v37, v38, v54, v61, v39);
  OUTLINED_FUNCTION_102_0();
  v40 = swift_allocObject();
  OUTLINED_FUNCTION_2_119(v40, v41, v42, v43, v44, v45, v46, v47, v48, v55, v57, v62, v64, v68, v70, v71[0], v71[1], v49);
  *v0 = partial apply for specialized implicit closure #2 in implicit closure #1 in AnySlotTemplating.init<A>(delegate:);
  v0[1] = v10;
  v0[2] = partial apply for specialized implicit closure #4 in implicit closure #3 in AnySlotTemplating.init<A>(delegate:);
  v0[3] = v20;
  v0[4] = partial apply for specialized implicit closure #6 in implicit closure #5 in AnySlotTemplating.init<A>(delegate:);
  v0[5] = v30;
  v0[6] = partial apply for specialized implicit closure #8 in implicit closure #7 in AnySlotTemplating.init<A>(delegate:);
  v0[7] = v50;
}

{
  v1 = OUTLINED_FUNCTION_21_49();
  v2 = OUTLINED_FUNCTION_34_27(v1, v71);
  OUTLINED_FUNCTION_10_77(v2, v3, v4, v5, v6, v7, v8, v9, v51, v56, v58, v63, v65, v69);
  OUTLINED_FUNCTION_102_0();
  v10 = swift_allocObject();
  OUTLINED_FUNCTION_0_118(v10, v11, v12, v13, v14, v15, v16, v17, v52, v59, v66);
  OUTLINED_FUNCTION_34_27(v18, v19);
  OUTLINED_FUNCTION_102_0();
  v20 = swift_allocObject();
  OUTLINED_FUNCTION_0_118(v20, v21, v22, v23, v24, v25, v26, v27, v53, v60, v67);
  OUTLINED_FUNCTION_34_27(v28, v29);
  OUTLINED_FUNCTION_102_0();
  v30 = swift_allocObject();
  OUTLINED_FUNCTION_1_126(v30, v31, v32, v33, v34, v35, v36, v37, v38, v54, v61, v39);
  OUTLINED_FUNCTION_102_0();
  v40 = swift_allocObject();
  OUTLINED_FUNCTION_2_119(v40, v41, v42, v43, v44, v45, v46, v47, v48, v55, v57, v62, v64, v68, v70, v71[0], v71[1], v49);
  *v0 = partial apply for specialized implicit closure #2 in implicit closure #1 in AnySlotTemplating.init<A>(delegate:);
  v0[1] = v10;
  v0[2] = partial apply for specialized implicit closure #4 in implicit closure #3 in AnySlotTemplating.init<A>(delegate:);
  v0[3] = v20;
  v0[4] = partial apply for specialized implicit closure #6 in implicit closure #5 in AnySlotTemplating.init<A>(delegate:);
  v0[5] = v30;
  v0[6] = partial apply for specialized implicit closure #8 in implicit closure #7 in AnySlotTemplating.init<A>(delegate:);
  v0[7] = v50;
}

{
  v1 = OUTLINED_FUNCTION_21_49();
  v2 = OUTLINED_FUNCTION_34_27(v1, v71);
  OUTLINED_FUNCTION_10_77(v2, v3, v4, v5, v6, v7, v8, v9, v51, v56, v58, v63, v65, v69);
  OUTLINED_FUNCTION_102_0();
  v10 = swift_allocObject();
  OUTLINED_FUNCTION_0_118(v10, v11, v12, v13, v14, v15, v16, v17, v52, v59, v66);
  OUTLINED_FUNCTION_34_27(v18, v19);
  OUTLINED_FUNCTION_102_0();
  v20 = swift_allocObject();
  OUTLINED_FUNCTION_0_118(v20, v21, v22, v23, v24, v25, v26, v27, v53, v60, v67);
  OUTLINED_FUNCTION_34_27(v28, v29);
  OUTLINED_FUNCTION_102_0();
  v30 = swift_allocObject();
  OUTLINED_FUNCTION_1_126(v30, v31, v32, v33, v34, v35, v36, v37, v38, v54, v61, v39);
  OUTLINED_FUNCTION_102_0();
  v40 = swift_allocObject();
  OUTLINED_FUNCTION_2_119(v40, v41, v42, v43, v44, v45, v46, v47, v48, v55, v57, v62, v64, v68, v70, v71[0], v71[1], v49);
  *v0 = partial apply for specialized implicit closure #2 in implicit closure #1 in AnySlotTemplating.init<A>(delegate:);
  v0[1] = v10;
  v0[2] = partial apply for specialized implicit closure #4 in implicit closure #3 in AnySlotTemplating.init<A>(delegate:);
  v0[3] = v20;
  v0[4] = partial apply for specialized implicit closure #6 in implicit closure #5 in AnySlotTemplating.init<A>(delegate:);
  v0[5] = v30;
  v0[6] = partial apply for specialized implicit closure #8 in implicit closure #7 in AnySlotTemplating.init<A>(delegate:);
  v0[7] = v50;
}

{
  v1 = OUTLINED_FUNCTION_21_49();
  v2 = OUTLINED_FUNCTION_34_27(v1, v71);
  OUTLINED_FUNCTION_10_77(v2, v3, v4, v5, v6, v7, v8, v9, v51, v56, v58, v63, v65, v69);
  OUTLINED_FUNCTION_102_0();
  v10 = swift_allocObject();
  OUTLINED_FUNCTION_0_118(v10, v11, v12, v13, v14, v15, v16, v17, v52, v59, v66);
  OUTLINED_FUNCTION_34_27(v18, v19);
  OUTLINED_FUNCTION_102_0();
  v20 = swift_allocObject();
  OUTLINED_FUNCTION_0_118(v20, v21, v22, v23, v24, v25, v26, v27, v53, v60, v67);
  OUTLINED_FUNCTION_34_27(v28, v29);
  OUTLINED_FUNCTION_102_0();
  v30 = swift_allocObject();
  OUTLINED_FUNCTION_1_126(v30, v31, v32, v33, v34, v35, v36, v37, v38, v54, v61, v39);
  OUTLINED_FUNCTION_102_0();
  v40 = swift_allocObject();
  OUTLINED_FUNCTION_2_119(v40, v41, v42, v43, v44, v45, v46, v47, v48, v55, v57, v62, v64, v68, v70, v71[0], v71[1], v49);
  *v0 = partial apply for specialized implicit closure #2 in implicit closure #1 in AnySlotTemplating.init<A>(delegate:);
  v0[1] = v10;
  v0[2] = partial apply for specialized implicit closure #4 in implicit closure #3 in AnySlotTemplating.init<A>(delegate:);
  v0[3] = v20;
  v0[4] = partial apply for specialized implicit closure #6 in implicit closure #5 in AnySlotTemplating.init<A>(delegate:);
  v0[5] = v30;
  v0[6] = partial apply for specialized implicit closure #8 in implicit closure #7 in AnySlotTemplating.init<A>(delegate:);
  v0[7] = v50;
}

{
  v1 = OUTLINED_FUNCTION_19_43();
  v3 = outlined init with copy of CallCapabilitySlotTemplating(v1, v2);
  v11 = OUTLINED_FUNCTION_14_59(v3, v4, v5, v6, v7, v8, v9, v10, v54, v59, v61, v66, v68, v72, v74);
  outlined init with copy of CallCapabilitySlotTemplating(v11, v12);
  OUTLINED_FUNCTION_102_0();
  v13 = swift_allocObject();
  OUTLINED_FUNCTION_0_118(v13, v14, v15, v16, v17, v18, v19, v20, v55, v62, v69);
  outlined init with copy of CallCapabilitySlotTemplating(v21, v22);
  OUTLINED_FUNCTION_102_0();
  v23 = swift_allocObject();
  OUTLINED_FUNCTION_0_118(v23, v24, v25, v26, v27, v28, v29, v30, v56, v63, v70);
  outlined init with copy of CallCapabilitySlotTemplating(v31, v32);
  OUTLINED_FUNCTION_102_0();
  v33 = swift_allocObject();
  OUTLINED_FUNCTION_1_126(v33, v34, v35, v36, v37, v38, v39, v40, v41, v57, v64, v42);
  OUTLINED_FUNCTION_102_0();
  v43 = swift_allocObject();
  OUTLINED_FUNCTION_2_119(v43, v44, v45, v46, v47, v48, v49, v50, v51, v58, v60, v65, v67, v71, v73, v74, v75, v52);
  *v0 = partial apply for specialized implicit closure #2 in implicit closure #1 in AnySlotTemplating.init<A>(delegate:);
  v0[1] = v13;
  v0[2] = partial apply for specialized implicit closure #4 in implicit closure #3 in AnySlotTemplating.init<A>(delegate:);
  v0[3] = v23;
  v0[4] = partial apply for specialized implicit closure #6 in implicit closure #5 in AnySlotTemplating.init<A>(delegate:);
  v0[5] = v33;
  v0[6] = partial apply for specialized implicit closure #8 in implicit closure #7 in AnySlotTemplating.init<A>(delegate:);
  v0[7] = v53;
}

{
  v1 = OUTLINED_FUNCTION_19_43();
  v3 = outlined init with copy of CallRecordToCallBackSlotTemplating(v1, v2);
  v11 = OUTLINED_FUNCTION_14_59(v3, v4, v5, v6, v7, v8, v9, v10, v54, v59, v61, v66, v68, v72, v74);
  outlined init with copy of CallRecordToCallBackSlotTemplating(v11, v12);
  OUTLINED_FUNCTION_102_0();
  v13 = swift_allocObject();
  OUTLINED_FUNCTION_0_118(v13, v14, v15, v16, v17, v18, v19, v20, v55, v62, v69);
  outlined init with copy of CallRecordToCallBackSlotTemplating(v21, v22);
  OUTLINED_FUNCTION_102_0();
  v23 = swift_allocObject();
  OUTLINED_FUNCTION_0_118(v23, v24, v25, v26, v27, v28, v29, v30, v56, v63, v70);
  outlined init with copy of CallRecordToCallBackSlotTemplating(v31, v32);
  OUTLINED_FUNCTION_102_0();
  v33 = swift_allocObject();
  OUTLINED_FUNCTION_1_126(v33, v34, v35, v36, v37, v38, v39, v40, v41, v57, v64, v42);
  OUTLINED_FUNCTION_102_0();
  v43 = swift_allocObject();
  OUTLINED_FUNCTION_2_119(v43, v44, v45, v46, v47, v48, v49, v50, v51, v58, v60, v65, v67, v71, v73, v74, v75, v52);
  *v0 = partial apply for specialized implicit closure #2 in implicit closure #1 in AnySlotTemplating.init<A>(delegate:);
  v0[1] = v13;
  v0[2] = partial apply for specialized implicit closure #4 in implicit closure #3 in AnySlotTemplating.init<A>(delegate:);
  v0[3] = v23;
  v0[4] = partial apply for specialized implicit closure #6 in implicit closure #5 in AnySlotTemplating.init<A>(delegate:);
  v0[5] = v33;
  v0[6] = partial apply for specialized implicit closure #8 in implicit closure #7 in AnySlotTemplating.init<A>(delegate:);
  v0[7] = v53;
}

double specialized SlotTemplating.toAnySlotTemplating()()
{
  v1 = OUTLINED_FUNCTION_21_49();
  outlined init with copy of RecipientSlotTemplating(v1, v59);
  outlined init with copy of RecipientSlotTemplating(v59, &v54);
  OUTLINED_FUNCTION_106();
  v2 = swift_allocObject();
  *&v12 = OUTLINED_FUNCTION_1_126(v2, v3, v4, v5, v6, v7, v8, v9, v10, v54, v55, v11).n128_u64[0];
  OUTLINED_FUNCTION_86_8(v13, v14, v15, v16, v17, v18, v19, v20, v54, *(&v54 + 1), v55, *(&v55 + 1), v56, v57, v58, v12);
  OUTLINED_FUNCTION_106();
  v21 = swift_allocObject();
  *&v31 = OUTLINED_FUNCTION_1_126(v21, v22, v23, v24, v25, v26, v27, v28, v29, v54, v55, v30).n128_u64[0];
  OUTLINED_FUNCTION_86_8(v32, v33, v34, v35, v36, v37, v38, v39, v54, *(&v54 + 1), v55, *(&v55 + 1), v56, v57, v58, v31);
  OUTLINED_FUNCTION_106();
  v40 = swift_allocObject();
  OUTLINED_FUNCTION_1_126(v40, v41, v42, v43, v44, v45, v46, v47, v48, v54, v55, v49);
  *(v50 + 64) = v58;
  OUTLINED_FUNCTION_106();
  v51 = swift_allocObject();
  v52 = v59[1];
  *(v51 + 16) = v59[0];
  *(v51 + 32) = v52;
  result = *&v60;
  *(v51 + 48) = v60;
  *(v51 + 64) = v61;
  *v0 = partial apply for specialized implicit closure #2 in implicit closure #1 in AnySlotTemplating.init<A>(delegate:);
  v0[1] = v2;
  v0[2] = partial apply for specialized implicit closure #4 in implicit closure #3 in AnySlotTemplating.init<A>(delegate:);
  v0[3] = v21;
  v0[4] = partial apply for specialized implicit closure #6 in implicit closure #5 in AnySlotTemplating.init<A>(delegate:);
  v0[5] = v40;
  v0[6] = partial apply for specialized implicit closure #8 in implicit closure #7 in AnySlotTemplating.init<A>(delegate:);
  v0[7] = v51;
  return result;
}

void *specialized SlotTemplating.toAnySlotTemplating()()
{
  v1 = OUTLINED_FUNCTION_21_49();
  OUTLINED_FUNCTION_34_27(v1, v75);
  OUTLINED_FUNCTION_13_59(v75, v2, v3, v4, v5, v6, v7, v8, v56);
  OUTLINED_FUNCTION_50_1();
  v9 = swift_allocObject();
  OUTLINED_FUNCTION_27_40(v9, v10, v11, v12, v13, v14, v15, v16, v57);
  OUTLINED_FUNCTION_13_59(v75, v17, v18, v19, v20, v21, v22, v23, v58);
  OUTLINED_FUNCTION_50_1();
  v24 = swift_allocObject();
  OUTLINED_FUNCTION_27_40(v24, v25, v26, v27, v28, v29, v30, v31, v59);
  OUTLINED_FUNCTION_13_59(v75, v32, v33, v34, v35, v36, v37, v38, v60);
  OUTLINED_FUNCTION_50_1();
  v39 = swift_allocObject();
  OUTLINED_FUNCTION_27_40(v39, v40, v41, v42, v43, v44, v45, v46, v61);
  OUTLINED_FUNCTION_50_1();
  v47 = swift_allocObject();
  result = OUTLINED_FUNCTION_81_9(v47, v48, v49, v50, v51, v52, v53, v54, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74);
  *v0 = partial apply for specialized implicit closure #2 in implicit closure #1 in AnySlotTemplating.init<A>(delegate:);
  v0[1] = v9;
  v0[2] = partial apply for specialized implicit closure #4 in implicit closure #3 in AnySlotTemplating.init<A>(delegate:);
  v0[3] = v24;
  v0[4] = partial apply for specialized implicit closure #6 in implicit closure #5 in AnySlotTemplating.init<A>(delegate:);
  v0[5] = v39;
  v0[6] = partial apply for specialized implicit closure #8 in implicit closure #7 in AnySlotTemplating.init<A>(delegate:);
  v0[7] = &_s27PhoneCallFlowDelegatePlugin22ContactsSlotTemplatingVySo012INStartAudioB6IntentCSo16INIntentResponseCGMR;
  return result;
}

{
  v1 = OUTLINED_FUNCTION_21_49();
  OUTLINED_FUNCTION_34_27(v1, v75);
  OUTLINED_FUNCTION_13_59(v75, v2, v3, v4, v5, v6, v7, v8, v56);
  OUTLINED_FUNCTION_50_1();
  v9 = swift_allocObject();
  OUTLINED_FUNCTION_27_40(v9, v10, v11, v12, v13, v14, v15, v16, v57);
  OUTLINED_FUNCTION_13_59(v75, v17, v18, v19, v20, v21, v22, v23, v58);
  OUTLINED_FUNCTION_50_1();
  v24 = swift_allocObject();
  OUTLINED_FUNCTION_27_40(v24, v25, v26, v27, v28, v29, v30, v31, v59);
  OUTLINED_FUNCTION_13_59(v75, v32, v33, v34, v35, v36, v37, v38, v60);
  OUTLINED_FUNCTION_50_1();
  v39 = swift_allocObject();
  OUTLINED_FUNCTION_27_40(v39, v40, v41, v42, v43, v44, v45, v46, v61);
  OUTLINED_FUNCTION_50_1();
  v47 = swift_allocObject();
  result = OUTLINED_FUNCTION_81_9(v47, v48, v49, v50, v51, v52, v53, v54, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74);
  *v0 = partial apply for specialized implicit closure #2 in implicit closure #1 in AnySlotTemplating.init<A>(delegate:);
  v0[1] = v9;
  v0[2] = partial apply for specialized implicit closure #4 in implicit closure #3 in AnySlotTemplating.init<A>(delegate:);
  v0[3] = v24;
  v0[4] = partial apply for specialized implicit closure #6 in implicit closure #5 in AnySlotTemplating.init<A>(delegate:);
  v0[5] = v39;
  v0[6] = partial apply for specialized implicit closure #8 in implicit closure #7 in AnySlotTemplating.init<A>(delegate:);
  v0[7] = &_s27PhoneCallFlowDelegatePlugin22ContactsSlotTemplatingVySo07INStartB6IntentCSo16INIntentResponseCGMR;
  return result;
}

void *specialized SlotTemplating.toAnySlotTemplating()@<X0>(uint64_t (**a1)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)@<X8>)
{
  outlined init with copy of CarPlayRCHFlowProvider<INStartCallIntent>(v1, __src, &_s27PhoneCallFlowDelegatePlugin22ContactsSlotTemplatingVySo012INStartVideoB6IntentCSo16INIntentResponseCGMd, &_s27PhoneCallFlowDelegatePlugin22ContactsSlotTemplatingVySo012INStartVideoB6IntentCSo16INIntentResponseCGMR);
  outlined init with copy of CarPlayRCHFlowProvider<INStartCallIntent>(__src, v8, &_s27PhoneCallFlowDelegatePlugin22ContactsSlotTemplatingVySo012INStartVideoB6IntentCSo16INIntentResponseCGMd, &_s27PhoneCallFlowDelegatePlugin22ContactsSlotTemplatingVySo012INStartVideoB6IntentCSo16INIntentResponseCGMR);
  v3 = swift_allocObject();
  memcpy((v3 + 16), v8, 0x68uLL);
  outlined init with copy of CarPlayRCHFlowProvider<INStartCallIntent>(__src, v8, &_s27PhoneCallFlowDelegatePlugin22ContactsSlotTemplatingVySo012INStartVideoB6IntentCSo16INIntentResponseCGMd, &_s27PhoneCallFlowDelegatePlugin22ContactsSlotTemplatingVySo012INStartVideoB6IntentCSo16INIntentResponseCGMR);
  v4 = swift_allocObject();
  memcpy((v4 + 16), v8, 0x68uLL);
  outlined init with copy of CarPlayRCHFlowProvider<INStartCallIntent>(__src, v8, &_s27PhoneCallFlowDelegatePlugin22ContactsSlotTemplatingVySo012INStartVideoB6IntentCSo16INIntentResponseCGMd, &_s27PhoneCallFlowDelegatePlugin22ContactsSlotTemplatingVySo012INStartVideoB6IntentCSo16INIntentResponseCGMR);
  v5 = swift_allocObject();
  memcpy((v5 + 16), v8, 0x68uLL);
  v6 = swift_allocObject();
  result = memcpy((v6 + 16), __src, 0x68uLL);
  *a1 = partial apply for specialized implicit closure #2 in implicit closure #1 in AnySlotTemplating.init<A>(delegate:);
  a1[1] = v3;
  a1[2] = partial apply for specialized implicit closure #4 in implicit closure #3 in AnySlotTemplating.init<A>(delegate:);
  a1[3] = v4;
  a1[4] = partial apply for specialized implicit closure #6 in implicit closure #5 in AnySlotTemplating.init<A>(delegate:);
  a1[5] = v5;
  a1[6] = partial apply for specialized implicit closure #8 in implicit closure #7 in AnySlotTemplating.init<A>(delegate:);
  a1[7] = v6;
  return result;
}

uint64_t specialized implicit closure #2 in implicit closure #1 in AnySlotTemplating.init<A>(delegate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *))
{
  v8 = type metadata accessor for PhoneError(0);
  __chkstk_darwin(v8);
  v10 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  __chkstk_darwin(v11);
  v13 = &v18[-v12];
  v18[8] = 1;
  *v10 = a2;
  *(v10 + 1) = a3;
  *(v10 + 2) = 4;
  v10[56] = 1;
  swift_storeEnumTagMultiPayload();
  _s27PhoneCallFlowDelegatePlugin0A5ErrorOACs0F0AAWlTm_12(&lazy protocol witness table cache variable for type PhoneError and conformance PhoneError, type metadata accessor for PhoneError, &protocol conformance descriptor for PhoneError);
  v14 = swift_allocError();
  v16 = v15;

  PhoneError.logged()(v16);
  outlined destroy of PhoneError(v10);
  *v13 = v14;
  swift_storeEnumTagMultiPayload();
  a5(v13);
  return outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v13, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
}

uint64_t specialized implicit closure #4 in implicit closure #3 in AnySlotTemplating.init<A>(delegate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = *(a9 + 40);
  type metadata accessor for PhoneSearchCallHistoryIntent(0);
  v13 = PhoneSearchCallHistoryIntent.__allocating_init(intent:)(a5);
  (*(*v12 + class metadata base offset for SearchCallHistoryCATs + 160))(v13, a7, a8);
}

{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  *&v13 = __chkstk_darwin(v12 - 8).n128_u64[0];
  v15 = aBlock - v14;
  [a5 callTypes];
  v16 = swift_allocObject();
  *(v16 + 16) = _swiftEmptyArrayStorage;
  v17 = (v16 + 16);
  aBlock[4] = partial apply for closure #1 in INCallRecordTypeOptions.INPBStringRepresentation.getter;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned _INPBCallRecordType) -> ();
  aBlock[3] = &block_descriptor_11;
  v18 = _Block_copy(aBlock);

  INCallRecordTypeOptionsEnumerateBackingTypes();
  _Block_release(v18);
  swift_beginAccess();
  v19 = *v17;

  v20 = INSearchCallHistoryIntent.unseen.getter();
  if (v20 == 2 || (v20 & 1) == 0)
  {
    goto LABEL_7;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_10;
  }

  while (1)
  {
    v21 = *(v19 + 16);
    if (v21 >= *(v19 + 24) >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v19 = v27;
    }

    *(v19 + 16) = v21 + 1;
    v22 = v19 + 16 * v21;
    *(v22 + 32) = 0x6E6565736E75;
    *(v22 + 40) = 0xE600000000000000;
LABEL_7:
    if (*(v19 + 16))
    {
      break;
    }

    __break(1u);
LABEL_10:
    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v19 = v26;
  }

  v23 = *(a9 + 40);

  SpeakableString.init(print:speak:)();
  v24 = type metadata accessor for SpeakableString();
  __swift_storeEnumTagSinglePayload(v15, 0, 1, v24);
  (*(*v23 + class metadata base offset for SearchCallHistoryCATs + 64))(v15, *(v19 + 16), 0, a7, a8);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v15, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
}

uint64_t specialized implicit closure #4 in implicit closure #3 in AnySlotTemplating.init<A>(delegate:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v23 = a8;
  v12 = type metadata accessor for Locale();
  v13 = *(v12 - 8);
  *&v14 = __chkstk_darwin(v12).n128_u64[0];
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [a4 itemToConfirm];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
  if (swift_dynamicCast())
  {
    v18 = v24[5];
  }

  else
  {
    v18 = [a5 recipient];
  }

  v19 = *(a9 + 40);
  type metadata accessor for PhonePerson(0);
  static Device.current.getter();
  __swift_project_boxed_opaque_existential_1(v24, v24[3]);
  dispatch thunk of DeviceState.siriLocale.getter();
  __swift_destroy_boxed_opaque_existential_1(v24);
  v20 = static PhonePerson.make(phonePerson:options:locale:)(v18, 0, v16);
  (*(v13 + 8))(v16, v12);
  (*(*v19 + class metadata base offset for SearchCallHistoryCATs + 128))(v20, a7, v23);
}

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

  v19 = *(a9 + 40);
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
  return outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v16, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
}

{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v13);
  OUTLINED_FUNCTION_49_0();
  *&v15 = __chkstk_darwin(v14).n128_u64[0];
  v17 = v32 - v16;
  v18 = [a4 itemToConfirm];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  type metadata accessor for INPreferredCallProvider(0);
  if (swift_dynamicCast())
  {
    v19 = v32[5];
  }

  else
  {
    v19 = [a5 preferredCallProvider];
  }

  v20 = *(a9 + 40);
  if (v19)
  {
    v21 = INPreferredCallProviderGetBackingType();
    switch(v21)
    {
      case 4:
        v22 = @"THIRD_PARTY_PROVIDER";
        break;
      case 3:
        v22 = @"FACETIME_PROVIDER";
        break;
      case 2:
        v22 = @"TELEPHONY_PROVIDER";
        break;
      default:
        v22 = [NSString stringWithFormat:@"(unknown: %i)", v21];
        goto LABEL_14;
    }

    v24 = v22;
LABEL_14:
    v25 = v22;
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    goto LABEL_15;
  }

  v23 = 0x4E574F4E4B4E55;
LABEL_15:
  OUTLINED_FUNCTION_22_38(v23);
  type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_23_3();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v29);
  type metadata accessor for SirikitDeviceState();
  outlined init with copy of SignalProviding(a9, v32);
  v30 = SirikitDeviceState.__allocating_init(from:)();
  (*(*v20 + class metadata base offset for StartCallCATs + 160))(v17, v30, a7, a8);

  return outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v17, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
}

{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v13);
  OUTLINED_FUNCTION_49_0();
  *&v15 = __chkstk_darwin(v14).n128_u64[0];
  v17 = v33 - v16;
  v18 = [a4 itemToConfirm];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  type metadata accessor for INCallDestinationType(0);
  if (swift_dynamicCast())
  {
    v19 = v33[1];
  }

  else
  {
    v19 = [a5 destinationType];
  }

  v20 = *(a9 + 40);
  if (v19)
  {
    BackingType = INCallDestinationTypeGetBackingType();
    switch(BackingType)
    {
      case 1:
        v22 = @"NORMAL_DESTINATION";
        goto LABEL_12;
      case 2:
        v22 = @"EMERGENCY_DESTINATION";
        goto LABEL_12;
      case 3:
        v22 = @"VOICEMAIL_DESTINATION";
        goto LABEL_12;
      case 4:
        v22 = @"REDIAL_DESTINATION";
        goto LABEL_12;
      case 5:
        v22 = @"CALL_BACK_DESTINATION";
LABEL_12:
        v25 = v22;
        break;
      default:
        v22 = [NSString stringWithFormat:@"(unknown: %i)", BackingType];
        break;
    }

    v26 = v22;
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v27;
  }

  else
  {
    v23 = 0xE700000000000000;
    v24 = 0x4E574F4E4B4E55;
  }

  OUTLINED_FUNCTION_94(v24, v23);
  type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_23_3();
  __swift_storeEnumTagSinglePayload(v28, v29, v30, v31);
  (*(*v20 + class metadata base offset for StartCallCATs + 128))(v17, a7, a8);
  return outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v17, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
}

uint64_t specialized implicit closure #4 in implicit closure #3 in AnySlotTemplating.init<A>(delegate:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v42 = a9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  __chkstk_darwin(v12 - 8);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v40 - v16;
  __chkstk_darwin(v18);
  v20 = &v40 - v19;
  v21 = type metadata accessor for Date();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v40 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v26 = __chkstk_darwin(v25).n128_u64[0];
  v28 = &v40 - v27;
  v29 = [a4 itemToConfirm];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INDateComponentsRange, INDateComponentsRange_ptr);
  if (!swift_dynamicCast())
  {
    return (*(**(v42 + 40) + class metadata base offset for SearchCallHistoryCATs + 96))(0, 0, a7, a8);
  }

  v41 = a7;
  v30 = v43;
  v31 = [v43 startDate];
  if (!v31)
  {

    a7 = v41;
    return (*(**(v42 + 40) + class metadata base offset for SearchCallHistoryCATs + 96))(0, 0, a7, a8);
  }

  v32 = v31;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v33 = [v30 endDate];
  v40 = a8;
  if (v33)
  {
    v34 = v33;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v35 = 0;
  }

  else
  {
    v35 = 1;
  }

  __swift_storeEnumTagSinglePayload(v17, v35, 1, v21);
  outlined init with take of OnDeviceCarPlayWithInputFlowStrategy<CarPlayRCHFlowProvider<INStartCallIntent>>(v17, v20, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v37 = *(v42 + 40);
  outlined init with copy of CarPlayRCHFlowProvider<INStartCallIntent>(v20, v14, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  if (__swift_getEnumTagSinglePayload(v14, 1, v21) == 1)
  {
    (*(v22 + 16))(v24, v28, v21);
    if (__swift_getEnumTagSinglePayload(v14, 1, v21) != 1)
    {
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v14, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    }
  }

  else
  {
    (*(v22 + 32))(v24, v14, v21);
  }

  type metadata accessor for DialogCalendar();
  v38 = static DialogCalendar.make(date:)(v24);
  v39 = *(v22 + 8);
  v39(v24, v21);
  (*(*v37 + class metadata base offset for SearchCallHistoryCATs + 96))(v38, 1, v41, v40);

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v20, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  return (v39)(v28, v21);
}

uint64_t specialized implicit closure #4 in implicit closure #3 in AnySlotTemplating.init<A>(delegate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t *))
{
  v10 = type metadata accessor for PhoneError(0);
  __chkstk_darwin(v10);
  v12 = &v20[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  __chkstk_darwin(v13);
  v15 = &v20[-v14];
  v20[8] = 1;
  *v12 = a2;
  *(v12 + 1) = a3;
  *(v12 + 2) = 3;
  v12[56] = 1;
  swift_storeEnumTagMultiPayload();
  _s27PhoneCallFlowDelegatePlugin0A5ErrorOACs0F0AAWlTm_12(&lazy protocol witness table cache variable for type PhoneError and conformance PhoneError, type metadata accessor for PhoneError, &protocol conformance descriptor for PhoneError);
  v16 = swift_allocError();
  v18 = v17;

  PhoneError.logged()(v18);
  outlined destroy of PhoneError(v12);
  *v15 = v16;
  swift_storeEnumTagMultiPayload();
  a7(v15);
  return outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v15, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
}

uint64_t specialized implicit closure #6 in implicit closure #5 in AnySlotTemplating.init<A>(delegate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  __chkstk_darwin(v11 - 8);
  v13 = &v17 - v12;
  v14 = *(a10 + 48);
  v15 = type metadata accessor for SpeakableString();
  __swift_storeEnumTagSinglePayload(v13, 1, 1, v15);
  (*(*v14 + class metadata base offset for StartCallCATs + 288))(v13, a8, a9);
  return outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v13, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
}

uint64_t specialized implicit closure #6 in implicit closure #5 in AnySlotTemplating.init<A>(delegate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t *))
{
  v11 = type metadata accessor for PhoneError(0);
  __chkstk_darwin(v11);
  v13 = &v21[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  __chkstk_darwin(v14);
  v16 = &v21[-v15];
  v21[8] = 1;
  *v13 = a2;
  *(v13 + 1) = a3;
  *(v13 + 2) = 2;
  v13[56] = 1;
  swift_storeEnumTagMultiPayload();
  _s27PhoneCallFlowDelegatePlugin0A5ErrorOACs0F0AAWlTm_12(&lazy protocol witness table cache variable for type PhoneError and conformance PhoneError, type metadata accessor for PhoneError, &protocol conformance descriptor for PhoneError);
  v17 = swift_allocError();
  v19 = v18;

  PhoneError.logged()(v19);
  outlined destroy of PhoneError(v13);
  *v16 = v17;
  swift_storeEnumTagMultiPayload();
  a8(v16);
  return outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v16, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
}

uint64_t specialized implicit closure #8 in implicit closure #7 in AnySlotTemplating.init<A>(delegate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v12 = *(a10 + 40);
  type metadata accessor for PhoneSearchCallHistoryIntent(0);
  v13 = PhoneSearchCallHistoryIntent.__allocating_init(intent:)(a5);
  (*(*v12 + class metadata base offset for SearchCallHistoryCATs + 1088))(v13, a8, a9);
}

uint64_t specialized implicit closure #8 in implicit closure #7 in AnySlotTemplating.init<A>(delegate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = *(a10 + 40);
  v12 = swift_allocObject();
  *(v12 + 16) = a8;
  *(v12 + 24) = a9;
  v13 = *(*v11 + class metadata base offset for StartCallCATs + 1728);

  v13(partial apply for closure #1 in CallRecordToCallBackSlotTemplating.makeParameterValueUnsupportedDialog(app:parameterName:intentResolutionResult:intent:multicardinalValueIndex:_:), v12);
}

uint64_t specialized implicit closure #8 in implicit closure #7 in AnySlotTemplating.init<A>(delegate:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v37 = a1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  __chkstk_darwin(v12 - 8);
  v14 = &v34 - v13;
  v15 = type metadata accessor for Locale();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for SpeakableString();
  v38 = *(v19 - 8);
  v39 = v19;
  __chkstk_darwin(v19);
  v21 = &v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v23 = __chkstk_darwin(v22).n128_u64[0];
  v25 = &v34 - v24;
  v26 = [a4 unsupportedReason];
  if (v26 == &dword_0 + 1)
  {
    return (*(**(a10 + 40) + class metadata base offset for StartCallCATs + 1600))(a8, a9);
  }

  if (v26 == &dword_0 + 2)
  {
    type metadata accessor for AppInfoBuilder();
    swift_initStackObject();
    v35 = a9;
    v36 = a8;
    __swift_project_boxed_opaque_existential_1(a10, *(a10 + 24));
    dispatch thunk of DeviceState.siriLocale.getter();
    AppInfoBuilder.getAppName(_:requestedLocale:)(v37, v18);
    (*(v16 + 8))(v18, v15);
    SpeakableString.init(print:speak:)();
    v31 = *(a10 + 40);
    v33 = v38;
    v32 = v39;
    (*(v38 + 16))(v14, v21, v39);
    __swift_storeEnumTagSinglePayload(v14, 0, 1, v32);
    (*(*v31 + class metadata base offset for StartCallCATs + 1568))(v14, v36, v35);
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v14, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    return (*(v33 + 8))(v21, v32);
  }

  else if (v26 == &dword_0 + 3)
  {
    type metadata accessor for AppInfoBuilder();
    swift_initStackObject();
    v35 = a9;
    v36 = a8;
    __swift_project_boxed_opaque_existential_1(a10, *(a10 + 24));
    dispatch thunk of DeviceState.siriLocale.getter();
    AppInfoBuilder.getAppName(_:requestedLocale:)(v37, v18);
    (*(v16 + 8))(v18, v15);
    SpeakableString.init(print:speak:)();
    v27 = *(a10 + 40);
    v29 = v38;
    v28 = v39;
    (*(v38 + 16))(v14, v25, v39);
    __swift_storeEnumTagSinglePayload(v14, 0, 1, v28);
    (*(*v27 + class metadata base offset for StartCallCATs + 1536))(v14, v36, v35);
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v14, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    return (*(v29 + 8))(v25, v28);
  }

  else
  {
    return (*(**(a10 + 40) + class metadata base offset for StartCallCATs + 1504))(a8, a9);
  }
}

uint64_t specialized implicit closure #8 in implicit closure #7 in AnySlotTemplating.init<A>(delegate:)(int a1, int a2, uint64_t a3, id a4, void *a5, int a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, void (*a11)(void *, void))
{
  v13 = [a4 unsupportedReason];
  v14 = *(a10 + 40);
  switch(v13)
  {
    case 1uLL:
      type metadata accessor for SirikitDeviceState();
      outlined init with copy of SignalProviding(a10, v23);
      v15 = SirikitDeviceState.__allocating_init(from:)();
      (*(*v14 + class metadata base offset for StartCallCATs + 2176))(v15, 0, a8, a9);
      goto LABEL_5;
    case 3uLL:
    case 6uLL:
      v16 = OUTLINED_FUNCTION_55();
      result = v17(v16);
      break;
    default:
      a11(a5, 0);
      v19 = type metadata accessor for SirikitDeviceState();
      OUTLINED_FUNCTION_4_69(v19, v20);
      SirikitDeviceState.__allocating_init(from:)();
      OUTLINED_FUNCTION_52_22();
      v21 = OUTLINED_FUNCTION_18_39();
      v22(v21);

LABEL_5:

      break;
  }

  return result;
}

void StartVideoCallTemplatingService.init(sharedGlobals:catFamily:displayTextCats:phoneCallCommonCats:appInfoBuilder:)()
{
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_29_1();
  __swift_mutable_project_boxed_opaque_existential_1(v0, *(v0 + 24));
  OUTLINED_FUNCTION_30_7();
  __chkstk_darwin(v1);
  OUTLINED_FUNCTION_4();
  v3 = OUTLINED_FUNCTION_28_4(v2);
  v4(v3);
  OUTLINED_FUNCTION_43_29();
  v5 = OUTLINED_FUNCTION_40_0();
  __swift_destroy_boxed_opaque_existential_1(v5);
  OUTLINED_FUNCTION_65();
}

void StartVideoCallTemplatingService.makeIntentHandledDialog(app:intent:intentResponse:_:)()
{
  OUTLINED_FUNCTION_66();
  v1 = v0;
  v55 = v3;
  v56 = v2;
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v8);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v9);
  v57 = &v49 - v10;
  v61 = type metadata accessor for Locale();
  OUTLINED_FUNCTION_7();
  v12 = v11;
  __chkstk_darwin(v13);
  OUTLINED_FUNCTION_4();
  v16 = v15 - v14;
  v53 = v5;
  v17 = outlined bridged method (pb) of @objc INStartVideoCallIntent.contacts.getter(v5);
  v54 = v12;
  if (v17)
  {
    v18 = v17;
    v50 = v1;
    v51 = v7;
    v63[0] = _swiftEmptyArrayStorage;
    v19 = specialized Array.count.getter(v17);
    v20 = 0;
    v59 = v18 & 0xC000000000000001;
    v60 = v19;
    v58 = v18 & 0xFFFFFFFFFFFFFF8;
    v52 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v60 == v20)
      {

        v1 = v50;
        v7 = v51;
        v25 = v52;
        goto LABEL_15;
      }

      if (v59)
      {
        v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v20 >= *(v58 + 16))
        {
          goto LABEL_29;
        }

        v21 = *(v18 + 8 * v20 + 32);
      }

      v22 = v21;
      v23 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      type metadata accessor for PhonePerson(0);
      static Device.current.getter();
      __swift_project_boxed_opaque_existential_1(v62, v62[3]);
      OUTLINED_FUNCTION_45_22();
      dispatch thunk of DeviceState.siriLocale.getter();
      __swift_destroy_boxed_opaque_existential_1(v62);
      v24 = OUTLINED_FUNCTION_84_9();

      (*(v12 + 8))(v16, v61);
      ++v20;
      if (v24)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*(&dword_10 + (v63[0] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v63[0] & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v52 = v63[0];
        v20 = v23;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {
    v25 = _swiftEmptyArrayStorage;
LABEL_15:
    type metadata accessor for PhonePersonList.Builder();
    v26 = swift_allocObject();
    *(v26 + 16) = _swiftEmptyArrayStorage;
    v27 = (v26 + 16);
    swift_beginAccess();
    *v27 = v25;
    type metadata accessor for PhonePersonList();
    swift_allocObject();
    v28 = OUTLINED_FUNCTION_40_0();
    v29 = PhonePersonList.init(builder:)(v28);
    v30 = v53;
    _s27PhoneCallFlowDelegatePlugin0a5StartB6IntentC6intent21isRelationshipRequestAcA07CallingG0_p_SbtcfCTf4enn_nSo012INStartVideobG0C_Tt1g5();
    v59 = v31;
    type metadata accessor for SirikitDeviceState();
    v32 = (v1 + *(*v1 + class metadata base offset for PhoneCallBaseCatTemplatingService + 40));
    outlined init with copy of SignalProviding(v32, v62);
    v60 = v29;

    v58 = SirikitDeviceState.__allocating_init(from:)();
    OUTLINED_FUNCTION_48_27();
    v34 = (v1 + *(v33 + class metadata base offset for PhoneCallBaseCatTemplatingService + 48));
    v35 = v34[3];
    v36 = v34[4];
    __swift_project_boxed_opaque_existential_1(v34, v35);
    __swift_project_boxed_opaque_existential_1(v32, v32[3]);
    OUTLINED_FUNCTION_45_22();
    dispatch thunk of DeviceState.siriLocale.getter();
    v37 = (*(v36 + 16))(v7, v16, v35, v36);
    v39 = v38;
    (*(v54 + 8))(v16, v61);
    v40 = v57;
    if (v39)
    {
      OUTLINED_FUNCTION_94(v37, v39);
      v41 = 0;
    }

    else
    {
      v41 = 1;
    }

    v42 = type metadata accessor for SpeakableString();
    __swift_storeEnumTagSinglePayload(v40, v41, 1, v42);
    v43 = App.isFirstParty()();
    v44 = App.appIdentifier.getter();
    if (v45)
    {
      if (v44 == 0xD000000000000010 && v45 == 0x8000000000458F10)
      {
        v47 = 1;
      }

      else
      {
        v47 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }
    }

    else
    {
      v47 = 0;
    }

    OUTLINED_FUNCTION_37();
    (*(v48 + class metadata base offset for StartCallCATs + 1152))(v59, v60, v58, v40, v43, v47 & 1, 0, v56, v55);

    OUTLINED_FUNCTION_87_9();

    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v40, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_65();
  }
}

void StartVideoCallTemplatingService.makeFailureHandlingIntentDialog(app:intent:intentResponse:_:)()
{
  OUTLINED_FUNCTION_66();
  v1 = v0;
  v40 = v2;
  v41 = v3;
  v39 = v4;
  v37 = v5;
  v38 = type metadata accessor for Locale();
  OUTLINED_FUNCTION_7();
  v36 = v6;
  __chkstk_darwin(v7);
  OUTLINED_FUNCTION_4();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v11);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v12);
  v14 = &v35 - v13;
  OUTLINED_FUNCTION_35_0();
  v16 = (v0 + *(v15 + class metadata base offset for PhoneCallBaseCatTemplatingService + 48));
  v17 = v16[3];
  v18 = v16[4];
  __swift_project_boxed_opaque_existential_1(v16, v17);
  OUTLINED_FUNCTION_48_27();
  v20 = (v0 + *(v19 + class metadata base offset for PhoneCallBaseCatTemplatingService + 40));
  __swift_project_boxed_opaque_existential_1(v20, v20[3]);
  OUTLINED_FUNCTION_61();
  dispatch thunk of DeviceState.siriLocale.getter();
  v21 = (*(v18 + 16))(v37, v10, v17, v18);
  v23 = v22;
  (*(v36 + 8))(v10, v38);
  if (v23)
  {
    OUTLINED_FUNCTION_94(v21, v23);
    v24 = 0;
  }

  else
  {
    v24 = 1;
  }

  v25 = type metadata accessor for SpeakableString();
  __swift_storeEnumTagSinglePayload(v14, v24, 1, v25);
  switch([v39 code])
  {
    case 5uLL:
      OUTLINED_FUNCTION_9_78();
      (*(v26 + class metadata base offset for StartCallCATs + 640))(v14, v40, v41);
      break;
    case 6uLL:
      type metadata accessor for SirikitDeviceState();
      OUTLINED_FUNCTION_48_27();
      v30 = (v1 + *(v29 + class metadata base offset for PhoneCallBaseCatTemplatingService + 72));
      v31 = v30[3];
      v32 = v30[4];
      __swift_project_boxed_opaque_existential_1(v30, v31);
      (*(v32 + 8))(v42, v31, v32);
      SirikitDeviceState.__allocating_init(from:)();
      OUTLINED_FUNCTION_9_78();
      (*(v33 + class metadata base offset for StartCallCATs + 736))();
      goto LABEL_10;
    case 7uLL:
      OUTLINED_FUNCTION_9_78();
      (*(v27 + class metadata base offset for StartCallCATs + 768))(v14, v40, v41);
      break;
    case 8uLL:
      OUTLINED_FUNCTION_9_78();
      (*(v28 + class metadata base offset for StartCallCATs + 832))(v14, v40, v41);
      break;
    default:
      type metadata accessor for SirikitDeviceState();
      outlined init with copy of SignalProviding(v20, v42);
      SirikitDeviceState.__allocating_init(from:)();
      OUTLINED_FUNCTION_37();
      (*(v34 + class metadata base offset for StartCallCATs + 576))();
LABEL_10:

      break;
  }

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v14, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_65();
}

uint64_t StartVideoCallTemplatingService.makeGenericErrorDialog(app:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(v3 + direct field offset for StartVideoCallTemplatingService.catFamily);
  type metadata accessor for SirikitDeviceState();
  OUTLINED_FUNCTION_35_0();
  outlined init with copy of SignalProviding(v3 + *(v7 + class metadata base offset for PhoneCallBaseCatTemplatingService + 40), v10);
  v8 = SirikitDeviceState.__allocating_init(from:)();
  (*(*v6 + class metadata base offset for StartCallCATs + 960))(v8, a2, a3);
}

void StartVideoCallTemplatingService.makeParameterValueUnsupportedDialog(app:parameterName:intentResolutionResult:intent:multicardinalValueIndex:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_66();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v65 = a21;
  v66 = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v28);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v29);
  v31 = v62 - v30;
  v32 = type metadata accessor for Locale();
  OUTLINED_FUNCTION_7();
  v34 = v33;
  __chkstk_darwin(v35);
  OUTLINED_FUNCTION_4();
  v38 = v37 - v36;
  v39 = outlined bridged method (pb) of @objc INStartVideoCallIntent.contacts.getter(v24);
  v63 = v26;
  v64 = v31;
  if (!v39)
  {
    goto LABEL_7;
  }

  v40 = v39;
  if (specialized Array.count.getter(v39) <= 0)
  {

LABEL_7:
    v45 = 0;
    goto LABEL_8;
  }

  v41 = OUTLINED_FUNCTION_41_34();
  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v41, v42, v43);
  if ((v40 & 0xC000000000000001) != 0)
  {
    v44 = OUTLINED_FUNCTION_151();
  }

  else
  {
    v44 = *(v40 + 32);
  }

  v45 = v44;

LABEL_8:
  type metadata accessor for PhonePerson(0);
  static Device.current.getter();
  __swift_project_boxed_opaque_existential_1(v67, v67[3]);
  OUTLINED_FUNCTION_40_0();
  dispatch thunk of DeviceState.siriLocale.getter();
  __swift_destroy_boxed_opaque_existential_1(v67);
  v62[1] = OUTLINED_FUNCTION_84_9();

  v46 = *(v34 + 8);
  v46(v38, v32);
  OUTLINED_FUNCTION_77_13();
  v48 = (v22 + *(v47 + class metadata base offset for PhoneCallBaseCatTemplatingService + 48));
  v49 = v48[3];
  v50 = v48[4];
  __swift_project_boxed_opaque_existential_1(v48, v49);
  OUTLINED_FUNCTION_77_13();
  v52 = *(v51 + class metadata base offset for PhoneCallBaseCatTemplatingService + 40);
  v62[2] = v22;
  __swift_project_boxed_opaque_existential_1((v22 + v52), *(v22 + v52 + 24));
  OUTLINED_FUNCTION_45_22();
  dispatch thunk of DeviceState.siriLocale.getter();
  v53 = (*(v50 + 16))(v63, v38, v49, v50);
  v55 = v54;
  v56 = OUTLINED_FUNCTION_13_24();
  (v46)(v56);
  if (v55)
  {
    v57 = v64;
    OUTLINED_FUNCTION_94(v53, v55);
    v58 = 0;
  }

  else
  {
    v58 = 1;
    v57 = v64;
  }

  v59 = type metadata accessor for SpeakableString();
  __swift_storeEnumTagSinglePayload(v57, v58, 1, v59);

  App.isFirstParty()();
  OUTLINED_FUNCTION_37();
  v60 = OUTLINED_FUNCTION_29_37();
  v61(v60, v57);
  OUTLINED_FUNCTION_87_9();
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v57, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_65();
}

uint64_t StartVideoCallTemplatingService.makeParameterValueDisambiguationDialog(app:parameterName:intentResolutionResult:disambiguationList:deviceIsLocked:intent:_:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  v18._countAndFlagsBits = a2;
  v18._object = a3;
  v19.value = PhoneCallSlotNames.init(rawValue:)(v18).value;
  StartVideoCallTemplatingService.slotTemplating(for:)(v19.value, &v23);
  v20 = (*(*v9 + class metadata base offset for PhoneCallBaseCatTemplatingService + 216))(a5, a8, a9);
  v24(a1, a2, a3, a4, a5, a6, a7, v20, v21);
}

uint64_t StartVideoCallTemplatingService.makeParameterValueConfirmationDialog(app:parameterName:intentResolutionResult:intent:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{

  v14._countAndFlagsBits = OUTLINED_FUNCTION_69();
  v15.value = PhoneCallSlotNames.init(rawValue:)(v14).value;
  StartVideoCallTemplatingService.slotTemplating(for:)(v15.value, &v17);
  v18(a1, a2, a3, a4, a5, 1, a6, a7);
}

uint64_t StartVideoCallTemplatingService.slotTemplating(for:)@<X0>(char a1@<W0>, _OWORD *a2@<X8>)
{
  if (a1 == 4)
  {
    outlined init with copy of SignalProviding(v2 + *(*v2 + class metadata base offset for PhoneCallBaseCatTemplatingService + 40), v20);
    v4 = *(v2 + direct field offset for StartVideoCallTemplatingService.catFamily);

    v5 = DucTemplatingService.locale.getter();
    v7 = v6;
    v8 = type metadata accessor for AppInfoBuilder();
    v9 = swift_allocObject();
    v20[11] = v8;
    v20[12] = &protocol witness table for AppInfoBuilder;
    v20[5] = v4;
    v20[6] = v5;
    v20[7] = v7;
    v20[8] = v9;
    specialized SlotTemplating.toAnySlotTemplating()(v21);
    result = outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v20, &_s27PhoneCallFlowDelegatePlugin22ContactsSlotTemplatingVySo012INStartVideoB6IntentCSo16INIntentResponseCGMd, &_s27PhoneCallFlowDelegatePlugin22ContactsSlotTemplatingVySo012INStartVideoB6IntentCSo16INIntentResponseCGMR);
    v11 = v21[1];
    *a2 = v21[0];
    a2[1] = v11;
    v12 = v21[3];
    a2[2] = v21[2];
    a2[3] = v12;
  }

  else
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static Logger.siriPhone);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_10_0(v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v20[0] = v17;
      *v16 = 136315138;
      *(v16 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000004FLL, 0x8000000000462B20, v20);
      OUTLINED_FUNCTION_57(&dword_0, v18, v19, "%s");
      __swift_destroy_boxed_opaque_existential_1(v17);
      OUTLINED_FUNCTION_26_0(v17);
      OUTLINED_FUNCTION_26_0(v16);
    }

    static SiriKitLifecycle._logCrashToEventBus(_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t StartVideoCallTemplatingService.deinit()
{
  v0 = specialized PhoneCallBaseCatTemplatingService.deinit();

  return v0;
}

uint64_t StartVideoCallTemplatingService.__deallocating_deinit()
{
  specialized PhoneCallBaseCatTemplatingService.deinit();

  return swift_deallocClassInstance();
}

uint64_t outlined bridged method (pb) of @objc INStartVideoCallIntent.contacts.getter(void *a1)
{
  v1 = [a1 contacts];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t specialized StartVideoCallTemplatingService.init(sharedGlobals:catFamily:displayTextCats:phoneCallCommonCats:appInfoBuilder:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v44 = a4;
  v42 = a1;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25DucTemplatingLocalContextVSgMd, &_s11SiriKitFlow25DucTemplatingLocalContextVSgMR);
  __chkstk_darwin(v15 - 8);
  v43 = &v35 - v16;
  v17 = type metadata accessor for Locale();
  v38 = *(v17 - 8);
  v39 = v17;
  __chkstk_darwin(v17);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for CATOption();
  __chkstk_darwin(v20 - 8);
  v54[3] = a7;
  v54[4] = a8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v54);
  (*(*(a7 - 8) + 32))(boxed_opaque_existential_1, a5, a7);
  *(a6 + direct field offset for StartVideoCallTemplatingService.catFamily) = a2;
  v40 = a2;
  v41 = "";
  outlined init with copy of SignalProviding(a1, v51);
  outlined init with copy of SignalProviding(v54, v50);
  type metadata accessor for StartCallCATs(0);

  static CATOption.defaultMode.getter();
  v36 = CATWrapper.__allocating_init(options:globals:)();
  v49[3] = &type metadata for LabelTemplatesProvider;
  v49[4] = &protocol witness table for LabelTemplatesProvider;
  v22 = swift_allocObject();
  v49[0] = v22;
  *(v22 + 16) = 0u;
  *(v22 + 32) = 0u;
  v23 = (a6 + *(*a6 + class metadata base offset for PhoneCallBaseCatTemplatingService + 16));
  *v23 = 0x3D65737561705C1BLL;
  v23[1] = 0xEC0000005C303532;
  v24 = a6 + *(*a6 + class metadata base offset for PhoneCallBaseCatTemplatingService + 56);
  *v24 = 0u;
  *(v24 + 1) = 0u;
  *(v24 + 4) = 0;
  outlined init with copy of SignalProviding(v51, a6 + *(*a6 + class metadata base offset for PhoneCallBaseCatTemplatingService + 72));
  v25 = v52;
  v26 = v53;
  __swift_project_boxed_opaque_existential_1(v51, v52);
  (*(v26 + 8))(&v47, v25, v26);
  v27 = *(*a6 + class metadata base offset for PhoneCallBaseCatTemplatingService + 40);
  outlined init with take of PhoneCallFeatureFlagProviding(&v47, a6 + v27);
  v28 = *(*a6 + class metadata base offset for PhoneCallBaseCatTemplatingService + 24);
  v37 = a3;
  *(a6 + v28) = a3;
  *(a6 + *(*a6 + class metadata base offset for PhoneCallBaseCatTemplatingService + 32)) = v44;
  outlined init with copy of SignalProviding(v50, a6 + *(*a6 + class metadata base offset for PhoneCallBaseCatTemplatingService + 48));
  outlined init with copy of SignalProviding(v49, a6 + *(*a6 + class metadata base offset for PhoneCallBaseCatTemplatingService + 64));
  *(a6 + *(*a6 + class metadata base offset for PhoneCallBaseCatTemplatingService + 80)) = v36;
  outlined init with copy of SignalProviding(a6 + v27, &v47);
  __swift_project_boxed_opaque_existential_1(&v47, v48);

  dispatch thunk of DeviceState.siriLocale.getter();
  v46[0] = Locale.identifier.getter();
  v46[1] = v29;
  v45[0] = 45;
  v45[1] = 0xE100000000000000;
  v46[5] = 95;
  v46[6] = 0xE100000000000000;
  lazy protocol witness table accessor for type String and conformance String();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  (*(v38 + 8))(v19, v39);

  type metadata accessor for INIntentSlotValueType(0);
  _s27PhoneCallFlowDelegatePlugin0A5ErrorOACs0F0AAWlTm_12(&lazy protocol witness table cache variable for type INIntentSlotValueType and conformance INIntentSlotValueType, type metadata accessor for INIntentSlotValueType, &protocol conformance descriptor for INIntentSlotValueType);
  Dictionary.init(dictionaryLiteral:)();
  v30 = v52;
  v31 = v53;
  __swift_project_boxed_opaque_existential_1(v51, v52);
  (*(v31 + 24))(v46, v30, v31);
  outlined init with copy of SignalProviding(a6 + v27, v45);
  v32 = type metadata accessor for DucTemplatingLocalContext();
  __swift_storeEnumTagSinglePayload(v43, 1, 1, v32);
  v33 = DucTemplatingService.init(ducFamily:locale:extensionValueTypeNamesByValueType:aceServiceInvoker:deviceState:localContext:)();

  __swift_destroy_boxed_opaque_existential_1(v42);
  __swift_destroy_boxed_opaque_existential_1(v50);
  __swift_destroy_boxed_opaque_existential_1(v54);
  __swift_destroy_boxed_opaque_existential_1(v49);
  __swift_destroy_boxed_opaque_existential_1(&v47);
  __swift_destroy_boxed_opaque_existential_1(v51);
  return v33;
}

uint64_t type metadata accessor for StartVideoCallTemplatingService(uint64_t a1)
{
  result = type metadata singleton initialization cache for StartVideoCallTemplatingService;
  if (!type metadata singleton initialization cache for StartVideoCallTemplatingService)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t objectdestroyTm_15()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  __swift_destroy_boxed_opaque_existential_1((v0 + 80));
  OUTLINED_FUNCTION_50_1();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t partial apply for specialized implicit closure #4 in implicit closure #3 in AnySlotTemplating.init<A>(delegate:)()
{
  OUTLINED_FUNCTION_8_81();
  return specialized implicit closure #4 in implicit closure #3 in AnySlotTemplating.init<A>(delegate:)(v0, v1, v2, v3, v4, v5, v6, v7);
}

{
  OUTLINED_FUNCTION_8_81();
  return specialized implicit closure #4 in implicit closure #3 in AnySlotTemplating.init<A>(delegate:)();
}

{
  OUTLINED_FUNCTION_8_81();
  return specialized implicit closure #4 in implicit closure #3 in AnySlotTemplating.init<A>(delegate:)(v0, v1, v2, v3, v4, v5, v6, v7, v9);
}

{
  OUTLINED_FUNCTION_8_81();
  return specialized implicit closure #4 in implicit closure #3 in AnySlotTemplating.init<A>(delegate:)(v0, v1, v2, v3, v4, v5, v6);
}

{
  OUTLINED_FUNCTION_8_81();
  return specialized implicit closure #4 in implicit closure #3 in AnySlotTemplating.init<A>(delegate:)();
}

{
  OUTLINED_FUNCTION_8_81();
  return specialized implicit closure #4 in implicit closure #3 in AnySlotTemplating.init<A>(delegate:)(v0, v1, v2, v3, v4, v5, v6, v7, v9);
}

{
  OUTLINED_FUNCTION_8_81();
  return specialized implicit closure #4 in implicit closure #3 in AnySlotTemplating.init<A>(delegate:)(v0, v1, v2, v3, v4, v5, v6, v7, v9);
}

{
  OUTLINED_FUNCTION_8_81();
  return specialized implicit closure #4 in implicit closure #3 in AnySlotTemplating.init<A>(delegate:)(v0, v1, v2, v3, v4, v5, v6, v7, v9);
}

{
  OUTLINED_FUNCTION_8_81();
  return specialized implicit closure #4 in implicit closure #3 in AnySlotTemplating.init<A>(delegate:)(v0, v1, v2, v3, v4, v5, v6, v7, v9);
}

{
  OUTLINED_FUNCTION_8_81();
  return specialized implicit closure #4 in implicit closure #3 in AnySlotTemplating.init<A>(delegate:)(v0, v1, v2, v3, v4, v5, v6, v7, v9);
}

{
  OUTLINED_FUNCTION_8_81();
  return specialized implicit closure #4 in implicit closure #3 in AnySlotTemplating.init<A>(delegate:)(v0, v1, v2, v3, v4, v5, v6, v7, v9);
}

uint64_t partial apply for specialized implicit closure #8 in implicit closure #7 in AnySlotTemplating.init<A>(delegate:)()
{
  OUTLINED_FUNCTION_9_81();
  return specialized implicit closure #8 in implicit closure #7 in AnySlotTemplating.init<A>(delegate:)();
}

{
  OUTLINED_FUNCTION_9_81();
  return specialized implicit closure #8 in implicit closure #7 in AnySlotTemplating.init<A>(delegate:)();
}

{
  OUTLINED_FUNCTION_23_41();
  return specialized implicit closure #8 in implicit closure #7 in AnySlotTemplating.init<A>(delegate:)(v1, v2, v3, v4, v5, v6, v0 & 1, v7, v8, v9, _s27PhoneCallFlowDelegatePlugin0a5StartB6IntentC6intent21isRelationshipRequestAcA07CallingG0_p_SbtcfCTf4enn_nSo07INStartbG0C_Tt1g5);
}

{
  OUTLINED_FUNCTION_9_81();
  return specialized implicit closure #8 in implicit closure #7 in AnySlotTemplating.init<A>(delegate:)(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
}

{
  OUTLINED_FUNCTION_9_81();
  return specialized implicit closure #8 in implicit closure #7 in AnySlotTemplating.init<A>(delegate:)(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
}

{
  OUTLINED_FUNCTION_9_81();
  return specialized implicit closure #8 in implicit closure #7 in AnySlotTemplating.init<A>(delegate:)();
}

{
  OUTLINED_FUNCTION_23_41();
  return specialized implicit closure #8 in implicit closure #7 in AnySlotTemplating.init<A>(delegate:)(v1, v2, v3, v4, v5, v6, v0 & 1, v7, v8, v9, _s27PhoneCallFlowDelegatePlugin0a5StartB6IntentC6intent21isRelationshipRequestAcA07CallingG0_p_SbtcfCTf4enn_nSo012INStartAudiobG0C_Tt1g5);
}

{
  OUTLINED_FUNCTION_9_81();
  return specialized implicit closure #8 in implicit closure #7 in AnySlotTemplating.init<A>(delegate:)(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
}

uint64_t partial apply for specialized implicit closure #2 in implicit closure #1 in AnySlotTemplating.init<A>(delegate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = OUTLINED_FUNCTION_5_90(a1, a2, a3, a4, a5);
  return (*(v6 + class metadata base offset for StartCallCATs + 1312))(v5);
}

{
  v5 = OUTLINED_FUNCTION_5_90(a1, a2, a3, a4, a5);
  return (*(v6 + class metadata base offset for StartCallCATs + 1408))(v5);
}

{
  v5 = OUTLINED_FUNCTION_5_90(a1, a2, a3, a4, a5);
  return (*(v6 + class metadata base offset for StartCallCATs + 1440))(v5);
}

{
  v5 = OUTLINED_FUNCTION_5_90(a1, a2, a3, a4, a5);
  return (*(v6 + class metadata base offset for SearchCallHistoryCATs + 416))(v5);
}

{
  v5 = OUTLINED_FUNCTION_5_90(a1, a2, a3, a4, a5);
  return (*(v6 + class metadata base offset for SearchCallHistoryCATs + 480))(v5);
}

{
  v5 = OUTLINED_FUNCTION_5_90(a1, a2, a3, a4, a5);
  return (*(v6 + class metadata base offset for SearchCallHistoryCATs + 512))(v5);
}

{
  v5 = OUTLINED_FUNCTION_5_90(a1, a2, a3, a4, a5);
  return (*(v6 + class metadata base offset for SearchCallHistoryCATs + 448))(v5);
}

uint64_t partial apply for specialized implicit closure #6 in implicit closure #5 in AnySlotTemplating.init<A>(delegate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = OUTLINED_FUNCTION_3_115(a1, a2, a3, a4, a5, a6, a7, a8);
  return (*(v9 + class metadata base offset for StartCallCATs + 256))(v8);
}

{
  return partial apply for specialized implicit closure #6 in implicit closure #5 in AnySlotTemplating.init<A>(delegate:)(a1, a2, a3, a4, a5, a6, a7, a8);
}

{
  v8 = OUTLINED_FUNCTION_3_115(a1, a2, a3, a4, a5, a6, a7, a8);
  return (*(v9 + class metadata base offset for StartCallCATs + 480))(v8);
}

{
  return partial apply for specialized implicit closure #6 in implicit closure #5 in AnySlotTemplating.init<A>(delegate:)(a1, a2, a3, a4, a5, a6, a7, a8);
}

{
  v8 = OUTLINED_FUNCTION_3_115(a1, a2, a3, a4, a5, a6, a7, a8);
  return (*(v9 + class metadata base offset for StartCallCATs + 512))(v8);
}

{
  return partial apply for specialized implicit closure #6 in implicit closure #5 in AnySlotTemplating.init<A>(delegate:)(a1, a2, a3, a4, a5, a6, a7, a8);
}

{
  v8 = OUTLINED_FUNCTION_3_115(a1, a2, a3, a4, a5, a6, a7, a8);
  return (*(v9 + class metadata base offset for SearchCallHistoryCATs + 192))(v8);
}

{
  return partial apply for specialized implicit closure #6 in implicit closure #5 in AnySlotTemplating.init<A>(delegate:)(a1, a2, a3, a4, a5, a6, a7, a8);
}

{
  return partial apply for specialized implicit closure #6 in implicit closure #5 in AnySlotTemplating.init<A>(delegate:)(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t partial apply for specialized implicit closure #6 in implicit closure #5 in AnySlotTemplating.init<A>(delegate:)()
{
  OUTLINED_FUNCTION_23_41();
  return specialized implicit closure #6 in implicit closure #5 in AnySlotTemplating.init<A>(delegate:)(v0, v1, v2, v3, v4, v5, v6, v7);
}

{
  OUTLINED_FUNCTION_23_41();
  return specialized implicit closure #6 in implicit closure #5 in AnySlotTemplating.init<A>(delegate:)(v0, v1, v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t partial apply for specialized implicit closure #8 in implicit closure #7 in AnySlotTemplating.init<A>(delegate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  return partial apply for specialized implicit closure #8 in implicit closure #7 in AnySlotTemplating.init<A>(delegate:)(a1, a2, a3, a4, a5, a6, a7, a8);
}

{
  v8 = OUTLINED_FUNCTION_3_115(a1, a2, a3, a4, a5, a6, a7, a8);
  return (*(v9 + class metadata base offset for StartCallCATs + 1920))(v8);
}

{
  v8 = OUTLINED_FUNCTION_3_115(a1, a2, a3, a4, a5, a6, a7, a8);
  return (*(v9 + class metadata base offset for SearchCallHistoryCATs + 960))(v8);
}

{
  v8 = OUTLINED_FUNCTION_3_115(a1, a2, a3, a4, a5, a6, a7, a8);
  return (*(v9 + class metadata base offset for SearchCallHistoryCATs + 1024))(v8);
}

{
  v8 = OUTLINED_FUNCTION_3_115(a1, a2, a3, a4, a5, a6, a7, a8);
  return (*(v9 + class metadata base offset for SearchCallHistoryCATs + 992))(v8);
}

{
  return partial apply for specialized implicit closure #8 in implicit closure #7 in AnySlotTemplating.init<A>(delegate:)(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t objectdestroy_125Tm()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  OUTLINED_FUNCTION_106();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t _s27PhoneCallFlowDelegatePlugin0A5ErrorOACs0F0AAWlTm_12(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_37_29(uint64_t result)
{
  *(v2 - 160) = result;
  *(v2 - 192) = v1 & 0xFFFFFFFFFFFFFF8;
  *(v2 - 184) = v1 & 0xC000000000000001;
  return result;
}

uint64_t OUTLINED_FUNCTION_39_28(uint64_t result)
{
  *(v2 - 192) = v1 & 0xC000000000000001;
  *(v2 - 184) = result;
  *(v2 - 200) = v1 & 0xFFFFFFFFFFFFFF8;
  return result;
}

uint64_t OUTLINED_FUNCTION_65_21(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(v2, v1, 1, a1);
}

void *OUTLINED_FUNCTION_81_9(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va1, a21);
  va_start(__srca, a21);
  __src = va_arg(va1, void);
  v26 = va_arg(va1, void);
  v27 = va_arg(va1, void);
  v28 = va_arg(va1, void);
  v29 = va_arg(va1, void);
  v30 = va_arg(va1, void);
  v31 = va_arg(va1, void);
  v32 = va_arg(va1, void);
  v33 = va_arg(va1, void);
  v34 = va_arg(va1, void);
  v35 = va_arg(va1, void);
  v36 = va_arg(va1, void);
  v37 = va_arg(va1, void);
  v22 = (a1 + 16);

  return memcpy(v22, __srca, 0x68uLL);
}

uint64_t OUTLINED_FUNCTION_82_12()
{

  return static PhonePerson.make(phonePerson:options:locale:)(v1, 0, v0);
}

uint64_t OUTLINED_FUNCTION_84_9()
{

  return static PhonePerson.make(phonePerson:options:locale:)(v1, 0, v0);
}

uint64_t OUTLINED_FUNCTION_86_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  *(a1 + 64) = a15;

  return outlined init with copy of RecipientSlotTemplating(va, &a9);
}

uint64_t OUTLINED_FUNCTION_88_5()
{

  return specialized _ArrayBuffer._getElementSlowPath(_:)();
}

uint64_t OUTLINED_FUNCTION_89_7(uint64_t a1, uint64_t a2)
{

  return specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, a2, v2);
}

uint64_t specialized RangeReplaceableCollection.filter(_:)(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3, unint64_t a4)
{
  v24 = a2;
  v22 = 0;
  v23 = 0xE000000000000000;
  if ((a4 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a4) & 0xF;
  }

  else
  {
    v6 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (v6)
  {
    v9 = 0;
    v19 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v20 = a4 & 0xFFFFFFFFFFFFFFLL;
    while (1)
    {
      if ((a4 & 0x1000000000000000) != 0)
      {
        v11 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
        v15 = v14;
        goto LABEL_15;
      }

      if ((a4 & 0x2000000000000000) == 0)
      {
        break;
      }

      v21[0] = a3;
      v21[1] = v20;
      v11 = *(v21 + v9);
      if ((*(v21 + v9) & 0x80000000) == 0)
      {
        goto LABEL_14;
      }

      OUTLINED_FUNCTION_37_1();
      switch(v17)
      {
        case 1:
LABEL_21:
          v11 = v12[1] & 0x3F | ((v11 & 0x1F) << 6);
          v15 = 2;
          break;
        case 2:
LABEL_22:
          v11 = ((v11 & 0xF) << 12) | ((v12[1] & 0x3F) << 6) | v12[2] & 0x3F;
          v15 = 3;
          break;
        case 3:
LABEL_23:
          v11 = ((v11 & 0xF) << 18) | ((v12[1] & 0x3F) << 12) | ((v12[2] & 0x3F) << 6) | v12[3] & 0x3F;
          v15 = 4;
          break;
        default:
          goto LABEL_14;
      }

LABEL_15:
      LODWORD(v21[0]) = v11;
      v16 = a1(v21);
      if (v4)
      {
      }

      if (v16)
      {
        String.UnicodeScalarView.append(_:)();
      }

      v9 += v15;
      if (v9 >= v6)
      {

        return v22;
      }
    }

    v10 = v19;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v10 = _StringObject.sharedUTF8.getter();
    }

    v11 = *(v10 + v9);
    if (*(v10 + v9) < 0)
    {
      OUTLINED_FUNCTION_37_1();
      switch(v13)
      {
        case 1:
          goto LABEL_21;
        case 2:
          goto LABEL_22;
        case 3:
          goto LABEL_23;
        default:
          break;
      }
    }

LABEL_14:
    v15 = 1;
    goto LABEL_15;
  }

  return 0;
}

Swift::String __swiftcall String.firstLetterCapitalized()()
{
  v2 = String.firstLetterCapitalized()(v0, v1, &Substring.uppercased());
  result._object = v3;
  result._countAndFlagsBits = v2;
  return result;
}

Swift::String __swiftcall String.firstLetterLowercased()()
{
  v2 = String.firstLetterCapitalized()(v0, v1, &Substring.lowercased());
  result._object = v3;
  result._countAndFlagsBits = v2;
  return result;
}

uint64_t String.firstLetterCapitalized()(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{

  v4 = specialized Collection.prefix(_:)(1);
  v5 = a3(v4);

  specialized Collection.dropFirst(_:)(1uLL);
  lazy protocol witness table accessor for type Substring and conformance Substring();

  String.append<A>(contentsOf:)();

  return v5;
}

uint64_t String.remove(characters:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6[2] = a1;

  return specialized RangeReplaceableCollection.filter(_:)(_sSS27PhoneCallFlowDelegatePluginE6remove10charactersSS10Foundation12CharacterSetV_tFSbs7UnicodeO6ScalarVXEfU_TA_0, v6, a2, a3);
}

BOOL String.isPhoneNumber.getter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CharacterSet();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v21 - v9;
  static CharacterSet.decimalDigits.getter();
  v11._countAndFlagsBits = 757671979;
  v11._object = 0xE400000000000000;
  CharacterSet.insert(charactersIn:)(v11);
  v12 = objc_opt_self();
  v13 = [v12 controlCharacterSet];
  static CharacterSet._unconditionallyBridgeFromObjectiveC(_:)();

  CharacterSet.formUnion(_:)();
  v14 = *(v5 + 8);
  v14(v7, v4);
  v15 = [v12 whitespaceAndNewlineCharacterSet];
  static CharacterSet._unconditionallyBridgeFromObjectiveC(_:)();

  CharacterSet.formUnion(_:)();
  v14(v7, v4);
  v21[0] = a1;
  v21[1] = a2;
  lazy protocol witness table accessor for type String and conformance String();
  v21[0] = StringProtocol.components(separatedBy:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v16 = BidirectionalCollection<>.joined(separator:)();
  v18 = v17;

  v14(v10, v4);

  v19 = HIBYTE(v18) & 0xF;
  if ((v18 & 0x2000000000000000) == 0)
  {
    v19 = v16 & 0xFFFFFFFFFFFFLL;
  }

  return v19 == 0;
}

uint64_t String.lowercasedWithFirstUppercased.getter()
{
  String.lowercased()();

  specialized Collection.prefix(_:)(1);
  countAndFlagsBits = Substring.uppercased()()._countAndFlagsBits;

  specialized Collection.dropFirst(_:)(1uLL);
  lazy protocol witness table accessor for type Substring and conformance Substring();

  String.append<A>(contentsOf:)();

  return countAndFlagsBits;
}

PhoneCallFlowDelegatePlugin::SuggestionsCATs::Properties_optional __swiftcall SuggestionsCATs.Properties.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SuggestionsCATs.Properties.init(rawValue:), v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t SuggestionsCATsSimple.Properties.rawValue.getter(char a1)
{
  result = 0xD00000000000001FLL;
  if (a1)
  {
    if (a1 == 1)
    {
      return 0xD000000000000021;
    }

    else
    {
      return 0xD000000000000022;
    }
  }

  return result;
}

PhoneCallFlowDelegatePlugin::SuggestionsCATs::Properties_optional protocol witness for RawRepresentable.init(rawValue:) in conformance SuggestionsCATs.Properties@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::SuggestionsCATs::Properties_optional *a2@<X8>)
{
  result.value = SuggestionsCATs.Properties.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance SuggestionsCATs.Properties@<X0>(unint64_t *a1@<X8>)
{
  result = SuggestionsCATsSimple.Properties.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void SuggestionsCATs.phoneCall_StartCall(name:hasReference:thirdPartyAppName:completion:)()
{
  OUTLINED_FUNCTION_66();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v7 = OUTLINED_FUNCTION_21(v6);
  __chkstk_darwin(v7);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v12 = &v20[-v11];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v14 = OUTLINED_FUNCTION_47(v13);
  OUTLINED_FUNCTION_1_127(v14, xmmword_426980);
  outlined init with copy of SpeakableString?(v5, v12, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v15 = type metadata accessor for SpeakableString();
  if (__swift_getEnumTagSinglePayload(v12, 1, v15) == 1)
  {
    outlined destroy of SpeakableString?(v12, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_2();
  }

  else
  {
    *(v14 + 72) = v15;
    __swift_allocate_boxed_opaque_existential_1((v14 + 48));
    OUTLINED_FUNCTION_40();
    (*(v16 + 32))();
  }

  OUTLINED_FUNCTION_13_60();
  *(v14 + 80) = v17;
  *(v14 + 88) = v18;
  *(v14 + 96) = v3 & 1;
  *(v14 + 120) = &type metadata for Bool;
  *(v14 + 128) = 0xD000000000000011;
  *(v14 + 136) = 0x8000000000462BB0;
  outlined init with copy of SpeakableString?(v1, v9, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (__swift_getEnumTagSinglePayload(v9, 1, v15) == 1)
  {
    outlined destroy of SpeakableString?(v9, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v14 + 144) = 0u;
    *(v14 + 160) = 0u;
  }

  else
  {
    *(v14 + 168) = v15;
    __swift_allocate_boxed_opaque_existential_1((v14 + 144));
    OUTLINED_FUNCTION_40();
    (*(v19 + 32))();
  }

  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();

  OUTLINED_FUNCTION_65();
}

uint64_t SuggestionsCATs.phoneCall_StartCall(name:hasReference:thirdPartyAppName:)()
{
  OUTLINED_FUNCTION_15();
  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  *(v1 + 88) = v3;
  *(v1 + 16) = v4;
  *(v1 + 24) = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v6);
  *(v1 + 48) = swift_task_alloc();
  *(v1 + 56) = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v7, v8, v9);
}

{
  OUTLINED_FUNCTION_23_0();
  v1 = v0[3];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_47(v2);
  v0[8] = v3;
  v4 = OUTLINED_FUNCTION_1_127(v3, xmmword_426980);
  OUTLINED_FUNCTION_54_2(v4, v5, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v6 = type metadata accessor for SpeakableString();
  if (OUTLINED_FUNCTION_58(v6) == 1)
  {
    outlined destroy of SpeakableString?(v0[7], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_2();
  }

  else
  {
    OUTLINED_FUNCTION_43_2();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_16_0();
    v7();
  }

  v8 = v0[6];
  OUTLINED_FUNCTION_0_119();
  *(v3 + 80) = v9;
  *(v3 + 88) = v10;
  *(v3 + 96) = v11;
  OUTLINED_FUNCTION_18_40("thirdPartyAppName");
  outlined init with copy of SpeakableString?(v12, v8, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (__swift_getEnumTagSinglePayload(v8, 1, v1) == 1)
  {
    outlined destroy of SpeakableString?(v0[6], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v3 + 144) = 0u;
    *(v3 + 160) = 0u;
  }

  else
  {
    *(v3 + 168) = v1;
    __swift_allocate_boxed_opaque_existential_1((v3 + 144));
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_16_0();
    v13();
  }

  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v19 = v14;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[9] = v15;
  *v15 = v16;
  v15[1] = SuggestionsCATs.phoneCall_StartCall(name:hasReference:thirdPartyAppName:);
  v17 = v0[2];

  return v19(v17, 0xD00000000000001FLL, 0x8000000000456620, v3);
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
  *(v3 + 80) = v0;

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
  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  *(v1 + 80) = v3;
  *(v1 + 16) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v5);
  *(v1 + 40) = swift_task_alloc();
  *(v1 + 48) = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_23_0();
  v1 = v0[2];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_47(v2);
  v0[7] = v3;
  v4 = OUTLINED_FUNCTION_1_127(v3, xmmword_426980);
  OUTLINED_FUNCTION_54_2(v4, v5, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v6 = type metadata accessor for SpeakableString();
  if (OUTLINED_FUNCTION_58(v6) == 1)
  {
    outlined destroy of SpeakableString?(v0[6], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_2();
  }

  else
  {
    OUTLINED_FUNCTION_43_2();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_16_0();
    v7();
  }

  v8 = v0[5];
  OUTLINED_FUNCTION_0_119();
  *(v3 + 80) = v9;
  *(v3 + 88) = v10;
  *(v3 + 96) = v11;
  OUTLINED_FUNCTION_18_40("thirdPartyAppName");
  outlined init with copy of SpeakableString?(v12, v8, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (__swift_getEnumTagSinglePayload(v8, 1, v1) == 1)
  {
    outlined destroy of SpeakableString?(v0[5], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v3 + 144) = 0u;
    *(v3 + 160) = 0u;
  }

  else
  {
    *(v3 + 168) = v1;
    __swift_allocate_boxed_opaque_existential_1((v3 + 144));
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_16_0();
    v13();
  }

  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  v18 = v14;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[8] = v15;
  *v15 = v16;
  v15[1] = SuggestionsCATs.phoneCall_StartCall(name:hasReference:thirdPartyAppName:);

  return v18(0xD00000000000001FLL, 0x8000000000456620, v3);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_13_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v6 = v5;
  *(v3 + 72) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_66_0();

    return _swift_task_switch(v7, v8, v9);
  }

  else
  {

    v10 = OUTLINED_FUNCTION_49();

    return v11(v10);
  }
}

{
  OUTLINED_FUNCTION_15();

  OUTLINED_FUNCTION_11();

  return v0();
}

void SuggestionsCATs.phoneCall_StartCall(name:hasReference:thirdPartyAppName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_66();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v29 = OUTLINED_FUNCTION_21(v28);
  __chkstk_darwin(v29);
  v31 = &a9 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v34 = &a9 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v36 = OUTLINED_FUNCTION_47(v35);
  OUTLINED_FUNCTION_1_127(v36, xmmword_426980);
  outlined init with copy of SpeakableString?(v27, v34, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v37 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_46_16(v34);
  if (v38)
  {
    outlined destroy of SpeakableString?(v34, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v36 + 48) = 0u;
    *(v36 + 64) = 0u;
  }

  else
  {
    *(v36 + 72) = v37;
    __swift_allocate_boxed_opaque_existential_1((v36 + 48));
    OUTLINED_FUNCTION_40();
    (*(v39 + 32))();
  }

  OUTLINED_FUNCTION_13_60();
  *(v36 + 80) = v40;
  *(v36 + 88) = v41;
  *(v36 + 96) = v25 & 1;
  *(v36 + 120) = &type metadata for Bool;
  *(v36 + 128) = 0xD000000000000011;
  *(v36 + 136) = 0x8000000000462BB0;
  outlined init with copy of SpeakableString?(v23, v31, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_46_16(v31);
  if (v38)
  {
    outlined destroy of SpeakableString?(v31, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v36 + 144) = 0u;
    *(v36 + 160) = 0u;
  }

  else
  {
    *(v36 + 168) = v37;
    __swift_allocate_boxed_opaque_existential_1((v36 + 144));
    OUTLINED_FUNCTION_40();
    (*(v42 + 32))();
  }

  dispatch thunk of CATWrapper.execute(catId:parameters:)();

  OUTLINED_FUNCTION_65();
}

void SuggestionsCATs.phoneCall_StartFTCall(name:hasReference:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_66();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v27 = OUTLINED_FUNCTION_21(v26);
  __chkstk_darwin(v27);
  v29 = &a9 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v31 = OUTLINED_FUNCTION_45_0(v30);
  OUTLINED_FUNCTION_1_127(v31, xmmword_424FF0);
  outlined init with copy of SpeakableString?(v25, v29, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v32 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_46_16(v29);
  if (v33)
  {
    outlined destroy of SpeakableString?(v29, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_2();
  }

  else
  {
    v31[4].n128_u64[1] = v32;
    __swift_allocate_boxed_opaque_existential_1(&v31[3]);
    OUTLINED_FUNCTION_40();
    (*(v34 + 32))();
  }

  OUTLINED_FUNCTION_0_119();
  v31[5].n128_u64[0] = v35;
  v31[5].n128_u64[1] = v36;
  v31[7].n128_u64[1] = &type metadata for Bool;
  v31[6].n128_u8[0] = v23 & 1;
  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();

  OUTLINED_FUNCTION_65();
}

uint64_t SuggestionsCATs.phoneCall_StartFTCall(name:hasReference:)()
{
  OUTLINED_FUNCTION_15();
  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  *(v1 + 72) = v3;
  *(v1 + 16) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v5);
  *(v1 + 40) = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_23_0();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = OUTLINED_FUNCTION_45_0(v1);
  v0[6] = v2;
  v3 = OUTLINED_FUNCTION_1_127(v2, xmmword_424FF0);
  OUTLINED_FUNCTION_54_2(v3, v4, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v5 = type metadata accessor for SpeakableString();
  if (OUTLINED_FUNCTION_58(v5) == 1)
  {
    outlined destroy of SpeakableString?(v0[5], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_2();
  }

  else
  {
    OUTLINED_FUNCTION_43_2();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_16_0();
    v6();
  }

  OUTLINED_FUNCTION_0_119();
  v2[5].n128_u64[0] = v7;
  v2[5].n128_u64[1] = v8;
  v2[7].n128_u64[1] = &type metadata for Bool;
  v2[6].n128_u8[0] = v9;
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v15 = v10;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[7] = v11;
  *v11 = v12;
  v11[1] = SuggestionsCATs.phoneCall_StartFTCall(name:hasReference:);
  v13 = v0[2];

  return v15(v13, 0xD000000000000021, 0x8000000000456640, v2);
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
  *(v1 + 64) = v2;
  *(v1 + 16) = v3;
  *(v1 + 24) = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v4);
  *(v1 + 32) = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v5, v6, v7);
}

{
  OUTLINED_FUNCTION_23_0();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = OUTLINED_FUNCTION_45_0(v1);
  v0[5] = v2;
  v3 = OUTLINED_FUNCTION_1_127(v2, xmmword_424FF0);
  OUTLINED_FUNCTION_54_2(v3, v4, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v5 = type metadata accessor for SpeakableString();
  if (OUTLINED_FUNCTION_58(v5) == 1)
  {
    outlined destroy of SpeakableString?(v0[4], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_2();
  }

  else
  {
    OUTLINED_FUNCTION_43_2();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_16_0();
    v6();
  }

  OUTLINED_FUNCTION_0_119();
  v2[5].n128_u64[0] = v7;
  v2[5].n128_u64[1] = v8;
  v2[7].n128_u64[1] = &type metadata for Bool;
  v2[6].n128_u8[0] = v9;
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  v13 = v10;
  v11 = swift_task_alloc();
  v0[6] = v11;
  *v11 = v0;
  v11[1] = SuggestionsCATs.phoneCall_StartFTCall(name:hasReference:);

  return v13(0xD000000000000021, 0x8000000000456640, v2);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_13_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v6 = v5;
  *(v3 + 56) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_66_0();

    return _swift_task_switch(v7, v8, v9);
  }

  else
  {

    v10 = OUTLINED_FUNCTION_49();

    return v11(v10);
  }
}

uint64_t SuggestionsCATs.phoneCall_StartFTCall(name:hasReference:)(uint64_t a1, char a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v5 = OUTLINED_FUNCTION_21(v4);
  __chkstk_darwin(v5);
  v7 = &v15 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v9 = OUTLINED_FUNCTION_45_0(v8);
  OUTLINED_FUNCTION_1_127(v9, xmmword_424FF0);
  outlined init with copy of SpeakableString?(a1, v7, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v10 = type metadata accessor for SpeakableString();
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    outlined destroy of SpeakableString?(v7, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v9 + 48) = 0u;
    *(v9 + 64) = 0u;
  }

  else
  {
    *(v9 + 72) = v10;
    __swift_allocate_boxed_opaque_existential_1((v9 + 48));
    OUTLINED_FUNCTION_40();
    (*(v11 + 32))();
  }

  OUTLINED_FUNCTION_0_119();
  *(v9 + 80) = v12;
  *(v9 + 88) = v13;
  *(v9 + 120) = &type metadata for Bool;
  *(v9 + 96) = a2 & 1;
  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t SuggestionsCATs.phoneCall_StartGFTCall()()
{
  OUTLINED_FUNCTION_27();
  v2 = v1;
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v7 = v3;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 16) = v4;
  *v4 = v5;
  v4[1] = closure #2 in ActionableCallControlFlow.execute();

  return v7(v2, 0xD000000000000022, 0x8000000000456670, _swiftEmptyArrayStorage);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  v4 = v1;
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = AddCallParticipantCATs.errorNoTargetCall();

  return v4(0xD000000000000022, 0x8000000000456670, _swiftEmptyArrayStorage);
}

{
  return dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

void SuggestionsCATs.init(templateDir:options:globals:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_66();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v26 = type metadata accessor for CATOption();
  v27 = *(v26 - 8);
  __chkstk_darwin(v26);
  v29 = &a9 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v31 = OUTLINED_FUNCTION_21(v30);
  __chkstk_darwin(v31);
  outlined init with copy of SpeakableString?(v25, &a9 - v32, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(v27 + 16))(v29, v23, v26);
  CATWrapper.init(templateDir:options:globals:)();
  (*(v27 + 8))(v23, v26);
  outlined destroy of SpeakableString?(v25, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_65();
}

unint64_t lazy protocol witness table accessor for type SuggestionsCATs.Properties and conformance SuggestionsCATs.Properties()
{
  result = lazy protocol witness table cache variable for type SuggestionsCATs.Properties and conformance SuggestionsCATs.Properties;
  if (!lazy protocol witness table cache variable for type SuggestionsCATs.Properties and conformance SuggestionsCATs.Properties)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SuggestionsCATs.Properties and conformance SuggestionsCATs.Properties);
  }

  return result;
}

uint64_t type metadata accessor for SuggestionsCATs(uint64_t a1)
{
  result = type metadata singleton initialization cache for SuggestionsCATs;
  if (!type metadata singleton initialization cache for SuggestionsCATs)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SuggestionsCATs.Properties(_BYTE *result, unsigned int a2, unsigned int a3)
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

PhoneCallFlowDelegatePlugin::SuggestionsCATsSimple::Properties_optional __swiftcall SuggestionsCATsSimple.Properties.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_38();
  v3._object = v1;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SuggestionsCATsSimple.Properties.init(rawValue:), v3);
  OUTLINED_FUNCTION_33_2();
  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

PhoneCallFlowDelegatePlugin::SuggestionsCATsSimple::Properties_optional protocol witness for RawRepresentable.init(rawValue:) in conformance SuggestionsCATsSimple.Properties@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::SuggestionsCATsSimple::Properties_optional *a2@<X8>)
{
  result.value = SuggestionsCATsSimple.Properties.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t SuggestionsCATsSimple.phoneCall_StartCall(name:hasReference:thirdPartyAppName:)()
{
  OUTLINED_FUNCTION_15();
  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  *(v1 + 72) = v3;
  *(v1 + 16) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v5);
  *(v1 + 40) = OUTLINED_FUNCTION_45();
  v6 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v6, v7, v8);
}

{
  v1 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = swift_allocObject();
  v0[6] = v2;
  v3 = OUTLINED_FUNCTION_1_127(v2, xmmword_426980);
  OUTLINED_FUNCTION_48_1(v3, v4, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v5 = type metadata accessor for SpeakableString();
  if (OUTLINED_FUNCTION_58(v5) == 1)
  {
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v0[5], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_2();
  }

  else
  {
    OUTLINED_FUNCTION_43_2();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_16_0();
    v6();
  }

  OUTLINED_FUNCTION_0_120();
  v2[6].n128_u8[0] = v7;
  v8 = OUTLINED_FUNCTION_13_61("thirdPartyAppName");
  if (v1)
  {
    v8 = type metadata accessor for SirikitApp();
  }

  else
  {
    v2[9].n128_u64[1] = 0;
    v2[10].n128_u64[0] = 0;
  }

  v2[9].n128_u64[0] = v1;
  v2[10].n128_u64[1] = v8;
  OUTLINED_FUNCTION_9_13();
  v9 = swift_task_alloc();
  v0[7] = v9;
  *v9 = v0;
  v9[1] = SuggestionsCATsSimple.phoneCall_StartCall(name:hasReference:thirdPartyAppName:);

  return v11(0xD00000000000001FLL, 0x8000000000456620, v2);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_4();
  v3 = v2;
  OUTLINED_FUNCTION_13_1();
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

    v10 = OUTLINED_FUNCTION_49();

    return v11(v10);
  }
}

BOOL SuggestionsCATsSimple.PhoneCall_StartCallDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_38();
  v2._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SuggestionsCATsSimple.PhoneCall_StartCallDialogIds.init(rawValue:), v2);
  OUTLINED_FUNCTION_33_2();
  return v1 != 0;
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance SuggestionsCATsSimple.PhoneCall_StartCallDialogIds@<W0>(_BYTE *a1@<X8>)
{
  result = SuggestionsCATsSimple.PhoneCall_StartCallDialogIds.init(rawValue:)();
  *a1 = result;
  return result;
}

uint64_t SuggestionsCATsSimple.phoneCall_StartCallAsLabels(name:hasReference:thirdPartyAppName:)()
{
  OUTLINED_FUNCTION_15();
  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  *(v1 + 72) = v3;
  *(v1 + 16) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v5);
  *(v1 + 40) = OUTLINED_FUNCTION_45();
  v6 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v6, v7, v8);
}

{
  v1 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = swift_allocObject();
  v0[6] = v2;
  v3 = OUTLINED_FUNCTION_1_127(v2, xmmword_426980);
  OUTLINED_FUNCTION_48_1(v3, v4, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v5 = type metadata accessor for SpeakableString();
  if (OUTLINED_FUNCTION_58(v5) == 1)
  {
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v0[5], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_2();
  }

  else
  {
    OUTLINED_FUNCTION_43_2();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_16_0();
    v6();
  }

  OUTLINED_FUNCTION_0_120();
  v2[6].n128_u8[0] = v7;
  v8 = OUTLINED_FUNCTION_13_61("thirdPartyAppName");
  if (v1)
  {
    v8 = type metadata accessor for SirikitApp();
  }

  else
  {
    v2[9].n128_u64[1] = 0;
    v2[10].n128_u64[0] = 0;
  }

  v2[9].n128_u64[0] = v1;
  v2[10].n128_u64[1] = v8;
  OUTLINED_FUNCTION_9_13();
  v9 = swift_task_alloc();
  v0[7] = v9;
  lazy protocol witness table accessor for type SuggestionsCATsSimple.PhoneCall_StartCallDialogIds and conformance SuggestionsCATsSimple.PhoneCall_StartCallDialogIds();
  OUTLINED_FUNCTION_9();
  *v9 = v10;
  v9[1] = SuggestionsCATsSimple.phoneCall_StartCallAsLabels(name:hasReference:thirdPartyAppName:);

  return v12(0xD00000000000001FLL, 0x8000000000456620, v2, &type metadata for SuggestionsCATsSimple.PhoneCall_StartCallDialogIds);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_4();
  v3 = v2;
  OUTLINED_FUNCTION_13_1();
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

    v10 = OUTLINED_FUNCTION_49();

    return v11(v10);
  }
}

unint64_t lazy protocol witness table accessor for type SuggestionsCATsSimple.PhoneCall_StartCallDialogIds and conformance SuggestionsCATsSimple.PhoneCall_StartCallDialogIds()
{
  result = lazy protocol witness table cache variable for type SuggestionsCATsSimple.PhoneCall_StartCallDialogIds and conformance SuggestionsCATsSimple.PhoneCall_StartCallDialogIds;
  if (!lazy protocol witness table cache variable for type SuggestionsCATsSimple.PhoneCall_StartCallDialogIds and conformance SuggestionsCATsSimple.PhoneCall_StartCallDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SuggestionsCATsSimple.PhoneCall_StartCallDialogIds and conformance SuggestionsCATsSimple.PhoneCall_StartCallDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SuggestionsCATsSimple.PhoneCall_StartCallDialogIds and conformance SuggestionsCATsSimple.PhoneCall_StartCallDialogIds;
  if (!lazy protocol witness table cache variable for type SuggestionsCATsSimple.PhoneCall_StartCallDialogIds and conformance SuggestionsCATsSimple.PhoneCall_StartCallDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SuggestionsCATsSimple.PhoneCall_StartCallDialogIds and conformance SuggestionsCATsSimple.PhoneCall_StartCallDialogIds);
  }

  return result;
}

uint64_t SuggestionsCATsSimple.phoneCall_StartFTCall(name:hasReference:)()
{
  OUTLINED_FUNCTION_15();
  *(v1 + 64) = v2;
  *(v1 + 16) = v3;
  *(v1 + 24) = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v4);
  *(v1 + 32) = OUTLINED_FUNCTION_45();
  v5 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v5, v6, v7);
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v1 = swift_allocObject();
  v0[5] = v1;
  v2 = OUTLINED_FUNCTION_1_127(v1, xmmword_424FF0);
  OUTLINED_FUNCTION_48_1(v2, v3, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v4 = type metadata accessor for SpeakableString();
  if (OUTLINED_FUNCTION_58(v4) == 1)
  {
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v0[4], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_2();
  }

  else
  {
    OUTLINED_FUNCTION_43_2();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_16_0();
    v5();
  }

  OUTLINED_FUNCTION_0_120();
  v1[7].n128_u64[1] = &type metadata for Bool;
  v1[6].n128_u8[0] = v6;
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v10 = v7;
  v8 = swift_task_alloc();
  v0[6] = v8;
  *v8 = v0;
  v8[1] = AnnounceIncomingCallCATsSimple.offerFollowUpIntent(followUpOfferType:);

  return v10(0xD000000000000021, 0x8000000000456640, v1);
}

BOOL SuggestionsCATsSimple.PhoneCall_StartFTCallDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_38();
  v2._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SuggestionsCATsSimple.PhoneCall_StartFTCallDialogIds.init(rawValue:), v2);
  OUTLINED_FUNCTION_33_2();
  return v1 != 0;
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance SuggestionsCATsSimple.PhoneCall_StartFTCallDialogIds@<W0>(_BYTE *a1@<X8>)
{
  result = SuggestionsCATsSimple.PhoneCall_StartFTCallDialogIds.init(rawValue:)();
  *a1 = result;
  return result;
}

uint64_t SuggestionsCATsSimple.phoneCall_StartFTCallAsLabels(name:hasReference:)()
{
  OUTLINED_FUNCTION_15();
  *(v1 + 64) = v2;
  *(v1 + 16) = v3;
  *(v1 + 24) = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v4);
  *(v1 + 32) = OUTLINED_FUNCTION_45();
  v5 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v5, v6, v7);
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v1 = swift_allocObject();
  v0[5] = v1;
  v2 = OUTLINED_FUNCTION_1_127(v1, xmmword_424FF0);
  OUTLINED_FUNCTION_48_1(v2, v3, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v4 = type metadata accessor for SpeakableString();
  if (OUTLINED_FUNCTION_58(v4) == 1)
  {
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v0[4], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_2();
  }

  else
  {
    OUTLINED_FUNCTION_43_2();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_16_0();
    v5();
  }

  OUTLINED_FUNCTION_0_120();
  v1[7].n128_u64[1] = &type metadata for Bool;
  v1[6].n128_u8[0] = v6;
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v11 = v7;
  v8 = swift_task_alloc();
  v0[6] = v8;
  lazy protocol witness table accessor for type SuggestionsCATsSimple.PhoneCall_StartFTCallDialogIds and conformance SuggestionsCATsSimple.PhoneCall_StartFTCallDialogIds();
  OUTLINED_FUNCTION_9();
  *v8 = v9;
  v8[1] = AnnounceIncomingCallCATsSimple.offerFollowUpIntentAsLabels(followUpOfferType:);

  return v11(0xD000000000000021, 0x8000000000456640, v1, &type metadata for SuggestionsCATsSimple.PhoneCall_StartFTCallDialogIds);
}

unint64_t lazy protocol witness table accessor for type SuggestionsCATsSimple.PhoneCall_StartFTCallDialogIds and conformance SuggestionsCATsSimple.PhoneCall_StartFTCallDialogIds()
{
  result = lazy protocol witness table cache variable for type SuggestionsCATsSimple.PhoneCall_StartFTCallDialogIds and conformance SuggestionsCATsSimple.PhoneCall_StartFTCallDialogIds;
  if (!lazy protocol witness table cache variable for type SuggestionsCATsSimple.PhoneCall_StartFTCallDialogIds and conformance SuggestionsCATsSimple.PhoneCall_StartFTCallDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SuggestionsCATsSimple.PhoneCall_StartFTCallDialogIds and conformance SuggestionsCATsSimple.PhoneCall_StartFTCallDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SuggestionsCATsSimple.PhoneCall_StartFTCallDialogIds and conformance SuggestionsCATsSimple.PhoneCall_StartFTCallDialogIds;
  if (!lazy protocol witness table cache variable for type SuggestionsCATsSimple.PhoneCall_StartFTCallDialogIds and conformance SuggestionsCATsSimple.PhoneCall_StartFTCallDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SuggestionsCATsSimple.PhoneCall_StartFTCallDialogIds and conformance SuggestionsCATsSimple.PhoneCall_StartFTCallDialogIds);
  }

  return result;
}

uint64_t SuggestionsCATsSimple.phoneCall_StartGFTCall()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v4 = v1;
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = AddCallParticipantCATPatternsExecutor.unsupportedNoActiveCall();

  return v4(0xD000000000000022, 0x8000000000456670, _swiftEmptyArrayStorage);
}

BOOL SuggestionsCATsSimple.PhoneCall_StartGFTCallDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_38();
  v2._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SuggestionsCATsSimple.PhoneCall_StartGFTCallDialogIds.init(rawValue:), v2);
  OUTLINED_FUNCTION_33_2();
  return v1 != 0;
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance SuggestionsCATsSimple.PhoneCall_StartGFTCallDialogIds@<W0>(_BYTE *a1@<X8>)
{
  result = SuggestionsCATsSimple.PhoneCall_StartGFTCallDialogIds.init(rawValue:)();
  *a1 = result;
  return result;
}

uint64_t SuggestionsCATsSimple.phoneCall_StartGFTCallAsLabels()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v5 = v1;
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  lazy protocol witness table accessor for type SuggestionsCATsSimple.PhoneCall_StartGFTCallDialogIds and conformance SuggestionsCATsSimple.PhoneCall_StartGFTCallDialogIds();
  OUTLINED_FUNCTION_9();
  *v2 = v3;
  v2[1] = AddCallParticipantCATPatternsExecutor.unsupportedParticipantsMultipleContactsUnsupported();

  return v5(0xD000000000000022, 0x8000000000456670, _swiftEmptyArrayStorage, &type metadata for SuggestionsCATsSimple.PhoneCall_StartGFTCallDialogIds);
}

unint64_t lazy protocol witness table accessor for type SuggestionsCATsSimple.PhoneCall_StartGFTCallDialogIds and conformance SuggestionsCATsSimple.PhoneCall_StartGFTCallDialogIds()
{
  result = lazy protocol witness table cache variable for type SuggestionsCATsSimple.PhoneCall_StartGFTCallDialogIds and conformance SuggestionsCATsSimple.PhoneCall_StartGFTCallDialogIds;
  if (!lazy protocol witness table cache variable for type SuggestionsCATsSimple.PhoneCall_StartGFTCallDialogIds and conformance SuggestionsCATsSimple.PhoneCall_StartGFTCallDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SuggestionsCATsSimple.PhoneCall_StartGFTCallDialogIds and conformance SuggestionsCATsSimple.PhoneCall_StartGFTCallDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SuggestionsCATsSimple.PhoneCall_StartGFTCallDialogIds and conformance SuggestionsCATsSimple.PhoneCall_StartGFTCallDialogIds;
  if (!lazy protocol witness table cache variable for type SuggestionsCATsSimple.PhoneCall_StartGFTCallDialogIds and conformance SuggestionsCATsSimple.PhoneCall_StartGFTCallDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SuggestionsCATsSimple.PhoneCall_StartGFTCallDialogIds and conformance SuggestionsCATsSimple.PhoneCall_StartGFTCallDialogIds);
  }

  return result;
}

uint64_t SuggestionsCATsSimple.__allocating_init(templateDir:options:globals:)()
{
  swift_allocObject();
  OUTLINED_FUNCTION_16_0();
  return SuggestionsCATsSimple.init(templateDir:options:globals:)(v0, v1, v2);
}

uint64_t SuggestionsCATsSimple.init(templateDir:options:globals:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for CATOption();
  OUTLINED_FUNCTION_14_5();
  v7 = v6;
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_4();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v13 = OUTLINED_FUNCTION_21(v12);
  __chkstk_darwin(v13);
  outlined init with copy of PhoneCallNLIntent?(a1, &v17 - v14, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(v7 + 16))(v11, a2, v3);
  v15 = CATWrapperSimple.init(templateDir:options:globals:)();
  (*(v7 + 8))(a2, v3);
  _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(a1, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  return v15;
}

uint64_t SuggestionsCATsSimple.__allocating_init(useResponseMode:options:)(uint64_t a1)
{
  type metadata accessor for CATOption();
  OUTLINED_FUNCTION_14_5();
  __chkstk_darwin(v1);
  OUTLINED_FUNCTION_4();
  v2 = swift_allocObject();
  v3 = OUTLINED_FUNCTION_39_1();
  v4(v3);
  CATWrapperSimple.init(useResponseMode:options:)();
  v5 = OUTLINED_FUNCTION_53();
  v6(v5);
  return v2;
}

uint64_t SuggestionsCATsSimple.init(useResponseMode:options:)(uint64_t a1)
{
  type metadata accessor for CATOption();
  OUTLINED_FUNCTION_14_5();
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_4();
  v3 = OUTLINED_FUNCTION_39_1();
  v4(v3);
  CATWrapperSimple.init(useResponseMode:options:)();
  v5 = OUTLINED_FUNCTION_53();
  v6(v5);
  return v1;
}

unint64_t lazy protocol witness table accessor for type SuggestionsCATsSimple.Properties and conformance SuggestionsCATsSimple.Properties()
{
  result = lazy protocol witness table cache variable for type SuggestionsCATsSimple.Properties and conformance SuggestionsCATsSimple.Properties;
  if (!lazy protocol witness table cache variable for type SuggestionsCATsSimple.Properties and conformance SuggestionsCATsSimple.Properties)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SuggestionsCATsSimple.Properties and conformance SuggestionsCATsSimple.Properties);
  }

  return result;
}

uint64_t type metadata accessor for SuggestionsCATsSimple(uint64_t a1)
{
  result = type metadata singleton initialization cache for SuggestionsCATsSimple;
  if (!type metadata singleton initialization cache for SuggestionsCATsSimple)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SuggestionsCATsSimple.Properties(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for SuggestionsCATsSimple.PhoneCall_StartCallDialogIds(_BYTE *result, int a2, int a3)
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

uint64_t SwitchToFaceTimeControlFlow.executeAction(currentCall:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[12] = a3;
  v4[13] = v3;
  v4[10] = a1;
  v4[11] = a2;
  return _swift_task_switch(SwitchToFaceTimeControlFlow.executeAction(currentCall:), 0, 0);
}

uint64_t SwitchToFaceTimeControlFlow.executeAction(currentCall:)()
{
  v47 = v0;
  v1 = *(*(v0 + 104) + 56);
  if ((PhoneCallControlAction.isSwitchToFaceTimeAction.getter(v1) & 1) == 0)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Logger.siriPhone);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_0, v10, v11, "#SwitchToFaceTimeControlFlow used to handle a call control not related to switch to FaceTime.", v12, 2u);
      OUTLINED_FUNCTION_26_0(v12);
    }

    lazy protocol witness table accessor for type ActionableCallControlFlow.ActionableCallControlFlowError and conformance ActionableCallControlFlow.ActionableCallControlFlowError();
    swift_allocError();
    v14 = 0;
    *v13 = v1;
    goto LABEL_17;
  }

  v2 = static PhoneCallControlRequestSupportPolicy.unsupportedSwitchToFaceTimeReason(for:action:sharedGlobals:)(*(v0 + 88), *(v0 + 96), v1, (*(v0 + 104) + 16));
  if (v2 != 10)
  {
    v15 = v2;
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static Logger.siriPhone);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v46 = v20;
      *v19 = 136315138;
      v21 = specialized UnsupportedAction.description.getter();
      v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v46);

      *(v19 + 4) = v23;
      _os_log_impl(&dword_0, v17, v18, "#SwitchToFaceTimeControlFlow cannot switch to facetime because %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);
      OUTLINED_FUNCTION_26_0(v20);
      OUTLINED_FUNCTION_26_0(v19);
    }

    v24 = *(v0 + 104);
    *(v0 + 40) = &type metadata for ActionableCallControlFlow.UnsupportedSwitchToFaceTimeReason;
    v25 = lazy protocol witness table accessor for type ActionableCallControlFlow.UnsupportedSwitchToFaceTimeReason and conformance ActionableCallControlFlow.UnsupportedSwitchToFaceTimeReason();
    *(v0 + 48) = v25;
    *(v0 + 16) = v15;
    swift_beginAccess();
    outlined assign with take of ActionableCallControlFlow.State(v0 + 16, v24 + 72);
    swift_endAccess();
    lazy protocol witness table accessor for type ActionableCallControlFlow.ActionableCallControlFlowError and conformance ActionableCallControlFlow.ActionableCallControlFlowError();
    swift_allocError();
    *(v13 + 24) = &type metadata for ActionableCallControlFlow.UnsupportedSwitchToFaceTimeReason;
    *(v13 + 32) = v25;
    *v13 = v15;
    v14 = 1;
LABEL_17:
    *(v13 + 40) = v14;
    swift_willThrow();
    v26 = *(v0 + 8);
    goto LABEL_43;
  }

  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.siriPhone);
  swift_unknownObjectRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 96);
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    ObjectType = swift_getObjectType();
    *(v7 + 4) = (*(v6 + 32))(ObjectType, v6) & 1;
    swift_unknownObjectRelease();
    _os_log_impl(&dword_0, v4, v5, "#SwitchToFaceTimeControlFlow current call is FaceTime = %{BOOL}d", v7, 8u);
    OUTLINED_FUNCTION_26_0(v7);
  }

  else
  {
    swift_unknownObjectRelease();
  }

  v27 = *(v0 + 96);
  v28 = swift_getObjectType();
  if ((*(v27 + 40))(v28, v27) & 1) != 0 || (SPHCall.isFTAudio.getter())
  {
    (*(*(v0 + 96) + 184))(v28);
  }

  v29 = PhoneCallControlAction.rawValue.getter(v1);
  if (v29 == 0xD000000000000010 && 0x8000000000452E60 == v30)
  {
    v32 = 1;
  }

  else
  {
    v32 = OUTLINED_FUNCTION_1_128(v29, v30);
  }

  v33 = *(v0 + 96);

  (*(v33 + 128))(v32 & 1, v28, v33);
  v34 = PhoneCallControlAction.rawValue.getter(v1);
  if (v34 == 0xD000000000000010 && 0x8000000000452E60 == v35)
  {
    v37 = 1;
  }

  else
  {
    v37 = OUTLINED_FUNCTION_1_128(v34, v35);
  }

  v38 = *(v0 + 96);

  (*(v38 + 152))(v37 & 1, v28, v38);
  v39 = PhoneCallControlAction.rawValue.getter(v1);
  if (v39 == 0xD000000000000010 && 0x8000000000452E60 == v40)
  {

    v43 = 3;
  }

  else
  {
    v42 = OUTLINED_FUNCTION_1_128(v39, v40);

    v43 = 2;
    if (v42)
    {
      v43 = 3;
    }
  }

  v44 = *(v0 + 80);
  *v44 = 0;
  v44[1] = 0;
  v44[2] = 0;
  v44[3] = v43;
  v44[4] = 0;
  v26 = *(v0 + 8);
LABEL_43:

  return v26();
}

uint64_t TCCTemplatesProviding.promptToEnableAppSnippetTitleAndSubtitle(appDisplayInfo:)()
{
  OUTLINED_FUNCTION_15();
  v3 = v2;
  v1[189] = v0;
  v1[183] = v4;
  v1[177] = v2;
  v1[171] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17SiriAppResolution0B11DisplayInfoVSgMd, &_s17SiriAppResolution0B11DisplayInfoVSgMR);
  OUTLINED_FUNCTION_13_2(v6);
  v1[195] = v7;
  v1[201] = *(v8 + 64);
  v1[207] = swift_task_alloc();
  v1[213] = swift_task_alloc();
  v9 = *(v3 - 8);
  v1[214] = v9;
  v1[215] = *(v9 + 64);
  v1[216] = swift_task_alloc();
  v1[217] = swift_task_alloc();

  return _swift_task_switch(TCCTemplatesProviding.promptToEnableAppSnippetTitleAndSubtitle(appDisplayInfo:), 0, 0);
}

{
  v1 = v0[217];
  v2 = v0[214];
  v3 = v0[213];
  v14 = v3;
  v15 = v0[215];
  v19 = v0[216];
  v20 = v0[207];
  v4 = v0[195];
  v5 = v0[183];
  v6 = v0[177];
  v7 = v0[171];
  v17 = v0[189];
  v18 = v7;
  v16 = *(v2 + 16);
  v16(v1);
  outlined init with copy of AppDisplayInfo?(v7, v3);
  v8 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v9 = (v15 + *(v4 + 80) + v8) & ~*(v4 + 80);
  v10 = swift_allocObject();
  v0[218] = v10;
  *(v10 + 16) = v6;
  *(v10 + 24) = v5;
  v11 = *(v2 + 32);
  v11(v10 + v8, v1, v6);
  outlined init with take of AppDisplayInfo?(v14, v10 + v9);
  swift_asyncLet_begin();
  (v16)(v19, v17, v6);
  outlined init with copy of AppDisplayInfo?(v18, v20);
  v12 = swift_allocObject();
  v0[219] = v12;
  *(v12 + 16) = v6;
  *(v12 + 24) = v5;
  v11(v12 + v8, v19, v6);
  outlined init with take of AppDisplayInfo?(v20, v12 + v9);
  swift_asyncLet_begin();

  return _swift_asyncLet_get_throwing(v0 + 2, v0 + 167, TCCTemplatesProviding.promptToEnableAppSnippetTitleAndSubtitle(appDisplayInfo:), v0 + 162);
}

{
  OUTLINED_FUNCTION_15();
  v1[220] = v0;
  if (v0)
  {

    return _swift_asyncLet_finish(v1 + 82, v1 + 169, TCCTemplatesProviding.promptToEnableAppSnippetTitleAndSubtitle(appDisplayInfo:), v1 + 172);
  }

  else
  {
    v1[221] = v1[167];
    v1[222] = v1[168];

    v2 = OUTLINED_FUNCTION_7_40();

    return _swift_asyncLet_get_throwing(v2, v3, v4, v1 + 184);
  }
}

{
  OUTLINED_FUNCTION_15();
  v1[223] = v0;
  if (v0)
  {

    return _swift_task_switch(TCCTemplatesProviding.promptToEnableAppSnippetTitleAndSubtitle(appDisplayInfo:), 0, 0);
  }

  else
  {
    v1[224] = v1[169];
    v1[225] = v1[170];

    v2 = OUTLINED_FUNCTION_7_40();

    return _swift_asyncLet_finish(v2, v3, v4, v1 + 202);
  }
}

{
  return OUTLINED_FUNCTION_0_1(TCCTemplatesProviding.promptToEnableAppSnippetTitleAndSubtitle(appDisplayInfo:));
}

{
  return _swift_asyncLet_finish(v0 + 16, v0 + 1336, TCCTemplatesProviding.promptToEnableAppSnippetTitleAndSubtitle(appDisplayInfo:), v0 + 1664);
}

{
  return OUTLINED_FUNCTION_0_1(TCCTemplatesProviding.promptToEnableAppSnippetTitleAndSubtitle(appDisplayInfo:));
}

{
  OUTLINED_FUNCTION_23_0();

  v1 = v0[1];
  v2 = v0[225];
  v3 = v0[224];
  v4 = v0[222];
  v5 = v0[221];

  return v1(v5, v4, v3, v2);
}

{
  return OUTLINED_FUNCTION_0_1(TCCTemplatesProviding.promptToEnableAppSnippetTitleAndSubtitle(appDisplayInfo:));
}

{
  return _swift_asyncLet_finish(v0 + 16, v0 + 1336, TCCTemplatesProviding.promptToEnableAppSnippetTitleAndSubtitle(appDisplayInfo:), v0 + 1424);
}

{
  return OUTLINED_FUNCTION_0_1(TCCTemplatesProviding.promptToEnableAppSnippetTitleAndSubtitle(appDisplayInfo:));
}

{
  OUTLINED_FUNCTION_15();

  v1 = OUTLINED_FUNCTION_7_40();

  return _swift_asyncLet_finish(v1, v2, v3, v0 + 1520);
}

{
  return OUTLINED_FUNCTION_0_1(TCCTemplatesProviding.promptToEnableAppSnippetTitleAndSubtitle(appDisplayInfo:));
}

{
  return _swift_asyncLet_finish(v0 + 16, v0 + 1336, TCCTemplatesProviding.promptToEnableAppSnippetTitleAndSubtitle(appDisplayInfo:), v0 + 1568);
}

{
  return OUTLINED_FUNCTION_0_1(TCCTemplatesProviding.promptToEnableAppSnippetTitleAndSubtitle(appDisplayInfo:));
}

void TCCTemplatesProviding.promptToEnableAppSnippetTitleAndSubtitle(appDisplayInfo:)()
{
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_11_66();

  OUTLINED_FUNCTION_80();

  __asm { BRAA            X1, X16 }
}

{
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_11_66();

  OUTLINED_FUNCTION_80();

  __asm { BRAA            X1, X16 }
}

uint64_t implicit closure #1 in TCCTemplatesProviding.promptToEnableAppSnippetTitleAndSubtitle(appDisplayInfo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  v11 = (*(a5 + 24) + **(a5 + 24));
  v9 = swift_task_alloc();
  *(v5 + 24) = v9;
  *v9 = v5;
  v9[1] = implicit closure #1 in TCCTemplatesProviding.promptToEnableAppSnippetTitleAndSubtitle(appDisplayInfo:);

  return v11(a3, a4, a5);
}

uint64_t implicit closure #1 in TCCTemplatesProviding.promptToEnableAppSnippetTitleAndSubtitle(appDisplayInfo:)()
{
  OUTLINED_FUNCTION_23_0();
  v4 = v3;
  OUTLINED_FUNCTION_18_4();
  v6 = v5;
  OUTLINED_FUNCTION_6();
  *v7 = v6;
  v8 = *v2;
  OUTLINED_FUNCTION_4_2();
  *v9 = v8;

  if (v1)
  {
    v10 = *(v8 + 8);

    return v10();
  }

  else
  {
    *(v6 + 32) = v4;
    *(v6 + 40) = v0;
    OUTLINED_FUNCTION_8_82();

    return _swift_task_switch(v12, v13, v14);
  }
}

uint64_t outlined init with copy of AppDisplayInfo?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17SiriAppResolution0B11DisplayInfoVSgMd, &_s17SiriAppResolution0B11DisplayInfoVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of AppDisplayInfo?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17SiriAppResolution0B11DisplayInfoVSgMd, &_s17SiriAppResolution0B11DisplayInfoVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for implicit closure #1 in TCCTemplatesProviding.promptToEnableAppSnippetTitleAndSubtitle(appDisplayInfo:)()
{
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_78();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17SiriAppResolution0B11DisplayInfoVSgMd, &_s17SiriAppResolution0B11DisplayInfoVSgMR);
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_5_91(v1);
  OUTLINED_FUNCTION_80();

  return implicit closure #1 in TCCTemplatesProviding.promptToEnableAppSnippetTitleAndSubtitle(appDisplayInfo:)(v2, v3, v4, v5, v6);
}

uint64_t implicit closure #2 in TCCTemplatesProviding.promptToEnableAppSnippetTitleAndSubtitle(appDisplayInfo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  v11 = (*(a5 + 16) + **(a5 + 16));
  v9 = swift_task_alloc();
  *(v5 + 24) = v9;
  *v9 = v5;
  v9[1] = implicit closure #2 in TCCTemplatesProviding.promptToEnableAppSnippetTitleAndSubtitle(appDisplayInfo:);

  return v11(a3, a4, a5);
}

uint64_t implicit closure #2 in TCCTemplatesProviding.promptToEnableAppSnippetTitleAndSubtitle(appDisplayInfo:)()
{
  OUTLINED_FUNCTION_23_0();
  v4 = v3;
  OUTLINED_FUNCTION_18_4();
  v6 = v5;
  OUTLINED_FUNCTION_6();
  *v7 = v6;
  v8 = *v2;
  OUTLINED_FUNCTION_4_2();
  *v9 = v8;

  if (v1)
  {
    v10 = *(v8 + 8);

    return v10();
  }

  else
  {
    *(v6 + 32) = v4;
    *(v6 + 40) = v0;
    OUTLINED_FUNCTION_8_82();

    return _swift_task_switch(v12, v13, v14);
  }
}

uint64_t objectdestroyTm_16()
{
  v1 = *(v0 + 16);
  OUTLINED_FUNCTION_78();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 32) & ~v4;
  v7 = *(v6 + 64);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17SiriAppResolution0B11DisplayInfoVSgMd, &_s17SiriAppResolution0B11DisplayInfoVSgMR);
  OUTLINED_FUNCTION_13_2(v8);
  v10 = *(v9 + 80);
  v11 = (v5 + v7 + v10) & ~v10;
  v13 = *(v12 + 64);
  (*(v3 + 8))(v0 + v5, v1);
  v14 = type metadata accessor for AppDisplayInfo();
  if (!__swift_getEnumTagSinglePayload(v0 + v11, 1, v14))
  {
    (*(*(v14 - 8) + 8))(v0 + v11, v14);
  }

  return _swift_deallocObject(v0, v11 + v13, v4 | v10 | 7);
}

uint64_t partial apply for implicit closure #2 in TCCTemplatesProviding.promptToEnableAppSnippetTitleAndSubtitle(appDisplayInfo:)()
{
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_78();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17SiriAppResolution0B11DisplayInfoVSgMd, &_s17SiriAppResolution0B11DisplayInfoVSgMR);
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_5_91(v1);
  OUTLINED_FUNCTION_80();

  return implicit closure #2 in TCCTemplatesProviding.promptToEnableAppSnippetTitleAndSubtitle(appDisplayInfo:)(v2, v3, v4, v5, v6);
}

uint64_t TCCTemplatesProvider.promptToEnableApp(appDisplayInfo:deviceState:)()
{
  OUTLINED_FUNCTION_15();
  v0[2] = v1;
  v0[3] = v2;
  v3 = type metadata accessor for TCCResponses();
  v0[4] = v3;
  OUTLINED_FUNCTION_13_2(v3);
  v0[5] = v4;
  v0[6] = swift_task_alloc();

  return _swift_task_switch(TCCTemplatesProvider.promptToEnableApp(appDisplayInfo:deviceState:), 0, 0);
}

{
  OUTLINED_FUNCTION_15();
  TCCResponses.init()();
  v1 = Dictionary.init(dictionaryLiteral:)();
  v0[7] = v1;
  v2 = swift_task_alloc();
  v0[8] = v2;
  *v2 = v0;
  v2[1] = TCCTemplatesProvider.promptToEnableApp(appDisplayInfo:deviceState:);
  v4 = v0[2];
  v3 = v0[3];

  return TCCResponses.promptToEnableApp(appDisplayInfo:deviceState:catOverrides:)(v4, v3, v1);
}

{
  OUTLINED_FUNCTION_23_0();
  v2 = *v1;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 72) = v0;

  (*(v2[5] + 8))(v2[6], v2[4]);

  if (!v0)
  {

    OUTLINED_FUNCTION_80();

    __asm { BRAA            X2, X16 }
  }

  OUTLINED_FUNCTION_8_82();
  OUTLINED_FUNCTION_80();

  return _swift_task_switch(v5, v6, v7);
}

{
  OUTLINED_FUNCTION_15();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t TCCTemplatesProvider.promptToEnableAppSnippetSubtitle(appDisplayInfo:)()
{
  OUTLINED_FUNCTION_15();
  v2 = v1;
  v3 = swift_task_alloc();
  *(v0 + 16) = v3;
  *v3 = v0;
  v3[1] = TCCTemplatesProvider.promptToEnableAppSnippetSubtitle(appDisplayInfo:);

  return static TCCTemplates.promptToEnableAppSnippetSubtitle(appDisplayInfo:)(v2);
}

uint64_t TCCTemplatesProvider.promptToEnableAppSnippetTitle(appDisplayInfo:)()
{
  OUTLINED_FUNCTION_15();
  v2 = v1;
  v3 = swift_task_alloc();
  *(v0 + 16) = v3;
  *v3 = v0;
  v3[1] = TCCTemplatesProvider.promptToEnableAppSnippetTitle(appDisplayInfo:);

  return static TCCTemplates.promptToEnableAppSnippetTitle(appDisplayInfo:)(v2);
}

uint64_t TCCTemplatesProvider.promptToEnableAppSnippetTitle(appDisplayInfo:)(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  OUTLINED_FUNCTION_4_2();
  *v7 = v6;

  v10 = *(v6 + 8);
  if (!v2)
  {
    v8 = a1;
    v9 = a2;
  }

  return v10(v8, v9);
}

uint64_t protocol witness for TCCTemplatesProviding.promptToEnableApp(appDisplayInfo:deviceState:) in conformance TCCTemplatesProvider()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for SKIntentResolver.resolve(skIntent:nlIntent:) in conformance AddCallParticipantContactSlotResolver;

  return TCCTemplatesProvider.promptToEnableApp(appDisplayInfo:deviceState:)();
}

uint64_t protocol witness for TCCTemplatesProviding.promptToEnableAppSnippetSubtitle(appDisplayInfo:) in conformance TCCTemplatesProvider()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = TCCTemplatesProvider.promptToEnableAppSnippetSubtitle(appDisplayInfo:);

  return TCCTemplatesProvider.promptToEnableAppSnippetSubtitle(appDisplayInfo:)();
}

uint64_t protocol witness for TCCTemplatesProviding.promptToEnableAppSnippetTitle(appDisplayInfo:) in conformance TCCTemplatesProvider()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = TCCTemplatesProvider.promptToEnableAppSnippetSubtitle(appDisplayInfo:);

  return TCCTemplatesProvider.promptToEnableAppSnippetTitle(appDisplayInfo:)();
}

uint64_t TemplatingOperationManager.__allocating_init()()
{
  v0 = swift_allocObject();
  TemplatingOperationManager.init()();
  return v0;
}

BOOL TemplatingOperationType.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of TemplatingOperationType.init(rawValue:), v2);

  return v3 != 0;
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance TemplatingOperationType@<W0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = TemplatingOperationType.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance TemplatingOperationType@<X0>(void *a1@<X8>)
{
  result = TemplatingOperationType.rawValue.getter();
  *a1 = 0xD000000000000015;
  a1[1] = v3;
  return result;
}

uint64_t one-time initialization function for timeout()
{
  v0 = type metadata accessor for DispatchTimeInterval();
  __swift_allocate_value_buffer(v0, static TemplatingOperationManager.timeout);
  *__swift_project_value_buffer(v0, static TemplatingOperationManager.timeout) = 500;
  v1 = *(*(v0 - 8) + 104);

  return v1();
}

uint64_t TemplatingOperationManager.timeout.unsafeMutableAddressor()
{
  if (one-time initialization token for timeout != -1)
  {
    OUTLINED_FUNCTION_5_92(&one-time initialization token for timeout);
  }

  v0 = type metadata accessor for DispatchTimeInterval();

  return __swift_project_value_buffer(v0, static TemplatingOperationManager.timeout);
}

uint64_t static TemplatingOperationManager.timeout.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for timeout != -1)
  {
    OUTLINED_FUNCTION_5_92(&one-time initialization token for timeout);
  }

  v2 = type metadata accessor for DispatchTimeInterval();
  v3 = __swift_project_value_buffer(v2, static TemplatingOperationManager.timeout);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t TemplatingOperationManager.addOperation(intentId:key:catCall:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_7();
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_98();
  type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_7();
  v32 = v10;
  v33 = v9;
  __chkstk_darwin(v9);
  OUTLINED_FUNCTION_4();
  v13 = v12 - v11;
  static Signpost.begin(_:message:)();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = swift_allocObject();
  *(v22 + 16) = a1;
  *(v22 + 24) = a2;
  *(v22 + 32) = v5;
  *(v22 + 40) = a3;
  *(v22 + 48) = a4;
  *(v22 + 56) = v15;
  *(v22 + 64) = v17;
  *(v22 + 72) = v19;
  *(v22 + 80) = v21;
  *(v22 + 81) = HIBYTE(v21) & 1;
  OUTLINED_FUNCTION_2_120(v22);
  OUTLINED_FUNCTION_6_3(COERCE_DOUBLE(1107296256));
  v35 = v23;
  v36 = &block_descriptor_12;
  v24 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  OUTLINED_FUNCTION_4_89();
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(v25, v26, &protocol conformance descriptor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v24);

  v27 = OUTLINED_FUNCTION_7_84();
  v28(v27);
  (*(v32 + 8))(v13, v33);
}

uint64_t closure #1 in TemplatingOperationManager.addOperation(intentId:key:catCall:)(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Logger.siriPhone);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v23[0] = swift_slowAlloc();
    *v12 = 136315394;
    *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, 0x80000000004566C0, v23);
    *(v12 + 12) = 2080;
    *(v12 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, v23);
    _os_log_impl(&dword_0, v10, v11, "OperationManager: Adding operation for key: %s, intent: %s", v12, 0x16u);
    swift_arrayDestroy();
  }

  v13 = a3[5];
  if (!v13 || (a3[4] == a1 ? (v14 = v13 == a2) : (v14 = 0), !v14 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0))
  {
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSD8_VariantVy27PhoneCallFlowDelegatePlugin23TemplatingOperationTypeOAC0gH0030_EDC7BAD48289BA0912D37340779F4N1BLLC_GMd, &_sSD8_VariantVy27PhoneCallFlowDelegatePlugin23TemplatingOperationTypeOAC0gH0030_EDC7BAD48289BA0912D37340779F4N1BLLC_GMR);
    Dictionary._Variant.removeAll(keepingCapacity:)(1);
    swift_endAccess();
  }

  a3[4] = a1;
  a3[5] = a2;

  type metadata accessor for TemplatingOperation(0);
  swift_allocObject();

  v15 = TemplatingOperation.init(key:catCall:)(a4, a5);
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v22 = a3[6];
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v15, isUniquelyReferenced_nonNull_native);
  a3[6] = v22;
  swift_endAccess();
  TemplatingOperation.start(on:)(a3[3]);

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v23[0] = swift_slowAlloc();
    *v19 = 136315394;
    *(v19 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, 0x80000000004566C0, v23);
    *(v19 + 12) = 2080;
    *(v19 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, v23);
    _os_log_impl(&dword_0, v17, v18, "OperationManager: Finished adding operation for key: %s, intent: %s", v19, 0x16u);
    swift_arrayDestroy();
  }

  Signpost.OpenSignpost.end()();
}

uint64_t TemplatingOperationManager.getResult(intentId:key:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_7();
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_98();
  type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_7();
  v32 = v10;
  v33 = v9;
  __chkstk_darwin(v9);
  OUTLINED_FUNCTION_4();
  v13 = v12 - v11;
  static Signpost.begin(_:message:)();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = swift_allocObject();
  *(v22 + 16) = a1;
  *(v22 + 24) = a2;
  *(v22 + 32) = v5;
  *(v22 + 40) = a3;
  *(v22 + 48) = a4;
  *(v22 + 56) = v15;
  *(v22 + 64) = v17;
  *(v22 + 72) = v19;
  *(v22 + 80) = v21;
  *(v22 + 81) = HIBYTE(v21) & 1;
  OUTLINED_FUNCTION_2_120(v22);
  OUTLINED_FUNCTION_6_3(COERCE_DOUBLE(1107296256));
  v35 = v23;
  v36 = &block_descriptor_6;
  v24 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  OUTLINED_FUNCTION_4_89();
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(v25, v26, &protocol conformance descriptor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v24);

  v27 = OUTLINED_FUNCTION_7_84();
  v28(v27);
  (*(v32 + 8))(v13, v33);
}

uint64_t closure #1 in TemplatingOperationManager.getResult(intentId:key:_:)(uint64_t a1, unint64_t a2, void *a3, void (*a4)(char *), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v31[3] = a7;
  v31[4] = a8;
  v31[2] = a6;
  v32 = a1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGSgMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGSgMR);
  __chkstk_darwin(v12 - 8);
  v14 = v31 - v13;
  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  v16 = __swift_project_value_buffer(v15, static Logger.siriPhone);

  v31[1] = v16;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v31[0] = a4;
    v34[0] = v20;
    *v19 = 136315394;
    *(v19 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, 0x80000000004566C0, v34);
    *(v19 + 12) = 2080;
    *(v19 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, a2, v34);
    _os_log_impl(&dword_0, v17, v18, "OperationManager: Getting operation for key: %s, intent: %s", v19, 0x16u);
    swift_arrayDestroy();
    a4 = v31[0];
  }

  v21 = a3[5];
  if (v21 && (a3[4] == v32 ? (v22 = v21 == a2) : (v22 = 0), (v22 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0) && (swift_beginAccess(), v23 = , v24 = specialized Dictionary.subscript.getter(v23), , v24)))
  {
    v25 = swift_allocObject();
    *(v25 + 16) = a4;
    *(v25 + 24) = a5;

    TemplatingOperation.onComplete(_:)(partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Result<TemplatingResult, Error>?) -> (), v25);

    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v28 = 136315394;
      *(v28 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, 0x80000000004566C0, &v33);
      *(v28 + 12) = 2080;
      *(v28 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, a2, &v33);
      _os_log_impl(&dword_0, v26, v27, "OperationManager: Finished getting operation for key: %s, intent: %s", v28, 0x16u);
      swift_arrayDestroy();
    }

    Signpost.OpenSignpost.end()();
  }

  else
  {
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
    __swift_storeEnumTagSinglePayload(v14, 1, 1, v30);
    a4(v14);
    return _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v14, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGSgMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGSgMR);
  }
}

uint64_t thunk for @escaping @callee_guaranteed (@in_guaranteed Result<TemplatingResult, Error>?) -> ()(uint64_t a1, void (*a2)(char *))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGSgMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGSgMR);
  __chkstk_darwin(v4 - 8);
  v6 = &v9 - v5;
  outlined init with copy of Result<TemplatingResult, Error>(a1, &v9 - v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v7);
  a2(v6);
  return _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v6, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGSgMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGSgMR);
}

uint64_t TemplatingOperationManager.getResult(intentIdOptional:key:_:)(uint64_t a1, uint64_t a2, void (*a3)(char *), uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGSgMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGSgMR);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v16 - v11;
  if (a2)
  {
    v13 = *(*v4 + 168);

    return v13(a1, a2, a3, a4, v10);
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
    __swift_storeEnumTagSinglePayload(v12, 1, 1, v15);
    a3(v12);
    return _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v12, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGSgMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGSgMR);
  }
}

uint64_t TemplatingOperationManager.deinit()
{

  return v0;
}

uint64_t TemplatingOperationManager.__deallocating_deinit()
{
  TemplatingOperationManager.deinit();

  return swift_deallocClassInstance();
}

void *TemplatingOperationManager.init()()
{
  v10 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  OUTLINED_FUNCTION_7();
  v3 = v2;
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_98();
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v5);
  OUTLINED_FUNCTION_4();
  v6 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v6 - 8);
  OUTLINED_FUNCTION_4();
  type metadata accessor for OS_dispatch_queue();
  static DispatchQoS.userInitiated.getter();
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v7 = enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:);
  v8 = *(v3 + 104);
  v8(v1, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v10);
  v0[2] = OUTLINED_FUNCTION_8_83(0xD000000000000016, 0x8000000000456DB0);
  static DispatchQoS.userInteractive.getter();
  static OS_dispatch_queue.Attributes.concurrent.getter();
  v8(v1, v7, v10);
  v0[3] = OUTLINED_FUNCTION_8_83(0xD000000000000018, 0x8000000000456DD0);
  type metadata accessor for TemplatingOperation(0);
  lazy protocol witness table accessor for type TemplatingOperationType and conformance TemplatingOperationType();
  v0[4] = 0;
  v0[5] = 0;
  v0[6] = Dictionary.init(dictionaryLiteral:)();
  return v0;
}

uint64_t objectdestroyTm_17()
{

  return _swift_deallocObject(v0, 82, 7);
}

uint64_t partial apply for closure #1 in TemplatingOperationManager.addOperation(intentId:key:catCall:)(uint64_t (*a1)(void, void, void, void, void, void, void, void, __int16))
{
  if (*(v1 + 81))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  v4 = v2 | *(v1 + 80);
  return a1(*(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56), *(v1 + 64), *(v1 + 72), v4);
}

uint64_t type metadata accessor for TemplatingOperation(uint64_t a1)
{
  result = type metadata singleton initialization cache for TemplatingOperation;
  if (!type metadata singleton initialization cache for TemplatingOperation)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TemplatingOperationType(_BYTE *result, int a2, int a3)
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

uint64_t TemplatingOperation.init(key:catCall:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for PhoneError(0);
  __chkstk_darwin(v6);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePluginP33_EDC7BAD48289BA0912D37340779F4F4B19TemplatingOperation_result;
  v15[8] = 0;
  *v8 = 0;
  *(v8 + 1) = 0xE000000000000000;
  *(v8 + 2) = 0xD00000000000003CLL;
  *(v8 + 3) = 0x8000000000462D90;
  *(v8 + 4) = 0xD000000000000013;
  *(v8 + 5) = 0x800000000044FB30;
  *(v8 + 6) = 87;
  v8[56] = 0;
  swift_storeEnumTagMultiPayload();
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type PhoneError and conformance PhoneError, type metadata accessor for PhoneError, &protocol conformance descriptor for PhoneError);
  v10 = swift_allocError();
  PhoneError.logged()(v11);
  outlined destroy of PhoneError(v8);
  *(v3 + v9) = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  swift_storeEnumTagMultiPayload();
  v12 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePluginP33_EDC7BAD48289BA0912D37340779F4F4B19TemplatingOperation_group;
  *(v3 + v12) = dispatch_group_create();
  v13 = (v3 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePluginP33_EDC7BAD48289BA0912D37340779F4F4B19TemplatingOperation_catCall);
  *v13 = a1;
  v13[1] = a2;
  return v3;
}

uint64_t TemplatingOperation.start(on:)(uint64_t a1)
{
  v24 = a1;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v23 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v21 = *(v5 - 8);
  v22 = v5;
  __chkstk_darwin(v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Signpost.begin(_:message:)();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  dispatch_group_enter(*(v1 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePluginP33_EDC7BAD48289BA0912D37340779F4F4B19TemplatingOperation_group));
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = v9;
  *(v17 + 32) = v11;
  *(v17 + 40) = v13;
  *(v17 + 48) = v15;
  *(v17 + 49) = HIBYTE(v15) & 1;
  aBlock[4] = partial apply for closure #1 in TemplatingOperation.start(on:);
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_40;
  v18 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v25 = _swiftEmptyArrayStorage;
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);

  (*(v23 + 8))(v4, v2);
  (*(v21 + 8))(v7, v22);
}

uint64_t closure #1 in TemplatingOperation.start(on:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = *(result + OBJC_IVAR____TtC27PhoneCallFlowDelegatePluginP33_EDC7BAD48289BA0912D37340779F4F4B19TemplatingOperation_catCall);

    v11 = swift_allocObject();
    swift_beginAccess();
    swift_weakLoadStrong();
    swift_weakInit();

    v12 = swift_allocObject();
    *(v12 + 16) = v11;
    *(v12 + 24) = a2;
    *(v12 + 32) = a3;
    *(v12 + 40) = a4;
    *(v12 + 48) = a5;
    *(v12 + 49) = HIBYTE(a5) & 1;

    v10(partial apply for closure #1 in closure #1 in TemplatingOperation.start(on:), v12);
  }

  return result;
}

void closure #1 in closure #1 in TemplatingOperation.start(on:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePluginP33_EDC7BAD48289BA0912D37340779F4F4B19TemplatingOperation_result;
    swift_beginAccess();
    outlined assign with copy of Result<TemplatingResult, Error>(a1, v4 + v5);
    swift_endAccess();
  }

  swift_beginAccess();
  v6 = swift_weakLoadStrong();
  if (v6)
  {
    v7 = *(v6 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePluginP33_EDC7BAD48289BA0912D37340779F4F4B19TemplatingOperation_group);

    dispatch_group_leave(v7);
  }

  Signpost.OpenSignpost.end()();
}

uint64_t TemplatingOperation.onComplete(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v33 = a2;
  v30 = a1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v35 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for DispatchQoS();
  v31 = *(v34 - 8);
  __chkstk_darwin(v34);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchTime();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v29 - v14;
  v16 = *(v3 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePluginP33_EDC7BAD48289BA0912D37340779F4F4B19TemplatingOperation_group);
  static DispatchTime.now()();
  if (one-time initialization token for timeout != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for DispatchTimeInterval();
  __swift_project_value_buffer(v17, static TemplatingOperationManager.timeout);
  + infix(_:_:)();
  v18 = *(v10 + 8);
  v18(v12, v9);
  v32 = v16;
  v19 = OS_dispatch_group.wait(timeout:)();
  v18(v15, v9);
  if (v19)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, static Logger.siriPhone);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_0, v21, v22, "Timed out waiting on TemplatingResult, returning .noResult", v23, 2u);
    }
  }

  type metadata accessor for OS_dispatch_queue();
  v24 = static OS_dispatch_queue.main.getter();
  v25 = swift_allocObject();
  v26 = v33;
  v25[2] = v30;
  v25[3] = v26;
  v25[4] = v3;
  aBlock[4] = partial apply for closure #1 in TemplatingOperation.onComplete(_:);
  aBlock[5] = v25;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_31;
  v27 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v36 = _swiftEmptyArrayStorage;
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_group.notify(qos:flags:queue:execute:)();
  _Block_release(v27);

  (*(v35 + 8))(v6, v4);
  (*(v31 + 8))(v8, v34);
}

uint64_t closure #1 in TemplatingOperation.onComplete(_:)(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  __chkstk_darwin(v5 - 8);
  v7 = &v10 - v6;
  v8 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePluginP33_EDC7BAD48289BA0912D37340779F4F4B19TemplatingOperation_result;
  swift_beginAccess();
  outlined init with copy of Result<TemplatingResult, Error>(a3 + v8, v7);
  a1(v7);
  return _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v7, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
}

uint64_t TemplatingOperation.deinit()
{
  _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePluginP33_EDC7BAD48289BA0912D37340779F4F4B19TemplatingOperation_result, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);

  return v0;
}

uint64_t TemplatingOperation.__deallocating_deinit()
{
  TemplatingOperation.deinit();

  return swift_deallocClassInstance();
}

void type metadata completion function for TemplatingOperation(uint64_t a1)
{
  type metadata accessor for Result<TemplatingResult, Error>(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for Result<TemplatingResult, Error>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Result<TemplatingResult, Error>)
  {
    type metadata accessor for TemplatingResult();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v1 = type metadata accessor for Result();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Result<TemplatingResult, Error>);
    }
  }
}

uint64_t partial apply for closure #1 in TemplatingOperation.start(on:)()
{
  if (*(v0 + 49))
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  return closure #1 in TemplatingOperation.start(on:)(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), v1 | *(v0 + 48));
}

uint64_t objectdestroy_36Tm()
{

  return _swift_deallocObject(v0, 50, 7);
}

uint64_t outlined assign with copy of Result<TemplatingResult, Error>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t TemplatingParallelizer.__allocating_init(name:timeout:qos:)(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  TemplatingParallelizer.init(name:timeout:qos:)(a1, a2, a3 & 0x1FF, a4, a5);
  return v10;
}

uint64_t TemplatingParallelizer.init(name:timeout:qos:)(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v33 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  OUTLINED_FUNCTION_7();
  v31 = v12;
  __chkstk_darwin(v13);
  OUTLINED_FUNCTION_4();
  v32 = v15 - v14;
  v16 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v16 - 8);
  OUTLINED_FUNCTION_4();
  v17 = type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_7();
  v19 = v18;
  __chkstk_darwin(v20);
  OUTLINED_FUNCTION_4();
  v23 = v22 - v21;
  *(v6 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin22TemplatingParallelizer_catCalls) = _swiftEmptyArrayStorage;
  *(v6 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin22TemplatingParallelizer_results) = _swiftEmptyArrayStorage;
  v24 = v6 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin22TemplatingParallelizer_name;
  *v24 = a1;
  *(v24 + 8) = a2;
  *(v24 + 16) = a3;
  *(v24 + 17) = HIBYTE(a3) & 1;
  v25 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin22TemplatingParallelizer_timeout;
  v26 = type metadata accessor for DispatchTimeInterval();
  v27 = *(v26 - 8);
  (*(v27 + 16))(v6 + v25, a4, v26);
  type metadata accessor for OS_dispatch_queue();
  (*(v19 + 16))(v23, a5, v17);
  static OS_dispatch_queue.Attributes.concurrent.getter();
  (*(v31 + 104))(v32, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v33);
  v28 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  (*(v19 + 8))(a5, v17);
  (*(v27 + 8))(a4, v26);
  *(v6 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin22TemplatingParallelizer_queue) = v28;
  return v6;
}

uint64_t TemplatingParallelizer.addCall(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for PhoneError(0);
  __chkstk_darwin(v6);
  OUTLINED_FUNCTION_4();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  v11 = *(v10 - 8);
  v25 = v10;
  v26 = v11;
  __chkstk_darwin(v10);
  v13 = (&v25 - v12);
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  v15 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin22TemplatingParallelizer_catCalls;
  OUTLINED_FUNCTION_2_121();

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  v16 = *(*(v3 + v15) + 16);
  specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v16);
  v17 = *(v3 + v15);
  *(v17 + 16) = v16 + 1;
  v18 = v17 + 16 * v16;
  *(v18 + 32) = _ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGIegn_Iegg_xq_Ri_zRi0_zRi__Ri0__r0_lyAGytIsegnr_ytIegnr_TRTA;
  *(v18 + 40) = v14;
  *(v3 + v15) = v17;
  swift_endAccess();
  v27 = 0;
  *v9 = 0;
  *(v9 + 8) = 0xE000000000000000;
  *(v9 + 16) = 0xD000000000000038;
  *(v9 + 24) = 0x8000000000462DD0;
  *(v9 + 32) = 0x286C6C6143646461;
  *(v9 + 40) = 0xEB00000000293A5FLL;
  *(v9 + 48) = 55;
  *(v9 + 56) = 0;
  swift_storeEnumTagMultiPayload();
  _s27PhoneCallFlowDelegatePlugin0A5ErrorOACs0F0AAWlTm_13(&lazy protocol witness table cache variable for type PhoneError and conformance PhoneError, type metadata accessor for PhoneError, &protocol conformance descriptor for PhoneError);
  v19 = swift_allocError();
  PhoneError.logged()(v20);
  outlined destroy of PhoneError(v9);
  *v13 = v19;
  swift_storeEnumTagMultiPayload();
  v21 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin22TemplatingParallelizer_results;
  OUTLINED_FUNCTION_2_121();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  v22 = *(*(v3 + v21) + 16);
  specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v22);
  v23 = *(v3 + v21);
  *(v23 + 16) = v22 + 1;
  outlined init with take of Result<TemplatingResult, Error>(v13, v23 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v11 + 72) * v22);
  *(v3 + v21) = v23;
  swift_endAccess();
}

uint64_t _ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGIegn_Iegg_xq_Ri_zRi0_zRi__Ri0__r0_lyAGytIsegnr_ytIegnr_TR(uint64_t *a1, void (*a2)(uint64_t (*)(), uint64_t))
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;

  a2(partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Result<TemplatingResult, Error>) -> (@out ()), v5);
}

uint64_t TemplatingParallelizer.execute(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_7();
  v30 = v7;
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_4();
  v11 = v10 - v9;
  type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_7();
  v28 = v13;
  v29 = v12;
  __chkstk_darwin(v12);
  OUTLINED_FUNCTION_4();
  v16 = v15 - v14;
  static Signpost.begin(_:)();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v25 = swift_allocObject();
  *(v25 + 16) = v3;
  *(v25 + 24) = v18;
  *(v25 + 32) = v20;
  *(v25 + 40) = v22;
  *(v25 + 48) = v24;
  *(v25 + 49) = HIBYTE(v24) & 1;
  *(v25 + 56) = a1;
  *(v25 + 64) = a2;
  aBlock[4] = partial apply for closure #1 in TemplatingParallelizer.execute(_:);
  aBlock[5] = v25;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_13;
  v26 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  _s27PhoneCallFlowDelegatePlugin0A5ErrorOACs0F0AAWlTm_13(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v26);

  (*(v30 + 8))(v11, v6);
  (*(v28 + 8))(v16, v29);
}

uint64_t closure #1 in TemplatingParallelizer.execute(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v57 = a7;
  v55 = a6;
  v54 = a5;
  v53 = a4;
  v52 = a3;
  v56 = a2;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v62 = *(v8 - 8);
  v63 = v8;
  __chkstk_darwin(v8);
  v61 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v59 = *(v10 - 8);
  v60 = v10;
  __chkstk_darwin(v10);
  v58 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for DispatchTime();
  v50 = *(v51 - 8);
  __chkstk_darwin(v51);
  v48 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v49 = &v47 - v14;
  v15 = dispatch_group_create();
  v16 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin22TemplatingParallelizer_catCalls;
  swift_beginAccess();
  v17 = *(a1 + v16);
  v18 = *(v17 + 16);

  v19 = 0;
  v20 = v17 + 40;
  while (v18 != v19)
  {
    if (v19 >= *(v17 + 16))
    {
      __break(1u);
LABEL_12:
      swift_once();
      goto LABEL_7;
    }

    v21 = *(v20 - 8);

    dispatch_group_enter(v15);
    v22 = swift_allocObject();
    v22[2] = a1;
    v22[3] = v19;
    v22[4] = v15;
    v23 = swift_allocObject();
    *(v23 + 16) = partial apply for closure #1 in closure #1 in TemplatingParallelizer.execute(_:);
    *(v23 + 24) = v22;
    aBlock = partial apply for closure #2 in StartAudioCallCatTemplatingService.makeFailureHandlingIntentDialog(app:intent:intentResponse:_:);
    v66 = v23;

    v24 = v15;

    v21(&aBlock);

    v20 += 16;
    ++v19;
  }

  v25 = v48;
  static DispatchTime.now()();
  v26 = v49;
  + infix(_:_:)();
  v27 = *(v50 + 8);
  v28 = v51;
  v27(v25, v51);
  LOBYTE(v25) = OS_dispatch_group.wait(timeout:)();
  v27(v26, v28);
  if ((v25 & 1) == 0)
  {
    goto LABEL_10;
  }

  if (one-time initialization token for siriPhone != -1)
  {
    goto LABEL_12;
  }

LABEL_7:
  v29 = type metadata accessor for Logger();
  __swift_project_value_buffer(v29, static Logger.siriPhone);

  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    aBlock = v33;
    *v32 = 136315138;
    v34 = StaticString.description.getter();
    v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v35, &aBlock);

    *(v32 + 4) = v36;
    _os_log_impl(&dword_0, v30, v31, "Timed out for parallel CAT task: %s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v33);
  }

LABEL_10:
  type metadata accessor for OS_dispatch_queue();
  v37 = static OS_dispatch_queue.main.getter();
  v38 = swift_allocObject();
  v40 = v56;
  v39 = v57;
  *(v38 + 16) = a1;
  *(v38 + 24) = v40;
  v41 = v53;
  *(v38 + 32) = v52;
  *(v38 + 40) = v41;
  BYTE1(v41) = BYTE1(v54);
  *(v38 + 48) = v54;
  *(v38 + 49) = BYTE1(v41) & 1;
  *(v38 + 56) = v55;
  *(v38 + 64) = v39;
  v69 = partial apply for closure #2 in closure #1 in TemplatingParallelizer.execute(_:);
  v70 = v38;
  aBlock = _NSConcreteStackBlock;
  v66 = 1107296256;
  v67 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v68 = &block_descriptor_22;
  v42 = _Block_copy(&aBlock);

  v43 = v58;
  static DispatchQoS.unspecified.getter();
  v64 = _swiftEmptyArrayStorage;
  _s27PhoneCallFlowDelegatePlugin0A5ErrorOACs0F0AAWlTm_13(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  v44 = v61;
  v45 = v63;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_group.notify(qos:flags:queue:execute:)();
  _Block_release(v42);

  (*(v62 + 8))(v44, v45);
  (*(v59 + 8))(v43, v60);
}

void closure #1 in closure #1 in TemplatingParallelizer.execute(_:)(uint64_t a1, uint64_t a2, unint64_t a3, NSObject *a4)
{
  v8 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin22TemplatingParallelizer_results;
  swift_beginAccess();
  v9 = *(a2 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + v8) = v9;
  if (isUniquelyReferenced_nonNull_native)
  {
    if ((a3 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  specialized _ArrayBuffer._consumeAndCreateNew()();
  v9 = v12;
  *(a2 + v8) = v12;
  if ((a3 & 0x8000000000000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (*(v9 + 16) > a3)
  {
    v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR) - 8);
    outlined assign with copy of Result<TemplatingResult, Error>(a1, v9 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * a3);
    *(a2 + v8) = v9;
    swift_endAccess();
    dispatch_group_leave(a4);
    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t closure #2 in closure #1 in TemplatingParallelizer.execute(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t))
{
  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Logger.siriPhone);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19[0] = v11;
    *v10 = 134218242;
    v12 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin22TemplatingParallelizer_results;
    swift_beginAccess();
    *(v10 + 4) = *(*(a1 + v12) + 16);

    *(v10 + 12) = 2080;
    v13 = StaticString.description.getter();
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, v19);

    *(v10 + 14) = v15;
    _os_log_impl(&dword_0, v8, v9, "Sending back %ld results for parallel CAT task: %s", v10, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v11);
  }

  else
  {
  }

  Signpost.OpenSignpost.end()();
  swift_beginAccess();

  a6(v16);
}

uint64_t TemplatingParallelizer.deinit()
{
  v1 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin22TemplatingParallelizer_timeout;
  v2 = type metadata accessor for DispatchTimeInterval();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t TemplatingParallelizer.__deallocating_deinit()
{
  TemplatingParallelizer.deinit();

  return swift_deallocClassInstance();
}

uint64_t _s27PhoneCallFlowDelegatePlugin0A5ErrorOACs0F0AAWlTm_13(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for TemplatingParallelizer(uint64_t a1)
{
  result = type metadata singleton initialization cache for TemplatingParallelizer;
  if (!type metadata singleton initialization cache for TemplatingParallelizer)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for TemplatingParallelizer(uint64_t a1)
{
  result = type metadata accessor for DispatchTimeInterval();
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

uint64_t partial apply for closure #1 in TemplatingParallelizer.execute(_:)(uint64_t (*a1)(void, void, void, void, void, void, void))
{
  if (*(v1 + 49))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return a1(*(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), v2 | *(v1 + 48), *(v1 + 56), *(v1 + 64));
}

uint64_t static TemplatingResult.makeDisplayTextResult(print:templateIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return TemplatingResult.init(templateIdentifier:speak:print:)();
}

uint64_t TemplatingResult.merge(with:behaviorAfterSpeaking:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v20[2] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow21BehaviorAfterSpeakingOSgMd, &_s11SiriKitFlow21BehaviorAfterSpeakingOSgMR);
  __chkstk_darwin(v3 - 8);
  v5 = v20 - v4;
  v6 = type metadata accessor for BehaviorAfterSpeaking();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v20 - v11;
  v13 = TemplatingResult.print.getter();
  v14 = TemplatingResult.print.getter();
  v21 = v13;
  specialized Array.append<A>(contentsOf:)(v14);
  v20[1] = v21;
  v15 = TemplatingResult.speak.getter();
  v16 = TemplatingResult.speak.getter();
  v21 = v15;
  specialized Array.append<A>(contentsOf:)(v16);
  outlined init with copy of BehaviorAfterSpeaking?(a1, v5);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    TemplatingResult.behaviorAfterSpeaking.getter();
    if (__swift_getEnumTagSinglePayload(v5, 1, v6) != 1)
    {
      outlined destroy of BehaviorAfterSpeaking?(v5);
    }
  }

  else
  {
    (*(v7 + 32))(v12, v5, v6);
  }

  v17 = TemplatingResult.dialogIdentifier.getter();
  v18 = TemplatingResult.dialogIdentifier.getter();
  v21 = v17;
  specialized Array.append<A>(contentsOf:)(v18);
  TemplatingResult.templateIdentifier.getter();
  (*(v7 + 16))(v9, v12, v6);
  TemplatingResult.init(templateIdentifier:speak:print:behaviorAfterSpeaking:dialogIdentifier:)();
  return (*(v7 + 8))(v12, v6);
}

uint64_t outlined init with copy of BehaviorAfterSpeaking?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow21BehaviorAfterSpeakingOSgMd, &_s11SiriKitFlow21BehaviorAfterSpeakingOSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void specialized Sequence.compactMap<A>(_:)(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for LSApplicationExtensionRecord();
    lazy protocol witness table accessor for type LSApplicationExtensionRecord and conformance NSObject(&lazy protocol witness table cache variable for type LSApplicationExtensionRecord and conformance NSObject, type metadata accessor for LSApplicationExtensionRecord, &protocol conformance descriptor for NSObject);
    Set.Iterator.init(_cocoa:)();
    v2 = v25;
    v3 = v26;
    v4 = v27;
    v5 = v28;
    v6 = v29;
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v3 = a1 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(a1 + 56);

    v5 = 0;
  }

  v23 = _swiftEmptyArrayStorage;
  v24 = v2;
LABEL_8:
  v10 = v5;
  v11 = v6;
  while (1)
  {
    if (v2 < 0)
    {
      if (!__CocoaSet.Iterator.next()())
      {
        goto LABEL_24;
      }

      type metadata accessor for LSApplicationExtensionRecord();
      swift_dynamicCast();
      v14 = v30;
      v5 = v10;
      v6 = v11;
      if (!v30)
      {
LABEL_25:
        v2 = v24;
LABEL_24:
        outlined consume of Set<LSApplicationExtensionRecord>.Iterator._Variant(v2);
        return;
      }

      goto LABEL_18;
    }

    v12 = v10;
    v13 = v11;
    v5 = v10;
    if (!v11)
    {
      break;
    }

LABEL_14:
    v6 = (v13 - 1) & v13;
    v14 = *(*(v2 + 48) + ((v5 << 9) | (8 * __clz(__rbit64(v13)))));
    if (!v14)
    {
      goto LABEL_25;
    }

LABEL_18:
    v15 = outlined bridged method (pb) of @objc LSBundleRecord.bundleIdentifier.getter(v14);
    v17 = v16;

    v10 = v5;
    v11 = v6;
    v2 = v24;
    if (v17)
    {
      v18 = v23;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v18 = v21;
      }

      v19 = v18[2];
      if (v19 >= v18[3] >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v18 = v22;
      }

      v18[2] = v19 + 1;
      v23 = v18;
      v20 = &v18[2 * v19];
      v20[4] = v15;
      v20[5] = v17;
      v2 = v24;
      goto LABEL_8;
    }
  }

  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= ((v4 + 64) >> 6))
    {
      goto LABEL_24;
    }

    v13 = *(v3 + 8 * v5);
    ++v12;
    if (v13)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

uint64_t *ThirdPartyAnnotatedAppStore.instance.unsafeMutableAddressor()
{
  if (one-time initialization token for instance != -1)
  {
    OUTLINED_FUNCTION_14_60(&one-time initialization token for instance);
  }

  return &static ThirdPartyAnnotatedAppStore.instance;
}

uint64_t static ThirdPartyAnnotatedAppStore.instance.getter()
{
  if (one-time initialization token for instance != -1)
  {
    OUTLINED_FUNCTION_14_60(&one-time initialization token for instance);
  }
}

__n128 ThirdPartyAnnotatedAppStore.getApp(for:)@<Q0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = *(v3 + 16);
  v60.n128_u64[0] = a1;
  v60.n128_u64[1] = a2;
  v9 = *(*v8 + 176);
  v10 = *v8 + 176;

  v9(&v66, &v60);

  if (v66.n128_u64[0])
  {
    v58 = v66;
    v55 = v67;
    v11 = *(&v68 + 1);
    v12 = v68;
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static Logger.siriPhone);

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v14, v15))
    {
      swift_slowAlloc();
      v16 = OUTLINED_FUNCTION_54_1();
      v66.n128_u64[0] = v16;
      *v11 = 136315394;
      v60.n128_u64[0] = v4;
      type metadata accessor for ThirdPartyAnnotatedAppStore();

      v17 = String.init<A>(describing:)();
      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v66);

      *(v11 + 4) = v19;
      *(v11 + 14) = OUTLINED_FUNCTION_21_50(v20, v21, v22, v23, v24, v25, v26, v27, v51, v11, v55, *(&v55 + 1), v58.n128_i64[0], v58.n128_i64[1], v60.n128_i64[0], v60.n128_i64[1], v61, *(&v61 + 1), v62, *(&v62 + 1), v63, v64, v65);
      OUTLINED_FUNCTION_4_17(&dword_0, v28, v29, "#%s Found cached AnnotatedApp for %s.");
      OUTLINED_FUNCTION_51_2();
      OUTLINED_FUNCTION_26_0(v16);
      v30 = v11;
      v11 = v53;
      OUTLINED_FUNCTION_26_0(v30);
    }
  }

  else
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v31 = type metadata accessor for Logger();
    __swift_project_value_buffer(v31, static Logger.siriPhone);

    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v32, v33))
    {
      swift_slowAlloc();
      v34 = OUTLINED_FUNCTION_54_1();
      v66.n128_u64[0] = v34;
      *v10 = 136315394;
      v60.n128_u64[0] = v4;
      type metadata accessor for ThirdPartyAnnotatedAppStore();

      v35 = String.init<A>(describing:)();
      v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v36, &v66);

      *(v10 + 4) = v37;
      *(v10 + 14) = OUTLINED_FUNCTION_21_50(v38, v39, v40, v41, v42, v43, v44, v45, v51, v52, v54, v56, v57, v59, v60.n128_i64[0], v60.n128_i64[1], v61, *(&v61 + 1), v62, *(&v62 + 1), v63, v64, v65);
      OUTLINED_FUNCTION_4_17(&dword_0, v46, v47, "#%s Searching for AnnotatedApp for %s on device.");
      OUTLINED_FUNCTION_51_2();
      OUTLINED_FUNCTION_26_0(v34);
      OUTLINED_FUNCTION_5_7();
    }

    static Signpost.begin(_:)();
    ThirdPartyAnnotatedAppStore.findApp(identifier:)(a1, a2, &v66);
    v11 = *(&v68 + 1);
    v12 = v68;
    v48 = *(v4 + 16);
    v64 = a1;
    v65 = a2;
    v55 = v67;
    v58 = v66;
    v60 = v66;
    v61 = v67;
    v62 = v68;
    v49 = *(*v48 + 184);

    v49(&v64, &v60);

    Signpost.OpenSignpost.end()();
  }

  result = v58;
  *a3 = v58;
  *(a3 + 16) = v55;
  *(a3 + 32) = v12;
  *(a3 + 40) = v11;
  return result;
}

void ThirdPartyAnnotatedAppStore.findApp(identifier:)(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = ThirdPartyAnnotatedAppStore.getApplicationRecord(identifier:)(a1, a2);
  if (v4)
  {
    v6 = v4;
    v7 = v5;
    v8 = [v4 applicationExtensionRecords];
    type metadata accessor for LSApplicationExtensionRecord();
    lazy protocol witness table accessor for type LSApplicationExtensionRecord and conformance NSObject(&lazy protocol witness table cache variable for type LSApplicationExtensionRecord and conformance NSObject, type metadata accessor for LSApplicationExtensionRecord, &protocol conformance descriptor for NSObject);
    v9 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    ThirdPartyAnnotatedAppStore.getExtensionBundleId(extensions:)(v9);

    type metadata accessor for App();

    v10 = App.__allocating_init(appIdentifier:pluginIdentifier:)();
    v11 = [v7 supportedIntents];
    v12 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v13 = [v7 actionsRestrictedWhileLocked];
    v14 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v15 = App.appIdentifier.getter();
    v17 = v16;
  }

  else
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static Logger.siriPhone);

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v26 = v22;
      *v21 = 136315138;
      type metadata accessor for ThirdPartyAnnotatedAppStore();

      v23 = String.init<A>(describing:)();
      v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, &v26);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_0, v19, v20, "#%s No app found", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      OUTLINED_FUNCTION_26_0(v22);
      OUTLINED_FUNCTION_26_0(v21);
    }

    v10 = 0;
    v12 = 0;
    v15 = 0;
    v17 = 0;
    v14 = 0;
  }

  *a3 = v10;
  a3[1] = v12;
  a3[2] = v15;
  a3[3] = v17;
  a3[4] = 0;
  a3[5] = v14;
}

uint64_t ThirdPartyAnnotatedAppStore.getExtensionBundleId(extensions:)(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = _swiftEmptySetSingleton;
    v61 = _swiftEmptySetSingleton;

    __CocoaSet.makeIterator()();
    v3 = INIntentsServiceExtensionPointName;
    v1 = -1;
    while (1)
    {
      while (1)
      {
        v4 = __CocoaSet.Iterator.next()();
        if (!v4)
        {

          goto LABEL_44;
        }

        v59 = v4;
        type metadata accessor for LSApplicationExtensionRecord();
        swift_dynamicCast();
        v5 = [v60[0] extensionPointRecord];
        v6 = [v5 identifier];

        v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v9 = v8;

        if (v7 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v9 != v10)
        {
          break;
        }

LABEL_11:
        v13 = v60[0];
        v14 = v2[2];
        if (v2[3] <= v14)
        {
          specialized _NativeSet.resize(capacity:)(v14 + 1);
        }

        v2 = v61;
        v15 = NSObject._rawHashValue(seed:)(v61[5]);
        v16 = v61 + 7;
        v17 = -1 << *(v61 + 32);
        v18 = v15 & ~v17;
        v19 = v18 >> 6;
        if (((-1 << v18) & ~v61[(v18 >> 6) + 7]) != 0)
        {
          v20 = __clz(__rbit64((-1 << v18) & ~v61[(v18 >> 6) + 7])) | v18 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v21 = 0;
          v22 = (63 - v17) >> 6;
          do
          {
            if (++v19 == v22 && (v21 & 1) != 0)
            {
              __break(1u);
              goto LABEL_49;
            }

            v23 = v19 == v22;
            if (v19 == v22)
            {
              v19 = 0;
            }

            v21 |= v23;
            v24 = v16[v19];
          }

          while (v24 == -1);
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
        }

        *(v16 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
        *(v2[6] + 8 * v20) = v13;
        OUTLINED_FUNCTION_12_66();
      }

      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v12)
      {
        goto LABEL_11;
      }
    }
  }

  v26 = *(a1 + 32);
  v27 = v26 & 0x3F;
  v57 = ((1 << v26) + 63) >> 6;
  v3 = 8 * v57;

  if (v27 > 0xD)
  {
    goto LABEL_50;
  }

  while (2)
  {
    v54 = &v54;
    __chkstk_darwin(v28);
    v55 = (&v54 - ((v3 + 15) & 0x3FFFFFFFFFFFFFF0));
    specialized UnsafeMutablePointer.assign(repeating:count:)(0, v57, v55);
    v56 = 0;
    v29 = 0;
    OUTLINED_FUNCTION_18_41();
    v3 = v31 & v30;
    v33 = (v32 + 63) >> 6;
    v58 = INIntentsServiceExtensionPointName;
    while (v3)
    {
      OUTLINED_FUNCTION_23_42();
LABEL_33:
      v38 = v34 | (v29 << 6);
      v39 = *(*(v1 + 48) + 8 * v38);
      v40 = [v39 extensionPointRecord];
      v41 = [v40 identifier];

      v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v44 = v43;

      if (v42 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v44 == v45)
      {

LABEL_40:
        *(v55 + ((v38 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v38;
        if (__OFADD__(v56++, 1))
        {
          __break(1u);
LABEL_43:
          v2 = specialized _NativeSet.extractSubset(using:count:)(v55, v57, v56, v1);
          goto LABEL_44;
        }
      }

      else
      {
        v47 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v47)
        {
          goto LABEL_40;
        }
      }
    }

    v35 = v29;
    while (1)
    {
      v29 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v29 >= v33)
      {
        goto LABEL_43;
      }

      ++v35;
      if (*(v1 + 56 + 8 * v29))
      {
        OUTLINED_FUNCTION_10_78();
        v3 = v37 & v36;
        goto LABEL_33;
      }
    }

LABEL_49:
    __break(1u);
LABEL_50:

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v53 = swift_slowAlloc();

  v2 = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s10_NativeSetVySo28LSApplicationExtensionRecordCG_Tg506_ss10_gh28V6filteryAByxGSbxKXEKFADs13_ab11VKXEfU_So28ijK5C_TG5AJxSbs5Error_pRi_zRi0_zlyAIIsgndzo_Tf1nc_n(v53, v57, v1, closure #1 in ThirdPartyAnnotatedAppStore.getExtensionBundleId(extensions:), 0);
  swift_bridgeObjectRelease_n();
  OUTLINED_FUNCTION_26_0(v53);
LABEL_44:
  specialized Sequence.compactMap<A>(_:)(v2, v25);
  v50 = v49;

  if (*(v50 + 16))
  {
    v51 = *(v50 + 32);
  }

  else
  {
    v51 = 0;
  }

  return v51;
}

uint64_t closure #1 in ThirdPartyAnnotatedAppStore.getExtensionBundleId(extensions:)(id *a1)
{
  v1 = [*a1 extensionPointRecord];
  v2 = [v1 identifier];

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  if (v3 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

id ThirdPartyAnnotatedAppStore.getApplicationRecord(identifier:)(uint64_t a1, unint64_t a2)
{
  v4 = objc_allocWithZone(LSApplicationRecord);

  v5 = @nonobjc LSApplicationRecord.init(bundleIdentifier:allowPlaceholder:)(a1, a2, 0);
  if (![objc_opt_self() appInfoWithApplicationRecord:v5])
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Logger.siriPhone);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_0, v7, v8, "Error initializing INAppInfo", v9, 2u);
      OUTLINED_FUNCTION_5_7();
    }

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v15 = v13;
      *v12 = 136315138;
      *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v15);
      _os_log_impl(&dword_0, v10, v11, "Error INAppInfo id is: %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
      OUTLINED_FUNCTION_5_7();
      OUTLINED_FUNCTION_26_0(v12);
    }

    return 0;
  }

  return v5;
}

double protocol witness for AnnotatedAppStoring.getApp(for:) in conformance ThirdPartyAnnotatedAppStore@<D0>(_OWORD *a1@<X8>)
{
  (*(**v1 + 120))(v5);
  v3 = v5[1];
  *a1 = v5[0];
  a1[1] = v3;
  result = *&v6;
  a1[2] = v6;
  return result;
}

uint64_t specialized UnsafeMutablePointer.assign(repeating:count:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_425000;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

unint64_t type metadata accessor for LSApplicationExtensionRecord()
{
  result = lazy cache variable for type metadata for LSApplicationExtensionRecord;
  if (!lazy cache variable for type metadata for LSApplicationExtensionRecord)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for LSApplicationExtensionRecord);
  }

  return result;
}

uint64_t specialized _NativeSet.resize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo28LSApplicationExtensionRecordCGMd, &_ss11_SetStorageCySo28LSApplicationExtensionRecordCGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

  v6 = 0;
  v7 = (v3 + 56);
  v8 = 1 << *(v3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v3 + 56);
  v11 = (v8 + 63) >> 6;
  v12 = result + 56;
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      specialized UnsafeMutablePointer.assign(repeating:count:)(0, (v25 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v25;
    }

    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
    result = NSObject._rawHashValue(seed:)(*(v5 + 40));
    v17 = -1 << *(v5 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      break;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v5 + 48) + 8 * v20) = v16;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v21 = 0;
  v22 = (63 - v17) >> 6;
  while (++v19 != v22 || (v21 & 1) == 0)
  {
    v23 = v19 == v22;
    if (v19 == v22)
    {
      v19 = 0;
    }

    v21 |= v23;
    v24 = *(v12 + 8 * v19);
    if (v24 != -1)
    {
      v20 = __clz(__rbit64(~v24)) + (v19 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

void specialized _NativeSet.resize(capacity:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_1_129();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  OUTLINED_FUNCTION_8_84();
  OUTLINED_FUNCTION_24_46();
  if (!v35)
  {
LABEL_23:

    *v30 = v32;
    OUTLINED_FUNCTION_11_10();
    return;
  }

  v36 = 0;
  OUTLINED_FUNCTION_5_93();
  OUTLINED_FUNCTION_26_38();
  if (!v34)
  {
LABEL_4:
    v38 = v36;
    while (1)
    {
      v36 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v36 >= v33)
      {
        break;
      }

      ++v38;
      if (*(v31 + 56 + 8 * v36))
      {
        OUTLINED_FUNCTION_10_78();
        v34 = v40 & v39;
        goto LABEL_9;
      }
    }

    OUTLINED_FUNCTION_7_85();
    if (v51 != v52)
    {
      OUTLINED_FUNCTION_13_62(v50);
    }

    else
    {
      v53 = OUTLINED_FUNCTION_11_67();
      specialized UnsafeMutablePointer.assign(repeating:count:)(v53, v54, v31 + 56);
    }

    *(v31 + 16) = 0;
    goto LABEL_23;
  }

  while (1)
  {
    OUTLINED_FUNCTION_25_43();
LABEL_9:
    v41 = (*(v31 + 48) + 16 * (v37 | (v36 << 6)));
    v42 = *v41;
    v43 = v41[1];
    Hasher.init(_seed:)();
    String.hash(into:)();
    Hasher._finalize()();
    OUTLINED_FUNCTION_2_122();
    if (v44)
    {
      break;
    }

    OUTLINED_FUNCTION_20_7();
LABEL_17:
    OUTLINED_FUNCTION_9_82(v45);
    v49 = (v48 + 16 * v47);
    *v49 = v42;
    v49[1] = v43;
    OUTLINED_FUNCTION_12_66();
    if (!v34)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_18_35();
  while (1)
  {
    OUTLINED_FUNCTION_19_44();
    if (v44)
    {
      if (v46)
      {
        break;
      }
    }

    OUTLINED_FUNCTION_15_60();
    if (!v44)
    {
      OUTLINED_FUNCTION_16_9();
      goto LABEL_17;
    }
  }

LABEL_25:
  __break(1u);
}

{
  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_1_129();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSSgGMd, &_ss11_SetStorageCySSSgGMR);
  OUTLINED_FUNCTION_8_84();
  OUTLINED_FUNCTION_24_46();
  if (!v35)
  {
LABEL_26:

    *v30 = v32;
    OUTLINED_FUNCTION_11_10();
    return;
  }

  v36 = 0;
  OUTLINED_FUNCTION_5_93();
  OUTLINED_FUNCTION_26_38();
  if (!v34)
  {
LABEL_4:
    v38 = v36;
    while (1)
    {
      v36 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v36 >= v33)
      {
        break;
      }

      ++v38;
      if (*(v31 + 56 + 8 * v36))
      {
        OUTLINED_FUNCTION_10_78();
        v34 = v40 & v39;
        goto LABEL_9;
      }
    }

    OUTLINED_FUNCTION_7_85();
    if (v51 != v52)
    {
      OUTLINED_FUNCTION_13_62(v50);
    }

    else
    {
      v53 = OUTLINED_FUNCTION_11_67();
      specialized UnsafeMutablePointer.assign(repeating:count:)(v53, v54, v31 + 56);
    }

    *(v31 + 16) = 0;
    goto LABEL_26;
  }

  while (1)
  {
    OUTLINED_FUNCTION_25_43();
LABEL_9:
    v41 = (*(v31 + 48) + 16 * (v37 | (v36 << 6)));
    v43 = *v41;
    v42 = v41[1];
    Hasher.init(_seed:)();
    if (v42)
    {
      Hasher._combine(_:)(1u);
      String.hash(into:)();
    }

    else
    {
      Hasher._combine(_:)(0);
    }

    Hasher._finalize()();
    OUTLINED_FUNCTION_2_122();
    if (v44)
    {
      break;
    }

    OUTLINED_FUNCTION_20_7();
LABEL_20:
    OUTLINED_FUNCTION_9_82(v45);
    v49 = (v48 + 16 * v47);
    *v49 = v43;
    v49[1] = v42;
    OUTLINED_FUNCTION_12_66();
    if (!v34)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_18_35();
  while (1)
  {
    OUTLINED_FUNCTION_19_44();
    if (v44)
    {
      if (v46)
      {
        break;
      }
    }

    OUTLINED_FUNCTION_15_60();
    if (!v44)
    {
      OUTLINED_FUNCTION_16_9();
      goto LABEL_20;
    }
  }

LABEL_28:
  __break(1u);
}

void specialized _NativeSet.resize(capacity:)()
{
  OUTLINED_FUNCTION_1_129();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy17SiriAppResolution0D0CGMd, &_ss11_SetStorageCy17SiriAppResolution0D0CGMR);
  OUTLINED_FUNCTION_8_84();
  OUTLINED_FUNCTION_24_46();
  if (!v3)
  {
LABEL_23:

    *v0 = v2;
    return;
  }

  v26 = v1;
  v4 = 0;
  v5 = v1 + 56;
  OUTLINED_FUNCTION_5_93();
  v8 = v7 & v6;
  v10 = (v9 + 63) >> 6;
  if ((v7 & v6) == 0)
  {
LABEL_4:
    v12 = v4;
    while (1)
    {
      v4 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v4 >= v10)
      {
        break;
      }

      ++v12;
      if (*(v5 + 8 * v4))
      {
        OUTLINED_FUNCTION_10_78();
        v8 = v14 & v13;
        goto LABEL_9;
      }
    }

    OUTLINED_FUNCTION_7_85();
    if (v22 != v23)
    {
      OUTLINED_FUNCTION_13_62(v21);
    }

    else
    {
      v24 = OUTLINED_FUNCTION_11_67();
      specialized UnsafeMutablePointer.assign(repeating:count:)(v24, v25, v5);
    }

    *(v1 + 16) = 0;
    goto LABEL_23;
  }

  while (1)
  {
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_9:
    v15 = *(*(v1 + 48) + 8 * (v11 | (v4 << 6)));
    type metadata accessor for App();
    lazy protocol witness table accessor for type LSApplicationExtensionRecord and conformance NSObject(&lazy protocol witness table cache variable for type App and conformance App, &type metadata accessor for App, &protocol conformance descriptor for App);
    dispatch thunk of Hashable._rawHashValue(seed:)();
    OUTLINED_FUNCTION_2_122();
    if (v16)
    {
      break;
    }

    OUTLINED_FUNCTION_20_7();
LABEL_17:
    OUTLINED_FUNCTION_9_82(v17);
    *(v20 + 8 * v19) = v15;
    OUTLINED_FUNCTION_12_66();
    v1 = v26;
    if (!v8)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_18_35();
  while (1)
  {
    OUTLINED_FUNCTION_19_44();
    if (v16)
    {
      if (v18)
      {
        break;
      }
    }

    OUTLINED_FUNCTION_15_60();
    if (!v16)
    {
      OUTLINED_FUNCTION_16_9();
      goto LABEL_17;
    }
  }

LABEL_25:
  __break(1u);
}

{
  OUTLINED_FUNCTION_1_129();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySiGMd, &_ss11_SetStorageCySiGMR);
  v2 = OUTLINED_FUNCTION_8_84();
  v3 = v2;
  if (!*(v1 + 16))
  {
LABEL_28:

    *v0 = v3;
    return;
  }

  v4 = 0;
  v6 = (v1 + 56);
  v5 = *(v1 + 56);
  v7 = 1 << *(v1 + 32);
  v22 = v0;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & v5;
  v10 = v2 + 56;
  if ((v8 & v5) == 0)
  {
LABEL_7:
    v12 = v4;
    while (1)
    {
      v4 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v4 >= ((v7 + 63) >> 6))
      {
        break;
      }

      ++v12;
      if (v6[v4])
      {
        OUTLINED_FUNCTION_10_78();
        v9 = v14 & v13;
        goto LABEL_12;
      }
    }

    if (v7 >= 64)
    {
      specialized UnsafeMutablePointer.assign(repeating:count:)(0, (v7 + 63) >> 6, v1 + 56);
    }

    else
    {
      *v6 = -1 << v7;
    }

    v0 = v22;
    *(v1 + 16) = 0;
    goto LABEL_28;
  }

  while (1)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_12:
    v15 = *(*(v1 + 48) + 8 * (v11 | (v4 << 6)));
    v16 = static Hasher._hash(seed:_:)() & ~(-1 << *(v3 + 32));
    if (((-1 << v16) & ~*(v10 + 8 * (v16 >> 6))) == 0)
    {
      break;
    }

    OUTLINED_FUNCTION_20_7();
LABEL_22:
    *(v10 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
    *(*(v3 + 48) + 8 * v17) = v15;
    ++*(v3 + 16);
    if (!v9)
    {
      goto LABEL_7;
    }
  }

  OUTLINED_FUNCTION_18_35();
  while (1)
  {
    OUTLINED_FUNCTION_19_44();
    if (v21)
    {
      if (v19)
      {
        break;
      }
    }

    if (v18 == v20)
    {
      v18 = 0;
    }

    if (*(v10 + 8 * v18) != -1)
    {
      OUTLINED_FUNCTION_16_9();
      goto LABEL_22;
    }
  }

LABEL_30:
  __break(1u);
}

{
  OUTLINED_FUNCTION_1_129();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy27PhoneCallFlowDelegatePlugin07OngoingD12OfferOptionsOGMd, &_ss11_SetStorageCy27PhoneCallFlowDelegatePlugin07OngoingD12OfferOptionsOGMR);
  v2 = OUTLINED_FUNCTION_8_84();
  if (v1[2])
  {
    v3 = 0;
    v4 = v1 + 7;
    OUTLINED_FUNCTION_18_41();
    v7 = v6 & v5;
    v9 = (v8 + 63) >> 6;
    if ((v6 & v5) != 0)
    {
      do
      {
        v10 = __clz(__rbit64(v7));
        v7 &= v7 - 1;
LABEL_9:
        specialized _NativeSet._unsafeInsertNew(_:)(*(v1[6] + (v10 | (v3 << 6))), v2);
      }

      while (v7);
    }

    v11 = v3;
    while (1)
    {
      v3 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
        return;
      }

      if (v3 >= v9)
      {
        break;
      }

      ++v11;
      if (v4[v3])
      {
        OUTLINED_FUNCTION_10_78();
        v7 = v13 & v12;
        goto LABEL_9;
      }
    }

    OUTLINED_FUNCTION_7_85();
    if (v15 != v16)
    {
      *v4 = -1 << v14;
    }

    else
    {
      v17 = OUTLINED_FUNCTION_11_67();
      specialized UnsafeMutablePointer.assign(repeating:count:)(v17, v18, (v1 + 7));
    }

    v1[2] = 0;
  }

  *v0 = v2;
}

{
  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_1_129();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy27PhoneCallFlowDelegatePlugin23SharedNeedsValueContextC0iJ4CaseOGMd, &_ss11_SetStorageCy27PhoneCallFlowDelegatePlugin23SharedNeedsValueContextC0iJ4CaseOGMR);
  OUTLINED_FUNCTION_8_84();
  OUTLINED_FUNCTION_24_46();
  if (v3)
  {
    v4 = 0;
    v5 = 1 << *(v1 + 32);
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    else
    {
      v6 = -1;
    }

    v7 = v6 & *(v1 + 56);
    v8 = (v5 + 63) >> 6;
    v9 = v2 + 56;
    if (!v7)
    {
      goto LABEL_6;
    }

    do
    {
LABEL_10:
      Hasher.init(_seed:)();
      Hasher._combine(_:)(0);
      v11 = Hasher._finalize()() & ~(-1 << *(v2 + 32));
      if (((-1 << v11) & ~*(v9 + 8 * (v11 >> 6))) == 0)
      {
        OUTLINED_FUNCTION_18_35();
        while (1)
        {
          OUTLINED_FUNCTION_19_44();
          if (v16)
          {
            if (v14)
            {
              break;
            }
          }

          if (v13 == v15)
          {
            v13 = 0;
          }

          if (*(v9 + 8 * v13) != -1)
          {
            OUTLINED_FUNCTION_16_9();
            goto LABEL_20;
          }
        }

LABEL_28:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_20_7();
LABEL_20:
      v7 &= v7 - 1;
      *(v9 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      OUTLINED_FUNCTION_12_66();
    }

    while (v7);
    while (1)
    {
LABEL_6:
      v10 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v10 >= v8)
      {
        break;
      }

      v7 = *(v1 + 56 + 8 * v10);
      ++v4;
      if (v7)
      {
        v4 = v10;
        goto LABEL_10;
      }
    }

    OUTLINED_FUNCTION_7_85();
    if (v18 != v19)
    {
      OUTLINED_FUNCTION_13_62(v17);
    }

    else
    {
      v20 = OUTLINED_FUNCTION_11_67();
      specialized UnsafeMutablePointer.assign(repeating:count:)(v20, v21, v1 + 56);
    }

    *(v1 + 16) = 0;
  }

  *v0 = v2;
  OUTLINED_FUNCTION_11_10();
}

void specialized _NativeSet.resize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v40 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
  v42 = *(v6 - 8);
  __chkstk_darwin(v6 - 8);
  v43 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v36 - v9;
  v11 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy12SiriOntology025UsoEntity_applePhoneCall_hI9AttributeC13DefinedValuesOSgGMd, &_ss11_SetStorageCy12SiriOntology025UsoEntity_applePhoneCall_hI9AttributeC13DefinedValuesOSgGMR);
  v12 = static _SetStorage.resize(original:capacity:move:)();
  if (!*(v11 + 16))
  {
LABEL_26:

    *v2 = v12;
    return;
  }

  v41 = v3;
  v36 = v1;
  v13 = 0;
  v14 = (v11 + 56);
  OUTLINED_FUNCTION_5_93();
  v17 = v16 & v15;
  v19 = (v18 + 63) >> 6;
  v37 = (v4 + 8);
  v38 = (v4 + 32);
  v20 = v43;
  v39 = v11;
  if ((v16 & v15) == 0)
  {
LABEL_4:
    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v13 >= v19)
      {
        break;
      }

      ++v22;
      if (v14[v13])
      {
        OUTLINED_FUNCTION_10_78();
        v17 = v24 & v23;
        goto LABEL_9;
      }
    }

    v33 = 1 << *(v11 + 32);
    if (v33 >= 64)
    {
      v34 = OUTLINED_FUNCTION_11_67();
      specialized UnsafeMutablePointer.assign(repeating:count:)(v34, v35, v14);
    }

    else
    {
      *v14 = -1 << v33;
    }

    v2 = v36;
    *(v11 + 16) = 0;
    goto LABEL_26;
  }

  while (1)
  {
    OUTLINED_FUNCTION_23_42();
LABEL_9:
    v25 = *(v11 + 48);
    v44 = *(v42 + 72);
    outlined init with take of UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues?(v25 + v44 * (v21 | (v13 << 6)), v10);
    Hasher.init(_seed:)();
    v26 = v10;
    outlined init with copy of UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues?(v10, v20);
    v27 = v41;
    if (__swift_getEnumTagSinglePayload(v20, 1, v41) == 1)
    {
      Hasher._combine(_:)(0);
    }

    else
    {
      v28 = v40;
      (*v38)(v40, v20, v27);
      Hasher._combine(_:)(1u);
      lazy protocol witness table accessor for type LSApplicationExtensionRecord and conformance NSObject(&lazy protocol witness table cache variable for type UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues and conformance UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues, &type metadata accessor for UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues, &protocol conformance descriptor for UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues);
      dispatch thunk of Hashable.hash(into:)();
      v29 = v28;
      v11 = v39;
      (*v37)(v29, v27);
    }

    Hasher._finalize()();
    OUTLINED_FUNCTION_2_122();
    v10 = v26;
    if (v30)
    {
      break;
    }

    OUTLINED_FUNCTION_20_7();
    v20 = v43;
LABEL_20:
    *(v12 + 56 + ((v31 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v31;
    outlined init with take of UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues?(v26, *(v12 + 48) + v31 * v44);
    ++*(v12 + 16);
    if (!v17)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_18_35();
  v20 = v43;
  while (1)
  {
    OUTLINED_FUNCTION_19_44();
    if (v30)
    {
      if (v32)
      {
        break;
      }
    }

    OUTLINED_FUNCTION_15_60();
    if (!v30)
    {
      OUTLINED_FUNCTION_16_9();
      goto LABEL_20;
    }
  }

LABEL_28:
  __break(1u);
}

unint64_t *_ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s10_NativeSetVySo28LSApplicationExtensionRecordCG_Tg506_ss10_gh28V6filteryAByxGSbxKXEKFADs13_ab11VKXEfU_So28ijK5C_TG5AJxSbs5Error_pRi_zRi0_zlyAIIsgndzo_Tf1nc_n(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *), uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v8 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    specialized closure #1 in _NativeSet.filter(_:)(v8, a2, a3, a4);
    v10 = v9;

    return v10;
  }

  return result;
}

void specialized closure #1 in _NativeSet.filter(_:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
{
  v20 = 0;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v23 = *(*(a3 + 48) + 8 * v14);
    v15 = v23;
    v16 = a4(&v23);

    if (v4)
    {
      return;
    }

    if (v16)
    {
      *(a1 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v20++, 1))
      {
        __break(1u);
LABEL_16:

        specialized _NativeSet.extractSubset(using:count:)(a1, a2, v20, a3);
        return;
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_16;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
}

Swift::Int specialized _NativeSet.extractSubset(using:count:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = _swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo28LSApplicationExtensionRecordCGMd, &_ss11_SetStorageCySo28LSApplicationExtensionRecordCGMR);
  result = static _SetStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = v9[5];
    v17 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    result = NSObject._rawHashValue(seed:)(v16);
    v18 = -1 << *(v9 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_30;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(v9[6] + 8 * v21) = v17;
    ++v9[2];
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t outlined bridged method (pb) of @objc LSBundleRecord.bundleIdentifier.getter(void *a1)
{
  v1 = [a1 bundleIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t lazy protocol witness table accessor for type LSApplicationExtensionRecord and conformance NSObject(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t closure #1 in static ThirdPartyCallKitLaunchAppBuilder.makeLaunchApp(intent:intentResponse:)@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  result = static ThirdPartyCallKitLaunchAppBuilder.makeLaunchApp(intent:intentResponse:)(a1, a2);
  if (v4)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static Logger.siriPhone);
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
      _os_log_impl(&dword_0, v9, v10, "#ThirdPartyCallKitLaunchAppBuilder Error building LaunchApp for 3P redial/callback: %@", v11, 0xCu);
      outlined destroy of NSObject?(v12);
      OUTLINED_FUNCTION_8();

      OUTLINED_FUNCTION_8();
    }

    result = swift_willThrow();
    *a3 = v4;
  }

  else
  {
    *a4 = result;
  }

  return result;
}

uint64_t static ThirdPartyCallKitLaunchAppBuilder.makeLaunchApp(intent:intentResponse:)(void *a1, id a2)
{
  v4 = a2;
  if (a2)
  {
    v6 = [a2 userActivity];
    if (v6 && (v7 = v6, v8 = [v6 interaction], v7, v8))
    {
      v9 = [v8 intent];
    }

    else
    {
      v9 = 0;
    }

    v10 = [v4 userActivity];
    v11 = [v10 interaction];

    v12 = [v11 intentResponse];
    v13 = INStartCallIntentResponse.thirdPartyCallKitCallBackBundleId.getter();
    v4 = v14;
  }

  else
  {
    v13 = 0;
    v9 = 0;
    v12 = 0;
  }

  static ThirdPartyCallKitLaunchAppBuilder.validateLaunchId(userActivityLaunchId:)(v13, v4);
  if (v2)
  {
  }

  else
  {
    type metadata accessor for App();
    App.__allocating_init(appIdentifier:)();
    if (v9)
    {
      v15 = v9;
      v16 = v9;
    }

    else
    {
      v16 = a1;
      v15 = 0;
    }

    type metadata accessor for SAIntentGroupLaunchAppWithIntent();
    v17 = v15;
    v3 = static SAIntentGroupLaunchAppWithIntent.launchAppWithIntent(app:intent:intentResponse:)();

    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static Logger.siriPhone);
    v19 = v17;

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v32 = v3;
      v22 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v22 = 136315394;
      v31 = v19;
      if (v9)
      {
        v23 = [v19 typeName];
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
      v24 = String.init<A>(describing:)();
      v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, &v33);

      *(v22 + 4) = v26;
      *(v22 + 12) = 2080;
      App.appIdentifier.getter();
      v27 = String.init<A>(describing:)();
      v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, &v33);

      *(v22 + 14) = v29;
      _os_log_impl(&dword_0, v20, v21, "#StartCallRCHFlowDelegate ThirdPartyCallKitCallBack LaunchApp intentType: %s, appId: %s", v22, 0x16u);
      swift_arrayDestroy();

      return v32;
    }

    else
    {
    }
  }

  return v3;
}

void static ThirdPartyCallKitLaunchAppBuilder.validateLaunchId(userActivityLaunchId:)(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for PhoneError(0);
  __chkstk_darwin(v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (specialized Optional<A>.isNilOrEmpty.getter(a1, a2))
  {
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type PhoneError and conformance PhoneError();
    swift_allocError();
    PhoneError.logged()(v7);
    outlined destroy of PhoneError(v6);
    swift_willThrow();
  }

  else
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static Logger.siriPhone);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_0, v9, v10, "userActivity launchId is valid for ThirdPartyCallKitCallBack request", v11, 2u);
      OUTLINED_FUNCTION_8();
    }
  }
}

PhoneCallFlowDelegatePlugin::TrialSmartAppSelectionConfigKey_optional __swiftcall TrialSmartAppSelectionConfigKey.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3._object = object;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of TrialSmartAppSelectionConfigKey.init(rawValue:), v3);
  OUTLINED_FUNCTION_40_0();

  if (v1 >= 4)
  {
    return 4;
  }

  else
  {
    return v1;
  }
}

unint64_t TrialSmartAppSelectionConfigKey.rawValue.getter(char a1)
{
  result = 0x6567617355707061;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000016;
      break;
    case 2:
      return result;
    case 3:
      result = 0x63656C6553707061;
      break;
    default:
      result = 0xD000000000000017;
      break;
  }

  return result;
}

PhoneCallFlowDelegatePlugin::TrialSmartAppSelectionConfigKey_optional protocol witness for RawRepresentable.init(rawValue:) in conformance TrialSmartAppSelectionConfigKey@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::TrialSmartAppSelectionConfigKey_optional *a2@<X8>)
{
  result.value = TrialSmartAppSelectionConfigKey.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance TrialSmartAppSelectionConfigKey@<X0>(unint64_t *a1@<X8>)
{
  result = TrialSmartAppSelectionConfigKey.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

Swift::Bool __swiftcall TRIClient.isEnabled(forFactor:withNamespace:)(Swift::String forFactor, Swift::String withNamespace)
{
  v3 = type metadata accessor for TRIClient();
  v4 = String._bridgeToObjectiveC()();
  v5 = String._bridgeToObjectiveC()();
  v6 = [v2 levelForFactor:v4 withNamespaceName:v5];

  if (!v6)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static Logger.siriPhone);
    OUTLINED_FUNCTION_40_0();

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = OUTLINED_FUNCTION_16_13();
      *v16 = 136315394;
      OUTLINED_FUNCTION_2_123();
      OUTLINED_FUNCTION_1_130(v18, &outlined read-only object #0 of TRIClient.isEnabled(forFactor:withNamespace:));
      OUTLINED_FUNCTION_4_90(v19, v20, v21, v22, v23, v24);
      v25 = OUTLINED_FUNCTION_20_2();
      *(v16 + 4) = v3;
      *(v16 + 12) = 2080;
      *(v16 + 14) = OUTLINED_FUNCTION_3_116(v25, v26, v27, v28, v29, v30);
      _os_log_impl(&dword_0, v14, v15, "%s - Trial factor %s can't be loaded", v16, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_26_0(v17);
      OUTLINED_FUNCTION_26_0(v16);
    }

    goto LABEL_30;
  }

  v7 = [v6 levelOneOfCase];
  if (v7 == 10)
  {
    v12 = [v6 BOOLeanValue];
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v31 = type metadata accessor for Logger();
    __swift_project_value_buffer(v31, static Logger.siriPhone);
    OUTLINED_FUNCTION_40_0();

    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.debug.getter();

    if (!os_log_type_enabled(v32, v33))
    {
      goto LABEL_28;
    }

    v34 = swift_slowAlloc();
    v35 = OUTLINED_FUNCTION_16_13();
    *v34 = 136315650;
    OUTLINED_FUNCTION_2_123();
    OUTLINED_FUNCTION_1_130(v36, &outlined read-only object #0 of TRIClient.isEnabled(forFactor:withNamespace:));
    OUTLINED_FUNCTION_4_90(v37, v38, v39, v40, v41, v42);
    v43 = OUTLINED_FUNCTION_20_2();
    *(v34 + 4) = v3;
    *(v34 + 12) = 2080;
    *(v34 + 14) = OUTLINED_FUNCTION_3_116(v43, v44, v45, v46, v47, v48);
    *(v34 + 22) = 1024;
    *(v34 + 24) = v12;
    v49 = "%s - Trial factor %s is configured as BOOLean value %{BOOL}d";
    v50 = v33;
    v51 = v32;
    v52 = v34;
    v53 = 28;
    goto LABEL_27;
  }

  if (v7 != 15)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v54 = type metadata accessor for Logger();
    __swift_project_value_buffer(v54, static Logger.siriPhone);
    v55 = v6;

    v14 = v55;
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = OUTLINED_FUNCTION_16_13();
      *v58 = 136315650;
      OUTLINED_FUNCTION_2_123();
      OUTLINED_FUNCTION_1_130(v60, &outlined read-only object #0 of TRIClient.isEnabled(forFactor:withNamespace:));
      OUTLINED_FUNCTION_4_90(v61, v62, v63, v64, v65, v66);
      v67 = OUTLINED_FUNCTION_20_2();
      *(v58 + 4) = v3;
      *(v58 + 12) = 2080;
      *(v58 + 14) = OUTLINED_FUNCTION_3_116(v67, v68, v69, v70, v71, v72);
      *(v58 + 22) = 1024;
      v73 = [v14 levelOneOfCase];

      *(v58 + 24) = v73;
      _os_log_impl(&dword_0, v56, v57, "%s - Trial factor %s is configed as unsupported type %d, only BooleanValue and StringValue(True, False) are supported", v58, 0x1Cu);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_26_0(v59);
      OUTLINED_FUNCTION_26_0(v58);
    }

    else
    {
    }

LABEL_30:

    LOBYTE(v12) = 0;
    return v12;
  }

  result = [v6 doubleValue];
  v10 = v9;
  if (v9 <= 0.0)
  {
    v12 = 0;
    goto LABEL_23;
  }

  v11 = 1.0 / v9;
  if (COERCE_UNSIGNED_INT64(1.0 / v10) >> 52 > 0x7FE)
  {
    __break(1u);
    goto LABEL_33;
  }

  if (v11 <= -9.22337204e18)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (v11 >= 9.22337204e18)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (v11 >= 1)
  {
    v12 = specialized static FixedWidthInteger.random<A>(in:using:)(1, v11) == 1;
LABEL_23:
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v74 = type metadata accessor for Logger();
    __swift_project_value_buffer(v74, static Logger.siriPhone);
    OUTLINED_FUNCTION_40_0();

    v32 = Logger.logObject.getter();
    v75 = static os_log_type_t.debug.getter();

    if (!os_log_type_enabled(v32, v75))
    {
      goto LABEL_28;
    }

    v34 = swift_slowAlloc();
    v35 = OUTLINED_FUNCTION_16_13();
    *v34 = 136315906;
    OUTLINED_FUNCTION_2_123();
    OUTLINED_FUNCTION_1_130(v76, &outlined read-only object #0 of TRIClient.isEnabled(forFactor:withNamespace:));
    OUTLINED_FUNCTION_4_90(v77, v78, v79, v80, v81, v82);
    v83 = OUTLINED_FUNCTION_20_2();
    *(v34 + 4) = v3;
    *(v34 + 12) = 2080;
    *(v34 + 14) = OUTLINED_FUNCTION_3_116(v83, v84, v85, v86, v87, v88);
    *(v34 + 22) = 2048;
    *(v34 + 24) = v10;
    *(v34 + 32) = 1024;
    *(v34 + 34) = v12;
    v49 = "%s - Trial factor %s is configured as double value %f, 1 is maximum, and current request is randomly selected: %{BOOL}d";
    v50 = v75;
    v51 = v32;
    v52 = v34;
    v53 = 38;
LABEL_27:
    _os_log_impl(&dword_0, v51, v50, v49, v52, v53);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_26_0(v35);
    OUTLINED_FUNCTION_26_0(v34);
LABEL_28:

    return v12;
  }

LABEL_35:
  __break(1u);
  return result;
}

BOOL TrialSmartAppSelectionConfigProvider.isEnabled(configKey:sharedGlobals:)(char a1)
{
  v2 = 0xEC000000656C7552;
  v3 = 0x6567617355707061;
  switch(a1)
  {
    case 1:
      v2 = 0x8000000000452C10;
      v3 = 0xD000000000000016;
      break;
    case 2:
      break;
    case 3:
      v2 = 0xEC0000006E6F6974;
      v3 = 0x63656C6553707061;
      break;
    default:
      v2 = 0x8000000000452BF0;
      v3 = 0xD000000000000017;
      break;
  }

  v4._countAndFlagsBits = 0xD000000000000032;
  v4._object = 0x8000000000452B90;
  v5 = v2;
  v6 = TRIClient.isEnabled(forFactor:withNamespace:)(*&v3, v4);

  return v6;
}

uint64_t TrialSmartAppSelectionConfigProvider.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t type metadata accessor for TRIClient()
{
  result = lazy cache variable for type metadata for TRIClient;
  if (!lazy cache variable for type metadata for TRIClient)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for TRIClient);
  }

  return result;
}

uint64_t specialized static FixedWidthInteger.random<A>(in:using:)(uint64_t a1, uint64_t a2)
{
  if (a2 - a1 != -1)
  {
    return specialized RandomNumberGenerator.next<A>(upperBound:)(a2 - a1 + 1) + a1;
  }

  swift_stdlib_random();
  return 0;
}

unint64_t lazy protocol witness table accessor for type TrialSmartAppSelectionConfigKey and conformance TrialSmartAppSelectionConfigKey()
{
  result = lazy protocol witness table cache variable for type TrialSmartAppSelectionConfigKey and conformance TrialSmartAppSelectionConfigKey;
  if (!lazy protocol witness table cache variable for type TrialSmartAppSelectionConfigKey and conformance TrialSmartAppSelectionConfigKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TrialSmartAppSelectionConfigKey and conformance TrialSmartAppSelectionConfigKey);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TrialSmartAppSelectionConfigKey(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
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

uint64_t UnseenSlotTemplating.makeParameterValueConfirmationDialog(app:parameterName:intentResolutionResult:intent:inferenceSource:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = *(v8 + 40);
  type metadata accessor for PhoneSearchCallHistoryIntent(0);
  v13 = PhoneSearchCallHistoryIntent.__allocating_init(intent:)(a5);
  (*(*v12 + class metadata base offset for SearchCallHistoryCATs + 160))(v13, a7, a8);
}

uint64_t UnseenSlotTemplating.makeParameterValueUnsupportedDialog(app:parameterName:intentResolutionResult:intent:multicardinalValueIndex:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = *(v9 + 40);
  type metadata accessor for PhoneSearchCallHistoryIntent(0);
  v13 = PhoneSearchCallHistoryIntent.__allocating_init(intent:)(a5);
  (*(*v12 + class metadata base offset for SearchCallHistoryCATs + 1088))(v13, a8, a9);
}

uint64_t UnsetRelationshipTemplatesWrapper.promptForPerson(relationship:)()
{
  OUTLINED_FUNCTION_15();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_18(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_10_5(v1);

  return static UnsetRelationshipTemplates.promptForPerson(relationship:)(v3);
}

uint64_t UnsetRelationshipTemplatesWrapper.confirmToSave(relationship:contact:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_18(v6);
  *v7 = v8;
  v7[1] = protocol witness for Flow.execute() in conformance AppResolutionBeforeResolveFlow;

  return static UnsetRelationshipTemplates.processConfirmToSave(relationship:contact:)(a1, a2, a3);
}

uint64_t UnsetRelationshipTemplatesWrapper.promptToDisambiguationContacts()()
{
  OUTLINED_FUNCTION_15();
  v1 = v0;
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_18(v2);
  *v3 = v4;
  v3[1] = UnsetRelationshipTemplatesWrapper.promptForPerson(relationship:);

  return static UnsetRelationshipTemplates.promptToDisambiguationContacts()(v1);
}

uint64_t UnsetRelationshipTemplatesWrapper.noMeCard(relationship:)()
{
  OUTLINED_FUNCTION_15();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_18(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_10_5(v1);

  return static UnsetRelationshipTemplates.noMeCard(relationship:)(v3);
}

uint64_t protocol witness for UnsetRelationshipTemplateProviding.promptForPerson(relationship:) in conformance UnsetRelationshipTemplatesWrapper(uint64_t a1, uint64_t a2)
{
  v8 = (*(**v2 + 112) + **(**v2 + 112));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = UnsetRelationshipTemplatesWrapper.promptForPerson(relationship:);

  return v8(a1, a2);
}

uint64_t protocol witness for UnsetRelationshipTemplateProviding.confirmToSave(relationship:contact:) in conformance UnsetRelationshipTemplatesWrapper(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(**v3 + 120) + **(**v3 + 120));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = UnsetRelationshipTemplatesWrapper.promptForPerson(relationship:);

  return v10(a1, a2, a3);
}

uint64_t protocol witness for UnsetRelationshipTemplateProviding.promptToDisambiguationContacts() in conformance UnsetRelationshipTemplatesWrapper(uint64_t a1)
{
  v6 = (*(**v1 + 128) + **(**v1 + 128));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = UnsetRelationshipTemplatesWrapper.promptForPerson(relationship:);

  return v6(a1);
}

uint64_t protocol witness for UnsetRelationshipTemplateProviding.noMeCard(relationship:) in conformance UnsetRelationshipTemplatesWrapper(uint64_t a1, uint64_t a2)
{
  v8 = (*(**v2 + 136) + **(**v2 + 136));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = UnsetRelationshipTemplatesWrapper.promptForPerson(relationship:);

  return v8(a1, a2);
}

uint64_t specialized UnsupportedAction.toSpeakableString.getter()
{
  PhoneCallControlCATsSimple.UnsupportedCallControlDialogIds.rawValue.getter();
  return String.toSpeakableString.getter();
}

{
  return String.toSpeakableString.getter();
}

uint64_t specialized UnsupportedAction.toSpeakableString.getter(unsigned __int8 a1)
{
  String.toSpeakableString.getter();
}

uint64_t specialized UnsupportedAction.toSpeakableString.getter(char a1)
{
  ActionableCallControlFlow.UnsupportedSwitchToFaceTimeReason.rawValue.getter(a1);
  String.toSpeakableString.getter();
}

void *UnsupportedCallControlIntentOutputProvider.__allocating_init(intent:sharedGlobals:callControlCats:unsupportedCats:)(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v8[2] = a1;
  outlined init with take of PhoneCallFeatureFlagProviding(a2, (v8 + 3));
  v8[8] = a3;
  v8[9] = a4;
  return v8;
}

void *UnsupportedCallControlIntentOutputProvider.init(intent:sharedGlobals:callControlCats:unsupportedCats:)(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  outlined init with take of PhoneCallFeatureFlagProviding(a2, (v4 + 3));
  v4[8] = a3;
  v4[9] = a4;
  return v4;
}

uint64_t UnsupportedCallControlIntentOutputProvider.makeSimpleOutputFlowAsync()()
{
  v1 = v0[6];
  v2 = v0[7];
  __swift_project_boxed_opaque_existential_1(v0 + 3, v1);
  (*(v2 + 16))(v10, v1, v2);
  v3 = v11;
  v4 = v12;
  v5 = __swift_project_boxed_opaque_existential_1(v10, v11);
  v9[3] = v3;
  v9[4] = v4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v9);
  (*(*(v3 - 8) + 16))(boxed_opaque_existential_1, v5, v3);
  type metadata accessor for SimpleOutputFlowAsync();
  swift_allocObject();

  v7 = SimpleOutputFlowAsync.init(outputPublisher:outputGenerator:)();
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v7;
}

uint64_t closure #1 in UnsupportedCallControlIntentOutputProvider.makeSimpleOutputFlowAsync()(uint64_t a1, uint64_t a2)
{
  v6 = (*(*a2 + 128) + **(*a2 + 128));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = closure #2 in ActionableCallControlFlow.execute();

  return v6(a1);
}

uint64_t partial apply for closure #1 in UnsupportedCallControlIntentOutputProvider.makeSimpleOutputFlowAsync()()
{
  OUTLINED_FUNCTION_15();
  v3 = v2;
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = closure #2 in ActionableCallControlFlow.execute();

  return closure #1 in UnsupportedCallControlIntentOutputProvider.makeSimpleOutputFlowAsync()(v3, v0);
}

uint64_t UnsupportedCallControlIntentOutputProvider.makeOutput()()
{
  OUTLINED_FUNCTION_15();
  v1[31] = v2;
  v1[32] = v0;
  type metadata accessor for DialogPhase();
  v1[33] = swift_task_alloc();
  v3 = type metadata accessor for OutputGenerationManifest();
  v1[34] = v3;
  v1[35] = *(v3 - 8);
  v1[36] = swift_task_alloc();
  v4 = type metadata accessor for SpeakableString();
  v1[37] = v4;
  v1[38] = *(v4 - 8);
  v1[39] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v1[40] = swift_task_alloc();
  v1[41] = swift_task_alloc();
  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v5, v6, v7);
}

{
  v43 = v0;
  v1 = v0[32];
  __swift_project_boxed_opaque_existential_1(v1 + 3, v1[6]);
  v2 = OUTLINED_FUNCTION_4_3();
  v3(v2);
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v4 = OUTLINED_FUNCTION_4_3();
  if (!v5(v4))
  {
    v19 = v0[41];
    v20 = v0[37];
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
    PhoneCallControlCATsSimple.UnsupportedCallControlDialogIds.rawValue.getter();
    String.toSpeakableString.getter();
    __swift_storeEnumTagSinglePayload(v19, 0, 1, v20);
    OUTLINED_FUNCTION_20_9();
    v39 = (v21 + *v21);
    v22 = swift_task_alloc();
    v0[42] = v22;
    *v22 = v0;
    v22[1] = UnsupportedCallControlIntentOutputProvider.makeOutput();
    v23 = v0[41];
    v24 = v39;

    return v24(v23);
  }

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  __swift_project_boxed_opaque_existential_1(v1 + 3, v1[6]);
  v6 = OUTLINED_FUNCTION_4_3();
  v7(v6);
  __swift_project_boxed_opaque_existential_1(v0 + 12, v0[15]);
  v8 = OUTLINED_FUNCTION_4_3();
  v9(v8);
  __swift_project_boxed_opaque_existential_1(v0 + 17, v0[20]);
  v10 = OUTLINED_FUNCTION_4_3();
  v12 = v11(v10);
  __swift_destroy_boxed_opaque_existential_1(v0 + 17);
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  if (v12)
  {
    v13 = *(v0[32] + 16);
    v42[0] = PhoneCallControlNLIntent.Verb.description.getter(*(v13 + 16));
    v42[1] = v14;
    v15._countAndFlagsBits = 58;
    v15._object = 0xE100000000000000;
    String.append(_:)(v15);
    v16 = *(v13 + 17);
    if (v16 == 5)
    {
      v17 = 0;
      v18 = 0xE000000000000000;
    }

    else
    {
      v17 = PhoneCallControlNLIntent.Target.description.getter(v16);
      v18 = v31;
    }

    v33 = v0[39];
    v32 = v0[40];
    v34 = v0[37];
    v35 = v0[38];
    v36 = v18;
    String.append(_:)(*&v17);

    String.toSpeakableString.getter();

    (*(v35 + 16))(v32, v33, v34);
    __swift_storeEnumTagSinglePayload(v32, 0, 1, v34);
    OUTLINED_FUNCTION_20_9();
    v41 = (v37 + *v37);
    v38 = swift_task_alloc();
    v0[44] = v38;
    *v38 = v0;
    v38[1] = UnsupportedCallControlIntentOutputProvider.makeOutput();
    v23 = v0[40];
    v24 = v41;

    return v24(v23);
  }

  type metadata accessor for SirikitDeviceState();
  v25 = v1[6];
  v26 = v1[7];
  __swift_project_boxed_opaque_existential_1(v1 + 3, v25);
  (*(v26 + 8))(v42, v25, v26);
  v27 = SirikitDeviceState.__allocating_init(from:)();
  v0[46] = v27;
  OUTLINED_FUNCTION_20_9();
  v40 = (v28 + *v28);
  v29 = swift_task_alloc();
  v0[47] = v29;
  *v29 = v0;
  v29[1] = UnsupportedCallControlIntentOutputProvider.makeOutput();

  return v40(v27);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v3[22] = v1;
  v3[23] = v2;
  v3[24] = v0;
  v4 = v3[41];
  v5 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v6 = v5;
  *(v7 + 344) = v0;

  outlined destroy of SpeakableString?(v4);
  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v8, v9, v10);
}

{
  OUTLINED_FUNCTION_3_117();
  v2 = OUTLINED_FUNCTION_5_94();
  v1(v2);
  OUTLINED_FUNCTION_12_67();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v3 = swift_allocObject();
  *(v0 + 400) = v3;
  OUTLINED_FUNCTION_14_61(v3, xmmword_426260);
  OUTLINED_FUNCTION_1_131();
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_10_79(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_0_121(v5);

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v7, v8, v9, v10, v11, v12, v13, v14);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v3[25] = v1;
  v3[26] = v2;
  v3[27] = v0;
  v4 = v3[40];
  v5 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v6 = v5;
  *(v7 + 360) = v0;

  outlined destroy of SpeakableString?(v4);
  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v8, v9, v10);
}

{
  (*(v0[38] + 8))(v0[39], v0[37]);
  OUTLINED_FUNCTION_3_117();
  v2 = OUTLINED_FUNCTION_5_94();
  v1(v2);
  OUTLINED_FUNCTION_12_67();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v3 = swift_allocObject();
  v0[50] = v3;
  OUTLINED_FUNCTION_14_61(v3, xmmword_426260);
  OUTLINED_FUNCTION_1_131();
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_10_79(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_0_121(v5);

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v7, v8, v9, v10, v11, v12, v13, v14);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  v2[28] = v1;
  v2[29] = v4;
  v2[30] = v0;
  v5 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v6 = v5;
  v3[48] = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v7, v8, v9);
}

{
  OUTLINED_FUNCTION_3_117();
  v2 = OUTLINED_FUNCTION_5_94();
  v1(v2);
  OUTLINED_FUNCTION_12_67();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v3 = swift_allocObject();
  *(v0 + 400) = v3;
  OUTLINED_FUNCTION_14_61(v3, xmmword_426260);
  OUTLINED_FUNCTION_1_131();
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_10_79(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_0_121(v5);

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v7, v8, v9, v10, v11, v12, v13, v14);
}

{
  OUTLINED_FUNCTION_28();
  v2 = v1[36];
  v3 = v1[35];
  v4 = v1[34];
  v5 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v6 = v5;

  (*(v3 + 8))(v2, v4);
  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v7, v8, v9);
}

{
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_6_94();

  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  OUTLINED_FUNCTION_11();

  return v2();
}

{
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_6_94();

  OUTLINED_FUNCTION_11();

  return v0();
}

{
  OUTLINED_FUNCTION_23_0();
  (*(v0[38] + 8))(v0[39], v0[37]);
  OUTLINED_FUNCTION_6_94();

  OUTLINED_FUNCTION_11();

  return v1();
}

{
  OUTLINED_FUNCTION_23_0();

  OUTLINED_FUNCTION_6_94();

  OUTLINED_FUNCTION_11();

  return v0();
}

uint64_t UnsupportedCallControlIntentOutputProvider.deinit()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return v0;
}

uint64_t UnsupportedCallControlIntentOutputProvider.__deallocating_deinit()
{
  UnsupportedCallControlIntentOutputProvider.deinit();

  return swift_deallocClassInstance();
}

void UnsupportedCallFlowOutputFactory.__allocating_init(unsupportedPhoneCall:app:sharedGlobals:intent:unsupportedFlowCats:searchCallHistoryCats:unsupportedFlowCatsSimple:responseGenerator:labelTemplating:appInfoBuilder:phoneCallDisplayTextCATsSimple:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, void *a22)
{
  OUTLINED_FUNCTION_66();
  v25 = v24;
  v53 = v26;
  v54 = v27;
  v51 = v28;
  v52 = v29;
  v49 = v30;
  v50 = v31;
  v32 = swift_allocObject();
  v33 = v25[3];
  v48 = v32;
  __swift_mutable_project_boxed_opaque_existential_1(v25, v33);
  OUTLINED_FUNCTION_9_1();
  __chkstk_darwin(v34);
  OUTLINED_FUNCTION_4();
  v36 = OUTLINED_FUNCTION_54(v35);
  v37(v36);
  __swift_mutable_project_boxed_opaque_existential_1(a21, a21[3]);
  OUTLINED_FUNCTION_9_1();
  __chkstk_darwin(v38);
  OUTLINED_FUNCTION_4();
  v40 = OUTLINED_FUNCTION_48_28(v39);
  v41(v40);
  v42 = a22[3];
  __swift_mutable_project_boxed_opaque_existential_1(a22, v42);
  OUTLINED_FUNCTION_9_1();
  __chkstk_darwin(v43);
  OUTLINED_FUNCTION_4();
  v46 = (v45 - v44);
  (*(v47 + 16))(v45 - v44);
  OUTLINED_FUNCTION_47_27();
  specialized UnsupportedCallFlowOutputFactory.init(unsupportedPhoneCall:app:sharedGlobals:intent:unsupportedFlowCats:searchCallHistoryCats:unsupportedFlowCatsSimple:responseGenerator:labelTemplating:appInfoBuilder:phoneCallDisplayTextCATsSimple:)(SHIDWORD(v42), v49, v50, v51, v52, v53, v54, v22, v23, v46, v33, v48, v33, v42, v49, v50, v51, v52);
  __swift_destroy_boxed_opaque_existential_1(a22);
  __swift_destroy_boxed_opaque_existential_1(a21);
  __swift_destroy_boxed_opaque_existential_1(v25);
  OUTLINED_FUNCTION_65();
}

void UnsupportedCallFlowOutputFactory.init(unsupportedPhoneCall:app:sharedGlobals:intent:unsupportedFlowCats:searchCallHistoryCats:unsupportedFlowCatsSimple:responseGenerator:labelTemplating:appInfoBuilder:phoneCallDisplayTextCATsSimple:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, void *a22)
{
  OUTLINED_FUNCTION_66();
  v47 = v22;
  v48 = v25;
  v27 = v26;
  v51 = v28;
  v52 = v29;
  v49 = v30;
  v50 = v31;
  v32 = *(v26 + 24);
  __swift_mutable_project_boxed_opaque_existential_1(v26, v32);
  OUTLINED_FUNCTION_9_1();
  __chkstk_darwin(v33);
  OUTLINED_FUNCTION_4();
  v35 = OUTLINED_FUNCTION_54(v34);
  v36(v35);
  __swift_mutable_project_boxed_opaque_existential_1(a21, a21[3]);
  OUTLINED_FUNCTION_9_1();
  __chkstk_darwin(v37);
  OUTLINED_FUNCTION_4();
  v39 = OUTLINED_FUNCTION_48_28(v38);
  v40(v39);
  v41 = a22[3];
  __swift_mutable_project_boxed_opaque_existential_1(a22, v41);
  OUTLINED_FUNCTION_9_1();
  __chkstk_darwin(v42);
  OUTLINED_FUNCTION_4();
  v45 = (v44 - v43);
  (*(v46 + 16))(v44 - v43);
  OUTLINED_FUNCTION_47_27();
  specialized UnsupportedCallFlowOutputFactory.init(unsupportedPhoneCall:app:sharedGlobals:intent:unsupportedFlowCats:searchCallHistoryCats:unsupportedFlowCatsSimple:responseGenerator:labelTemplating:appInfoBuilder:phoneCallDisplayTextCATsSimple:)(SHIDWORD(v32), v41, v48, v49, v50, v51, v52, v23, v24, v45, v47, v47, v32, v41, v47, v48, v49, v50);
  __swift_destroy_boxed_opaque_existential_1(a22);
  __swift_destroy_boxed_opaque_existential_1(a21);
  __swift_destroy_boxed_opaque_existential_1(v27);
  OUTLINED_FUNCTION_65();
}

uint64_t UnsupportedCallFlowOutputFactory.makeUnsupportedOutput(completion:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v7 = OUTLINED_FUNCTION_21(v6);
  v8 = __chkstk_darwin(v7);
  v10 = &v23[-1] - v9;
  if (UnsupportedPhoneCall.rawValue.getter(v8) == 0xD00000000000001CLL && 0x8000000000456900 == v11)
  {
  }

  else
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v13 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  v14 = v2[14];
  v15 = v2[15];
  __swift_project_boxed_opaque_existential_1(v2 + 11, v14);
  (*(v15 + 8))(v23, v14, v15);
  __swift_project_boxed_opaque_existential_1(v23, v23[3]);
  v16 = dispatch thunk of DeviceState.isAppleTV.getter();
  __swift_destroy_boxed_opaque_existential_1(v23);
  if ((v16 & 1) == 0)
  {
    OUTLINED_FUNCTION_4_68();
    v19 = swift_allocObject();
    v19[2] = a1;
    v19[3] = a2;
    v19[4] = v3;
    v20 = *(*v3 + 192);

    v20(partial apply for closure #2 in UnsupportedCallFlowOutputFactory.makeUnsupportedOutput(completion:), v19);
  }

LABEL_9:
  v17 = type metadata accessor for TaskPriority();
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = v3;
  v18[5] = a1;
  v18[6] = a2;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();
}

uint64_t closure #1 in UnsupportedCallFlowOutputFactory.makeUnsupportedOutput(completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[19] = a5;
  v6[20] = a6;
  v9 = (*(*a4 + 224) + **(*a4 + 224));
  v7 = swift_task_alloc();
  v6[21] = v7;
  *v7 = v6;
  v7[1] = closure #1 in UnsupportedCallFlowOutputFactory.makeUnsupportedOutput(completion:);

  return v9(v6 + 14);
}

uint64_t closure #1 in UnsupportedCallFlowOutputFactory.makeUnsupportedOutput(completion:)()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v5 = v4;
  *(v6 + 176) = v0;

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v7, v8, v9);
}

{
  OUTLINED_FUNCTION_15();
  v1 = *(v0 + 152);
  outlined init with copy of SignalProviding(v0 + 112, v0 + 64);
  *(v0 + 104) = 0;
  v1(v0 + 64);
  outlined destroy of PhoneCallNLIntent?(v0 + 64, &_ss6ResultOy11SiriKitFlow6Output_ps5Error_pGMd, &_ss6ResultOy11SiriKitFlow6Output_ps5Error_pGMR);
  __swift_destroy_boxed_opaque_existential_1((v0 + 112));
  OUTLINED_FUNCTION_11();

  return v2();
}

{
  OUTLINED_FUNCTION_27();
  v1 = *(v0 + 152);
  *(v0 + 16) = *(v0 + 176);
  *(v0 + 56) = 1;
  swift_errorRetain();
  v1(v0 + 16);

  outlined destroy of PhoneCallNLIntent?(v0 + 16, &_ss6ResultOy11SiriKitFlow6Output_ps5Error_pGMd, &_ss6ResultOy11SiriKitFlow6Output_ps5Error_pGMR);
  OUTLINED_FUNCTION_11();

  return v2();
}

uint64_t closure #2 in UnsupportedCallFlowOutputFactory.makeUnsupportedOutput(completion:)(uint64_t a1, void (*a2)(void *), uint64_t a3, uint64_t a4)
{
  v26 = a2;
  v7 = type metadata accessor for TemplatingResult();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v23 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  __chkstk_darwin(v14);
  v16 = &v23 - v15;
  outlined init with copy of Result<TemplatingResult, Error>(a1, &v23 - v15);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v27[0] = *v16;
    v28 = 1;
    swift_errorRetain();
    v26(v27);

    return outlined destroy of PhoneCallNLIntent?(v27, &_ss6ResultOy11SiriKitFlow6Output_ps5Error_pGMd, &_ss6ResultOy11SiriKitFlow6Output_ps5Error_pGMR);
  }

  else
  {
    v24 = *(v8 + 32);
    v24(v13, v16, v7);
    (*(v8 + 16))(v10, v13, v7);
    v18 = (*(v8 + 80) + 16) & ~*(v8 + 80);
    v19 = a3;
    v20 = (v9 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
    v25 = v13;
    v21 = swift_allocObject();
    v24((v21 + v18), v10, v7);
    *(v21 + v20) = a4;
    v22 = (v21 + ((v20 + 15) & 0xFFFFFFFFFFFFFFF8));
    *v22 = v26;
    v22[1] = v19;

    UnsupportedCallFlowOutputFactory.makeUnsupportedViews(_:)(partial apply for closure #1 in closure #2 in UnsupportedCallFlowOutputFactory.makeUnsupportedOutput(completion:), v21);

    return (*(v8 + 8))(v25, v7);
  }
}

uint64_t closure #1 in closure #2 in UnsupportedCallFlowOutputFactory.makeUnsupportedOutput(completion:)(uint64_t a1, char a2, uint64_t a3, void *a4, void (*a5)(uint64_t *))
{
  if (a2)
  {
    v10[0] = a1;
    swift_errorRetain();
  }

  else
  {

    closure #1 in closure #1 in closure #2 in UnsupportedCallFlowOutputFactory.makeUnsupportedOutput(completion:)(a4, v10);
    outlined consume of Result<[INPerson], Error>(a1, 0);
  }

  v11 = a2 & 1;
  a5(v10);
  return outlined destroy of PhoneCallNLIntent?(v10, &_ss6ResultOy11SiriKitFlow6Output_ps5Error_pGMd, &_ss6ResultOy11SiriKitFlow6Output_ps5Error_pGMR);
}

uint64_t closure #1 in closure #1 in closure #2 in UnsupportedCallFlowOutputFactory.makeUnsupportedOutput(completion:)@<X0>(void *a3@<X2>, uint64_t *a4@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  __chkstk_darwin(v6 - 8);
  v8 = v20 - v7;
  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Logger.siriPhone);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_0, v10, v11, "#UnsupportedCallFlowOutputFactory: finished constructing Output", v12, 2u);
  }

  v13 = a3[14];
  v14 = a3[15];
  __swift_project_boxed_opaque_existential_1(a3 + 11, v13);
  (*(v14 + 8))(v23, v13, v14);
  v15 = a3[14];
  v16 = a3[15];
  __swift_project_boxed_opaque_existential_1(a3 + 11, v15);
  (*(v16 + 8))(v22, v15, v16);
  __swift_project_boxed_opaque_existential_1(v22, v22[3]);
  dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
  v17 = type metadata accessor for NLContextUpdate();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v17);
  v18 = type metadata accessor for AceOutput();
  memset(v20, 0, sizeof(v20));
  v21 = 0;
  a4[3] = v18;
  a4[4] = &protocol witness table for AceOutput;
  __swift_allocate_boxed_opaque_existential_1(a4);
  static AceOutputHelper.makeCompletionViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  outlined destroy of PhoneCallNLIntent?(v20, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
  outlined destroy of PhoneCallNLIntent?(v8, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  __swift_destroy_boxed_opaque_existential_1(v23);
  return __swift_destroy_boxed_opaque_existential_1(v22);
}

void UnsupportedCallFlowOutputFactory.makeUnsupportedTemplatingResult(completion:)()
{
  OUTLINED_FUNCTION_66();
  v1 = v0;
  v3 = v2;
  v112 = v4;
  type metadata accessor for Locale();
  OUTLINED_FUNCTION_9_1();
  v111 = v5;
  __chkstk_darwin(v6);
  OUTLINED_FUNCTION_4();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v11 = OUTLINED_FUNCTION_21(v10);
  __chkstk_darwin(v11);
  v13 = &v109 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v109 - v15;
  __chkstk_darwin(v17);
  v19 = &v109 - v18;
  v20 = *(v0 + 120);
  __swift_project_boxed_opaque_existential_1((v0 + 88), *(v0 + 112));
  v21 = OUTLINED_FUNCTION_40_0();
  v22(v21, v20);
  switch(*(v0 + 24))
  {
    case 4:
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
      }

      v23 = type metadata accessor for Logger();
      v24 = OUTLINED_FUNCTION_12_1(v23, static Logger.siriPhone);
      v25 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_8_0(v25))
      {
        v26 = OUTLINED_FUNCTION_65_0();
        *v26 = 0;
        OUTLINED_FUNCTION_23_43();
        _os_log_impl(v27, v28, v29, v30, v26, 2u);
      }

      v31 = v1[15];
      v32 = v1[14];
      __swift_project_boxed_opaque_existential_1(v1 + 11, v32);
      (*(v31 + 8))(v113, v32, v31);
      v33 = OUTLINED_FUNCTION_54_9();
      v36 = static UserFacingCallingAppUtils.getCommAppForLaunch(originalApp:preferredCallProvider:deviceState:)(v33, v34, v35);
      __swift_destroy_boxed_opaque_existential_1(v113);
      if (App.isFirstParty()() && (__swift_project_boxed_opaque_existential_1(v114, v115), OUTLINED_FUNCTION_40_0(), (dispatch thunk of DeviceState.isPhone.getter() & 1) != 0) || (v37 = v115, __swift_project_boxed_opaque_existential_1(v114, v115), OUTLINED_FUNCTION_40_0(), dispatch thunk of DeviceState.siriLocale.getter(), type metadata accessor for AppInfoBuilder(), inited = swift_initStackObject(), AppInfoBuilder.getAppName(_:requestedLocale:)(v36, v9), v39 = OUTLINED_FUNCTION_39_29(), v40(v39), !inited))
      {
        v41 = 1;
      }

      else
      {
        OUTLINED_FUNCTION_94(v37, inited);
        v41 = 0;
      }

      v91 = v112;
      v92 = type metadata accessor for SpeakableString();
      __swift_storeEnumTagSinglePayload(v19, v41, 1, v92);
      v93 = v1[4];
      v94 = UnsupportedCallFlowOutputFactory.shouldShowOpenAppButtonForSCH()();
      v95 = UnsupportedCallFlowOutputFactory.isPlayVoicemailIntent()();
      type metadata accessor for SirikitDeviceState();
      outlined init with copy of SignalProviding(v114, v113);
      v96 = SirikitDeviceState.__allocating_init(from:)();
      (*(*v93 + class metadata base offset for UnsupportedFlowCATs + 64))(v94 & 1, v19, v95 & 1, v96, v91, v3);

      v97 = v19;
      goto LABEL_49;
    case 5:
    case 6:
    case 8:
    case 9:
    case 0xB:
    case 0xC:
      goto LABEL_17;
    case 7:
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
      }

      v84 = type metadata accessor for Logger();
      v43 = OUTLINED_FUNCTION_12_1(v84, static Logger.siriPhone);
      v85 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_8_0(v85))
      {
        v86 = OUTLINED_FUNCTION_65_0();
        OUTLINED_FUNCTION_102(v86);
        OUTLINED_FUNCTION_23_43();
        OUTLINED_FUNCTION_52_23(v87, v88, v89, v90);
        OUTLINED_FUNCTION_35();
      }

      goto LABEL_45;
    case 0xA:
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
      }

      v61 = type metadata accessor for Logger();
      v62 = OUTLINED_FUNCTION_12_1(v61, static Logger.siriPhone);
      v63 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_8_0(v63))
      {
        v64 = OUTLINED_FUNCTION_65_0();
        *v64 = 0;
        OUTLINED_FUNCTION_23_43();
        _os_log_impl(v65, v66, v67, v68, v64, 2u);
      }

      v69 = type metadata accessor for SpeakableString();
      __swift_storeEnumTagSinglePayload(v16, 1, 1, v69);
      v70 = v1[16];
      v71 = App.isFirstParty()();
      if (!v71)
      {
        v109 = v69;
        v110 = v3;
        v72 = __swift_project_boxed_opaque_existential_1(v114, v115);
        dispatch thunk of DeviceState.siriLocale.getter();
        type metadata accessor for AppInfoBuilder();
        swift_initStackObject();
        v73 = OUTLINED_FUNCTION_40_0();
        AppInfoBuilder.getAppName(_:requestedLocale:)(v73, v9);
        v74 = OUTLINED_FUNCTION_39_29();
        v75(v74);
        if (v72)
        {
          OUTLINED_FUNCTION_94(v70, v72);
          v76 = 0;
        }

        else
        {
          v76 = 1;
        }

        v107 = v109;
        outlined destroy of PhoneCallNLIntent?(v16, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
        __swift_storeEnumTagSinglePayload(v13, v76, 1, v107);
        outlined init with take of SpeakableString?(v13, v16);
        v3 = v110;
      }

      OUTLINED_FUNCTION_46_28();
      (*(v108 + class metadata base offset for UnsupportedFlowCATs + 160))(v16, v71, v112, v3);
      v97 = v16;
LABEL_49:
      outlined destroy of PhoneCallNLIntent?(v97, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
      goto LABEL_50;
    case 0xD:
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
      }

      v77 = type metadata accessor for Logger();
      v43 = OUTLINED_FUNCTION_12_1(v77, static Logger.siriPhone);
      v78 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_8_0(v78))
      {
        v79 = OUTLINED_FUNCTION_65_0();
        OUTLINED_FUNCTION_102(v79);
        OUTLINED_FUNCTION_23_43();
        OUTLINED_FUNCTION_52_23(v80, v81, v82, v83);
        OUTLINED_FUNCTION_35();
      }

      goto LABEL_45;
    default:
      if (*(v0 + 24))
      {
LABEL_17:
        if (one-time initialization token for siriPhone != -1)
        {
          OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
        }

        v50 = v3;
        v51 = type metadata accessor for Logger();
        v52 = OUTLINED_FUNCTION_12_1(v51, static Logger.siriPhone);
        v53 = static os_log_type_t.debug.getter();
        v54 = OUTLINED_FUNCTION_8_0(v53);
        v55 = v112;
        if (v54)
        {
          v56 = OUTLINED_FUNCTION_65_0();
          OUTLINED_FUNCTION_11_1(v56);
          OUTLINED_FUNCTION_14_1(&dword_0, v57, v58, "#UnsupportedCallFlowOutputFactory makeUnsupportedTemplatingResult: returning unsupported on deviceType");
          OUTLINED_FUNCTION_12_3();
        }

        v59 = v1[4];
        type metadata accessor for SirikitDeviceState();
        outlined init with copy of SignalProviding(v114, v113);
        v60 = SirikitDeviceState.__allocating_init(from:)();
        (*(*v59 + class metadata base offset for UnsupportedFlowCATs + 192))(v60, v55, v50);
      }

      else
      {
        if (static UnsupportedPhoneCall.isInRetailStoreDemoMode()())
        {
          if (one-time initialization token for siriPhone != -1)
          {
            OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
          }

          v42 = type metadata accessor for Logger();
          v43 = OUTLINED_FUNCTION_12_1(v42, static Logger.siriPhone);
          v44 = static os_log_type_t.debug.getter();
          if (OUTLINED_FUNCTION_8_0(v44))
          {
            v45 = OUTLINED_FUNCTION_65_0();
            OUTLINED_FUNCTION_102(v45);
            OUTLINED_FUNCTION_23_43();
            OUTLINED_FUNCTION_52_23(v46, v47, v48, v49);
            OUTLINED_FUNCTION_35();
          }
        }

        else
        {
          if (one-time initialization token for siriPhone != -1)
          {
            OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
          }

          v98 = type metadata accessor for Logger();
          v43 = OUTLINED_FUNCTION_12_1(v98, static Logger.siriPhone);
          v99 = static os_log_type_t.debug.getter();
          if (OUTLINED_FUNCTION_8_0(v99))
          {
            v100 = OUTLINED_FUNCTION_65_0();
            OUTLINED_FUNCTION_102(v100);
            OUTLINED_FUNCTION_23_43();
            OUTLINED_FUNCTION_52_23(v101, v102, v103, v104);
            OUTLINED_FUNCTION_35();
          }
        }

LABEL_45:

        OUTLINED_FUNCTION_46_28();
        v105 = OUTLINED_FUNCTION_58_15();
        v106(v105);
      }

LABEL_50:
      __swift_destroy_boxed_opaque_existential_1(v114);
      OUTLINED_FUNCTION_65();
      return;
  }
}

uint64_t UnsupportedCallFlowOutputFactory.makeUnsupportedViews(_:)(uint64_t (*a1)(void *, void), uint64_t a2)
{
  if ((UnsupportedCallFlowOutputFactory.shouldShowOpenAppButtonForSCH()() & 1) == 0)
  {
    return a1(_swiftEmptyArrayStorage, 0);
  }

  static SCHViewBuilders.makeErrorButtonBuilder(templatingService:app:preferredCallProvider:sharedGlobals:)(v2 + 136, *(v2 + 128), 0, (v2 + 88), v8);
  v5 = v9;
  v6 = v10;
  __swift_project_boxed_opaque_existential_1(v8, v9);
  IdiomSensitiveViewBuilding.makeViews(_:)(a1, a2, v5, v6);
  return __swift_destroy_boxed_opaque_existential_1(v8);
}

uint64_t UnsupportedCallFlowOutputFactory.shouldShowOpenAppButtonForSCH()()
{
  v1 = v0;
  OUTLINED_FUNCTION_61_2((v0 + 88));
  v2 = OUTLINED_FUNCTION_1_1();
  v3(v2);
  __swift_project_boxed_opaque_existential_1(v17, v18);
  OUTLINED_FUNCTION_56();
  if (DeviceState.isStandaloneIOS.getter())
  {
    __swift_destroy_boxed_opaque_existential_1(v17);
LABEL_4:
    OUTLINED_FUNCTION_61_2((v1 + 88));
    v8 = OUTLINED_FUNCTION_1_1();
    v9(v8);
    __swift_project_boxed_opaque_existential_1(v17, v18);
    v10 = OUTLINED_FUNCTION_56();
    v11 = DeviceState.supportsOnlyFaceTimeCalls.getter(v10) ^ 1;
    __swift_destroy_boxed_opaque_existential_1(v17);
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_61_2((v0 + 88));
  v4 = OUTLINED_FUNCTION_1_1();
  v5(v4);
  __swift_project_boxed_opaque_existential_1(v16, v16[3]);
  OUTLINED_FUNCTION_1_1();
  v6 = dispatch thunk of DeviceState.isWatch.getter();
  __swift_destroy_boxed_opaque_existential_1(v16);
  __swift_destroy_boxed_opaque_existential_1(v17);
  if (v6)
  {
    goto LABEL_4;
  }

  LOBYTE(v11) = 0;
LABEL_6:
  if (UnsupportedPhoneCall.rawValue.getter(v7) == 0xD00000000000001CLL && 0x8000000000456900 == v12)
  {
  }

  else
  {
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

    LOBYTE(v11) = v14 & v11;
  }

  return v11 & 1;
}

unint64_t UnsupportedCallFlowOutputFactory.isPlayVoicemailIntent()()
{
  if (*(v0 + 176))
  {
    objc_opt_self();
    v2 = swift_dynamicCastObjCClass();
    if (v2)
    {
      return ([v2 callTypes] >> 4) & 1;
    }
  }

  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v4 = type metadata accessor for Logger();
  v5 = OUTLINED_FUNCTION_12_1(v4, static Logger.siriPhone);
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_11_1(v7);
    _os_log_impl(&dword_0, v5, v6, "#UnsupportedCallFlowOutputFactory Unexpected input, intent is not equal to INSearchCallHistoryIntent", v1, 2u);
    OUTLINED_FUNCTION_12_3();
  }

  return 0;
}

uint64_t UnsupportedCallFlowOutputFactory.makeUnsupportedOutput()()
{
  OUTLINED_FUNCTION_15();
  v1[42] = v2;
  v1[43] = v0;
  v3 = type metadata accessor for CATOption();
  OUTLINED_FUNCTION_21(v3);
  v1[44] = OUTLINED_FUNCTION_45();
  v4 = type metadata accessor for DialogPhase();
  OUTLINED_FUNCTION_21(v4);
  v1[45] = OUTLINED_FUNCTION_45();
  v5 = type metadata accessor for OutputGenerationManifest();
  v1[46] = v5;
  OUTLINED_FUNCTION_13_2(v5);
  v1[47] = v6;
  v1[48] = OUTLINED_FUNCTION_45();
  v7 = type metadata accessor for ButtonConfigurationModel(0);
  OUTLINED_FUNCTION_13_2(v7);
  v1[49] = v8;
  v1[50] = swift_task_alloc();
  v1[51] = swift_task_alloc();
  v9 = type metadata accessor for Locale();
  v1[52] = v9;
  OUTLINED_FUNCTION_13_2(v9);
  v1[53] = v10;
  v1[54] = OUTLINED_FUNCTION_45();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v11);
  v1[55] = swift_task_alloc();
  v1[56] = swift_task_alloc();
  v1[57] = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v12, v13, v14);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v2[32] = v1;
  v2[33] = v4;
  v2[34] = v0;
  v5 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v6 = v5;
  *(v7 + 472) = v0;

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v8, v9, v10);
}

{
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_31();
  v1 = v0[33];
  v0[62] = v1;
  OUTLINED_FUNCTION_5_95();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  OUTLINED_FUNCTION_4_68();
  v2 = swift_allocObject();
  v0[63] = v2;
  OUTLINED_FUNCTION_37_30(v2, xmmword_426260);
  v3 = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[64] = v4;
  *v4 = v5;
  OUTLINED_FUNCTION_1_132(v4);
  OUTLINED_FUNCTION_17_0();

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v6, v7, v8, v9, v10, v11, v12, v13);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v2[35] = v1;
  v2[36] = v4;
  v2[37] = v0;
  v5 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v6 = v5;
  *(v7 + 488) = v0;

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v8, v9, v10);
}

{
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_31();
  v1 = v0[36];
  v0[62] = v1;
  OUTLINED_FUNCTION_5_95();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  OUTLINED_FUNCTION_4_68();
  v2 = swift_allocObject();
  v0[63] = v2;
  OUTLINED_FUNCTION_37_30(v2, xmmword_426260);
  v3 = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[64] = v4;
  *v4 = v5;
  OUTLINED_FUNCTION_1_132(v4);
  OUTLINED_FUNCTION_17_0();

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v6, v7, v8, v9, v10, v11, v12, v13);
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
  OUTLINED_FUNCTION_27();
  v3 = v2;
  OUTLINED_FUNCTION_28();
  v5 = v4;
  OUTLINED_FUNCTION_13_1();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v8 = v7;
  *(v5 + 528) = v0;

  if (!v0)
  {
    *(v5 + 536) = v3;
  }

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v9, v10, v11);
}

{
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_31();
  v1 = v0[67];
  OUTLINED_FUNCTION_5_95();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  OUTLINED_FUNCTION_4_68();
  v2 = swift_allocObject();
  v0[68] = v2;
  OUTLINED_FUNCTION_37_30(v2, xmmword_426260);
  v3 = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[69] = v4;
  *v4 = v5;
  OUTLINED_FUNCTION_1_132(v4);
  OUTLINED_FUNCTION_17_0();

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v6, v7, v8, v9, v10, v11, v12, v13);
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
  OUTLINED_FUNCTION_27();
  v3 = v2;
  OUTLINED_FUNCTION_28();
  v5 = v4;
  OUTLINED_FUNCTION_13_1();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v8 = v7;
  *(v5 + 568) = v0;

  if (!v0)
  {
    *(v5 + 576) = v3;
  }

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v9, v10, v11);
}

{
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_31();
  v1 = v0[72];
  OUTLINED_FUNCTION_5_95();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  OUTLINED_FUNCTION_4_68();
  v2 = swift_allocObject();
  v0[73] = v2;
  OUTLINED_FUNCTION_37_30(v2, xmmword_426260);
  v3 = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[74] = v4;
  *v4 = v5;
  OUTLINED_FUNCTION_1_132(v4);
  OUTLINED_FUNCTION_17_0();

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v6, v7, v8, v9, v10, v11, v12, v13);
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
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v5 = v4;
  *(v7 + 624) = v6;
  *(v7 + 632) = v0;

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
  *(v6 + 656) = v0;

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v7, v8, v9);
}

{
  OUTLINED_FUNCTION_31();
  v1 = v0[78];
  v2 = v0[50];
  v3 = v0[49];
  v4 = v0[43];
  outlined init with copy of ButtonConfigurationModel(v0[51], v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin24ButtonConfigurationModelVGMd, &_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin24ButtonConfigurationModelVGMR);
  v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_424FD0;
  outlined init with take of ButtonConfigurationModel(v2, v6 + v5);
  static DialogPhase.completion.getter();
  v7 = swift_task_alloc();
  *(v7 + 16) = 0xD000000000000025;
  *(v7 + 24) = 0x8000000000462FF0;
  OutputGenerationManifest.init(dialogPhase:_:)();

  v8 = v4[9];
  v9 = v4[10];
  __swift_project_boxed_opaque_existential_1(v4 + 6, v8);
  v0[30] = type metadata accessor for PhoneSnippetDataModels(0);
  v0[31] = _s27PhoneCallFlowDelegatePlugin0A17SnippetDataModelsOAC0F3Kit0fE5ModelAAWlTm_0(&lazy protocol witness table cache variable for type PhoneSnippetDataModels and conformance PhoneSnippetDataModels, type metadata accessor for PhoneSnippetDataModels, &protocol conformance descriptor for PhoneSnippetDataModels);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 27);
  *boxed_opaque_existential_1 = v6;
  *(boxed_opaque_existential_1 + 8) = 2;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  OUTLINED_FUNCTION_4_68();
  v11 = swift_allocObject();
  v0[83] = v11;
  *(v11 + 16) = xmmword_426260;
  *(v11 + 32) = v1;
  v12 = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[84] = v13;
  *v13 = v14;
  v13[1] = UnsupportedCallFlowOutputFactory.makeUnsupportedOutput();
  v15 = v0[48];
  v16 = v0[42];

  return dispatch thunk of ResponseGenerating.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:)(v16, v0 + 27, v11, v15, v8, v9);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v2 = v1;
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_1((v2 + 216));
  v6 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v6, v7, v8);
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
  OUTLINED_FUNCTION_27();
  v3 = v2;
  OUTLINED_FUNCTION_28();
  v5 = v4;
  OUTLINED_FUNCTION_13_1();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v8 = v7;
  *(v5 + 704) = v0;

  if (!v0)
  {
    *(v5 + 712) = v3;
  }

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v9, v10, v11);
}

{
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_31();
  v1 = v0[89];
  OUTLINED_FUNCTION_5_95();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  OUTLINED_FUNCTION_4_68();
  v2 = swift_allocObject();
  v0[90] = v2;
  OUTLINED_FUNCTION_37_30(v2, xmmword_426260);
  v3 = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[91] = v4;
  *v4 = v5;
  OUTLINED_FUNCTION_1_132(v4);
  OUTLINED_FUNCTION_17_0();

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v6, v7, v8, v9, v10, v11, v12, v13);
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
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v5 = v4;
  *(v6 + 752) = v0;

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v7, v8, v9);
}

{
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_31();
  v1 = v0[98];
  OUTLINED_FUNCTION_5_95();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  OUTLINED_FUNCTION_4_68();
  v2 = swift_allocObject();
  v0[99] = v2;
  OUTLINED_FUNCTION_37_30(v2, xmmword_426260);
  v3 = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[100] = v4;
  *v4 = v5;
  OUTLINED_FUNCTION_1_132(v4);
  OUTLINED_FUNCTION_17_0();

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v6, v7, v8, v9, v10, v11, v12, v13);
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

void UnsupportedCallFlowOutputFactory.makeUnsupportedOutput()()
{
  v1 = *(v0 + 456);
  v2 = *(v0 + 344);
  v3 = *(v2 + 120);
  __swift_project_boxed_opaque_existential_1((v2 + 88), *(v2 + 112));
  v4 = OUTLINED_FUNCTION_40_0();
  v5(v4, v3);
  v6 = type metadata accessor for SpeakableString();
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v6);
  switch(*(v2 + 24))
  {
    case 4:
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
      }

      v7 = type metadata accessor for Logger();
      v8 = OUTLINED_FUNCTION_12_1(v7, static Logger.siriPhone);
      v9 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = OUTLINED_FUNCTION_65_0();
        OUTLINED_FUNCTION_102(v10);
        OUTLINED_FUNCTION_52_23(&dword_0, v8, v9, "#UnsupportedCallFlowOutputFactory makeUnsupportedOutput: returning unsupportedSearchCallHistory");
        OUTLINED_FUNCTION_35();
      }

      v11 = *(v0 + 344);

      v12 = *(v11 + 128);
      v13 = *(v2 + 112);
      v14 = *(v2 + 120);
      __swift_project_boxed_opaque_existential_1((v2 + 88), v13);
      (*(v14 + 8))(v13, v14);
      v15 = static UserFacingCallingAppUtils.getCommAppForLaunch(originalApp:preferredCallProvider:deviceState:)(v12, 0, (v0 + 136));
      *(v0 + 600) = v15;
      __swift_destroy_boxed_opaque_existential_1((v0 + 136));
      if (App.isFirstParty()() && (__swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40)), OUTLINED_FUNCTION_33_4(), (dispatch thunk of DeviceState.isPhone.getter() & 1) != 0) || (v16 = *(v0 + 432), __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40)), dispatch thunk of DeviceState.siriLocale.getter(), type metadata accessor for AppInfoBuilder(), swift_initStackObject(), v17 = AppInfoBuilder.getAppName(_:requestedLocale:)(v15, v16), v19 = v18, v20 = OUTLINED_FUNCTION_33_4(), v21(v20), !v19))
      {
        v22 = 1;
      }

      else
      {
        OUTLINED_FUNCTION_94(v17, v19);
        v22 = 0;
      }

      __swift_storeEnumTagSinglePayload(*(v0 + 448), v22, 1, v6);
      *(v0 + 808) = UnsupportedCallFlowOutputFactory.shouldShowOpenAppButtonForSCH()() & 1;
      UnsupportedCallFlowOutputFactory.isPlayVoicemailIntent()();
      type metadata accessor for SirikitDeviceState();
      outlined init with copy of SignalProviding(v0 + 16, v0 + 176);
      *(v0 + 608) = SirikitDeviceState.__allocating_init(from:)();
      OUTLINED_FUNCTION_18_1();
      v113 = swift_task_alloc();
      *(v0 + 616) = v113;
      *v113 = v0;
      v113[1] = UnsupportedCallFlowOutputFactory.makeUnsupportedOutput();
      OUTLINED_FUNCTION_15_11();

      __asm { BRAA            X4, X16 }

      return;
    case 5:
    case 6:
    case 8:
    case 9:
    case 0xB:
    case 0xC:
      break;
    case 7:
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
      }

      v96 = type metadata accessor for Logger();
      v97 = OUTLINED_FUNCTION_12_1(v96, static Logger.siriPhone);
      v98 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_8_0(v98))
      {
        v99 = OUTLINED_FUNCTION_65_0();
        OUTLINED_FUNCTION_11_1(v99);
        OUTLINED_FUNCTION_14_1(&dword_0, v100, v101, "#UnsupportedCallFlowOutputFactory makeUnsupportedOutput: returning unsupportedDeleteCallHistory");
        OUTLINED_FUNCTION_12_3();
      }

      OUTLINED_FUNCTION_33_27();
      v140 = v102 + class metadata base offset for UnsupportedFlowCATsSimple;
      v143 = *(v102 + class metadata base offset for UnsupportedFlowCATsSimple) + **(v102 + class metadata base offset for UnsupportedFlowCATsSimple);
      v103 = swift_task_alloc();
      *(v0 + 520) = v103;
      *v103 = v0;
      OUTLINED_FUNCTION_19_14(v103, v104, v105, v106, v107, v108, v109, v110, v138, v140, v143);
      OUTLINED_FUNCTION_15_11();

      __asm { BRAA            X0, X16 }

      return;
    case 0xA:
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
      }

      v66 = type metadata accessor for Logger();
      v67 = OUTLINED_FUNCTION_12_1(v66, static Logger.siriPhone);
      v68 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v67, v68))
      {
        v69 = OUTLINED_FUNCTION_65_0();
        OUTLINED_FUNCTION_102(v69);
        OUTLINED_FUNCTION_52_23(&dword_0, v67, v68, "#UnsupportedCallFlowOutputFactory makeUnsupportedOutput: returning unsupported emergencyContactCall");
        OUTLINED_FUNCTION_35();
      }

      if (!App.isFirstParty()())
      {
        v71 = *(v0 + 424);
        v70 = *(v0 + 432);
        v72 = *(v0 + 416);
        __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
        dispatch thunk of DeviceState.siriLocale.getter();
        type metadata accessor for AppInfoBuilder();
        swift_initStackObject();
        v73 = OUTLINED_FUNCTION_33_4();
        v75 = AppInfoBuilder.getAppName(_:requestedLocale:)(v73, v74);
        v77 = v76;
        (*(v71 + 8))(v70, v72);
        if (v77)
        {
          OUTLINED_FUNCTION_94(v75, v77);
          v78 = 0;
        }

        else
        {
          v78 = 1;
        }

        v133 = *(v0 + 456);
        v134 = *(v0 + 440);
        outlined destroy of PhoneCallNLIntent?(v133, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
        __swift_storeEnumTagSinglePayload(v134, v78, 1, v6);
        outlined init with take of SpeakableString?(v134, v133);
      }

      OUTLINED_FUNCTION_18_1();
      v135 = swift_task_alloc();
      *(v0 + 696) = v135;
      *v135 = v0;
      v135[1] = UnsupportedCallFlowOutputFactory.makeUnsupportedOutput();
      OUTLINED_FUNCTION_15_11();

      __asm { BRAA            X2, X16 }

      return;
    case 0xD:
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
      }

      v79 = type metadata accessor for Logger();
      v80 = OUTLINED_FUNCTION_12_1(v79, static Logger.siriPhone);
      v81 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_8_0(v81))
      {
        v82 = OUTLINED_FUNCTION_65_0();
        OUTLINED_FUNCTION_11_1(v82);
        OUTLINED_FUNCTION_14_1(&dword_0, v83, v84, "#UnsupportedCallFlowOutputFactory makeUnsupportedOutput: returning unsupportedDeleteVoicemail");
        OUTLINED_FUNCTION_12_3();
      }

      OUTLINED_FUNCTION_33_27();
      OUTLINED_FUNCTION_18_1();
      v142 = v85 + *v85;
      v86 = swift_task_alloc();
      *(v0 + 560) = v86;
      *v86 = v0;
      OUTLINED_FUNCTION_19_14(v86, v87, v88, v89, v90, v91, v92, v93, v138, v139, v142);
      OUTLINED_FUNCTION_15_11();

      __asm { BRAA            X0, X16 }

      return;
    default:
      if (!*(v2 + 24))
      {
        if (static UnsupportedPhoneCall.isInRetailStoreDemoMode()())
        {
          if (one-time initialization token for siriPhone != -1)
          {
            OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
          }

          v23 = type metadata accessor for Logger();
          v24 = OUTLINED_FUNCTION_12_1(v23, static Logger.siriPhone);
          v25 = static os_log_type_t.debug.getter();
          if (OUTLINED_FUNCTION_8_0(v25))
          {
            v26 = OUTLINED_FUNCTION_65_0();
            OUTLINED_FUNCTION_11_1(v26);
            OUTLINED_FUNCTION_14_1(&dword_0, v27, v28, "#UnsupportedCallFlowOutputFactory makeUnsupportedOutput: returning unsupported startCallEmergencyInRetailStore");
            OUTLINED_FUNCTION_12_3();
          }

          OUTLINED_FUNCTION_33_27();
          OUTLINED_FUNCTION_18_1();
          v141 = v29 + *v29;
          v30 = swift_task_alloc();
          *(v0 + 464) = v30;
          *v30 = v0;
          OUTLINED_FUNCTION_19_14(v30, v31, v32, v33, v34, v35, v36, v37, v138, v139, v141);
          OUTLINED_FUNCTION_15_11();

          __asm { BRAA            X0, X16 }
        }

        if (one-time initialization token for siriPhone != -1)
        {
          OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
        }

        v116 = type metadata accessor for Logger();
        v117 = OUTLINED_FUNCTION_12_1(v116, static Logger.siriPhone);
        v118 = static os_log_type_t.debug.getter();
        if (OUTLINED_FUNCTION_8_0(v118))
        {
          v119 = OUTLINED_FUNCTION_65_0();
          OUTLINED_FUNCTION_11_1(v119);
          OUTLINED_FUNCTION_14_1(&dword_0, v120, v121, "#UnsupportedCallFlowOutputFactory makeUnsupportedOutput: returning unsupported startCallEmergency");
          OUTLINED_FUNCTION_12_3();
        }

        OUTLINED_FUNCTION_33_27();
        OUTLINED_FUNCTION_18_1();
        v144 = v122 + *v122;
        v123 = swift_task_alloc();
        *(v0 + 480) = v123;
        *v123 = v0;
        OUTLINED_FUNCTION_19_14(v123, v124, v125, v126, v127, v128, v129, v130, v138, v139, v144);
        OUTLINED_FUNCTION_15_11();

        __asm { BRAA            X0, X16 }
      }

      return;
  }

  v40 = *(v2 + 120);
  __swift_project_boxed_opaque_existential_1((v2 + 88), *(v2 + 112));
  v41 = OUTLINED_FUNCTION_40_0();
  v43 = v42(v41, v40);
  v44 = (*(*v43 + 152))(v43);

  if (v44)
  {
    __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    OUTLINED_FUNCTION_40_0();
    if (dispatch thunk of DeviceState.isAppleTV.getter())
    {
      v45 = *(*(v0 + 344) + 176);
      if (v45)
      {
        ObjectType = swift_getObjectType();
        if (dynamic_cast_existential_1_conditional(v45, ObjectType, &protocol descriptor for CallingIntent))
        {
          if (one-time initialization token for siriPhone != -1)
          {
            OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
          }

          v47 = type metadata accessor for Logger();
          v48 = OUTLINED_FUNCTION_12_1(v47, static Logger.siriPhone);
          v49 = static os_log_type_t.debug.getter();
          if (OUTLINED_FUNCTION_8_0(v49))
          {
            v50 = OUTLINED_FUNCTION_65_0();
            OUTLINED_FUNCTION_11_1(v50);
            OUTLINED_FUNCTION_14_1(&dword_0, v51, v52, "#UnsupportedCallFlowOutputFactory makeUnsupportedOutput: returning unsupported on deviceType on AppleTV with FaceTime punchout");
            OUTLINED_FUNCTION_12_3();
          }

          outlined init with copy of SignalProviding(v2 + 88, v0 + 96);
          type metadata accessor for StartCallCATs(0);
          OUTLINED_FUNCTION_45_23();
          static CATOption.defaultMode.getter();
          OUTLINED_FUNCTION_54_9();
          CATWrapper.__allocating_init(options:globals:)();
          type metadata accessor for StartCallCATsSimple(0);
          OUTLINED_FUNCTION_45_23();
          static CATOption.defaultMode.getter();
          OUTLINED_FUNCTION_54_9();
          CATWrapperSimple.__allocating_init(options:globals:)();
          type metadata accessor for PhoneCallDisplayTextCATsSimple(0);
          OUTLINED_FUNCTION_45_23();
          static CATOption.defaultMode.getter();
          OUTLINED_FUNCTION_54_9();
          CATWrapperSimple.__allocating_init(options:globals:)();
          type metadata accessor for UnsupportedFlowCATsSimple(0);
          OUTLINED_FUNCTION_45_23();
          static CATOption.defaultMode.getter();
          OUTLINED_FUNCTION_54_9();
          CATWrapperSimple.__allocating_init(options:globals:)();
          type metadata accessor for UnsupportedFaceTimeOutputProvider();
          swift_allocObject();
          *(v0 + 736) = UnsupportedFaceTimeOutputProvider.init(unsupportedPhoneCall:sharedGlobals:startCallCats:startCallCATsSimple:phoneCallDisplayTextCATsSimple:unsupportedFlowCATsSimple:)();
          swift_task_alloc();
          OUTLINED_FUNCTION_25();
          *(v0 + 744) = v53;
          *v53 = v54;
          v53[1] = UnsupportedCallFlowOutputFactory.makeUnsupportedOutput();
          OUTLINED_FUNCTION_15_11();

          __asm { BRAA            X1, X16 }
        }
      }
    }
  }

  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v57 = type metadata accessor for Logger();
  v58 = OUTLINED_FUNCTION_12_1(v57, static Logger.siriPhone);
  v59 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_8_0(v59))
  {
    v60 = OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_11_1(v60);
    OUTLINED_FUNCTION_14_1(&dword_0, v61, v62, "#UnsupportedCallFlowOutputFactory makeUnsupportedOutput: returning unsupported on deviceType");
    OUTLINED_FUNCTION_12_3();
  }

  type metadata accessor for SirikitDeviceState();
  outlined init with copy of SignalProviding(v0 + 16, v0 + 56);
  *(v0 + 760) = SirikitDeviceState.__allocating_init(from:)();
  OUTLINED_FUNCTION_18_1();
  v63 = swift_task_alloc();
  *(v0 + 768) = v63;
  *v63 = v0;
  v63[1] = UnsupportedCallFlowOutputFactory.makeUnsupportedOutput();
  OUTLINED_FUNCTION_15_11();

  __asm { BRAA            X1, X16 }
}

uint64_t UnsupportedCallFlowOutputFactory.makeUnsupportedOutput()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_24_1();
  v13 = *(v12 + 456);

  outlined destroy of PhoneCallNLIntent?(v13, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_3_118();

  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_16();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_24_1();
  v13 = *(v12 + 456);

  outlined destroy of PhoneCallNLIntent?(v13, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_3_118();

  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_16();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_24_1();
  v13 = *(v12 + 456);

  outlined destroy of PhoneCallNLIntent?(v13, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_3_118();

  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_16();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_24_1();
  v13 = v12[80];
  v14 = v12[78];
  OUTLINED_FUNCTION_57_26();
  v15 = v12[51];

  v16 = OUTLINED_FUNCTION_33_4();
  v17(v16);
  outlined destroy of ButtonConfigurationModel(v15);
  OUTLINED_FUNCTION_143_0();
  outlined destroy of PhoneCallNLIntent?(v18, v19, v20);
  OUTLINED_FUNCTION_143_0();
  outlined destroy of PhoneCallNLIntent?(v21, v22, v23);
  OUTLINED_FUNCTION_3_118();

  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_16();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_24_1();
  v13 = *(v12 + 624);
  OUTLINED_FUNCTION_57_26();

  OUTLINED_FUNCTION_143_0();
  outlined destroy of PhoneCallNLIntent?(v14, v15, v16);
  OUTLINED_FUNCTION_143_0();
  outlined destroy of PhoneCallNLIntent?(v17, v18, v19);
  OUTLINED_FUNCTION_3_118();

  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_16();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_24_1();
  v13 = *(v12 + 456);

  outlined destroy of PhoneCallNLIntent?(v13, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_3_118();

  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_16();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_24_1();
  v13 = *(v12 + 456);

  outlined destroy of PhoneCallNLIntent?(v13, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_3_118();

  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_16();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_24_1();
  v13 = *(v12 + 456);

  outlined destroy of PhoneCallNLIntent?(v13, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_3_118();

  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_16();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_24_1();
  outlined destroy of PhoneCallNLIntent?(*(v12 + 456), &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_2_124();

  OUTLINED_FUNCTION_17_12();
  OUTLINED_FUNCTION_16();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_24_1();
  outlined destroy of PhoneCallNLIntent?(*(v12 + 456), &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_2_124();

  OUTLINED_FUNCTION_17_12();
  OUTLINED_FUNCTION_16();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_24_1();
  outlined destroy of PhoneCallNLIntent?(*(v12 + 456), &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_2_124();

  OUTLINED_FUNCTION_17_12();
  OUTLINED_FUNCTION_16();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_24_1();
  outlined destroy of PhoneCallNLIntent?(*(v12 + 456), &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_2_124();

  OUTLINED_FUNCTION_17_12();
  OUTLINED_FUNCTION_16();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_57_26();

  OUTLINED_FUNCTION_143_0();
  outlined destroy of PhoneCallNLIntent?(v12, v13, v14);
  OUTLINED_FUNCTION_143_0();
  outlined destroy of PhoneCallNLIntent?(v15, v16, v17);
  OUTLINED_FUNCTION_2_124();

  OUTLINED_FUNCTION_17_12();
  OUTLINED_FUNCTION_16();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_24_1();
  v13 = *(v12 + 640);
  v14 = *(v12 + 624);
  OUTLINED_FUNCTION_57_26();

  OUTLINED_FUNCTION_143_0();
  outlined destroy of PhoneCallNLIntent?(v15, v16, v17);
  OUTLINED_FUNCTION_143_0();
  outlined destroy of PhoneCallNLIntent?(v18, v19, v20);
  OUTLINED_FUNCTION_2_124();

  OUTLINED_FUNCTION_17_12();
  OUTLINED_FUNCTION_16();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_24_1();
  outlined destroy of PhoneCallNLIntent?(*(v12 + 456), &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_2_124();

  OUTLINED_FUNCTION_17_12();
  OUTLINED_FUNCTION_16();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_24_1();
  v13 = *(v12 + 456);

  outlined destroy of PhoneCallNLIntent?(v13, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_2_124();

  OUTLINED_FUNCTION_17_12();
  OUTLINED_FUNCTION_16();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_24_1();
  outlined destroy of PhoneCallNLIntent?(*(v12 + 456), &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_2_124();

  OUTLINED_FUNCTION_17_12();
  OUTLINED_FUNCTION_16();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10, a11, a12);
}

uint64_t UnsupportedCallFlowOutputFactory.makeUnsupportedOutput()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_31();
  v11 = *(*(v10 + 344) + 176);
  *(v10 + 640) = v11;
  if (v11 && *(v10 + 808) == 1)
  {
    v11;
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    *(v10 + 648) = v12;
    *v12 = v13;
    v12[1] = UnsupportedCallFlowOutputFactory.makeUnsupportedOutput();
    OUTLINED_FUNCTION_17_0();

    return UnsupportedCallFlowOutputFactory.getButtonConfigurationModel(app:intent:)();
  }

  else
  {
    v16 = *(v10 + 624);
    OUTLINED_FUNCTION_5_95();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    OUTLINED_FUNCTION_4_68();
    v17 = swift_allocObject();
    *(v10 + 680) = v17;
    OUTLINED_FUNCTION_37_30(v17, xmmword_426260);
    v18 = v16;
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    *(v10 + 688) = v19;
    *v19 = v20;
    OUTLINED_FUNCTION_1_132(v19);
    OUTLINED_FUNCTION_17_0();

    return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v21, v22, v23, v24, v25, v26, v27, v28);
  }
}

uint64_t UnsupportedCallFlowOutputFactory.makeUnsupportedOutput()(uint64_t a1)
{
  OUTLINED_FUNCTION_28();
  v5 = v4;
  OUTLINED_FUNCTION_13_1();
  *v6 = v5;
  v7 = *v2;
  OUTLINED_FUNCTION_4_2();
  *v8 = v7;
  *(v5 + 776) = v1;

  if (!v1)
  {
    *(v5 + 784) = a1;
  }

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t UnsupportedCallFlowOutputFactory.getButtonConfigurationModel(app:intent:)()
{
  OUTLINED_FUNCTION_15();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = type metadata accessor for UUID();
  v1[6] = v5;
  OUTLINED_FUNCTION_13_2(v5);
  v1[7] = v6;
  v1[8] = OUTLINED_FUNCTION_45();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v7);
  v1[9] = OUTLINED_FUNCTION_45();
  v8 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v8, v9, v10);
}

{
  OUTLINED_FUNCTION_27();
  v1 = *(v0[5] + 184);
  UnsupportedCallFlowOutputFactory.getSpeakableAppName(app:intent:)();
  v5 = (*(*v1 + class metadata base offset for PhoneCallDisplayTextCATsSimple + 248) + **(*v1 + class metadata base offset for PhoneCallDisplayTextCATsSimple + 248));
  v2 = swift_task_alloc();
  v0[10] = v2;
  *v2 = v0;
  v2[1] = UnsupportedCallFlowOutputFactory.getButtonConfigurationModel(app:intent:);
  v3 = v0[9];

  return v5(v3);
}

{
  OUTLINED_FUNCTION_15();

  OUTLINED_FUNCTION_11();

  return v0();
}

uint64_t UnsupportedCallFlowOutputFactory.getButtonConfigurationModel(app:intent:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  OUTLINED_FUNCTION_4_2();
  *v6 = v5;
  *v6 = *v2;
  *(v5 + 88) = v1;

  v7 = *(v4 + 72);
  if (!v1)
  {
    *(v5 + 96) = a1;
  }

  outlined destroy of PhoneCallNLIntent?(v7, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t UnsupportedCallFlowOutputFactory.getButtonConfigurationModel(app:intent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_24_1();
  v13 = v12[8];
  v33 = v12[9];
  v14 = v12[6];
  v15 = v12[7];
  v16 = v12[2];
  v17 = dispatch thunk of LabelExecutionResult.subscript.getter();
  v19 = v18;
  v20 = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SAAppsLaunchApp, SAAppsLaunchApp_ptr);

  SAAppsLaunchApp.init(app:)(v21);
  OUTLINED_FUNCTION_45_23();
  UUID.init()();
  *v16 = v17;
  v16[1] = v19;
  v22 = type metadata accessor for ButtonConfigurationModel(0);
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SABaseCommand, SABaseCommand_ptr);
  v23 = v20;
  CodableAceObject.init(wrappedValue:)();
  (*(v15 + 16))(v16 + *(v22 + 28), v13, v14);
  *(v16 + *(v22 + 32)) = 0;
  [objc_allocWithZone(SAIntentGroupRunSiriKitExecutor) init];
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SAIntentGroupRunSiriKitExecutor, SAIntentGroupRunSiriKitExecutor_ptr);
  CodableAceObject.init(wrappedValue:)();

  (*(v15 + 8))(v13, v14);

  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_16();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, v33, a10, a11, a12);
}

void UnsupportedCallFlowOutputFactory.getSpeakableAppName(app:intent:)()
{
  OUTLINED_FUNCTION_66();
  v2 = v1;
  v21 = v3;
  v4 = type metadata accessor for Locale();
  OUTLINED_FUNCTION_9_1();
  v6 = v5;
  __chkstk_darwin(v7);
  OUTLINED_FUNCTION_4();
  v10 = v9 - v8;
  v11 = v0[27];
  v12 = v0[28];
  __swift_project_boxed_opaque_existential_1(v0 + 24, v11);
  v13 = v0[14];
  v14 = v0[15];
  __swift_project_boxed_opaque_existential_1(v0 + 11, v13);
  (*(v14 + 8))(v22, v13, v14);
  __swift_project_boxed_opaque_existential_1(v22, v22[3]);
  dispatch thunk of DeviceState.siriLocale.getter();
  v15 = (*(v12 + 16))(v2, v10, v11, v12);
  v17 = v16;
  (*(v6 + 8))(v10, v4);
  __swift_destroy_boxed_opaque_existential_1(v22);
  if (v17)
  {
    v18 = v21;
    OUTLINED_FUNCTION_94(v15, v17);
    v19 = 0;
  }

  else
  {
    v19 = 1;
    v18 = v21;
  }

  v20 = type metadata accessor for SpeakableString();
  __swift_storeEnumTagSinglePayload(v18, v19, 1, v20);
  OUTLINED_FUNCTION_65();
}

uint64_t UnsupportedCallFlowOutputFactory.deinit()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 48));
  __swift_destroy_boxed_opaque_existential_1((v0 + 88));

  __swift_destroy_boxed_opaque_existential_1((v0 + 136));

  __swift_destroy_boxed_opaque_existential_1((v0 + 192));
  v1 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin32UnsupportedCallFlowOutputFactory_completionOutputManifest;
  type metadata accessor for OutputGenerationManifest();
  OUTLINED_FUNCTION_23_5();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t UnsupportedCallFlowOutputFactory.__deallocating_deinit()
{
  UnsupportedCallFlowOutputFactory.deinit();

  return swift_deallocClassInstance();
}

uint64_t specialized UnsupportedCallFlowOutputFactory.init(unsupportedPhoneCall:app:sharedGlobals:intent:unsupportedFlowCats:searchCallHistoryCats:unsupportedFlowCatsSimple:responseGenerator:labelTemplating:appInfoBuilder:phoneCallDisplayTextCATsSimple:)(int a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, const char *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v62 = a7;
  v63 = a6;
  v61 = a5;
  v58 = a4;
  v64 = a2;
  v65 = a3;
  LODWORD(v60) = a1;
  v59 = a11;
  v53 = a10;
  v51 = a9;
  v52 = a17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25DucTemplatingLocalContextVSgMd, &_s11SiriKitFlow25DucTemplatingLocalContextVSgMR);
  __chkstk_darwin(v19 - 8);
  v57 = &v50 - v20;
  v21 = type metadata accessor for Locale();
  v55 = *(v21 - 8);
  v56 = v21;
  __chkstk_darwin(v21);
  v54 = &v50 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for CATOption();
  __chkstk_darwin(v23 - 8);
  v24 = type metadata accessor for DialogPhase();
  __chkstk_darwin(v24 - 8);
  v79[3] = a13;
  v79[4] = a16;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v79);
  (*(*(a13 - 8) + 32))(boxed_opaque_existential_1, a8, a13);
  v78[3] = a15;
  v78[4] = a18;
  v26 = __swift_allocate_boxed_opaque_existential_1(v78);
  (*(*(a15 - 8) + 32))(v26, v51, a15);
  v76 = a14;
  v77 = v52;
  v27 = __swift_allocate_boxed_opaque_existential_1(&v75);
  (*(*(a14 - 8) + 32))(v27, v53, a14);
  static DialogPhase.completion.getter();
  OutputGenerationManifest.init(dialogPhase:_:)();
  *(a12 + 24) = v60;
  v28 = v62;
  *(a12 + 32) = v61;
  *(a12 + 40) = v28;
  *(a12 + 16) = v63;
  outlined init with copy of SignalProviding(v79, a12 + 48);
  v29 = v65;
  outlined init with copy of SignalProviding(v65, a12 + 88);
  *(a12 + 128) = v64;
  outlined init with copy of SignalProviding(v29, &v72);
  outlined init with copy of SignalProviding(v78, v71);
  v53 = "com.apple.camera";
  type metadata accessor for PhoneCallDisplayTextCATs(0);

  static CATOption.defaultMode.getter();
  v30 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for PhoneCallCommonCATs(0);
  static CATOption.defaultMode.getter();
  v31 = CATWrapper.__allocating_init(options:globals:)();
  v32 = type metadata accessor for AppInfoBuilder();
  v33 = swift_allocObject();
  type metadata accessor for StartCallCATs(0);
  static CATOption.defaultMode.getter();
  v60 = CATWrapper.__allocating_init(options:globals:)();
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB24BaseCatTemplatingServiceCySo8INIntentCSo0J8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin0aB24BaseCatTemplatingServiceCySo8INIntentCSo0J8ResponseCGMR);
  v34 = swift_allocObject();
  v70[3] = v32;
  v70[4] = &protocol witness table for AppInfoBuilder;
  v70[0] = v33;
  v35 = class metadata base offset for PhoneCallBaseCatTemplatingService;
  v36 = (v34 + *(*v34 + class metadata base offset for PhoneCallBaseCatTemplatingService + 16));
  *v36 = 0x3D65737561705C1BLL;
  v36[1] = 0xEC0000005C303532;
  v37 = v34 + *(*v34 + v35 + 56);
  *v37 = 0u;
  *(v37 + 1) = 0u;
  *(v37 + 4) = 0;
  outlined init with copy of SignalProviding(&v72, v34 + *(*v34 + v35 + 72));
  v38 = v73;
  v39 = v74;
  __swift_project_boxed_opaque_existential_1(&v72, v73);
  (v39[1])(&v68, v38, v39);
  v40 = *(*v34 + class metadata base offset for PhoneCallBaseCatTemplatingService + 40);
  outlined init with take of SPHConversation(&v68, v34 + v40);
  v41 = class metadata base offset for PhoneCallBaseCatTemplatingService;
  v42 = *(*v34 + class metadata base offset for PhoneCallBaseCatTemplatingService + 24);
  v50 = v31;
  v51 = v30;
  *(v34 + v42) = v30;
  *(v34 + *(*v34 + v41 + 32)) = v31;
  outlined init with copy of SignalProviding(v70, v34 + *(*v34 + v41 + 48));
  outlined init with copy of SignalProviding(v71, v34 + *(*v34 + class metadata base offset for PhoneCallBaseCatTemplatingService + 64));
  *(v34 + *(*v34 + class metadata base offset for PhoneCallBaseCatTemplatingService + 80)) = v60;
  outlined init with copy of SignalProviding(v34 + v40, &v68);
  __swift_project_boxed_opaque_existential_1(&v68, v69);

  v43 = v54;
  dispatch thunk of DeviceState.siriLocale.getter();
  v67[0] = Locale.identifier.getter();
  v67[1] = v44;
  v66[0] = 45;
  v66[1] = 0xE100000000000000;
  v67[5] = 95;
  v67[6] = 0xE100000000000000;
  lazy protocol witness table accessor for type String and conformance String();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  (*(v55 + 8))(v43, v56);

  type metadata accessor for INIntentSlotValueType(0);
  _s27PhoneCallFlowDelegatePlugin0A17SnippetDataModelsOAC0F3Kit0fE5ModelAAWlTm_0(&lazy protocol witness table cache variable for type INIntentSlotValueType and conformance INIntentSlotValueType, type metadata accessor for INIntentSlotValueType, &protocol conformance descriptor for INIntentSlotValueType);
  Dictionary.init(dictionaryLiteral:)();
  v45 = v73;
  v46 = v74;
  __swift_project_boxed_opaque_existential_1(&v72, v73);
  (v46[3])(v67, v45, v46);
  outlined init with copy of SignalProviding(v34 + v40, v66);
  v47 = type metadata accessor for DucTemplatingLocalContext();
  __swift_storeEnumTagSinglePayload(v57, 1, 1, v47);
  v48 = DucTemplatingService.init(ducFamily:locale:extensionValueTypeNamesByValueType:aceServiceInvoker:deviceState:localContext:)();

  __swift_destroy_boxed_opaque_existential_1(v71);
  __swift_destroy_boxed_opaque_existential_1(v70);
  __swift_destroy_boxed_opaque_existential_1(&v68);
  __swift_destroy_boxed_opaque_existential_1(&v72);
  v73 = v52;
  v74 = &protocol witness table for PhoneCallBaseCatTemplatingService<A, B>;

  *&v72 = v48;
  __swift_destroy_boxed_opaque_existential_1(v65);
  __swift_destroy_boxed_opaque_existential_1(v78);
  __swift_destroy_boxed_opaque_existential_1(v79);
  outlined init with take of SPHConversation(&v72, a12 + 136);
  *(a12 + 176) = v58;
  outlined init with take of SPHConversation(&v75, a12 + 192);
  *(a12 + 184) = v59;
  return a12;
}

uint64_t partial apply for closure #1 in UnsupportedCallFlowOutputFactory.makeUnsupportedOutput(completion:)()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v1 + 16) = v5;
  *v5 = v6;
  v5[1] = closure #2 in ActionableCallControlFlow.execute();
  OUTLINED_FUNCTION_143_0();

  return closure #1 in UnsupportedCallFlowOutputFactory.makeUnsupportedOutput(completion:)(v7, v8, v9, v2, v3, v4);
}

uint64_t type metadata accessor for UnsupportedCallFlowOutputFactory(uint64_t a1)
{
  result = type metadata singleton initialization cache for UnsupportedCallFlowOutputFactory;
  if (!type metadata singleton initialization cache for UnsupportedCallFlowOutputFactory)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for UnsupportedCallFlowOutputFactory(uint64_t a1)
{
  result = type metadata accessor for OutputGenerationManifest();
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

uint64_t partial apply for closure #1 in closure #2 in UnsupportedCallFlowOutputFactory.makeUnsupportedOutput(completion:)(uint64_t a1, char a2)
{
  v5 = type metadata accessor for TemplatingResult();
  OUTLINED_FUNCTION_13_2(v5);
  v7 = v6;
  v9 = v8;
  v10 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v2 + v11);
  v13 = *(v2 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8));

  return closure #1 in closure #2 in UnsupportedCallFlowOutputFactory.makeUnsupportedOutput(completion:)(a1, a2 & 1, v2 + v10, v12, v13);
}

uint64_t _s27PhoneCallFlowDelegatePlugin0A17SnippetDataModelsOAC0F3Kit0fE5ModelAAWlTm_0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

__n128 *OUTLINED_FUNCTION_37_30(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = v2;
  return result;
}

uint64_t UnsupportedFaceTimeOutputProvider.__allocating_init(unsupportedPhoneCall:sharedGlobals:startCallCats:startCallCATsSimple:phoneCallDisplayTextCATsSimple:unsupportedFlowCATsSimple:)()
{
  OUTLINED_FUNCTION_34_28();
  v5 = v4;
  v7 = v6;
  v8 = swift_allocObject();
  *(v8 + 56) = v7;
  outlined init with take of PhoneCallFeatureFlagProviding(v5, v8 + 16);
  *(v8 + 80) = v2;
  *(v8 + 88) = v1;
  *(v8 + 64) = v3;
  *(v8 + 72) = v0;
  return v8;
}

uint64_t UnsupportedFaceTimeOutputProvider.init(unsupportedPhoneCall:sharedGlobals:startCallCats:startCallCATsSimple:phoneCallDisplayTextCATsSimple:unsupportedFlowCATsSimple:)()
{
  OUTLINED_FUNCTION_34_28();
  *(v1 + 56) = v5;
  outlined init with take of PhoneCallFeatureFlagProviding(v6, v1 + 16);
  *(v1 + 80) = v3;
  *(v1 + 88) = v2;
  *(v1 + 64) = v4;
  *(v1 + 72) = v0;
  return v1;
}

uint64_t UnsupportedFaceTimeOutputProvider.makeSimpleOutputFlowAsync()()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  (*(v2 + 16))(v10, v1, v2);
  v3 = v11;
  v4 = v12;
  v5 = __swift_project_boxed_opaque_existential_1(v10, v11);
  v9[3] = v3;
  v9[4] = v4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v9);
  (*(*(v3 - 8) + 16))(boxed_opaque_existential_1, v5, v3);
  type metadata accessor for SimpleOutputFlowAsync();
  swift_allocObject();

  v7 = SimpleOutputFlowAsync.init(outputPublisher:outputGenerator:)();
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v7;
}

uint64_t closure #1 in UnsupportedFaceTimeOutputProvider.makeSimpleOutputFlowAsync()(uint64_t a1, uint64_t a2)
{
  v6 = (*(*a2 + 144) + **(*a2 + 144));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = closure #2 in ActionableCallControlFlow.execute();

  return v6(a1);
}

uint64_t partial apply for closure #1 in UnsupportedFaceTimeOutputProvider.makeSimpleOutputFlowAsync()()
{
  OUTLINED_FUNCTION_15();
  v3 = v2;
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = closure #2 in ActionableCallControlFlow.execute();

  return closure #1 in UnsupportedFaceTimeOutputProvider.makeSimpleOutputFlowAsync()(v3, v0);
}

uint64_t UnsupportedFaceTimeOutputProvider.makeUnsupportedOutput()()
{
  OUTLINED_FUNCTION_15();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = closure #1 in ActionableCallControlFlow.execute();

  return UnsupportedFaceTimeOutputProvider.makeUnsupportedRFOutput()();
}

uint64_t UnsupportedFaceTimeOutputProvider.makeFaceTimeSettingsButtonText()()
{
  OUTLINED_FUNCTION_15();
  v1[12] = v0;
  v1[13] = type metadata accessor for Locale();
  OUTLINED_FUNCTION_24_5();
  v1[14] = v2;
  v1[15] = OUTLINED_FUNCTION_45();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v3);
  v1[16] = OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v4, v5, v6);
}

{
  OUTLINED_FUNCTION_15();
  v1 = *(v0 + 128);

  outlined destroy of SpeakableString?(v1);

  OUTLINED_FUNCTION_11();

  return v2();
}

uint64_t UnsupportedFaceTimeOutputProvider.makeFaceTimeSettingsButtonText()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_39_4();
  v16 = v14[14];
  v15 = v14[15];
  v17 = v14[12];
  v42 = v14[13];
  type metadata accessor for App();
  v18 = App.__allocating_init(appIdentifier:)();
  v14[17] = v18;
  v19 = v17[5];
  v20 = v17[6];
  __swift_project_boxed_opaque_existential_1(v17 + 2, v19);
  (*(v20 + 168))(v19, v20);
  v21 = v14[5];
  v22 = v14[6];
  __swift_project_boxed_opaque_existential_1(v14 + 2, v21);
  v23 = v17[5];
  v24 = v17[6];
  __swift_project_boxed_opaque_existential_1(v17 + 2, v23);
  (*(v24 + 8))(v23, v24);
  __swift_project_boxed_opaque_existential_1(v14 + 7, v14[10]);
  dispatch thunk of DeviceState.siriLocale.getter();
  (*(v22 + 16))(v18, v15, v21, v22);
  v26 = v25;
  (*(v16 + 8))(v15, v42);
  __swift_destroy_boxed_opaque_existential_1(v14 + 7);
  v27 = v14[16];
  if (v26)
  {
    String.toSpeakableString.getter();

    v28 = type metadata accessor for SpeakableString();
    __swift_storeEnumTagSinglePayload(v27, 0, 1, v28);
    __swift_destroy_boxed_opaque_existential_1(v14 + 2);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v14 + 2);
    v29 = type metadata accessor for SpeakableString();
    __swift_storeEnumTagSinglePayload(v27, 1, 1, v29);
  }

  v41 = **(v14[12] + 88) + class metadata base offset for PhoneCallDisplayTextCATsSimple + 24;
  OUTLINED_FUNCTION_24_5();
  v43 = v30 + *v30;
  v31 = swift_task_alloc();
  v14[18] = v31;
  *v31 = v14;
  v31[1] = UnsupportedFaceTimeOutputProvider.makeFaceTimeSettingsButtonText();
  OUTLINED_FUNCTION_15_11();

  return v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, v41, v43, a12, a13, a14);
}

uint64_t UnsupportedFaceTimeOutputProvider.makeFaceTimeSettingsButtonText()(uint64_t a1)
{
  OUTLINED_FUNCTION_28();
  v5 = v4;
  OUTLINED_FUNCTION_6();
  *v6 = v5;
  v7 = *v2;
  OUTLINED_FUNCTION_4_2();
  *v8 = v7;
  *(v5 + 152) = v1;

  if (!v1)
  {
    *(v5 + 160) = a1;
  }

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v9, v10, v11);
}

void UnsupportedFaceTimeOutputProvider.makeFaceTimeSettingsButtonText()()
{
  OUTLINED_FUNCTION_23_0();
  v1 = *(v0 + 128);
  dispatch thunk of LabelExecutionResult.subscript.getter();

  outlined destroy of SpeakableString?(v1);

  OUTLINED_FUNCTION_80();

  __asm { BRAA            X3, X16 }
}

uint64_t UnsupportedFaceTimeOutputProvider.makeUnsupportedRFOutput()()
{
  OUTLINED_FUNCTION_15();
  v1[25] = v2;
  v1[26] = v0;
  v3 = type metadata accessor for PhoneError(0);
  v1[27] = v3;
  OUTLINED_FUNCTION_21(v3);
  v1[28] = OUTLINED_FUNCTION_45();
  v4 = type metadata accessor for DialogPhase();
  OUTLINED_FUNCTION_21(v4);
  v1[29] = OUTLINED_FUNCTION_45();
  v1[30] = type metadata accessor for OutputGenerationManifest();
  OUTLINED_FUNCTION_24_5();
  v1[31] = v5;
  v1[32] = OUTLINED_FUNCTION_45();
  v6 = type metadata accessor for PhoneSnippetDataModels(0);
  v1[33] = v6;
  OUTLINED_FUNCTION_21(v6);
  v1[34] = OUTLINED_FUNCTION_45();
  type metadata accessor for ButtonConfigurationModel(0);
  OUTLINED_FUNCTION_24_5();
  v1[35] = v7;
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v8 = swift_task_alloc();
  v1[38] = v8;
  *v8 = v1;
  v8[1] = UnsupportedFaceTimeOutputProvider.makeUnsupportedRFOutput();

  return UnsupportedFaceTimeOutputProvider.makeFaceTimeSettingsButtonText()();
}

{
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v3[12] = v1;
  v3[13] = v5;
  v3[14] = v6;
  v3[15] = v0;
  v7 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v8 = v7;
  v3[39] = v9;

  if (v0)
  {

    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_80();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_66_0();
  OUTLINED_FUNCTION_80();

  return _swift_task_switch(v12, v13, v14);
}

{
  OUTLINED_FUNCTION_23_0();
  v2 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v3 = v2;
  v2[16] = v1;
  v2[17] = v4;
  v2[18] = v0;
  OUTLINED_FUNCTION_21_51();
  *v5 = *v1;

  OUTLINED_FUNCTION_21_51();
  if (v0)
  {

    OUTLINED_FUNCTION_19_45();

    OUTLINED_FUNCTION_13_6();
    OUTLINED_FUNCTION_80();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_9_2();
  OUTLINED_FUNCTION_80();

  return _swift_task_switch(v8, v9, v10);
}

{
  OUTLINED_FUNCTION_23_0();
  v2 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v3 = v2;
  v2[19] = v1;
  v2[20] = v4;
  v2[21] = v0;
  OUTLINED_FUNCTION_21_51();
  *v5 = *v1;

  OUTLINED_FUNCTION_21_51();
  if (v0)
  {

    OUTLINED_FUNCTION_19_45();

    OUTLINED_FUNCTION_13_6();
    OUTLINED_FUNCTION_80();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_9_2();
  OUTLINED_FUNCTION_80();

  return _swift_task_switch(v8, v9, v10);
}

{
  OUTLINED_FUNCTION_23_0();
  v2 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v3 = v2;
  v2[22] = v1;
  v2[23] = v4;
  v2[24] = v0;
  OUTLINED_FUNCTION_21_51();
  *v5 = *v1;

  OUTLINED_FUNCTION_21_51();
  if (v0)
  {

    OUTLINED_FUNCTION_19_45();

    OUTLINED_FUNCTION_13_6();
    OUTLINED_FUNCTION_80();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_9_2();
  OUTLINED_FUNCTION_80();

  return _swift_task_switch(v8, v9, v10);
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
  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v6, v7, v8);
}

{
  v1 = v0[46];
  v2 = v0[37];
  v3 = v0[34];
  v5 = v0[31];
  v4 = v0[32];
  v6 = v0[30];

  (*(v5 + 8))(v4, v6);
  _s27PhoneCallFlowDelegatePlugin0A5ErrorOWOhTm_11(v3, type metadata accessor for PhoneSnippetDataModels);
  _s27PhoneCallFlowDelegatePlugin0A5ErrorOWOhTm_11(v2, type metadata accessor for ButtonConfigurationModel);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  OUTLINED_FUNCTION_11();

  return v7();
}

void UnsupportedFaceTimeOutputProvider.makeUnsupportedRFOutput()()
{
  v1 = v0[26];
  v2 = *(v1 + 56);
  if (v2 != 12)
  {
    if (v2 != 9)
    {
      if (v2 == 8)
      {
        type metadata accessor for SirikitDeviceState();
        __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
        v3 = OUTLINED_FUNCTION_8_85();
        v4(v3);
        v0[40] = SirikitDeviceState.__allocating_init(from:)();
        OUTLINED_FUNCTION_24_5();
        v5 = swift_task_alloc();
        v0[41] = v5;
        *v5 = v0;
        OUTLINED_FUNCTION_11_68(v5);
        OUTLINED_FUNCTION_36_30();

        __asm { BRAA            X1, X16 }
      }

      if (one-time initialization token for siriPhone != -1)
      {
        swift_once();
      }

      v18 = type metadata accessor for Logger();
      __swift_project_value_buffer(v18, static Logger.siriPhone);

      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v33 = v22;
        *v21 = 136315138;
        v23 = _sSS10describingSSx_tcs23CustomStringConvertibleRzlufC27PhoneCallFlowDelegatePlugin011UnsupportedeF0O_Tt0g5(v2);
        v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, &v33);

        *(v21 + 4) = v25;
        _os_log_impl(&dword_0, v19, v20, "#UnsupportedFaceTimeOutputProvider makeUnsupportedOutput: the dialog for %s hasn't been migrated to Response Framework.", v21, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v22);
      }

      v26 = v0[28];
      v33 = 0;
      v34 = 0xE000000000000000;
      _StringGuts.grow(_:)(21);

      v33 = 0xD000000000000013;
      v34 = 0x8000000000463120;
      v28._countAndFlagsBits = UnsupportedPhoneCall.rawValue.getter(v27);
      String.append(_:)(v28);

      v29 = v34;
      *v26 = v33;
      v26[1] = v29;
      v26[2] = 0xD000000000000043;
      v26[3] = 0x8000000000463140;
      v26[4] = 0xD000000000000019;
      v26[5] = 0x8000000000463190;
      v26[6] = 73;
      swift_storeEnumTagMultiPayload();
      _s27PhoneCallFlowDelegatePlugin0A5ErrorOACs0F0AAWlTm_3(&lazy protocol witness table cache variable for type PhoneError and conformance PhoneError, type metadata accessor for PhoneError, &protocol conformance descriptor for PhoneError);
      swift_allocError();
      PhoneError.logged()(v30);
      _s27PhoneCallFlowDelegatePlugin0A5ErrorOWOhTm_11(v26, type metadata accessor for PhoneError);
      swift_willThrow();

      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_36_30();

      __asm { BRAA            X1, X16 }
    }

    type metadata accessor for SirikitDeviceState();
    __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
    v8 = OUTLINED_FUNCTION_8_85();
    v9(v8);
    v0[42] = SirikitDeviceState.__allocating_init(from:)();
    OUTLINED_FUNCTION_24_5();
    v10 = swift_task_alloc();
    v0[43] = v10;
    *v10 = v0;
    OUTLINED_FUNCTION_11_68(v10);
    OUTLINED_FUNCTION_36_30();

    __asm { BRAA            X1, X16 }
  }

  type metadata accessor for SirikitDeviceState();
  __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  v13 = OUTLINED_FUNCTION_8_85();
  v14(v13);
  v0[44] = SirikitDeviceState.__allocating_init(from:)();
  OUTLINED_FUNCTION_24_5();
  v15 = swift_task_alloc();
  v0[45] = v15;
  *v15 = v0;
  OUTLINED_FUNCTION_11_68(v15);
  OUTLINED_FUNCTION_36_30();

  __asm { BRAA            X1, X16 }
}

uint64_t UnsupportedFaceTimeOutputProvider.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return v0;
}

uint64_t UnsupportedFaceTimeOutputProvider.__deallocating_deinit()
{
  UnsupportedFaceTimeOutputProvider.deinit();

  return swift_deallocClassInstance();
}

uint64_t outlined init with copy of ButtonConfigurationModel(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s27PhoneCallFlowDelegatePlugin0A5ErrorOWOhTm_11(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t OUTLINED_FUNCTION_29_38(__n128 *a1, __n128 a2)
{
  a1[1] = a2;

  return outlined init with take of ButtonConfigurationModel(v3, a1 + v2);
}

uint64_t UnsupportedFeatureGuardFlow.__allocating_init(check:sharedGlobals:unsupportedFlowCATsSimple:)(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v5 = a1;
  v6 = swift_allocObject();
  UnsupportedFeatureGuardFlow.init(check:sharedGlobals:unsupportedFlowCATsSimple:)(v5, a2, a3);
  return v6;
}

uint64_t UnsupportedFeatureGuardFlow.init(check:sharedGlobals:unsupportedFlowCATsSimple:)(char a1, __int128 *a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  outlined init with take of PhoneCallFeatureFlagProviding(a2, v3 + 24);
  *(v3 + 64) = a3;
  return v3;
}

uint64_t UnsupportedFeatureGuardFlow.execute(completion:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for UnsupportedFeatureGuardFlow();
  lazy protocol witness table accessor for type UnsupportedFeatureGuardFlow and conformance UnsupportedFeatureGuardFlow();
  return Flow.deferToExecuteAsync(_:)();
}

unint64_t lazy protocol witness table accessor for type UnsupportedFeatureGuardFlow and conformance UnsupportedFeatureGuardFlow()
{
  result = lazy protocol witness table cache variable for type UnsupportedFeatureGuardFlow and conformance UnsupportedFeatureGuardFlow;
  if (!lazy protocol witness table cache variable for type UnsupportedFeatureGuardFlow and conformance UnsupportedFeatureGuardFlow)
  {
    type metadata accessor for UnsupportedFeatureGuardFlow();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UnsupportedFeatureGuardFlow and conformance UnsupportedFeatureGuardFlow);
  }

  return result;
}

uint64_t UnsupportedFeatureGuardFlow.execute()(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return _swift_task_switch(UnsupportedFeatureGuardFlow.execute(), 0, 0);
}

uint64_t UnsupportedFeatureGuardFlow.execute()()
{
  if (*(v0[4] + 16) == 1)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v1 = type metadata accessor for Logger();
    __swift_project_value_buffer(v1, static Logger.siriPhone);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_0, v2, v3, "#UnsupportedFeatureGuardFlow: Passed!", v4, 2u);
    }

    static ExecuteResponse.complete()();
  }

  else
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Logger.siriPhone);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_0, v6, v7, "#UnsupportedFeatureGuardFlow: Did not pass!", v8, 2u);
    }

    v9 = v0[4];

    v0[2] = (*(*v9 + 144))();
    type metadata accessor for SimpleOutputFlowAsync();
    static ExecuteResponse.complete<A>(next:)();
  }

  v10 = v0[1];

  return v10();
}

uint64_t UnsupportedFeatureGuardFlow.makeUnsupportedOutputFlow()()
{
  v1 = type metadata accessor for DialogPhase();
  __chkstk_darwin(v1 - 8);
  type metadata accessor for SirikitDeviceState();
  v2 = v0[6];
  v3 = v0[7];
  __swift_project_boxed_opaque_existential_1(v0 + 3, v2);
  (*(v3 + 8))(v9, v2, v3);
  v4 = SirikitDeviceState.__allocating_init(from:)();
  v5 = swift_allocObject();
  *(v5 + 16) = v0;
  *(v5 + 24) = v4;

  static DialogPhase.error.getter();
  outlined init with copy of SignalProviding((v0 + 3), v9);
  type metadata accessor for DialogOutputFactory(0);
  swift_allocObject();
  v6 = DialogOutputFactory.init(dialog:dialogPhase:sharedGlobals:)();
  v7 = (*(*v6 + 112))(v6);

  return v7;
}

uint64_t closure #1 in UnsupportedFeatureGuardFlow.makeUnsupportedOutputFlow()(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(closure #1 in UnsupportedFeatureGuardFlow.makeUnsupportedOutputFlow(), 0, 0);
}

uint64_t closure #1 in UnsupportedFeatureGuardFlow.makeUnsupportedOutputFlow()()
{
  v1 = v0[3];
  v4 = (*(**(v0[2] + 64) + class metadata base offset for UnsupportedFlowCATsSimple + 96) + **(**(v0[2] + 64) + class metadata base offset for UnsupportedFlowCATsSimple + 96));
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = closure #1 in UnsupportedFeatureGuardFlow.makeUnsupportedOutputFlow();

  return v4(v1);
}

{
  OUTLINED_FUNCTION_15();
  v3 = v2;
  OUTLINED_FUNCTION_28();
  v4 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v5 = v4;

  v7 = *(v4 + 8);
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t UnsupportedFeatureGuardFlow.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return v0;
}

uint64_t UnsupportedFeatureGuardFlow.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t protocol witness for Flow.execute() in conformance UnsupportedFeatureGuardFlow(uint64_t a1)
{
  v6 = (*(**v1 + 136) + **(**v1 + 136));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = protocol witness for Flow.execute() in conformance CallingIntentContinueInAppFlow<A, B>;

  return v6(a1);
}

uint64_t protocol witness for Flow.exitValue.getter in conformance UnsupportedFeatureGuardFlow@<X0>(_BYTE *a1@<X8>)
{
  result = (*(**v1 + 104))();
  *a1 = result & 1;
  return result;
}

uint64_t partial apply for closure #1 in UnsupportedFeatureGuardFlow.makeUnsupportedOutputFlow()()
{
  OUTLINED_FUNCTION_15();
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = partial apply for closure #1 in static CommonOutputs.promptCancelled(sharedGlobals:phoneCallCommonCATsSimple:);

  return closure #1 in UnsupportedFeatureGuardFlow.makeUnsupportedOutputFlow()(v2, v3);
}

PhoneCallFlowDelegatePlugin::UnsupportedFlowCATPatternsIdentifiers_optional __swiftcall UnsupportedFlowCATPatternsIdentifiers.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of UnsupportedFlowCATPatternsIdentifiers.init(rawValue:), v2);

  if (v3 >= 7)
  {
    return 7;
  }

  else
  {
    return v3;
  }
}

unint64_t UnsupportedFlowCATPatternsIdentifiers.rawValue.getter(char a1)
{
  result = 0xD000000000000021;
  switch(a1)
  {
    case 2:
      result = 0xD000000000000022;
      break;
    case 3:
    case 4:
      result = 0xD00000000000002FLL;
      break;
    case 5:
      result = 0xD000000000000027;
      break;
    case 6:
      result = 0xD000000000000029;
      break;
    default:
      return result;
  }

  return result;
}

PhoneCallFlowDelegatePlugin::UnsupportedFlowCATPatternsIdentifiers_optional protocol witness for RawRepresentable.init(rawValue:) in conformance UnsupportedFlowCATPatternsIdentifiers@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::UnsupportedFlowCATPatternsIdentifiers_optional *a2@<X8>)
{
  result.value = UnsupportedFlowCATPatternsIdentifiers.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance UnsupportedFlowCATPatternsIdentifiers@<X0>(unint64_t *a1@<X8>)
{
  result = UnsupportedFlowCATPatternsIdentifiers.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t UnsupportedFlowSearchCallHistoryParameters.nonDefaultAppName.setter()
{
  v2 = OUTLINED_FUNCTION_2_4();
  v3 = v1 + *(type metadata accessor for UnsupportedFlowSearchCallHistoryParameters(v2) + 24);

  return outlined assign with take of SpeakableString?(v0, v3);
}

Swift::Void (__swiftcall *UnsupportedFlowSearchCallHistoryParameters.nonDefaultAppName.modify())(Swift::OpaquePointer newCallGroups)
{
  v0 = OUTLINED_FUNCTION_2_4();
  type metadata accessor for UnsupportedFlowSearchCallHistoryParameters(v0);
  return INAddCallParticipantIntent.overwriteCallGroups(newCallGroups:);
}

uint64_t UnsupportedFlowSearchCallHistoryParameters.asKeyValuePairs()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v2 = OUTLINED_FUNCTION_21(v1);
  __chkstk_darwin(v2);
  v4 = &v14 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v5 = swift_allocObject();
  OUTLINED_FUNCTION_0_2(v5, xmmword_42BF10);
  v6 = *v0;
  if (*v0)
  {
    v7 = type metadata accessor for SirikitDeviceState();
    v8 = v6;
  }

  else
  {
    v8 = 0;
    v7 = 0;
    *(v5 + 56) = 0;
    *(v5 + 64) = 0;
  }

  *(v5 + 48) = v8;
  *(v5 + 72) = v7;
  *(v5 + 80) = 0x6D6563696F567369;
  *(v5 + 88) = 0xEB000000006C6961;
  *(v5 + 96) = *(v0 + 8);
  *(v5 + 120) = &type metadata for Bool;
  *(v5 + 128) = 0xD000000000000011;
  *(v5 + 136) = 0x8000000000463200;
  v9 = type metadata accessor for UnsupportedFlowSearchCallHistoryParameters(0);
  outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(v0 + *(v9 + 24), v4, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v10 = type metadata accessor for SpeakableString();
  if (__swift_getEnumTagSinglePayload(v4, 1, v10) == 1)
  {

    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v4, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v5 + 144) = 0u;
    *(v5 + 160) = 0u;
  }

  else
  {
    *(v5 + 168) = v10;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v5 + 144));
    (*(*(v10 - 8) + 32))(boxed_opaque_existential_1, v4, v10);
  }

  *(v5 + 176) = 0xD000000000000011;
  *(v5 + 184) = 0x8000000000463220;
  v12 = *(v0 + *(v9 + 28));
  *(v5 + 216) = &type metadata for Bool;
  *(v5 + 192) = v12;
  return v5;
}

uint64_t UnsupportedFlowSearchCallHistoryParameters.init(device:isVoicemail:nonDefaultAppName:supportsAppLaunch:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  *a5 = a1;
  *(a5 + 8) = a2;
  v8 = type metadata accessor for UnsupportedFlowSearchCallHistoryParameters(0);
  result = outlined init with take of SpeakableString?(a3, a5 + *(v8 + 24));
  *(a5 + *(v8 + 28)) = a4;
  return result;
}

uint64_t UnsupportedFlowUnsupportedEmergencyContactCallParameters.thirdPartyAppName.setter()
{
  v2 = OUTLINED_FUNCTION_2_4();
  v3 = v1 + *(type metadata accessor for UnsupportedFlowUnsupportedEmergencyContactCallParameters(v2) + 20);

  return outlined assign with take of SpeakableString?(v0, v3);
}

Swift::Void (__swiftcall *UnsupportedFlowUnsupportedEmergencyContactCallParameters.thirdPartyAppName.modify())(Swift::OpaquePointer newCallGroups)
{
  v0 = OUTLINED_FUNCTION_2_4();
  type metadata accessor for UnsupportedFlowUnsupportedEmergencyContactCallParameters(v0);
  return INAddCallParticipantIntent.overwriteCallGroups(newCallGroups:);
}

uint64_t UnsupportedFlowUnsupportedEmergencyContactCallParameters.asKeyValuePairs()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v2 = OUTLINED_FUNCTION_21(v1);
  __chkstk_darwin(v2);
  v4 = &v10 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_424FF0;
  *(v5 + 32) = 0x6954656361467369;
  *(v5 + 40) = 0xEA0000000000656DLL;
  *(v5 + 48) = *v0;
  *(v5 + 72) = &type metadata for Bool;
  *(v5 + 80) = 0xD000000000000011;
  *(v5 + 88) = 0x8000000000462BB0;
  v6 = type metadata accessor for UnsupportedFlowUnsupportedEmergencyContactCallParameters(0);
  outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(&v0[*(v6 + 20)], v4, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v7 = type metadata accessor for SpeakableString();
  if (__swift_getEnumTagSinglePayload(v4, 1, v7) == 1)
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v4, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v5 + 96) = 0u;
    *(v5 + 112) = 0u;
  }

  else
  {
    *(v5 + 120) = v7;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v5 + 96));
    (*(*(v7 - 8) + 32))(boxed_opaque_existential_1, v4, v7);
  }

  return v5;
}

uint64_t UnsupportedFlowUnsupportedEmergencyContactCallParameters.init(isFaceTime:thirdPartyAppName:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  *a3 = a1;
  v4 = &a3[*(type metadata accessor for UnsupportedFlowUnsupportedEmergencyContactCallParameters(0) + 20)];

  return outlined init with take of SpeakableString?(a2, v4);
}

uint64_t UnsupportedFlowCATPatternsExecutor.deleteCallHistory()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = AddCallParticipantCATPatternsExecutor.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_32();
  v3 = OUTLINED_FUNCTION_36_1(33);

  return v4(v3);
}

uint64_t UnsupportedFlowCATPatternsExecutor.searchCallHistory(isVoicemail:supportsAppLaunch:_:)()
{
  OUTLINED_FUNCTION_15();
  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  *(v1 + 16) = v3;
  *(v1 + 89) = v4;
  *(v1 + 88) = v5;
  v6 = type metadata accessor for UnsupportedFlowSearchCallHistoryParameters(0);
  *(v1 + 40) = v6;
  OUTLINED_FUNCTION_21(v6);
  *(v1 + 48) = swift_task_alloc();

  return _swift_task_switch(UnsupportedFlowCATPatternsExecutor.searchCallHistory(isVoicemail:supportsAppLaunch:_:), 0, 0);
}

{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 16);
  v4 = *(v0 + 89);
  v5 = *(v0 + 88);
  v6 = *(v2 + 24);
  v7 = type metadata accessor for SpeakableString();
  __swift_storeEnumTagSinglePayload(v1 + v6, 1, 1, v7);
  *v1 = 0;
  *(v1 + 8) = v5;
  *(v1 + *(v2 + 28)) = v4;
  v3(v1);
  *(v0 + 56) = UnsupportedFlowSearchCallHistoryParameters.asKeyValuePairs()();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v11 = v8;
  v9 = swift_task_alloc();
  *(v0 + 64) = v9;
  *v9 = v0;
  OUTLINED_FUNCTION_10_66(v9);

  return v11(0xD000000000000021);
}

{
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_10_4();
  v4 = v3;
  OUTLINED_FUNCTION_6();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_4_2();
  *v7 = v6;
  *(v4 + 72) = v0;

  if (!v0)
  {
    *(v4 + 80) = v1;
  }

  OUTLINED_FUNCTION_19_5();

  return _swift_task_switch(v8, v9, v10);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_2_125();

  v0 = OUTLINED_FUNCTION_9_4();

  return v1(v0);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_2_125();

  OUTLINED_FUNCTION_22_0();

  return v0();
}

uint64_t UnsupportedFlowCATPatternsExecutor.startCallEmergency()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = AddCallParticipantCATPatternsExecutor.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_32();
  v3 = OUTLINED_FUNCTION_36_1(34);

  return v4(v3);
}

uint64_t UnsupportedFlowCATPatternsExecutor.startCallEmergencyInRetailStore()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = AddCallParticipantCATPatternsExecutor.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_32();
  v3 = OUTLINED_FUNCTION_36_1(47);

  return v4(v3);
}

uint64_t UnsupportedFlowCATPatternsExecutor.unsupportedEmergencyContactCall(isFaceTime:_:)()
{
  OUTLINED_FUNCTION_15();
  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  *(v1 + 16) = v3;
  *(v1 + 88) = v4;
  v5 = type metadata accessor for UnsupportedFlowUnsupportedEmergencyContactCallParameters(0);
  *(v1 + 40) = v5;
  OUTLINED_FUNCTION_21(v5);
  *(v1 + 48) = swift_task_alloc();

  return _swift_task_switch(UnsupportedFlowCATPatternsExecutor.unsupportedEmergencyContactCall(isFaceTime:_:), 0, 0);
}

{
  OUTLINED_FUNCTION_23_0();
  v1 = *(v0 + 48);
  v2 = *(v0 + 16);
  v3 = *(v0 + 88);
  v4 = *(*(v0 + 40) + 20);
  v5 = type metadata accessor for SpeakableString();
  __swift_storeEnumTagSinglePayload(&v1[v4], 1, 1, v5);
  *v1 = v3;
  v2(v1);
  *(v0 + 56) = UnsupportedFlowUnsupportedEmergencyContactCallParameters.asKeyValuePairs()();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v9 = v6;
  v7 = swift_task_alloc();
  *(v0 + 64) = v7;
  *v7 = v0;
  OUTLINED_FUNCTION_10_66(v7);

  return v9(0xD00000000000002FLL);
}

{
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_10_4();
  v4 = v3;
  OUTLINED_FUNCTION_6();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_4_2();
  *v7 = v6;
  *(v4 + 72) = v0;

  if (!v0)
  {
    *(v4 + 80) = v1;
  }

  OUTLINED_FUNCTION_19_5();

  return _swift_task_switch(v8, v9, v10);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_3_120();

  v0 = OUTLINED_FUNCTION_9_4();

  return v1(v0);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_3_120();

  OUTLINED_FUNCTION_22_0();

  return v0();
}

uint64_t outlined destroy of UnsupportedFlowSearchCallHistoryParameters()
{
  v1 = OUTLINED_FUNCTION_2_4();
  v2(v1);
  OUTLINED_FUNCTION_23_1();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t UnsupportedFlowCATPatternsExecutor.unsupportedOnDeviceType(_:)(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return _swift_task_switch(UnsupportedFlowCATPatternsExecutor.unsupportedOnDeviceType(_:), 0, 0);
}

uint64_t UnsupportedFlowCATPatternsExecutor.unsupportedOnDeviceType(_:)()
{
  OUTLINED_FUNCTION_23_0();
  *(v0 + 16) = 0;
  (*(v0 + 24))(v0 + 16);
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = swift_allocObject();
  *(v0 + 48) = v2;
  OUTLINED_FUNCTION_0_2(v2, xmmword_424FD0);
  v3 = 0;
  if (v1)
  {
    v3 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    v2[3].n128_u64[1] = 0;
    v2[4].n128_u64[0] = 0;
  }

  *(v0 + 56) = v1;
  v2[3].n128_u64[0] = v1;
  v2[4].n128_u64[1] = v3;
  v6 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));

  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *v4 = v0;
  v4[1] = UnsupportedFlowCATPatternsExecutor.unsupportedOnDeviceType(_:);

  return v6(0xD000000000000027, 0x80000000004567E0, v2);
}

{
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_10_4();
  v4 = v3;
  OUTLINED_FUNCTION_6();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_4_2();
  *v7 = v6;
  *(v4 + 72) = v0;

  if (!v0)
  {
    *(v4 + 80) = v1;
  }

  OUTLINED_FUNCTION_19_5();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t UnsupportedFlowCATPatternsExecutor.unsupportedThirdPartyCall()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = AddCallParticipantCATPatternsExecutor.unsupportedNoActiveCall();
  OUTLINED_FUNCTION_32();
  v3 = OUTLINED_FUNCTION_36_1(41);

  return v4(v3);
}

uint64_t UnsupportedFlowCATPatternsExecutor.init(templateDir:options:globals:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_2_4();
  v5 = type metadata accessor for CATOption();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v10 = OUTLINED_FUNCTION_21(v9);
  __chkstk_darwin(v10);
  outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(v3, &v14 - v11, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(v6 + 16))(v8, a2, v5);
  v12 = CATWrapper.init(templateDir:options:globals:)();
  (*(v6 + 8))(a2, v5);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v3, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  return v12;
}

unint64_t lazy protocol witness table accessor for type UnsupportedFlowCATPatternsIdentifiers and conformance UnsupportedFlowCATPatternsIdentifiers()
{
  result = lazy protocol witness table cache variable for type UnsupportedFlowCATPatternsIdentifiers and conformance UnsupportedFlowCATPatternsIdentifiers;
  if (!lazy protocol witness table cache variable for type UnsupportedFlowCATPatternsIdentifiers and conformance UnsupportedFlowCATPatternsIdentifiers)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UnsupportedFlowCATPatternsIdentifiers and conformance UnsupportedFlowCATPatternsIdentifiers);
  }

  return result;
}

uint64_t protocol witness for UnsupportedFlowCATPatternsExecuting.deleteCallHistory() in conformance UnsupportedFlowCATPatternsExecutor()
{
  v4 = (*(**v0 + class metadata base offset for UnsupportedFlowCATPatternsExecutor) + **(**v0 + class metadata base offset for UnsupportedFlowCATPatternsExecutor));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = AddCallParticipantCATPatternsExecutor.unsupportedParticipantsMultipleContactsUnsupported();

  return v4();
}

uint64_t protocol witness for UnsupportedFlowCATPatternsExecuting.searchCallHistory(isVoicemail:supportsAppLaunch:_:) in conformance UnsupportedFlowCATPatternsExecutor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(**v4 + class metadata base offset for UnsupportedFlowCATPatternsExecutor + 8) + **(**v4 + class metadata base offset for UnsupportedFlowCATPatternsExecutor + 8));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = AddCallParticipantCATPatternsExecutor.unsupportedParticipantsMultipleContactsUnsupported();

  return v12(a1, a2, a3, a4);
}

uint64_t protocol witness for UnsupportedFlowCATPatternsExecuting.startCallEmergency() in conformance UnsupportedFlowCATPatternsExecutor()
{
  v4 = (*(**v0 + class metadata base offset for UnsupportedFlowCATPatternsExecutor + 16) + **(**v0 + class metadata base offset for UnsupportedFlowCATPatternsExecutor + 16));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = AddCallParticipantCATPatternsExecutor.unsupportedParticipantsMultipleContactsUnsupported();

  return v4();
}

uint64_t protocol witness for UnsupportedFlowCATPatternsExecuting.startCallEmergencyInRetailStore() in conformance UnsupportedFlowCATPatternsExecutor()
{
  v4 = (*(**v0 + class metadata base offset for UnsupportedFlowCATPatternsExecutor + 24) + **(**v0 + class metadata base offset for UnsupportedFlowCATPatternsExecutor + 24));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = AddCallParticipantCATPatternsExecutor.unsupportedParticipantsMultipleContactsUnsupported();

  return v4();
}

uint64_t protocol witness for UnsupportedFlowCATPatternsExecuting.unsupportedEmergencyContactCall(isFaceTime:_:) in conformance UnsupportedFlowCATPatternsExecutor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(**v3 + class metadata base offset for UnsupportedFlowCATPatternsExecutor + 32) + **(**v3 + class metadata base offset for UnsupportedFlowCATPatternsExecutor + 32));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = AddCallParticipantCATPatternsExecutor.unsupportedParticipantsMultipleContactsUnsupported();

  return v10(a1, a2, a3);
}

uint64_t protocol witness for UnsupportedFlowCATPatternsExecuting.unsupportedOnDeviceType(_:) in conformance UnsupportedFlowCATPatternsExecutor(uint64_t a1, uint64_t a2)
{
  v8 = (*(**v2 + class metadata base offset for UnsupportedFlowCATPatternsExecutor + 40) + **(**v2 + class metadata base offset for UnsupportedFlowCATPatternsExecutor + 40));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = AddCallParticipantCATPatternsExecutor.unsupportedParticipantsMultipleContactsUnsupported();

  return v8(a1, a2);
}

uint64_t protocol witness for UnsupportedFlowCATPatternsExecuting.unsupportedThirdPartyCall() in conformance UnsupportedFlowCATPatternsExecutor()
{
  v4 = (*(**v0 + class metadata base offset for UnsupportedFlowCATPatternsExecutor + 48) + **(**v0 + class metadata base offset for UnsupportedFlowCATPatternsExecutor + 48));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = AddCallParticipantCATPatternsExecutor.unsupportedParticipantsMultipleContactsUnsupported();

  return v4();
}

_BYTE *storeEnumTagSinglePayload for UnsupportedFlowCATPatternsIdentifiers(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

void type metadata completion function for UnsupportedFlowSearchCallHistoryParameters(uint64_t a1)
{
  type metadata accessor for SirikitDeviceState?(319, &lazy cache variable for type metadata for SirikitDeviceState?, &type metadata accessor for SirikitDeviceState);
  if (v1 <= 0x3F)
  {
    type metadata accessor for SirikitDeviceState?(319, &lazy cache variable for type metadata for SpeakableString?, &type metadata accessor for SpeakableString);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for SirikitDeviceState?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

void type metadata completion function for UnsupportedFlowUnsupportedEmergencyContactCallParameters(uint64_t a1)
{
  type metadata accessor for SirikitDeviceState?(319, &lazy cache variable for type metadata for SpeakableString?, &type metadata accessor for SpeakableString);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

PhoneCallFlowDelegatePlugin::UnsupportedFlowCATs::Properties_optional __swiftcall UnsupportedFlowCATs.Properties.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of UnsupportedFlowCATs.Properties.init(rawValue:), v2);

  if (v3 >= 7)
  {
    return 7;
  }

  else
  {
    return v3;
  }
}

unint64_t UnsupportedFlowCATs.Properties.rawValue.getter(char a1)
{
  result = 0xD000000000000021;
  switch(a1)
  {
    case 1:
      result = 0xD00000000000001FLL;
      break;
    case 3:
      result = 0xD000000000000022;
      break;
    case 4:
    case 5:
      result = 0xD00000000000002FLL;
      break;
    case 6:
      result = 0xD000000000000027;
      break;
    default:
      return result;
  }

  return result;
}

PhoneCallFlowDelegatePlugin::UnsupportedFlowCATs::Properties_optional protocol witness for RawRepresentable.init(rawValue:) in conformance UnsupportedFlowCATs.Properties@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::UnsupportedFlowCATs::Properties_optional *a2@<X8>)
{
  result.value = UnsupportedFlowCATs.Properties.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance UnsupportedFlowCATs.Properties@<X0>(unint64_t *a1@<X8>)
{
  result = UnsupportedFlowCATs.Properties.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t UnsupportedFlowCATs.deleteCallHistory()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = closure #1 in ActionableCallControlFlow.execute();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_35_14();

  return v3();
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = AddCallParticipantCATs.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_32();
  v3 = OUTLINED_FUNCTION_36_1(33);

  return v4(v3);
}

{
  return OUTLINED_FUNCTION_33_1(33);
}

uint64_t UnsupportedFlowCATs.deleteVoicemail()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = closure #1 in ActionableCallControlFlow.execute();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_35_14();

  return v3();
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = AddCallParticipantCATs.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_32();
  v3 = OUTLINED_FUNCTION_36_1(31);

  return v4(v3);
}

{
  return OUTLINED_FUNCTION_33_1(31);
}

void UnsupportedFlowCATs.searchCallHistory(supportsAppLaunch:nonDefaultAppName:isVoicemail:device:completion:)()
{
  OUTLINED_FUNCTION_66();
  v28[2] = v0;
  v28[1] = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v10);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v11);
  v13 = v28 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v15 = OUTLINED_FUNCTION_161_0(v14);
  OUTLINED_FUNCTION_27_2();
  *(v16 + 32) = 0xD000000000000011;
  *(v16 + 40) = v17;
  *(v16 + 48) = v9;
  *(v16 + 16) = v18;
  OUTLINED_FUNCTION_27_2();
  v19[9] = &type metadata for Bool;
  v19[10] = 0xD000000000000011;
  v19[11] = v20;
  outlined init with copy of SpeakableString?(v7, v13, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v21 = type metadata accessor for SpeakableString();
  if (__swift_getEnumTagSinglePayload(v13, 1, v21) == 1)
  {
    outlined destroy of SpeakableString?(v13, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v15 + 96) = 0u;
    *(v15 + 112) = 0u;
  }

  else
  {
    *(v15 + 120) = v21;
    __swift_allocate_boxed_opaque_existential_1((v15 + 96));
    OUTLINED_FUNCTION_40();
    (*(v22 + 32))();
  }

  OUTLINED_FUNCTION_21_52();
  *(v15 + 128) = v23;
  *(v15 + 136) = v24;
  *(v15 + 144) = v5 & 1;
  OUTLINED_FUNCTION_27_1();
  *(v15 + 168) = &type metadata for Bool;
  *(v15 + 176) = v25;
  *(v15 + 184) = 0xE600000000000000;
  if (v3)
  {
    v26 = type metadata accessor for SirikitDeviceState();
    v27 = v3;
  }

  else
  {
    v26 = OUTLINED_FUNCTION_18_2();
    *(v15 + 200) = 0;
    *(v15 + 208) = 0;
  }

  *(v15 + 192) = v27;
  *(v15 + 216) = v26;

  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();

  OUTLINED_FUNCTION_65();
}

uint64_t UnsupportedFlowCATs.searchCallHistory(supportsAppLaunch:nonDefaultAppName:isVoicemail:device:)()
{
  OUTLINED_FUNCTION_15();
  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  *(v1 + 81) = v3;
  *(v1 + 80) = v4;
  *(v1 + 16) = v5;
  *(v1 + 24) = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v7);
  *(v1 + 48) = OUTLINED_FUNCTION_45();
  v8 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v8, v9, v10);
}

{
  OUTLINED_FUNCTION_125_2();
  v2 = *(v0 + 24);
  v3 = *(v0 + 80);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v5 = OUTLINED_FUNCTION_161_0(v4);
  *(v0 + 56) = v5;
  OUTLINED_FUNCTION_27_2();
  *(v6 + 32) = v1;
  *(v6 + 40) = v7;
  *(v6 + 48) = v3;
  *(v6 + 16) = v8;
  OUTLINED_FUNCTION_27_2();
  v9[9] = &type metadata for Bool;
  v9[10] = v1;
  v9[11] = v10;
  OUTLINED_FUNCTION_54_2(v9, v11, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v12 = type metadata accessor for SpeakableString();
  if (OUTLINED_FUNCTION_58(v12) == 1)
  {
    outlined destroy of SpeakableString?(*(v0 + 48), &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v5 + 96) = 0u;
    *(v5 + 112) = 0u;
  }

  else
  {
    *(v5 + 120) = v2;
    __swift_allocate_boxed_opaque_existential_1((v5 + 96));
    OUTLINED_FUNCTION_40();
    OUTLINED_FUNCTION_16_0();
    v13();
  }

  v14 = *(v0 + 32);
  v15 = *(v0 + 81);
  *(v5 + 128) = 0x6D6563696F567369;
  *(v5 + 136) = 0xEB000000006C6961;
  *(v5 + 144) = v15;
  OUTLINED_FUNCTION_27_1();
  v17 = OUTLINED_FUNCTION_34_29(v16);
  if (v14)
  {
    v17 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v5 + 200) = 0;
    *(v5 + 208) = 0;
  }

  *(v5 + 192) = v14;
  *(v5 + 216) = v17;
  v22 = OUTLINED_FUNCTION_11_3(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));

  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 64) = v18;
  *v18 = v19;
  v18[1] = AddCallParticipantCATs.errorAddRestricted(currentCall:unsupportedReason:);
  v20 = *(v0 + 16);

  return (v22)(v20, v1 + 16, 0x8000000000456720, v5);
}

{
  OUTLINED_FUNCTION_15();
  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  *(v1 + 73) = v3;
  *(v1 + 16) = v4;
  *(v1 + 72) = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v6);
  *(v1 + 40) = OUTLINED_FUNCTION_45();
  v7 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v7, v8, v9);
}

{
  OUTLINED_FUNCTION_125_2();
  v2 = *(v0 + 16);
  v3 = *(v0 + 72);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v5 = OUTLINED_FUNCTION_161_0(v4);
  *(v0 + 48) = v5;
  OUTLINED_FUNCTION_27_2();
  *(v6 + 32) = v1;
  *(v6 + 40) = v7;
  *(v6 + 48) = v3;
  *(v6 + 16) = v8;
  OUTLINED_FUNCTION_27_2();
  v9[9] = &type metadata for Bool;
  v9[10] = v1;
  v9[11] = v10;
  OUTLINED_FUNCTION_54_2(v9, v11, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v12 = type metadata accessor for SpeakableString();
  if (OUTLINED_FUNCTION_58(v12) == 1)
  {
    outlined destroy of SpeakableString?(*(v0 + 40), &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v5 + 96) = 0u;
    *(v5 + 112) = 0u;
  }

  else
  {
    *(v5 + 120) = v2;
    __swift_allocate_boxed_opaque_existential_1((v5 + 96));
    OUTLINED_FUNCTION_40();
    OUTLINED_FUNCTION_16_0();
    v13();
  }

  v14 = *(v0 + 24);
  v15 = *(v0 + 73);
  *(v5 + 128) = 0x6D6563696F567369;
  *(v5 + 136) = 0xEB000000006C6961;
  *(v5 + 144) = v15;
  OUTLINED_FUNCTION_27_1();
  v17 = OUTLINED_FUNCTION_34_29(v16);
  if (v14)
  {
    v17 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v5 + 200) = 0;
    *(v5 + 208) = 0;
  }

  *(v5 + 192) = v14;
  *(v5 + 216) = v17;
  v21 = OUTLINED_FUNCTION_11_3(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));

  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 56) = v18;
  *v18 = v19;
  v18[1] = UnsupportedFlowCATs.searchCallHistory(supportsAppLaunch:nonDefaultAppName:isVoicemail:device:);

  return (v21)(v1 + 16, 0x8000000000456720, v5);
}

{
  OUTLINED_FUNCTION_27();
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

    v10 = OUTLINED_FUNCTION_49();

    return v11(v10);
  }
}

void UnsupportedFlowCATs.searchCallHistory(supportsAppLaunch:nonDefaultAppName:isVoicemail:device:)()
{
  OUTLINED_FUNCTION_66();
  v26 = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v7);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v8);
  v10 = &v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v12 = OUTLINED_FUNCTION_161_0(v11);
  OUTLINED_FUNCTION_27_2();
  *(v13 + 32) = 0xD000000000000011;
  *(v13 + 40) = v14;
  *(v13 + 48) = v6;
  *(v13 + 16) = v15;
  OUTLINED_FUNCTION_27_2();
  v16[9] = &type metadata for Bool;
  v16[10] = 0xD000000000000011;
  v16[11] = v17;
  OUTLINED_FUNCTION_77_7();
  v18 = type metadata accessor for SpeakableString();
  if (__swift_getEnumTagSinglePayload(v10, 1, v18) == 1)
  {
    outlined destroy of SpeakableString?(v10, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v12 + 96) = 0u;
    *(v12 + 112) = 0u;
  }

  else
  {
    *(v12 + 120) = v18;
    __swift_allocate_boxed_opaque_existential_1((v12 + 96));
    OUTLINED_FUNCTION_40();
    (*(v19 + 32))(v20);
  }

  OUTLINED_FUNCTION_21_52();
  *(v12 + 128) = v21;
  *(v12 + 136) = v22;
  *(v12 + 144) = v4 & 1;
  OUTLINED_FUNCTION_27_1();
  *(v12 + 168) = &type metadata for Bool;
  *(v12 + 176) = v23;
  *(v12 + 184) = 0xE600000000000000;
  if (v2)
  {
    v24 = type metadata accessor for SirikitDeviceState();
    v25 = v2;
  }

  else
  {
    v24 = OUTLINED_FUNCTION_18_2();
    *(v12 + 200) = 0;
    *(v12 + 208) = 0;
  }

  *(v12 + 192) = v25;
  *(v12 + 216) = v24;

  dispatch thunk of CATWrapper.execute(catId:parameters:)();

  OUTLINED_FUNCTION_65();
}

uint64_t UnsupportedFlowCATs.startCallEmergency()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = closure #1 in ActionableCallControlFlow.execute();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_35_14();

  return v3();
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = AddCallParticipantCATs.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_32();
  v3 = OUTLINED_FUNCTION_36_1(34);

  return v4(v3);
}

{
  return OUTLINED_FUNCTION_33_1(34);
}

uint64_t UnsupportedFlowCATs.startCallEmergencyInRetailStore()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = closure #2 in ActionableCallControlFlow.execute();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_35_14();

  return v3();
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = AddCallParticipantCATs.errorNoTargetCall();
  OUTLINED_FUNCTION_32();
  v3 = OUTLINED_FUNCTION_36_1(47);

  return v4(v3);
}

{
  return OUTLINED_FUNCTION_33_1(47);
}

void UnsupportedFlowCATs.unsupportedEmergencyContactCall(thirdPartyAppName:isFaceTime:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_66();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v24);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v25);
  v27 = &a9 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v29 = OUTLINED_FUNCTION_45_0(v28);
  *(v29 + 16) = xmmword_424FF0;
  OUTLINED_FUNCTION_27_2();
  *(v30 + 32) = 0xD000000000000011;
  *(v30 + 40) = v31;
  OUTLINED_FUNCTION_77_7();
  v32 = type metadata accessor for SpeakableString();
  if (__swift_getEnumTagSinglePayload(v27, 1, v32) == 1)
  {
    outlined destroy of SpeakableString?(v27, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v29 + 48) = 0u;
    *(v29 + 64) = 0u;
  }

  else
  {
    *(v29 + 72) = v32;
    __swift_allocate_boxed_opaque_existential_1((v29 + 48));
    OUTLINED_FUNCTION_40();
    (*(v33 + 32))();
  }

  OUTLINED_FUNCTION_2_126();
  *(v29 + 80) = v34;
  *(v29 + 88) = v35;
  *(v29 + 120) = &type metadata for Bool;
  *(v29 + 96) = v23 & 1;
  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();

  OUTLINED_FUNCTION_65();
}

uint64_t UnsupportedFlowCATs.unsupportedEmergencyContactCall(thirdPartyAppName:isFaceTime:)()
{
  OUTLINED_FUNCTION_15();
  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  *(v1 + 72) = v3;
  *(v1 + 16) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v5);
  *(v1 + 40) = OUTLINED_FUNCTION_45();
  v6 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_125_2();
  v2 = v0[3];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_45_0(v3);
  v0[6] = v4;
  *(v4 + 16) = xmmword_424FF0;
  OUTLINED_FUNCTION_27_2();
  *(v5 + 32) = v1;
  *(v5 + 40) = v6;
  OUTLINED_FUNCTION_54_2(v5, v7, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v8 = type metadata accessor for SpeakableString();
  if (OUTLINED_FUNCTION_58(v8) == 1)
  {
    outlined destroy of SpeakableString?(v0[5], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v4 + 48) = 0u;
    *(v4 + 64) = 0u;
  }

  else
  {
    *(v4 + 72) = v2;
    __swift_allocate_boxed_opaque_existential_1((v4 + 48));
    OUTLINED_FUNCTION_40();
    OUTLINED_FUNCTION_16_0();
    v9();
  }

  OUTLINED_FUNCTION_2_126();
  *(v4 + 80) = v10;
  *(v4 + 88) = v11;
  *(v4 + 120) = &type metadata for Bool;
  *(v4 + 96) = v12;
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v18 = v13;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[7] = v14;
  *v14 = v15;
  v14[1] = AnnounceIncomingCallCATs.offerFollowUpIntent(followUpOfferType:);
  v16 = v0[2];

  return v18(v16, v1 + 30, 0x80000000004567B0, v4);
}

{
  OUTLINED_FUNCTION_15();
  *(v1 + 64) = v2;
  *(v1 + 16) = v3;
  *(v1 + 24) = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v4);
  *(v1 + 32) = OUTLINED_FUNCTION_45();
  v5 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v5, v6, v7);
}

{
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_125_2();
  v2 = v0[2];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_45_0(v3);
  v0[5] = v4;
  *(v4 + 16) = xmmword_424FF0;
  OUTLINED_FUNCTION_27_2();
  *(v5 + 32) = v1;
  *(v5 + 40) = v6;
  OUTLINED_FUNCTION_54_2(v5, v7, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v8 = type metadata accessor for SpeakableString();
  if (OUTLINED_FUNCTION_58(v8) == 1)
  {
    outlined destroy of SpeakableString?(v0[4], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v4 + 48) = 0u;
    *(v4 + 64) = 0u;
  }

  else
  {
    *(v4 + 72) = v2;
    __swift_allocate_boxed_opaque_existential_1((v4 + 48));
    OUTLINED_FUNCTION_40();
    OUTLINED_FUNCTION_16_0();
    v9();
  }

  OUTLINED_FUNCTION_2_126();
  *(v4 + 80) = v10;
  *(v4 + 88) = v11;
  *(v4 + 120) = &type metadata for Bool;
  *(v4 + 96) = v12;
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  v17 = v13;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[6] = v14;
  *v14 = v15;
  v14[1] = UnsupportedFlowCATs.unsupportedEmergencyContactCall(thirdPartyAppName:isFaceTime:);

  return v17(v1 + 30, 0x80000000004567B0, v4);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v6 = v5;
  *(v3 + 56) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_66_0();

    return _swift_task_switch(v7, v8, v9);
  }

  else
  {

    v10 = OUTLINED_FUNCTION_49();

    return v11(v10);
  }
}

void UnsupportedFlowCATs.unsupportedEmergencyContactCall(thirdPartyAppName:isFaceTime:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_66();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v26);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v27);
  v29 = &a9 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v31 = OUTLINED_FUNCTION_45_0(v30);
  *(v31 + 16) = xmmword_424FF0;
  OUTLINED_FUNCTION_27_2();
  *(v32 + 32) = 0xD000000000000011;
  *(v32 + 40) = v33;
  outlined init with copy of SpeakableString?(v25, v29, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v34 = type metadata accessor for SpeakableString();
  if (__swift_getEnumTagSinglePayload(v29, 1, v34) == 1)
  {
    outlined destroy of SpeakableString?(v29, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v31 + 48) = 0u;
    *(v31 + 64) = 0u;
  }

  else
  {
    *(v31 + 72) = v34;
    __swift_allocate_boxed_opaque_existential_1((v31 + 48));
    OUTLINED_FUNCTION_40();
    (*(v35 + 32))();
  }

  OUTLINED_FUNCTION_2_126();
  *(v31 + 80) = v36;
  *(v31 + 88) = v37;
  *(v31 + 120) = &type metadata for Bool;
  *(v31 + 96) = v23 & 1;
  dispatch thunk of CATWrapper.execute(catId:parameters:)();

  OUTLINED_FUNCTION_65();
}

uint64_t UnsupportedFlowCATs.unsupportedOnDeviceType(device:completion:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v5 = OUTLINED_FUNCTION_35_1(v4);
  OUTLINED_FUNCTION_0_2(v5, xmmword_424FD0);
  if (a1)
  {
    v6 = type metadata accessor for SirikitDeviceState();
    v7 = a1;
  }

  else
  {
    v6 = OUTLINED_FUNCTION_18_2();
    v5[3].n128_u64[1] = 0;
    v5[4].n128_u64[0] = 0;
  }

  v5[3].n128_u64[0] = v7;
  v5[4].n128_u64[1] = v6;

  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();
}

uint64_t UnsupportedFlowCATs.unsupportedOnDeviceType(device:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t UnsupportedFlowCATs.unsupportedOnDeviceType(device:)()
{
  OUTLINED_FUNCTION_23_0();
  v1 = v0[3];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_35_1(v2);
  v0[5] = v3;
  OUTLINED_FUNCTION_0_2(v3, xmmword_424FD0);
  v4 = 0;
  if (v1)
  {
    v4 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    v3[3].n128_u64[1] = 0;
    v3[4].n128_u64[0] = 0;
  }

  v3[3].n128_u64[0] = v1;
  v3[4].n128_u64[1] = v4;
  v9 = OUTLINED_FUNCTION_11_3(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));

  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[6] = v5;
  *v5 = v6;
  v5[1] = AddCallParticipantCATs.errorRestrictedForParticipant(participant:shouldIncludeHandleLabel:);
  v7 = v0[2];

  return (v9)(v7, 0xD000000000000027, 0x80000000004567E0, v3);
}

{
  OUTLINED_FUNCTION_23_0();
  v1 = v0[2];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_35_1(v2);
  v0[4] = v3;
  OUTLINED_FUNCTION_0_2(v3, xmmword_424FD0);
  v4 = 0;
  if (v1)
  {
    v4 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    v3[3].n128_u64[1] = 0;
    v3[4].n128_u64[0] = 0;
  }

  v3[3].n128_u64[0] = v1;
  v3[4].n128_u64[1] = v4;
  v7 = OUTLINED_FUNCTION_11_3(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));

  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = UnsupportedFlowCATs.unsupportedOnDeviceType(device:);

  return (v7)(0xD000000000000027, 0x80000000004567E0, v3);
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
  *(v5 + 48) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_66_0();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {

    v12 = *(v7 + 8);

    return v12(v3);
  }
}

uint64_t UnsupportedFlowCATs.unsupportedOnDeviceType(device:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t UnsupportedFlowCATs.unsupportedOnDeviceType(device:)(unint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_35_1(v2);
  OUTLINED_FUNCTION_0_2(v3, xmmword_424FD0);
  if (a1)
  {
    v4 = type metadata accessor for SirikitDeviceState();
    v5 = a1;
  }

  else
  {
    v4 = OUTLINED_FUNCTION_18_2();
    v3[3].n128_u64[1] = 0;
    v3[4].n128_u64[0] = 0;
  }

  v3[3].n128_u64[0] = v5;
  v3[4].n128_u64[1] = v4;

  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

void UnsupportedFlowCATs.init(templateDir:options:globals:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_66();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v26 = type metadata accessor for CATOption();
  v27 = *(v26 - 8);
  __chkstk_darwin(v26);
  v29 = &a9 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_21(v30);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v31);
  outlined init with copy of SpeakableString?(v25, &a9 - v32, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(v27 + 16))(v29, v23, v26);
  CATWrapper.init(templateDir:options:globals:)();
  (*(v27 + 8))(v23, v26);
  outlined destroy of SpeakableString?(v25, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_65();
}

unint64_t lazy protocol witness table accessor for type UnsupportedFlowCATs.Properties and conformance UnsupportedFlowCATs.Properties()
{
  result = lazy protocol witness table cache variable for type UnsupportedFlowCATs.Properties and conformance UnsupportedFlowCATs.Properties;
  if (!lazy protocol witness table cache variable for type UnsupportedFlowCATs.Properties and conformance UnsupportedFlowCATs.Properties)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UnsupportedFlowCATs.Properties and conformance UnsupportedFlowCATs.Properties);
  }

  return result;
}

uint64_t type metadata accessor for UnsupportedFlowCATs(uint64_t a1)
{
  result = type metadata singleton initialization cache for UnsupportedFlowCATs;
  if (!type metadata singleton initialization cache for UnsupportedFlowCATs)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for UnsupportedFlowCATs.Properties(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

PhoneCallFlowDelegatePlugin::UnsupportedFlowCATsSimple::Properties_optional __swiftcall UnsupportedFlowCATsSimple.Properties.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_38();
  v3._object = v1;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of UnsupportedFlowCATsSimple.Properties.init(rawValue:), v3);
  OUTLINED_FUNCTION_33_2();
  if (v2 >= 7)
  {
    return 7;
  }

  else
  {
    return v2;
  }
}

unint64_t UnsupportedFlowCATsSimple.Properties.rawValue.getter(char a1)
{
  result = 0xD000000000000021;
  switch(a1)
  {
    case 1:
      result = 0xD00000000000001FLL;
      break;
    case 3:
      result = 0xD000000000000022;
      break;
    case 4:
    case 5:
      result = 0xD00000000000002FLL;
      break;
    case 6:
      result = 0xD000000000000027;
      break;
    default:
      return result;
  }

  return result;
}

PhoneCallFlowDelegatePlugin::UnsupportedFlowCATsSimple::Properties_optional protocol witness for RawRepresentable.init(rawValue:) in conformance UnsupportedFlowCATsSimple.Properties@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::UnsupportedFlowCATsSimple::Properties_optional *a2@<X8>)
{
  result.value = UnsupportedFlowCATsSimple.Properties.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance UnsupportedFlowCATsSimple.Properties()
{
  v1 = OUTLINED_FUNCTION_40_2();
  result = UnsupportedFlowCATsSimple.Properties.rawValue.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t UnsupportedFlowCATsSimple.deleteCallHistory()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = AddCallParticipantCATPatternsExecutor.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_32();
  v3 = OUTLINED_FUNCTION_36_1(33);

  return v4(v3);
}

BOOL UnsupportedFlowCATsSimple.DeleteCallHistoryDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_38();
  v1._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of UnsupportedFlowCATsSimple.DeleteCallHistoryDialogIds.init(rawValue:), v1);
  OUTLINED_FUNCTION_33_2();
  return OUTLINED_FUNCTION_28_1();
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance UnsupportedFlowCATsSimple.DeleteCallHistoryDialogIds@<W0>(_BYTE *a1@<X8>)
{
  result = UnsupportedFlowCATsSimple.DeleteCallHistoryDialogIds.init(rawValue:)();
  *a1 = result;
  return result;
}

uint64_t UnsupportedFlowCATsSimple.deleteCallHistoryAsLabels()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_24_6(v1);
  lazy protocol witness table accessor for type UnsupportedFlowCATsSimple.DeleteCallHistoryDialogIds and conformance UnsupportedFlowCATsSimple.DeleteCallHistoryDialogIds();
  OUTLINED_FUNCTION_9();
  *v0 = v2;
  v0[1] = AddCallParticipantCATPatternsExecutor.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_19_4();
  v3 = OUTLINED_FUNCTION_26_20(33);

  return v4(v3);
}

unint64_t lazy protocol witness table accessor for type UnsupportedFlowCATsSimple.DeleteCallHistoryDialogIds and conformance UnsupportedFlowCATsSimple.DeleteCallHistoryDialogIds()
{
  result = lazy protocol witness table cache variable for type UnsupportedFlowCATsSimple.DeleteCallHistoryDialogIds and conformance UnsupportedFlowCATsSimple.DeleteCallHistoryDialogIds;
  if (!lazy protocol witness table cache variable for type UnsupportedFlowCATsSimple.DeleteCallHistoryDialogIds and conformance UnsupportedFlowCATsSimple.DeleteCallHistoryDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UnsupportedFlowCATsSimple.DeleteCallHistoryDialogIds and conformance UnsupportedFlowCATsSimple.DeleteCallHistoryDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UnsupportedFlowCATsSimple.DeleteCallHistoryDialogIds and conformance UnsupportedFlowCATsSimple.DeleteCallHistoryDialogIds;
  if (!lazy protocol witness table cache variable for type UnsupportedFlowCATsSimple.DeleteCallHistoryDialogIds and conformance UnsupportedFlowCATsSimple.DeleteCallHistoryDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UnsupportedFlowCATsSimple.DeleteCallHistoryDialogIds and conformance UnsupportedFlowCATsSimple.DeleteCallHistoryDialogIds);
  }

  return result;
}

uint64_t UnsupportedFlowCATsSimple.deleteVoicemail()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = AddCallParticipantCATPatternsExecutor.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_32();
  v3 = OUTLINED_FUNCTION_36_1(31);

  return v4(v3);
}

BOOL UnsupportedFlowCATsSimple.DeleteVoicemailDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_38();
  v1._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of UnsupportedFlowCATsSimple.DeleteVoicemailDialogIds.init(rawValue:), v1);
  OUTLINED_FUNCTION_33_2();
  return OUTLINED_FUNCTION_28_1();
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance UnsupportedFlowCATsSimple.DeleteVoicemailDialogIds@<W0>(_BYTE *a1@<X8>)
{
  result = UnsupportedFlowCATsSimple.DeleteVoicemailDialogIds.init(rawValue:)();
  *a1 = result;
  return result;
}

uint64_t UnsupportedFlowCATsSimple.deleteVoicemailAsLabels()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_24_6(v1);
  lazy protocol witness table accessor for type UnsupportedFlowCATsSimple.DeleteVoicemailDialogIds and conformance UnsupportedFlowCATsSimple.DeleteVoicemailDialogIds();
  OUTLINED_FUNCTION_9();
  *v0 = v2;
  v0[1] = AddCallParticipantCATPatternsExecutor.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_19_4();
  v3 = OUTLINED_FUNCTION_26_20(31);

  return v4(v3);
}

unint64_t lazy protocol witness table accessor for type UnsupportedFlowCATsSimple.DeleteVoicemailDialogIds and conformance UnsupportedFlowCATsSimple.DeleteVoicemailDialogIds()
{
  result = lazy protocol witness table cache variable for type UnsupportedFlowCATsSimple.DeleteVoicemailDialogIds and conformance UnsupportedFlowCATsSimple.DeleteVoicemailDialogIds;
  if (!lazy protocol witness table cache variable for type UnsupportedFlowCATsSimple.DeleteVoicemailDialogIds and conformance UnsupportedFlowCATsSimple.DeleteVoicemailDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UnsupportedFlowCATsSimple.DeleteVoicemailDialogIds and conformance UnsupportedFlowCATsSimple.DeleteVoicemailDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UnsupportedFlowCATsSimple.DeleteVoicemailDialogIds and conformance UnsupportedFlowCATsSimple.DeleteVoicemailDialogIds;
  if (!lazy protocol witness table cache variable for type UnsupportedFlowCATsSimple.DeleteVoicemailDialogIds and conformance UnsupportedFlowCATsSimple.DeleteVoicemailDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UnsupportedFlowCATsSimple.DeleteVoicemailDialogIds and conformance UnsupportedFlowCATsSimple.DeleteVoicemailDialogIds);
  }

  return result;
}

uint64_t UnsupportedFlowCATsSimple.searchCallHistory(supportsAppLaunch:nonDefaultAppName:isVoicemail:device:)()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_33_28(v1, v2, v3, v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v5);
  *(v0 + 40) = OUTLINED_FUNCTION_45();
  v6 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_28_30();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = swift_allocObject();
  v1[6] = v4;
  v5 = OUTLINED_FUNCTION_0_8(v4, "supportsAppLaunch");
  v5[3].n128_u8[0] = v3;
  v7 = OUTLINED_FUNCTION_27_41(v5, "nonDefaultAppName", v6);
  OUTLINED_FUNCTION_48_1(v7, v8, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v9 = type metadata accessor for SpeakableString();
  if (OUTLINED_FUNCTION_58(v9) == 1)
  {
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v1[5], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v4 + 96) = 0u;
    *(v4 + 112) = 0u;
  }

  else
  {
    *(v4 + 120) = v0;
    __swift_allocate_boxed_opaque_existential_1((v4 + 96));
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_16_0();
    v10();
  }

  v11 = OUTLINED_FUNCTION_7_87();
  if (v0)
  {
    v11 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v4 + 200) = 0;
    *(v4 + 208) = 0;
  }

  *(v4 + 192) = v0;
  *(v4 + 216) = v11;
  v14 = OUTLINED_FUNCTION_11_3(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));

  v12 = swift_task_alloc();
  v1[7] = v12;
  *v12 = v1;
  v12[1] = UnsupportedFlowCATsSimple.searchCallHistory(supportsAppLaunch:nonDefaultAppName:isVoicemail:device:);

  return (v14)(v2 + 16, 0x8000000000456720, v4);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_4();
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

    v10 = OUTLINED_FUNCTION_49();

    return v11(v10);
  }
}

PhoneCallFlowDelegatePlugin::UnsupportedFlowCATsSimple::SearchCallHistoryDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance UnsupportedFlowCATsSimple.SearchCallHistoryDialogIds@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::UnsupportedFlowCATsSimple::SearchCallHistoryDialogIds_optional *a2@<X8>)
{
  result.value = UnsupportedFlowCATsSimple.SearchCallHistoryDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t UnsupportedFlowCATsSimple.searchCallHistoryAsLabels(supportsAppLaunch:nonDefaultAppName:isVoicemail:device:)()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_33_28(v1, v2, v3, v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v5);
  *(v0 + 40) = OUTLINED_FUNCTION_45();
  v6 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_28_30();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = swift_allocObject();
  v1[6] = v4;
  v5 = OUTLINED_FUNCTION_0_8(v4, "supportsAppLaunch");
  v5[3].n128_u8[0] = v3;
  v7 = OUTLINED_FUNCTION_27_41(v5, "nonDefaultAppName", v6);
  OUTLINED_FUNCTION_48_1(v7, v8, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v9 = type metadata accessor for SpeakableString();
  if (OUTLINED_FUNCTION_58(v9) == 1)
  {
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v1[5], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v4 + 96) = 0u;
    *(v4 + 112) = 0u;
  }

  else
  {
    *(v4 + 120) = v0;
    __swift_allocate_boxed_opaque_existential_1((v4 + 96));
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_16_0();
    v10();
  }

  v11 = OUTLINED_FUNCTION_7_87();
  if (v0)
  {
    v11 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v4 + 200) = 0;
    *(v4 + 208) = 0;
  }

  *(v4 + 192) = v0;
  *(v4 + 216) = v11;
  v15 = OUTLINED_FUNCTION_11_3(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));

  v12 = swift_task_alloc();
  v1[7] = v12;
  lazy protocol witness table accessor for type UnsupportedFlowCATsSimple.SearchCallHistoryDialogIds and conformance UnsupportedFlowCATsSimple.SearchCallHistoryDialogIds();
  OUTLINED_FUNCTION_9();
  *v12 = v13;
  v12[1] = UnsupportedFlowCATsSimple.searchCallHistoryAsLabels(supportsAppLaunch:nonDefaultAppName:isVoicemail:device:);

  return (v15)(v2 + 16, 0x8000000000456720, v4, &type metadata for UnsupportedFlowCATsSimple.SearchCallHistoryDialogIds);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_4();
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

    v10 = OUTLINED_FUNCTION_49();

    return v11(v10);
  }
}

unint64_t lazy protocol witness table accessor for type UnsupportedFlowCATsSimple.SearchCallHistoryDialogIds and conformance UnsupportedFlowCATsSimple.SearchCallHistoryDialogIds()
{
  result = lazy protocol witness table cache variable for type UnsupportedFlowCATsSimple.SearchCallHistoryDialogIds and conformance UnsupportedFlowCATsSimple.SearchCallHistoryDialogIds;
  if (!lazy protocol witness table cache variable for type UnsupportedFlowCATsSimple.SearchCallHistoryDialogIds and conformance UnsupportedFlowCATsSimple.SearchCallHistoryDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UnsupportedFlowCATsSimple.SearchCallHistoryDialogIds and conformance UnsupportedFlowCATsSimple.SearchCallHistoryDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UnsupportedFlowCATsSimple.SearchCallHistoryDialogIds and conformance UnsupportedFlowCATsSimple.SearchCallHistoryDialogIds;
  if (!lazy protocol witness table cache variable for type UnsupportedFlowCATsSimple.SearchCallHistoryDialogIds and conformance UnsupportedFlowCATsSimple.SearchCallHistoryDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UnsupportedFlowCATsSimple.SearchCallHistoryDialogIds and conformance UnsupportedFlowCATsSimple.SearchCallHistoryDialogIds);
  }

  return result;
}

uint64_t UnsupportedFlowCATsSimple.startCallEmergency()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = AddCallParticipantCATPatternsExecutor.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_32();
  v3 = OUTLINED_FUNCTION_36_1(34);

  return v4(v3);
}

BOOL UnsupportedFlowCATsSimple.StartCallEmergencyDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_38();
  v1._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of UnsupportedFlowCATsSimple.StartCallEmergencyDialogIds.init(rawValue:), v1);
  OUTLINED_FUNCTION_33_2();
  return OUTLINED_FUNCTION_28_1();
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance UnsupportedFlowCATsSimple.StartCallEmergencyDialogIds@<W0>(_BYTE *a1@<X8>)
{
  result = UnsupportedFlowCATsSimple.StartCallEmergencyDialogIds.init(rawValue:)();
  *a1 = result;
  return result;
}

uint64_t UnsupportedFlowCATsSimple.startCallEmergencyAsLabels()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_24_6(v1);
  lazy protocol witness table accessor for type UnsupportedFlowCATsSimple.StartCallEmergencyDialogIds and conformance UnsupportedFlowCATsSimple.StartCallEmergencyDialogIds();
  OUTLINED_FUNCTION_9();
  *v0 = v2;
  v0[1] = AddCallParticipantCATPatternsExecutor.unsupportedNoActiveCall();
  OUTLINED_FUNCTION_19_4();
  v3 = OUTLINED_FUNCTION_26_20(34);

  return v4(v3);
}

unint64_t lazy protocol witness table accessor for type UnsupportedFlowCATsSimple.StartCallEmergencyDialogIds and conformance UnsupportedFlowCATsSimple.StartCallEmergencyDialogIds()
{
  result = lazy protocol witness table cache variable for type UnsupportedFlowCATsSimple.StartCallEmergencyDialogIds and conformance UnsupportedFlowCATsSimple.StartCallEmergencyDialogIds;
  if (!lazy protocol witness table cache variable for type UnsupportedFlowCATsSimple.StartCallEmergencyDialogIds and conformance UnsupportedFlowCATsSimple.StartCallEmergencyDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UnsupportedFlowCATsSimple.StartCallEmergencyDialogIds and conformance UnsupportedFlowCATsSimple.StartCallEmergencyDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UnsupportedFlowCATsSimple.StartCallEmergencyDialogIds and conformance UnsupportedFlowCATsSimple.StartCallEmergencyDialogIds;
  if (!lazy protocol witness table cache variable for type UnsupportedFlowCATsSimple.StartCallEmergencyDialogIds and conformance UnsupportedFlowCATsSimple.StartCallEmergencyDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UnsupportedFlowCATsSimple.StartCallEmergencyDialogIds and conformance UnsupportedFlowCATsSimple.StartCallEmergencyDialogIds);
  }

  return result;
}

uint64_t UnsupportedFlowCATsSimple.startCallEmergencyInRetailStore()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = AddCallParticipantCATPatternsExecutor.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_32();
  v3 = OUTLINED_FUNCTION_36_1(47);

  return v4(v3);
}

BOOL UnsupportedFlowCATsSimple.StartCallEmergencyInRetailStoreDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_38();
  v1._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of UnsupportedFlowCATsSimple.StartCallEmergencyInRetailStoreDialogIds.init(rawValue:), v1);
  OUTLINED_FUNCTION_33_2();
  return OUTLINED_FUNCTION_28_1();
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance UnsupportedFlowCATsSimple.StartCallEmergencyInRetailStoreDialogIds@<W0>(_BYTE *a1@<X8>)
{
  result = UnsupportedFlowCATsSimple.StartCallEmergencyInRetailStoreDialogIds.init(rawValue:)();
  *a1 = result;
  return result;
}

uint64_t UnsupportedFlowCATsSimple.startCallEmergencyInRetailStoreAsLabels()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_24_6(v1);
  lazy protocol witness table accessor for type UnsupportedFlowCATsSimple.StartCallEmergencyInRetailStoreDialogIds and conformance UnsupportedFlowCATsSimple.StartCallEmergencyInRetailStoreDialogIds();
  OUTLINED_FUNCTION_9();
  *v0 = v2;
  v0[1] = AddCallParticipantCATPatternsExecutor.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_19_4();
  v3 = OUTLINED_FUNCTION_26_20(47);

  return v4(v3);
}

unint64_t lazy protocol witness table accessor for type UnsupportedFlowCATsSimple.StartCallEmergencyInRetailStoreDialogIds and conformance UnsupportedFlowCATsSimple.StartCallEmergencyInRetailStoreDialogIds()
{
  result = lazy protocol witness table cache variable for type UnsupportedFlowCATsSimple.StartCallEmergencyInRetailStoreDialogIds and conformance UnsupportedFlowCATsSimple.StartCallEmergencyInRetailStoreDialogIds;
  if (!lazy protocol witness table cache variable for type UnsupportedFlowCATsSimple.StartCallEmergencyInRetailStoreDialogIds and conformance UnsupportedFlowCATsSimple.StartCallEmergencyInRetailStoreDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UnsupportedFlowCATsSimple.StartCallEmergencyInRetailStoreDialogIds and conformance UnsupportedFlowCATsSimple.StartCallEmergencyInRetailStoreDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UnsupportedFlowCATsSimple.StartCallEmergencyInRetailStoreDialogIds and conformance UnsupportedFlowCATsSimple.StartCallEmergencyInRetailStoreDialogIds;
  if (!lazy protocol witness table cache variable for type UnsupportedFlowCATsSimple.StartCallEmergencyInRetailStoreDialogIds and conformance UnsupportedFlowCATsSimple.StartCallEmergencyInRetailStoreDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UnsupportedFlowCATsSimple.StartCallEmergencyInRetailStoreDialogIds and conformance UnsupportedFlowCATsSimple.StartCallEmergencyInRetailStoreDialogIds);
  }

  return result;
}

uint64_t UnsupportedFlowCATsSimple.unsupportedEmergencyContactCall(thirdPartyAppName:isFaceTime:)()
{
  OUTLINED_FUNCTION_15();
  *(v1 + 64) = v2;
  *(v1 + 16) = v3;
  *(v1 + 24) = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v4);
  *(v1 + 32) = OUTLINED_FUNCTION_45();
  v5 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v5, v6, v7);
}

{
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_17_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = swift_allocObject();
  v1[5] = v3;
  *(v3 + 16) = xmmword_424FF0;
  v4 = OUTLINED_FUNCTION_0_8(v3, "thirdPartyAppName");
  OUTLINED_FUNCTION_48_1(v4, v5, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v6 = type metadata accessor for SpeakableString();
  if (OUTLINED_FUNCTION_58(v6) == 1)
  {
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v1[4], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v3 + 48) = 0u;
    *(v3 + 64) = 0u;
  }

  else
  {
    *(v3 + 72) = v0;
    __swift_allocate_boxed_opaque_existential_1((v3 + 48));
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_16_0();
    v7();
  }

  OUTLINED_FUNCTION_17_56();
  *(v3 + 120) = &type metadata for Bool;
  *(v3 + 96) = v8;
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v12 = v9;
  v10 = swift_task_alloc();
  v1[6] = v10;
  *v10 = v1;
  v10[1] = PhoneCallControlCATs.unsupportedCallControl(unsupportedReason:);

  return v12(v2 + 30, 0x80000000004567B0, v3);
}

PhoneCallFlowDelegatePlugin::UnsupportedFlowCATsSimple::UnsupportedEmergencyContactCallDialogIds_optional __swiftcall UnsupportedFlowCATsSimple.UnsupportedEmergencyContactCallDialogIds.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_38();
  v3._object = v1;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of UnsupportedFlowCATsSimple.UnsupportedEmergencyContactCallDialogIds.init(rawValue:), v3);
  OUTLINED_FUNCTION_33_2();
  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

PhoneCallFlowDelegatePlugin::UnsupportedFlowCATsSimple::UnsupportedEmergencyContactCallDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance UnsupportedFlowCATsSimple.UnsupportedEmergencyContactCallDialogIds@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::UnsupportedFlowCATsSimple::UnsupportedEmergencyContactCallDialogIds_optional *a2@<X8>)
{
  result.value = UnsupportedFlowCATsSimple.UnsupportedEmergencyContactCallDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t UnsupportedFlowCATsSimple.unsupportedEmergencyContactCallAsLabels(thirdPartyAppName:isFaceTime:)()
{
  OUTLINED_FUNCTION_15();
  *(v1 + 64) = v2;
  *(v1 + 16) = v3;
  *(v1 + 24) = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v4);
  *(v1 + 32) = OUTLINED_FUNCTION_45();
  v5 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v5, v6, v7);
}

{
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_17_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = swift_allocObject();
  v1[5] = v2;
  *(v2 + 16) = xmmword_424FF0;
  v3 = OUTLINED_FUNCTION_0_8(v2, "thirdPartyAppName");
  OUTLINED_FUNCTION_48_1(v3, v4, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v5 = type metadata accessor for SpeakableString();
  if (OUTLINED_FUNCTION_58(v5) == 1)
  {
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v1[4], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v2 + 48) = 0u;
    *(v2 + 64) = 0u;
  }

  else
  {
    *(v2 + 72) = v0;
    __swift_allocate_boxed_opaque_existential_1((v2 + 48));
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_16_0();
    v6();
  }

  OUTLINED_FUNCTION_17_56();
  *(v2 + 120) = &type metadata for Bool;
  *(v2 + 96) = v7;
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v12 = v8;
  v9 = swift_task_alloc();
  v1[6] = v9;
  lazy protocol witness table accessor for type UnsupportedFlowCATsSimple.UnsupportedEmergencyContactCallDialogIds and conformance UnsupportedFlowCATsSimple.UnsupportedEmergencyContactCallDialogIds();
  OUTLINED_FUNCTION_9();
  *v9 = v10;
  v9[1] = PhoneCallControlCATs.callControl(callControlAction:);
  OUTLINED_FUNCTION_19_4();

  return v12();
}

unint64_t lazy protocol witness table accessor for type UnsupportedFlowCATsSimple.UnsupportedEmergencyContactCallDialogIds and conformance UnsupportedFlowCATsSimple.UnsupportedEmergencyContactCallDialogIds()
{
  result = lazy protocol witness table cache variable for type UnsupportedFlowCATsSimple.UnsupportedEmergencyContactCallDialogIds and conformance UnsupportedFlowCATsSimple.UnsupportedEmergencyContactCallDialogIds;
  if (!lazy protocol witness table cache variable for type UnsupportedFlowCATsSimple.UnsupportedEmergencyContactCallDialogIds and conformance UnsupportedFlowCATsSimple.UnsupportedEmergencyContactCallDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UnsupportedFlowCATsSimple.UnsupportedEmergencyContactCallDialogIds and conformance UnsupportedFlowCATsSimple.UnsupportedEmergencyContactCallDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UnsupportedFlowCATsSimple.UnsupportedEmergencyContactCallDialogIds and conformance UnsupportedFlowCATsSimple.UnsupportedEmergencyContactCallDialogIds;
  if (!lazy protocol witness table cache variable for type UnsupportedFlowCATsSimple.UnsupportedEmergencyContactCallDialogIds and conformance UnsupportedFlowCATsSimple.UnsupportedEmergencyContactCallDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UnsupportedFlowCATsSimple.UnsupportedEmergencyContactCallDialogIds and conformance UnsupportedFlowCATsSimple.UnsupportedEmergencyContactCallDialogIds);
  }

  return result;
}

uint64_t UnsupportedFlowCATsSimple.unsupportedOnDeviceType(device:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t UnsupportedFlowCATsSimple.unsupportedOnDeviceType(device:)()
{
  OUTLINED_FUNCTION_23_0();
  v1 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = swift_allocObject();
  v0[4] = v2;
  v3 = OUTLINED_FUNCTION_3_0(v2, xmmword_424FD0);
  if (v1)
  {
    v3 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    v2[3].n128_u64[1] = 0;
    v2[4].n128_u64[0] = 0;
  }

  v2[3].n128_u64[0] = v1;
  v2[4].n128_u64[1] = v3;
  v6 = OUTLINED_FUNCTION_11_3(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));

  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = PostCallInquiryAnswerCallCATsSimple.intentHandledResponse(incomingCallConcept:);

  return (v6)(0xD000000000000027, 0x80000000004567E0, v2);
}

PhoneCallFlowDelegatePlugin::UnsupportedFlowCATsSimple::UnsupportedOnDeviceTypeDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance UnsupportedFlowCATsSimple.UnsupportedOnDeviceTypeDialogIds@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::UnsupportedFlowCATsSimple::UnsupportedOnDeviceTypeDialogIds_optional *a2@<X8>)
{
  result.value = UnsupportedFlowCATsSimple.UnsupportedOnDeviceTypeDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance UnsupportedFlowCATsSimple.UnsupportedOnDeviceTypeDialogIds()
{
  OUTLINED_FUNCTION_40_2();
  UnsupportedFlowCATsSimple.UnsupportedOnDeviceTypeDialogIds.rawValue.getter();
  *v0 = v1;
  v0[1] = 0xE700000000000000;
}

uint64_t UnsupportedFlowCATsSimple.unsupportedOnDeviceTypeAsLabels(device:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t UnsupportedFlowCATsSimple.unsupportedOnDeviceTypeAsLabels(device:)()
{
  OUTLINED_FUNCTION_23_0();
  v1 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = swift_allocObject();
  v0[4] = v2;
  v3 = OUTLINED_FUNCTION_3_0(v2, xmmword_424FD0);
  if (v1)
  {
    v3 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    v2[3].n128_u64[1] = 0;
    v2[4].n128_u64[0] = 0;
  }

  v2[3].n128_u64[0] = v1;
  v2[4].n128_u64[1] = v3;
  v7 = OUTLINED_FUNCTION_11_3(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));

  v4 = swift_task_alloc();
  v0[5] = v4;
  lazy protocol witness table accessor for type UnsupportedFlowCATsSimple.UnsupportedOnDeviceTypeDialogIds and conformance UnsupportedFlowCATsSimple.UnsupportedOnDeviceTypeDialogIds();
  OUTLINED_FUNCTION_9();
  *v4 = v5;
  v4[1] = PostCallInquiryAnswerCallCATsSimple.intentHandledResponseAsLabels(incomingCallConcept:);

  return (v7)(0xD000000000000027, 0x80000000004567E0, v2, &type metadata for UnsupportedFlowCATsSimple.UnsupportedOnDeviceTypeDialogIds);
}

unint64_t lazy protocol witness table accessor for type UnsupportedFlowCATsSimple.UnsupportedOnDeviceTypeDialogIds and conformance UnsupportedFlowCATsSimple.UnsupportedOnDeviceTypeDialogIds()
{
  result = lazy protocol witness table cache variable for type UnsupportedFlowCATsSimple.UnsupportedOnDeviceTypeDialogIds and conformance UnsupportedFlowCATsSimple.UnsupportedOnDeviceTypeDialogIds;
  if (!lazy protocol witness table cache variable for type UnsupportedFlowCATsSimple.UnsupportedOnDeviceTypeDialogIds and conformance UnsupportedFlowCATsSimple.UnsupportedOnDeviceTypeDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UnsupportedFlowCATsSimple.UnsupportedOnDeviceTypeDialogIds and conformance UnsupportedFlowCATsSimple.UnsupportedOnDeviceTypeDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UnsupportedFlowCATsSimple.UnsupportedOnDeviceTypeDialogIds and conformance UnsupportedFlowCATsSimple.UnsupportedOnDeviceTypeDialogIds;
  if (!lazy protocol witness table cache variable for type UnsupportedFlowCATsSimple.UnsupportedOnDeviceTypeDialogIds and conformance UnsupportedFlowCATsSimple.UnsupportedOnDeviceTypeDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UnsupportedFlowCATsSimple.UnsupportedOnDeviceTypeDialogIds and conformance UnsupportedFlowCATsSimple.UnsupportedOnDeviceTypeDialogIds);
  }

  return result;
}

uint64_t UnsupportedFlowCATsSimple.__allocating_init(templateDir:options:globals:)()
{
  swift_allocObject();
  OUTLINED_FUNCTION_16_0();
  return UnsupportedFlowCATsSimple.init(templateDir:options:globals:)(v0, v1, v2);
}

uint64_t UnsupportedFlowCATsSimple.init(templateDir:options:globals:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for CATOption();
  OUTLINED_FUNCTION_14_5();
  v7 = v6;
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_4();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v13 = OUTLINED_FUNCTION_21(v12);
  __chkstk_darwin(v13);
  outlined init with copy of PhoneCallNLIntent?(a1, &v17 - v14, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(v7 + 16))(v11, a2, v3);
  v15 = CATWrapperSimple.init(templateDir:options:globals:)();
  (*(v7 + 8))(a2, v3);
  _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(a1, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  return v15;
}

uint64_t UnsupportedFlowCATsSimple.__allocating_init(useResponseMode:options:)(uint64_t a1)
{
  type metadata accessor for CATOption();
  OUTLINED_FUNCTION_14_5();
  __chkstk_darwin(v1);
  OUTLINED_FUNCTION_4();
  v2 = swift_allocObject();
  v3 = OUTLINED_FUNCTION_39_1();
  v4(v3);
  CATWrapperSimple.init(useResponseMode:options:)();
  v5 = OUTLINED_FUNCTION_53();
  v6(v5);
  return v2;
}

uint64_t UnsupportedFlowCATsSimple.init(useResponseMode:options:)(uint64_t a1)
{
  type metadata accessor for CATOption();
  OUTLINED_FUNCTION_14_5();
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_4();
  v3 = OUTLINED_FUNCTION_39_1();
  v4(v3);
  CATWrapperSimple.init(useResponseMode:options:)();
  v5 = OUTLINED_FUNCTION_53();
  v6(v5);
  return v1;
}

unint64_t lazy protocol witness table accessor for type UnsupportedFlowCATsSimple.Properties and conformance UnsupportedFlowCATsSimple.Properties()
{
  result = lazy protocol witness table cache variable for type UnsupportedFlowCATsSimple.Properties and conformance UnsupportedFlowCATsSimple.Properties;
  if (!lazy protocol witness table cache variable for type UnsupportedFlowCATsSimple.Properties and conformance UnsupportedFlowCATsSimple.Properties)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UnsupportedFlowCATsSimple.Properties and conformance UnsupportedFlowCATsSimple.Properties);
  }

  return result;
}

uint64_t type metadata accessor for UnsupportedFlowCATsSimple(uint64_t a1)
{
  result = type metadata singleton initialization cache for UnsupportedFlowCATsSimple;
  if (!type metadata singleton initialization cache for UnsupportedFlowCATsSimple)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for UnsupportedFlowCATsSimple.Properties(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for UnsupportedFlowCATsSimple.DeleteCallHistoryDialogIds(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for UnsupportedFlowCATsSimple.UnsupportedEmergencyContactCallDialogIds(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for UnsupportedFlowCATsSimple.SearchCallHistoryDialogIds(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t static UnsupportedPhoneCall.from(nlIntent:app:sharedGlobals:)(void *a1, uint64_t a2, void *a3)
{
  OUTLINED_FUNCTION_61_2(a3);
  v6 = OUTLINED_FUNCTION_1_1();
  v7(v6);
  OUTLINED_FUNCTION_0_123();
  if (PhoneCallNLIntent.isOutgoingCall()())
  {
    OUTLINED_FUNCTION_0_123();
    if (PhoneCallNLIntent.isEmergencyServicesCall()() || (OUTLINED_FUNCTION_0_123(), PhoneCallNLIntent.isEmergencyNumberCall()()))
    {
      v8 = v83;
      __swift_project_boxed_opaque_existential_1(v82, v83);
      v9 = a3[3];
      v10 = a3[4];
      __swift_project_boxed_opaque_existential_1(a3, v9);
      v11 = (*(v10 + 56))(v9, v10);
      v12 = DeviceState.isSiriEmergencyCallingUnsupported(featureManager:)(v11, v8);

      if ((v12 & 1) != 0 || static UnsupportedPhoneCall.isInRetailStoreDemoMode()())
      {
        if (one-time initialization token for siriPhone != -1)
        {
          OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
        }

        v13 = type metadata accessor for Logger();
        v14 = OUTLINED_FUNCTION_12_1(v13, static Logger.siriPhone);
        v15 = static os_log_type_t.debug.getter();
        if (OUTLINED_FUNCTION_10_0(v15))
        {
          v16 = OUTLINED_FUNCTION_65_0();
          OUTLINED_FUNCTION_11_1(v16);
          OUTLINED_FUNCTION_33(&dword_0, v17, v18, "#PhoneCallRequestSupportPolicy Unsupported StartCallEmergency!");
          OUTLINED_FUNCTION_12_3();
        }

        v19 = 0;
        goto LABEL_17;
      }
    }
  }

  __swift_project_boxed_opaque_existential_1(v82, v83);
  OUTLINED_FUNCTION_1_1();
  if (dispatch thunk of DeviceState.isAppleTV.getter())
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v20 = type metadata accessor for Logger();
    v21 = OUTLINED_FUNCTION_12_1(v20, static Logger.siriPhone);
    v22 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_10_0(v22))
    {
      v23 = OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_11_1(v23);
      OUTLINED_FUNCTION_33(&dword_0, v24, v25, "#PhoneCallRequestSupportPolicy Unsupported on AppleTV!");
      OUTLINED_FUNCTION_12_3();
    }

    v19 = 12;
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_0_123();
  if (PhoneCallNLIntent.isGroupFaceTimeCall()())
  {
    __swift_project_boxed_opaque_existential_1(v82, v83);
    if (DeviceState.isGroupFaceTimeDeviceUnsupported(app:)())
    {
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
      }

      v27 = type metadata accessor for Logger();
      v28 = OUTLINED_FUNCTION_12_1(v27, static Logger.siriPhone);
      v29 = static os_log_type_t.info.getter();
      if (OUTLINED_FUNCTION_10_0(v29))
      {
        v30 = OUTLINED_FUNCTION_65_0();
        OUTLINED_FUNCTION_11_1(v30);
        OUTLINED_FUNCTION_33(&dword_0, v31, v32, "#PhoneCallRequestSupportPolicy Unsupported device for group FaceTime call");
        OUTLINED_FUNCTION_12_3();
      }

      v19 = 9;
      goto LABEL_17;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin23AppAndDeviceRestrictionV9ConditionVGMd, &_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin23AppAndDeviceRestrictionV9ConditionVGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_424FF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_426260;
  *(v34 + 32) = swift_getKeyPath();
  _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC27PhoneCallFlowDelegatePlugin23AppAndDeviceRestrictionV0J8CategoryO_Tt0g5();
  *(inited + 32) = v34;
  *(inited + 40) = v35;
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_427BB0;
  *(v36 + 32) = swift_getKeyPath();
  *(v36 + 40) = swift_getKeyPath();
  _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC27PhoneCallFlowDelegatePlugin23AppAndDeviceRestrictionV0J8CategoryO_Tt0g5();
  *(inited + 48) = v36;
  *(inited + 56) = v37;
  v38 = swift_initStackObject();
  *(v38 + 16) = xmmword_424FF0;
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_426260;
  *(v39 + 32) = swift_getKeyPath();
  _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC27PhoneCallFlowDelegatePlugin23AppAndDeviceRestrictionV0J8CategoryO_Tt0g5();
  *(v38 + 32) = v39;
  *(v38 + 40) = v40;
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_450BF0;
  *(v41 + 32) = swift_getKeyPath();
  *(v41 + 40) = swift_getKeyPath();
  *(v41 + 48) = swift_getKeyPath();
  _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC27PhoneCallFlowDelegatePlugin23AppAndDeviceRestrictionV0J8CategoryO_Tt0g5();
  *(v38 + 48) = v41;
  *(v38 + 56) = v42;
  OUTLINED_FUNCTION_0_123();
  if (PhoneCallNLIntent.isAudioCall()())
  {
    v43 = a2;
    v44 = App.isFirstParty()();
    __chkstk_darwin(v44);
    OUTLINED_FUNCTION_7_88();
    v45 = specialized Sequence.contains(where:)();

    if (v45)
    {
      swift_setDeallocating();
      specialized _ContiguousArrayStorage.__deallocating_deinit();
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
      }

      v46 = type metadata accessor for Logger();
      v47 = OUTLINED_FUNCTION_12_1(v46, static Logger.siriPhone);
      v48 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_10_0(v48))
      {
        v49 = OUTLINED_FUNCTION_65_0();
        OUTLINED_FUNCTION_11_1(v49);
        OUTLINED_FUNCTION_33(&dword_0, v50, v51, "#PhoneCallRequestSupportPolicy Unsupported StartAudioCall!");
        OUTLINED_FUNCTION_12_3();
      }

      v19 = 1;
      goto LABEL_17;
    }
  }

  else
  {

    v43 = a2;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (PhoneCallNLIntent.isVideoCall()())
  {
    v52 = App.isFirstParty()();
    __chkstk_darwin(v52);
    OUTLINED_FUNCTION_7_88();
    v53 = specialized Sequence.contains(where:)();
    swift_setDeallocating();
    specialized _ContiguousArrayStorage.__deallocating_deinit();
    if (v53)
    {
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
      }

      v54 = type metadata accessor for Logger();
      v55 = OUTLINED_FUNCTION_12_1(v54, static Logger.siriPhone);
      v56 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v55, v56))
      {
        v19 = 2;
        v57 = OUTLINED_FUNCTION_65_0();
        *v57 = 0;
        _os_log_impl(&dword_0, v55, v56, "#PhoneCallRequestSupportPolicy Unsupported StartVideoCall!", v57, 2u);
      }

      else
      {

        v19 = 2;
      }

      goto LABEL_17;
    }
  }

  else
  {
    swift_setDeallocating();
    specialized _ContiguousArrayStorage.__deallocating_deinit();
  }

  OUTLINED_FUNCTION_0_123();
  if (PhoneCallNLIntent.isAnswerCall()() && !App.isFirstParty()())
  {
    OUTLINED_FUNCTION_61_2(a3);
    v58 = OUTLINED_FUNCTION_1_1();
    v59(v58);
    __swift_project_boxed_opaque_existential_1(v80, v81);
    OUTLINED_FUNCTION_56();
    v60 = DeviceState.isStandaloneIOS.getter();
    __swift_destroy_boxed_opaque_existential_1(v80);
    if ((v60 & 1) == 0)
    {
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
      }

      v71 = type metadata accessor for Logger();
      v65 = OUTLINED_FUNCTION_12_1(v71, static Logger.siriPhone);
      v72 = static os_log_type_t.debug.getter();
      if (!OUTLINED_FUNCTION_10_0(v72))
      {
        goto LABEL_65;
      }

      v73 = OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_11_1(v73);
      v70 = "#PhoneCallRequestSupportPolicy Unsupported AnswerCall!";
      goto LABEL_64;
    }
  }

  OUTLINED_FUNCTION_0_123();
  if (PhoneCallNLIntent.isJoinCall()() && !App.isFirstParty()())
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v64 = type metadata accessor for Logger();
    v65 = OUTLINED_FUNCTION_12_1(v64, static Logger.siriPhone);
    v66 = static os_log_type_t.debug.getter();
    if (!OUTLINED_FUNCTION_10_0(v66))
    {
      goto LABEL_65;
    }

    v67 = OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_11_1(v67);
    v70 = "#PhoneCallRequestSupportPolicy Unsupported JoinCall!";
LABEL_64:
    OUTLINED_FUNCTION_33(&dword_0, v68, v69, v70);
    OUTLINED_FUNCTION_12_3();
LABEL_65:

    v19 = 5;
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_0_123();
  if (!PhoneCallNLIntent.isHangUpCall()() || App.isFirstParty()() || (OUTLINED_FUNCTION_61_2(a3), v61 = OUTLINED_FUNCTION_1_1(), v62(v61), __swift_project_boxed_opaque_existential_1(v80, v81), OUTLINED_FUNCTION_56(), v63 = DeviceState.isStandaloneIOS.getter(), __swift_destroy_boxed_opaque_existential_1(v80), (v63 & 1) != 0))
  {
    OUTLINED_FUNCTION_0_123();
    if (PhoneCallNLIntent.isEmergencyContactCall()() && ((OUTLINED_FUNCTION_0_123(), PhoneCallNLIntent.isFaceTimeCall()()) || !App.isFirstParty()()))
    {
      v19 = 10;
    }

    else
    {
      OUTLINED_FUNCTION_0_123();
      if (PhoneCallNLIntent.isRemoveParticipant()())
      {
        v19 = 11;
      }

      else
      {
        v19 = static UnsupportedPhoneCall.checkUnsupportedIICOrSCHOrVoicemail(nlIntent:app:sharedGlobals:)(a1, v43, a3);
      }
    }
  }

  else
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v74 = type metadata accessor for Logger();
    v75 = OUTLINED_FUNCTION_12_1(v74, static Logger.siriPhone);
    v76 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_10_0(v76))
    {
      v77 = OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_11_1(v77);
      OUTLINED_FUNCTION_33(&dword_0, v78, v79, "#PhoneCallRequestSupportPolicy Unsupported HangUpCall!");
      OUTLINED_FUNCTION_12_3();
    }

    v19 = 6;
  }

LABEL_17:
  __swift_destroy_boxed_opaque_existential_1(v82);
  return v19;
}

BOOL static UnsupportedPhoneCall.isInRetailStoreDemoMode()()
{
  keyExistsAndHasValidFormat = 0;
  v0 = String._bridgeToObjectiveC()();
  v1 = String._bridgeToObjectiveC()();
  AppBooleanValue = CFPreferencesGetAppBooleanValue(v0, v1, &keyExistsAndHasValidFormat);

  if (keyExistsAndHasValidFormat)
  {
    v3 = AppBooleanValue == 0;
  }

  else
  {
    v3 = 1;
  }

  return !v3;
}

unint64_t UnsupportedPhoneCall.rawValue.getter(char a1)
{
  result = 0xD00000000000001DLL;
  switch(a1)
  {
    case 1:
    case 2:
      result = 0xD000000000000019;
      break;
    case 3:
      result = 0xD000000000000021;
      break;
    case 4:
    case 7:
      result = 0xD00000000000001CLL;
      break;
    case 5:
    case 6:
      result = 0xD000000000000015;
      break;
    case 8:
      result = 0xD00000000000001DLL;
      break;
    case 9:
      result = 0xD00000000000001ELL;
      break;
    case 10:
      result = 0xD00000000000001FLL;
      break;
    case 11:
      result = 0xD000000000000020;
      break;
    case 12:
      result = 0xD000000000000017;
      break;
    case 13:
      result = 0xD00000000000001ALL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t static UnsupportedPhoneCall.from(nlIntent:device:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (PhoneCallNLIntent.isRemoveParticipant()())
  {
    return 11;
  }

  else
  {
    return 14;
  }
}

double static AppAndDeviceRestriction.Condition.restrictAll(deviceStates:)()
{
  _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC27PhoneCallFlowDelegatePlugin23AppAndDeviceRestrictionV0J8CategoryO_Tt0g5();
  OUTLINED_FUNCTION_40_0();

  return result;
}

double static AppAndDeviceRestriction.Condition.restrictThirdParty(deviceStates:)()
{
  _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC27PhoneCallFlowDelegatePlugin23AppAndDeviceRestrictionV0J8CategoryO_Tt0g5();
  OUTLINED_FUNCTION_40_0();

  return result;
}

uint64_t key path getter for DeviceState.isAppleTV : DeviceState@<X0>(void *a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t)@<X3>, _BYTE *a3@<X8>)
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  result = a2(v5, v6);
  *a3 = result & 1;
  return result;
}

uint64_t static UnsupportedPhoneCall.checkUnsupportedIICOrSCHOrVoicemail(nlIntent:app:sharedGlobals:)(void *a1, uint64_t a2, void *a3)
{
  v5 = a3[3];
  v6 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v5);
  (*(v6 + 8))(v37, v5, v6);
  v7 = App.isFirstParty()();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (PhoneCallNLIntent.isIncomingCallSearch()() && !v7)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static Logger.siriPhone);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_0, v9, v10, "#PhoneCallRequestSupportPolicy Unsupported IdentifyIncomingCaller!", v11, 2u);
    }

    v12 = 3;
    goto LABEL_37;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (PhoneCallNLIntent.hasVoiceMail()())
  {
    __swift_project_boxed_opaque_existential_1(v37, v38);
    if (dispatch thunk of DeviceState.isHomePod.getter() & 1) != 0 || (v13 = v38, __swift_project_boxed_opaque_existential_1(v37, v38), (DeviceState.supportsOnlyFaceTimeCalls.getter(v13)))
    {
      if (one-time initialization token for siriPhone != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      __swift_project_value_buffer(v14, static Logger.siriPhone);
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&dword_0, v15, v16, "#PhoneCallRequestSupportPolicy FaceTime-only or HomePod devices do not support voicemail requests", v17, 2u);
      }

LABEL_23:
      v12 = 4;
      goto LABEL_37;
    }
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (PhoneCallNLIntent.isSearchCallOrVoiceMail()())
  {
    v18 = v38;
    __swift_project_boxed_opaque_existential_1(v37, v38);
    if (DeviceState.isSearchCallHistoryUnavailable(app:)(a2, v18))
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
        v23 = swift_slowAlloc();
        v36 = v23;
        *v22 = 136315138;
        v24 = dispatch thunk of App.description.getter();
        v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, &v36);

        *(v22 + 4) = v26;
        _os_log_impl(&dword_0, v20, v21, "#PhoneCallRequestSupportPolicy searchCallHistory/Voicemail on an unsupported device, or on app:%s is not supported anywhere", v22, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v23);
      }

      goto LABEL_23;
    }
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (PhoneCallNLIntent.isDelete()())
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    if (PhoneCallNLIntent.hasVoiceMail()())
    {
      if (one-time initialization token for siriPhone != -1)
      {
        swift_once();
      }

      v27 = type metadata accessor for Logger();
      __swift_project_value_buffer(v27, static Logger.siriPhone);
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&dword_0, v28, v29, "#PhoneCallRequestSupportPolicy delete verb isn't supported by phone domain for voicemail", v30, 2u);
      }

      v12 = 13;
    }

    else
    {
      if (one-time initialization token for siriPhone != -1)
      {
        swift_once();
      }

      v31 = type metadata accessor for Logger();
      __swift_project_value_buffer(v31, static Logger.siriPhone);
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&dword_0, v32, v33, "#PhoneCallRequestSupportPolicy delete verb isn't supported by phone domain for call history", v34, 2u);
      }

      v12 = 7;
    }
  }

  else
  {
    v12 = 14;
  }

LABEL_37:
  __swift_destroy_boxed_opaque_existential_1(v37);
  return v12;
}

PhoneCallFlowDelegatePlugin::UnsupportedPhoneCall_optional __swiftcall UnsupportedPhoneCall.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3._object = object;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of UnsupportedPhoneCall.init(rawValue:), v3);
  OUTLINED_FUNCTION_40_0();

  if (v1 >= 0xE)
  {
    return 14;
  }

  else
  {
    return v1;
  }
}

PhoneCallFlowDelegatePlugin::UnsupportedPhoneCall_optional protocol witness for RawRepresentable.init(rawValue:) in conformance UnsupportedPhoneCall@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::UnsupportedPhoneCall_optional *a2@<X8>)
{
  result.value = UnsupportedPhoneCall.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance UnsupportedPhoneCall@<X0>(uint64_t *a1@<X8>)
{
  result = UnsupportedPhoneCall.description.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t AppAndDeviceRestriction.Condition.matches(device:app:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v6 = specialized Set.contains(_:)(a2 & 1, a4);
  if (v6)
  {
    __chkstk_darwin(v6);
    v9[2] = a1;
    specialized Sequence.contains(where:)(partial apply for closure #1 in AppAndDeviceRestriction.Condition.matches(device:app:), v9, a3);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

double static AppAndDeviceRestriction.Condition.restrictFirstParty(deviceStates:)()
{
  _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC27PhoneCallFlowDelegatePlugin23AppAndDeviceRestrictionV0J8CategoryO_Tt0g5();
  OUTLINED_FUNCTION_40_0();

  return result;
}

uint64_t closure #1 in AppAndDeviceRestriction.isRestricted(device:app:)(uint64_t *a1, uint64_t a2, char a3)
{
  v4 = *a1;
  v5 = specialized Set.contains(_:)(a3 & 1, a1[1]);
  if (v5)
  {
    __chkstk_darwin(v5);
    v8[2] = a2;
    specialized Sequence.contains(where:)(closure #1 in AppAndDeviceRestriction.Condition.matches(device:app:)partial apply, v8, v4);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

unint64_t lazy protocol witness table accessor for type UnsupportedPhoneCall and conformance UnsupportedPhoneCall()
{
  result = lazy protocol witness table cache variable for type UnsupportedPhoneCall and conformance UnsupportedPhoneCall;
  if (!lazy protocol witness table cache variable for type UnsupportedPhoneCall and conformance UnsupportedPhoneCall)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UnsupportedPhoneCall and conformance UnsupportedPhoneCall);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AppAndDeviceRestriction.AppCategory and conformance AppAndDeviceRestriction.AppCategory()
{
  result = lazy protocol witness table cache variable for type AppAndDeviceRestriction.AppCategory and conformance AppAndDeviceRestriction.AppCategory;
  if (!lazy protocol witness table cache variable for type AppAndDeviceRestriction.AppCategory and conformance AppAndDeviceRestriction.AppCategory)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppAndDeviceRestriction.AppCategory and conformance AppAndDeviceRestriction.AppCategory);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for UnsupportedPhoneCall(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF2)
  {
    v6 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
          *result = a2 + 13;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AppAndDeviceRestriction.AppCategory(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t UnsupportedSearchParametersFlowStrategy.__allocating_init(app:sharedGlobals:isMissed:isLatest:isVoicemail:contact:searchCallHistorySharedGlobals:searchCallHistoryCATsSimple:)()
{
  OUTLINED_FUNCTION_16_5();
  v0 = swift_allocObject();
  UnsupportedSearchParametersFlowStrategy.init(app:sharedGlobals:isMissed:isLatest:isVoicemail:contact:searchCallHistorySharedGlobals:searchCallHistoryCATsSimple:)();
  return v0;
}

uint64_t UnsupportedSearchParametersFlowStrategy.init(app:sharedGlobals:isMissed:isLatest:isVoicemail:contact:searchCallHistorySharedGlobals:searchCallHistoryCATsSimple:)()
{
  OUTLINED_FUNCTION_16_5();
  *(v1 + 296) = type metadata accessor for UnsupportedSearchParametersFlowStrategy();
  *(v1 + 304) = &outlined read-only object #0 of UnsupportedSearchParametersFlowStrategy.init(app:sharedGlobals:isMissed:isLatest:isVoicemail:contact:searchCallHistorySharedGlobals:searchCallHistoryCATsSimple:);
  *(v1 + 312) = 0;
  *(v1 + 320) = 0;
  *(v1 + 264) = v6;
  *(v1 + 265) = v5;
  *(v1 + 266) = v4;
  *(v1 + 272) = v3;
  *(v1 + 280) = v8;
  outlined init with copy of SignalProviding(v7, v1 + 24);
  type metadata accessor for YesNoConfirmationParser();
  v9 = swift_allocObject();
  *(v9 + 16) = 5;
  outlined init with take of PhoneCallFeatureFlagProviding(v7, v9 + 24);
  *(v1 + 16) = v9;
  memcpy((v1 + 64), v2, 0xC8uLL);
  *(v1 + 288) = v0;
  return v1;
}

uint64_t UnsupportedSearchParametersFlowStrategy.actionForInput(_:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
  v4 = OUTLINED_FUNCTION_21(v3);
  v5 = __chkstk_darwin(v4);
  v7 = &v11 - v6;
  (*(**(v1 + 16) + 128))(a1, v5);
  v8 = type metadata accessor for ConfirmationResponse();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v7, 1, v8);
  outlined destroy of ConfirmationResponse?(v7);
  if (EnumTagSinglePayload == 1)
  {
    return static ActionForInput.ignore()();
  }

  else
  {
    return static ActionForInput.handle()();
  }
}

uint64_t UnsupportedSearchParametersFlowStrategy.makePromptForConfirmation(itemToConfirm:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t UnsupportedSearchParametersFlowStrategy.makePromptForConfirmation(itemToConfirm:)()
{
  OUTLINED_FUNCTION_24_1();
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v2 = *(v0 + 24);
  v3 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_20_5(v3, static Logger.siriPhone);
  v4 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  OUTLINED_FUNCTION_87();
  if (OUTLINED_FUNCTION_86_0())
  {
    OUTLINED_FUNCTION_42();
    v20 = OUTLINED_FUNCTION_83();
    OUTLINED_FUNCTION_19_46(4.8149e-34);
    OUTLINED_FUNCTION_9_84();
    v5 = OUTLINED_FUNCTION_4_92();
    DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v5, v6, 0xD000000000000029, v7);

    OUTLINED_FUNCTION_127(v8, v9, v10, v11, v12, v13, v14, v15, v20, 0, v21);
    OUTLINED_FUNCTION_63_1();
    *(v2 + 4) = v1;
    OUTLINED_FUNCTION_12(&dword_0, v16, v17, "%s");
    OUTLINED_FUNCTION_3_7();
    OUTLINED_FUNCTION_35();
  }

  v18 = swift_task_alloc();
  *(v0 + 32) = v18;
  *v18 = v0;
  v18[1] = DialogOutputFactory.makeOutput();

  return UnsupportedSearchParametersFlowStrategy.executePatternAndManifest()();
}

uint64_t UnsupportedSearchParametersFlowStrategy.makeConfirmationRejectedResponse()(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t UnsupportedSearchParametersFlowStrategy.makeConfirmationRejectedResponse()()
{
  OUTLINED_FUNCTION_24_1();
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v2 = v0[8];
  v3 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_20_5(v3, static Logger.siriPhone);
  v4 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  OUTLINED_FUNCTION_87();
  if (OUTLINED_FUNCTION_86_0())
  {
    OUTLINED_FUNCTION_42();
    v24 = OUTLINED_FUNCTION_83();
    OUTLINED_FUNCTION_19_46(4.8149e-34);
    OUTLINED_FUNCTION_9_84();
    v5 = OUTLINED_FUNCTION_4_92();
    DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v5, v6, 0xD000000000000022, v7);

    OUTLINED_FUNCTION_127(v8, v9, v10, v11, v12, v13, v14, v15, v24, 0, v25);
    OUTLINED_FUNCTION_63_1();
    *(v2 + 4) = v1;
    OUTLINED_FUNCTION_12(&dword_0, v16, v17, "%s");
    OUTLINED_FUNCTION_3_7();
    OUTLINED_FUNCTION_35();
  }

  v18 = v0[8];
  v19 = v18[6];
  v20 = v18[7];
  __swift_project_boxed_opaque_existential_1(v18 + 3, v19);
  (*(v20 + 24))(v19, v20);
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v21 = [objc_allocWithZone(SAUICloseAssistant) init];
  dispatch thunk of AceServiceInvoker.submitAndForget(_:)();

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  type metadata accessor for EmptyOutput();
  static EmptyOutput.instance.getter();
  OUTLINED_FUNCTION_11();

  return v22();
}

uint64_t UnsupportedSearchParametersFlowStrategy.makePromptForYesNoResponse()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t UnsupportedSearchParametersFlowStrategy.makePromptForYesNoResponse()()
{
  OUTLINED_FUNCTION_24_1();
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v2 = *(v0 + 24);
  v3 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_20_5(v3, static Logger.siriPhone);
  v4 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  OUTLINED_FUNCTION_87();
  if (OUTLINED_FUNCTION_86_0())
  {
    OUTLINED_FUNCTION_42();
    v20 = OUTLINED_FUNCTION_83();
    OUTLINED_FUNCTION_19_46(4.8149e-34);
    OUTLINED_FUNCTION_9_84();
    v5 = OUTLINED_FUNCTION_4_92();
    DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v5, v6, 0xD00000000000001CLL, v7);

    OUTLINED_FUNCTION_127(v8, v9, v10, v11, v12, v13, v14, v15, v20, 0, v21);
    OUTLINED_FUNCTION_63_1();
    *(v2 + 4) = v1;
    OUTLINED_FUNCTION_12(&dword_0, v16, v17, "%s");
    OUTLINED_FUNCTION_3_7();
    OUTLINED_FUNCTION_35();
  }

  v18 = swift_task_alloc();
  *(v0 + 32) = v18;
  *v18 = v0;
  v18[1] = ReadCallRecordsYesNoPromptFlowStrategy.makePromptForYesNoResponse();

  return UnsupportedSearchParametersFlowStrategy.executePatternAndManifest()();
}

uint64_t UnsupportedSearchParametersFlowStrategy.parseConfirmationResponse(input:)()
{
  OUTLINED_FUNCTION_15();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = type metadata accessor for PhoneError(0);
  v1[5] = v4;
  OUTLINED_FUNCTION_21(v4);
  v1[6] = OUTLINED_FUNCTION_45();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
  OUTLINED_FUNCTION_21(v5);
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_24_1();
  v2 = v0[9];
  v1 = v0[10];
  (*(**(v0[4] + 16) + 128))(v0[3]);
  outlined init with copy of ConfirmationResponse?(v1, v2);
  v3 = type metadata accessor for ConfirmationResponse();
  if (__swift_getEnumTagSinglePayload(v2, 1, v3) != 1)
  {
    v4 = v0[8];
    outlined init with copy of ConfirmationResponse?(v0[9], v4);
    v5 = *(v3 - 8);
    v6 = (*(v5 + 88))(v4, v3);
    if (v6 == enum case for ConfirmationResponse.confirmed(_:) || v6 == enum case for ConfirmationResponse.rejected(_:))
    {
      v9 = v0[9];
      v8 = v0[10];
      v10 = v0[7];
      (*(v5 + 104))(v10, v6, v3);
      __swift_storeEnumTagSinglePayload(v10, 0, 1, v3);
      SimpleConfirmationResponseProvider.init(_:)();
      outlined destroy of ConfirmationResponse?(v8);
      outlined destroy of ConfirmationResponse?(v9);

      OUTLINED_FUNCTION_11();
      goto LABEL_9;
    }

    (*(v5 + 8))(v0[8], v3);
  }

  v12 = v0[9];
  v13 = v0[10];
  v14 = v0[6];
  *v14 = 0;
  *(v14 + 8) = 0;
  *(v14 + 16) = 2;
  swift_storeEnumTagMultiPayload();
  _s27PhoneCallFlowDelegatePlugin0A5ErrorOACs0F0AAWlTm_14(&lazy protocol witness table cache variable for type PhoneError and conformance PhoneError, 255, type metadata accessor for PhoneError, &protocol conformance descriptor for PhoneError);
  swift_allocError();
  PhoneError.logged()(v15);
  _s27PhoneCallFlowDelegatePlugin0A5ErrorOWOhTm_12(v14, type metadata accessor for PhoneError);
  swift_willThrow();
  outlined destroy of ConfirmationResponse?(v13);
  outlined destroy of ConfirmationResponse?(v12);

  OUTLINED_FUNCTION_11();
LABEL_9:

  return v11();
}

uint64_t UnsupportedSearchParametersFlowStrategy.executePatternAndManifest()()
{
  OUTLINED_FUNCTION_15();
  v1[35] = v2;
  v1[36] = v0;
  v3 = type metadata accessor for DialogPhase();
  OUTLINED_FUNCTION_21(v3);
  v1[37] = OUTLINED_FUNCTION_45();
  v4 = type metadata accessor for OutputGenerationManifest();
  v1[38] = v4;
  v1[39] = *(v4 - 8);
  v1[40] = OUTLINED_FUNCTION_45();
  v5 = type metadata accessor for PhoneSnippetDataModels(0);
  v1[41] = v5;
  OUTLINED_FUNCTION_21(v5);
  v1[42] = OUTLINED_FUNCTION_45();
  v6 = type metadata accessor for CommonDirectAction(0);
  v1[43] = v6;
  OUTLINED_FUNCTION_21(v6);
  v1[44] = OUTLINED_FUNCTION_45();
  v7 = type metadata accessor for YesNoConfirmationModel(0);
  v1[45] = v7;
  OUTLINED_FUNCTION_21(v7);
  v1[46] = OUTLINED_FUNCTION_45();
  v8 = type metadata accessor for Locale();
  v1[47] = v8;
  v1[48] = *(v8 - 8);
  v1[49] = OUTLINED_FUNCTION_45();
  v9 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v9, v10, v11);
}

{
  v2 = v0[48];
  v1 = v0[49];
  v3 = v0[47];
  v4 = v0[36];
  type metadata accessor for PhonePerson(0);
  v5 = *(v4 + 272);
  static Device.current.getter();
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  dispatch thunk of DeviceState.siriLocale.getter();
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v6 = static PhonePerson.make(phonePerson:options:locale:)(v5, 0, v1);
  v0[50] = v6;
  (*(v2 + 8))(v1, v3);
  outlined init with copy of SignalProviding(v4 + 144, (v0 + 7));
  v7 = *(v4 + 288);
  v0[51] = v7;
  v8 = *(v4 + 266);
  v9 = *(v4 + 264);
  v10 = *(v4 + 265);
  v11 = *(*v7 + class metadata base offset for SearchCallHistoryCATsSimple + 528);

  v14 = (v11 + *v11);
  v12 = swift_task_alloc();
  v0[52] = v12;
  *v12 = v0;
  v12[1] = UnsupportedSearchParametersFlowStrategy.executePatternAndManifest();

  return v14(v8, v9, v10, v6);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 424) = v5;
  *(v3 + 432) = v0;

  if (v0)
  {
    v6 = UnsupportedSearchParametersFlowStrategy.executePatternAndManifest();
  }

  else
  {

    v6 = UnsupportedSearchParametersFlowStrategy.executePatternAndManifest();
  }

  return _swift_task_switch(v6, 0, 0);
}

{
  v13 = v0;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v3 = *(v0 + 288);
  v4 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_20_5(v4, static Logger.siriPhone);
  v5 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  OUTLINED_FUNCTION_87();
  if (OUTLINED_FUNCTION_86_0())
  {
    OUTLINED_FUNCTION_42();
    v12[0] = OUTLINED_FUNCTION_83();
    v12[1] = 0;
    OUTLINED_FUNCTION_19_46(4.8149e-34);
    v12[2] = 0xE000000000000000;

    DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v1, v2, 0xD00000000000001BLL, 0x80000000004633F0);

    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0, 0xE000000000000000, v12);
    OUTLINED_FUNCTION_63_1();
    *(v3 + 4) = v1;
    OUTLINED_FUNCTION_12(&dword_0, v6, v7, "#%s makeConfirmationPrompt: build yes no template..");
    OUTLINED_FUNCTION_3_7();
    OUTLINED_FUNCTION_35();
  }

  v10 = (**(v0 + 408) + class metadata base offset for SearchCallHistoryCATsSimple + 568);
  v11 = (*v10 + **v10);
  v8 = swift_task_alloc();
  *(v0 + 440) = v8;
  *v8 = v0;
  v8[1] = UnsupportedSearchParametersFlowStrategy.executePatternAndManifest();

  return v11();
}

{
  v1 = *(v0 + 368);
  v28 = *(v0 + 360);
  v2 = *(v0 + 352);
  v33 = *(v0 + 336);
  v34 = *(v0 + 328);
  v35 = *(v0 + 424);
  v3 = *(v0 + 288);
  *(v0 + 480) = 3;
  v4 = dispatch thunk of LabelExecutionResult.subscript.getter();
  v30 = v5;
  v31 = v4;
  swift_storeEnumTagMultiPayload();
  v6 = v3[6];
  v7 = v3[7];
  __swift_project_boxed_opaque_existential_1(v3 + 3, v6);
  (*(v7 + 8))(v6, v7);
  v29 = CommonDirectAction.toSAIntentGroupRunSiriKitExecutor(deviceState:)((v0 + 96));
  __swift_destroy_boxed_opaque_existential_1((v0 + 96));
  _s27PhoneCallFlowDelegatePlugin0A5ErrorOWOhTm_12(v2, type metadata accessor for CommonDirectAction);
  *(v0 + 481) = 0;
  v8 = dispatch thunk of LabelExecutionResult.subscript.getter();
  v27 = v9;
  swift_storeEnumTagMultiPayload();
  v10 = v3;
  v32 = v3;
  v11 = v3[6];
  v12 = v3[7];
  __swift_project_boxed_opaque_existential_1(v10 + 3, v11);
  (*(v12 + 8))(v11, v12);
  v13 = CommonDirectAction.toSAIntentGroupRunSiriKitExecutor(deviceState:)((v0 + 136));
  __swift_destroy_boxed_opaque_existential_1((v0 + 136));
  _s27PhoneCallFlowDelegatePlugin0A5ErrorOWOhTm_12(v2, type metadata accessor for CommonDirectAction);
  *(v0 + 224) = 0;
  *(v0 + 216) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  Loggable.init(wrappedValue:)();
  v14 = (v1 + *(v28 + 36));
  *v14 = 0xD000000000000011;
  v14[1] = 0x8000000000456DF0;
  *(v0 + 232) = v31;
  *(v0 + 240) = v30;
  Loggable.init(wrappedValue:)();
  type metadata accessor for SAIntentGroupRunSiriKitExecutor();
  v15 = v29;
  CodableAceObject.init(wrappedValue:)();
  *(v0 + 248) = v8;
  *(v0 + 256) = v27;
  Loggable.init(wrappedValue:)();
  v16 = v13;
  CodableAceObject.init(wrappedValue:)();
  *(v0 + 264) = 0;
  *(v0 + 272) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSSgGMd, &_s10SnippetKit8LoggableVySSSgGMR);
  Loggable.wrappedValue.setter();

  _s27PhoneCallFlowDelegatePlugin22YesNoConfirmationModelVWOcTm_1(v1, v33, type metadata accessor for YesNoConfirmationModel);
  swift_storeEnumTagMultiPayload();
  static DialogPhase.confirmation.getter();
  v17 = swift_task_alloc();
  *(v17 + 16) = v32;
  *(v17 + 24) = v1;
  OutputGenerationManifest.init(dialogPhase:_:)();

  v18 = *(v0 + 80);
  v19 = *(v0 + 88);
  __swift_project_boxed_opaque_existential_1((v0 + 56), v18);
  *(v0 + 200) = v34;
  *(v0 + 208) = _s27PhoneCallFlowDelegatePlugin0A5ErrorOACs0F0AAWlTm_14(&lazy protocol witness table cache variable for type PhoneSnippetDataModels and conformance PhoneSnippetDataModels, 255, type metadata accessor for PhoneSnippetDataModels, &protocol conformance descriptor for PhoneSnippetDataModels);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 176));
  _s27PhoneCallFlowDelegatePlugin22YesNoConfirmationModelVWOcTm_1(v33, boxed_opaque_existential_1, type metadata accessor for PhoneSnippetDataModels);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v21 = swift_allocObject();
  *(v0 + 464) = v21;
  *(v21 + 16) = xmmword_426260;
  *(v21 + 32) = v35;
  v22 = v35;
  v23 = swift_task_alloc();
  *(v0 + 472) = v23;
  *v23 = v0;
  v23[1] = UnsupportedSearchParametersFlowStrategy.executePatternAndManifest();
  v24 = *(v0 + 320);
  v25 = *(v0 + 280);

  return dispatch thunk of ResponseGenerating.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:)(v25, v0 + 176, v21, v24, v18, v19);
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

  __swift_destroy_boxed_opaque_existential_1((v2 + 176));
  v6 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_24_1();
  v1 = v0[53];
  v2 = v0[46];
  v3 = v0[42];
  v5 = v0[39];
  v4 = v0[40];
  v6 = v0[38];

  (*(v5 + 8))(v4, v6);
  _s27PhoneCallFlowDelegatePlugin0A5ErrorOWOhTm_12(v3, type metadata accessor for PhoneSnippetDataModels);
  _s27PhoneCallFlowDelegatePlugin0A5ErrorOWOhTm_12(v2, type metadata accessor for YesNoConfirmationModel);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);

  OUTLINED_FUNCTION_11();

  return v7();
}

{

  OUTLINED_FUNCTION_14_62();
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  OUTLINED_FUNCTION_11();

  return v1();
}

{

  OUTLINED_FUNCTION_14_62();
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  OUTLINED_FUNCTION_11();

  return v1();
}

uint64_t UnsupportedSearchParametersFlowStrategy.executePatternAndManifest()(uint64_t a1)
{
  OUTLINED_FUNCTION_28();
  v5 = v4;
  OUTLINED_FUNCTION_6();
  *v6 = v5;
  v7 = *v2;
  OUTLINED_FUNCTION_4_2();
  *v8 = v7;
  *(v5 + 448) = v1;

  if (v1)
  {
    v9 = UnsupportedSearchParametersFlowStrategy.executePatternAndManifest();
  }

  else
  {
    *(v5 + 456) = a1;
    v9 = UnsupportedSearchParametersFlowStrategy.executePatternAndManifest();
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t closure #1 in UnsupportedSearchParametersFlowStrategy.executePatternAndManifest()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  __chkstk_darwin(v3 - 8);
  v5 = &v8 - v4;
  OutputGenerationManifest.canUseServerTTS.setter();
  _s27PhoneCallFlowDelegatePlugin0aB17NLContextProviderC34makeGenericConfirmationNLv3Context07SiriKitC00F6UpdateVyFZSo8INIntentC_So0P8ResponseCTt0g5();
  _s27PhoneCallFlowDelegatePlugin0aB17NLContextProviderC019makeSDAForOfferReadB19HistoryConfirmation33_3C2ABB69DDB872D121E37A32A4E694A9LLSay12SiriNLUTypes0W29_Nlu_External_SystemDialogActVGSgyFZSo08INSearchbL6IntentC_So08INSearchbL14IntentResponseCTtg5();
  NLContextUpdate.nluSystemDialogActs.setter();
  v6 = type metadata accessor for NLContextUpdate();
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v6);
  OutputGenerationManifest.nlContextUpdate.setter();
  OutputGenerationManifest.listenAfterSpeaking.setter();
  type metadata accessor for YesNoConfirmationModel(0);

  return OutputGenerationManifest.responseViewId.setter();
}

uint64_t UnsupportedSearchParametersFlowStrategy.deinit()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));
  outlined destroy of SearchCallHistorySharedGlobals(v0 + 64);

  return v0;
}

uint64_t UnsupportedSearchParametersFlowStrategy.__deallocating_deinit()
{
  UnsupportedSearchParametersFlowStrategy.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for YesNoPromptFlowStrategy.makePromptForYesNoResponse() in conformance UnsupportedSearchParametersFlowStrategy(uint64_t a1)
{
  v6 = (*(*v1 + 192) + **(*v1 + 192));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = closure #2 in ActionableCallControlFlow.execute();

  return v6(a1);
}

uint64_t protocol witness for PromptForConfirmationFlowStrategyAsync.parseConfirmationResponse(input:) in conformance UnsupportedSearchParametersFlowStrategy(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 200) + **(*v2 + 200));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = closure #1 in ActionableCallControlFlow.execute();

  return v8(a1, a2);
}

uint64_t protocol witness for PromptForConfirmationFlowStrategyAsync.makePromptForConfirmation(itemToConfirm:) in conformance UnsupportedSearchParametersFlowStrategy(uint64_t a1)
{
  v6 = (*(*v1 + 176) + **(*v1 + 176));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = closure #1 in ActionableCallControlFlow.execute();

  return v6(a1);
}

uint64_t protocol witness for PromptForConfirmationFlowStrategyAsync.makeRepromptOnEmptyParse(itemToConfirm:) in conformance UnsupportedSearchParametersFlowStrategy(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  v4 = type metadata accessor for UnsupportedSearchParametersFlowStrategy();
  v6 = _s27PhoneCallFlowDelegatePlugin0A5ErrorOACs0F0AAWlTm_14(&lazy protocol witness table cache variable for type UnsupportedSearchParametersFlowStrategy and conformance UnsupportedSearchParametersFlowStrategy, v5, type metadata accessor for UnsupportedSearchParametersFlowStrategy, &protocol conformance descriptor for UnsupportedSearchParametersFlowStrategy);
  *v3 = v1;
  v3[1] = closure #1 in ActionableCallControlFlow.execute();

  return YesNoPromptFlowStrategy.makeRepromptOnEmptyParse(itemToConfirm:)(a1, v4, v6);
}

uint64_t protocol witness for PromptForConfirmationFlowStrategyAsync.makeRepromptOnLowConfidence(itemToConfirm:) in conformance UnsupportedSearchParametersFlowStrategy(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  v4 = type metadata accessor for UnsupportedSearchParametersFlowStrategy();
  v6 = _s27PhoneCallFlowDelegatePlugin0A5ErrorOACs0F0AAWlTm_14(&lazy protocol witness table cache variable for type UnsupportedSearchParametersFlowStrategy and conformance UnsupportedSearchParametersFlowStrategy, v5, type metadata accessor for UnsupportedSearchParametersFlowStrategy, &protocol conformance descriptor for UnsupportedSearchParametersFlowStrategy);
  *v3 = v1;
  v3[1] = closure #1 in ActionableCallControlFlow.execute();

  return YesNoPromptFlowStrategy.makeRepromptOnLowConfidence(itemToConfirm:)(a1, v4, v6);
}

uint64_t protocol witness for PromptForConfirmationFlowStrategyAsync.makeConfirmationRejectedResponse() in conformance UnsupportedSearchParametersFlowStrategy(uint64_t a1)
{
  v6 = (*(*v1 + 184) + **(*v1 + 184));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = closure #1 in ActionableCallControlFlow.execute();

  return v6(a1);
}

uint64_t _s27PhoneCallFlowDelegatePlugin0A5ErrorOACs0F0AAWlTm_14(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t _s27PhoneCallFlowDelegatePlugin22YesNoConfirmationModelVWOcTm_1(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s27PhoneCallFlowDelegatePlugin0A5ErrorOWOhTm_12(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id UpdateResponseCommand<>.asUpdateCommand(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21[0] = a3;
  v21[3] = a4;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = objc_allocWithZone(SAUIUpdateVisualResponseSnippet);
  v11 = [v10 init];
  UUID.init()();
  UUID.uuidString.getter();
  (*(v7 + 8))(v9, v6);
  v12 = String._bridgeToObjectiveC()();

  [v11 setAceId:v12];

  (*(a2 + 8))(a1, a2);
  v13 = String._bridgeToObjectiveC()();

  [v11 setViewId:v13];

  v14 = v21[1];
  updated = dispatch thunk of UpdateResponseCommand.serializeData()();
  if (v14)
  {
  }

  else
  {
    v17 = updated;
    v18 = v16;
    isa = Data._bridgeToObjectiveC()().super.isa;
    outlined consume of Data._Representation(v17, v18);
    [v11 setStateData:isa];
  }

  return v11;
}

void UpdateResponseCommand<>.submitUpdate(to:aceServiceInvoker:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v7 = UpdateResponseCommand<>.asUpdateCommand(for:)(a1, a2, a4, a5);
  if (!v5)
  {
    v8 = v7;
    __swift_project_boxed_opaque_existential_1(a3, a3[3]);
    AceServiceInvokerAsync.submitAndForget(_:)();
  }
}

BOOL SIRINLUUserDialogAct.isRejectedOrCancelled.getter()
{
  if (SIRINLUUserDialogAct.isRejected.getter())
  {
    return 1;
  }

  return SIRINLUUserDialogAct.isCancelled.getter();
}

uint64_t static UserFacingCallingAppUtils.getAppBundleId(preferredCallProvider:deviceState:)(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  if (dispatch thunk of DeviceState.isPad.getter() & 1) != 0 || (OUTLINED_FUNCTION_22_12(), (dispatch thunk of DeviceState.isPod.getter()) || (OUTLINED_FUNCTION_22_12(), (dispatch thunk of DeviceState.isXRDevice.getter()) || (OUTLINED_FUNCTION_22_12(), (dispatch thunk of DeviceState.isAppleTV.getter()))
  {
    v3 = 0x80000000004574F0;
    v4 = 0xD000000000000012;
  }

  else
  {
    OUTLINED_FUNCTION_22_12();
    if (dispatch thunk of DeviceState.isMac.getter())
    {
      if (one-time initialization token for macFaceTimeBundleId != -1)
      {
        swift_once();
      }

      v4 = static PhoneCallAppNameConstants.macFaceTimeBundleId;
      v3 = *algn_599C28;
      swift_bridgeObjectRetain_n();
    }

    else
    {
      OUTLINED_FUNCTION_22_12();
      v11 = dispatch thunk of DeviceState.isWatch.getter();
      v12 = 0x8000000000452BD0;
      v13 = 0xD000000000000015;
      if (a1 == 2)
      {
        v13 = 0xD000000000000012;
        v12 = 0x80000000004574F0;
      }

      if (v11)
      {
        v4 = 0xD000000000000013;
      }

      else
      {
        v4 = v13;
      }

      if (v11)
      {
        v3 = 0x800000000045B720;
      }

      else
      {
        v3 = v12;
      }
    }
  }

  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.siriPhone);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v8 = 136315394;
    *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000032, 0x8000000000463410, &v14);
    *(v8 + 12) = 2080;
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v3, &v14);

    *(v8 + 14) = v9;
    _os_log_impl(&dword_0, v6, v7, "#UserFacingCallingAppUtils %s --> %s", v8, 0x16u);
    swift_arrayDestroy();

    OUTLINED_FUNCTION_52();
  }

  else
  {
  }

  return v4;
}

uint64_t static UserFacingCallingAppUtils.getCommAppForLaunch(originalApp:preferredCallProvider:deviceState:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (App.isFirstParty()())
  {
    static UserFacingCallingAppUtils.getAppBundleId(preferredCallProvider:deviceState:)(a2, a3);
    type metadata accessor for App();
    a1 = App.__allocating_init(appIdentifier:)();
  }

  else
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Logger.siriPhone);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_0, v7, v8, "#UserFacingCallingAppUtils Not a 1P app, returning original app", v9, 2u);
      OUTLINED_FUNCTION_52();
    }
  }

  v10 = one-time initialization token for siriPhone;

  if (v10 != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Logger.siriPhone);

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v14 = 136315394;
    *(v14 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000043, 0x8000000000463450, &v20);
    *(v14 + 12) = 2080;
    type metadata accessor for App();
    lazy protocol witness table accessor for type App and conformance App();
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;

    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v17, &v20);

    *(v14 + 14) = v18;
    _os_log_impl(&dword_0, v12, v13, "#UserFacingCallingAppUtils %s --> %s", v14, 0x16u);
    swift_arrayDestroy();

    OUTLINED_FUNCTION_52();
  }

  else
  {
  }

  return a1;
}

uint64_t UsoEntity_common_Person.getRedactCommonPerson()(uint64_t a1)
{
  v3 = v1;
  if (!dispatch thunk of UsoEntity_common_Person.specifyingContactAddress.getter())
  {
    goto LABEL_12;
  }

  v4 = dispatch thunk of UsoEntity_common_Person.name.getter();
  specialized Optional<A>.isNilOrEmpty.getter(v4, v5);
  OUTLINED_FUNCTION_20_2();
  if (v2)
  {
    goto LABEL_3;
  }

  CodeGenBase.entity.getter();
  type metadata accessor for UsoEntity_common_PhoneNumber();
  static UsoEntity_CodeGenConverter.convertAs<A>(entity:asType:)();

  if (!v18)
  {

    goto LABEL_12;
  }

  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.siriPhone);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 136315138;
    v18 = 0;
    v19 = v10;
    DefaultStringInterpolation.appendInterpolation(type:tags:function:)(&type metadata for String, &outlined read-only object #0 of UsoEntity_common_Person.getRedactCommonPerson(), 0, 0);
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0, 0xE000000000000000, &v19);

    *(v9 + 4) = v11;
    _os_log_impl(&dword_0, v7, v8, "%s needs to clean uso person that has both request name and request handle", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    OUTLINED_FUNCTION_26_0(v10);
    OUTLINED_FUNCTION_26_0(v9);
  }

  type metadata accessor for UsoEntityBuilder_common_Person();
  swift_allocObject();
  UsoEntityBuilder_common_Person.init()();
  type metadata accessor for UsoEntityBuilder_common_ContactAddress();
  swift_allocObject();
  UsoEntityBuilder_common_ContactAddress.init()();
  CodeGenBase.entity.getter();

  static UsoBuilderConversionUtils.copyEntityDataToEntityBuilder(entityBuilder:entity:copyValueType:copyIdentifiers:copyUtteranceAlignments:)();

  dispatch thunk of UsoEntityBuilder_common_Person.setSpecifyingContactAddress(value:)();

  static UsoBuilderConversionUtils.convertEntityBuilderToEntity(entityBuilder:)();
  type metadata accessor for UsoEntity_common_Person();
  static UsoEntity_CodeGenConverter.convertAs<A>(entity:asType:)();
  if (!v18)
  {
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v15 = 136315138;
      v19 = v17;
      DefaultStringInterpolation.appendInterpolation(type:tags:function:)(&type metadata for String, &outlined read-only object #0 of UsoEntity_common_Person.getRedactCommonPerson(), 0, 0);
      v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0, 0xE000000000000000, &v19);

      *(v15 + 4) = v16;
      _os_log_impl(&dword_0, v13, v14, "%s can't create a new entity, returns the current one", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v17);
      OUTLINED_FUNCTION_26_0(v17);
      OUTLINED_FUNCTION_26_0(v15);
    }

LABEL_3:

LABEL_12:

    return v3;
  }

  return v18;
}

Swift::Bool __swiftcall UsoContactConvertible.isNameLikelyNonBusiness()()
{
  OUTLINED_FUNCTION_66();
  v2 = v1;
  v4 = v3;
  v5 = type metadata accessor for IndexSet.RangeView();
  OUTLINED_FUNCTION_7();
  v203 = v6;
  __chkstk_darwin(v7);
  OUTLINED_FUNCTION_4();
  v10 = v9 - v8;
  v206 = type metadata accessor for PayloadAttachmentInfo.AttachmentType();
  OUTLINED_FUNCTION_7();
  v202 = v11;
  __chkstk_darwin(v12);
  OUTLINED_FUNCTION_5_4();
  v208 = v13;
  v212 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSg_AFtMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSg_AFtMR);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v14);
  v218 = &v183 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology21PayloadAttachmentInfoVSgMd, &_s12SiriOntology21PayloadAttachmentInfoVSgMR);
  OUTLINED_FUNCTION_21(v16);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v17);
  v214 = &v183 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
  v20 = OUTLINED_FUNCTION_21(v19);
  __chkstk_darwin(v20);
  OUTLINED_FUNCTION_12_5();
  v213 = v21 - v22;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v23);
  OUTLINED_FUNCTION_13_5();
  v210 = v24;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v25);
  OUTLINED_FUNCTION_91();
  v220 = v26;
  OUTLINED_FUNCTION_15_0();
  v217 = type metadata accessor for SpanProperty();
  OUTLINED_FUNCTION_7();
  v219 = v27;
  __chkstk_darwin(v28);
  OUTLINED_FUNCTION_12_5();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v29);
  OUTLINED_FUNCTION_13_5();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v30);
  OUTLINED_FUNCTION_91();
  v211 = v31;
  OUTLINED_FUNCTION_15_0();
  v222 = type metadata accessor for UsoEntitySpan();
  OUTLINED_FUNCTION_7();
  v216 = v32;
  __chkstk_darwin(v33);
  OUTLINED_FUNCTION_5_4();
  v223 = v34;
  OUTLINED_FUNCTION_15_0();
  v205 = type metadata accessor for IndexSet();
  OUTLINED_FUNCTION_7();
  v204 = v35;
  __chkstk_darwin(v36);
  OUTLINED_FUNCTION_5_4();
  v209 = v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology13UtteranceSpanVSgMd, &_s12SiriOntology13UtteranceSpanVSgMR);
  v39 = OUTLINED_FUNCTION_21(v38);
  __chkstk_darwin(v39);
  OUTLINED_FUNCTION_12_5();
  v42 = v40 - v41;
  __chkstk_darwin(v43);
  v45 = &v183 - v44;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology18UtteranceAlignmentVSgMd, &_s12SiriOntology18UtteranceAlignmentVSgMR);
  OUTLINED_FUNCTION_21(v46);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v47);
  v49 = &v183 - v48;
  v221 = type metadata accessor for UtteranceAlignment();
  OUTLINED_FUNCTION_7();
  v215 = v50;
  __chkstk_darwin(v51);
  OUTLINED_FUNCTION_4();
  v54 = v53 - v52;
  v55 = v0;
  v224 = v4;
  v56 = OUTLINED_FUNCTION_31_31();
  v58 = v57(v56);
  if (!v59)
  {
    goto LABEL_10;
  }

  v60 = HIBYTE(v59) & 0xF;
  if ((v59 & 0x2000000000000000) == 0)
  {
    v60 = v58 & 0xFFFFFFFFFFFFLL;
  }

  if (!v60)
  {

LABEL_10:
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v68 = type metadata accessor for Logger();
    __swift_project_value_buffer(v68, static Logger.siriPhone);
    v69 = Logger.logObject.getter();
    v70 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v229 = v72;
      *v71 = 136315138;
      v225 = 0;
      v226 = 0xE000000000000000;
      DefaultStringInterpolation.appendInterpolation(type:tags:function:)(&type metadata for String, &outlined read-only object #0 of UsoContactConvertible.isNameLikelyNonBusiness(), 0xD000000000000019, 0x800000000045CCA0);
      v73 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v225, v226, &v229);

      *(v71 + 4) = v73;
      _os_log_impl(&dword_0, v69, v70, "%s -  Name is nil or empty, returning false", v71, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v72);
      OUTLINED_FUNCTION_26_0(v72);
      OUTLINED_FUNCTION_26_0(v71);
    }

    goto LABEL_15;
  }

  v200 = v58;
  v201 = v59;
  v199 = v10;
  v61 = OUTLINED_FUNCTION_31_31();
  v63 = UsoContactConvertible.nameSpans.getter(v61, v62)[2];

  if (!v63)
  {
    OUTLINED_FUNCTION_34_30();
    goto LABEL_15;
  }

  v64 = OUTLINED_FUNCTION_31_31();
  v66 = UsoContactConvertible.utteranceAlignment.getter(v64, v65);
  specialized Collection.first.getter(v66);

  v67 = v221;
  OUTLINED_FUNCTION_9_40(v49, 1, v221);
  if (v102)
  {
    OUTLINED_FUNCTION_34_30();
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v49, &_s12SiriOntology18UtteranceAlignmentVSgMd, &_s12SiriOntology18UtteranceAlignmentVSgMR);
LABEL_15:
    OUTLINED_FUNCTION_65();
    return v74;
  }

  v189 = v5;
  v75 = v215;
  (*(v215 + 32))(v54, v49, v67);
  OUTLINED_FUNCTION_31_31();
  UsoContactConvertible.hasFullBusinessNameProperty.getter();
  if (v76)
  {
    OUTLINED_FUNCTION_34_30();
    (*(v75 + 8))(v54, v67);
    goto LABEL_15;
  }

  v77 = UtteranceAlignment.spans.getter();
  specialized Collection.first.getter(v77);

  v78 = type metadata accessor for UtteranceSpan();
  OUTLINED_FUNCTION_9_40(v45, 1, v78);
  if (v102)
  {
LABEL_23:
    OUTLINED_FUNCTION_34_30();
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v45, &_s12SiriOntology13UtteranceSpanVSgMd, &_s12SiriOntology13UtteranceSpanVSgMR);
    (*(v215 + 8))(v54, v221);
    goto LABEL_15;
  }

  v79 = UtteranceSpan.startIndex.getter();
  OUTLINED_FUNCTION_40();
  v81 = *(v80 + 8);
  v81(v45, v78);
  v82 = UtteranceAlignment.spans.getter();
  specialized Collection.first.getter(v82);

  OUTLINED_FUNCTION_9_40(v42, 1, v78);
  if (v102)
  {
    v45 = v42;
    goto LABEL_23;
  }

  v186 = v54;
  v83 = UtteranceSpan.endIndex.getter();
  LOBYTE(v74) = (v81)(v42, v78);
  if (v83 < v79)
  {
    goto LABEL_94;
  }

  v185 = v79;
  IndexSet.init(integersIn:)();
  v84 = v224;
  v85 = OUTLINED_FUNCTION_31_31();
  v184 = v55;
  v198 = UsoContactConvertible.nameSpans.getter(v85, v86);
  v87 = v206;
  v88 = v210;
  v89 = v223;
  v195 = v198[2];
  if (!v195)
  {
LABEL_78:

    v151 = v199;
    v152 = IndexSet.rangeView.getter();
    __chkstk_darwin(v152);
    *(&v183 - 12) = v84;
    *(&v183 - 11) = v2;
    v153 = v201;
    *(&v183 - 10) = v200;
    *(&v183 - 9) = v153;
    *(&v183 - 16) = v185;
    *(&v183 - 7) = &type metadata for String;
    *(&v183 - 6) = &outlined read-only object #0 of UsoContactConvertible.isNameLikelyNonBusiness();
    *(&v183 - 5) = 0;
    *(&v183 - 4) = 0;
    v154 = v186;
    v155 = v184;
    *(&v183 - 3) = v186;
    *(&v183 - 2) = v155;
    v156 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF10Foundation8IndexSetV9RangeViewV_SnySS0E0VGs5NeverOTg5(partial apply for closure #1 in UsoContactConvertible.isNameLikelyNonBusiness());
    (*(v203 + 8))(v151, v189);
    v157 = v156[2];
    if (v157)
    {
      v225 = _swiftEmptyArrayStorage;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v157, 0);
      v158 = v225;
      v224 = v156;
      v159 = v156 + 5;
      do
      {
        v160 = String.subscript.getter();
        v162 = v161;
        v164 = v163;
        v166 = v165;
        v225 = v158;
        v168 = v158[2];
        v167 = v158[3];
        if (v168 >= v167 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v167 > 1, v168 + 1, 1);
          v158 = v225;
        }

        v159 += 2;
        v158[2] = v168 + 1;
        v169 = &v158[4 * v168];
        v169[4] = v160;
        v169[5] = v162;
        v169[6] = v164;
        v169[7] = v166;
        --v157;
      }

      while (v157);

      v170 = v205;
      v154 = v186;
    }

    else
    {

      v158 = _swiftEmptyArrayStorage;
      v170 = v205;
    }

    v225 = v158;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySsGMd, &_sSaySsGMR);
    lazy protocol witness table accessor for type [Substring] and conformance [A]();
    lazy protocol witness table accessor for type Substring and conformance Substring();
    v171 = Sequence<>.joined(separator:)();
    v173 = v172;

    v174 = HIBYTE(v173) & 0xF;
    v225 = v171;
    v226 = v173;
    if ((v173 & 0x2000000000000000) == 0)
    {
      v174 = v171 & 0xFFFFFFFFFFFFLL;
    }

    v227 = 0;
    v228 = v174;
    v175 = v215;
    do
    {
      if (!String.Iterator.next()().value._object)
      {
        break;
      }

      v176 = Character.isWhitespace.getter();
    }

    while ((v176 & 1) != 0);

    v177 = OUTLINED_FUNCTION_32_27();
    v178(v177, v170);
    (*(v175 + 8))(v154, v221);
    goto LABEL_15;
  }

  v90 = 0;
  OUTLINED_FUNCTION_19_1();
  v194 = v198 + v91;
  v193 = v92 + 16;
  v197 = v219 + 16;
  v196 = v219 + 8;
  v191 = enum case for PayloadAttachmentInfo.AttachmentType.full(_:);
  v190 = v202 + 104;
  v187 = v202 + 32;
  v188 = (v202 + 8);
  v192 = v92 + 8;
  v93 = &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd;
  while (v90 < v198[2])
  {
    (*(v216 + 16))(v89, &v194[*(v216 + 72) * v90], v222);
    v94 = UsoEntitySpan.properties.getter();
    v95 = v214;
    if (*(v94 + 16))
    {
      OUTLINED_FUNCTION_6_95();
      v96 = v211;
      v97 = OUTLINED_FUNCTION_11_69();
      v98(v97);

      SpanProperty.key.getter();
      v99 = OUTLINED_FUNCTION_4_93();
      v100(v99);
      OUTLINED_FUNCTION_18_25();
      v102 = v78 == (v101 & 0xFFFFFFFFFFFFLL | 0x614E000000000000) && v96 == 0xEA0000000000656DLL;
      if (v102)
      {
LABEL_51:
        v93 = &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd;
LABEL_52:

        goto LABEL_53;
      }

      _stringCompareWithSmolCheck(_:_:expecting:)();
      OUTLINED_FUNCTION_20_2();
      v89 = v223;
      v93 = &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd;
      if (v78)
      {
        goto LABEL_53;
      }
    }

    else
    {
    }

    if (*(UsoEntitySpan.properties.getter() + 16))
    {
      OUTLINED_FUNCTION_6_95();
      OUTLINED_FUNCTION_39_30();
      v103 = OUTLINED_FUNCTION_11_69();
      v104(v103);

      SpanProperty.key.getter();
      v105 = OUTLINED_FUNCTION_4_93();
      v106(v105);
      OUTLINED_FUNCTION_18_25();
      if (v78 == (v107 & 0xFFFFFFFFFFFFLL | 0x7250000000000000) && v93 == 0xEC00000078696665)
      {
        goto LABEL_51;
      }

      _stringCompareWithSmolCheck(_:_:expecting:)();
      OUTLINED_FUNCTION_20_2();
      v89 = v223;
      v93 = &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd;
      if (v78)
      {
        goto LABEL_53;
      }
    }

    else
    {
    }

    if (*(UsoEntitySpan.properties.getter() + 16))
    {
      OUTLINED_FUNCTION_6_95();
      v109 = v207;
      v110 = OUTLINED_FUNCTION_11_69();
      v111(v110);

      SpanProperty.key.getter();
      v112 = OUTLINED_FUNCTION_4_93();
      v113(v112);
      OUTLINED_FUNCTION_18_25();
      if (v78 == (v115 & 0xFFFFFFFFFFFFLL | 0x7553000000000000) && v109 == v114)
      {
        goto LABEL_51;
      }

      _stringCompareWithSmolCheck(_:_:expecting:)();
      OUTLINED_FUNCTION_20_2();
      v89 = v223;
      v93 = &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd;
      if (v78)
      {
        goto LABEL_53;
      }
    }

    else
    {
    }

    v147 = UsoEntitySpan.label.getter();
    if (!v148)
    {
      goto LABEL_77;
    }

    if (v147 == 0x75466E6F73726570 && v148 == 0xEE00656D614E6C6CLL)
    {
      goto LABEL_52;
    }

    OUTLINED_FUNCTION_18_25();
    _stringCompareWithSmolCheck(_:_:expecting:)();
    OUTLINED_FUNCTION_20_2();
    if ((v78 & 1) == 0)
    {
      goto LABEL_77;
    }

LABEL_53:
    UsoEntitySpan.payloadAttachmentInfo.getter();
    v117 = type metadata accessor for PayloadAttachmentInfo();
    OUTLINED_FUNCTION_9_40(v95, 1, v117);
    v202 = v90;
    if (v102)
    {
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v95, &_s12SiriOntology21PayloadAttachmentInfoVSgMd, &_s12SiriOntology21PayloadAttachmentInfoVSgMR);
      v122 = v220;
      OUTLINED_FUNCTION_28_31();
      __swift_storeEnumTagSinglePayload(v118, v119, v120, v121);
    }

    else
    {
      v122 = v220;
      PayloadAttachmentInfo.attachmentType.getter();
      OUTLINED_FUNCTION_40();
      (*(v123 + 8))(v95, v117);
    }

    v78 = v213;
    OUTLINED_FUNCTION_30_0();
    v124(v88, v191, v87);
    OUTLINED_FUNCTION_28_31();
    __swift_storeEnumTagSinglePayload(v125, v126, v127, v128);
    v129 = *(v212 + 48);
    v130 = v218;
    outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(v122, v218, v93, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
    outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(v88, v130 + v129, v93, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
    OUTLINED_FUNCTION_9_40(v130, 1, v87);
    if (v102)
    {
      v133 = v88;
      OUTLINED_FUNCTION_46_29(v88);
      v131 = v122;
      v132 = v93;
      OUTLINED_FUNCTION_46_29(v131);
      OUTLINED_FUNCTION_9_40(v130 + v129, 1, v87);
      v90 = v202;
      if (v102)
      {
        outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v130, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
LABEL_91:
        OUTLINED_FUNCTION_34_30();

        OUTLINED_FUNCTION_30_0();
        v179(v223, v222);
        v180 = OUTLINED_FUNCTION_32_27();
        v181(v180, v205);
        (*(v215 + 8))(v186, v221);
        goto LABEL_15;
      }
    }

    else
    {
      v133 = v88;
      OUTLINED_FUNCTION_23_44();
      outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(v134, v135, v136, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
      OUTLINED_FUNCTION_9_40(v130 + v129, 1, v87);
      if (!v137)
      {
        OUTLINED_FUNCTION_30_0();
        v139 = v130 + v129;
        v140 = v208;
        v141(v208, v139, v87);
        OUTLINED_FUNCTION_14_63();
        lazy protocol witness table accessor for type PayloadAttachmentInfo.AttachmentType and conformance PayloadAttachmentInfo.AttachmentType(&lazy protocol witness table cache variable for type PayloadAttachmentInfo.AttachmentType and conformance PayloadAttachmentInfo.AttachmentType, v142, &protocol conformance descriptor for PayloadAttachmentInfo.AttachmentType);
        v143 = dispatch thunk of static Equatable.== infix(_:_:)();
        v144 = v78;
        v78 = *v188;
        (*v188)(v140, v87);
        outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v210, v93, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
        outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v220, v93, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
        v145 = v144;
        v88 = v210;
        (v78)(v145, v87);
        outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v218, v93, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
        v90 = v202;
        if (v143)
        {
          goto LABEL_91;
        }

        goto LABEL_66;
      }

      OUTLINED_FUNCTION_46_29(v88);
      v132 = v93;
      OUTLINED_FUNCTION_46_29(v220);
      OUTLINED_FUNCTION_30_0();
      v138(v78, v87);
      v90 = v202;
    }

    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v130, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSg_AFtMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSg_AFtMR);
    v88 = v133;
    v93 = v132;
LABEL_66:
    v89 = v223;
    v146 = UsoEntitySpan.startIndex.getter();
    if ((v146 & 0x100000000) == 0)
    {
      v78 = v146;
      v74 = UsoEntitySpan.endIndex.getter();
      if ((v74 & 0x100000000) == 0)
      {
        if (v74 < v78)
        {
          goto LABEL_93;
        }

        IndexSet.remove(integersIn:)();
      }
    }

LABEL_77:
    ++v90;
    OUTLINED_FUNCTION_30_0();
    LOBYTE(v74) = v150(v89, v222);
    v84 = v224;
    if (v195 == v90)
    {
      goto LABEL_78;
    }
  }

  __break(1u);
LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
  return v74;
}

void UsoContactConvertible.emergencyType.getter()
{
  OUTLINED_FUNCTION_66();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v213 = type metadata accessor for IdentifierValue();
  OUTLINED_FUNCTION_7();
  v206 = v7;
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_5_4();
  v212 = v9;
  OUTLINED_FUNCTION_15_0();
  v10 = type metadata accessor for IdentifierNamespace();
  OUTLINED_FUNCTION_7();
  v207 = v11;
  __chkstk_darwin(v12);
  OUTLINED_FUNCTION_5_4();
  v217 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology19IdentifierNamespaceOSg_ADtMd, &_s12SiriOntology19IdentifierNamespaceOSg_ADtMR);
  OUTLINED_FUNCTION_23_1();
  __chkstk_darwin(v15);
  OUTLINED_FUNCTION_12_5();
  v18 = v16 - v17;
  __chkstk_darwin(v19);
  v21 = &v205 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology19IdentifierNamespaceOSgMd, &_s12SiriOntology19IdentifierNamespaceOSgMR);
  v23 = OUTLINED_FUNCTION_21(v22);
  __chkstk_darwin(v23);
  OUTLINED_FUNCTION_12_5();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v24);
  OUTLINED_FUNCTION_13_5();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v25);
  OUTLINED_FUNCTION_13_5();
  v232 = v26;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v27);
  OUTLINED_FUNCTION_13_5();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v28);
  OUTLINED_FUNCTION_78_9();
  __chkstk_darwin(v29);
  OUTLINED_FUNCTION_91();
  *&v219 = v30;
  OUTLINED_FUNCTION_15_0();
  v31 = type metadata accessor for UsoIdentifier();
  OUTLINED_FUNCTION_7();
  v33 = v32;
  __chkstk_darwin(v34);
  OUTLINED_FUNCTION_12_5();
  v236 = v35 - v36;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v37);
  OUTLINED_FUNCTION_91();
  v235 = v38;
  v208 = v6;
  v210 = v4;
  v209 = v2;
  v39 = UsoContactConvertible.nameIdentifiers.getter(v6, v4)[2];
  v234 = v14;
  v220 = v18;
  v229 = v33;
  v230 = v31;
  if (v39)
  {
    v231 = v0;
    v41 = *(v33 + 16);
    v40 = v33 + 16;
    v227 = v41;
    OUTLINED_FUNCTION_19_1();
    v205 = v42;
    v44 = v42 + v43;
    v226 = *(v40 + 56);
    v225 = (v207 + 104);
    v211 = v207 + 32;
    v214 = (v207 + 8);
    v233 = _swiftEmptyArrayStorage;
    v228 = v40;
    v224 = (v40 - 8);
    v223 = enum case for IdentifierNamespace.nsEmergencyOrganization(_:);
    OUTLINED_FUNCTION_39_30();
    while (1)
    {
      (v227)(v235, v44, v31);
      UsoIdentifier.namespaceSemantic.getter();
      v45 = v231;
      (*v225)(v231, v223, v10);
      OUTLINED_FUNCTION_28_31();
      __swift_storeEnumTagSinglePayload(v46, v47, v48, v49);
      v50 = *(v234 + 48);
      outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(v14, v21, &_s12SiriOntology19IdentifierNamespaceOSgMd, &_s12SiriOntology19IdentifierNamespaceOSgMR);
      outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(v45, &v21[v50], &_s12SiriOntology19IdentifierNamespaceOSgMd, &_s12SiriOntology19IdentifierNamespaceOSgMR);
      OUTLINED_FUNCTION_37_0(v21);
      if (v60)
      {
        break;
      }

      outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(v21, v215, &_s12SiriOntology19IdentifierNamespaceOSgMd, &_s12SiriOntology19IdentifierNamespaceOSgMR);
      OUTLINED_FUNCTION_37_0(&v21[v50]);
      if (v60)
      {
        OUTLINED_FUNCTION_17_57();
        outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v61, v62, v63);
        OUTLINED_FUNCTION_17_57();
        outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v64, v65, v66);
        OUTLINED_FUNCTION_30_0();
        v67 = OUTLINED_FUNCTION_42_12();
        v68(v67);
        v31 = v230;
LABEL_11:
        outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v21, &_s12SiriOntology19IdentifierNamespaceOSg_ADtMd, &_s12SiriOntology19IdentifierNamespaceOSg_ADtMR);
        goto LABEL_12;
      }

      OUTLINED_FUNCTION_30_0();
      v69 = OUTLINED_FUNCTION_40_30();
      v70(v69);
      OUTLINED_FUNCTION_13_64();
      v72 = lazy protocol witness table accessor for type PayloadAttachmentInfo.AttachmentType and conformance PayloadAttachmentInfo.AttachmentType(&lazy protocol witness table cache variable for type IdentifierNamespace and conformance IdentifierNamespace, v71, &protocol conformance descriptor for IdentifierNamespace);
      LODWORD(v222) = OUTLINED_FUNCTION_33_29(v72);
      v73 = *v214;
      OUTLINED_FUNCTION_39_30();
      v73();
      OUTLINED_FUNCTION_17_57();
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v74, v75, v76);
      OUTLINED_FUNCTION_17_57();
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v77, v78, v79);
      v80 = OUTLINED_FUNCTION_42_12();
      (v73)(v80);
      OUTLINED_FUNCTION_17_57();
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v81, v82, v83);
      v31 = v230;
      if (v222)
      {
        goto LABEL_14;
      }

LABEL_12:
      (*v224)(v235, v31);
LABEL_19:
      v44 += v226;
      if (!--v39)
      {

        v18 = v220;
        goto LABEL_22;
      }
    }

    OUTLINED_FUNCTION_17_57();
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v51, v52, v53);
    OUTLINED_FUNCTION_17_57();
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v54, v55, v56);
    OUTLINED_FUNCTION_37_0(&v21[v50]);
    if (v60)
    {
      OUTLINED_FUNCTION_17_57();
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v57, v58, v59);
LABEL_14:
      v84 = UsoIdentifier.value.getter();
      v221 = v85;
      v222 = v84;
      v86 = v233;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v93 = OUTLINED_FUNCTION_92_0();
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v93, v94, v95, v86);
        v86 = v96;
      }

      v14 = v86[2];
      v87 = v86[3];
      v88 = v86;
      if (v14 >= v87 >> 1)
      {
        v97 = OUTLINED_FUNCTION_3_62(v87);
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v97, v98, v99, v86);
        v88 = v100;
      }

      v89 = v230;
      (*v224)(v235, v230);
      v88[2] = v14 + 1;
      v90 = v88;
      v31 = v89;
      v233 = v90;
      v91 = &v90[2 * v14];
      v92 = v221;
      v91[4] = v222;
      v91[5] = v92;
      OUTLINED_FUNCTION_39_30();
      goto LABEL_19;
    }

    goto LABEL_11;
  }

  v233 = _swiftEmptyArrayStorage;
LABEL_22:
  v101 = UsoContactConvertible.nameIdentifiers.getter(v208, v210)[2];
  v102 = v218;
  if (v101)
  {
    v235 = *(v229 + 16);
    OUTLINED_FUNCTION_19_1();
    v214 = v103;
    v105 = v103 + v104;
    v231 = *(v106 + 56);
    LODWORD(v228) = enum case for IdentifierNamespace.nsPhoneCallContactName(_:);
    v222 = v107 + 32;
    v225 = (v107 + 8);
    v226 = v106 - 8;
    v227 = (v107 + 104);
    v224 = (v206 + 88);
    v223 = enum case for IdentifierValue.vEmergencyServices(_:);
    LODWORD(v221) = enum case for IdentifierValue.vEmergencyContact(_:);
    v215 = v206 + 8;
    v219 = xmmword_425000;
    v229 = v106;
    while (1)
    {
      v235(v236, v105, v31);
      v108 = v232;
      UsoIdentifier.namespaceSemantic.getter();
      (*v227)(v102, v228, v10);
      OUTLINED_FUNCTION_28_31();
      __swift_storeEnumTagSinglePayload(v109, v110, v111, v112);
      v113 = *(v234 + 48);
      outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(v108, v18, &_s12SiriOntology19IdentifierNamespaceOSgMd, &_s12SiriOntology19IdentifierNamespaceOSgMR);
      outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(v102, v18 + v113, &_s12SiriOntology19IdentifierNamespaceOSgMd, &_s12SiriOntology19IdentifierNamespaceOSgMR);
      OUTLINED_FUNCTION_37_0(v18);
      if (v60)
      {
        break;
      }

      outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(v18, v216, &_s12SiriOntology19IdentifierNamespaceOSgMd, &_s12SiriOntology19IdentifierNamespaceOSgMR);
      OUTLINED_FUNCTION_37_0(v18 + v113);
      if (v120)
      {
        v102 = v218;
        OUTLINED_FUNCTION_23_44();
        outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v121, v122, v123);
        OUTLINED_FUNCTION_23_44();
        outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v124, v125, v126);
        v127 = OUTLINED_FUNCTION_42_12();
        v128(v127);
        v31 = v230;
LABEL_32:
        outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v18, &_s12SiriOntology19IdentifierNamespaceOSg_ADtMd, &_s12SiriOntology19IdentifierNamespaceOSg_ADtMR);
        goto LABEL_33;
      }

      v131 = OUTLINED_FUNCTION_40_30();
      v132(v131);
      OUTLINED_FUNCTION_13_64();
      v134 = lazy protocol witness table accessor for type PayloadAttachmentInfo.AttachmentType and conformance PayloadAttachmentInfo.AttachmentType(&lazy protocol witness table cache variable for type IdentifierNamespace and conformance IdentifierNamespace, v133, &protocol conformance descriptor for IdentifierNamespace);
      v135 = OUTLINED_FUNCTION_33_29(v134);
      v136 = *v225;
      (*v225)(&_s12SiriOntology19IdentifierNamespaceOSgMR, v10);
      v102 = v218;
      OUTLINED_FUNCTION_23_44();
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v137, v138, v139);
      OUTLINED_FUNCTION_23_44();
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v140, v141, v142);
      v143 = OUTLINED_FUNCTION_42_12();
      (v136)(v143);
      v18 = v220;
      OUTLINED_FUNCTION_23_44();
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v144, v145, v146);
      v31 = v230;
      if (v135)
      {
        goto LABEL_35;
      }

LABEL_33:
      v129 = OUTLINED_FUNCTION_8_86();
      v130(v129);
LABEL_49:
      v105 += v231;
      if (!--v101)
      {
        goto LABEL_50;
      }
    }

    OUTLINED_FUNCTION_23_44();
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v114, v115, v116);
    OUTLINED_FUNCTION_23_44();
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v117, v118, v119);
    OUTLINED_FUNCTION_37_0(v18 + v113);
    if (v60)
    {
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v18, &_s12SiriOntology19IdentifierNamespaceOSgMd, &_s12SiriOntology19IdentifierNamespaceOSgMR);
LABEL_35:
      v147 = v212;
      v148 = v236;
      UsoIdentifier.valueSemantic.getter();
      v149 = (*v224)(v147, v213);
      if (v149 == v223)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v163 = OUTLINED_FUNCTION_92_0();
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v163, v164, v165, v166);
          v233 = v167;
        }

        OUTLINED_FUNCTION_36_31();
        if (v151)
        {
          v168 = OUTLINED_FUNCTION_3_62(v150);
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v168, v169, v170, v233);
          v233 = v171;
        }

        v152 = OUTLINED_FUNCTION_8_86();
        v153(v152);
        v154 = v233;
        v233[2] = v148;
        *&v154[2 * v147 + 4] = v219;
      }

      else if (v149 == v221)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v172 = OUTLINED_FUNCTION_92_0();
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v172, v173, v174, v175);
          v233 = v176;
        }

        OUTLINED_FUNCTION_36_31();
        if (v151)
        {
          v177 = OUTLINED_FUNCTION_3_62(v155);
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v177, v178, v179, v233);
          v233 = v180;
        }

        v156 = OUTLINED_FUNCTION_8_86();
        v157(v156);
        v158 = v233;
        v233[2] = v148;
        v159 = &v158[2 * v147];
        v159[4] = 0;
        v159[5] = 0;
      }

      else
      {
        v160 = OUTLINED_FUNCTION_8_86();
        v161(v160);
        OUTLINED_FUNCTION_30_0();
        v162(v212, v213);
      }

      v18 = v220;
      goto LABEL_49;
    }

    goto LABEL_32;
  }

LABEL_50:

  v181 = v233;
  if ((*(v210 + 40))(v208))
  {
    CodeGenBase.entity.getter();
  }

  type metadata accessor for UsoEntity_common_PhoneNumber();
  static UsoEntity_CodeGenConverter.convertAs<A>(entity:asType:)();

  if (v237)
  {

    UsoEntity_common_PhoneNumber.tags.getter();
    v183 = v182;
  }

  else
  {
    v183 = _swiftEmptyArrayStorage;
  }

  v184 = v183[2];

  if (v184)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v197 = OUTLINED_FUNCTION_92_0();
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v197, v198, v199, v181);
      v181 = v200;
    }

    v186 = v181[2];
    v185 = v181[3];
    if (v186 >= v185 >> 1)
    {
      v201 = OUTLINED_FUNCTION_3_62(v185);
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v201, v202, v203, v181);
      v181 = v204;
    }

    v181[2] = v186 + 1;
    *&v181[2 * v186 + 4] = xmmword_435450;
  }

  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v187 = type metadata accessor for Logger();
  __swift_project_value_buffer(v187, static Logger.siriPhone);
  v188 = Logger.logObject.getter();
  v189 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v188, v189))
  {
    v190 = swift_slowAlloc();
    v191 = swift_slowAlloc();
    *v190 = 136315394;
    v237 = 0;
    v238 = 0xE000000000000000;
    v239[0] = v191;
    DefaultStringInterpolation.appendInterpolation(type:tags:function:)(&type metadata for String, &outlined read-only object #0 of UsoContactConvertible.emergencyType.getter, 0, 0);
    v192 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v237, v238, v239);

    *(v190 + 4) = v192;
    *(v190 + 12) = 2080;

    v193 = Array.description.getter();
    v195 = v194;

    v196 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v193, v195, v239);

    *(v190 + 14) = v196;
    _os_log_impl(&dword_0, v188, v189, "%s Parsed emergencyTypes: %s, returning first entry", v190, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_26_0(v191);
    OUTLINED_FUNCTION_26_0(v190);
  }

  if (v181[2])
  {
    outlined copy of PhoneCallEmergencyType(v181[4], v181[5]);
  }

  OUTLINED_FUNCTION_65();
}

void UsoContactConvertible.vocabularyAppsBundleSet.getter()
{
  OUTLINED_FUNCTION_66();
  v2 = v1;
  v4 = v3;
  v5 = type metadata accessor for UsoIdentifier();
  OUTLINED_FUNCTION_7();
  v7 = v6;
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_4();
  v11 = v10 - v9;
  v12 = UsoContactConvertible.nameIdentifiers.getter(v4, v2)[2];
  if (v12)
  {
    OUTLINED_FUNCTION_42_25();
    v15 = *(v7 + 16);
    v13 = v7 + 16;
    v14 = v15;
    OUTLINED_FUNCTION_19_1();
    v18 = v16 + v17;
    v19 = *(v13 + 56);
    v20 = (v13 - 8);
    while (1)
    {
      OUTLINED_FUNCTION_17_57();
      v14();
      v21 = UsoIdentifier.namespace.getter();
      if (v22)
      {
        break;
      }

      (*v20)(v11, v5);
LABEL_14:
      v18 += v19;
      if (!--v12)
      {
        goto LABEL_15;
      }
    }

    if (v21 == v0 && v22 == 0xE700000000000000)
    {
    }

    else
    {
      v0 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v0 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    UsoIdentifier.appBundleId.getter();
    specialized Set._Variant.insert(_:)();

LABEL_13:
    (*v20)(v11, v5);
    OUTLINED_FUNCTION_42_25();
    goto LABEL_14;
  }

LABEL_15:

  OUTLINED_FUNCTION_65();
}

uint64_t UsoEntity_common_Agent.identifyingRelationship.getter(uint64_t a1)
{
  result = UsoEntity_common_Agent.asCommonPerson()();
  if (result)
  {
    v2 = dispatch thunk of UsoEntity_common_Person.identifyingRelationship.getter();

    return v2;
  }

  return result;
}

void *UsoContactConvertible.nameSpans.getter(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, unint64_t))
{
  if (!(*(a2 + 56))(a1) || (v4 = a3(1701667182, 0xE400000000000000), , !v4))
  {

    return _swiftEmptyArrayStorage;
  }

  return v4;
}

void UsoContactConvertible.hasFullBusinessNameProperty.getter()
{
  OUTLINED_FUNCTION_66();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for UsoEntitySpan();
  OUTLINED_FUNCTION_7();
  v6 = v5;
  __chkstk_darwin(v7);
  OUTLINED_FUNCTION_4();
  v10 = v9 - v8;
  v11 = UsoContactConvertible.nameSpans.getter(v3, v1);
  v12 = 0;
  v13 = *(v11 + 2);
  v14 = (v6 + 8);
  while (1)
  {
    if (v13 == v12)
    {
LABEL_5:

      OUTLINED_FUNCTION_65();
      return;
    }

    if (v12 >= *(v11 + 2))
    {
      break;
    }

    OUTLINED_FUNCTION_19_1();
    (*(v6 + 16))(v10, &v11[v15 + *(v6 + 72) * v12], v4);
    v16 = closure #1 in UsoContactConvertible.hasFullBusinessNameProperty.getter(v10);
    ++v12;
    (*v14)(v10, v4);
    if (v16)
    {
      goto LABEL_5;
    }
  }

  __break(1u);

  (*v14)(v10, v4);
  __break(1u);
}

uint64_t closure #1 in UsoContactConvertible.hasFullBusinessNameProperty.getter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology12SpanPropertyVSgMd, &_s12SiriOntology12SpanPropertyVSgMR);
  OUTLINED_FUNCTION_21(v3);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v4);
  v51 = &v47[-v5];
  OUTLINED_FUNCTION_15_0();
  v6 = type metadata accessor for PayloadAttachmentInfo.AttachmentType();
  OUTLINED_FUNCTION_7();
  v52 = v7;
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_5_4();
  v49 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSg_AFtMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSg_AFtMR);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v11);
  v13 = &v47[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology21PayloadAttachmentInfoVSgMd, &_s12SiriOntology21PayloadAttachmentInfoVSgMR);
  OUTLINED_FUNCTION_21(v14);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v15);
  v17 = &v47[-v16];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
  v19 = OUTLINED_FUNCTION_21(v18);
  __chkstk_darwin(v19);
  OUTLINED_FUNCTION_12_5();
  v22 = v20 - v21;
  __chkstk_darwin(v23);
  OUTLINED_FUNCTION_78_9();
  __chkstk_darwin(v24);
  v26 = &v47[-v25];
  v50 = a1;
  UsoEntitySpan.payloadAttachmentInfo.getter();
  v27 = type metadata accessor for PayloadAttachmentInfo();
  if (__swift_getEnumTagSinglePayload(v17, 1, v27) == 1)
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v17, &_s12SiriOntology21PayloadAttachmentInfoVSgMd, &_s12SiriOntology21PayloadAttachmentInfoVSgMR);
    __swift_storeEnumTagSinglePayload(v26, 1, 1, v6);
  }

  else
  {
    PayloadAttachmentInfo.attachmentType.getter();
    OUTLINED_FUNCTION_40();
    (*(v28 + 8))(v17, v27);
  }

  v29 = v52;
  (*(v52 + 104))(v1, enum case for PayloadAttachmentInfo.AttachmentType.full(_:), v6);
  __swift_storeEnumTagSinglePayload(v1, 0, 1, v6);
  v30 = *(v10 + 48);
  outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(v26, v13, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
  outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(v1, &v13[v30], &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
  OUTLINED_FUNCTION_4_1(v13);
  if (v31)
  {
    OUTLINED_FUNCTION_77_1(v1);
    OUTLINED_FUNCTION_77_1(v26);
    OUTLINED_FUNCTION_4_1(&v13[v30]);
    if (v31)
    {
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v13, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
      goto LABEL_14;
    }

LABEL_12:
    v32 = &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSg_AFtMd;
    v33 = &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSg_AFtMR;
LABEL_17:
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v13, v32, v33);
LABEL_18:
    v40 = 0;
    return v40 & 1;
  }

  outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(v13, v22, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
  OUTLINED_FUNCTION_4_1(&v13[v30]);
  if (v31)
  {
    OUTLINED_FUNCTION_77_1(v1);
    OUTLINED_FUNCTION_77_1(v26);
    (*(v29 + 8))(v22, v6);
    goto LABEL_12;
  }

  v34 = v49;
  (*(v29 + 32))(v49, &v13[v30], v6);
  OUTLINED_FUNCTION_14_63();
  lazy protocol witness table accessor for type PayloadAttachmentInfo.AttachmentType and conformance PayloadAttachmentInfo.AttachmentType(v35, v36, &protocol conformance descriptor for PayloadAttachmentInfo.AttachmentType);
  v48 = dispatch thunk of static Equatable.== infix(_:_:)();
  v37 = *(v29 + 8);
  v37(v34, v6);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v1, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v26, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
  v37(v22, v6);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v13, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
  if ((v48 & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_14:
  v38 = UsoEntitySpan.properties.getter();
  v13 = v51;
  specialized Collection.first.getter(v38);

  v39 = type metadata accessor for SpanProperty();
  OUTLINED_FUNCTION_4_1(v13);
  if (v31)
  {
    v32 = &_s12SiriOntology12SpanPropertyVSgMd;
    v33 = &_s12SiriOntology12SpanPropertyVSgMR;
    goto LABEL_17;
  }

  v42 = SpanProperty.key.getter();
  v44 = v43;
  OUTLINED_FUNCTION_40();
  (*(v45 + 8))(v13, v39);
  if (v42 == 0x7373656E69737562 && v44 == 0xEC000000656D614ELL)
  {

    v40 = 1;
  }

  else
  {
    v40 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v40 & 1;
}

unint64_t closure #1 in UsoContactConvertible.isNameLikelyNonBusiness()@<X0>(void *a1@<X0>, char *a3@<X2>, unsigned int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X7>, unint64_t *a8@<X8>, void *a9, char *a10, uint64_t a11)
{
  v72 = a7;
  v73 = a6;
  v76 = a8;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology13UtteranceSpanVSgMd, &_s12SiriOntology13UtteranceSpanVSgMR);
  __chkstk_darwin(v68);
  v67 = &v62 - v15;
  v77 = a11;
  v74 = *(a11 - 8);
  __chkstk_darwin(v16);
  v69 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v62 - v19;
  v21 = type metadata accessor for UtteranceAlignment();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v25 = &v62 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (__OFSUB__(*a1, a4))
  {
    __break(1u);
    goto LABEL_13;
  }

  v65 = *a1;
  v66 = a5;
  a5 = v23;
  v75 = a1[1];
  result = String.index(_:offsetBy:limitedBy:)();
  if (v27)
  {
LABEL_5:
    a1 = a9;
    a3 = a10;
    if (one-time initialization token for siriPhone == -1)
    {
LABEL_6:
      v30 = type metadata accessor for Logger();
      __swift_project_value_buffer(v30, static Logger.siriPhone);
      v31 = *(v22 + 16);
      v70 = a5;
      v31(v25, a1, a5);
      v32 = v74;
      v33 = *(v74 + 16);
      v71 = v20;
      v34 = v77;
      v64 = v33;
      v33(v20, a3, v77);

      v35 = v73;

      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        v80 = v63;
        *v38 = 136315906;
        v78 = 0;
        v79 = 0xE000000000000000;

        LODWORD(v72) = v37;
        DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v66, v35, 0xD000000000000019, 0x800000000045CCA0);

        v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v78, v79, &v80);

        *(v38 + 4) = v39;
        *(v38 + 12) = 2080;
        v46 = specialized Range.description.getter(v65, v75, v40, v41, v42, v43, v44, v45);
        v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v47, &v80);

        *(v38 + 14) = v48;
        *(v38 + 22) = 2080;
        v49 = UtteranceAlignment.spans.getter();
        specialized Collection.first.getter(v49);

        v50 = String.init<A>(describing:)();
        v52 = v51;
        (*(v22 + 8))(v25, v70);
        v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v52, &v80);

        *(v38 + 24) = v53;
        *(v38 + 32) = 2080;
        v54 = v71;
        v55 = v77;
        v64(v69, v71, v77);
        v56 = v55;
        v57 = String.init<A>(describing:)();
        v59 = v58;
        (*(v32 + 8))(v54, v56);
        v60 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v57, v59, &v80);

        *(v38 + 34) = v60;
        _os_log_impl(&dword_0, v36, v72, "%s- Unexpected: UtteranceAlignment range is greater than name - Current Range: %s -- Alignment Span: %s -- Self: %s", v38, 0x2Au);
        swift_arrayDestroy();
      }

      else
      {

        (*(v32 + 8))(v71, v34);
        (*(v22 + 8))(v25, v70);
      }

      v28 = 15;
      result = 15;
      goto LABEL_11;
    }

LABEL_13:
    swift_once();
    goto LABEL_6;
  }

  if (__OFSUB__(v75, a4))
  {
    __break(1u);
  }

  else
  {
    v28 = result;
    result = String.index(_:offsetBy:limitedBy:)();
    if (v29)
    {
      goto LABEL_5;
    }

    if (result >> 14 >= v28 >> 14)
    {
LABEL_11:
      v61 = v76;
      *v76 = v28;
      v61[1] = result;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t lazy protocol witness table accessor for type PayloadAttachmentInfo.AttachmentType and conformance PayloadAttachmentInfo.AttachmentType(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

Swift::Void __swiftcall UsoEntityBuilderNameContaining.setName(value:identifiers:)(Swift::String value, Swift::OpaquePointer identifiers)
{
  v4 = v3;
  v5 = v2;
  (*(v3 + 16))(value._countAndFlagsBits, value._object);
  if ((*(v4 + 8))(v5, v4))
  {
    v7 = *(identifiers._rawValue + 2);
    if (v7)
    {
      v8 = *(type metadata accessor for UsoIdentifier() - 8);
      v9 = identifiers._rawValue + ((*(v8 + 80) + 32) & ~*(v8 + 80));
      v10 = *(v8 + 72);
      do
      {
        dispatch thunk of UsoBuilder.addUsoIdentifier(usoIdentifier:)();
        v9 += v10;
        --v7;
      }

      while (v7);
    }
  }
}

uint64_t UsoEntity_common_Agent.asCommonGroup()(void (*a1)(void))
{
  CodeGenBase.entity.getter();
  a1(0);
  static UsoEntity_CodeGenConverter.convertAs<A>(entity:asType:)();

  return v3;
}

uint64_t static USOSerializedGraph.fromTaskBuilders(_:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology17UsoBuilderOptionsVSgMd, &_s12SiriOntology17UsoBuilderOptionsVSgMR);
  __chkstk_darwin(v0 - 8);
  v2 = &v6 - v1;
  UsoBuilderOptions.init(longhandDefinedValues:)();
  v3 = type metadata accessor for UsoBuilderOptions();
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v3);
  OUTLINED_FUNCTION_55();
  static UsoGraphBuilder.buildGraphWithOptions(taskBuilders:options:)();
  outlined destroy of UsoBuilderOptions?(v2);
  v4 = static USOSerializedGraph.fromGraph(_:)();

  return v4;
}

uint64_t static USOSerializedGraph.fromGraph(_:)()
{
  v0 = type metadata accessor for PhoneError(0);
  __chkstk_darwin(v0);
  __chkstk_darwin(v1);
  v2 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  Graph.protobufGraphSiriNl(vocabManager:)();
  v6 = static USOSerializedGraph.fromProto(protoGraph:)();
  (*(v3 + 8))(v5, v2);
  return v6;
}

uint64_t *UsoTask.convertToCommonPhoneCallEntity()()
{
  static UsoTask_CodegenConverter.convert(task:)();
  outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(v21, v19, &_sypSgMd, &_sypSgMR);
  if (v20)
  {
    outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(v19, &v17, &_sypSgMd, &_sypSgMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology23Uso_VerbTemplate_TargetCyAA0C23Entity_common_PhoneCallCGMd, &_s12SiriOntology23Uso_VerbTemplate_TargetCyAA0C23Entity_common_PhoneCallCGMR);
    OUTLINED_FUNCTION_1_134();
    if (swift_dynamicCast())
    {
      dispatch thunk of Uso_VerbTemplate_Target.target.getter();
LABEL_8:

      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v21, &_sypSgMd, &_sypSgMR);
      v0 = v16;
      __swift_destroy_boxed_opaque_existential_1(&v17);
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v19, &_sypSgMd, &_sypSgMR);
      return v0;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology26Uso_VerbTemplate_ReferenceCyAA0C23Entity_common_PhoneCallCGMd, &_s12SiriOntology26Uso_VerbTemplate_ReferenceCyAA0C23Entity_common_PhoneCallCGMR);
    OUTLINED_FUNCTION_1_134();
    if (swift_dynamicCast())
    {
      dispatch thunk of Uso_VerbTemplate_Reference.reference.getter();
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology32Uso_VerbTemplate_ReferenceTargetCyAA0C23Entity_common_PhoneCallCGMd, &_s12SiriOntology32Uso_VerbTemplate_ReferenceTargetCyAA0C23Entity_common_PhoneCallCGMR);
    OUTLINED_FUNCTION_1_134();
    if (swift_dynamicCast())
    {
      dispatch thunk of Uso_VerbTemplate_ReferenceTarget.target.getter();
      goto LABEL_8;
    }

    __swift_destroy_boxed_opaque_existential_1(&v17);
  }

  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.siriPhone);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v17 = v5;
    *v4 = 136315138;
    v6 = UsoTask.description.getter();
    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, &v17);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_0, v2, v3, "Cannot transform UsoTask to task with common_PhoneCall: %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    OUTLINED_FUNCTION_8();

    OUTLINED_FUNCTION_8();
  }

  v9 = type metadata accessor for TransformationError();
  lazy protocol witness table accessor for type TransformationError and conformance TransformationError(&lazy protocol witness table cache variable for type TransformationError and conformance TransformationError, &type metadata accessor for TransformationError, &protocol conformance descriptor for TransformationError);
  swift_allocError();
  v11 = v10;
  v17 = 0;
  v18 = 0xE000000000000000;
  _StringGuts.grow(_:)(50);

  v17 = 0xD000000000000012;
  v18 = 0x80000000004634E0;
  v12._countAndFlagsBits = UsoTask.description.getter();
  String.append(_:)(v12);

  v13._countAndFlagsBits = 0xD00000000000001ELL;
  v13._object = 0x8000000000463500;
  String.append(_:)(v13);
  v14 = v18;
  *v11 = v17;
  v11[1] = v14;
  (*(*(v9 - 8) + 104))(v11, enum case for TransformationError.cannotTransform(_:), v9);
  swift_willThrow();
  v0 = &_sypSgMd;
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v21, &_sypSgMd, &_sypSgMR);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v19, &_sypSgMd, &_sypSgMR);
  return v0;
}

uint64_t UsoTask.isSwitchToFaceTimeOrVideoCallTask.getter()
{
  type metadata accessor for UsoEntity_common_PhoneCallMode.DefinedValues();
  OUTLINED_FUNCTION_1_5();
  v2 = v1;
  __chkstk_darwin(v3);
  v5 = &v30[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology30UsoEntity_common_PhoneCallModeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology30UsoEntity_common_PhoneCallModeC13DefinedValuesOSg_AFtMR);
  OUTLINED_FUNCTION_23_1();
  __chkstk_darwin(v7);
  v9 = &v30[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology30UsoEntity_common_PhoneCallModeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_PhoneCallModeC13DefinedValuesOSgMR);
  __chkstk_darwin(v10 - 8);
  v12 = &v30[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v15 = &v30[-v14];
  __chkstk_darwin(v16);
  v18 = &v30[-v17];
  OUTLINED_FUNCTION_9_85();
  static UsoTask_CodegenConverter.convert(task:)();
  if (v34[3])
  {
    type metadata accessor for UsoTask_update_common_PhoneCall();
    if (OUTLINED_FUNCTION_6_96())
    {

      dispatch thunk of Uso_VerbTemplate_ReferenceTarget.target.getter();
      v32 = v5;
      v33 = v2;
      if (v34[0])
      {
        v19 = dispatch thunk of CodeGenGlobalArgs.usoAssociatedApp.getter();

        if (v19)
        {
          UsoEntity_common_App.applicationId.getter();
          v21 = v20;
        }

        else
        {
          v21 = 0;
        }
      }

      else
      {
        v21 = 0;
      }

      LODWORD(v21) = static PhoneCallAppNameConstants.isFaceTime(appId:)(v21);

      dispatch thunk of Uso_VerbTemplate_ReferenceTarget.target.getter();

      if (v34[0] && (v23 = dispatch thunk of UsoEntity_common_PhoneCall.mode.getter(), , v23))
      {
        dispatch thunk of UsoEntity_common_PhoneCallMode.definedValue.getter();
      }

      else
      {
        __swift_storeEnumTagSinglePayload(v18, 1, 1, v0);
      }

      (*(v33 + 104))(v15, enum case for UsoEntity_common_PhoneCallMode.DefinedValues.common_PhoneCallMode_Video(_:), v0);
      __swift_storeEnumTagSinglePayload(v15, 0, 1, v0);
      v24 = *(v6 + 48);
      outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(v18, v9, &_s12SiriOntology30UsoEntity_common_PhoneCallModeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_PhoneCallModeC13DefinedValuesOSgMR);
      outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(v15, &v9[v24], &_s12SiriOntology30UsoEntity_common_PhoneCallModeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_PhoneCallModeC13DefinedValuesOSgMR);
      OUTLINED_FUNCTION_1_0(v9);
      if (v26)
      {

        OUTLINED_FUNCTION_77_1(v15);
        OUTLINED_FUNCTION_77_1(v18);
        OUTLINED_FUNCTION_1_0(&v9[v24]);
        if (v26)
        {
          outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v9, &_s12SiriOntology30UsoEntity_common_PhoneCallModeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_PhoneCallModeC13DefinedValuesOSgMR);
          v25 = 1;
LABEL_23:
          v22 = v21 | v25;
          return v22 & 1;
        }
      }

      else
      {
        outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(v9, v12, &_s12SiriOntology30UsoEntity_common_PhoneCallModeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_PhoneCallModeC13DefinedValuesOSgMR);
        OUTLINED_FUNCTION_1_0(&v9[v24]);
        if (!v26)
        {
          v31 = v21;
          v27 = v32;
          v21 = v33;
          (*(v33 + 32))(v32, &v9[v24], v0);
          lazy protocol witness table accessor for type TransformationError and conformance TransformationError(&lazy protocol witness table cache variable for type UsoEntity_common_PhoneCallMode.DefinedValues and conformance UsoEntity_common_PhoneCallMode.DefinedValues, &type metadata accessor for UsoEntity_common_PhoneCallMode.DefinedValues, &protocol conformance descriptor for UsoEntity_common_PhoneCallMode.DefinedValues);
          v25 = dispatch thunk of static Equatable.== infix(_:_:)();

          v28 = *(v21 + 8);
          v28(v27, v0);
          outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v15, &_s12SiriOntology30UsoEntity_common_PhoneCallModeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_PhoneCallModeC13DefinedValuesOSgMR);
          outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v18, &_s12SiriOntology30UsoEntity_common_PhoneCallModeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_PhoneCallModeC13DefinedValuesOSgMR);
          v28(v12, v0);
          LOBYTE(v21) = v31;
          outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v9, &_s12SiriOntology30UsoEntity_common_PhoneCallModeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_PhoneCallModeC13DefinedValuesOSgMR);
          goto LABEL_23;
        }

        OUTLINED_FUNCTION_77_1(v15);
        OUTLINED_FUNCTION_77_1(v18);
        (*(v33 + 8))(v12, v0);
      }

      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v9, &_s12SiriOntology30UsoEntity_common_PhoneCallModeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology30UsoEntity_common_PhoneCallModeC13DefinedValuesOSg_AFtMR);
      v25 = 0;
      goto LABEL_23;
    }
  }

  else
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v34, &_sypSgMd, &_sypSgMR);
  }

  v22 = 0;
  return v22 & 1;
}

uint64_t UsoTask.hasFaceTimeAudioSemantics.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology30UsoEntity_common_PhoneCallModeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_PhoneCallModeC13DefinedValuesOSgMR);
  __chkstk_darwin(v2 - 8);
  v4 = &v35[-v3 - 8];
  type metadata accessor for UsoEntity_common_PhoneCallMode.DefinedValues();
  OUTLINED_FUNCTION_1_5();
  v6 = v5;
  __chkstk_darwin(v7);
  OUTLINED_FUNCTION_15_6();
  __chkstk_darwin(v8);
  v10 = &v35[-v9 - 8];
  OUTLINED_FUNCTION_9_85();
  static UsoTask_CodegenConverter.convert(task:)();
  if (!v45)
  {
    v17 = &_sypSgMd;
    v18 = &_sypSgMR;
    v19 = v44;
LABEL_11:
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v19, v17, v18);
    goto LABEL_16;
  }

  type metadata accessor for UsoTask_update_common_PhoneCall();
  if ((OUTLINED_FUNCTION_6_96() & 1) == 0)
  {
LABEL_16:
    LOBYTE(v11) = 0;
    return v11 & 1;
  }

  dispatch thunk of Uso_VerbTemplate_ReferenceTarget.target.getter();

  if (!v44[0])
  {
LABEL_15:

    goto LABEL_16;
  }

  v11 = dispatch thunk of CodeGenGlobalArgs.usoAssociatedApp.getter();

  if (v11)
  {
    UsoEntity_common_App.applicationId.getter();
    v13 = v12;
    v15 = v14;

    if (v15)
    {
      if (dispatch thunk of UsoEntity_common_PhoneCall.mode.getter())
      {
        dispatch thunk of UsoEntity_common_PhoneCallMode.definedValue.getter();

        OUTLINED_FUNCTION_1_0(v4);
        if (!v16)
        {
          (*(v6 + 32))(v10, v4, v0);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
          inited = swift_initStackObject();
          v22 = inited;
          *(inited + 16) = xmmword_424FF0;
          *(inited + 32) = 0xD000000000000012;
          *(inited + 40) = 0x80000000004574F0;
          if (one-time initialization token for macFaceTimeBundleId != -1)
          {
            swift_once();
          }

          v23 = *algn_599C28;
          *(v22 + 48) = static PhoneCallAppNameConstants.macFaceTimeBundleId;
          *(v22 + 56) = v23;

          _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5(v22, v24, v25, v26, v27, v28, v29, v30, v34, v35[0], v36, v37, v38, v39, v40, v41, v42, v43, v44[0], v44[1], v44[2], v45, v46, v47, v48, v49, v50, v51, v52, v53);
          v32 = specialized Set.contains(_:)(v13, v15, v31);

          if (v32)
          {
            (*(v6 + 104))(v1, enum case for UsoEntity_common_PhoneCallMode.DefinedValues.common_PhoneCallMode_Audio(_:), v0);
            LOBYTE(v11) = specialized == infix<A>(_:_:)(v10, v1);

            v33 = *(v6 + 8);
            v33(v1, v0);
            v33(v10, v0);
            return v11 & 1;
          }

          (*(v6 + 8))(v10, v0);
          goto LABEL_16;
        }
      }

      else
      {

        __swift_storeEnumTagSinglePayload(v4, 1, 1, v0);
      }

      v17 = &_s12SiriOntology30UsoEntity_common_PhoneCallModeC13DefinedValuesOSgMd;
      v18 = &_s12SiriOntology30UsoEntity_common_PhoneCallModeC13DefinedValuesOSgMR;
      v19 = v4;
      goto LABEL_11;
    }

    goto LABEL_15;
  }

  return v11 & 1;
}

uint64_t UsoTask.isSwitchToSpeakerphoneTask.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
  __chkstk_darwin(v2 - 8);
  v4 = v19 - v3;
  type metadata accessor for UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues();
  OUTLINED_FUNCTION_1_5();
  v6 = v5;
  __chkstk_darwin(v7);
  OUTLINED_FUNCTION_15_6();
  __chkstk_darwin(v8);
  v10 = v19 - v9;
  OUTLINED_FUNCTION_9_85();
  static UsoTask_CodegenConverter.convert(task:)();
  if (!v20[3])
  {
    v12 = &_sypSgMd;
    v13 = &_sypSgMR;
    v14 = v20;
LABEL_11:
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v14, v12, v13);
    goto LABEL_14;
  }

  type metadata accessor for UsoTask_update_common_PhoneCall();
  if (OUTLINED_FUNCTION_6_96())
  {

    dispatch thunk of Uso_VerbTemplate_ReferenceTarget.target.getter();

    if (v20[0])
    {
      v11 = dispatch thunk of UsoEntity_common_PhoneCall.attributes.getter();

      if (v11)
      {
        if (specialized Array.count.getter(v11))
        {
          specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v11 & 0xC000000000000001) == 0, v11);
          if ((v11 & 0xC000000000000001) != 0)
          {
            specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
          }

          dispatch thunk of CodeGenListEntry.entry.getter();
          if (v19[1])
          {
            CodeGenBase.entity.getter();
          }

          type metadata accessor for UsoEntity_applePhoneCall_PhoneCallAttribute();
          OUTLINED_FUNCTION_9_85();
          static UsoEntity_CodeGenConverter.convertAs<A>(entity:asType:)();

          if (v20[0])
          {
            dispatch thunk of UsoEntity_applePhoneCall_PhoneCallAttribute.definedValue.getter();
            OUTLINED_FUNCTION_1_0(v4);
            if (!v17)
            {
              (*(v6 + 32))(v10, v4, v0);
              (*(v6 + 104))(v1, enum case for UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues.applePhoneCall_PhoneCallAttribute_PhoneCallNounSpeakerphone(_:), v0);
              v15 = specialized == infix<A>(_:_:)(v10, v1);

              v18 = *(v6 + 8);
              v18(v1, v0);
              v18(v10, v0);
              return v15 & 1;
            }

            v12 = &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd;
            v13 = &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR;
            v14 = v4;
            goto LABEL_11;
          }
        }

        else
        {
        }
      }
    }
  }

LABEL_14:
  v15 = 0;
  return v15 & 1;
}

uint64_t UsoTask.isSettingsTask.getter(uint64_t a1)
{
  if (UsoTask.baseEntityAsString.getter() == 0x535F6E6F6D6D6F63 && v1 == 0xEE00676E69747465)
  {

    return 1;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    return v3 & 1;
  }
}

uint64_t UsoTask.usoAssociatedApp.getter()
{
  static UsoTask_CodegenConverter.convert(task:)();
  outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(v51, v49, &_sypSgMd, &_sypSgMR);
  if (v50)
  {
    outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(v49, v48, &_sypSgMd, &_sypSgMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology23Uso_VerbTemplate_TargetCyAA0C23Entity_common_PhoneCallCGMd, &_s12SiriOntology23Uso_VerbTemplate_TargetCyAA0C23Entity_common_PhoneCallCGMR);
    OUTLINED_FUNCTION_1_134();
    if (swift_dynamicCast())
    {
      OUTLINED_FUNCTION_2_127();
      dispatch thunk of Uso_VerbTemplate_Target.target.getter();
      goto LABEL_6;
    }

    v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology26Uso_VerbTemplate_ReferenceCyAA0C23Entity_common_PhoneCallCGMd, &_s12SiriOntology26Uso_VerbTemplate_ReferenceCyAA0C23Entity_common_PhoneCallCGMR);
    OUTLINED_FUNCTION_0_124(v0, v1, v2, v3, v4, v5, v6, v7, v42, v44);
    if (swift_dynamicCast())
    {
      OUTLINED_FUNCTION_2_127();
      dispatch thunk of Uso_VerbTemplate_Reference.reference.getter();
      goto LABEL_6;
    }

    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology32Uso_VerbTemplate_ReferenceTargetCyAA0C23Entity_common_PhoneCallCGMd, &_s12SiriOntology32Uso_VerbTemplate_ReferenceTargetCyAA0C23Entity_common_PhoneCallCGMR);
    OUTLINED_FUNCTION_0_124(v8, v9, v10, v11, v12, v13, v14, v15, v42, v45);
    if (swift_dynamicCast())
    {
      OUTLINED_FUNCTION_2_127();
      dispatch thunk of Uso_VerbTemplate_ReferenceTarget.target.getter();
      if (v43)
      {
        v16 = dispatch thunk of CodeGenGlobalArgs.usoAssociatedApp.getter();

        if (v16)
        {
          goto LABEL_18;
        }
      }

      dispatch thunk of Uso_VerbTemplate_ReferenceTarget.reference.getter();
LABEL_16:
      if (v43)
      {
LABEL_17:
        v16 = dispatch thunk of CodeGenGlobalArgs.usoAssociatedApp.getter();

LABEL_18:

        outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v51, &_sypSgMd, &_sypSgMR);
LABEL_20:
        __swift_destroy_boxed_opaque_existential_1(v48);
        goto LABEL_29;
      }

LABEL_19:
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v51, &_sypSgMd, &_sypSgMR);

      v16 = 0;
      goto LABEL_20;
    }

    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology32Uso_VerbTemplate_ReferenceSelectCyAA0C23Entity_common_PhoneCallCGMd, &_s12SiriOntology32Uso_VerbTemplate_ReferenceSelectCyAA0C23Entity_common_PhoneCallCGMR);
    OUTLINED_FUNCTION_0_124(v17, v18, v19, v20, v21, v22, v23, v24, v43, v46);
    if (swift_dynamicCast())
    {
      OUTLINED_FUNCTION_2_127();
      dispatch thunk of Uso_VerbTemplate_ReferenceSelect.reference.getter();
      if (v43)
      {
        v16 = dispatch thunk of CodeGenGlobalArgs.usoAssociatedApp.getter();

        if (v16)
        {
          goto LABEL_18;
        }
      }

      dispatch thunk of Uso_VerbTemplate_ReferenceSelect.select.getter();
      goto LABEL_16;
    }

    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology019Uso_VerbTemplate_NoD0CyAA0C23Entity_common_PhoneCallCGMd, &_s12SiriOntology019Uso_VerbTemplate_NoD0CyAA0C23Entity_common_PhoneCallCGMR);
    OUTLINED_FUNCTION_0_124(v25, v26, v27, v28, v29, v30, v31, v32, v43, v47);
    if (swift_dynamicCast())
    {
      OUTLINED_FUNCTION_2_127();
      dispatch thunk of Uso_VerbTemplate_NoVerb.entity.getter();
LABEL_6:
      if (v42)
      {
        goto LABEL_17;
      }

      goto LABEL_19;
    }

    __swift_destroy_boxed_opaque_existential_1(v48);
  }

  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v33 = type metadata accessor for Logger();
  __swift_project_value_buffer(v33, static Logger.siriPhone);

  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v48[0] = v37;
    *v36 = 136315138;
    v38 = UsoTask.description.getter();
    v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v39, v48);

    *(v36 + 4) = v40;
    _os_log_impl(&dword_0, v34, v35, "Unrecognized UsoTask type: %s", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v37);
    OUTLINED_FUNCTION_8();

    OUTLINED_FUNCTION_8();
  }

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v51, &_sypSgMd, &_sypSgMR);
  v16 = 0;
LABEL_29:
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v49, &_sypSgMd, &_sypSgMR);
  return v16;
}

uint64_t UsoTask.isAppTask.getter(uint64_t (*a1)(void), uint64_t (*a2)(void))
{
  static UsoTask_CodegenConverter.convert(task:)();
  outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(&v25, &v23, &_sypSgMd, &_sypSgMR);
  if (*(&v24 + 1))
  {
    v4 = a1(0);
    OUTLINED_FUNCTION_0_124(v4, v5, v6, v7, v8, v9, v10, v11, v21, v22);
    if (swift_dynamicCast())
    {
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v25, &_sypSgMd, &_sypSgMR);
LABEL_7:

      return 1;
    }
  }

  else
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v23, &_sypSgMd, &_sypSgMR);
  }

  v23 = v25;
  v24 = v26;
  if (*(&v26 + 1))
  {
    v12 = a2(0);
    OUTLINED_FUNCTION_0_124(v12, v13, v14, v15, v16, v17, v18, v19, v21, v22);
    if (swift_dynamicCast())
    {
      goto LABEL_7;
    }
  }

  else
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v23, &_sypSgMd, &_sypSgMR);
  }

  return 0;
}

uint64_t UsoTask.description.getter()
{
  _StringGuts.grow(_:)(53);
  v0._countAndFlagsBits = 0xD00000000000001BLL;
  v0._object = 0x8000000000463520;
  String.append(_:)(v0);
  v1._countAndFlagsBits = UsoTask.verbString.getter();
  String.append(_:)(v1);

  v2._object = 0x8000000000463540;
  v2._countAndFlagsBits = 0xD000000000000014;
  String.append(_:)(v2);
  v3._countAndFlagsBits = UsoTask.baseEntityAsString.getter();
  String.append(_:)(v3);

  v4._countAndFlagsBits = 32010;
  v4._object = 0xE200000000000000;
  String.append(_:)(v4);
  return 0;
}

uint64_t lazy protocol witness table accessor for type TransformationError and conformance TransformationError(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t UsoTaskBuilder.toUserStatedTaskDialogAct()()
{
  v0 = type metadata accessor for Siri_Nlu_External_UsoGraph();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for Siri_Nlu_External_UserStatedTask();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v7 = &v9[-v6];
  Siri_Nlu_External_UserStatedTask.init()();
  UsoTaskBuilder.asUsoGraph()();
  Siri_Nlu_External_UserStatedTask.task.setter();
  Siri_Nlu_External_UserDialogAct.init()();
  (*(v2 + 16))(v4, v7, v1);
  Siri_Nlu_External_UserDialogAct.userStatedTask.setter();
  return (*(v2 + 8))(v7, v1);
}

uint64_t UsoTaskBuilder.asUsoGraph()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology17UsoBuilderOptionsVSgMd, &_s12SiriOntology17UsoBuilderOptionsVSgMR);
  __chkstk_darwin(v1 - 8);
  v3 = &v7 - v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_426260;
  *(v4 + 32) = v0;
  v5 = type metadata accessor for UsoBuilderOptions();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v5);

  static UsoGraphBuilder.buildGraphWithOptions(taskBuilders:options:)();

  outlined destroy of UsoBuilderOptions?(v3);
  static UsoGraphProtoWriter.toSwiftProtobuf(graph:vocabManager:)();
}

uint64_t static UsoUtils.buildDummyReferenceEntity()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology17UsoBuilderOptionsVSgMd, &_s12SiriOntology17UsoBuilderOptionsVSgMR);
  __chkstk_darwin(v0 - 8);
  v2 = &v12 - v1;
  v3 = type metadata accessor for UsoEntity_common_ReferenceType.DefinedValues();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for UsoTaskBuilder_noVerb_common_Person();
  swift_allocObject();
  v7 = UsoTaskBuilder_noVerb_common_Person.init()();
  type metadata accessor for UsoEntityBuilder_common_Person();
  swift_allocObject();
  UsoEntityBuilder_common_Person.init()();
  type metadata accessor for UsoEntityBuilder_common_ReferenceType();
  swift_allocObject();
  UsoEntityBuilder_common_ReferenceType.init()();
  (*(v4 + 104))(v6, enum case for UsoEntity_common_ReferenceType.DefinedValues.common_ReferenceType_DefiniteReference(_:), v3);
  dispatch thunk of UsoEntityBuilder_common_ReferenceType.setDefinedValue(value:)();
  (*(v4 + 8))(v6, v3);

  dispatch thunk of UsoEntityBuilderGlobalArgs.setUsoReferenceType(value:)();

  dispatch thunk of Uso_VerbTemplateBuilder_NoVerb.setEntity(value:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_426260;
  *(v8 + 32) = v7;
  v9 = type metadata accessor for UsoBuilderOptions();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v9);

  static UsoGraphBuilder.buildGraphWithOptions(taskBuilders:options:)();

  outlined destroy of UsoBuilderOptions?(v2);
  v10 = static UsoConversionUtils.extractFirstEntityFromGraph(graph:)();

  return v10;
}

PhoneCallFlowDelegatePlugin::VoiceCommandsStartCallDirectAction_optional __swiftcall VoiceCommandsStartCallDirectAction.init(from:)(Swift::OpaquePointer from)
{
  if (!*(from._rawValue + 2))
  {
    goto LABEL_7;
  }

  v2 = specialized __RawDictionaryStorage.find<A>(_:)(0x6449707061, 0xE500000000000000);
  if ((v3 & 1) == 0)
  {
    goto LABEL_7;
  }

  v4 = outlined init with copy of Any(*(from._rawValue + 7) + 32 * v2, &v29);
  if ((OUTLINED_FUNCTION_0_125(v4, v5, v6, &type metadata for String, v7, v8, v9, v10, v24, v27, v29) & 1) == 0)
  {
    goto LABEL_7;
  }

  v12 = v25;
  v11 = v28;
  specialized Dictionary.subscript.getter(0x746E65746E69, 0xE600000000000000, from._rawValue, &v29);

  if (!v30)
  {

    outlined destroy of Any?(&v29);
    goto LABEL_8;
  }

  v13 = type metadata accessor for INStartCallIntent();
  if ((OUTLINED_FUNCTION_0_125(v13, v14, v15, v13, v16, v17, v18, v19, v25, v28, v29) & 1) == 0)
  {
LABEL_7:

LABEL_8:
    v12 = 0;
    v11 = 0;
    v21 = 0;
    goto LABEL_9;
  }

  v21 = v26;
LABEL_9:
  v22 = v12;
  v23 = v11;
  result.value.intent.super.super.isa = v21;
  result.value.appId._object = v23;
  result.value.appId._countAndFlagsBits = v22;
  result.is_nil = v20;
  return result;
}

uint64_t VoiceCommandsStartCallDirectAction.toDictionary()(uint64_t a1, uint64_t a2, void *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_424FF0;
  *(inited + 32) = 0x6449707061;
  *(inited + 40) = 0xE500000000000000;
  *(inited + 48) = a1;
  *(inited + 56) = a2;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 0x746E65746E69;
  *(inited + 88) = 0xE600000000000000;
  *(inited + 120) = type metadata accessor for INStartCallIntent();
  *(inited + 96) = a3;

  v7 = a3;
  return Dictionary.init(dictionaryLiteral:)();
}

uint64_t VoicemailRowCardSectionComponents.callerHandleLabel.getter()
{
  v1 = type metadata accessor for Locale();
  v2 = *(v1 - 8);
  *&v3 = __chkstk_darwin(v1).n128_u64[0];
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [*(v0 + 8) caller];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 personHandle];

    if (v8)
    {
      v9 = [v8 label];

      if (v9)
      {
        __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
        dispatch thunk of DeviceState.siriLocale.getter();
        v13[4] = Locale.identifier.getter();
        v13[5] = v10;
        v13[2] = 45;
        v13[3] = 0xE100000000000000;
        v13[0] = 95;
        v13[1] = 0xE100000000000000;
        lazy protocol witness table accessor for type String and conformance String();
        StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
        (*(v2 + 8))(v5, v1);

        static LabelMappingUtil.translateINPersonHandleLabel(_:languageCode:)();
      }
    }
  }

  v11 = static CasinoFactory.makeRichText(text:bold:maxLines:textColor:)();

  return v11;
}

uint64_t VoicemailRowCardSectionComponents.callerName.getter(uint64_t (*a1)(void))
{
  a1();
  v1 = static CasinoFactory.makeRichText(text:bold:maxLines:textColor:)();

  return v1;
}

uint64_t VoicemailRowCardSectionComponents.duration.getter(uint64_t a1)
{
  v1 = INCallRecord.callDuration.getter();
  if (v2)
  {
    return 0;
  }

  v3 = *&v1;
  v4 = [objc_allocWithZone(NSDateComponentsFormatter) init];
  [v4 setUnitsStyle:0];
  [v4 setAllowedUnits:192];
  [v4 setZeroFormattingBehavior:0x10000];
  v5 = [v4 stringFromTimeInterval:ceil(v3)];
  if (!v5)
  {

    return 0;
  }

  v6 = v5;
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v7._countAndFlagsBits = 48;
  v7._object = 0xE100000000000000;
  LOBYTE(v6) = String.hasPrefix(_:)(v7);

  if (v6)
  {
    specialized Collection.dropFirst(_:)(1uLL);
    static String._fromSubstring(_:)();
  }

  v8 = static CasinoFactory.makeRichText(text:bold:maxLines:textColor:)();

  return v8;
}

id VoicemailRowCardSectionComponents.image.getter(uint64_t a1)
{
  v1 = INCallRecord.unseen.getter();
  if (v1 == 2 || (v1 & 1) == 0)
  {
    if (one-time initialization token for emptyImageVoicemail != -1)
    {
      swift_once();
    }

    v2 = &static CallHistoryImage.emptyImageVoicemail;
  }

  else
  {
    if (one-time initialization token for unreadImage != -1)
    {
      swift_once();
    }

    v2 = &static CallHistoryImage.unreadImage;
  }

  v3 = *v2;

  return v3;
}

uint64_t VoicemailShouldPlayPromptFlowStrategy.__allocating_init(sharedGlobals:searchCallHistorySharedGlobals:)(__int128 *a1, const void *a2)
{
  v4 = swift_allocObject();
  VoicemailShouldPlayPromptFlowStrategy.init(sharedGlobals:searchCallHistorySharedGlobals:)(a1, a2);
  return v4;
}

void *VoicemailShouldPlayPromptFlowStrategy.init(sharedGlobals:searchCallHistorySharedGlobals:)(__int128 *a1, const void *a2)
{
  v2[33] = type metadata accessor for VoicemailShouldPlayPromptFlowStrategy();
  v2[34] = &outlined read-only object #0 of VoicemailShouldPlayPromptFlowStrategy.init(sharedGlobals:searchCallHistorySharedGlobals:);
  v2[35] = 0;
  v2[36] = 0;
  outlined init with copy of SignalProviding(a1, (v2 + 3));
  type metadata accessor for YesNoConfirmationParser();
  v5 = swift_allocObject();
  *(v5 + 16) = 5;
  outlined init with take of PhoneCallFeatureFlagProviding(a1, v5 + 24);
  v2[2] = v5;
  memcpy(v2 + 8, a2, 0xC8uLL);
  return v2;
}

uint64_t VoicemailShouldPlayPromptFlowStrategy.actionForInput(_:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
  v4 = OUTLINED_FUNCTION_21(v3);
  v5 = __chkstk_darwin(v4);
  v7 = &v11 - v6;
  (*(**(v1 + 16) + 128))(a1, v5);
  v8 = type metadata accessor for ConfirmationResponse();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v7, 1, v8);
  outlined destroy of ConfirmationResponse?(v7);
  if (EnumTagSinglePayload == 1)
  {
    return static ActionForInput.ignore()();
  }

  else
  {
    return static ActionForInput.handle()();
  }
}

uint64_t VoicemailShouldPlayPromptFlowStrategy.makePromptForConfirmation(itemToConfirm:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t VoicemailShouldPlayPromptFlowStrategy.makePromptForConfirmation(itemToConfirm:)()
{
  v16 = v0;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v2 = *(v0 + 24);
  v3 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_20_5(v3, static Logger.siriPhone);
  v4 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  OUTLINED_FUNCTION_87();
  if (OUTLINED_FUNCTION_86_0())
  {
    OUTLINED_FUNCTION_42();
    v14[0] = OUTLINED_FUNCTION_83();
    v14[1] = 0;
    OUTLINED_FUNCTION_15_61(4.8149e-34);
    OUTLINED_FUNCTION_114();
    v15 = v5;

    v6 = OUTLINED_FUNCTION_36_2();
    DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v6, v7, 0xD000000000000029, v8);

    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0, v15, v14);
    OUTLINED_FUNCTION_63_1();
    *(v2 + 4) = v1;
    OUTLINED_FUNCTION_12(&dword_0, v9, v10, "%s");
    OUTLINED_FUNCTION_3_7();
    OUTLINED_FUNCTION_35();
  }

  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 32) = v11;
  *v11 = v12;
  v11[1] = DialogOutputFactory.makeOutput();

  return VoicemailShouldPlayPromptFlowStrategy.executePatternAndManifest()();
}

uint64_t VoicemailShouldPlayPromptFlowStrategy.makeConfirmationRejectedResponse()()
{
  OUTLINED_FUNCTION_15();
  v1[7] = v2;
  v1[8] = v0;
  v3 = type metadata accessor for DialogPhase();
  OUTLINED_FUNCTION_21(v3);
  v1[9] = OUTLINED_FUNCTION_45();
  v4 = type metadata accessor for CATOption();
  OUTLINED_FUNCTION_21(v4);
  v1[10] = OUTLINED_FUNCTION_45();
  v5 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v5, v6, v7);
}

{
  v20 = v0;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v2 = v0[8];
  v3 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_20_5(v3, static Logger.siriPhone);
  v4 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  OUTLINED_FUNCTION_87();
  if (OUTLINED_FUNCTION_86_0())
  {
    OUTLINED_FUNCTION_42();
    v18[0] = OUTLINED_FUNCTION_83();
    v18[1] = 0;
    OUTLINED_FUNCTION_15_61(4.8149e-34);
    OUTLINED_FUNCTION_114();
    v19 = v5;

    v6 = OUTLINED_FUNCTION_36_2();
    DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v6, v7, 0xD000000000000022, v8);

    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0, v19, v18);
    OUTLINED_FUNCTION_63_1();
    *(v2 + 4) = v1;
    OUTLINED_FUNCTION_12(&dword_0, v9, v10, "%s");
    OUTLINED_FUNCTION_3_7();
    OUTLINED_FUNCTION_35();
  }

  v11 = v0[8];
  type metadata accessor for PhoneCallCommonCATsSimple(0);
  static CATOption.defaultMode.getter();
  CATWrapperSimple.__allocating_init(options:globals:)();
  static DialogPhase.canceled.getter();
  outlined init with copy of SignalProviding(v11 + 24, (v0 + 2));
  type metadata accessor for DialogOutputFactory(0);
  swift_allocObject();
  v12 = DialogOutputFactory.init(dialog:dialogPhase:sharedGlobals:)();
  v0[11] = v12;
  v17 = (*(*v12 + 136) + **(*v12 + 136));
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[12] = v13;
  *v13 = v14;
  v13[1] = VoicemailShouldPlayPromptFlowStrategy.makeConfirmationRejectedResponse();
  v15 = v0[7];

  return v17(v15);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v5 = v4;
  *(v3 + 104) = v0;

  if (v0)
  {

    return _swift_task_switch(CallingIntentConfirmationFlowStrategy.makeConfirmationRejectedResponse(app:intent:parameter:), 0, 0);
  }

  else
  {

    OUTLINED_FUNCTION_11();

    return v6();
  }
}

uint64_t VoicemailShouldPlayPromptFlowStrategy.makePromptForYesNoResponse()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t VoicemailShouldPlayPromptFlowStrategy.makePromptForYesNoResponse()()
{
  v16 = v0;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v2 = *(v0 + 24);
  v3 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_20_5(v3, static Logger.siriPhone);
  v4 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  OUTLINED_FUNCTION_87();
  if (OUTLINED_FUNCTION_86_0())
  {
    OUTLINED_FUNCTION_42();
    v14[0] = OUTLINED_FUNCTION_83();
    v14[1] = 0;
    OUTLINED_FUNCTION_15_61(4.8149e-34);
    OUTLINED_FUNCTION_114();
    v15 = v5;

    v6 = OUTLINED_FUNCTION_36_2();
    DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v6, v7, 0xD00000000000001CLL, v8);

    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0, v15, v14);
    OUTLINED_FUNCTION_63_1();
    *(v2 + 4) = v1;
    OUTLINED_FUNCTION_12(&dword_0, v9, v10, "%s");
    OUTLINED_FUNCTION_3_7();
    OUTLINED_FUNCTION_35();
  }

  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 32) = v11;
  *v11 = v12;
  v11[1] = ReadCallRecordsYesNoPromptFlowStrategy.makePromptForYesNoResponse();

  return VoicemailShouldPlayPromptFlowStrategy.executePatternAndManifest()();
}

uint64_t VoicemailShouldPlayPromptFlowStrategy.parseConfirmationResponse(input:)()
{
  OUTLINED_FUNCTION_15();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = type metadata accessor for PhoneError(0);
  v1[5] = v4;
  OUTLINED_FUNCTION_21(v4);
  v1[6] = OUTLINED_FUNCTION_45();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
  OUTLINED_FUNCTION_21(v5);
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v6, v7, v8);
}

{
  v2 = v0[9];
  v1 = v0[10];
  (*(**(v0[4] + 16) + 128))(v0[3]);
  outlined init with copy of ConfirmationResponse?(v1, v2);
  v3 = type metadata accessor for ConfirmationResponse();
  if (__swift_getEnumTagSinglePayload(v2, 1, v3) != 1)
  {
    v4 = v0[8];
    outlined init with copy of ConfirmationResponse?(v0[9], v4);
    v5 = *(v3 - 8);
    v6 = (*(v5 + 88))(v4, v3);
    if (v6 == enum case for ConfirmationResponse.confirmed(_:) || v6 == enum case for ConfirmationResponse.rejected(_:))
    {
      v9 = v0[9];
      v8 = v0[10];
      v10 = v0[7];
      (*(v5 + 104))(v10, v6, v3);
      __swift_storeEnumTagSinglePayload(v10, 0, 1, v3);
      SimpleConfirmationResponseProvider.init(_:)();
      outlined destroy of ConfirmationResponse?(v8);
      outlined destroy of ConfirmationResponse?(v9);

      OUTLINED_FUNCTION_11();
      goto LABEL_9;
    }

    (*(v5 + 8))(v0[8], v3);
  }

  v12 = v0[9];
  v13 = v0[10];
  v14 = v0[6];
  *v14 = 0;
  *(v14 + 8) = 0;
  *(v14 + 16) = 2;
  swift_storeEnumTagMultiPayload();
  _s27PhoneCallFlowDelegatePlugin0A5ErrorOACs0F0AAWlTm_15(&lazy protocol witness table cache variable for type PhoneError and conformance PhoneError, 255, type metadata accessor for PhoneError, &protocol conformance descriptor for PhoneError);
  swift_allocError();
  PhoneError.logged()(v15);
  outlined destroy of PhoneError(v14);
  swift_willThrow();
  outlined destroy of ConfirmationResponse?(v13);
  outlined destroy of ConfirmationResponse?(v12);

  OUTLINED_FUNCTION_11();
LABEL_9:

  return v11();
}

uint64_t VoicemailShouldPlayPromptFlowStrategy.executePatternAndManifest()()
{
  OUTLINED_FUNCTION_15();
  v1[7] = v2;
  v1[8] = v0;
  v3 = type metadata accessor for DialogPhase();
  OUTLINED_FUNCTION_21(v3);
  v1[9] = OUTLINED_FUNCTION_45();
  v4 = type metadata accessor for OutputGenerationManifest();
  v1[10] = v4;
  v1[11] = *(v4 - 8);
  v1[12] = OUTLINED_FUNCTION_45();
  v5 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v5, v6, v7);
}

{
  v19 = v0;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v2 = *(v0 + 64);
  v3 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_20_5(v3, static Logger.siriPhone);
  v4 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  OUTLINED_FUNCTION_87();
  if (OUTLINED_FUNCTION_86_0())
  {
    OUTLINED_FUNCTION_42();
    v17[0] = OUTLINED_FUNCTION_83();
    v17[1] = 0;
    OUTLINED_FUNCTION_15_61(4.8149e-34);
    OUTLINED_FUNCTION_114();
    v18 = v5;

    v6 = OUTLINED_FUNCTION_36_2();
    DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v6, v7, 0xD00000000000001BLL, v8);

    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0, v18, v17);
    OUTLINED_FUNCTION_63_1();
    *(v2 + 4) = v1;
    OUTLINED_FUNCTION_12(&dword_0, v9, v10, "%s");
    OUTLINED_FUNCTION_3_7();
    OUTLINED_FUNCTION_35();
  }

  v11 = *(v0 + 64);
  outlined init with copy of SignalProviding((v11 + 18), v0 + 16);
  v12 = v11[16];
  v13 = v11[17];
  __swift_project_boxed_opaque_existential_1(v11 + 13, v12);
  v16 = (*(v13 + 120) + **(v13 + 120));
  v14 = swift_task_alloc();
  *(v0 + 104) = v14;
  *v14 = v0;
  v14[1] = VoicemailShouldPlayPromptFlowStrategy.executePatternAndManifest();

  return v16(v12, v13);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  *(v2 + 112) = v1;
  *(v2 + 120) = v0;

  if (v0)
  {
    v3 = VoicemailShouldPlayPromptFlowStrategy.executePatternAndManifest();
  }

  else
  {
    v3 = VoicemailShouldPlayPromptFlowStrategy.executePatternAndManifest();
  }

  return _swift_task_switch(v3, 0, 0);
}

{
  OUTLINED_FUNCTION_27();
  static DialogPhase.confirmation.getter();
  OutputGenerationManifest.init(dialogPhase:_:)();
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[16] = v3;
  *v3 = v4;
  v3[1] = VoicemailShouldPlayPromptFlowStrategy.executePatternAndManifest();
  v5 = v0[14];
  v6 = v0[12];
  v7 = v0[7];

  return dispatch thunk of ResponseGenerating.makeResponseOutput(patternExecutionResult:outputGenerationManifest:)(v7, v5, v6, v1, v2);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v2 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v3 = v2;
  *(v4 + 136) = v0;

  if (v0)
  {
    v5 = VoicemailShouldPlayPromptFlowStrategy.executePatternAndManifest();
  }

  else
  {
    v5 = VoicemailShouldPlayPromptFlowStrategy.executePatternAndManifest();
  }

  return _swift_task_switch(v5, 0, 0);
}

{
  OUTLINED_FUNCTION_27();
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 80);

  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  OUTLINED_FUNCTION_11();

  return v4();
}

{
  OUTLINED_FUNCTION_27();
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  OUTLINED_FUNCTION_11();

  return v1();
}

{
  OUTLINED_FUNCTION_27();
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 80);

  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  OUTLINED_FUNCTION_11();

  return v4();
}

uint64_t closure #1 in VoicemailShouldPlayPromptFlowStrategy.executePatternAndManifest()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  __chkstk_darwin(v0 - 8);
  v2 = &v5 - v1;
  OutputGenerationManifest.canUseServerTTS.setter();
  _s27PhoneCallFlowDelegatePlugin0aB17NLContextProviderC34makeGenericConfirmationNLv3Context07SiriKitC00F6UpdateVyFZSo8INIntentC_So0P8ResponseCTt0g5();
  _s27PhoneCallFlowDelegatePlugin0aB17NLContextProviderC019makeSDAForOfferReadB19HistoryConfirmation33_3C2ABB69DDB872D121E37A32A4E694A9LLSay12SiriNLUTypes0W29_Nlu_External_SystemDialogActVGSgyFZSo08INSearchbL6IntentC_So08INSearchbL14IntentResponseCTtg5();
  NLContextUpdate.nluSystemDialogActs.setter();
  v3 = type metadata accessor for NLContextUpdate();
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v3);
  OutputGenerationManifest.nlContextUpdate.setter();
  return OutputGenerationManifest.listenAfterSpeaking.setter();
}

uint64_t VoicemailShouldPlayPromptFlowStrategy.deinit()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));
  outlined destroy of SearchCallHistorySharedGlobals(v0 + 64);

  return v0;
}

uint64_t VoicemailShouldPlayPromptFlowStrategy.__deallocating_deinit()
{
  VoicemailShouldPlayPromptFlowStrategy.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for YesNoPromptFlowStrategy.makePromptForYesNoResponse() in conformance VoicemailShouldPlayPromptFlowStrategy(uint64_t a1)
{
  v6 = (*(*v1 + 144) + **(*v1 + 144));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = closure #2 in ActionableCallControlFlow.execute();

  return v6(a1);
}

uint64_t protocol witness for PromptForConfirmationFlowStrategyAsync.parseConfirmationResponse(input:) in conformance VoicemailShouldPlayPromptFlowStrategy(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 152) + **(*v2 + 152));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = closure #1 in ActionableCallControlFlow.execute();

  return v8(a1, a2);
}

uint64_t protocol witness for PromptForConfirmationFlowStrategyAsync.makePromptForConfirmation(itemToConfirm:) in conformance VoicemailShouldPlayPromptFlowStrategy(uint64_t a1)
{
  v6 = (*(*v1 + 128) + **(*v1 + 128));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = closure #1 in ActionableCallControlFlow.execute();

  return v6(a1);
}

uint64_t protocol witness for PromptForConfirmationFlowStrategyAsync.makeRepromptOnEmptyParse(itemToConfirm:) in conformance VoicemailShouldPlayPromptFlowStrategy(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  ShouldPlayPromptFlowStrategy = type metadata accessor for VoicemailShouldPlayPromptFlowStrategy();
  v6 = _s27PhoneCallFlowDelegatePlugin0A5ErrorOACs0F0AAWlTm_15(&lazy protocol witness table cache variable for type VoicemailShouldPlayPromptFlowStrategy and conformance VoicemailShouldPlayPromptFlowStrategy, v5, type metadata accessor for VoicemailShouldPlayPromptFlowStrategy, &protocol conformance descriptor for VoicemailShouldPlayPromptFlowStrategy);
  *v3 = v1;
  v3[1] = closure #1 in ActionableCallControlFlow.execute();

  return YesNoPromptFlowStrategy.makeRepromptOnEmptyParse(itemToConfirm:)(a1, ShouldPlayPromptFlowStrategy, v6);
}

uint64_t protocol witness for PromptForConfirmationFlowStrategyAsync.makeRepromptOnLowConfidence(itemToConfirm:) in conformance VoicemailShouldPlayPromptFlowStrategy(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  ShouldPlayPromptFlowStrategy = type metadata accessor for VoicemailShouldPlayPromptFlowStrategy();
  v6 = _s27PhoneCallFlowDelegatePlugin0A5ErrorOACs0F0AAWlTm_15(&lazy protocol witness table cache variable for type VoicemailShouldPlayPromptFlowStrategy and conformance VoicemailShouldPlayPromptFlowStrategy, v5, type metadata accessor for VoicemailShouldPlayPromptFlowStrategy, &protocol conformance descriptor for VoicemailShouldPlayPromptFlowStrategy);
  *v3 = v1;
  v3[1] = closure #1 in ActionableCallControlFlow.execute();

  return YesNoPromptFlowStrategy.makeRepromptOnLowConfidence(itemToConfirm:)(a1, ShouldPlayPromptFlowStrategy, v6);
}

uint64_t protocol witness for PromptForConfirmationFlowStrategyAsync.makeConfirmationRejectedResponse() in conformance VoicemailShouldPlayPromptFlowStrategy(uint64_t a1)
{
  v6 = (*(*v1 + 136) + **(*v1 + 136));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = closure #1 in ActionableCallControlFlow.execute();

  return v6(a1);
}

uint64_t _s27PhoneCallFlowDelegatePlugin0A5ErrorOACs0F0AAWlTm_15(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

Swift::Int specialized RawRepresentable<>.hashValue.getter(uint64_t a1)
{
  return specialized RawRepresentable<>.hashValue.getter(a1, ActionableCallControlFlow.UnsupportedHoldActionReason.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, ActionableCallControlFlow.UnsupportedSwitchToFaceTimeReason.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, AddCallParticipantCATPatternsIdentifiers.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, AddCallParticipantCATs.Properties.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, AddCallParticipantCATsSimple.Properties.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, AnnounceCallBellCATs.Properties.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, AnnounceGroupFaceTimeInviteCATPatternsIdentifiers.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, AnnounceGroupFaceTimeInviteCATsSimple.ReadGroupFaceTimeInviteAnnouncementDialogIds.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, AnnounceIncomingCallCATs.Properties.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, AnnounceIncomingCallCATsSimple.IntentHandledResponseDialogIds.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, AnnounceVoicemailCATsSimple.Properties.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, AnnounceVoicemailCATsSimple.ReadVoicemailAnnouncementDialogIds.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, AnnounceVoicemailDirectAction.CodingKeys.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, AnswerCallCATs.Properties.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, AnswerCallCATsSimple.IntentHandledResponseDialogIds.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, CallControlUsoIdentifiers.PhoneSetting.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, DucFamilyNames.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, FaceTimeMessageControllerFlow.State.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, ForcedAppDisambiguationPhase.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, HangUpCallCATs.Properties.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, IdentifyIncomingCallerCATsSimple.Properties.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, IdentifyIncomingCallerCATsSimple.IntentHandledResponseDialogIds.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, FollowUpOfferType.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, UsoIdentifierNamespaceType.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, SpecifyingContactAddress.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, OngoingCallCATs.Properties.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, OngoingCallCATsSimple.Properties.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, OngoingCallCATsSimple.NewCallPromptDialogIds.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, PhoneAppResolutionLogger.CodePathId.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, PhoneAppSelectionSignalsGathererType.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, PhoneCallCommonCATPatternsIdentifiers.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, PhoneCallCommonCATs.Properties.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, PhoneCallCommonCATsSimple.Properties.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, PhoneCallControlCATs.Properties.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, PhoneCallControlCATsSimple.Properties.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, PhoneCallControlCATsSimple.CallControlDialogIds.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, PhoneCallControlCATsSimple.UnsupportedHoldActionDialogIds.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, PhoneCallControlCATsSimple.UnsupportedSwitchToFaceTimeDialogIds.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, PhoneCallControlNLIntent.Verb.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, PhoneCallControlNLIntent.Target.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, PhoneCallControlAction.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, PhoneCallDisplayTextCATs.Properties.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, PhoneCallDisplayTextCATsSimple.Properties.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, PhoneCallNLConstants.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, VoicemailVerbSemantics.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, PhoneCallVerbSemantics.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, PhoneCallAttribute.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, PhoneCallAudioRoute.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, PhoneCallConfirmation.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, PhoneCallNoun.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, PhoneCallReference.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, PhoneCallContactReference.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, PhoneCallVerb.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, VoiceMail.VoiceMailVerb.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, PhoneCallDestinationType.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, PhoneCallProvider.CodingKeys.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, PhoneCallRecord.CodingKeys.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, PhoneCallSlotNames.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, SlotResolutionError.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, PhoneIncomingCall.CodingKeys.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, LogTag.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, ContactSourceType.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, PhoneSearchCallHistoryIntent.CodingKeys.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, PhoneStartCallIntent.CodingKeys.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, PostCallInquiryAnswerCallCATs.Properties.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, ReaderNLConstants.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, SearchCallHistoryCATPatternsIdentifiers.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, SearchCallHistoryCATs.Properties.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, SearchCallHistoryCATsSimple.Properties.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, SearchCallHistoryCATsSimple.ConfirmCallTypesDialogIds.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, SearchCallHistoryCATsSimple.ConfirmDateCreatedDialogIds.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, SearchCallHistoryCATsSimple.ShowCallHistoryIntroDialogIds.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, SiriPhoneDefaultsKey.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, StartCallCATPatternsIdentifiers.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, StartCallCATs.Properties.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, StartCallCATsSimple.Properties.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, StartCallCATsSimple.BusinessCallingFeatureDisabledDialogIds.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, StartCallCATsSimple.ConfirmAppDialogIds.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, StartCallCATsSimple.ConfirmContactsDialogIds.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, StartCallCATsSimple.DisambiguateAppsVoiceModeDialogIds.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, StartCallCATsSimple.DisambiguateContactsDialogIds.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, StartCallCATsSimple.DisambiguateContactsHandlesDialogIds.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, StartCallCATsSimple.EmergencyCountdownDialogIds.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, StartCallCATsSimple.IntentConfirmationWithRestrictedContactsDialogIds.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, StartCallCATsSimple.IntentHandledResponseDialogIds.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, StartCallCATsSimple.IntentHandledResponseEmergencyDialogIds.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, StartCallCATsSimple.ErrorWithCodeAirplaneModeEnabledDialogIds.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, StartCallCATsSimple.RelationshipDialogIds.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, StartCallCATsSimple.UnsupportedContactsInvalidHandleDialogIds.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, StartCallCATsSimple.UnsupportedContactsNoContactFoundDialogIds.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, StartCallCATsSimple.UnsupportedContactsNoHandleForLabelDialogIds.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, StartCallCATsSimple.UnsupportedPreferredCallProviderDialogIds.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, StartCallCATsSimple.UnsupportedPreferredCallProviderTelephonyUnsupportedDialogIds.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, SuggestionsCATsSimple.Properties.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, TrialSmartAppSelectionConfigKey.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, UnsupportedFlowCATPatternsIdentifiers.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, UnsupportedFlowCATs.Properties.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, UnsupportedFlowCATsSimple.Properties.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, UnsupportedPhoneCall.rawValue.getter);
}

Swift::Int specialized RawRepresentable<>.hashValue.getter()
{
  v1 = OUTLINED_FUNCTION_6_97();
  if (v0)
  {
    if (v0 == 1)
    {
      v3 = 0x646C6F486E4FLL;
    }

    else
    {
      v3 = 0x676E69676E6952;
    }
  }

  else
  {
    v3 = 0x636972656E6547;
  }

  OUTLINED_FUNCTION_39_3(v1, v3, v2);

  return Hasher._finalize()();
}

{
  v1 = OUTLINED_FUNCTION_6_97();
  if (v0)
  {
    v3 = 1735289202;
  }

  else
  {
    v3 = 6579297;
  }

  OUTLINED_FUNCTION_39_3(v1, v3, v2);

  return Hasher._finalize()();
}

{
  v1 = OUTLINED_FUNCTION_6_97();
  if (v0)
  {
    v3 = 0x6F725074726F6873;
  }

  else
  {
    v3 = 0x6D6F7250676E6F6CLL;
  }

  OUTLINED_FUNCTION_39_3(v1, v3, v2);

  return Hasher._finalize()();
}

{
  v0 = OUTLINED_FUNCTION_6_97();
  OUTLINED_FUNCTION_39_3(v0, 0x6423317473726966, v1);

  return Hasher._finalize()();
}

{
  v1 = OUTLINED_FUNCTION_6_97();
  if (v0)
  {
    v3 = 0x32676F6C616964;
  }

  else
  {
    v3 = 0x6573557473726946;
  }

  OUTLINED_FUNCTION_39_3(v1, v3, v2);

  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_6_97();
  String.hash(into:)();

  return Hasher._finalize()();
}

{
  v0 = OUTLINED_FUNCTION_17_58();
  OUTLINED_FUNCTION_13_3(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  String.hash(into:)();
  return Hasher._finalize()();
}

{
  v1 = OUTLINED_FUNCTION_6_97();
  if (v0)
  {
    if (v0 == 1)
    {
      v3 = 0x6563696F76;
    }

    else
    {
      v3 = 0x656D756C6F76;
    }
  }

  else
  {
    v3 = 0x707954616964656DLL;
  }

  OUTLINED_FUNCTION_39_3(v1, v3, v2);

  return Hasher._finalize()();
}

{
  return specialized RawRepresentable<>.hashValue.getter(0x6F68706F7263696DLL, 0xEA0000000000656ELL);
}

{
  v1 = OUTLINED_FUNCTION_6_97();
  if (v0)
  {
    v3 = 0x6C61636F6CLL;
  }

  else
  {
    v3 = 0x6E676965726F66;
  }

  OUTLINED_FUNCTION_39_3(v1, v3, v2);

  return Hasher._finalize()();
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(0);
}

{
  v1 = OUTLINED_FUNCTION_14_64();
  v3 = 863390798;
  switch(v0)
  {
    case 1:
      v3 = 880168014;
      break;
    case 2:
      v3 = 0x746E65696C434649;
      break;
    case 3:
      OUTLINED_FUNCTION_11_31();
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_39_3(v1, v3, v2);

  return Hasher._finalize()();
}

{
  return OUTLINED_FUNCTION_7_89(0x747369486C6C6163, 7959151);
}

{
  OUTLINED_FUNCTION_6_97();
  OUTLINED_FUNCTION_16_10();
  if (v2)
  {
    v3 = 0x746163696C707041;
  }

  else
  {
    v3 = 0xD000000000000015;
  }

  OUTLINED_FUNCTION_39_3(v0, v3, v1);

  return Hasher._finalize()();
}

{
  v1 = OUTLINED_FUNCTION_14_64();
  v3 = 0x7373656E69737562;
  switch(v0)
  {
    case 1:
      OUTLINED_FUNCTION_24_7();
      v3 = v4 & 0xFFFFFFFFFFFFLL | 0x614E000000000000;
      break;
    case 2:
      OUTLINED_FUNCTION_24_7();
      v3 = v5 & 0xFFFFFFFFFFFFLL | 0x7250000000000000;
      break;
    case 3:
      OUTLINED_FUNCTION_24_7();
      v3 = v6 & 0xFFFFFFFFFFFFLL | 0x7553000000000000;
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_39_3(v1, v3, v2);

  return Hasher._finalize()();
}

{
  return OUTLINED_FUNCTION_21_53(0x75466E6F73726570, 0x656D614E6C6CLL);
}

{
  v1 = OUTLINED_FUNCTION_6_97();
  if (v0)
  {
    v3 = 0x636972656E6567;
  }

  else
  {
    v3 = 0x656D695465636166;
  }

  OUTLINED_FUNCTION_39_3(v1, v3, v2);

  return Hasher._finalize()();
}

{
  v1 = OUTLINED_FUNCTION_6_97();
  if (v0)
  {
    v3 = 0x6C61436F54646461;
  }

  else
  {
    v3 = 0x6C6C614377656ELL;
  }

  OUTLINED_FUNCTION_39_3(v1, v3, v2);

  return Hasher._finalize()();
}

{
  v1 = OUTLINED_FUNCTION_6_97();
  if (v0)
  {
    if (v0 == 1)
    {
      v3 = 0x654E646E41646E65;
    }

    else
    {
      v3 = 0x4E646E41646C6F68;
    }
  }

  else
  {
    v3 = 6579297;
  }

  OUTLINED_FUNCTION_39_3(v1, v3, v2);

  return Hasher._finalize()();
}

{
  v1 = OUTLINED_FUNCTION_6_97();
  if (v0)
  {
    if (v0 == 1)
    {
      v3 = 0x6C6F566B63656863;
    }

    else
    {
      v3 = 0x636972656E6567;
    }
  }

  else
  {
    v3 = 0x6F5665676E616863;
  }

  OUTLINED_FUNCTION_39_3(v1, v3, v2);

  return Hasher._finalize()();
}

{
  v0 = OUTLINED_FUNCTION_17_58();
  OUTLINED_FUNCTION_13_3(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  String.hash(into:)();
  return Hasher._finalize()();
}

{
  return OUTLINED_FUNCTION_20_50(0x6C6562616CLL);
}

{
  return OUTLINED_FUNCTION_7_89(0x6974746553707061, 7563118);
}

{
  return OUTLINED_FUNCTION_2_128(1819042147);
}

{
  return OUTLINED_FUNCTION_9_86(0x6C65636E6163);
}

{
  return specialized RawRepresentable<>.hashValue.getter(0x64656C65636E6163, 0xE800000000000000);
}

{
  v1 = OUTLINED_FUNCTION_6_97();
  if (v0)
  {
    if (v0 == 1)
    {
      v3 = 28532;
    }

    else
    {
      v3 = 0x6F68576F74;
    }
  }

  else
  {
    v3 = 0x546563614677656ELL;
  }

  OUTLINED_FUNCTION_39_3(v1, v3, v2);

  return Hasher._finalize()();
}

{
  return OUTLINED_FUNCTION_8_87(0x636E656772656D65, 0x6C6C614379);
}

{
  v0 = OUTLINED_FUNCTION_17_58();
  OUTLINED_FUNCTION_13_3(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  String.hash(into:)();
  return Hasher._finalize()();
}

{
  return OUTLINED_FUNCTION_9_86(0x74706D6F7270);
}

{
  v0 = OUTLINED_FUNCTION_6_97();
  OUTLINED_FUNCTION_39_3(v0, 0x2331686374697773, v1);

  return Hasher._finalize()();
}

{
  return OUTLINED_FUNCTION_2_128(1852403562);
}

{
  return OUTLINED_FUNCTION_0_126(0x6C6C614377656ELL);
}

{
  return OUTLINED_FUNCTION_2_128(1954047342);
}

{
  return OUTLINED_FUNCTION_0_126(0x7070416E65706FLL);
}

{
  return OUTLINED_FUNCTION_22_39(0x746E6F436E65706FLL, 1937007457);
}

{
  return OUTLINED_FUNCTION_8_87(0x697263736E617254, 0x6E6F697470);
}

{
  OUTLINED_FUNCTION_6_97();
  String.hash(into:)();

  return Hasher._finalize()();
}

{
  return OUTLINED_FUNCTION_0_126(0x6E776F6E6B6E75);
}

{
  return OUTLINED_FUNCTION_8_87(0x6553657461647075, 0x676E697474);
}

{
  v1 = OUTLINED_FUNCTION_6_97();
  if (v0)
  {
    v3 = 0x656E6F6850657375;
  }

  else
  {
    v3 = 0x68506E6F4E657375;
  }

  OUTLINED_FUNCTION_39_3(v1, v3, v2);

  return Hasher._finalize()();
}

{
  v1 = OUTLINED_FUNCTION_6_97();
  if (v0)
  {
    v3 = 0x644970756F7267;
  }

  else
  {
    v3 = 0x6D614E70756F7267;
  }

  OUTLINED_FUNCTION_39_3(v1, v3, v2);

  return Hasher._finalize()();
}

{
  v1 = OUTLINED_FUNCTION_6_97();
  if (v0)
  {
    v3 = 0x7069636974726170;
  }

  else
  {
    v3 = 0x7954657469766E69;
  }

  OUTLINED_FUNCTION_39_3(v1, v3, v2);

  return Hasher._finalize()();
}

{
  v1 = OUTLINED_FUNCTION_6_97();
  if (v0)
  {
    v3 = 0x6E6F697461727564;
  }

  else
  {
    v3 = 0x73456F54656D6974;
  }

  OUTLINED_FUNCTION_39_3(v1, v3, v2);

  return Hasher._finalize()();
}

{
  v1 = OUTLINED_FUNCTION_14_64();
  v3 = 7562617;
  switch(v0)
  {
    case 1:
      v3 = 28526;
      break;
    case 2:
      v3 = 0x206D7269666E6F63;
      break;
    case 3:
      v3 = 0x63207463656A6572;
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_39_3(v1, v3, v2);

  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_6_97();
  String.hash(into:)();

  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_6_97();
  String.hash(into:)();

  return Hasher._finalize()();
}

{
  v1 = OUTLINED_FUNCTION_6_97();
  if (v0)
  {
    v3 = 0x6563696F76;
  }

  else
  {
    v3 = 0x69616D6563696F76;
  }

  OUTLINED_FUNCTION_39_3(v1, v3, v2);

  return Hasher._finalize()();
}

{
  v1 = OUTLINED_FUNCTION_6_97();
  if (v0)
  {
    if (v0 == 1)
    {
      v3 = 1836020326;
    }

    else
    {
      v3 = 1752459639;
    }
  }

  else
  {
    v3 = 28532;
  }

  OUTLINED_FUNCTION_39_3(v1, v3, v2);

  return Hasher._finalize()();
}

{
  v1 = OUTLINED_FUNCTION_6_97();
  if (v0)
  {
    if (v0 == 1)
    {
      v3 = 0x656D697465636166;
    }

    else
    {
      v3 = 0x7261506472696874;
    }
  }

  else
  {
    v3 = 0x6E6F6870656C6574;
  }

  OUTLINED_FUNCTION_39_3(v1, v3, v2);

  return Hasher._finalize()();
}

{
  return specialized RawRepresentable<>.hashValue.getter(0x756F756769626D61, 0xEF656C646E614873);
}

{
  return specialized RawRepresentable<>.hashValue.getter(0x636E656772656D65, 0xEF7265626D754E79);
}

{
  v1 = OUTLINED_FUNCTION_6_97();
  if (v0)
  {
    if (v0 == 1)
    {
      v3 = 0x7461446567616D69;
    }

    else
    {
      v3 = 0x63417463656C6573;
    }
  }

  else
  {
    OUTLINED_FUNCTION_24_7();
  }

  OUTLINED_FUNCTION_39_3(v1, v3, v2);

  return Hasher._finalize()();
}

{
  return OUTLINED_FUNCTION_2_128(1953720684);
}

{
  v1 = OUTLINED_FUNCTION_6_97();
  if (v0)
  {
    if (v0 == 1)
    {
      v3 = 1886352499;
    }

    else
    {
      v3 = 0x746165706572;
    }
  }

  else
  {
    v3 = 0x65756E69746E6F63;
  }

  OUTLINED_FUNCTION_39_3(v1, v3, v2);

  return Hasher._finalize()();
}

{
  v1 = OUTLINED_FUNCTION_14_64();
  v3 = 0x7473726966;
  switch(v0)
  {
    case 1:
      v3 = 0x656C6464696DLL;
      break;
    case 2:
      v3 = 1953718636;
      break;
    case 3:
      OUTLINED_FUNCTION_11_31();
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_39_3(v1, v3, v2);

  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_6_97();
  OUTLINED_FUNCTION_16_10();
  if (v2)
  {
    v3 = 0xD000000000000014;
  }

  else
  {
    v3 = 0x31676F6C616964;
  }

  OUTLINED_FUNCTION_39_3(v0, v3, v1);

  return Hasher._finalize()();
}

{
  v0 = OUTLINED_FUNCTION_14_64();
  OUTLINED_FUNCTION_39_3(v0, 0x61696423316C6C61, v1);

  return Hasher._finalize()();
}

{
  return OUTLINED_FUNCTION_20_50(0x6573756170);
}

{
  OUTLINED_FUNCTION_6_97();
  OUTLINED_FUNCTION_16_10();
  if (v2)
  {
    v3 = 0x32676F6C616964;
  }

  else
  {
    v3 = 0xD000000000000015;
  }

  OUTLINED_FUNCTION_39_3(v0, v3, v1);

  return Hasher._finalize()();
}

{
  v1 = OUTLINED_FUNCTION_14_64();
  v3 = 28494;
  switch(v0)
  {
    case 1:
      v3 = 0x73746E65636552;
      break;
    case 2:
      v3 = 0x69616D6563696F56;
      break;
    case 3:
      v3 = 7562585;
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_39_3(v1, v3, v2);

  return Hasher._finalize()();
}

{
  v0 = OUTLINED_FUNCTION_17_58();
  OUTLINED_FUNCTION_13_3(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  String.hash(into:)();
  return Hasher._finalize()();
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(0);
}

{
  return OUTLINED_FUNCTION_21_53(0x56495443415F4F4ELL, 0x4C4C41435F45);
}

{
  v1 = OUTLINED_FUNCTION_6_97();
  if (v0)
  {
    if (v0 == 1)
    {
      v3 = 0x6C61636F4C6E6F6ELL;
    }

    else
    {
      v3 = 1701736302;
    }
  }

  else
  {
    v3 = 0x6C61636F6CLL;
  }

  OUTLINED_FUNCTION_39_3(v1, v3, v2);

  return Hasher._finalize()();
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(0);
}

{
  v1 = OUTLINED_FUNCTION_6_97();
  if (v0)
  {
    v3 = 0x32676F6C616964;
  }

  else
  {
    v3 = 0x6E776F6E6B6E55;
  }

  OUTLINED_FUNCTION_93_0(v1, v3, v2);

  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_6_97();
  OUTLINED_FUNCTION_16_10();
  if (v2)
  {
    v3 = 0x32676F6C616964;
  }

  else
  {
    v3 = 0xD000000000000016;
  }

  OUTLINED_FUNCTION_39_3(v0, v3, v1);

  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_6_97();
  OUTLINED_FUNCTION_16_10();
  if (v2)
  {
    v3 = 0xD00000000000001ELL;
  }

  else
  {
    v3 = 0x65766947656D6153;
  }

  OUTLINED_FUNCTION_39_3(v0, v3, v1);

  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_6_97();
  OUTLINED_FUNCTION_16_10();
  if (v2)
  {
    v3 = 0x436D7269666E6F43;
  }

  else
  {
    v3 = 0xD000000000000012;
  }

  OUTLINED_FUNCTION_39_3(v0, v3, v1);

  return Hasher._finalize()();
}

{
  v0 = OUTLINED_FUNCTION_17_58();
  OUTLINED_FUNCTION_13_3(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  String.hash(into:)();
  return Hasher._finalize()();
}

{
  v0 = OUTLINED_FUNCTION_17_58();
  OUTLINED_FUNCTION_13_3(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  String.hash(into:)();
  return Hasher._finalize()();
}

{
  return OUTLINED_FUNCTION_0_126(0x636972656E6567);
}

{
  v1 = OUTLINED_FUNCTION_6_97();
  if (v0)
  {
    v3 = 0x6423317473726966;
  }

  else
  {
    v3 = 0x31676F6C616964;
  }

  OUTLINED_FUNCTION_39_3(v1, v3, v2);

  return Hasher._finalize()();
}

{
  v1 = OUTLINED_FUNCTION_6_97();
  if (v0)
  {
    if (v0 == 1)
    {
      v3 = 0x756F687469575446;
    }

    else
    {
      v3 = 0x636972656E6547;
    }
  }

  else
  {
    v3 = 0x6544687469575446;
  }

  OUTLINED_FUNCTION_39_3(v1, v3, v2);

  return Hasher._finalize()();
}

{
  return OUTLINED_FUNCTION_7_89(0x6C646E7542707061, 6572389);
}

{
  OUTLINED_FUNCTION_6_97();
  specialized RawRepresentable<>.hash(into:)(v2, v0);
  return Hasher._finalize()();
}

{
  v0 = OUTLINED_FUNCTION_17_58();
  OUTLINED_FUNCTION_13_3(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  String.hash(into:)();
  return Hasher._finalize()();
}

{
  v0 = OUTLINED_FUNCTION_17_58();
  OUTLINED_FUNCTION_13_3(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  String.hash(into:)();
  return Hasher._finalize()();
}

{
  v1 = OUTLINED_FUNCTION_6_97();
  if (v0)
  {
    v3 = 0x32676F6C616964;
  }

  else
  {
    v3 = 0x31676F6C616964;
  }

  OUTLINED_FUNCTION_93_0(v1, v3, v2);

  return Hasher._finalize()();
}

{
  v1 = OUTLINED_FUNCTION_6_97();
  OUTLINED_FUNCTION_93_0(v1, (v0 << 48) + 0x31676F6C616964, v2);

  return Hasher._finalize()();
}

{
  v1 = OUTLINED_FUNCTION_6_97();
  if (v0)
  {
    v3 = 0x636972656E6567;
  }

  else
  {
    v3 = 0x79616C50726163;
  }

  OUTLINED_FUNCTION_93_0(v1, v3, v2);

  return Hasher._finalize()();
}

Swift::Int specialized RawRepresentable<>.hashValue.getter(char a1, uint64_t (*a2)(void))
{
  OUTLINED_FUNCTION_17_58();
  v4 = a2(a1 & 1);
  OUTLINED_FUNCTION_72_3(v4, v5, v6);

  return Hasher._finalize()();
}

Swift::Int specialized RawRepresentable<>.hashValue.getter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_17_58();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int specialized RawRepresentable<>.hashValue.getter(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  OUTLINED_FUNCTION_17_58();
  v4 = a2(a1);
  OUTLINED_FUNCTION_72_3(v4, v5, v6);

  return Hasher._finalize()();
}

Swift::Int specialized RawRepresentable<>.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t VoiceOnlyEmergencyConfirmationFlow.__allocating_init(sharedGlobals:skIntent:startCallCATsSimple:phoneCallCommonCATsSimple:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  VoiceOnlyEmergencyConfirmationFlow.init(sharedGlobals:skIntent:startCallCATsSimple:phoneCallCommonCATsSimple:)(a1, a2, a3, a4);
  return v8;
}

uint64_t VoiceOnlyEmergencyConfirmationFlow.state.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 80) = a1;
  return result;
}

void VoiceOnlyEmergencyConfirmationFlow.promptResponse.didset()
{
  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static Logger.siriPhone);

  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v8 = v3;
    *v2 = 136315138;
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB12ConfirmationOSgMd, &_s27PhoneCallFlowDelegatePlugin0aB12ConfirmationOSgMR);
    v4 = String.init<A>(describing:)();
    v6 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v5, &v8);

    *(v2 + 4) = v6;
    _os_log_impl(&dword_0, oslog, v1, "#VoiceOnlyEmergencyConfirmationFlow promptResponse: %s", v2, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v3);
  }

  else
  {
  }
}

void VoiceOnlyEmergencyConfirmationFlow.promptResponse.setter(char a1)
{
  swift_beginAccess();
  *(v1 + 81) = a1;
  VoiceOnlyEmergencyConfirmationFlow.promptResponse.didset();
}

void (*VoiceOnlyEmergencyConfirmationFlow.promptResponse.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return VoiceOnlyEmergencyConfirmationFlow.promptResponse.modify;
}

void VoiceOnlyEmergencyConfirmationFlow.promptResponse.modify(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    VoiceOnlyEmergencyConfirmationFlow.promptResponse.didset();
  }
}

uint64_t VoiceOnlyEmergencyConfirmationFlow.State.description.getter(unsigned __int8 a1)
{
  v1 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v2 = 0x46676E6974696177;
    }

    else
    {
      v2 = 0x6365527475706E69;
    }

    if (v1 == 1)
    {
      v3 = 0xEF7475706E49726FLL;
    }

    else
    {
      v3 = 0xED00006465766965;
    }
  }

  else
  {
    v3 = 0xEB0000000064657ALL;
    v2 = OUTLINED_FUNCTION_34_31();
  }

  v4 = v3;
  String.append(_:)(*&v2);

  return 46;
}

uint64_t VoiceOnlyEmergencyConfirmationFlow.State.rawValue.getter(char a1)
{
  if (!a1)
  {
    return OUTLINED_FUNCTION_34_31();
  }

  if (a1 == 1)
  {
    return 0x46676E6974696177;
  }

  return 0x6365527475706E69;
}

PhoneCallFlowDelegatePlugin::VoiceOnlyEmergencyConfirmationFlow::State_optional __swiftcall VoiceOnlyEmergencyConfirmationFlow.State.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of VoiceOnlyEmergencyConfirmationFlow.State.init(rawValue:), v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

PhoneCallFlowDelegatePlugin::VoiceOnlyEmergencyConfirmationFlow::State_optional protocol witness for RawRepresentable.init(rawValue:) in conformance VoiceOnlyEmergencyConfirmationFlow.State@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::VoiceOnlyEmergencyConfirmationFlow::State_optional *a2@<X8>)
{
  result.value = VoiceOnlyEmergencyConfirmationFlow.State.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance VoiceOnlyEmergencyConfirmationFlow.State@<X0>(uint64_t *a1@<X8>)
{
  result = VoiceOnlyEmergencyConfirmationFlow.State.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t VoiceOnlyEmergencyConfirmationFlow.exitValue.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
  __chkstk_darwin(v4 - 8);
  v54 = &v47[-v5];
  v6 = type metadata accessor for ConfirmationResponse();
  OUTLINED_FUNCTION_7();
  v8 = v7;
  __chkstk_darwin(v9);
  v11 = &v47[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v14 = &v47[-v13];
  OUTLINED_FUNCTION_2_0();
  v51 = *(v15 + 152);
  v16 = v51();
  if (v16 != 5)
  {
    if (PhoneCallConfirmation.rawValue.getter(v16) == 7562617 && v21 == 0xE300000000000000)
    {
    }

    else
    {
      v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v23 & 1) == 0)
      {
        goto LABEL_2;
      }
    }

    v20 = &enum case for ConfirmationResponse.confirmed(_:);
    goto LABEL_13;
  }

LABEL_2:
  v17 = v2[5];
  v18 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v17);
  (*(v18 + 224))(v17, v18);
  OUTLINED_FUNCTION_24_2();
  LOBYTE(v17) = (*(v19 + 120))(1);

  v20 = &enum case for ConfirmationResponse.rejected(_:);
  if (v17)
  {
    v20 = &enum case for ConfirmationResponse.confirmed(_:);
  }

LABEL_13:
  (*(v8 + 104))(v14, *v20, v6);
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v24 = type metadata accessor for Logger();
  __swift_project_value_buffer(v24, static Logger.siriPhone);
  v52 = *(v8 + 16);
  v53 = v14;
  v52(v11, v14, v6);

  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v50 = a1;
    v28 = v27;
    v49 = swift_slowAlloc();
    v56 = v49;
    *v28 = 136315394;
    v48 = v26;
    v55 = v51();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB12ConfirmationOSgMd, &_s27PhoneCallFlowDelegatePlugin0aB12ConfirmationOSgMR);
    v29 = String.init<A>(describing:)();
    v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, &v56);

    *(v28 + 4) = v31;
    *(v28 + 12) = 2080;
    _s11SiriKitFlow20ConfirmationResponseOACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type ConfirmationResponse and conformance ConfirmationResponse, 255, &type metadata accessor for ConfirmationResponse, &protocol conformance descriptor for ConfirmationResponse);
    v32 = dispatch thunk of CustomStringConvertible.description.getter();
    v34 = v33;
    v35 = OUTLINED_FUNCTION_32_28();
    v14(v35);
    v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v34, &v56);

    *(v28 + 14) = v36;
    _os_log_impl(&dword_0, v25, v48, "#VoiceOnlyEmergencyConfirmationFlow promptResponse=%s produced confirmationResponse=%s", v28, 0x16u);
    v37 = v49;
    swift_arrayDestroy();
    OUTLINED_FUNCTION_26_0(v37);
    v38 = v28;
    a1 = v50;
    OUTLINED_FUNCTION_26_0(v38);
  }

  else
  {

    v39 = OUTLINED_FUNCTION_32_28();
    v14(v39);
  }

  v41 = v53;
  v40 = v54;
  v52(v54, v53, v6);
  __swift_storeEnumTagSinglePayload(v40, 0, 1, v6);
  v42 = v2[7];
  type metadata accessor for INStartCallIntent();
  v43 = v42;
  ConfirmIntentAnswer.init(confirmationResponse:intent:)();
  (v14)(v41, v6);
  v44 = enum case for PromptResult.answered<A>(_:);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow12PromptResultOyAA19ConfirmIntentAnswerVySo011INStartCallG0CGGMd, &_s11SiriKitFlow12PromptResultOyAA19ConfirmIntentAnswerVySo011INStartCallG0CGGMR);
  OUTLINED_FUNCTION_40();
  return (*(v45 + 104))(a1, v44);
}

uint64_t VoiceOnlyEmergencyConfirmationFlow.init(sharedGlobals:skIntent:startCallCATsSimple:phoneCallCommonCATsSimple:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  *(v5 + 81) = 5;
  outlined init with copy of SignalProviding(a1, v5 + 16);
  *(v5 + 80) = 0;
  *(v5 + 56) = a2;
  *(v5 + 64) = a3;
  *(v5 + 72) = a4;
  v9 = *(v5 + 40);
  v10 = *(v5 + 48);
  __swift_project_boxed_opaque_existential_1((v5 + 16), v9);
  v11 = *(v10 + 224);
  v12 = a2;

  v11(v9, v10);
  OUTLINED_FUNCTION_24_2();
  (*(v13 + 128))();

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v5;
}

uint64_t VoiceOnlyEmergencyConfirmationFlow.on(input:)(uint64_t a1)
{
  v97 = a1;
  v1 = type metadata accessor for Parse();
  OUTLINED_FUNCTION_7();
  v3 = v2;
  __chkstk_darwin(v4);
  v6 = &v92 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v92 - v8;
  v10 = type metadata accessor for Input();
  OUTLINED_FUNCTION_7();
  v12 = v11;
  __chkstk_darwin(v13);
  v15 = &v92 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_2_0();
  v17 = (*(v16 + 128))();
  v96 = v6;
  if (v17)
  {
    if (v17 == 1)
    {

      goto LABEL_6;
    }
  }

  else
  {
    OUTLINED_FUNCTION_34_31();
  }

  v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v6 & 1) == 0)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v45 = type metadata accessor for Logger();
    __swift_project_value_buffer(v45, static Logger.siriPhone);
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v46, v47))
    {
      goto LABEL_57;
    }

    v48 = OUTLINED_FUNCTION_65_0();
    *v48 = 0;
    goto LABEL_56;
  }

LABEL_6:
  v93 = v9;
  v94 = v3;
  v95 = v1;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, static Logger.siriPhone);
  (*(v12 + 16))(v15, v97, v10);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v6 = swift_slowAlloc();
    v92 = swift_slowAlloc();
    v98[0] = v92;
    *v6 = 136315138;
    _s11SiriKitFlow20ConfirmationResponseOACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type Input and conformance Input, 255, &type metadata accessor for Input, &protocol conformance descriptor for Input);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v22;
    (*(v12 + 8))(v15, v10);
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v23, v98);

    *(v6 + 4) = v24;
    _os_log_impl(&dword_0, v19, v20, "#VoiceOnlyEmergencyConfirmationFlow got input: %s", v6, 0xCu);
    v25 = v92;
    __swift_destroy_boxed_opaque_existential_1(v92);
    OUTLINED_FUNCTION_26_0(v25);
    OUTLINED_FUNCTION_26_0(v6);
  }

  else
  {

    (*(v12 + 8))(v15, v10);
  }

  v26 = v93;
  Input.parse.getter();
  v27 = v94;
  v28 = v95;
  v29 = (*(v94 + 88))(v26, v95);
  if (v29 == enum case for Parse.NLv3IntentOnly(_:))
  {
    OUTLINED_FUNCTION_11_70();
    v30 = OUTLINED_FUNCTION_1_1();
    v31(v30);
    OUTLINED_FUNCTION_42_26();
    Input.parse.getter();
    (*(*v6 + 192))(v104, v20);

    v32 = *(v27 + 8);
    v32(v20, v28);
    outlined init with copy of PhoneCallNLIntent?(v104, v98);
    if (v99)
    {
      v20 = v100;
      __swift_project_boxed_opaque_existential_1(v98, v99);
      v33 = OUTLINED_FUNCTION_1_1();
      v35 = v34(v33);
      __swift_destroy_boxed_opaque_existential_1(v98);
      if (v35 != 5)
      {
        OUTLINED_FUNCTION_41_0();
        (*(v36 + 160))(v35);
LABEL_41:
        v81 = &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd;
        v82 = &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR;
        v83 = v104;
LABEL_51:
        outlined destroy of SpeakableString?(v83, v81, v82);
        v32(v26, v28);
        goto LABEL_52;
      }
    }

    else
    {
      outlined destroy of SpeakableString?(v98, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
    }

    OUTLINED_FUNCTION_11_70();
    v66 = OUTLINED_FUNCTION_1_1();
    v67(v66);
    OUTLINED_FUNCTION_24_2();
    v69 = (*(v68 + 128))();

    specialized BidirectionalCollection.last.getter(v69, v98);

    if (!v100)
    {
      outlined destroy of SpeakableString?(v104, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
      v81 = &_s27PhoneCallFlowDelegatePlugin20TransformationResultVSgMd;
      v82 = &_s27PhoneCallFlowDelegatePlugin20TransformationResultVSgMR;
      v83 = v98;
      goto LABEL_51;
    }

    outlined init with copy of PhoneCallNLIntent?(&v101, v102);
    outlined destroy of TransformationResult(v98);
    if (v103)
    {
      __swift_project_boxed_opaque_existential_1(v102, v103);
      v70 = OUTLINED_FUNCTION_46_30();
      __swift_destroy_boxed_opaque_existential_1(v102);
      if (!v70)
      {
        goto LABEL_41;
      }

      outlined init with copy of PhoneCallNLIntent?(v104, v98);
      if (v99)
      {
        __swift_project_boxed_opaque_existential_1(v98, v99);
        v71 = OUTLINED_FUNCTION_46_30();
        __swift_destroy_boxed_opaque_existential_1(v98);
        if (v71)
        {
          v72 = Logger.logObject.getter();
          v73 = static os_log_type_t.debug.getter();
          if (OUTLINED_FUNCTION_51_0(v73))
          {
            v74 = OUTLINED_FUNCTION_65_0();
            OUTLINED_FUNCTION_103(v74);
            OUTLINED_FUNCTION_36_0(&dword_0, v75, v76, "#VoiceOnlyEmergencyConfirmationFlow NLv3IntentOnly emergency reprompt with emergency call parse");
            OUTLINED_FUNCTION_26_0(v20);
          }

          OUTLINED_FUNCTION_11_70();
          v77 = OUTLINED_FUNCTION_1_1();
          v78(v77);
          OUTLINED_FUNCTION_24_2();
          (*(v79 + 112))();

          OUTLINED_FUNCTION_41_0();
          (*(v80 + 160))(0);
        }

        goto LABEL_41;
      }

      outlined destroy of SpeakableString?(v104, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
      v83 = v98;
    }

    else
    {
      outlined destroy of SpeakableString?(v104, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
      v83 = v102;
    }

    v81 = &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd;
    v82 = &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR;
    goto LABEL_51;
  }

  v37 = v29;
  if (v29 == enum case for Parse.NLv4IntentOnly(_:) || v29 == enum case for Parse.uso(_:))
  {
    v39 = *(v27 + 8);
    v39(v26, v28);
    OUTLINED_FUNCTION_11_70();
    v40 = OUTLINED_FUNCTION_1_1();
    v41(v40);
    OUTLINED_FUNCTION_42_26();
    Input.parse.getter();
    (*(*v6 + 192))(v98, v37);

    v39(v37, v28);
    if (v99)
    {
      __swift_project_boxed_opaque_existential_1(v98, v99);
      v42 = OUTLINED_FUNCTION_1_1();
      v44 = v43(v42);
      __swift_destroy_boxed_opaque_existential_1(v98);
    }

    else
    {
      outlined destroy of SpeakableString?(v98, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
      v44 = 5;
    }

    OUTLINED_FUNCTION_41_0();
    (*(v88 + 160))(v44);
  }

  else
  {
    v50 = enum case for Parse.empty(_:);
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.debug.getter();
    v53 = OUTLINED_FUNCTION_51_0(v52);
    if (v37 == v50)
    {
      if (v53)
      {
        v54 = OUTLINED_FUNCTION_65_0();
        OUTLINED_FUNCTION_103(v54);
        OUTLINED_FUNCTION_36_0(&dword_0, v55, v56, "#VoiceOnlyEmergencyConfirmationFlow received an empty parse");
        OUTLINED_FUNCTION_26_0(v37);
      }

      OUTLINED_FUNCTION_11_70();
      v57 = OUTLINED_FUNCTION_1_1();
      v58(v57);
      OUTLINED_FUNCTION_24_2();
      (*(v59 + 112))();

      v60 = Logger.logObject.getter();
      v61 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_51_0(v61))
      {
        v62 = OUTLINED_FUNCTION_65_0();
        OUTLINED_FUNCTION_103(v62);
        OUTLINED_FUNCTION_36_0(&dword_0, v63, v64, "#VoiceOnlyEmergencyConfirmationFlow emergency call reprompt. Handling request.");
        OUTLINED_FUNCTION_26_0(v37);
      }

      OUTLINED_FUNCTION_41_0();
      (*(v65 + 160))(0);
    }

    else
    {
      if (v53)
      {
        v84 = OUTLINED_FUNCTION_65_0();
        OUTLINED_FUNCTION_103(v84);
        OUTLINED_FUNCTION_36_0(&dword_0, v85, v86, "#VoiceOnlyEmergencyConfirmationFlow input received is of wrong type");
        OUTLINED_FUNCTION_26_0(v37);
      }

      OUTLINED_FUNCTION_41_0();
      (*(v87 + 160))(5);
      (*(v27 + 8))(v26, v28);
    }
  }

LABEL_52:
  OUTLINED_FUNCTION_41_0();
  if ((*(v89 + 152))() <= 2u)
  {
    OUTLINED_FUNCTION_41_0();
    (*(v90 + 136))(2);
    return 1;
  }

  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = OUTLINED_FUNCTION_65_0();
    *v48 = 0;
    v49 = "#StartCallConfirmIntentStrategy not emergency call reprompt";
LABEL_56:
    _os_log_impl(&dword_0, v46, v47, v49, v48, 2u);
    OUTLINED_FUNCTION_26_0(v48);
  }

LABEL_57:

  return 0;
}

uint64_t VoiceOnlyEmergencyConfirmationFlow.execute(completion:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for VoiceOnlyEmergencyConfirmationFlow();
  _s11SiriKitFlow20ConfirmationResponseOACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type VoiceOnlyEmergencyConfirmationFlow and conformance VoiceOnlyEmergencyConfirmationFlow, v2, type metadata accessor for VoiceOnlyEmergencyConfirmationFlow, &protocol conformance descriptor for VoiceOnlyEmergencyConfirmationFlow);
  return Flow.deferToExecuteAsync(_:)();
}

uint64_t VoiceOnlyEmergencyConfirmationFlow.execute()(uint64_t a1)
{
  *(v2 + 104) = a1;
  *(v2 + 112) = v1;
  return _swift_task_switch(VoiceOnlyEmergencyConfirmationFlow.execute(), 0, 0);
}

uint64_t VoiceOnlyEmergencyConfirmationFlow.execute()()
{
  v37 = v0;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.siriPhone);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 112);
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v36 = v7;
    *v6 = 136315138;
    v8 = (*(*v5 + 128))();
    v9 = VoiceOnlyEmergencyConfirmationFlow.State.description.getter(v8);
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v36);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_0, v2, v3, "#VoiceOnlyEmergencyConfirmationFlow executing with state = %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    OUTLINED_FUNCTION_26_0(v7);
    OUTLINED_FUNCTION_26_0(v6);
  }

  else
  {
  }

  v12 = (*(**(v0 + 112) + 128))();
  if (v12)
  {
    if (v12 == 1)
    {
      static ExecuteResponse.ongoing(requireInput:)();
      goto LABEL_30;
    }

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = OUTLINED_FUNCTION_65_0();
      *v19 = 0;
      _os_log_impl(&dword_0, v17, v18, "#VoiceOnlyEmergencyConfirmationFlow returning .complete()", v19, 2u);
      OUTLINED_FUNCTION_26_0(v19);
    }

    v20 = *(v0 + 112);

    v21 = *(*v20 + 152);
    v22 = v21();
    if (v22 != 5)
    {
      if (PhoneCallConfirmation.rawValue.getter(v22) == 0x6C65636E6163 && v24 == 0xE600000000000000)
      {
LABEL_27:

LABEL_28:
        __swift_project_boxed_opaque_existential_1((*(v0 + 112) + 16), *(*(v0 + 112) + 40));
        v30 = OUTLINED_FUNCTION_28_32();
        v31(v30);
        OUTLINED_FUNCTION_35_31();
        OUTLINED_FUNCTION_40();
        (*(v32 + 16))();
        type metadata accessor for SimpleOutputFlowAsync();
        swift_allocObject();

        v33 = SimpleOutputFlowAsync.init(outputPublisher:outputGenerator:)();
        __swift_destroy_boxed_opaque_existential_1((v0 + 16));
        *(v0 + 16) = v33;
        static ExecuteResponse.complete<A>(next:)();
        goto LABEL_29;
      }

      v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v26)
      {
        goto LABEL_28;
      }
    }

    v23 = v21();
    if (v23 == 5)
    {
LABEL_14:
      static ExecuteResponse.complete()();
      goto LABEL_30;
    }

    if (PhoneCallConfirmation.rawValue.getter(v23) != 28526 || v27 != 0xE200000000000000)
    {
      v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v29 & 1) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_28;
    }

    goto LABEL_27;
  }

  __swift_project_boxed_opaque_existential_1((*(v0 + 112) + 16), *(*(v0 + 112) + 40));
  v13 = OUTLINED_FUNCTION_28_32();
  v14(v13);
  OUTLINED_FUNCTION_35_31();
  OUTLINED_FUNCTION_40();
  (*(v15 + 16))();
  type metadata accessor for SimpleOutputFlowAsync();
  swift_allocObject();

  v16 = SimpleOutputFlowAsync.init(outputPublisher:outputGenerator:)();
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  *(v0 + 16) = v16;

  static ExecuteResponse.ongoing<A>(next:childCompletion:)();

LABEL_29:

LABEL_30:
  OUTLINED_FUNCTION_11();

  return v34();
}

uint64_t closure #1 in VoiceOnlyEmergencyConfirmationFlow.execute()(uint64_t a1, uint64_t a2)
{
  v2[7] = a1;
  v2[8] = a2;
  type metadata accessor for DialogPhase();
  v2[9] = swift_task_alloc();
  v3 = type metadata accessor for OutputGenerationManifest();
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();

  return _swift_task_switch(closure #1 in VoiceOnlyEmergencyConfirmationFlow.execute(), 0, 0);
}

uint64_t closure #1 in VoiceOnlyEmergencyConfirmationFlow.execute()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_2_0();
  v4 = (*(v1 + class metadata base offset for StartCallCATsSimple + 544) + **(v1 + class metadata base offset for StartCallCATsSimple + 544));
  v2 = swift_task_alloc();
  *(v0 + 104) = v2;
  *v2 = v0;
  v2[1] = closure #1 in VoiceOnlyEmergencyConfirmationFlow.execute();

  return v4();
}

{
  OUTLINED_FUNCTION_27();
  v3 = v2;
  OUTLINED_FUNCTION_28();
  v5 = v4;
  v6 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v7 = v6;

  if (v0)
  {

    v8 = *(v6 + 8);

    return v8();
  }

  else
  {
    *(v5 + 112) = v3;
    v10 = OUTLINED_FUNCTION_9_2();

    return _swift_task_switch(v10, v11, v12);
  }
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v1 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v2 = v1;

  return _swift_task_switch(closure #1 in VoiceOnlyEmergencyConfirmationFlow.execute(), 0, 0);
}

uint64_t closure #1 in VoiceOnlyEmergencyConfirmationFlow.execute()(uint64_t a1)
{
  OUTLINED_FUNCTION_47_28(a1);
  OUTLINED_FUNCTION_68_12();
  __swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40));
  v4 = OUTLINED_FUNCTION_7_28();
  v5(v4);
  __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v6 = swift_allocObject();
  v1[15] = v6;
  *(v6 + 16) = xmmword_426260;
  *(v6 + 32) = v3;
  v7 = v3;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v1[16] = v8;
  *v8 = v9;
  v10 = OUTLINED_FUNCTION_23_45(v8);

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t closure #1 in closure #1 in VoiceOnlyEmergencyConfirmationFlow.execute()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  __chkstk_darwin(v0 - 8);
  v2 = &v5 - v1;
  OutputGenerationManifest.canUseServerTTS.setter();
  OutputGenerationManifest.listenAfterSpeaking.setter();
  _s27PhoneCallFlowDelegatePlugin0aB17NLContextProviderC34makeGenericConfirmationNLv3Context07SiriKitC00F6UpdateVyFZSo8INIntentC_So0P8ResponseCTt0g5();
  _s27PhoneCallFlowDelegatePlugin0aB17NLContextProviderC22makeSDAForConfirmation33_3C2ABB69DDB872D121E37A32A4E694A9LLSay12SiriNLUTypes0T29_Nlu_External_SystemDialogActVGSgyFZSo8INIntentC_So16INIntentResponseCTtg5();
  NLContextUpdate.nluSystemDialogActs.setter();
  v3 = type metadata accessor for NLContextUpdate();
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v3);
  return OutputGenerationManifest.nlContextUpdate.setter();
}

uint64_t closure #2 in VoiceOnlyEmergencyConfirmationFlow.execute()(uint64_t a1, uint64_t a2)
{
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
    *v6 = 0;
    _os_log_impl(&dword_0, v4, v5, "#VoiceOnlyEmergencyConfirmationFlow offered to call emergency services. Updating state to .waitingForInput", v6, 2u);
  }

  return (*(*a2 + 136))(1);
}

uint64_t closure #3 in VoiceOnlyEmergencyConfirmationFlow.execute()(uint64_t a1, uint64_t a2)
{
  v2[7] = a1;
  v2[8] = a2;
  type metadata accessor for DialogPhase();
  v2[9] = swift_task_alloc();
  v3 = type metadata accessor for OutputGenerationManifest();
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();

  return _swift_task_switch(closure #3 in VoiceOnlyEmergencyConfirmationFlow.execute(), 0, 0);
}

uint64_t closure #3 in VoiceOnlyEmergencyConfirmationFlow.execute()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_2_0();
  v4 = (*(v1 + class metadata base offset for PhoneCallCommonCATsSimple + 48) + **(v1 + class metadata base offset for PhoneCallCommonCATsSimple + 48));
  v2 = swift_task_alloc();
  *(v0 + 104) = v2;
  *v2 = v0;
  v2[1] = closure #3 in VoiceOnlyEmergencyConfirmationFlow.execute();

  return v4();
}

{
  OUTLINED_FUNCTION_27();
  v3 = v2;
  OUTLINED_FUNCTION_28();
  v5 = v4;
  v6 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v7 = v6;

  if (v0)
  {

    v8 = *(v6 + 8);

    return v8();
  }

  else
  {
    *(v5 + 112) = v3;
    v10 = OUTLINED_FUNCTION_9_2();

    return _swift_task_switch(v10, v11, v12);
  }
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v1 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v2 = v1;

  return _swift_task_switch(VoicemailShouldPlayPromptFlowStrategy.executePatternAndManifest(), 0, 0);
}

uint64_t closure #3 in VoiceOnlyEmergencyConfirmationFlow.execute()(uint64_t a1)
{
  OUTLINED_FUNCTION_47_28(a1);
  OUTLINED_FUNCTION_68_12();
  __swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40));
  v4 = OUTLINED_FUNCTION_7_28();
  v5(v4);
  __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v6 = swift_allocObject();
  v1[15] = v6;
  *(v6 + 16) = xmmword_426260;
  *(v6 + 32) = v3;
  v7 = v3;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v1[16] = v8;
  *v8 = v9;
  v10 = OUTLINED_FUNCTION_23_45(v8);

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t VoiceOnlyEmergencyConfirmationFlow.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return v0;
}

uint64_t VoiceOnlyEmergencyConfirmationFlow.__deallocating_deinit()
{
  VoiceOnlyEmergencyConfirmationFlow.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for Flow.execute() in conformance VoiceOnlyEmergencyConfirmationFlow(uint64_t a1)
{
  v6 = (*(**v1 + 208) + **(**v1 + 208));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = closure #2 in ActionableCallControlFlow.execute();

  return v6(a1);
}

uint64_t _s11SiriKitFlow20ConfirmationResponseOACs23CustomStringConvertibleAAWlTm_0(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t partial apply for closure #3 in VoiceOnlyEmergencyConfirmationFlow.execute()()
{
  OUTLINED_FUNCTION_15();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 16) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_10_5(v1);

  return closure #3 in VoiceOnlyEmergencyConfirmationFlow.execute()(v3, v4);
}

uint64_t partial apply for closure #1 in VoiceOnlyEmergencyConfirmationFlow.execute()()
{
  OUTLINED_FUNCTION_15();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 16) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_10_5(v1);

  return closure #1 in VoiceOnlyEmergencyConfirmationFlow.execute()(v3, v4);
}

unint64_t lazy protocol witness table accessor for type VoiceOnlyEmergencyConfirmationFlow.State and conformance VoiceOnlyEmergencyConfirmationFlow.State()
{
  result = lazy protocol witness table cache variable for type VoiceOnlyEmergencyConfirmationFlow.State and conformance VoiceOnlyEmergencyConfirmationFlow.State;
  if (!lazy protocol witness table cache variable for type VoiceOnlyEmergencyConfirmationFlow.State and conformance VoiceOnlyEmergencyConfirmationFlow.State)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceOnlyEmergencyConfirmationFlow.State and conformance VoiceOnlyEmergencyConfirmationFlow.State);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for VoiceOnlyEmergencyConfirmationFlow.State(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t OUTLINED_FUNCTION_47_28(uint64_t a1)
{

  return static DialogPhase.confirmation.getter();
}

void YesNoConfirmationModel.init(yesText:yesAction:noText:noAction:dialogText:)(void *a3@<X2>, void *a6@<X5>, uint64_t a9@<X8>)
{
  v12 = type metadata accessor for YesNoConfirmationModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  Loggable.init(wrappedValue:)();
  v13 = (a9 + *(v12 + 36));
  *v13 = 0xD000000000000011;
  v13[1] = 0x8000000000456DF0;
  Loggable.init(wrappedValue:)();
  type metadata accessor for SAIntentGroupRunSiriKitExecutor();
  v14 = a3;
  CodableAceObject.init(wrappedValue:)();
  Loggable.init(wrappedValue:)();
  v15 = a6;
  CodableAceObject.init(wrappedValue:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSSgGMd, &_s10SnippetKit8LoggableVySSSgGMR);
  Loggable.wrappedValue.setter();
}

uint64_t type metadata accessor for YesNoConfirmationModel(uint64_t a1)
{
  result = type metadata singleton initialization cache for YesNoConfirmationModel;
  if (!type metadata singleton initialization cache for YesNoConfirmationModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t key path setter for YesNoConfirmationModel.yesText : YesNoConfirmationModel(uint64_t *a1)
{
  v1 = *a1;

  return YesNoConfirmationModel.yesText.setter(v1);
}

uint64_t YesNoConfirmationModel.yesText.setter(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  OUTLINED_FUNCTION_12_69(v1, v2, v3, v4, v5, v6, v7, v8, a1);
  return Loggable.wrappedValue.setter();
}

void (*YesNoConfirmationModel.yesText.modify())(void *a1)
{
  v1 = OUTLINED_FUNCTION_14_4();
  v2 = __swift_coroFrameAllocStub(v1);
  *v0 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  v2[4] = Loggable.wrappedValue.modify();
  return EmergencyCountdownModel.sashTitle.modify;
}

uint64_t YesNoConfirmationModel.yesAction.getter()
{
  type metadata accessor for YesNoConfirmationModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  return CodableAceObject.wrappedValue.getter();
}

uint64_t YesNoConfirmationModel.yesAction.setter(uint64_t a1)
{
  type metadata accessor for YesNoConfirmationModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  return CodableAceObject.wrappedValue.setter();
}

void (*YesNoConfirmationModel.yesAction.modify())(void *a1)
{
  v1 = OUTLINED_FUNCTION_14_4();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_5_97(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  OUTLINED_FUNCTION_3_40();
  *(v0 + 32) = CodableAceObject.wrappedValue.modify();
  return EmergencyCountdownModel.sashTitle.modify;
}

uint64_t YesNoConfirmationModel.noText.getter()
{
  type metadata accessor for YesNoConfirmationModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  Loggable.wrappedValue.getter();
  return v1;
}

uint64_t key path setter for YesNoConfirmationModel.noText : YesNoConfirmationModel(uint64_t *a1)
{
  v1 = *a1;

  return YesNoConfirmationModel.noText.setter(v1);
}

uint64_t YesNoConfirmationModel.noText.setter(uint64_t a1)
{
  type metadata accessor for YesNoConfirmationModel(0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  OUTLINED_FUNCTION_12_69(v1, v2, v3, v4, v5, v6, v7, v8, a1);
  return Loggable.wrappedValue.setter();
}

void (*YesNoConfirmationModel.noText.modify())(void *a1)
{
  v1 = OUTLINED_FUNCTION_14_4();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_5_97(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  OUTLINED_FUNCTION_3_40();
  *(v0 + 32) = Loggable.wrappedValue.modify();
  return EmergencyCountdownModel.sashTitle.modify;
}

uint64_t YesNoConfirmationModel.noAction.getter()
{
  type metadata accessor for YesNoConfirmationModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  return CodableAceObject.wrappedValue.getter();
}

uint64_t YesNoConfirmationModel.noAction.setter(uint64_t a1)
{
  type metadata accessor for YesNoConfirmationModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  return CodableAceObject.wrappedValue.setter();
}

void (*YesNoConfirmationModel.noAction.modify())(void *a1)
{
  v1 = OUTLINED_FUNCTION_14_4();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_5_97(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  OUTLINED_FUNCTION_3_40();
  *(v0 + 32) = CodableAceObject.wrappedValue.modify();
  return EmergencyCountdownModel.sashTitle.modify;
}

uint64_t property wrapper backing initializer of YesNoConfirmationModel.dialogText(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  OUTLINED_FUNCTION_12_69(v1, v2, v3, v4, v5, v6, v7, v8, a1);
  return Loggable.init(wrappedValue:)();
}

uint64_t YesNoConfirmationModel.dialogText.getter()
{
  type metadata accessor for YesNoConfirmationModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSSgGMd, &_s10SnippetKit8LoggableVySSSgGMR);
  Loggable.wrappedValue.getter();
  return v1;
}

uint64_t key path setter for YesNoConfirmationModel.dialogText : YesNoConfirmationModel(uint64_t *a1)
{
  v1 = *a1;

  return YesNoConfirmationModel.dialogText.setter(v1);
}

uint64_t YesNoConfirmationModel.dialogText.setter(uint64_t a1)
{
  type metadata accessor for YesNoConfirmationModel(0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSSgGMd, &_s10SnippetKit8LoggableVySSSgGMR);
  OUTLINED_FUNCTION_12_69(v1, v2, v3, v4, v5, v6, v7, v8, a1);
  return Loggable.wrappedValue.setter();
}

void (*YesNoConfirmationModel.dialogText.modify())(void *a1)
{
  v1 = OUTLINED_FUNCTION_14_4();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_5_97(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSSgGMd, &_s10SnippetKit8LoggableVySSSgGMR);
  OUTLINED_FUNCTION_3_40();
  *(v0 + 32) = Loggable.wrappedValue.modify();
  return EmergencyCountdownModel.callAction.modify;
}

uint64_t YesNoConfirmationModel.responseViewId.getter()
{
  v1 = *(v0 + *(type metadata accessor for YesNoConfirmationModel(0) + 36));

  return v1;
}

uint64_t YesNoConfirmationModel.responseViewId.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for YesNoConfirmationModel(0) + 36));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t YesNoConfirmationModel.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74786554736579 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6F69746341736579 && a2 == 0xE90000000000006ELL;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x747865546F6ELL && a2 == 0xE600000000000000;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6E6F697463416F6ELL && a2 == 0xE800000000000000;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6554676F6C616964 && a2 == 0xEA00000000007478;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x65736E6F70736572 && a2 == 0xEE00644977656956)
          {

            return 5;
          }

          else
          {
            v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

uint64_t YesNoConfirmationModel.CodingKeys.stringValue.getter(char a1)
{
  result = 0x74786554736579;
  switch(a1)
  {
    case 1:
      result = 0x6F69746341736579;
      break;
    case 2:
      result = 0x747865546F6ELL;
      break;
    case 3:
      result = 0x6E6F697463416F6ELL;
      break;
    case 4:
      result = 0x6554676F6C616964;
      break;
    case 5:
      result = 0x65736E6F70736572;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance YesNoConfirmationModel.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = YesNoConfirmationModel.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance YesNoConfirmationModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type YesNoConfirmationModel.CodingKeys and conformance YesNoConfirmationModel.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance YesNoConfirmationModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type YesNoConfirmationModel.CodingKeys and conformance YesNoConfirmationModel.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t YesNoConfirmationModel.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy27PhoneCallFlowDelegatePlugin22YesNoConfirmationModelV10CodingKeys33_E649D942FB9256405858DE61208D08F5LLOGMd, &_ss22KeyedEncodingContainerVy27PhoneCallFlowDelegatePlugin22YesNoConfirmationModelV10CodingKeys33_E649D942FB9256405858DE61208D08F5LLOGMR);
  OUTLINED_FUNCTION_7();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = v18 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type YesNoConfirmationModel.CodingKeys and conformance YesNoConfirmationModel.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v24 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  OUTLINED_FUNCTION_16_3();
  lazy protocol witness table accessor for type Loggable<String> and conformance <A> Loggable<A>(v11);
  OUTLINED_FUNCTION_5_3();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v18[3] = type metadata accessor for YesNoConfirmationModel(0);
    v23 = 1;
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
    v13 = _s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGACyxGSEAAWlTm_0(&lazy protocol witness table cache variable for type CodableAceObject<SAIntentGroupRunSiriKitExecutor> and conformance CodableAceObject<A>);
    v14 = v3;
    v15 = v13;
    v18[2] = v14;
    OUTLINED_FUNCTION_5_3();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v18[0] = v15;
    v18[1] = v12;
    v22 = 2;
    OUTLINED_FUNCTION_5_3();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v21 = 3;
    OUTLINED_FUNCTION_5_3();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v20 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSSgGMd, &_s10SnippetKit8LoggableVySSSgGMR);
    OUTLINED_FUNCTION_16_3();
    _s10SnippetKit8LoggableVySSSgGACyxGSEAASeRzSERzlWlTm_0(v16);
    OUTLINED_FUNCTION_5_3();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v19 = 5;
    OUTLINED_FUNCTION_5_3();
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t lazy protocol witness table accessor for type YesNoConfirmationModel.CodingKeys and conformance YesNoConfirmationModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type YesNoConfirmationModel.CodingKeys and conformance YesNoConfirmationModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type YesNoConfirmationModel.CodingKeys and conformance YesNoConfirmationModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type YesNoConfirmationModel.CodingKeys and conformance YesNoConfirmationModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type YesNoConfirmationModel.CodingKeys and conformance YesNoConfirmationModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type YesNoConfirmationModel.CodingKeys and conformance YesNoConfirmationModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type YesNoConfirmationModel.CodingKeys and conformance YesNoConfirmationModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type YesNoConfirmationModel.CodingKeys and conformance YesNoConfirmationModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type YesNoConfirmationModel.CodingKeys and conformance YesNoConfirmationModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type YesNoConfirmationModel.CodingKeys and conformance YesNoConfirmationModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type YesNoConfirmationModel.CodingKeys and conformance YesNoConfirmationModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type YesNoConfirmationModel.CodingKeys and conformance YesNoConfirmationModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type YesNoConfirmationModel.CodingKeys and conformance YesNoConfirmationModel.CodingKeys);
  }

  return result;
}

uint64_t YesNoConfirmationModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSSgGMd, &_s10SnippetKit8LoggableVySSSgGMR);
  OUTLINED_FUNCTION_7();
  v71 = v4;
  v72 = v3;
  __chkstk_darwin(v3);
  v60 = &v54 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  OUTLINED_FUNCTION_7();
  v62 = v7;
  v63 = v6;
  __chkstk_darwin(v6);
  v61 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v65 = &v54 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  OUTLINED_FUNCTION_7();
  v64 = v12;
  __chkstk_darwin(v13);
  v15 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v66 = &v54 - v17;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy27PhoneCallFlowDelegatePlugin22YesNoConfirmationModelV10CodingKeys33_E649D942FB9256405858DE61208D08F5LLOGMd, &_ss22KeyedDecodingContainerVy27PhoneCallFlowDelegatePlugin22YesNoConfirmationModelV10CodingKeys33_E649D942FB9256405858DE61208D08F5LLOGMR);
  OUTLINED_FUNCTION_7();
  v67 = v18;
  __chkstk_darwin(v19);
  v21 = &v54 - v20;
  v22 = type metadata accessor for YesNoConfirmationModel(0);
  __chkstk_darwin(v22);
  v24 = &v54 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(v25 + 32);
  v73[0] = 0;
  v73[1] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  v74 = v26;
  Loggable.init(wrappedValue:)();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type YesNoConfirmationModel.CodingKeys and conformance YesNoConfirmationModel.CodingKeys();
  v68 = v21;
  v27 = v70;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v27)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return (*(v71 + 8))(&v24[v74], v72);
  }

  else
  {
    v28 = v65;
    v58 = v22;
    v70 = a1;
    LOBYTE(v73[0]) = 0;
    OUTLINED_FUNCTION_17_15();
    v30 = lazy protocol witness table accessor for type Loggable<String> and conformance <A> Loggable<A>(v29);
    v31 = v66;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v55 = v30;
    v32 = *(v64 + 32);
    v57 = v24;
    v32(v24, v31, v11);
    LOBYTE(v73[0]) = 1;
    v33 = _s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGACyxGSEAAWlTm_0(&lazy protocol witness table cache variable for type CodableAceObject<SAIntentGroupRunSiriKitExecutor> and conformance CodableAceObject<A>);
    v34 = v28;
    v35 = v63;
    OUTLINED_FUNCTION_11_71(v33, v73);
    v56 = v11;
    v36 = &v57[*(v58 + 20)];
    v37 = v34;
    v38 = *(v62 + 32);
    v65 = (v62 + 32);
    v38(v36, v37, v35);
    LOBYTE(v73[0]) = 2;
    v66 = 0;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v55 = v38;
    v39 = v58;
    v40 = (v32)(&v57[*(v58 + 24)], v15, v11);
    LOBYTE(v73[0]) = 3;
    v41 = v61;
    OUTLINED_FUNCTION_11_71(v40, v73);
    v55(&v57[*(v39 + 28)], v41, v35);
    LOBYTE(v73[0]) = 4;
    OUTLINED_FUNCTION_17_15();
    _s10SnippetKit8LoggableVySSSgGACyxGSEAASeRzSERzlWlTm_0(v42);
    v43 = v60;
    v44 = v72;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v45 = v70;
    v46 = v57;
    (*(v71 + 40))(&v57[v74], v43, v44);
    LOBYTE(v73[0]) = 5;
    v47 = KeyedDecodingContainer.decode(_:forKey:)();
    v49 = v48;
    v50 = (v46 + *(v39 + 36));
    v51 = OUTLINED_FUNCTION_1_135();
    v52(v51);
    *v50 = v47;
    v50[1] = v49;
    outlined init with copy of YesNoConfirmationModel(v46, v59);
    __swift_destroy_boxed_opaque_existential_1(v45);
    return outlined destroy of YesNoConfirmationModel(v46);
  }
}

unint64_t _s10SnippetKit8LoggableVySSSgGACyxGSEAASeRzSERzlWlTm_0(uint64_t a1)
{
  result = OUTLINED_FUNCTION_29_0(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10SnippetKit8LoggableVySSSgGMd, &_s10SnippetKit8LoggableVySSSgGMR);
    lazy protocol witness table accessor for type String? and conformance <A> A?(&lazy protocol witness table cache variable for type String? and conformance <A> A?);
    lazy protocol witness table accessor for type String? and conformance <A> A?(&lazy protocol witness table cache variable for type String? and conformance <A> A?);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t outlined destroy of YesNoConfirmationModel(uint64_t a1)
{
  v2 = type metadata accessor for YesNoConfirmationModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t instantiation function for generic protocol witness table for YesNoConfirmationModel(uint64_t a1)
{
  result = lazy protocol witness table accessor for type YesNoConfirmationModel and conformance YesNoConfirmationModel(&lazy protocol witness table cache variable for type YesNoConfirmationModel and conformance YesNoConfirmationModel);
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type YesNoConfirmationModel and conformance YesNoConfirmationModel(uint64_t a1)
{
  result = OUTLINED_FUNCTION_29_0(a1);
  if (!result)
  {
    type metadata accessor for YesNoConfirmationModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t type metadata completion function for YesNoConfirmationModel(uint64_t a1)
{
  type metadata accessor for Loggable<String>();
  v2 = v1;
  if (v3 <= 0x3F)
  {
    type metadata accessor for CodableAceObject<SAIntentGroupRunSiriKitExecutor>(319);
    if (v5 > 0x3F)
    {
      return v4;
    }

    else
    {
      type metadata accessor for Loggable<String?>(319);
      v2 = v6;
      if (v7 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v2;
}

void type metadata accessor for Loggable<String?>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Loggable<String?>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSSSgMd, &_sSSSgMR);
    v1 = type metadata accessor for Loggable();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Loggable<String?>);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for YesNoConfirmationModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

uint64_t YesNoConfirmationParser.__allocating_init(sharedGlobals:)(__int128 *a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = 5;
  outlined init with take of PhoneCallFeatureFlagProviding(a1, v2 + 24);
  return v2;
}

void YesNoConfirmationParser.promptResponse.didset()
{
  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static Logger.siriPhone);

  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v8 = v3;
    *v2 = 136315138;
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB12ConfirmationOSgMd, &_s27PhoneCallFlowDelegatePlugin0aB12ConfirmationOSgMR);
    v4 = String.init<A>(describing:)();
    v6 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v5, &v8);

    *(v2 + 4) = v6;
    _os_log_impl(&dword_0, oslog, v1, "#YesNoConfirmationParser promptResponse: %s", v2, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v3);
  }

  else
  {
  }
}

void YesNoConfirmationParser.promptResponse.setter(char a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
  YesNoConfirmationParser.promptResponse.didset();
}

uint64_t YesNoConfirmationParser.init(sharedGlobals:)(__int128 *a1)
{
  *(v1 + 16) = 5;
  outlined init with take of PhoneCallFeatureFlagProviding(a1, v1 + 24);
  return v1;
}

uint64_t YesNoConfirmationParser.parseConfirmationResponse(input:)@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v75 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin18CommonDirectActionOSgMd, &_s27PhoneCallFlowDelegatePlugin18CommonDirectActionOSgMR);
  __chkstk_darwin(v3 - 8);
  v5 = &v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v74 = (&v72 - v7);
  v73 = type metadata accessor for Parse.DirectInvocation();
  OUTLINED_FUNCTION_7();
  v9 = v8;
  __chkstk_darwin(v10);
  v12 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Parse();
  OUTLINED_FUNCTION_7();
  v15 = v14;
  __chkstk_darwin(v16);
  v18 = &v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v72 - v20;
  Input.parse.getter();
  v22 = OUTLINED_FUNCTION_63();
  v24 = v23(v22);
  if (v24 == enum case for Parse.NLv3IntentOnly(_:))
  {
LABEL_2:
    v25 = *(v15 + 8);
    v26 = OUTLINED_FUNCTION_63();
    v25(v26);
    v27 = *(v1 + 48);
    v28 = *(v1 + 56);
    __swift_project_boxed_opaque_existential_1((v1 + 24), v27);
    v29 = (*(v28 + 72))(v27, v28);
    Input.parse.getter();
    (*(*v29 + 192))(v76, v18);

    (v25)(v18, v13);
    v30 = v77;
    if (v77)
    {
      v31 = v78;
      __swift_project_boxed_opaque_existential_1(v76, v77);
      v32 = (*(v31 + 64))(v30, v31);
      __swift_destroy_boxed_opaque_existential_1(v76);
    }

    else
    {
      _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v76, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
      v32 = 5;
    }

    v45 = v75;
    OUTLINED_FUNCTION_1_136();
    *(v1 + 16) = v32;
    YesNoConfirmationParser.promptResponse.didset();
    goto LABEL_29;
  }

  if (v24 == enum case for Parse.directInvocation(_:))
  {
    v33 = OUTLINED_FUNCTION_63();
    v34(v33);
    v35 = v9;
    v36 = v73;
    (*(v9 + 32))(v12, v21, v73);
    v37 = v74;
    static CommonDirectAction.from(_:)(v74);
    v38 = type metadata accessor for CommonDirectAction(0);
    if (__swift_getEnumTagSinglePayload(v37, 1, v38) != 1)
    {
      outlined init with copy of CommonDirectAction?(v37, v5);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload == 6)
      {
        OUTLINED_FUNCTION_1_136();
        *(v1 + 16) = 0;
        goto LABEL_21;
      }

      if (EnumCaseMultiPayload == 7)
      {
        OUTLINED_FUNCTION_1_136();
        *(v1 + 16) = 2;
LABEL_21:
        v45 = v75;
LABEL_28:
        YesNoConfirmationParser.promptResponse.didset();
        (*(v35 + 8))(v12, v36);
        _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v37, &_s27PhoneCallFlowDelegatePlugin18CommonDirectActionOSgMd, &_s27PhoneCallFlowDelegatePlugin18CommonDirectActionOSgMR);
        goto LABEL_29;
      }

      outlined destroy of CommonDirectAction(v5);
    }

    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v49 = type metadata accessor for Logger();
    __swift_project_value_buffer(v49, static Logger.siriPhone);
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.error.getter();
    v52 = os_log_type_enabled(v50, v51);
    v45 = v75;
    if (v52)
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&dword_0, v50, v51, "#YesNoConfirmationParser Unrecognized directInvocation", v53, 2u);
      OUTLINED_FUNCTION_26_0(v53);
    }

    OUTLINED_FUNCTION_1_136();
    v2[16] = 5;
    goto LABEL_28;
  }

  if (v24 == enum case for Parse.NLv4IntentOnly(_:) || v24 == enum case for Parse.uso(_:))
  {
    goto LABEL_2;
  }

  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v41 = type metadata accessor for Logger();
  __swift_project_value_buffer(v41, static Logger.siriPhone);
  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.error.getter();
  v44 = os_log_type_enabled(v42, v43);
  v45 = v75;
  if (v44)
  {
    v46 = swift_slowAlloc();
    *v46 = 0;
    _os_log_impl(&dword_0, v42, v43, "#YesNoConfirmationParser Unrecognized parse type", v46, 2u);
    OUTLINED_FUNCTION_26_0(v46);
  }

  OUTLINED_FUNCTION_1_136();
  v2[16] = 5;
  YesNoConfirmationParser.promptResponse.didset();
  v47 = OUTLINED_FUNCTION_63();
  v48(v47);
LABEL_29:
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v54 = type metadata accessor for Logger();
  __swift_project_value_buffer(v54, static Logger.siriPhone);

  v55 = Logger.logObject.getter();
  v56 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v79 = v58;
    *v57 = 136315394;
    *(v57 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000021, 0x800000000045D500, &v79);
    *(v57 + 12) = 2080;
    v59 = (*(*v2 + 96))();
    if (v59 == 5)
    {
      v60 = 0xE300000000000000;
      v61 = 7104878;
    }

    else
    {
      v61 = PhoneCallConfirmation.rawValue.getter(v59);
      v60 = v62;
    }

    v63 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v61, v60, &v79);

    *(v57 + 14) = v63;
    _os_log_impl(&dword_0, v55, v56, "#YesNoConfirmationParser %s received response: %s", v57, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_26_0(v58);
    OUTLINED_FUNCTION_26_0(v57);
  }

  else
  {
  }

  v64 = (*(*v2 + 96))();
  if ((v64 - 1) >= 2)
  {
    if (v64)
    {
      v70 = type metadata accessor for ConfirmationResponse();
      v68 = v45;
      v69 = 1;
      return __swift_storeEnumTagSinglePayload(v68, v69, 1, v70);
    }

    v65 = &enum case for ConfirmationResponse.confirmed(_:);
  }

  else
  {
    v65 = &enum case for ConfirmationResponse.rejected(_:);
  }

  v66 = *v65;
  v67 = type metadata accessor for ConfirmationResponse();
  (*(*(v67 - 8) + 104))(v45, v66, v67);
  v68 = v45;
  v69 = 0;
  v70 = v67;
  return __swift_storeEnumTagSinglePayload(v68, v69, 1, v70);
}

uint64_t YesNoConfirmationParser.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return swift_deallocClassInstance();
}

NSPersonNameComponents __swiftcall PersonNameComponents._bridgeToObjectiveC()()
{
  v0 = PersonNameComponents._bridgeToObjectiveC()();
  result._private = v1;
  result.super.isa = v0;
  return result;
}

Swift::String __swiftcall Data.base64EncodedString(options:)(NSDataBase64EncodingOptions options)
{
  v1 = Data.base64EncodedString(options:)(options);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

uint64_t static RCHChildFlowFactoryHelper.makeHandleIntentFlowProducer<A>(strategy:)()
{
  return static RCHChildFlowFactoryHelper.makeHandleIntentFlowProducer<A>(strategy:)();
}

{
  return static RCHChildFlowFactoryHelper.makeHandleIntentFlowProducer<A>(strategy:)();
}

uint64_t static ExecuteResponse.ongoing<A>(next:childCompletion:)()
{
  return static ExecuteResponse.ongoing<A>(next:childCompletion:)();
}

{
  return static ExecuteResponse.ongoing<A>(next:childCompletion:)();
}

uint64_t static ExecuteResponse.ongoing<A>(next:)()
{
  return static ExecuteResponse.ongoing<A>(next:)();
}

{
  return static ExecuteResponse.ongoing<A>(next:)();
}

uint64_t static ExecuteResponse.complete<A>(next:childCompletion:)()
{
  return static ExecuteResponse.complete<A>(next:childCompletion:)();
}

{
  return static ExecuteResponse.complete<A>(next:childCompletion:)();
}

uint64_t static ExecuteResponse.complete<A>(next:)()
{
  return static ExecuteResponse.complete<A>(next:)();
}

{
  return static ExecuteResponse.complete<A>(next:)();
}

uint64_t dispatch thunk of AceServiceInvoker.submitAndForget(_:)()
{
  return dispatch thunk of AceServiceInvoker.submitAndForget(_:)();
}

{
  return dispatch thunk of AceServiceInvoker.submitAndForget(_:)();
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Message.getTranscriptString()()
{
  v0 = Message.getTranscriptString()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t String.init<A>(describing:)()
{
  return String.init<A>(describing:)();
}

{
  return String.init<A>(describing:)();
}

Swift::String __swiftcall String.lowercased()()
{
  v0 = String.lowercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String __swiftcall String.uppercased()()
{
  v0 = String.uppercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String_optional __swiftcall String.Iterator.next()()
{
  v0 = String.Iterator.next()();
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

uint64_t String.subscript.getter()
{
  return String.subscript.getter();
}

{
  return String.subscript.getter();
}

Swift::String_optional __swiftcall AceObject.serializeToBase64()()
{
  v0 = AceObject.serializeToBase64()();
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

Swift::String __swiftcall Substring.lowercased()()
{
  v0 = Substring.lowercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String __swiftcall Substring.uppercased()()
{
  v0 = Substring.uppercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t KeyedDecodingContainer.decodeIfPresent(_:forKey:)()
{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

uint64_t KeyedEncodingContainer.encodeIfPresent(_:forKey:)()
{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

uint64_t DefaultStringInterpolation.appendInterpolation<A>(_:)()
{
  return DefaultStringInterpolation.appendInterpolation<A>(_:)();
}

{
  return DefaultStringInterpolation.appendInterpolation<A>(_:)();
}