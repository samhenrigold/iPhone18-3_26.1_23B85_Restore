uint64_t partial apply for implicit closure #3 in CamBridgeImpl.selectAction(rcId:speechPackage:rankedActions:conversationHelperInput:conversationHelper:inputOrigin:)(uint64_t a1)
{
  v4 = *(type metadata accessor for ConversationHelperInput(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return implicit closure #3 in CamBridgeImpl.selectAction(rcId:speechPackage:rankedActions:conversationHelperInput:conversationHelper:inputOrigin:)(a1, v6, v7, v8, v1 + v5);
}

uint64_t outlined init with take of ConversationHelperInput(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

__n128 __swift_memcpy42_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 26) = *(a2 + 26);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 assignWithTake for CamBridgeImpl.CamState(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return result;
  }

  v3 = *(a1 + 41);
  if (v3 >= 3)
  {
    v3 = *a1 + 3;
  }

  switch(v3)
  {
    case 2u:
      v4 = a1;

      goto LABEL_10;
    case 1u:
      v4 = a1;
      __swift_destroy_boxed_opaque_existential_1Tm(a1);
      goto LABEL_10;
    case 0u:
      v4 = a1;

LABEL_10:
      a1 = v4;
      break;
  }

  v6 = *(a2 + 41);
  if (v6 >= 3)
  {
    v6 = *a2 + 3;
  }

  if (v6 == 2)
  {
    *a1 = *a2;
    *(a1 + 41) = 2;
  }

  else if (v6 == 1)
  {
    v7 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v7;
    result = *(a2 + 25);
    *(a1 + 25) = result;
    *(a1 + 41) = 1;
  }

  else if (v6)
  {
    v8 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v8;
    result = *(a2 + 26);
    *(a1 + 26) = result;
  }

  else
  {
    *a1 = *a2;
    *(a1 + 41) = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CamBridgeImpl.CamState(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 42))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 41);
  if (v3 >= 4)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CamBridgeImpl.CamState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 26) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 42) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 42) = 0;
    }

    if (a2)
    {
      *(result + 41) = -a2;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for CamBridgeImpl.CamState(uint64_t result, unsigned int a2)
{
  if (a2 > 2)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 41) = a2;
  return result;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 assignWithTake for CamBridgeImpl.CaarState(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return result;
  }

  v3 = *(a1 + 40);
  if (v3 >= 3)
  {
    v3 = *a1 + 3;
  }

  switch(v3)
  {
    case 2u:
      v4 = a1;

      goto LABEL_10;
    case 1u:
      v4 = a1;
      __swift_destroy_boxed_opaque_existential_1Tm(a1);
      goto LABEL_10;
    case 0u:
      v4 = a1;

LABEL_10:
      a1 = v4;
      break;
  }

  v6 = *(a2 + 40);
  if (v6 >= 3)
  {
    v6 = *a2 + 3;
  }

  if (v6 == 2)
  {
    *a1 = *a2;
    *(a1 + 40) = 2;
  }

  else if (v6 == 1)
  {
    result = *a2;
    v7 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v7;
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 40) = 1;
  }

  else if (v6)
  {
    v8 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v8;
    result = *(a2 + 25);
    *(a1 + 25) = result;
  }

  else
  {
    *a1 = *a2;
    *(a1 + 40) = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CamBridgeImpl.CaarState(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 41))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 40);
  if (v3 >= 4)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CamBridgeImpl.CaarState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for CamBridgeImpl.CaarState(uint64_t result, unsigned int a2)
{
  if (a2 > 2)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t dispatch thunk of CamProviding.provideCamInstance(camEnabledFeatures:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of CaarProviding.provideCaarInstance()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of CamActionProviding.getCamAction(request:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of CaarRankingProviding.getCaarRanking(requestId:caarId:rcId:actions:rankerContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v19 = (*(a8 + 8) + **(a8 + 8));
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = dispatch thunk of CaarRankingProviding.getCaarRanking(requestId:caarId:rcId:actions:rankerContext:);

  return v19(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t *initializeBufferWithCopyOfBuffer for ParaphraseProbeResult(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v11 = *a2;
    *a1 = *a2;
    a1 = (v11 + ((v5 + 16) & ~v5));

    return a1;
  }

  v6 = *(a3 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow16ActionParaphraseV06actionE0_tMd, &_s11SiriKitFlow16ActionParaphraseV06actionE0_tMR);
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(a2, 2, v7))
  {
    v12 = type metadata accessor for ActionParaphrase();
    (*(*(v12 - 8) + 16))(a1, a2, v12);
    (*(v8 + 56))(a1, 0, 2, v7);
    return a1;
  }

  v9 = *(v6 + 64);

  return memcpy(a1, a2, v9);
}

uint64_t destroy for ParaphraseProbeResult(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow16ActionParaphraseV06actionE0_tMd, &_s11SiriKitFlow16ActionParaphraseV06actionE0_tMR);
  result = (*(*(v2 - 8) + 48))(a1, 2, v2);
  if (!result)
  {
    v4 = type metadata accessor for ActionParaphrase();
    v5 = *(*(v4 - 8) + 8);

    return v5(a1, v4);
  }

  return result;
}

void *initializeWithCopy for ParaphraseProbeResult(void *a1, const void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow16ActionParaphraseV06actionE0_tMd, &_s11SiriKitFlow16ActionParaphraseV06actionE0_tMR);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 2, v6))
  {
    v8 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v8);
  }

  else
  {
    v10 = type metadata accessor for ActionParaphrase();
    (*(*(v10 - 8) + 16))(a1, a2, v10);
    (*(v7 + 56))(a1, 0, 2, v6);
    return a1;
  }
}

void *assignWithCopy for ParaphraseProbeResult(void *a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow16ActionParaphraseV06actionE0_tMd, &_s11SiriKitFlow16ActionParaphraseV06actionE0_tMR);
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 2, v6);
  v10 = v8(a2, 2, v6);
  if (v9)
  {
    if (!v10)
    {
      v11 = type metadata accessor for ActionParaphrase();
      (*(*(v11 - 8) + 16))(a1, a2, v11);
      (*(v7 + 56))(a1, 0, 2, v6);
      return a1;
    }
  }

  else
  {
    if (!v10)
    {
      v14 = type metadata accessor for ActionParaphrase();
      (*(*(v14 - 8) + 24))(a1, a2, v14);
      return a1;
    }

    outlined destroy of ReferenceResolutionClientProtocol?(a1, &_s11SiriKitFlow16ActionParaphraseV06actionE0_tMd, &_s11SiriKitFlow16ActionParaphraseV06actionE0_tMR);
  }

  v12 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v12);
}

void *initializeWithTake for ParaphraseProbeResult(void *a1, const void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow16ActionParaphraseV06actionE0_tMd, &_s11SiriKitFlow16ActionParaphraseV06actionE0_tMR);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 2, v6))
  {
    v8 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v8);
  }

  else
  {
    v10 = type metadata accessor for ActionParaphrase();
    (*(*(v10 - 8) + 32))(a1, a2, v10);
    (*(v7 + 56))(a1, 0, 2, v6);
    return a1;
  }
}

void *assignWithTake for ParaphraseProbeResult(void *a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow16ActionParaphraseV06actionE0_tMd, &_s11SiriKitFlow16ActionParaphraseV06actionE0_tMR);
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 2, v6);
  v10 = v8(a2, 2, v6);
  if (v9)
  {
    if (!v10)
    {
      v11 = type metadata accessor for ActionParaphrase();
      (*(*(v11 - 8) + 32))(a1, a2, v11);
      (*(v7 + 56))(a1, 0, 2, v6);
      return a1;
    }
  }

  else
  {
    if (!v10)
    {
      v14 = type metadata accessor for ActionParaphrase();
      (*(*(v14 - 8) + 40))(a1, a2, v14);
      return a1;
    }

    outlined destroy of ReferenceResolutionClientProtocol?(a1, &_s11SiriKitFlow16ActionParaphraseV06actionE0_tMd, &_s11SiriKitFlow16ActionParaphraseV06actionE0_tMR);
  }

  v12 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v12);
}

uint64_t getEnumTag for ParaphraseProbeResult(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow16ActionParaphraseV06actionE0_tMd, &_s11SiriKitFlow16ActionParaphraseV06actionE0_tMR);
  v3 = *(*(v2 - 8) + 48);

  return v3(a1, 2, v2);
}

uint64_t destructiveInjectEnumTag for ParaphraseProbeResult(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow16ActionParaphraseV06actionE0_tMd, &_s11SiriKitFlow16ActionParaphraseV06actionE0_tMR);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, 2, v4);
}

uint64_t type metadata completion function for ParaphraseProbeResult(uint64_t a1)
{
  result = type metadata accessor for ActionParaphrase();
  if (v2 <= 0x3F)
  {
    swift_initEnumMetadataSinglePayload();
    return 0;
  }

  return result;
}

uint64_t outlined init with copy of ConversationHelperInput(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of ParaphraseProbeResult(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t lazy protocol witness table accessor for type CamFeatureFlag and conformance CamFeatureFlag()
{
  result = lazy protocol witness table cache variable for type CamFeatureFlag and conformance CamFeatureFlag;
  if (!lazy protocol witness table cache variable for type CamFeatureFlag and conformance CamFeatureFlag)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CamFeatureFlag and conformance CamFeatureFlag);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CamFeatureFlag and conformance CamFeatureFlag;
  if (!lazy protocol witness table cache variable for type CamFeatureFlag and conformance CamFeatureFlag)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CamFeatureFlag and conformance CamFeatureFlag);
  }

  return result;
}

uint64_t CamBridgeState.__allocating_init(requestLoggingId:camLoggingId:caarLoggingId:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = MEMORY[0x1E69E7CC8];
  outlined init with take of UUID?(a1, v6 + OBJC_IVAR____TtC14SiriKitRuntime14CamBridgeState_requestLoggingId);
  outlined init with take of UUID?(a2, v6 + OBJC_IVAR____TtC14SiriKitRuntime14CamBridgeState_camLoggingId);
  outlined init with take of UUID?(a3, v6 + OBJC_IVAR____TtC14SiriKitRuntime14CamBridgeState_caarLoggingId);
  return v6;
}

Swift::Void __swiftcall CamBridgeState.registerCamAction(rcId:camAction:)(Swift::String rcId, SiriKitRuntime::ConversationAction camAction)
{
  v3 = v2;
  object = rcId._object;
  countAndFlagsBits = rcId._countAndFlagsBits;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Logger.executor);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17[0] = v11;
    *v10 = 136315394;
    v12 = String.init<A>(describing:)();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, v17);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2080;
    *(v10 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(countAndFlagsBits, object, v17);
    _os_log_impl(&dword_1DC659000, v8, v9, "CamBridge: Registering CAM action %s for rcId: %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v11, -1, -1);
    MEMORY[0x1E12A2F50](v10, -1, -1);
  }

  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(v3 + 16);
  *(v3 + 16) = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(camAction, countAndFlagsBits, object, isUniquelyReferenced_nonNull_native);
  *(v3 + 16) = v16;
  swift_endAccess();
}

SiriKitRuntime::ConversationAction_optional __swiftcall CamBridgeState.getCamAction(rcId:)(Swift::String rcId)
{
  object = rcId._object;
  countAndFlagsBits = rcId._countAndFlagsBits;
  swift_beginAccess();
  v4 = *(v1 + 16);
  if (*(v4 + 16) && (v5 = specialized __RawDictionaryStorage.find<A>(_:)(countAndFlagsBits, object), (v6 & 1) != 0))
  {
    v7.value = *(*(v4 + 56) + v5);
  }

  else
  {
    v7.value = SiriKitRuntime_ConversationAction_unknownDefault;
  }

  swift_endAccess();
  return v7;
}

uint64_t CamBridgeState.init(requestLoggingId:camLoggingId:caarLoggingId:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = MEMORY[0x1E69E7CC8];
  outlined init with take of UUID?(a1, v3 + OBJC_IVAR____TtC14SiriKitRuntime14CamBridgeState_requestLoggingId);
  outlined init with take of UUID?(a2, v3 + OBJC_IVAR____TtC14SiriKitRuntime14CamBridgeState_camLoggingId);
  outlined init with take of UUID?(a3, v3 + OBJC_IVAR____TtC14SiriKitRuntime14CamBridgeState_caarLoggingId);
  return v3;
}

uint64_t CamBridgeState.deinit()
{

  outlined destroy of UUID?(v0 + OBJC_IVAR____TtC14SiriKitRuntime14CamBridgeState_requestLoggingId);
  outlined destroy of UUID?(v0 + OBJC_IVAR____TtC14SiriKitRuntime14CamBridgeState_camLoggingId);
  outlined destroy of UUID?(v0 + OBJC_IVAR____TtC14SiriKitRuntime14CamBridgeState_caarLoggingId);
  return v0;
}

void type metadata completion function for CamBridgeState(uint64_t a1)
{
  type metadata accessor for UUID?(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for UUID?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for UUID?)
  {
    type metadata accessor for UUID();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for UUID?);
    }
  }
}

uint64_t CamFeatureFlag.isEnabled.getter()
{
  if (one-time initialization token for forceEnabled != -1)
  {
    swift_once();
  }

  v0 = static CamFeatureFlag.forceEnabled;
  os_unfair_lock_lock((static CamFeatureFlag.forceEnabled + 20));
  v1 = *(v0 + 16);
  if (v1 == 2)
  {
    v3[3] = &type metadata for CamFeatureFlag;
    v3[4] = lazy protocol witness table accessor for type CamFeatureFlag and conformance CamFeatureFlag();
    LOBYTE(v1) = isFeatureEnabled(_:)();
    __swift_destroy_boxed_opaque_existential_1Tm(v3);
  }

  os_unfair_lock_unlock((v0 + 20));
  return v1 & 1;
}

uint64_t one-time initialization function for forceEnabled()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCySbSgSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCySbSgSo16os_unfair_lock_sVGMR);
  result = swift_allocObject();
  *(result + 20) = 0;
  *(result + 16) = 2;
  static CamFeatureFlag.forceEnabled = result;
  return result;
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCySbSgSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCySbSgSo16os_unfair_lock_sVGMR);
  result = swift_allocObject();
  *(result + 20) = 0;
  *(result + 16) = 2;
  static CaptureSiriXToolOutputFeatureFlag.forceEnabled = result;
  return result;
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCySbSgSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCySbSgSo16os_unfair_lock_sVGMR);
  result = swift_allocObject();
  *(result + 20) = 0;
  *(result + 16) = 2;
  static ConversationBridgeFeatureFlag.forceEnabled = result;
  return result;
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCySbSgSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCySbSgSo16os_unfair_lock_sVGMR);
  result = swift_allocObject();
  *(result + 20) = 0;
  *(result + 16) = 2;
  static FlexibleAnnounceFeatureFlag.forceEnabled = result;
  return result;
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCySbSgSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCySbSgSo16os_unfair_lock_sVGMR);
  result = swift_allocObject();
  *(result + 20) = 0;
  *(result + 16) = 2;
  static SiriCAMAppDisambiguationFeatureFlag.forceEnabled = result;
  return result;
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCySbSgSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCySbSgSo16os_unfair_lock_sVGMR);
  result = swift_allocObject();
  *(result + 20) = 0;
  *(result + 16) = 2;
  static StopRepromptFeatureFlag.forceEnabled = result;
  return result;
}

uint64_t *CamFeatureFlag.forceEnabled.unsafeMutableAddressor()
{
  if (one-time initialization token for forceEnabled != -1)
  {
    swift_once();
  }

  return &static CamFeatureFlag.forceEnabled;
}

uint64_t static CamFeatureFlag.forceEnabled.getter()
{
  if (one-time initialization token for forceEnabled != -1)
  {
    swift_once();
  }
}

Swift::Int CamFeatureFlag.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x1E12A23F0](0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance CamFeatureFlag()
{
  Hasher.init(_seed:)();
  MEMORY[0x1E12A23F0](0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CamFeatureFlag(uint64_t a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1E12A23F0](0);
  return Hasher._finalize()();
}

uint64_t Parse.asCamParse()@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = type metadata accessor for Siri_Nlu_External_UserParse();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = type metadata accessor for USOParse();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v26[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for Parse();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v26[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v11 + 16))(v14, v2, v10, v12);
  v15 = (*(v11 + 88))(v14, v10);
  if (v15 == *MEMORY[0x1E69D0138])
  {
    (*(v11 + 96))(v14, v10);
    *a1 = *v14;
    v16 = MEMORY[0x1E69CE2F8];
LABEL_5:
    v17 = *v16;
    v18 = type metadata accessor for CamParse();
    return (*(*(v18 - 8) + 104))(a1, v17, v18);
  }

  if (v15 == *MEMORY[0x1E69D0168])
  {
    (*(v11 + 96))(v14, v10);
    (*(v7 + 32))(v9, v14, v6);
    USOParse.userParse.getter();
    USOParse.parserIdentifier.getter();
    USOParse.appBundleId.getter();
    USOParse.groupIndex.getter();
    CamUSOParse.init(userParse:parserIdentifier:appBundleId:groupIndex:)();
    (*(v7 + 8))(v9, v6);
    v16 = MEMORY[0x1E69CE300];
    goto LABEL_5;
  }

  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  __swift_project_value_buffer(v20, static Logger.executor);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_1DC659000, v21, v22, "CamBridge: Received unexpected Parse type in asCamParse", v23, 2u);
    MEMORY[0x1E12A2F50](v23, -1, -1);
  }

  v24 = *MEMORY[0x1E69CE308];
  v25 = type metadata accessor for CamParse();
  (*(*(v25 - 8) + 104))(a1, v24, v25);
  return (*(v11 + 8))(v14, v10);
}

uint64_t CamParse.asSKEParse()@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = type metadata accessor for Siri_Nlu_External_UserParse();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = type metadata accessor for CamUSOParse();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v26[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for CamParse();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v26[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v11 + 16))(v14, v2, v10, v12);
  v15 = (*(v11 + 88))(v14, v10);
  if (v15 == *MEMORY[0x1E69CE300])
  {
    (*(v11 + 96))(v14, v10);
    (*(v7 + 32))(v9, v14, v6);
    CamUSOParse.userParse.getter();
    CamUSOParse.parserIdentifier.getter();
    CamUSOParse.appBundleId.getter();
    CamUSOParse.groupIndex.getter();
    USOParse.init(userParse:parserIdentifier:appBundleId:groupIndex:)();
    (*(v7 + 8))(v9, v6);
    v16 = MEMORY[0x1E69D0168];
LABEL_7:
    v17 = *v16;
    v18 = type metadata accessor for Parse();
    return (*(*(v18 - 8) + 104))(a1, v17, v18);
  }

  if (v15 == *MEMORY[0x1E69CE2F8])
  {
    (*(v11 + 96))(v14, v10);
    *a1 = *v14;
    v16 = MEMORY[0x1E69D0138];
    goto LABEL_7;
  }

  if (v15 == *MEMORY[0x1E69CE308])
  {
    v16 = MEMORY[0x1E69D0178];
    goto LABEL_7;
  }

  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  __swift_project_value_buffer(v20, static Logger.executor);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_1DC659000, v21, v22, "Unknown CamParse type, defaulting to Parse.empty!", v23, 2u);
    MEMORY[0x1E12A2F50](v23, -1, -1);
  }

  v24 = *MEMORY[0x1E69D0178];
  v25 = type metadata accessor for Parse();
  (*(*(v25 - 8) + 104))(a1, v24, v25);
  return (*(v11 + 8))(v14, v10);
}

uint64_t CamParse.asLinkParse(userData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v4 = type metadata accessor for USOParse();
  v51 = *(v4 - 8);
  v52 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v50 = v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v49 - v7;
  v54 = type metadata accessor for Parse();
  v9 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v11 = v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v53 = (v49 - v13);
  v14 = type metadata accessor for CamParse();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v18, v2, v14, v16);
  v19 = (*(v15 + 88))(v18, v14);
  v20 = *MEMORY[0x1E69CE300];
  (*(v15 + 8))(v18, v14);
  if (v19 == v20 && *(a1 + 16) && (v21 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000014, 0x80000001DCA7DDD0), (v22 & 1) != 0) && (outlined init with copy of Any(*(a1 + 56) + 32 * v21, v57), (swift_dynamicCast() & 1) != 0))
  {
    v23 = v56;
    v24 = v53;
    CamParse.asSKEParse()(v53);
    v25 = v54;
    (*(v9 + 16))(v11, v24, v54);
    v26 = v25;
    if ((*(v9 + 88))(v11, v25) == *MEMORY[0x1E69D0168])
    {
      v49[1] = v23;
      (*(v9 + 96))(v11, v25);
      v28 = v51;
      v27 = v52;
      (*(v51 + 32))(v8, v11, v52);
      (*(v28 + 16))(v50, v8, v27);
      if (*(a1 + 16))
      {
        v29 = specialized __RawDictionaryStorage.find<A>(_:)(0x69746E456B6E696CLL, 0xEE00657079547974);
        if (v30)
        {
          outlined init with copy of Any(*(a1 + 56) + 32 * v29, v57);
          swift_dynamicCast();
        }
      }

      v48 = v55;
      LinkParse.init(usoParse:actionId:entityId:entityDisplayName:)();
      (*(v28 + 8))(v8, v27);
      (*(v9 + 8))(v53, v25);
      (*(v9 + 104))(v48, *MEMORY[0x1E69D0170], v25);
      v41 = v25;
      v40 = v48;
      v39 = 0;
    }

    else
    {

      v43 = *(v9 + 8);
      v43(v11, v25);
      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v44 = type metadata accessor for Logger();
      __swift_project_value_buffer(v44, static Logger.executor);
      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        *v47 = 0;
        _os_log_impl(&dword_1DC659000, v45, v46, "CamBridge: Could not get USO parse to add to Link Parse", v47, 2u);
        MEMORY[0x1E12A2F50](v47, -1, -1);
      }

      v43(v53, v26);
      v41 = v26;
      v39 = 1;
      v40 = v55;
    }
  }

  else
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    __swift_project_value_buffer(v31, static Logger.executor);

    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v57[0] = v35;
      *v34 = 136315138;
      v36 = Dictionary.description.getter();
      v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v37, v57);

      *(v34 + 4) = v38;
      _os_log_impl(&dword_1DC659000, v32, v33, "CamBridge: Could not retrieve details from RankedAction for constructing a link parse. userData=%s", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v35);
      MEMORY[0x1E12A2F50](v35, -1, -1);
      MEMORY[0x1E12A2F50](v34, -1, -1);
    }

    v39 = 1;
    v41 = v54;
    v40 = v55;
  }

  return (*(v9 + 56))(v40, v39, 1, v41);
}

Swift::Int ConversationAction.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1E12A23F0](a1);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type ConversationAction and conformance ConversationAction()
{
  result = lazy protocol witness table cache variable for type ConversationAction and conformance ConversationAction;
  if (!lazy protocol witness table cache variable for type ConversationAction and conformance ConversationAction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConversationAction and conformance ConversationAction);
  }

  return result;
}

uint64_t *assignWithCopy for CamOutput(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    outlined destroy of CamOutput(a1);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v5 = type metadata accessor for Input();
      (*(*(v5 - 8) + 16))(a1, a2, v5);
    }

    else
    {
      *a1 = *a2;
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t outlined destroy of CamOutput(uint64_t a1)
{
  v2 = type metadata accessor for CamOutput(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for CamOutput(uint64_t a1)
{
  result = type metadata singleton initialization cache for CamOutput;
  if (!type metadata singleton initialization cache for CamOutput)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *assignWithTake for CamOutput(void *a1, const void *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  outlined destroy of CamOutput(a1);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for Input();
    (*(*(v6 - 8) + 32))(a1, a2, v6);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v8 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v8);
}

uint64_t dispatch thunk of CamBridge.action(requestId:camId:rcId:speechPackage:rankedActions:inputOrigin:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v20 = (*(a10 + 24) + **(a10 + 24));
  v18 = swift_task_alloc();
  *(v10 + 16) = v18;
  *v18 = v10;
  v18[1] = AppShortcutStateProvider.intentsStates(appShortcutTargets:conditionalIntentMetadata:);

  return v20(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
}

uint64_t dispatch thunk of CamBridge.selectAction(rcId:speechPackage:rankedActions:conversationHelperInput:conversationHelper:inputOrigin:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v20 = (*(a11 + 32) + **(a11 + 32));
  v18 = swift_task_alloc();
  *(v11 + 16) = v18;
  *v18 = v11;
  v18[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return v20(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
}

uint64_t dispatch thunk of CamBridge.commit(rcId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 40) + **(a4 + 40));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of CamBridge.commit(action:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 48) + **(a3 + 48));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of CamBridge.rank(rcId:actions:rankerContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 56) + **(a6 + 56));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = AppShortcutStateProvider.intentsStates(appShortcutTargets:conditionalIntentMetadata:);

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t storeEnumTagSinglePayload for ConversationAction(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
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

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

SiriKitRuntime::CAMRootFlowAffinityScorer __swiftcall CAMRootFlowAffinityScorer.init()()
{
  v0 = 0x80000001DCA7C9E0;
  v1 = 0xD000000000000020;
  result.bundleIdentifier._object = v0;
  result.bundleIdentifier._countAndFlagsBits = v1;
  return result;
}

uint64_t specialized CAMRootFlowAffinityScorer.repeatRecentDialogIntentAffinity(intent:environment:)(char a1)
{
  type metadata accessor for RecentDialogsEnvironmentProvider();
  lazy protocol witness table accessor for type RecentDialogsEnvironmentProvider and conformance RecentDialogsEnvironmentProvider();
  v2 = *dispatch thunk of SiriEnvironment.subscript.getter();
  if (a1)
  {
    if (a1 == 1)
    {
      v3 = (*(v2 + 152))();

      if (v3)
      {
        if (one-time initialization token for executor != -1)
        {
          swift_once();
        }

        v4 = type metadata accessor for Logger();
        __swift_project_value_buffer(v4, static Logger.executor);
        v5 = Logger.logObject.getter();
        v6 = static os_log_type_t.debug.getter();
        if (!os_log_type_enabled(v5, v6))
        {
          goto LABEL_20;
        }

        v7 = swift_slowAlloc();
        v8 = swift_slowAlloc();
        v23 = v8;
        *v7 = 136315138;
        v9 = "RepeatRecentDialogIntent.userAskedToGoBack";
        goto LABEL_18;
      }
    }

    else
    {
      v13 = (*(v2 + 152))();

      if (v13)
      {
        if (one-time initialization token for executor != -1)
        {
          swift_once();
        }

        v14 = type metadata accessor for Logger();
        __swift_project_value_buffer(v14, static Logger.executor);
        v5 = Logger.logObject.getter();
        v6 = static os_log_type_t.debug.getter();
        if (!os_log_type_enabled(v5, v6))
        {
          goto LABEL_20;
        }

        v7 = swift_slowAlloc();
        v8 = swift_slowAlloc();
        v23 = v8;
        *v7 = 136315138;
        v9 = "RepeatRecentDialogIntent.indirectDismissal";
LABEL_18:
        *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002ALL, (v9 - 32) | 0x8000000000000000, &v23);
        v12 = "CAMRootFlowAffinityScorer: has a dialog to go back to, returning high confidence for %s.";
LABEL_19:
        _os_log_impl(&dword_1DC659000, v5, v6, v12, v7, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v8);
        MEMORY[0x1E12A2F50](v8, -1, -1);
        MEMORY[0x1E12A2F50](v7, -1, -1);
LABEL_20:

        return 3;
      }
    }
  }

  else
  {
    v10 = (*(v2 + 128))();

    if (v10)
    {
      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v11 = type metadata accessor for Logger();
      __swift_project_value_buffer(v11, static Logger.executor);
      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v5, v6))
      {
        goto LABEL_20;
      }

      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v23 = v8;
      *v7 = 136315138;
      *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002ALL, 0x80000001DCA7DE50, &v23);
      v12 = "CAMRootFlowAffinityScorer: has a dialog to repeat, returning high confidence for %s.";
      goto LABEL_19;
    }
  }

  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static Logger.executor);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v23 = v20;
    *v19 = 136315138;
    if (a1)
    {
      if (a1 == 1)
      {
        v21 = "ogIntent.indirectDismissal";
      }

      else
      {
        v21 = "linkActionIdentifier";
      }
    }

    else
    {
      v21 = "ogIntent.userAskedToGoBack";
    }

    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002ALL, v21 | 0x8000000000000000, &v23);

    *(v19 + 4) = v22;
    _os_log_impl(&dword_1DC659000, v17, v18, "CAMRootFlowAffinityScorer: no replayable recent dialogs for %s, returning low confidence.", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    MEMORY[0x1E12A2F50](v20, -1, -1);
    MEMORY[0x1E12A2F50](v19, -1, -1);
  }

  return 1;
}

