uint64_t specialized DecisionEngine.__allocating_init(conversationHandlerLocator:rrClient:correctionsClient:linkExpansionContextBuilder:preFlowBlockingWork:camBridge:curareDonator:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, __int128 *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v26 = a6;
  v27 = a7;
  v22 = a5;
  v23 = a1;
  v24 = a2;
  v25 = a4;
  v13 = *(a9 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a10 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v22 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = swift_allocObject();
  (*(v16 + 16))(v19, a3, a10);
  (*(v13 + 16))(v15, v22, a9);
  return specialized DecisionEngine.init(conversationHandlerLocator:rrClient:correctionsClient:linkExpansionContextBuilder:preFlowBlockingWork:camBridge:curareDonator:)(v23, v24, v19, v25, v15, v26, v27, v20, a9, a10, a11, a12);
}

unint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

void destroy for DecisionEngine.CAMFallbackInfo(void *a1)
{

  v2 = a1[5];
}

uint64_t initializeWithCopy for DecisionEngine.CAMFallbackInfo(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  v4 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v4;
  *(a1 + 32) = *(a2 + 32);
  v5 = *(a2 + 40);
  *(a1 + 40) = v5;

  v6 = v5;
  return a1;
}

uint64_t assignWithCopy for DecisionEngine.CAMFallbackInfo(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 33) = *(a2 + 33);
  v4 = *(a1 + 40);
  v5 = *(a2 + 40);
  *(a1 + 40) = v5;
  v6 = v5;

  return a1;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t assignWithTake for DecisionEngine.CAMFallbackInfo(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  v5 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v5;

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 33) = *(a2 + 33);
  v6 = *(a1 + 40);
  *(a1 + 40) = *(a2 + 40);

  return a1;
}

uint64_t getEnumTagSinglePayload for DecisionEngine.CAMFallbackInfo(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
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

uint64_t storeEnumTagSinglePayload for DecisionEngine.CAMFallbackInfo(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  type metadata accessor for ExecutableTask(0);
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = __CocoaSet.count.getter();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = __CocoaSet.count.getter();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

void outlined consume of Result<[RRCandidate], Error>(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

unint64_t lazy protocol witness table accessor for type RequestConjunctionInfo? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type RequestConjunctionInfo? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type RequestConjunctionInfo? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s16SiriMessageTypes22RequestConjunctionInfoCSgMd, &_s16SiriMessageTypes22RequestConjunctionInfoCSgMR);
    lazy protocol witness table accessor for type Siri_Nlu_External_ResponseStatus.StatusCode and conformance Siri_Nlu_External_ResponseStatus.StatusCode(&lazy protocol witness table cache variable for type RequestConjunctionInfo and conformance RequestConjunctionInfo, MEMORY[0x1E69D0850], MEMORY[0x1E69D0858]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RequestConjunctionInfo? and conformance <A> A?);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Siri_Nlu_External_ResponseStatus.StatusCode and conformance Siri_Nlu_External_ResponseStatus.StatusCode(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t *DecisionEngineCurareDonator.instance.unsafeMutableAddressor()
{
  if (one-time initialization token for instance != -1)
  {
    swift_once();
  }

  return &static DecisionEngineCurareDonator.instance;
}

uint64_t (*AnyEncodable.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  v5 = implicit closure #1 in AnyEncodable.init<A>(_:)(a1, a2, a3);
  (*(*(a2 - 8) + 8))(a1, a2);
  return v5;
}

uint64_t (*implicit closure #1 in AnyEncodable.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v7);
  v9 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  (*(v5 + 32))(v10 + v9, v8, a2);
  return partial apply for implicit closure #2 in implicit closure #1 in AnyEncodable.init<A>(_:);
}

uint64_t specialized implicit closure #2 in implicit closure #1 in AnyEncodable.init<A>(_:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam0B5ParseOSgMd, &_s7SiriCam0B5ParseOSgMR);
  lazy protocol witness table accessor for type Parse and conformance Parse(&lazy protocol witness table cache variable for type CamParse and conformance CamParse, MEMORY[0x1E69CE310], MEMORY[0x1E69CE318]);
  return Optional<A>.encode(to:)();
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5ParseOSgMd, &_s11SiriKitFlow5ParseOSgMR);
  lazy protocol witness table accessor for type Parse and conformance Parse(&lazy protocol witness table cache variable for type Parse and conformance Parse, MEMORY[0x1E69D0188], MEMORY[0x1E69D0190]);
  return Optional<A>.encode(to:)();
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sShySSGSgMd, &_sShySSGSgMR);
  lazy protocol witness table accessor for type Set<String> and conformance <> Set<A>();
  return Optional<A>.encode(to:)();
}

uint64_t DecisionEngineCurareStream.streamId.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t DecisionEngineCurareStream.__allocating_init(streamId:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t DecisionEngineCurareStream.init(streamId:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t DecisionEngineCurareStream.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t one-time initialization function for instance()
{
  result = specialized DecisionEngineCurareDonator.__allocating_init()();
  static DecisionEngineCurareDonator.instance = result;
  return result;
}

{
  type metadata accessor for IntentLoggingEventSink();
  result = swift_initStaticObject();
  static IntentLoggingEventSink.instance = result;
  return result;
}

{
  result = specialized SelfReflectionCurareDonator.__allocating_init()();
  static SelfReflectionCurareDonator.instance = result;
  return result;
}

{
  if (one-time initialization token for instance != -1)
  {
    swift_once();
  }

  v0 = static TaskLoggingService.instance;
  type metadata accessor for TaskLoggingEventSink();
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  static TaskLoggingEventSink.instance = v1;
}

{
  v0 = type metadata accessor for FeatureChecker();
  v1 = swift_allocObject();
  *(v1 + 16) = AFDeviceSupportsSAEByDeviceCapabilityAndFeatureFlags();
  v14 = &type metadata for IntelligenceFlowFeatureFlag;
  v15 = lazy protocol witness table accessor for type IntelligenceFlowFeatureFlag and conformance IntelligenceFlowFeatureFlag();
  v2 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_1Tm(&v13);
  *(v1 + 17) = v2 & 1;
  if (one-time initialization token for instance != -1)
  {
    swift_once();
  }

  v3 = static SiriKitBiomeDonator.instance;
  v14 = type metadata accessor for SiriKitBiomeDonator(0);
  v15 = &protocol witness table for SiriKitBiomeDonator;
  *&v13 = v3;
  v4 = one-time initialization token for instance;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = static SiriKitCurareDonator.instance;
  v11 = type metadata accessor for SiriKitCurareDonator();
  v12 = &protocol witness table for SiriKitCurareDonator;
  v6 = objc_opt_self();

  v7 = [v6 shared];
  type metadata accessor for TaskLoggingService();
  v8 = swift_allocObject();
  v8[24] = v0;
  v8[25] = &protocol witness table for FeatureChecker;
  v8[21] = v1;
  outlined init with take of ReferenceResolutionClientProtocol(&v13, (v8 + 2));
  result = outlined init with take of ReferenceResolutionClientProtocol(&v10, (v8 + 7));
  v8[12] = closure #1 in default argument 5 of ConversationService.init(conversationHandlerLocator:referenceResolutionClient:useStubCamBridge:useNoopEventSender:doWarmup:selfEmitter:serverFallbackDisablingUtils:);
  v8[13] = 0;
  v8[14] = closure #1 in default argument 3 of TaskLoggingService.init(biomeDonator:curareDonator:selfEmitter:tier1LinkIdSupplier:derivedIdentifierSupplier:appInformationSupplier:sensitivityManager:featureChecker:);
  v8[15] = 0;
  v8[16] = closure #1 in default argument 4 of TaskLoggingService.init(biomeDonator:curareDonator:selfEmitter:tier1LinkIdSupplier:derivedIdentifierSupplier:appInformationSupplier:sensitivityManager:featureChecker:);
  v8[17] = 0;
  v8[18] = closure #1 in default argument 5 of TaskLoggingService.init(biomeDonator:curareDonator:selfEmitter:tier1LinkIdSupplier:derivedIdentifierSupplier:appInformationSupplier:sensitivityManager:featureChecker:);
  v8[19] = 0;
  v8[20] = v7;
  static TaskLoggingService.instance = v8;
  return result;
}

uint64_t static DecisionEngineCurareDonator.instance.getter()
{
  if (one-time initialization token for instance != -1)
  {
    swift_once();
  }
}

uint64_t DecisionEngineCurareDonator.__allocating_init(decisionEngineStream:)(uint64_t a1)
{
  v2 = swift_allocObject();
  DecisionEngineCurareDonator.init(decisionEngineStream:)(a1);
  return v2;
}

uint64_t DecisionEngineCurareDonator.init(decisionEngineStream:)(uint64_t a1)
{
  v2 = v1;
  outlined init with copy of ReferenceResolutionClientProtocol?(a1, v1 + 16, &_s14SiriKitRuntime20DecisionEngineStream_pSgMd, &_s14SiriKitRuntime20DecisionEngineStream_pSgMR);
  if (!*(a1 + 24))
  {
    if (one-time initialization token for instrumentation != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static Logger.instrumentation);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1DC659000, v5, v6, "Failed to create stream for DecisionEngine - donations will be disabled.", v7, 2u);
      MEMORY[0x1E12A2F50](v7, -1, -1);
    }
  }

  outlined destroy of ReferenceResolutionClientProtocol?(a1, &_s14SiriKitRuntime20DecisionEngineStream_pSgMd, &_s14SiriKitRuntime20DecisionEngineStream_pSgMR);
  return v2;
}

uint64_t _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  outlined init with copy of ReferenceResolutionClientProtocol?(a3, v25 - v10, &_sScPSgMd, &_sScPSgMR);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v11, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t DecisionEngineCurareDonator.__deallocating_deinit()
{
  outlined destroy of ReferenceResolutionClientProtocol?(v0 + 16, &_s14SiriKitRuntime20DecisionEngineStream_pSgMd, &_s14SiriKitRuntime20DecisionEngineStream_pSgMR);

  return swift_deallocClassInstance();
}

uint64_t specialized DecisionEngineCurareDonator.__allocating_init()()
{
  v0 = objc_opt_self();
  if ([v0 isSupportedUser] && objc_msgSend(v0, sel_isSupportedPlatform))
  {
    v1 = type metadata accessor for DecisionEngineCurareStream();
    v2 = swift_allocObject();
    *(v2 + 16) = 0xD000000000000016;
    *(v2 + 24) = 0x80000001DCA821F0;
    *(&v10 + 1) = v1;
    v11 = &protocol witness table for DecisionEngineCurareStream;
    *&v9 = v2;
    type metadata accessor for DecisionEngineCurareDonator();
  }

  else
  {
    if (one-time initialization token for instrumentation != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static Logger.instrumentation);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1DC659000, v4, v5, "Unsupported User/Platform for feature store - donations will be disabled.", v6, 2u);
      MEMORY[0x1E12A2F50](v6, -1, -1);
    }

    type metadata accessor for DecisionEngineCurareDonator();
    v9 = 0u;
    v10 = 0u;
    v11 = 0;
  }

  v7 = swift_allocObject();
  DecisionEngineCurareDonator.init(decisionEngineStream:)(&v9);
  return v7;
}

void *assignWithCopy for AnyEncodable(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;

  return a1;
}

_OWORD *assignWithTake for AnyEncodable(_OWORD *a1, _OWORD *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA_19(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(a1, v4);
}

unint64_t lazy protocol witness table accessor for type AnyEncodable and conformance AnyEncodable()
{
  result = lazy protocol witness table cache variable for type AnyEncodable and conformance AnyEncodable;
  if (!lazy protocol witness table cache variable for type AnyEncodable and conformance AnyEncodable)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnyEncodable and conformance AnyEncodable);
  }

  return result;
}

uint64_t objectdestroy_26Tm(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void))
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a1, a2) - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + 16) & ~v6;
  v8 = *(v5 + 64);
  v9 = a3(0);
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v3 + v7, 1, v9))
  {
    (*(v10 + 8))(v3 + v7, v9);
  }

  return MEMORY[0x1EEE6BDD0](v3, v7 + v8, v6 | 7);
}

uint64_t DecisionEngineResponse.topNlParse.getter@<X0>(uint64_t a1@<X8>)
{
  v22 = a1;
  v2 = type metadata accessor for Parse();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for USOParse();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v21 - v11;
  v13 = type metadata accessor for DecisionEngineResponse(0);
  outlined init with copy of Input?(v1 + *(v13 + 24), v12);
  v14 = type metadata accessor for Input();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v12, 1, v14) == 1)
  {
    outlined destroy of Input?(v12);
    v16 = type metadata accessor for Siri_Nlu_External_UserParse();
    return (*(*(v16 - 8) + 56))(v22, 1, 1, v16);
  }

  else
  {
    Input.parse.getter();
    if ((*(v3 + 88))(v5, v2) == *MEMORY[0x1E69D0168])
    {
      (*(v3 + 96))(v5, v2);
      (*(v7 + 32))(v9, v5, v6);
      v18 = v22;
      USOParse.userParse.getter();
      (*(v7 + 8))(v9, v6);
      v19 = 0;
    }

    else
    {
      (*(v3 + 8))(v5, v2);
      v19 = 1;
      v18 = v22;
    }

    v20 = type metadata accessor for Siri_Nlu_External_UserParse();
    (*(*(v20 - 8) + 56))(v18, v19, 1, v20);
    return (*(v15 + 8))(v12, v14);
  }
}

uint64_t Input.topNlParse.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Parse();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for USOParse();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  Input.parse.getter();
  if ((*(v3 + 88))(v5, v2) == *MEMORY[0x1E69D0168])
  {
    (*(v3 + 96))(v5, v2);
    (*(v7 + 32))(v9, v5, v6);
    USOParse.userParse.getter();
    (*(v7 + 8))(v9, v6);
    v10 = 0;
  }

  else
  {
    (*(v3 + 8))(v5, v2);
    v10 = 1;
  }

  v11 = type metadata accessor for Siri_Nlu_External_UserParse();
  return (*(*(v11 - 8) + 56))(a1, v10, 1, v11);
}

uint64_t outlined init with copy of Input?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of Input?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t DecisionEngineResponse.init(conversation:existingFlowSelected:inputGivenToFlow:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = a1;
  *(a4 + 8) = a2;
  v6 = type metadata accessor for DecisionEngineResponse(0);
  result = outlined init with take of Input?(a3, a4 + *(v6 + 24));
  *(a4 + *(v6 + 28)) = 0;
  return result;
}

uint64_t outlined init with take of Input?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t DecisionEngineResponse.init(fallbackToPeer:inputGivenToFlow:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  v6 = type metadata accessor for DecisionEngineResponse(0);
  result = outlined init with take of Input?(a2, a3 + *(v6 + 24));
  *(a3 + *(v6 + 28)) = a1;
  return result;
}

uint64_t DecisionEngineResponse.inputGivenToFlow.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for DecisionEngineResponse(0) + 24);

  return outlined init with copy of Input?(v3, a1);
}

uint64_t DecisionMaking.getNlParse(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for LinkParse();
  v22 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for USOParse();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Parse();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v15, a1, v11, v13);
  v16 = (*(v12 + 88))(v15, v11);
  if (v16 == *MEMORY[0x1E69D0168])
  {
    (*(v12 + 96))(v15, v11);
    (*(v8 + 32))(v10, v15, v7);
    USOParse.userParse.getter();
    (*(v8 + 8))(v10, v7);
LABEL_5:
    v18 = type metadata accessor for Siri_Nlu_External_UserParse();
    return (*(*(v18 - 8) + 56))(a2, 0, 1, v18);
  }

  if (v16 == *MEMORY[0x1E69D0170])
  {
    (*(v12 + 96))(v15, v11);
    v17 = v22;
    (*(v22 + 32))(v6, v15, v4);
    LinkParse.usoParse.getter();
    USOParse.userParse.getter();
    (*(v8 + 8))(v10, v7);
    (*(v17 + 8))(v6, v4);
    goto LABEL_5;
  }

  v20 = type metadata accessor for Siri_Nlu_External_UserParse();
  (*(*(v20 - 8) + 56))(a2, 1, 1, v20);
  return (*(v12 + 8))(v15, v11);
}

uint64_t initializeBufferWithCopyOfBuffer for DecisionEngineResponse(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *(*(a3 - 8) + 80);
  v4 = *a2;
  *a1 = *a2;
  if ((v3 & 0x20000) != 0)
  {
    v7 = v4 + ((v3 + 16) & ~v3);
  }

  else
  {
    v7 = a1;
    *(a1 + 8) = *(a2 + 8);
    v8 = *(a3 + 24);
    v9 = type metadata accessor for Input();
    v10 = *(v9 - 8);
    v11 = *(v10 + 48);

    if (v11(a2 + v8, 1, v9))
    {
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
      memcpy((v7 + v8), a2 + v8, *(*(v12 - 8) + 64));
    }

    else
    {
      (*(v10 + 16))(v7 + v8, a2 + v8, v9);
      (*(v10 + 56))(v7 + v8, 0, 1, v9);
    }

    *(v7 + *(a3 + 28)) = *(a2 + *(a3 + 28));
  }

  return v7;
}

uint64_t initializeWithCopy for DecisionEngineResponse(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v6 = *(a3 + 24);
  v7 = type metadata accessor for Input();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);

  if (v9(a2 + v6, 1, v7))
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
    memcpy((a1 + v6), (a2 + v6), *(*(v10 - 8) + 64));
  }

  else
  {
    (*(v8 + 16))(a1 + v6, a2 + v6, v7);
    (*(v8 + 56))(a1 + v6, 0, 1, v7);
  }

  *(a1 + *(a3 + 28)) = *(a2 + *(a3 + 28));
  return a1;
}

uint64_t assignWithCopy for DecisionEngineResponse(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  v6 = *(a3 + 24);
  v7 = type metadata accessor for Input();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  v10 = v9(a1 + v6, 1, v7);
  v11 = v9(a2 + v6, 1, v7);
  if (!v10)
  {
    if (!v11)
    {
      (*(v8 + 24))(a1 + v6, a2 + v6, v7);
      goto LABEL_7;
    }

    (*(v8 + 8))(a1 + v6, v7);
    goto LABEL_6;
  }

  if (v11)
  {
LABEL_6:
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
    memcpy((a1 + v6), (a2 + v6), *(*(v12 - 8) + 64));
    goto LABEL_7;
  }

  (*(v8 + 16))(a1 + v6, a2 + v6, v7);
  (*(v8 + 56))(a1 + v6, 0, 1, v7);
LABEL_7:
  *(a1 + *(a3 + 28)) = *(a2 + *(a3 + 28));
  return a1;
}

uint64_t initializeWithTake for DecisionEngineResponse(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v6 = *(a3 + 24);
  v7 = type metadata accessor for Input();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(a2 + v6, 1, v7))
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
    memcpy((a1 + v6), (a2 + v6), *(*(v9 - 8) + 64));
  }

  else
  {
    (*(v8 + 32))(a1 + v6, a2 + v6, v7);
    (*(v8 + 56))(a1 + v6, 0, 1, v7);
  }

  *(a1 + *(a3 + 28)) = *(a2 + *(a3 + 28));
  return a1;
}

uint64_t assignWithTake for DecisionEngineResponse(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  v6 = *(a3 + 24);
  v7 = type metadata accessor for Input();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  v10 = v9(a1 + v6, 1, v7);
  v11 = v9(a2 + v6, 1, v7);
  if (!v10)
  {
    if (!v11)
    {
      (*(v8 + 40))(a1 + v6, a2 + v6, v7);
      goto LABEL_7;
    }

    (*(v8 + 8))(a1 + v6, v7);
    goto LABEL_6;
  }

  if (v11)
  {
LABEL_6:
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
    memcpy((a1 + v6), (a2 + v6), *(*(v12 - 8) + 64));
    goto LABEL_7;
  }

  (*(v8 + 32))(a1 + v6, a2 + v6, v7);
  (*(v8 + 56))(a1 + v6, 0, 1, v7);
LABEL_7:
  *(a1 + *(a3 + 28)) = *(a2 + *(a3 + 28));
  return a1;
}

void type metadata completion function for DecisionEngineResponse(uint64_t a1)
{
  type metadata accessor for Input?(319);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

uint64_t dispatch thunk of DecisionMaking.findBestConversationFor(conversationUserInput:activeConversations:recentlyCompletedCorrectableConversation:turnData:bridge:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v19 = (*(a9 + 8) + **(a9 + 8));
  v17 = swift_task_alloc();
  *(v9 + 16) = v17;
  *v17 = v9;
  v17[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return v19(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t dispatch thunk of DecisionMaking.findBestConversationForUnambiguousInput(_:speechData:activeConversations:turnData:bridge:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v19 = (*(a9 + 16) + **(a9 + 16));
  v17 = swift_task_alloc();
  *(v9 + 16) = v17;
  *v17 = v9;
  v17[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return v19(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t dispatch thunk of DecisionMaking.loadConversationFromPluginAction(_:speechData:turnData:bridge:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v17 = (*(a7 + 24) + **(a7 + 24));
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = dispatch thunk of CaarRankingProviding.getCaarRanking(requestId:caarId:rcId:actions:rankerContext:);

  return v17(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t dispatch thunk of DecisionMaking.commitConversation(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 32) + **(a3 + 32));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of DecisionMaking.commitCorrections()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 40) + **(a2 + 40));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return v7(a1, a2);
}

uint64_t DefaultDeviceState.isCarPlay.getter(void (*a1)(uint64_t))
{
  v2 = type metadata accessor for DeviceRestrictions();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v13 - v7;
  v9 = Restrictions.deviceRestrictions.getter();
  a1(v9);
  lazy protocol witness table accessor for type DeviceRestrictions and conformance DeviceRestrictions();
  v10 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v11 = *(v3 + 8);
  v11(v5, v2);
  v11(v8, v2);
  return v10 & 1;
}

uint64_t DefaultDeviceState.sessionHandOffContinuityID.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_sessionHandOffContinuityID);

  return v1;
}

uint64_t DefaultDeviceState.preferencesLanguageCode.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_preferencesLanguageCode);

  return v1;
}

uint64_t DefaultDeviceState.endpointId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_endpointId);

  return v1;
}

uint64_t DefaultDeviceState.inputOrigin.getter@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a2(0);
  v7 = *(*(v6 - 8) + 16);

  return v7(a3, v3 + v5, v6);
}

uint64_t DefaultDeviceState.__allocating_init(inputOrigin:interactionType:renderDeviceIdiom:multiUserState:siriLocale:siriVoiceGender:isEyesFree:isVoiceTriggerEnabled:isTextToSpeechEnabled:isDirectAction:isLockedWithPasscodeClosure:sessionHandOffContinuityID:preferencesLanguageCode:personalDomainsAuthenticationMode:bargeInContext:peerName:endpointId:restrictedCommands:authenticationState:isDeviceShowingLockScreen:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8, unsigned __int8 a9, unsigned __int8 a10, uint64_t (*a11)(), uint64_t (*a12)(), uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, __int128 *a24, unsigned __int8 a25)
{
  v88 = a8;
  v87 = a7;
  v109 = a25;
  v110 = a23;
  v107 = a22;
  v108 = a24;
  v105 = a20;
  v106 = a21;
  v103 = a18;
  v104 = a19;
  v101 = a16;
  v102 = a17;
  v100 = a15;
  v97 = a13;
  v98 = a14;
  v94 = a12;
  v84 = a10;
  v82 = a9;
  v85 = type metadata accessor for DeviceRestrictions();
  v86 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v32 = &v77 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v80 = &v77 - v34;
  v35 = swift_allocObject();
  v36 = OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_isHomePodGestalt;
  *(v35 + v36) = MGGetSInt32Answer() == 7;
  *(v35 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_isAppleTVGestalt) = 0;
  v37 = OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_isPhoneGestalt;
  *(v35 + v37) = MGGetSInt32Answer() == 1;
  v38 = OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_isPadGestalt;
  *(v35 + v38) = MGGetSInt32Answer() == 3;
  v39 = OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_isPodGestalt;
  *(v35 + v39) = MGGetSInt32Answer() == 2;
  *(v35 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_isXRGestalt) = 0;
  v40 = OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_inputOrigin;
  v41 = type metadata accessor for InputOrigin();
  v89 = *(v41 - 8);
  v42 = *(v89 + 16);
  v99 = a1;
  v90 = v41;
  v42(v35 + v40, a1);
  v43 = OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_interactionType;
  v44 = type metadata accessor for InteractionType();
  v81 = *(v44 - 8);
  v45 = *(v81 + 16);
  v96 = a2;
  v83 = v44;
  v45(v35 + v43, a2);
  v46 = OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_renderDeviceIdiom;
  v47 = type metadata accessor for DeviceIdiom();
  v78 = *(v47 - 8);
  v48 = *(v78 + 16);
  v95 = a3;
  v79 = v47;
  v48(v35 + v46, a3);
  v93 = a4;
  outlined init with copy of MultiUserState(a4, v35 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_multiUserState);
  v49 = OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_siriLocale;
  v50 = type metadata accessor for Locale();
  v51 = *(v50 - 8);
  v52 = *(v51 + 16);
  v92 = a5;
  v77 = v50;
  v52(v35 + v49, a5);
  v53 = OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_siriVoiceGender;
  v54 = type metadata accessor for SiriVoiceGender();
  v55 = *(v54 - 8);
  v56 = *(v55 + 16);
  v91 = a6;
  v56(v35 + v53, a6, v54);
  *(v35 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_isEyesFree) = v87;
  *(v35 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_isVoiceTriggerEnabled) = v88;
  *(v35 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_isTextToSpeechEnabled) = v82;
  *(v35 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_isDirectAction) = v84;
  v57 = v80;
  Restrictions.deviceRestrictions.getter();
  static DeviceRestrictions.starkMode.getter();
  lazy protocol witness table accessor for type DeviceRestrictions and conformance DeviceRestrictions();
  v58 = v32;
  v59 = v85;
  LOBYTE(a6) = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v60 = *(v86 + 8);
  v60(v58, v59);
  v60(v57, v59);
  if (a6)
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v61 = static Log.executor;
    v62 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Forcing DeviceState.isLockedWithPasscode to false since isCarPlay is true", 73, 2, &dword_1DC659000, v61, v62, MEMORY[0x1E69E7CC0]);

    v63 = 0;
    v64 = getEnumTag for AffinityScore;
  }

  else
  {
    v64 = a11;
    v63 = v94;
  }

  (*(v55 + 8))(v91, v54);
  (*(v51 + 8))(v92, v77);
  outlined destroy of MultiUserState(v93);
  (*(v78 + 8))(v95, v79);
  (*(v81 + 8))(v96, v83);
  (*(v89 + 8))(v99, v90);
  v65 = (v35 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_isLockedWithPasscodeClosure);
  *v65 = v64;
  v65[1] = v63;
  v66 = (v35 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_sessionHandOffContinuityID);
  v67 = v98;
  *v66 = v97;
  v66[1] = v67;
  v68 = (v35 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_preferencesLanguageCode);
  v69 = v101;
  *v68 = v100;
  v68[1] = v69;
  outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v102, v35 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_personalDomainsAuthenticationMode, &_s13SiriUtilities33PersonalDomainsAuthenticationModeOSgMd, &_s13SiriUtilities33PersonalDomainsAuthenticationModeOSgMR);
  outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v103, v35 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_bargeInContext, &_s13SiriUtilities14BargeInContextVSgMd, &_s13SiriUtilities14BargeInContextVSgMR);
  v70 = (v35 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_peerName);
  v71 = v105;
  *v70 = v104;
  v70[1] = v71;
  v72 = OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_restrictedCommands;
  v73 = type metadata accessor for Restrictions();
  (*(*(v73 - 8) + 32))(v35 + v72, v110, v73);
  v74 = (v35 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_endpointId);
  v75 = v107;
  *v74 = v106;
  v74[1] = v75;
  outlined init with take of ReferenceResolutionClientProtocol(v108, v35 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_authenticationState);
  *(v35 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_isDeviceShowingLockScreen) = v109 & 1;
  return v35;
}

uint64_t DefaultDeviceState.init(inputOrigin:interactionType:renderDeviceIdiom:multiUserState:siriLocale:siriVoiceGender:isEyesFree:isVoiceTriggerEnabled:isTextToSpeechEnabled:isDirectAction:isLockedWithPasscodeClosure:sessionHandOffContinuityID:preferencesLanguageCode:personalDomainsAuthenticationMode:bargeInContext:peerName:endpointId:restrictedCommands:authenticationState:isDeviceShowingLockScreen:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8, unsigned __int8 a9, unsigned __int8 a10, uint64_t (*a11)(), uint64_t (*a12)(), uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, __int128 *a24, unsigned __int8 a25)
{
  v26 = v25;
  v87 = a8;
  LODWORD(v105) = a7;
  v110 = a6;
  v109 = a25;
  v107 = a22;
  v108 = a24;
  v106 = a21;
  v103 = a19;
  v104 = a20;
  v101 = a17;
  v102 = a18;
  v99 = a15;
  v100 = a16;
  v96 = a13;
  v97 = a14;
  v93 = a12;
  v83 = a10;
  v82 = a9;
  v85 = type metadata accessor for DeviceRestrictions();
  v86 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v33 = &v77 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v79 = &v77 - v35;
  v36 = OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_isHomePodGestalt;
  *(v25 + v36) = MGGetSInt32Answer() == 7;
  *(v25 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_isAppleTVGestalt) = 0;
  v37 = OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_isPhoneGestalt;
  *(v25 + v37) = MGGetSInt32Answer() == 1;
  v38 = OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_isPadGestalt;
  *(v25 + v38) = MGGetSInt32Answer() == 3;
  v39 = OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_isPodGestalt;
  *(v25 + v39) = MGGetSInt32Answer() == 2;
  *(v25 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_isXRGestalt) = 0;
  v40 = OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_inputOrigin;
  v41 = type metadata accessor for InputOrigin();
  v89 = *(v41 - 8);
  v42 = *(v89 + 16);
  v98 = a1;
  v90 = v41;
  v42(v25 + v40, a1);
  v43 = OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_interactionType;
  v44 = type metadata accessor for InteractionType();
  v84 = *(v44 - 8);
  v45 = *(v84 + 16);
  v95 = a2;
  v88 = v44;
  v45(v25 + v43, a2);
  v46 = OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_renderDeviceIdiom;
  v47 = type metadata accessor for DeviceIdiom();
  v80 = *(v47 - 8);
  v48 = *(v80 + 16);
  v94 = a3;
  v81 = v47;
  v48(v25 + v46, a3);
  v92 = a4;
  outlined init with copy of MultiUserState(a4, v25 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_multiUserState);
  v49 = OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_siriLocale;
  v50 = type metadata accessor for Locale();
  v51 = *(v50 - 8);
  v52 = *(v51 + 16);
  v91 = a5;
  v78 = v50;
  v52(v25 + v49, a5);
  v53 = OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_siriVoiceGender;
  v54 = type metadata accessor for SiriVoiceGender();
  v55 = *(v54 - 8);
  (*(v55 + 16))(v25 + v53, v110, v54);
  *(v25 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_isEyesFree) = v105;
  *(v25 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_isVoiceTriggerEnabled) = v87;
  *(v25 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_isTextToSpeechEnabled) = v82;
  *(v25 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_isDirectAction) = v83;
  v56 = v79;
  v105 = a23;
  Restrictions.deviceRestrictions.getter();
  static DeviceRestrictions.starkMode.getter();
  lazy protocol witness table accessor for type DeviceRestrictions and conformance DeviceRestrictions();
  v57 = v33;
  v58 = v85;
  v59 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v60 = *(v86 + 8);
  v60(v57, v58);
  v60(v56, v58);
  if (v59)
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v61 = static Log.executor;
    v62 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Forcing DeviceState.isLockedWithPasscode to false since isCarPlay is true", 73, 2, &dword_1DC659000, v61, v62, MEMORY[0x1E69E7CC0]);

    v63 = 0;
    v64 = getEnumTag for AffinityScore;
  }

  else
  {
    v64 = a11;
    v63 = v93;
  }

  (*(v55 + 8))(v110, v54);
  (*(v51 + 8))(v91, v78);
  outlined destroy of MultiUserState(v92);
  (*(v80 + 8))(v94, v81);
  (*(v84 + 8))(v95, v88);
  (*(v89 + 8))(v98, v90);
  v65 = (v26 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_isLockedWithPasscodeClosure);
  *v65 = v64;
  v65[1] = v63;
  v66 = (v26 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_sessionHandOffContinuityID);
  v67 = v97;
  *v66 = v96;
  v66[1] = v67;
  v68 = (v26 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_preferencesLanguageCode);
  v69 = v100;
  *v68 = v99;
  v68[1] = v69;
  outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v101, v26 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_personalDomainsAuthenticationMode, &_s13SiriUtilities33PersonalDomainsAuthenticationModeOSgMd, &_s13SiriUtilities33PersonalDomainsAuthenticationModeOSgMR);
  outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v102, v26 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_bargeInContext, &_s13SiriUtilities14BargeInContextVSgMd, &_s13SiriUtilities14BargeInContextVSgMR);
  v70 = (v26 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_peerName);
  v71 = v104;
  *v70 = v103;
  v70[1] = v71;
  v72 = OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_restrictedCommands;
  v73 = type metadata accessor for Restrictions();
  (*(*(v73 - 8) + 32))(v26 + v72, v105, v73);
  v74 = (v26 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_endpointId);
  v75 = v107;
  *v74 = v106;
  v74[1] = v75;
  outlined init with take of ReferenceResolutionClientProtocol(v108, v26 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_authenticationState);
  *(v26 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_isDeviceShowingLockScreen) = v109 & 1;
  return v26;
}

