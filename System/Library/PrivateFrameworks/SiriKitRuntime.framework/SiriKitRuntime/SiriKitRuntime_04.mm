uint64_t sub_1DC6B60F4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

void *initializeWithCopy for UserInputResult(void *a1, const void *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for Input();
    (*(*(v6 - 8) + 16))(a1, a2, v6);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  else
  {
    v8 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v8);
  }
}

uint64_t destroy for UserInputResult(uint64_t a1, uint64_t a2)
{
  result = swift_getEnumCaseMultiPayload();
  if (result == 1)
  {
    v4 = type metadata accessor for Input();
    v5 = *(*(v4 - 8) + 8);

    return v5(a1, v4);
  }

  return result;
}

void thunk for @escaping @callee_guaranteed @Sendable (@guaranteed ConversationCanHandleResult) -> ()(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in RemoteConversationClient.flexibleExecutionSupportOptions()(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a2, a3) - 8);
  v7 = v4 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a4(a1, v7);
}

id ConversationCanHandleResult.init(coder:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v51 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v56 = &v51 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v55 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v51 - v13;
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v51 - v17;
  v19 = MEMORY[0x1E12A1410](0xD000000000000011, 0x80000001DCA7A870, v16);
  v20 = [a1 containsValueForKey_];

  if (!v20)
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    __swift_project_value_buffer(v32, static Logger.executor);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v33, v34))
    {
      goto LABEL_14;
    }

    v35 = swift_slowAlloc();
    *v35 = 0;
    v36 = "Could not decode ConversationCanHandleResultXPC: No value for key directlySupported";
    goto LABEL_13;
  }

  v21 = MEMORY[0x1E12A1410](0xD000000000000011, 0x80000001DCA7A870);
  v54 = [a1 decodeBoolForKey_];

  v22 = MEMORY[0x1E12A1410](0x6564756C637865, 0xE700000000000000);
  v23 = [a1 containsValueForKey_];

  if ((v23 & 1) == 0)
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    __swift_project_value_buffer(v37, static Logger.executor);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v33, v34))
    {
      goto LABEL_14;
    }

    v35 = swift_slowAlloc();
    *v35 = 0;
    v36 = "Could not decode ConversationCanHandleResultXPC: No value for key exclude";
LABEL_13:
    _os_log_impl(&dword_1DC659000, v33, v34, v36, v35, 2u);
    MEMORY[0x1E12A2F50](v35, -1, -1);
LABEL_14:

    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return 0;
  }

  v24 = MEMORY[0x1E12A1410](0x6564756C637865, 0xE700000000000000);
  v53 = [a1 decodeBoolForKey_];

  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSData, 0x1E695DEF0);
  v25 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v25)
  {
    v26 = v25;
    v51 = v18;
    v52 = v4;
    type metadata accessor for PropertyListDecoder();
    swift_allocObject();
    PropertyListDecoder.init()();
    v27 = type metadata accessor for Input();
    v28 = v26;
    v29 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v30;

    lazy protocol witness table accessor for type Input and conformance Input(&lazy protocol witness table cache variable for type Input and conformance Input, MEMORY[0x1E69D0110]);
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

    outlined consume of Data._Representation(v29, v31);

    (*(*(v27 - 8) + 56))(v14, 0, 1, v27);
    v18 = v51;
    outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v14, v51, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
    v4 = v52;
  }

  else
  {
    v39 = type metadata accessor for Input();
    (*(*(v39 - 8) + 56))(v18, 1, 1, v39);
  }

  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSUUID, 0x1E696AFB0);
  v40 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v40)
  {
    v41 = v40;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v42 = 0;
  }

  else
  {
    v42 = 1;
  }

  v43 = type metadata accessor for UUID();
  (*(*(v43 - 8) + 56))(v7, v42, 1, v43);
  v44 = v7;
  v45 = v56;
  outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v44, v56, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v46 = v55;
  outlined init with copy of ReferenceResolutionClientProtocol?(v18, v55, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  outlined init with copy of ReferenceResolutionClientProtocol?(v45, v4, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  CanHandleResult = type metadata accessor for ConversationCanHandleResult(0);
  v48 = objc_allocWithZone(CanHandleResult);
  v49 = v53;
  v48[OBJC_IVAR____TtC14SiriKitRuntime27ConversationCanHandleResult_directlySupported] = v54;
  v48[OBJC_IVAR____TtC14SiriKitRuntime27ConversationCanHandleResult_exclude] = v49;
  outlined init with copy of ReferenceResolutionClientProtocol?(v46, &v48[OBJC_IVAR____TtC14SiriKitRuntime27ConversationCanHandleResult_reformedInput], &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  outlined init with copy of ReferenceResolutionClientProtocol?(v4, &v48[OBJC_IVAR____TtC14SiriKitRuntime27ConversationCanHandleResult_flowIdentifier], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v57.receiver = v48;
  v57.super_class = CanHandleResult;
  v50 = objc_msgSendSuper2(&v57, sel_init);

  outlined destroy of ReferenceResolutionClientProtocol?(v4, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v46, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v45, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v18, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v50;
}

uint64_t type metadata accessor for ConversationCanHandleResult(uint64_t a1)
{
  result = type metadata singleton initialization cache for ConversationCanHandleResult;
  if (!type metadata singleton initialization cache for ConversationCanHandleResult)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t closure #1 in closure #1 in closure #1 in RemoteConversationClient.canHandle(input:rcId:)(void *a1)
{
  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14SiriKitRuntime27ConversationCanHandleResultCs5Error_pGMd, &_sScCy14SiriKitRuntime27ConversationCanHandleResultCs5Error_pGMR);
  return CheckedContinuation.resume(returning:)();
}

uint64_t closure #1 in closure #1 in RemoteConversationClient.canHandle(input:rcId:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v23 = a6;
  v24 = a1;
  v26 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14SiriKitRuntime27ConversationCanHandleResultCs5Error_pGMd, &_sScCy14SiriKitRuntime27ConversationCanHandleResultCs5Error_pGMR);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v21 - v10;
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  type metadata accessor for Input();
  lazy protocol witness table accessor for type RemoteConversationClient and conformance RemoteConversationClient(&lazy protocol witness table cache variable for type Input and conformance Input, 255, MEMORY[0x1E69D0100], MEMORY[0x1E69D0108]);
  v12 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v14 = v13;

  if (!v6)
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    v16 = MEMORY[0x1E12A1410](a5, v23);
    (*(v9 + 16))(v11, v24, v8);
    v17 = (*(v9 + 80) + 16) & ~*(v9 + 80);
    v18 = swift_allocObject();
    (*(v9 + 32))(v18 + v17, v11, v8);
    aBlock[4] = partial apply for closure #1 in closure #1 in closure #1 in RemoteConversationClient.canHandle(input:rcId:);
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed FlowExtensionUserInputResultXPC) -> ();
    aBlock[3] = &block_descriptor_225;
    v19 = _Block_copy(aBlock);

    v20 = isa;
    [v26 canHandleWithInputData:isa rcId:v16 reply:v19];
    _Block_release(v19);

    return outlined consume of Data._Representation(v12, v14);
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd, &_ss18_DictionaryStorageCyS2SGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
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

uint64_t _s11SiriKitFlow5InputVACs23CustomStringConvertibleAAWlTm_0(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v25 = a5;
  v26 = a6;
  v24 = a4;
  v22[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10.n128_f64[0] = MEMORY[0x1EEE9AC00](v8);
  v12 = v22 - v11;
  v23 = v6;
  v13 = -1 << *(v6 + 32);
  v14 = a2 & ~v13;
  v22[0] = v6 + 64;
  if ((*(v6 + 64 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v18 = *(v9 + 16);
    v17 = v9 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    do
    {
      v16(v12, *(v23 + 48) + v19 * v14, v8, v10);
      lazy protocol witness table accessor for type MessageBusActor and conformance MessageBusActor(v24, v25, v26);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v17 - 8))(v12, v8);
      if (v20)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
    }

    while (((*(v22[0] + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  return v14;
}

void closure #1 in closure #2 in AceServiceInvokerImpl.performSubmit(_:bargeInResult:executionSource:)(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5, char a6)
{
  objc_opt_self();
  if (swift_dynamicCastObjCClass() || (objc_opt_self(), swift_dynamicCastObjCClass()) || (objc_opt_self(), swift_dynamicCastObjCClass()) || (objc_opt_self(), swift_dynamicCastObjCClass()) || (objc_opt_self(), swift_dynamicCastObjCClass()))
  {
    if (a2)
    {
      v10 = a2;
      if (one-time initialization token for ace != -1)
      {
        swift_once();
      }

      v11 = type metadata accessor for Logger();
      __swift_project_value_buffer(v11, static Logger.ace);
      v12 = a2;
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v32 = v16;
        *v15 = 136315138;
        v17 = a2;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
        v18 = String.init<A>(describing:)();
        v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v32);

        *(v15 + 4) = v20;
        _os_log_impl(&dword_1DC659000, v13, v14, "AceServiceInvokerImpl: ignoring command submission error due to barge-in override logic: %s", v15, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v16);
        MEMORY[0x1E12A2F50](v16, -1, -1);
        MEMORY[0x1E12A2F50](v15, -1, -1);
      }

      v32 = a5;
      v33 = a6 & 1;
      ManagedContinuation.resume(with:)();

      return;
    }

    if (a1)
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        if (one-time initialization token for ace != -1)
        {
          swift_once();
        }

        v21 = type metadata accessor for Logger();
        __swift_project_value_buffer(v21, static Logger.ace);
        v22 = a1;
        v23 = Logger.logObject.getter();
        v24 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v23, v24))
        {
          v25 = swift_slowAlloc();
          v26 = swift_slowAlloc();
          v32 = v26;
          *v25 = 136315138;
          v27 = v22;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13SABaseCommandCSgMd, &_sSo13SABaseCommandCSgMR);
          v28 = String.init<A>(describing:)();
          v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, &v32);

          *(v25 + 4) = v30;
          _os_log_impl(&dword_1DC659000, v23, v24, "AceServiceInvokerImpl: ignoring SACommandFailed due to barge-in override logic: %s", v25, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v26);
          MEMORY[0x1E12A2F50](v26, -1, -1);
          MEMORY[0x1E12A2F50](v25, -1, -1);
        }

        v32 = a5;
        v33 = a6 & 1;
        ManagedContinuation.resume(with:)();
        return;
      }
    }

LABEL_23:
    ManagedContinuation.resume(returning:)();
    return;
  }

  if (!a2)
  {
    goto LABEL_23;
  }

  v31 = a2;
  ManagedContinuation.resume(throwing:)();
}

uint64_t AceServiceInvokerImpl.performSubmit(_:bargeInResult:executionSource:)()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = AceServiceInvokerImpl.performSubmit(_:bargeInResult:executionSource:);
  }

  else
  {

    v2 = AceServiceInvokerImpl.performSubmit(_:bargeInResult:executionSource:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v1 = *(v0 + 32);

  v2 = *(v0 + 8);

  return v2(v1);
}

{
  v1 = *(*(v0 + 88) + 152);
  os_unfair_lock_lock((v1 + 20));
  v2 = *(v1 + 16);
  os_unfair_lock_unlock((v1 + 20));
  if (v2 == 1)
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static Logger.executor);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1DC659000, v4, v5, "Attempting to submit a command on an invalidated AceServiceInvoker. Skipping straight to barge-in response.", v6, 2u);
      MEMORY[0x1E12A2F50](v6, -1, -1);
    }

    v7 = *(v0 + 25);

    v8 = *(v0 + 72);
    if (v7)
    {
      *(v0 + 56) = v8;
      v9 = v8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      swift_willThrowTypedImpl();

      v10 = *(v0 + 8);

      return v10();
    }

    else
    {
      v26 = v8;

      v27 = *(v0 + 8);

      return v27(v8);
    }
  }

  else
  {
    v13 = *(v0 + 136);
    v12 = *(v0 + 144);
    v14 = *(v0 + 120);
    v15 = *(v0 + 128);
    v16 = *(v0 + 88);
    v18 = *(v0 + 64);
    v17 = *(v0 + 72);
    v28 = *(v0 + 25);
    (*(v15 + 16))(v12, *(v0 + 80), v14);
    v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v20 = (v13 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
    v21 = swift_allocObject();
    *(v0 + 152) = v21;
    *(v21 + 16) = v18;
    *(v21 + 24) = v16;
    (*(v15 + 32))(v21 + v19, v12, v14);
    v22 = v21 + v20;
    *v22 = v17;
    *(v22 + 8) = v28 & 1;
    outlined copy of Result<SABaseCommand?, Error>(v17);
    v23 = v18;

    v24 = swift_task_alloc();
    *(v0 + 160) = v24;
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13SABaseCommandCSgMd, &_sSo13SABaseCommandCSgMR);
    *v24 = v0;
    v24[1] = AceServiceInvokerImpl.performSubmit(_:bargeInResult:executionSource:);

    return MEMORY[0x1EEE412A8](v0 + 32, partial apply for closure #2 in AceServiceInvokerImpl.performSubmit(_:bargeInResult:executionSource:), v21, v25);
  }
}

{
  v25 = v0;
  v1 = *(v0 + 168);

  *(v0 + 40) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (!swift_dynamicCast())
  {

    goto LABEL_9;
  }

  if (one-time initialization token for ace != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 72);
  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.ace);
  outlined copy of Result<SABaseCommand?, Error>(v3);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  outlined consume of Result<SABaseCommand?, Error>(v3);
  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 72);
    v8 = *(v0 + 25);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v24 = v10;
    *v9 = 136315138;
    *(v0 + 16) = v7;
    *(v0 + 24) = v8 & 1;
    outlined copy of Result<SABaseCommand?, Error>(v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOySo13SABaseCommandCSgs5Error_pGMd, &_ss6ResultOySo13SABaseCommandCSgs5Error_pGMR);
    v11 = String.init<A>(describing:)();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v24);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_1DC659000, v5, v6, "AceServiceInvokerImpl: submission response was simulated because user barged in. Simulated result: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x1E12A2F50](v10, -1, -1);
    MEMORY[0x1E12A2F50](v9, -1, -1);
  }

  v15 = *(v0 + 104);
  v14 = *(v0 + 112);
  v16 = *(v0 + 96);
  v17 = *(v0 + 72);
  if (*(v0 + 25))
  {
    *(v0 + 48) = v17;
    v18 = v17;
    swift_willThrowTypedImpl();
    (*(v15 + 8))(v14, v16);

LABEL_9:

    v19 = *(v0 + 8);

    return v19();
  }

  (*(v15 + 8))(*(v0 + 112), *(v0 + 96));

  v21 = *(v0 + 72);
  v22 = v17;

  v23 = *(v0 + 8);

  return v23(v21);
}

uint64_t closure #1 in closure #1 in closure #1 in AceServiceInvokerImpl.createSerialSubmissionTask(_:options:executionSource:)(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {
    v5 = closure #1 in closure #1 in closure #1 in AceServiceInvokerImpl.createSerialSubmissionTask(_:options:executionSource:);
  }

  else
  {
    *(v4 + 88) = a1;
    v5 = closure #1 in closure #1 in closure #1 in AceServiceInvokerImpl.createSerialSubmissionTask(_:options:executionSource:);
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t closure #1 in closure #1 in closure #1 in AceServiceInvokerImpl.createSerialSubmissionTask(_:options:executionSource:)()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 56);
  v3 = *(v0 + 16);
  outlined consume of Result<SABaseCommand?, Error>(*(v0 + 64));

  *v3 = v1;
  v4 = *(v0 + 8);

  return v4();
}

{
  v1 = AceServiceInvokerImpl.preparedCommand(_:options:)(*(v0 + 32), *(v0 + 40));
  *(v0 + 56) = v1;
  objc_opt_self();
  if (swift_dynamicCastObjCClass() || (objc_opt_self(), swift_dynamicCastObjCClass()) || (objc_opt_self(), swift_dynamicCastObjCClass()) || (objc_opt_self(), swift_dynamicCastObjCClass()) || (objc_opt_self(), swift_dynamicCastObjCClass()))
  {
    v2 = [objc_allocWithZone(MEMORY[0x1E69C7738]) init];
    v3 = 0;
  }

  else
  {
    type metadata accessor for BargeInError();
    lazy protocol witness table accessor for type PeerInfoProvider and conformance PeerInfoProvider(&lazy protocol witness table cache variable for type BargeInError and conformance BargeInError, 255, MEMORY[0x1E69CFDF8], MEMORY[0x1E69CFE00]);
    v2 = swift_allocError();
    BargeInError.init(rawError:)();
    v3 = 1;
  }

  *(v0 + 96) = v3;
  *(v0 + 64) = v2;
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  *v4 = v0;
  v4[1] = closure #1 in closure #1 in closure #1 in AceServiceInvokerImpl.createSerialSubmissionTask(_:options:executionSource:);
  v5 = *(v0 + 48);

  return AceServiceInvokerImpl.performSubmit(_:bargeInResult:executionSource:)(v1, v2, v3, v5);
}

{
  v1 = *(v0 + 56);
  outlined consume of Result<SABaseCommand?, Error>(*(v0 + 64));

  v2 = *(v0 + 8);

  return v2();
}