uint64_t specialized CAMRootFlowAffinityScorer.taskInterruptionAffinity(input:environment:)(uint64_t a1)
{
  v2 = type metadata accessor for Siri_Nlu_External_UserParse();
  v51 = *(v2 - 8);
  v52 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v49 = v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for USOParse();
  v48 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v47 = v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for UniversalActionFeatureFlags();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Parse();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v53 = v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v46 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = v46 - v16;
  Input.parse.getter();
  v18 = Parse.hasDirectDismissal.getter();
  v54 = v10;
  v19 = *(v10 + 8);
  v19(v17, v9);
  if ((v18 & 1) == 0)
  {
    v46[1] = a1;
    Input.parse.getter();
    v25 = Parse.hasThankYou.getter();
    v19(v17, v9);
    if ((v25 & 1) == 0)
    {
      (*(v6 + 104))(v8, *MEMORY[0x1E69D0080], v5);
      v29 = UniversalActionFeatureFlags.isEnabled.getter();
      (*(v6 + 8))(v8, v5);
      if (v29 & 1) != 0 && ((Input.parse.getter(), v30 = Parse.hasCancelled.getter(), v19(v14, v9), (v30) || (Input.parse.getter(), v31 = Parse.hasRejected.getter(), v19(v17, v9), (v31)))
      {
        v32 = v53;
        Input.parse.getter();
        v33 = v54;
        if ((*(v54 + 88))(v32, v9) == *MEMORY[0x1E69D0168])
        {
          (*(v33 + 96))(v32, v9);
          v35 = v47;
          v34 = v48;
          v36 = v32;
          v37 = v50;
          (*(v48 + 32))(v47, v36, v50);
          v38 = v49;
          v39 = USOParse.userParse.getter();
          v40 = MEMORY[0x1E129C0F0](v39);
          (*(v51 + 8))(v38, v52);
          (*(v34 + 8))(v35, v37);
          v41 = *(v40 + 16);

          if (v41 > 1)
          {
            return 0;
          }
        }

        else
        {
          v19(v32, v9);
        }

        if (one-time initialization token for executor != -1)
        {
          swift_once();
        }

        v44 = type metadata accessor for Logger();
        __swift_project_value_buffer(v44, static Logger.executor);
        v21 = Logger.logObject.getter();
        v45 = static os_log_type_t.debug.getter();
        if (!os_log_type_enabled(v21, v45))
        {
          v27 = 1;
          goto LABEL_14;
        }

        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&dword_1DC659000, v21, v45, "CAMRootFlowAffinityScorer Got user cancelled.", v23, 2u);
        v27 = 1;
      }

      else
      {
        if (one-time initialization token for executor != -1)
        {
          swift_once();
        }

        v42 = type metadata accessor for Logger();
        __swift_project_value_buffer(v42, static Logger.executor);
        v21 = Logger.logObject.getter();
        v43 = static os_log_type_t.error.getter();
        if (!os_log_type_enabled(v21, v43))
        {
          v27 = 0;
          goto LABEL_14;
        }

        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&dword_1DC659000, v21, v43, "CAMRootFlowAffinityScorer Got an unsupported universal action.", v23, 2u);
        v27 = 0;
      }

      goto LABEL_12;
    }

    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    __swift_project_value_buffer(v26, static Logger.executor);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      v24 = "CAMRootFlowAffinityScorer Got thank you.";
      goto LABEL_11;
    }

LABEL_13:
    v27 = 3;
    goto LABEL_14;
  }

  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  __swift_project_value_buffer(v20, static Logger.executor);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.debug.getter();
  if (!os_log_type_enabled(v21, v22))
  {
    goto LABEL_13;
  }

  v23 = swift_slowAlloc();
  *v23 = 0;
  v24 = "CAMRootFlowAffinityScorer Got direct dismissal.";
LABEL_11:
  _os_log_impl(&dword_1DC659000, v21, v22, v24, v23, 2u);
  v27 = 3;
LABEL_12:
  MEMORY[0x1E12A2F50](v23, -1, -1);
LABEL_14:

  return v27;
}

uint64_t specialized CAMRootFlowAffinityScorer.score(input:environment:)(uint64_t a1)
{
  v2 = type metadata accessor for Parse();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  Input.parse.getter();
  v6 = specialized static RepeatRecentDialogIntent.fromParse(_:)(v5);
  v7 = *(v3 + 8);
  v7(v5, v2);
  if (v6 != 3)
  {
    return specialized CAMRootFlowAffinityScorer.repeatRecentDialogIntentAffinity(intent:environment:)(v6);
  }

  Input.parse.getter();
  v8 = Parse.interpretableAsUniversalAction.getter();
  v7(v5, v2);
  if (v8)
  {
    return specialized CAMRootFlowAffinityScorer.taskInterruptionAffinity(input:environment:)(a1);
  }

  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static Logger.executor);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v10 = 2;
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_1DC659000, v13, v14, "CAMRootFlowAffinityScorer: not a universal action special case, returning default score.", v15, 2u);
    MEMORY[0x1E12A2F50](v15, -1, -1);
  }

  else
  {

    return 2;
  }

  return v10;
}

unint64_t lazy protocol witness table accessor for type RecentDialogsEnvironmentProvider and conformance RecentDialogsEnvironmentProvider()
{
  result = lazy protocol witness table cache variable for type RecentDialogsEnvironmentProvider and conformance RecentDialogsEnvironmentProvider;
  if (!lazy protocol witness table cache variable for type RecentDialogsEnvironmentProvider and conformance RecentDialogsEnvironmentProvider)
  {
    type metadata accessor for RecentDialogsEnvironmentProvider();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RecentDialogsEnvironmentProvider and conformance RecentDialogsEnvironmentProvider);
  }

  return result;
}

uint64_t CancelExecutionTurn.executionRequestId.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void *CancelExecutionTurn.__allocating_init(executionRequestId:cancellationReason:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  return result;
}

void *CancelExecutionTurn.init(executionRequestId:cancellationReason:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;
  return v3;
}

uint64_t CancelExecutionTurn.debugDescription.getter()
{
  _StringGuts.grow(_:)(53);
  v1 = _typeName(_:qualified:)();
  MEMORY[0x1E12A1580](v1);

  MEMORY[0x1E12A1580](0xD000000000000016, 0x80000001DCA7DE80);
  MEMORY[0x1E12A1580](*(v0 + 16), *(v0 + 24));
  MEMORY[0x1E12A1580](0xD000000000000018, 0x80000001DCA7DEA0);
  type metadata accessor for AFRequestCancellationReason(0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1E12A1580](125, 0xE100000000000000);
  return 0;
}

uint64_t CancelExecutionTurn.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t CandidateRequestMessage.message.getter(unint64_t a1)
{
  if (a1 >> 61)
  {
    v1 = a1 & 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v1 = a1;
  }

  if ((a1 >> 61) <= 2)
  {
    v2 = v1;
  }

  else
  {
    v2 = a1 & 0x1FFFFFFFFFFFFFFFLL;
  }

  v3 = (a1 & 0x1FFFFFFFFFFFFFFFLL);
  return v2;
}

unint64_t specialized static CandidateRequestMessage.from(_:)(void *a1)
{
  type metadata accessor for StartCandidateRequestMessage();
  v2 = swift_dynamicCastClass();
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    type metadata accessor for TRPCandidateRequestMessage();
    v4 = swift_dynamicCastClass();
    if (v4)
    {
      v3 = v4 | 0x2000000000000000;
    }

    else
    {
      type metadata accessor for NLRoutingDecisionMessage();
      v5 = swift_dynamicCastClass();
      if (v5)
      {
        v3 = v5 | 0x6000000000000000;
      }

      else
      {
        type metadata accessor for TTResponseMessage();
        v6 = swift_dynamicCastClass();
        if (v6)
        {
          v3 = v6 | 0x4000000000000000;
        }

        else
        {
          type metadata accessor for SpeechStopDetectedMessage();
          v7 = swift_dynamicCastClass();
          if (v7)
          {
            v3 = v7 | 0x8000000000000000;
          }

          else
          {
            type metadata accessor for StoppedListeningForSpeechContinuationMessage();
            v8 = swift_dynamicCastClass();
            if (v8)
            {
              v3 = v8 | 0xA000000000000000;
            }

            else
            {
              type metadata accessor for ExecuteNLOnServerMessage();
              v9 = swift_dynamicCastClass();
              if (!v9)
              {
                return 0xF000000000000007;
              }

              v3 = v9 | 0xC000000000000000;
            }
          }
        }
      }
    }
  }

  v10 = a1;
  return v3;
}

uint64_t *assignWithCopy for CandidateRequestMessage(uint64_t *a1, uint64_t *a2)
{
  v3 = (*a2 & 0x1FFFFFFFFFFFFFFFLL);
  v4 = *a1;
  *a1 = *a2;
  v5 = (v4 & 0x1FFFFFFFFFFFFFFFLL);
  v6 = v3;

  return a1;
}

uint64_t *assignWithTake for CandidateRequestMessage(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for CandidateRequestMessage(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7A && *(a1 + 8))
  {
    return (*a1 + 122);
  }

  v3 = (((*a1 >> 57) >> 4) | (8 * ((*a1 >> 57) & 8 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x79)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for CandidateRequestMessage(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x79)
  {
    *result = a2 - 122;
    if (a3 >= 0x7A)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7A)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 3) & 0xF | (16 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t *CaptureSiriXToolOutputFeatureFlag.forceEnabled.unsafeMutableAddressor()
{
  if (one-time initialization token for forceEnabled != -1)
  {
    swift_once();
  }

  return &static CaptureSiriXToolOutputFeatureFlag.forceEnabled;
}

uint64_t static CaptureSiriXToolOutputFeatureFlag.forceEnabled.getter()
{
  if (one-time initialization token for forceEnabled != -1)
  {
    swift_once();
  }
}

uint64_t CaptureSiriXToolOutputFeatureFlag.isEnabled.getter()
{
  if (one-time initialization token for forceEnabled != -1)
  {
    swift_once();
  }

  v0 = static CaptureSiriXToolOutputFeatureFlag.forceEnabled;
  os_unfair_lock_lock((static CaptureSiriXToolOutputFeatureFlag.forceEnabled + 20));
  v1 = *(v0 + 16);
  if (v1 == 2)
  {
    v3[3] = &type metadata for CaptureSiriXToolOutputFeatureFlag;
    v3[4] = lazy protocol witness table accessor for type CaptureSiriXToolOutputFeatureFlag and conformance CaptureSiriXToolOutputFeatureFlag();
    LOBYTE(v1) = isFeatureEnabled(_:)();
    __swift_destroy_boxed_opaque_existential_1Tm(v3);
  }

  os_unfair_lock_unlock((v0 + 20));
  return v1 & 1;
}

unint64_t lazy protocol witness table accessor for type CaptureSiriXToolOutputFeatureFlag and conformance CaptureSiriXToolOutputFeatureFlag()
{
  result = lazy protocol witness table cache variable for type CaptureSiriXToolOutputFeatureFlag and conformance CaptureSiriXToolOutputFeatureFlag;
  if (!lazy protocol witness table cache variable for type CaptureSiriXToolOutputFeatureFlag and conformance CaptureSiriXToolOutputFeatureFlag)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CaptureSiriXToolOutputFeatureFlag and conformance CaptureSiriXToolOutputFeatureFlag);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CaptureSiriXToolOutputFeatureFlag and conformance CaptureSiriXToolOutputFeatureFlag;
  if (!lazy protocol witness table cache variable for type CaptureSiriXToolOutputFeatureFlag and conformance CaptureSiriXToolOutputFeatureFlag)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CaptureSiriXToolOutputFeatureFlag and conformance CaptureSiriXToolOutputFeatureFlag);
  }

  return result;
}

Swift::Int CaptureSiriXToolOutputFeatureFlag.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x1E12A23F0](0);
  return Hasher._finalize()();
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShySSG_SS9namespace_SSSg5valuets5NeverOTg5038_sS3SSgIggoo_S2S9namespace_AA5valuets5F174OIegnrzr_TR150_s12SiriOntology7UsoTaskC0A10KitRuntimeE35firstCarCommandsUserVocabIdentifier33_62490FE03E7AB891D874A741A997DD8CLLAA12SpanPropertyVSgvgSS_SSSgtSSXEfU_Tf3nnnpf_nTf1cn_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v25 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
  v2 = v25;
  v4 = a1 + 56;
  result = _HashTable.startBucket.getter();
  v6 = result;
  v7 = 0;
  v22 = v1;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
  {
    v9 = v6 >> 6;
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_21;
    }

    v23 = *(a1 + 36);
    v10 = (*(a1 + 48) + 16 * v6);
    v11 = v10[1];
    v24 = *v10;
    v12 = *(v25 + 16);
    v13 = *(v25 + 24);

    if (v12 >= v13 >> 1)
    {
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v12 + 1, 1);
    }

    *(v25 + 16) = v12 + 1;
    v14 = (v25 + 32 * v12);
    v14[4] = v24;
    v14[5] = v11;
    v14[6] = 0;
    v14[7] = 0;
    v8 = 1 << *(a1 + 32);
    if (v6 >= v8)
    {
      goto LABEL_22;
    }

    v4 = a1 + 56;
    v15 = *(a1 + 56 + 8 * v9);
    if ((v15 & (1 << v6)) == 0)
    {
      goto LABEL_23;
    }

    if (v23 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v16 = v15 & (-2 << (v6 & 0x3F));
    if (v16)
    {
      v8 = __clz(__rbit64(v16)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v17 = v9 << 6;
      v18 = v9 + 1;
      v19 = (a1 + 64 + 8 * v9);
      while (v18 < (v8 + 63) >> 6)
      {
        v21 = *v19++;
        v20 = v21;
        v17 += 64;
        ++v18;
        if (v21)
        {
          result = outlined consume of Set<String>.Index._Variant(v6, v23, 0);
          v8 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      result = outlined consume of Set<String>.Index._Variant(v6, v23, 0);
    }

LABEL_4:
    ++v7;
    v6 = v8;
    if (v7 == v22)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

SiriKitRuntime::CarCommandsAffinityScorer __swiftcall CarCommandsAffinityScorer.init()()
{
  v0 = 0x80000001DCA7CA10;
  v1 = 0xD00000000000002CLL;
  result.bundleIdentifier._object = v0;
  result.bundleIdentifier._countAndFlagsBits = v1;
  return result;
}

uint64_t one-time initialization function for kDonatedVocabNamespaceMatches()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DCA66060;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v1;
  v2 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(inited);
  swift_setDeallocating();
  result = outlined destroy of String(inited + 32);
  static CarCommandsAffinityScorer.kDonatedVocabNamespaceMatches = v2;
  return result;
}

uint64_t *CarCommandsAffinityScorer.kDonatedVocabNamespaceMatches.unsafeMutableAddressor()
{
  if (one-time initialization token for kDonatedVocabNamespaceMatches != -1)
  {
    swift_once();
  }

  return &static CarCommandsAffinityScorer.kDonatedVocabNamespaceMatches;
}

uint64_t one-time initialization function for kUserEntityNamespaceMatches()
{
  v0 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(&outlined read-only object #0 of one-time initialization function for kUserEntityNamespaceMatches);
  result = swift_arrayDestroy();
  static CarCommandsAffinityScorer.kUserEntityNamespaceMatches = v0;
  return result;
}

uint64_t *CarCommandsAffinityScorer.kUserEntityNamespaceMatches.unsafeMutableAddressor()
{
  if (one-time initialization token for kUserEntityNamespaceMatches != -1)
  {
    swift_once();
  }

  return &static CarCommandsAffinityScorer.kUserEntityNamespaceMatches;
}

uint64_t one-time initialization function for kSettingsNamespaceMatches()
{
  v0 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(&outlined read-only object #0 of one-time initialization function for kSettingsNamespaceMatches);
  result = swift_arrayDestroy();
  static CarCommandsAffinityScorer.kSettingsNamespaceMatches = v0;
  return result;
}

uint64_t *CarCommandsAffinityScorer.kSettingsNamespaceMatches.unsafeMutableAddressor()
{
  if (one-time initialization token for kSettingsNamespaceMatches != -1)
  {
    swift_once();
  }

  return &static CarCommandsAffinityScorer.kSettingsNamespaceMatches;
}

uint64_t one-time initialization function for kAppNameMatches()
{
  v0 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(&outlined read-only object #0 of one-time initialization function for kAppNameMatches);
  result = outlined destroy of String(&unk_1F5824D38);
  static CarCommandsAffinityScorer.kAppNameMatches = v0;
  return result;
}

uint64_t *CarCommandsAffinityScorer.kAppNameMatches.unsafeMutableAddressor()
{
  if (one-time initialization token for kAppNameMatches != -1)
  {
    swift_once();
  }

  return &static CarCommandsAffinityScorer.kAppNameMatches;
}

uint64_t one-time initialization function for kFloatSettingValuesForVolume()
{
  v0 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(&outlined read-only object #0 of one-time initialization function for kFloatSettingValuesForVolume);
  result = swift_arrayDestroy();
  static CarCommandsAffinityScorer.kFloatSettingValuesForVolume = v0;
  return result;
}

uint64_t *CarCommandsAffinityScorer.kFloatSettingValuesForVolume.unsafeMutableAddressor()
{
  if (one-time initialization token for kFloatSettingValuesForVolume != -1)
  {
    swift_once();
  }

  return &static CarCommandsAffinityScorer.kFloatSettingValuesForVolume;
}

uint64_t one-time initialization function for kRadioLabels()
{
  v0 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(&outlined read-only object #0 of one-time initialization function for kRadioLabels);
  result = swift_arrayDestroy();
  static CarCommandsAffinityScorer.kRadioLabels = v0;
  return result;
}

uint64_t *CarCommandsAffinityScorer.kRadioLabels.unsafeMutableAddressor()
{
  if (one-time initialization token for kRadioLabels != -1)
  {
    swift_once();
  }

  return &static CarCommandsAffinityScorer.kRadioLabels;
}

uint64_t static CarCommandsAffinityScorer.kDonatedVocabNamespaceMatches.getter(void *a1, uint64_t *a2, uint64_t a3)
{
  if (*a1 == -1)
  {
  }

  else
  {
    swift_once();
  }
}

uint64_t CarCommandsAffinityScorer.score(input:environment:)(uint64_t a1, void *a2, void (*a3)(void, void), char *a4)
{
  v144 = a4;
  v142 = a3;
  v128 = a2;
  v4 = type metadata accessor for Parse.DirectInvocation();
  v140 = *(v4 - 8);
  v141 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v138 = &v126 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v139 = &v126 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology21NonTerminalIntentNodeVSgMd, &_s12SiriOntology21NonTerminalIntentNodeVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v126 - v9;
  v11 = type metadata accessor for NLIntent();
  v143 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v126 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = type metadata accessor for CarCommandsAffinityScoringData(0);
  MEMORY[0x1EEE9AC00](v127);
  v129 = &v126 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Siri_Nlu_External_UserParse();
  v132 = *(v15 - 8);
  v133 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v126 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v131 = &v126 - v19;
  v20 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v134 = *(v20 - 8);
  v135 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v126 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v130 = &v126 - v24;
  v137 = type metadata accessor for USOParse();
  v25 = *(v137 - 8);
  MEMORY[0x1EEE9AC00](v137);
  v136 = &v126 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for Parse();
  v28 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v126 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  Input.parse.getter();
  v31 = (*(v28 + 88))(v30, v27);
  if (v31 != *MEMORY[0x1E69D0120])
  {
    if (v31 == *MEMORY[0x1E69D0158])
    {
      (*(v28 + 96))(v30, v27);
      v48 = v139;
      v47 = v140;
      v49 = v141;
      (*(v140 + 32))(v139, v30, v141);
      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v50 = type metadata accessor for Logger();
      __swift_project_value_buffer(v50, static Logger.executor);
      v51 = v138;
      (*(v47 + 16))(v138, v48, v49);
      v52 = Logger.logObject.getter();
      v53 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v145 = v55;
        *v54 = 136315138;
        v56 = Parse.DirectInvocation.identifier.getter();
        v57 = v51;
        v59 = v58;
        v60 = *(v47 + 8);
        v60(v57, v49);
        v61 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v56, v59, &v145);

        *(v54 + 4) = v61;
        _os_log_impl(&dword_1DC659000, v52, v53, "CarCommandsAffinityScorer received a direct invocation: %s", v54, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v55);
        MEMORY[0x1E12A2F50](v55, -1, -1);
        MEMORY[0x1E12A2F50](v54, -1, -1);
      }

      else
      {

        v60 = *(v47 + 8);
        v60(v51, v49);
      }

      v60(v48, v49);
      return 2;
    }

    if (v31 != *MEMORY[0x1E69D0168])
    {
      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v83 = type metadata accessor for Logger();
      __swift_project_value_buffer(v83, static Logger.executor);
      v84 = Logger.logObject.getter();
      v85 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v84, v85))
      {
        v86 = swift_slowAlloc();
        *v86 = 0;
        _os_log_impl(&dword_1DC659000, v84, v85, "CarCommandsAffinityScorer got an unexpected parse. Returning score: .unsupported", v86, 2u);
        MEMORY[0x1E12A2F50](v86, -1, -1);
      }

      (*(v28 + 8))(v30, v27);
      return 0;
    }

    (*(v28 + 96))(v30, v27);
    v143 = v25;
    (*(v25 + 32))(v136, v30, v137);
    v66 = USOParse.userParse.getter();
    v67 = MEMORY[0x1E129C0F0](v66);
    (*(v132 + 8))(v17, v133);
    v68 = *(v67 + 16);
    v38 = v134;
    v37 = v135;
    if (v68)
    {
      v69 = 0;
      v70 = (v134 + 8);
      while (v69 < *(v67 + 16))
      {
        (*(v38 + 16))(v22, v67 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v69, v37);
        if (Siri_Nlu_External_UserDialogAct.hasUserStatedTask.getter())
        {

          v72 = v131;
          (*(v38 + 32))(v131, v22, v37);
          v71 = 0;
          goto LABEL_38;
        }

        ++v69;
        (*v70)(v22, v37);
        if (v68 == v69)
        {
          goto LABEL_23;
        }
      }

      __break(1u);
      goto LABEL_90;
    }

LABEL_23:

    v71 = 1;
    v72 = v131;
LABEL_38:
    (*(v38 + 56))(v72, v71, 1, v37);
    if ((*(v38 + 48))(v72, 1, v37) == 1)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(v72, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v87 = type metadata accessor for Logger();
      __swift_project_value_buffer(v87, static Logger.executor);
      v88 = Logger.logObject.getter();
      v89 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v88, v89))
      {
        v90 = swift_slowAlloc();
        *v90 = 0;
        _os_log_impl(&dword_1DC659000, v88, v89, "CarCommandsAffinityScorer could not extract UserDialogAct. Returning score: .unsupported", v90, 2u);
        MEMORY[0x1E12A2F50](v90, -1, -1);
      }

      goto LABEL_51;
    }

    (*(v38 + 32))(v130, v72, v37);
    v91 = static ConversionUtils.convertUserDialogActToTasks(userDialogAct:)();
    if (v91 >> 62)
    {
      v125 = v91;
      v97 = __CocoaSet.count.getter();
      v91 = v125;
    }

    else
    {
      v97 = *((v91 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v98 = v129;
    v99 = v144;
    if (v97)
    {
      if ((v91 & 0xC000000000000001) != 0)
      {
        v100 = MEMORY[0x1E12A1FE0](0);
      }

      else
      {
        if (!*((v91 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_94;
        }

        v100 = *(v91 + 32);
      }

      *v98 = UsoTask.namesNodeAttachmentInfo()();
      *(v98 + 8) = v101;
      v102 = UsoTask.settingSpanInfo()(v98 + *(v127 + 28));

      *(v98 + 16) = v102 & 1;
      v103 = v142;
      if (CarCommandsAffinityScorer.hasOverrideMatch(on:with:in:)(v100, v98, v128, v142, v99))
      {
        if (one-time initialization token for executor == -1)
        {
LABEL_62:
          v104 = type metadata accessor for Logger();
          __swift_project_value_buffer(v104, static Logger.executor);
          v105 = Logger.logObject.getter();
          v106 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v105, v106))
          {
            v107 = swift_slowAlloc();
            *v107 = 0;
            _os_log_impl(&dword_1DC659000, v105, v106, "CarCommandsAffinityScorer found a match with very high probability of belonging to CarCommmands. Returning score: .override.", v107, 2u);
            MEMORY[0x1E12A2F50](v107, -1, -1);
          }

          outlined destroy of CarCommandsAffinityScoringData(v98);
          (*(v38 + 8))(v130, v135);
          (*(v143 + 8))(v136, v137);
          return 4;
        }

LABEL_94:
        swift_once();
        goto LABEL_62;
      }

      if (specialized CarCommandsAffinityScorer.hasHighProbabilityMatch(on:with:in:)(v98, v103, v99))
      {
        if (one-time initialization token for executor != -1)
        {
          swift_once();
        }

        v109 = type metadata accessor for Logger();
        __swift_project_value_buffer(v109, static Logger.executor);
        v110 = Logger.logObject.getter();
        v111 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v110, v111))
        {
          v112 = swift_slowAlloc();
          *v112 = 0;
          _os_log_impl(&dword_1DC659000, v110, v111, "CarCommandsAffinityScorer found a match with high probability of belonging to CarCommands. Returning score: .high.", v112, 2u);
          MEMORY[0x1E12A2F50](v112, -1, -1);
        }

        outlined destroy of CarCommandsAffinityScoringData(v98);
        (*(v38 + 8))(v130, v135);
        (*(v143 + 8))(v136, v137);
        return 3;
      }

      if (specialized CarCommandsAffinityScorer.hasMediumProbabilityMatch(on:with:)(v98, v103, v99, v108))
      {
        if (one-time initialization token for executor != -1)
        {
          swift_once();
        }

        v113 = type metadata accessor for Logger();
        __swift_project_value_buffer(v113, static Logger.executor);
        v114 = Logger.logObject.getter();
        v115 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v114, v115))
        {
          v82 = 2;
          v116 = swift_slowAlloc();
          *v116 = 0;
          _os_log_impl(&dword_1DC659000, v114, v115, "CarCommandsAffinityScorer found a match with medium probability of belonging to CarCommands. Returning score: .default.", v116, 2u);
          MEMORY[0x1E12A2F50](v116, -1, -1);

          outlined destroy of CarCommandsAffinityScoringData(v98);
          (*(v38 + 8))(v130, v135);
          (*(v143 + 8))(v136, v137);
        }

        else
        {

          outlined destroy of CarCommandsAffinityScoringData(v98);
          (*(v38 + 8))(v130, v135);
          (*(v143 + 8))(v136, v137);
          return 2;
        }

        return v82;
      }

      if (specialized CarCommandsAffinityScorer.hasLowProbabilityMatch(on:with:in:)(v100, v98))
      {
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
          *v120 = 0;
          _os_log_impl(&dword_1DC659000, v118, v119, "CarCommandsAffinityScorer found a match with low probability of belonging to CarCommands. Returning score: .low.", v120, 2u);
          MEMORY[0x1E12A2F50](v120, -1, -1);
        }

        outlined destroy of CarCommandsAffinityScoringData(v98);
        (*(v38 + 8))(v130, v135);
        (*(v143 + 8))(v136, v137);
        return 1;
      }

      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v121 = type metadata accessor for Logger();
      __swift_project_value_buffer(v121, static Logger.executor);
      v122 = Logger.logObject.getter();
      v123 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v122, v123))
      {
        v124 = swift_slowAlloc();
        *v124 = 0;
        _os_log_impl(&dword_1DC659000, v122, v123, "CarCommandsAffinityScorer found no CarCommands identifiers. Returning score: .unsupported", v124, 2u);
        MEMORY[0x1E12A2F50](v124, -1, -1);
      }

      outlined destroy of CarCommandsAffinityScoringData(v98);
    }

    else
    {

      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v92 = type metadata accessor for Logger();
      __swift_project_value_buffer(v92, static Logger.executor);
      v93 = Logger.logObject.getter();
      v94 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v93, v94))
      {
        v95 = swift_slowAlloc();
        *v95 = 0;
        _os_log_impl(&dword_1DC659000, v93, v94, "CarCommandsAffinityScorer could not extract UsoTask. Returning score: .unsupported", v95, 2u);
        MEMORY[0x1E12A2F50](v95, -1, -1);
      }
    }

    (*(v38 + 8))(v130, v135);
LABEL_51:
    (*(v143 + 8))(v136, v137);
    return 0;
  }

  (*(v28 + 96))(v30, v27);
  v32 = v143;
  (*(v143 + 32))(v13, v30, v11);
  NLIntent.domainNode.getter();
  v33 = type metadata accessor for NonTerminalIntentNode();
  v34 = *(v33 - 8);
  v35 = (*(v34 + 48))(v10, 1, v33);
  v36 = v11;
  v11 = v32;
  v37 = v13;
  v38 = v36;
  if (v35 == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v10, &_s12SiriOntology21NonTerminalIntentNodeVSgMd, &_s12SiriOntology21NonTerminalIntentNodeVSgMR);
    v22 = v144;
    goto LABEL_4;
  }

  v62 = NonTerminalIntentNode.ontologyNodeName.getter();
  v64 = v63;
  (*(v34 + 8))(v10, v33);
  v65 = v62 == 0x616D6D6F43726163;
  v22 = v144;
  if (v65 && v64 == 0xEB0000000073646ELL)
  {
  }

  else
  {
    v73 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v73 & 1) == 0)
    {
LABEL_4:
      if (one-time initialization token for executor == -1)
      {
LABEL_5:
        v39 = type metadata accessor for Logger();
        __swift_project_value_buffer(v39, static Logger.executor);

        v40 = Logger.logObject.getter();
        v41 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v40, v41))
        {
          v42 = swift_slowAlloc();
          v43 = swift_slowAlloc();
          v146 = v22;
          v147[0] = v43;
          *v42 = 136315138;
          v145 = v142;

          v44 = String.init<A>(describing:)();
          v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v45, v147);

          *(v42 + 4) = v46;
          _os_log_impl(&dword_1DC659000, v40, v41, "%s received an NLv3 parse that does not contain a carCommands domain node. Returning score: .unsupported.", v42, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v43);
          MEMORY[0x1E12A2F50](v43, -1, -1);
          MEMORY[0x1E12A2F50](v42, -1, -1);
        }

        (*(v11 + 8))(v37, v38);
        return 0;
      }

LABEL_90:
      swift_once();
      goto LABEL_5;
    }
  }

  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v74 = type metadata accessor for Logger();
  __swift_project_value_buffer(v74, static Logger.executor);

  v75 = Logger.logObject.getter();
  v76 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v75, v76))
  {
    v77 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    v146 = v22;
    v147[0] = v78;
    *v77 = 136315138;
    v145 = v142;

    v79 = String.init<A>(describing:)();
    v81 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v79, v80, v147);

    *(v77 + 4) = v81;
    _os_log_impl(&dword_1DC659000, v75, v76, "%s received an NLv3 parse with a carCommands domain node. Returning score: .override.", v77, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v78);
    MEMORY[0x1E12A2F50](v78, -1, -1);
    MEMORY[0x1E12A2F50](v77, -1, -1);
  }

  (*(v11 + 8))(v37, v38);
  return 4;
}