uint64_t DefaultDeviceState.isWatch.getter(unsigned int *a1, double a2)
{
  v3 = type metadata accessor for DeviceIdiom();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v4 + 104);
  v8(v7, *MEMORY[0x1E69D34B8], v3, v5);
  v9 = static DeviceIdiom.== infix(_:_:)();
  v10 = *(v4 + 8);
  v10(v7, v3);
  if (v9)
  {
    v11 = 0;
  }

  else
  {
    (v8)(v7, *a1, v3);
    v11 = static DeviceIdiom.== infix(_:_:)();
    v10(v7, v3);
  }

  return v11 & 1;
}

uint64_t DefaultDeviceState.isHomePod.getter(void *a1, unsigned int *a2, double a3)
{
  v16 = a2;
  v5 = type metadata accessor for DeviceIdiom();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v6 + 104);
  v10(v9, *MEMORY[0x1E69D34B8], v5, v7);
  v11 = static DeviceIdiom.== infix(_:_:)();
  v12 = *(v6 + 8);
  v12(v9, v5);
  if (v11)
  {
    v13 = *(v3 + *a1);
  }

  else
  {
    (v10)(v9, *v16, v5);
    v13 = static DeviceIdiom.== infix(_:_:)();
    v12(v9, v5);
  }

  return v13 & 1;
}

uint64_t DefaultDeviceState.peerDeviceName.getter(double a1)
{
  v2 = type metadata accessor for DeviceIdiom();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v3 + 104);
  v7(v6, *MEMORY[0x1E69D34B8], v2, v4);
  v8 = static DeviceIdiom.== infix(_:_:)();
  v9 = *(v3 + 8);
  v9(v6, v2);
  if ((v8 & 1) == 0)
  {
    (v7)(v6, *MEMORY[0x1E69D34A8], v2);
    v11 = static DeviceIdiom.== infix(_:_:)();
    v9(v6, v2);
    if ((v11 & 1) == 0)
    {
      return 0;
    }

LABEL_5:
    v10 = *(v1 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_peerName);

    return v10;
  }

  if (*(v1 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_isHomePodGestalt) == 1)
  {
    goto LABEL_5;
  }

  return 0;
}

SiriKitRuntime::AuthenticationStateImpl __swiftcall AuthenticationStateImpl.init(isAuthenticatedByWatch:isAuthenticatedByHeadphones:)(Swift::Bool isAuthenticatedByWatch, Swift::Bool isAuthenticatedByHeadphones)
{
  if (isAuthenticatedByHeadphones)
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return (v2 & 0xFFFE | isAuthenticatedByWatch);
}

void type metadata completion function for DefaultDeviceState(uint64_t a1)
{
  type metadata accessor for InputOrigin();
  if (v1 <= 0x3F)
  {
    type metadata accessor for InteractionType();
    if (v2 <= 0x3F)
    {
      type metadata accessor for MultiUserState();
      if (v3 <= 0x3F)
      {
        type metadata accessor for Locale();
        if (v4 <= 0x3F)
        {
          type metadata accessor for SiriVoiceGender();
          if (v5 <= 0x3F)
          {
            type metadata accessor for DeviceIdiom();
            if (v6 <= 0x3F)
            {
              type metadata accessor for PersonalDomainsAuthenticationMode?(319, &lazy cache variable for type metadata for PersonalDomainsAuthenticationMode?, MEMORY[0x1E69D3668]);
              if (v7 <= 0x3F)
              {
                type metadata accessor for PersonalDomainsAuthenticationMode?(319, &lazy cache variable for type metadata for BargeInContext?, MEMORY[0x1E69D3588]);
                if (v8 <= 0x3F)
                {
                  type metadata accessor for Restrictions();
                  if (v9 <= 0x3F)
                  {
                    swift_updateClassMetadata2();
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void type metadata accessor for PersonalDomainsAuthenticationMode?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t getEnumTagSinglePayload for AuthenticationStateImpl(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
    if (v4)
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for AuthenticationStateImpl(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t DefaultMeCardProxy.__allocating_init(remoteMeCard:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

void *DefaultMeCardProxy.fetchMeCard(options:)()
{
  v1 = v0;
  v2 = type metadata accessor for MeCardOptions();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static MeCardOptions.ignoreLocalMeCard.getter();
  lazy protocol witness table accessor for type MeCardOptions and conformance MeCardOptions();
  v6 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v7 = *(v3 + 8);
  v7(v5, v2);
  if (v6)
  {
    goto LABEL_5;
  }

  if (one-time initialization token for instance != -1)
  {
    swift_once();
  }

  v8 = static MeCardService.instance;
  static MeCardOptions.ignoreCachedMeCard.getter();
  v9 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v7(v5, v2);
  v10 = (*(*v8 + 168))((v9 & 1) == 0);
  if (!v10)
  {
LABEL_5:
    v10 = *(v1 + 16);
    v11 = v10;
  }

  return v10;
}

unint64_t lazy protocol witness table accessor for type MeCardOptions and conformance MeCardOptions()
{
  result = lazy protocol witness table cache variable for type MeCardOptions and conformance MeCardOptions;
  if (!lazy protocol witness table cache variable for type MeCardOptions and conformance MeCardOptions)
  {
    type metadata accessor for MeCardOptions();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MeCardOptions and conformance MeCardOptions);
  }

  return result;
}

uint64_t DefaultMeCardProxy.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t *DeviceContextHelper.sharedInstance.unsafeMutableAddressor()
{
  if (one-time initialization token for sharedInstance != -1)
  {
    swift_once();
  }

  return &static DeviceContextHelper.sharedInstance;
}

uint64_t one-time initialization function for legacyNLContextKey()
{
  result = MEMORY[0x1E12A1410](0x4C4E79636167656CLL, 0xEF747865746E6F43);
  static DeviceContextHelper.legacyNLContextKey = result;
  return result;
}

uint64_t *DeviceContextHelper.legacyNLContextKey.unsafeMutableAddressor()
{
  if (one-time initialization token for legacyNLContextKey != -1)
  {
    swift_once();
  }

  return &static DeviceContextHelper.legacyNLContextKey;
}

uint64_t one-time initialization function for onDeviceConversationKey()
{
  result = MEMORY[0x1E12A1410](0xD000000000000019, 0x80000001DCA7A5F0);
  static DeviceContextHelper.onDeviceConversationKey = result;
  return result;
}

uint64_t *DeviceContextHelper.onDeviceConversationKey.unsafeMutableAddressor()
{
  if (one-time initialization token for onDeviceConversationKey != -1)
  {
    swift_once();
  }

  return &static DeviceContextHelper.onDeviceConversationKey;
}

uint64_t one-time initialization function for serverBoundContextUpdate()
{
  result = MEMORY[0x1E12A1410](0xD00000000000001ALL, 0x80000001DCA7A620);
  static DeviceContextHelper.serverBoundContextUpdate = result;
  return result;
}

uint64_t *DeviceContextHelper.serverBoundContextUpdate.unsafeMutableAddressor()
{
  if (one-time initialization token for serverBoundContextUpdate != -1)
  {
    swift_once();
  }

  return &static DeviceContextHelper.serverBoundContextUpdate;
}

id static DeviceContextHelper.legacyNLContextKey.getter(void *a1, void **a2, uint64_t a3)
{
  if (*a1 == -1)
  {
    v4 = *a2;
  }

  else
  {
    swift_once();
    v4 = *a2;
  }

  return v4;
}

void one-time initialization function for sharedInstance()
{
  type metadata accessor for DeviceContextHelper();
  inited = swift_initStaticObject();
  specialized DeviceContextHelper.registerTransfomers()();
  static DeviceContextHelper.sharedInstance = inited;
}

uint64_t DeviceContextHelper.__allocating_init()()
{
  v0 = swift_allocObject();
  specialized DeviceContextHelper.registerTransfomers()();
  return v0;
}

uint64_t static DeviceContextHelper.sharedInstance.getter()
{
  if (one-time initialization token for sharedInstance != -1)
  {
    swift_once();
  }
}

uint64_t DeviceContextHelper.donateContextToCollector(_:_:)(uint64_t a1, uint64_t (*a2)(void), uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v16[-1] - v8;
  v16[3] = &type metadata for HALFeatureFlags;
  v16[4] = lazy protocol witness table accessor for type HALFeatureFlags and conformance HALFeatureFlags();
  v10 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_1Tm(v16);
  if ((v10 & 1) == 0)
  {
    return a2(0);
  }

  v11 = [objc_opt_self() defaultService];
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v3;
  v13[5] = v11;
  v13[6] = a1;
  v13[7] = a2;
  v13[8] = a3;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v9, &async function pointer to partial apply for closure #1 in DeviceContextHelper.donateContextToCollector(_:_:), v13);
}

id DeviceContextHelper.getContextDonationService()()
{
  v0 = [objc_opt_self() defaultService];

  return v0;
}

uint64_t closure #1 in DeviceContextHelper.donateContextToCollector(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[4] = a7;
  v8[5] = a8;
  v8[2] = a5;
  v8[3] = a6;
  return MEMORY[0x1EEE6DFA0](closure #1 in DeviceContextHelper.donateContextToCollector(_:_:), 0, 0);
}

uint64_t closure #1 in DeviceContextHelper.donateContextToCollector(_:_:)()
{
  specialized DeviceContextHelper.donateDataWithContext(_:_:_:)(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));
  v1 = *(v0 + 8);

  return v1();
}

id closure #2 in DeviceContextHelper.fetchContextFromCollector(from:_:_:)(unint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a1)
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v65 = type metadata accessor for Logger();
    __swift_project_value_buffer(v65, static Logger.conversationBridge);
    v66 = Logger.logObject.getter();
    v67 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v66, v67))
    {
      goto LABEL_99;
    }

    v68 = swift_slowAlloc();
    *v68 = 0;
    v69 = "Nil contexts returned from ContextCollector";
    goto LABEL_98;
  }

  v7 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
    goto LABEL_93;
  }

  v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v8)
  {
LABEL_94:
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v71 = type metadata accessor for Logger();
    __swift_project_value_buffer(v71, static Logger.conversationBridge);
    v66 = Logger.logObject.getter();
    v67 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v66, v67))
    {
      goto LABEL_99;
    }

    v68 = swift_slowAlloc();
    *v68 = 0;
    v69 = "Empty contexts returned from ContextCollector";
    goto LABEL_98;
  }

LABEL_4:
  v74 = a2;
  v9 = 0;
  v80[0] = MEMORY[0x1E69E7CC0];
  do
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x1E12A1FE0](v9, a1);
    }

    else
    {
      if (v9 >= *(v7 + 16))
      {
        goto LABEL_92;
      }

      v10 = *(a1 + 8 * v9 + 32);
    }

    a2 = v10;
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      v8 = __CocoaSet.count.getter();
      if (!v8)
      {
        goto LABEL_94;
      }

      goto LABEL_4;
    }

    if ([v10 proximity] == 4000)
    {
    }

    else
    {
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    ++v9;
  }

  while (v11 != v8);
  v81 = v80[0];
  if (v80[0] < 0 || (v80[0] & 0x4000000000000000) != 0)
  {
    v12 = __CocoaSet.count.getter();
  }

  else
  {
    v12 = *(v80[0] + 16);
  }

  a2 = v74;
  if (!v12)
  {

    if (one-time initialization token for conversationBridge == -1)
    {
LABEL_89:
      v70 = type metadata accessor for Logger();
      __swift_project_value_buffer(v70, static Logger.conversationBridge);
      v66 = Logger.logObject.getter();
      v67 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v66, v67))
      {
LABEL_99:

        swift_beginAccess();

        a2(v72);
      }

      v68 = swift_slowAlloc();
      *v68 = 0;
      v69 = "Filtered context is empty";
LABEL_98:
      _os_log_impl(&dword_1DC659000, v66, v67, v69, v68, 2u);
      MEMORY[0x1E12A2F50](v68, -1, -1);
      goto LABEL_99;
    }

LABEL_107:
    swift_once();
    goto LABEL_89;
  }

  specialized MutableCollection<>.sort(by:)(&v81);
  v13 = v81;
  if (v81 >> 62)
  {
    v14 = a4;
    if (!__CocoaSet.count.getter())
    {
      goto LABEL_102;
    }

LABEL_20:
    if ((v13 & 0xC000000000000001) != 0)
    {
      v15 = MEMORY[0x1E12A1FE0](0, v13);
LABEL_23:
      v16 = v15;
      v17 = *(a5 + 16);
      if (!v17)
      {
        goto LABEL_103;
      }

      goto LABEL_24;
    }

    if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v15 = *(v13 + 32);
      goto LABEL_23;
    }

    __break(1u);
    goto LABEL_107;
  }

  v14 = a4;
  if (*((v81 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_20;
  }

LABEL_102:
  v16 = 0;
  v17 = *(a5 + 16);
  if (!v17)
  {
LABEL_103:

    swift_beginAccess();

    v74(v73);
  }

LABEL_24:
  v18 = (a5 + 32);
  v75 = v16;
  while (2)
  {
    while (2)
    {
      v20 = *v18++;
      v19 = v20;
      if (!v16)
      {
LABEL_57:
        if (one-time initialization token for conversationBridge != -1)
        {
          swift_once();
        }

        v41 = type metadata accessor for Logger();
        __swift_project_value_buffer(v41, static Logger.conversationBridge);
        v42 = Logger.logObject.getter();
        v43 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v42, v43))
        {
          v44 = swift_slowAlloc();
          v45 = swift_slowAlloc();
          v80[0] = v45;
          *v44 = 136315138;
          v46 = 0x4C4E79636167656CLL;
          if (v19 != 1)
          {
            v46 = 0xD00000000000001ALL;
          }

          v47 = 0x80000001DCA7A620;
          if (v19 == 1)
          {
            v47 = 0xEF747865746E6F43;
          }

          if (v19)
          {
            v48 = v46;
          }

          else
          {
            v48 = 0xD000000000000019;
          }

          if (v19)
          {
            v49 = v47;
          }

          else
          {
            v49 = 0x80000001DCA7A5F0;
          }

          v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v49, v80);

          *(v44 + 4) = v50;
          _os_log_impl(&dword_1DC659000, v42, v43, "Missing context data for key=%s", v44, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v45);
          MEMORY[0x1E12A2F50](v45, -1, -1);
          MEMORY[0x1E12A2F50](v44, -1, -1);

          v16 = v75;
        }

        else
        {
        }

        swift_beginAccess();
        v51 = specialized __RawDictionaryStorage.find<A>(_:)(v19);
        if (v52)
        {
          v53 = v51;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v55 = *(v14 + 16);
          v79[0] = v55;
          *(v14 + 16) = 0x8000000000000000;
          if (!isUniquelyReferenced_nonNull_native)
          {
            specialized _NativeDictionary.copy()();
            v55 = v79[0];
          }

          swift_unknownObjectRelease();
          specialized _NativeDictionary._delete(at:)(v53, v55);
          *(v14 + 16) = v55;
        }

        swift_endAccess();
        if (!--v17)
        {
          goto LABEL_103;
        }

        continue;
      }

      break;
    }

    result = [v16 serializedContextByKey];
    if (result)
    {
      v22 = result;
      v23 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v24 = 0x4C4E79636167656CLL;
      if (v19 != 1)
      {
        v24 = 0xD00000000000001ALL;
      }

      v25 = 0x80000001DCA7A620;
      if (v19 == 1)
      {
        v25 = 0xEF747865746E6F43;
      }

      if (v19)
      {
        v26 = v24;
      }

      else
      {
        v26 = 0xD000000000000019;
      }

      if (v19)
      {
        v27 = v25;
      }

      else
      {
        v27 = 0x80000001DCA7A5F0;
      }

      if (*(v23 + 16))
      {
        v28 = specialized __RawDictionaryStorage.find<A>(_:)(v26, v27);
        v30 = v29;

        if (v30)
        {
          outlined init with copy of Any(*(v23 + 56) + 32 * v28, v80);

          if (one-time initialization token for conversationBridge != -1)
          {
            swift_once();
          }

          v31 = type metadata accessor for Logger();
          __swift_project_value_buffer(v31, static Logger.conversationBridge);
          v32 = Logger.logObject.getter();
          v33 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v32, v33))
          {
            v34 = swift_slowAlloc();
            v35 = swift_slowAlloc();
            v79[0] = v35;
            *v34 = 136315138;
            v36 = 0x4C4E79636167656CLL;
            if (v19 != 1)
            {
              v36 = 0xD00000000000001ALL;
            }

            v37 = 0x80000001DCA7A620;
            if (v19 == 1)
            {
              v37 = 0xEF747865746E6F43;
            }

            if (v19)
            {
              v38 = v36;
            }

            else
            {
              v38 = 0xD000000000000019;
            }

            if (v19)
            {
              v39 = v37;
            }

            else
            {
              v39 = 0x80000001DCA7A5F0;
            }

            v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v39, v79);

            *(v34 + 4) = v40;
            _os_log_impl(&dword_1DC659000, v32, v33, "Found data for key=%s", v34, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v35);
            MEMORY[0x1E12A2F50](v35, -1, -1);
            MEMORY[0x1E12A2F50](v34, -1, -1);

            v16 = v75;
          }

          else
          {
          }

          if (v19)
          {
            outlined init with copy of Any(v80, v79);
            if (v19 == 1)
            {
              v56 = objc_allocWithZone(type metadata accessor for ServerPromptData(0));
              v57 = ServerPromptData.init(serializedBackingStore:)(v79);
              swift_beginAccess();
              v58 = swift_isUniquelyReferenced_nonNull_native();
              v78 = *(v14 + 16);
              *(v14 + 16) = 0x8000000000000000;
              v59 = v57;
              v60 = 1;
            }

            else
            {
              v63 = objc_allocWithZone(type metadata accessor for ServerBoundContextUpdateContainer());
              v64 = ServerBoundContextUpdateContainer.init(serializedBackingStore:)(v79);
              swift_beginAccess();
              v58 = swift_isUniquelyReferenced_nonNull_native();
              v78 = *(v14 + 16);
              *(v14 + 16) = 0x8000000000000000;
              v59 = v64;
              v60 = 2;
            }
          }

          else
          {
            outlined init with copy of Any(v80, v79);
            v61 = objc_allocWithZone(type metadata accessor for ConversationalContextContainer());
            v62 = ConversationalContextContainer.init(serializedBackingStore:)(v79);
            swift_beginAccess();
            v58 = swift_isUniquelyReferenced_nonNull_native();
            v78 = *(v14 + 16);
            *(v14 + 16) = 0x8000000000000000;
            v59 = v62;
            v60 = 0;
          }

          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v59, v60, v58);
          *(v14 + 16) = v78;
          swift_endAccess();
          __swift_destroy_boxed_opaque_existential_1Tm(v80);
          if (!--v17)
          {
            goto LABEL_103;
          }

          continue;
        }
      }

      else
      {
      }

      goto LABEL_57;
    }

    break;
  }

  __break(1u);
  return result;
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(id *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_90:
    v7 = *a1;
    if (!*a1)
    {
      goto LABEL_128;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_122:
      v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
    }

    v91 = *(v8 + 2);
    if (v91 >= 2)
    {
      while (*a3)
      {
        v92 = v8;
        v8 = (v91 - 1);
        v93 = *&v92[16 * v91];
        v94 = *&v92[16 * v91 + 24];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 8 * v93), (*a3 + 8 * *&v92[16 * v91 + 16]), (*a3 + 8 * v94), v7);
        if (v5)
        {
          goto LABEL_100;
        }

        if (v94 < v93)
        {
          goto LABEL_115;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v92 = specialized _ArrayBuffer._consumeAndCreateNew()(v92);
        }

        if (v91 - 2 >= *(v92 + 2))
        {
          goto LABEL_116;
        }

        v95 = &v92[16 * v91];
        *v95 = v93;
        *(v95 + 1) = v94;
        specialized Array.remove(at:)(v91 - 1);
        v8 = v92;
        v91 = *(v92 + 2);
        if (v91 <= 1)
        {
          goto LABEL_100;
        }
      }

      goto LABEL_126;
    }

LABEL_100:

    return;
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7;
    v7 = (v7 + 1);
    if (v7 < v6)
    {
      v101 = v5;
      v97 = 8 * v9;
      v10 = (*a3 + 8 * v9);
      v12 = *v10;
      v11 = v10 + 2;
      v13 = *(*a3 + 8 * v7);
      v14 = v12;
      v106 = [v13 proximity];
      v104 = [v14 proximity];

      v99 = v9;
      v15 = v9 + 2;
      while (v6 != v15)
      {
        v16 = *(v11 - 1);
        v17 = *v11;
        v18 = v16;
        v19 = v8;
        v20 = [v17 proximity];
        v7 = [v18 proximity];

        v21 = v7 < v20;
        v8 = v19;
        v22 = !v21;
        ++v15;
        ++v11;
        if ((((v104 < v106) ^ v22) & 1) == 0)
        {
          v6 = v15 - 1;
          break;
        }
      }

      v9 = v99;
      v5 = v101;
      v23 = v97;
      if (v104 < v106)
      {
        if (v6 < v99)
        {
          goto LABEL_119;
        }

        if (v99 < v6)
        {
          v24 = 8 * v6 - 8;
          v25 = v6;
          v26 = v99;
          do
          {
            if (v26 != --v25)
            {
              v28 = *a3;
              if (!*a3)
              {
                goto LABEL_125;
              }

              v27 = *(v28 + v23);
              *(v28 + v23) = *(v28 + v24);
              *(v28 + v24) = v27;
            }

            ++v26;
            v24 -= 8;
            v23 += 8;
          }

          while (v26 < v25);
        }
      }

      v7 = v6;
    }

    v29 = a3[1];
    if (v7 < v29)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        v30 = v9 + a4;
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v30 >= v29)
        {
          v30 = a3[1];
        }

        if (v30 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v30)
        {
          break;
        }
      }
    }

LABEL_39:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
    }

    v45 = *(v8 + 2);
    v44 = *(v8 + 3);
    v46 = v45 + 1;
    if (v45 >= v44 >> 1)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v44 > 1), v45 + 1, 1, v8);
    }

    *(v8 + 2) = v46;
    v47 = &v8[16 * v45];
    *(v47 + 4) = v9;
    *(v47 + 5) = v7;
    v48 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if (v45)
    {
      while (1)
      {
        v49 = v46 - 1;
        if (v46 >= 4)
        {
          break;
        }

        if (v46 == 3)
        {
          v50 = *(v8 + 4);
          v51 = *(v8 + 5);
          v60 = __OFSUB__(v51, v50);
          v52 = v51 - v50;
          v53 = v60;
LABEL_59:
          if (v53)
          {
            goto LABEL_106;
          }

          v66 = &v8[16 * v46];
          v68 = *v66;
          v67 = *(v66 + 1);
          v69 = __OFSUB__(v67, v68);
          v70 = v67 - v68;
          v71 = v69;
          if (v69)
          {
            goto LABEL_109;
          }

          v72 = &v8[16 * v49 + 32];
          v74 = *v72;
          v73 = *(v72 + 1);
          v60 = __OFSUB__(v73, v74);
          v75 = v73 - v74;
          if (v60)
          {
            goto LABEL_112;
          }

          if (__OFADD__(v70, v75))
          {
            goto LABEL_113;
          }

          if (v70 + v75 >= v52)
          {
            if (v52 < v75)
            {
              v49 = v46 - 2;
            }

            goto LABEL_80;
          }

          goto LABEL_73;
        }

        v76 = &v8[16 * v46];
        v78 = *v76;
        v77 = *(v76 + 1);
        v60 = __OFSUB__(v77, v78);
        v70 = v77 - v78;
        v71 = v60;
LABEL_73:
        if (v71)
        {
          goto LABEL_108;
        }

        v79 = &v8[16 * v49];
        v81 = *(v79 + 4);
        v80 = *(v79 + 5);
        v60 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v60)
        {
          goto LABEL_111;
        }

        if (v82 < v70)
        {
          goto LABEL_3;
        }

LABEL_80:
        v87 = v49 - 1;
        if (v49 - 1 >= v46)
        {
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v88 = *&v8[16 * v87 + 32];
        v89 = *&v8[16 * v49 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 8 * v88), (*a3 + 8 * *&v8[16 * v49 + 32]), (*a3 + 8 * v89), v48);
        if (v5)
        {
          goto LABEL_100;
        }

        if (v89 < v88)
        {
          goto LABEL_102;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
        }

        if (v87 >= *(v8 + 2))
        {
          goto LABEL_103;
        }

        v90 = &v8[16 * v87];
        *(v90 + 4) = v88;
        *(v90 + 5) = v89;
        specialized Array.remove(at:)(v49);
        v46 = *(v8 + 2);
        if (v46 <= 1)
        {
          goto LABEL_3;
        }
      }

      v54 = &v8[16 * v46 + 32];
      v55 = *(v54 - 64);
      v56 = *(v54 - 56);
      v60 = __OFSUB__(v56, v55);
      v57 = v56 - v55;
      if (v60)
      {
        goto LABEL_104;
      }

      v59 = *(v54 - 48);
      v58 = *(v54 - 40);
      v60 = __OFSUB__(v58, v59);
      v52 = v58 - v59;
      v53 = v60;
      if (v60)
      {
        goto LABEL_105;
      }

      v61 = &v8[16 * v46];
      v63 = *v61;
      v62 = *(v61 + 1);
      v60 = __OFSUB__(v62, v63);
      v64 = v62 - v63;
      if (v60)
      {
        goto LABEL_107;
      }

      v60 = __OFADD__(v52, v64);
      v65 = v52 + v64;
      if (v60)
      {
        goto LABEL_110;
      }

      if (v65 >= v57)
      {
        v83 = &v8[16 * v49 + 32];
        v85 = *v83;
        v84 = *(v83 + 1);
        v60 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v60)
        {
          goto LABEL_114;
        }

        if (v52 < v86)
        {
          v49 = v46 - 2;
        }

        goto LABEL_80;
      }

      goto LABEL_59;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_90;
    }
  }

  v98 = v8;
  v100 = v9;
  v102 = v5;
  v31 = *a3;
  v32 = *a3 + 8 * v7 - 8;
  v33 = v9 - v7;
  v105 = v30;
LABEL_32:
  v107 = v7;
  v34 = *(v31 + 8 * v7);
  v35 = v33;
  v36 = v32;
  while (1)
  {
    v37 = *v36;
    v38 = v34;
    v39 = v37;
    v40 = [v38 proximity];
    v41 = [v39 proximity];

    if (v41 >= v40)
    {
LABEL_31:
      v7 = (v107 + 1);
      v32 += 8;
      --v33;
      if ((v107 + 1) != v105)
      {
        goto LABEL_32;
      }

      v7 = v105;
      v9 = v100;
      v5 = v102;
      v8 = v98;
      goto LABEL_39;
    }

    if (!v31)
    {
      break;
    }

    v42 = *v36;
    v34 = *(v36 + 8);
    *v36 = v34;
    *(v36 + 8) = v42;
    v36 -= 8;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_31;
    }
  }

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
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(void **__dst, void **a2, id *a3, void **__src)
{
  v4 = a3;
  v5 = __dst;
  v6 = a2 - __dst;
  v7 = a2 - __dst + 7;
  if (a2 - __dst >= 0)
  {
    v7 = a2 - __dst;
  }

  v8 = v7 >> 3;
  v9 = a3 - a2;
  v10 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v10 = a3 - a2;
  }

  v11 = v10 >> 3;
  if (v8 >= v10 >> 3)
  {
    if (__src != a2 || &a2[v11] <= __src)
    {
      v23 = a2;
      v24 = __src;
      memmove(__src, a2, 8 * v11);
      __src = v24;
      a2 = v23;
    }

    v41 = __src;
    v14 = &__src[v11];
    if (v9 < 8)
    {
      v13 = __src;
    }

    else
    {
      v13 = __src;
      if (a2 > v5)
      {
        v38 = v5;
LABEL_27:
        v39 = a2;
        v25 = a2 - 1;
        --v4;
        v26 = v14;
        do
        {
          v27 = v14;
          v28 = v4 + 1;
          v29 = *(v26 - 1);
          v26 -= 8;
          v30 = v25;
          v31 = *v25;
          v32 = v29;
          v33 = v31;
          v34 = [v32 proximity];
          v35 = [v33 proximity];

          if (v35 < v34)
          {
            if (v28 != v39)
            {
              *v4 = *v30;
            }

            v13 = v41;
            v14 = v27;
            if (v27 <= v41 || (a2 = v30, v30 <= v38))
            {
              a2 = v30;
              goto LABEL_40;
            }

            goto LABEL_27;
          }

          if (v28 != v27)
          {
            *v4 = *v26;
          }

          --v4;
          v14 = v26;
          v13 = v41;
          v25 = v30;
        }

        while (v26 > v41);
        v14 = v26;
        a2 = v39;
      }
    }
  }

  else
  {
    v12 = a2;
    v13 = __src;
    if (__src != __dst || &__dst[v8] <= __src)
    {
      memmove(__src, __dst, 8 * v8);
    }

    v14 = &v13[v8];
    if (v6 < 8)
    {
      a2 = v5;
    }

    else
    {
      v40 = &v13[v8];
      if (v12 < v4)
      {
        v15 = v12;
        while (1)
        {
          v16 = *v13;
          v17 = *v15;
          v18 = v16;
          v19 = [v17 proximity];
          v20 = [v18 proximity];

          if (v20 >= v19)
          {
            break;
          }

          v21 = v15;
          v22 = v5 == v15++;
          if (!v22)
          {
            goto LABEL_17;
          }

LABEL_18:
          ++v5;
          if (v13 >= v40 || v15 >= v4)
          {
            goto LABEL_20;
          }
        }

        v21 = v13;
        v22 = v5 == v13++;
        if (v22)
        {
          goto LABEL_18;
        }

LABEL_17:
        *v5 = *v21;
        goto LABEL_18;
      }

LABEL_20:
      a2 = v5;
      v14 = v40;
    }
  }