uint64_t closure #1 in closure #1 in AceServiceInvokerImpl.createSerialSubmissionTask(_:options:executionSource:)()
{
  *(*v1 + 216) = v0;

  if (v0)
  {
    v2 = closure #1 in closure #1 in AceServiceInvokerImpl.createSerialSubmissionTask(_:options:executionSource:);
  }

  else
  {
    v2 = closure #1 in closure #1 in AceServiceInvokerImpl.createSerialSubmissionTask(_:options:executionSource:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

void SiriKitCurareDonator.donateSiriExecutionTaskStep(activityType:eventContext:eventTime:requestContent:taskContent:taskId:taskName:app:attribute:parameterName:responseId:statusDescription:statusReason:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, unint64_t a21)
{
  v96 = a6;
  v97 = a8;
  v94 = a7;
  v95 = a5;
  v92 = a4;
  v101 = a2;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
  v93 = *(v24 - 8);
  v25 = *(v93 + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v100 = &v69 - v26;
  v27 = type metadata accessor for Date();
  v91 = *(v27 - 8);
  v28 = *(v91 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v99 = &v69 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for ActivityType();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v34 = &v69 - v33;
  v35 = *(v21 + 16);
  if (v35)
  {
    v74 = a3;
    v77 = &v69 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
    v75 = a21;
    v87 = a19;
    v88 = a20;
    v98 = a18;
    v86 = a17;
    v85 = a16;
    v83 = a15;
    v81 = a14;
    v80 = a13;
    v78 = a12;
    v82 = a11;
    v79 = a10;
    v89 = a9;
    v36 = v27;
    v73 = v27;
    v37 = v34;
    v84 = v35;
    v90 = v37;
    static TaskPriority.background.getter();
    v38 = type metadata accessor for TaskPriority();
    (*(*(v38 - 8) + 56))(v37, 0, 1, v38);
    v39 = v30;
    v40 = *(v30 + 16);
    v76 = v29;
    v40(&v69 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v29);
    v41 = v91;
    (*(v91 + 16))(v99, v74, v36);
    outlined init with copy of SiriKitReliabilityCodes?(v75, v100);
    v42 = (*(v30 + 80) + 40) & ~*(v30 + 80);
    v43 = (v31 + *(v41 + 80) + v42) & ~*(v41 + 80);
    v44 = (v28 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
    v45 = (v44 + 15) & 0xFFFFFFFFFFFFFFF8;
    v46 = (v45 + 23) & 0xFFFFFFFFFFFFFFF8;
    v47 = (v46 + 23) & 0xFFFFFFFFFFFFFFF8;
    v72 = (v47 + 23) & 0xFFFFFFFFFFFFFFF8;
    v48 = (v72 + 23) & 0xFFFFFFFFFFFFFFF8;
    v70 = (*(v93 + 80) + v48 + 16) & ~*(v93 + 80);
    v71 = (v25 + v70 + 7) & 0xFFFFFFFFFFFFFFF8;
    v75 = (v71 + 23) & 0xFFFFFFFFFFFFFFF8;
    v93 = (v75 + 23) & 0xFFFFFFFFFFFFFFF8;
    v74 = (v93 + 23) & 0xFFFFFFFFFFFFFFF8;
    v49 = swift_allocObject();
    *(v49 + 2) = 0;
    *(v49 + 3) = 0;
    *(v49 + 4) = v101;
    (*(v39 + 32))(&v49[v42], v77, v76);
    (*(v41 + 32))(&v49[v43], v99, v73);
    *&v49[v44] = v78;
    v50 = &v49[v45];
    v52 = v81;
    v51 = v82;
    *v50 = v80;
    v50[1] = v52;
    v53 = &v49[v46];
    *v53 = v79;
    v53[1] = v51;
    v54 = &v49[v47];
    v55 = v85;
    *v54 = v83;
    v54[1] = v55;
    v56 = &v49[v72];
    v57 = v98;
    *v56 = v86;
    v56[1] = v57;
    v58 = &v49[v48];
    v59 = v88;
    *v58 = v87;
    v58[1] = v59;
    outlined init with take of SiriKitReliabilityCodes?(v100, &v49[v70]);
    v60 = &v49[v71];
    v61 = v95;
    v62 = v94;
    *v60 = v96;
    v60[1] = v62;
    v63 = &v49[v75];
    *v63 = v92;
    v63[1] = v61;
    v64 = &v49[v93];
    v65 = v89;
    *v64 = v97;
    v64[1] = v65;
    v66 = v84;
    *&v49[v74] = v84;

    v67 = v66;

    v68 = v90;
    _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v90, &async function pointer to partial apply for closure #1 in SiriKitCurareDonator.donateSiriExecutionTaskStep(activityType:eventContext:eventTime:requestContent:taskContent:taskId:taskName:app:attribute:parameterName:responseId:statusDescription:statusReason:), v49);

    outlined destroy of ReferenceResolutionClientProtocol?(v68, &_sScPSgMd, &_sScPSgMR);
  }
}

uint64_t sub_1DC6B846C()
{
  v14 = type metadata accessor for ActivityType();
  v1 = *(v14 - 8);
  v18 = *(v1 + 80);
  v2 = (v18 + 40) & ~v18;
  v3 = *(v1 + 64);
  v13 = type metadata accessor for Date();
  v4 = *(v13 - 8);
  v17 = *(v4 + 80);
  v5 = (v2 + v3 + v17) & ~v17;
  v12 = (((((((((((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR) - 8);
  v16 = *(v6 + 80);
  v7 = (v16 + v12 + 16) & ~v16;
  v15 = *(v6 + 64);
  swift_unknownObjectRelease();

  (*(v1 + 8))(v0 + v2, v14);
  (*(v4 + 8))(v0 + v5, v13);

  v8 = type metadata accessor for SiriKitReliabilityCodes();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v0 + v7, 1, v8))
  {
    (*(v9 + 8))(v0 + v7, v8);
  }

  v10 = (((((((v15 + v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;

  return MEMORY[0x1EEE6BDD0](v0, v10 + 8, v18 | v17 | v16 | 7);
}

uint64_t SiriKitFlowActivity.__deallocating_deinit()
{
  SiriKitFlowActivity.deinit();

  return swift_deallocClassInstance();
}

uint64_t SiriKitFlowActivity.deinit()
{
  v0 = DefaultFlowActivity.deinit();

  return v0;
}

uint64_t TaskData.CodingKeys.stringValue.getter(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x64496B736174;
    v6 = 0x657079546B736174;
    if (a1 != 8)
    {
      v6 = 0x6E6F6973726576;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x6552737574617473;
    if (a1 != 5)
    {
      v7 = 0x6570795470657473;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x6974697669746361;
    v2 = 0x655364726143656DLL;
    v3 = 0x64656D726F666572;
    if (a1 != 3)
    {
      v3 = 0x496B736154666572;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x7475626972747461;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

unint64_t lazy protocol witness table accessor for type SiriKitRequestEvent and conformance SiriKitRequestEvent()
{
  result = lazy protocol witness table cache variable for type SiriKitRequestEvent and conformance SiriKitRequestEvent;
  if (!lazy protocol witness table cache variable for type SiriKitRequestEvent and conformance SiriKitRequestEvent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriKitRequestEvent and conformance SiriKitRequestEvent);
  }

  return result;
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance SiriKitRequestEvent.CodingKeys()
{
  v1 = *v0;
  v2 = 0x6449707061;
  v3 = 0xD000000000000014;
  v4 = 0x646F43726F727265;
  if (v1 != 4)
  {
    v4 = 0x614E746E65746E69;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6C70736944707061;
  if (v1 != 1)
  {
    v5 = 0x6973726556707061;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t destroy for MetricsEventInformation(void *a1)
{
}

uint64_t destroy for SiriKitRequestEvent(void *a1)
{
}

uint64_t initializeWithCopy for SiriKitRequestEvent(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  v4 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v4;
  v5 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v5;
  v6 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v6;
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);

  return a1;
}

uint64_t specialized TaskLoggingService.createRequestContentString(siriKitRequestEvent:interactionId:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = type metadata accessor for String.Encoding();
  MEMORY[0x1EEE9AC00](v6 - 8);
  if (!a3)
  {
    if (one-time initialization token for instrumentation != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Logger.instrumentation);
    outlined init with copy of SiriKitRequestEvent(a1, v34);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    outlined destroy of SiriKitRequestEvent(a1);
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *&v34[0] = v13;
      *v12 = 136315394;
      *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(a1 + 72), *(a1 + 80), v34);
      *(v12 + 12) = 2080;
      *(v12 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(a1 + 48), *(a1 + 56), v34);
      _os_log_impl(&dword_1DC659000, v10, v11, "#TaskLoggingService - interactionId from MetricsState is Nil, not logging this request for intentName: %s, with eventReliabilityCode: %s", v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v13, -1, -1);
      MEMORY[0x1E12A2F50](v12, -1, -1);
    }

    return 0;
  }

  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  v7 = *(a1 + 48);
  v34[2] = *(a1 + 32);
  v34[3] = v7;
  v34[4] = *(a1 + 64);
  v35 = *(a1 + 80);
  v8 = *(a1 + 16);
  v34[0] = *a1;
  v34[1] = v8;
  lazy protocol witness table accessor for type SiriKitRequestEvent and conformance SiriKitRequestEvent();
  v14 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v16 = v15;
  static String.Encoding.utf8.getter();
  v17 = String.init(data:encoding:)();
  if (!v18)
  {
    if (one-time initialization token for instrumentation != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    __swift_project_value_buffer(v28, static Logger.instrumentation);

    outlined init with copy of SiriKitRequestEvent(a1, v34);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    outlined destroy of SiriKitRequestEvent(a1);

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *&v34[0] = v32;
      *v31 = 136315394;
      *(v31 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(a1 + 72), *(a1 + 80), v34);
      *(v31 + 12) = 2080;
      *(v31 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, a3, v34);
      _os_log_impl(&dword_1DC659000, v29, v30, "#TaskLoggingService - JSON encoding error, requestEventString is Nil for intentName: %s, interactionId: %s", v31, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v32, -1, -1);
      MEMORY[0x1E12A2F50](v31, -1, -1);
    }

    outlined consume of Data._Representation(v14, v16);

    return 0;
  }

  v33 = a2;
  v19 = v17;
  v20 = one-time initialization token for instrumentation;
  v21 = v18;

  if (v20 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  __swift_project_value_buffer(v22, static Logger.instrumentation);

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *&v34[0] = v26;
    *v25 = 136315394;
    *(v25 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, v34);
    *(v25 + 12) = 2080;
    *(v25 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, a3, v34);
    _os_log_impl(&dword_1DC659000, v23, v24, "#TaskLoggingService - created requestEvent: %s, for interactionId: %s", v25, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v26, -1, -1);
    MEMORY[0x1E12A2F50](v25, -1, -1);
    outlined consume of Data._Representation(v14, v16);
  }

  else
  {
    outlined consume of Data._Representation(v14, v16);
  }

  return v19;
}

uint64_t SiriKitRequestEvent.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14SiriKitRuntime0dE12RequestEventV10CodingKeys33_DF7F56B143B9EF9A0CA1FEB064988665LLOGMd, &_ss22KeyedEncodingContainerVy14SiriKitRuntime0dE12RequestEventV10CodingKeys33_DF7F56B143B9EF9A0CA1FEB064988665LLOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SiriKitRequestEvent.CodingKeys and conformance SiriKitRequestEvent.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v8[13] = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  v8[12] = 3;
  KeyedEncodingContainer.encode(_:forKey:)();
  v8[11] = 4;
  KeyedEncodingContainer.encode(_:forKey:)();
  v8[10] = 5;
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v4 + 8))(v6, v3);
}

unint64_t lazy protocol witness table accessor for type SiriKitRequestEvent.CodingKeys and conformance SiriKitRequestEvent.CodingKeys()
{
  result = lazy protocol witness table cache variable for type SiriKitRequestEvent.CodingKeys and conformance SiriKitRequestEvent.CodingKeys;
  if (!lazy protocol witness table cache variable for type SiriKitRequestEvent.CodingKeys and conformance SiriKitRequestEvent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriKitRequestEvent.CodingKeys and conformance SiriKitRequestEvent.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriKitRequestEvent.CodingKeys and conformance SiriKitRequestEvent.CodingKeys;
  if (!lazy protocol witness table cache variable for type SiriKitRequestEvent.CodingKeys and conformance SiriKitRequestEvent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriKitRequestEvent.CodingKeys and conformance SiriKitRequestEvent.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriKitRequestEvent.CodingKeys and conformance SiriKitRequestEvent.CodingKeys;
  if (!lazy protocol witness table cache variable for type SiriKitRequestEvent.CodingKeys and conformance SiriKitRequestEvent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriKitRequestEvent.CodingKeys and conformance SiriKitRequestEvent.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriKitRequestEvent.CodingKeys and conformance SiriKitRequestEvent.CodingKeys;
  if (!lazy protocol witness table cache variable for type SiriKitRequestEvent.CodingKeys and conformance SiriKitRequestEvent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriKitRequestEvent.CodingKeys and conformance SiriKitRequestEvent.CodingKeys);
  }

  return result;
}

unint64_t MetricsEventInformation.dictionaryRepresentation.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SStGMd, &_ss23_ContiguousArrayStorageCySS_SStGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DCA69C10;
  v2 = *v0;
  v11 = v0[1];
  v3 = v11;
  v12 = v2;
  *(inited + 48) = v2;
  *(inited + 80) = v3;
  v4 = v0[3];
  v10 = v0[4];
  *(inited + 112) = v10;
  v9 = v0[2];
  *(inited + 144) = v9;
  *(inited + 32) = 0x6B736154776F6C66;
  *(inited + 40) = 0xE800000000000000;
  *(inited + 64) = 0xD000000000000010;
  *(inited + 72) = 0x80000001DCA84CF0;
  *(inited + 96) = 0x6C646E7542707061;
  *(inited + 104) = 0xEB00000000644965;
  strcpy((inited + 128), "interactionId");
  *(inited + 142) = -4864;
  *(inited + 160) = 0xD000000000000011;
  *(inited + 168) = 0x80000001DCA7AB40;
  v8 = v4;
  *(inited + 176) = v4;
  outlined init with copy of String(&v12, v7);
  outlined init with copy of String(&v11, v7);
  outlined init with copy of String(&v10, v7);
  outlined init with copy of String(&v9, v7);
  outlined init with copy of String(&v8, v7);
  v5 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SStMd, &_sSS_SStMR);
  swift_arrayDestroy();
  return v5;
}

void TaskLoggingService.logViaSAMetrics(aceServiceInvoker:eventInformation:timings:originalCommandId:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(v5 + 160);
  if (v6)
  {
    oslog = v6;
    if (([oslog isOptedOutOfMTE]& 1) != 0)
    {
      if (one-time initialization token for instrumentation != -1)
      {
        swift_once();
      }

      v10 = type metadata accessor for Logger();
      __swift_project_value_buffer(v10, static Logger.instrumentation);
      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&dword_1DC659000, v11, v12, "#TaskLoggingService#MTEOptOut skipping sending metrics command because device is opted out of MTE", v13, 2u);
        MEMORY[0x1E12A2F50](v13, -1, -1);
      }
    }

    else
    {
      v17 = [objc_allocWithZone(MEMORY[0x1E69C7910]) init];
      type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSNumber, 0x1E696AD98);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;
      [v17 setTimings_];

      v19 = MEMORY[0x1E12A1410](0xD000000000000022, 0x80000001DCA8B0B0);
      [v17 setCategory_];

      v20 = MEMORY[0x1E12A1410](a4, a5);
      [v17 setOriginalCommandId_];

      v21 = Dictionary._bridgeToObjectiveC()().super.isa;
      [v17 setEventInformation_];

      if (one-time initialization token for instrumentation != -1)
      {
        swift_once();
      }

      v22 = type metadata accessor for Logger();
      __swift_project_value_buffer(v22, static Logger.instrumentation);
      v11 = v17;
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        *v25 = 138412290;
        *(v25 + 4) = v11;
        *v26 = v11;
        v27 = v11;
        _os_log_impl(&dword_1DC659000, v23, v24, "#TaskLoggingService sending: %@", v25, 0xCu);
        outlined destroy of ReferenceResolutionClientProtocol?(v26, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x1E12A2F50](v26, -1, -1);
        MEMORY[0x1E12A2F50](v25, -1, -1);
      }

      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      dispatch thunk of AceServiceInvokerAsync.submitAndForget(_:setRefId:)();
    }
  }

  else
  {
    if (one-time initialization token for instrumentation != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static Logger.instrumentation);
    oslog = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_1DC659000, oslog, v15, "#TaskLoggingService#MTEOptOut skipping sending metrics command because unable to initialize sensitivityManager", v16, 2u);
      MEMORY[0x1E12A2F50](v16, -1, -1);
    }
  }
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So14SASRecognitionCTt0g5Tf4g_nTm(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      v10 = v9;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v7, v8);
      if (v12)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v5[6] + 16 * result);
      *v13 = v7;
      v13[1] = v8;
      *(v5[7] + 8 * result) = v10;
      v14 = v5[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v5[2] = v16;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t type metadata accessor for UserInputResult(uint64_t a1)
{
  result = type metadata singleton initialization cache for UserInputResult;
  if (!type metadata singleton initialization cache for UserInputResult)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined init with copy of SiriKitReliabilityCodes?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *SiriKitEventContext.withOverrides(_:)()
{
  v1 = v0;
  v2 = SiriKitEventOverrides.resultCandidateId.getter();
  if (v3)
  {
    v4 = v2;
    v5 = v3;
    if ((v2 != 12589 || v3 != 0xE200000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  SiriKitEventOverrides.taskId.getter();
  if (!v6)
  {
    SiriKitEventOverrides.interactionId.getter();
    if (!v7)
    {

      return v0;
    }
  }

  v4 = 0;
  v5 = 0;
LABEL_9:

  v8 = SiriKitEventOverrides.interactionId.getter();
  v10 = v9;
  v11 = swift_allocObject();
  v11[2] = v4;
  v11[3] = v5;
  outlined init with copy of ReferenceResolutionClientProtocol((v1 + 4), (v11 + 4));
  v12 = v1[10];
  v13 = v1[11];
  v11[9] = v1[9];
  v11[10] = v12;
  v11[11] = v13;
  if (!v10)
  {
    v8 = v1[12];
    v10 = v1[13];
  }

  v11[12] = v8;
  v11[13] = v10;
  return v11;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v4);
}

uint64_t outlined copy of Data._Representation(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

id AceServiceInvokerImpl.preparedCommand(_:options:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v45 = *(v6 - 8);
  v46 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v43 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for DispatchQoS();
  v42 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS.QoSClass();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  aBlock = 0;
  v51 = 0;
  p_aBlock = &aBlock;
  v14 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v47, a2) ^ 1;
  AceServiceInvokerImpl.addMissingCommandIds(_:setRefId:)(a1, v14 & 1);
  specialized AceServiceInvokerImpl.addMissingComponentIds(_:setRefId:)(a1, v14 & 1);
  if (AceServiceInvokerImpl.shouldWrapCommandForExecution(_:)(a1))
  {
    _s14SiriKitRuntime16AceMetricsLoggerO18logRemoteAnalytics7service7commandy0aB4Flow0D19ServiceInvokerAsync_p_So12SAAceCommand_ptFZTf4een_nAA0dmN4ImplC_So06SABaseQ0CTt1g5(v2, a1);
    v15 = specialized AceServiceInvokerImpl.wrapCommandForExecution(_:assistantId:)(a1, *(v2 + 72), *(v2 + 80));
LABEL_11:
    v33 = v15;
    AceServiceInvokerImpl.addMissingCommandIds(_:setRefId:)(v15, v14 & 1);

    return v33;
  }

  else
  {
    v16 = (a2 + 40);
    v17 = *(a2 + 16) + 1;
    while (--v17)
    {
      v18 = v16 + 2;
      v19 = *v16;
      v16 += 2;
      if (v19)
      {
        v20 = *(v18 - 3);
        v21 = one-time initialization token for ace;

        if (v21 != -1)
        {
          swift_once();
        }

        v22 = type metadata accessor for Logger();
        __swift_project_value_buffer(v22, static Logger.ace);

        v23 = Logger.logObject.getter();
        v24 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v23, v24))
        {
          v25 = swift_slowAlloc();
          v46 = v20;
          v26 = v25;
          v27 = swift_slowAlloc();
          aBlock = v27;
          *v26 = 136315138;
          v28 = MEMORY[0x1E12A16D0](a2, &type metadata for AceServiceInvokerImpl.AceSubmitOptions);
          v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, &aBlock);

          *(v26 + 4) = v30;
          _os_log_impl(&dword_1DC659000, v23, v24, "Submitting to remote assistant: %s", v26, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v27);
          MEMORY[0x1E12A2F50](v27, -1, -1);
          v31 = v26;
          v20 = v46;
          MEMORY[0x1E12A2F50](v31, -1, -1);
        }

        _s14SiriKitRuntime16AceMetricsLoggerO18logRemoteAnalytics7service7commandy0aB4Flow0D19ServiceInvokerAsync_p_So12SAAceCommand_ptFZTf4een_nAA0dmN4ImplC_So06SABaseQ0CTt1g5(v3, a1);
        v32 = specialized AceServiceInvokerImpl.wrapCommandForExecution(_:assistantId:)(a1, v20, v19);

        v15 = v32;
        goto LABEL_11;
      }
    }

    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
    (*(v11 + 104))(v13, *MEMORY[0x1E69E7F98], v10);
    v35 = static OS_dispatch_queue.global(qos:)();
    (*(v11 + 8))(v13, v10);
    v36 = swift_allocObject();
    *(v36 + 16) = a1;
    v54 = partial apply for closure #1 in AceServiceInvokerImpl.preparedCommand(_:options:);
    v55 = v36;
    aBlock = MEMORY[0x1E69E9820];
    v51 = 1107296256;
    v52 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v53 = &block_descriptor_244;
    v37 = _Block_copy(&aBlock);
    v41 = a1;
    static DispatchQoS.unspecified.getter();
    v49 = MEMORY[0x1E69E7CC0];
    lazy protocol witness table accessor for type PeerInfoProvider and conformance PeerInfoProvider(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, 255, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
    v38 = v43;
    v39 = v46;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x1E12A1B20](0, v9, v38, v37);
    _Block_release(v37);

    (*(v45 + 8))(v38, v39);
    (*(v42 + 8))(v9, v44);

    v40 = v41;

    return v40;
  }
}

uint64_t sub_1DC6BA908()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t ActivityType.asSELFTypeAndReason(_:)(uint64_t a1)
{
  v37 = a1;
  v2 = type metadata accessor for SiriKitReliabilityCodes();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v32 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0aB16ReliabilityCodesOSg_ADtMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSg_ADtMR);
  MEMORY[0x1EEE9AC00](v36);
  v6 = &v31 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v34 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v33 = &v31 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v31 - v12;
  v14 = type metadata accessor for ActivityType();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 104))(v18, *MEMORY[0x1E69CFDC0], v14, v16);
  lazy protocol witness table accessor for type ActivityType and conformance ActivityType(&lazy protocol witness table cache variable for type ActivityType and conformance ActivityType, MEMORY[0x1E69CFDE8], MEMORY[0x1E69CFDF0]);
  v35 = v1;
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v40 == v38 && v41 == v39)
  {
    (*(v15 + 8))(v18, v14);

    v19 = v37;
  }

  else
  {
    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();
    (*(v15 + 8))(v18, v14);

    v19 = v37;
    if ((v20 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  (*(v3 + 104))(v13, *MEMORY[0x1E69CFCA8], v2);
  (*(v3 + 56))(v13, 0, 1, v2);
  v21 = *(v36 + 48);
  outlined init with copy of ReferenceResolutionClientProtocol?(v19, v6, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
  outlined init with copy of ReferenceResolutionClientProtocol?(v13, &v6[v21], &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
  v22 = *(v3 + 48);
  if (v22(v6, 1, v2) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v13, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
    if (v22(&v6[v21], 1, v2) == 1)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(v6, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
LABEL_15:
      v26 = 0x2B00000000;
      v24 = 27;
      return v26 | v24;
    }

    goto LABEL_10;
  }

  v23 = v33;
  outlined init with copy of ReferenceResolutionClientProtocol?(v6, v33, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
  if (v22(&v6[v21], 1, v2) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v13, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
    (*(v3 + 8))(v23, v2);
LABEL_10:
    outlined destroy of ReferenceResolutionClientProtocol?(v6, &_s11SiriKitFlow0aB16ReliabilityCodesOSg_ADtMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSg_ADtMR);
    goto LABEL_11;
  }

  v28 = v32;
  (*(v3 + 32))(v32, &v6[v21], v2);
  lazy protocol witness table accessor for type ActivityType and conformance ActivityType(&lazy protocol witness table cache variable for type SiriKitReliabilityCodes and conformance SiriKitReliabilityCodes, MEMORY[0x1E69CFCD0], MEMORY[0x1E69CFCD8]);
  LODWORD(v37) = dispatch thunk of static Equatable.== infix(_:_:)();
  v29 = *(v3 + 8);
  v29(v28, v2);
  outlined destroy of ReferenceResolutionClientProtocol?(v13, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
  v29(v23, v2);
  outlined destroy of ReferenceResolutionClientProtocol?(v6, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
  if (v37)
  {
    goto LABEL_15;
  }

LABEL_11:
  v24 = ActivityType.flowStateType.getter();
  v25 = v34;
  outlined init with copy of ReferenceResolutionClientProtocol?(v19, v34, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
  if ((*(v3 + 48))(v25, 1, v2) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v25, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
    v26 = 0;
  }

  else
  {
    v27 = SiriKitReliabilityCodes.flowStatusReason.getter();
    (*(v3 + 8))(v25, v2);
    v26 = v27 << 32;
  }

  return v26 | v24;
}

uint64_t lazy protocol witness table accessor for type ActivityType and conformance ActivityType(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t SiriKitEventContext.resultCandidateId.getter()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 16);
    v3 = one-time initialization token for instrumentation;

    if (v3 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static Logger.instrumentation);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();

    if (!os_log_type_enabled(v5, v6))
    {
      goto LABEL_7;
    }

    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = v8;
    *v7 = 136315138;
    *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v2, v1, &v18);
    v9 = "SiriKitEventContext: Vending overriden rcId: %s";
LABEL_6:
    _os_log_impl(&dword_1DC659000, v5, v6, v9, v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x1E12A2F50](v8, -1, -1);
    MEMORY[0x1E12A2F50](v7, -1, -1);
LABEL_7:

    return v2;
  }

  type metadata accessor for SiriEnvironment();
  if (static SiriEnvironment.forCurrentTask.getter())
  {
    SiriEnvironment.currentRequest.getter();

    v2 = CurrentRequest.resultCandidateId.getter();
    v11 = v10;

    if (v11)
    {
      if (one-time initialization token for instrumentation != -1)
      {
        swift_once();
      }

      v12 = type metadata accessor for Logger();
      __swift_project_value_buffer(v12, static Logger.instrumentation);

      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.debug.getter();

      if (!os_log_type_enabled(v5, v6))
      {
        goto LABEL_7;
      }

      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v18 = v8;
      *v7 = 136315138;
      *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v2, v11, &v18);
      v9 = "SiriKitEventContext: Vending rcId from SiriEnvironment's current flow invocation request: %s";
      goto LABEL_6;
    }
  }

  if (one-time initialization token for instrumentation != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static Logger.instrumentation);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_1DC659000, v14, v15, "SiriKitEventContext: No rcId found in SiriEnvironment. This event might be getting sent from a detached Task or dispatch queue, which loses SiriEnvironment context, and is a bug in the code which is emitting this event.", v16, 2u);
    MEMORY[0x1E12A2F50](v16, -1, -1);
  }

  return 0;
}

void *TaskLoggingService.constructMetaData(resultCandidateId:executionRequestId:taskId:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v131 = a6;
  v132 = a5;
  v133 = a4;
  v130 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v121 = &v112 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v120 = &v112 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v126 = &v112 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v112 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v112 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v112 - v21;
  v23 = type metadata accessor for UUID();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v119 = &v112 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v118 = &v112 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v123 = &v112 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v127 = &v112 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v112 - v33;
  v35 = [objc_allocWithZone(MEMORY[0x1E69CEB58]) init];
  if (!v35)
  {
    if (one-time initialization token for instrumentation != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    __swift_project_value_buffer(v37, static Logger.instrumentation);
    v38 = v131;

    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v134[0] = v42;
      *v41 = 136315650;
      *(v41 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, v134);
      *(v41 + 12) = 2080;
      *(v41 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v132, v38, v134);
      *(v41 + 22) = 2080;
      *(v41 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v130, v133, v134);
      _os_log_impl(&dword_1DC659000, v39, v40, "#TaskLoggingService SELF Log - unable to instantiate SELF schema, not logging Task step for resultCandidateId: %s, taskId: %s, executionRequestId: %s", v41, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v42, -1, -1);
      MEMORY[0x1E12A2F50](v41, -1, -1);
    }

    return 0;
  }

  v36 = v35;
  v122 = a1;
  v125 = a2;
  UUID.init(uuidString:)();
  v128 = *(v24 + 48);
  v129 = v24 + 48;
  if (v128(v22, 1, v23) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v22, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  }

  else
  {
    (*(v24 + 32))(v34, v22, v23);
    v43 = v19;
    v44 = objc_allocWithZone(MEMORY[0x1E69CF638]);
    isa = UUID._bridgeToObjectiveC()().super.isa;
    v46 = [v44 initWithNSUUID_];

    [v36 setTrpId_];
    v19 = v43;
    (*(v24 + 8))(v34, v23);
  }

  v47 = MEMORY[0x1E12A1410](v122, v125);
  [v36 setResultCandidateId_];

  v48 = v131;
  UUID.init(uuidString:)();
  outlined init with copy of ReferenceResolutionClientProtocol?(v19, v16, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  if (v128(v16, 1, v23) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v16, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    if (one-time initialization token for instrumentation != -1)
    {
      swift_once();
    }

    v49 = type metadata accessor for Logger();
    __swift_project_value_buffer(v49, static Logger.instrumentation);

    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v54 = v48;
      v55 = v53;
      v134[0] = v53;
      *v52 = 136315138;
      *(v52 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v132, v54, v134);
      _os_log_impl(&dword_1DC659000, v50, v51, "#TaskLoggingService SELF Log - current taskId: %s is not a valid UUID String, cannot emit SELF message", v52, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v55);
      MEMORY[0x1E12A2F50](v55, -1, -1);
      MEMORY[0x1E12A2F50](v52, -1, -1);
    }

    outlined destroy of ReferenceResolutionClientProtocol?(v19, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    return 0;
  }

  v116 = *(v24 + 32);
  v117 = v24 + 32;
  v116(v127, v16, v23);
  v56 = objc_allocWithZone(MEMORY[0x1E69CF638]);
  v57 = UUID._bridgeToObjectiveC()().super.isa;
  v58 = [v56 initWithNSUUID_];

  [v36 setTaskId_];
  v59 = [objc_allocWithZone(MEMORY[0x1E69CF650]) init];
  if (v59)
  {
    v60 = v59;
    [v59 setMajor_];
    [v60 setMinor_];
    [v36 setVersion_];
  }

  v61 = v126;
  TaskLoggingService.createFlowId(executionRequestId:)(v126);
  v62 = v61;
  v63 = v120;
  outlined init with copy of ReferenceResolutionClientProtocol?(v62, v120, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  if (v128(v63, 1, v23) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v63, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    if (one-time initialization token for instrumentation != -1)
    {
      swift_once();
    }

    v64 = type metadata accessor for Logger();
    __swift_project_value_buffer(v64, static Logger.instrumentation);

    v65 = v125;

    v66 = Logger.logObject.getter();
    v67 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v66, v67))
    {
      v68 = v48;
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v120 = v24;
      v71 = v70;
      v134[0] = v70;
      *v69 = 136315394;
      *(v69 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v132, v68, v134);
      *(v69 + 12) = 2080;
      *(v69 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v122, v65, v134);
      _os_log_impl(&dword_1DC659000, v66, v67, "#TaskLoggingService SELF Log - metadata has flowId: nil, taskId: %s, rcId: %s", v69, 0x16u);
      swift_arrayDestroy();
      v72 = v71;
      v24 = v120;
      MEMORY[0x1E12A2F50](v72, -1, -1);
      MEMORY[0x1E12A2F50](v69, -1, -1);
    }

    v73 = 0x1E69CF000;
  }

  else
  {
    v116(v123, v63, v23);
    v74 = objc_allocWithZone(MEMORY[0x1E69CF638]);
    v75 = UUID._bridgeToObjectiveC()().super.isa;
    v76 = [v74 initWithNSUUID_];

    [v36 setFlowId_];
    if (one-time initialization token for instrumentation != -1)
    {
      swift_once();
    }

    v77 = type metadata accessor for Logger();
    __swift_project_value_buffer(v77, static Logger.instrumentation);
    v78 = v118;
    (*(v24 + 16))(v118, v123, v23);

    v79 = v125;

    v80 = Logger.logObject.getter();
    v81 = static os_log_type_t.debug.getter();

    v115 = v81;
    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      v120 = v24;
      v83 = v82;
      v114 = swift_slowAlloc();
      v134[0] = v114;
      *v83 = 136315650;
      v113 = v80;
      v84 = UUID.uuidString.getter();
      v85 = v36;
      v86 = v19;
      v88 = v87;
      v89 = *(v120 + 8);
      v89(v78, v23);
      v90 = v89;
      v91 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v84, v88, v134);
      v19 = v86;
      v36 = v85;

      *(v83 + 4) = v91;
      *(v83 + 12) = 2080;
      *(v83 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v132, v131, v134);
      *(v83 + 22) = 2080;
      *(v83 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v122, v79, v134);
      v92 = v113;
      _os_log_impl(&dword_1DC659000, v113, v115, "#TaskLoggingService SELF Log - metadata has flowId: %s, taskId: %s, rcId: %s", v83, 0x20u);
      v93 = v114;
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v93, -1, -1);
      v94 = v83;
      v24 = v120;
      MEMORY[0x1E12A2F50](v94, -1, -1);

      v90(v123, v23);
    }

    else
    {

      v95 = *(v24 + 8);
      v95(v78, v23);
      v95(v123, v23);
    }

    v73 = 0x1E69CF000uLL;
  }

  v96 = v121;
  UUID.init(uuidString:)();
  if (v128(v96, 1, v23) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v96, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    if (one-time initialization token for instrumentation != -1)
    {
      swift_once();
    }

    v97 = type metadata accessor for Logger();
    __swift_project_value_buffer(v97, static Logger.instrumentation);

    v98 = Logger.logObject.getter();
    v99 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v98, v99))
    {
      v100 = swift_slowAlloc();
      v101 = swift_slowAlloc();
      v134[0] = v101;
      *v100 = 136315138;
      *(v100 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v130, v133, v134);
      _os_log_impl(&dword_1DC659000, v98, v99, "#TaskLoggingService: invalid UUID for executionRequestId %s", v100, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v101);
      MEMORY[0x1E12A2F50](v101, -1, -1);
      MEMORY[0x1E12A2F50](v100, -1, -1);
    }

    outlined destroy of ReferenceResolutionClientProtocol?(v126, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    (*(v24 + 8))(v127, v23);
  }

  else
  {
    v102 = v119;
    v116(v119, v96, v23);
    v103 = objc_allocWithZone(*(v73 + 1592));
    v104 = UUID._bridgeToObjectiveC()().super.isa;
    v105 = [v103 initWithNSUUID_];

    v106 = v124[24];
    v107 = v124[25];
    __swift_project_boxed_opaque_existential_1(v124 + 21, v106);
    v108 = (*(v107 + 16))(v106, v107);
    v109 = &selRef_setSubRequestId_;
    if ((v108 & 1) == 0)
    {
      v109 = &selRef_setRequestId_;
    }

    [v36 *v109];

    v110 = *(v24 + 8);
    v110(v102, v23);
    outlined destroy of ReferenceResolutionClientProtocol?(v126, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v110(v127, v23);
  }

  outlined destroy of ReferenceResolutionClientProtocol?(v19, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  return v36;
}

uint64_t TaskLoggingService.createFlowId(executionRequestId:)@<X0>(uint64_t a3@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v17 - v6;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init(uuidString:)();
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v7, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    if (one-time initialization token for instrumentation != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Logger.instrumentation);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1DC659000, v13, v14, "#TaskLoggingService SELF Log - invalid executionRequestId string, cannot derive flowId form it", v15, 2u);
      MEMORY[0x1E12A2F50](v15, -1, -1);
    }

    return (*(v9 + 56))(a3, 1, 1, v8);
  }

  else
  {
    (*(v9 + 32))(v11, v7, v8);
    (*(v3 + 128))(v11);
    return (*(v9 + 8))(v11, v8);
  }
}

uint64_t closure #1 in default argument 4 of TaskLoggingService.init(biomeDonator:curareDonator:selfEmitter:tier1LinkIdSupplier:derivedIdentifierSupplier:appInformationSupplier:sensitivityManager:featureChecker:)@<X0>(uint64_t a1@<X8>)
{
  v2 = objc_opt_self();
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v4 = [v2 derivedIdentifierForComponentName:3 fromSourceIdentifier:isa];

  if (v4)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = type metadata accessor for UUID();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, 1, v6);
}

uint64_t closure #1 in default argument 5 of TaskLoggingService.init(biomeDonator:curareDonator:selfEmitter:tier1LinkIdSupplier:derivedIdentifierSupplier:appInformationSupplier:sensitivityManager:featureChecker:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for AppInformationResolver();
  swift_allocObject();

  result = AppInformationResolver.init(app:)();
  a1[3] = v2;
  a1[4] = &protocol witness table for AppInformationResolver;
  *a1 = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type String and conformance String()
{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

uint64_t RunSiriKitExecutorProcessorExecutionDelegate.fetchContexts(for:includesNearByDevices:completion:)(uint64_t a1, char a2, uint64_t (*a3)(void), uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v10 = [*(Strong + 24) requestID];
    if (v10)
    {
      v11 = v10;
      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;
    }

    else
    {
      v12 = 0;
      v14 = 0;
    }

    static ServiceBridgeDelegate.fetchContextsDefault(for:includesNearByDevices:requestId:serviceHelper:completion:)(a1, a2 & 1, v12, v14, *(v4 + 24), a3, a4);
  }

  else
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static Logger.conversationBridge);

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v24 = v19;
      *v18 = 136315138;
      v20 = Set.description.getter();
      v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, &v24);

      *(v18 + 4) = v22;
      _os_log_impl(&dword_1DC659000, v16, v17, "RunSiriKitExecutorProcessor already released, ignoring fetchContexts of %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
      MEMORY[0x1E12A2F50](v19, -1, -1);
      MEMORY[0x1E12A2F50](v18, -1, -1);
    }

    return a3(0);
  }
}

void closure #2 in AceServiceInvokerImpl.submitAndForget(_:setRefId:executionSource:)(void *a1, NSObject *a2, const char *a3, const char *a4)
{
  if (a2)
  {
    v6 = a2;
    if (one-time initialization token for ace != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Logger.ace);
    v8 = a2;
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v28 = v12;
      *v11 = 136315138;
      swift_getErrorValue();
      v13 = Error.localizedDescription.getter();
      v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v28);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_1DC659000, v9, v10, a3, v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      MEMORY[0x1E12A2F50](v12, -1, -1);
      MEMORY[0x1E12A2F50](v11, -1, -1);

      return;
    }

    v26 = a2;
  }

  else
  {
    if (one-time initialization token for ace != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static Logger.ace);
    v19 = a1;
    oslog = Logger.logObject.getter();
    v20 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(oslog, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v28 = v22;
      *v21 = 136315138;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13SABaseCommandCSgMd, &_sSo13SABaseCommandCSgMR);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13SABaseCommandCSgmMd, &_sSo13SABaseCommandCSgmMR);
      v23 = String.init<A>(describing:)();
      v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, &v28);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_1DC659000, oslog, v20, a4, v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      MEMORY[0x1E12A2F50](v22, -1, -1);
      MEMORY[0x1E12A2F50](v21, -1, -1);

      return;
    }

    v26 = oslog;
  }
}

uint64_t RunSiriKitExecutorProcessorExecutionDelegate.__deallocating_deinit()
{
  swift_weakDestroy();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void AceServiceInvokerImpl.addMissingCommandIds(_:setRefId:)(void *a1, char a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a1 aceId];
  if (v11)
  {
    v12 = v11;
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;
  }

  else
  {
    UUID.init()();
    v13 = UUID.uuidString.getter();
    v15 = v16;
    (*(v7 + 8))(v10, v6);
  }

  v17 = MEMORY[0x1E12A1410](v13, v15);

  [a1 setAceId_];

  if (a2)
  {
    if (v3[8])
    {
      v18 = v3[7];
      v19 = v3[8];
    }

    else
    {
      v18 = v3[5];
      v19 = v3[6];
    }

    v20 = MEMORY[0x1E12A1410](v18, v19);

    [a1 setRefId_];
  }
}

uint64_t AceServiceInvokerImpl.shouldWrapCommandForExecution(_:)(void *a1)
{
  v3 = specialized static ExecuteOnRemoteCmds.includes(_:)(a1);
  if (*(v1 + 24))
  {
    v4 = 0x6F69747563657845;
  }

  else
  {
    v4 = 0xD000000000000010;
  }

  if (*(v1 + 24))
  {
    v5 = 0xEF6563697665446ELL;
  }

  else
  {
    v5 = 0x80000001DCA7AA10;
  }

  if (*(v1 + 24) == 1 && v5 == 0xEF6563697665446ELL)
  {

    v8 = v3;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v8 = v7 & v3;
  }

  if (one-time initialization token for ace != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Logger.ace);
  v10 = a1;

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.info.getter();
  if (!os_log_type_enabled(v11, v12))
  {

LABEL_31:
    return v8 & 1;
  }

  v28 = v8;
  v13 = swift_slowAlloc();
  v14 = swift_slowAlloc();
  v29 = v14;
  *v13 = 136446978;
  v15 = [v10 encodedClassName];

  if (v15)
  {
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v19, &v29);

    *(v13 + 4) = v20;
    *(v13 + 12) = 2080;
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v5, &v29);

    *(v13 + 14) = v21;
    *(v13 + 22) = 2080;
    if (v3)
    {
      v22 = 0x746F6D65526E7552;
    }

    else
    {
      v22 = 0x6C61636F4C6E7552;
    }

    if (v3)
    {
      v23 = 0xE900000000000065;
    }

    else
    {
      v23 = 0xE800000000000000;
    }

    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, &v29);

    *(v13 + 24) = v24;
    *(v13 + 32) = 2080;
    v8 = v28;
    if (v28)
    {
      v25 = 1163219540;
    }

    else
    {
      v25 = 0x45534C4146;
    }

    if (v28)
    {
      v26 = 0xE400000000000000;
    }

    else
    {
      v26 = 0xE500000000000000;
    }

    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, &v29);

    *(v13 + 34) = v27;
    _os_log_impl(&dword_1DC659000, v11, v12, "AceServiceInvoker shouldWrapCommand=%{public}s runLocation=%s remoteCmdType=%s returns shouldExecuteRemote=%s", v13, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v14, -1, -1);
    MEMORY[0x1E12A2F50](v13, -1, -1);
    goto LABEL_31;
  }

  __break(1u);
  return result;
}

BOOL specialized static ExecuteOnRemoteCmds.includes(_:)(void *a1)
{
  v2 = 0;
  while (1)
  {
    v3 = outlined read-only object #0 of static ExecuteOnRemoteCmds.allCases.getter[v2++ + 32];
    switch(v3)
    {
      case 1:
        v4 = &lazy cache variable for type metadata for SACFProvideContext;
        v5 = 0x1E69C7748;
        break;
      case 2:
        v4 = &lazy cache variable for type metadata for SAInitiateHandoffOnCompanion;
        v5 = 0x1E69C7828;
        break;
      case 3:
        v4 = &lazy cache variable for type metadata for SAPhoneClientCoordinationPhoneCall;
        v5 = 0x1E69C7948;
        break;
      case 4:
        v4 = &lazy cache variable for type metadata for SASendCommands;
        v5 = 0x1E69C7A48;
        break;
      case 5:
        v4 = &lazy cache variable for type metadata for SAUIAddViews;
        v5 = 0x1E69C7AF8;
        break;
      case 6:
        v4 = &lazy cache variable for type metadata for SAUISayIt;
        v5 = 0x1E69C7BB0;
        break;
      case 7:
        v4 = &lazy cache variable for type metadata for SAUpdateReadingState;
        v5 = 0x1E69C7BF8;
        break;
      case 8:
        v4 = &lazy cache variable for type metadata for SALogStringEvent;
        v5 = 0x1E69C78C8;
        break;
      case 9:
        v4 = &lazy cache variable for type metadata for SARDRemoteExecutionContextUpdate;
        v5 = 0x1E69C7998;
        break;
      case 10:
        v4 = &lazy cache variable for type metadata for SAUIShowRequestHandlingStatus;
        v5 = 0x1E69C7BB8;
        break;
      case 11:
        v4 = &lazy cache variable for type metadata for SAUIUpdateVisualResponseSnippet;
        v5 = 0x1E69C7BE8;
        break;
      case 12:
        v4 = &lazy cache variable for type metadata for SAUIHideSiriOverlay;
        v5 = 0x1E69C7B68;
        break;
      case 13:
        v4 = &lazy cache variable for type metadata for SAUISnippetDisplayConfigurationRequest;
        v5 = 0x1E69C7BC8;
        break;
      default:
        v4 = &lazy cache variable for type metadata for SAAceView;
        v5 = 0x1E69C7708;
        break;
    }

    type metadata accessor for OS_dispatch_queue(0, v4, v5);
    if ([a1 isKindOfClass_])
    {
      break;
    }

    if (v2 == 14)
    {
      LODWORD(v3) = 14;
      return v3 != 14;
    }
  }

  return v3 != 14;
}

uint64_t specialized Sequence.contains(where:)(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v11 = *v6;

      v8 = a1(&v11);

      if (v3)
      {
        break;
      }

      v9 = v7-- == 0;
      ++v6;
    }

    while (((v8 | v9) & 1) == 0);
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8 & 1;
}

void specialized AceServiceInvokerImpl.addMissingComponentIds(_:setRefId:)(unint64_t a1, int a2)
{
  v94 = a2;
  v93 = type metadata accessor for UUID();
  v3 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93);
  v5 = v82 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    v7 = v6;
    v91 = a1;
    v8 = [v7 dialogs];
    if (v8)
    {
      v9 = v8;
      v10 = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SADialog, 0x1E69C77A0);
      i = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (i >> 62)
      {
        goto LABEL_74;
      }

      v12 = *((i & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v12)
      {
        goto LABEL_5;
      }

LABEL_75:

LABEL_76:
      isa = Array._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      isa = 0;
    }

    [v7 setDialogs_];
    goto LABEL_83;
  }

  objc_opt_self();
  v31 = swift_dynamicCastObjCClass();
  if (!v31)
  {
    return;
  }

  v7 = v31;
  v88 = a1;
  v32 = [v7 views];
  if (v32)
  {
    v33 = v32;
    v10 = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SAAceView, 0x1E69C7708);
    v34 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v92 = v34;
    if (v34 >> 62)
    {
      goto LABEL_79;
    }

    for (i = *((v92 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
    {
      v82[1] = v10;
      v83 = v7;
      v84 = a1;
      v96 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray.reserveCapacity(_:)();
      if ((i & 0x8000000000000000) != 0)
      {
        __break(1u);
        return;
      }

      v36 = 0;
      v87 = v92 & 0xFFFFFFFFFFFFFF8;
      v90 = v3 + 1;
      v91 = (v92 & 0xC000000000000001);
      v37 = off_1E8646000;
      *&v35 = 136315138;
      v85 = v35;
      v86 = i;
      while (1)
      {
        if (v91)
        {
          v41 = MEMORY[0x1E12A1FE0](v36, v92);
          goto LABEL_39;
        }

        if ((v36 & 0x8000000000000000) != 0)
        {
          goto LABEL_72;
        }

        if (v36 >= *(v87 + 16))
        {
          break;
        }

        v41 = *(v92 + 8 * v36 + 32);
LABEL_39:
        v40 = v41;
        v42 = [v41 v37[427]];
        if (!v42)
        {
          goto LABEL_43;
        }

        v43 = v42;
        v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v7 = v45;

        v46 = HIBYTE(v7) & 0xF;
        if ((v7 & 0x2000000000000000) == 0)
        {
          v46 = v44 & 0xFFFFFFFFFFFFLL;
        }

        if (!v46)
        {
LABEL_43:
          UUID.init()();
          v47 = UUID.uuidString.getter();
          v49 = v48;
          (*v90)(v5, v93);
          v50 = MEMORY[0x1E12A1410](v47, v49);

          [v40 setAceId_];

          if (one-time initialization token for ace != -1)
          {
            swift_once();
          }

          v51 = type metadata accessor for Logger();
          __swift_project_value_buffer(v51, static Logger.ace);
          v52 = v40;
          v53 = Logger.logObject.getter();
          v54 = static os_log_type_t.info.getter();

          if (os_log_type_enabled(v53, v54))
          {
            v55 = swift_slowAlloc();
            v89 = v40;
            v56 = v55;
            v7 = swift_slowAlloc();
            v95 = v7;
            *v56 = v85;
            v57 = [v52 description];
            v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            a1 = v59;

            v60 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v58, a1, &v95);

            *(v56 + 4) = v60;
            i = v86;
            _os_log_impl(&dword_1DC659000, v53, v54, "Set missing aceId to: %s", v56, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v7);
            MEMORY[0x1E12A2F50](v7, -1, -1);
            v61 = v56;
            v40 = v89;
            MEMORY[0x1E12A2F50](v61, -1, -1);
          }

          v37 = off_1E8646000;
        }

        if (v94)
        {
          v62 = [v40 refId];
          if (!v62)
          {
            goto LABEL_53;
          }

          v63 = v62;
          v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          a1 = v65;

          v66 = HIBYTE(a1) & 0xF;
          if ((a1 & 0x2000000000000000) == 0)
          {
            v66 = v64 & 0xFFFFFFFFFFFFLL;
          }

          if (!v66)
          {
LABEL_53:
            v67 = [v88 refId];
            [v40 setRefId_];
          }
        }

        v68 = [v40 dialog];
        v69 = v68;
        if (v68)
        {
          v10 = v40;
          v39 = v68;
          v70 = [v39 v37[427]];
          if (!v70)
          {
            goto LABEL_59;
          }

          v71 = v70;
          a1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v7 = v72;

          v73 = HIBYTE(v7) & 0xF;
          if ((v7 & 0x2000000000000000) == 0)
          {
            v73 = a1 & 0xFFFFFFFFFFFFLL;
          }

          if (!v73)
          {
LABEL_59:
            UUID.init()();
            v74 = UUID.uuidString.getter();
            a1 = v75;
            (*v90)(v5, v93);
            v76 = MEMORY[0x1E12A1410](v74, a1);

            [v39 setAceId_];
          }

          if (v94)
          {
            v77 = [v39 refId];
            if (!v77)
            {
              goto LABEL_31;
            }

            v78 = v77;
            a1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v7 = v79;

            v80 = HIBYTE(v7) & 0xF;
            if ((v7 & 0x2000000000000000) == 0)
            {
              v80 = a1 & 0xFFFFFFFFFFFFLL;
            }

            if (!v80)
            {
LABEL_31:
              v38 = [v88 refId];
              [v39 setRefId_];

              v39 = v38;
            }
          }

          v40 = v10;
        }

        ++v36;
        [v40 setDialog_];

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v3 = *(v96 + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        if (i == v36)
        {

          v7 = v83;
          a1 = v84;
          goto LABEL_81;
        }
      }

LABEL_73:
      __break(1u);
LABEL_74:
      v12 = __CocoaSet.count.getter();
      if (!v12)
      {
        goto LABEL_75;
      }

LABEL_5:
      v89 = v10;
      v90 = v7;
      v84 = a1;
      v96 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray.reserveCapacity(_:)();
      if ((v12 & 0x8000000000000000) == 0)
      {
        v13 = 0;
        a1 = i & 0xC000000000000001;
        v92 = i & 0xFFFFFFFFFFFFFF8;
        v14 = v3 + 1;
        while (1)
        {
          if (a1)
          {
            v16 = MEMORY[0x1E12A1FE0](v13, i);
          }

          else
          {
            if ((v13 & 0x8000000000000000) != 0)
            {
              __break(1u);
LABEL_71:
              __break(1u);
LABEL_72:
              __break(1u);
              goto LABEL_73;
            }

            if (v13 >= *(v92 + 16))
            {
              goto LABEL_71;
            }

            v16 = *(i + 8 * v13 + 32);
          }

          v3 = v16;
          v17 = [v16 aceId];
          if (!v17)
          {
            goto LABEL_18;
          }

          v18 = v17;
          v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v20 = v19;

          v21 = HIBYTE(v20) & 0xF;
          if ((v20 & 0x2000000000000000) == 0)
          {
            v21 = v10 & 0xFFFFFFFFFFFFLL;
          }

          if (!v21)
          {
LABEL_18:
            UUID.init()();
            v22 = UUID.uuidString.getter();
            v24 = v23;
            (*v14)(v5, v93);
            v25 = MEMORY[0x1E12A1410](v22, v24);

            [v3 setAceId_];
          }

          if (v94)
          {
            v26 = [v3 refId];
            if (!v26)
            {
              goto LABEL_7;
            }

            v27 = v26;
            v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v10 = v29;

            v30 = HIBYTE(v10) & 0xF;
            if ((v10 & 0x2000000000000000) == 0)
            {
              v30 = v28 & 0xFFFFFFFFFFFFLL;
            }

            if (!v30)
            {
LABEL_7:
              v15 = [v91 refId];
              [v3 setRefId_];
            }
          }

          ++v13;
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v7 = *(v96 + 16);
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          if (v12 == v13)
          {

            a1 = v84;
            v7 = v90;
            goto LABEL_76;
          }
        }
      }

      __break(1u);
LABEL_79:
      ;
    }

LABEL_81:
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    isa = 0;
  }

  [v7 setViews_];
LABEL_83:
}

void AceServiceInvokerImpl.closeServerRequestIfRequired(givenCommand:)(uint64_t a1)
{
  v2 = v1;
  if (one-time initialization token for ace != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.ace);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1DC659000, v4, v5, "Checking to see if server request should be closed..", v6, 2u);
    MEMORY[0x1E12A2F50](v6, -1, -1);
  }

  if (one-time initialization token for userFacingResponseCommandList != -1)
  {
    swift_once();
  }

  v7 = static AceServiceInvokerImpl.userFacingResponseCommandList;
  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13SABaseCommandCmMd, &_sSo13SABaseCommandCmMR);
  LODWORD(v7) = [v7 containsObject_];
  swift_unknownObjectRelease();
  if (v7)
  {
    v8 = *(v2 + 168);
    os_unfair_lock_lock((v8 + 20));
    closure #1 in AceServiceInvokerImpl.closeServerRequest()partial apply((v8 + 16));
    os_unfair_lock_unlock((v8 + 20));
  }
}