uint64_t CarCommandsAffinityScoringData.init(usoTask:)@<X0>(uint64_t a2@<X8>)
{
  *a2 = UsoTask.namesNodeAttachmentInfo()();
  *(a2 + 8) = v3;
  v4 = type metadata accessor for CarCommandsAffinityScoringData(0);
  v5 = UsoTask.settingSpanInfo()(a2 + *(v4 + 28));

  *(a2 + 16) = v5 & 1;
  return result;
}

uint64_t CarCommandsAffinityScorer.hasOverrideMatch(on:with:in:)(void (*a1)(void, void), unsigned __int8 *a2, void *a3, void (*a4)(void, void), uint64_t a5)
{
  v311 = a4;
  v312 = a5;
  v308 = a2;
  v309 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology14AsrAlternativeVSgMd, &_s12SiriOntology14AsrAlternativeVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v291 = &v284 - v7;
  v295 = type metadata accessor for AsrAlternative();
  v292 = *(v295 - 8);
  MEMORY[0x1EEE9AC00](v295);
  v286 = &v284 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v288 = &v284 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v289 = &v284 - v12;
  v307 = type metadata accessor for CarCommandsAffinityScoringData(0);
  MEMORY[0x1EEE9AC00](v307);
  v303 = &v284 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology12SpanPropertyVSgMd, &_s12SiriOntology12SpanPropertyVSgMR);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v297 = &v284 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v298 = &v284 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v304 = &v284 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v306 = &v284 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v284 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v284 - v26;
  v28 = type metadata accessor for SpanProperty();
  v29 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v290 = &v284 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v293 = &v284 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v287 = &v284 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v296 = &v284 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v299 = &v284 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v300 = &v284 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v294 = &v284 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v302 = &v284 - v44;
  MEMORY[0x1EEE9AC00](v45);
  v301 = &v284 - v46;
  MEMORY[0x1EEE9AC00](v47);
  v305 = &v284 - v48;
  MEMORY[0x1EEE9AC00](v49);
  v310 = &v284 - v50;
  MEMORY[0x1EEE9AC00](v51);
  v53 = &v284 - v52;
  MEMORY[0x1EEE9AC00](v54);
  v56 = &v284 - v55;
  if (one-time initialization token for kDonatedVocabNamespaceMatches != -1)
  {
    swift_once();
  }

  v57 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShySSG_SS9namespace_SSSg5valuets5NeverOTg5038_sS3SSgIggoo_S2S9namespace_AA5valuets5F174OIegnrzr_TR150_s12SiriOntology7UsoTaskC0A10KitRuntimeE35firstCarCommandsUserVocabIdentifier33_62490FE03E7AB891D874A741A997DD8CLLAA12SpanPropertyVSgvgSS_SSSgtSSXEfU_Tf3nnnpf_nTf1cn_n(static CarCommandsAffinityScorer.kDonatedVocabNamespaceMatches);
  UsoTask.firstUserEntityMatch(on:)(v57, v27);

  v58 = v29;
  v59 = *(v29 + 48);
  if (v59(v27, 1, v28) != 1)
  {
    (*(v58 + 32))(v56, v27, v28);
    v72 = v58;
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v73 = type metadata accessor for Logger();
    __swift_project_value_buffer(v73, static Logger.executor);
    v74 = *(v58 + 16);
    v74(v53, v56, v28);
    v75 = v312;

    v76 = Logger.logObject.getter();
    v77 = v28;
    v78 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v76, v78))
    {
      v79 = swift_slowAlloc();
      LODWORD(v308) = v78;
      v80 = v79;
      v309 = swift_slowAlloc();
      v314 = v75;
      v315 = v309;
      *v80 = 136315394;
      v313 = v311;

      v81 = String.init<A>(describing:)();
      v83 = v72;
      v84 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v81, v82, &v315);

      *(v80 + 4) = v84;
      *(v80 + 12) = 2080;
      v74(v310, v53, v28);
      v85 = String.init<A>(describing:)();
      v87 = v86;
      v88 = *(v83 + 8);
      v88(v53, v77);
      v89 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v85, v87, &v315);

      *(v80 + 14) = v89;
      _os_log_impl(&dword_1DC659000, v76, v308, "%s found user vocab identifier (%s)", v80, 0x16u);
      v90 = v309;
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v90, -1, -1);
      MEMORY[0x1E12A2F50](v80, -1, -1);

      v88(v56, v77);
    }

    else
    {

      v98 = *(v72 + 8);
      v98(v53, v28);
      v98(v56, v28);
    }

    return 1;
  }

  v60 = v58;
  outlined destroy of ReferenceResolutionClientProtocol?(v27, &_s12SiriOntology12SpanPropertyVSgMd, &_s12SiriOntology12SpanPropertyVSgMR);
  v285 = a1;
  if (UsoTask.hasCarPlayCannedDialog.getter())
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v61 = type metadata accessor for Logger();
    __swift_project_value_buffer(v61, static Logger.executor);
    v62 = v312;

    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.debug.getter();

    if (!os_log_type_enabled(v63, v64))
    {
      goto LABEL_11;
    }

    v65 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v314 = v62;
    v315 = v66;
    *v65 = 136315138;
    v313 = v311;

    v67 = String.init<A>(describing:)();
    v69 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v67, v68, &v315);

    *(v65 + 4) = v69;
    _os_log_impl(&dword_1DC659000, v63, v64, "%s found CarPlay canned dialog", v65, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v66);
    goto LABEL_9;
  }

  v284 = v28;
  SiriEnvironment.currentDevice.getter();
  v91 = dispatch thunk of CurrentDevice.supportsVehicleData.getter();

  if ((v91 & 1) == 0)
  {
    return 0;
  }

  v92 = v308;
  v93 = *v308;
  if (*v308 || v308[16] == 1 && (outlined init with copy of ReferenceResolutionClientProtocol?(&v308[*(v307 + 28)], v24, &_s12SiriOntology12SpanPropertyVSgMd, &_s12SiriOntology12SpanPropertyVSgMR), v99 = v59(v24, 1, v284), outlined destroy of ReferenceResolutionClientProtocol?(v24, &_s12SiriOntology12SpanPropertyVSgMd, &_s12SiriOntology12SpanPropertyVSgMR), v99 == 1))
  {
    v94 = v306;
    outlined init with copy of ReferenceResolutionClientProtocol?(v92 + *(v307 + 28), v306, &_s12SiriOntology12SpanPropertyVSgMd, &_s12SiriOntology12SpanPropertyVSgMR);
    v95 = v284;
    if (v59(v94, 1, v284) == 1)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(v94, &_s12SiriOntology12SpanPropertyVSgMd, &_s12SiriOntology12SpanPropertyVSgMR);
      v97 = v312;
    }

    else
    {
      v115 = v305;
      (*(v60 + 32))(v305, v94, v95);
      if ((v93 | 4) == 4)
      {
        v116 = v312;
        if (one-time initialization token for executor != -1)
        {
          swift_once();
        }

        v117 = type metadata accessor for Logger();
        __swift_project_value_buffer(v117, static Logger.executor);
        v118 = v60;
        v119 = *(v60 + 16);
        v120 = v301;
        v119(v301, v115, v95);

        v121 = Logger.logObject.getter();
        v122 = v115;
        v123 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v121, v123))
        {
          v124 = v95;
          v125 = swift_slowAlloc();
          v309 = swift_slowAlloc();
          v314 = v116;
          v315 = v309;
          *v125 = 136315394;
          v313 = v311;

          v126 = String.init<A>(describing:)();
          v128 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v126, v127, &v315);

          *(v125 + 4) = v128;
          *(v125 + 12) = 2080;
          v119(v310, v120, v124);
          v129 = String.init<A>(describing:)();
          v131 = v130;
          v132 = *(v118 + 8);
          v132(v120, v124);
          v133 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v129, v131, &v315);

          *(v125 + 14) = v133;
          _os_log_impl(&dword_1DC659000, v121, v123, "%s found a CarCommands setting match while connected to a vehicle that supports vehicle data (%s)", v125, 0x16u);
          v134 = v309;
          swift_arrayDestroy();
          MEMORY[0x1E12A2F50](v134, -1, -1);
          MEMORY[0x1E12A2F50](v125, -1, -1);

          v132(v305, v124);
          return 1;
        }

        v147 = *(v118 + 8);
        v147(v120, v95);
        v148 = v122;
        v149 = v95;
        goto LABEL_92;
      }

      (*(v60 + 8))(v115, v95);
      v97 = v312;
    }

    if ((specialized CarCommandsAffinityScorer.isAmbiguousTemperatureRequest(task:)(v96) & 1) != 0 && (v93 | 4) == 4)
    {
      return 1;
    }

    v135 = v304;
    CarCommandsAffinityScorer.floatSettingPotentiallyMatchingVolume(task:)(v304);
    if (v59(v135, 1, v95) == 1)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(v135, &_s12SiriOntology12SpanPropertyVSgMd, &_s12SiriOntology12SpanPropertyVSgMR);
      v136 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(&outlined read-only object #0 of CarCommandsAffinityScorer.hasOverrideMatch(on:with:in:));
      outlined destroy of String(&unk_1F5824EB8);
      v137 = v298;
      UsoTask.firstSettingMatch(on:)(v136, v298);
      v138 = v137;
      v139 = v284;

      if (v59(v138, 1, v139) == 1)
      {
        outlined destroy of ReferenceResolutionClientProtocol?(v138, &_s12SiriOntology12SpanPropertyVSgMd, &_s12SiriOntology12SpanPropertyVSgMR);
        goto LABEL_77;
      }

      v150 = v296;
      (*(v60 + 32))(v296, v138, v139);
      v151 = SpanProperty.valueString.getter();
      if (v152)
      {
        if (one-time initialization token for kFloatSettingValuesForVolume != -1)
        {
          v282 = v151;
          v283 = v152;
          swift_once();
          v151 = v282;
          v152 = v283;
        }

        v153 = specialized Set.contains(_:)(v151, v152, static CarCommandsAffinityScorer.kFloatSettingValuesForVolume);

        if (v153)
        {
          v154 = v284;
          if (one-time initialization token for executor != -1)
          {
            swift_once();
          }

          v155 = type metadata accessor for Logger();
          __swift_project_value_buffer(v155, static Logger.executor);
          v156 = v60;
          v157 = *(v60 + 16);
          v158 = v287;
          v159 = v296;
          v157(v287, v296, v154);

          v160 = Logger.logObject.getter();
          v161 = static os_log_type_t.debug.getter();

          if (!os_log_type_enabled(v160, v161))
          {
LABEL_90:

            v147 = *(v156 + 8);
            v147(v158, v154);
            v148 = v159;
            goto LABEL_91;
          }

          v162 = swift_slowAlloc();
          v312 = swift_slowAlloc();
          v314 = v97;
          v315 = v312;
          *v162 = 136315394;
          v313 = v311;

          v163 = String.init<A>(describing:)();
          v164 = v158;
          v166 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v163, v165, &v315);

          *(v162 + 4) = v166;
          *(v162 + 12) = 2080;
          v157(v310, v158, v154);
          v167 = String.init<A>(describing:)();
          v169 = v168;
          v170 = *(v156 + 8);
          v170(v164, v154);
          v171 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v167, v169, &v315);

          *(v162 + 14) = v171;
          _os_log_impl(&dword_1DC659000, v160, v161, "%s found a volume related setting state while connected to a vehicle that supports vehicle data (%s)", v162, 0x16u);
          v172 = v312;
          swift_arrayDestroy();
          MEMORY[0x1E12A2F50](v172, -1, -1);
          MEMORY[0x1E12A2F50](v162, -1, -1);

          v173 = v296;
LABEL_89:
          v170(v173, v154);
          return 1;
        }

        v139 = v284;
        (*(v60 + 8))(v150, v284);
      }

      else
      {
        (*(v60 + 8))(v150, v139);
      }

LABEL_77:
      v241 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(&outlined read-only object #1 of CarCommandsAffinityScorer.hasOverrideMatch(on:with:in:));
      outlined destroy of String(&unk_1F5824EE8);
      v242 = v297;
      UsoTask.firstSettingMatch(on:)(v241, v297);

      if (v59(v242, 1, v139) == 1)
      {
        v243 = outlined destroy of ReferenceResolutionClientProtocol?(v242, &_s12SiriOntology12SpanPropertyVSgMd, &_s12SiriOntology12SpanPropertyVSgMR);
LABEL_95:
        if (one-time initialization token for kRadioLabels == -1)
        {
          if (specialized UsoTask.isValidRadioParse(namespaces:)(v243))
          {
            return 1;
          }
        }

        else
        {
          v281 = swift_once();
          if (specialized UsoTask.isValidRadioParse(namespaces:)(v281))
          {
            return 1;
          }
        }

        if (UsoTask.verbString.getter() == 0x77726F4670696B73 && v267 == 0xEB00000000647261)
        {
          goto LABEL_99;
        }

        v268 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v268)
        {
          goto LABEL_101;
        }

        if (UsoTask.verbString.getter() == 0x6B63614270696B73 && v279 == 0xEC00000064726177)
        {
LABEL_99:

          goto LABEL_101;
        }

        v280 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v280)
        {
LABEL_101:
          SiriEnvironment.currentDevice.getter();
          v269 = dispatch thunk of CurrentDevice.carOwnsMainAudio.getter();

          if (v269)
          {
            if (one-time initialization token for executor != -1)
            {
              swift_once();
            }

            v270 = type metadata accessor for Logger();
            __swift_project_value_buffer(v270, static Logger.executor);

            v271 = v285;

            v63 = Logger.logObject.getter();
            v272 = static os_log_type_t.debug.getter();

            if (!os_log_type_enabled(v63, v272))
            {
              goto LABEL_11;
            }

            v65 = swift_slowAlloc();
            v66 = swift_slowAlloc();
            v314 = v97;
            v315 = v66;
            *v65 = 136315394;
            v313 = v311;

            v273 = String.init<A>(describing:)();
            v275 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v273, v274, &v315);

            *(v65 + 4) = v275;
            *(v65 + 12) = 2080;
            v313 = v271;
            type metadata accessor for UsoTask();

            v276 = String.init<A>(describing:)();
            v278 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v276, v277, &v315);

            *(v65 + 14) = v278;
            _os_log_impl(&dword_1DC659000, v63, v272, "%s found that the current device is connected to a vehicle, and the vehicle owns the main audio, and the task is a skip forward or backward task (%s)", v65, 0x16u);
            swift_arrayDestroy();
LABEL_9:
            MEMORY[0x1E12A2F50](v66, -1, -1);
            v70 = v65;
LABEL_10:
            MEMORY[0x1E12A2F50](v70, -1, -1);
LABEL_11:

            return 1;
          }
        }

        return 0;
      }

      v244 = v139;
      v245 = v60;
      v159 = v293;
      (*(v60 + 32))(v293, v242, v244);
      v246 = SpanProperty.valueString.getter();
      if (!v247)
      {
        v243 = (*(v60 + 8))(v159, v244);
        goto LABEL_95;
      }

      if (v246 == 0x6C6F765F6C6C6163 && v247 == 0xEB00000000656D75)
      {

        v158 = v290;
      }

      else
      {
        v248 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v158 = v290;
        if ((v248 & 1) == 0)
        {
          v243 = (*(v245 + 8))(v159, v284);
          goto LABEL_95;
        }
      }

      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v249 = type metadata accessor for Logger();
      __swift_project_value_buffer(v249, static Logger.executor);
      v156 = v245;
      v250 = *(v245 + 16);
      v154 = v284;
      v250(v158, v159, v284);

      v160 = Logger.logObject.getter();
      v251 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v160, v251))
      {
        v252 = swift_slowAlloc();
        v312 = swift_slowAlloc();
        v314 = v97;
        v315 = v312;
        *v252 = 136315394;
        v313 = v311;

        v253 = String.init<A>(describing:)();
        v254 = v158;
        v256 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v253, v255, &v315);

        *(v252 + 4) = v256;
        *(v252 + 12) = 2080;
        v250(v310, v158, v154);
        v257 = String.init<A>(describing:)();
        v259 = v258;
        v170 = *(v156 + 8);
        v170(v254, v154);
        v260 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v257, v259, &v315);

        *(v252 + 14) = v260;
        _os_log_impl(&dword_1DC659000, v160, v251, "%s found a volume related phone setting while connected to a vehicle that supports vehicle data (%s)", v252, 0x16u);
        v261 = v312;
        swift_arrayDestroy();
        MEMORY[0x1E12A2F50](v261, -1, -1);
        MEMORY[0x1E12A2F50](v252, -1, -1);

        v173 = v293;
        goto LABEL_89;
      }

      goto LABEL_90;
    }

    v140 = v60;
    v141 = *(v60 + 32);
    v142 = v302;
    v141(v302, v135, v95);
    v143 = SpanProperty.valueString.getter();
    v145 = v299;
    v146 = v300;
    if (v144)
    {
      if (v143 == 0x707954616964656DLL && v144 == 0xE900000000000065)
      {

LABEL_55:
        v175 = UsoTask.settingSpans()();
        if (v175)
        {
          v176 = v175;
          v177 = v292;
          v178 = v291;
          if (one-time initialization token for kFloatSettingValuesForVolume != -1)
          {
            swift_once();
          }

          Array<A>.firstSpanAlternativeWithKeyContainingAny(of:)(static CarCommandsAffinityScorer.kFloatSettingValuesForVolume, v176, v178);

          v179 = v295;
          if ((*(v177 + 48))(v178, 1, v295) != 1)
          {
            v180 = v289;
            (*(v177 + 32))(v289, v178, v179);
            if (one-time initialization token for executor != -1)
            {
              swift_once();
            }

            v181 = type metadata accessor for Logger();
            __swift_project_value_buffer(v181, static Logger.executor);
            v182 = *(v140 + 16);
            v182(v146, v142, v284);
            v183 = v140;
            v184 = v288;
            v309 = *(v177 + 16);
            (v309)(v288, v180, v179);

            v185 = Logger.logObject.getter();
            v186 = static os_log_type_t.debug.getter();

            LODWORD(v312) = v186;
            if (os_log_type_enabled(v185, v186))
            {
              v187 = swift_slowAlloc();
              v308 = swift_slowAlloc();
              v314 = v97;
              v315 = v308;
              *v187 = 136315906;
              v313 = v311;

              v188 = String.init<A>(describing:)();
              v190 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v188, v189, &v315);

              *(v187 + 4) = v190;
              *(v187 + 12) = 2080;
              *(v187 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x707954616964656DLL, 0xE900000000000065, &v315);
              *(v187 + 22) = 2080;
              v191 = v300;
              v192 = v284;
              v182(v310, v300, v284);
              v193 = String.init<A>(describing:)();
              v195 = v194;
              v311 = *(v183 + 8);
              v311(v191, v192);
              v196 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v193, v195, &v315);

              *(v187 + 24) = v196;
              *(v187 + 32) = 2080;
              v310 = v185;
              v197 = v288;
              v198 = v295;
              (v309)(v286, v288, v295);
              v199 = String.init<A>(describing:)();
              v201 = v200;
              v202 = *(v177 + 8);
              v202(v197, v198);
              v203 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v199, v201, &v315);

              *(v187 + 34) = v203;
              v204 = v310;
              _os_log_impl(&dword_1DC659000, v310, v312, "%s found a volume setting name %s while connected to a vehicle that supports vehicle data (%s), and valid alternative with %s", v187, 0x2Au);
              v205 = v308;
              swift_arrayDestroy();
              MEMORY[0x1E12A2F50](v205, -1, -1);
              MEMORY[0x1E12A2F50](v187, -1, -1);

              v202(v289, v198);
              v311(v302, v192);
            }

            else
            {

              v262 = *(v177 + 8);
              v263 = v184;
              v264 = v295;
              v262(v263, v295);
              v265 = *(v183 + 8);
              v266 = v284;
              v265(v300, v284);
              v262(v180, v264);
              v265(v302, v266);
            }

            return 1;
          }
        }

        else
        {
          v178 = v291;
          (*(v292 + 56))(v291, 1, 1, v295);
        }

        outlined destroy of ReferenceResolutionClientProtocol?(v178, &_s12SiriOntology14AsrAlternativeVSgMd, &_s12SiriOntology14AsrAlternativeVSgMR);
        if (one-time initialization token for executor != -1)
        {
          swift_once();
        }

        v221 = type metadata accessor for Logger();
        __swift_project_value_buffer(v221, static Logger.executor);
        v222 = v140;
        v223 = *(v140 + 16);
        v224 = v142;
        v225 = v142;
        v226 = v284;
        v223(v145, v224, v284);

        v227 = Logger.logObject.getter();
        v228 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v227, v228))
        {
          v229 = swift_slowAlloc();
          v312 = swift_slowAlloc();
          v314 = v97;
          v315 = v312;
          *v229 = 136315650;
          v313 = v311;

          v230 = String.init<A>(describing:)();
          v232 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v230, v231, &v315);

          *(v229 + 4) = v232;
          *(v229 + 12) = 2080;
          *(v229 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x707954616964656DLL, 0xE900000000000065, &v315);
          *(v229 + 22) = 2080;
          v233 = v145;
          v223(v310, v145, v226);
          v234 = String.init<A>(describing:)();
          v236 = v235;
          v237 = *(v222 + 8);
          v237(v233, v226);
          v238 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v234, v236, &v315);

          *(v229 + 24) = v238;
          _os_log_impl(&dword_1DC659000, v227, v228, "%s found a volume related setting %s while connected to a vehicle that supports vehicle data (%s), but failed the alternative check", v229, 0x20u);
          v239 = v312;
          swift_arrayDestroy();
          MEMORY[0x1E12A2F50](v239, -1, -1);
          MEMORY[0x1E12A2F50](v229, -1, -1);

          v237(v302, v226);
        }

        else
        {

          v240 = *(v222 + 8);
          v240(v145, v226);
          v240(v225, v226);
        }

        return 0;
      }

      v174 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v174)
      {
        goto LABEL_55;
      }
    }

    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v206 = type metadata accessor for Logger();
    __swift_project_value_buffer(v206, static Logger.executor);
    v207 = v140;
    v208 = *(v140 + 16);
    v209 = v294;
    v154 = v284;
    v208(v294, v142, v284);

    v210 = Logger.logObject.getter();
    v211 = static os_log_type_t.debug.getter();

    if (!os_log_type_enabled(v210, v211))
    {

      v147 = *(v207 + 8);
      v147(v209, v154);
      v148 = v142;
LABEL_91:
      v149 = v154;
LABEL_92:
      v147(v148, v149);
      return 1;
    }

    v212 = swift_slowAlloc();
    v312 = swift_slowAlloc();
    v314 = v97;
    v315 = v312;
    *v212 = 136315394;
    v313 = v311;

    v213 = String.init<A>(describing:)();
    v215 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v213, v214, &v315);

    *(v212 + 4) = v215;
    *(v212 + 12) = 2080;
    v208(v310, v209, v154);
    v216 = String.init<A>(describing:)();
    v218 = v217;
    v170 = *(v207 + 8);
    v170(v209, v154);
    v219 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v216, v218, &v315);

    *(v212 + 14) = v219;
    _os_log_impl(&dword_1DC659000, v210, v211, "%s found a volume setting name while connected to a vehicle that supports vehicle data (%s)", v212, 0x16u);
    v220 = v312;
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v220, -1, -1);
    MEMORY[0x1E12A2F50](v212, -1, -1);

    v173 = v302;
    goto LABEL_89;
  }

  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v100 = type metadata accessor for Logger();
  __swift_project_value_buffer(v100, static Logger.executor);
  v101 = v303;
  outlined init with copy of CarCommandsAffinityScoringData(v92, v303);
  v102 = v312;

  v63 = Logger.logObject.getter();
  v103 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v63, v103))
  {
    v104 = swift_slowAlloc();
    v105 = swift_slowAlloc();
    v314 = v102;
    v315 = v105;
    *v104 = 136315394;
    v313 = v311;

    v106 = String.init<A>(describing:)();
    v108 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v106, v107, &v315);

    *(v104 + 4) = v108;
    *(v104 + 12) = 2080;
    v109 = *(v101 + 8);
    v110 = type metadata accessor for UsoEntitySpan();
    v111 = MEMORY[0x1E12A16D0](v109, v110);
    v113 = v112;
    outlined destroy of CarCommandsAffinityScoringData(v101);
    v114 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v111, v113, &v315);

    *(v104 + 14) = v114;
    _os_log_impl(&dword_1DC659000, v63, v103, "%s found fully attached CarCommandsUserEntityNouns while connected to a vehicle that supports vehicle data (%s)", v104, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v105, -1, -1);
    v70 = v104;
    goto LABEL_10;
  }

  outlined destroy of CarCommandsAffinityScoringData(v101);
  return 1;
}

uint64_t UsoTask.hasCarPlayCannedDialog.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology12SpanPropertyVSgMd, &_s12SiriOntology12SpanPropertyVSgMR);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v16 - v1;
  if (UsoTask.verbString.getter() == 1852141679 && v3 == 0xE400000000000000)
  {
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v5 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  if (one-time initialization token for kAppNameMatches != -1)
  {
    swift_once();
  }

  if (UsoTask.firstAppContaining(names:)(static CarCommandsAffinityScorer.kAppNameMatches, v4))
  {

    v6 = 1;
    goto LABEL_10;
  }

LABEL_9:
  v6 = 0;
LABEL_10:
  v7 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(&outlined read-only object #0 of UsoTask.hasCarPlayCannedDialog.getter);
  outlined destroy of String(&unk_1F5824D68);
  UsoTask.firstSettingMatch(on:)(v7, v2);

  v8 = type metadata accessor for SpanProperty();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v2, 1, v8) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v2, &_s12SiriOntology12SpanPropertyVSgMd, &_s12SiriOntology12SpanPropertyVSgMR);
    v10 = 0;
  }

  else
  {
    v11 = SpanProperty.valueString.getter();
    v13 = v12;
    (*(v9 + 8))(v2, v8);
    if (v13)
    {
      if (v11 == 0x61635F7075746573 && v13 == 0xED000079616C7072)
      {

        v10 = 1;
      }

      else
      {
        v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return (v6 | v10) & 1;
}

BOOL CarCommandsAffinityScoringData.hasFullyAttachedNamesNodeWithoutUnattachedSettingSpan.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology12SpanPropertyVSgMd, &_s12SiriOntology12SpanPropertyVSgMR);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v8 - v2;
  if (*v0)
  {
    return 0;
  }

  if (v0[16] != 1)
  {
    return 1;
  }

  v5 = type metadata accessor for CarCommandsAffinityScoringData(0);
  outlined init with copy of ReferenceResolutionClientProtocol?(&v0[*(v5 + 28)], v3, &_s12SiriOntology12SpanPropertyVSgMd, &_s12SiriOntology12SpanPropertyVSgMR);
  v6 = type metadata accessor for SpanProperty();
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  outlined destroy of ReferenceResolutionClientProtocol?(v3, &_s12SiriOntology12SpanPropertyVSgMd, &_s12SiriOntology12SpanPropertyVSgMR);
  return v7;
}

uint64_t CarCommandsAffinityScorer.floatSettingPotentiallyMatchingVolume(task:)@<X0>(char *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology12SpanPropertyVSgMd, &_s12SiriOntology12SpanPropertyVSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v18 - v3;
  v5 = type metadata accessor for SpanProperty();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(&outlined read-only object #0 of CarCommandsAffinityScorer.floatSettingPotentiallyMatchingVolume(task:));
  outlined destroy of String(&unk_1F5824E18);
  UsoTask.firstSettingMatch(on:)(v9, v4);

  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v4, &_s12SiriOntology12SpanPropertyVSgMd, &_s12SiriOntology12SpanPropertyVSgMR);
LABEL_9:
    v14 = 1;
    return (*(v6 + 56))(a1, v14, 1, v5);
  }

  v10 = *(v6 + 32);
  v10(v8, v4, v5);
  v11 = SpanProperty.valueString.getter();
  if (!v12)
  {
    goto LABEL_8;
  }

  if (one-time initialization token for kFloatSettingValuesForVolume != -1)
  {
    v16 = v11;
    v17 = v12;
    swift_once();
    v11 = v16;
    v12 = v17;
  }

  v13 = specialized Set.contains(_:)(v11, v12, static CarCommandsAffinityScorer.kFloatSettingValuesForVolume);

  if ((v13 & 1) == 0)
  {
LABEL_8:
    (*(v6 + 8))(v8, v5);
    goto LABEL_9;
  }

  v10(a1, v8, v5);
  v14 = 0;
  return (*(v6 + 56))(a1, v14, 1, v5);
}

uint64_t UsoTask.firstSettingMatch(on:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = UsoTask.arguments.getter();
  if (!*(v4 + 16))
  {
    goto LABEL_12;
  }

  v5 = specialized __RawDictionaryStorage.find<A>(_:)(0x636E657265666572, 0xE900000000000065);
  if ((v6 & 1) == 0)
  {
    goto LABEL_12;
  }

  v7 = *(*(v4 + 56) + 8 * v5);

  if (!(v7 >> 62))
  {
    if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_12:

    goto LABEL_13;
  }

  result = __CocoaSet.count.getter();
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_5:
  if ((v7 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1E12A1FE0](0, v7);
  }

  else
  {
    if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }
  }

  v9 = dispatch thunk of UsoValue.getAsEntity()();

  if (v9)
  {
    type metadata accessor for UsoEntity_common_Setting();

    static UsoEntity_CodeGenConverter.convertAs<A>(entity:asType:)();

    if (v15)
    {
      v10 = dispatch thunk of CodeGenGlobalArgs.getEntitySpansFor(attributeName:)();
      if (v10)
      {
        Array<A>.firstSpanPropertyWithKeyMatchingAny(values:)(a1, v10, a2);
      }

      else
      {
        v14 = type metadata accessor for SpanProperty();
        (*(*(v14 - 8) + 56))(a2, 1, 1, v14);
      }
    }

    else
    {

      v13 = type metadata accessor for SpanProperty();
      return (*(*(v13 - 8) + 56))(a2, 1, 1, v13);
    }
  }