LABEL_40:
  v36 = v14 - v13 + (v14 - v13 < 0 ? 7uLL : 0);
  if (a2 != v13 || a2 >= (v13 + (v36 & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(a2, v13, 8 * (v36 >> 3));
  }

  return 1;
}

uint64_t specialized Array._copyContents(initializing:)(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = __CocoaSet.count.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = __CocoaSet.count.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type [UsoEntity] and conformance [A]();
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12SiriOntology9UsoEntityCGMd, &_sSay12SiriOntology9UsoEntityCGMR);
            v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for UsoEntity();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void specialized DeviceContextHelper.registerTransfomers()()
{
  if (one-time initialization token for sharedInstance != -1)
  {
    swift_once();
  }

  v0 = static GenericContextTransformer.sharedInstance;
  v1 = [objc_opt_self() defaultService];
  v2 = v1;
  if (one-time initialization token for legacyNLContextKey != -1)
  {
    swift_once();
    v1 = v2;
  }

  [v1 registerContextTransformer:v0 forType:static DeviceContextHelper.legacyNLContextKey];
  if (one-time initialization token for onDeviceConversationKey != -1)
  {
    swift_once();
  }

  [v2 registerContextTransformer:v0 forType:static DeviceContextHelper.onDeviceConversationKey];
  if (one-time initialization token for serverBoundContextUpdate != -1)
  {
    swift_once();
  }

  [v2 registerContextTransformer:v0 forType:static DeviceContextHelper.serverBoundContextUpdate];
}

unint64_t lazy protocol witness table accessor for type HALFeatureFlags and conformance HALFeatureFlags()
{
  result = lazy protocol witness table cache variable for type HALFeatureFlags and conformance HALFeatureFlags;
  if (!lazy protocol witness table cache variable for type HALFeatureFlags and conformance HALFeatureFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HALFeatureFlags and conformance HALFeatureFlags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HALFeatureFlags and conformance HALFeatureFlags;
  if (!lazy protocol witness table cache variable for type HALFeatureFlags and conformance HALFeatureFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HALFeatureFlags and conformance HALFeatureFlags);
  }

  return result;
}

uint64_t partial apply for closure #1 in DeviceContextHelper.donateContextToCollector(_:_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return closure #1 in DeviceContextHelper.donateContextToCollector(_:_:)(a1, v4, v5, v6, v7, v8, v9, v10);
}

void specialized DeviceContextHelper.donateDataWithContext(_:_:_:)(void *a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v44 = a4;
  v45 = a3;
  v48 = a1;
  v5 = type metadata accessor for Date();
  v42 = *(v5 - 8);
  v43 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v42 - v9;
  Date.init()();
  v51 = v10;
  v52 = v7;
  Date.addingTimeInterval(_:)();
  v11 = a2 + 64;
  v12 = 1 << *(a2 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a2 + 64);
  v15 = (v12 + 63) >> 6;
  v49 = 0x80000001DCA7A5F0;
  v50 = 0x80000001DCA7A620;
  v53 = a2;

  v16 = 0;
  *&v17 = 136315138;
  v46 = v17;
  while (v14)
  {
    while (1)
    {
LABEL_10:
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
      v20 = v19 | (v16 << 6);
      v21 = *(*(v53 + 48) + v20);
      v22 = *(*(v53 + 56) + 8 * v20);
      v23 = 0x4C4E79636167656CLL;
      if (v21 != 1)
      {
        v23 = 0xD00000000000001ALL;
      }

      v24 = 0xEF747865746E6F43;
      if (v21 != 1)
      {
        v24 = v50;
      }

      if (v21)
      {
        v25 = v23;
      }

      else
      {
        v25 = 0xD000000000000019;
      }

      if (v21)
      {
        v26 = v24;
      }

      else
      {
        v26 = v49;
      }

      swift_unknownObjectRetain();
      v27 = MEMORY[0x1E12A1410](v25, v26);

      v28 = objc_allocWithZone(MEMORY[0x1E698D108]);
      isa = Date._bridgeToObjectiveC()().super.isa;
      v30 = Date._bridgeToObjectiveC()().super.isa;
      v31 = [v28 initWithType:v27 deliveryDate:isa expirationDate:v30 redactedKeyPaths:0 historyConfiguration:0];

      v54 = v22;
      [v48 donateContext:v22 withMetadata:v31 pushToRemote:1];
      if (one-time initialization token for conversationBridge != -1)
      {
        swift_once();
      }

      v32 = type metadata accessor for Logger();
      __swift_project_value_buffer(v32, static Logger.conversationBridge);
      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v33, v34))
      {
        break;
      }

      swift_unknownObjectRelease();
      if (!v14)
      {
        goto LABEL_6;
      }
    }

    v47 = v31;
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v55 = v36;
    *v35 = v46;
    if (v21)
    {
      v37 = 0x4C4E79636167656CLL;
      v38 = 0xEF747865746E6F43;
      if (v21 != 1)
      {
        v37 = 0xD00000000000001ALL;
        v38 = v50;
      }
    }

    else
    {
      v37 = 0xD000000000000019;
      v38 = v49;
    }

    v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v38, &v55);

    *(v35 + 4) = v39;
    _os_log_impl(&dword_1DC659000, v33, v34, "Syncing the contextType=%s to ContextCollector", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v36);
    MEMORY[0x1E12A2F50](v36, -1, -1);
    MEMORY[0x1E12A2F50](v35, -1, -1);

    swift_unknownObjectRelease();
  }

LABEL_6:
  while (1)
  {
    v18 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v18 >= v15)
    {

      v45(1);
      v40 = v43;
      v41 = *(v42 + 8);
      v41(v52, v43);
      v41(v51, v40);
      return;
    }

    v14 = *(v11 + 8 * v18);
    ++v16;
    if (v14)
    {
      v16 = v18;
      goto LABEL_10;
    }
  }

  __break(1u);
}

uint64_t specialized DeviceContextHelper.fetchContextFromCollector(from:_:_:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v9 = v8;
  *(v8 + 16) = MEMORY[0x1E69E7CC8];
  v10 = *(a2 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  if (v10)
  {
    v31 = a1;
    v32 = v8;
    aBlock[0] = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10, 0);
    v11 = aBlock[0];
    v30 = a2;
    v12 = (a2 + 32);
    v13 = 0xEF747865746E6F43;
    do
    {
      v15 = *v12++;
      v14 = v15;
      v16 = v15 == 1;
      if (v15 == 1)
      {
        v17 = 0x4C4E79636167656CLL;
      }

      else
      {
        v17 = 0xD00000000000001ALL;
      }

      if (v16)
      {
        v18 = v13;
      }

      else
      {
        v18 = 0x80000001DCA7A620;
      }

      if (v14)
      {
        v19 = v17;
      }

      else
      {
        v19 = 0xD000000000000019;
      }

      if (v14)
      {
        v20 = v18;
      }

      else
      {
        v20 = 0x80000001DCA7A5F0;
      }

      aBlock[0] = v11;
      v22 = *(v11 + 16);
      v21 = *(v11 + 24);
      if (v22 >= v21 >> 1)
      {
        v24 = v13;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1);
        v13 = v24;
        v11 = aBlock[0];
      }

      *(v11 + 16) = v22 + 1;
      v23 = v11 + 16 * v22;
      *(v23 + 32) = v19;
      *(v23 + 40) = v20;
      --v10;
    }

    while (v10);
    a1 = v31;
    v9 = v32;
    a2 = v30;
  }

  _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v11);

  v25 = swift_allocObject();
  v25[2] = a3;
  v25[3] = a4;
  v25[4] = v9;
  v25[5] = a2;
  v26 = [a1 respondsToSelector_];

  if (v26)
  {

    isa = Set._bridgeToObjectiveC()().super.isa;
    aBlock[4] = partial apply for closure #2 in DeviceContextHelper.fetchContextFromCollector(from:_:_:);
    aBlock[5] = v25;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [AFServiceDeviceContext]?) -> ();
    aBlock[3] = &block_descriptor_9;
    v28 = _Block_copy(aBlock);

    [a1 fetchContextsForKeys:isa includesNearbyDevices:1 completion:v28];
    _Block_release(v28);
  }

  else
  {
  }
}

unint64_t lazy protocol witness table accessor for type [UsoEntity] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [UsoEntity] and conformance [A];
  if (!lazy protocol witness table cache variable for type [UsoEntity] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay12SiriOntology9UsoEntityCGMd, &_sSay12SiriOntology9UsoEntityCGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [UsoEntity] and conformance [A]);
  }

  return result;
}

id specialized static DialogMetricsLogger.getSparseDialog(_:)(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = objc_allocWithZone(MEMORY[0x1E69C77A0]);
  v3 = a1;
  v4 = [v2 init];
  [v4 setCanUseServerTTS_];
  v5 = [v3 caption];
  if (v5)
  {
    v6 = objc_allocWithZone(MEMORY[0x1E69C77B0]);
    v7 = v5;
    v5 = [v6 init];
    v8 = [v7 speakableTextOverride];
    [v5 setSpeakableTextOverride_];

    v9 = [v7 text];
    [v5 setText_];
  }

  [v4 setCaption_];

  v10 = [v3 configuration];
  if (v10)
  {
    v11 = objc_allocWithZone(MEMORY[0x1E69C77A8]);
    v12 = v10;
    v10 = [v11 init];
    v13 = [v12 gender];
    [v10 setGender_];

    v14 = [v12 languageCode];
    [v10 setLanguageCode_];
  }

  [v4 setConfiguration_];

  v15 = [v3 content];
  if (v15)
  {
    v16 = objc_allocWithZone(MEMORY[0x1E69C77B0]);
    v17 = v15;
    v15 = [v16 init];
    v18 = [v17 speakableTextOverride];
    [v15 &selRef_userClassified + 7];

    v19 = [v17 &selRef_setUserSessionState_];
    [v15 &selRef:v19 setUserSessionState:?];
  }

  [v4 setContent_];

  v20 = [v3 dialogIdentifier];
  [v4 setDialogIdentifier_];

  [v4 setPrintedOnly_];
  [v4 setSpokenOnly_];

  return v4;
}

id specialized static DialogMetricsLogger.getSparseAddDialog(addDialog:)(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E69C7AF0]) init];
  result = [a1 dialogs];
  if (!result)
  {
    goto LABEL_16;
  }

  v4 = result;
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SADialog, 0x1E69C77A0);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v5 >> 62)
  {
    v6 = __CocoaSet.count.getter();
    if (v6)
    {
      goto LABEL_4;
    }

LABEL_14:

    isa = Array._bridgeToObjectiveC()().super.isa;

    [v2 setDialogs_];

    v11 = [a1 listenAfterSpeaking];
    [v2 setListenAfterSpeaking_];

    v12 = [a1 listenAfterSpeakingBehavior];
    [v2 setListenAfterSpeakingBehavior_];

    return v2;
  }

  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v6)
  {
    goto LABEL_14;
  }

LABEL_4:
  result = specialized ContiguousArray.reserveCapacity(_:)();
  if ((v6 & 0x8000000000000000) == 0)
  {
    v7 = 0;
    do
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1E12A1FE0](v7, v5);
      }

      else
      {
        v8 = *(v5 + 8 * v7 + 32);
      }

      v9 = v8;
      if (!specialized static DialogMetricsLogger.getSparseDialog(_:)(v8))
      {
        [objc_allocWithZone(MEMORY[0x1E69C77A0]) init];
      }

      ++v7;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v6 != v7);
    goto LABEL_14;
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t specialized static DialogMetricsLogger.logAnalytics(dialog:)(void *a1)
{
  v2 = type metadata accessor for OSSignpostID();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v6 = static Log.executor;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  if (one-time initialization token for instrumentation != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Logger.instrumentation);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_1DC659000, v8, v9, "Logging Dialog to AFAnalytics", v10, 2u);
    MEMORY[0x1E12A2F50](v10, -1, -1);
  }

  v11 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v25 = v11;
  v12 = specialized static DialogMetricsLogger.getSparseAddDialog(addDialog:)(a1);
  v13 = [v12 dictionary];
  if (v13)
  {
    v14 = v13;
    v24 = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSMutableDictionary, 0x1E695DF90);
    *&v23 = v14;
    outlined init with take of Any(&v23, v22);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = v11;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v22, 0x6C46746E65696C43, 0xEE0077656956776FLL, isUniquelyReferenced_nonNull_native);
    v16 = v21;
    v25 = v21;
  }

  else
  {
    specialized Dictionary._Variant.removeValue(forKey:)(0x6C46746E65696C43, 0xEE0077656956776FLL, &v23);
    outlined destroy of Any?(&v23);
    v16 = v25;
  }

  v17 = [objc_opt_self() sharedAnalytics];
  if (v17)
  {
    v18 = v17;
    specialized _dictionaryUpCast<A, B, C, D>(_:)(v16);

    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v18 logEventWithType:3700 context:isa];
  }

  else
  {
  }

  static os_signpost_type_t.end.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  return (*(v3 + 8))(v5, v2);
}

SiriKitRuntime::EmergencyAffinityScorer __swiftcall EmergencyAffinityScorer.init()()
{
  v0 = 0x80000001DCA7CAA0;
  v1 = 0xD000000000000022;
  result.bundleIdentifier._object = v0;
  result.bundleIdentifier._countAndFlagsBits = v1;
  return result;
}

uint64_t specialized EmergencyAffinityScorer.score(input:environment:)()
{
  v148 = type metadata accessor for Google_Protobuf_StringValue();
  v133 = *(v148 - 8);
  MEMORY[0x1EEE9AC00](v148);
  v134 = &v128 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v1);
  v143 = &v128 - v2;
  v151 = type metadata accessor for Siri_Nlu_External_UsoEntityIdentifier();
  v149 = *(v151 - 8);
  MEMORY[0x1EEE9AC00](v151);
  v135 = &v128 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v150 = &v128 - v5;
  v6 = type metadata accessor for Siri_Nlu_External_UserStatedTask();
  v138 = *(v6 - 8);
  v139 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v137 = &v128 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v128 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Siri_Nlu_External_UserParse();
  v146 = *(v12 - 8);
  v147 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v145 = (&v128 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v144 = &v128 - v15;
  v16 = type metadata accessor for Siri_Nlu_External_UsoGraph();
  v17 = *(v16 - 8);
  v141 = v16;
  v142 = v17;
  MEMORY[0x1EEE9AC00](v16);
  v136 = &v128 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v140 = &v128 - v20;
  v21 = type metadata accessor for USOParse();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v128 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for Parse();
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v128 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  Input.parse.getter();
  if ((*(v26 + 88))(v28, v25) != *MEMORY[0x1E69D0168])
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v40 = type metadata accessor for Logger();
    __swift_project_value_buffer(v40, static Logger.executor);
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_1DC659000, v41, v42, "EmergencyAffinityScorer Got unexpected parse", v43, 2u);
      MEMORY[0x1E12A2F50](v43, -1, -1);
    }

    (*(v26 + 8))(v28, v25);
    return 2;
  }

  (*(v26 + 96))(v28, v25);
  v22[4](v24, v28, v21);
  v29 = specialized static AffinityScorerUtils.getTask(_:)();
  v30 = v22;
  if (!v29)
  {
    if (one-time initialization token for executor != -1)
    {
LABEL_86:
      swift_once();
    }

    v46 = type metadata accessor for Logger();
    __swift_project_value_buffer(v46, static Logger.executor);
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_1DC659000, v47, v48, "EmergencyAffinityScorer Could not extract usoTask from parse", v49, 2u);
      MEMORY[0x1E12A2F50](v49, -1, -1);

      (v30[1])(v24, v21);
      return 2;
    }

    (v30[1])(v24, v21);
    return 2;
  }

  v132 = v29;
  v129 = v21;
  v130 = v22;
  v31 = v145;
  v131 = v24;
  v32 = USOParse.userParse.getter();
  v33 = v31;
  v34 = MEMORY[0x1E129C0F0](v32);
  (*(v146 + 8))(v31, v147);
  v35 = *(v34 + 16);
  if (v35)
  {
    v21 = 0;
    v36 = (v9 + 16);
    v37 = (v9 + 8);
    while (v21 < *(v34 + 16))
    {
      (*(v9 + 16))(v11, v34 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v21, v8);
      v33 = v11;
      if (Siri_Nlu_External_UserDialogAct.hasUserStatedTask.getter())
      {

        v39 = v144;
        (*(v9 + 32))(v144, v11, v8);
        v38 = 0;
        goto LABEL_20;
      }

      ++v21;
      (*v37)(v11, v8);
      if (v35 == v21)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_84:

    (v30[1])(v8, v37);
LABEL_36:
    (*(v11 + 1))(v36, v21);
    return 2;
  }

LABEL_8:

  v38 = 1;
  v39 = v144;
LABEL_20:
  (*(v9 + 56))(v39, v38, 1, v8);
  if ((*(v9 + 48))(v39, 1, v8) == 1)
  {
    outlined destroy of Siri_Nlu_External_UserDialogAct?(v39);
    v11 = v130;
    v21 = v129;
    v36 = v131;
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v50 = type metadata accessor for Logger();
    __swift_project_value_buffer(v50, static Logger.executor);
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&dword_1DC659000, v51, v52, "EmergencyAffinityScorer Could not extract userStatedTask", v53, 2u);
      MEMORY[0x1E12A2F50](v53, -1, -1);

      (*(v11 + 1))(v36, v21);
      return 2;
    }

    goto LABEL_36;
  }

  v54 = v137;
  Siri_Nlu_External_UserDialogAct.userStatedTask.getter();
  (*(v9 + 8))(v39, v8);
  v55 = v136;
  Siri_Nlu_External_UserStatedTask.task.getter();
  (*(v138 + 8))(v54, v139);
  v57 = v141;
  v56 = v142;
  v8 = v140;
  v142[4](v140, v55, v141);
  if (UsoTask.baseEntityAsString.getter() != 0xD000000000000014 || 0x80000001DCA82520 != v58)
  {
    v60 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v59 = v131;
    if (v60)
    {
      goto LABEL_30;
    }

    if (UsoTask.baseEntityAsString.getter() == 0x535F6E6F6D6D6F63 && v68 == 0xEE00676E69747465)
    {
    }

    else
    {
      v69 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v69 & 1) == 0)
      {
        if (UsoTask.baseEntityAsString.getter() == 0x505F6E6F6D6D6F63 && v100 == 0xED00006E6F737265)
        {
        }

        else
        {
          v101 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v101 & 1) == 0)
          {
            if (one-time initialization token for executor != -1)
            {
              swift_once();
            }

            v124 = type metadata accessor for Logger();
            __swift_project_value_buffer(v124, static Logger.executor);
            v33 = Logger.logObject.getter();
            v125 = static os_log_type_t.debug.getter();
            v126 = os_log_type_enabled(v33, v125);
            v11 = v130;
            v21 = v129;
            v36 = v131;
            v37 = v141;
            v30 = v142;
            if (v126)
            {
              v44 = 2;
              v127 = swift_slowAlloc();
              *v127 = 0;
              _os_log_impl(&dword_1DC659000, v33, v125, "EmergencyAffinityScorer Didn't detect any supported entities", v127, 2u);
              MEMORY[0x1E12A2F50](v127, -1, -1);

              (v30[1])(v8, v37);
              (*(v11 + 1))(v36, v21);
              return v44;
            }

            goto LABEL_84;
          }
        }

        v102 = UsoTask.verbString.getter();
        v72 = v103;
        v152[0] = v102;
        v152[1] = v103;
        MEMORY[0x1EEE9AC00](v102);
        *(&v128 - 2) = v152;
        LODWORD(v150) = specialized Sequence.contains(where:)(_sSTsSQ7ElementRpzrlE8containsySbABFSbABXEfU_SaySSG_TG5TA_0, (&v128 - 4), &outlined read-only object #0 of EmergencyAffinityScorer.score(input:environment:));
        swift_arrayDestroy();

        v104 = Siri_Nlu_External_UsoGraph.identifiers.getter();
        v105 = 0;
        v106 = *(v104 + 16);
        v107 = (v133 + 8);
        v108 = (v149 + 8);
        while (1)
        {
          if (v106 == v105)
          {

            goto LABEL_75;
          }

          if (v105 >= *(v104 + 16))
          {
            __break(1u);
LABEL_88:
            swift_once();
LABEL_49:
            v78 = type metadata accessor for Logger();
            __swift_project_value_buffer(v78, static Logger.executor);
            v79 = Logger.logObject.getter();
            v80 = static os_log_type_t.debug.getter();
            v81 = os_log_type_enabled(v79, v80);
            v82 = v130;
            v83 = v131;
            v85 = v141;
            v84 = v142;
            v86 = v140;
            if (v81)
            {
              v87 = swift_slowAlloc();
              v88 = swift_slowAlloc();
              v152[0] = v88;
              *v87 = 136315138;
              *(v87 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000012, v72, v152);
              _os_log_impl(&dword_1DC659000, v79, v80, "EmergencyAffinityScorer Detected supported identifier: %s", v87, 0xCu);
              __swift_destroy_boxed_opaque_existential_1Tm(v88);
              MEMORY[0x1E12A2F50](v88, -1, -1);
              MEMORY[0x1E12A2F50](v87, -1, -1);
            }

            (v84[1])(v86, v85);
            (*(v82 + 1))(v83, v129);
            return 3;
          }

          (*(v149 + 16))(v135, v104 + ((*(v149 + 80) + 32) & ~*(v149 + 80)) + *(v149 + 72) * v105, v151);
          v72 = v134;
          Siri_Nlu_External_UsoEntityIdentifier.namespace.getter();
          v110 = Google_Protobuf_StringValue.value.getter();
          v112 = v111;
          (*v107)(v72, v148);
          if (v110 == 0xD000000000000015 && 0x80000001DCA7ABA0 == v112)
          {
            break;
          }

          ++v105;
          v109 = _stringCompareWithSmolCheck(_:_:expecting:)();

          (*v108)(v135, v151);
          if (v109)
          {
            goto LABEL_68;
          }
        }

        (*v108)(v135, v151);
LABEL_68:

        if (v150)
        {
          v113 = v131;
          v115 = v141;
          v114 = v142;
          v116 = v140;
          if (one-time initialization token for executor != -1)
          {
            swift_once();
          }

          v117 = type metadata accessor for Logger();
          __swift_project_value_buffer(v117, static Logger.executor);
          v118 = Logger.logObject.getter();
          v119 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v118, v119))
          {
            v120 = swift_slowAlloc();
            v121 = swift_slowAlloc();
            v152[0] = v121;
            *v120 = 136315138;
            *(v120 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, 0x80000001DCA7ABA0, v152);
            _os_log_impl(&dword_1DC659000, v118, v119, "EmergencyAffinityScorer Detected supported identifier: %s", v120, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v121);
            MEMORY[0x1E12A2F50](v121, -1, -1);
            MEMORY[0x1E12A2F50](v120, -1, -1);
          }

          (v114[1])(v116, v115);
          (*(v130 + 1))(v113, v129);
          return 3;
        }

LABEL_75:
        v95 = v131;
        v97 = v141;
        v96 = v142;
        v98 = v140;
        if (one-time initialization token for executor != -1)
        {
          swift_once();
        }

        v122 = type metadata accessor for Logger();
        __swift_project_value_buffer(v122, static Logger.executor);
        v90 = Logger.logObject.getter();
        v91 = static os_log_type_t.debug.getter();
        v123 = os_log_type_enabled(v90, v91);
        v93 = v130;
        v94 = v129;
        if (v123)
        {
          goto LABEL_55;
        }

LABEL_56:

        (v96[1])(v98, v97);
        (*(v93 + 1))(v95, v94);
        return 0;
      }
    }

    v70 = Siri_Nlu_External_UsoGraph.identifiers.getter();
    v71 = 0;
    v30 = *(v70 + 16);
    v72 = 0x80000001DCA82500;
    v73 = (v133 + 8);
    v24 = (v149 + 8);
    while (v30 != v71)
    {
      if (v71 >= *(v70 + 16))
      {
        __break(1u);
        goto LABEL_86;
      }

      (*(v149 + 16))(v150, v70 + ((*(v149 + 80) + 32) & ~*(v149 + 80)) + *(v149 + 72) * v71, v151);
      v21 = v143;
      Siri_Nlu_External_UsoEntityIdentifier.namespace.getter();
      v75 = Google_Protobuf_StringValue.value.getter();
      v77 = v76;
      (*v73)(v21, v148);
      if (v75 == 0xD000000000000012 && 0x80000001DCA82500 == v77)
      {

        (*v24)(v150, v151);
LABEL_48:

        if (one-time initialization token for executor != -1)
        {
          goto LABEL_88;
        }

        goto LABEL_49;
      }

      ++v71;
      v74 = _stringCompareWithSmolCheck(_:_:expecting:)();

      (*v24)(v150, v151);
      if (v74)
      {
        goto LABEL_48;
      }
    }

    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v89 = type metadata accessor for Logger();
    __swift_project_value_buffer(v89, static Logger.executor);
    v90 = Logger.logObject.getter();
    v91 = static os_log_type_t.debug.getter();
    v92 = os_log_type_enabled(v90, v91);
    v93 = v130;
    v94 = v129;
    v95 = v131;
    v97 = v141;
    v96 = v142;
    v98 = v140;
    if (!v92)
    {
      goto LABEL_56;
    }

LABEL_55:
    v99 = swift_slowAlloc();
    *v99 = 0;
    _os_log_impl(&dword_1DC659000, v90, v91, "EmergencyAffinityScorer No matching identifiers found", v99, 2u);
    MEMORY[0x1E12A2F50](v99, -1, -1);
    goto LABEL_56;
  }

  v59 = v131;
LABEL_30:
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v61 = type metadata accessor for Logger();
  __swift_project_value_buffer(v61, static Logger.executor);
  v62 = Logger.logObject.getter();
  v63 = static os_log_type_t.debug.getter();
  v64 = os_log_type_enabled(v62, v63);
  v65 = v130;
  v66 = v129;
  if (v64)
  {
    v67 = swift_slowAlloc();
    *v67 = 0;
    _os_log_impl(&dword_1DC659000, v62, v63, "EmergencyAffinityScorer Detected common_CrisisSupport entity", v67, 2u);
    MEMORY[0x1E12A2F50](v67, -1, -1);
  }

  (v56[1])(v8, v57);
  (*(v65 + 1))(v59, v66);
  return 3;
}

uint64_t outlined destroy of Siri_Nlu_External_UserDialogAct?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t EmergencyCallMitigatorOverride.overrideType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = *(v1 + 16);
  return result;
}

uint64_t EmergencyCallMitigatorOverride.overrideType.setter(char *a1)
{
  v2 = *a1;
  result = swift_beginAccess();
  *(v1 + 16) = v2;
  return result;
}

uint64_t EmergencyCallMitigatorOverride.__allocating_init(topRankedParse:)(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = 1;
  outlined init with take of Siri_Nlu_External_UserParse?(a1, v2 + OBJC_IVAR____TtC14SiriKitRuntime30EmergencyCallMitigatorOverride_topRankedParse);
  return v2;
}

uint64_t EmergencyCallMitigatorOverride.init(topRankedParse:)(uint64_t a1)
{
  *(v1 + 16) = 1;
  outlined init with take of Siri_Nlu_External_UserParse?(a1, v1 + OBJC_IVAR____TtC14SiriKitRuntime30EmergencyCallMitigatorOverride_topRankedParse);
  return v1;
}

SiriKitRuntime::ExecutionOverrideDecision __swiftcall EmergencyCallMitigatorOverride.evaluate()()
{
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v14 - v4;
  v6 = type metadata accessor for Siri_Nlu_External_UserParse();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Siri_Nlu_External_UserParse?(v1 + OBJC_IVAR____TtC14SiriKitRuntime30EmergencyCallMitigatorOverride_topRankedParse, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    result = outlined destroy of Siri_Nlu_External_UserParse?(v5);
    v11 = 11;
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
    specialized static EmergencyCallMitigatorOverride.isEmergencyRequest(userParse:)();
    v13 = v12;
    result = (*(v7 + 8))(v9, v6);
    if (v13)
    {
      v11 = 3;
    }

    else
    {
      v11 = 11;
    }
  }

  *v2 = v11;
  return result;
}

uint64_t outlined destroy of Siri_Nlu_External_UserParse?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t EmergencyCallMitigatorOverride.__deallocating_deinit()
{
  outlined destroy of Siri_Nlu_External_UserParse?(v0 + OBJC_IVAR____TtC14SiriKitRuntime30EmergencyCallMitigatorOverride_topRankedParse);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for ExecutionOverride.evaluate() in conformance EmergencyCallMitigatorOverride()
{
  (*(**v0 + 128))();
  v2 = *(v1 + 8);

  return v2();
}

void specialized static EmergencyCallMitigatorOverride.isEmergencyRequest(userParse:)()
{
  v0 = static ConversionUtils.toLegacyUserParse(from:)();
  if (!v0)
  {
    return;
  }

  v1 = v0;
  v2 = [v0 userDialogActs];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SIRINLUUserDialogAct_pMd, &_sSo20SIRINLUUserDialogAct_pMR);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v3 >> 62)
  {
    goto LABEL_62;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
LABEL_63:

    goto LABEL_64;
  }