id ConversationOutputSubmitter.extractAllCommands(inside:results:)(unint64_t a1, void *a2)
{
  v4 = swift_unknownObjectRetain();
  MEMORY[0x1E12A1680](v4);
  if (*((*a2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_28;
  }

  while (1)
  {
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    result = [a1 callbacks];
    if (!result)
    {
      return result;
    }

    v6 = result;
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SAResultCallback, 0x1E69C79C8);
    a1 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (a1 >> 62)
    {
      v7 = __CocoaSet.count.getter();
      if (!v7)
      {
LABEL_30:
      }
    }

    else
    {
      v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v7)
      {
        goto LABEL_30;
      }
    }

    v8 = 0;
    v21 = a1;
    v22 = a1 & 0xC000000000000001;
    v18 = a1 + 32;
    v19 = a1 & 0xFFFFFFFFFFFFFF8;
    v20 = v7;
    while (1)
    {
      if (v22)
      {
        v9 = MEMORY[0x1E12A1FE0](v8, a1);
      }

      else
      {
        if (v8 >= *(v19 + 16))
        {
          goto LABEL_27;
        }

        v9 = *(v18 + 8 * v8);
      }

      v10 = v9;
      if (__OFADD__(v8++, 1))
      {
        break;
      }

      v12 = [v9 commands];
      if (!v12)
      {
        goto LABEL_7;
      }

      v13 = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SAClientBoundCommand_pMd, &_sSo20SAClientBoundCommand_pMR);
      v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v14 >> 62)
      {
        v15 = __CocoaSet.count.getter();
        if (v15)
        {
LABEL_16:
          if (v15 < 1)
          {
            goto LABEL_26;
          }

          for (i = 0; i != v15; ++i)
          {
            if ((v14 & 0xC000000000000001) != 0)
            {
              v17 = MEMORY[0x1E12A1FE0](i, v14);
            }

            else
            {
              v17 = *(v14 + 8 * i + 32);
              swift_unknownObjectRetain();
            }

            ConversationOutputSubmitter.extractAllCommands(inside:results:)(v17, a2);
            swift_unknownObjectRelease();
          }
        }
      }

      else
      {
        v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v15)
        {
          goto LABEL_16;
        }
      }

      v7 = v20;
      a1 = v21;
LABEL_7:

      if (v8 == v7)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }
}

void *ConversationOutputSubmitter.muxContextMessage.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 80);
  v2 = v1;
  return v1;
}

void specialized PersonaUniqueIdentifierAccepting.accept(siriSharedUserIdentifier:muxContextMessage:meetsUserSessionThreshold:meetsPersonalRequestThreshold:)()
{
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static Logger.conversationBridge);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_1DC659000, oslog, v1, "Unable to attach personaUniqueIdentifier on this platform.", v2, 2u);
    MEMORY[0x1E12A2F50](v2, -1, -1);
  }
}

uint64_t destroy for InvocationStateImpl(uint64_t a1, int *a2)
{

  v4 = a2[6];
  v5 = type metadata accessor for InputOrigin();
  (*(*(v5 - 8) + 8))(a1 + v4, v5);
  v6 = a2[7];
  v7 = type metadata accessor for InteractionType();
  (*(*(v7 - 8) + 8))(a1 + v6, v7);
  v8 = a2[8];
  v9 = type metadata accessor for AudioSource();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(a1 + v8, 1, v9))
  {
    (*(v10 + 8))(a1 + v8, v9);
  }

  v11 = a2[9];
  v12 = type metadata accessor for AudioDestination();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(a1 + v11, 1, v12))
  {
    (*(v13 + 8))(a1 + v11, v12);
  }

  v14 = a2[10];
  v15 = type metadata accessor for ResponseMode();
  (*(*(v15 - 8) + 8))(a1 + v14, v15);
  v16 = a2[11];
  v17 = type metadata accessor for MultiUserContext();
  v18 = *(v17 - 8);
  if (!(*(v18 + 48))(a1 + v16, 1, v17))
  {
    (*(v18 + 8))(a1 + v16, v17);
  }

  v19 = a2[18];
  v20 = type metadata accessor for Locale();
  (*(*(v20 - 8) + 8))(a1 + v19, v20);
  v21 = a2[19];
  v22 = type metadata accessor for SiriVoiceGender();
  (*(*(v22 - 8) + 8))(a1 + v21, v22);

  v23 = a2[24];
  v24 = type metadata accessor for PersonalDomainsAuthenticationMode();
  v25 = *(v24 - 8);
  if (!(*(v25 + 48))(a1 + v23, 1, v24))
  {
    (*(v25 + 8))(a1 + v23, v24);
  }

  v26 = a2[25];
  v27 = type metadata accessor for BargeInContext();
  v28 = *(v27 - 8);
  if (!(*(v28 + 48))(a1 + v26, 1, v27))
  {
    (*(v28 + 8))(a1 + v26, v27);
  }

  v29 = a2[26];
  v30 = type metadata accessor for Restrictions();
  (*(*(v30 - 8) + 8))(a1 + v29, v30);
  v31 = a2[27];
  v32 = type metadata accessor for HomeInfo();
  v33 = *(v32 - 8);
  if (!(*(v33 + 48))(a1 + v31, 1, v32))
  {
    (*(v33 + 8))(a1 + v31, v32);
  }
}

uint64_t ConversationTurnStateImpl.setSiriKitFlowGlobals()()
{
  v8 = *v0;
  v9 = &protocol witness table for ConversationTurnStateImpl;
  *&v7 = v0;
  type metadata accessor for ConversationTurnStateImpl.CommandHandler();
  v1 = swift_allocObject();
  outlined init with take of ReferenceResolutionClientProtocol(&v7, v1 + 16);
  v2 = *(*(*(v0 + OBJC_IVAR____TtC14SiriKitRuntimeP33_FB63CECFE10715AC1233F5DEB969132D25ConversationTurnStateImpl_aceServiceInvoker) + 32) + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_peerInfo);
  v3 = type metadata accessor for PeerInfoProvider();
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  v8 = v3;
  v9 = lazy protocol witness table accessor for type AceServiceInvokerImpl and conformance AceServiceInvokerImpl(&lazy protocol witness table cache variable for type PeerInfoProvider and conformance PeerInfoProvider, type metadata accessor for PeerInfoProvider, &protocol conformance descriptor for PeerInfoProvider);
  *&v7 = v4;
  lazy protocol witness table accessor for type AceServiceInvokerImpl and conformance AceServiceInvokerImpl(&lazy protocol witness table cache variable for type ConversationTurnStateImpl.CommandHandler and conformance ConversationTurnStateImpl.CommandHandler, type metadata accessor for ConversationTurnStateImpl.CommandHandler, &protocol conformance descriptor for ConversationTurnStateImpl.CommandHandler);

  v5 = v2;
  SiriKitCommandHandler.notifyBegin(peerInfo:)();

  return outlined destroy of ReferenceResolutionClientProtocol?(&v7, &_s11SiriKitFlow17PeerInfoProviding_pSgMd, &_s11SiriKitFlow17PeerInfoProviding_pSgMR);
}

uint64_t PeerInfoProvider.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t InvocationScopedSiriKitEventSender.sendAsync(_:)()
{

  return MEMORY[0x1EEE6DFA0](InvocationScopedSiriKitEventSender.sendAsync(_:), 0, 0);
}

{
  v1 = v0[15];
  v2 = v0[11];
  v3 = v0[12];
  v4 = v0[9];
  static os_signpost_type_t.event.getter();
  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:)();

  v1(v2, v4);
  static os_signpost_type_t.end.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  v1(v3, v4);

  v5 = v0[1];

  return v5();
}

{
  v35 = v0;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[3];
  v6 = static Log.executor;
  v0[13] = static Log.executor;
  v7 = v6;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  SiriKitEvent.overrides.getter();
  v8 = *(v5 + 16);
  outlined init with copy of SiriKitEventOverrides?(v1, v2);
  v9 = (*(v4 + 48))(v2, 1, v3);
  v10 = v0[8];
  if (v9 == 1)
  {
    outlined destroy of SiriKitEventOverrides?(v0[8]);
  }

  else
  {
    v11 = v0[6];
    v12 = v0[4];
    v13 = v0[5];
    (*(v13 + 32))(v11, v0[7], v12);

    v14 = SiriKitEventContext.withOverrides(_:)();
    (*(v13 + 8))(v11, v12);
    outlined destroy of SiriKitEventOverrides?(v10);

    v8 = v14;
  }

  v0[14] = v8;
  if (one-time initialization token for instrumentation != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, static Logger.instrumentation);

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v34 = v19;
    *v18 = 136315394;
    v20 = SiriKitEvent.debugDescription.getter();
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, &v34);

    *(v18 + 4) = v22;
    *(v18 + 12) = 2080;

    v23 = SiriKitEventContext.description.getter();
    v25 = v24;

    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v25, &v34);

    *(v18 + 14) = v26;
    _os_log_impl(&dword_1DC659000, v16, v17, "Dispatching async event to sinks: %s with context: %s", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v19, -1, -1);
    MEMORY[0x1E12A2F50](v18, -1, -1);
  }

  v28 = v0[10];
  v27 = v0[11];
  v29 = v0[9];
  type metadata accessor for IntentLoggingEventSink();
  swift_initStaticObject();
  specialized IntentLoggingEventSink.receive(_:_:)();
  static os_signpost_type_t.event.getter();
  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  v30 = *(v28 + 8);
  v0[15] = v30;
  v0[16] = (v28 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v30(v27, v29);
  if (one-time initialization token for instance != -1)
  {
    swift_once();
  }

  v31 = swift_task_alloc();
  v0[17] = v31;
  *v31 = v0;
  v31[1] = InvocationScopedSiriKitEventSender.sendAsync(_:);
  v32 = v0[2];

  return TaskLoggingEventSink.receiveAsync(_:_:)(v32, v8);
}

unint64_t lazy protocol witness table accessor for type DeviceRestrictions and conformance DeviceRestrictions()
{
  result = lazy protocol witness table cache variable for type DeviceRestrictions and conformance DeviceRestrictions;
  if (!lazy protocol witness table cache variable for type DeviceRestrictions and conformance DeviceRestrictions)
  {
    type metadata accessor for DeviceRestrictions();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DeviceRestrictions and conformance DeviceRestrictions);
  }

  return result;
}

uint64_t protocol witness for DeviceState.interactionType.getter in conformance DefaultDeviceState@<X0>(uint64_t *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  v5 = *v3;
  v6 = *a1;
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v5 + v6, v7);
}

void thunk for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> ()(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = _convertErrorToNSError(_:)();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

uint64_t lazy protocol witness table accessor for type [OS_dispatch_source.TimerFlags] and conformance [A](unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type OS_dispatch_source.TimerFlags and conformance OS_dispatch_source.TimerFlags(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t type metadata accessor for OS_dispatch_source()
{
  result = lazy cache variable for type metadata for OS_dispatch_source;
  if (!lazy cache variable for type metadata for OS_dispatch_source)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for OS_dispatch_source);
  }

  return result;
}

uint64_t default argument 1 of OS_dispatch_source.setEventHandler(qos:flags:handler:)()
{
  type metadata accessor for DispatchWorkItemFlags();
  lazy protocol witness table accessor for type OS_dispatch_source.TimerFlags and conformance OS_dispatch_source.TimerFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_source.TimerFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

char *specialized ConversationTurnStateImpl.init(bridge:executionRequestId:rootRequestId:sessionId:sessionConfiguration:taskService:conversationLoggingId:invocationState:customEventSender:requestContextData:invokedByPeerToPeerEORR:rrClient:scopedRRData:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(char *, char *, uint64_t), uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unsigned __int8 a13, void *a14, uint64_t a15, void *a16, char *a17)
{
  v148 = a8;
  v177 = a7;
  object = a16;
  v164 = a15;
  v188 = a14;
  inited = a12;
  v176 = a9;
  v158 = *a17;
  v162 = type metadata accessor for DeviceRestrictions();
  v161 = *(v162 - 8);
  MEMORY[0x1EEE9AC00](v162);
  v160 = &v139 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v159 = &v139 - v25;
  v175 = type metadata accessor for Restrictions();
  v174 = *(v175 - 8);
  MEMORY[0x1EEE9AC00](v175);
  v173 = &v139 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities14BargeInContextVSgMd, &_s13SiriUtilities14BargeInContextVSgMR);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v172 = &v139 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities33PersonalDomainsAuthenticationModeOSgMd, &_s13SiriUtilities33PersonalDomainsAuthenticationModeOSgMR);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v171 = &v139 - v30;
  v187 = type metadata accessor for SiriVoiceGender();
  v170 = *(v187 - 8);
  MEMORY[0x1EEE9AC00](v187);
  v185 = &v139 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v186 = type metadata accessor for Locale();
  v169 = *(v186 - 8);
  MEMORY[0x1EEE9AC00](v186);
  v184 = &v139 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for MultiUserState();
  MEMORY[0x1EEE9AC00](v33 - 8);
  v183 = &v139 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = type metadata accessor for DeviceIdiom();
  v167 = *(v168 - 8);
  MEMORY[0x1EEE9AC00](v168);
  v181 = &v139 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v182 = type metadata accessor for InteractionType();
  v166 = *(v182 - 8);
  MEMORY[0x1EEE9AC00](v182);
  v179 = &v139 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v180 = type metadata accessor for InputOrigin();
  v165 = *(v180 - 8);
  MEMORY[0x1EEE9AC00](v180);
  v178 = &v139 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for InvocationStateImpl(0);
  MEMORY[0x1EEE9AC00](v38);
  v147 = (&v139 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  v197[3] = v40;
  v197[4] = &protocol witness table for InvocationStateImpl;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v197);
  outlined init with take of InvocationStateImpl(a10, boxed_opaque_existential_0);
  v42 = OBJC_IVAR____TtC14SiriKitRuntimeP33_FB63CECFE10715AC1233F5DEB969132D25ConversationTurnStateImpl_sessionConfiguration;
  v43 = type metadata accessor for SessionConfiguration();
  (*(*(v43 - 8) + 56))(&a17[v42], 1, 1, v43);
  *&a17[OBJC_IVAR____TtC14SiriKitRuntimeP33_FB63CECFE10715AC1233F5DEB969132D25ConversationTurnStateImpl_bridge] = a1;
  v154 = a2;
  *(a17 + 2) = a2;
  *(a17 + 3) = a3;
  v155 = a4;
  *(a17 + 4) = a4;
  *(a17 + 5) = a5;
  v163 = a6;
  outlined init with copy of ReferenceResolutionClientProtocol?(a6, &a17[OBJC_IVAR____TtC14SiriKitRuntimeP33_FB63CECFE10715AC1233F5DEB969132D25ConversationTurnStateImpl_sessionId], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  swift_beginAccess();
  v156 = a5;

  v153 = a3;

  outlined assign with copy of SessionConfiguration?(v177, &a17[v42]);
  swift_endAccess();
  v44 = a1;
  v45 = object;
  outlined init with copy of ReferenceResolutionClientProtocol?(v176, &a17[OBJC_IVAR____TtC14SiriKitRuntimeP33_FB63CECFE10715AC1233F5DEB969132D25ConversationTurnStateImpl_conversationLoggingId], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v46 = type metadata accessor for SharedContextServiceImpl();
  v47 = swift_allocObject();
  *(v47 + 16) = v44;
  v48 = &a17[OBJC_IVAR____TtC14SiriKitRuntimeP33_FB63CECFE10715AC1233F5DEB969132D25ConversationTurnStateImpl_sharedContextService];
  *(v48 + 3) = v46;
  *(v48 + 4) = _s14SiriKitRuntime17ConversationActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type SharedContextServiceImpl and conformance SharedContextServiceImpl, type metadata accessor for SharedContextServiceImpl, &protocol conformance descriptor for SharedContextServiceImpl);
  *v48 = v47;
  v49 = v164;
  v50 = inited;
  outlined init with copy of ReferenceResolutionClientProtocol(v197, &a17[OBJC_IVAR____TtC14SiriKitRuntimeP33_FB63CECFE10715AC1233F5DEB969132D25ConversationTurnStateImpl_invocationState]);
  *&a17[OBJC_IVAR____TtC14SiriKitRuntimeP33_FB63CECFE10715AC1233F5DEB969132D25ConversationTurnStateImpl_requestContextData] = v50;
  v51 = &a17[OBJC_IVAR____TtC14SiriKitRuntimeP33_FB63CECFE10715AC1233F5DEB969132D25ConversationTurnStateImpl_scopedRRData];
  *v51 = v49;
  *(v51 + 1) = v45;
  v52 = *(boxed_opaque_existential_0 + v38[20]);
  if (v52)
  {

    v53 = v50;
    outlined copy of Data?(v49, v45);
    v54 = [v52 runLocation];
    if (v54)
    {
      v55 = v54;
      v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v58 = v57;

      v54 = v56;
      goto LABEL_6;
    }
  }

  else
  {

    v59 = v50;
    outlined copy of Data?(v49, v45);
    v54 = 0;
  }

  v58 = 0;
LABEL_6:
  v164 = a11;
  LODWORD(object) = a13;
  LODWORD(v150) = specialized static RunLocation.convert(aceRunLocation:)(v54, v58);

  v157 = v44;
  if (v52)
  {
    v60 = [v52 invocationDeviceAssistantId];
    if (v60)
    {
      v61 = v60;
      v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v64 = v63;
    }

    else
    {
      v62 = 0;
      v64 = 0;
    }

    v67 = [v52 executionDeviceAssistantId];
    v65 = v50;
    if (v67)
    {
      v68 = v67;
      v149 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v66 = v69;
    }

    else
    {
      v149 = 0;
      v66 = 0;
    }
  }

  else
  {
    v65 = v50;
    v149 = 0;
    v66 = 0;
    v62 = 0;
    v64 = 0;
  }

  outlined init with copy of ReferenceResolutionClientProtocol(v188, &v194);
  type metadata accessor for AceServiceInvokerImpl();
  v70 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCySbSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCySbSo16os_unfair_lock_sVGMR);
  v71 = swift_allocObject();
  *(v71 + 20) = 0;
  *(v71 + 16) = 0;
  *(v70 + 152) = v71;
  type metadata accessor for SubmissionTaskRegistry();
  v72 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyShyScTySo13SABaseCommandCSgs5Error_pGGSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyShyScTySo13SABaseCommandCSgs5Error_pGGSo16os_unfair_lock_sVGMR);
  v73 = swift_allocObject();
  *(v73 + 24) = 0;
  *(v73 + 16) = MEMORY[0x1E69E7CD0];
  *(v72 + 16) = v73;
  *(v70 + 160) = v72;
  v74 = swift_allocObject();
  *(v74 + 20) = 0;
  *(v74 + 16) = 0;
  *(v70 + 168) = v74;
  *(v70 + 16) = v157;
  v75 = v155;
  *(v70 + 48) = v153;
  *(v70 + 56) = v75;
  v76 = v154;
  *(v70 + 32) = v65;
  *(v70 + 40) = v76;
  *(v70 + 24) = v150 & 1;
  *(v70 + 64) = v156;
  *(v70 + 72) = v62;
  v77 = v149;
  *(v70 + 80) = v64;
  *(v70 + 88) = v77;
  *(v70 + 96) = v66;
  *(v70 + 104) = object & 1;
  outlined init with copy of ReferenceResolutionClientProtocol?(&v194, &v189, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMd, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMR);
  v78 = v190;

  v79 = v65;
  if (v78)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(&v194, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMd, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMR);
    outlined init with take of ReferenceResolutionClientProtocol(&v189, &v191);
  }

  else
  {
    outlined destroy of ReferenceResolutionClientProtocol?(&v189, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMd, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMR);
    v80 = type metadata accessor for ReferenceResolutionClient();
    v81 = ReferenceResolutionClient.__allocating_init()();
    v192 = v80;
    v193 = MEMORY[0x1E69D01B0];
    *&v191 = v81;
    outlined destroy of ReferenceResolutionClientProtocol?(&v194, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMd, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMR);
  }

  outlined init with take of ReferenceResolutionClientProtocol(&v191, v70 + 112);
  v82 = OBJC_IVAR____TtC14SiriKitRuntimeP33_FB63CECFE10715AC1233F5DEB969132D25ConversationTurnStateImpl_aceServiceInvoker;
  *&a17[OBJC_IVAR____TtC14SiriKitRuntimeP33_FB63CECFE10715AC1233F5DEB969132D25ConversationTurnStateImpl_aceServiceInvoker] = v70;
  outlined init with copy of ReferenceResolutionClientProtocol?(v164, &v191, &_s11SiriKitFlow0aB12EventSending_pSgMd, &_s11SiriKitFlow0aB12EventSending_pSgMR);
  if (v192)
  {
    outlined init with take of ReferenceResolutionClientProtocol(&v191, &v194);
  }

  else
  {
    outlined init with copy of ReferenceResolutionClientProtocol(v197, &v194);
    v83 = __swift_mutable_project_boxed_opaque_existential_1(&v194, v195);
    v157 = &v139;
    v84 = MEMORY[0x1EEE9AC00](v83);
    v86 = &v139 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v87 + 16))(v86, v84);
    v88 = type metadata accessor for InvocationScopedSiriKitEventSender();
    v89 = swift_allocObject();
    v90 = v147;
    outlined init with take of InvocationStateImpl(v86, v147);
    v91 = v148;

    v93 = specialized InvocationScopedSiriKitEventSender.init(aceServiceInvoker:taskService:invocationState:)(v92, v91, v90, v89);
    __swift_destroy_boxed_opaque_existential_1Tm(&v194);
    v195 = v88;
    v196 = _s14SiriKitRuntime17ConversationActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type InvocationScopedSiriKitEventSender and conformance InvocationScopedSiriKitEventSender, type metadata accessor for InvocationScopedSiriKitEventSender, &protocol conformance descriptor for InvocationScopedSiriKitEventSender);
    *&v194 = v93;
    if (v192)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(&v191, &_s11SiriKitFlow0aB12EventSending_pSgMd, &_s11SiriKitFlow0aB12EventSending_pSgMR);
    }
  }

  outlined init with take of ReferenceResolutionClientProtocol(&v194, &a17[OBJC_IVAR____TtC14SiriKitRuntimeP33_FB63CECFE10715AC1233F5DEB969132D25ConversationTurnStateImpl_eventSender]);
  outlined init with copy of ReferenceResolutionClientProtocol(v188, &a17[OBJC_IVAR____TtC14SiriKitRuntimeP33_FB63CECFE10715AC1233F5DEB969132D25ConversationTurnStateImpl_rrClient]);
  static AuthenticationStateImpl.from(invocationState:)(v197, &v194);
  v94 = *(*(*&a17[v82] + 32) + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_peerInfo);
  type metadata accessor for PeerInfoProvider();
  inited = swift_initStackObject();
  *(inited + 16) = v94;
  v95 = boxed_opaque_existential_0 + v38[6];
  v148 = *(v165 + 16);
  v148(v178, v95, v180);
  v96 = boxed_opaque_existential_0 + v38[7];
  v147 = *(v166 + 16);
  (v147)(v179, v96, v182);
  v157 = v94;
  if (v94 && (v97 = [v94 userInterfaceIdiom]) != 0)
  {
    v98 = v97;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    DeviceIdiom.init(aceValue:)();
  }

  else
  {
    type metadata accessor for SiriEnvironment();
    static SiriEnvironment.default.getter();
    SiriEnvironment.currentDevice.getter();

    CurrentDevice.localDeviceIdiom.getter();
  }

  outlined init with copy of InvocationStateImpl(boxed_opaque_existential_0 + v38[11], v183, MEMORY[0x1E69CE578]);
  v99 = boxed_opaque_existential_0 + v38[18];
  v145 = *(v169 + 16);
  v145(v184, v99, v186);
  v100 = boxed_opaque_existential_0 + v38[19];
  v144 = *(v170 + 16);
  v144(v185, v100, v187);
  v101 = v38[14];
  v140 = *(boxed_opaque_existential_0 + v38[13]);
  v141 = *(boxed_opaque_existential_0 + v101);
  v142 = *(boxed_opaque_existential_0 + v38[15]);
  v143 = *(boxed_opaque_existential_0 + v38[17]);
  v102 = swift_allocObject();
  v103 = v158;
  v155 = v102;
  *(v102 + 16) = v79;
  *(v102 + 24) = v103;
  v104 = (boxed_opaque_existential_0 + v38[12]);
  v105 = v104[1];
  v156 = *v104;
  v106 = v38[24];
  v107 = (boxed_opaque_existential_0 + v38[23]);
  v108 = v107[1];
  v153 = *v107;
  outlined init with copy of ReferenceResolutionClientProtocol?(boxed_opaque_existential_0 + v106, v171, &_s13SiriUtilities33PersonalDomainsAuthenticationModeOSgMd, &_s13SiriUtilities33PersonalDomainsAuthenticationModeOSgMR);
  outlined init with copy of ReferenceResolutionClientProtocol?(boxed_opaque_existential_0 + v38[25], v172, &_s13SiriUtilities14BargeInContextVSgMd, &_s13SiriUtilities14BargeInContextVSgMR);
  v154 = v108;

  v109 = v79;
  v158 = v105;

  v110 = PeerInfoProvider.getPeerName()();
  inited = v110.value._countAndFlagsBits;
  object = v110.value._object;
  v111 = *&v109[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_endpointInfo];
  if (v111 && (v112 = [v111 identifier]) != 0)
  {
    v113 = v112;
    v150 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v149 = v114;
  }

  else
  {
    v150 = 0;
    v149 = 0;
  }

  (*(v174 + 16))(v173, boxed_opaque_existential_0 + v38[26], v175);
  outlined init with copy of ReferenceResolutionClientProtocol(&v194, &v191);
  v146 = v109[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isDeviceShowingLockScreen];
  v115 = type metadata accessor for DefaultDeviceState(0);
  v116 = swift_allocObject();
  v117 = OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_isHomePodGestalt;
  *(v116 + v117) = MGGetSInt32Answer() == 7;
  *(v116 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_isAppleTVGestalt) = 0;
  v118 = OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_isPhoneGestalt;
  *(v116 + v118) = MGGetSInt32Answer() == 1;
  v119 = OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_isPadGestalt;
  *(v116 + v119) = MGGetSInt32Answer() == 3;
  v120 = OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_isPodGestalt;
  *(v116 + v120) = MGGetSInt32Answer() == 2;
  *(v116 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_isXRGestalt) = 0;
  v148((v116 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_inputOrigin), v178, v180);
  (v147)(v116 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_interactionType, v179, v182);
  (*(v167 + 16))(v116 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_renderDeviceIdiom, v181, v168);
  outlined init with copy of InvocationStateImpl(v183, v116 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_multiUserState, MEMORY[0x1E69CE578]);
  v145((v116 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_siriLocale), v184, v186);
  v144((v116 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_siriVoiceGender), v185, v187);
  *(v116 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_isEyesFree) = v140;
  *(v116 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_isVoiceTriggerEnabled) = v141;
  *(v116 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_isTextToSpeechEnabled) = v142;
  *(v116 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_isDirectAction) = v143;
  v121 = v159;
  Restrictions.deviceRestrictions.getter();
  v122 = v160;
  static DeviceRestrictions.starkMode.getter();
  _s14SiriKitRuntime17ConversationActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type DeviceRestrictions and conformance DeviceRestrictions, MEMORY[0x1E69D3610], MEMORY[0x1E69D3618]);
  v123 = v162;
  LOBYTE(v120) = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v124 = *(v161 + 8);
  v124(v122, v123);
  v124(v121, v123);
  if (v120)
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v125 = static Log.executor;
    v126 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Forcing DeviceState.isLockedWithPasscode to false since isCarPlay is true", 73, 2, &dword_1DC659000, v125, v126, MEMORY[0x1E69E7CC0]);

    v127 = 0;
    v128 = getEnumTag for AffinityScore;
  }

  else
  {
    v128 = partial apply for closure #1 in ConversationTurnStateImpl.init(bridge:executionRequestId:rootRequestId:sessionId:sessionConfiguration:taskService:conversationLoggingId:invocationState:customEventSender:requestContextData:invokedByPeerToPeerEORR:rrClient:scopedRRData:);
    v127 = v155;
  }

  (*(v170 + 8))(v185, v187);
  (*(v169 + 8))(v184, v186);
  outlined destroy of InvocationStateImpl(v183, MEMORY[0x1E69CE578]);
  (*(v167 + 8))(v181, v168);
  (*(v166 + 8))(v179, v182);
  (*(v165 + 8))(v178, v180);
  v129 = (v116 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_isLockedWithPasscodeClosure);
  *v129 = v128;
  v129[1] = v127;
  v130 = (v116 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_sessionHandOffContinuityID);
  v131 = v158;
  *v130 = v156;
  v130[1] = v131;
  v132 = (v116 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_preferencesLanguageCode);
  v133 = v154;
  *v132 = v153;
  v132[1] = v133;
  outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v171, v116 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_personalDomainsAuthenticationMode, &_s13SiriUtilities33PersonalDomainsAuthenticationModeOSgMd, &_s13SiriUtilities33PersonalDomainsAuthenticationModeOSgMR);
  outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v172, v116 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_bargeInContext, &_s13SiriUtilities14BargeInContextVSgMd, &_s13SiriUtilities14BargeInContextVSgMR);
  v134 = (v116 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_peerName);
  v135 = object;
  *v134 = inited;
  v134[1] = v135;
  (*(v174 + 32))(v116 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_restrictedCommands, v173, v175);
  v136 = (v116 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_endpointId);
  v137 = v149;
  *v136 = v150;
  v136[1] = v137;
  outlined init with take of ReferenceResolutionClientProtocol(&v191, v116 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_authenticationState);
  *(v116 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_isDeviceShowingLockScreen) = v146;
  v192 = v115;
  v193 = _s14SiriKitRuntime17ConversationActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type DefaultDeviceState and conformance DefaultDeviceState, type metadata accessor for DefaultDeviceState, &protocol conformance descriptor for DefaultDeviceState);

  *&v191 = v116;
  __swift_destroy_boxed_opaque_existential_1Tm(v188);
  outlined destroy of ReferenceResolutionClientProtocol?(v164, &_s11SiriKitFlow0aB12EventSending_pSgMd, &_s11SiriKitFlow0aB12EventSending_pSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v176, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v177, &_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v163, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  __swift_destroy_boxed_opaque_existential_1Tm(&v194);
  outlined init with take of ReferenceResolutionClientProtocol(&v191, &a17[OBJC_IVAR____TtC14SiriKitRuntimeP33_FB63CECFE10715AC1233F5DEB969132D25ConversationTurnStateImpl_deviceState]);
  __swift_destroy_boxed_opaque_existential_1Tm(v197);
  return a17;
}