LABEL_13:
  v11 = type metadata accessor for SpanProperty();
  v12 = *(*(v11 - 8) + 56);

  return v12(a2, 1, 1, v11);
}

BOOL CarCommandsAffinityScoringData.hasUnmatchedSettingSpan.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology12SpanPropertyVSgMd, &_s12SiriOntology12SpanPropertyVSgMR);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v8 - v2;
  if (*(v0 + 16) != 1)
  {
    return 0;
  }

  v4 = type metadata accessor for CarCommandsAffinityScoringData(0);
  outlined init with copy of ReferenceResolutionClientProtocol?(v0 + *(v4 + 28), v3, &_s12SiriOntology12SpanPropertyVSgMd, &_s12SiriOntology12SpanPropertyVSgMR);
  v5 = type metadata accessor for SpanProperty();
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5) == 1;
  outlined destroy of ReferenceResolutionClientProtocol?(v3, &_s12SiriOntology12SpanPropertyVSgMd, &_s12SiriOntology12SpanPropertyVSgMR);
  return v6;
}

Swift::Int CarCommandsAffinityScoringData.NamesNodeAttachmentType.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1E12A23F0](a1);
  return Hasher._finalize()();
}

uint64_t UsoTask.namesNodeAttachmentInfo()()
{
  v99 = type metadata accessor for PayloadAttachmentInfo.AttachmentType();
  v92 = *(v99 - 8);
  MEMORY[0x1EEE9AC00](v99);
  v94 = &v91 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSg_AFtMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSg_AFtMR);
  MEMORY[0x1EEE9AC00](v98);
  v97 = &v91 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology21PayloadAttachmentInfoVSgMd, &_s12SiriOntology21PayloadAttachmentInfoVSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v91 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v91 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v96 = &v91 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v100 = &v91 - v11;
  v12 = type metadata accessor for SpanProperty();
  v132 = *(v12 - 8);
  v133 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v91 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology13UsoEntitySpanVSgMd, &_s12SiriOntology13UsoEntitySpanVSgMR);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v108 = &v91 - v16;
  v17 = type metadata accessor for UsoEntitySpan();
  v125 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v101 = &v91 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v120 = &v91 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v91 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v114 = (&v91 - v25);
  MEMORY[0x1EEE9AC00](v26);
  v127 = &v91 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v107 = &v91 - v29;
  v30 = UsoTask.userEntityNamesNodes()();
  v93 = v30 >> 62;
  if (v30 >> 62)
  {
    goto LABEL_86;
  }

  v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v31)
  {
LABEL_87:

    return 4;
  }