LABEL_4:
  v46 = v1;
  v5 = 0;
  v1 = v3 & 0xC000000000000001;
  v47 = v3 & 0xFFFFFFFFFFFFFF8;
  v6 = 0x80000001DCA7AB70;
  v7 = &selRef_setMitigationSource_;
  v8 = &selRef_setMitigationSource_;
  v48 = v3;
  v44 = v3 & 0xC000000000000001;
  v45 = v4;
  while (1)
  {
    if (v1)
    {
      MEMORY[0x1E12A1FE0](v5, v3);
      v9 = __OFADD__(v5++, 1);
      if (v9)
      {
        goto LABEL_61;
      }
    }

    else
    {
      if (v5 >= *(v47 + 16))
      {
        __break(1u);
        return;
      }

      swift_unknownObjectRetain();
      v9 = __OFADD__(v5++, 1);
      if (v9)
      {
        goto LABEL_61;
      }
    }

    objc_opt_self();
    v10 = swift_dynamicCastObjCClass();
    if (!v10)
    {
      goto LABEL_6;
    }

    v11 = [v10 v7[154]];
    v1 = [v11 v8[155]];

    type metadata accessor for USOSerializedIdentifier();
    v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v50 = v12;
    if (!(v12 >> 62))
    {
      v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v3 = 0x1E8647000;
      if (v13)
      {
        break;
      }

      goto LABEL_5;
    }

    v13 = __CocoaSet.count.getter();
    v3 = 0x1E8647000;
    if (v13)
    {
      break;
    }

LABEL_5:

    v3 = v48;
    v1 = v44;
    v4 = v45;
    v7 = &selRef_setMitigationSource_;
    v8 = &selRef_setMitigationSource_;
LABEL_6:
    swift_unknownObjectRelease();
    if (v5 == v4)
    {

LABEL_64:

      return;
    }
  }

  v14 = 0;
  v52 = v12 & 0xFFFFFFFFFFFFFF8;
  v53 = v12 & 0xC000000000000001;
  v51 = v12 + 32;
  v49 = v13;
  while (1)
  {
    if (v53)
    {
      v15 = MEMORY[0x1E12A1FE0](v14, v50);
    }

    else
    {
      if (v14 >= *(v52 + 16))
      {
        goto LABEL_60;
      }

      v15 = *(v51 + 8 * v14);
    }

    v16 = v15;
    v9 = __OFADD__(v14++, 1);
    if (v9)
    {
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      v4 = __CocoaSet.count.getter();
      if (!v4)
      {
        goto LABEL_63;
      }

      goto LABEL_4;
    }

    v17 = [v15 *(v3 + 1248)];
    if (v17)
    {
      v18 = v17;
      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v20;

      if (v19 == 0xD000000000000014 && v6 == v21)
      {
        break;
      }

      v1 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v1)
      {
        goto LABEL_33;
      }
    }

    v23 = [v16 *(v3 + 1248)];
    if (!v23)
    {
      goto LABEL_45;
    }

    v24 = v23;
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;

    if (v25 == 0x6D754E656E6F6870 && v27 == 0xEB00000000726562)
    {
      break;
    }

    v1 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v1)
    {
      goto LABEL_33;
    }

LABEL_45:
    v39 = [v16 *(v3 + 1248)];
    if (v39)
    {
      v40 = v39;
      v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v43 = v42;

      if (v41 == 0xD000000000000015 && 0x80000001DCA7ABA0 == v43)
      {

        goto LABEL_57;
      }

      v1 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v1)
      {

LABEL_57:

        swift_unknownObjectRelease();
        return;
      }
    }

    else
    {
    }

    if (v14 == v13)
    {
      goto LABEL_5;
    }
  }

LABEL_33:
  v28 = v6;
  if (one-time initialization token for emergencyNumberSemanticValueSet != -1)
  {
    swift_once();
  }

  v29 = static USOSerializedIdentifier.emergencyNumberSemanticValueSet;
  v1 = [v16 value];
  v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v32 = v31;

  if (!*(v29 + 16) || (Hasher.init(_seed:)(), String.hash(into:)(), v33 = Hasher._finalize()(), v1 = v29 + 56, v34 = -1 << *(v29 + 32), v35 = v33 & ~v34, ((*(v29 + 56 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35) & 1) == 0))
  {
LABEL_44:

    v6 = v28;
    v3 = &selRef_setMitigationSource_;
    v13 = v49;
    goto LABEL_45;
  }

  v36 = ~v34;
  while (1)
  {
    v37 = (*(v29 + 48) + 16 * v35);
    v38 = *v37 == v30 && v37[1] == v32;
    if (v38 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v35 = (v35 + 1) & v36;
    if (((*(v1 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35) & 1) == 0)
    {
      goto LABEL_44;
    }
  }

  swift_unknownObjectRelease();
}

uint64_t type metadata accessor for EmergencyCallMitigatorOverride(uint64_t a1)
{
  result = type metadata singleton initialization cache for EmergencyCallMitigatorOverride;
  if (!type metadata singleton initialization cache for EmergencyCallMitigatorOverride)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for EmergencyCallMitigatorOverride(uint64_t a1)
{
  type metadata accessor for Siri_Nlu_External_UserParse?(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

unint64_t type metadata accessor for USOSerializedIdentifier()
{
  result = lazy cache variable for type metadata for USOSerializedIdentifier[0];
  if (!lazy cache variable for type metadata for USOSerializedIdentifier[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, lazy cache variable for type metadata for USOSerializedIdentifier);
  }

  return result;
}

uint64_t specialized Set.contains(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t specialized Set.contains(_:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for UserID();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (_s16SiriMessageTypes6UserIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type UserID and conformance UserID, MEMORY[0x1E69D08D0]), v7 = dispatch thunk of Hashable._rawHashValue(seed:)(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      _s16SiriMessageTypes6UserIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type UserID and conformance UserID, MEMORY[0x1E69D08D8]);
      v15 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t static EmergencyRequestUtils.isEmergencyRequest(userDialogAct:)(uint64_t a1)
{
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v2 = result;
    swift_unknownObjectRetain();
    v3 = [v2 task];
    v4 = [v3 identifiers];

    type metadata accessor for USOSerializedIdentifier();
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v46 = v5;
    if (v5 >> 62)
    {
      goto LABEL_46;
    }

    for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
    {
      v7 = 0;
      v8 = v46 & 0xC000000000000001;
      v9 = v46 & 0xFFFFFFFFFFFFFF8;
      v10 = v46 + 32;
      while (1)
      {
        if (v8)
        {
          v11 = MEMORY[0x1E12A1FE0](v7, v46);
        }

        else
        {
          if (v7 >= *(v9 + 16))
          {
            goto LABEL_45;
          }

          v11 = *(v10 + 8 * v7);
        }

        v12 = v11;
        if (__OFADD__(v7++, 1))
        {
          break;
        }

        v14 = [v11 namespaceString];
        if (!v14)
        {
          goto LABEL_17;
        }

        v15 = v14;
        v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v18 = v17;

        if (v16 == 0xD000000000000014 && 0x80000001DCA7AB70 == v18)
        {
          goto LABEL_20;
        }

        v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v20 & 1) == 0)
        {
LABEL_17:
          v21 = [v12 namespaceString];
          if (!v21)
          {
            goto LABEL_33;
          }

          v22 = v21;
          v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v25 = v24;

          if (v23 != 0x6D754E656E6F6870 || v25 != 0xEB00000000726562)
          {
            v45 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v45 & 1) == 0)
            {
              goto LABEL_33;
            }

            goto LABEL_21;
          }

LABEL_20:
        }

LABEL_21:
        v26 = v8;
        v27 = i;
        if (one-time initialization token for emergencyNumberSemanticValueSet != -1)
        {
          swift_once();
        }

        v28 = static USOSerializedIdentifier.emergencyNumberSemanticValueSet;
        v29 = [v12 value];
        v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v32 = v31;

        if (*(v28 + 16))
        {
          Hasher.init(_seed:)();
          String.hash(into:)();
          v33 = Hasher._finalize()();
          v34 = -1 << *(v28 + 32);
          v35 = v33 & ~v34;
          if ((*(v28 + 56 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35))
          {
            v36 = ~v34;
            while (1)
            {
              v37 = (*(v28 + 48) + 16 * v35);
              v38 = *v37 == v30 && v37[1] == v32;
              if (v38 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {
                break;
              }

              v35 = (v35 + 1) & v36;
              if (((*(v28 + 56 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35) & 1) == 0)
              {
                goto LABEL_32;
              }
            }

            swift_unknownObjectRelease();

            return 1;
          }
        }

LABEL_32:

        i = v27;
        v8 = v26;
        v10 = v46 + 32;
        v9 = v46 & 0xFFFFFFFFFFFFFF8;
LABEL_33:
        v39 = [v12 namespaceString];
        if (v39)
        {
          v40 = v39;
          v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v43 = v42;

          if (v41 == 0xD000000000000015 && 0x80000001DCA7ABA0 == v43)
          {

            swift_unknownObjectRelease();

            return 1;
          }

          v44 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v44)
          {

            swift_unknownObjectRelease();
            return 1;
          }
        }

        else
        {
        }

        if (v7 == i)
        {
          goto LABEL_47;
        }
      }

      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      ;
    }

LABEL_47:

    swift_unknownObjectRelease();
    return 0;
  }

  return result;
}

uint64_t USOSerializedIdentifier.isEmergencyRequest.getter()
{
  if (USOSerializedIdentifier.isEmergencyNumber.getter())
  {
    return 1;
  }

  return USOSerializedIdentifier.isEmergencyOrganization.getter();
}

uint64_t USOSerializedIdentifier.isEmergencyNumber.getter()
{
  v1 = [v0 namespaceString];
  if (v1)
  {
    v2 = v1;
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;

    if (v3 == 0xD000000000000014 && 0x80000001DCA7AB70 == v5)
    {
LABEL_14:

      goto LABEL_15;
    }

    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      goto LABEL_15;
    }
  }

  v8 = [v0 namespaceString];
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  if (v10 == 0x6D754E656E6F6870 && v12 == 0xEB00000000726562)
  {
    goto LABEL_14;
  }

  v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v14 & 1) == 0)
  {
    return 0;
  }

LABEL_15:
  if (one-time initialization token for emergencyNumberSemanticValueSet != -1)
  {
    swift_once();
  }

  v16 = static USOSerializedIdentifier.emergencyNumberSemanticValueSet;
  v17 = [v0 value];
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  LOBYTE(v16) = specialized Set.contains(_:)(v18, v20, v16);

  return v16 & 1;
}

uint64_t USOSerializedIdentifier.isEmergencyOrganization.getter()
{
  v1 = [v0 namespaceString];
  if (v1)
  {
    v2 = v1;
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;

    if (v3 == 0xD000000000000015 && 0x80000001DCA7ABA0 == v5)
    {
      v7 = 1;
    }

    else
    {
      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t USOSerializedIdentifier.KnownEmergencyNamespaces.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0xD000000000000014;
  }

  if (a1 == 1)
  {
    return 0x6D754E656E6F6870;
  }

  return 0xD000000000000015;
}

uint64_t *USOSerializedIdentifier.emergencyNumberSemanticValueSet.unsafeMutableAddressor()
{
  if (one-time initialization token for emergencyNumberSemanticValueSet != -1)
  {
    swift_once();
  }

  return &static USOSerializedIdentifier.emergencyNumberSemanticValueSet;
}

BOOL USOSerializedIdentifier.KnownEmergencyIdentifiers.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of USOSerializedIdentifier.KnownEmergencyIdentifiers.init(rawValue:), v2);

  return v3 != 0;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance USOSerializedIdentifier.KnownEmergencyIdentifiers()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance USOSerializedIdentifier.KnownEmergencyIdentifiers(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance USOSerializedIdentifier.KnownEmergencyIdentifiers@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of protocol witness for RawRepresentable.init(rawValue:) in conformance USOSerializedIdentifier.KnownEmergencyIdentifiers, *a1);

  *a2 = v3 != 0;
  return result;
}

uint64_t one-time initialization function for emergencyNumberSemanticValueSet()
{
  v0 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(&outlined read-only object #0 of one-time initialization function for emergencyNumberSemanticValueSet);
  result = swift_arrayDestroy();
  static USOSerializedIdentifier.emergencyNumberSemanticValueSet = v0;
  return result;
}

double static USOSerializedIdentifier.emergencyNumberSemanticValueSet.getter()
{
  if (one-time initialization token for emergencyNumberSemanticValueSet != -1)
  {
    swift_once();
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance USOSerializedIdentifier.KnownEmergencyNamespaces(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xEB00000000726562;
  v3 = 0x6D754E656E6F6870;
  v4 = *a1;
  if (v4 == 1)
  {
    v5 = 0x6D754E656E6F6870;
  }

  else
  {
    v5 = 0xD000000000000015;
  }

  if (v4 == 1)
  {
    v6 = 0xEB00000000726562;
  }

  else
  {
    v6 = 0x80000001DCA7ABA0;
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000014;
  }

  if (v4)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0x80000001DCA7AB70;
  }

  if (*a2 != 1)
  {
    v3 = 0xD000000000000015;
    v2 = 0x80000001DCA7ABA0;
  }

  if (*a2)
  {
    v9 = v3;
  }

  else
  {
    v9 = 0xD000000000000014;
  }

  if (*a2)
  {
    v10 = v2;
  }

  else
  {
    v10 = 0x80000001DCA7AB70;
  }

  if (v7 == v9 && v8 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance USOSerializedIdentifier.KnownEmergencyNamespaces()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance USOSerializedIdentifier.KnownEmergencyNamespaces(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance USOSerializedIdentifier.KnownEmergencyNamespaces(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance USOSerializedIdentifier.KnownEmergencyNamespaces@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized USOSerializedIdentifier.KnownEmergencyNamespaces.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance USOSerializedIdentifier.KnownEmergencyNamespaces(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB00000000726562;
  v4 = 0x6D754E656E6F6870;
  if (v2 != 1)
  {
    v4 = 0xD000000000000015;
    v3 = 0x80000001DCA7ABA0;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xD000000000000014;
  }

  if (v5)
  {
    v3 = 0x80000001DCA7AB70;
  }

  *a1 = v6;
  a1[1] = v3;
}

unint64_t specialized USOSerializedIdentifier.KnownEmergencyNamespaces.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of USOSerializedIdentifier.KnownEmergencyNamespaces.init(rawValue:), v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t lazy protocol witness table accessor for type USOSerializedIdentifier.KnownEmergencyIdentifiers and conformance USOSerializedIdentifier.KnownEmergencyIdentifiers()
{
  result = lazy protocol witness table cache variable for type USOSerializedIdentifier.KnownEmergencyIdentifiers and conformance USOSerializedIdentifier.KnownEmergencyIdentifiers;
  if (!lazy protocol witness table cache variable for type USOSerializedIdentifier.KnownEmergencyIdentifiers and conformance USOSerializedIdentifier.KnownEmergencyIdentifiers)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type USOSerializedIdentifier.KnownEmergencyIdentifiers and conformance USOSerializedIdentifier.KnownEmergencyIdentifiers);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type USOSerializedIdentifier.KnownEmergencyNamespaces and conformance USOSerializedIdentifier.KnownEmergencyNamespaces()
{
  result = lazy protocol witness table cache variable for type USOSerializedIdentifier.KnownEmergencyNamespaces and conformance USOSerializedIdentifier.KnownEmergencyNamespaces;
  if (!lazy protocol witness table cache variable for type USOSerializedIdentifier.KnownEmergencyNamespaces and conformance USOSerializedIdentifier.KnownEmergencyNamespaces)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type USOSerializedIdentifier.KnownEmergencyNamespaces and conformance USOSerializedIdentifier.KnownEmergencyNamespaces);
  }

  return result;
}

uint64_t _s16SiriMessageTypes6UserIDVACSHAAWlTm_0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for UserID();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t EmptyAsrOverride.overrideType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = *(v1 + 16);
  return result;
}

uint64_t EmptyAsrOverride.overrideType.setter(char *a1)
{
  v2 = *a1;
  result = swift_beginAccess();
  *(v1 + 16) = v2;
  return result;
}

uint64_t EmptyAsrOverride.aceInputOrigin.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t EmptyAsrOverride.__allocating_init(endpointMode:aceInputOrigin:isNlEmpty:isFirstRequestInSession:isFlowAwaitingInput:consecutiveEmptyInputs:didPreviouslyFallbackToServer:isSpeechRequest:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, char a6, uint64_t a7, char a8, char a9)
{
  result = swift_allocObject();
  *(result + 16) = 6;
  *(result + 40) = a5;
  *(result + 41) = a6;
  *(result + 24) = a1;
  *(result + 32) = a7;
  *(result + 42) = a8;
  *(result + 44) = a4;
  *(result + 43) = a9;
  *(result + 48) = a2;
  *(result + 56) = a3;
  return result;
}

uint64_t EmptyAsrOverride.init(endpointMode:aceInputOrigin:isNlEmpty:isFirstRequestInSession:isFlowAwaitingInput:consecutiveEmptyInputs:didPreviouslyFallbackToServer:isSpeechRequest:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, char a6, uint64_t a7, char a8, char a9)
{
  *(v9 + 16) = 6;
  *(v9 + 40) = a5;
  *(v9 + 41) = a6;
  *(v9 + 24) = a1;
  *(v9 + 32) = a7;
  *(v9 + 42) = a8;
  *(v9 + 44) = a4;
  *(v9 + 43) = a9;
  *(v9 + 48) = a2;
  *(v9 + 56) = a3;
  return v9;
}

SiriKitRuntime::ExecutionOverrideDecision __swiftcall EmptyAsrOverride.evaluate()()
{
  v2 = v1;
  v38 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v36[-v4];
  v6 = type metadata accessor for InputOrigin();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v36[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v36[-v11];
  v13 = *(v2 + 48);
  v14 = *(v2 + 56);

  InputOrigin.init(aceValue:)();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    outlined destroy of InputOrigin?(v5);
    v37 = 1;
  }

  else
  {
    (*(v7 + 32))(v12, v5, v6);
    (*(v7 + 104))(v9, *MEMORY[0x1E69D3508], v6);
    lazy protocol witness table accessor for type InputOrigin and conformance InputOrigin();
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v41[0] == v39 && v41[1] == v40)
    {
      v37 = 0;
    }

    else
    {
      v37 = _stringCompareWithSmolCheck(_:_:expecting:)() ^ 1;
    }

    v15 = *(v7 + 8);
    v15(v9, v6);
    v15(v12, v6);
  }

  v16 = *(v2 + 24);
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  __swift_project_value_buffer(v17, static Logger.executor);
  swift_retain_n();
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v41[0] = v21;
    *v20 = 136316930;
    *(v20 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, v41);
    *(v20 + 12) = 2080;
    if (*(v2 + 44))
    {
      v22 = 1702195828;
    }

    else
    {
      v22 = 0x65736C6166;
    }

    if (*(v2 + 44))
    {
      v23 = 0xE400000000000000;
    }

    else
    {
      v23 = 0xE500000000000000;
    }

    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, v41);

    *(v20 + 14) = v24;
    *(v20 + 22) = 2080;
    v39 = v16;
    v25 = dispatch thunk of CustomStringConvertible.description.getter();
    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, v41);

    *(v20 + 24) = v27;
    *(v20 + 32) = 1024;
    LODWORD(v27) = *(v2 + 40);

    *(v20 + 34) = v27;

    *(v20 + 38) = 1024;
    LODWORD(v27) = *(v2 + 41);

    *(v20 + 40) = v27;

    *(v20 + 44) = 2048;
    v28 = *(v2 + 32);

    *(v20 + 46) = v28;

    *(v20 + 54) = 1024;
    LODWORD(v28) = *(v2 + 43);

    *(v20 + 56) = v28;

    *(v20 + 60) = 1024;
    v29 = *(v2 + 42);

    *(v20 + 62) = v29;

    _os_log_impl(&dword_1DC659000, v18, v19, "[EmptyAsrOverride]\ninputOrigin: %s,\nisNlEmpty: %s,\nendpointMode:%s,\nisFirstRequestInSession:%{BOOL}d,\nisFlowAwaitingInput:%{BOOL}d,\nconsecutiveEmptyInputs:%ld,\nisSpeechRequest:%{BOOL}d,\ndidPreviouslyFallbackToServer:%{BOOL}d", v20, 0x42u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v21, -1, -1);
    MEMORY[0x1E12A2F50](v20, -1, -1);
  }

  else
  {
  }

  if (*(v2 + 43) == 1 && *(v2 + 44) == 1)
  {
    if (*(v2 + 40))
    {
      v31 = 7;
    }

    else if (v37 & 1 | (v16 == 2) || (*(v2 + 42) & 1) != 0)
    {
      v31 = 8;
    }

    else
    {
      v32 = *(v2 + 32);
      if (v32 < 1)
      {
        if (*(v2 + 41))
        {
          v31 = 11;
        }

        else
        {
          v31 = 8;
        }
      }

      else
      {

        v33 = Logger.logObject.getter();
        v34 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v33, v34))
        {
          v35 = swift_slowAlloc();
          *v35 = 134217984;
          *(v35 + 4) = v32;

          _os_log_impl(&dword_1DC659000, v33, v34, "[EmptyAsrOverride] Ignore repetitive empty parse. repetition: %ld", v35, 0xCu);
          MEMORY[0x1E12A2F50](v35, -1, -1);
        }

        else
        {
        }

        v31 = 8;
      }
    }
  }

  else
  {
    v31 = 11;
  }

  *v38 = v31;
  return result;
}

uint64_t EmptyAsrOverride.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t protocol witness for ExecutionOverride.evaluate() in conformance EmptyAsrOverride()
{
  (*(**v0 + 184))();
  v2 = *(v1 + 8);

  return v2();
}

uint64_t outlined destroy of InputOrigin?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type InputOrigin and conformance InputOrigin()
{
  result = lazy protocol witness table cache variable for type InputOrigin and conformance InputOrigin;
  if (!lazy protocol witness table cache variable for type InputOrigin and conformance InputOrigin)
  {
    type metadata accessor for InputOrigin();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InputOrigin and conformance InputOrigin);
  }

  return result;
}

uint64_t EmptyASRRule.ruleType.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

uint64_t EmptyASRRule.__allocating_init(endpointMode:isFirstRequestInSession:isSystemPrompted:didPreviouslyFallbackToServer:)(uint64_t a1, char a2, char a3, char a4, char a5)
{
  result = swift_allocObject();
  *(result + 16) = 6;
  *(result + 24) = a1;
  *(result + 32) = a2 & 1;
  *(result + 33) = a3;
  *(result + 34) = a4;
  *(result + 35) = a5;
  return result;
}

uint64_t EmptyASRRule.init(endpointMode:isFirstRequestInSession:isSystemPrompted:didPreviouslyFallbackToServer:)(uint64_t a1, char a2, char a3, char a4, char a5)
{
  *(v5 + 16) = 6;
  *(v5 + 24) = a1;
  *(v5 + 32) = a2 & 1;
  *(v5 + 33) = a3;
  *(v5 + 34) = a4;
  *(v5 + 35) = a5;
  return v5;
}

SiriKitRuntime::PreExecutionDecision __swiftcall EmptyASRRule.evaluate()()
{
  v1 = v0;
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.conversationBridge);
  swift_retain_n();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136315906;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo14AFEndpointModeVSgMd, &_sSo14AFEndpointModeVSgMR);
    v7 = Optional.debugDescription.getter();
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v12);

    *(v5 + 4) = v9;
    *(v5 + 12) = 1024;
    LODWORD(v9) = v0[33];

    *(v5 + 14) = v9;

    *(v5 + 18) = 1024;
    LODWORD(v9) = v0[34];

    *(v5 + 20) = v9;

    *(v5 + 24) = 1024;
    v10 = v0[35];

    *(v5 + 26) = v10;

    _os_log_impl(&dword_1DC659000, v3, v4, "endpointMode:%s, isFirstRequestInSession:%{BOOL}d, isSystemPrompted:%{BOOL}d, didPreviouslyFallbackToServer:%{BOOL}d", v5, 0x1Eu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x1E12A2F50](v6, -1, -1);
    MEMORY[0x1E12A2F50](v5, -1, -1);

    if ((v1[33] & 1) == 0)
    {
      goto LABEL_5;
    }

    return 7;
  }

  if (v0[33])
  {
    return 7;
  }

LABEL_5:
  if (v1[32])
  {
    if (v1[34] != 1)
    {
      return 8;
    }
  }

  else if (v1[34] != 1 || *(v1 + 3) == 2)
  {
    return 8;
  }

  if (v1[35] == 1)
  {
    return 8;
  }

  return 11;
}

uint64_t SiriRequestContext.init(publisher:aceService:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  outlined init with take of ReferenceResolutionClientProtocol(a1, a3);

  return outlined init with take of ReferenceResolutionClientProtocol(a2, a3 + 40);
}

uint64_t EncoreConversation.encoreEventsHandled.getter()
{
  v1 = OBJC_IVAR____TtC14SiriKitRuntime18EncoreConversation_encoreEventsHandled;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t EncoreConversation.encoreRegistered.getter()
{
  v1 = OBJC_IVAR____TtC14SiriKitRuntime18EncoreConversation_encoreRegistered;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t EncoreConversation.State.description.getter()
{
  v1 = type metadata accessor for EncoreConversation.State(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of EncoreEngineEvent(v0, v3, type metadata accessor for EncoreConversation.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A7RequestV7request_AA0D12ContinuationV12continuationtMd, &_s14SiriKitRuntime0A7RequestV7request_AA0D12ContinuationV12continuationtMR);
      outlined destroy of EncoreConversation.State(&v3[*(v8 + 48)], type metadata accessor for RequestContinuation);
      outlined destroy of EncoreConversation.State(v3, type metadata accessor for SiriRequest);
      return 0x6465747065636361;
    }

    else
    {
      outlined destroy of ReferenceResolutionClientProtocol?(v3, &_s11SiriKitFlow06ActingC0_pSgMd, &_s11SiriKitFlow06ActingC0_pSgMR);
      return 0x7964616572;
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A7RequestV7request_AA0D12ContinuationV12continuationScTyyts5Error_pG4tasktMd, &_s14SiriKitRuntime0A7RequestV7request_AA0D12ContinuationV12continuationScTyyts5Error_pG4tasktMR) + 48);

    outlined destroy of EncoreConversation.State(&v3[v7], type metadata accessor for RequestContinuation);
    outlined destroy of EncoreConversation.State(v3, type metadata accessor for SiriRequest);
    return 0x6E69726170657270;
  }

  else if (EnumCaseMultiPayload == 3)
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A7RequestV7request_AA0D12ContinuationV12continuationtMd, &_s14SiriKitRuntime0A7RequestV7request_AA0D12ContinuationV12continuationtMR);
    outlined destroy of EncoreConversation.State(&v3[*(v5 + 48)], type metadata accessor for RequestContinuation);
    outlined destroy of EncoreConversation.State(v3, type metadata accessor for SiriRequest);
    return 0x726F467964616572;
  }

  else
  {
    outlined destroy of EncoreConversation.State(v3, type metadata accessor for EncoreConversation.State);
    return 0x697474696D6D6F63;
  }
}

uint64_t EncoreConversation.__allocating_init<A>(initialFlow:pluginId:pluginInfo:taskService:taskObserver:snippetManager:rootEnvironment:correctionsEngine:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t (*a13)(uint64_t, uint64_t, uint64_t))
{
  v15 = a13(a1, a2, a3);

  swift_unknownObjectRelease();

  (*(*(a11 - 8) + 8))(a1, a11);
  return v15;
}

uint64_t closure #1 in EncoreConversation.init<A>(initialFlow:pluginId:pluginInfo:taskService:taskObserver:snippetManager:rootEnvironment:correctionsEngine:)()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return EncoreConversation.setupEncoreEventHandling()();
}

uint64_t EncoreConversation.setupEncoreEventHandling()()
{
  *(v1 + 40) = v0;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v2 = static ConversationActor.shared;
  *(v1 + 48) = static ConversationActor.shared;

  return MEMORY[0x1EEE6DFA0](EncoreConversation.setupEncoreEventHandling(), v2, 0);
}

{
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 56) = __swift_project_value_buffer(v1, static Logger.executor);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1DC659000, v2, v3, "[EncoreConversation] Register Encore Handler.", v4, 2u);
    MEMORY[0x1E12A2F50](v4, -1, -1);
  }

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v5 = static ReactiveUIEventActor.shared;
  *(v0 + 64) = static ReactiveUIEventActor.shared;

  return MEMORY[0x1EEE6DFA0](EncoreConversation.setupEncoreEventHandling(), v5, 0);
}

{
  v1 = *(v0 + 48);
  ReactiveUIEventActor.setHandler(_:)(partial apply for closure #1 in EncoreConversation.setupEncoreEventHandling(), *(v0 + 40));

  return MEMORY[0x1EEE6DFA0](EncoreConversation.setupEncoreEventHandling(), v1, 0);
}

uint64_t EncoreConversation.setupEncoreEventHandling()(uint64_t a1)
{
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1DC659000, v2, v3, "[EncoreConversation] Registered Encore Handler.", v4, 2u);
    MEMORY[0x1E12A2F50](v4, -1, -1);
  }

  v5 = *(v1 + 40);

  v6 = OBJC_IVAR____TtC14SiriKitRuntime18EncoreConversation_encoreRegistered;
  swift_beginAccess();
  *(v5 + v6) = 1;
  v7 = *(v1 + 8);

  return v7();
}

uint64_t EncoreConversation.deinit()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v14 - v3;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.executor);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_1DC659000, v6, v7, "[EncoreConversation] deinit.", v8, 2u);
    MEMORY[0x1E12A2F50](v8, -1, -1);
  }

  v9 = *(v1 + 16);

  OS_dispatch_semaphore.wait()();
  closure #1 in JetsamHelper.releaseJetsamTransaction()(v9, &v15);
  OS_dispatch_semaphore.signal()();

  v10 = *(v1 + 24);
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v4, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v10;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v4, &async function pointer to partial apply for closure #1 in EncoreConversation.deinit, v12);

  outlined destroy of ReferenceResolutionClientProtocol?(v1 + OBJC_IVAR____TtC14SiriKitRuntime18EncoreConversation_siriRequest, &_s14SiriKitRuntime0A7RequestVSgMd, &_s14SiriKitRuntime0A7RequestVSgMR);
  outlined destroy of EncoreConversation.State(v1 + OBJC_IVAR____TtC14SiriKitRuntime18EncoreConversation_state, type metadata accessor for EncoreConversation.State);

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm((v1 + OBJC_IVAR____TtC14SiriKitRuntime18EncoreConversation_correctionsEngine));
  return v1;
}

uint64_t closure #1 in EncoreConversation.deinit()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return EncoreEngine.stop()();
}

uint64_t EncoreEngine.stop()()
{
  v1[2] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOy14SiriKitRuntime12EncoreEngineC0H5EventO__GMd, &_sScS12ContinuationV11YieldResultOy14SiriKitRuntime12EncoreEngineC0H5EventO__GMR);
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = type metadata accessor for EncoreEngine.EngineEvent(0);
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v1[9] = type metadata accessor for EncoreEngineEvent(0);
  v1[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](EncoreEngine.stop(), 0, 0);
}

{
  swift_storeEnumTagMultiPayload();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v0 = static FlowActor.shared;

  return MEMORY[0x1EEE6DFA0](EncoreEngine.stop(), v0, 0);
}

uint64_t EncoreEngine.stop()(double a1)
{
  v2 = v1[10];
  v3 = v1[7];
  v4 = v1[8];
  v5 = v1[5];
  v6 = v1[3];
  v7 = v1[4];
  outlined init with copy of EncoreEngineEvent(v2, v4, type metadata accessor for EncoreEngineEvent);
  swift_storeEnumTagMultiPayload();
  outlined init with copy of EncoreEngineEvent(v4, v3, type metadata accessor for EncoreEngine.EngineEvent);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy14SiriKitRuntime12EncoreEngineC0F5EventO_GMd, &_sScS12ContinuationVy14SiriKitRuntime12EncoreEngineC0F5EventO_GMR);
  AsyncStream.Continuation.yield(_:)();
  (*(v7 + 8))(v5, v6);
  outlined destroy of EncoreConversation.State(v4, type metadata accessor for EncoreEngine.EngineEvent);
  outlined destroy of EncoreConversation.State(v2, type metadata accessor for EncoreEngineEvent);

  v8 = v1[1];

  return v8();
}