{
  v148 = a8;
  v177 = a7;
  object = a16;
  v164 = a15;
  v188 = a14;
  inited = a12;
  v176 = a9;
  v158 = *a17;
  v162 = type metadata accessor for DeviceRestrictions();
  v161 = *(v162 - 8);
  MEMORY[0x1EEE9AC00](v162);
  v160 = &v139 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v159 = &v139 - v25;
  v175 = type metadata accessor for Restrictions();
  v174 = *(v175 - 8);
  MEMORY[0x1EEE9AC00](v175);
  v173 = &v139 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities14BargeInContextVSgMd, &_s13SiriUtilities14BargeInContextVSgMR);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v172 = &v139 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities33PersonalDomainsAuthenticationModeOSgMd, &_s13SiriUtilities33PersonalDomainsAuthenticationModeOSgMR);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v171 = &v139 - v30;
  v187 = type metadata accessor for SiriVoiceGender();
  v170 = *(v187 - 8);
  MEMORY[0x1EEE9AC00](v187);
  v185 = &v139 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v186 = type metadata accessor for Locale();
  v169 = *(v186 - 8);
  MEMORY[0x1EEE9AC00](v186);
  v184 = &v139 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for MultiUserState();
  MEMORY[0x1EEE9AC00](v33 - 8);
  v183 = &v139 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = type metadata accessor for DeviceIdiom();
  v167 = *(v168 - 8);
  MEMORY[0x1EEE9AC00](v168);
  v181 = &v139 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v182 = type metadata accessor for InteractionType();
  v166 = *(v182 - 8);
  MEMORY[0x1EEE9AC00](v182);
  v179 = &v139 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v180 = type metadata accessor for InputOrigin();
  v165 = *(v180 - 8);
  MEMORY[0x1EEE9AC00](v180);
  v178 = &v139 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for InvocationStateImpl(0);
  MEMORY[0x1EEE9AC00](v38);
  v147 = (&v139 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  v197[3] = v40;
  v197[4] = &protocol witness table for InvocationStateImpl;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v197);
  outlined init with take of InvocationStateImpl(a10, boxed_opaque_existential_0);
  v42 = OBJC_IVAR____TtC14SiriKitRuntimeP33_FB63CECFE10715AC1233F5DEB969132D25ConversationTurnStateImpl_sessionConfiguration;
  v43 = type metadata accessor for SessionConfiguration();
  (*(*(v43 - 8) + 56))(&a17[v42], 1, 1, v43);
  *&a17[OBJC_IVAR____TtC14SiriKitRuntimeP33_FB63CECFE10715AC1233F5DEB969132D25ConversationTurnStateImpl_bridge] = a1;
  v154 = a2;
  *(a17 + 2) = a2;
  *(a17 + 3) = a3;
  v155 = a4;
  *(a17 + 4) = a4;
  *(a17 + 5) = a5;
  v163 = a6;
  outlined init with copy of ReferenceResolutionClientProtocol?(a6, &a17[OBJC_IVAR____TtC14SiriKitRuntimeP33_FB63CECFE10715AC1233F5DEB969132D25ConversationTurnStateImpl_sessionId], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  swift_beginAccess();
  v156 = a5;

  swift_unknownObjectRetain();
  v153 = a3;

  outlined assign with copy of SessionConfiguration?(v177, &a17[v42]);
  swift_endAccess();
  v44 = a1;
  v45 = object;
  outlined init with copy of ReferenceResolutionClientProtocol?(v176, &a17[OBJC_IVAR____TtC14SiriKitRuntimeP33_FB63CECFE10715AC1233F5DEB969132D25ConversationTurnStateImpl_conversationLoggingId], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v46 = type metadata accessor for SharedContextServiceImpl();
  v47 = swift_allocObject();
  *(v47 + 16) = v44;
  v48 = &a17[OBJC_IVAR____TtC14SiriKitRuntimeP33_FB63CECFE10715AC1233F5DEB969132D25ConversationTurnStateImpl_sharedContextService];
  *(v48 + 3) = v46;
  *(v48 + 4) = lazy protocol witness table accessor for type AceServiceInvokerImpl and conformance AceServiceInvokerImpl(&lazy protocol witness table cache variable for type SharedContextServiceImpl and conformance SharedContextServiceImpl, type metadata accessor for SharedContextServiceImpl, &protocol conformance descriptor for SharedContextServiceImpl);
  *v48 = v47;
  v49 = v164;
  v50 = inited;
  outlined init with copy of ReferenceResolutionClientProtocol(v197, &a17[OBJC_IVAR____TtC14SiriKitRuntimeP33_FB63CECFE10715AC1233F5DEB969132D25ConversationTurnStateImpl_invocationState]);
  *&a17[OBJC_IVAR____TtC14SiriKitRuntimeP33_FB63CECFE10715AC1233F5DEB969132D25ConversationTurnStateImpl_requestContextData] = v50;
  v51 = &a17[OBJC_IVAR____TtC14SiriKitRuntimeP33_FB63CECFE10715AC1233F5DEB969132D25ConversationTurnStateImpl_scopedRRData];
  *v51 = v49;
  *(v51 + 1) = v45;
  v52 = *(boxed_opaque_existential_0 + v38[20]);
  if (v52)
  {
    swift_unknownObjectRetain();
    v53 = v50;
    outlined copy of Data?(v49, v45);
    v54 = [v52 runLocation];
    if (v54)
    {
      v55 = v54;
      v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v58 = v57;

      v54 = v56;
      goto LABEL_6;
    }
  }

  else
  {
    swift_unknownObjectRetain();
    v59 = v50;
    outlined copy of Data?(v49, v45);
    v54 = 0;
  }

  v58 = 0;
LABEL_6:
  v164 = a11;
  LODWORD(object) = a13;
  LODWORD(v150) = specialized static RunLocation.convert(aceRunLocation:)(v54, v58);

  v157 = v44;
  if (v52)
  {
    v60 = [v52 invocationDeviceAssistantId];
    if (v60)
    {
      v61 = v60;
      v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v64 = v63;
    }

    else
    {
      v62 = 0;
      v64 = 0;
    }

    v67 = [v52 executionDeviceAssistantId];
    v65 = v50;
    if (v67)
    {
      v68 = v67;
      v149 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v66 = v69;
    }

    else
    {
      v149 = 0;
      v66 = 0;
    }
  }

  else
  {
    v65 = v50;
    v149 = 0;
    v66 = 0;
    v62 = 0;
    v64 = 0;
  }

  outlined init with copy of ReferenceResolutionClientProtocol(v188, &v194);
  type metadata accessor for AceServiceInvokerImpl();
  v70 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCySbSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCySbSo16os_unfair_lock_sVGMR);
  v71 = swift_allocObject();
  *(v71 + 20) = 0;
  *(v71 + 16) = 0;
  *(v70 + 152) = v71;
  type metadata accessor for SubmissionTaskRegistry();
  v72 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyShyScTySo13SABaseCommandCSgs5Error_pGGSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyShyScTySo13SABaseCommandCSgs5Error_pGGSo16os_unfair_lock_sVGMR);
  v73 = swift_allocObject();
  *(v73 + 24) = 0;
  *(v73 + 16) = MEMORY[0x1E69E7CD0];
  *(v72 + 16) = v73;
  *(v70 + 160) = v72;
  v74 = swift_allocObject();
  *(v74 + 20) = 0;
  *(v74 + 16) = 0;
  *(v70 + 168) = v74;
  *(v70 + 16) = v157;
  v75 = v155;
  *(v70 + 48) = v153;
  *(v70 + 56) = v75;
  v76 = v154;
  *(v70 + 32) = v65;
  *(v70 + 40) = v76;
  *(v70 + 24) = v150 & 1;
  *(v70 + 64) = v156;
  *(v70 + 72) = v62;
  v77 = v149;
  *(v70 + 80) = v64;
  *(v70 + 88) = v77;
  *(v70 + 96) = v66;
  *(v70 + 104) = object & 1;
  outlined init with copy of ReferenceResolutionClientProtocol?(&v194, &v189, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMd, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMR);
  v78 = v190;
  swift_unknownObjectRetain();
  v79 = v65;
  if (v78)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(&v194, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMd, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMR);
    outlined init with take of ReferenceResolutionClientProtocol(&v189, &v191);
  }

  else
  {
    outlined destroy of ReferenceResolutionClientProtocol?(&v189, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMd, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMR);
    v80 = type metadata accessor for ReferenceResolutionClient();
    v81 = ReferenceResolutionClient.__allocating_init()();
    v192 = v80;
    v193 = MEMORY[0x1E69D01B0];
    *&v191 = v81;
    outlined destroy of ReferenceResolutionClientProtocol?(&v194, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMd, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMR);
  }

  outlined init with take of ReferenceResolutionClientProtocol(&v191, v70 + 112);
  v82 = OBJC_IVAR____TtC14SiriKitRuntimeP33_FB63CECFE10715AC1233F5DEB969132D25ConversationTurnStateImpl_aceServiceInvoker;
  *&a17[OBJC_IVAR____TtC14SiriKitRuntimeP33_FB63CECFE10715AC1233F5DEB969132D25ConversationTurnStateImpl_aceServiceInvoker] = v70;
  outlined init with copy of ReferenceResolutionClientProtocol?(v164, &v191, &_s11SiriKitFlow0aB12EventSending_pSgMd, &_s11SiriKitFlow0aB12EventSending_pSgMR);
  if (v192)
  {
    outlined init with take of ReferenceResolutionClientProtocol(&v191, &v194);
  }

  else
  {
    outlined init with copy of ReferenceResolutionClientProtocol(v197, &v194);
    v83 = __swift_mutable_project_boxed_opaque_existential_1(&v194, v195);
    v157 = &v139;
    v84 = MEMORY[0x1EEE9AC00](v83);
    v86 = &v139 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v87 + 16))(v86, v84);
    v88 = type metadata accessor for InvocationScopedSiriKitEventSender();
    v89 = swift_allocObject();
    v90 = v147;
    outlined init with take of InvocationStateImpl(v86, v147);
    v91 = v148;

    v93 = specialized InvocationScopedSiriKitEventSender.init(aceServiceInvoker:taskService:invocationState:)(v92, v91, v90, v89);
    __swift_destroy_boxed_opaque_existential_1Tm(&v194);
    v195 = v88;
    v196 = lazy protocol witness table accessor for type AceServiceInvokerImpl and conformance AceServiceInvokerImpl(&lazy protocol witness table cache variable for type InvocationScopedSiriKitEventSender and conformance InvocationScopedSiriKitEventSender, type metadata accessor for InvocationScopedSiriKitEventSender, &protocol conformance descriptor for InvocationScopedSiriKitEventSender);
    *&v194 = v93;
    if (v192)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(&v191, &_s11SiriKitFlow0aB12EventSending_pSgMd, &_s11SiriKitFlow0aB12EventSending_pSgMR);
    }
  }

  outlined init with take of ReferenceResolutionClientProtocol(&v194, &a17[OBJC_IVAR____TtC14SiriKitRuntimeP33_FB63CECFE10715AC1233F5DEB969132D25ConversationTurnStateImpl_eventSender]);
  outlined init with copy of ReferenceResolutionClientProtocol(v188, &a17[OBJC_IVAR____TtC14SiriKitRuntimeP33_FB63CECFE10715AC1233F5DEB969132D25ConversationTurnStateImpl_rrClient]);
  static AuthenticationStateImpl.from(invocationState:)(v197, &v194);
  v94 = *(*(*&a17[v82] + 32) + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_peerInfo);
  type metadata accessor for PeerInfoProvider();
  inited = swift_initStackObject();
  *(inited + 16) = v94;
  v95 = boxed_opaque_existential_0 + v38[6];
  v148 = *(v165 + 16);
  v148(v178, v95, v180);
  v96 = boxed_opaque_existential_0 + v38[7];
  v147 = *(v166 + 16);
  (v147)(v179, v96, v182);
  v157 = v94;
  if (v94 && (v97 = [v94 userInterfaceIdiom]) != 0)
  {
    v98 = v97;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    DeviceIdiom.init(aceValue:)();
  }

  else
  {
    type metadata accessor for SiriEnvironment();
    static SiriEnvironment.default.getter();
    SiriEnvironment.currentDevice.getter();

    CurrentDevice.localDeviceIdiom.getter();
  }

  outlined init with copy of MultiUserState(boxed_opaque_existential_0 + v38[11], v183);
  v99 = boxed_opaque_existential_0 + v38[18];
  v145 = *(v169 + 16);
  v145(v184, v99, v186);
  v100 = boxed_opaque_existential_0 + v38[19];
  v144 = *(v170 + 16);
  v144(v185, v100, v187);
  v101 = v38[14];
  v140 = *(boxed_opaque_existential_0 + v38[13]);
  v141 = *(boxed_opaque_existential_0 + v101);
  v142 = *(boxed_opaque_existential_0 + v38[15]);
  v143 = *(boxed_opaque_existential_0 + v38[17]);
  v102 = swift_allocObject();
  v103 = v158;
  v155 = v102;
  *(v102 + 16) = v79;
  *(v102 + 24) = v103;
  v104 = (boxed_opaque_existential_0 + v38[12]);
  v105 = v104[1];
  v156 = *v104;
  v106 = v38[24];
  v107 = (boxed_opaque_existential_0 + v38[23]);
  v108 = v107[1];
  v153 = *v107;
  outlined init with copy of ReferenceResolutionClientProtocol?(boxed_opaque_existential_0 + v106, v171, &_s13SiriUtilities33PersonalDomainsAuthenticationModeOSgMd, &_s13SiriUtilities33PersonalDomainsAuthenticationModeOSgMR);
  outlined init with copy of ReferenceResolutionClientProtocol?(boxed_opaque_existential_0 + v38[25], v172, &_s13SiriUtilities14BargeInContextVSgMd, &_s13SiriUtilities14BargeInContextVSgMR);
  v154 = v108;

  v109 = v79;
  v158 = v105;

  v110 = PeerInfoProvider.getPeerName()();
  inited = v110.value._countAndFlagsBits;
  object = v110.value._object;
  v111 = *&v109[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_endpointInfo];
  if (v111 && (v112 = [v111 identifier]) != 0)
  {
    v113 = v112;
    v150 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v149 = v114;
  }

  else
  {
    v150 = 0;
    v149 = 0;
  }

  (*(v174 + 16))(v173, boxed_opaque_existential_0 + v38[26], v175);
  outlined init with copy of ReferenceResolutionClientProtocol(&v194, &v191);
  v146 = v109[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isDeviceShowingLockScreen];
  v115 = type metadata accessor for DefaultDeviceState(0);
  v116 = swift_allocObject();
  v117 = OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_isHomePodGestalt;
  *(v116 + v117) = MGGetSInt32Answer() == 7;
  *(v116 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_isAppleTVGestalt) = 0;
  v118 = OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_isPhoneGestalt;
  *(v116 + v118) = MGGetSInt32Answer() == 1;
  v119 = OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_isPadGestalt;
  *(v116 + v119) = MGGetSInt32Answer() == 3;
  v120 = OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_isPodGestalt;
  *(v116 + v120) = MGGetSInt32Answer() == 2;
  *(v116 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_isXRGestalt) = 0;
  v148((v116 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_inputOrigin), v178, v180);
  (v147)(v116 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_interactionType, v179, v182);
  (*(v167 + 16))(v116 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_renderDeviceIdiom, v181, v168);
  outlined init with copy of MultiUserState(v183, v116 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_multiUserState);
  v145((v116 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_siriLocale), v184, v186);
  v144((v116 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_siriVoiceGender), v185, v187);
  *(v116 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_isEyesFree) = v140;
  *(v116 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_isVoiceTriggerEnabled) = v141;
  *(v116 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_isTextToSpeechEnabled) = v142;
  *(v116 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_isDirectAction) = v143;
  v121 = v159;
  Restrictions.deviceRestrictions.getter();
  v122 = v160;
  static DeviceRestrictions.starkMode.getter();
  lazy protocol witness table accessor for type AceServiceInvokerImpl and conformance AceServiceInvokerImpl(&lazy protocol witness table cache variable for type DeviceRestrictions and conformance DeviceRestrictions, MEMORY[0x1E69D3610], MEMORY[0x1E69D3618]);
  v123 = v162;
  LOBYTE(v120) = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v124 = *(v161 + 8);
  v124(v122, v123);
  v124(v121, v123);
  if (v120)
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v125 = static Log.executor;
    v126 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Forcing DeviceState.isLockedWithPasscode to false since isCarPlay is true", 73, 2, &dword_1DC659000, v125, v126, MEMORY[0x1E69E7CC0]);

    v127 = 0;
    v128 = getEnumTag for AffinityScore;
  }

  else
  {
    v128 = closure #1 in ConversationTurnStateImpl.init(bridge:executionRequestId:rootRequestId:sessionId:sessionConfiguration:taskService:conversationLoggingId:invocationState:customEventSender:requestContextData:invokedByPeerToPeerEORR:rrClient:scopedRRData:)partial apply;
    v127 = v155;
  }

  (*(v170 + 8))(v185, v187);
  (*(v169 + 8))(v184, v186);
  outlined destroy of MultiUserState(v183);
  (*(v167 + 8))(v181, v168);
  (*(v166 + 8))(v179, v182);
  (*(v165 + 8))(v178, v180);
  v129 = (v116 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_isLockedWithPasscodeClosure);
  *v129 = v128;
  v129[1] = v127;
  v130 = (v116 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_sessionHandOffContinuityID);
  v131 = v158;
  *v130 = v156;
  v130[1] = v131;
  v132 = (v116 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_preferencesLanguageCode);
  v133 = v154;
  *v132 = v153;
  v132[1] = v133;
  outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v171, v116 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_personalDomainsAuthenticationMode, &_s13SiriUtilities33PersonalDomainsAuthenticationModeOSgMd, &_s13SiriUtilities33PersonalDomainsAuthenticationModeOSgMR);
  outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v172, v116 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_bargeInContext, &_s13SiriUtilities14BargeInContextVSgMd, &_s13SiriUtilities14BargeInContextVSgMR);
  v134 = (v116 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_peerName);
  v135 = object;
  *v134 = inited;
  v134[1] = v135;
  (*(v174 + 32))(v116 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_restrictedCommands, v173, v175);
  v136 = (v116 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_endpointId);
  v137 = v149;
  *v136 = v150;
  v136[1] = v137;
  outlined init with take of ReferenceResolutionClientProtocol(&v191, v116 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_authenticationState);
  *(v116 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_isDeviceShowingLockScreen) = v146;
  v192 = v115;
  v193 = lazy protocol witness table accessor for type AceServiceInvokerImpl and conformance AceServiceInvokerImpl(&lazy protocol witness table cache variable for type DefaultDeviceState and conformance DefaultDeviceState, type metadata accessor for DefaultDeviceState, &protocol conformance descriptor for DefaultDeviceState);

  *&v191 = v116;
  __swift_destroy_boxed_opaque_existential_1Tm(v188);
  outlined destroy of ReferenceResolutionClientProtocol?(v164, &_s11SiriKitFlow0aB12EventSending_pSgMd, &_s11SiriKitFlow0aB12EventSending_pSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v176, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v177, &_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v163, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  __swift_destroy_boxed_opaque_existential_1Tm(&v194);
  outlined init with take of ReferenceResolutionClientProtocol(&v191, &a17[OBJC_IVAR____TtC14SiriKitRuntimeP33_FB63CECFE10715AC1233F5DEB969132D25ConversationTurnStateImpl_deviceState]);
  __swift_destroy_boxed_opaque_existential_1Tm(v197);
  return a17;
}

uint64_t sub_1DC6C135C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t outlined init with take of InvocationStateImpl(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InvocationStateImpl(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with copy of SessionConfiguration?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t specialized static RunLocation.convert(aceRunLocation:)(uint64_t a1, void *a2)
{
  if (!a2)
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v7 = static Log.executor;
    v8 = static os_log_type_t.info.getter();
    os_log(_:dso:log:type:_:)("RunLocation called with aceRunLocation='<NIL>'. Default to .invocationDevice", 76, 2, &dword_1DC659000, v7, v8, MEMORY[0x1E69E7CC0]);
    return 0;
  }

  v4._countAndFlagsBits = a1;
  v4._object = a2;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of RunLocation.init(rawValue:), v4);
  if (!v5)
  {
    v6 = 0;
    goto LABEL_9;
  }

  if (v5 != 1)
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1DCA66060;
    *(v12 + 56) = MEMORY[0x1E69E6158];
    *(v12 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v12 + 32) = a1;
    *(v12 + 40) = a2;
    os_log(_:dso:log:type:_:)("RunLocation failed to convert aceRunLocation='%s'. Default to .invocationDevice", v14);

    return 0;
  }

  v6 = 1;
LABEL_9:
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v9 = static Log.executor;
  v10 = static os_log_type_t.info.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1DCA66060;
  *(v11 + 56) = MEMORY[0x1E69E6158];
  *(v11 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v11 + 32) = a1;
  *(v11 + 40) = a2;
  os_log(_:dso:log:type:_:)("RunLocation called with aceRunLocation=''.", 42, 2, &dword_1DC659000, v9, v10, v11);

  return v6;
}

uint64_t specialized InvocationScopedSiriKitEventSender.init(aceServiceInvoker:taskService:invocationState:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for SiriKitEventContext();
  v8 = swift_allocObject();
  v25[3] = type metadata accessor for AceServiceInvokerImpl();
  v25[4] = _s14SiriKitRuntime17ConversationActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type AceServiceInvokerImpl and conformance AceServiceInvokerImpl, type metadata accessor for AceServiceInvokerImpl, &protocol conformance descriptor for AceServiceInvokerImpl);
  v25[0] = a1;
  v8[2] = 0;
  v8[3] = 0;
  outlined init with copy of ReferenceResolutionClientProtocol(v25, (v8 + 4));
  v8[9] = a2;
  v9 = type metadata accessor for InvocationStateImpl(0);
  v10 = (a3 + *(v9 + 84));
  v11 = v10[1];
  v8[10] = *v10;
  v8[11] = v11;
  v12 = (a3 + *(v9 + 88));
  v14 = *v12;
  v13 = v12[1];

  outlined destroy of InvocationStateImpl(a3, type metadata accessor for InvocationStateImpl);
  __swift_destroy_boxed_opaque_existential_1Tm(v25);
  v8[12] = v14;
  v8[13] = v13;
  *(a4 + 16) = v8;
  if (one-time initialization token for instrumentation != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, static Logger.instrumentation);

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v25[0] = v19;
    *v18 = 136315138;

    v20 = SiriKitEventContext.description.getter();
    v22 = v21;

    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, v25);

    *(v18 + 4) = v23;
    _os_log_impl(&dword_1DC659000, v16, v17, "InternalSiriKitEventSender ready with: %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    MEMORY[0x1E12A2F50](v19, -1, -1);
    MEMORY[0x1E12A2F50](v18, -1, -1);
  }

  return a4;
}

char *initializeBufferWithCopyOfBuffer for InvocationStateImpl(char *a1, char *a2, int *a3)
{
  v4 = a1;
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v18 = *a2;
    *v4 = *a2;
    v4 = (v18 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 1) = v7;
    v8 = *(a2 + 3);
    *(a1 + 2) = *(a2 + 2);
    *(a1 + 3) = v8;
    v9 = a3[6];
    v10 = type metadata accessor for InputOrigin();
    v11 = *(*(v10 - 8) + 16);

    v11(&v4[v9], &a2[v9], v10);
    v12 = a3[7];
    v13 = type metadata accessor for InteractionType();
    (*(*(v13 - 8) + 16))(&v4[v12], &a2[v12], v13);
    v14 = a3[8];
    v15 = type metadata accessor for AudioSource();
    v16 = *(v15 - 8);
    if ((*(v16 + 48))(&a2[v14], 1, v15))
    {
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
      memcpy(&v4[v14], &a2[v14], *(*(v17 - 8) + 64));
    }

    else
    {
      (*(v16 + 16))(&v4[v14], &a2[v14], v15);
      (*(v16 + 56))(&v4[v14], 0, 1, v15);
    }

    v19 = a3[9];
    v20 = type metadata accessor for AudioDestination();
    v21 = *(v20 - 8);
    if ((*(v21 + 48))(&a2[v19], 1, v20))
    {
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
      memcpy(&v4[v19], &a2[v19], *(*(v22 - 8) + 64));
    }

    else
    {
      (*(v21 + 16))(&v4[v19], &a2[v19], v20);
      (*(v21 + 56))(&v4[v19], 0, 1, v20);
    }

    v23 = a3[10];
    v24 = type metadata accessor for ResponseMode();
    (*(*(v24 - 8) + 16))(&v4[v23], &a2[v23], v24);
    v25 = a3[11];
    v26 = type metadata accessor for MultiUserContext();
    v27 = *(v26 - 8);
    if ((*(v27 + 48))(&a2[v25], 1, v26))
    {
      v28 = type metadata accessor for MultiUserState();
      memcpy(&v4[v25], &a2[v25], *(*(v28 - 8) + 64));
    }

    else
    {
      (*(v27 + 16))(&v4[v25], &a2[v25], v26);
      (*(v27 + 56))(&v4[v25], 0, 1, v26);
    }

    v29 = a3[12];
    v30 = a3[13];
    v31 = &v4[v29];
    v32 = &a2[v29];
    v33 = *(v32 + 1);
    *v31 = *v32;
    *(v31 + 1) = v33;
    v4[v30] = a2[v30];
    v34 = a3[15];
    v4[a3[14]] = a2[a3[14]];
    v4[v34] = a2[v34];
    v35 = a3[17];
    v4[a3[16]] = a2[a3[16]];
    v4[v35] = a2[v35];
    v36 = a3[18];
    v37 = type metadata accessor for Locale();
    v38 = *(*(v37 - 8) + 16);

    v38(&v4[v36], &a2[v36], v37);
    v39 = a3[19];
    v40 = type metadata accessor for SiriVoiceGender();
    (*(*(v40 - 8) + 16))(&v4[v39], &a2[v39], v40);
    v41 = a3[20];
    v42 = a3[21];
    v78 = *&a2[v41];
    *&v4[v41] = v78;
    v43 = &v4[v42];
    v44 = &a2[v42];
    v45 = *(v44 + 1);
    *v43 = *v44;
    *(v43 + 1) = v45;
    v46 = a3[22];
    v47 = a3[23];
    v48 = &v4[v46];
    v49 = &a2[v46];
    v50 = *(v49 + 1);
    *v48 = *v49;
    *(v48 + 1) = v50;
    v51 = &v4[v47];
    v52 = &a2[v47];
    v53 = *(v52 + 1);
    *v51 = *v52;
    *(v51 + 1) = v53;
    v54 = a3[24];
    v55 = type metadata accessor for PersonalDomainsAuthenticationMode();
    v56 = *(v55 - 8);
    v77 = *(v56 + 48);
    v57 = v78;

    if (v77(&a2[v54], 1, v55))
    {
      v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities33PersonalDomainsAuthenticationModeOSgMd, &_s13SiriUtilities33PersonalDomainsAuthenticationModeOSgMR);
      memcpy(&v4[v54], &a2[v54], *(*(v58 - 8) + 64));
    }

    else
    {
      (*(v56 + 16))(&v4[v54], &a2[v54], v55);
      (*(v56 + 56))(&v4[v54], 0, 1, v55);
    }

    v59 = a3[25];
    v60 = type metadata accessor for BargeInContext();
    v61 = *(v60 - 8);
    if ((*(v61 + 48))(&a2[v59], 1, v60))
    {
      v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities14BargeInContextVSgMd, &_s13SiriUtilities14BargeInContextVSgMR);
      memcpy(&v4[v59], &a2[v59], *(*(v62 - 8) + 64));
    }

    else
    {
      (*(v61 + 16))(&v4[v59], &a2[v59], v60);
      (*(v61 + 56))(&v4[v59], 0, 1, v60);
    }

    v63 = a3[26];
    v64 = type metadata accessor for Restrictions();
    (*(*(v64 - 8) + 16))(&v4[v63], &a2[v63], v64);
    v65 = a3[27];
    v66 = type metadata accessor for HomeInfo();
    v67 = *(v66 - 8);
    if ((*(v67 + 48))(&a2[v65], 1, v66))
    {
      v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities8HomeInfoVSgMd, &_s13SiriUtilities8HomeInfoVSgMR);
      memcpy(&v4[v65], &a2[v65], *(*(v68 - 8) + 64));
    }

    else
    {
      (*(v67 + 16))(&v4[v65], &a2[v65], v66);
      (*(v67 + 56))(&v4[v65], 0, 1, v66);
    }

    v69 = a3[28];
    v70 = a3[29];
    v71 = &v4[v69];
    v72 = &a2[v69];
    v73 = *(v72 + 1);
    *v71 = *v72;
    *(v71 + 1) = v73;
    *&v4[v70] = *&a2[v70];
    v74 = a3[31];
    *&v4[a3[30]] = *&a2[a3[30]];
    v4[v74] = a2[v74];
    v75 = a3[33];
    v4[a3[32]] = a2[a3[32]];
    v4[v75] = a2[v75];
  }

  return v4;
}

uint64_t outlined destroy of InvocationStateImpl(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t static AuthenticationStateImpl.from(invocationState:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v3 = type metadata accessor for DeviceRestrictions();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v28 - v8;
  v11 = a1[3];
  v10 = a1[4];
  v12 = __swift_project_boxed_opaque_existential_1(a1, v11);
  v13 = *(v10 + 184);
  v28 = v12;
  v29 = v13;
  v13(v11, v10);
  static DeviceRestrictions.unauthenticatedByWatchProximity.getter();
  lazy protocol witness table accessor for type DeviceRestrictions and conformance DeviceRestrictions();
  v30 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v14 = *(v4 + 8);
  v14(v6, v3);
  v14(v9, v3);
  v29(v11, v10);
  static DeviceRestrictions.unauthenticatedByHeadphonesState.getter();
  v15 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v14(v6, v3);
  v14(v9, v3);
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static Logger.executor);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();
  v19 = os_log_type_enabled(v17, v18);
  v20 = v30;
  if (v19)
  {
    v21 = swift_slowAlloc();
    *v21 = 67109120;
    *(v21 + 4) = (v20 & 1) == 0;
    _os_log_impl(&dword_1DC659000, v17, v18, "Is watch authenticated? %{BOOL}d", v21, 8u);
    MEMORY[0x1E12A2F50](v21, -1, -1);
  }

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 67109120;
    v25 = v15 ^ 1;
    *(v24 + 4) = (v15 ^ 1) & 1;
    _os_log_impl(&dword_1DC659000, v22, v23, "Is headphones authenticated? %{BOOL}d", v24, 8u);
    MEMORY[0x1E12A2F50](v24, -1, -1);
  }

  else
  {

    v25 = v15 ^ 1;
  }

  v26 = v31;
  *(v31 + 24) = &type metadata for AuthenticationStateImpl;
  result = lazy protocol witness table accessor for type AuthenticationStateImpl and conformance AuthenticationStateImpl();
  *(v26 + 32) = result;
  *v26 = (v20 & 1) == 0;
  *(v26 + 1) = v25 & 1;
  return result;
}

Swift::String_optional __swiftcall PeerInfoProvider.getPeerName()()
{
  v1 = *(v0 + 16);
  if (!v1)
  {
    goto LABEL_8;
  }

  v1 = [v1 name];
  if (!v1)
  {
    goto LABEL_8;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v6 = v5;
  v7 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v7 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v7)
  {

    v1 = 0;
LABEL_8:
    v6 = 0;
    goto LABEL_9;
  }

  v1 = v3;
LABEL_9:
  result.value._object = v6;
  result.value._countAndFlagsBits = v1;
  return result;
}

uint64_t type metadata accessor for DefaultDeviceState(uint64_t a1)
{
  result = type metadata singleton initialization cache for DefaultDeviceState;
  if (!type metadata singleton initialization cache for DefaultDeviceState)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AuthenticationStateImpl and conformance AuthenticationStateImpl()
{
  result = lazy protocol witness table cache variable for type AuthenticationStateImpl and conformance AuthenticationStateImpl;
  if (!lazy protocol witness table cache variable for type AuthenticationStateImpl and conformance AuthenticationStateImpl)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AuthenticationStateImpl and conformance AuthenticationStateImpl);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type AceServiceInvokerImpl and conformance AceServiceInvokerImpl(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t protocol witness for SiriKitCommandHandler.deviceState.getter in conformance ConversationTurnStateImpl.CommandHandler()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 48);
  __swift_project_boxed_opaque_existential_1((*v0 + 16), v1);
  return (*(v2 + 56))(v1, v2);
}

uint64_t protocol witness for SiriKitCommandHandler.aceServiceInvoker.getter in conformance ConversationTurnStateImpl.CommandHandler@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 48);
  __swift_project_boxed_opaque_existential_1((*v1 + 16), v3);
  v5 = (*(v4 + 64))(v3, v4);
  a1[3] = type metadata accessor for AceServiceInvokerImpl();
  result = lazy protocol witness table accessor for type AceServiceInvokerImpl and conformance AceServiceInvokerImpl(&lazy protocol witness table cache variable for type AceServiceInvokerImpl and conformance AceServiceInvokerImpl, type metadata accessor for AceServiceInvokerImpl, &protocol conformance descriptor for AceServiceInvokerImpl);
  a1[4] = result;
  *a1 = v5;
  return result;
}

uint64_t protocol witness for SiriKitCommandHandler.sharedContextService.getter in conformance ConversationTurnStateImpl.CommandHandler()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 48);
  __swift_project_boxed_opaque_existential_1((*v0 + 16), v1);
  return (*(v2 + 72))(v1, v2);
}

uint64_t protocol witness for SiriKitCommandHandler.eventSender.getter in conformance ConversationTurnStateImpl.CommandHandler()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 48);
  __swift_project_boxed_opaque_existential_1((*v0 + 16), v1);
  return (*(v2 + 80))(v1, v2);
}

uint64_t protocol witness for SiriKitCommandHandler.flowContextPublisher.getter in conformance ConversationTurnStateImpl.CommandHandler()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 48);
  __swift_project_boxed_opaque_existential_1((*v0 + 16), v1);
  v3 = (*(v2 + 64))(v1, v2);
  lazy protocol witness table accessor for type AceServiceInvokerImpl and conformance AceServiceInvokerImpl(&lazy protocol witness table cache variable for type AceServiceInvokerImpl and conformance AceServiceInvokerImpl, type metadata accessor for AceServiceInvokerImpl, &protocol conformance descriptor for AceServiceInvokerImpl);
  return v3;
}

uint64_t ConversationTurnStateImpl.CommandHandler.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t ConversationTurnStateImpl.__deallocating_deinit()
{
  ConversationTurnStateImpl.deinit();

  return swift_deallocClassInstance();
}

uint64_t ConversationTurnStateImpl.deinit()
{

  outlined destroy of ReferenceResolutionClientProtocol?(v0 + OBJC_IVAR____TtC14SiriKitRuntimeP33_FB63CECFE10715AC1233F5DEB969132D25ConversationTurnStateImpl_sessionId, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v0 + OBJC_IVAR____TtC14SiriKitRuntimeP33_FB63CECFE10715AC1233F5DEB969132D25ConversationTurnStateImpl_sessionConfiguration, &_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v0 + OBJC_IVAR____TtC14SiriKitRuntimeP33_FB63CECFE10715AC1233F5DEB969132D25ConversationTurnStateImpl_conversationLoggingId, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC14SiriKitRuntimeP33_FB63CECFE10715AC1233F5DEB969132D25ConversationTurnStateImpl_invocationState));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC14SiriKitRuntimeP33_FB63CECFE10715AC1233F5DEB969132D25ConversationTurnStateImpl_sharedContextService));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC14SiriKitRuntimeP33_FB63CECFE10715AC1233F5DEB969132D25ConversationTurnStateImpl_eventSender));

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC14SiriKitRuntimeP33_FB63CECFE10715AC1233F5DEB969132D25ConversationTurnStateImpl_deviceState));

  outlined consume of Data?(*(v0 + OBJC_IVAR____TtC14SiriKitRuntimeP33_FB63CECFE10715AC1233F5DEB969132D25ConversationTurnStateImpl_scopedRRData), *(v0 + OBJC_IVAR____TtC14SiriKitRuntimeP33_FB63CECFE10715AC1233F5DEB969132D25ConversationTurnStateImpl_scopedRRData + 8));
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC14SiriKitRuntimeP33_FB63CECFE10715AC1233F5DEB969132D25ConversationTurnStateImpl_rrClient));
  return v0;
}

uint64_t DefaultDeviceState.__deallocating_deinit()
{
  DefaultDeviceState.deinit();

  return swift_deallocClassInstance();
}