LABEL_3:
  v32 = 0;
  v106 = v30 & 0xC000000000000001;
  v109 = v30 & 0xFFFFFFFFFFFFFF8;
  v91 = v30;
  v105 = v30 + 32;
  v122 = v125 + 16;
  v128 = (v132 + 8);
  v129 = (v132 + 16);
  v121 = (v125 + 32);
  v116 = (v125 + 8);
  v103 = (v125 + 56);
  v102 = (v125 + 48);
  v110 = MEMORY[0x1E69E7CC0];
  v95 = v7;
  v115 = v17;
  v130 = v14;
  v111 = v4;
  v117 = v23;
  v104 = v31;
  while (1)
  {
    if (v106)
    {
      v71 = v32;
      v30 = MEMORY[0x1E12A1FE0](v32, v91);
      v113 = v30;
      v34 = __OFADD__(v71, 1);
      v7 = v71 + 1;
      if (v34)
      {
        goto LABEL_83;
      }
    }

    else
    {
      if (v32 >= *(v109 + 16))
      {
        goto LABEL_84;
      }

      v113 = *(v105 + 8 * v32);
      v33 = v32;

      v34 = __OFADD__(v33, 1);
      v7 = v33 + 1;
      if (v34)
      {
LABEL_83:
        __break(1u);
LABEL_84:
        __break(1u);
LABEL_85:
        __break(1u);
LABEL_86:
        v89 = v30;
        v90 = __CocoaSet.count.getter();
        v30 = v89;
        v31 = v90;
        if (!v90)
        {
          goto LABEL_87;
        }

        goto LABEL_3;
      }
    }

    v112 = v7;
    v35 = UsoEntity.entitySpans.getter();
    v119 = *(v35 + 16);
    if (v119)
    {
      break;
    }

    v37 = MEMORY[0x1E69E7CC0];
LABEL_38:

    v56 = v37;
    v57 = *(v37 + 16);
    v4 = v111;
    if (v57)
    {
      v58 = v56 + ((*(v125 + 80) + 32) & ~*(v125 + 80));
      v59 = *(v125 + 16);
      v60 = v59(v114, v58, v17);
      if (v57 != 1)
      {
        v65 = 1;
        while (1)
        {
          v66 = v65 + 1;
          if (__OFADD__(v65, 1))
          {
            break;
          }

          v67 = v125;
          v59(v23, v58 + *(v125 + 72) * v65, v17);
          v68 = v114;
          v69 = closure #1 in UsoTask.namesNodeAttachmentInfo()(v23, v114);
          v70 = *(v67 + 8);
          if (v69)
          {
            v70(v68, v17);
            v60 = (*v121)(v68, v23, v17);
          }

          else
          {
            v60 = v70(v23, v17);
          }

          ++v65;
          if (v66 == v57)
          {
            goto LABEL_40;
          }
        }

        __break(1u);
LABEL_81:
        outlined destroy of ReferenceResolutionClientProtocol?(v60, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
        return 1;
      }

LABEL_40:
      v7 = v108;
      (*v121)(v108, v114, v17);
      (*v103)(v7, 0, 1, v17);

      v14 = v130;
      v4 = v111;
    }

    else
    {
      v7 = v108;
      (*v103)(v108, 1, 1, v17);
    }

    if ((*v102)(v7, 1, v17) == 1)
    {
      v30 = outlined destroy of ReferenceResolutionClientProtocol?(v7, &_s12SiriOntology13UsoEntitySpanVSgMd, &_s12SiriOntology13UsoEntitySpanVSgMR);
    }

    else
    {
      v61 = *v121;
      (*v121)(v107, v7, v17);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v110 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v110 + 2) + 1, 1, v110);
      }

      v63 = *(v110 + 2);
      v62 = *(v110 + 3);
      v7 = (v63 + 1);
      if (v63 >= v62 >> 1)
      {
        v110 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v62 > 1), v63 + 1, 1, v110);
      }

      v64 = v110;
      *(v110 + 2) = v7;
      v30 = v61(&v64[((*(v125 + 80) + 32) & ~*(v125 + 80)) + *(v125 + 72) * v63], v107, v17);
    }

    v32 = v112;
    if (v112 == v104)
    {
      v133 = *(v110 + 2);
      if (!v133)
      {
        goto LABEL_61;
      }

      if (!v93)
      {
        v72 = *(v109 + 16);
        goto LABEL_64;
      }

LABEL_63:
      v72 = __CocoaSet.count.getter();
LABEL_64:

      if (v133 < v72)
      {
        return 2;
      }

      v74 = 0;
      v132 = &v110[(*(v125 + 80) + 32) & ~*(v125 + 80)];
      v75 = (v92 + 56);
      LODWORD(v131) = *MEMORY[0x1E69D1B60];
      v130 = (v92 + 104);
      v14 = (v92 + 48);
      v124 = (v92 + 32);
      v127 = (v92 + 8);
      v23 = &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR;
      v7 = v96;
      v128 = (v92 + 56);
      v129 = (v92 + 48);
      while (2)
      {
        if (v74 >= *(v110 + 2))
        {
          goto LABEL_85;
        }

        (*(v125 + 16))(v101, &v132[*(v125 + 72) * v74], v17);
        UsoEntitySpan.payloadAttachmentInfo.getter();
        v76 = type metadata accessor for PayloadAttachmentInfo();
        v77 = *(v76 - 8);
        if ((*(v77 + 48))(v4, 1, v76) == 1)
        {
          outlined destroy of ReferenceResolutionClientProtocol?(v4, &_s12SiriOntology21PayloadAttachmentInfoVSgMd, &_s12SiriOntology21PayloadAttachmentInfoVSgMR);
          v78 = v100;
          v79 = v99;
          (*v75)(v100, 1, 1, v99);
        }

        else
        {
          v80 = v100;
          PayloadAttachmentInfo.attachmentType.getter();
          v81 = v4;
          v78 = v80;
          (*(v77 + 8))(v81, v76);
          v79 = v99;
        }

        (*v130)(v7, v131, v79);
        (*v75)(v7, 0, 1, v79);
        v82 = *(v98 + 48);
        v83 = v97;
        outlined init with copy of ReferenceResolutionClientProtocol?(v78, v97, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
        outlined init with copy of ReferenceResolutionClientProtocol?(v7, v83 + v82, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
        v14 = v129;
        v84 = *v129;
        if ((*v129)(v83, 1, v79) == 1)
        {
          outlined destroy of ReferenceResolutionClientProtocol?(v7, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
          outlined destroy of ReferenceResolutionClientProtocol?(v78, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
          v17 = v115;
          (*v116)(v101, v115);
          v51 = v84(v83 + v82, 1, v79) == 1;
          v60 = v83;
          if (v51)
          {
            goto LABEL_81;
          }

LABEL_68:
          v30 = outlined destroy of ReferenceResolutionClientProtocol?(v60, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSg_AFtMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSg_AFtMR);
        }

        else
        {
          v85 = v95;
          outlined init with copy of ReferenceResolutionClientProtocol?(v83, v95, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
          if (v84(v83 + v82, 1, v79) == 1)
          {
            outlined destroy of ReferenceResolutionClientProtocol?(v7, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
            outlined destroy of ReferenceResolutionClientProtocol?(v100, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
            v17 = v115;
            (*v116)(v101, v115);
            (*v127)(v85, v79);
            v60 = v83;
            goto LABEL_68;
          }

          v86 = v94;
          (*v124)(v94, v83 + v82, v79);
          lazy protocol witness table accessor for type PayloadAttachmentInfo.AttachmentType and conformance PayloadAttachmentInfo.AttachmentType();
          LODWORD(v126) = dispatch thunk of static Equatable.== infix(_:_:)();
          v87 = *v127;
          v88 = v86;
          v7 = v96;
          (*v127)(v88, v79);
          outlined destroy of ReferenceResolutionClientProtocol?(v7, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
          outlined destroy of ReferenceResolutionClientProtocol?(v100, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
          v14 = &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd;
          v17 = v115;
          (*v116)(v101, v115);
          v87(v85, v79);
          v30 = outlined destroy of ReferenceResolutionClientProtocol?(v83, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
          if (v126)
          {
            return 1;
          }
        }

        ++v74;
        v4 = v111;
        v75 = v128;
        if (v133 == v74)
        {
          return 0;
        }

        continue;
      }
    }
  }

  v36 = 0;
  v37 = MEMORY[0x1E69E7CC0];
  v118 = v35;
LABEL_14:
  if (v36 >= *(v35 + 16))
  {
    __break(1u);
    goto LABEL_63;
  }

  v126 = v37;
  v124 = ((*(v125 + 80) + 32) & ~*(v125 + 80));
  v123 = *(v125 + 72);
  (*(v125 + 16))(v127, v124 + v35 + v123 * v36, v17);
  v38 = UsoEntitySpan.properties.getter();
  v39 = v38;
  v40 = *(v38 + 16);
  if (!v40)
  {

LABEL_12:
    v37 = v126;
    (*v116)(v127, v17);
    v23 = v117;
    goto LABEL_13;
  }

  v41 = 0;
  v131 = v38 + ((v132[80] + 32) & ~v132[80]);
  while (v41 < *(v39 + 16))
  {
    (*(v132 + 2))(v14, v131 + *(v132 + 9) * v41, v133);
    if (one-time initialization token for kUserEntityNamespaceMatches != -1)
    {
      swift_once();
    }

    v42 = static CarCommandsAffinityScorer.kUserEntityNamespaceMatches;
    v43 = SpanProperty.key.getter();
    v45 = v44;
    if (*(v42 + 16))
    {
      v46 = v43;
      Hasher.init(_seed:)();
      String.hash(into:)();
      v47 = Hasher._finalize()();
      v48 = -1 << *(v42 + 32);
      v4 = v47 & ~v48;
      if ((*(v42 + 56 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
      {
        v49 = ~v48;
        while (1)
        {
          v50 = (*(v42 + 48) + 16 * v4);
          v51 = *v50 == v46 && v50[1] == v45;
          if (v51 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }

          v4 = (v4 + 1) & v49;
          if (((*(v42 + 56 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
          {
            goto LABEL_17;
          }
        }

        v14 = v130;
        (*v128)(v130, v133);
        v52 = *v121;
        v17 = v115;
        (*v121)(v120, v127, v115);
        v37 = v126;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v134 = v37;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v37 + 16) + 1, 1);
          v37 = v134;
        }

        v23 = v117;
        v55 = *(v37 + 16);
        v54 = *(v37 + 24);
        if (v55 >= v54 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v54 > 1), v55 + 1, 1);
          v37 = v134;
        }

        *(v37 + 16) = v55 + 1;
        v52(v124 + v37 + v55 * v123, v120, v17);
LABEL_13:
        v35 = v118;
        if (++v36 == v119)
        {
          goto LABEL_38;
        }

        goto LABEL_14;
      }
    }

LABEL_17:
    ++v41;
    v14 = v130;
    (*v128)(v130, v133);

    if (v41 == v40)
    {

      v17 = v115;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_61:

  return 3;
}

uint64_t UsoTask.settingSpanInfo()(uint64_t a1)
{
  v2 = UsoTask.arguments.getter();
  if (!*(v2 + 16))
  {
    goto LABEL_13;
  }

  v3 = specialized __RawDictionaryStorage.find<A>(_:)(0x636E657265666572, 0xE900000000000065);
  if ((v4 & 1) == 0)
  {
    goto LABEL_13;
  }

  v5 = *(*(v2 + 56) + 8 * v3);

  if (v5 >> 62)
  {
    if (__CocoaSet.count.getter())
    {
      goto LABEL_5;
    }

LABEL_13:

    goto LABEL_14;
  }

  if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_13;
  }

LABEL_5:
  if ((v5 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1E12A1FE0](0, v5);
  }

  else
  {
    if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_22;
    }
  }

  v6 = dispatch thunk of UsoValue.getAsEntity()();

  if (v6)
  {
    type metadata accessor for UsoEntity_common_Setting();

    static UsoEntity_CodeGenConverter.convertAs<A>(entity:asType:)();

    if (v10)
    {
      v7 = UsoTask.settingSpans()();
      if (v7)
      {
        v5 = v7;
        if (one-time initialization token for kSettingsNamespaceMatches == -1)
        {
LABEL_12:
          Array<A>.firstSpanPropertyWithKeyMatchingAny(values:)(static CarCommandsAffinityScorer.kSettingsNamespaceMatches, v5, a1);

          return 1;
        }

LABEL_22:
        swift_once();
        goto LABEL_12;
      }
    }
  }

LABEL_14:
  v9 = type metadata accessor for SpanProperty();
  (*(*(v9 - 8) + 56))(a1, 1, 1, v9);
  return 0;
}

uint64_t UsoTask.firstUserEntityMatch(on:)@<X0>(uint64_t a1@<X0>, uint64_t x8_0@<X8>)
{
  v3 = UsoTask.userEntityNamesNodes()();
  v4 = v3;
  if (v3 >> 62)
  {
    goto LABEL_30;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v6 = 0;
    v7 = MEMORY[0x1E69E7CC0];
    while ((v4 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1E12A1FE0](v6, v4);
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_24;
      }

LABEL_9:
      v9 = UsoEntity.entitySpans.getter();

      v10 = *(v9 + 16);
      v11 = v7[2];
      v12 = v11 + v10;
      if (__OFADD__(v11, v10))
      {
        goto LABEL_26;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v12 <= v7[3] >> 1)
      {
        if (*(v9 + 16))
        {
          goto LABEL_18;
        }
      }

      else
      {
        if (v11 <= v12)
        {
          v14 = v11 + v10;
        }

        else
        {
          v14 = v11;
        }

        v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v14, 1, v7);
        if (*(v9 + 16))
        {
LABEL_18:
          v15 = (v7[3] >> 1) - v7[2];
          type metadata accessor for UsoEntitySpan();
          if (v15 < v10)
          {
            goto LABEL_28;
          }

          swift_arrayInitWithCopy();

          if (v10)
          {
            v16 = v7[2];
            v17 = __OFADD__(v16, v10);
            v18 = v16 + v10;
            if (v17)
            {
              goto LABEL_29;
            }

            v7[2] = v18;
          }

          goto LABEL_5;
        }
      }

      if (v10)
      {
        goto LABEL_27;
      }

LABEL_5:
      ++v6;
      if (v8 == i)
      {
        goto LABEL_32;
      }
    }

    if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_25;
    }

    v8 = v6 + 1;
    if (!__OFADD__(v6, 1))
    {
      goto LABEL_9;
    }

LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    ;
  }

  v7 = MEMORY[0x1E69E7CC0];
LABEL_32:

  Array<A>.firstSpanPropertyWithKeyValueMatchingAny(identifiers:)(a1, v7, x8_0);
}

uint64_t UsoTask.userEntityNamesNodes()()
{
  v0 = UsoTask.arguments.getter();
  if (!*(v0 + 16))
  {
    goto LABEL_17;
  }

  v1 = specialized __RawDictionaryStorage.find<A>(_:)(0x69746E4572657375, 0xEC00000073656974);
  if ((v2 & 1) == 0)
  {
    goto LABEL_17;
  }

  v3 = *(*(v0 + 56) + 8 * v1);

  if (!(v3 >> 62))
  {
    if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_17:

    return MEMORY[0x1E69E7CC0];
  }

  if (!__CocoaSet.count.getter())
  {
    goto LABEL_17;
  }

LABEL_5:
  if ((v3 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1E12A1FE0](0, v3);
  }

  else
  {
    if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_26:
      result = __CocoaSet.count.getter();
      if (result)
      {
        goto LABEL_13;
      }

LABEL_20:

      v9 = 0;
      goto LABEL_21;
    }
  }

  v4 = dispatch thunk of UsoValue.getAsEntity()();

  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v5 = UsoEntity.attributes.getter();
  if (!*(v5 + 16))
  {
    goto LABEL_20;
  }

  v6 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000016, 0x80000001DCA7DFB0);
  if ((v7 & 1) == 0)
  {
    goto LABEL_20;
  }

  v0 = *(*(v5 + 56) + 8 * v6);

  if (v0 >> 62)
  {
    goto LABEL_26;
  }

  if (!*((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_20;
  }

LABEL_13:
  if ((v0 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1E12A1FE0](0, v0);
    goto LABEL_16;
  }

  if (*((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

LABEL_16:

    v9 = dispatch thunk of UsoValue.getAsEntity()();

LABEL_21:

    v11 = closure #1 in UsoTask.userEntityNamesNodes()(v10);

    v12 = closure #1 in UsoTask.userEntityNamesNodes()(v9);
    specialized Array.append<A>(contentsOf:)(v12);

    return v11;
  }

  __break(1u);
  return result;
}

BOOL closure #1 in UsoTask.namesNodeAttachmentInfo()(uint64_t a1, void (*a2)(_BYTE *, uint64_t, void *))
{
  v63 = a2;
  v62 = type metadata accessor for PayloadAttachmentInfo.AttachmentType();
  v65 = *(v62 - 1);
  MEMORY[0x1EEE9AC00](v62);
  v58 = &v54[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSg_AFtMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSg_AFtMR);
  MEMORY[0x1EEE9AC00](v64);
  v60 = &v54[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v54[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology21PayloadAttachmentInfoVSgMd, &_s12SiriOntology21PayloadAttachmentInfoVSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v54[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v54[-v11];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v57 = &v54[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v15);
  v59 = &v54[-v16];
  MEMORY[0x1EEE9AC00](v17);
  v61 = &v54[-v18];
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v54[-v20];
  MEMORY[0x1EEE9AC00](v22);
  v67 = &v54[-v23];
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v54[-v25];
  UsoEntitySpan.payloadAttachmentInfo.getter();
  v27 = type metadata accessor for PayloadAttachmentInfo();
  v28 = *(v27 - 8);
  v29 = *(v28 + 48);
  v30 = v29(v12, 1, v27);
  v66 = v26;
  if (v30 == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v12, &_s12SiriOntology21PayloadAttachmentInfoVSgMd, &_s12SiriOntology21PayloadAttachmentInfoVSgMR);
    v31 = v65;
    v32 = v26;
    v33 = v62;
    (*(v65 + 56))(v32, 1, 1, v62);
  }

  else
  {
    PayloadAttachmentInfo.attachmentType.getter();
    (*(v28 + 8))(v12, v27);
    v31 = v65;
    v33 = v62;
  }

  UsoEntitySpan.payloadAttachmentInfo.getter();
  if (v29(v9, 1, v27) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v9, &_s12SiriOntology21PayloadAttachmentInfoVSgMd, &_s12SiriOntology21PayloadAttachmentInfoVSgMR);
    (*(v31 + 56))(v67, 1, 1, v33);
  }

  else
  {
    PayloadAttachmentInfo.attachmentType.getter();
    (*(v28 + 8))(v9, v27);
  }

  v34 = *MEMORY[0x1E69D1B60];
  v63 = *(v31 + 104);
  v63(v21, v34, v33);
  v62 = *(v31 + 56);
  (v62)(v21, 0, 1, v33);
  v35 = *(v64 + 48);
  outlined init with copy of ReferenceResolutionClientProtocol?(v66, v6, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
  outlined init with copy of ReferenceResolutionClientProtocol?(v21, &v6[v35], &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
  v36 = *(v31 + 48);
  if (v36(v6, 1, v33) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v21, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
    if (v36(&v6[v35], 1, v33) != 1)
    {
LABEL_18:
      outlined destroy of ReferenceResolutionClientProtocol?(v6, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSg_AFtMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSg_AFtMR);
      goto LABEL_19;
    }

    outlined destroy of ReferenceResolutionClientProtocol?(v6, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
LABEL_12:
    v21 = v59;
    v63(v59, *MEMORY[0x1E69D1B58], v33);
    (v62)(v21, 0, 1, v33);
    v43 = *(v64 + 48);
    v6 = v60;
    outlined init with copy of ReferenceResolutionClientProtocol?(v67, v60, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
    outlined init with copy of ReferenceResolutionClientProtocol?(v21, &v6[v43], &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
    if (v36(v6, 1, v33) == 1)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(v21, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
      if (v36(&v6[v43], 1, v33) == 1)
      {
        outlined destroy of ReferenceResolutionClientProtocol?(v6, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
LABEL_24:
        v48 = 0;
        v47 = v66;
        goto LABEL_25;
      }

      goto LABEL_18;
    }

    v44 = v36;
    v45 = v57;
    outlined init with copy of ReferenceResolutionClientProtocol?(v6, v57, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
    v46 = v44;
    if (v44(&v6[v43], 1, v33) == 1)
    {
      v37 = v45;
      v36 = v46;
      goto LABEL_17;
    }

    v49 = v65;
    v50 = &v6[v43];
    v51 = v58;
    (*(v65 + 32))(v58, v50, v33);
    lazy protocol witness table accessor for type PayloadAttachmentInfo.AttachmentType and conformance PayloadAttachmentInfo.AttachmentType();
    LODWORD(v64) = dispatch thunk of static Equatable.== infix(_:_:)();
    v52 = *(v49 + 8);
    v52(v51, v33);
    outlined destroy of ReferenceResolutionClientProtocol?(v21, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
    v52(v45, v33);
    outlined destroy of ReferenceResolutionClientProtocol?(v6, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
    v36 = v44;
    if (v64)
    {
      goto LABEL_24;
    }

    goto LABEL_19;
  }

  v37 = v61;
  outlined init with copy of ReferenceResolutionClientProtocol?(v6, v61, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
  if (v36(&v6[v35], 1, v33) == 1)
  {
LABEL_17:
    outlined destroy of ReferenceResolutionClientProtocol?(v21, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
    (*(v65 + 8))(v37, v33);
    goto LABEL_18;
  }

  v38 = v65;
  v39 = *(v65 + 32);
  v56 = v36;
  v40 = v58;
  v39(v58, &v6[v35], v33);
  lazy protocol witness table accessor for type PayloadAttachmentInfo.AttachmentType and conformance PayloadAttachmentInfo.AttachmentType();
  v55 = dispatch thunk of static Equatable.== infix(_:_:)();
  v41 = *(v38 + 8);
  v42 = v40;
  v36 = v56;
  v41(v42, v33);
  outlined destroy of ReferenceResolutionClientProtocol?(v21, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
  v41(v61, v33);
  outlined destroy of ReferenceResolutionClientProtocol?(v6, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
  if (v55)
  {
    goto LABEL_12;
  }

LABEL_19:
  v47 = v66;
  v48 = v36(v66, 1, v33) != 1 || v36(v67, 1, v33) == 1;
LABEL_25:
  outlined destroy of ReferenceResolutionClientProtocol?(v47, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v67, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
  return v48;
}

uint64_t UsoTask.settingSpans()()
{
  v0 = UsoTask.arguments.getter();
  if (!*(v0 + 16))
  {
    goto LABEL_11;
  }

  v1 = specialized __RawDictionaryStorage.find<A>(_:)(0x636E657265666572, 0xE900000000000065);
  if ((v2 & 1) == 0)
  {
    goto LABEL_11;
  }

  v3 = *(*(v0 + 56) + 8 * v1);

  if (v3 >> 62)
  {
    result = __CocoaSet.count.getter();
    if (result)
    {
      goto LABEL_5;
    }

LABEL_11:

    return 0;
  }

  if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_11;
  }

LABEL_5:
  if ((v3 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1E12A1FE0](0, v3);
  }

  else
  {
    if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }
  }

  v5 = dispatch thunk of UsoValue.getAsEntity()();

  if (v5)
  {
    type metadata accessor for UsoEntity_common_Setting();

    static UsoEntity_CodeGenConverter.convertAs<A>(entity:asType:)();

    if (v7)
    {
      v6 = dispatch thunk of CodeGenGlobalArgs.getEntitySpansFor(attributeName:)();

      return v6;
    }
  }

  return 0;
}

void Array<A>.firstSpanAlternativeWithKeyContainingAny(of:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v38 = a3;
  v39 = a1;
  v40 = type metadata accessor for AsrAlternative();
  v45 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for UsoEntitySpan();
  v8.n128_f64[0] = MEMORY[0x1EEE9AC00](v44);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 16);
  if (v11)
  {
    v13 = *(v7 + 16);
    v12 = v7 + 16;
    v14 = a2 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v41 = *(v12 + 56);
    v42 = (v12 - 8);
    v43 = v13;
    v15 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v16 = v6;
      v17 = v44;
      v18 = v12;
      v43(v10, v14, v44, v8);
      v19 = UsoEntitySpan.alternatives.getter();
      (*v42)(v10, v17);
      v20 = *(v19 + 16);
      v21 = v15[2];
      v22 = v21 + v20;
      if (__OFADD__(v21, v20))
      {
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
        return;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v22 <= v15[3] >> 1)
      {
        if (*(v19 + 16))
        {
          goto LABEL_14;
        }
      }

      else
      {
        if (v21 <= v22)
        {
          v24 = v21 + v20;
        }

        else
        {
          v24 = v21;
        }

        v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v24, 1, v15);
        if (*(v19 + 16))
        {
LABEL_14:
          if ((v15[3] >> 1) - v15[2] < v20)
          {
            goto LABEL_29;
          }

          swift_arrayInitWithCopy();

          v6 = v16;
          if (v20)
          {
            v25 = v15[2];
            v26 = __OFADD__(v25, v20);
            v27 = v25 + v20;
            if (v26)
            {
              goto LABEL_31;
            }

            v15[2] = v27;
          }

          goto LABEL_4;
        }
      }

      v6 = v16;
      if (v20)
      {
        goto LABEL_28;
      }

LABEL_4:
      v14 += v41;
      --v11;
      v12 = v18;
      if (!v11)
      {
        goto LABEL_19;
      }
    }
  }

  v15 = MEMORY[0x1E69E7CC0];
LABEL_19:
  v28 = v15[2];
  v30 = v39;
  v29 = v40;
  if (v28)
  {
    v31 = 0;
    v32 = (v45 + 8);
    while (v31 < v15[2])
    {
      v33 = (*(v45 + 16))(v6, v15 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v31, v29, v8);
      MEMORY[0x1EEE9AC00](v33);
      *(&v37 - 2) = v6;
      if (specialized Sequence.contains(where:)(partial apply for closure #1 in closure #2 in Array<A>.firstSpanAlternativeWithKeyContainingAny(of:), (&v37 - 4), v30))
      {

        v36 = v38;
        (*(v45 + 32))(v38, v6, v29);
        v35 = v36;
        v34 = 0;
        goto LABEL_26;
      }

      ++v31;
      (*v32)(v6, v29);
      if (v28 == v31)
      {
        goto LABEL_24;
      }
    }

    goto LABEL_30;
  }

LABEL_24:

  v34 = 1;
  v35 = v38;
LABEL_26:
  (*(v45 + 56))(v35, v34, 1, v29);
}

void Array<A>.firstSpanPropertyWithKeyMatchingAny(values:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v50 = a1;
  v48 = a3;
  v5 = type metadata accessor for SpanProperty();
  v51 = *(v5 - 8);
  v52 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v49 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for UsoEntitySpan();
  v8.n128_f64[0] = MEMORY[0x1EEE9AC00](v55);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 16);
  if (v11)
  {
    v13 = *(v7 + 16);
    v12 = v7 + 16;
    v14 = a2 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v53 = *(v12 + 56);
    v54 = v13;
    v15 = (v12 - 8);
    v16 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v17 = v55;
      v18 = v12;
      v54(v10, v14, v55, v8);
      v19 = UsoEntitySpan.properties.getter();
      (*v15)(v10, v17);
      v20 = *(v19 + 16);
      v21 = v16[2];
      v22 = v21 + v20;
      if (__OFADD__(v21, v20))
      {
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
        return;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v22 <= v16[3] >> 1)
      {
        if (*(v19 + 16))
        {
          goto LABEL_14;
        }
      }

      else
      {
        if (v21 <= v22)
        {
          v24 = v21 + v20;
        }

        else
        {
          v24 = v21;
        }

        v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v24, 1, v16);
        if (*(v19 + 16))
        {
LABEL_14:
          if ((v16[3] >> 1) - v16[2] < v20)
          {
            goto LABEL_39;
          }

          swift_arrayInitWithCopy();

          if (v20)
          {
            v25 = v16[2];
            v26 = __OFADD__(v25, v20);
            v27 = v25 + v20;
            if (v26)
            {
              goto LABEL_40;
            }

            v16[2] = v27;
          }

          goto LABEL_4;
        }
      }

      if (v20)
      {
        goto LABEL_38;
      }

LABEL_4:
      v14 += v53;
      --v11;
      v12 = v18;
      if (!v11)
      {
        goto LABEL_19;
      }
    }
  }

  v16 = MEMORY[0x1E69E7CC0];
LABEL_19:
  v28 = v16[2];
  if (v28)
  {
    v29 = 0;
    v31 = v51;
    v30 = v52;
    v55 = v16 + ((*(v51 + 80) + 32) & ~*(v51 + 80));
    v32 = v50 + 7;
    v33 = (v51 + 8);
    while (v29 < v16[2])
    {
      (*(v31 + 16))(v49, v55 + *(v31 + 72) * v29, v30, v8);
      v34 = SpanProperty.key.getter();
      v36 = v35;
      if (v50[2])
      {
        v37 = v34;
        v38 = v50;
        Hasher.init(_seed:)();
        String.hash(into:)();
        v39 = Hasher._finalize()();
        v40 = -1 << *(v38 + 32);
        v41 = v39 & ~v40;
        if ((*(v32 + ((v41 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v41))
        {
          v42 = ~v40;
          while (1)
          {
            v43 = (v50[6] + 16 * v41);
            v44 = *v43 == v37 && v43[1] == v36;
            if (v44 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              break;
            }

            v41 = (v41 + 1) & v42;
            if (((*(v32 + ((v41 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v41) & 1) == 0)
            {
              goto LABEL_21;
            }
          }

          v31 = v51;
          v30 = v52;
          v45 = v48;
          (*(v51 + 32))(v48, v49, v52);
          v46 = 0;
          goto LABEL_35;
        }
      }

LABEL_21:
      ++v29;

      v30 = v52;
      (*v33)(v49, v52);
      v31 = v51;
      if (v29 == v28)
      {

        v46 = 1;
        v45 = v48;
        goto LABEL_35;
      }
    }

    goto LABEL_41;
  }

  v46 = 1;
  v45 = v48;
  v31 = v51;
  v30 = v52;
LABEL_35:
  (*(v31 + 56))(v45, v46, 1, v30);
}

uint64_t UsoTask.firstAppContaining(names:)(void *a1, double a2)
{
  v3 = type metadata accessor for SpanProperty();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology12SpanPropertyVSgMd, &_s12SiriOntology12SpanPropertyVSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v48 - v8;
  v10 = type metadata accessor for UsoEntitySpan();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = UsoTask.arguments.getter();
  if (!*(v14 + 16))
  {
    goto LABEL_13;
  }

  v15 = specialized __RawDictionaryStorage.find<A>(_:)(0x636E657265666572, 0xE900000000000065);
  if ((v16 & 1) == 0)
  {
    goto LABEL_13;
  }

  v17 = *(*(v14 + 56) + 8 * v15);

  if (v17 >> 62)
  {
    goto LABEL_64;
  }

  if (!*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_13:

    return 0;
  }

LABEL_5:
  v54 = a1;
  if ((v17 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1E12A1FE0](0, v17);
  }

  else
  {
    if (!*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_68:
      __break(1u);
      return result;
    }
  }

  v19 = dispatch thunk of UsoValue.getAsEntity()();

  if (!v19)
  {
    return 0;
  }

  type metadata accessor for UsoEntity_common_App();

  static UsoEntity_CodeGenConverter.convertAs<A>(entity:asType:)();

  if (v59)
  {
    v51 = v59;
    v20 = dispatch thunk of CodeGenGlobalArgs.getEntitySpansFor(attributeName:)();
    if (v20)
    {
      v48[1] = v19;
      v49 = v9;
      v52 = v6;
      v53 = v3;
      v55 = v4;
      v3 = *(v20 + 16);
      v50 = v20;
      if (v3)
      {
        v22 = *(v11 + 16);
        v21 = v11 + 16;
        v23 = v20 + ((*(v21 + 64) + 32) & ~*(v21 + 64));
        v56 = *(v21 + 56);
        v57 = v22;
        v58 = v21;
        v4 = v21 - 8;
        a1 = MEMORY[0x1E69E7CC0];
        (v22)(v13, v23, v10);
        while (1)
        {
          v6 = UsoEntitySpan.properties.getter();
          (*v4)(v13, v10);
          v17 = *(v6 + 2);
          v11 = a1[2];
          v9 = (v11 + v17);
          if (__OFADD__(v11, v17))
          {
            __break(1u);
LABEL_61:
            __break(1u);
LABEL_62:
            __break(1u);
LABEL_63:
            __break(1u);
LABEL_64:
            result = __CocoaSet.count.getter();
            if (!result)
            {
              goto LABEL_13;
            }

            goto LABEL_5;
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if (isUniquelyReferenced_nonNull_native && v9 <= a1[3] >> 1)
          {
            if (!*(v6 + 2))
            {
              goto LABEL_16;
            }
          }

          else
          {
            if (v11 <= v9)
            {
              v25 = v11 + v17;
            }

            else
            {
              v25 = v11;
            }

            a1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v25, 1, a1);
            if (!*(v6 + 2))
            {
LABEL_16:

              if (v17)
              {
                goto LABEL_61;
              }

              goto LABEL_17;
            }
          }

          if ((a1[3] >> 1) - a1[2] < v17)
          {
            goto LABEL_62;
          }

          swift_arrayInitWithCopy();

          if (v17)
          {
            v26 = a1[2];
            v27 = __OFADD__(v26, v17);
            v28 = v26 + v17;
            if (v27)
            {
              goto LABEL_63;
            }

            a1[2] = v28;
          }

LABEL_17:
          v23 += v56;
          if (!--v3)
          {
            goto LABEL_35;
          }

          (v57)(v13, v23, v10);
        }
      }

      a1 = MEMORY[0x1E69E7CC0];
LABEL_35:

      v58 = a1[2];
      if (v58)
      {
        v29 = 0;
        v4 = v55;
        v30 = a1 + ((*(v55 + 80) + 32) & ~*(v55 + 80));
        v3 = v53;
        v31 = v54 + 7;
        v56 = v55 + 16;
        v57 = (v55 + 8);
        while (1)
        {
          if (v29 >= a1[2])
          {
            goto LABEL_68;
          }

          v32 = v52;
          (*(v4 + 16))(v52, &v30[*(v4 + 72) * v29], v3);
          v33 = SpanProperty.valueString.getter();
          if (v34)
          {
            break;
          }

LABEL_38:
          ++v29;
          result = (*v57)(v32, v3);
          if (v29 == v58)
          {

            goto LABEL_58;
          }
        }

        v35 = v33;
        v36 = v34;
        if (SpanProperty.key.getter() == 0x656D614E707061 && v37 == 0xE700000000000000)
        {
        }

        else
        {
          v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v38 & 1) == 0)
          {
LABEL_37:

            v4 = v55;
            v32 = v52;
            goto LABEL_38;
          }
        }

        if (v54[2])
        {
          v39 = v54;
          Hasher.init(_seed:)();
          String.hash(into:)();
          v40 = Hasher._finalize()();
          v41 = -1 << *(v39 + 32);
          v42 = v40 & ~v41;
          if ((*(v31 + ((v42 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v42))
          {
            v43 = ~v41;
            while (1)
            {
              v44 = (v54[6] + 16 * v42);
              v45 = *v44 == v35 && v36 == v44[1];
              if (v45 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {
                break;
              }

              v42 = (v42 + 1) & v43;
              if (((*(v31 + ((v42 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v42) & 1) == 0)
              {
                goto LABEL_37;
              }
            }

            v46 = v55;
            v47 = v49;
            (*(v55 + 32))(v49, v52, v3);
            (*(v46 + 56))(v47, 0, 1, v3);
            outlined destroy of ReferenceResolutionClientProtocol?(v47, &_s12SiriOntology12SpanPropertyVSgMd, &_s12SiriOntology12SpanPropertyVSgMR);
            return v51;
          }
        }

        goto LABEL_37;
      }

      v3 = v53;
      v4 = v55;
LABEL_58:
      v9 = v49;
    }

    else
    {
    }

    (*(v4 + 56))(v9, 1, 1, v3);
    outlined destroy of ReferenceResolutionClientProtocol?(v9, &_s12SiriOntology12SpanPropertyVSgMd, &_s12SiriOntology12SpanPropertyVSgMR);
  }

  else
  {
  }

  return 0;
}

void Array<A>.firstSpanPropertyWithKeyValueMatchingAny(identifiers:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v38 = a3;
  v39 = a1;
  v40 = type metadata accessor for SpanProperty();
  v45 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for UsoEntitySpan();
  v8.n128_f64[0] = MEMORY[0x1EEE9AC00](v44);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 16);
  if (v11)
  {
    v13 = *(v7 + 16);
    v12 = v7 + 16;
    v14 = a2 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v41 = *(v12 + 56);
    v42 = (v12 - 8);
    v43 = v13;
    v15 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v16 = v6;
      v17 = v44;
      v18 = v12;
      v43(v10, v14, v44, v8);
      v19 = UsoEntitySpan.properties.getter();
      (*v42)(v10, v17);
      v20 = *(v19 + 16);
      v21 = v15[2];
      v22 = v21 + v20;
      if (__OFADD__(v21, v20))
      {
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
        return;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v22 <= v15[3] >> 1)
      {
        if (*(v19 + 16))
        {
          goto LABEL_14;
        }
      }

      else
      {
        if (v21 <= v22)
        {
          v24 = v21 + v20;
        }

        else
        {
          v24 = v21;
        }

        v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v24, 1, v15);
        if (*(v19 + 16))
        {
LABEL_14:
          if ((v15[3] >> 1) - v15[2] < v20)
          {
            goto LABEL_29;
          }

          swift_arrayInitWithCopy();

          v6 = v16;
          if (v20)
          {
            v25 = v15[2];
            v26 = __OFADD__(v25, v20);
            v27 = v25 + v20;
            if (v26)
            {
              goto LABEL_31;
            }

            v15[2] = v27;
          }

          goto LABEL_4;
        }
      }

      v6 = v16;
      if (v20)
      {
        goto LABEL_28;
      }

LABEL_4:
      v14 += v41;
      --v11;
      v12 = v18;
      if (!v11)
      {
        goto LABEL_19;
      }
    }
  }

  v15 = MEMORY[0x1E69E7CC0];
LABEL_19:
  v28 = v15[2];
  v30 = v39;
  v29 = v40;
  if (v28)
  {
    v31 = 0;
    v32 = (v45 + 8);
    while (v31 < v15[2])
    {
      v33 = (*(v45 + 16))(v6, v15 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v31, v29, v8);
      MEMORY[0x1EEE9AC00](v33);
      *(&v37 - 2) = v6;
      if (specialized Sequence.contains(where:)(partial apply for closure #1 in closure #2 in Array<A>.firstSpanPropertyWithKeyValueMatchingAny(identifiers:), (&v37 - 4), v30))
      {

        v36 = v38;
        (*(v45 + 32))(v38, v6, v29);
        v35 = v36;
        v34 = 0;
        goto LABEL_26;
      }

      ++v31;
      (*v32)(v6, v29);
      if (v28 == v31)
      {
        goto LABEL_24;
      }
    }

    goto LABEL_30;
  }

LABEL_24:

  v34 = 1;
  v35 = v38;
LABEL_26:
  (*(v45 + 56))(v35, v34, 1, v29);
}

uint64_t closure #1 in UsoTask.userEntityNamesNodes()(uint64_t a1)
{
  v1 = MEMORY[0x1E69E7CC0];
  if (a1)
  {

    v2 = UsoEntity.attributes.getter();
    if (*(v2 + 16) && (v3 = specialized __RawDictionaryStorage.find<A>(_:)(0x73656D616ELL, 0xE500000000000000), (v4 & 1) != 0))
    {
      v5 = *(*(v2 + 56) + 8 * v3);

      v12 = v1;
      if (v5 >> 62)
      {
LABEL_23:
        v6 = __CocoaSet.count.getter();
      }

      else
      {
        v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v7 = 0;
      while (v6 != v7)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1E12A1FE0](v7, v5);
          v8 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
            goto LABEL_21;
          }
        }

        else
        {
          if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_22;
          }

          v8 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
LABEL_21:
            __break(1u);
LABEL_22:
            __break(1u);
            goto LABEL_23;
          }
        }

        v9 = dispatch thunk of UsoValue.getAsEntity()();

        ++v7;
        if (v9)
        {
          MEMORY[0x1E12A1680](v10);
          if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v1 = v12;
          v7 = v8;
        }
      }
    }

    else
    {
    }
  }

  return v1;
}

uint64_t closure #1 in closure #2 in Array<A>.firstSpanPropertyWithKeyValueMatchingAny(identifiers:)(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[3];
  if (!v3)
  {
    if (v1 == SpanProperty.key.getter() && v2 == v10)
    {
      goto LABEL_18;
    }

    goto LABEL_19;
  }

  v4 = a1[2];
  if (v1 == SpanProperty.key.getter() && v2 == v5)
  {

    v8 = SpanProperty.valueString.getter();
    if (v9)
    {
      goto LABEL_8;
    }

    return 0;
  }

  v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v7 & 1) == 0)
  {
    return 0;
  }

  v8 = SpanProperty.valueString.getter();
  if (!v9)
  {
    return 0;
  }

LABEL_8:
  if (v4 == v8 && v3 == v9)
  {
LABEL_18:

    return 1;
  }

LABEL_19:
  v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

  return v13 & 1;
}

uint64_t closure #1 in closure #2 in Array<A>.firstSpanAlternativeWithKeyContainingAny(of:)(uint64_t *a1)
{
  AsrAlternative.value.getter();
  lazy protocol witness table accessor for type String and conformance String();
  v1 = StringProtocol.contains<A>(_:)();

  return v1 & 1;
}

uint64_t type metadata accessor for CarCommandsAffinityScoringData(uint64_t a1)
{
  result = type metadata singleton initialization cache for CarCommandsAffinityScoringData;
  if (!type metadata singleton initialization cache for CarCommandsAffinityScoringData)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t specialized CarCommandsAffinityScorer.isAmbiguousTemperatureRequest(task:)(double a1)
{
  v2 = type metadata accessor for SpanProperty();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UsoEntitySpan();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v57 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v58 = &v42 - v10;
  if (UsoTask.verbString.getter() == 0x757361654D746573 && v11 == 0xEE00746E656D6572)
  {
    goto LABEL_3;
  }

  v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v12)
  {
    goto LABEL_5;
  }

  v1 = 0xD000000000000015;
  if (UsoTask.verbString.getter() == 0xD000000000000015 && 0x80000001DCA7DF50 == v25)
  {
    goto LABEL_3;
  }

  v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v26)
  {
    goto LABEL_5;
  }

  if (UsoTask.verbString.getter() == 0xD000000000000015 && 0x80000001DCA7DF70 == v27)
  {
LABEL_3:
  }

  else
  {
    v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v28 & 1) == 0)
    {
      return 0;
    }
  }

LABEL_5:
  v13 = UsoTask.arguments.getter();
  if (!*(v13 + 16))
  {
    goto LABEL_25;
  }

  v14 = specialized __RawDictionaryStorage.find<A>(_:)(0x6D6572757361656DLL, 0xEB00000000746E65);
  if ((v15 & 1) == 0)
  {
    goto LABEL_25;
  }

  v16 = *(*(v13 + 56) + 8 * v14);

  if (!(v16 >> 62))
  {
    if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_9;
    }

LABEL_25:

    return 0;
  }

LABEL_64:
  if (!__CocoaSet.count.getter())
  {
    goto LABEL_25;
  }

LABEL_9:
  if ((v16 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1E12A1FE0](0, v16);
  }

  else
  {
    if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_68:
      __break(1u);
      goto LABEL_69;
    }
  }

  v17 = dispatch thunk of UsoValue.getAsEntity()();

  if (!v17)
  {
    return 0;
  }

  type metadata accessor for UsoEntity_common_Measurement();

  static UsoEntity_CodeGenConverter.convertAs<A>(entity:asType:)();

  v18 = v60;
  if (!v60)
  {
LABEL_62:

    return 0;
  }

  v19 = dispatch thunk of UsoEntity_common_Measurement.components.getter();
  if (!v19)
  {
LABEL_57:

    goto LABEL_62;
  }

  v16 = v19;
  v46 = v18;
  v47 = v17;
  v1 = v19 & 0xFFFFFFFFFFFFFF8;
  if (!(v19 >> 62))
  {
    result = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_17;
    }

    goto LABEL_70;
  }

LABEL_69:
  result = __CocoaSet.count.getter();
  if (!result)
  {
LABEL_70:

    goto LABEL_25;
  }

LABEL_17:
  if ((v16 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1E12A1FE0](0, v16);
LABEL_20:

    dispatch thunk of CodeGenListEntry.entry.getter();

    v21 = v60;
    if (v60)
    {
      v22 = dispatch thunk of UsoEntity_common_MeasurementComponent.unit.getter();
      if (v22)
      {
        v16 = v22;
        v42 = v21;
        v23 = dispatch thunk of CodeGenGlobalArgs.getEntitySpansFor(attributeName:)();

        if (v23)
        {
          v52 = *(v23 + 16);
          if (v52)
          {
            v24 = 0;
            v51 = v7 + 16;
            v56 = 0x80000001DCA7DF90;
            v59 = v3 + 16;
            v1 = v3 + 8;
            v43 = (v7 + 32);
            v45 = (v7 + 8);
            v44 = MEMORY[0x1E69E7CC0];
            v49 = v7;
            v50 = v6;
            v48 = v23;
            while (1)
            {
              if (v24 >= *(v23 + 16))
              {
                goto LABEL_68;
              }

              v54 = (*(v7 + 80) + 32) & ~*(v7 + 80);
              v55 = v24;
              v53 = *(v7 + 72);
              v16 = v58;
              (*(v7 + 16))(v58, v23 + v54 + v53 * v24, v6);
              v29 = UsoEntitySpan.properties.getter();
              v30 = v29;
              v31 = *(v29 + 16);
              if (!v31)
              {
LABEL_34:

                v6 = v50;
                (*v45)(v58, v50);
                goto LABEL_35;
              }

              v6 = 0;
              v7 = v29 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
              while (1)
              {
                if (v6 >= *(v30 + 16))
                {
                  __break(1u);
                  goto LABEL_64;
                }

                (*(v3 + 16))(v5, v7 + *(v3 + 72) * v6, v2);
                if (SpanProperty.key.getter() == 0x6D6572757361656DLL && v32 == 0xEF74696E55746E65)
                {
                }

                else
                {
                  v16 = v32;
                  v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  if ((v33 & 1) == 0)
                  {
                    goto LABEL_39;
                  }
                }

                v16 = v5;
                v34 = SpanProperty.valueString.getter();
                if (!v35)
                {
LABEL_39:
                  (*v1)(v5, v2);
                  goto LABEL_40;
                }

                if (v34 == 0xD000000000000015 && v35 == v56)
                {
                  break;
                }

                v16 = v35;
                v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

                (*v1)(v5, v2);
                if (v36)
                {
                  goto LABEL_52;
                }

LABEL_40:
                if (v31 == ++v6)
                {
                  goto LABEL_34;
                }
              }

              (*v1)(v5, v2);
LABEL_52:

              v37 = *v43;
              v6 = v50;
              (*v43)(v57, v58, v50);
              v16 = v44;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v60 = v16;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v16 + 16) + 1, 1);
                v16 = v60;
              }

              v40 = *(v16 + 16);
              v39 = *(v16 + 24);
              if (v40 >= v39 >> 1)
              {
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), v40 + 1, 1);
                v16 = v60;
              }

              *(v16 + 16) = v40 + 1;
              v44 = v16;
              v37((v16 + v54 + v40 * v53), v57, v6);
LABEL_35:
              v24 = v55 + 1;
              v23 = v48;
              v7 = v49;
              if (v55 + 1 == v52)
              {

                v41 = *(v44 + 16);

                return v41 != 0;
              }
            }
          }
        }

        else
        {
        }

        goto LABEL_62;
      }
    }

    goto LABEL_57;
  }

  if (*(v1 + 16))
  {

    goto LABEL_20;
  }

  __break(1u);
  return result;
}

uint64_t specialized UsoTask.isValidRadioParse(namespaces:)(uint64_t a1)
{
  if (UsoTask.verbString.getter() == 2036427888 && v1 == 0xE400000000000000)
  {
    goto LABEL_3;
  }

  v2 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v2 & 1) == 0)
  {
    if (UsoTask.verbString.getter() == 7628147 && v6 == 0xE300000000000000)
    {
      goto LABEL_3;
    }

    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      goto LABEL_5;
    }

    if (UsoTask.verbString.getter() == 1851876211 && v8 == 0xE400000000000000)
    {
LABEL_3:

      goto LABEL_5;
    }

    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v9 & 1) == 0)
    {
      if (UsoTask.verbString.getter() != 0x656C62616E65 || v10 != 0xE600000000000000)
      {
        v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v4 = 0;
        if ((v11 & 1) == 0)
        {
          return v4 & 1;
        }

        goto LABEL_5;
      }

      goto LABEL_3;
    }
  }

LABEL_5:
  if (UsoTask.baseEntityAsString.getter() == 0xD000000000000013 && 0x80000001DCA7DF30 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v4 & 1;
}

uint64_t specialized CarCommandsAffinityScorer.hasHighProbabilityMatch(on:with:in:)(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CarCommandsAffinityScoringData(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology12SpanPropertyVSgMd, &_s12SiriOntology12SpanPropertyVSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v29 - v10;
  if (*a1)
  {
    return 0;
  }

  if (a1[16] == 1)
  {
    outlined init with copy of ReferenceResolutionClientProtocol?(&a1[*(v6 + 28)], v11, &_s12SiriOntology12SpanPropertyVSgMd, &_s12SiriOntology12SpanPropertyVSgMR);
    v13 = type metadata accessor for SpanProperty();
    v14 = (*(*(v13 - 8) + 48))(v11, 1, v13);
    outlined destroy of ReferenceResolutionClientProtocol?(v11, &_s12SiriOntology12SpanPropertyVSgMd, &_s12SiriOntology12SpanPropertyVSgMR);
    if (v14 == 1)
    {
      return 0;
    }
  }

  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, static Logger.executor);
  outlined init with copy of CarCommandsAffinityScoringData(a1, v8);

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v29[2] = a3;
    v30 = v19;
    *v18 = 136315394;
    v29[1] = a2;

    v20 = String.init<A>(describing:)();
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, &v30);

    *(v18 + 4) = v22;
    *(v18 + 12) = 2080;
    v23 = *(v8 + 1);
    v24 = type metadata accessor for UsoEntitySpan();
    v25 = MEMORY[0x1E12A16D0](v23, v24);
    v27 = v26;
    outlined destroy of CarCommandsAffinityScoringData(v8);
    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v27, &v30);

    *(v18 + 14) = v28;
    _os_log_impl(&dword_1DC659000, v16, v17, "%s found basic carCommandsUserEntityNoun match (%s)", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v19, -1, -1);
    MEMORY[0x1E12A2F50](v18, -1, -1);
  }

  else
  {

    outlined destroy of CarCommandsAffinityScoringData(v8);
  }

  return 1;
}

uint64_t specialized CarCommandsAffinityScorer.hasMediumProbabilityMatch(on:with:)(unsigned __int8 *a1, uint64_t a2, NSObject *a3, double a4)
{
  v63 = a2;
  v64 = a3;
  v5 = type metadata accessor for SpanProperty();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v60[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v60[-v10];
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v60[-v13];
  v15 = type metadata accessor for CarCommandsAffinityScoringData(0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v60[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology12SpanPropertyVSgMd, &_s12SiriOntology12SpanPropertyVSgMR);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v60[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v60[-v22];
  v24 = *a1;
  if (v24 == 4)
  {
    if (a1[16] == 1)
    {
      outlined init with copy of ReferenceResolutionClientProtocol?(&a1[*(v15 + 28)], v20, &_s12SiriOntology12SpanPropertyVSgMd, &_s12SiriOntology12SpanPropertyVSgMR);
      if ((*(v6 + 48))(v20, 1, v5) != 1)
      {
        (*(v6 + 32))(v14, v20, v5);
        if (one-time initialization token for executor != -1)
        {
          swift_once();
        }

        v42 = type metadata accessor for Logger();
        __swift_project_value_buffer(v42, static Logger.executor);
        v43 = *(v6 + 16);
        v43(v11, v14, v5);
        v44 = v64;

        v45 = Logger.logObject.getter();
        v46 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v45, v46))
        {
          v47 = swift_slowAlloc();
          v61 = v46;
          v48 = v47;
          v62 = swift_slowAlloc();
          v66 = v44;
          v67 = v62;
          *v48 = 136315394;
          v65 = v63;

          v49 = String.init<A>(describing:)();
          v64 = v45;
          v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v50, &v67);

          *(v48 + 4) = v51;
          *(v48 + 12) = 2080;
          v43(v8, v11, v5);
          v52 = String.init<A>(describing:)();
          v54 = v53;
          v55 = *(v6 + 8);
          v55(v11, v5);
          v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v54, &v67);

          *(v48 + 14) = v56;
          v57 = v64;
          _os_log_impl(&dword_1DC659000, v64, v61, "%s found basic setting match (%s)", v48, 0x16u);
          v58 = v62;
          swift_arrayDestroy();
          MEMORY[0x1E12A2F50](v58, -1, -1);
          MEMORY[0x1E12A2F50](v48, -1, -1);

          v55(v14, v5);
        }

        else
        {

          v59 = *(v6 + 8);
          v59(v11, v5);
          v59(v14, v5);
        }

        return 1;
      }

      outlined destroy of ReferenceResolutionClientProtocol?(v20, &_s12SiriOntology12SpanPropertyVSgMd, &_s12SiriOntology12SpanPropertyVSgMR);
    }

    return 0;
  }

  if (v24 != 1)
  {
    return 0;
  }

  if (a1[16] == 1)
  {
    outlined init with copy of ReferenceResolutionClientProtocol?(&a1[*(v15 + 28)], &v60[-v22], &_s12SiriOntology12SpanPropertyVSgMd, &_s12SiriOntology12SpanPropertyVSgMR);
    v25 = (*(v6 + 48))(v23, 1, v5);
    outlined destroy of ReferenceResolutionClientProtocol?(v23, &_s12SiriOntology12SpanPropertyVSgMd, &_s12SiriOntology12SpanPropertyVSgMR);
    if (v25 == 1)
    {
      return 0;
    }
  }

  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  __swift_project_value_buffer(v26, static Logger.executor);
  outlined init with copy of CarCommandsAffinityScoringData(a1, v17);
  v27 = v64;

  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v66 = v27;
    v67 = v31;
    *v30 = 136315394;
    v65 = v63;

    v32 = String.init<A>(describing:)();
    v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v33, &v67);

    *(v30 + 4) = v34;
    *(v30 + 12) = 2080;
    v35 = *(v17 + 1);
    v36 = type metadata accessor for UsoEntitySpan();
    v37 = MEMORY[0x1E12A16D0](v35, v36);
    v39 = v38;
    outlined destroy of CarCommandsAffinityScoringData(v17);
    v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v39, &v67);

    *(v30 + 14) = v40;
    _os_log_impl(&dword_1DC659000, v28, v29, "%s found carCommandsUserEntityNoun with partial attachment (%s)", v30, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v31, -1, -1);
    MEMORY[0x1E12A2F50](v30, -1, -1);
  }

  else
  {

    outlined destroy of CarCommandsAffinityScoringData(v17);
  }

  return 1;
}