uint64_t EncoreConversation.__deallocating_deinit()
{
  EncoreConversation.deinit();

  return swift_deallocClassInstance();
}

uint64_t closure #1 in EncoreConversation.setupEncoreEventHandling()(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v14 - v5;
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = one-time initialization token for shared;

  v9 = a1;
  if (v8 != -1)
  {
    swift_once();
  }

  v10 = static ConversationActor.shared;
  v11 = lazy protocol witness table accessor for type ConversationActor and conformance ConversationActor(&lazy protocol witness table cache variable for type ConversationActor and conformance ConversationActor, type metadata accessor for ConversationActor, &protocol conformance descriptor for ConversationActor);
  v12 = swift_allocObject();
  v12[2] = v10;
  v12[3] = v11;
  v12[4] = a2;
  v12[5] = v9;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v6, &async function pointer to partial apply for closure #1 in closure #1 in EncoreConversation.setupEncoreEventHandling(), v12);
}

uint64_t closure #1 in closure #1 in EncoreConversation.setupEncoreEventHandling()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v6 = static ConversationActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in EncoreConversation.setupEncoreEventHandling(), v6, 0);
}

uint64_t closure #1 in closure #1 in EncoreConversation.setupEncoreEventHandling()()
{
  EncoreConversation.handleEncoreEvent(event:)(*(v0 + 24));
  v1 = *(v0 + 8);

  return v1();
}

void EncoreConversation.handleEncoreEvent(event:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v50 = &v48 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A7RequestVSgMd, &_s14SiriKitRuntime0A7RequestVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v48 - v7;
  v9 = type metadata accessor for EncoreConversation.State(0);
  MEMORY[0x1EEE9AC00](v9);
  v49 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v48 - v12;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  v15 = __swift_project_value_buffer(v14, static Logger.executor);
  v16 = a1;
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
    _os_log_impl(&dword_1DC659000, v17, v18, "[EncoreConversation] handleEncoreEvent %@", v19, 0xCu);
    outlined destroy of ReferenceResolutionClientProtocol?(v20, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1E12A2F50](v20, -1, -1);
    MEMORY[0x1E12A2F50](v19, -1, -1);
  }

  v22 = OBJC_IVAR____TtC14SiriKitRuntime18EncoreConversation_encoreEventsHandled;
  swift_beginAccess();
  v23 = *(v2 + v22);
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (v24)
  {
    __break(1u);
    goto LABEL_20;
  }

  *(v2 + v22) = v25;
  v26 = OBJC_IVAR____TtC14SiriKitRuntime18EncoreConversation_state;
  swift_beginAccess();
  outlined init with copy of EncoreEngineEvent(v2 + v26, v13, type metadata accessor for EncoreConversation.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 4)
  {
    outlined destroy of EncoreConversation.State(v13, type metadata accessor for EncoreConversation.State);
    v9 = v50;
LABEL_10:
    v28 = OBJC_IVAR____TtC14SiriKitRuntime18EncoreConversation_siriRequest;
    swift_beginAccess();
    outlined init with copy of ReferenceResolutionClientProtocol?(v2 + v28, v8, &_s14SiriKitRuntime0A7RequestVSgMd, &_s14SiriKitRuntime0A7RequestVSgMR);
    v29 = type metadata accessor for SiriRequest(0);
    LODWORD(v28) = (*(*(v29 - 8) + 48))(v8, 1, v29);
    outlined destroy of ReferenceResolutionClientProtocol?(v8, &_s14SiriKitRuntime0A7RequestVSgMd, &_s14SiriKitRuntime0A7RequestVSgMR);
    if (v28 == 1)
    {
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_1DC659000, v30, v31, "[EncoreConversation] handleEncoreEvent failed. Missing siriRequest)", v32, 2u);
        MEMORY[0x1E12A2F50](v32, -1, -1);
      }

      return;
    }

    v33 = type metadata accessor for TaskPriority();
    (*(*(v33 - 8) + 56))(v9, 1, 1, v33);
    v34 = one-time initialization token for shared;
    v15 = v16;

    if (v34 == -1)
    {
LABEL_15:
      v35 = static ConversationActor.shared;
      v36 = lazy protocol witness table accessor for type ConversationActor and conformance ConversationActor(&lazy protocol witness table cache variable for type ConversationActor and conformance ConversationActor, type metadata accessor for ConversationActor, &protocol conformance descriptor for ConversationActor);
      v37 = swift_allocObject();
      v37[2] = v35;
      v37[3] = v36;
      v37[4] = v2;
      v37[5] = v15;

      _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v9, &async function pointer to partial apply for closure #1 in EncoreConversation.handleEncoreEvent(event:), v37);

      return;
    }

LABEL_20:
    swift_once();
    goto LABEL_15;
  }

  v9 = v50;
  if (!EnumCaseMultiPayload)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v13, &_s11SiriKitFlow06ActingC0_pSgMd, &_s11SiriKitFlow06ActingC0_pSgMR);
    goto LABEL_10;
  }

  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v51[0] = v41;
    *v40 = 136315138;
    v42 = v2 + v26;
    v43 = v49;
    outlined init with copy of EncoreEngineEvent(v42, v49, type metadata accessor for EncoreConversation.State);
    v44 = EncoreConversation.State.description.getter();
    v46 = v45;
    outlined destroy of EncoreConversation.State(v43, type metadata accessor for EncoreConversation.State);
    v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v46, v51);

    *(v40 + 4) = v47;
    _os_log_impl(&dword_1DC659000, v38, v39, "[EncoreConversation] handleEncoreEvent failed. Invalid state %s.", v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v41);
    MEMORY[0x1E12A2F50](v41, -1, -1);
    MEMORY[0x1E12A2F50](v40, -1, -1);
  }

  outlined destroy of EncoreConversation.State(v13, type metadata accessor for EncoreConversation.State);
}

Swift::Void __swiftcall EncoreConversation.setEncoreRegistered(registered:)(Swift::Bool registered)
{
  v3 = OBJC_IVAR____TtC14SiriKitRuntime18EncoreConversation_encoreRegistered;
  swift_beginAccess();
  *(v1 + v3) = registered;
}

uint64_t closure #1 in EncoreConversation.handleEncoreEvent(event:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOy14SiriKitRuntime12EncoreEngineC0H5EventO__GMd, &_sScS12ContinuationV11YieldResultOy14SiriKitRuntime12EncoreEngineC0H5EventO__GMR);
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  v5[7] = type metadata accessor for EncoreEngine.EngineEvent(0);
  v5[8] = swift_task_alloc();
  v5[9] = swift_task_alloc();
  v5[10] = type metadata accessor for EncoreEngineEvent(0);
  v5[11] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v7 = static ConversationActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in EncoreConversation.handleEncoreEvent(event:), v7, 0);
}

uint64_t closure #1 in EncoreConversation.handleEncoreEvent(event:)()
{
  v1 = v0[11];
  v2 = v0[3];
  v0[12] = *(v0[2] + 24);
  *v1 = v2;
  swift_storeEnumTagMultiPayload();
  v3 = one-time initialization token for shared;
  v4 = v2;
  if (v3 != -1)
  {
    swift_once();
  }

  v5 = static FlowActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in EncoreConversation.handleEncoreEvent(event:), v5, 0);
}

uint64_t closure #1 in EncoreConversation.handleEncoreEvent(event:)(double a1)
{
  v2 = v1[11];
  v3 = v1[8];
  v4 = v1[9];
  v5 = v1[6];
  v6 = v1[4];
  v7 = v1[5];
  outlined init with copy of EncoreEngineEvent(v2, v4, type metadata accessor for EncoreEngineEvent);
  swift_storeEnumTagMultiPayload();
  outlined init with copy of EncoreEngineEvent(v4, v3, type metadata accessor for EncoreEngine.EngineEvent);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy14SiriKitRuntime12EncoreEngineC0F5EventO_GMd, &_sScS12ContinuationVy14SiriKitRuntime12EncoreEngineC0F5EventO_GMR);
  AsyncStream.Continuation.yield(_:)();
  (*(v7 + 8))(v5, v6);
  outlined destroy of EncoreConversation.State(v4, type metadata accessor for EncoreEngine.EngineEvent);
  outlined destroy of EncoreConversation.State(v2, type metadata accessor for EncoreEngineEvent);

  v8 = v1[1];

  return v8();
}

uint64_t EncoreConversation.cancel()()
{
  v1[2] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOy14SiriKitRuntime12EncoreEngineC0H5EventO__GMd, &_sScS12ContinuationV11YieldResultOy14SiriKitRuntime12EncoreEngineC0H5EventO__GMR);
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = type metadata accessor for EncoreEngine.EngineEvent(0);
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v1[9] = type metadata accessor for EncoreEngineEvent(0);
  v1[10] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v3 = static ConversationActor.shared;

  return MEMORY[0x1EEE6DFA0](EncoreConversation.cancel(), v3, 0);
}

{
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.executor);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1DC659000, v2, v3, "[EncoreConversation] Cancel. Sending ensureReady event to interrupt any running request.", v4, 2u);
    MEMORY[0x1E12A2F50](v4, -1, -1);
  }

  v5 = v0[10];
  v6 = v0[2];

  v0[11] = *(v6 + 24);
  *v5 = closure #1 in EncoreConversation.cancel();
  v5[1] = 0;
  swift_storeEnumTagMultiPayload();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v7 = static FlowActor.shared;

  return MEMORY[0x1EEE6DFA0](EncoreConversation.cancel(), v7, 0);
}

uint64_t EncoreConversation.cancel()(double a1)
{
  v2 = v1[10];
  v3 = v1[7];
  v4 = v1[8];
  v5 = v1[5];
  v6 = v1[3];
  v7 = v1[4];
  outlined init with copy of EncoreEngineEvent(v2, v4, type metadata accessor for EncoreEngineEvent);
  swift_storeEnumTagMultiPayload();
  outlined init with copy of EncoreEngineEvent(v4, v3, type metadata accessor for EncoreEngine.EngineEvent);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy14SiriKitRuntime12EncoreEngineC0F5EventO_GMd, &_sScS12ContinuationVy14SiriKitRuntime12EncoreEngineC0F5EventO_GMR);
  AsyncStream.Continuation.yield(_:)();
  (*(v7 + 8))(v5, v6);
  outlined destroy of EncoreConversation.State(v4, type metadata accessor for EncoreEngine.EngineEvent);
  outlined destroy of EncoreConversation.State(v2, type metadata accessor for EncoreEngineEvent);

  v8 = v1[1];

  return v8();
}

void closure #1 in EncoreConversation.cancel()()
{
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static Logger.executor);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_1DC659000, oslog, v1, "[EncoreConversation] Ensured ready due to cancellation.", v2, 2u);
    MEMORY[0x1E12A2F50](v2, -1, -1);
  }
}

uint64_t EncoreConversation.ensureReady(timeout:)(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  v3 = type metadata accessor for TimeoutError();
  v2[11] = v3;
  v2[12] = *(v3 - 8);
  v2[13] = swift_task_alloc();
  v2[14] = type metadata accessor for ConversationCommitResult(0);
  v2[15] = swift_task_alloc();
  v2[16] = type metadata accessor for EncoreConversation.State(0);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v4 = static ConversationActor.shared;
  v2[19] = static ConversationActor.shared;

  return MEMORY[0x1EEE6DFA0](EncoreConversation.ensureReady(timeout:), v4, 0);
}

uint64_t EncoreConversation.ensureReady(timeout:)()
{
  v57 = v0;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 160) = __swift_project_value_buffer(v1, static Logger.executor);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 144);
    v5 = *(v0 + 80);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v56[0] = v7;
    *v6 = 136315138;
    v8 = OBJC_IVAR____TtC14SiriKitRuntime18EncoreConversation_state;
    swift_beginAccess();
    outlined init with copy of EncoreEngineEvent(v5 + v8, v4, type metadata accessor for EncoreConversation.State);
    v9 = EncoreConversation.State.description.getter();
    v11 = v10;
    outlined destroy of EncoreConversation.State(v4, type metadata accessor for EncoreConversation.State);
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v11, v56);

    *(v6 + 4) = v12;
    _os_log_impl(&dword_1DC659000, v2, v3, "[EncoreConversation] Ensuring ready. state: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x1E12A2F50](v7, -1, -1);
    MEMORY[0x1E12A2F50](v6, -1, -1);
  }

  v13 = *(v0 + 136);
  v14 = *(v0 + 80);
  v15 = OBJC_IVAR____TtC14SiriKitRuntime18EncoreConversation_state;
  swift_beginAccess();
  outlined init with copy of EncoreEngineEvent(v14 + v15, v13, type metadata accessor for EncoreConversation.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 4:
      v29 = *(v0 + 136);
      v20 = *v29;
      *(v0 + 192) = *v29;
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_1DC659000, v30, v31, "[EncoreConversation] ensureReady waiting for commit to complete.", v32, 2u);
        MEMORY[0x1E12A2F50](v32, -1, -1);
      }

      v24 = DispatchTimeInterval.seconds.getter();

      v33 = swift_task_alloc();
      *(v0 + 200) = v33;
      *v33 = v0;
      v33[1] = EncoreConversation.ensureReady(timeout:);
      v28 = *(v0 + 112);
      v25 = *(v0 + 120);
      v27 = &async function pointer to partial apply for closure #2 in EncoreConversation.ensureReady(timeout:);
      goto LABEL_15;
    case 2:
      v18 = *(v0 + 136);
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A7RequestV7request_AA0D12ContinuationV12continuationScTyyts5Error_pG4tasktMd, &_s14SiriKitRuntime0A7RequestV7request_AA0D12ContinuationV12continuationScTyyts5Error_pG4tasktMR);
      v20 = *(v18 + *(v19 + 64));
      *(v0 + 168) = v20;
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&dword_1DC659000, v21, v22, "[EncoreConversation] ensureReady waiting for prepare to complete.", v23, 2u);
        MEMORY[0x1E12A2F50](v23, -1, -1);
      }

      *(v0 + 232) = *(v19 + 48);
      v24 = DispatchTimeInterval.seconds.getter();

      v25 = swift_task_alloc();
      *(v0 + 176) = v25;
      *v25 = v0;
      v25[1] = EncoreConversation.ensureReady(timeout:);
      v27 = &async function pointer to partial apply for closure #1 in EncoreConversation.ensureReady(timeout:);
      v28 = MEMORY[0x1E69E7CA8] + 8;
LABEL_15:
      v26.n128_f64[0] = v24;

      return MEMORY[0x1EEE40F70](v25, v27, v20, v28, v26);
    case 0:
      outlined destroy of ReferenceResolutionClientProtocol?(*(v0 + 136), &_s11SiriKitFlow06ActingC0_pSgMd, &_s11SiriKitFlow06ActingC0_pSgMR);

      v17 = *(v0 + 8);
LABEL_27:

      return v17();
  }

  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = *(v0 + 144);
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v56[0] = v38;
    *v37 = 136315138;
    outlined init with copy of EncoreEngineEvent(v14 + v15, v36, type metadata accessor for EncoreConversation.State);
    v39 = EncoreConversation.State.description.getter();
    v41 = v40;
    outlined destroy of EncoreConversation.State(v36, type metadata accessor for EncoreConversation.State);
    v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v41, v56);

    *(v37 + 4) = v42;
    _os_log_impl(&dword_1DC659000, v34, v35, "[EncoreConversation] ensureReady can only be called for committed conversation. Invalid state %s.", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v38);
    MEMORY[0x1E12A2F50](v38, -1, -1);
    MEMORY[0x1E12A2F50](v37, -1, -1);
  }

  v43 = *(v0 + 136);
  v44 = *(v0 + 144);
  v56[0] = 0;
  v56[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(43);

  strcpy(v56, "Invalid state ");
  HIBYTE(v56[1]) = -18;
  outlined init with copy of EncoreEngineEvent(v14 + v15, v44, type metadata accessor for EncoreConversation.State);
  v45 = EncoreConversation.State.description.getter();
  MEMORY[0x1E12A1580](v45);

  outlined destroy of EncoreConversation.State(v44, type metadata accessor for EncoreConversation.State);
  MEMORY[0x1E12A1580](0xD00000000000001BLL, 0x80000001DCA82690);
  v46 = v56[0];
  v47 = v56[1];
  lazy protocol witness table accessor for type IllegalStateError and conformance IllegalStateError();
  v48 = swift_allocError();
  *v49 = v46;
  v49[1] = v47;
  swift_willThrow();
  outlined destroy of EncoreConversation.State(v43, type metadata accessor for EncoreConversation.State);
  *(v0 + 64) = v48;
  v50 = v48;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (!swift_dynamicCast())
  {

    v17 = *(v0 + 8);
    goto LABEL_27;
  }

  v51 = Logger.logObject.getter();
  v52 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    *v53 = 0;
    _os_log_impl(&dword_1DC659000, v51, v52, "[EncoreConversation] Grace period expired. Sending ensureReady event.", v53, 2u);
    MEMORY[0x1E12A2F50](v53, -1, -1);
  }

  v54 = *(v0 + 80);

  *(v0 + 216) = *(v54 + 24);

  return MEMORY[0x1EEE6DFA0](EncoreConversation.ensureReady(timeout:), 0, 0);
}

{
  v2 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v3 = *(v2 + 152);
    v4 = EncoreConversation.ensureReady(timeout:);
  }

  else
  {
    v5 = *(v2 + 152);

    v4 = EncoreConversation.ensureReady(timeout:);
    v3 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

{
  v1 = *(v0 + 232);
  v2 = *(v0 + 136);

  outlined destroy of EncoreConversation.State(v2 + v1, type metadata accessor for RequestContinuation);
  outlined destroy of EncoreConversation.State(v2, type metadata accessor for SiriRequest);

  v3 = *(v0 + 8);

  return v3();
}

{
  v2 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v3 = *(v2 + 152);
    v4 = EncoreConversation.ensureReady(timeout:);
  }

  else
  {
    v5 = *(v2 + 152);
    outlined destroy of EncoreConversation.State(*(v2 + 120), type metadata accessor for ConversationCommitResult);

    v4 = EncoreConversation.ensureReady(timeout:);
    v3 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = swift_task_alloc();
  *(v0 + 224) = v1;
  *v1 = v0;
  v1[1] = EncoreConversation.ensureReady(timeout:);
  v2 = *(v0 + 216);
  v3 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DDE0](v1, 0, 0, 0xD000000000000017, 0x80000001DCA826B0, partial apply for closure #1 in EncoreEngine.asyncEnsureReadyEvent(), v2, v3);
}

{

  return MEMORY[0x1EEE6DFA0](EncoreConversation.ensureReady(timeout:), 0, 0);
}

{
  return MEMORY[0x1EEE6DFA0](EncoreConversation.ensureReady(timeout:), *(v0 + 152), 0);
}

{
  (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));

  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = *(v0 + 232);
  v2 = *(v0 + 136);

  outlined destroy of EncoreConversation.State(v2 + v1, type metadata accessor for RequestContinuation);
  outlined destroy of EncoreConversation.State(v2, type metadata accessor for SiriRequest);
  v3 = *(v0 + 184);
  *(v0 + 64) = v3;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1DC659000, v5, v6, "[EncoreConversation] Grace period expired. Sending ensureReady event.", v7, 2u);
      MEMORY[0x1E12A2F50](v7, -1, -1);
    }

    v8 = *(v0 + 80);

    *(v0 + 216) = *(v8 + 24);

    return MEMORY[0x1EEE6DFA0](EncoreConversation.ensureReady(timeout:), 0, 0);
  }

  else
  {

    v9 = *(v0 + 8);

    return v9();
  }
}

{

  v1 = *(v0 + 208);
  *(v0 + 64) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1DC659000, v3, v4, "[EncoreConversation] Grace period expired. Sending ensureReady event.", v5, 2u);
      MEMORY[0x1E12A2F50](v5, -1, -1);
    }

    v6 = *(v0 + 80);

    *(v0 + 216) = *(v6 + 24);

    return MEMORY[0x1EEE6DFA0](EncoreConversation.ensureReady(timeout:), 0, 0);
  }

  else
  {

    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t closure #1 in EncoreConversation.ensureReady(timeout:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  *v5 = v2;
  v5[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);
  v7 = MEMORY[0x1E69E7288];
  v8 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DA10](a1, a2, v8, v6, v7);
}

uint64_t EncoreEngine.asyncEnsureReadyEvent()()
{
  *(v1 + 16) = v0;
  return MEMORY[0x1EEE6DFA0](EncoreEngine.asyncEnsureReadyEvent(), 0, 0);
}

{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = protocol witness for AceServiceInvokerAsync.prepareForAudioHandoffFailed() in conformance AceServiceInvokerImpl;
  v2 = *(v0 + 16);
  v3 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DDE0](v1, 0, 0, 0xD000000000000017, 0x80000001DCA826B0, closure #1 in EncoreEngine.asyncEnsureReadyEvent()partial apply, v2, v3);
}

uint64_t EncoreConversation.accept(request:)(uint64_t a1, uint64_t a2)
{
  v3[60] = a2;
  v3[61] = v2;
  v3[59] = a1;
  v3[62] = type metadata accessor for UserInputResult(0);
  v3[63] = swift_task_alloc();
  v4 = type metadata accessor for Parse();
  v3[64] = v4;
  v3[65] = *(v4 - 8);
  v3[66] = swift_task_alloc();
  v3[67] = type metadata accessor for RequestContinuation(0);
  v3[68] = swift_task_alloc();
  v3[69] = swift_task_alloc();
  v3[70] = swift_task_alloc();
  v3[71] = swift_task_alloc();
  v5 = type metadata accessor for ExecutionContext();
  v3[72] = v5;
  v3[73] = *(v5 - 8);
  v3[74] = swift_task_alloc();
  v3[75] = swift_task_alloc();
  v6 = type metadata accessor for ConversationContext();
  v3[76] = v6;
  v3[77] = *(v6 - 8);
  v3[78] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriFlowEnvironment0B12TaskMetadataVSgMd, &_s19SiriFlowEnvironment0B12TaskMetadataVSgMR);
  v3[79] = swift_task_alloc();
  v7 = type metadata accessor for Date();
  v3[80] = v7;
  v3[81] = *(v7 - 8);
  v3[82] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A17RequestIdentitiesVSgMd, &_s14SiriKitRuntime0A17RequestIdentitiesVSgMR);
  v3[83] = swift_task_alloc();
  v3[84] = swift_task_alloc();
  v3[85] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
  v3[86] = swift_task_alloc();
  v3[87] = swift_task_alloc();
  v8 = type metadata accessor for ResponseMode();
  v3[88] = v8;
  v3[89] = *(v8 - 8);
  v3[90] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A7RequestVSgMd, &_s14SiriKitRuntime0A7RequestVSgMR);
  v3[91] = swift_task_alloc();
  v3[92] = type metadata accessor for EncoreConversation.State(0);
  v3[93] = swift_task_alloc();
  v3[94] = swift_task_alloc();
  v9 = type metadata accessor for SiriRequest(0);
  v3[95] = v9;
  v3[96] = *(v9 - 8);
  v3[97] = swift_task_alloc();
  v3[98] = swift_task_alloc();
  v3[99] = swift_task_alloc();
  v3[100] = swift_task_alloc();
  v3[101] = swift_task_alloc();
  v3[102] = swift_task_alloc();
  v3[103] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v10 = static ConversationActor.shared;
  v3[104] = static ConversationActor.shared;

  return MEMORY[0x1EEE6DFA0](EncoreConversation.accept(request:), v10, 0);
}