uint64_t outlined destroy of MultiUserState(uint64_t a1)
{
  v2 = type metadata accessor for MultiUserState();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t PeerInfoProvider.getDeviceIdiom()()
{
  v1 = *(v0 + 16);
  if (v1 && (v2 = [v1 userInterfaceIdiom]) != 0)
  {
    v3 = v2;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    return DeviceIdiom.init(aceValue:)();
  }

  else
  {
    type metadata accessor for SiriEnvironment();
    static SiriEnvironment.default.getter();
    SiriEnvironment.currentDevice.getter();

    CurrentDevice.localDeviceIdiom.getter();
  }
}

uint64_t TaskLoggingEventSink.SiriKitEventMetricsState.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t DefaultDeviceState.deinit()
{
  v1 = OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_inputOrigin;
  v2 = type metadata accessor for InputOrigin();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_interactionType;
  v4 = type metadata accessor for InteractionType();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  outlined destroy of MultiUserState(v0 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_multiUserState);
  v5 = OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_siriLocale;
  v6 = type metadata accessor for Locale();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_siriVoiceGender;
  v8 = type metadata accessor for SiriVoiceGender();
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v9 = OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_renderDeviceIdiom;
  v10 = type metadata accessor for DeviceIdiom();
  (*(*(v10 - 8) + 8))(v0 + v9, v10);

  outlined destroy of ReferenceResolutionClientProtocol?(v0 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_personalDomainsAuthenticationMode, &_s13SiriUtilities33PersonalDomainsAuthenticationModeOSgMd, &_s13SiriUtilities33PersonalDomainsAuthenticationModeOSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v0 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_bargeInContext, &_s13SiriUtilities14BargeInContextVSgMd, &_s13SiriUtilities14BargeInContextVSgMR);

  v11 = OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_restrictedCommands;
  v12 = type metadata accessor for Restrictions();
  (*(*(v12 - 8) + 8))(v0 + v11, v12);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC14SiriKitRuntime18DefaultDeviceState_authenticationState));

  return v0;
}

uint64_t protocol witness for SiriKitEventSending.sendAsync(_:) in conformance InvocationScopedSiriKitEventSender(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return InvocationScopedSiriKitEventSender.sendAsync(_:)(a1);
}

uint64_t InvocationScopedSiriKitEventSender.sendAsync(_:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for SiriKitEventOverrides();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0aB14EventOverridesVSgMd, &_s11SiriKitFlow0aB14EventOverridesVSgMR);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v4 = type metadata accessor for OSSignpostID();
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](InvocationScopedSiriKitEventSender.sendAsync(_:), 0, 0);
}

uint64_t static SiriSuggestionsBrokerProvider.bootStrapSuggestionsBrokerProvider()()
{
  *(v1 + 16) = v0;
  return MEMORY[0x1EEE6DFA0](static SiriSuggestionsBrokerProvider.bootStrapSuggestionsBrokerProvider(), 0, 0);
}

{
  v1 = v0[2];
  type metadata accessor for SiriSuggestionsBrokerProvider();
  v0[3] = static SiriSuggestionsBrokerProvider.instance.getter();
  v2 = swift_allocObject();
  v0[4] = v2;
  *(v2 + 16) = v1;
  lazy protocol witness table accessor for type SiriSuggestionsBrokerProvider and conformance SiriSuggestionsBrokerProvider(&lazy protocol witness table cache variable for type SiriSuggestionsBrokerProvider and conformance SiriSuggestionsBrokerProvider, MEMORY[0x1E69CFA60], MEMORY[0x1E69CFA68]);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](static SiriSuggestionsBrokerProvider.bootStrapSuggestionsBrokerProvider(), v4, v3);
}

{
  dispatch thunk of SiriSuggestionsBrokerProvider.initialize(initialize:postInit:)();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t lazy protocol witness table accessor for type SiriSuggestionsBrokerProvider and conformance SiriSuggestionsBrokerProvider(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t closure #1 in static AsyncTaskUtils.taskWithCatchingCompletion(completion:do:)()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = closure #1 in static AsyncTaskUtils.taskWithCatchingCompletion(completion:do:);
  }

  else
  {
    v2 = closure #1 in static AsyncTaskUtils.taskWithCatchingCompletion(completion:do:);
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

  v4 = v0[1];

  return v4();
}

uint64_t partial apply for specialized closure #2 in ManagedContinuation.updateState(continuation:result:)()
{
  return partial apply for specialized closure #2 in ManagedContinuation.updateState(continuation:result:)(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR, specialized closure #2 in ManagedContinuation.updateState(continuation:result:));
}

{
  return partial apply for specialized closure #2 in ManagedContinuation.updateState(continuation:result:)(&_sScCySo13SABaseCommandCSgs5Error_pGMd, &_sScCySo13SABaseCommandCSgs5Error_pGMR, specialized closure #2 in ManagedContinuation.updateState(continuation:result:));
}

{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14SiriKitRuntime18RemoteConversation_pSgs5Error_pGMd, &_sScCy14SiriKitRuntime18RemoteConversation_pSgs5Error_pGMR) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);

  return specialized closure #2 in ManagedContinuation.updateState(continuation:result:)(v0 + v2, v3);
}

uint64_t specialized closure #2 in ManagedContinuation.updateState(continuation:result:)(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 8))
  {
    v2 = *a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
    return CheckedContinuation.resume(returning:)();
  }
}

{
  v2 = *a2;
  if (*(a2 + 8))
  {
    v3 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo13SABaseCommandCSgs5Error_pGMd, &_sScCySo13SABaseCommandCSgs5Error_pGMR);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    v5 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo13SABaseCommandCSgs5Error_pGMd, &_sScCySo13SABaseCommandCSgs5Error_pGMR);
    return CheckedContinuation.resume(returning:)();
  }
}

{
  if (*(a2 + 16))
  {
    v2 = *a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14SiriKitRuntime18RemoteConversation_pSgs5Error_pGMd, &_sScCy14SiriKitRuntime18RemoteConversation_pSgs5Error_pGMR);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14SiriKitRuntime18RemoteConversation_pSgs5Error_pGMd, &_sScCy14SiriKitRuntime18RemoteConversation_pSgs5Error_pGMR);
    return CheckedContinuation.resume(returning:)();
  }
}

void outlined consume of Result<(), Error>(id a1, char a2)
{
  if (a2)
  {
  }
}

void destroy for CamBridgeImpl.CamState(uint64_t a1)
{
  v2 = *(a1 + 41);
  if (v2 >= 3)
  {
    v2 = *a1 + 3;
  }

  switch(v2)
  {
    case 2u:
      v3 = *a1;

      break;
    case 1u:
      __swift_destroy_boxed_opaque_existential_1Tm(a1);
      break;
    case 0u:

      break;
  }
}

uint64_t assignWithCopy for CamBridgeImpl.CamState(uint64_t a1, __int128 *a2)
{
  if (a1 != a2)
  {
    v4 = *(a1 + 41);
    if (v4 >= 3)
    {
      v4 = *a1 + 3;
    }

    switch(v4)
    {
      case 2u:

        break;
      case 1u:
        __swift_destroy_boxed_opaque_existential_1Tm(a1);
        break;
      case 0u:

        break;
    }

    v5 = *(a2 + 41);
    if (v5 >= 3)
    {
      v5 = *a2 + 3;
    }

    if (v5 == 2)
    {
      v7 = *a2;
      v8 = v7;
      *a1 = v7;
      *(a1 + 41) = 2;
    }

    else if (v5 == 1)
    {
      v6 = *(a2 + 3);
      *(a1 + 24) = v6;
      *(a1 + 32) = *(a2 + 4);
      (**(v6 - 8))(a1, a2);
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 41) = 1;
    }

    else if (v5)
    {
      v9 = *a2;
      v10 = a2[1];
      *(a1 + 26) = *(a2 + 26);
      *a1 = v9;
      *(a1 + 16) = v10;
    }

    else
    {
      *a1 = *a2;
      *(a1 + 41) = 0;
    }
  }

  return a1;
}

uint64_t RealCamWrapper.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return swift_deallocClassInstance();
}

void CamBridgeImpl.camState.didset()
{
  v1 = v0;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.executor);

  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;
    swift_beginAccess();
    outlined init with copy of CamBridgeImpl.CamState((v1 + 144), v10);
    v6 = String.init<A>(describing:)();
    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_1DC659000, oslog, v3, "CamBridge: camState set to %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x1E12A2F50](v5, -1, -1);
    MEMORY[0x1E12A2F50](v4, -1, -1);
  }

  else
  {
  }
}

void CamBridgeImpl.caarState.didset()
{
  v1 = v0;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.executor);

  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;
    swift_beginAccess();
    outlined init with copy of CamBridgeImpl.CaarState((v1 + 192), v10);
    v6 = String.init<A>(describing:)();
    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_1DC659000, oslog, v3, "CamBridge: caarState set to %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x1E12A2F50](v5, -1, -1);
    MEMORY[0x1E12A2F50](v4, -1, -1);
  }

  else
  {
  }
}

uint64_t getEnumTag for CamBridgeImpl.CaarState(uint64_t a1)
{
  result = *(a1 + 40);
  if (result >= 3)
  {
    return (*a1 + 3);
  }

  return result;
}

uint64_t SharedFlowPluginConnection.__deallocating_deinit()
{
  SharedFlowPluginConnection.deinit();

  return swift_deallocClassInstance();
}

void *SharedFlowPluginConnection.deinit()
{
  v1 = *(v0 + 80);
  v2 = *(**(*(v0 + 72) + 32) + 128);

  v2(v1);

  swift_unknownObjectRelease();

  return v0;
}

uint64_t RemoteConversationService.__deallocating_deinit()
{
  RemoteConversationService.deinit();

  return swift_deallocClassInstance();
}

uint64_t specialized ConversationService.ActiveTurn.init(turnData:conversationLoggingId:bridge:taskService:invokedByPeerToPeerEORR:rrClient:useNoopEventSender:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, void *a7, int a8)
{
  v9 = v8;
  v110 = a8;
  v107 = a5;
  v112 = a2;
  v15 = type metadata accessor for InvocationStateImpl(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v106 = &v99 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v99 - v18;
  v20 = MEMORY[0x1E69E7CC8];
  *(v9 + OBJC_IVAR____TtCC14SiriKitRuntime19ConversationService10ActiveTurn_eagerTasks) = MEMORY[0x1E69E7CC8];
  *(v9 + OBJC_IVAR____TtCC14SiriKitRuntime19ConversationService10ActiveTurn_needsASRReveal) = v20;
  *(v9 + OBJC_IVAR____TtCC14SiriKitRuntime19ConversationService10ActiveTurn_topNlParse) = v20;
  *(v9 + OBJC_IVAR____TtCC14SiriKitRuntime19ConversationService10ActiveTurn_turnInput) = v20;
  *(v9 + OBJC_IVAR____TtCC14SiriKitRuntime19ConversationService10ActiveTurn_nlResponseCode) = v20;
  *(v9 + OBJC_IVAR____TtCC14SiriKitRuntime19ConversationService10ActiveTurn_executionInputSystem) = v20;
  _s14SiriKitRuntime26RemoteConversationTurnDataVWOcTm_0(a1, v9 + OBJC_IVAR____TtCC14SiriKitRuntime19ConversationService10ActiveTurn_turnData, type metadata accessor for RemoteConversationTurnData);
  v21 = (v9 + OBJC_IVAR____TtCC14SiriKitRuntime19ConversationService10ActiveTurn_bridge);
  *v21 = a3;
  v21[1] = a4;
  v22 = type metadata accessor for RemoteConversationTurnData(0);
  v23 = *(a1 + *(v22 + 48));
  v114 = a7;
  v111 = v19;
  v109 = a6;
  if (v23)
  {
    ObjectType = swift_getObjectType();
    v25 = ServiceBridgeDelegate.xpcWrapper.getter(ObjectType, a4);
    v26 = a1[1];
    v108 = *a1;
    v113 = v26;
    v27 = *&v23[OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_refId + 8];
    if (v27)
    {
      v103 = *&v23[OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_refId];
      v104 = v27;
    }

    else
    {
      v42 = a1[3];
      v103 = a1[2];
      v104 = v42;
    }

    v105 = *(a1 + *(v22 + 32));
    v43 = OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_aceRemoteExecution;
    v44 = *&v23[OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_aceRemoteExecution];
    if (v44)
    {

      swift_unknownObjectRetain();
      v45 = v23;

      v46 = [v44 runLocation];
      if (v46)
      {
        v47 = v46;
        v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v50 = v49;

        v46 = v48;
        goto LABEL_12;
      }
    }

    else
    {

      swift_unknownObjectRetain();
      v51 = v23;

      v46 = 0;
    }

    v50 = 0;
LABEL_12:
    v102 = specialized static RunLocation.convert(aceRunLocation:)(v46, v50);

    v52 = *&v23[v43];
    v101 = a1;
    if (!v52)
    {
      v59 = 0;
      v60 = 0;
      v100 = 0;
      v61 = 0;
LABEL_22:
      outlined init with copy of ReferenceResolutionClientProtocol(v114, &v122);
      type metadata accessor for AceServiceInvokerImpl();
      v33 = swift_allocObject();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCySbSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCySbSo16os_unfair_lock_sVGMR);
      v65 = swift_allocObject();
      *(v65 + 20) = 0;
      *(v65 + 16) = 0;
      *(v33 + 152) = v65;
      type metadata accessor for SubmissionTaskRegistry();
      v66 = swift_allocObject();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyShyScTySo13SABaseCommandCSgs5Error_pGGSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyShyScTySo13SABaseCommandCSgs5Error_pGGSo16os_unfair_lock_sVGMR);
      v67 = swift_allocObject();
      *(v67 + 24) = 0;
      *(v67 + 16) = MEMORY[0x1E69E7CD0];
      *(v66 + 16) = v67;
      *(v33 + 160) = v66;
      v68 = swift_allocObject();
      *(v68 + 20) = 0;
      *(v68 + 16) = 0;
      *(v33 + 168) = v68;
      *(v33 + 16) = v25;
      v69 = v103;
      *(v33 + 48) = v113;
      *(v33 + 56) = v69;
      v70 = v108;
      v71 = v105;
      *(v33 + 32) = v105;
      *(v33 + 40) = v70;
      *(v33 + 24) = v102 & 1;
      *(v33 + 64) = v104;
      *(v33 + 72) = v60;
      v72 = v100;
      *(v33 + 80) = v59;
      *(v33 + 88) = v72;
      *(v33 + 96) = v61;
      *(v33 + 104) = v109 & 1;
      outlined init with copy of ReferenceResolutionClientProtocol?(&v122, &v117, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMd, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMR);
      v73 = v118;

      v74 = v71;
      if (v73)
      {
        outlined destroy of ReferenceResolutionClientProtocol?(&v122, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMd, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMR);
        outlined init with take of ReferenceResolutionClientProtocol(&v117, &v119);
      }

      else
      {
        swift_unknownObjectRetain();
        outlined destroy of ReferenceResolutionClientProtocol?(&v117, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMd, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMR);
        v75 = type metadata accessor for ReferenceResolutionClient();
        v76 = ReferenceResolutionClient.__allocating_init()();
        v120 = v75;
        v121 = MEMORY[0x1E69D01B0];
        swift_unknownObjectRelease();
        *&v119 = v76;
        outlined destroy of ReferenceResolutionClientProtocol?(&v122, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMd, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMR);
      }

      outlined init with take of ReferenceResolutionClientProtocol(&v119, v33 + 112);
      a1 = v101;
      v77 = v74;
      v78 = v111;
      InvocationStateImpl.init(proxiedRequestContext:localRequestContextData:executionRequestId:)(v23, v77, v108, v113, v111);
      goto LABEL_28;
    }

    v53 = [v52 invocationDeviceAssistantId];
    if (v53)
    {
      v54 = v53;
      v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v57 = v56;

      v58 = *&v23[v43];
      if (!v58)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v55 = 0;
      v57 = 0;
      v58 = *&v23[v43];
      if (!v58)
      {
        goto LABEL_20;
      }
    }

    v62 = [v58 executionDeviceAssistantId];
    if (v62)
    {
      v63 = v62;
      v100 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v61 = v64;

LABEL_21:
      v59 = v57;
      v60 = v55;
      goto LABEL_22;
    }

LABEL_20:
    v100 = 0;
    v61 = 0;
    goto LABEL_21;
  }

  v28 = swift_getObjectType();
  v113 = ServiceBridgeDelegate.xpcWrapper.getter(v28, a4);
  v29 = a1[1];
  v108 = *a1;
  v30 = a1[2];
  v31 = a1[3];
  v32 = *(a1 + *(v22 + 32));
  outlined init with copy of ReferenceResolutionClientProtocol(a7, &v122);
  outlined init with copy of ReferenceResolutionClientProtocol?(&v122, &v119, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMd, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMR);
  type metadata accessor for AceServiceInvokerImpl();
  v33 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCySbSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCySbSo16os_unfair_lock_sVGMR);
  v34 = swift_allocObject();
  *(v34 + 20) = 0;
  *(v34 + 16) = 0;
  *(v33 + 152) = v34;
  type metadata accessor for SubmissionTaskRegistry();
  v35 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyShyScTySo13SABaseCommandCSgs5Error_pGGSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyShyScTySo13SABaseCommandCSgs5Error_pGGSo16os_unfair_lock_sVGMR);
  v36 = swift_allocObject();
  *(v36 + 24) = 0;
  *(v36 + 16) = MEMORY[0x1E69E7CD0];
  *(v35 + 16) = v36;
  *(v33 + 160) = v35;
  v37 = v108;
  v38 = swift_allocObject();
  *(v38 + 20) = 0;
  *(v38 + 16) = 0;
  *(v33 + 168) = v38;
  *(v33 + 16) = v113;
  *(v33 + 48) = v29;
  *(v33 + 56) = v30;
  *(v33 + 64) = v31;
  *(v33 + 32) = v32;
  *(v33 + 40) = v37;
  *(v33 + 24) = 0;
  v39 = v109 & 1;
  *(v33 + 72) = 0u;
  *(v33 + 88) = 0u;
  *(v33 + 104) = v39;
  outlined init with copy of ReferenceResolutionClientProtocol?(&v119, &v115, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMd, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMR);
  v40 = v116;

  swift_bridgeObjectRetain_n();
  v41 = v32;
  swift_unknownObjectRetain();
  if (v40)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(&v119, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMd, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMR);
    outlined destroy of ReferenceResolutionClientProtocol?(&v122, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMd, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMR);
    outlined init with take of ReferenceResolutionClientProtocol(&v115, &v117);
    outlined init with take of ReferenceResolutionClientProtocol(&v117, v33 + 112);
  }

  else
  {
    outlined destroy of ReferenceResolutionClientProtocol?(&v115, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMd, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMR);
    v79 = type metadata accessor for ReferenceResolutionClient();
    v80 = ReferenceResolutionClient.__allocating_init()();
    v81 = MEMORY[0x1E69D01B0];
    *(v33 + 136) = v79;
    *(v33 + 144) = v81;
    *(v33 + 112) = v80;
    outlined destroy of ReferenceResolutionClientProtocol?(&v119, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMd, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMR);
    outlined destroy of ReferenceResolutionClientProtocol?(&v122, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMd, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMR);
  }

  v124 = 0;
  v122 = 0u;
  v123 = 0u;
  v78 = v111;
  InvocationStateImpl.init(executionRequestId:requestContextData:previousInvocationState:)(v37, v29, v41, &v122, v111);
LABEL_28:
  v82 = v114;
  if (v110)
  {
    v83 = type metadata accessor for NoopSiriKitEventSender();
    v84 = swift_allocObject();
    v85 = (v9 + OBJC_IVAR____TtCC14SiriKitRuntime19ConversationService10ActiveTurn_eventSender);
    *(v9 + OBJC_IVAR____TtCC14SiriKitRuntime19ConversationService10ActiveTurn_eventSender + 24) = v83;
    v86 = &lazy protocol witness table cache variable for type NoopSiriKitEventSender and conformance NoopSiriKitEventSender;
    v87 = type metadata accessor for NoopSiriKitEventSender;
    v88 = &protocol conformance descriptor for NoopSiriKitEventSender;
  }

  else
  {
    v89 = type metadata accessor for InvocationScopedSiriKitEventSender();
    v90 = swift_allocObject();
    v91 = v106;
    _s14SiriKitRuntime26RemoteConversationTurnDataVWOcTm_0(v78, v106, type metadata accessor for InvocationStateImpl);

    v92 = v107;

    v84 = specialized InvocationScopedSiriKitEventSender.init(aceServiceInvoker:taskService:invocationState:)(v33, v92, v91, v90);
    v85 = (v9 + OBJC_IVAR____TtCC14SiriKitRuntime19ConversationService10ActiveTurn_eventSender);
    *(v9 + OBJC_IVAR____TtCC14SiriKitRuntime19ConversationService10ActiveTurn_eventSender + 24) = v89;
    v86 = &lazy protocol witness table cache variable for type InvocationScopedSiriKitEventSender and conformance InvocationScopedSiriKitEventSender;
    v87 = type metadata accessor for InvocationScopedSiriKitEventSender;
    v88 = &protocol conformance descriptor for InvocationScopedSiriKitEventSender;
  }

  v85[4] = _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_3(v86, 255, v87, v88);
  *v85 = v84;
  v93 = OBJC_IVAR____TtCC14SiriKitRuntime19ConversationService10ActiveTurn_conversationLoggingId;
  v94 = type metadata accessor for UUID();
  v95 = *(v94 - 8);
  v96 = v9 + v93;
  v97 = v112;
  (*(v95 + 16))(v96, v112, v94);
  *(&v123 + 1) = type metadata accessor for AceServiceInvokerImpl();
  v124 = _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type AceServiceInvokerImpl and conformance AceServiceInvokerImpl, 255, type metadata accessor for AceServiceInvokerImpl, &protocol conformance descriptor for AceServiceInvokerImpl);
  *&v122 = v33;
  __swift_destroy_boxed_opaque_existential_1Tm(v82);
  (*(v95 + 8))(v97, v94);
  outlined destroy of ConversationService.EagerResult(a1, type metadata accessor for RemoteConversationTurnData);
  outlined destroy of ConversationService.EagerResult(v78, type metadata accessor for InvocationStateImpl);
  outlined init with take of ReferenceResolutionClientProtocol(&v122, v9 + OBJC_IVAR____TtCC14SiriKitRuntime19ConversationService10ActiveTurn_aceServiceInvoker);
  return v9;
}

uint64_t ConversationService.bridge(didReceiveRequestContextData:from:)(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 168) = v1;

  if (v1)
  {
    v5 = *(v4 + 104);
    v6 = ConversationService.bridge(didReceiveRequestContextData:from:);
  }

  else
  {
    v7 = *(v4 + 104);

    *(v4 + 176) = a1;
    v6 = ConversationService.bridge(didReceiveRequestContextData:from:);
    v5 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t specialized InterruptibleTaskManager.perform<A>(_:)()
{
  v1 = *(*v0 + 136);

  return MEMORY[0x1EEE6DFA0](specialized InterruptibleTaskManager.perform<A>(_:), v1, 0);
}

{
  v1 = *(v0 + 144);

  swift_beginAccess();
  v2 = specialized Dictionary._Variant.removeValue(forKey:)(v1);
  v4 = v3;
  swift_endAccess();
  _sxRi_zRi0_zlySDySSSbGIsegr_SgWOe(v2, v4);

  v5 = *(v0 + 88);
  v6 = *(v0 + 96);

  v7 = *(v0 + 8);

  return v7(v5, v6);
}

{
  v1 = *(*v0 + 144);

  return MEMORY[0x1EEE6DFA0](specialized InterruptibleTaskManager.perform<A>(_:), v1, 0);
}

{
  v1 = *(v0 + 152);

  swift_beginAccess();
  v2 = specialized Dictionary._Variant.removeValue(forKey:)(v1);
  v4 = v3;
  swift_endAccess();
  _sxRi_zRi0_zlySDySSSbGIsegr_SgWOe(v2, v4);

  v6 = *(v0 + 88);
  v5 = *(v0 + 96);
  v7 = *(v0 + 104);

  v8 = *(v0 + 8);

  return v8(v6, v5, v7);
}

uint64_t closure #1 in ConversationServiceSerialFacade.doExecutionWork(function:work:)partial apply()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = *(v0 + 64);
  v8 = *(v0 + 72);
  v9 = *(v0 + 56);
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in ConversationServiceSerialFacade.doExecutionWork(function:work:)(v2, v3, v4, v5, v6, v9, v7, v8);
}

uint64_t static AsyncTaskUtils.withCheckedRethrowingContinuation<A>(body:)()
{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](static AsyncTaskUtils.withCheckedRethrowingContinuation<A>(body:), 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

{
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  v3 = *(v0 + 24);
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = static AsyncTaskUtils.withCheckedRethrowingContinuation<A>(body:);
  v5 = *(v0 + 40);
  v6 = *(v0 + 16);

  return MEMORY[0x1EEE6DE38](v6, 0, 0, 0xD000000000000028, 0x80000001DCA7D5A0, partial apply for closure #1 in static AsyncTaskUtils.withCheckedRethrowingContinuation<A>(body:), v2, v5);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #2 in CamBridgeImpl.asyncWarmUpIfSupported()()
{
  v35 = v0;
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 432));
  v1 = *(v0 + 408);
  *(v0 + 352) = *(v0 + 392);
  *(v0 + 368) = v1;
  *(v0 + 384) = *(v0 + 424);
  outlined init with copy of ReferenceResolutionClientProtocol?(v0 + 352, v0 + 512, &_s14SiriKitRuntime20CaarRankingProviding_pSgMd, &_s14SiriKitRuntime20CaarRankingProviding_pSgMR);
  if (!*(v0 + 536))
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v0 + 352, &_s14SiriKitRuntime20CaarRankingProviding_pSgMd, &_s14SiriKitRuntime20CaarRankingProviding_pSgMR);

    outlined destroy of ReferenceResolutionClientProtocol?(v0 + 512, &_s14SiriKitRuntime20CaarRankingProviding_pSgMd, &_s14SiriKitRuntime20CaarRankingProviding_pSgMR);
    goto LABEL_10;
  }

  v2 = *(v0 + 840);
  outlined init with take of ReferenceResolutionClientProtocol((v0 + 512), v0 + 472);
  outlined init with copy of ReferenceResolutionClientProtocol(v0 + 472, v0 + 256);
  *(v0 + 296) = 1;
  swift_beginAccess();
  outlined assign with copy of CamBridgeImpl.CaarState((v0 + 256), v2 + 192);
  swift_endAccess();
  CamBridgeImpl.caarState.didset();
  outlined destroy of CamBridgeImpl.CaarState(v0 + 256);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 472));
  swift_beginAccess();
  outlined init with copy of CamBridgeImpl.CamState((v2 + 144), v0 + 112);
  if (*(v0 + 153) == 3 && !*(v0 + 152) && *(v0 + 112) == 1)
  {
    v3 = vorrq_s8(*(v0 + 120), *(v0 + 136));
    if (!*&vorr_s8(*v3.i8, *&vextq_s8(v3, v3, 8uLL)))
    {
      outlined destroy of ReferenceResolutionClientProtocol?(v0 + 352, &_s14SiriKitRuntime20CaarRankingProviding_pSgMd, &_s14SiriKitRuntime20CaarRankingProviding_pSgMR);

      outlined destroy of CamBridgeImpl.CamState(v0 + 112);
LABEL_10:

      v5 = *(v0 + 8);

      return v5();
    }
  }

  outlined destroy of CamBridgeImpl.CamState(v0 + 112);
  outlined init with copy of CamBridgeImpl.CamState((v2 + 144), v0 + 160);
  if (*(v0 + 201) == 1)
  {
    v4 = *(v0 + 200);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 160));
  }

  else
  {
    outlined destroy of CamBridgeImpl.CamState(v0 + 160);
    v4 = 4;
  }

  *(v0 + 58) = v4;
  (*(*(v0 + 856) + 104))(*(v0 + 864), *MEMORY[0x1E69CE348], *(v0 + 848));
  v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v9 = v7[2];
  v8 = v7[3];
  if (v9 >= v8 >> 1)
  {
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1, v7);
  }

  v10 = *(v0 + 864);
  v11 = *(v0 + 856);
  v12 = *(v0 + 848);
  v13 = *(v0 + 840);
  v7[2] = v9 + 1;
  (*(v11 + 32))(v7 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v9, v10, v12);
  swift_beginAccess();
  *(v13 + 96) = v7;

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = *(v0 + 848);
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v34 = v18;
    *v17 = 136315138;

    v20 = MEMORY[0x1E12A16D0](v19, v16);
    v22 = v21;

    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, &v34);

    *(v17 + 4) = v23;
    _os_log_impl(&dword_1DC659000, v14, v15, "CamBridge: Adding feature flags: %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    MEMORY[0x1E12A2F50](v18, -1, -1);
    MEMORY[0x1E12A2F50](v17, -1, -1);
  }

  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_1DC659000, v24, v25, "CamBridge: Trying to initialise CAM", v26, 2u);
    MEMORY[0x1E12A2F50](v26, -1, -1);
  }

  v27 = *(v0 + 840);

  v28 = v27[5];
  v29 = v27[6];
  __swift_project_boxed_opaque_existential_1(v27 + 2, v28);
  v30 = *(v13 + 96);
  *(v0 + 904) = v30;
  v31 = *(v29 + 8);

  v33 = (v31 + *v31);
  v32 = swift_task_alloc();
  *(v0 + 912) = v32;
  *v32 = v0;
  v32[1] = closure #2 in CamBridgeImpl.asyncWarmUpIfSupported();

  return v33(v0 + 592, v30, v28, v29);
}

{
  v43 = v0;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 880) = __swift_project_value_buffer(v1, static Logger.executor);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1DC659000, v2, v3, "CamBridge: Trying to initialise CAAR", v4, 2u);
    MEMORY[0x1E12A2F50](v4, -1, -1);
  }

  v5 = *(v0 + 840);

  outlined init with copy of ReferenceResolutionClientProtocol?(v5 + 56, v0 + 432, &_s14SiriKitRuntime13CaarProviding_pSgMd, &_s14SiriKitRuntime13CaarProviding_pSgMR);
  v6 = *(v0 + 456);
  if (v6)
  {
    v7 = *(v0 + 464);
    __swift_project_boxed_opaque_existential_1((v0 + 432), *(v0 + 456));
    v41 = (*(v7 + 8) + **(v7 + 8));
    v8 = swift_task_alloc();
    *(v0 + 888) = v8;
    *v8 = v0;
    v8[1] = closure #2 in CamBridgeImpl.asyncWarmUpIfSupported();

    return v41(v0 + 392, v6, v7);
  }

  outlined destroy of ReferenceResolutionClientProtocol?(v0 + 432, &_s14SiriKitRuntime13CaarProviding_pSgMd, &_s14SiriKitRuntime13CaarProviding_pSgMR);
  *(v0 + 352) = 0u;
  *(v0 + 368) = 0u;
  *(v0 + 384) = 0u;
  *(v0 + 400) = 0u;
  *(v0 + 416) = 0u;
  outlined init with copy of ReferenceResolutionClientProtocol?(v0 + 352, v0 + 512, &_s14SiriKitRuntime20CaarRankingProviding_pSgMd, &_s14SiriKitRuntime20CaarRankingProviding_pSgMR);
  if (!*(v0 + 536))
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v0 + 352, &_s14SiriKitRuntime20CaarRankingProviding_pSgMd, &_s14SiriKitRuntime20CaarRankingProviding_pSgMR);

    outlined destroy of ReferenceResolutionClientProtocol?(v0 + 512, &_s14SiriKitRuntime20CaarRankingProviding_pSgMd, &_s14SiriKitRuntime20CaarRankingProviding_pSgMR);
    goto LABEL_18;
  }

  v10 = *(v0 + 840);
  outlined init with take of ReferenceResolutionClientProtocol((v0 + 512), v0 + 472);
  outlined init with copy of ReferenceResolutionClientProtocol(v0 + 472, v0 + 256);
  *(v0 + 296) = 1;
  swift_beginAccess();
  outlined assign with copy of CamBridgeImpl.CaarState((v0 + 256), v10 + 192);
  swift_endAccess();
  CamBridgeImpl.caarState.didset();
  outlined destroy of CamBridgeImpl.CaarState(v0 + 256);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 472));
  swift_beginAccess();
  outlined init with copy of CamBridgeImpl.CamState((v10 + 144), v0 + 112);
  if (*(v0 + 153) == 3 && !*(v0 + 152) && *(v0 + 112) == 1)
  {
    v11 = vorrq_s8(*(v0 + 120), *(v0 + 136));
    if (!*&vorr_s8(*v11.i8, *&vextq_s8(v11, v11, 8uLL)))
    {
      outlined destroy of ReferenceResolutionClientProtocol?(v0 + 352, &_s14SiriKitRuntime20CaarRankingProviding_pSgMd, &_s14SiriKitRuntime20CaarRankingProviding_pSgMR);

      outlined destroy of CamBridgeImpl.CamState(v0 + 112);
LABEL_18:

      v13 = *(v0 + 8);

      return v13();
    }
  }

  outlined destroy of CamBridgeImpl.CamState(v0 + 112);
  outlined init with copy of CamBridgeImpl.CamState((v10 + 144), v0 + 160);
  if (*(v0 + 201) == 1)
  {
    v12 = *(v0 + 200);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 160));
  }

  else
  {
    outlined destroy of CamBridgeImpl.CamState(v0 + 160);
    v12 = 4;
  }

  *(v0 + 58) = v12;
  (*(*(v0 + 856) + 104))(*(v0 + 864), *MEMORY[0x1E69CE348], *(v0 + 848));
  v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v16 = v14[2];
  v15 = v14[3];
  if (v16 >= v15 >> 1)
  {
    v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1, v14);
  }

  v17 = *(v0 + 864);
  v18 = *(v0 + 856);
  v19 = *(v0 + 848);
  v20 = *(v0 + 840);
  v14[2] = v16 + 1;
  (*(v18 + 32))(v14 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v16, v17, v19);
  swift_beginAccess();
  *(v20 + 96) = v14;

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = *(v0 + 848);
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v42 = v25;
    *v24 = 136315138;

    v27 = MEMORY[0x1E12A16D0](v26, v23);
    v29 = v28;

    v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v29, &v42);

    *(v24 + 4) = v30;
    _os_log_impl(&dword_1DC659000, v21, v22, "CamBridge: Adding feature flags: %s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
    MEMORY[0x1E12A2F50](v25, -1, -1);
    MEMORY[0x1E12A2F50](v24, -1, -1);
  }

  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&dword_1DC659000, v31, v32, "CamBridge: Trying to initialise CAM", v33, 2u);
    MEMORY[0x1E12A2F50](v33, -1, -1);
  }

  v34 = *(v0 + 840);

  v35 = v34[5];
  v36 = v34[6];
  __swift_project_boxed_opaque_existential_1(v34 + 2, v35);
  v37 = *(v20 + 96);
  *(v0 + 904) = v37;
  v38 = *(v36 + 8);

  v40 = (v38 + *v38);
  v39 = swift_task_alloc();
  *(v0 + 912) = v39;
  *v39 = v0;
  v39[1] = closure #2 in CamBridgeImpl.asyncWarmUpIfSupported();

  return v40(v0 + 592, v37, v35, v36);
}