uint64_t specialized CarCommandsAffinityScorer.hasLowProbabilityMatch(on:with:in:)(uint64_t a1, unsigned __int8 *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology12SpanPropertyVSgMd, &_s12SiriOntology12SpanPropertyVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v29 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v29 - v10;
  v12 = *a2;
  if (v12 == 2)
  {
    return 1;
  }

  if (v12 == 1)
  {
    if (a2[16] == 1)
    {
      v18 = type metadata accessor for CarCommandsAffinityScoringData(0);
      outlined init with copy of ReferenceResolutionClientProtocol?(&a2[*(v18 + 28)], v8, &_s12SiriOntology12SpanPropertyVSgMd, &_s12SiriOntology12SpanPropertyVSgMR);
      v19 = type metadata accessor for SpanProperty();
      v15 = 1;
      v16 = (*(*(v19 - 8) + 48))(v8, 1, v19);
      v17 = v8;
LABEL_8:
      outlined destroy of ReferenceResolutionClientProtocol?(v17, &_s12SiriOntology12SpanPropertyVSgMd, &_s12SiriOntology12SpanPropertyVSgMR);
      if (v16 == 1)
      {
        return v15;
      }
    }
  }

  else if (!*a2 && a2[16] == 1)
  {
    v13 = type metadata accessor for CarCommandsAffinityScoringData(0);
    outlined init with copy of ReferenceResolutionClientProtocol?(&a2[*(v13 + 28)], v11, &_s12SiriOntology12SpanPropertyVSgMd, &_s12SiriOntology12SpanPropertyVSgMR);
    v14 = type metadata accessor for SpanProperty();
    v15 = 1;
    v16 = (*(*(v14 - 8) + 48))(v11, 1, v14);
    v17 = v11;
    goto LABEL_8;
  }

  v20 = type metadata accessor for CarCommandsAffinityScoringData(0);
  outlined init with copy of ReferenceResolutionClientProtocol?(&a2[*(v20 + 28)], v5, &_s12SiriOntology12SpanPropertyVSgMd, &_s12SiriOntology12SpanPropertyVSgMR);
  v21 = type metadata accessor for SpanProperty();
  v15 = 1;
  v22 = (*(*(v21 - 8) + 48))(v5, 1, v21);
  outlined destroy of ReferenceResolutionClientProtocol?(v5, &_s12SiriOntology12SpanPropertyVSgMd, &_s12SiriOntology12SpanPropertyVSgMR);
  if (v22 == 1)
  {
    SiriEnvironment.currentDevice.getter();
    v23 = dispatch thunk of CurrentDevice.supportsVehicleData.getter();

    if ((v23 & 1) == 0)
    {
      return 0;
    }

    if (UsoTask.verbString.getter() != 0x77726F4670696B73 || v24 != 0xEB00000000647261)
    {
      v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v25)
      {
        return v15;
      }

      if (UsoTask.verbString.getter() != 0x6B63614270696B73 || v26 != 0xEC00000064726177)
      {
        v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v27)
        {
          return v15;
        }

        return 0;
      }
    }
  }

  return v15;
}

uint64_t outlined destroy of CarCommandsAffinityScoringData(uint64_t a1)
{
  v2 = type metadata accessor for CarCommandsAffinityScoringData(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type CarCommandsAffinityScoringData.NamesNodeAttachmentType and conformance CarCommandsAffinityScoringData.NamesNodeAttachmentType()
{
  result = lazy protocol witness table cache variable for type CarCommandsAffinityScoringData.NamesNodeAttachmentType and conformance CarCommandsAffinityScoringData.NamesNodeAttachmentType;
  if (!lazy protocol witness table cache variable for type CarCommandsAffinityScoringData.NamesNodeAttachmentType and conformance CarCommandsAffinityScoringData.NamesNodeAttachmentType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CarCommandsAffinityScoringData.NamesNodeAttachmentType and conformance CarCommandsAffinityScoringData.NamesNodeAttachmentType);
  }

  return result;
}

char *initializeBufferWithCopyOfBuffer for CarCommandsAffinityScoringData(uint64_t a1, uint64_t *a2, uint64_t a3, double a4)
{
  v5 = a1;
  v6 = *(*(a3 - 8) + 80);
  if ((v6 & 0x20000) != 0)
  {
    v12 = *a2;
    *v5 = *a2;
    v5 = (v12 + ((v6 + 16) & ~v6));
  }

  else
  {
    *a1 = *a2;
    *(a1 + 8) = a2[1];
    *(a1 + 16) = *(a2 + 16);
    v7 = *(a3 + 28);
    v8 = type metadata accessor for SpanProperty();
    v9 = *(v8 - 8);
    v10 = *(v9 + 48);

    if (v10(a2 + v7, 1, v8))
    {
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology12SpanPropertyVSgMd, &_s12SiriOntology12SpanPropertyVSgMR);
      memcpy(&v5[v7], a2 + v7, *(*(v11 - 8) + 64));
    }

    else
    {
      (*(v9 + 16))(&v5[v7], a2 + v7, v8);
      (*(v9 + 56))(&v5[v7], 0, 1, v8);
    }
  }

  return v5;
}

uint64_t destroy for CarCommandsAffinityScoringData(uint64_t a1, uint64_t a2)
{

  v4 = *(a2 + 28);
  v5 = type metadata accessor for SpanProperty();
  v8 = *(v5 - 8);
  result = (*(v8 + 48))(a1 + v4, 1, v5);
  if (!result)
  {
    v7 = *(v8 + 8);

    return v7(a1 + v4, v5);
  }

  return result;
}

uint64_t initializeWithCopy for CarCommandsAffinityScoringData(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  v6 = *(a3 + 28);
  v7 = type metadata accessor for SpanProperty();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);

  if (v9(a2 + v6, 1, v7))
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology12SpanPropertyVSgMd, &_s12SiriOntology12SpanPropertyVSgMR);
    memcpy((a1 + v6), (a2 + v6), *(*(v10 - 8) + 64));
  }

  else
  {
    (*(v8 + 16))(a1 + v6, a2 + v6, v7);
    (*(v8 + 56))(a1 + v6, 0, 1, v7);
  }

  return a1;
}

uint64_t assignWithCopy for CarCommandsAffinityScoringData(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  v6 = *(a3 + 28);
  v7 = type metadata accessor for SpanProperty();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  v10 = v9(a1 + v6, 1, v7);
  v11 = v9(a2 + v6, 1, v7);
  if (!v10)
  {
    if (!v11)
    {
      (*(v8 + 24))(a1 + v6, a2 + v6, v7);
      return a1;
    }

    (*(v8 + 8))(a1 + v6, v7);
    goto LABEL_6;
  }

  if (v11)
  {
LABEL_6:
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology12SpanPropertyVSgMd, &_s12SiriOntology12SpanPropertyVSgMR);
    memcpy((a1 + v6), (a2 + v6), *(*(v12 - 8) + 64));
    return a1;
  }

  (*(v8 + 16))(a1 + v6, a2 + v6, v7);
  (*(v8 + 56))(a1 + v6, 0, 1, v7);
  return a1;
}

uint64_t initializeWithTake for CarCommandsAffinityScoringData(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  v6 = *(a3 + 28);
  v7 = type metadata accessor for SpanProperty();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(a2 + v6, 1, v7))
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology12SpanPropertyVSgMd, &_s12SiriOntology12SpanPropertyVSgMR);
    memcpy((a1 + v6), (a2 + v6), *(*(v9 - 8) + 64));
  }

  else
  {
    (*(v8 + 32))(a1 + v6, a2 + v6, v7);
    (*(v8 + 56))(a1 + v6, 0, 1, v7);
  }

  return a1;
}

uint64_t assignWithTake for CarCommandsAffinityScoringData(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  v6 = *(a3 + 28);
  v7 = type metadata accessor for SpanProperty();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  v10 = v9(a1 + v6, 1, v7);
  v11 = v9(a2 + v6, 1, v7);
  if (!v10)
  {
    if (!v11)
    {
      (*(v8 + 40))(a1 + v6, a2 + v6, v7);
      return a1;
    }

    (*(v8 + 8))(a1 + v6, v7);
    goto LABEL_6;
  }

  if (v11)
  {
LABEL_6:
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology12SpanPropertyVSgMd, &_s12SiriOntology12SpanPropertyVSgMR);
    memcpy((a1 + v6), (a2 + v6), *(*(v12 - 8) + 64));
    return a1;
  }

  (*(v8 + 32))(a1 + v6, a2 + v6, v7);
  (*(v8 + 56))(a1 + v6, 0, 1, v7);
  return a1;
}

void type metadata completion function for CarCommandsAffinityScoringData(uint64_t a1, double a2)
{
  type metadata accessor for SpanProperty?(319, a2);
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

void type metadata accessor for SpanProperty?(uint64_t a1, double a2)
{
  if (!lazy cache variable for type metadata for SpanProperty?)
  {
    type metadata accessor for SpanProperty();
    v2 = type metadata accessor for Optional();
    if (!v3)
    {
      atomic_store(v2, &lazy cache variable for type metadata for SpanProperty?);
    }
  }
}

uint64_t outlined init with copy of CarCommandsAffinityScoringData(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CarCommandsAffinityScoringData(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type PayloadAttachmentInfo.AttachmentType and conformance PayloadAttachmentInfo.AttachmentType()
{
  result = lazy protocol witness table cache variable for type PayloadAttachmentInfo.AttachmentType and conformance PayloadAttachmentInfo.AttachmentType;
  if (!lazy protocol witness table cache variable for type PayloadAttachmentInfo.AttachmentType and conformance PayloadAttachmentInfo.AttachmentType)
  {
    type metadata accessor for PayloadAttachmentInfo.AttachmentType();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PayloadAttachmentInfo.AttachmentType and conformance PayloadAttachmentInfo.AttachmentType);
  }

  return result;
}

uint64_t ResultSelected.init(isMitigated:endpointMode:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3 & 1;
  return result;
}

uint64_t CommitResultCandidate.resultCandidateId.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void CommitResultCandidate.resultSelectedMessage.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  *a1 = *(v1 + 32);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
}

uint64_t CommitResultCandidate.__allocating_init(resultCandidateId:resultSelectedMessage:)(uint64_t a1, uint64_t a2, char *a3)
{
  result = swift_allocObject();
  v7 = *a3;
  v8 = *(a3 + 1);
  v9 = a3[16];
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 32) = v7;
  *(result + 40) = v8;
  *(result + 48) = v9;
  return result;
}

uint64_t CommitResultCandidate.init(resultCandidateId:resultSelectedMessage:)(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = *a3;
  v5 = *(a3 + 1);
  v6 = a3[16];
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 32) = v4;
  *(v3 + 40) = v5;
  *(v3 + 48) = v6;
  return v3;
}

uint64_t CommitResultCandidate.debugDescription.getter()
{
  _StringGuts.grow(_:)(26);
  v1 = _typeName(_:qualified:)();

  MEMORY[0x1E12A1580](0xD000000000000015, 0x80000001DCA7E000);
  MEMORY[0x1E12A1580](*(v0 + 16), *(v0 + 24));
  MEMORY[0x1E12A1580](125, 0xE100000000000000);
  return v1;
}

uint64_t CommitResultCandidate.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for ResultSelected(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[17])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ResultSelected(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t CommitResultCandidateId.resultCandidateId.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t CommitResultCandidateId.conversationUserInputId.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

void *CommitResultCandidateId.__allocating_init(resultCandidateId:conversationUserInputId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  return result;
}

void *CommitResultCandidateId.init(resultCandidateId:conversationUserInputId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = a4;
  return v4;
}

uint64_t CommitResultCandidateId.debugDescription.getter()
{
  v1 = v0;
  _StringGuts.grow(_:)(55);
  v2 = _typeName(_:qualified:)();
  MEMORY[0x1E12A1580](v2);

  MEMORY[0x1E12A1580](0xD000000000000015, 0x80000001DCA7E000);
  MEMORY[0x1E12A1580](v1[2], v1[3]);
  MEMORY[0x1E12A1580](0xD00000000000001BLL, 0x80000001DCA7E070);
  MEMORY[0x1E12A1580](v1[4], v1[5]);
  MEMORY[0x1E12A1580](125, 0xE100000000000000);
  return 0;
}

uint64_t CommitResultCandidateId.deinit()
{

  return v0;
}

uint64_t CommitResultCandidateId.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void ComponentIdGeneratorImpl.derivedIdentifier(for:from:)(uint64_t a1)
{
  v2 = objc_opt_self();
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v4 = [v2 derivedIdentifierForComponent:a1 fromSourceIdentifier:isa];

  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
}

void protocol witness for ComponentIdGenerator.derivedIdentifier(for:from:) in conformance ComponentIdGeneratorImpl(uint64_t a1)
{
  v2 = objc_opt_self();
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v4 = [v2 derivedIdentifierForComponent:a1 fromSourceIdentifier:isa];

  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
}

uint64_t static CompositeExecutionOverrides.newBuilder()()
{
  type metadata accessor for CompositeExecutionOverrides.Builder();
  result = swift_allocObject();
  *(result + 16) = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t CompositeExecutionOverrides.Builder.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t CompositeExecutionOverrides.Builder.add(rule:)(uint64_t a1)
{
  outlined init with copy of ReferenceResolutionClientProtocol(a1, v15);
  swift_beginAccess();
  v2 = *(v1 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 16) = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2[2] + 1, 1, v2);
    *(v1 + 16) = v2;
  }

  v5 = v2[2];
  v4 = v2[3];
  if (v5 >= v4 >> 1)
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v4 > 1), v5 + 1, 1, v2);
    *(v1 + 16) = v2;
  }

  v6 = v16;
  v7 = v17;
  v8 = __swift_mutable_project_boxed_opaque_existential_1(v15, v16);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v14[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v12 + 16))(v11, v9);
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v5, v11, (v1 + 16), v6, v7);
  __swift_destroy_boxed_opaque_existential_1Tm(v15);
  *(v1 + 16) = v2;
  swift_endAccess();
}

uint64_t CompositeExecutionOverrides.Builder.addAll(rules:)(uint64_t a1)
{
  swift_beginAccess();

  specialized Array.append<A>(contentsOf:)(v1);
  swift_endAccess();
}

uint64_t CompositeExecutionOverrides.Builder.build()()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  type metadata accessor for CompositeExecutionOverrides();
  v2 = swift_allocObject();
  *(v2 + 16) = v1;

  return v2;
}

uint64_t CompositeExecutionOverrides.Builder.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t CompositeExecutionOverrides.Builder.init()()
{
  result = v0;
  *(v0 + 16) = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_0, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return outlined init with take of ReferenceResolutionClientProtocol(&v12, v10 + 40 * a1 + 32);
}

uint64_t static CompositePreExecutionRules.newBuilder()()
{
  type metadata accessor for CompositePreExecutionRules.Builder();
  result = swift_allocObject();
  *(result + 16) = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t CompositePreExecutionRules.Builder.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t CompositePreExecutionRules.Builder.add(rule:)(uint64_t a1)
{
  outlined init with copy of ReferenceResolutionClientProtocol(a1, v15);
  swift_beginAccess();
  v2 = *(v1 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 16) = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2[2] + 1, 1, v2);
    *(v1 + 16) = v2;
  }

  v5 = v2[2];
  v4 = v2[3];
  if (v5 >= v4 >> 1)
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v4 > 1), v5 + 1, 1, v2);
    *(v1 + 16) = v2;
  }

  v6 = v16;
  v7 = v17;
  v8 = __swift_mutable_project_boxed_opaque_existential_1(v15, v16);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v14[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v12 + 16))(v11, v9);
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v5, v11, (v1 + 16), v6, v7);
  __swift_destroy_boxed_opaque_existential_1Tm(v15);
  *(v1 + 16) = v2;
  swift_endAccess();
}

uint64_t CompositePreExecutionRules.Builder.addAll(rules:)(uint64_t a1)
{
  swift_beginAccess();

  specialized Array.append<A>(contentsOf:)(v1);
  swift_endAccess();
}

uint64_t CompositePreExecutionRules.Builder.build()()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  type metadata accessor for CompositePreExecutionRules();
  v2 = swift_allocObject();
  *(v2 + 16) = v1;

  return v2;
}

uint64_t CompositePreExecutionRules.Builder.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t CompositePreExecutionRules.Builder.init()()
{
  result = v0;
  *(v0 + 16) = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t ConcurrentTaskPool.deinit()
{

  return v0;
}

uint64_t ConcurrentTaskPool.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  *(v0 + 24) = v1;
  return v0;
}

uint64_t ConcurrentTaskPool.init()()
{
  *(v0 + 16) = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  *(v0 + 24) = v1;
  return v0;
}

uint64_t dispatch thunk of ConcurrentTaskPool.wait()()
{
  v4 = (*(*v0 + 136) + **(*v0 + 136));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return v4();
}

uint64_t dispatch thunk of Waitable.wait()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return v7(a1, a2);
}

SiriKitRuntime::ContactsAffinityScorer __swiftcall ContactsAffinityScorer.init()()
{
  v0 = 0x80000001DCA7CA70;
  v1 = 0xD000000000000029;
  result.bundleIdentifier._object = v0;
  result.bundleIdentifier._countAndFlagsBits = v1;
  return result;
}

uint64_t USOParse.usoIdentifiers.getter(double a1)
{
  v20 = type metadata accessor for Siri_Nlu_External_UsoGraph();
  v1 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Siri_Nlu_External_UserStatedTask();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Siri_Nlu_External_UserParse();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v19 - v13;
  USOParse.userParse.getter();
  Siri_Nlu_External_UserParse.preferredUserDialogAct.getter(v14);
  (*(v9 + 8))(v11, v8);
  v15 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v14, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
    return MEMORY[0x1E69E7CC0];
  }

  else
  {
    Siri_Nlu_External_UserDialogAct.userStatedTask.getter();
    (*(v16 + 8))(v14, v15);
    Siri_Nlu_External_UserStatedTask.task.getter();
    (*(v5 + 8))(v7, v4);
    v18 = Siri_Nlu_External_UsoGraph.identifiers.getter();
    (*(v1 + 8))(v3, v20);
    return v18;
  }
}

uint64_t Array<A>.containsContactIdentifier.getter(uint64_t a1)
{
  v25 = type metadata accessor for Google_Protobuf_StringValue();
  v2 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Siri_Nlu_External_UsoEntityIdentifier();
  v6 = *(v5 - 8);
  v7.n128_f64[0] = MEMORY[0x1EEE9AC00](v5);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  if (!v10)
  {
    return 0;
  }

  v12 = *(v6 + 16);
  v11 = v6 + 16;
  v13 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
  v26 = *(v11 + 56);
  v27 = v12;
  v14 = (v11 - 8);
  v15 = (v2 + 8);
  v12(v9, v13, v5, v7);
  while (1)
  {
    if (Siri_Nlu_External_UsoEntityIdentifier.backingAppBundleID.getter() == 0x73746361746E6F43 && v18 == 0xE800000000000000)
    {
    }

    else
    {
      v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v19 & 1) == 0)
      {
        (*v14)(v9, v5);
        goto LABEL_4;
      }
    }

    Siri_Nlu_External_UsoEntityIdentifier.namespace.getter();
    v20 = Google_Protobuf_StringValue.value.getter();
    v22 = v21;
    (*v15)(v4, v25);
    if (v20 == 0x64695F6D657469 && v22 == 0xE700000000000000)
    {
      break;
    }

    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

    (*v14)(v9, v5);
    if (v16)
    {
      return 1;
    }

LABEL_4:
    v13 += v26;
    if (!--v10)
    {
      return 0;
    }

    v27(v9, v13, v5, v17);
  }

  (*v14)(v9, v5);
  return 1;
}

uint64_t UsoTask.isAgeRequest.getter()
{
  static UsoTask_CodegenConverter.convert(task:)();
  if (!v9)
  {
    goto LABEL_17;
  }

  outlined init with copy of ReferenceResolutionClientProtocol?(v8, v7, &_sypSgMd, &_sypSgMR);
  type metadata accessor for UsoTask_noVerb_common_Person();
  if (!swift_dynamicCast())
  {
    type metadata accessor for UsoTask_checkExistence_common_Person();
    if (swift_dynamicCast())
    {

      dispatch thunk of Uso_VerbTemplate_Reference.reference.getter();
      if (!v6 || (v1 = dispatch thunk of UsoEntity_common_Person.age.getter(), , !v1))
      {
        dispatch thunk of Uso_VerbTemplate_Reference.reference.getter();
        goto LABEL_19;
      }

LABEL_15:

      __swift_destroy_boxed_opaque_existential_1Tm(v7);
      v4 = 1;
      goto LABEL_23;
    }

    type metadata accessor for UsoTask_request_common_Person();
    if (swift_dynamicCast())
    {

      dispatch thunk of Uso_VerbTemplate_ReferenceSelect.reference.getter();
      if (!v6 || (v2 = dispatch thunk of UsoEntity_common_Person.age.getter(), , !v2))
      {
        dispatch thunk of Uso_VerbTemplate_ReferenceSelect.select.getter();
        if (!v6 || (v3 = dispatch thunk of UsoEntity_common_Person.age.getter(), , !v3))
        {
          dispatch thunk of Uso_VerbTemplate_ReferenceSelect.reference.getter();
          goto LABEL_19;
        }
      }

      goto LABEL_15;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v7);
LABEL_17:
    v4 = 0;
    goto LABEL_23;
  }

  dispatch thunk of Uso_VerbTemplate_NoVerb.entity.getter();
  if (v6)
  {
    v0 = dispatch thunk of UsoEntity_common_Person.age.getter();

    if (v0)
    {
      goto LABEL_15;
    }
  }

  dispatch thunk of Uso_VerbTemplate_NoVerb.entity.getter();
LABEL_19:

  if (v6)
  {
    v4 = UsoEntity_common_Person.isAgeRequestPerson.getter();
  }

  else
  {
    v4 = 0;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v7);
LABEL_23:
  outlined destroy of ReferenceResolutionClientProtocol?(v8, &_sypSgMd, &_sypSgMR);
  return v4 & 1;
}

uint64_t UsoTask.hasPartialContactsSpanMatches.getter()
{
  static UsoTask_CodegenConverter.convert(task:)();
  if (!v7)
  {
    goto LABEL_26;
  }

  outlined init with copy of ReferenceResolutionClientProtocol?(v6, v5, &_sypSgMd, &_sypSgMR);
  type metadata accessor for UsoTask_summarise_common_Person();
  if (!swift_dynamicCast())
  {
    type metadata accessor for UsoTask_noVerb_common_Person();
    if (swift_dynamicCast())
    {

      dispatch thunk of Uso_VerbTemplate_NoVerb.entity.getter();
      goto LABEL_6;
    }

    type metadata accessor for UsoTask_read_common_Person();
    if (!swift_dynamicCast())
    {
      type metadata accessor for UsoTask_update_common_Person();
      if (swift_dynamicCast())
      {

        dispatch thunk of Uso_VerbTemplate_ReferenceTarget.reference.getter();
        if (v4)
        {
          v1 = UsoEntity_common_Person.hasOnlyPartialContactsSpans.getter();
        }

        else
        {
          v1 = 0;
        }

        dispatch thunk of Uso_VerbTemplate_ReferenceTarget.target.getter();
LABEL_21:

        if (v4)
        {
          v2 = UsoEntity_common_Person.hasOnlyPartialContactsSpans.getter();
        }

        else
        {
          v2 = 0;
        }

        v0 = v1 | v2;
        goto LABEL_10;
      }

      type metadata accessor for UsoTask_checkExistence_common_Person();
      if (!swift_dynamicCast())
      {
        type metadata accessor for UsoTask_request_common_Person();
        if (swift_dynamicCast())
        {

          dispatch thunk of Uso_VerbTemplate_ReferenceSelect.reference.getter();
          if (v4)
          {
            v1 = UsoEntity_common_Person.hasOnlyPartialContactsSpans.getter();
          }

          else
          {
            v1 = 0;
          }

          dispatch thunk of Uso_VerbTemplate_ReferenceSelect.select.getter();
          goto LABEL_21;
        }

        __swift_destroy_boxed_opaque_existential_1Tm(v5);
LABEL_26:
        v0 = 0;
        goto LABEL_27;
      }
    }
  }

  dispatch thunk of Uso_VerbTemplate_Reference.reference.getter();
LABEL_6:

  if (v4)
  {
    v0 = UsoEntity_common_Person.hasOnlyPartialContactsSpans.getter();
  }

  else
  {
    v0 = 0;
  }

LABEL_10:
  __swift_destroy_boxed_opaque_existential_1Tm(v5);
LABEL_27:
  outlined destroy of ReferenceResolutionClientProtocol?(v6, &_sypSgMd, &_sypSgMR);
  return v0 & 1;
}

BOOL UsoTask.hasContactIDs.getter()
{
  static UsoTask_CodegenConverter.convert(task:)();
  if (!v11)
  {
    goto LABEL_26;
  }

  outlined init with copy of ReferenceResolutionClientProtocol?(v10, v9, &_sypSgMd, &_sypSgMR);
  type metadata accessor for UsoTask_summarise_common_Person();
  if (!swift_dynamicCast())
  {
    type metadata accessor for UsoTask_noVerb_common_Person();
    if (swift_dynamicCast())
    {

      dispatch thunk of Uso_VerbTemplate_NoVerb.entity.getter();
      goto LABEL_6;
    }

    type metadata accessor for UsoTask_read_common_Person();
    if (!swift_dynamicCast())
    {
      type metadata accessor for UsoTask_update_common_Person();
      if (swift_dynamicCast())
      {

        dispatch thunk of Uso_VerbTemplate_ReferenceTarget.reference.getter();
        if (v8)
        {
          v3 = UsoEntity_common_Person.contactIDs.getter();
        }

        else
        {
          v3 = MEMORY[0x1E69E7CC0];
        }

        v5 = *(v3 + 16);

        dispatch thunk of Uso_VerbTemplate_ReferenceTarget.target.getter();
LABEL_21:

        if (v8)
        {
          v6 = UsoEntity_common_Person.contactIDs.getter();
        }

        else
        {

          v6 = MEMORY[0x1E69E7CC0];
        }

        v1 = v5 | *(v6 + 16);
        goto LABEL_10;
      }

      type metadata accessor for UsoTask_checkExistence_common_Person();
      if (!swift_dynamicCast())
      {
        type metadata accessor for UsoTask_request_common_Person();
        if (swift_dynamicCast())
        {

          dispatch thunk of Uso_VerbTemplate_ReferenceSelect.reference.getter();
          if (v8)
          {
            v4 = UsoEntity_common_Person.contactIDs.getter();
          }

          else
          {
            v4 = MEMORY[0x1E69E7CC0];
          }

          v5 = *(v4 + 16);

          dispatch thunk of Uso_VerbTemplate_ReferenceSelect.select.getter();
          goto LABEL_21;
        }

        __swift_destroy_boxed_opaque_existential_1Tm(v9);
LABEL_26:
        v2 = 0;
        goto LABEL_27;
      }
    }
  }

  dispatch thunk of Uso_VerbTemplate_Reference.reference.getter();
LABEL_6:

  if (v8)
  {
    v0 = UsoEntity_common_Person.contactIDs.getter();
  }

  else
  {

    v0 = MEMORY[0x1E69E7CC0];
  }

  v1 = *(v0 + 16);
LABEL_10:

  v2 = v1 != 0;
  __swift_destroy_boxed_opaque_existential_1Tm(v9);
LABEL_27:
  outlined destroy of ReferenceResolutionClientProtocol?(v10, &_sypSgMd, &_sypSgMR);
  return v2;
}