uint64_t EncoreConversation.accept(request:)()
{
  v143 = v0;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 824);
  v2 = *(v0 + 816);
  v3 = *(v0 + 480);
  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.executor);
  outlined init with copy of EncoreEngineEvent(v3, v1, type metadata accessor for SiriRequest);
  outlined init with copy of EncoreEngineEvent(v3, v2, type metadata accessor for SiriRequest);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 824);
  v9 = *(v0 + 816);
  if (v7)
  {
    v10 = swift_slowAlloc();
    v139 = swift_slowAlloc();
    v142[0] = v139;
    *v10 = 136315394;
    v11 = *v8;
    v12 = v8[1];

    outlined destroy of EncoreConversation.State(v8, type metadata accessor for SiriRequest);
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, v142);

    *(v10 + 4) = v13;
    *(v10 + 12) = 2080;
    type metadata accessor for Input();
    lazy protocol witness table accessor for type ConversationActor and conformance ConversationActor(&lazy protocol witness table cache variable for type Input and conformance Input, MEMORY[0x1E69D0100], MEMORY[0x1E69D0118]);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    outlined destroy of EncoreConversation.State(v9, type metadata accessor for SiriRequest);
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, v142);

    *(v10 + 14) = v17;
    _os_log_impl(&dword_1DC659000, v5, v6, "[EncoreConversation] Accept. request id: %s %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v139, -1, -1);
    MEMORY[0x1E12A2F50](v10, -1, -1);
  }

  else
  {

    outlined destroy of EncoreConversation.State(v9, type metadata accessor for SiriRequest);
    outlined destroy of EncoreConversation.State(v8, type metadata accessor for SiriRequest);
  }

  v18 = *(v0 + 752);
  v19 = *(v0 + 488);
  v20 = OBJC_IVAR____TtC14SiriKitRuntime18EncoreConversation_state;
  *(v0 + 840) = OBJC_IVAR____TtC14SiriKitRuntime18EncoreConversation_state;
  swift_beginAccess();
  outlined init with copy of EncoreEngineEvent(v19 + v20, v18, type metadata accessor for EncoreConversation.State);
  if (swift_getEnumCaseMultiPayload())
  {
    outlined destroy of EncoreConversation.State(*(v0 + 752), type metadata accessor for EncoreConversation.State);

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = *(v0 + 744);
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v142[0] = v25;
      *v24 = 136315138;
      outlined init with copy of EncoreEngineEvent(v19 + v20, v23, type metadata accessor for EncoreConversation.State);
      v26 = EncoreConversation.State.description.getter();
      v28 = v27;
      outlined destroy of EncoreConversation.State(v23, type metadata accessor for EncoreConversation.State);
      v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v28, v142);

      *(v24 + 4) = v29;
      _os_log_impl(&dword_1DC659000, v21, v22, "[EncoreConversation] Accept failed. Invalid state %s.", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v25);
      MEMORY[0x1E12A2F50](v25, -1, -1);
      MEMORY[0x1E12A2F50](v24, -1, -1);
    }

    v30 = *(v0 + 744);
    v142[0] = 0;
    v142[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(40);

    strcpy(v142, "Invalid state ");
    HIBYTE(v142[1]) = -18;
    outlined init with copy of EncoreEngineEvent(v19 + v20, v30, type metadata accessor for EncoreConversation.State);
    v31 = EncoreConversation.State.description.getter();
    MEMORY[0x1E12A1580](v31);

    outlined destroy of EncoreConversation.State(v30, type metadata accessor for EncoreConversation.State);
    MEMORY[0x1E12A1580](0xD000000000000016, 0x80000001DCA826D0);
    type metadata accessor for Input();
    lazy protocol witness table accessor for type ConversationActor and conformance ConversationActor(&lazy protocol witness table cache variable for type Input and conformance Input, MEMORY[0x1E69D0100], MEMORY[0x1E69D0118]);
    v32 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1E12A1580](v32);

    v34 = v142[0];
    v33 = v142[1];
    lazy protocol witness table accessor for type IllegalStateError and conformance IllegalStateError();
    swift_allocError();
    *v35 = v34;
    v35[1] = v33;
    swift_willThrow();

    v36 = *(v0 + 8);

    return v36();
  }

  v38 = *(v0 + 808);
  v39 = *(v0 + 800);
  v40 = *(v0 + 768);
  v41 = *(v0 + 760);
  v42 = *(v0 + 752);
  v43 = *(v0 + 728);
  v45 = *(v0 + 480);
  v44 = *(v0 + 488);
  v46 = *(v42 + 32);
  v47 = *(v42 + 16);
  *(v0 + 96) = *v42;
  *(v0 + 112) = v47;
  *(v0 + 128) = v46;
  outlined init with copy of EncoreEngineEvent(v45, v43, type metadata accessor for SiriRequest);
  (*(v40 + 56))(v43, 0, 1, v41);
  v48 = OBJC_IVAR____TtC14SiriKitRuntime18EncoreConversation_siriRequest;
  swift_beginAccess();
  outlined assign with take of SiriRequest?(v43, v44 + v48);
  swift_endAccess();
  outlined init with copy of EncoreEngineEvent(v45, v38, type metadata accessor for SiriRequest);
  outlined init with copy of EncoreEngineEvent(v45, v39, type metadata accessor for SiriRequest);

  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.debug.getter();

  v51 = os_log_type_enabled(v49, v50);
  v52 = *(v0 + 808);
  v53 = *(v0 + 800);
  if (v51)
  {
    v54 = *(v0 + 720);
    v135 = *(v0 + 712);
    v136 = *(v0 + 704);
    v55 = swift_slowAlloc();
    v137 = swift_slowAlloc();
    v142[0] = v137;
    *v55 = 136315650;
    v56 = ObjectIdentifier.debugDescription.getter();
    v58 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v56, v57, v142);

    *(v55 + 4) = v58;
    *(v55 + 12) = 2080;
    v59 = ObjectIdentifier.debugDescription.getter();
    v61 = v60;
    outlined destroy of EncoreConversation.State(v52, type metadata accessor for SiriRequest);
    v62 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, v61, v142);

    *(v55 + 14) = v62;
    *(v55 + 22) = 2080;
    CurrentRequest.responseMode.getter();
    lazy protocol witness table accessor for type ConversationActor and conformance ConversationActor(&lazy protocol witness table cache variable for type ResponseMode and conformance ResponseMode, MEMORY[0x1E69D3550], MEMORY[0x1E69D01A8]);
    v63 = dispatch thunk of CustomStringConvertible.description.getter();
    v65 = v64;
    (*(v135 + 8))(v54, v136);
    outlined destroy of EncoreConversation.State(v53, type metadata accessor for SiriRequest);
    v66 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v63, v65, v142);

    *(v55 + 24) = v66;
    _os_log_impl(&dword_1DC659000, v49, v50, "Setting environment %s currentRequest to %s with responseMode %s", v55, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v137, -1, -1);
    MEMORY[0x1E12A2F50](v55, -1, -1);
  }

  else
  {

    outlined destroy of EncoreConversation.State(v52, type metadata accessor for SiriRequest);
    outlined destroy of EncoreConversation.State(v53, type metadata accessor for SiriRequest);
  }

  v67 = *(v0 + 784);
  v68 = *(v0 + 776);
  v69 = *(v0 + 480);
  outlined init with copy of EncoreEngineEvent(v69, *(v0 + 792), type metadata accessor for SiriRequest);
  outlined init with copy of EncoreEngineEvent(v69, v67, type metadata accessor for SiriRequest);
  outlined init with copy of EncoreEngineEvent(v69, v68, type metadata accessor for SiriRequest);
  v70 = Logger.logObject.getter();
  v71 = static os_log_type_t.debug.getter();
  v72 = os_log_type_enabled(v70, v71);
  v73 = *(v0 + 792);
  v74 = *(v0 + 784);
  v75 = *(v0 + 776);
  if (v72)
  {
    v76 = swift_slowAlloc();
    v140 = swift_slowAlloc();
    v142[0] = v140;
    *v76 = 136315650;
    v138 = v71;
    v77 = CurrentRequest.executionRequestId.getter();
    if (v78)
    {
      v79 = v77;
    }

    else
    {
      v79 = 7104878;
    }

    if (v78)
    {
      v80 = v78;
    }

    else
    {
      v80 = 0xE300000000000000;
    }

    outlined destroy of EncoreConversation.State(v73, type metadata accessor for SiriRequest);
    v81 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v79, v80, v142);

    *(v76 + 4) = v81;
    *(v76 + 12) = 2080;
    v82 = CurrentRequest.rootRequestId.getter();
    if (v83)
    {
      v84 = v82;
    }

    else
    {
      v84 = 7104878;
    }

    if (v83)
    {
      v85 = v83;
    }

    else
    {
      v85 = 0xE300000000000000;
    }

    outlined destroy of EncoreConversation.State(v74, type metadata accessor for SiriRequest);
    v86 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v84, v85, v142);

    *(v76 + 14) = v86;
    *(v76 + 22) = 2080;
    v87 = CurrentRequest.sessionId.getter();
    if (v88)
    {
      v89 = v87;
    }

    else
    {
      v89 = 7104878;
    }

    if (v88)
    {
      v90 = v88;
    }

    else
    {
      v90 = 0xE300000000000000;
    }

    outlined destroy of EncoreConversation.State(v75, type metadata accessor for SiriRequest);
    v91 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v89, v90, v142);

    *(v76 + 24) = v91;
    _os_log_impl(&dword_1DC659000, v70, v138, "updating root environment with SiriRequest having executionRequestId - %s, rootRequestId - %s, sessionId - %s", v76, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v140, -1, -1);
    MEMORY[0x1E12A2F50](v76, -1, -1);
  }

  else
  {

    outlined destroy of EncoreConversation.State(v73, type metadata accessor for SiriRequest);
    outlined destroy of EncoreConversation.State(v74, type metadata accessor for SiriRequest);
    outlined destroy of EncoreConversation.State(v75, type metadata accessor for SiriRequest);
  }

  SiriEnvironment.currentRequest.getter();
  v92 = CurrentRequest.overrideProperties.getter();

  if (v92)
  {
    v93 = Logger.logObject.getter();
    v94 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v93, v94))
    {
      v95 = swift_slowAlloc();
      *v95 = 0;
      _os_log_impl(&dword_1DC659000, v93, v94, "[EncoreConversation] Applying overrides on request", v95, 2u);
      MEMORY[0x1E12A2F50](v95, -1, -1);
    }

    static CurrentRequestOverrides.applyOverrides(on:overrides:)();
  }

  v96 = *(v0 + 760);
  v97 = *(v0 + 680);
  v98 = *(v0 + 480);

  SiriEnvironment.currentRequest.setter();
  SiriEnvironment.userIdentity.getter();
  v99 = *(v96 + 48);
  outlined init with copy of ReferenceResolutionClientProtocol?(v98 + v99, v97, &_s14SiriKitRuntime0A17RequestIdentitiesVSgMd, &_s14SiriKitRuntime0A17RequestIdentitiesVSgMR);
  v100 = type metadata accessor for SiriRequestIdentities(0);
  v101 = *(*(v100 - 8) + 48);
  v102 = v101(v97, 1, v100);
  v103 = *(v0 + 696);
  v104 = *(v0 + 680);
  if (v102 == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(*(v0 + 680), &_s14SiriKitRuntime0A17RequestIdentitiesVSgMd, &_s14SiriKitRuntime0A17RequestIdentitiesVSgMR);
    v105 = type metadata accessor for IdentifiedUser();
    (*(*(v105 - 8) + 56))(v103, 1, 1, v105);
  }

  else
  {
    outlined init with copy of ReferenceResolutionClientProtocol?(*(v0 + 680), *(v0 + 696), &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
    outlined destroy of EncoreConversation.State(v104, type metadata accessor for SiriRequestIdentities);
  }

  v106 = *(v0 + 672);
  dispatch thunk of UserIdentityProvider.identityForCurrentRequest.setter();

  SiriEnvironment.userIdentity.getter();
  outlined init with copy of ReferenceResolutionClientProtocol?(v98 + v99, v106, &_s14SiriKitRuntime0A17RequestIdentitiesVSgMd, &_s14SiriKitRuntime0A17RequestIdentitiesVSgMR);
  v107 = v101(v106, 1, v100);
  v108 = *(v0 + 688);
  v109 = *(v0 + 672);
  if (v107 == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(*(v0 + 672), &_s14SiriKitRuntime0A17RequestIdentitiesVSgMd, &_s14SiriKitRuntime0A17RequestIdentitiesVSgMR);
    v110 = type metadata accessor for IdentifiedUser();
    (*(*(v110 - 8) + 56))(v108, 1, 1, v110);
  }

  else
  {
    outlined init with copy of ReferenceResolutionClientProtocol?(v109 + *(v100 + 20), *(v0 + 688), &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
    outlined destroy of EncoreConversation.State(v109, type metadata accessor for SiriRequestIdentities);
  }

  v111 = *(v0 + 664);
  dispatch thunk of UserIdentityProvider.identityMeetingUserSessionThreshold.setter();

  SiriEnvironment.userIdentity.getter();
  outlined init with copy of ReferenceResolutionClientProtocol?(v98 + v99, v111, &_s14SiriKitRuntime0A17RequestIdentitiesVSgMd, &_s14SiriKitRuntime0A17RequestIdentitiesVSgMR);
  v112 = v101(v111, 1, v100);
  v113 = *(v0 + 664);
  if (v112 == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(*(v0 + 664), &_s14SiriKitRuntime0A17RequestIdentitiesVSgMd, &_s14SiriKitRuntime0A17RequestIdentitiesVSgMR);
  }

  else
  {

    outlined destroy of EncoreConversation.State(v113, type metadata accessor for SiriRequestIdentities);
  }

  v114 = *(v0 + 488);
  dispatch thunk of UserIdentityProvider.knownHomeMembers.setter();

  v115 = *(v114 + 48);
  swift_beginAccess();
  v118 = *(v115 + 32);
  if (v118 >> 62)
  {
    v119 = __CocoaSet.count.getter();
    if (!v119)
    {
      goto LABEL_55;
    }
  }

  else
  {
    v119 = *((v118 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v119)
    {
      goto LABEL_55;
    }
  }

  if ((v118 & 0xC000000000000001) != 0)
  {

    v120 = MEMORY[0x1E12A1FE0](0, v118);
  }

  else
  {
    if (!*((v118 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return MEMORY[0x1EEE6DFA0](v119, v116, v117);
    }

    v120 = *(v118 + 32);
  }

  v121 = *(v0 + 656);
  v122 = *(v0 + 648);
  v123 = *(v0 + 640);
  v141 = *(v0 + 632);
  type metadata accessor for FlowTaskProvider();
  v124 = OBJC_IVAR____TtC14SiriKitRuntime8FlowTask_creationTime;
  v125 = *(v122 + 16);
  v125(v121, v120 + OBJC_IVAR____TtC14SiriKitRuntime8FlowTask_creationTime, v123);

  dispatch thunk of FlowTaskProvider.__allocating_init(id:isClientInitiated:creationTime:)();
  SiriEnvironment.flowTask.setter();
  SiriEnvironment.currentRequest.getter();
  v125(v121, v120 + v124, v123);

  FlowTaskMetadata.init(id:isClientInitiated:creationTime:)();
  v126 = type metadata accessor for FlowTaskMetadata();
  (*(*(v126 - 8) + 56))(v141, 0, 1, v126);
  CurrentRequest.flowTaskMetadata.setter();

LABEL_55:
  v127 = *(v0 + 760);
  v128 = *(v0 + 600);
  v129 = *(v0 + 592);
  v130 = *(v0 + 584);
  v131 = *(v0 + 576);
  v132 = *(v0 + 480);
  SiriEnvironment.scopedReferenceResolutionData.getter();
  outlined copy of Data?(*(v132 + *(v127 + 32)), *(v132 + *(v127 + 32) + 8));
  dispatch thunk of ScopedReferenceResolutionDataProvider.dataForCurrentRequest.setter();

  static OutputPublisherFactory.makeOutputPublisherAsync()();
  static AceService.currentAsync.getter();
  outlined init with copy of ReferenceResolutionClientProtocol(v0 + 16, v0 + 136);
  outlined init with copy of ReferenceResolutionClientProtocol(v0 + 56, v0 + 176);
  ExecutionContext.init(outputPublisher:aceServiceInvoker:)();
  (*(v130 + 16))(v129, v128, v131);
  ConversationContext.init(executionContext:)();
  (*(v130 + 8))(v128, v131);
  outlined destroy of SiriRequestContext((v0 + 16));
  outlined init with copy of ReferenceResolutionClientProtocol?(v0 + 96, v0 + 256, &_s11SiriKitFlow06ActingC0_pSgMd, &_s11SiriKitFlow06ActingC0_pSgMR);
  if (*(v0 + 280))
  {
    v133 = *(v0 + 488);
    outlined init with take of ReferenceResolutionClientProtocol((v0 + 256), v0 + 216);
    *(v0 + 848) = *(v133 + 24);
    v119 = EncoreConversation.accept(request:);
    v116 = 0;
    v117 = 0;

    return MEMORY[0x1EEE6DFA0](v119, v116, v117);
  }

  outlined destroy of ReferenceResolutionClientProtocol?(v0 + 256, &_s11SiriKitFlow06ActingC0_pSgMd, &_s11SiriKitFlow06ActingC0_pSgMR);
  v134 = swift_task_alloc();
  *(v0 + 888) = v134;
  *v134 = v0;
  v134[1] = EncoreConversation.accept(request:);

  return EncoreConversation.isEmpty()();
}

{
  v1 = v0[106];
  v2 = swift_task_alloc();
  v0[107] = v2;
  *(v2 + 16) = v0 + 27;
  *(v2 + 24) = v1;
  v3 = swift_task_alloc();
  v0[108] = v3;
  *v3 = v0;
  v3[1] = EncoreConversation.accept(request:);
  v4 = v0[70];
  v5 = v0[67];

  return MEMORY[0x1EEE6DE38](v4, 0, 0, 0xD000000000000015, 0x80000001DCA826F0, closure #1 in EncoreEngine.asyncPushEvent(flow:)partial apply, v2, v5);
}

{
  v2 = *v1;
  *(*v1 + 872) = v0;

  if (v0)
  {
    v3 = EncoreConversation.accept(request:);
    v4 = 0;
  }

  else
  {
    v5 = *(v2 + 832);

    v3 = EncoreConversation.accept(request:);
    v4 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v3, v4, 0);
}

{
  outlined init with take of RequestContinuation(v0[70], v0[71], type metadata accessor for RequestContinuation);
  __swift_project_boxed_opaque_existential_1(v0 + 27, v0[30]);
  if (ActingFlow.isAdaptedFlow.getter())
  {
    v1 = swift_task_alloc();
    v0[110] = v1;
    *v1 = v0;
    v1[1] = EncoreConversation.accept(request:);
    v2 = v0[78];
    v3 = v0[69];
    v4 = v0[60];

    return EncoreEngine.asyncAcceptEvent(request:context:)(v3, v4, v2);
  }

  else
  {
    v6 = v0[78];
    v7 = v0[77];
    v8 = v0[76];
    v9 = v0[66];
    v10 = v0[65];
    v11 = v0[64];
    v12 = v0[61];
    Input.parse.getter();
    v13 = Parse.usoTasks.getter();
    (*(v10 + 8))(v9, v11);
    (*(v7 + 8))(v6, v8);
    outlined destroy of ReferenceResolutionClientProtocol?((v0 + 12), &_s11SiriKitFlow06ActingC0_pSgMd, &_s11SiriKitFlow06ActingC0_pSgMR);
    *(v12 + OBJC_IVAR____TtC14SiriKitRuntime18EncoreConversation_tasks) = v13;

    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 27);
    outlined init with copy of EncoreEngineEvent(v0[71], v0[63], type metadata accessor for UserInputResult);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v14 = v0[105];
      v15 = v0[93];
      v16 = v0[71];
      v17 = v0[60];
      v18 = v0[61];
      v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A7RequestV7request_AA0D12ContinuationV12continuationtMd, &_s14SiriKitRuntime0A7RequestV7request_AA0D12ContinuationV12continuationtMR) + 48);
      outlined init with copy of EncoreEngineEvent(v17, v15, type metadata accessor for SiriRequest);
      outlined init with copy of EncoreEngineEvent(v16, v15 + v19, type metadata accessor for RequestContinuation);
      swift_storeEnumTagMultiPayload();
      swift_beginAccess();
      outlined assign with take of EncoreConversation.State(v15, v18 + v14);
      swift_endAccess();
    }

    else
    {
      outlined destroy of EncoreConversation.State(v0[63], type metadata accessor for UserInputResult);
    }

    v20 = v0[71];
    outlined init with copy of EncoreEngineEvent(v20, v0[59], type metadata accessor for UserInputResult);
    outlined destroy of EncoreConversation.State(v20, type metadata accessor for RequestContinuation);

    v21 = v0[1];

    return v21();
  }
}

{
  v1 = *(v0 + 832);

  return MEMORY[0x1EEE6DFA0](EncoreConversation.accept(request:), v1, 0);
}

{
  (*(v0[77] + 8))(v0[78], v0[76]);
  outlined destroy of ReferenceResolutionClientProtocol?((v0 + 12), &_s11SiriKitFlow06ActingC0_pSgMd, &_s11SiriKitFlow06ActingC0_pSgMR);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 27);

  v1 = v0[1];

  return v1();
}

{
  v1 = *(*v0 + 832);

  return MEMORY[0x1EEE6DFA0](EncoreConversation.accept(request:), v1, 0);
}

{
  v1 = v0[71];
  v2 = v0[69];
  outlined destroy of EncoreConversation.State(v1, type metadata accessor for RequestContinuation);
  outlined init with take of RequestContinuation(v2, v1, type metadata accessor for RequestContinuation);
  v3 = v0[78];
  v4 = v0[77];
  v5 = v0[76];
  v6 = v0[66];
  v7 = v0[65];
  v8 = v0[64];
  v9 = v0[61];
  Input.parse.getter();
  v10 = Parse.usoTasks.getter();
  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v3, v5);
  outlined destroy of ReferenceResolutionClientProtocol?((v0 + 12), &_s11SiriKitFlow06ActingC0_pSgMd, &_s11SiriKitFlow06ActingC0_pSgMR);
  *(v9 + OBJC_IVAR____TtC14SiriKitRuntime18EncoreConversation_tasks) = v10;

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 27);
  outlined init with copy of EncoreEngineEvent(v0[71], v0[63], type metadata accessor for UserInputResult);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v11 = v0[105];
    v12 = v0[93];
    v13 = v0[71];
    v14 = v0[60];
    v15 = v0[61];
    v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A7RequestV7request_AA0D12ContinuationV12continuationtMd, &_s14SiriKitRuntime0A7RequestV7request_AA0D12ContinuationV12continuationtMR) + 48);
    outlined init with copy of EncoreEngineEvent(v14, v12, type metadata accessor for SiriRequest);
    outlined init with copy of EncoreEngineEvent(v13, v12 + v16, type metadata accessor for RequestContinuation);
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    outlined assign with take of EncoreConversation.State(v12, v15 + v11);
    swift_endAccess();
  }

  else
  {
    outlined destroy of EncoreConversation.State(v0[63], type metadata accessor for UserInputResult);
  }

  v17 = v0[71];
  outlined init with copy of EncoreEngineEvent(v17, v0[59], type metadata accessor for UserInputResult);
  outlined destroy of EncoreConversation.State(v17, type metadata accessor for RequestContinuation);

  v18 = v0[1];

  return v18();
}

{
  if (*(v0 + 944) == 1)
  {
    v1 = swift_task_alloc();
    *(v0 + 896) = v1;
    *v1 = v0;
    v1[1] = EncoreConversation.accept(request:);
    v2 = *(v0 + 480);

    return EncoreConversation.attemptCorrection(on:)(v0 + 336, v2);
  }

  else
  {
    v4 = swift_task_alloc();
    *(v0 + 936) = v4;
    *v4 = v0;
    v4[1] = EncoreConversation.accept(request:);
    v5 = *(v0 + 624);
    v6 = *(v0 + 568);
    v7 = *(v0 + 480);

    return EncoreEngine.asyncAcceptEvent(request:context:)(v6, v7, v5);
  }
}

{
  v1 = *(*v0 + 832);

  return MEMORY[0x1EEE6DFA0](EncoreConversation.accept(request:), v1, 0);
}

{
  if (*(v0 + 360))
  {
    v1 = *(v0 + 488);
    outlined init with take of ReferenceResolutionClientProtocol((v0 + 336), v0 + 296);
    *(v0 + 904) = *(v1 + 24);

    return MEMORY[0x1EEE6DFA0](EncoreConversation.accept(request:), 0, 0);
  }

  else
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v0 + 336, &_s11SiriKitFlow06ActingC0_pSgMd, &_s11SiriKitFlow06ActingC0_pSgMR);
    v2 = swift_task_alloc();
    *(v0 + 936) = v2;
    *v2 = v0;
    v2[1] = EncoreConversation.accept(request:);
    v3 = *(v0 + 624);
    v4 = *(v0 + 568);
    v5 = *(v0 + 480);

    return EncoreEngine.asyncAcceptEvent(request:context:)(v4, v5, v3);
  }
}

{
  v1 = v0[113];
  v2 = swift_task_alloc();
  v0[114] = v2;
  *(v2 + 16) = v0 + 37;
  *(v2 + 24) = v1;
  v3 = swift_task_alloc();
  v0[115] = v3;
  *v3 = v0;
  v3[1] = EncoreConversation.accept(request:);
  v4 = v0[68];
  v5 = v0[67];

  return MEMORY[0x1EEE6DE38](v4, 0, 0, 0xD000000000000015, 0x80000001DCA826F0, partial apply for closure #1 in EncoreEngine.asyncPushEvent(flow:), v2, v5);
}

{
  v2 = *v1;
  *(*v1 + 928) = v0;

  if (v0)
  {
    v3 = EncoreConversation.accept(request:);
    v4 = 0;
  }

  else
  {
    v5 = *(v2 + 832);

    v3 = EncoreConversation.accept(request:);
    v4 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v3, v4, 0);
}

{
  v1 = v0[71];
  v2 = v0[68];
  (*(v0[77] + 8))(v0[78], v0[76]);
  outlined destroy of ReferenceResolutionClientProtocol?((v0 + 12), &_s11SiriKitFlow06ActingC0_pSgMd, &_s11SiriKitFlow06ActingC0_pSgMR);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 37);
  outlined init with take of RequestContinuation(v2, v1, type metadata accessor for RequestContinuation);
  outlined init with copy of EncoreEngineEvent(v0[71], v0[63], type metadata accessor for UserInputResult);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v3 = v0[105];
    v4 = v0[93];
    v5 = v0[71];
    v6 = v0[60];
    v7 = v0[61];
    v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A7RequestV7request_AA0D12ContinuationV12continuationtMd, &_s14SiriKitRuntime0A7RequestV7request_AA0D12ContinuationV12continuationtMR) + 48);
    outlined init with copy of EncoreEngineEvent(v6, v4, type metadata accessor for SiriRequest);
    outlined init with copy of EncoreEngineEvent(v5, v4 + v8, type metadata accessor for RequestContinuation);
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    outlined assign with take of EncoreConversation.State(v4, v7 + v3);
    swift_endAccess();
  }

  else
  {
    outlined destroy of EncoreConversation.State(v0[63], type metadata accessor for UserInputResult);
  }

  v9 = v0[71];
  outlined init with copy of EncoreEngineEvent(v9, v0[59], type metadata accessor for UserInputResult);
  outlined destroy of EncoreConversation.State(v9, type metadata accessor for RequestContinuation);

  v10 = v0[1];

  return v10();
}

{
  v1 = *(v0 + 832);

  return MEMORY[0x1EEE6DFA0](EncoreConversation.accept(request:), v1, 0);
}

{
  (*(v0[77] + 8))(v0[78], v0[76]);
  outlined destroy of ReferenceResolutionClientProtocol?((v0 + 12), &_s11SiriKitFlow06ActingC0_pSgMd, &_s11SiriKitFlow06ActingC0_pSgMR);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 37);

  v1 = v0[1];

  return v1();
}

{
  v1 = *(*v0 + 832);

  return MEMORY[0x1EEE6DFA0](EncoreConversation.accept(request:), v1, 0);
}

{
  (*(v0[77] + 8))(v0[78], v0[76]);
  outlined destroy of ReferenceResolutionClientProtocol?((v0 + 12), &_s11SiriKitFlow06ActingC0_pSgMd, &_s11SiriKitFlow06ActingC0_pSgMR);
  outlined init with copy of EncoreEngineEvent(v0[71], v0[63], type metadata accessor for UserInputResult);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v1 = v0[105];
    v2 = v0[93];
    v3 = v0[71];
    v4 = v0[60];
    v5 = v0[61];
    v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A7RequestV7request_AA0D12ContinuationV12continuationtMd, &_s14SiriKitRuntime0A7RequestV7request_AA0D12ContinuationV12continuationtMR) + 48);
    outlined init with copy of EncoreEngineEvent(v4, v2, type metadata accessor for SiriRequest);
    outlined init with copy of EncoreEngineEvent(v3, v2 + v6, type metadata accessor for RequestContinuation);
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    outlined assign with take of EncoreConversation.State(v2, v5 + v1);
    swift_endAccess();
  }

  else
  {
    outlined destroy of EncoreConversation.State(v0[63], type metadata accessor for UserInputResult);
  }

  v7 = v0[71];
  outlined init with copy of EncoreEngineEvent(v7, v0[59], type metadata accessor for UserInputResult);
  outlined destroy of EncoreConversation.State(v7, type metadata accessor for RequestContinuation);

  v8 = v0[1];

  return v8();
}

uint64_t EncoreConversation.accept(request:)(char a1)
{
  v2 = *(*v1 + 832);
  *(*v1 + 944) = a1;

  return MEMORY[0x1EEE6DFA0](EncoreConversation.accept(request:), v2, 0);
}

uint64_t EncoreEngine.asyncPushEvent(flow:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](EncoreEngine.asyncPushEvent(flow:), 0, 0);
}

uint64_t EncoreEngine.asyncPushEvent(flow:)()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *(v1 + 16) = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  v3 = type metadata accessor for RequestContinuation(0);
  *v2 = v0;
  v2[1] = EncoreEngine.asyncPushEvent(flow:);
  v4 = *(v0 + 16);

  return MEMORY[0x1EEE6DE38](v4, 0, 0, 0xD000000000000015, 0x80000001DCA826F0, closure #1 in EncoreEngine.asyncPushEvent(flow:)partial apply, v1, v3);
}

{
  v2 = *v1;
  *(v2 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](EncoreEngine.asyncPushEvent(flow:), 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t EncoreEngine.asyncAcceptEvent(request:context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = type metadata accessor for SiriRequest(0);
  v4[7] = swift_task_alloc();
  v5 = type metadata accessor for Parse();
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();
  v6 = type metadata accessor for Parse.DirectInvocation();
  v4[11] = v6;
  v4[12] = *(v6 - 8);
  v4[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](EncoreEngine.asyncAcceptEvent(request:context:), 0, 0);
}

uint64_t EncoreEngine.asyncAcceptEvent(request:context:)(double a1)
{
  v44 = v1;
  v3 = v1 + 10;
  v2 = v1[10];
  v4 = v1 + 9;
  v5 = v1[9];
  v7 = v1 + 8;
  v6 = v1[8];
  Input.parse.getter();
  if ((*(v5 + 88))(v2, v6) == *MEMORY[0x1E69D0158] && (v3 = v1 + 13, v8 = v1[13], v4 = v1 + 12, v9 = v1[12], v7 = v1 + 11, v10 = v1[11], v11 = v1[10], (*(v1[9] + 96))(v11, v1[8]), v12 = (*(v9 + 32))(v8, v11, v10), v13 = Parse.DirectInvocation.toSnippetEvent.getter(v12), (v1[14] = v13) != 0))
  {
    v14 = v13;
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static Logger.executor);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_1DC659000, v16, v17, "[EncoreConversation] asyncAcceptEvent DirectInvocation", v18, 2u);
      MEMORY[0x1E12A2F50](v18, -1, -1);
    }

    v20 = v1[4];
    v19 = v1[5];

    v21 = swift_task_alloc();
    v1[15] = v21;
    v21[2] = v19;
    v21[3] = v14;
    v21[4] = v20;
    v22 = swift_task_alloc();
    v1[16] = v22;
    v23 = type metadata accessor for RequestContinuation(0);
    *v22 = v1;
    v22[1] = EncoreEngine.asyncAcceptEvent(request:context:);
    v24 = v1[2];
    v25 = partial apply for closure #1 in EncoreEngine.asyncAcceptEvent(request:context:);
  }

  else
  {
    (*(*v4 + 8))(*v3, *v7);
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v26 = v1[7];
    v27 = v1[3];
    v28 = type metadata accessor for Logger();
    __swift_project_value_buffer(v28, static Logger.executor);
    outlined init with copy of EncoreEngineEvent(v27, v26, type metadata accessor for SiriRequest);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.debug.getter();
    v31 = os_log_type_enabled(v29, v30);
    v32 = v1[7];
    if (v31)
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v43 = v34;
      *v33 = 136315138;
      type metadata accessor for Input();
      lazy protocol witness table accessor for type ConversationActor and conformance ConversationActor(&lazy protocol witness table cache variable for type Input and conformance Input, MEMORY[0x1E69D0100], MEMORY[0x1E69D0118]);
      v35 = dispatch thunk of CustomStringConvertible.description.getter();
      v37 = v36;
      outlined destroy of EncoreConversation.State(v32, type metadata accessor for SiriRequest);
      v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v37, &v43);

      *(v33 + 4) = v38;
      _os_log_impl(&dword_1DC659000, v29, v30, "[EncoreConversation] default asyncAcceptEvent %s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v34);
      MEMORY[0x1E12A2F50](v34, -1, -1);
      MEMORY[0x1E12A2F50](v33, -1, -1);
    }

    else
    {

      outlined destroy of EncoreConversation.State(v32, type metadata accessor for SiriRequest);
    }

    v39 = v1[5];
    v21 = swift_task_alloc();
    v1[17] = v21;
    v40 = *(v1 + 3);
    v21[2] = v39;
    *(v21 + 3) = v40;
    v41 = swift_task_alloc();
    v1[18] = v41;
    v23 = type metadata accessor for RequestContinuation(0);
    *v41 = v1;
    v41[1] = EncoreEngine.asyncAcceptEvent(request:context:);
    v24 = v1[2];
    v25 = partial apply for closure #2 in EncoreEngine.asyncAcceptEvent(request:context:);
  }

  return MEMORY[0x1EEE6DDE0](v24, 0, 0, 0xD000000000000022, 0x80000001DCA82710, v25, v21, v23);
}

uint64_t EncoreEngine.asyncAcceptEvent(request:context:)()
{

  return MEMORY[0x1EEE6DFA0](EncoreEngine.asyncAcceptEvent(request:context:), 0, 0);
}

{
  v1 = *(v0 + 104);
  v2 = *(v0 + 88);
  v3 = *(v0 + 96);

  (*(v3 + 8))(v1, v2);

  v4 = *(v0 + 8);

  return v4();
}

{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t EncoreConversation.isEmpty()()
{
  *(v1 + 16) = v0;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v2 = static ConversationActor.shared;
  *(v1 + 24) = static ConversationActor.shared;

  return MEMORY[0x1EEE6DFA0](EncoreConversation.isEmpty(), v2, 0);
}

{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = EncoreConversation.isEmpty();

  return EncoreEngine.isEmpty()();
}

{
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.executor);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 40);
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v4;
    _os_log_impl(&dword_1DC659000, v2, v3, "[EncoreConversation] Is empty %{BOOL}d", v5, 8u);
    MEMORY[0x1E12A2F50](v5, -1, -1);
  }

  v6 = *(v0 + 8);
  v7 = *(v0 + 40);

  return v6(v7);
}

uint64_t EncoreConversation.isEmpty()(char a1)
{
  v2 = *(*v1 + 24);
  *(*v1 + 40) = a1;

  return MEMORY[0x1EEE6DFA0](EncoreConversation.isEmpty(), v2, 0);
}

uint64_t EncoreConversation.attemptCorrection(on:)(uint64_t a1, uint64_t a2)
{
  v3[23] = a2;
  v3[24] = v2;
  v3[22] = a1;
  v4 = type metadata accessor for AcceptanceType();
  v3[25] = v4;
  v3[26] = *(v4 - 8);
  v3[27] = swift_task_alloc();
  v5 = type metadata accessor for Acceptance();
  v3[28] = v5;
  v3[29] = *(v5 - 8);
  v3[30] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v6 = static ConversationActor.shared;

  return MEMORY[0x1EEE6DFA0](EncoreConversation.attemptCorrection(on:), v6, 0);
}

uint64_t EncoreConversation.attemptCorrection(on:)()
{
  v1 = v0[24];
  v2 = OBJC_IVAR____TtC14SiriKitRuntime18EncoreConversation_correctionsEngine;
  outlined init with copy of ReferenceResolutionClientProtocol(v1 + OBJC_IVAR____TtC14SiriKitRuntime18EncoreConversation_correctionsEngine, (v0 + 8));
  v3 = v0[11];
  v4 = v0[12];
  __swift_project_boxed_opaque_existential_1(v0 + 8, v3);
  v5 = (*(v4 + 16))(v3, v4);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 8);
  if (v5)
  {
    v6 = v0[26];
    v32 = v0[27];
    v33 = v0[25];
    v7 = v0[24];
    v31 = v0[23];
    outlined init with copy of ReferenceResolutionClientProtocol(v1 + v2, (v0 + 13));
    v8 = v0[16];
    v30 = v0[17];
    __swift_project_boxed_opaque_existential_1(v0 + 13, v8);
    v9 = *(v7 + 32);
    v29 = *(v7 + 40);
    v0[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0C0PAAE08toActingC0QryFQOy0aB7Runtime0a11CorrectionsC0C_Qo_Md, &_s11SiriKitFlow0C0PAAE08toActingC0QryFQOy0aB7Runtime0a11CorrectionsC0C_Qo_MR);
    v10 = type metadata accessor for SiriCorrectionsFlow(255);
    v11 = lazy protocol witness table accessor for type ConversationActor and conformance ConversationActor(&lazy protocol witness table cache variable for type SiriCorrectionsFlow and conformance SiriCorrectionsFlow, type metadata accessor for SiriCorrectionsFlow, &protocol conformance descriptor for SiriCorrectionsFlow);
    v0[18] = v10;
    v0[19] = v11;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v0[20] = v10;
    v0[6] = OpaqueTypeConformance2;
    v0[21] = v11;
    v0[7] = swift_getOpaqueTypeConformance2();
    __swift_allocate_boxed_opaque_existential_0(v0 + 2);
    CorrectionsEngine.getCorrectionFlow(pluginId:)(v9, v29, v8, v30);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 13);
    type metadata accessor for SiriEnvironment();
    v13 = v0 + 2;
    v14 = swift_task_alloc();
    *(v14 + 16) = v0 + 2;
    *(v14 + 24) = v31;
    static SiriEnvironment.withTaskLocalEnvironment<A>(_:_:)();

    Acceptance.type.getter();
    v15 = (*(v6 + 88))(v32, v33);
    v16 = v0[30];
    v17 = v0[29];
    v19 = v0[27];
    v18 = v0[28];
    v21 = v0[25];
    v20 = v0[26];
    v22 = v0[22];
    if (v15 == *MEMORY[0x1E69CFE28])
    {
      (*(v17 + 8))(v0[30], v0[28]);
      (*(v20 + 8))(v19, v21);
      *(v22 + 32) = 0;
      *v22 = 0u;
      *(v22 + 16) = 0u;
    }

    else
    {
      (*(v20 + 8))(v0[27], v0[25]);
      v34 = *(v0 + 5);
      v24 = v0[5];
      v25 = __swift_project_boxed_opaque_existential_1(v13, v24);
      *(v22 + 24) = v34;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v22);
      (*(*(v24 - 8) + 16))(boxed_opaque_existential_0, v25, v24);
      (*(v17 + 8))(v16, v18);
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v13);
  }

  else
  {
    v23 = v0[22];
    *(v23 + 32) = 0;
    *v23 = 0u;
    *(v23 + 16) = 0u;
  }

  v27 = v0[1];

  return v27();
}