{
  v2 = *v1;
  *(*v1 + 896) = v0;

  v3 = *(v2 + 872);
  if (v0)
  {
    v4 = closure #2 in CamBridgeImpl.asyncWarmUpIfSupported();
  }

  else
  {
    v4 = closure #2 in CamBridgeImpl.asyncWarmUpIfSupported();
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

{
  v2 = *v1;
  *(*v1 + 920) = v0;

  v3 = *(v2 + 872);
  if (v0)
  {
    v4 = closure #2 in CamBridgeImpl.asyncWarmUpIfSupported();
  }

  else
  {
    v4 = closure #2 in CamBridgeImpl.asyncWarmUpIfSupported();
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

{
  v1 = *(v0 + 58);
  v2 = *(v0 + 840);

  outlined init with take of ReferenceResolutionClientProtocol((v0 + 592), v0 + 552);
  outlined init with copy of ReferenceResolutionClientProtocol(v0 + 552, v0 + 208);
  *(v0 + 248) = v1;
  *(v0 + 249) = 1;
  swift_beginAccess();
  outlined assign with copy of CamBridgeImpl.CamState((v0 + 208), v2 + 144);
  swift_endAccess();
  CamBridgeImpl.camState.didset();
  outlined destroy of CamBridgeImpl.CamState(v0 + 208);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 552));
  outlined destroy of ReferenceResolutionClientProtocol?(v0 + 352, &_s14SiriKitRuntime20CaarRankingProviding_pSgMd, &_s14SiriKitRuntime20CaarRankingProviding_pSgMR);

  v3 = *(v0 + 8);

  return v3();
}

{
  v19 = v0;
  v1 = *(v0 + 896);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 432));
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 896);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v18 = v7;
    *v6 = 136315138;
    *(v0 + 832) = v5;
    v8 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v9 = String.init<A>(describing:)();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v18);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_1DC659000, v3, v4, "CamBridge: Error initializing CAAR(will retry on next Siri session): %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x1E12A2F50](v7, -1, -1);
    MEMORY[0x1E12A2F50](v6, -1, -1);
  }

  v12 = *(v0 + 896);
  v13 = *(v0 + 840);
  *(v0 + 304) = v12;
  *(v0 + 344) = 2;
  swift_beginAccess();
  v14 = v12;
  outlined assign with copy of CamBridgeImpl.CaarState((v0 + 304), v13 + 192);
  swift_endAccess();
  CamBridgeImpl.caarState.didset();
  outlined destroy of CamBridgeImpl.CaarState(v0 + 304);
  *(v0 + 64) = v12;
  *(v0 + 105) = 2;
  swift_beginAccess();
  v15 = v12;
  outlined assign with copy of CamBridgeImpl.CamState((v0 + 64), v13 + 144);
  swift_endAccess();
  CamBridgeImpl.camState.didset();

  outlined destroy of CamBridgeImpl.CamState(v0 + 64);

  v16 = *(v0 + 8);

  return v16();
}

{
  v18 = v0;
  v1 = *(v0 + 920);

  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 920);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v17 = v7;
    *v6 = 136315138;
    *(v0 + 824) = v5;
    v8 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v9 = String.init<A>(describing:)();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v17);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_1DC659000, v3, v4, "CamBridge: Error initializing CAM (will retry on next Siri session): %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x1E12A2F50](v7, -1, -1);
    MEMORY[0x1E12A2F50](v6, -1, -1);
  }

  v12 = *(v0 + 920);
  v13 = *(v0 + 840);
  *(v0 + 16) = v12;
  *(v0 + 57) = 2;
  swift_beginAccess();
  v14 = v12;
  outlined assign with copy of CamBridgeImpl.CamState((v0 + 16), v13 + 144);
  swift_endAccess();
  CamBridgeImpl.camState.didset();

  outlined destroy of CamBridgeImpl.CamState(v0 + 16);
  outlined destroy of ReferenceResolutionClientProtocol?(v0 + 352, &_s14SiriKitRuntime20CaarRankingProviding_pSgMd, &_s14SiriKitRuntime20CaarRankingProviding_pSgMR);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t ConversationBridgeProcessorDelegate.__deallocating_deinit()
{
  swift_weakDestroy();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t objectdestroy_36Tm()
{

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t objectdestroy_47Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t objectdestroy_52Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t objectdestroy_175Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x1EEE6BDD0](v2, v6 + v7, v5 | 7);
}

uint64_t objectdestroy_43Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t objectdestroy_43Tm_0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 104, 7);
}

void specialized TaskLoggingService.updateFlowTaskState(aceServiceInvoker:taskName:interactionId:taskId:)(void *a1, uint64_t a2, unint64_t a3, NSObject *a4, unint64_t a5, uint64_t a6, unint64_t a7)
{
  v45 = a2;
  v13 = type metadata accessor for NLContextUpdate();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a5)
  {
    if (a7)
    {
      NLContextUpdate.init()();
      v17 = [objc_allocWithZone(MEMORY[0x1E69C78A0]) init];
      v43 = a6;
      v18 = MEMORY[0x1E12A1410](a6, a7);
      [v17 setTaskId_];

      v44 = a4;
      v19 = MEMORY[0x1E12A1410](a4, a5);
      [v17 setInteractionId_];

      v20 = MEMORY[0x1E12A1410](v45, a3);
      [v17 setIntentTypeName_];

      [v17 setMetricsStateOrigin_];
      v21 = v17;
      NLContextUpdate.siriKitMetrics.setter();
      if (one-time initialization token for instrumentation != -1)
      {
        swift_once();
      }

      v22 = type metadata accessor for Logger();
      __swift_project_value_buffer(v22, static Logger.instrumentation);

      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v40 = v21;
        v41 = v13;
        v26 = v25;
        v27 = swift_slowAlloc();
        v42 = v14;
        v28 = v27;
        v46 = v27;
        *v26 = 136315650;
        v13 = v41;
        *(v26 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, a3, &v46);
        *(v26 + 12) = 2080;
        *(v26 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, a7, &v46);
        *(v26 + 22) = 2080;
        *(v26 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, a5, &v46);
        _os_log_impl(&dword_1DC659000, v23, v24, "#TaskLoggingService update FlowTaskState from Client with taskName: %s taskId: %s interactionId: %s", v26, 0x20u);
        swift_arrayDestroy();
        v29 = v28;
        v14 = v42;
        MEMORY[0x1E12A2F50](v29, -1, -1);
        v30 = v26;
        v21 = v40;
        MEMORY[0x1E12A2F50](v30, -1, -1);
      }

      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      v31 = NLContextUpdate.toAceContextUpdate()();
      AceServiceInvokerAsync.submitAndForget(_:)();

      (*(v14 + 8))(v16, v13);
      return;
    }

    if (one-time initialization token for instrumentation != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    __swift_project_value_buffer(v37, static Logger.instrumentation);

    v44 = Logger.logObject.getter();
    v33 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v44, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v46 = v35;
      *v34 = 136315138;
      *(v34 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, a3, &v46);
      v36 = "#TaskLoggingService invalid taskId, failed to update FlowTaskState from Client for taskName: %s";
      goto LABEL_16;
    }
  }

  else
  {
    if (one-time initialization token for instrumentation != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    __swift_project_value_buffer(v32, static Logger.instrumentation);

    v44 = Logger.logObject.getter();
    v33 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v44, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v46 = v35;
      *v34 = 136315138;
      *(v34 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, a3, &v46);
      v36 = "#TaskLoggingService invalid interactionId, failed to update FlowTaskState from Client for taskName: %s";
LABEL_16:
      _os_log_impl(&dword_1DC659000, v44, v33, v36, v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v35);
      MEMORY[0x1E12A2F50](v35, -1, -1);
      MEMORY[0x1E12A2F50](v34, -1, -1);

      return;
    }
  }

  v38 = v44;
}

void thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ()(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t implicit closure #2 in implicit closure #1 in closure #1 in closure #1 in RemoteConversationClient.ensureReady()(void *a1)
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

uint64_t partial apply for closure #1 in closure #1 in closure #1 in SharedFlowPluginServiceClient.getRemoteConversationForFlowPlugin(bundleId:bundlePath:rcId:hypothesisId:)(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a2, a3) - 8);
  v7 = v4 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a4(a1, v7);
}

id outlined copy of Result<(), Error>(id result, char a2)
{
  if (a2)
  {
    return result;
  }

  return result;
}

uint64_t protocol witness for DecisionMaking.newSessionStarted() in conformance DecisionEngine()
{
  v1 = *v0;
  ActionGenerator.newSessionStarted()();
  DecisionEngine.ambiguityService.getter(v5);
  v2 = v6;
  v3 = v7;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  (*(v3 + 8))(v2, v3);
  __swift_destroy_boxed_opaque_existential_1Tm(v5);
  swift_beginAccess();
  *(v1 + 184) = 0;
}

Swift::Void __swiftcall ActionGenerator.newSessionStarted()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v19[-v3];
  if (one-time initialization token for forceEnabled != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = static SiriKitFlowFeatureFlagDefinitions.forceEnabled;
  if (*(static SiriKitFlowFeatureFlagDefinitions.forceEnabled + 16) && (v6 = specialized __RawDictionaryStorage.find<A>(_:)(), (v7 & 1) != 0))
  {
    if (*(*(v5 + 56) + v6) != 1)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v21 = &type metadata for SiriKitFlowFeatureFlagDefinitions;
    v22 = lazy protocol witness table accessor for type SiriKitFlowFeatureFlagDefinitions and conformance SiriKitFlowFeatureFlagDefinitions();
    v8 = isFeatureEnabled(_:)();
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    if ((v8 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v9 = *(v1 + 16);
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = one-time initialization token for shared;

  if (v11 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v12 = static MessageBusActor.shared;
  v13 = lazy protocol witness table accessor for type MessageBusActor and conformance MessageBusActor(&lazy protocol witness table cache variable for type MessageBusActor and conformance MessageBusActor, type metadata accessor for MessageBusActor, &protocol conformance descriptor for MessageBusActor);
  v14 = swift_allocObject();
  v14[2] = v12;
  v14[3] = v13;
  v14[4] = v9;

  *(v9 + 104) = _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfC14SiriKitRuntime20LinkExpansionContextV07SessionJ0C_Tt2g5(0, 0, v4, &async function pointer to partial apply for closure #1 in LinkExpansionContextBuilder.newSessionStarted(), v14);

LABEL_11:
  if (one-time initialization token for forceEnabled != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v15 = static LinkFeature.forceEnabled;
  if (!*(static LinkFeature.forceEnabled + 16) || (v16 = specialized __RawDictionaryStorage.find<A>(_:)(), (v17 & 1) == 0))
  {
    v21 = &type metadata for LinkFeature;
    v22 = lazy protocol witness table accessor for type LinkFeature and conformance LinkFeature();
    v18 = isFeatureEnabled(_:)();
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    if ((v18 & 1) == 0)
    {
      return;
    }

    goto LABEL_18;
  }

  if (*(*(v15 + 56) + v16) == 1)
  {
LABEL_18:
    AppShortcutExpansionContextBuilder.newSessionStarted()();
  }
}

uint64_t sub_1DC6C74EC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

unint64_t lazy protocol witness table accessor for type SiriKitFlowFeatureFlagDefinitions and conformance SiriKitFlowFeatureFlagDefinitions()
{
  result = lazy protocol witness table cache variable for type SiriKitFlowFeatureFlagDefinitions and conformance SiriKitFlowFeatureFlagDefinitions;
  if (!lazy protocol witness table cache variable for type SiriKitFlowFeatureFlagDefinitions and conformance SiriKitFlowFeatureFlagDefinitions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriKitFlowFeatureFlagDefinitions and conformance SiriKitFlowFeatureFlagDefinitions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriKitFlowFeatureFlagDefinitions and conformance SiriKitFlowFeatureFlagDefinitions;
  if (!lazy protocol witness table cache variable for type SiriKitFlowFeatureFlagDefinitions and conformance SiriKitFlowFeatureFlagDefinitions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriKitFlowFeatureFlagDefinitions and conformance SiriKitFlowFeatureFlagDefinitions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriKitFlowFeatureFlagDefinitions and conformance SiriKitFlowFeatureFlagDefinitions;
  if (!lazy protocol witness table cache variable for type SiriKitFlowFeatureFlagDefinitions and conformance SiriKitFlowFeatureFlagDefinitions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriKitFlowFeatureFlagDefinitions and conformance SiriKitFlowFeatureFlagDefinitions);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LinkFeature and conformance LinkFeature()
{
  result = lazy protocol witness table cache variable for type LinkFeature and conformance LinkFeature;
  if (!lazy protocol witness table cache variable for type LinkFeature and conformance LinkFeature)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LinkFeature and conformance LinkFeature);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LinkFeature and conformance LinkFeature;
  if (!lazy protocol witness table cache variable for type LinkFeature and conformance LinkFeature)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LinkFeature and conformance LinkFeature);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LinkFeature and conformance LinkFeature;
  if (!lazy protocol witness table cache variable for type LinkFeature and conformance LinkFeature)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LinkFeature and conformance LinkFeature);
  }

  return result;
}

Swift::Void __swiftcall AppShortcutExpansionContextBuilder.newSessionStarted()()
{
  v1 = v0;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.executor);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1DC659000, v3, v4, "[AppShortcutExpansionContext] New session started", v5, 2u);
    MEMORY[0x1E12A2F50](v5, -1, -1);
  }

  type metadata accessor for ConditionalIntentMetadataStore();
  v6 = swift_allocObject();
  *(v6 + 16) = MEMORY[0x1E69E7CC8];
  swift_beginAccess();
  *(v1 + 16) = v6;
}

uint64_t IntentStatesStore.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t DecisionEngine.ambiguityService.getter@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  outlined init with copy of ReferenceResolutionClientProtocol?(v1 + 200, &v9, &_s14SiriKitRuntime25AmbiguityServiceProviding_pSgMd, &_s14SiriKitRuntime25AmbiguityServiceProviding_pSgMR);
  if (v10)
  {
    return outlined init with take of ReferenceResolutionClientProtocol(&v9, a1);
  }

  outlined destroy of ReferenceResolutionClientProtocol?(&v9, &_s14SiriKitRuntime25AmbiguityServiceProviding_pSgMd, &_s14SiriKitRuntime25AmbiguityServiceProviding_pSgMR);
  v4 = *(v1 + 40);
  outlined init with copy of ReferenceResolutionClientProtocol(v1 + 136, &v9);
  v5 = type metadata accessor for AmbiguityService();
  v6 = swift_allocObject();
  type metadata accessor for ServerFallbackDisablingUtils();
  v7 = swift_allocObject();
  v8 = objc_allocWithZone(type metadata accessor for ExperimentationAnalyticsManager());

  v7[2] = [v8 init];
  v7[3] = closure #1 in default argument 5 of ConversationService.init(conversationHandlerLocator:referenceResolutionClient:useStubCamBridge:useNoopEventSender:doWarmup:selfEmitter:serverFallbackDisablingUtils:);
  v7[4] = 0;
  *(v6 + 64) = v7;
  *(v6 + 16) = v4;
  outlined init with take of ReferenceResolutionClientProtocol(&v9, v6 + 24);
  a1[3] = v5;
  a1[4] = &protocol witness table for AmbiguityService;
  *a1 = v6;
  outlined init with copy of ReferenceResolutionClientProtocol(a1, &v9);
  swift_beginAccess();
  outlined assign with take of (Input, AnyFlow, SiriEnvironment)(&v9, v1 + 200, &_s14SiriKitRuntime25AmbiguityServiceProviding_pSgMd, &_s14SiriKitRuntime25AmbiguityServiceProviding_pSgMR);
  return swift_endAccess();
}

uint64_t CamBridgeImpl.asyncWarmUpIfSupported()()
{
  v1 = *v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v20 - v3;
  swift_beginAccess();
  outlined init with copy of CamBridgeImpl.CamState(v0 + 18, &v21);
  if (v25 != 3 || v24 || v21 != 1 || (v5 = vorrq_s8(v22, v23), *&vorr_s8(*v5.i8, *&vextq_s8(v5, v5, 8uLL))))
  {
    outlined destroy of CamBridgeImpl.CamState(&v21);
  }

  else
  {
    outlined destroy of CamBridgeImpl.CamState(&v21);
    swift_beginAccess();
    outlined init with copy of CamBridgeImpl.CaarState(v0 + 24, &v21);
    if (v24 == 3 && v21 == 1)
    {
      v6 = vorrq_s8(v22, v23);
      if (!*&vorr_s8(*v6.i8, *&vextq_s8(v6, v6, 8uLL)))
      {
        outlined destroy of CamBridgeImpl.CaarState(&v21);
        v7 = type metadata accessor for TaskPriority();
        (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
        if (one-time initialization token for shared != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        v8 = static MessageBusActor.shared;
        v9 = _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type MessageBusActor and conformance MessageBusActor, type metadata accessor for MessageBusActor, &protocol conformance descriptor for MessageBusActor);
        v10 = swift_allocObject();
        *(v10 + 16) = v8;
        *(v10 + 24) = v9;

        return _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v4, &async function pointer to partial apply for closure #1 in CamBridgeImpl.asyncWarmUpIfSupported(), v10);
      }
    }

    outlined destroy of CamBridgeImpl.CaarState(&v21);
  }

  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v4, 1, 1, v12);
  v13 = one-time initialization token for shared;

  if (v13 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v14 = static MessageBusActor.shared;
  v15 = _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type MessageBusActor and conformance MessageBusActor, type metadata accessor for MessageBusActor, &protocol conformance descriptor for MessageBusActor);
  v16 = swift_allocObject();
  v16[2] = v14;
  v16[3] = v15;
  v16[4] = v0;
  v16[5] = v1;

  v11 = _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v4, &async function pointer to partial apply for closure #2 in CamBridgeImpl.asyncWarmUpIfSupported(), v16);
  outlined init with copy of CamBridgeImpl.CamState(v0 + 18, &v21);
  if (v25 != 3 || v24 || v21 != 1 || (v17 = vorrq_s8(v22, v23), *&vorr_s8(*v17.i8, *&vextq_s8(v17, v17, 8uLL))))
  {
    outlined destroy of CamBridgeImpl.CamState(&v21);
    v21 = v11;
    v25 = 0;
    swift_beginAccess();

    outlined assign with copy of CamBridgeImpl.CamState(&v21, (v0 + 18));
    swift_endAccess();
    CamBridgeImpl.camState.didset();
  }

  outlined destroy of CamBridgeImpl.CamState(&v21);
  swift_beginAccess();
  outlined init with copy of CamBridgeImpl.CaarState(v0 + 24, &v21);
  if (v24 != 3 || v21 != 1 || (v18 = vorrq_s8(v22, v23), *&vorr_s8(*v18.i8, *&vextq_s8(v18, v18, 8uLL))))
  {
    outlined destroy of CamBridgeImpl.CaarState(&v21);
    v21 = v11;
    v24 = 0;
    swift_beginAccess();

    outlined assign with copy of CamBridgeImpl.CaarState(&v21, (v0 + 24));
    swift_endAccess();
    CamBridgeImpl.caarState.didset();
  }

  outlined destroy of CamBridgeImpl.CaarState(&v21);
  return v11;
}

uint64_t sub_1DC6C7DDC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DC6C7E1C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t protocol witness for AmbiguityServiceProviding.newSessionStarted() in conformance AmbiguityService()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 56);
  __swift_project_boxed_opaque_existential_1((*v0 + 24), v1);
  (*(v2 + 16))(v1, v2);
}

uint64_t initializeWithCopy for CamBridgeImpl.CamState(uint64_t a1, uint64_t *a2)
{
  v3 = *(a2 + 41);
  if (v3 >= 3)
  {
    v3 = *a2 + 3;
  }

  if (v3 == 2)
  {
    v6 = *a2;
    v7 = *a2;
    *a1 = v6;
    *(a1 + 41) = 2;
  }

  else if (v3 == 1)
  {
    v4 = *(a2 + 3);
    *(a1 + 24) = v4;
    (**(v4 - 8))(a1);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 41) = 1;
  }

  else if (v3)
  {
    v8 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 16) = v8;
    *(a1 + 26) = *(a2 + 26);
  }

  else
  {
    *a1 = *a2;
    *(a1 + 41) = 0;
  }

  return a1;
}

uint64_t getEnumTag for CamBridgeImpl.CamState(uint64_t a1)
{
  result = *(a1 + 41);
  if (result >= 3)
  {
    return (*a1 + 3);
  }

  return result;
}

void destroy for CamBridgeImpl.CaarState(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2 >= 3)
  {
    v2 = *a1 + 3;
  }

  switch(v2)
  {
    case 2u:
      v3 = *a1;

      break;
    case 1u:
      __swift_destroy_boxed_opaque_existential_1Tm(a1);
      break;
    case 0u:

      break;
  }
}

uint64_t initializeWithCopy for CamBridgeImpl.CaarState(uint64_t a1, uint64_t *a2)
{
  v3 = *(a2 + 40);
  if (v3 >= 3)
  {
    v3 = *a2 + 3;
  }

  if (v3 == 2)
  {
    v5 = *a2;
    v6 = *a2;
    *a1 = v5;
    *(a1 + 40) = 2;
  }

  else if (v3 == 1)
  {
    v4 = *(a2 + 3);
    *(a1 + 24) = v4;
    (**(v4 - 8))(a1);
    *(a1 + 40) = 1;
  }

  else if (v3)
  {
    v7 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 16) = v7;
    *(a1 + 25) = *(a2 + 25);
  }

  else
  {
    *a1 = *a2;
    *(a1 + 40) = 0;
  }

  return a1;
}

uint64_t assignWithCopy for CamBridgeImpl.CaarState(uint64_t a1, __int128 *a2)
{
  if (a1 != a2)
  {
    v4 = *(a1 + 40);
    if (v4 >= 3)
    {
      v4 = *a1 + 3;
    }

    switch(v4)
    {
      case 2u:

        break;
      case 1u:
        __swift_destroy_boxed_opaque_existential_1Tm(a1);
        break;
      case 0u:

        break;
    }

    v5 = *(a2 + 40);
    if (v5 >= 3)
    {
      v5 = *a2 + 3;
    }

    if (v5 == 2)
    {
      v7 = *a2;
      v8 = v7;
      *a1 = v7;
      *(a1 + 40) = 2;
    }

    else if (v5 == 1)
    {
      v6 = *(a2 + 3);
      *(a1 + 24) = v6;
      *(a1 + 32) = *(a2 + 4);
      (**(v6 - 8))(a1, a2);
      *(a1 + 40) = 1;
    }

    else if (v5)
    {
      v9 = *a2;
      v10 = a2[1];
      *(a1 + 25) = *(a2 + 25);
      *a1 = v9;
      *(a1 + 16) = v10;
    }

    else
    {
      *a1 = *a2;
      *(a1 + 40) = 0;
    }
  }

  return a1;
}

uint64_t RemoteConversationClient.__deallocating_deinit()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 128));

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

Swift::Void __swiftcall SharedFlowPluginServiceClient.LoadedConversationTracker.releaseLoadedConversation(serial:)(Swift::Int serial)
{
  v2 = v1;
  swift_beginAccess();
  v4 = specialized __RawDictionaryStorage.find<A>(_:)(serial);
  if (v5)
  {
    v6 = v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *(v1 + 16);
    v9 = *(v2 + 16);
    *(v2 + 16) = 0x8000000000000000;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v8 = v9;
    }

    specialized _NativeDictionary._delete(at:)(v6, v8);
    *(v2 + 16) = v8;
  }

  swift_endAccess();
}

uint64_t SharedFlowPluginServiceClient.LoadedConversationTracker.registerLoadedConversation(_:serial:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  swift_weakInit();
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v2 + 16);
  *(v2 + 16) = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(partial apply for closure #1 in SharedFlowPluginServiceClient.LoadedConversationTracker.registerLoadedConversation(_:serial:), v4, a2, isUniquelyReferenced_nonNull_native);
  *(v2 + 16) = v7;
  swift_endAccess();
}

uint64_t sub_1DC6C847C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t SendableRemoteConversationXPCWrapper.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void *RemoteConversationService.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 10);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 15);

  outlined destroy of RemoteConversationService.State(v0 + OBJC_IVAR____TtC14SiriKitRuntime25RemoteConversationService_state, type metadata accessor for RemoteConversationService.State);

  return v0;
}

uint64_t AsyncSerialQueue.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC14SiriKitRuntime16AsyncSerialQueue_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t closure #1 in ConversationServiceSerialFacade.doExecutionWork(function:work:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 40) = a7;
  *(v8 + 48) = a8;
  *(v8 + 56) = a6;
  *(v8 + 24) = a4;
  *(v8 + 32) = a5;
  *(v8 + 16) = a3;
  return MEMORY[0x1EEE6DFA0](closure #1 in ConversationServiceSerialFacade.doExecutionWork(function:work:), 0, 0);
}

uint64_t objectdestroy_20Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t specialized SharedFlowPluginServiceClient.withCurrentConnection<A>(block:)(uint64_t a1, char a2)
{
  v5 = *v3;
  *(v5 + 288) = a1;
  *(v5 + 296) = v2;

  if (v2)
  {
    v6 = *(v5 + 248);
    v7 = specialized SharedFlowPluginServiceClient.withCurrentConnection<A>(block:);
  }

  else
  {
    v8 = *(v5 + 248);

    *(v5 + 352) = a2;
    v7 = specialized SharedFlowPluginServiceClient.withCurrentConnection<A>(block:);
    v6 = v8;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, 0);
}

{
  v5 = *v3;
  *(v5 + 336) = a1;
  *(v5 + 344) = v2;

  if (v2)
  {
    v6 = *(v5 + 248);
    v7 = specialized SharedFlowPluginServiceClient.withCurrentConnection<A>(block:);
  }

  else
  {
    v8 = *(v5 + 248);

    *(v5 + 353) = a2;
    v7 = specialized SharedFlowPluginServiceClient.withCurrentConnection<A>(block:);
    v6 = v8;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, 0);
}

uint64_t partial apply for closure #2 in CamBridgeImpl.asyncWarmUpIfSupported()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #2 in CamBridgeImpl.asyncWarmUpIfSupported()(a1, v4, v5, v6);
}

uint64_t specialized closure #1 in InterruptibleTaskManager.perform<A>(_:)(uint64_t a1, char a2)
{
  v5 = *(*v2 + 16);
  v8 = *v2;

  *v5 = a1;
  *(v5 + 8) = a2;
  v6 = *(v8 + 8);

  return v6();
}

uint64_t closure #2 in CamBridgeImpl.asyncWarmUpIfSupported()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[105] = a4;
  v5 = type metadata accessor for CamFeature();
  v4[106] = v5;
  v4[107] = *(v5 - 8);
  v4[108] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v6 = static MessageBusActor.shared;
  v4[109] = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #2 in CamBridgeImpl.asyncWarmUpIfSupported(), v6, 0);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTR14SiriKitRuntime23InterruptibleTaskResultOyytG_TG5TQ0_()
{
  v1 = *v0;
  v2 = *(*v0 + 32);
  v3 = *v0;

  v4 = *(v1 + 24);
  *v2 = *(v1 + 16);
  *(v2 + 8) = v4;
  v5 = *(v3 + 8);

  return v5();
}

uint64_t protocol witness for CaarProviding.provideCaarInstance() in conformance RealCaarProvider(uint64_t *a1)
{
  v8 = v1;
  type metadata accessor for CaarProvider();
  static CaarProvider.caar()();
  v3 = type metadata accessor for RealCaarWrapper();
  v4 = swift_allocObject();
  outlined init with take of ReferenceResolutionClientProtocol(&v7, v4 + 16);
  a1[3] = v3;
  a1[4] = &protocol witness table for RealCaarWrapper;
  *a1 = v4;
  v5 = *(v1 + 8);

  return v5();
}

uint64_t partial apply for closure #1 in closure #1 in ConversationServiceSerialFacade.doExecutionWork(function:work:)()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in closure #1 in ConversationServiceSerialFacade.doExecutionWork(function:work:)(v2, v3, v4, v5, v6);
}

uint64_t closure #1 in closure #1 in ConversationServiceSerialFacade.doExecutionWork(function:work:)(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 56) = a5;
  *(v5 + 24) = a3;
  *(v5 + 32) = a4;
  v8 = (a1 + *a1);
  v6 = swift_task_alloc();
  *(v5 + 40) = v6;
  *v6 = v5;
  v6[1] = closure #1 in closure #1 in ConversationServiceSerialFacade.doExecutionWork(function:work:);

  return v8();
}

uint64_t partial apply for closure #1 in ConversationServiceSerialFacade.bridge(didReceiveRSKE:sessionConfiguration:withRequestContextData:withRecognizedUser:withUserMeetingSessionThreshold:withRemoteRequestWasMadeInSession:from:)()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR) - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = v0[2];
  v5 = v0[5];
  v10 = v0[4];
  v11 = v0[3];
  v6 = *(v0 + v4);
  v7 = *(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in ConversationServiceSerialFacade.bridge(didReceiveRSKE:sessionConfiguration:withRequestContextData:withRecognizedUser:withUserMeetingSessionThreshold:withRemoteRequestWasMadeInSession:from:)(v13, v11, v10, v5, v0 + v3, v6, v7);
}

uint64_t closure #1 in ConversationServiceSerialFacade.bridge(didReceiveRSKE:sessionConfiguration:withRequestContextData:withRecognizedUser:withUserMeetingSessionThreshold:withRemoteRequestWasMadeInSession:from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = swift_task_alloc();
  *(v7 + 16) = v12;
  *v12 = v7;
  v12[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return (specialized ConversationService.bridge(didReceiveRSKE:sessionConfiguration:withRequestContextData:withRecognizedUser:withUserMeetingSessionThreshold:withRemoteRequestWasMadeInSession:from:))(a4, a5, a6, a7, v15);
}

uint64_t specialized ConversationService.bridge(didReceiveRSKE:sessionConfiguration:withRequestContextData:withRecognizedUser:withUserMeetingSessionThreshold:withRemoteRequestWasMadeInSession:from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 232) = a7;
  *(v8 + 240) = v7;
  *(v8 + 216) = a4;
  *(v8 + 224) = a6;
  *(v8 + 896) = a5;
  *(v8 + 200) = a2;
  *(v8 + 208) = a3;
  *(v8 + 192) = a1;
  v9 = type metadata accessor for RequestSummary.ExecutionSource();
  *(v8 + 248) = v9;
  *(v8 + 256) = *(v9 - 8);
  *(v8 + 264) = swift_task_alloc();
  *(v8 + 272) = swift_task_alloc();
  *(v8 + 280) = swift_task_alloc();
  *(v8 + 288) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
  *(v8 + 296) = swift_task_alloc();
  *(v8 + 304) = swift_task_alloc();
  *(v8 + 312) = swift_task_alloc();
  *(v8 + 320) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  *(v8 + 328) = swift_task_alloc();
  v10 = type metadata accessor for SiriKitEventPayload();
  *(v8 + 336) = v10;
  *(v8 + 344) = *(v10 - 8);
  *(v8 + 352) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  *(v8 + 360) = swift_task_alloc();
  *(v8 + 368) = type metadata accessor for DecisionEngineResponse(0);
  *(v8 + 376) = swift_task_alloc();
  v11 = type metadata accessor for ExecutionLocation();
  *(v8 + 384) = v11;
  *(v8 + 392) = *(v11 - 8);
  *(v8 + 400) = swift_task_alloc();
  *(v8 + 408) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0C15RedirectContextOSgMd, &_s11SiriKitFlow0C15RedirectContextOSgMR);
  *(v8 + 416) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes017NLRoutingDecisionB0C27GenAIFallbackSuppressReasonOSgMd, &_s16SiriMessageTypes017NLRoutingDecisionB0C27GenAIFallbackSuppressReasonOSgMR);
  *(v8 + 424) = swift_task_alloc();
  v12 = type metadata accessor for Parse();
  *(v8 + 432) = v12;
  *(v8 + 440) = *(v12 - 8);
  *(v8 + 448) = swift_task_alloc();
  v13 = type metadata accessor for TimeoutError();
  *(v8 + 456) = v13;
  *(v8 + 464) = *(v13 - 8);
  *(v8 + 472) = swift_task_alloc();
  v14 = type metadata accessor for OSSignpostID();
  *(v8 + 480) = v14;
  *(v8 + 488) = *(v14 - 8);
  *(v8 + 496) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputV_10Foundation4DataVSgtSgMd, &_s11SiriKitFlow5InputV_10Foundation4DataVSgtSgMR);
  *(v8 + 504) = swift_task_alloc();
  v15 = type metadata accessor for Input();
  *(v8 + 512) = v15;
  *(v8 + 520) = *(v15 - 8);
  *(v8 + 528) = swift_task_alloc();
  *(v8 + 536) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriFlowEnvironment24RequestPositionInSessionOSgMd, &_s19SiriFlowEnvironment24RequestPositionInSessionOSgMR);
  *(v8 + 544) = swift_task_alloc();
  *(v8 + 552) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  *(v8 + 560) = swift_task_alloc();
  *(v8 + 568) = swift_task_alloc();
  *(v8 + 576) = swift_task_alloc();
  *(v8 + 584) = swift_task_alloc();
  *(v8 + 592) = swift_task_alloc();
  *(v8 + 600) = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v16 = static MessageBusActor.shared;
  *(v8 + 608) = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](specialized ConversationService.bridge(didReceiveRSKE:sessionConfiguration:withRequestContextData:withRecognizedUser:withUserMeetingSessionThreshold:withRemoteRequestWasMadeInSession:from:), v16, 0);
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, int64_t a2, char a3, void *a4)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy7SiriCam0E7FeatureOGMd, &_ss23_ContiguousArrayStorageCy7SiriCam0E7FeatureOGMR, MEMORY[0x1E69CE350]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D29_Nlu_External_SystemDialogActVGMd, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D29_Nlu_External_SystemDialogActVGMR, MEMORY[0x1E69D0B48]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy11SiriKitFlow11IntentTopicVGMd, &_ss23_ContiguousArrayStorageCy11SiriKitFlow11IntentTopicVGMR, MEMORY[0x1E69CFD68]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDV_11SiriKitFlow5ParseOtGMd, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDV_11SiriKitFlow5ParseOtGMR, &_s10Foundation4UUIDV_11SiriKitFlow5ParseOtMd, &_s10Foundation4UUIDV_11SiriKitFlow5ParseOtMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D27_Nlu_External_AsrHypothesisVGMd, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D27_Nlu_External_AsrHypothesisVGMR, MEMORY[0x1E69D0A28]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D33_Nlu_External_AsrTokenInformationVGMd, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D33_Nlu_External_AsrTokenInformationVGMR, MEMORY[0x1E69D0BA0]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy32SiriReferenceResolutionDataModel25RRDataSourceMetadataValueOGMd, &_ss23_ContiguousArrayStorageCy32SiriReferenceResolutionDataModel25RRDataSourceMetadataValueOGMR, MEMORY[0x1E69D2920]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy12SiriOntology13UsoIdentifierVGMd, &_ss23_ContiguousArrayStorageCy12SiriOntology13UsoIdentifierVGMR, MEMORY[0x1E69D1790]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy11SiriKitFlow8USOParseVGMd, &_ss23_ContiguousArrayStorageCy11SiriKitFlow8USOParseVGMR, MEMORY[0x1E69D01A0]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMR, MEMORY[0x1E69695A8]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy32SiriReferenceResolutionDataModel11RRCandidateVGMd, &_ss23_ContiguousArrayStorageCy32SiriReferenceResolutionDataModel11RRCandidateVGMR, MEMORY[0x1E69D2828]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy12SiriOntology13UsoEntitySpanVGMd, &_ss23_ContiguousArrayStorageCy12SiriOntology13UsoEntitySpanVGMR, MEMORY[0x1E69D1740]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy12SiriOntology12SpanPropertyVGMd, &_ss23_ContiguousArrayStorageCy12SiriOntology12SpanPropertyVGMR, MEMORY[0x1E69D1730]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy12SiriOntology14AsrAlternativeVGMd, &_ss23_ContiguousArrayStorageCy12SiriOntology14AsrAlternativeVGMR, MEMORY[0x1E69D17A0]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy7SiriCam12RankedActionV03topG0_SayAC0E5ParseOG17alternativeParsestGMd, &_ss23_ContiguousArrayStorageCy7SiriCam12RankedActionV03topG0_SayAC0E5ParseOG17alternativeParsestGMR, &_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestMd, &_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy7SiriCam0E5ParseOGMd, &_ss23_ContiguousArrayStorageCy7SiriCam0E5ParseOGMR, MEMORY[0x1E69CE310]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy14SiriKitRuntime13StubCamBridgeC12RankCallArgsVGMd, &_ss23_ContiguousArrayStorageCy14SiriKitRuntime13StubCamBridgeC12RankCallArgsVGMR, type metadata accessor for StubCamBridge.RankCallArgs);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy11SiriKitFlow12PluginActionVGMd, &_ss23_ContiguousArrayStorageCy11SiriKitFlow12PluginActionVGMR, MEMORY[0x1E69CFE08]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy32SiriReferenceResolutionDataModel8RREntityVGMd, &_ss23_ContiguousArrayStorageCy32SiriReferenceResolutionDataModel8RREntityVGMR, MEMORY[0x1E69D2948]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D18_Nlu_External_TaskVGMd, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D18_Nlu_External_TaskVGMR, MEMORY[0x1E69D0948]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D36_Nlu_External_DelegatedUserDialogActVGMd, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D36_Nlu_External_DelegatedUserDialogActVGMR, MEMORY[0x1E69D0BE8]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy16SiriMessageTypes0D16XActionCandidateVGMd, &_ss23_ContiguousArrayStorageCy16SiriMessageTypes0D16XActionCandidateVGMR, MEMORY[0x1E69D03F0]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy11SiriKitFlow5ParseOGMd, &_ss23_ContiguousArrayStorageCy11SiriKitFlow5ParseOGMR, MEMORY[0x1E69D0188]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D27_Nlu_External_UserDialogActVGMd, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D27_Nlu_External_UserDialogActVGMR, MEMORY[0x1E69D0A68]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy11SiriKitFlow24CorrectionsActionOutcomeOGMd, &_ss23_ContiguousArrayStorageCy11SiriKitFlow24CorrectionsActionOutcomeOGMR, MEMORY[0x1E69D0058]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy11SiriKitFlow14IdentifiedUserVGMd, &_ss23_ContiguousArrayStorageCy11SiriKitFlow14IdentifiedUserVGMR, MEMORY[0x1E69CFE58]);
}