uint64_t UsoTask.isMeCardTask.getter()
{
  v0 = type metadata accessor for UsoEntity_common_Person.DefinedValues();
  v1 = *(v0 - 8);
  v182 = v0;
  v183 = v1;
  MEMORY[0x1EEE9AC00](v0);
  v179 = &v157 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSg_AFtMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSg_AFtMR);
  MEMORY[0x1EEE9AC00](v181);
  v159 = &v157 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v163 = &v157 - v5;
  MEMORY[0x1EEE9AC00](v6);
  v168 = &v157 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v170 = &v157 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v175 = &v157 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v178 = &v157 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v180 = &v157 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v157 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v157 = &v157 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v158 = &v157 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v161 = &v157 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v160 = &v157 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v165 = &v157 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v166 = &v157 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v162 = &v157 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v172 = (&v157 - v34);
  MEMORY[0x1EEE9AC00](v35);
  v167 = &v157 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v164 = &v157 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v169 = &v157 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v173 = &v157 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v171 = &v157 - v44;
  MEMORY[0x1EEE9AC00](v45);
  v176 = (&v157 - v46);
  MEMORY[0x1EEE9AC00](v47);
  v177 = &v157 - v48;
  MEMORY[0x1EEE9AC00](v49);
  v174 = &v157 - v50;
  MEMORY[0x1EEE9AC00](v51);
  v53 = &v157 - v52;
  MEMORY[0x1EEE9AC00](v54);
  v56 = &v157 - v55;
  MEMORY[0x1EEE9AC00](v57);
  v59 = &v157 - v58;
  MEMORY[0x1EEE9AC00](v60);
  v62 = &v157 - v61;
  MEMORY[0x1EEE9AC00](v63);
  v65 = &v157 - v64;
  MEMORY[0x1EEE9AC00](v66);
  v68 = &v157 - v67;
  MEMORY[0x1EEE9AC00](v69);
  v71 = &v157 - v70;
  MEMORY[0x1EEE9AC00](v72);
  v74 = &v157 - v73;
  static UsoTask_CodegenConverter.convert(task:)();
  if (v188)
  {
    outlined init with copy of ReferenceResolutionClientProtocol?(v187, v186, &_sypSgMd, &_sypSgMR);
    type metadata accessor for UsoTask_summarise_common_Person();
    if (swift_dynamicCast())
    {

      dispatch thunk of Uso_VerbTemplate_Reference.reference.getter();

      if (v184)
      {
        dispatch thunk of UsoEntity_common_Person.definedValue.getter();

        v76 = v182;
        v75 = v183;
      }

      else
      {
        v76 = v182;
        v75 = v183;
        (*(v183 + 56))(v74, 1, 1, v182);
      }

      (*(v75 + 104))(v71, *MEMORY[0x1E69D1BE0], v76);
      (*(v75 + 56))(v71, 0, 1, v76);
      v82 = *(v181 + 48);
      outlined init with copy of ReferenceResolutionClientProtocol?(v74, v18, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
      outlined init with copy of ReferenceResolutionClientProtocol?(v71, &v18[v82], &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
      v83 = *(v75 + 48);
      if (v83(v18, 1, v76) == 1)
      {

        outlined destroy of ReferenceResolutionClientProtocol?(v71, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
        outlined destroy of ReferenceResolutionClientProtocol?(v74, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
        if (v83(&v18[v82], 1, v76) == 1)
        {
          v84 = v18;
LABEL_61:
          outlined destroy of ReferenceResolutionClientProtocol?(v84, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
          v90 = 1;
          goto LABEL_67;
        }

        goto LABEL_17;
      }

      outlined init with copy of ReferenceResolutionClientProtocol?(v18, v68, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
      if (v83(&v18[v82], 1, v76) == 1)
      {

        outlined destroy of ReferenceResolutionClientProtocol?(v71, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
        outlined destroy of ReferenceResolutionClientProtocol?(v74, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
        (*(v183 + 8))(v68, v76);
LABEL_17:
        v85 = v18;
LABEL_66:
        outlined destroy of ReferenceResolutionClientProtocol?(v85, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSg_AFtMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSg_AFtMR);
        v90 = 0;
        goto LABEL_67;
      }

      v88 = v183;
      v89 = v179;
      (*(v183 + 32))(v179, &v18[v82], v76);
      lazy protocol witness table accessor for type UsoEntity_common_Person.DefinedValues and conformance UsoEntity_common_Person.DefinedValues();
      v90 = dispatch thunk of static Equatable.== infix(_:_:)();

      v91 = *(v88 + 8);
      v91(v89, v76);
      outlined destroy of ReferenceResolutionClientProtocol?(v71, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
      outlined destroy of ReferenceResolutionClientProtocol?(v74, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
      v91(v68, v76);
      v92 = v18;
      goto LABEL_43;
    }

    type metadata accessor for UsoTask_noVerb_common_Person();
    if (swift_dynamicCast())
    {

      dispatch thunk of Uso_VerbTemplate_NoVerb.entity.getter();

      v77 = v183;
      if (v184)
      {
        dispatch thunk of UsoEntity_common_Person.definedValue.getter();

        v78 = v182;
      }

      else
      {
        v78 = v182;
        (*(v183 + 56))(v65, 1, 1, v182);
      }

      (*(v77 + 104))(v62, *MEMORY[0x1E69D1BE0], v78);
      (*(v77 + 56))(v62, 0, 1, v78);
      v93 = v180;
      v94 = *(v181 + 48);
      outlined init with copy of ReferenceResolutionClientProtocol?(v65, v180, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
      v95 = v93;
      outlined init with copy of ReferenceResolutionClientProtocol?(v62, v93 + v94, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
      v96 = *(v77 + 48);
      if (v96(v95, 1, v78) == 1)
      {

        outlined destroy of ReferenceResolutionClientProtocol?(v62, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
        v97 = v180;
        outlined destroy of ReferenceResolutionClientProtocol?(v65, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
        if (v96(v97 + v94, 1, v78) == 1)
        {
          v84 = v97;
          goto LABEL_61;
        }

        goto LABEL_28;
      }

      outlined init with copy of ReferenceResolutionClientProtocol?(v95, v59, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
      if (v96(v95 + v94, 1, v78) == 1)
      {

        outlined destroy of ReferenceResolutionClientProtocol?(v62, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
        v97 = v180;
        outlined destroy of ReferenceResolutionClientProtocol?(v65, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
        (*(v77 + 8))(v59, v78);
LABEL_28:
        v85 = v97;
        goto LABEL_66;
      }

      v99 = v179;
      (*(v77 + 32))(v179, v95 + v94, v78);
      lazy protocol witness table accessor for type UsoEntity_common_Person.DefinedValues and conformance UsoEntity_common_Person.DefinedValues();
      v100 = v95;
      v90 = dispatch thunk of static Equatable.== infix(_:_:)();

      v101 = *(v77 + 8);
      v101(v99, v78);
      outlined destroy of ReferenceResolutionClientProtocol?(v62, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
      outlined destroy of ReferenceResolutionClientProtocol?(v65, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
      v101(v59, v78);
      v92 = v100;
LABEL_43:
      outlined destroy of ReferenceResolutionClientProtocol?(v92, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
LABEL_67:
      __swift_destroy_boxed_opaque_existential_1Tm(v186);
      goto LABEL_68;
    }

    type metadata accessor for UsoTask_read_common_Person();
    v79 = swift_dynamicCast();
    v80 = v182;
    v81 = v183;
    if (v79)
    {

      dispatch thunk of Uso_VerbTemplate_Reference.reference.getter();

      if (v184)
      {
        dispatch thunk of UsoEntity_common_Person.definedValue.getter();
      }

      else
      {
        (*(v81 + 56))(v56, 1, 1, v80);
      }

      v102 = v178;
      (*(v81 + 104))(v53, *MEMORY[0x1E69D1BE0], v80);
      (*(v81 + 56))(v53, 0, 1, v80);
      v103 = *(v181 + 48);
      outlined init with copy of ReferenceResolutionClientProtocol?(v56, v102, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
      outlined init with copy of ReferenceResolutionClientProtocol?(v53, v102 + v103, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
      v104 = *(v81 + 48);
      if (v104(v102, 1, v80) == 1)
      {

        outlined destroy of ReferenceResolutionClientProtocol?(v53, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
        outlined destroy of ReferenceResolutionClientProtocol?(v56, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
        if (v104(v102 + v103, 1, v80) == 1)
        {
          goto LABEL_60;
        }
      }

      else
      {
        v105 = v174;
        outlined init with copy of ReferenceResolutionClientProtocol?(v102, v174, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
        if (v104(v102 + v103, 1, v80) != 1)
        {
          v108 = v179;
          (*(v81 + 32))(v179, v102 + v103, v80);
          lazy protocol witness table accessor for type UsoEntity_common_Person.DefinedValues and conformance UsoEntity_common_Person.DefinedValues();
          v109 = v105;
          v90 = dispatch thunk of static Equatable.== infix(_:_:)();

          v110 = *(v81 + 8);
          v110(v108, v80);
          outlined destroy of ReferenceResolutionClientProtocol?(v53, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
          outlined destroy of ReferenceResolutionClientProtocol?(v56, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
          v110(v109, v80);
          v92 = v102;
          goto LABEL_43;
        }

        outlined destroy of ReferenceResolutionClientProtocol?(v53, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
        outlined destroy of ReferenceResolutionClientProtocol?(v56, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
        (*(v81 + 8))(v105, v80);
      }

LABEL_65:
      v85 = v102;
      goto LABEL_66;
    }

    type metadata accessor for UsoTask_update_common_Person();
    if (swift_dynamicCast())
    {
      v86 = v185;

      dispatch thunk of Uso_VerbTemplate_ReferenceTarget.reference.getter();
      v180 = v86;

      v87 = v177;
      if (v184)
      {
        dispatch thunk of UsoEntity_common_Person.definedValue.getter();
      }

      else
      {
        (*(v81 + 56))(v177, 1, 1, v80);
      }

      v111 = v175;
      v112 = v176;
      v113 = *(v81 + 104);
      LODWORD(v175) = *MEMORY[0x1E69D1BE0];
      v178 = (v81 + 104);
      v174 = v113;
      v113(v176);
      v172 = *(v81 + 56);
      (v172)(v112, 0, 1, v80);
      v114 = *(v181 + 48);
      outlined init with copy of ReferenceResolutionClientProtocol?(v87, v111, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
      outlined init with copy of ReferenceResolutionClientProtocol?(v112, v111 + v114, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
      v115 = *(v81 + 48);
      if (v115(v111, 1, v80) == 1)
      {
        outlined destroy of ReferenceResolutionClientProtocol?(v112, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
        outlined destroy of ReferenceResolutionClientProtocol?(v87, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
        if (v115(v111 + v114, 1, v80) == 1)
        {
LABEL_47:
          outlined destroy of ReferenceResolutionClientProtocol?(v111, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
LABEL_56:

          v90 = 1;
          goto LABEL_67;
        }
      }

      else
      {
        v116 = v171;
        outlined init with copy of ReferenceResolutionClientProtocol?(v111, v171, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
        if (v115(v111 + v114, 1, v80) != 1)
        {
          v120 = v111;
          v121 = v183;
          v122 = v179;
          (*(v183 + 32))(v179, v120 + v114, v80);
          lazy protocol witness table accessor for type UsoEntity_common_Person.DefinedValues and conformance UsoEntity_common_Person.DefinedValues();
          LODWORD(v168) = dispatch thunk of static Equatable.== infix(_:_:)();
          v123 = *(v121 + 8);
          v123(v122, v80);
          outlined destroy of ReferenceResolutionClientProtocol?(v176, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
          outlined destroy of ReferenceResolutionClientProtocol?(v177, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
          v123(v171, v80);
          outlined destroy of ReferenceResolutionClientProtocol?(v120, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
          if (v168)
          {
            goto LABEL_56;
          }

          goto LABEL_51;
        }

        outlined destroy of ReferenceResolutionClientProtocol?(v176, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
        outlined destroy of ReferenceResolutionClientProtocol?(v177, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
        (*(v183 + 8))(v116, v80);
      }

      outlined destroy of ReferenceResolutionClientProtocol?(v111, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSg_AFtMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSg_AFtMR);
LABEL_51:
      dispatch thunk of Uso_VerbTemplate_ReferenceTarget.target.getter();
      v117 = v173;
      if (v184)
      {
        dispatch thunk of UsoEntity_common_Person.definedValue.getter();

        v118 = v182;
        v119 = v172;
      }

      else
      {
        v118 = v182;
        v119 = v172;
        (v172)(v173, 1, 1, v182);
      }

      v124 = v169;
      (v174)(v169, v175, v118);
      (v119)(v124, 0, 1, v118);
      v125 = v124;
      v126 = *(v181 + 48);
      v102 = v170;
      outlined init with copy of ReferenceResolutionClientProtocol?(v117, v170, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
      outlined init with copy of ReferenceResolutionClientProtocol?(v124, v102 + v126, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
      if (v115(v102, 1, v118) == 1)
      {

        outlined destroy of ReferenceResolutionClientProtocol?(v124, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
        outlined destroy of ReferenceResolutionClientProtocol?(v117, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
        if (v115(v102 + v126, 1, v118) != 1)
        {
          goto LABEL_65;
        }

LABEL_60:
        v84 = v102;
        goto LABEL_61;
      }

      v127 = v164;
      outlined init with copy of ReferenceResolutionClientProtocol?(v102, v164, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
      if (v115(v102 + v126, 1, v118) == 1)
      {

        outlined destroy of ReferenceResolutionClientProtocol?(v124, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
        v128 = v173;
LABEL_64:
        outlined destroy of ReferenceResolutionClientProtocol?(v128, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
        (*(v183 + 8))(v127, v118);
        goto LABEL_65;
      }

      v135 = v183;
      v136 = v179;
      (*(v183 + 32))(v179, v102 + v126, v118);
      lazy protocol witness table accessor for type UsoEntity_common_Person.DefinedValues and conformance UsoEntity_common_Person.DefinedValues();
      v90 = dispatch thunk of static Equatable.== infix(_:_:)();

      v137 = *(v135 + 8);
      v137(v136, v118);
      outlined destroy of ReferenceResolutionClientProtocol?(v125, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
      v138 = v173;
      goto LABEL_77;
    }

    type metadata accessor for UsoTask_checkExistence_common_Person();
    if (swift_dynamicCast())
    {

      dispatch thunk of Uso_VerbTemplate_Reference.reference.getter();

      v98 = v167;
      if (v184)
      {
        dispatch thunk of UsoEntity_common_Person.definedValue.getter();
      }

      else
      {
        (*(v81 + 56))(v167, 1, 1, v80);
      }

      v130 = v168;
      v131 = v172;
      (*(v81 + 104))(v172, *MEMORY[0x1E69D1BE0], v80);
      (*(v81 + 56))(v131, 0, 1, v80);
      v132 = *(v181 + 48);
      outlined init with copy of ReferenceResolutionClientProtocol?(v98, v130, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
      outlined init with copy of ReferenceResolutionClientProtocol?(v131, v130 + v132, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
      v133 = *(v81 + 48);
      if (v133(v130, 1, v80) == 1)
      {

        outlined destroy of ReferenceResolutionClientProtocol?(v131, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
        outlined destroy of ReferenceResolutionClientProtocol?(v98, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
        if (v133(v130 + v132, 1, v80) == 1)
        {
          v84 = v130;
          goto LABEL_61;
        }
      }

      else
      {
        v134 = v162;
        outlined init with copy of ReferenceResolutionClientProtocol?(v130, v162, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
        if (v133(v130 + v132, 1, v80) != 1)
        {
          v139 = v179;
          (*(v81 + 32))(v179, v130 + v132, v80);
          lazy protocol witness table accessor for type UsoEntity_common_Person.DefinedValues and conformance UsoEntity_common_Person.DefinedValues();
          v90 = dispatch thunk of static Equatable.== infix(_:_:)();

          v140 = *(v81 + 8);
          v140(v139, v80);
          outlined destroy of ReferenceResolutionClientProtocol?(v172, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
          outlined destroy of ReferenceResolutionClientProtocol?(v98, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
          v140(v134, v80);
          v92 = v130;
          goto LABEL_43;
        }

        outlined destroy of ReferenceResolutionClientProtocol?(v172, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
        outlined destroy of ReferenceResolutionClientProtocol?(v98, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
        (*(v81 + 8))(v134, v80);
      }

      v85 = v130;
      goto LABEL_66;
    }

    type metadata accessor for UsoTask_request_common_Person();
    if (swift_dynamicCast())
    {
      v106 = v185;

      dispatch thunk of Uso_VerbTemplate_ReferenceSelect.reference.getter();
      v180 = v106;

      v107 = v166;
      if (v184)
      {
        dispatch thunk of UsoEntity_common_Person.definedValue.getter();
      }

      else
      {
        (*(v81 + 56))(v166, 1, 1, v80);
      }

      v111 = v163;
      v141 = v165;
      v142 = *(v81 + 104);
      LODWORD(v177) = *MEMORY[0x1E69D1BE0];
      v178 = (v81 + 104);
      v176 = v142;
      (v142)(v165);
      v175 = *(v81 + 56);
      (v175)(v141, 0, 1, v80);
      v143 = *(v181 + 48);
      outlined init with copy of ReferenceResolutionClientProtocol?(v107, v111, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
      outlined init with copy of ReferenceResolutionClientProtocol?(v141, v111 + v143, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
      v144 = *(v81 + 48);
      if (v144(v111, 1, v80) == 1)
      {
        outlined destroy of ReferenceResolutionClientProtocol?(v141, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
        outlined destroy of ReferenceResolutionClientProtocol?(v107, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
        if (v144(v111 + v143, 1, v80) == 1)
        {
          goto LABEL_47;
        }
      }

      else
      {
        v145 = v160;
        outlined init with copy of ReferenceResolutionClientProtocol?(v111, v160, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
        if (v144(v111 + v143, 1, v80) != 1)
        {
          v148 = v111;
          v149 = v183;
          v150 = v179;
          (*(v183 + 32))(v179, v148 + v143, v80);
          lazy protocol witness table accessor for type UsoEntity_common_Person.DefinedValues and conformance UsoEntity_common_Person.DefinedValues();
          LODWORD(v174) = dispatch thunk of static Equatable.== infix(_:_:)();
          v151 = *(v149 + 8);
          v151(v150, v80);
          outlined destroy of ReferenceResolutionClientProtocol?(v165, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
          outlined destroy of ReferenceResolutionClientProtocol?(v166, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
          v151(v160, v80);
          outlined destroy of ReferenceResolutionClientProtocol?(v148, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
          if (v174)
          {
            goto LABEL_56;
          }

          goto LABEL_86;
        }

        outlined destroy of ReferenceResolutionClientProtocol?(v165, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
        outlined destroy of ReferenceResolutionClientProtocol?(v166, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
        (*(v183 + 8))(v145, v80);
      }

      outlined destroy of ReferenceResolutionClientProtocol?(v111, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSg_AFtMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSg_AFtMR);
LABEL_86:
      dispatch thunk of Uso_VerbTemplate_ReferenceSelect.select.getter();
      v146 = v161;
      if (v184)
      {
        dispatch thunk of UsoEntity_common_Person.definedValue.getter();

        v118 = v182;
        v147 = v175;
      }

      else
      {
        v118 = v182;
        v147 = v175;
        (v175)(v161, 1, 1, v182);
      }

      v152 = v158;
      (v176)(v158, v177, v118);
      v147(v152, 0, 1, v118);
      v153 = v152;
      v154 = *(v181 + 48);
      v102 = v159;
      outlined init with copy of ReferenceResolutionClientProtocol?(v146, v159, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
      outlined init with copy of ReferenceResolutionClientProtocol?(v152, v102 + v154, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
      if (v144(v102, 1, v118) == 1)
      {

        outlined destroy of ReferenceResolutionClientProtocol?(v152, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
        outlined destroy of ReferenceResolutionClientProtocol?(v146, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
        if (v144(v102 + v154, 1, v118) != 1)
        {
          goto LABEL_65;
        }

        goto LABEL_60;
      }

      v127 = v157;
      outlined init with copy of ReferenceResolutionClientProtocol?(v102, v157, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
      if (v144(v102 + v154, 1, v118) == 1)
      {

        outlined destroy of ReferenceResolutionClientProtocol?(v152, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
        v128 = v161;
        goto LABEL_64;
      }

      v155 = v183;
      v156 = v179;
      (*(v183 + 32))(v179, v102 + v154, v118);
      lazy protocol witness table accessor for type UsoEntity_common_Person.DefinedValues and conformance UsoEntity_common_Person.DefinedValues();
      v90 = dispatch thunk of static Equatable.== infix(_:_:)();

      v137 = *(v155 + 8);
      v137(v156, v118);
      outlined destroy of ReferenceResolutionClientProtocol?(v153, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
      v138 = v161;
LABEL_77:
      outlined destroy of ReferenceResolutionClientProtocol?(v138, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_PersonC13DefinedValuesOSgMR);
      v137(v127, v118);
      v92 = v102;
      goto LABEL_43;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v186);
  }

  v90 = 0;
LABEL_68:
  outlined destroy of ReferenceResolutionClientProtocol?(v187, &_sypSgMd, &_sypSgMR);
  return v90 & 1;
}

uint64_t UsoEntity_common_Person.contactIDs.getter()
{
  v0 = type metadata accessor for IdentifierAppBundle();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v41 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for UsoIdentifier();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v51 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v45 = &v41 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v41 - v10;
  result = dispatch thunk of CodeGenGlobalArgs.getUsoIdentifiersFor(attributeName:)();
  if (!result)
  {
    result = MEMORY[0x1E69E7CC0];
  }

  v50 = *(result + 16);
  if (v50)
  {
    v13 = 0;
    v47 = (v1 + 8);
    v48 = (v5 + 16);
    v43 = (v5 + 8);
    v44 = (v5 + 32);
    v46 = MEMORY[0x1E69E7CC0];
    v41 = v0;
    v42 = v5;
    v49 = result;
    while (1)
    {
      if (v13 >= *(result + 16))
      {
        __break(1u);
        return result;
      }

      v14 = (*(v5 + 80) + 32) & ~*(v5 + 80);
      v15 = *(v5 + 72);
      (*(v5 + 16))(v11, result + v14 + v15 * v13, v4);
      UsoIdentifier.appBundleSemantic.getter();
      v16 = IdentifierAppBundle.rawValue.getter();
      v18 = v17;
      (*v47)(v3, v0);
      if (v16 == 0x73746361746E6F43 && v18 == 0xE800000000000000)
      {
      }

      else
      {
        v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v19 & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      v20 = UsoIdentifier.namespace.getter();
      if (v21)
      {
        if (v20 == 0x64695F6D657469 && v21 == 0xE700000000000000)
        {

LABEL_17:
          v23 = *v44;
          (*v44)(v45, v11, v4);
          v24 = v46;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v52 = v24;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v24 + 16) + 1, 1);
            v24 = v52;
          }

          v27 = *(v24 + 16);
          v26 = *(v24 + 24);
          if (v27 >= v26 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1);
            v24 = v52;
          }

          *(v24 + 16) = v27 + 1;
          v46 = v24;
          v23((v24 + v14 + v27 * v15), v45, v4);
          v0 = v41;
          v5 = v42;
          goto LABEL_6;
        }

        v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v22)
        {
          goto LABEL_17;
        }
      }

LABEL_5:
      (*v43)(v11, v4);
LABEL_6:
      ++v13;
      result = v49;
      if (v50 == v13)
      {
        goto LABEL_23;
      }
    }
  }

  v46 = MEMORY[0x1E69E7CC0];
LABEL_23:

  v28 = *(v46 + 16);
  if (v28)
  {
    v52 = MEMORY[0x1E69E7CC0];
    v29 = v46;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v28, 0);
    v30 = v52;
    v32 = *(v5 + 16);
    v31 = v5 + 16;
    v33 = v29 + ((*(v31 + 64) + 32) & ~*(v31 + 64));
    v49 = *(v31 + 56);
    v50 = v32;
    v48 = (v31 - 8);
    do
    {
      v34 = v51;
      v50(v51, v33, v4);
      v35 = UsoIdentifier.value.getter();
      v37 = v36;
      (*v48)(v34, v4);
      v52 = v30;
      v39 = *(v30 + 16);
      v38 = *(v30 + 24);
      if (v39 >= v38 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v38 > 1), v39 + 1, 1);
        v30 = v52;
      }

      *(v30 + 16) = v39 + 1;
      v40 = v30 + 16 * v39;
      *(v40 + 32) = v35;
      *(v40 + 40) = v37;
      v33 += v49;
      --v28;
    }

    while (v28);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v30;
}

uint64_t UsoEntity_common_Person.hasOnlyPartialContactsSpans.getter()
{
  matched = type metadata accessor for MatchInfo.MatchSignals();
  v0 = *(matched - 8);
  MEMORY[0x1EEE9AC00](matched);
  v64 = &v54 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology9MatchInfoVSgMd, &_s12SiriOntology9MatchInfoVSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v54 - v6);
  v66 = type metadata accessor for MatchInfo();
  v8 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v57 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v58 = &v54 - v11;
  v12 = type metadata accessor for UsoEntitySpan();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v56 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v54 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v54 - v19;
  result = dispatch thunk of CodeGenGlobalArgs.getEntitySpansFor(attributeName:)();
  if (result)
  {
    v22 = result;
  }

  else
  {
    v22 = MEMORY[0x1E69E7CC0];
  }

  v72 = *(v22 + 16);
  if (!v72)
  {
    v38 = MEMORY[0x1E69E7CC0];
LABEL_36:

    v53 = *(v38 + 16);

    return v53 != 0;
  }

  v63 = v7;
  v23 = v8;
  v24 = 0;
  v54 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v55 = v4;
  v25 = v22 + v54;
  v71 = v13 + 16;
  v67 = (v23 + 48);
  v68 = v12;
  v60 = (v0 + 8);
  v61 = (v23 + 32);
  v59 = (v23 + 8);
  v69 = (v13 + 8);
  v26 = v13;
  v62 = v13;
  while (v24 < *(v22 + 16))
  {
    v73 = *(v26 + 72);
    v70 = *(v26 + 16);
    v70(v20, v25 + v73 * v24, v12);
    v27 = UsoEntitySpan.originAppId.getter();
    if (v28)
    {
      if (v27 == 0x73746361746E6F43 && v28 == 0xE800000000000000)
      {

LABEL_14:
        v30 = v22;
        v31 = v17;
        v32 = v63;
        UsoEntitySpan.matchInfo.getter();
        v33 = v66;
        if ((*v67)(v32, 1, v66) == 1)
        {
          (*v69)(v20, v12);
          result = outlined destroy of ReferenceResolutionClientProtocol?(v32, &_s12SiriOntology9MatchInfoVSgMd, &_s12SiriOntology9MatchInfoVSgMR);
          v17 = v31;
          v22 = v30;
          v26 = v62;
        }

        else
        {
          v34 = v58;
          (*v61)(v58, v32, v33);
          v35 = v64;
          static MatchInfo.MatchSignals.exactMatch.getter();
          v36 = MatchInfo.hasMatchSignals(_:)();
          (*v60)(v35, matched);
          (*v59)(v34, v33);
          result = (*v69)(v20, v12);
          v17 = v31;
          v22 = v30;
          v26 = v62;
          if (v36)
          {

            return 0;
          }
        }

        goto LABEL_7;
      }

      v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v29)
      {
        goto LABEL_14;
      }
    }

    result = (*v69)(v20, v12);
LABEL_7:
    ++v24;
    v12 = v68;
    if (v72 == v24)
    {
      v37 = 0;
      v38 = MEMORY[0x1E69E7CC0];
      v63 = (v26 + 32);
      v39 = v55;
      v40 = v66;
      while (1)
      {
        if (v37 >= *(v22 + 16))
        {
          goto LABEL_38;
        }

        v70(v17, v25, v12);
        v41 = UsoEntitySpan.originAppId.getter();
        if (!v42)
        {
          goto LABEL_20;
        }

        if (v41 == 0x73746361746E6F43 && v42 == 0xE800000000000000)
        {
        }

        else
        {
          v43 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v43 & 1) == 0)
          {
            goto LABEL_20;
          }
        }

        UsoEntitySpan.matchInfo.getter();
        if ((*v67)(v39, 1, v40) == 1)
        {
          outlined destroy of ReferenceResolutionClientProtocol?(v39, &_s12SiriOntology9MatchInfoVSgMd, &_s12SiriOntology9MatchInfoVSgMR);
        }

        else
        {
          v44 = v57;
          (*v61)(v57, v39, v40);
          v45 = v64;
          static MatchInfo.MatchSignals.partialMatch.getter();
          v46 = MatchInfo.hasMatchSignals(_:)();
          v47 = v45;
          v40 = v66;
          (*v60)(v47, matched);
          (*v59)(v44, v40);
          if (v46)
          {
            v48 = *v63;
            (*v63)(v56, v17, v12);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v74 = v38;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v38 + 16) + 1, 1);
              v38 = v74;
            }

            v50 = v38;
            v52 = *(v38 + 16);
            v51 = *(v38 + 24);
            if (v52 >= v51 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v51 > 1), v52 + 1, 1);
              v50 = v74;
            }

            *(v50 + 16) = v52 + 1;
            v38 = v50;
            result = (v48)(v50 + v54 + v52 * v73, v56, v12);
            v39 = v55;
            v40 = v66;
            goto LABEL_21;
          }
        }

LABEL_20:
        result = (*v69)(v17, v12);
LABEL_21:
        ++v37;
        v25 += v73;
        if (v72 == v37)
        {
          goto LABEL_36;
        }
      }
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t UsoEntity_common_Person.isAgeRequestPerson.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v66 = v64 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v67 = v64 - v3;
  MEMORY[0x1EEE9AC00](v4);
  v68 = v64 - v5;
  v6 = type metadata accessor for DateTimeResolver();
  v82 = *(v6 - 8);
  v83 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v81 = v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference14RecommendationOyAA8DateTimeCGSgMd, &_s13SiriInference14RecommendationOyAA8DateTimeCGSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v84 = v64 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference14RecommendationOyAA8DateTimeCGMd, &_s13SiriInference14RecommendationOyAA8DateTimeCGMR);
  v86 = *(v10 - 8);
  v87 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v72 = v64 - v14;
  v80 = type metadata accessor for DateTimeResolutionSpec.DateTimeConvergenceStrategy();
  v78 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v79 = v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DateTimeResolutionSpec.ExpandToType();
  v75 = *(v16 - 8);
  v76 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v77 = v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DateTimeResolutionSpec();
  v73 = *(v18 - 8);
  v74 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v85 = v64 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for Date();
  MEMORY[0x1EEE9AC00](v20 - 8);
  v21 = type metadata accessor for Calendar();
  v70 = *(v21 - 8);
  v71 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v88 = v64 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for DateTimeResolutionContext.Hemisphere();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = v64 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for TimeZone();
  v69 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v89 = v64 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for Locale();
  MEMORY[0x1EEE9AC00](v29 - 8);
  MEMORY[0x1EEE9AC00](v30);
  MEMORY[0x1EEE9AC00](v31);
  result = dispatch thunk of UsoEntity_common_Person.associatedDate.getter();
  if (!result)
  {
    return result;
  }

  v64[0] = v27;
  v65 = v12;
  v33 = result;
  if (!UsoEntity_common_Date.toDate()())
  {

    return 0;
  }

  v64[1] = v33;
  type metadata accessor for DateTime.Time();
  swift_allocObject();

  DateTime.Time.init(withHour:)();
  type metadata accessor for DateTime();
  swift_allocObject();
  v64[2] = DateTime.init(withDate:time:)();
  static Locale.autoupdatingCurrent.getter();
  static Locale.autoupdatingCurrent.getter();
  static Locale.autoupdatingCurrent.getter();
  static TimeZone.autoupdatingCurrent.getter();
  (*(v24 + 104))(v26, *MEMORY[0x1E69CE610], v23);
  static Calendar.autoupdatingCurrent.getter();
  static Date.now.getter();
  type metadata accessor for DateTimeResolutionContext();
  swift_allocObject();
  v34 = DateTimeResolutionContext.init(with:regionFormat:regionAwareLanguage:timeZone:hemisphere:calendar:date:)();
  (*(v75 + 104))(v77, *MEMORY[0x1E69CE600], v76);
  (*(v78 + 104))(v79, *MEMORY[0x1E69CE5F0], v80);
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC13SiriInference8DateTimeC0eF5RangeC07DefinedefG0O_AETt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v35 = v85;
  DateTimeResolutionSpec.init(expandToType:dateTimeConvergenceStrategy:overridesForDefinedDateTimeRanges:inferDurationAsInterval:witchingHourRoundOffEnabled:convergeToOperatingHours:)();
  v36 = v81;
  DateTimeResolver.init()();
  v37 = v84;
  DateTimeResolver.makeRecommendation(value:context:spec:)();
  v80 = v34;
  (*(v82 + 8))(v36, v83);
  v39 = v86;
  v38 = v87;
  (*(v86 + 56))(v37, 0, 1, v87);
  v40 = v72;
  (*(v39 + 32))(v72, v37, v38);
  v41 = v65;
  (*(v39 + 16))(v65, v40, v38);
  v42 = (*(v39 + 88))(v41, v38);
  if (v42 == *MEMORY[0x1E69CE5E8] || v42 == *MEMORY[0x1E69CE5D8])
  {
    (*(v39 + 96))(v65, v38);
    v51 = v88;
    static Calendar.current.getter();
    v52 = v89;
    static TimeZone.current.getter();
    v53 = DateTime.toINDateComponentsRange(calendar:timeZone:)();

    (*(v69 + 8))(v52, v64[0]);
    (*(v70 + 8))(v51, v71);
    v54 = [v53 startDateComponents];

    v55 = v54 != 0;
    if (v54)
    {
      v56 = v68;
      static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

      v57 = 0;
    }

    else
    {

      v57 = 1;
      v56 = v68;
    }

    (*(v39 + 8))(v40, v38);
    (*(v73 + 8))(v35, v74);
    v59 = type metadata accessor for DateComponents();
    (*(*(v59 - 8) + 56))(v56, v57, 1, v59);
    outlined destroy of ReferenceResolutionClientProtocol?(v56, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
    return v55;
  }

  v43 = v89;
  if (v42 != *MEMORY[0x1E69CE5E0])
  {

    v58 = *(v39 + 8);
    v58(v40, v38);
    (*(v73 + 8))(v35, v74);
    v58(v65, v38);
    return 0;
  }

  v44 = v65;
  (*(v39 + 96))(v65, v38);
  v45 = *v44;
  if (v45 >> 62)
  {
    result = __CocoaSet.count.getter();
    if (result)
    {
      goto LABEL_12;
    }

    goto LABEL_25;
  }

  result = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
LABEL_25:

    (*(v39 + 8))(v40, v38);
    (*(v73 + 8))(v35, v74);
    return 0;
  }

LABEL_12:
  if ((v45 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1E12A1FE0](0, v45);
  }

  else
  {
    if (!*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }
  }

  v46 = v88;
  static Calendar.current.getter();
  static TimeZone.current.getter();
  v47 = DateTime.toINDateComponentsRange(calendar:timeZone:)();

  (*(v69 + 8))(v43, v64[0]);
  (*(v70 + 8))(v46, v71);
  v48 = [v47 startDateComponents];

  if (v48)
  {
    v49 = v66;
    static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

    v50 = 0;
  }

  else
  {

    v50 = 1;
    v49 = v66;
  }

  (*(v39 + 8))(v40, v38);
  (*(v73 + 8))(v35, v74);
  v60 = type metadata accessor for DateComponents();
  v61 = *(v60 - 8);
  (*(v61 + 56))(v49, v50, 1, v60);
  v62 = v67;
  outlined init with take of DateComponents?(v49, v67);
  v63 = (*(v61 + 48))(v62, 1, v60) != 1;
  outlined destroy of ReferenceResolutionClientProtocol?(v62, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  return v63;
}

unint64_t specialized ContactsAffinityScorer.getContactTask(from:)()
{
  v0 = specialized static AffinityScorerUtils.getTask(_:)();
  if (!v0)
  {
    v3 = 0u;
    v4 = 0u;
    goto LABEL_16;
  }

  static UsoTask_CodegenConverter.convert(task:)();

  if (!*(&v4 + 1))
  {

LABEL_15:
    v0 = 0;
    goto LABEL_16;
  }

  outlined init with copy of ReferenceResolutionClientProtocol?(&v3, v2, &_sypSgMd, &_sypSgMR);
  type metadata accessor for UsoTask_summarise_common_Person();
  if (!swift_dynamicCast())
  {
    type metadata accessor for UsoTask_noVerb_common_Person();
    if (!swift_dynamicCast())
    {
      type metadata accessor for UsoTask_read_common_Person();
      if (!swift_dynamicCast())
      {
        type metadata accessor for UsoTask_update_common_Person();
        if (!swift_dynamicCast())
        {
          type metadata accessor for UsoTask_checkExistence_common_Person();
          if (!swift_dynamicCast())
          {
            type metadata accessor for UsoTask_request_common_Person();
            if (!swift_dynamicCast())
            {
              type metadata accessor for UsoTask_create_common_Person();
              if (!swift_dynamicCast())
              {
                type metadata accessor for UsoTask_delete_common_Person();
                if (!swift_dynamicCast())
                {
                  type metadata accessor for UsoTask_update_common_Communication();
                  if (!swift_dynamicCast())
                  {

                    __swift_destroy_boxed_opaque_existential_1Tm(v2);
                    goto LABEL_15;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v2);
LABEL_16:
  outlined destroy of ReferenceResolutionClientProtocol?(&v3, &_sypSgMd, &_sypSgMR);
  return v0;
}

uint64_t specialized ContactsAffinityScorer.score(input:environment:)()
{
  v0 = type metadata accessor for Locale();
  v68 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v65 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for USOParse();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Parse();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  Input.parse.getter();
  if ((*(v8 + 88))(v10, v7) != *MEMORY[0x1E69D0168])
  {
    (*(v8 + 8))(v10, v7);
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    __swift_project_value_buffer(v32, static Logger.executor);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v33, v34))
    {

      return 2;
    }

    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&dword_1DC659000, v33, v34, "#ContactsAffinityScorer returning default affinity score.", v35, 2u);
    MEMORY[0x1E12A2F50](v35, -1, -1);

    return 2;
  }

  (*(v8 + 96))(v10, v7);
  v66 = v3;
  v67 = v4;
  v11 = *(v4 + 32);
  v65 = v6;
  v11(v6, v10, v3);
  v12 = (v68 + 8);
  v13 = &unk_1F5824A30;
  v14 = 10;
  while (1)
  {
    if (!--v14)
    {
      v36 = v65;
      if (!specialized ContactsAffinityScorer.getContactTask(from:)())
      {
        v57 = v66;
        v56 = v67;
        if (one-time initialization token for executor != -1)
        {
          swift_once();
        }

        v58 = type metadata accessor for Logger();
        __swift_project_value_buffer(v58, static Logger.executor);
        v59 = Logger.logObject.getter();
        v60 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v59, v60))
        {
          v61 = swift_slowAlloc();
          *v61 = 0;
          _os_log_impl(&dword_1DC659000, v59, v60, "#ContactsAffinityScorer did not find any relevant usoIdentifiers or tasks, returning low affinity score.", v61, 2u);
          MEMORY[0x1E12A2F50](v61, -1, -1);
        }

        (*(v56 + 8))(v36, v57);
        return 1;
      }

      v37 = UsoTask.isAgeRequest.getter();
      v39 = v66;
      v38 = v67;
      if (v37 & 1) != 0 && (UsoTask.hasPartialContactsSpanMatches.getter())
      {
        if (one-time initialization token for executor != -1)
        {
          swift_once();
        }

        v40 = type metadata accessor for Logger();
        __swift_project_value_buffer(v40, static Logger.executor);
        v41 = Logger.logObject.getter();
        v42 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v41, v42))
        {
          v43 = swift_slowAlloc();
          *v43 = 0;
          v44 = "#ContactsAffinityScorer found recognized task but with partial span matches, returning default affinity score.";
LABEL_53:
          _os_log_impl(&dword_1DC659000, v41, v42, v44, v43, 2u);
          MEMORY[0x1E12A2F50](v43, -1, -1);

          (*(v38 + 8))(v36, v39);
          return 2;
        }

        goto LABEL_54;
      }

      if (UsoTask.hasContactIDs.getter())
      {
        if (one-time initialization token for executor != -1)
        {
          swift_once();
        }

        v51 = type metadata accessor for Logger();
        __swift_project_value_buffer(v51, static Logger.executor);
        v52 = Logger.logObject.getter();
        v53 = static os_log_type_t.debug.getter();
        if (!os_log_type_enabled(v52, v53))
        {
          goto LABEL_48;
        }

        v54 = swift_slowAlloc();
        *v54 = 0;
        v55 = "#ContactsAffinityScorer found recognized task with contact IDs, returning high affinity score.";
      }

      else
      {
        if ((UsoTask.isMeCardTask.getter() & 1) == 0)
        {
          if (one-time initialization token for executor != -1)
          {
            swift_once();
          }

          v63 = type metadata accessor for Logger();
          __swift_project_value_buffer(v63, static Logger.executor);
          v41 = Logger.logObject.getter();
          v42 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v41, v42))
          {
            v43 = swift_slowAlloc();
            *v43 = 0;
            v44 = "#ContactsAffinityScorer found recognized task but no contact IDs, returning default affinity score.";
            goto LABEL_53;
          }

LABEL_54:

          (*(v38 + 8))(v36, v39);
          return 2;
        }

        if (one-time initialization token for executor != -1)
        {
          swift_once();
        }

        v62 = type metadata accessor for Logger();
        __swift_project_value_buffer(v62, static Logger.executor);
        v52 = Logger.logObject.getter();
        v53 = static os_log_type_t.debug.getter();
        if (!os_log_type_enabled(v52, v53))
        {
LABEL_48:

          (*(v38 + 8))(v36, v39);
          return 3;
        }

        v54 = swift_slowAlloc();
        *v54 = 0;
        v55 = "#ContactsAffinityScorer found recognized task for user, returning high affinity score.";
      }

      _os_log_impl(&dword_1DC659000, v52, v53, v55, v54, 2u);
      MEMORY[0x1E12A2F50](v54, -1, -1);
      goto LABEL_48;
    }

    v18 = *(v13 - 1);
    v17 = *v13;

    SiriEnvironment.currentDevice.getter();
    dispatch thunk of CurrentDevice.siriLocale.getter();

    v19 = Locale.identifier.getter();
    v21 = v20;
    (*v12)(v2, v0);
    if (v18 == v19 && v17 == v21)
    {
      break;
    }

    v13 += 2;
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v15)
    {
      goto LABEL_8;
    }
  }

LABEL_8:
  v22 = v65;
  v23 = USOParse.usoIdentifiers.getter(v16);
  v24 = Array<A>.containsContactIdentifier.getter(v23);

  if ((v24 & 1) == 0)
  {
    v46 = v66;
    v45 = v67;
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v47 = type metadata accessor for Logger();
    __swift_project_value_buffer(v47, static Logger.executor);
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&dword_1DC659000, v48, v49, "#ContactsAffinityScorer did not find any relevant usoIdentifier, returning low affinity score.", v50, 2u);
      MEMORY[0x1E12A2F50](v50, -1, -1);
    }

    (*(v45 + 8))(v22, v46);
    return 1;
  }

  v26 = v66;
  v25 = v67;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  __swift_project_value_buffer(v27, static Logger.executor);
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = 2;
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_1DC659000, v28, v29, "#ContactsAffinityScorer preventing any domain boosting logic from executing in reported locale, returning .default", v31, 2u);
    MEMORY[0x1E12A2F50](v31, -1, -1);

    (*(v25 + 8))(v22, v26);
    return v30;
  }

  (*(v25 + 8))(v22, v26);
  return 2;
}

unint64_t lazy protocol witness table accessor for type UsoEntity_common_Person.DefinedValues and conformance UsoEntity_common_Person.DefinedValues()
{
  result = lazy protocol witness table cache variable for type UsoEntity_common_Person.DefinedValues and conformance UsoEntity_common_Person.DefinedValues;
  if (!lazy protocol witness table cache variable for type UsoEntity_common_Person.DefinedValues and conformance UsoEntity_common_Person.DefinedValues)
  {
    type metadata accessor for UsoEntity_common_Person.DefinedValues();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UsoEntity_common_Person.DefinedValues and conformance UsoEntity_common_Person.DefinedValues);
  }

  return result;
}

uint64_t outlined init with take of DateComponents?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t ContextTypeKey.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0xD000000000000019;
  }

  if (a1 == 1)
  {
    return 0x4C4E79636167656CLL;
  }

  return 0xD00000000000001ALL;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance ContextTypeKey(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xEF747865746E6F43;
  v3 = 0x4C4E79636167656CLL;
  v4 = *a1;
  if (v4 == 1)
  {
    v5 = 0x4C4E79636167656CLL;
  }

  else
  {
    v5 = 0xD00000000000001ALL;
  }

  if (v4 == 1)
  {
    v6 = 0xEF747865746E6F43;
  }

  else
  {
    v6 = 0x80000001DCA7A620;
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000019;
  }

  if (v4)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0x80000001DCA7A5F0;
  }

  if (*a2 != 1)
  {
    v3 = 0xD00000000000001ALL;
    v2 = 0x80000001DCA7A620;
  }

  if (*a2)
  {
    v9 = v3;
  }

  else
  {
    v9 = 0xD000000000000019;
  }

  if (*a2)
  {
    v10 = v2;
  }

  else
  {
    v10 = 0x80000001DCA7A5F0;
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

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ContextTypeKey()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ContextTypeKey(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ContextTypeKey(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance ContextTypeKey@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized ContextTypeKey.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance ContextTypeKey(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEF747865746E6F43;
  v4 = 0x4C4E79636167656CLL;
  if (v2 != 1)
  {
    v4 = 0xD00000000000001ALL;
    v3 = 0x80000001DCA7A620;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xD000000000000019;
  }

  if (v5)
  {
    v3 = 0x80000001DCA7A5F0;
  }

  *a1 = v6;
  a1[1] = v3;
}

unint64_t specialized ContextTypeKey.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ContextTypeKey.init(rawValue:), v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t lazy protocol witness table accessor for type ContextTypeKey and conformance ContextTypeKey()
{
  result = lazy protocol witness table cache variable for type ContextTypeKey and conformance ContextTypeKey;
  if (!lazy protocol witness table cache variable for type ContextTypeKey and conformance ContextTypeKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContextTypeKey and conformance ContextTypeKey);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [ContextTypeKey] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [ContextTypeKey] and conformance [A];
  if (!lazy protocol witness table cache variable for type [ContextTypeKey] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay14SiriKitRuntime14ContextTypeKeyOGMd, &_sSay14SiriKitRuntime14ContextTypeKeyOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [ContextTypeKey] and conformance [A]);
  }

  return result;
}

void key path setter for ContextUpdater.finalNativeFlowContextCommand : ContextUpdater(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 256);
  *(v3 + 256) = v2;
  v5 = v2;
}

uint64_t key path setter for ContextUpdater.finalActiveTasks : ContextUpdater(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 264) = v2;
}

uint64_t key path setter for ContextUpdater.finalExecutedTasks : ContextUpdater(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 272) = v2;
}

uint64_t key path setter for ContextUpdater.userId : ContextUpdater(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v8 - v5;
  outlined init with copy of ReferenceResolutionClientProtocol?(a1, &v8 - v5, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  return (*(**a2 + 368))(v6);
}

uint64_t ContextUpdater.userId.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14SiriKitRuntime14ContextUpdater_userId;
  swift_beginAccess();
  outlined assign with take of (Input, AnyFlow, SiriEnvironment)(a1, v1 + v3, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  return swift_endAccess();
}

char *ContextUpdater.__allocating_init(sessionState:rraasClient:correctionsPlatformClient:serviceHelper:assistantId:requestId:rootRequestId:contextDonator:instrumentationUtil:userId:)(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13)
{
  v18 = swift_allocObject();
  v19 = MEMORY[0x1E69E7CC0];
  *(v18 + 30) = MEMORY[0x1E69E7CC0];
  *(v18 + 32) = 0;
  *(v18 + 33) = v19;
  *(v18 + 35) = 0;
  *(v18 + 36) = 0;
  *(v18 + 34) = v19;
  v20 = OBJC_IVAR____TtC14SiriKitRuntime14ContextUpdater_userId;
  v21 = type metadata accessor for UserID();
  (*(*(v21 - 8) + 56))(&v18[v20], 1, 1, v21);
  *&v18[OBJC_IVAR____TtC14SiriKitRuntime14ContextUpdater_domainHints] = v19;
  outlined init with copy of ReferenceResolutionClientProtocol(a1, (v18 + 16));
  outlined init with copy of ReferenceResolutionClientProtocol(a2, (v18 + 56));
  outlined init with copy of ReferenceResolutionClientProtocol(a3, (v18 + 96));
  *(v18 + 17) = a4;
  *(v18 + 18) = a5;
  *(v18 + 19) = a6;
  *(v18 + 20) = a7;
  *(v18 + 21) = a8;
  *(v18 + 22) = a9;
  *(v18 + 23) = a10;
  outlined init with copy of ReferenceResolutionClientProtocol(a11, (v18 + 192));
  *(v18 + 31) = a12;
  type metadata accessor for SessionStateContextKeysManager();
  v22 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  v22[2] = v23;
  v24 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC16SiriMessageTypes22ConversationSessionKeyO_s8Sendable_pTt0g5Tf4g_n(v19);
  v25 = MEMORY[0x1E69E7CD0];
  v22[3] = v24;
  v22[4] = v25;
  __swift_destroy_boxed_opaque_existential_1Tm(a11);
  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  *(v18 + 29) = v22;
  v26 = OBJC_IVAR____TtC14SiriKitRuntime14ContextUpdater_userId;
  swift_beginAccess();
  outlined assign with take of (Input, AnyFlow, SiriEnvironment)(a13, &v18[v26], &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  swift_endAccess();
  return v18;
}

char *ContextUpdater.init(sessionState:rraasClient:correctionsPlatformClient:serviceHelper:assistantId:requestId:rootRequestId:contextDonator:instrumentationUtil:userId:)(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13)
{
  v19 = MEMORY[0x1E69E7CC0];
  *(v13 + 30) = MEMORY[0x1E69E7CC0];
  *(v13 + 32) = 0;
  *(v13 + 33) = v19;
  *(v13 + 35) = 0;
  *(v13 + 36) = 0;
  *(v13 + 34) = v19;
  v20 = OBJC_IVAR____TtC14SiriKitRuntime14ContextUpdater_userId;
  v21 = type metadata accessor for UserID();
  (*(*(v21 - 8) + 56))(&v13[v20], 1, 1, v21);
  *&v13[OBJC_IVAR____TtC14SiriKitRuntime14ContextUpdater_domainHints] = v19;
  outlined init with copy of ReferenceResolutionClientProtocol(a1, (v13 + 16));
  outlined init with copy of ReferenceResolutionClientProtocol(a2, (v13 + 56));
  outlined init with copy of ReferenceResolutionClientProtocol(a3, (v13 + 96));
  *(v13 + 17) = a4;
  *(v13 + 18) = a5;
  *(v13 + 19) = a6;
  *(v13 + 20) = a7;
  *(v13 + 21) = a8;
  *(v13 + 22) = a9;
  *(v13 + 23) = a10;
  outlined init with copy of ReferenceResolutionClientProtocol(a11, (v13 + 192));
  *(v13 + 31) = a12;
  type metadata accessor for SessionStateContextKeysManager();
  v22 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  v22[2] = v23;
  v24 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC16SiriMessageTypes22ConversationSessionKeyO_s8Sendable_pTt0g5Tf4g_n(v19);
  v25 = MEMORY[0x1E69E7CD0];
  v22[3] = v24;
  v22[4] = v25;
  __swift_destroy_boxed_opaque_existential_1Tm(a11);
  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  *(v13 + 29) = v22;
  v26 = OBJC_IVAR____TtC14SiriKitRuntime14ContextUpdater_userId;
  swift_beginAccess();
  outlined assign with take of (Input, AnyFlow, SiriEnvironment)(a13, &v13[v26], &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  swift_endAccess();
  return v13;
}

void *SessionStateContextKeysManager.__allocating_init()()
{
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  v0[2] = v1;
  v2 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC16SiriMessageTypes22ConversationSessionKeyO_s8Sendable_pTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v3 = MEMORY[0x1E69E7CD0];
  v0[3] = v2;
  v0[4] = v3;
  return v0;
}

void ContextUpdater.applyServerContextUpdateCandidate(_:metadata:)(void *a1, uint64_t a2, double a3)
{
  v4 = v3;
  v130 = a2;
  v6 = type metadata accessor for Com_Apple_Siri_Product_Proto_PromptContext();
  v132 = *(v6 - 8);
  v133 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v129 = &v123 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = type metadata accessor for PommesContext.Source();
  v125 = *(v127 - 8);
  MEMORY[0x1EEE9AC00](v127);
  v126 = (&v123 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v131 = &v123 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v137 = &v123 - v12;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSg06promptH0_s5Error_pSg5errortMd, &_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSg06promptH0_s5Error_pSg5errortMR);
  MEMORY[0x1EEE9AC00](v134);
  v128 = &v123 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v123 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v136 = &v123 - v18;
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  v20 = __swift_project_value_buffer(v19, static Logger.conversationBridge);
  v21 = a1;
  v135 = v20;
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v138 = v25;
    *v24 = 136315138;
    v26 = [v21 resultCandidateId];
    if (v26)
    {
      v27 = v26;
      v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v30 = v29;
    }

    else
    {
      v28 = 0;
      v30 = 0;
    }

    v139[0] = v28;
    v139[1] = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    v31 = String.init<A>(describing:)();
    v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v32, &v138);

    *(v24 + 4) = v33;
    _os_log_impl(&dword_1DC659000, v22, v23, "Received ServerContextUpdateCandidate for RC ID: %s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
    MEMORY[0x1E12A2F50](v25, -1, -1);
    MEMORY[0x1E12A2F50](v24, -1, -1);
  }

  v34 = [v21 nlContextUpdatePayload];
  if (v34)
  {
    v35 = v34;
    v36 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v37;
  }

  else
  {
    v36 = 0;
    v38 = 0xF000000000000000;
  }

  v39 = v134;
  v40 = *(v134 + 48);
  v41 = v136;
  v42 = ContextUpdater.applyPromptContextProtoData(_:)(v136, v36, v38);
  outlined consume of Data?(v36, v38);
  *(v41 + v40) = v42;
  outlined init with copy of ReferenceResolutionClientProtocol?(v41, v16, &_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSg06promptH0_s5Error_pSg5errortMd, &_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSg06promptH0_s5Error_pSg5errortMR);
  v43 = *&v16[*(v39 + 48)];
  if (v43)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v16, &_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMd, &_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMR);
    v44 = v43;
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v139[0] = v48;
      *v47 = 136315138;
      swift_getErrorValue();
      v49 = Error.localizedDescription.getter();
      v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v50, v139);

      *(v47 + 4) = v51;
      _os_log_impl(&dword_1DC659000, v45, v46, "Error while applying PromptContextData: %s", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v48);
      MEMORY[0x1E12A2F50](v48, -1, -1);
      MEMORY[0x1E12A2F50](v47, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v16, &_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMd, &_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMR);
  }

  v52 = [v21 mappedDomainEntities];
  if (!v52)
  {
    goto LABEL_74;
  }

  v53 = v52;
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SAMappedDomainEntity, 0x1E69C7908);
  v54 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v55 = ContextUpdater.applyMappedDomainEntities(_:)(v54);

  if (v55)
  {
    v56 = v55;
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v139[0] = v60;
      *v59 = 136315138;
      swift_getErrorValue();
      v61 = Error.localizedDescription.getter();
      v63 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v61, v62, v139);

      *(v59 + 4) = v63;
      _os_log_impl(&dword_1DC659000, v57, v58, "Applied MappedDomainEntities with error: %s", v59, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v60);
      MEMORY[0x1E12A2F50](v60, -1, -1);
      MEMORY[0x1E12A2F50](v59, -1, -1);
    }

    else
    {
    }
  }

  v64 = v21;
  v65 = Logger.logObject.getter();
  v66 = static os_log_type_t.debug.getter();

  if (!os_log_type_enabled(v65, v66))
  {

    goto LABEL_50;
  }

  v67 = 7104878;
  v68 = swift_slowAlloc();
  v69 = swift_slowAlloc();
  v139[0] = v69;
  *v68 = 136315394;
  v70 = [v64 pegasusConversationContext];
  v124 = v4;
  if (!v70)
  {
    v77 = 0xE300000000000000;
    v78 = 7104878;
LABEL_36:
    v83 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v78, v77, v139);

    *(v68 + 4) = v83;
    *(v68 + 12) = 2080;
    v84 = [v64 nlContextUpdatePayload];
    if (!v84)
    {
      v91 = 0xE300000000000000;
LABEL_49:
      v95 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v67, v91, v139);

      *(v68 + 14) = v95;
      _os_log_impl(&dword_1DC659000, v65, v66, "Considering context from server update\n    Pegasus bytes: %s\n    Prompt context bytes: %s", v68, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v69, -1, -1);
      MEMORY[0x1E12A2F50](v68, -1, -1);

LABEL_50:
      v96 = type metadata accessor for PommesContext();
      v97 = *(v96 - 8);
      v98 = *(v97 + 56);
      v98(v137, 1, 1, v96);
      v99 = [v64 pegasusConversationContext];
      v100 = v131;
      if (!v99)
      {
        goto LABEL_62;
      }

      v101 = v99;
      v102 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v104 = v103;

      v105 = v104 >> 62;
      if ((v104 >> 62) > 1)
      {
        if (v105 != 2 || *(v102 + 16) == *(v102 + 24))
        {
          goto LABEL_61;
        }
      }

      else if (v105)
      {
        if (v102 == v102 >> 32)
        {
LABEL_61:
          outlined consume of Data._Representation(v102, v104);
LABEL_62:
          v110 = v128;
          outlined init with copy of ReferenceResolutionClientProtocol?(v136, v128, &_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSg06promptH0_s5Error_pSg5errortMd, &_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSg06promptH0_s5Error_pSg5errortMR);

          v112 = v132;
          v111 = v133;
          if ((*(v132 + 48))(v110, 1, v133) == 1)
          {
            outlined destroy of ReferenceResolutionClientProtocol?(v110, &_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMd, &_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMR);
            v113 = Logger.logObject.getter();
            v114 = static os_log_type_t.debug.getter();
            if (os_log_type_enabled(v113, v114))
            {
              v115 = swift_slowAlloc();
              *v115 = 0;
              _os_log_impl(&dword_1DC659000, v113, v114, "No Pegasus bytes or prompt context. Not creating any POMMES context.", v115, 2u);
              MEMORY[0x1E12A2F50](v115, -1, -1);
            }
          }

          else
          {
            (*(v112 + 32))(v129, v110, v111);
            v116 = Logger.logObject.getter();
            v117 = static os_log_type_t.debug.getter();
            if (os_log_type_enabled(v116, v117))
            {
              v118 = swift_slowAlloc();
              *v118 = 0;
              _os_log_impl(&dword_1DC659000, v116, v117, "Creating POMMES context with prompt context!", v118, 2u);
              MEMORY[0x1E12A2F50](v118, -1, -1);
            }

            (*(v125 + 104))(v126, *MEMORY[0x1E69CE668], v127);
            PommesContext.init(source:domain:listenAfterSpeaking:)();
            v98(v100, 0, 1, v96);
            v119 = v137;
            outlined assign with take of (Input, AnyFlow, SiriEnvironment)(v100, v137, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
            if (!(*(v97 + 48))(v119, 1, v96))
            {
              PommesContext.update(with:)();
            }

            (*(v132 + 8))(v129, v133);
          }

LABEL_71:
          v120 = v130;
          v121 = v137;
          outlined init with copy of ReferenceResolutionClientProtocol?(v137, v100, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
          ContextUpdater.applyPommesContext(_:)(v100);
          outlined destroy of ReferenceResolutionClientProtocol?(v100, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
          swift_beginAccess();
          v122 = *(v4 + 256);
          *(v4 + 256) = 0;

          ContextUpdater.flushSessionStateUpdates(metadata:)(v120);
          outlined destroy of ReferenceResolutionClientProtocol?(v136, &_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSg06promptH0_s5Error_pSg5errortMd, &_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSg06promptH0_s5Error_pSg5errortMR);
          outlined destroy of ReferenceResolutionClientProtocol?(v121, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
          return;
        }
      }

      else if ((v104 & 0xFF000000000000) == 0)
      {
        goto LABEL_61;
      }

      v106 = Logger.logObject.getter();
      v107 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v106, v107))
      {
        v108 = swift_slowAlloc();
        *v108 = 0;
        _os_log_impl(&dword_1DC659000, v106, v107, "Creating POMMES context with Pegasus conversation context bytes!", v108, 2u);
        MEMORY[0x1E12A2F50](v108, -1, -1);
      }

      v109 = v126;
      *v126 = v102;
      v109[1] = v104;
      (*(v125 + 104))(v109, *MEMORY[0x1E69CE660], v127);
      PommesContext.init(source:domain:listenAfterSpeaking:)();
      v98(v100, 0, 1, v96);
      outlined assign with take of (Input, AnyFlow, SiriEnvironment)(v100, v137, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
      goto LABEL_71;
    }

    v85 = v84;
    v86 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v88 = v87;

    v89 = v88 >> 62;
    if ((v88 >> 62) > 1)
    {
      if (v89 != 2)
      {
        v90 = 0;
        goto LABEL_48;
      }

      v93 = *(v86 + 16);
      v92 = *(v86 + 24);
      v81 = __OFSUB__(v92, v93);
      v90 = v92 - v93;
      if (!v81)
      {
        goto LABEL_48;
      }

      __break(1u);
    }

    else if (!v89)
    {
      v90 = BYTE6(v88);
LABEL_48:
      v138 = v90;
      v67 = dispatch thunk of CustomStringConvertible.description.getter();
      v91 = v94;
      outlined consume of Data._Representation(v86, v88);
      v4 = v124;
      goto LABEL_49;
    }

    LODWORD(v90) = HIDWORD(v86) - v86;
    if (!__OFSUB__(HIDWORD(v86), v86))
    {
      v90 = v90;
      goto LABEL_48;
    }

    goto LABEL_73;
  }

  v71 = v70;
  v72 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v74 = v73;

  v75 = v74 >> 62;
  if ((v74 >> 62) > 1)
  {
    if (v75 != 2)
    {
      v76 = 0;
      goto LABEL_35;
    }

    v80 = *(v72 + 16);
    v79 = *(v72 + 24);
    v81 = __OFSUB__(v79, v80);
    v76 = v79 - v80;
    if (!v81)
    {
      goto LABEL_35;
    }

    __break(1u);
  }

  else if (!v75)
  {
    v76 = BYTE6(v74);
LABEL_35:
    v138 = v76;
    v78 = dispatch thunk of CustomStringConvertible.description.getter();
    v77 = v82;
    outlined consume of Data._Representation(v72, v74);
    v4 = v124;
    goto LABEL_36;
  }

  LODWORD(v76) = HIDWORD(v72) - v72;
  if (!__OFSUB__(HIDWORD(v72), v72))
  {
    v76 = v76;
    goto LABEL_35;
  }

  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
}