uint64_t EncoreConversation.prepare()()
{
  v1[8] = v0;
  v1[9] = type metadata accessor for EncoreConversation.State(0);
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  type metadata accessor for RequestContinuation(0);
  v1[12] = swift_task_alloc();
  type metadata accessor for SiriRequest(0);
  v1[13] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v2 = static ConversationActor.shared;

  return MEMORY[0x1EEE6DFA0](EncoreConversation.prepare(), v2, 0);
}

{
  v34 = v0;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.executor);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1DC659000, v2, v3, "[EncoreConversation] Prepare", v4, 2u);
    MEMORY[0x1E12A2F50](v4, -1, -1);
  }

  v5 = v0[11];
  v6 = v0[8];

  v7 = OBJC_IVAR____TtC14SiriKitRuntime18EncoreConversation_state;
  swift_beginAccess();
  outlined init with copy of EncoreEngineEvent(v6 + v7, v5, type metadata accessor for EncoreConversation.State);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = v0[12];
    v9 = v0[13];
    v10 = v0[10];
    v11 = v0[11];
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A7RequestV7request_AA0D12ContinuationV12continuationtMd, &_s14SiriKitRuntime0A7RequestV7request_AA0D12ContinuationV12continuationtMR);
    v32 = v7;
    v13 = v6;
    v14 = *(v12 + 48);
    outlined init with take of RequestContinuation(v11, v9, type metadata accessor for SiriRequest);
    outlined init with take of RequestContinuation(v11 + v14, v8, type metadata accessor for RequestContinuation);
    v15 = *(v12 + 48);
    outlined init with take of RequestContinuation(v9, v10, type metadata accessor for SiriRequest);
    outlined init with take of RequestContinuation(v8, v10 + v15, type metadata accessor for RequestContinuation);
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    outlined assign with take of EncoreConversation.State(v10, v13 + v32);
    swift_endAccess();

    v16 = v0[1];
  }

  else
  {
    outlined destroy of EncoreConversation.State(v0[11], type metadata accessor for EncoreConversation.State);

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = v0[10];
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v33[0] = v21;
      *v20 = 136315138;
      outlined init with copy of EncoreEngineEvent(v6 + v7, v19, type metadata accessor for EncoreConversation.State);
      v22 = EncoreConversation.State.description.getter();
      v24 = v23;
      outlined destroy of EncoreConversation.State(v19, type metadata accessor for EncoreConversation.State);
      v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v24, v33);

      *(v20 + 4) = v25;
      _os_log_impl(&dword_1DC659000, v17, v18, "[EncoreConversation] Prepare failed. Invalid state %s.", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v21);
      MEMORY[0x1E12A2F50](v21, -1, -1);
      MEMORY[0x1E12A2F50](v20, -1, -1);
    }

    v26 = v0[10];
    v33[0] = 0;
    v33[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(39);

    strcpy(v33, "Invalid state ");
    HIBYTE(v33[1]) = -18;
    outlined init with copy of EncoreEngineEvent(v6 + v7, v26, type metadata accessor for EncoreConversation.State);
    v27 = EncoreConversation.State.description.getter();
    MEMORY[0x1E12A1580](v27);

    outlined destroy of EncoreConversation.State(v26, type metadata accessor for EncoreConversation.State);
    MEMORY[0x1E12A1580](0xD000000000000017, 0x80000001DCA82740);
    v28 = v33[0];
    v29 = v33[1];
    lazy protocol witness table accessor for type IllegalStateError and conformance IllegalStateError();
    swift_allocError();
    *v30 = v28;
    v30[1] = v29;
    swift_willThrow();

    v16 = v0[1];
  }

  return v16();
}

uint64_t EncoreConversation.commit()(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v2[10] = swift_task_alloc();
  v2[11] = type metadata accessor for EncoreConversation.State(0);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v3 = *(type metadata accessor for RequestContinuation(0) - 8);
  v2[14] = v3;
  v2[15] = *(v3 + 64);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v4 = *(type metadata accessor for SiriRequest(0) - 8);
  v2[18] = v4;
  v2[19] = *(v4 + 64);
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v5 = static ConversationActor.shared;
  v2[22] = static ConversationActor.shared;

  return MEMORY[0x1EEE6DFA0](EncoreConversation.commit(), v5, 0);
}

uint64_t EncoreConversation.commit()()
{
  v51 = v0;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.executor);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1DC659000, v2, v3, "[EncoreConversation] Commit", v4, 2u);
    MEMORY[0x1E12A2F50](v4, -1, -1);
  }

  v5 = v0[9];

  v6 = *(v5 + 16);
  OS_dispatch_semaphore.wait()();
  closure #1 in JetsamHelper.ensureJetsamTransaction()(v6);
  v7 = v0[13];
  v8 = v0[9];
  OS_dispatch_semaphore.signal()();
  v9 = OBJC_IVAR____TtC14SiriKitRuntime18EncoreConversation_state;
  swift_beginAccess();
  outlined init with copy of EncoreEngineEvent(v8 + v9, v7, type metadata accessor for EncoreConversation.State);
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    v10 = v0[21];
    v48 = v0[22];
    v11 = v0[20];
    v12 = v0[17];
    v46 = v0[19];
    v13 = v0[13];
    v44 = v0[14];
    v45 = v0[18];
    v49 = v0[12];
    v14 = v0[10];
    v43 = v0[16];
    v47 = v0[9];
    v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A7RequestV7request_AA0D12ContinuationV12continuationtMd, &_s14SiriKitRuntime0A7RequestV7request_AA0D12ContinuationV12continuationtMR) + 48);
    outlined init with take of RequestContinuation(v13, v10, type metadata accessor for SiriRequest);
    outlined init with take of RequestContinuation(v13 + v15, v12, type metadata accessor for RequestContinuation);
    v16 = type metadata accessor for TaskPriority();
    (*(*(v16 - 8) + 56))(v14, 1, 1, v16);
    outlined init with copy of EncoreEngineEvent(v10, v11, type metadata accessor for SiriRequest);
    outlined init with copy of EncoreEngineEvent(v12, v43, type metadata accessor for RequestContinuation);
    v17 = lazy protocol witness table accessor for type ConversationActor and conformance ConversationActor(&lazy protocol witness table cache variable for type ConversationActor and conformance ConversationActor, type metadata accessor for ConversationActor, &protocol conformance descriptor for ConversationActor);
    v18 = (*(v45 + 80) + 40) & ~*(v45 + 80);
    v19 = (v46 + *(v44 + 80) + v18) & ~*(v44 + 80);
    v20 = swift_allocObject();
    v20[2] = v48;
    v20[3] = v17;
    v20[4] = v47;
    outlined init with take of RequestContinuation(v11, v20 + v18, type metadata accessor for SiriRequest);
    outlined init with take of RequestContinuation(v43, v20 + v19, type metadata accessor for RequestContinuation);

    v21 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfC14SiriKitRuntime24ConversationCommitResultO_Tt2g5(0, 0, v14, &async function pointer to partial apply for closure #1 in EncoreConversation.commit(), v20);
    v0[23] = v21;
    *v49 = v21;
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();

    outlined assign with take of EncoreConversation.State(v49, v8 + v9);
    swift_endAccess();
    v22 = swift_task_alloc();
    v0[24] = v22;
    v23 = type metadata accessor for ConversationCommitResult(0);
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    *v22 = v0;
    v22[1] = EncoreConversation.commit();
    v25 = v0[8];
    v26 = MEMORY[0x1E69E7288];

    return MEMORY[0x1EEE6DA10](v25, v21, v23, v24, v26);
  }

  else
  {
    outlined destroy of EncoreConversation.State(v0[13], type metadata accessor for EncoreConversation.State);

    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = v0[12];
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v50[0] = v31;
      *v30 = 136315138;
      outlined init with copy of EncoreEngineEvent(v8 + v9, v29, type metadata accessor for EncoreConversation.State);
      v32 = EncoreConversation.State.description.getter();
      v34 = v33;
      outlined destroy of EncoreConversation.State(v29, type metadata accessor for EncoreConversation.State);
      v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v34, v50);

      *(v30 + 4) = v35;
      _os_log_impl(&dword_1DC659000, v27, v28, "[EncoreConversation] Commit failed. Invalid state %s.", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v31);
      MEMORY[0x1E12A2F50](v31, -1, -1);
      MEMORY[0x1E12A2F50](v30, -1, -1);
    }

    v36 = v0[12];
    v50[0] = 0;
    v50[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(38);

    strcpy(v50, "Invalid state ");
    HIBYTE(v50[1]) = -18;
    outlined init with copy of EncoreEngineEvent(v8 + v9, v36, type metadata accessor for EncoreConversation.State);
    v37 = EncoreConversation.State.description.getter();
    MEMORY[0x1E12A1580](v37);

    outlined destroy of EncoreConversation.State(v36, type metadata accessor for EncoreConversation.State);
    MEMORY[0x1E12A1580](0xD000000000000016, 0x80000001DCA82760);
    v38 = v50[0];
    v39 = v50[1];
    lazy protocol witness table accessor for type IllegalStateError and conformance IllegalStateError();
    swift_allocError();
    *v40 = v38;
    v40[1] = v39;
    swift_willThrow();

    v41 = v0[1];

    return v41();
  }
}

{
  v2 = *v1;
  *(*v1 + 200) = v0;

  v3 = *(v2 + 176);
  if (v0)
  {
    v4 = EncoreConversation.commit();
  }

  else
  {
    v4 = EncoreConversation.commit();
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

{
  v1 = v0[21];
  v2 = v0[17];

  outlined destroy of EncoreConversation.State(v2, type metadata accessor for RequestContinuation);
  outlined destroy of EncoreConversation.State(v1, type metadata accessor for SiriRequest);

  v3 = v0[1];

  return v3();
}

{
  v1 = v0[21];
  v2 = v0[17];

  outlined destroy of EncoreConversation.State(v2, type metadata accessor for RequestContinuation);
  outlined destroy of EncoreConversation.State(v1, type metadata accessor for SiriRequest);

  v3 = v0[1];

  return v3();
}

uint64_t closure #1 in EncoreConversation.commit()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[27] = a5;
  v6[28] = a6;
  v6[25] = a1;
  v6[26] = a4;
  v6[29] = type metadata accessor for EncoreConversation.State(0);
  v6[30] = swift_task_alloc();
  v6[31] = type metadata accessor for ConversationCommitResult(0);
  v6[32] = swift_task_alloc();
  v6[33] = swift_task_alloc();
  v7 = *(type metadata accessor for RequestContinuation(0) - 8);
  v6[34] = v7;
  v6[35] = *(v7 + 64);
  v6[36] = swift_task_alloc();
  v8 = type metadata accessor for ExecutionContext();
  v6[37] = v8;
  v6[38] = *(v8 - 8);
  v6[39] = swift_task_alloc();
  v6[40] = swift_task_alloc();
  v9 = type metadata accessor for ConversationContext();
  v6[41] = v9;
  v10 = *(v9 - 8);
  v6[42] = v10;
  v6[43] = *(v10 + 64);
  v6[44] = swift_task_alloc();
  v6[45] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v11 = static ConversationActor.shared;
  v6[46] = static ConversationActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in EncoreConversation.commit(), v11, 0);
}

uint64_t closure #1 in EncoreConversation.commit()()
{
  v2 = v0[39];
  v1 = v0[40];
  v3 = v0[37];
  v4 = v0[38];
  v5 = v0[26];
  v6 = v0[27];
  static OutputPublisherFactory.makeOutputPublisherAsync()();
  static AceService.currentAsync.getter();
  outlined init with copy of ReferenceResolutionClientProtocol((v0 + 2), (v0 + 12));
  outlined init with copy of ReferenceResolutionClientProtocol((v0 + 7), (v0 + 17));
  ExecutionContext.init(outputPublisher:aceServiceInvoker:)();
  (*(v4 + 16))(v2, v1, v3);
  ConversationContext.init(executionContext:)();
  (*(v4 + 8))(v1, v3);
  outlined destroy of SiriRequestContext(v0 + 2);
  v7 = OBJC_IVAR____TtC14SiriKitRuntime18EncoreConversation_taskObserver;
  v0[47] = OBJC_IVAR____TtC14SiriKitRuntime18EncoreConversation_taskObserver;
  v8 = (v5 + v7);
  v0[48] = *v8;
  v9 = v8[1];
  ObjectType = swift_getObjectType();
  v11 = *(v5 + 56);
  v12 = OBJC_IVAR____TtC14SiriKitRuntime18EncoreConversation_tasks;
  v0[49] = OBJC_IVAR____TtC14SiriKitRuntime18EncoreConversation_tasks;
  v13 = *(v5 + v12);
  v0[50] = v13;
  v14 = *v6;
  v15 = v6[1];
  v16 = *(v9 + 8);
  swift_unknownObjectRetain();

  v19 = (v16 + *v16);
  v17 = swift_task_alloc();
  v0[51] = v17;
  *v17 = v0;
  v17[1] = closure #1 in EncoreConversation.commit();

  return v19(v11, v13, v14, v15, ObjectType, v9);
}

{
  v1 = *(*v0 + 368);

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6DFA0](closure #1 in EncoreConversation.commit(), v1, 0);
}

{
  v2 = *v1;
  *(*v1 + 432) = v0;

  v3 = *(v2 + 368);
  if (v0)
  {
    v4 = closure #1 in EncoreConversation.commit();
  }

  else
  {
    v4 = closure #1 in EncoreConversation.commit();
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

{
  v1 = *(v0 + 200);
  if (*(v0 + 464) == 1)
  {
    outlined destroy of EncoreConversation.State(*(v0 + 200), type metadata accessor for ConversationCommitResult);

    v3 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v3 = *(*(v0 + 208) + *(v0 + 392));

    outlined destroy of EncoreConversation.State(v1, type metadata accessor for ConversationCommitResult);
    v2 = MEMORY[0x1E69E7CC0];
  }

  v4 = *(v0 + 256);
  v5 = *(v0 + 200);
  v6 = (*(v0 + 208) + *(v0 + 376));
  *v4 = v3;
  v4[1] = v2;
  swift_storeEnumTagMultiPayload();
  outlined init with take of RequestContinuation(v4, v5, type metadata accessor for ConversationCommitResult);
  *(v0 + 448) = *v6;
  v7 = v6[1];
  ObjectType = swift_getObjectType();
  v9 = *(v7 + 16);
  swift_unknownObjectRetain();
  v12 = (v9 + *v9);
  v10 = swift_task_alloc();
  *(v0 + 456) = v10;
  *v10 = v0;
  v10[1] = closure #1 in EncoreConversation.commit();

  return v12(ObjectType, v7);
}

{
  v1 = *(*v0 + 368);

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6DFA0](closure #1 in EncoreConversation.commit(), v1, 0);
}

{
  (*(v0[42] + 8))(v0[45], v0[41]);
  v1 = v0[30];
  v2 = v0[26];
  *(v1 + 32) = 0;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  swift_storeEnumTagMultiPayload();
  v3 = OBJC_IVAR____TtC14SiriKitRuntime18EncoreConversation_state;
  swift_beginAccess();
  outlined assign with take of EncoreConversation.State(v1, v2 + v3);
  swift_endAccess();

  v4 = v0[1];

  return v4();
}

{
  (*(v0[42] + 8))(v0[45], v0[41]);

  v1 = v0[1];

  return v1();
}

uint64_t closure #1 in EncoreConversation.commit()(double a1)
{
  v2 = v1[44];
  v3 = v1[45];
  v4 = v1[42];
  v5 = v1[41];
  v7 = v1[35];
  v6 = v1[36];
  v8 = v1[34];
  v9 = v1[26];
  outlined init with copy of EncoreEngineEvent(v1[28], v6, type metadata accessor for RequestContinuation);
  (*(v4 + 16))(v2, v3, v5);
  v10 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v11 = (v7 + *(v4 + 80) + v10) & ~*(v4 + 80);
  v12 = swift_allocObject();
  v1[52] = v12;
  *(v12 + 16) = v9;
  outlined init with take of RequestContinuation(v6, v12 + v10, type metadata accessor for RequestContinuation);
  (*(v4 + 32))(v12 + v11, v2, v5);

  v13 = swift_task_alloc();
  v1[53] = v13;
  *v13 = v1;
  v13[1] = closure #1 in EncoreConversation.commit();
  v14 = v1[27];
  v15 = v1[25];

  return EncoreConversation.runAndLogIntentFinalExecutionContext(request:finalExecution:)(v15, v14, &async function pointer to partial apply for closure #1 in closure #1 in EncoreConversation.commit(), v12);
}

{
  outlined init with copy of EncoreEngineEvent(v1[25], v1[33], type metadata accessor for ConversationCommitResult);
  if (swift_getEnumCaseMultiPayload())
  {
    v2 = v1[33];
    (*(v1[42] + 8))(v1[45], v1[41]);
    outlined destroy of EncoreConversation.State(v2, type metadata accessor for ConversationCommitResult);
    v3 = v1[30];
    v4 = v1[26];
    *(v3 + 32) = 0;
    *v3 = 0u;
    *(v3 + 16) = 0u;
    swift_storeEnumTagMultiPayload();
    v5 = OBJC_IVAR____TtC14SiriKitRuntime18EncoreConversation_state;
    swift_beginAccess();
    outlined assign with take of EncoreConversation.State(v3, v4 + v5);
    swift_endAccess();

    v6 = v1[1];

    return v6();
  }

  else
  {
    outlined destroy of EncoreConversation.State(v1[33], type metadata accessor for ConversationCommitResult);
    v8 = swift_task_alloc();
    v1[55] = v8;
    *v8 = v1;
    v8[1] = closure #1 in EncoreConversation.commit();

    return EncoreConversation.isEmpty()();
  }
}

uint64_t closure #1 in EncoreConversation.commit()(char a1)
{
  v2 = *(*v1 + 368);
  *(*v1 + 464) = a1;

  return MEMORY[0x1EEE6DFA0](closure #1 in EncoreConversation.commit(), v2, 0);
}

uint64_t closure #1 in closure #1 in EncoreConversation.commit()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v5 = static ConversationActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in EncoreConversation.commit(), v5, 0);
}

uint64_t closure #1 in closure #1 in EncoreConversation.commit()()
{
  *(v0 + 48) = *(*(v0 + 24) + 24);
  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in EncoreConversation.commit(), 0, 0);
}

{
  v1 = *(v0 + 48);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  v3 = *(v0 + 32);
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  v5 = type metadata accessor for ConversationCommitResult(0);
  *v4 = v0;
  v4[1] = closure #1 in AceServiceInvokerImpl.createSerialSubmissionTask(_:options:executionSource:);
  v6 = *(v0 + 16);

  return MEMORY[0x1EEE6DE38](v6, 0, 0, 0xD000000000000027, 0x80000001DCA82780, closure #1 in EncoreEngine.asyncCommitEvent(continuation:context:)partial apply, v2, v5);
}

uint64_t EncoreEngine.asyncCommitEvent(continuation:context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](EncoreEngine.asyncCommitEvent(continuation:context:), 0, 0);
}

uint64_t EncoreEngine.asyncCommitEvent(continuation:context:)()
{
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  v3 = *(v0 + 24);
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  v5 = type metadata accessor for ConversationCommitResult(0);
  *v4 = v0;
  v4[1] = static AsyncTaskUtils.withCheckedRethrowingContinuation<A>(body:);
  v6 = *(v0 + 16);

  return MEMORY[0x1EEE6DE38](v6, 0, 0, 0xD000000000000027, 0x80000001DCA82780, partial apply for closure #1 in EncoreEngine.asyncCommitEvent(continuation:context:), v2, v5);
}

uint64_t EncoreConversation.runAndLogIntentFinalExecutionContext(request:finalExecution:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v5[7] = type metadata accessor for ConversationCommitResult(0);
  v5[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v5[9] = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  v5[10] = v6;
  v5[11] = *(v6 - 8);
  v5[12] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v7 = static ConversationActor.shared;
  v5[13] = static ConversationActor.shared;

  return MEMORY[0x1EEE6DFA0](EncoreConversation.runAndLogIntentFinalExecutionContext(request:finalExecution:), v7, 0);
}

uint64_t EncoreConversation.runAndLogIntentFinalExecutionContext(request:finalExecution:)()
{
  v1 = v0[6];
  v2 = v0[3];
  v0[14] = *v2;
  v0[15] = v2[1];
  type metadata accessor for SiriRequest(0);
  Input.identifier.getter();
  v0[16] = *(v1 + 24);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v3 = static FlowActor.shared;

  return MEMORY[0x1EEE6DFA0](EncoreConversation.runAndLogIntentFinalExecutionContext(request:finalExecution:), v3, 0);
}

{
  v1 = v0[13];
  v0[17] = (*(**(v0[16] + 24) + 160))();

  return MEMORY[0x1EEE6DFA0](EncoreConversation.runAndLogIntentFinalExecutionContext(request:finalExecution:), v1, 0);
}

{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[9];
  v4 = v0[10];
  v5 = v0[4];
  v0[18] = type metadata accessor for ConversationSELFHelper();
  static ConversationSELFHelper.shared.getter();
  v6 = *(v2 + 16);
  v0[19] = v6;
  v0[20] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v3, v1, v4);
  v7 = *(v2 + 56);
  v0[21] = v7;
  v0[22] = (v2 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v7(v3, 0, 1, v4);
  dispatch thunk of ConversationSELFHelper.emitFinalExecutionContextStarted(rcId:hypothesisId:fromPlugin:stackDepth:)();

  outlined destroy of ReferenceResolutionClientProtocol?(v3, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v11 = (v5 + *v5);
  v8 = swift_task_alloc();
  v0[23] = v8;
  *v8 = v0;
  v8[1] = EncoreConversation.runAndLogIntentFinalExecutionContext(request:finalExecution:);
  v9 = v0[2];

  return v11(v9);
}

{
  v2 = *v1;
  *(*v1 + 192) = v0;

  v3 = *(v2 + 104);
  if (v0)
  {
    v4 = EncoreConversation.runAndLogIntentFinalExecutionContext(request:finalExecution:);
  }

  else
  {
    v4 = EncoreConversation.runAndLogIntentFinalExecutionContext(request:finalExecution:);
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t EncoreConversation.runAndLogIntentFinalExecutionContext(request:finalExecution:)(double a1)
{
  v16 = v1[21];
  v2 = v1[19];
  v4 = v1[11];
  v3 = v1[12];
  v6 = v1[9];
  v5 = v1[10];
  outlined init with copy of EncoreEngineEvent(v1[2], v1[8], type metadata accessor for ConversationCommitResult);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  static ConversationSELFHelper.shared.getter();
  v2(v6, v3, v5);
  v16(v6, 0, 1, v5);
  v8 = (v4 + 8);
  v9 = v1[12];
  v11 = v1[9];
  v10 = v1[10];
  v12 = v1[8];
  if (EnumCaseMultiPayload == 1)
  {
    dispatch thunk of ConversationSELFHelper.emitFinalExecutionContextFailed(rcId:hypothesisId:reason:)();

    outlined destroy of ReferenceResolutionClientProtocol?(v11, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    (*v8)(v9, v10);
    v13 = type metadata accessor for FlowUnhandledReason();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  else
  {
    dispatch thunk of ConversationSELFHelper.emitFinalExecutionContextEnded(rcId:hypothesisId:)();

    outlined destroy of ReferenceResolutionClientProtocol?(v11, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    (*v8)(v9, v10);
    outlined destroy of EncoreConversation.State(v12, type metadata accessor for ConversationCommitResult);
  }

  v14 = v1[1];

  return v14();
}

uint64_t EncoreConversation.runAndLogIntentFinalExecutionContext(request:finalExecution:)(uint64_t a1)
{
  v9 = v1[21];
  v2 = v1[19];
  v4 = v1[11];
  v3 = v1[12];
  v6 = v1[9];
  v5 = v1[10];
  static ConversationSELFHelper.shared.getter();
  v2(v6, v3, v5);
  v9(v6, 0, 1, v5);
  dispatch thunk of ConversationSELFHelper.emitFinalExecutionContextFailed(rcId:hypothesisId:reason:)();

  outlined destroy of ReferenceResolutionClientProtocol?(v6, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  swift_willThrow();
  (*(v4 + 8))(v3, v5);

  v7 = v1[1];

  return v7();
}

uint64_t EncoreConversation.stackCount.getter()
{
  *(v1 + 16) = v0;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v2 = static ConversationActor.shared;

  return MEMORY[0x1EEE6DFA0](EncoreConversation.stackCount.getter, v2, 0);
}

{
  *(v0 + 24) = *(*(v0 + 16) + 24);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = static FlowActor.shared;

  return MEMORY[0x1EEE6DFA0](EncoreConversation.stackCount.getter, v1, 0);
}

{
  v1 = (*(**(*(v0 + 24) + 24) + 160))();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t EncoreConversation.isCorrectable()()
{
  *(v1 + 56) = v0;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v2 = static ConversationActor.shared;

  return MEMORY[0x1EEE6DFA0](EncoreConversation.isCorrectable(), v2, 0);
}

{
  outlined init with copy of ReferenceResolutionClientProtocol(v0[7] + OBJC_IVAR____TtC14SiriKitRuntime18EncoreConversation_correctionsEngine, (v0 + 2));
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = (*(v2 + 16))(v1, v2);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v4 = v0[1];

  return v4(v3 & 1);
}

uint64_t closure #1 in EncoreConversation.attemptCorrection(on:)(void *a1, uint64_t a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for SiriRequest(0);
  return dispatch thunk of InputAccepting.accept(input:)();
}

uint64_t EncoreConversation.paraphrase()(uint64_t a1)
{
  *(v1 + 16) = a1;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v2 = static ConversationActor.shared;

  return MEMORY[0x1EEE6DFA0](EncoreConversation.paraphrase(), v2, 0);
}

uint64_t EncoreConversation.paraphrase()()
{
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.executor);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1DC659000, v2, v3, "[EncoreConversation] Paraphrase", v4, 2u);
    MEMORY[0x1E12A2F50](v4, -1, -1);
  }

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1DC659000, v5, v6, "[EncoreConversation] Paraphrasing not implemented yet, will return an empty paraphrase.", v7, 2u);
    MEMORY[0x1E12A2F50](v7, -1, -1);
  }

  static ActionParaphrase.noParaphrase()();
  type metadata accessor for ConversationParaphraseResult(0);
  swift_storeEnumTagMultiPayload();
  v8 = *(v0 + 8);

  return v8();
}

uint64_t EncoreConversation.flexibleExecutionSupport()(uint64_t a1)
{
  *(v1 + 24) = a1;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v2 = static ConversationActor.shared;

  return MEMORY[0x1EEE6DFA0](EncoreConversation.flexibleExecutionSupport(), v2, 0);
}

uint64_t EncoreConversation.flexibleExecutionSupport()()
{
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.executor);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1DC659000, v2, v3, "[EncoreConversation] flexibleExecutionSupport unimplemented", v4, 2u);
    MEMORY[0x1E12A2F50](v4, -1, -1);
  }

  type metadata accessor for FlexibleExecutionSupportOptions();
  *(v0 + 16) = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type ConversationActor and conformance ConversationActor(&lazy protocol witness table cache variable for type FlexibleExecutionSupportOptions and conformance FlexibleExecutionSupportOptions, MEMORY[0x1E69D00C0], MEMORY[0x1E69D00C8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11SiriKitFlow31FlexibleExecutionSupportOptionsVGMd, &_sSay11SiriKitFlow31FlexibleExecutionSupportOptionsVGMR);
  lazy protocol witness table accessor for type [FlexibleExecutionSupportOptions] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v5 = *(v0 + 8);

  return v5();
}

uint64_t protocol witness for Conversational.cancel() in conformance EncoreConversation()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return EncoreConversation.cancel()();
}

uint64_t protocol witness for Conversational.ensureReady(timeout:) in conformance EncoreConversation(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return EncoreConversation.ensureReady(timeout:)(a1);
}

uint64_t protocol witness for Conversational.accept(request:) in conformance EncoreConversation(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return EncoreConversation.accept(request:)(a1, a2);
}

uint64_t protocol witness for Conversational.paraphrase() in conformance EncoreConversation(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return EncoreConversation.paraphrase()(a1);
}

uint64_t protocol witness for Conversational.prepare() in conformance EncoreConversation()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return EncoreConversation.prepare()();
}

uint64_t protocol witness for Conversational.commit() in conformance EncoreConversation(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return EncoreConversation.commit()(a1);
}

uint64_t protocol witness for Conversational.isEmpty() in conformance EncoreConversation()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = AppShortcutStateProvider.intentsStates(appShortcutTargets:conditionalIntentMetadata:);

  return EncoreConversation.isEmpty()();
}

uint64_t protocol witness for Conversational.isCorrectable() in conformance EncoreConversation()
{
  *(v1 + 56) = *v0;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v2 = static ConversationActor.shared;

  return MEMORY[0x1EEE6DFA0](EncoreConversation.isCorrectable(), v2, 0);
}

uint64_t protocol witness for Conversational.flexibleExecutionSupport() in conformance EncoreConversation(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return EncoreConversation.flexibleExecutionSupport()(a1);
}

uint64_t closure #1 in EncoreEngine.asyncPushEvent(flow:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14SiriKitRuntime19RequestContinuationVs5Error_pGMd, &_sScCy14SiriKitRuntime19RequestContinuationVs5Error_pGMR);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v18 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v18 - v12;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  outlined init with copy of ReferenceResolutionClientProtocol(a2, v19);
  (*(v7 + 16))(v10, a1, v6);
  v15 = (*(v7 + 80) + 72) & ~*(v7 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  outlined init with take of ReferenceResolutionClientProtocol(v19, v16 + 32);
  (*(v7 + 32))(v16 + v15, v10, v6);
  *(v16 + ((v8 + v15 + 7) & 0xFFFFFFFFFFFFFFF8)) = a3;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v13, &async function pointer to partial apply for closure #1 in closure #1 in EncoreEngine.asyncPushEvent(flow:), v16);
}

uint64_t closure #1 in closure #1 in EncoreEngine.asyncPushEvent(flow:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOy14SiriKitRuntime12EncoreEngineC0H5EventO__GMd, &_sScS12ContinuationV11YieldResultOy14SiriKitRuntime12EncoreEngineC0H5EventO__GMR);
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();
  v6[8] = type metadata accessor for EncoreEngine.EngineEvent(0);
  v6[9] = swift_task_alloc();
  v6[10] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14SiriKitRuntime19RequestContinuationVs5Error_pGMd, &_sScCy14SiriKitRuntime19RequestContinuationVs5Error_pGMR);
  v6[11] = v8;
  v9 = *(v8 - 8);
  v6[12] = v9;
  v6[13] = *(v9 + 64);
  v6[14] = swift_task_alloc();
  v6[15] = type metadata accessor for EncoreEngineEvent(0);
  v6[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in EncoreEngine.asyncPushEvent(flow:), 0, 0);
}