uint64_t protocol witness for CamProviding.provideCamInstance(camEnabledFeatures:) in conformance RealCamProvider(uint64_t *a1, uint64_t a2)
{
  v9 = v2;
  type metadata accessor for CamSingletonProvider();
  static CamSingletonProvider.cam(camEnabledFeatures:)();
  v4 = type metadata accessor for RealCamWrapper();
  v5 = swift_allocObject();
  outlined init with take of ReferenceResolutionClientProtocol(&v8, v5 + 16);
  a1[3] = v4;
  a1[4] = &protocol witness table for RealCamWrapper;
  *a1 = v5;
  v6 = *(v2 + 8);

  return v6();
}

uint64_t getEnumTagSinglePayload for ConversationAction(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

void specialized ConversationService.bridge(didReceiveRSKE:sessionConfiguration:withRequestContextData:withRecognizedUser:withUserMeetingSessionThreshold:withRemoteRequestWasMadeInSession:from:)()
{
  v165 = v0;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 552);
  v2 = *(v0 + 240);
  v3 = type metadata accessor for Logger();
  *(v0 + 616) = __swift_project_value_buffer(v3, static Logger.executor);
  Logger.debugF(file:function:)("SiriKitRuntime/ConversationService.swift", 40, 2, "bridge(didReceiveRSKE:sessionConfiguration:withRequestContextData:withRecognizedUser:withUserMeetingSessionThreshold:withRemoteRequestWasMadeInSession:from:)", 157, 2);
  *(v0 + 624) = type metadata accessor for ConversationSELFHelper();
  static ConversationSELFHelper.shared.getter();
  dispatch thunk of ConversationSELFHelper.emitExecutionPrepareTimeBegin(rcId:)();

  v4 = type metadata accessor for RequestPositionInSession();
  v5 = *(v4 - 8);
  v6 = *(v5 + 56);
  v6(v1, 1, 1, v4);
  swift_beginAccess();
  v7 = *(v2 + 120);
  v8 = *(v0 + 600);
  if (v7 >> 6)
  {
    v158 = v3;
    v9 = *(v2 + 112);
    v156 = *(v2 + 120);
    v154 = v9;
    if (v7 >> 6 == 1)
    {
      v10 = *(v0 + 552);
      v11 = *(v0 + 544);
      v12 = *(v2 + 120);
      v13 = v9;
      outlined destroy of ReferenceResolutionClientProtocol?(v10, &_s19SiriFlowEnvironment24RequestPositionInSessionOSgMd, &_s19SiriFlowEnvironment24RequestPositionInSessionOSgMR);
      v151 = *&v13[OBJC_IVAR____TtC14SiriKitRuntime18StartExecutionTurn_executionRequestId];
      v148 = *&v13[OBJC_IVAR____TtC14SiriKitRuntime18StartExecutionTurn_executionRequestId + 8];
      v149 = *&v13[OBJC_IVAR____TtC14SiriKitRuntime18StartExecutionTurn_rootRequestId];
      v162 = *&v13[OBJC_IVAR____TtC14SiriKitRuntime18StartExecutionTurn_rootRequestId + 8];
      outlined init with copy of ReferenceResolutionClientProtocol?(&v13[OBJC_IVAR____TtC14SiriKitRuntime18StartExecutionTurn_sessionId], v8, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v14 = MEMORY[0x1E69CE598];
      if ((v12 & 1) == 0)
      {
        v14 = MEMORY[0x1E69CE5A8];
      }

      (*(v5 + 104))(v11, *v14, v4);
      v6(v11, 0, 1, v4);
      v15 = v162;
      v16 = v148;
      outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v11, v10, &_s19SiriFlowEnvironment24RequestPositionInSessionOSgMd, &_s19SiriFlowEnvironment24RequestPositionInSessionOSgMR);
      v17 = one-time initialization token for conversationBridge;

      if (v17 != -1)
      {
        swift_once();
      }

      v18 = *(v0 + 600);
      v19 = *(v0 + 592);
      __swift_project_value_buffer(v158, static Logger.conversationBridge);
      outlined init with copy of ReferenceResolutionClientProtocol?(v18, v19, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);

      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.debug.getter();

      v22 = os_log_type_enabled(v20, v21);
      v23 = *(v0 + 592);
      if (!v22)
      {
        outlined consume of ConversationService.State(v154, v156);

        outlined destroy of ReferenceResolutionClientProtocol?(v23, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        v39 = v149;
        v29 = v151;
        goto LABEL_35;
      }

      v24 = 7104878;
      v25 = *(v0 + 584);
      v26 = swift_slowAlloc();
      v159 = swift_slowAlloc();
      v164[0] = v159;
      *v26 = 136315650;
      if (v162)
      {
        v24 = v149;
        v27 = v162;
      }

      else
      {
        v27 = 0xE300000000000000;
      }

      v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v27, v164);

      *(v26 + 4) = v28;
      *(v26 + 12) = 2080;

      v29 = v151;
      v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v151, v148, v164);

      *(v26 + 14) = v30;
      *(v26 + 22) = 2080;
      outlined init with copy of ReferenceResolutionClientProtocol?(v23, v25, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v31 = type metadata accessor for UUID();
      v32 = *(v31 - 8);
      if ((*(v32 + 48))(v25, 1, v31) == 1)
      {
        outlined destroy of ReferenceResolutionClientProtocol?(*(v0 + 584), &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        v33 = 0xE300000000000000;
        v34 = 7104878;
      }

      else
      {
        v58 = *(v0 + 584);
        v34 = UUID.uuidString.getter();
        v33 = v59;
        v60 = v58;
        v29 = v151;
        (*(v32 + 8))(v60, v31);
      }

      outlined destroy of ReferenceResolutionClientProtocol?(*(v0 + 592), &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v61 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v33, v164);

      *(v26 + 24) = v61;
      v62 = "ConversationService bridge - state - awaitingRequestContextData rootrequestId - %s and startTurnRequestId - %s and sessionId - %s";
    }

    else
    {
      v40 = &v9[OBJC_IVAR____TtCC14SiriKitRuntime19ConversationService10ActiveTurn_turnData];
      v29 = *&v9[OBJC_IVAR____TtCC14SiriKitRuntime19ConversationService10ActiveTurn_turnData];
      v16 = *&v9[OBJC_IVAR____TtCC14SiriKitRuntime19ConversationService10ActiveTurn_turnData + 8];
      v39 = *&v9[OBJC_IVAR____TtCC14SiriKitRuntime19ConversationService10ActiveTurn_turnData + 16];
      v15 = *&v9[OBJC_IVAR____TtCC14SiriKitRuntime19ConversationService10ActiveTurn_turnData + 24];
      v41 = v9;
      v42 = type metadata accessor for RemoteConversationTurnData(0);
      outlined init with copy of ReferenceResolutionClientProtocol?(&v40[*(v42 + 24)], v8, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);

      outlined copy of ConversationService.State(v41, v7);
      v43 = one-time initialization token for conversationBridge;

      if (v43 != -1)
      {
        swift_once();
      }

      v44 = *(v0 + 600);
      v45 = *(v0 + 576);
      __swift_project_value_buffer(v158, static Logger.conversationBridge);
      outlined init with copy of ReferenceResolutionClientProtocol?(v44, v45, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);

      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.debug.getter();

      v46 = os_log_type_enabled(v20, v21);
      v47 = *(v0 + 576);
      if (!v46)
      {
        outlined consume of ConversationService.State(v154, v156);

        outlined destroy of ReferenceResolutionClientProtocol?(v47, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        goto LABEL_35;
      }

      v48 = v39;
      v49 = *(v0 + 568);
      v26 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v159 = v50;
      *v26 = 136315650;
      v149 = v48;
      v152 = v29;
      if (v15)
      {
        v51 = v15;
      }

      else
      {
        v48 = 7104878;
        v51 = 0xE300000000000000;
      }

      v162 = v15;
      v164[0] = v50;

      v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v51, v164);
      v29 = v152;

      *(v26 + 4) = v52;
      *(v26 + 12) = 2080;

      v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v152, v16, v164);

      *(v26 + 14) = v53;
      *(v26 + 22) = 2080;
      outlined init with copy of ReferenceResolutionClientProtocol?(v47, v49, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v54 = type metadata accessor for UUID();
      v55 = *(v54 - 8);
      if ((*(v55 + 48))(v49, 1, v54) == 1)
      {
        outlined destroy of ReferenceResolutionClientProtocol?(*(v0 + 568), &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        v56 = 0xE300000000000000;
        v57 = 7104878;
      }

      else
      {
        v63 = *(v0 + 568);
        v57 = UUID.uuidString.getter();
        v56 = v64;
        v65 = v63;
        v29 = v152;
        (*(v55 + 8))(v65, v54);
      }

      outlined destroy of ReferenceResolutionClientProtocol?(*(v0 + 576), &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v66 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v57, v56, v164);

      *(v26 + 24) = v66;
      v62 = "ConversationService bridge - state - turnStarted with rootrequestId - %s and startTurnRequestId - %s and sessionId - %s";
    }

    _os_log_impl(&dword_1DC659000, v20, v21, v62, v26, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v159, -1, -1);
    MEMORY[0x1E12A2F50](v26, -1, -1);

    outlined consume of ConversationService.State(v154, v156);
    v15 = v162;
    v39 = v149;
  }

  else
  {
    v35 = type metadata accessor for UUID();
    (*(*(v35 - 8) + 56))(v8, 1, 1, v35);
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v3, static Logger.conversationBridge);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_1DC659000, v36, v37, "ConversationService bridge - state - idle state - rootRequestId - nil and startTurnRequestId - nil", v38, 2u);
      MEMORY[0x1E12A2F50](v38, -1, -1);
    }

    v29 = 0;
    v16 = 0;
    v39 = 0;
    v15 = 0;
  }

LABEL_35:
  *(v0 + 640) = v15;
  *(v0 + 632) = v39;
  v67 = *(v0 + 552);
  v68 = *(v0 + 504);
  v69 = *(v0 + 240);
  v70 = *(v0 + 208);
  v71 = *(v0 + 192);
  v72.value._countAndFlagsBits = v29;
  v72.value._object = v16;
  v73 = SAIntentGroupRunSiriKitExecutor.executionRequestId(previousExecutionRequestId:)(v72);
  *(v0 + 648) = v73;

  v74 = ConversationService.combineTurnDataContext(rske:positionInSession:incomingRequestContextData:)(v71, v67, v70);
  *(v0 + 664) = v74;
  ConversationService.markBusy(doing:)(0xD000000000000012, 0x80000001DCA817B0);
  v75 = *(**(v69 + 200) + 128);

  v75(&async function pointer to partial apply for closure #1 in ConversationService.bridge(didReceiveRSKE:sessionConfiguration:withRequestContextData:withRecognizedUser:withUserMeetingSessionThreshold:withRemoteRequestWasMadeInSession:from:), v69);

  static SiriKitExecutorRunUtils.getInputAndRRData(from:requestContextData:)(v71, v74, v68);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputV_10Foundation4DataVSgtMd, &_s11SiriKitFlow5InputV_10Foundation4DataVSgtMR);
  if ((*(*(v76 - 8) + 48))(v68, 1, v76) == 1)
  {
    v160 = v74;
    v77 = *(v0 + 504);
    v79 = *(v0 + 296);
    v78 = *(v0 + 304);
    v80 = *(v0 + 264);
    v81 = *(v0 + 272);
    v83 = *(v0 + 248);
    v82 = *(v0 + 256);

    outlined destroy of ReferenceResolutionClientProtocol?(v77, &_s11SiriKitFlow5InputV_10Foundation4DataVSgtSgMd, &_s11SiriKitFlow5InputV_10Foundation4DataVSgtSgMR);
    v84 = type metadata accessor for FlowOutputMessage.InAppResponse();
    (*(*(v84 - 8) + 56))(v78, 1, 1, v84);
    (*(v82 + 104))(v81, *MEMORY[0x1E69D0678], v83);
    v85 = *(v82 + 16);
    v85(v80, v81, v83);
    outlined init with copy of ReferenceResolutionClientProtocol?(v78, v79, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
    v163 = type metadata accessor for ExecutionOutput(0);
    v86 = objc_allocWithZone(v163);
    *&v86[OBJC_IVAR___SKRExecutionOutput_executionRequestId] = v73;
    v87 = &v86[OBJC_IVAR___SKRExecutionOutput_fullPrint];
    *v87 = 0;
    *(v87 + 1) = 0;
    v88 = &v86[OBJC_IVAR___SKRExecutionOutput_fullSpeak];
    *v88 = 0;
    *(v88 + 1) = 0;
    v89 = &v86[OBJC_IVAR___SKRExecutionOutput_redactedFullPrint];
    *v89 = 0;
    *(v89 + 1) = 0;
    v90 = &v86[OBJC_IVAR___SKRExecutionOutput_redactedFullSpeak];
    *v90 = 0;
    *(v90 + 1) = 0;
    v85(&v86[OBJC_IVAR___SKRExecutionOutput_executionSource], v80, v83);
    outlined init with copy of ReferenceResolutionClientProtocol?(v79, &v86[OBJC_IVAR___SKRExecutionOutput_inAppResponse], &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
    v91 = Logger.logObject.getter();
    v92 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v91, v92))
    {
      v93 = swift_slowAlloc();
      v94 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      v164[0] = v95;
      *v93 = 136315394;
      *(v93 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000085, 0x80000001DCA7C240, v164);
      *(v93 + 12) = 2112;
      *(v93 + 14) = 0;
      *v94 = 0;
      _os_log_impl(&dword_1DC659000, v91, v92, "ExecutionOutput: %s: converting non-context ACE command=%@ to ExecutionOutput", v93, 0x16u);
      outlined destroy of ReferenceResolutionClientProtocol?(v94, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1E12A2F50](v94, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v95);
      MEMORY[0x1E12A2F50](v95, -1, -1);
      MEMORY[0x1E12A2F50](v93, -1, -1);
    }

    v157 = *(v0 + 328);
    v96 = *(v0 + 296);
    v97 = *(v0 + 264);
    v150 = *(v0 + 272);
    v153 = *(v0 + 304);
    v98 = *(v0 + 248);
    v99 = *(v0 + 256);
    v100 = *(v0 + 232);
    v161 = *(v0 + 240);
    ObjectType = swift_getObjectType();
    *&v86[OBJC_IVAR___SKRExecutionOutput_command] = 0;
    *&v86[OBJC_IVAR___SKRExecutionOutput_contextUpdate] = 0;
    *(v0 + 112) = v86;
    *(v0 + 120) = v163;
    v101 = objc_msgSendSuper2((v0 + 112), sel_init);
    outlined destroy of ReferenceResolutionClientProtocol?(v96, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
    v102 = *(v99 + 8);
    v102(v97, v98);
    v102(v150, v98);
    outlined destroy of ReferenceResolutionClientProtocol?(v153, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
    (*(v100 + 32))(v101, 0xD00000000000001FLL, 0x80000001DCA817D0, ObjectType, v100);

    v103 = type metadata accessor for TaskPriority();
    (*(*(v103 - 8) + 56))(v157, 1, 1, v103);
    v104 = swift_allocObject();
    v104[2] = 0;
    v104[3] = 0;
    v104[4] = v161;

    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v157, &closure #1 in ConversationService.markNotBusyAsync()partial apply, v104);

    v105 = *(v0 + 600);
    outlined destroy of ReferenceResolutionClientProtocol?(*(v0 + 552), &_s19SiriFlowEnvironment24RequestPositionInSessionOSgMd, &_s19SiriFlowEnvironment24RequestPositionInSessionOSgMR);
    outlined destroy of ReferenceResolutionClientProtocol?(v105, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);

    v106 = *(v0 + 8);

    v106();
    return;
  }

  v107 = *(v0 + 536);
  v108 = *(v0 + 520);
  v109 = *(v0 + 192);
  v110 = (*(v0 + 504) + *(v76 + 48));
  *(v0 + 672) = *v110;
  *(v0 + 680) = v110[1];
  v111 = *(v108 + 32);
  *(v0 + 688) = v111;
  *(v0 + 696) = (v108 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v111(v107);
  v112 = [v109 remoteExecution];
  if (v112)
  {
    v113 = *(v0 + 192);

    v114 = [v113 remoteExecution];
    if (!v114)
    {
      __break(1u);
      goto LABEL_58;
    }

    v115 = v114;
    v116 = [v114 speechPackageData];

    if (v116)
    {
      v117 = *(v0 + 192);
      v118 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v120 = v119;

      outlined consume of Data._Representation(v118, v120);
      v121 = [v117 remoteExecution];
      if (v121)
      {
        v122 = v121;
        v123 = [v121 speechPackageData];

        if (v123)
        {
          type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSKeyedUnarchiver, 0x1E696ACD0);
          type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for AFSpeechPackage, 0x1E698D228);
          v124 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v126 = v125;

          v127 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
          outlined consume of Data._Representation(v124, v126);
          *(v0 + 720) = v127;
          v137 = *(v0 + 192);
          v138 = swift_task_alloc();
          *(v0 + 728) = v138;
          *v138 = v0;
          v138[1] = specialized ConversationService.bridge(didReceiveRSKE:sessionConfiguration:withRequestContextData:withRecognizedUser:withUserMeetingSessionThreshold:withRemoteRequestWasMadeInSession:from:);
          v139 = *(v0 + 672);
          v140 = *(v0 + 664);
          v141 = *(v0 + 656);
          v142 = *(v0 + 648);
          v143 = *(v0 + 640);
          v144 = *(v0 + 632);
          v145 = *(v0 + 600);
          v146 = *(v0 + 232);
          v147 = *(v0 + 200);
          v168 = *(v0 + 224);
          v169 = v146;
          v167 = v139;

          ConversationService.setupNewTurn(executionRequestId:rootRequestId:sessionId:sessionConfiguration:contextData:runSiriKitExecutor:scopedRRData:bridge:)(v142, v141, v144, v143, v145, v147, v140, v137);
          return;
        }

LABEL_59:
        __break(1u);
        return;
      }

LABEL_58:
      __break(1u);
      goto LABEL_59;
    }
  }

  v128 = Logger.logObject.getter();
  v129 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v128, v129))
  {
    v130 = swift_slowAlloc();
    *v130 = 0;
    _os_log_impl(&dword_1DC659000, v128, v129, "rske does not contain remoteExecution payload", v130, 2u);
    MEMORY[0x1E12A2F50](v130, -1, -1);
  }

  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v131 = type metadata accessor for OSSignposter();
  v132 = __swift_project_value_buffer(v131, static Signposter.executor);
  swift_unknownObjectRetain();
  static OSSignpostID.exclusive.getter();
  v133 = swift_task_alloc();
  *(v0 + 704) = v133;
  *v133 = v0;
  v133[1] = specialized ConversationService.bridge(didReceiveRSKE:sessionConfiguration:withRequestContextData:withRecognizedUser:withUserMeetingSessionThreshold:withRemoteRequestWasMadeInSession:from:);
  v134 = *(v0 + 496);
  v135 = *(v0 + 224);
  v136 = *(v0 + 232);

  specialized OSSignposter.withIntervalSignpostAsync<A>(_:id:around:)("FetchSpeechInfo", 15, 2, v134, v132, v135, v136);
}

{
  v1 = v0;
  v28 = v0[95];
  v2 = v0[90];
  v3 = v0[56];
  v4 = v0[53];
  v27 = v0[54];
  v35 = v4;
  v5 = v0[51];
  v6 = v0[52];
  v7 = v0[50];
  v8 = v1[49];
  v30 = v1[30];
  v31 = v1[48];
  v29 = *(v1 + 896);
  v32 = v1[27];
  v9 = type metadata accessor for NLRoutingDecisionMessage.GenAIFallbackSuppressReason();
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  v10 = type metadata accessor for FlowRedirectContext();
  v26 = v6;
  (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
  v11 = v2;
  v12 = v2;
  static ExecutionLocation.unknown.getter();
  Input.parse.getter();
  v13 = v7;
  Parse.nlLocation.getter();
  v28(v3, v27);
  v14 = type metadata accessor for RemoteConversationSpeechData(0);
  v15 = objc_allocWithZone(v14);
  v16 = &v15[OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_rcId];
  *v16 = 12589;
  v16[1] = 0xE200000000000000;
  v15[OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_asrOnDevice] = 0;
  *&v15[OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_userSpecificInfoForRecognizedUser] = v32;
  *&v15[OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_userSpecificInfoForUserMeetingSessionThreshold] = v32;
  v15[OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_remoteRequestWasMadeInSession] = v29;
  *&v15[OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_speechPackage] = v12;
  v17 = &v15[OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_utterance];
  *v17 = 0;
  v17[1] = 0;
  v18 = &v15[OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_responseLanguageVariant];
  *v18 = 0;
  v18[1] = 0;
  v19 = &v15[OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_requestLanguageVariant];
  *v19 = 0;
  v19[1] = 0;
  outlined init with copy of ReferenceResolutionClientProtocol?(v35, &v15[OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_genAIFallbackSuppressReason], &_s16SiriMessageTypes017NLRoutingDecisionB0C27GenAIFallbackSuppressReasonOSgMd, &_s16SiriMessageTypes017NLRoutingDecisionB0C27GenAIFallbackSuppressReasonOSgMR);
  outlined init with copy of ReferenceResolutionClientProtocol?(v6, &v15[OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_flowRedirectContext], &_s11SiriKitFlow0C15RedirectContextOSgMd, &_s11SiriKitFlow0C15RedirectContextOSgMR);
  v20 = *(v8 + 16);
  v20(&v15[OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_asrLocation], v5, v31);
  v20(&v15[OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_nlLocation], v7, v31);
  v1[16] = v15;
  v1[17] = v14;
  v21 = v32;
  v1[100] = objc_msgSendSuper2(v1 + 8, sel_init);
  v22 = *(v8 + 8);
  v22(v13, v31);
  v22(v5, v31);
  outlined destroy of ReferenceResolutionClientProtocol?(v26, &_s11SiriKitFlow0C15RedirectContextOSgMd, &_s11SiriKitFlow0C15RedirectContextOSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v35, &_s16SiriMessageTypes017NLRoutingDecisionB0C27GenAIFallbackSuppressReasonOSgMd, &_s16SiriMessageTypes017NLRoutingDecisionB0C27GenAIFallbackSuppressReasonOSgMR);
  v23 = v30[6];
  __swift_project_boxed_opaque_existential_1(v30 + 2, v30[5]);
  swift_beginAccess();
  v1[101] = v30[13];
  v24 = *(v23 + 16);

  v33 = v24 + *v24;
  v25 = swift_task_alloc();
  v1[102] = v25;
  *v25 = v1;
  v25[1] = specialized ConversationService.bridge(didReceiveRSKE:sessionConfiguration:withRequestContextData:withRecognizedUser:withUserMeetingSessionThreshold:withRemoteRequestWasMadeInSession:from:);

  __asm { BRAA            X8, X16 }
}

id outlined copy of ConversationService.State(id result, unsigned __int8 a2)
{
  v2 = a2 >> 6;
  if (v2 == 2)
  {
  }

  if (v2 == 1)
  {
    return result;
  }

  return result;
}

Swift::String __swiftcall SAIntentGroupRunSiriKitExecutor.executionRequestId(previousExecutionRequestId:)(Swift::String_optional previousExecutionRequestId)
{
  object = previousExecutionRequestId.value._object;
  countAndFlagsBits = previousExecutionRequestId.value._countAndFlagsBits;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [v1 refId];
  if (v9)
  {
    v10 = v9;
    countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
    object = v11;
  }

  else if (object)
  {
    v12 = one-time initialization token for executor;

    if (v12 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static Logger.executor);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_1DC659000, v14, v15, "[Conversation] RSKE has no refId: Falling back on previous executionRequestId", v16, 2u);
      MEMORY[0x1E12A2F50](v16, -1, -1);
    }
  }

  else
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static Logger.executor);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1DC659000, v18, v19, "[Conversation] RSKE has no refId: Will generate new executionRequestId", v20, 2u);
      MEMORY[0x1E12A2F50](v20, -1, -1);
    }

    UUID.init()();
    countAndFlagsBits = UUID.uuidString.getter();
    object = v21;
    (*(v5 + 8))(v8, v4);
  }

  v22 = countAndFlagsBits;
  v23 = object;
  result._object = v23;
  result._countAndFlagsBits = v22;
  return result;
}

uint64_t ConversationService.combineTurnDataContext(rske:positionInSession:incomingRequestContextData:)(void *a1, uint64_t a2, char *a3)
{
  v4 = v3;
  v64 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriFlowEnvironment24RequestPositionInSessionOSgMd, &_s19SiriFlowEnvironment24RequestPositionInSessionOSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v62 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v57 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v57 - v13;
  v15 = type metadata accessor for RequestPositionInSession();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v61 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v60 = &v57 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
  v21.n128_f64[0] = MEMORY[0x1EEE9AC00](v20 - 8);
  v23 = &v57 - v22;
  v24 = *((*MEMORY[0x1E69E7D40] & *a3) + 0x170);
  v63 = a3;
  v25 = v24(v21);
  swift_beginAccess();
  v26 = *(v4 + 120);
  if ((v26 & 0xC0) == 0x80)
  {
    v27 = *(v4 + 112);

    v28 = [a1 mode];
    if (v28)
    {
    }

    else
    {
      v29 = v27;
      v59 = v26;
      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v30 = type metadata accessor for Logger();
      __swift_project_value_buffer(v30, static Logger.executor);
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&dword_1DC659000, v31, v32, "Fallback to ResponseMode in RequestContextData when rske mode is nil", v33, 2u);
        MEMORY[0x1E12A2F50](v33, -1, -1);
      }

      v34 = &v29[OBJC_IVAR____TtCC14SiriKitRuntime19ConversationService10ActiveTurn_turnData];
      v58 = *&v34[*(type metadata accessor for RemoteConversationTurnData(0) + 32)];
      v35 = OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_responseMode;
      v36 = type metadata accessor for ResponseMode();
      v37 = *(v36 - 8);
      v38 = v58 + v35;
      v27 = v29;
      (*(v37 + 16))(v23, v38, v36);
      (*(v37 + 56))(v23, 0, 1, v36);
      (*(*v25 + 1064))(v23);

      outlined destroy of ReferenceResolutionClientProtocol?(v23, &_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
      v26 = v59;
    }

    if (*&v63[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_voiceAudioSessionId])
    {
      outlined consume of ConversationService.State(v27, v26);
    }

    else
    {
      v59 = v26;
      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v39 = type metadata accessor for Logger();
      __swift_project_value_buffer(v39, static Logger.executor);
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = v27;
        v43 = swift_slowAlloc();
        *v43 = 0;
        _os_log_impl(&dword_1DC659000, v40, v41, "Fallback to voiceAudioSessionId in RequestContextData when incoming session is unset", v43, 2u);
        v44 = v43;
        v27 = v42;
        MEMORY[0x1E12A2F50](v44, -1, -1);
      }

      v45 = &v27[OBJC_IVAR____TtCC14SiriKitRuntime19ConversationService10ActiveTurn_turnData];
      v46 = *(*&v45[*(type metadata accessor for RemoteConversationTurnData(0) + 32)] + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_voiceAudioSessionId);
      v47 = *(*v25 + 1216);
      v65 = 0;
      v47(v46);
      outlined consume of ConversationService.State(v27, v59);
    }
  }

  outlined init with copy of ReferenceResolutionClientProtocol?(v64, v14, &_s19SiriFlowEnvironment24RequestPositionInSessionOSgMd, &_s19SiriFlowEnvironment24RequestPositionInSessionOSgMR);
  v48 = *(v16 + 48);
  if (v48(v14, 1, v15) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v14, &_s19SiriFlowEnvironment24RequestPositionInSessionOSgMd, &_s19SiriFlowEnvironment24RequestPositionInSessionOSgMR);
    v49 = *(v16 + 16);
    v49(v11, &v63[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_positionInSession], v15);
    v50 = *(v16 + 56);
    v50(v11, 0, 1, v15);
    (*(*v25 + 1248))(v11);

    outlined destroy of ReferenceResolutionClientProtocol?(v11, &_s19SiriFlowEnvironment24RequestPositionInSessionOSgMd, &_s19SiriFlowEnvironment24RequestPositionInSessionOSgMR);
  }

  else
  {
    v51 = v60;
    (*(v16 + 32))(v60, v14, v15);
    v49 = *(v16 + 16);
    v49(v11, v51, v15);
    v50 = *(v16 + 56);
    v50(v11, 0, 1, v15);
    (*(*v25 + 1248))(v11);

    outlined destroy of ReferenceResolutionClientProtocol?(v11, &_s19SiriFlowEnvironment24RequestPositionInSessionOSgMd, &_s19SiriFlowEnvironment24RequestPositionInSessionOSgMR);
    (*(v16 + 8))(v51, v15);
  }

  v52 = v62;
  outlined init with copy of ReferenceResolutionClientProtocol?(v64, v62, &_s19SiriFlowEnvironment24RequestPositionInSessionOSgMd, &_s19SiriFlowEnvironment24RequestPositionInSessionOSgMR);
  if (v48(v52, 1, v15) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v52, &_s19SiriFlowEnvironment24RequestPositionInSessionOSgMd, &_s19SiriFlowEnvironment24RequestPositionInSessionOSgMR);
    v49(v11, &v63[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_positionInSession], v15);
    v50(v11, 0, 1, v15);
    (*(*v25 + 1248))(v11);

    v53 = outlined destroy of ReferenceResolutionClientProtocol?(v11, &_s19SiriFlowEnvironment24RequestPositionInSessionOSgMd, &_s19SiriFlowEnvironment24RequestPositionInSessionOSgMR);
  }

  else
  {
    v54 = v61;
    (*(v16 + 32))(v61, v52, v15);
    v49(v11, v54, v15);
    v50(v11, 0, 1, v15);
    (*(*v25 + 1248))(v11);

    outlined destroy of ReferenceResolutionClientProtocol?(v11, &_s19SiriFlowEnvironment24RequestPositionInSessionOSgMd, &_s19SiriFlowEnvironment24RequestPositionInSessionOSgMR);
    v53 = (*(v16 + 8))(v54, v15);
  }

  v55 = (*(*v25 + 1280))(v53);

  return v55;
}

uint64_t protocol witness for DecisionMaking.newTurnStarted(executionUUID:) in conformance DecisionEngine(uint64_t a1)
{
  *(*v1 + 176) = 0;

  ActionGenerator.newTurnStarted()();
  DecisionEngine.ambiguityService.getter(v6);
  v3 = v7;
  v4 = v8;
  __swift_project_boxed_opaque_existential_1(v6, v7);
  (*(v4 + 16))(a1, v3, v4);
  return __swift_destroy_boxed_opaque_existential_1Tm(v6);
}

Swift::Void __swiftcall ActionGenerator.newTurnStarted()()
{
  if (one-time initialization token for forceEnabled != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = static SiriKitFlowFeatureFlagDefinitions.forceEnabled;
  if (!*(static SiriKitFlowFeatureFlagDefinitions.forceEnabled + 16) || (v1 = specialized __RawDictionaryStorage.find<A>(_:)(), (v2 & 1) == 0))
  {
    v9 = &type metadata for SiriKitFlowFeatureFlagDefinitions;
    v10 = lazy protocol witness table accessor for type SiriKitFlowFeatureFlagDefinitions and conformance SiriKitFlowFeatureFlagDefinitions();
    v3 = isFeatureEnabled(_:)();
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    if ((v3 & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (*(*(v0 + 56) + v1) == 1)
  {
LABEL_8:
    LinkExpansionContextBuilder.newTurnStarted()();
  }

LABEL_9:
  if (one-time initialization token for forceEnabled != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = static LinkFeature.forceEnabled;
  if (!*(static LinkFeature.forceEnabled + 16) || (v5 = specialized __RawDictionaryStorage.find<A>(_:)(), (v6 & 1) == 0))
  {
    v9 = &type metadata for LinkFeature;
    v10 = lazy protocol witness table accessor for type LinkFeature and conformance LinkFeature();
    v7 = isFeatureEnabled(_:)();
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    if ((v7 & 1) == 0)
    {
      return;
    }

    goto LABEL_16;
  }

  if (*(*(v4 + 56) + v5) == 1)
  {
LABEL_16:
    AppShortcutExpansionContextBuilder.newTurnStarted()();
  }
}

Swift::Void __swiftcall AppShortcutExpansionContextBuilder.newTurnStarted()()
{
  v1 = v0;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.executor);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1DC659000, v3, v4, "[AppShortcutExpansionContext] New turn started", v5, 2u);
    MEMORY[0x1E12A2F50](v5, -1, -1);
  }

  swift_beginAccess();
  v6 = v1[3];
  v1[4] = 0;
  v1[5] = 0;
  v1[3] = 0;
  outlined consume of AppShortcutExpansionContext?(v6);
}

uint64_t outlined consume of AppShortcutExpansionContext?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t protocol witness for AmbiguityServiceProviding.newTurnStarted(executionUUID:) in conformance AmbiguityService(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 56);
  __swift_project_boxed_opaque_existential_1((*v1 + 24), v4);
  (*(v5 + 64))(a1, v4, v5);
  v6 = *(v3 + 16);
  v7 = v6[5];
  v8 = v6[6];
  __swift_project_boxed_opaque_existential_1(v6 + 2, v7);
  return (*(v8 + 8))(a1, v7, v8);
}

uint64_t CamBridgeImpl.setupNewTurn(executionUUID:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v67 = v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v58 - v5;
  MEMORY[0x1EEE9AC00](v7);
  v66 = v58 - v8;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v69 = v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v58 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = v58 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = v58 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = v58 - v22;
  type metadata accessor for ConversationSELFHelper();
  static ConversationSELFHelper.shared.getter();
  dispatch thunk of ConversationSELFHelper.makeCamIdAndEmitRequestLink(executionUUID:)();

  static ConversationSELFHelper.shared.getter();
  v71 = v20;
  dispatch thunk of ConversationSELFHelper.makeCaarIdAndEmitRequestLink(executionUUID:)();

  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  __swift_project_value_buffer(v24, static Logger.executor);
  v25 = v10[2];
  v25(v17, a1, v9);
  v70 = v23;
  v25(v14, v23, v9);
  v65 = v25;
  v25(v69, v71, v9);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v63 = v6;
    v29 = v28;
    v61 = swift_slowAlloc();
    v72[0] = v61;
    *v29 = 136315650;
    v58[1] = _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v60 = v26;
    v30 = dispatch thunk of CustomStringConvertible.description.getter();
    v32 = v31;
    v62 = a1;
    v59 = v27;
    v33 = v10[1];
    v64 = (v10 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v33(v17, v9);
    v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v32, v72);

    *(v29 + 4) = v34;
    *(v29 + 12) = 2080;
    v35 = dispatch thunk of CustomStringConvertible.description.getter();
    v37 = v36;
    v33(v14, v9);
    v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v37, v72);

    *(v29 + 14) = v38;
    *(v29 + 22) = 2080;
    v39 = v69;
    v40 = dispatch thunk of CustomStringConvertible.description.getter();
    v42 = v41;
    v69 = v33;
    v33(v39, v9);
    a1 = v62;
    v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v42, v72);

    *(v29 + 24) = v43;
    v44 = v60;
    _os_log_impl(&dword_1DC659000, v60, v59, "CamBridge: Setup new turn with executionUUID: %s, camId:%s, caarId: %s.", v29, 0x20u);
    v45 = v61;
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v45, -1, -1);
    v46 = v29;
    v6 = v63;
    MEMORY[0x1E12A2F50](v46, -1, -1);
  }

  else
  {

    v47 = v10[1];
    v64 = (v10 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v47(v69, v9);
    v47(v14, v9);
    v69 = v47;
    v47(v17, v9);
  }

  v48 = v65;
  v49 = v66;
  v65(v66, a1, v9);
  v50 = v10[7];
  v50(v49, 0, 1, v9);
  v51 = v6;
  v48(v6, v70, v9);
  v50(v6, 0, 1, v9);
  v52 = v67;
  v53 = v71;
  v48(v67, v71, v9);
  v50(v52, 0, 1, v9);
  type metadata accessor for CamBridgeState(0);
  v54 = swift_allocObject();
  *(v54 + 16) = MEMORY[0x1E69E7CC8];
  outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v49, v54 + OBJC_IVAR____TtC14SiriKitRuntime14CamBridgeState_requestLoggingId, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v51, v54 + OBJC_IVAR____TtC14SiriKitRuntime14CamBridgeState_camLoggingId, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v52, v54 + OBJC_IVAR____TtC14SiriKitRuntime14CamBridgeState_caarLoggingId, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v55 = v68;
  swift_beginAccess();
  *(v55 + 240) = v54;

  CamBridgeImpl.camBridgeState.didset();

  v56 = v69;
  (v69)(v53, v9);
  return v56(v70, v9);
}

uint64_t type metadata accessor for CamBridgeState(uint64_t a1)
{
  result = type metadata singleton initialization cache for CamBridgeState;
  if (!type metadata singleton initialization cache for CamBridgeState)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined destroy of UUID?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t CamBridgeState.__deallocating_deinit()
{

  outlined destroy of UUID?(v0 + OBJC_IVAR____TtC14SiriKitRuntime14CamBridgeState_requestLoggingId);
  outlined destroy of UUID?(v0 + OBJC_IVAR____TtC14SiriKitRuntime14CamBridgeState_camLoggingId);
  outlined destroy of UUID?(v0 + OBJC_IVAR____TtC14SiriKitRuntime14CamBridgeState_caarLoggingId);

  return swift_deallocClassInstance();
}

void CamBridgeImpl.camBridgeState.didset()
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
    v3 = swift_slowAlloc();
    v8 = v3;
    *v2 = 136315138;
    swift_beginAccess();
    type metadata accessor for CamBridgeState(0);

    v4 = String.init<A>(describing:)();
    v6 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v5, &v8);

    *(v2 + 4) = v6;
    _os_log_impl(&dword_1DC659000, oslog, v1, "CamBridge: camBridgeState set to %s", v2, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v3);
    MEMORY[0x1E12A2F50](v3, -1, -1);
    MEMORY[0x1E12A2F50](v2, -1, -1);
  }

  else
  {
  }
}

uint64_t ConversationService.markBusy(doing:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *(v2 + 128);
  OS_dispatch_semaphore.wait()();
  closure #1 in JetsamHelper.ensureJetsamTransaction()(v4);
  OS_dispatch_semaphore.signal()();
  type metadata accessor for SiriEnvironment();
  static SiriEnvironment.default.getter();
  v5 = SiriEnvironment.currentProcess.getter();

  v6 = dispatch thunk of CurrentProcess.idleTracker.getter();

  if (v6)
  {
    v7 = dispatch thunk of IdleTracker.track(name:)();
  }

  else
  {
    v7 = 0;
  }

  *(v3 + 136) = v7;
}

uint64_t ConcurrentTaskPool.add(work:)(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v11 - v6;
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = a1;
  v9[5] = a2;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v7, &async function pointer to partial apply for closure #1 in ConcurrentTaskPool.add(work:), v9);
  (*(*v2 + 120))();
}

uint64_t sub_1DC6CDC24()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

id static SiriKitExecutorRunUtils.getInputAndRRData(from:requestContextData:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v63 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0aB17ConfirmationStateOSgMd, &_s11SiriKitFlow0aB17ConfirmationStateOSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v60 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5ParseOSgMd, &_s11SiriKitFlow5ParseOSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v60 - v9;
  v11 = type metadata accessor for Parse();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v62 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v61 = &v60 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22ExecuteOnRemotePayloadVSgMd, &_s11SiriKitFlow22ExecuteOnRemotePayloadVSgMR);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v60 - v17;
  v19 = type metadata accessor for ExecuteOnRemotePayload();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((SAIntentGroupRunSiriKitExecutor.hasExecuteOnRemotePayload.getter() & 1) == 0)
  {
LABEL_4:
    result = [a1 parse];
    if (result)
    {
      v24 = result;
      v25 = *(a2 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_peerInfo);
      v26 = type metadata accessor for PeerInfoProvider();
      v27 = swift_allocObject();
      *(v27 + 16) = v25;
      v65[3] = v26;
      v65[4] = _s14SiriKitRuntime16PeerInfoProviderCAC0aB4Flow0dE9ProvidingAAWlTm_1(&lazy protocol witness table cache variable for type PeerInfoProvider and conformance PeerInfoProvider, type metadata accessor for PeerInfoProvider, &protocol conformance descriptor for PeerInfoProvider);
      v65[0] = v27;
      v28 = *(a2 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_endpointInfo);
      v29 = type metadata accessor for EndpointInfoProvider();
      v30 = swift_allocObject();
      *(v30 + 16) = v28;
      v64[3] = v29;
      v64[4] = _s14SiriKitRuntime16PeerInfoProviderCAC0aB4Flow0dE9ProvidingAAWlTm_1(&lazy protocol witness table cache variable for type EndpointInfoProvider and conformance EndpointInfoProvider, type metadata accessor for EndpointInfoProvider, &protocol conformance descriptor for EndpointInfoProvider);
      v64[0] = v30;
      v31 = v28;
      v32 = v25;
      v33 = [a1 confirmationState];
      if (!v33)
      {
        v35 = type metadata accessor for SiriKitConfirmationState();
        (*(*(v35 - 8) + 56))(v7, 1, 1, v35);
LABEL_9:
        v36 = [a1 parameterMetadata];
        if (v36)
        {
          v37 = v36;
          type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SAIntentGroupSiriKitParameterMetadata, 0x1E69C78A8);
          v38 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
        }

        else
        {
          v38 = 0;
        }

        v39 = [a1 appSelectionState];
        static SiriKitExecutorRunUtils.makeParse(aceParse:peerInfo:endpointInfo:confirmationState:aceParameterMetadata:appSelectionState:)(v24, v65, v64, v7, v38, v39, v10);

        outlined destroy of ReferenceResolutionClientProtocol?(v7, &_s11SiriKitFlow0aB17ConfirmationStateOSgMd, &_s11SiriKitFlow0aB17ConfirmationStateOSgMR);
        __swift_destroy_boxed_opaque_existential_1Tm(v64);
        __swift_destroy_boxed_opaque_existential_1Tm(v65);
        if ((*(v12 + 48))(v10, 1, v11) == 1)
        {
          outlined destroy of ReferenceResolutionClientProtocol?(v10, &_s11SiriKitFlow5ParseOSgMd, &_s11SiriKitFlow5ParseOSgMR);
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
            _os_log_impl(&dword_1DC659000, v41, v42, "Failed to make parse from RunSiriKitExecutor command", v43, 2u);
            MEMORY[0x1E12A2F50](v43, -1, -1);
          }

          v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputV_10Foundation4DataVSgtMd, &_s11SiriKitFlow5InputV_10Foundation4DataVSgtMR);
          return (*(*(v44 - 8) + 56))(v63, 1, 1, v44);
        }

        else
        {
          v45 = v61;
          (*(v12 + 32))(v61, v10, v11);
          specialized static SiriKitExecutorRunUtils.makeAlternatives(from:)(a1);
          v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputV_10Foundation4DataVSgtMd, &_s11SiriKitFlow5InputV_10Foundation4DataVSgtMR);
          v47 = *(v46 + 48);
          (*(v12 + 16))(v62, v45, v11);
          v48 = v63;
          Input.init(parse:alternatives:)();
          (*(v12 + 8))(v45, v11);
          *(v48 + v47) = xmmword_1DCA69F00;
          return (*(*(v46 - 8) + 56))(v48, 0, 1, v46);
        }
      }

      result = [a1 confirmationState];
      if (result)
      {
        v34 = result;
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        SiriKitConfirmationState.init(rawValue:)();
        goto LABEL_9;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return result;
  }

  SAIntentGroupRunSiriKitExecutor.executeOnRemotePayload()();
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v18, &_s11SiriKitFlow22ExecuteOnRemotePayloadVSgMd, &_s11SiriKitFlow22ExecuteOnRemotePayloadVSgMR);
    goto LABEL_4;
  }

  (*(v20 + 32))(v22, v18, v19);
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v49 = type metadata accessor for Logger();
  __swift_project_value_buffer(v49, static Logger.executor);
  v50 = Logger.logObject.getter();
  v51 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v65[0] = v53;
    *v52 = 136315138;
    *(v52 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002BLL, 0x80000001DCA890D0, v65);
    _os_log_impl(&dword_1DC659000, v50, v51, "%s: Found ExecuteOnRemote payload from remote device in RunSiriKitExecutor command, using that as Input", v52, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v53);
    MEMORY[0x1E12A2F50](v53, -1, -1);
    MEMORY[0x1E12A2F50](v52, -1, -1);
  }

  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputV_10Foundation4DataVSgtMd, &_s11SiriKitFlow5InputV_10Foundation4DataVSgtMR);
  v55 = v63;
  v56 = (v63 + *(v54 + 48));
  ExecuteOnRemotePayload.input.getter();
  v57 = ExecuteOnRemotePayload.rrData.getter();
  v59 = v58;
  (*(v20 + 8))(v22, v19);
  *v56 = v57;
  v56[1] = v59;
  return (*(*(v54 - 8) + 56))(v55, 0, 1, v54);
}

uint64_t partial apply for closure #1 in ConcurrentTaskPool.add(work:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return closure #1 in ConcurrentTaskPool.add(work:)(a1, v4, v5, v6);
}

uint64_t closure #1 in ConcurrentTaskPool.add(work:)(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return v7();
}

uint64_t partial apply for closure #1 in ConversationService.bridge(didReceiveRSKE:sessionConfiguration:withRequestContextData:withRecognizedUser:withUserMeetingSessionThreshold:withRemoteRequestWasMadeInSession:from:)()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in ConversationService.bridge(didReceiveRSKE:sessionConfiguration:withRequestContextData:withRecognizedUser:withUserMeetingSessionThreshold:withRemoteRequestWasMadeInSession:from:)(v0);
}

uint64_t closure #1 in ConversationService.bridge(didReceiveRSKE:sessionConfiguration:withRequestContextData:withRecognizedUser:withUserMeetingSessionThreshold:withRemoteRequestWasMadeInSession:from:)()
{
  *(v0 + 24) = *(*(v0 + 16) + 192);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = static ConversationActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in ConversationService.bridge(didReceiveRSKE:sessionConfiguration:withRequestContextData:withRecognizedUser:withUserMeetingSessionThreshold:withRemoteRequestWasMadeInSession:from:), v1, 0);
}

{
  TaskService.onNewTurn()();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t static SiriKitExecutorRunUtils.makeParse(aceParse:peerInfo:endpointInfo:confirmationState:aceParameterMetadata:appSelectionState:)@<X0>(void *a1@<X0>, void *a2@<X1>, void (*a3)(char *, char *, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, char *a7@<X8>)
{
  v183 = a6;
  v184 = a4;
  v187 = a5;
  v191 = a2;
  v192 = a3;
  v193 = a7;
  v172 = type metadata accessor for Parse.PegasusResult();
  v171 = *(v172 - 8);
  MEMORY[0x1EEE9AC00](v172);
  v170 = v164 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for BinaryDecodingOptions();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v164[1] = v164 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseVSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseVSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v167 = v164 - v12;
  v169 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse();
  v168 = *(v169 - 8);
  MEMORY[0x1EEE9AC00](v169);
  v165 = v164 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v166 = v164 - v15;
  v176 = type metadata accessor for String.Encoding();
  v175 = *(v176 - 8);
  MEMORY[0x1EEE9AC00](v176);
  v174 = v164 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0aB17ConfirmationStateOSgMd, &_s11SiriKitFlow0aB17ConfirmationStateOSgMR);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v178 = v164 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v190 = v164 - v20;
  v21 = type metadata accessor for SiriKitConfirmationState();
  v181 = *(v21 - 8);
  v182 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v173 = v164 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v180 = v164 - v24;
  v25 = type metadata accessor for AppResolutionStateProvider();
  v185 = *(v25 - 8);
  v186 = v25;
  MEMORY[0x1EEE9AC00](v25);
  v179 = v164 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v189 = v164 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology8NLIntentVSgMd, &_s12SiriOntology8NLIntentVSgMR);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v31 = v164 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v34 = v164 - v33;
  MEMORY[0x1EEE9AC00](v35);
  v37 = v164 - v36;
  v38 = type metadata accessor for NLIntent();
  v194 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v177 = v164 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v188 = v164 - v41;
  v43 = MEMORY[0x1EEE9AC00](v42);
  v45 = v164 - v44;
  v46 = a1;
  v47 = [a1 type];
  v48 = MEMORY[0x1E69C8000];
  if (!v47)
  {
    goto LABEL_96;
  }

  v49 = v47;
  v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v52 = v51;

  v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!v52)
  {
LABEL_97:

    static String._unconditionallyBridgeFromObjectiveC(_:)();

    static String._unconditionallyBridgeFromObjectiveC(_:)();

    static String._unconditionallyBridgeFromObjectiveC(_:)();

    static String._unconditionallyBridgeFromObjectiveC(_:)();

    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v69 = v46;
    goto LABEL_98;
  }

  if (v53 == v50 && v52 == v54)
  {

LABEL_7:

    static SiriKitExecutorRunUtils.makeNLv3Parse(parse:)(v46, v37);
    v55 = v194;
    if ((*(v194 + 48))(v37, 1, v38) == 1)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(v37, &_s12SiriOntology8NLIntentVSgMd, &_s12SiriOntology8NLIntentVSgMR);
      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v56 = type metadata accessor for Logger();
      __swift_project_value_buffer(v56, static Logger.executor);
      v57 = Logger.logObject.getter();
      v58 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        *v59 = 0;
        _os_log_impl(&dword_1DC659000, v57, v58, "Failed to make NLv3Parse, returning nil", v59, 2u);
        MEMORY[0x1E12A2F50](v59, -1, -1);
      }

LABEL_13:
      v60 = type metadata accessor for Parse();
      return (*(*(v60 - 8) + 56))(v193, 1, 1, v60);
    }

    v62 = *(v55 + 32);
    v62(v45, v37, v38);
    v63 = v193;
    v62(v193, v45, v38);
    v64 = MEMORY[0x1E69D0120];
    goto LABEL_15;
  }

  v48 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v48)
  {
    goto LABEL_7;
  }

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v50 && v52 == v68)
  {

    v69 = v46;
LABEL_21:
    isa = &selRef_setMitigationSource_;
    v72 = [v69 siriKitIntent];
    v73 = v190;
    if (v72)
    {
      v31 = v72;
      v50 = [v72 typeName];

      if (!v50)
      {
LABEL_103:
        specialized static SiriKitRuntimeCrashHelper.logAndCrash(_:file:line:)(0xD000000000000020, 0x80000001DCA89300, "/Library/Caches/com.apple.xbs/Sources/SiriKitExecutor/SiriKitRuntime/SiriKitExecutorRunUtils.swift", 98, 2, 81);
        __break(1u);
LABEL_104:
        specialized static SiriKitRuntimeCrashHelper.logAndCrash(_:file:line:)(0xD000000000000024, 0x80000001DCA89330, "/Library/Caches/com.apple.xbs/Sources/SiriKitExecutor/SiriKitRuntime/SiriKitExecutorRunUtils.swift", 98, 2, 85);
        __break(1u);
        goto LABEL_105;
      }

      v74 = [v69 siriKitIntent];
      if (v74)
      {
        v31 = v74;
        isa = [v74 data];

        if (isa)
        {
          v46 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v31 = v75;

          isa = Data._bridgeToObjectiveC()().super.isa;
          v76 = INIntentCreate();

          if (v76)
          {
            specialized static SiriKitExecutorRunUtils.addIntentMetadata(intent:peerInfo:endpointInfo:)(v76, v191, v192);
            static SiriKitExecutorRunUtils.makeNLv3Parse(parse:)(v69, v34);
            v77 = v194;
            if ((*(v194 + 48))(v34, 1, v38) == 1)
            {
              outlined destroy of ReferenceResolutionClientProtocol?(v34, &_s12SiriOntology8NLIntentVSgMd, &_s12SiriOntology8NLIntentVSgMR);
              if (one-time initialization token for executor != -1)
              {
                swift_once();
              }

              v78 = type metadata accessor for Logger();
              __swift_project_value_buffer(v78, static Logger.executor);
              v79 = Logger.logObject.getter();
              v80 = static os_log_type_t.error.getter();
              if (os_log_type_enabled(v79, v80))
              {
                v81 = swift_slowAlloc();
                *v81 = 0;
                _os_log_impl(&dword_1DC659000, v79, v80, "Failed to make NLv3Parse, returning nil", v81, 2u);
                MEMORY[0x1E12A2F50](v81, -1, -1);
              }

              outlined consume of Data._Representation(v46, v31);

              goto LABEL_13;
            }

            v82 = *(v77 + 32);
            v194 = v77 + 32;
            v192 = v82;
            v82(v188, v34, v38);
            v83 = v183;
            AppResolutionStateProvider.init(appSelectionState:)();
            outlined init with copy of ReferenceResolutionClientProtocol?(v184, v73, &_s11SiriKitFlow0aB17ConfirmationStateOSgMd, &_s11SiriKitFlow0aB17ConfirmationStateOSgMR);
            v85 = v181;
            v84 = v182;
            v86 = *(v181 + 48);
            if (v86(v73, 1, v182) == 1)
            {
              (*(v85 + 104))(v180, *MEMORY[0x1E69CFCE8], v84);
              v87 = v86(v73, 1, v84) == 1;
              v89 = v186;
              v88 = v187;
              v90 = v185;
              if (!v87)
              {
                v91 = v187;
                outlined destroy of ReferenceResolutionClientProtocol?(v73, &_s11SiriKitFlow0aB17ConfirmationStateOSgMd, &_s11SiriKitFlow0aB17ConfirmationStateOSgMR);
                v88 = v91;
              }
            }

            else
            {
              (*(v85 + 32))(v180, v73, v84);
              v89 = v186;
              v88 = v187;
              v90 = v185;
            }

            if (v88)
            {
              v94 = v88;
            }

            else
            {
              v94 = MEMORY[0x1E69E7CC0];
            }

            specialized static SiriKitExecutorRunUtils.makeSiriKitParameterMetadata(aceParameterMetadata:)(v94);

            *(&v197 + 1) = v89;
            v198 = MEMORY[0x1E69CE220];
            boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v196);
            v96 = v189;
            (*(v90 + 16))(boxed_opaque_existential_0, v189, v89);
            type metadata accessor for Parse.ServerConversion();
            swift_allocObject();
            v97 = Parse.ServerConversion.init(siriKitIntent:confirmationState:parameterMetadata:appResolutionStateProviding:)();
            outlined consume of Data._Representation(v46, v31);
            (*(v90 + 8))(v96, v89);
            v98 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology8NLIntentV_0A7KitFlow5ParseO16ServerConversionCtMd, &_s12SiriOntology8NLIntentV_0A7KitFlow5ParseO16ServerConversionCtMR) + 48);
            v99 = v193;
            v192(v193, v188, v38);
            *&v99[v98] = v97;
            goto LABEL_67;
          }

          goto LABEL_104;
        }

        goto LABEL_102;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_94;
  }

  v70 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v69 = v46;
  if (v70)
  {

    goto LABEL_21;
  }

  v92 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  isa = v93;
  if (v92 == v50 && v52 == v93)
  {

LABEL_44:

    v101 = [v46 jsonIntent];
    if (!v101)
    {
LABEL_106:
      specialized static SiriKitRuntimeCrashHelper.logAndCrash(_:file:line:)(0xD000000000000033, 0x80000001DCA89290, "/Library/Caches/com.apple.xbs/Sources/SiriKitExecutor/SiriKitRuntime/SiriKitExecutorRunUtils.swift", 98, 2, 104);
      __break(1u);
LABEL_107:
      specialized static SiriKitRuntimeCrashHelper.logAndCrash(_:file:line:)(0xD00000000000002FLL, 0x80000001DCA892D0, "/Library/Caches/com.apple.xbs/Sources/SiriKitExecutor/SiriKitRuntime/SiriKitExecutorRunUtils.swift", 98, 2, 109);
      __break(1u);
      goto LABEL_108;
    }

    v102 = v101;
    isa = static String._unconditionallyBridgeFromObjectiveC(_:)();

    v103 = [v46 jsonIntentTypeName];
    if (v103)
    {
      v104 = v103;
      v105 = v174;
      static String.Encoding.utf8.getter();
      v48 = String.data(using:allowLossyConversion:)();
      isa = v106;
      (*(v175 + 8))(v105, v176);
      if (isa >> 60 == 15)
      {
        v107 = 0;
      }

      else
      {
        outlined copy of Data._Representation(v48, isa);
        v107 = Data._bridgeToObjectiveC()().super.isa;
        outlined consume of Data?(v48, isa);
      }

      v108 = v38;
      v46 = INIntentCreate();

      if (v46)
      {

        specialized static SiriKitExecutorRunUtils.addIntentMetadata(intent:peerInfo:endpointInfo:)(v46, v191, v192);
        static SiriKitExecutorRunUtils.makeNLv3Parse(parse:)(v69, v31);
        v109 = v194;
        v110 = (*(v194 + 48))(v31, 1, v38);
        v111 = v178;
        if (v110 == 1)
        {
          outlined destroy of ReferenceResolutionClientProtocol?(v31, &_s12SiriOntology8NLIntentVSgMd, &_s12SiriOntology8NLIntentVSgMR);
          if (one-time initialization token for executor != -1)
          {
            swift_once();
          }

          v112 = type metadata accessor for Logger();
          __swift_project_value_buffer(v112, static Logger.executor);
          v113 = Logger.logObject.getter();
          v114 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v113, v114))
          {
            v115 = swift_slowAlloc();
            *v115 = 0;
            _os_log_impl(&dword_1DC659000, v113, v114, "Failed to make NLv3Parse, returning nil", v115, 2u);
            MEMORY[0x1E12A2F50](v115, -1, -1);
          }

          outlined consume of Data?(v48, isa);

          goto LABEL_13;
        }

        v116 = *(v109 + 32);
        v194 = v109 + 32;
        v192 = v116;
        v116(v177, v31, v38);
        v117 = v183;
        AppResolutionStateProvider.init(appSelectionState:)();
        outlined init with copy of ReferenceResolutionClientProtocol?(v184, v111, &_s11SiriKitFlow0aB17ConfirmationStateOSgMd, &_s11SiriKitFlow0aB17ConfirmationStateOSgMR);
        v119 = v181;
        v118 = v182;
        v120 = *(v181 + 48);
        if (v120(v111, 1, v182) == 1)
        {
          (*(v119 + 104))(v173, *MEMORY[0x1E69CFCE8], v118);
          v87 = v120(v111, 1, v118) == 1;
          v122 = v186;
          v121 = v187;
          v123 = v185;
          if (!v87)
          {
            v124 = v187;
            outlined destroy of ReferenceResolutionClientProtocol?(v111, &_s11SiriKitFlow0aB17ConfirmationStateOSgMd, &_s11SiriKitFlow0aB17ConfirmationStateOSgMR);
            v121 = v124;
          }
        }

        else
        {
          (*(v119 + 32))(v173, v111, v118);
          v122 = v186;
          v121 = v187;
          v123 = v185;
        }

        if (v121)
        {
          v126 = v121;
        }

        else
        {
          v126 = MEMORY[0x1E69E7CC0];
        }

        specialized static SiriKitExecutorRunUtils.makeSiriKitParameterMetadata(aceParameterMetadata:)(v126);

        *(&v197 + 1) = v122;
        v198 = MEMORY[0x1E69CE220];
        v127 = __swift_allocate_boxed_opaque_existential_0(&v196);
        v128 = v179;
        (*(v123 + 16))(v127, v179, v122);
        type metadata accessor for Parse.ServerConversion();
        swift_allocObject();
        v129 = Parse.ServerConversion.init(siriKitIntent:confirmationState:parameterMetadata:appResolutionStateProviding:)();
        outlined consume of Data?(v48, isa);
        (*(v123 + 8))(v128, v122);
        v130 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology8NLIntentV_0A7KitFlow5ParseO16ServerConversionCtMd, &_s12SiriOntology8NLIntentV_0A7KitFlow5ParseO16ServerConversionCtMR) + 48);
        v99 = v193;
        v192(v193, v177, v108);
        *&v99[v130] = v129;
LABEL_67:
        v131 = *MEMORY[0x1E69D0160];
        v132 = type metadata accessor for Parse();
        v133 = *(v132 - 8);
        (*(v133 + 104))(v99, v131, v132);
        return (*(v133 + 56))(v99, 0, 1, v132);
      }

      goto LABEL_107;
    }

LABEL_105:

    goto LABEL_106;
  }

  v100 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v100)
  {
    goto LABEL_44;
  }

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v50 && v52 == v125)
  {
  }

  else
  {
    isa = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((isa & 1) == 0)
    {
      if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v50 && v52 == v141)
      {
      }

      else
      {
        isa = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((isa & 1) == 0)
        {
          if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v50 && v52 == v157)
          {
          }

          else
          {
            v158 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v158 & 1) == 0)
            {
LABEL_98:
              *&v196 = 0;
              *(&v196 + 1) = 0xE000000000000000;
              _StringGuts.grow(_:)(22);

              *&v196 = 0xD000000000000014;
              *(&v196 + 1) = 0x80000001DCA89150;
              v160 = [v69 type];
              if (v160)
              {
                v161 = v160;
                isa = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v163 = v162;
              }

              else
              {
                v163 = 0xE500000000000000;
                isa = 0x3E4C494E3CLL;
              }

              MEMORY[0x1E12A1580](isa, v163);

              v50 = *(&v196 + 1);
              v31 = v196;

              specialized static SiriKitRuntimeCrashHelper.logAndCrash(_:file:line:)(v31, v50, "/Library/Caches/com.apple.xbs/Sources/SiriKitExecutor/SiriKitRuntime/SiriKitExecutorRunUtils.swift", 98, 2, 154);
              __break(1u);
LABEL_102:

              goto LABEL_103;
            }
          }

          v159 = *MEMORY[0x1E69D0178];
          v146 = type metadata accessor for Parse();
          v194 = *(v146 - 8);
          v144 = v193;
          (*(v194 + 104))(v193, v159, v146);
          goto LABEL_80;
        }
      }

      v148 = [v46 pegasusResults];
      if (v148)
      {
        v149 = v148;
        v150 = [v148 data];

        v48 = v169;
        v46 = v167;
        if (v150)
        {
          v151 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v153 = v152;

          v198 = 0;
          v196 = 0u;
          v197 = 0u;
          outlined copy of Data._Representation(v151, v153);
          BinaryDecodingOptions.init()();
          _s14SiriKitRuntime16PeerInfoProviderCAC0aB4Flow0dE9ProvidingAAWlTm_1(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_SiriPegasusResponse and conformance Apple_Parsec_Siri_V2alpha_SiriPegasusResponse, MEMORY[0x1E69BCC00], MEMORY[0x1E69BCBF8]);
          Message.init(serializedData:extensions:partial:options:)();
          v154 = v168;
          (*(v168 + 56))(v46, 0, 1, v48);
          v155 = v166;
          (*(v154 + 32))(v166, v46, v48);
          (*(v154 + 16))(v165, v155, v48);
          v156 = v170;
          Parse.PegasusResult.init(pegasusResponse:)();
          outlined consume of Data._Representation(v151, v153);
          (*(v154 + 8))(v155, v48);
          v63 = v193;
          (*(v171 + 32))(v193, v156, v172);
          v64 = MEMORY[0x1E69D0130];
LABEL_15:
          v65 = *v64;
          v66 = type metadata accessor for Parse();
          v67 = *(v66 - 8);
          (*(v67 + 104))(v63, v65, v66);
          return (*(v67 + 56))(v63, 0, 1, v66);
        }

        goto LABEL_110;
      }

      goto LABEL_95;
    }
  }

  v134 = [v46 directInvocation];
  if (!v134)
  {
LABEL_109:
    specialized static SiriKitRuntimeCrashHelper.logAndCrash(_:file:line:)(0xD00000000000004ELL, 0x80000001DCA89240, "/Library/Caches/com.apple.xbs/Sources/SiriKitExecutor/SiriKitRuntime/SiriKitExecutorRunUtils.swift", 98, 2, 126);
    __break(1u);
    outlined consume of Data._Representation(v196, *(&v196 + 1));
    __break(1u);
LABEL_110:
    specialized static SiriKitRuntimeCrashHelper.logAndCrash(_:file:line:)(0xD000000000000023, 0x80000001DCA891E0, "/Library/Caches/com.apple.xbs/Sources/SiriKitExecutor/SiriKitRuntime/SiriKitExecutorRunUtils.swift", 98, 2, 141);
    __break(1u);

    (*(v168 + 56))(v46, 1, 1, v48);
    outlined destroy of ReferenceResolutionClientProtocol?(v46, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseVSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseVSgMR);
    result = specialized static SiriKitRuntimeCrashHelper.logAndCrash(_:file:line:)(0xD00000000000002BLL, 0x80000001DCA89210, "/Library/Caches/com.apple.xbs/Sources/SiriKitExecutor/SiriKitRuntime/SiriKitExecutorRunUtils.swift", 98, 2, 145);
    __break(1u);
    return result;
  }

  v31 = v134;
  v48 = &selRef_setMitigationSource_;
  v135 = [v134 invocationIdentifier];
  if (!v135)
  {
LABEL_108:

    goto LABEL_109;
  }

  v136 = [v31 data];
  if (v136)
  {
    v137 = v136;
    v138 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v140 = v139;

    if (v140 >> 60 != 15)
    {
      *&v196 = v138;
      *(&v196 + 1) = v140;
      outlined copy of Data._Representation(v138, v140);
      closure #1 in static SiriKitExecutorRunUtils.makeParse(aceParse:peerInfo:endpointInfo:confirmationState:aceParameterMetadata:appSelectionState:)(&v195);
      outlined consume of Data?(v138, v140);
      outlined consume of Data._Representation(v196, *(&v196 + 1));
    }
  }

  v142 = [v31 invocationIdentifier];
  if (!v142)
  {
LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
LABEL_96:
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    goto LABEL_97;
  }

  v143 = v142;
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v144 = v193;
  Parse.DirectInvocation.init(identifier:userData:)();

  v145 = *MEMORY[0x1E69D0158];
  v146 = type metadata accessor for Parse();
  v194 = *(v146 - 8);
  (*(v194 + 104))(v144, v145, v146);
LABEL_80:
  v147 = *(v194 + 56);

  return v147(v144, 0, 1, v146);
}