uint64_t closure #1 in closure #1 in EncoreEngine.asyncPushEvent(flow:)()
{
  v1 = v0[16];
  v2 = v0[14];
  v3 = v0[11];
  v4 = v0[12];
  v5 = v0[3];
  outlined init with copy of ReferenceResolutionClientProtocol(v0[2], v1);
  (*(v4 + 16))(v2, v5, v3);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  (*(v4 + 32))(v7 + v6, v2, v3);
  *(v1 + 40) = partial apply for closure #1 in closure #1 in closure #1 in EncoreEngine.asyncPushEvent(flow:);
  *(v1 + 48) = v7;
  swift_storeEnumTagMultiPayload();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v8 = static FlowActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in EncoreEngine.asyncPushEvent(flow:), v8, 0);
}

{
  outlined destroy of EncoreConversation.State(*(v0 + 128), type metadata accessor for EncoreEngineEvent);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in closure #1 in EncoreEngine.asyncPushEvent(flow:)(double a1)
{
  v3 = v1[9];
  v2 = v1[10];
  v4 = v1[7];
  v5 = v1[5];
  v6 = v1[6];
  outlined init with copy of EncoreEngineEvent(v1[16], v2, type metadata accessor for EncoreEngineEvent);
  swift_storeEnumTagMultiPayload();
  outlined init with copy of EncoreEngineEvent(v2, v3, type metadata accessor for EncoreEngine.EngineEvent);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy14SiriKitRuntime12EncoreEngineC0F5EventO_GMd, &_sScS12ContinuationVy14SiriKitRuntime12EncoreEngineC0F5EventO_GMR);
  AsyncStream.Continuation.yield(_:)();
  (*(v6 + 8))(v4, v5);
  outlined destroy of EncoreConversation.State(v2, type metadata accessor for EncoreEngine.EngineEvent);

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in EncoreEngine.asyncPushEvent(flow:), 0, 0);
}

uint64_t closure #1 in closure #1 in closure #1 in EncoreEngine.asyncPushEvent(flow:)(uint64_t a1)
{
  v2 = type metadata accessor for RequestContinuation(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v12 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy14SiriKitRuntime19RequestContinuationVs5Error_pGMd, &_ss6ResultOy14SiriKitRuntime19RequestContinuationVs5Error_pGMR);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (v12 - v9);
  outlined init with copy of ReferenceResolutionClientProtocol?(a1, v12 - v9, &_ss6ResultOy14SiriKitRuntime19RequestContinuationVs5Error_pGMd, &_ss6ResultOy14SiriKitRuntime19RequestContinuationVs5Error_pGMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12[1] = *v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14SiriKitRuntime19RequestContinuationVs5Error_pGMd, &_sScCy14SiriKitRuntime19RequestContinuationVs5Error_pGMR);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    outlined init with take of RequestContinuation(v10, v7, type metadata accessor for RequestContinuation);
    outlined init with copy of EncoreEngineEvent(v7, v4, type metadata accessor for RequestContinuation);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14SiriKitRuntime19RequestContinuationVs5Error_pGMd, &_sScCy14SiriKitRuntime19RequestContinuationVs5Error_pGMR);
    CheckedContinuation.resume(returning:)();
    return outlined destroy of EncoreConversation.State(v7, type metadata accessor for RequestContinuation);
  }
}

uint64_t closure #1 in EncoreEngine.asyncEnsureReadyEvent()(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd, &_sScCyyts5NeverOGMR);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v15 - v9;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  (*(v5 + 16))(v7, a1, v4);
  v12 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v13 = swift_allocObject();
  *(v13 + 2) = 0;
  *(v13 + 3) = 0;
  *(v13 + 4) = a2;
  (*(v5 + 32))(&v13[v12], v7, v4);

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v10, &async function pointer to partial apply for closure #1 in closure #1 in EncoreEngine.asyncEnsureReadyEvent(), v13);
}

uint64_t closure #1 in closure #1 in EncoreEngine.asyncEnsureReadyEvent()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOy14SiriKitRuntime12EncoreEngineC0H5EventO__GMd, &_sScS12ContinuationV11YieldResultOy14SiriKitRuntime12EncoreEngineC0H5EventO__GMR);
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  v5[7] = type metadata accessor for EncoreEngine.EngineEvent(0);
  v5[8] = swift_task_alloc();
  v5[9] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd, &_sScCyyts5NeverOGMR);
  v5[10] = v7;
  v8 = *(v7 - 8);
  v5[11] = v8;
  v5[12] = *(v8 + 64);
  v5[13] = swift_task_alloc();
  v5[14] = type metadata accessor for EncoreEngineEvent(0);
  v5[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in EncoreEngine.asyncEnsureReadyEvent(), 0, 0);
}

uint64_t closure #1 in closure #1 in EncoreEngine.asyncEnsureReadyEvent()()
{
  v1 = v0[15];
  v2 = v0[13];
  v3 = v0[10];
  v4 = v0[11];
  (*(v4 + 16))(v2, v0[3], v3);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_allocObject();
  (*(v4 + 32))(v6 + v5, v2, v3);
  *v1 = partial apply for closure #1 in closure #1 in AceServiceInvokerImpl.prepareForAudioHandoffFailed();
  v1[1] = v6;
  swift_storeEnumTagMultiPayload();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v7 = static FlowActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in EncoreEngine.asyncEnsureReadyEvent(), v7, 0);
}

uint64_t closure #1 in closure #1 in EncoreEngine.asyncEnsureReadyEvent()(double a1)
{
  v2 = v1[15];
  v3 = v1[8];
  v4 = v1[9];
  v5 = v1[6];
  v6 = v1[4];
  v7 = v1[5];
  outlined init with copy of EncoreEngineEvent(v2, v4, type metadata accessor for EncoreEngineEvent);
  swift_storeEnumTagMultiPayload();
  outlined init with copy of EncoreEngineEvent(v4, v3, type metadata accessor for EncoreEngine.EngineEvent);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy14SiriKitRuntime12EncoreEngineC0F5EventO_GMd, &_sScS12ContinuationVy14SiriKitRuntime12EncoreEngineC0F5EventO_GMR);
  AsyncStream.Continuation.yield(_:)();
  (*(v7 + 8))(v5, v6);
  outlined destroy of EncoreConversation.State(v4, type metadata accessor for EncoreEngine.EngineEvent);
  outlined destroy of EncoreConversation.State(v2, type metadata accessor for EncoreEngineEvent);

  v8 = v1[1];

  return v8();
}

uint64_t Parse.DirectInvocation.toSnippetEvent.getter(uint64_t a1)
{
  v1 = Parse.DirectInvocation.identifier.getter();
  v3 = v2;
  type metadata accessor for SnippetService();
  if (v1 == static SnippetService.DirectInvocationIdentifier.getter() && v3 == v4)
  {
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v5 & 1) == 0)
    {
      return 0;
    }
  }

  result = Parse.DirectInvocation.userData.getter();
  if (!result)
  {
    return result;
  }

  v7 = result;
  v8 = static SnippetService.EventDataKey.getter();
  if (!*(v7 + 16))
  {

    goto LABEL_11;
  }

  v10 = specialized __RawDictionaryStorage.find<A>(_:)(v8, v9);
  v12 = v11;

  if ((v12 & 1) == 0)
  {
LABEL_11:

    goto LABEL_12;
  }

  outlined init with copy of Any(*(v7 + 56) + 32 * v10, v20);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static Logger.executor);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_1DC659000, v14, v15, "[EncoreConversation] DirectInvocation failed to find Snippet Event Key", v16, 2u);
      MEMORY[0x1E12A2F50](v16, -1, -1);
    }

    return 0;
  }

  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSKeyedUnarchiver, 0x1E696ACD0);
  type metadata accessor for EncoreEvent();
  v17 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
  outlined consume of Data._Representation(v18, v19);
  result = v17;
  if (!v17)
  {
    return 0;
  }

  return result;
}

uint64_t closure #1 in EncoreEngine.asyncAcceptEvent(request:context:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v28 = a4;
  v29 = a2;
  v30 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14SiriKitRuntime19RequestContinuationVs5NeverOGMd, &_sScCy14SiriKitRuntime19RequestContinuationVs5NeverOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v25 - v7;
  v27 = &v25 - v7;
  v9 = type metadata accessor for ConversationContext();
  v26 = v9;
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v25 - v14;
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  (*(v10 + 16))(v12, v28, v9);
  v17 = a1;
  v18 = v5;
  (*(v6 + 16))(v8, v17, v5);
  v19 = (*(v10 + 80) + 48) & ~*(v10 + 80);
  v20 = (v11 + *(v6 + 80) + v19) & ~*(v6 + 80);
  v21 = swift_allocObject();
  *(v21 + 2) = 0;
  *(v21 + 3) = 0;
  v22 = v30;
  *(v21 + 4) = v29;
  *(v21 + 5) = v22;
  (*(v10 + 32))(&v21[v19], v12, v26);
  (*(v6 + 32))(&v21[v20], v27, v18);

  v23 = v22;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v15, &async function pointer to partial apply for closure #1 in closure #1 in EncoreEngine.asyncAcceptEvent(request:context:), v21);
}

uint64_t closure #1 in closure #1 in EncoreEngine.asyncAcceptEvent(request:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOy14SiriKitRuntime12EncoreEngineC0H5EventO__GMd, &_sScS12ContinuationV11YieldResultOy14SiriKitRuntime12EncoreEngineC0H5EventO__GMR);
  v7[6] = v8;
  v7[7] = *(v8 - 8);
  v7[8] = swift_task_alloc();
  v7[9] = type metadata accessor for EncoreEngine.EngineEvent(0);
  v7[10] = swift_task_alloc();
  v7[11] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14SiriKitRuntime19RequestContinuationVs5NeverOGMd, &_sScCy14SiriKitRuntime19RequestContinuationVs5NeverOGMR);
  v7[12] = v9;
  v10 = *(v9 - 8);
  v7[13] = v10;
  v7[14] = *(v10 + 64);
  v7[15] = swift_task_alloc();
  v7[16] = type metadata accessor for EncoreEngineEvent(0);
  v7[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in EncoreEngine.asyncAcceptEvent(request:context:), 0, 0);
}

uint64_t closure #1 in closure #1 in EncoreEngine.asyncAcceptEvent(request:context:)()
{
  v1 = v0[17];
  v2 = v0[15];
  v3 = v0[12];
  v4 = v0[13];
  v6 = v0[4];
  v5 = v0[5];
  v7 = v0[3];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16EncoreXPCService0A5EventC5event_11SiriKitFlow19ConversationContextV7contextyyc10completiontMd, &_s16EncoreXPCService0A5EventC5event_11SiriKitFlow19ConversationContextV7contextyyc10completiontMR);
  v9 = *(v8 + 48);
  v10 = &v1[*(v8 + 64)];
  *v1 = v7;
  v11 = type metadata accessor for ConversationContext();
  (*(*(v11 - 8) + 16))(&v1[v9], v6, v11);
  (*(v4 + 16))(v2, v5, v3);
  v12 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v13 = swift_allocObject();
  (*(v4 + 32))(v13 + v12, v2, v3);
  *v10 = partial apply for closure #1 in closure #1 in closure #1 in EncoreEngine.asyncAcceptEvent(request:context:);
  v10[1] = v13;
  swift_storeEnumTagMultiPayload();
  v14 = one-time initialization token for shared;
  v15 = v7;
  if (v14 != -1)
  {
    swift_once();
  }

  v16 = static FlowActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in EncoreEngine.asyncAcceptEvent(request:context:), v16, 0);
}

uint64_t closure #2 in EncoreEngine.asyncAcceptEvent(request:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a3;
  v30 = a4;
  v31 = a1;
  v32 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14SiriKitRuntime19RequestContinuationVs5NeverOGMd, &_sScCy14SiriKitRuntime19RequestContinuationVs5NeverOGMR);
  v24 = v4;
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v23 - v6;
  v26 = &v23 - v6;
  v28 = type metadata accessor for ConversationContext();
  v8 = *(v28 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v25 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SiriRequest(0);
  v27 = *(v10 - 8);
  v11 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v23 - v14;
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  outlined init with copy of EncoreEngineEvent(v29, v12, type metadata accessor for SiriRequest);
  v17 = v28;
  (*(v8 + 16))(&v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v30, v28);
  (*(v5 + 16))(v7, v31, v4);
  v18 = (*(v27 + 80) + 40) & ~*(v27 + 80);
  v19 = (v11 + *(v8 + 80) + v18) & ~*(v8 + 80);
  v20 = (v9 + *(v5 + 80) + v19) & ~*(v5 + 80);
  v21 = swift_allocObject();
  *(v21 + 2) = 0;
  *(v21 + 3) = 0;
  *(v21 + 4) = v32;
  outlined init with take of RequestContinuation(v12, &v21[v18], type metadata accessor for SiriRequest);
  (*(v8 + 32))(&v21[v19], v25, v17);
  (*(v5 + 32))(&v21[v20], v26, v24);

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v15, &async function pointer to partial apply for closure #1 in closure #2 in EncoreEngine.asyncAcceptEvent(request:context:), v21);
}

uint64_t closure #1 in closure #2 in EncoreEngine.asyncAcceptEvent(request:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOy14SiriKitRuntime12EncoreEngineC0H5EventO__GMd, &_sScS12ContinuationV11YieldResultOy14SiriKitRuntime12EncoreEngineC0H5EventO__GMR);
  v7[6] = v8;
  v7[7] = *(v8 - 8);
  v7[8] = swift_task_alloc();
  v7[9] = type metadata accessor for EncoreEngine.EngineEvent(0);
  v7[10] = swift_task_alloc();
  v7[11] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14SiriKitRuntime19RequestContinuationVs5NeverOGMd, &_sScCy14SiriKitRuntime19RequestContinuationVs5NeverOGMR);
  v7[12] = v9;
  v10 = *(v9 - 8);
  v7[13] = v10;
  v7[14] = *(v10 + 64);
  v7[15] = swift_task_alloc();
  v7[16] = type metadata accessor for EncoreEngineEvent(0);
  v7[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #2 in EncoreEngine.asyncAcceptEvent(request:context:), 0, 0);
}

uint64_t closure #1 in closure #2 in EncoreEngine.asyncAcceptEvent(request:context:)()
{
  v1 = v0[17];
  v2 = v0[15];
  v3 = v0[12];
  v4 = v0[13];
  v6 = v0[4];
  v5 = v0[5];
  v7 = v0[3];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A7RequestV7request_0aB4Flow19ConversationContextV7contextyyc10completiontMd, &_s14SiriKitRuntime0A7RequestV7request_0aB4Flow19ConversationContextV7contextyyc10completiontMR);
  v9 = *(v8 + 48);
  v10 = (v1 + *(v8 + 64));
  outlined init with copy of EncoreEngineEvent(v7, v1, type metadata accessor for SiriRequest);
  v11 = type metadata accessor for ConversationContext();
  (*(*(v11 - 8) + 16))(v1 + v9, v6, v11);
  (*(v4 + 16))(v2, v5, v3);
  v12 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v13 = swift_allocObject();
  (*(v4 + 32))(v13 + v12, v2, v3);
  *v10 = partial apply for closure #1 in closure #1 in closure #2 in EncoreEngine.asyncAcceptEvent(request:context:);
  v10[1] = v13;
  swift_storeEnumTagMultiPayload();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v14 = static FlowActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #2 in EncoreEngine.asyncAcceptEvent(request:context:), v14, 0);
}

uint64_t closure #1 in closure #2 in EncoreEngine.asyncAcceptEvent(request:context:)(double a1)
{
  v2 = v1[17];
  v3 = v1[10];
  v4 = v1[11];
  v5 = v1[8];
  v6 = v1[6];
  v7 = v1[7];
  outlined init with copy of EncoreEngineEvent(v2, v4, type metadata accessor for EncoreEngineEvent);
  swift_storeEnumTagMultiPayload();
  outlined init with copy of EncoreEngineEvent(v4, v3, type metadata accessor for EncoreEngine.EngineEvent);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy14SiriKitRuntime12EncoreEngineC0F5EventO_GMd, &_sScS12ContinuationVy14SiriKitRuntime12EncoreEngineC0F5EventO_GMR);
  AsyncStream.Continuation.yield(_:)();
  (*(v7 + 8))(v5, v6);
  outlined destroy of EncoreConversation.State(v4, type metadata accessor for EncoreEngine.EngineEvent);
  outlined destroy of EncoreConversation.State(v2, type metadata accessor for EncoreEngineEvent);

  v8 = v1[1];

  return v8();
}

uint64_t closure #1 in closure #1 in closure #1 in EncoreEngine.asyncAcceptEvent(request:context:)(uint64_t a1)
{
  v2 = type metadata accessor for RequestContinuation(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  outlined init with copy of EncoreEngineEvent(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for RequestContinuation);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14SiriKitRuntime19RequestContinuationVs5NeverOGMd, &_sScCy14SiriKitRuntime19RequestContinuationVs5NeverOGMR);
  return CheckedContinuation.resume(returning:)();
}

uint64_t closure #1 in EncoreEngine.asyncCommitEvent(continuation:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a3;
  v30 = a4;
  v31 = a1;
  v32 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14SiriKitRuntime24ConversationCommitResultOs5Error_pGMd, &_sScCy14SiriKitRuntime24ConversationCommitResultOs5Error_pGMR);
  v24 = v4;
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v23 - v6;
  v26 = &v23 - v6;
  v28 = type metadata accessor for ConversationContext();
  v8 = *(v28 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v25 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for RequestContinuation(0);
  v27 = *(v10 - 8);
  v11 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v23 - v14;
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  outlined init with copy of EncoreEngineEvent(v29, v12, type metadata accessor for RequestContinuation);
  v17 = v28;
  (*(v8 + 16))(&v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v30, v28);
  (*(v5 + 16))(v7, v31, v4);
  v18 = (*(v27 + 80) + 40) & ~*(v27 + 80);
  v19 = (v11 + *(v8 + 80) + v18) & ~*(v8 + 80);
  v20 = (v9 + *(v5 + 80) + v19) & ~*(v5 + 80);
  v21 = swift_allocObject();
  *(v21 + 2) = 0;
  *(v21 + 3) = 0;
  *(v21 + 4) = v32;
  outlined init with take of RequestContinuation(v12, &v21[v18], type metadata accessor for RequestContinuation);
  (*(v8 + 32))(&v21[v19], v25, v17);
  (*(v5 + 32))(&v21[v20], v26, v24);

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v15, &async function pointer to partial apply for closure #1 in closure #1 in EncoreEngine.asyncCommitEvent(continuation:context:), v21);
}

uint64_t closure #1 in closure #1 in EncoreEngine.asyncCommitEvent(continuation:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOy14SiriKitRuntime12EncoreEngineC0H5EventO__GMd, &_sScS12ContinuationV11YieldResultOy14SiriKitRuntime12EncoreEngineC0H5EventO__GMR);
  v7[6] = v8;
  v7[7] = *(v8 - 8);
  v7[8] = swift_task_alloc();
  v7[9] = type metadata accessor for EncoreEngine.EngineEvent(0);
  v7[10] = swift_task_alloc();
  v7[11] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14SiriKitRuntime24ConversationCommitResultOs5Error_pGMd, &_sScCy14SiriKitRuntime24ConversationCommitResultOs5Error_pGMR);
  v7[12] = v9;
  v10 = *(v9 - 8);
  v7[13] = v10;
  v7[14] = *(v10 + 64);
  v7[15] = swift_task_alloc();
  v7[16] = type metadata accessor for EncoreEngineEvent(0);
  v7[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in EncoreEngine.asyncCommitEvent(continuation:context:), 0, 0);
}

uint64_t closure #1 in closure #1 in EncoreEngine.asyncCommitEvent(continuation:context:)()
{
  v1 = v0[17];
  v2 = v0[15];
  v3 = v0[12];
  v4 = v0[13];
  v6 = v0[4];
  v5 = v0[5];
  v7 = v0[3];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime19RequestContinuationV12continuation_0aB4Flow19ConversationContextV7contextyyc10completiontMd, &_s14SiriKitRuntime19RequestContinuationV12continuation_0aB4Flow19ConversationContextV7contextyyc10completiontMR);
  v9 = *(v8 + 48);
  v10 = (v1 + *(v8 + 64));
  outlined init with copy of EncoreEngineEvent(v7, v1, type metadata accessor for RequestContinuation);
  v11 = type metadata accessor for ConversationContext();
  (*(*(v11 - 8) + 16))(v1 + v9, v6, v11);
  (*(v4 + 16))(v2, v5, v3);
  v12 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v13 = swift_allocObject();
  (*(v4 + 32))(v13 + v12, v2, v3);
  *v10 = partial apply for closure #1 in closure #1 in closure #1 in EncoreEngine.asyncCommitEvent(continuation:context:);
  v10[1] = v13;
  swift_storeEnumTagMultiPayload();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v14 = static FlowActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in EncoreEngine.asyncAcceptEvent(request:context:), v14, 0);
}

uint64_t closure #1 in closure #1 in closure #1 in EncoreEngine.asyncCommitEvent(continuation:context:)(uint64_t a1)
{
  v2 = type metadata accessor for ConversationCommitResult(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v12 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy14SiriKitRuntime018ConversationCommitA0Os5Error_pGMd, &_ss6ResultOy14SiriKitRuntime018ConversationCommitA0Os5Error_pGMR);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (v12 - v9);
  outlined init with copy of ReferenceResolutionClientProtocol?(a1, v12 - v9, &_ss6ResultOy14SiriKitRuntime018ConversationCommitA0Os5Error_pGMd, &_ss6ResultOy14SiriKitRuntime018ConversationCommitA0Os5Error_pGMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12[1] = *v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14SiriKitRuntime24ConversationCommitResultOs5Error_pGMd, &_sScCy14SiriKitRuntime24ConversationCommitResultOs5Error_pGMR);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    outlined init with take of RequestContinuation(v10, v7, type metadata accessor for ConversationCommitResult);
    outlined init with copy of EncoreEngineEvent(v7, v4, type metadata accessor for ConversationCommitResult);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14SiriKitRuntime24ConversationCommitResultOs5Error_pGMd, &_sScCy14SiriKitRuntime24ConversationCommitResultOs5Error_pGMR);
    CheckedContinuation.resume(returning:)();
    return outlined destroy of EncoreConversation.State(v7, type metadata accessor for ConversationCommitResult);
  }
}

char *specialized EncoreConversation.init<A>(initialFlow:pluginId:pluginInfo:taskService:taskObserver:snippetManager:rootEnvironment:correctionsEngine:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12)
{
  v13 = v12;
  v61 = a3;
  v62 = a7;
  v64 = a5;
  v65 = a6;
  v60 = a2;
  v63 = a1;
  v16 = a10;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v58 - v18;
  v20 = type metadata accessor for DispatchTimeInterval();
  v67 = *(v20 - 8);
  v68 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v66 = &v58 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = OBJC_IVAR____TtC14SiriKitRuntime18EncoreConversation_siriRequest;
  v23 = type metadata accessor for SiriRequest(0);
  (*(*(v23 - 8) + 56))(&v13[v22], 1, 1, v23);
  *&v13[OBJC_IVAR____TtC14SiriKitRuntime18EncoreConversation_tasks] = MEMORY[0x1E69E7CC0];
  *&v13[OBJC_IVAR____TtC14SiriKitRuntime18EncoreConversation_encoreEventsHandled] = 0;
  v13[OBJC_IVAR____TtC14SiriKitRuntime18EncoreConversation_encoreRegistered] = 0;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v59 = a12;
  v24 = type metadata accessor for Logger();
  __swift_project_value_buffer(v24, static Logger.executor);
  v25 = a4;
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v58 = a8;
    v29 = v28;
    v30 = swift_slowAlloc();
    *v29 = 138412290;
    *(v29 + 4) = v25;
    *v30 = v25;
    v31 = v25;
    _os_log_impl(&dword_1DC659000, v26, v27, "[EncoreConversation] init %@", v29, 0xCu);
    outlined destroy of ReferenceResolutionClientProtocol?(v30, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1E12A2F50](v30, -1, -1);
    v32 = v29;
    v16 = a10;
    a8 = v58;
    MEMORY[0x1E12A2F50](v32, -1, -1);
  }

  v33 = v61;
  *(v13 + 4) = v60;
  *(v13 + 5) = v33;
  v34 = v65;
  *(v13 + 6) = v64;
  *(v13 + 7) = v25;
  v35 = &v13[OBJC_IVAR____TtC14SiriKitRuntime18EncoreConversation_taskObserver];
  v36 = v62;
  *v35 = v34;
  v35[1] = v36;
  v37 = &v13[OBJC_IVAR____TtC14SiriKitRuntime18EncoreConversation_state];
  v38 = v59;
  v37[3] = a11;
  v37[4] = v38;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v37);
  (*(*(a11 - 8) + 16))(boxed_opaque_existential_0, v63, a11);
  type metadata accessor for EncoreConversation.State(0);
  swift_storeEnumTagMultiPayload();
  outlined init with copy of ReferenceResolutionClientProtocol(v16, &v13[OBJC_IVAR____TtC14SiriKitRuntime18EncoreConversation_correctionsEngine]);
  if (a9)
  {
    v40 = v25;

    swift_unknownObjectRetain();
  }

  else
  {
    type metadata accessor for SiriEnvironment();
    v41 = v25;

    swift_unknownObjectRetain();
    static SiriEnvironment.default.getter();
  }

  type metadata accessor for SiriEnvironment();
  swift_allocObject();

  *(v13 + 8) = SiriEnvironment.init(parent:)();
  type metadata accessor for SiriCorrectionsClientProvider();
  swift_allocObject();

  SiriCorrectionsClientProvider.init()();
  SiriEnvironment.correctionsClientProvider.setter();

  SiriEnvironment.correctionsClientProvider.getter();

  v42 = v16[3];
  v43 = v16[4];
  v44 = __swift_project_boxed_opaque_existential_1(v16, v42);
  v69[3] = v42;
  v69[4] = *(v43 + 8);
  v45 = __swift_allocate_boxed_opaque_existential_0(v69);
  (*(*(v42 - 8) + 16))(v45, v44, v42);
  dispatch thunk of SiriCorrectionsClientProvider.correctionsClient.setter();

  type metadata accessor for UserIdentityProvider();
  lazy protocol witness table accessor for type ConversationActor and conformance ConversationActor(&lazy protocol witness table cache variable for type UserIdentityProvider and conformance UserIdentityProvider, MEMORY[0x1E69D0010], MEMORY[0x1E69D0008]);

  dispatch thunk of SiriEnvironment.requireProvider<A>(of:)();

  type metadata accessor for FlowTaskProvider();
  lazy protocol witness table accessor for type ConversationActor and conformance ConversationActor(&lazy protocol witness table cache variable for type FlowTaskProvider and conformance FlowTaskProvider, MEMORY[0x1E69CFB28], MEMORY[0x1E69CFB20]);

  dispatch thunk of SiriEnvironment.requireProvider<A>(of:)();

  type metadata accessor for CallStateEnvironmentProvider();
  lazy protocol witness table accessor for type ConversationActor and conformance ConversationActor(&lazy protocol witness table cache variable for type CallStateEnvironmentProvider and conformance CallStateEnvironmentProvider, MEMORY[0x1E69D0098], MEMORY[0x1E69D0090]);

  dispatch thunk of SiriEnvironment.requireProvider<A>(of:)();

  type metadata accessor for ScopedReferenceResolutionDataProvider();
  lazy protocol witness table accessor for type ConversationActor and conformance ConversationActor(&lazy protocol witness table cache variable for type ScopedReferenceResolutionDataProvider and conformance ScopedReferenceResolutionDataProvider, MEMORY[0x1E69D27E0], MEMORY[0x1E69D27D8]);

  dispatch thunk of SiriEnvironment.requireProvider<A>(of:)();

  type metadata accessor for MetricsEnvironmentProvider();
  lazy protocol witness table accessor for type ConversationActor and conformance ConversationActor(&lazy protocol witness table cache variable for type MetricsEnvironmentProvider and conformance MetricsEnvironmentProvider, MEMORY[0x1E69D0078], MEMORY[0x1E69D0070]);

  dispatch thunk of SiriEnvironment.requireProvider<A>(of:)();

  type metadata accessor for AceServiceContextProvider();
  lazy protocol witness table accessor for type ConversationActor and conformance ConversationActor(&lazy protocol witness table cache variable for type AceServiceContextProvider and conformance AceServiceContextProvider, MEMORY[0x1E69D0068], MEMORY[0x1E69D0060]);

  dispatch thunk of SiriEnvironment.requireProvider<A>(of:)();

  *(v13 + 9) = a8;
  v46 = one-time initialization token for defaultTimeout;

  if (v46 != -1)
  {
    swift_once();
  }

  v47 = v68;
  v48 = __swift_project_value_buffer(v68, static JetsamHelper.defaultTimeout);
  v50 = v66;
  v49 = v67;
  (*(v67 + 16))(v66, v48, v47);
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  v51 = static OS_dispatch_queue.main.getter();
  type metadata accessor for JetsamHelper(0);
  v52 = swift_allocObject();
  v53 = (v52 + OBJC_IVAR____TtC14SiriKitRuntime12JetsamHelper_transaction);
  *v53 = 0;
  v53[1] = 0;
  v52[2] = 0xD00000000000002ALL;
  v52[3] = 0x80000001DCA82860;
  v52[4] = dispatch_semaphore_create(1);
  v52[5] = v51;
  (*(v49 + 32))(v52 + OBJC_IVAR____TtC14SiriKitRuntime12JetsamHelper_timeout, v50, v47);
  *(v13 + 2) = v52;
  type metadata accessor for EncoreEngine();
  swift_allocObject();

  *(v13 + 3) = EncoreEngine.init(rootEnvironment:snippetManager:)(v54, a8);
  v55 = type metadata accessor for TaskPriority();
  (*(*(v55 - 8) + 56))(v19, 1, 1, v55);
  v56 = swift_allocObject();
  v56[2] = 0;
  v56[3] = 0;
  v56[4] = v13;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v19, &async function pointer to partial apply for closure #1 in EncoreConversation.init<A>(initialFlow:pluginId:pluginInfo:taskService:taskObserver:snippetManager:rootEnvironment:correctionsEngine:), v56);

  __swift_destroy_boxed_opaque_existential_1Tm(v16);
  return v13;
}