void *closure #1 in ConversationSELFHelper.buildActionCandidatesGeneratedTier1Message(rcId:actionCandidates:)(void *a1, uint64_t a2, double a3)
{
  v5 = type metadata accessor for CamUSOParse();
  v94 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v89 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = type metadata accessor for CamParse();
  v7 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106);
  v9 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = type metadata accessor for ActionCandidate();
  v10 = *(v110 - 8);
  MEMORY[0x1EEE9AC00](v110);
  v12 = &v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v97 = &v79 - v14;
  v15 = type metadata accessor for UUID();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v96 = &v79 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_7SiriCam15ActionCandidateV5valuetSgMd, &_s10Foundation4UUIDV3key_7SiriCam15ActionCandidateV5valuetSgMR);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v98 = &v79 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v105 = &v79 - v24;
  v25 = [objc_allocWithZone(MEMORY[0x1E69CE968]) init];
  if (!v25)
  {
    if (one-time initialization token for instrumentation != -1)
    {
      swift_once();
    }

    v73 = type metadata accessor for Logger();
    __swift_project_value_buffer(v73, static Logger.instrumentation);
    v74 = Logger.logObject.getter();
    v75 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      *v76 = 0;
      _os_log_impl(&dword_1DC659000, v74, v75, "[ConversationSELFHelper] Failed to create CNVSchemaCNVActionCandidatesGeneratedTier1 SELF objects", v76, 2u);
      MEMORY[0x1E12A2F50](v76, -1, -1);
    }

    return 0;
  }

  v79 = v25;
  v101 = v9;
  v88 = v5;
  v80 = a1;
  v81 = MEMORY[0x1E69E7CC0];
  v111 = MEMORY[0x1E69E7CC0];
  v26 = *(a2 + 64);
  v83 = a2 + 64;
  v27 = 1 << *(a2 + 32);
  v28 = -1;
  if (v27 < 64)
  {
    v28 = ~(-1 << v27);
  }

  v29 = v10;
  v30 = v28 & v26;
  v82 = (v27 + 63) >> 6;
  v91 = v16 + 16;
  v90 = v29 + 16;
  v107 = (v29 + 32);
  v108 = (v16 + 32);
  v100 = (v7 + 88);
  v99 = *MEMORY[0x1E69CE300];
  v95 = v29;
  v93 = v16;
  v102 = (v16 + 8);
  v103 = (v29 + 8);
  v86 = (v7 + 8);
  v85 = (v7 + 96);
  v84 = (v94 + 32);
  v87 = (v94 + 8);

  v31 = 0;
  v94 = v12;
  v109 = v15;
  v92 = v18;
  v32 = v98;
  v33 = a2;
  v34 = v110;
  v35 = v18;
  v104 = v33;
  if (!v30)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v36 = v31;
LABEL_14:
    v39 = __clz(__rbit64(v30));
    v30 &= v30 - 1;
    v40 = v39 | (v36 << 6);
    v41 = v93;
    (*(v93 + 16))(v96, *(v33 + 48) + *(v93 + 72) * v40, v15);
    v42 = v95;
    v43 = v97;
    (*(v95 + 16))(v97, *(v33 + 56) + *(v95 + 72) * v40, v34);
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_7SiriCam15ActionCandidateV5valuetMd, &_s10Foundation4UUIDV3key_7SiriCam15ActionCandidateV5valuetMR);
    v45 = *(v44 + 48);
    v32 = v98;
    (*(v41 + 32))();
    (*(v42 + 32))(v32 + v45, v43, v34);
    (*(*(v44 - 8) + 56))(v32, 0, 1, v44);
    v110 = v36;
    v12 = v94;
    v37 = v92;
LABEL_15:
    v46 = v105;
    outlined init with take of (key: UUID, value: ActionCandidate)?(v32, v105);
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_7SiriCam15ActionCandidateV5valuetMd, &_s10Foundation4UUIDV3key_7SiriCam15ActionCandidateV5valuetMR);
    v48 = (*(*(v47 - 8) + 48))(v46, 1, v47);
    v49 = v106;
    if (v48 == 1)
    {
      break;
    }

    v50 = *(v47 + 48);
    v35 = v37;
    v51 = v46;
    v52 = v46;
    v15 = v109;
    (*v108)(v37, v51, v109);
    (*v107)(v12, v52 + v50, v34);
    v53 = v34;
    v54 = v101;
    ActionCandidate.parse.getter();
    v55 = (*v100)(v54, v49);
    if (v55 == v99)
    {
      (*v85)(v54, v49);
      v56 = v89;
      v57 = v88;
      (*v84)();
      v58 = CamUSOParse.appBundleId.getter();
      if (v59)
      {
        v60 = v59;
        v61 = v58;
        v62 = [objc_allocWithZone(MEMORY[0x1E69CEA98]) init];
        if (v62)
        {
          v64 = v62;
          v81 = objc_allocWithZone(MEMORY[0x1E69CF638]);
          isa = UUID._bridgeToObjectiveC()().super.isa;
          v81 = [v81 initWithNSUUID_];

          v66 = v81;
          [v64 setLinkId_];

          v67 = MEMORY[0x1E12A1410](v61, v60);

          [v64 setAppBundleId_];

          v68 = v64;
          MEMORY[0x1E12A1680]();
          if (*((v111 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v111 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          (*v87)(v89, v88);
          v34 = v53;
          (*v103)(v12, v53);
          (*v102)(v35, v15);
          v81 = v111;
          goto LABEL_23;
        }

        (*v87)(v89, v88);
      }

      else
      {
        (*v87)(v56, v57);
      }

      v34 = v53;
      (*v103)(v12, v53);
      (*v102)(v35, v15);
LABEL_23:
      v31 = v110;
      v33 = v104;
      if (!v30)
      {
LABEL_8:
        v37 = v35;
        if (v82 <= v31 + 1)
        {
          v38 = v31 + 1;
        }

        else
        {
          v38 = v82;
        }

        while (1)
        {
          v36 = v31 + 1;
          if (__OFADD__(v31, 1))
          {
            break;
          }

          if (v36 >= v82)
          {
            v110 = v38 - 1;
            v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_7SiriCam15ActionCandidateV5valuetMd, &_s10Foundation4UUIDV3key_7SiriCam15ActionCandidateV5valuetMR);
            (*(*(v63 - 8) + 56))(v32, 1, 1, v63);
            v30 = 0;
            goto LABEL_15;
          }

          v30 = *(v83 + 8 * v36);
          ++v31;
          if (v30)
          {
            goto LABEL_14;
          }
        }

        __break(1u);
LABEL_37:
        v77 = __CocoaSet.count.getter();
        v69 = v80;
        if (!v77)
        {
          goto LABEL_38;
        }

LABEL_30:
        type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for CNVSchemaCNVLinkMetadataTier1, 0x1E69CEA98);
        v70 = Array._bridgeToObjectiveC()().super.isa;

        v71 = v79;
        [v79 setMetadataTier1s_];

        [v69 setActionCandidatesGeneratedTier1_];
        v72 = v69;
        return v69;
      }
    }

    else
    {
      (*v103)(v12, v53);
      (*v102)(v37, v15);
      (*v86)(v54, v49);
      v31 = v110;
      v34 = v53;
      v33 = v104;
      if (!v30)
      {
        goto LABEL_8;
      }
    }
  }

  if (v81 >> 62)
  {
    goto LABEL_37;
  }

  v69 = v80;
  if (*((v81 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_30;
  }

LABEL_38:

  return 0;
}

uint64_t outlined init with take of (key: UUID, value: ActionCandidate)?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_7SiriCam15ActionCandidateV5valuetSgMd, &_s10Foundation4UUIDV3key_7SiriCam15ActionCandidateV5valuetSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t specialized Dictionary.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestSgMd, &_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestMd, &_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestMR);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v17 - v12;
  if ((*(v14 + 48))(a1, 1, v11) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(a1, &_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestSgMd, &_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestSgMR);
    specialized Dictionary._Variant.removeValue(forKey:)(a2, a3, v9);

    return outlined destroy of ReferenceResolutionClientProtocol?(v9, &_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestSgMd, &_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestSgMR);
  }

  else
  {
    outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(a1, v13, &_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestMd, &_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestMR);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v13, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v18;
  }

  return result;
}

{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v10 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        specialized _NativeDictionary.copy()();
        v14 = v16;
      }

      result = specialized _NativeDictionary._delete(at:)(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}

{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A28_Nlu_External_ResponseStatusV0F4CodeOSgMd, &_s12SiriNLUTypes0A28_Nlu_External_ResponseStatusV0F4CodeOSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17 - v8;
  v10 = type metadata accessor for Siri_Nlu_External_ResponseStatus.StatusCode();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1, v10, v12) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(a1, &_s12SiriNLUTypes0A28_Nlu_External_ResponseStatusV0F4CodeOSgMd, &_s12SiriNLUTypes0A28_Nlu_External_ResponseStatusV0F4CodeOSgMR);
    specialized Dictionary._Variant.removeValue(forKey:)(a2, a3, v9);

    return outlined destroy of ReferenceResolutionClientProtocol?(v9, &_s12SiriNLUTypes0A28_Nlu_External_ResponseStatusV0F4CodeOSgMd, &_s12SiriNLUTypes0A28_Nlu_External_ResponseStatusV0F4CodeOSgMR);
  }

  else
  {
    (*(v11 + 32))(v14, a1, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v14, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v18;
  }

  return result;
}

{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17 - v8;
  v10 = type metadata accessor for Input();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1, v10, v12) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(a1, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
    specialized Dictionary._Variant.removeValue(forKey:)(a2, a3, v9);

    return outlined destroy of ReferenceResolutionClientProtocol?(v9, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  }

  else
  {
    (*(v11 + 32))(v14, a1, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v14, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v18;
  }

  return result;
}

{
  if (*(a1 + 24))
  {
    v6 = *(a1 + 48);
    v11[2] = *(a1 + 32);
    v11[3] = v6;
    v11[4] = *(a1 + 64);
    v7 = *(a1 + 16);
    v11[0] = *a1;
    v11[1] = v7;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v11, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v10;
  }

  else
  {
    outlined destroy of ReferenceResolutionClientProtocol?(a1, &_s14SiriKitRuntime19FlowPluginAndBundleVSgMd, &_s14SiriKitRuntime19FlowPluginAndBundleVSgMR);
    specialized Dictionary._Variant.removeValue(forKey:)(a2, a3, v11);

    return outlined destroy of ReferenceResolutionClientProtocol?(v11, &_s14SiriKitRuntime19FlowPluginAndBundleVSgMd, &_s14SiriKitRuntime19FlowPluginAndBundleVSgMR);
  }

  return result;
}

uint64_t ConversationService.__allocating_init(conversationHandlerLocator:referenceResolutionClient:useStubCamBridge:useNoopEventSender:doWarmup:selfEmitter:serverFallbackDisablingUtils:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v24 = a6;
  v25 = a7;
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v14 = swift_allocObject();
  v16 = a8[3];
  v15 = a8[4];
  v17 = __swift_mutable_project_boxed_opaque_existential_1(a8, v16);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20, v18);
  v22 = specialized ConversationService.init(conversationHandlerLocator:referenceResolutionClient:useStubCamBridge:useNoopEventSender:doWarmup:selfEmitter:serverFallbackDisablingUtils:)(a1, a2, v11, v10, v9, v24, v25, v20, v14, v16, v15);
  __swift_destroy_boxed_opaque_existential_1Tm(a8);
  return v22;
}

void *ConversationService.serialFacade.getter()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v0[39];
  v5 = v0[40];
  if (v6)
  {
    v0 = v0[39];
  }

  else
  {
    v19 = v0[41];
    v20 = v5;
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v7 = __swift_project_value_buffer(v1, static Logger.executor);
    v18 = *(v2 + 16);
    v18(v4, v7, v1);
    type metadata accessor for AsyncSerialQueue(0);
    v8 = swift_allocObject();
    *(v8 + 2) = MEMORY[0x1E69E7CC0];
    *(v8 + 3) = 0;
    *(v8 + 4) = 0;
    *(v8 + 5) = 0;
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
    v9 = swift_allocObject();
    *(v9 + 16) = 0;
    *(v8 + 6) = v9;
    *(v8 + 7) = 0xD000000000000022;
    *(v8 + 8) = 0x80000001DCA80E60;
    v10 = *(v2 + 32);
    v10(&v8[OBJC_IVAR____TtC14SiriKitRuntime16AsyncSerialQueue_logger], v4, v1);
    v16 = 0x80000001DCA80E90;
    v18(v4, v7, v1);
    v11 = swift_allocObject();
    *(v11 + 2) = MEMORY[0x1E69E7CC0];
    *(v11 + 3) = 0;
    *(v11 + 4) = 0;
    *(v11 + 5) = 0;
    v12 = swift_allocObject();
    *(v12 + 16) = 0;
    *(v11 + 6) = v12;
    *(v11 + 7) = 0xD000000000000020;
    *(v11 + 8) = v16;
    v10(&v11[OBJC_IVAR____TtC14SiriKitRuntime16AsyncSerialQueue_logger], v4, v1);
    v13 = v0[39];
    v0[39] = v0;
    v0[40] = v8;
    v0[41] = v11;
    swift_retain_n();

    outlined consume of ConversationServiceSerialFacade?(v13);
  }

  outlined copy of ConversationServiceSerialFacade?(v6);
  return v0;
}

uint64_t one-time initialization function for shared(uint64_t a1)
{
  type metadata accessor for MessageBusActor();
  v1 = swift_allocObject();
  result = swift_defaultActor_initialize();
  static MessageBusActor.shared = v1;
  return result;
}

{
  type metadata accessor for ConversationActor();
  v1 = swift_allocObject();
  result = swift_defaultActor_initialize();
  static ConversationActor.shared = v1;
  return result;
}

uint64_t MessageBusActor.__allocating_init()()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  return v0;
}

uint64_t static MessageBusActor.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static MessageBusActor.shared.setter(uint64_t a1)
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static MessageBusActor.shared = a1;
}

uint64_t (*static MessageBusActor.shared.modify(uint64_t a1))(uint64_t a1)
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return static AmbiguityFeatureFlags.forceEnabled.modify;
}

uint64_t key path getter for static MessageBusActor.shared : MessageBusActor.Type@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = static MessageBusActor.shared;
}

uint64_t key path setter for static MessageBusActor.shared : MessageBusActor.Type(uint64_t *a1)
{
  v1 = *a1;
  v2 = one-time initialization token for shared;

  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static MessageBusActor.shared = v1;
}

uint64_t MessageBusActor.__deallocating_deinit()
{
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t protocol witness for static GlobalActor.shared.getter in conformance MessageBusActor()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t protocol witness for static GlobalActor.sharedUnownedExecutor.getter in conformance MessageBusActor(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for MessageBusActor();

  return MEMORY[0x1EEE6DBF0](v3, a2);
}

void *ConversationService.state.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 112);
  outlined copy of ConversationService.State(v1, *(v0 + 120));
  return v1;
}

void ConversationService.state.setter(uint64_t a1, char a2)
{
  swift_beginAccess();
  v5 = *(v2 + 112);
  *(v2 + 112) = a1;
  v6 = *(v2 + 120);
  *(v2 + 120) = a2;
  outlined consume of ConversationService.State(v5, v6);
}

void *ConversationService.ExecutionTaskContext.__allocating_init(forceTimeout:)(uint64_t a1)
{
  result = swift_allocObject();
  v3 = MEMORY[0x1E69E7CC0];
  result[2] = MEMORY[0x1E69E7CC0];
  result[3] = v3;
  result[4] = 0;
  static ConversationService.ExecutionTaskContext.expirationInNanoSeconds = a1;
  return result;
}

uint64_t ConversationService.consecutiveEmptyInputs.setter(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 272) = a1;
  return result;
}

uint64_t ConversationService.recentlyCompletedCorrectableConversation.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 280) = a1;
}

uint64_t ConversationService.init(conversationHandlerLocator:referenceResolutionClient:useStubCamBridge:useNoopEventSender:doWarmup:selfEmitter:serverFallbackDisablingUtils:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v24 = a6;
  v25 = a7;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v16 = a8[3];
  v15 = a8[4];
  v17 = __swift_mutable_project_boxed_opaque_existential_1(a8, v16);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20, v18);
  v22 = specialized ConversationService.init(conversationHandlerLocator:referenceResolutionClient:useStubCamBridge:useNoopEventSender:doWarmup:selfEmitter:serverFallbackDisablingUtils:)(a1, a2, v12, v11, v10, v24, v25, v20, v8, v16, v15);
  __swift_destroy_boxed_opaque_existential_1Tm(a8);
  return v22;
}

Swift::Void __swiftcall ConversationService.warmup()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v10 - v2;
  v4 = type metadata accessor for TaskPriority();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = one-time initialization token for shared;

  if (v5 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v6 = static MessageBusActor.shared;
  v8 = _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MessageBusActor and conformance MessageBusActor, v7, type metadata accessor for MessageBusActor, &protocol conformance descriptor for MessageBusActor);
  v9 = swift_allocObject();
  v9[2] = v6;
  v9[3] = v8;
  v9[4] = v0;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v3, &async function pointer to partial apply for closure #1 in ConversationService.warmup(), v9);
}

uint64_t closure #1 in ConversationService.warmup()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in ConversationService.warmup(), v5, 0);
}

uint64_t closure #1 in ConversationService.warmup()()
{
  v1 = *(v0 + 40);
  type metadata accessor for DeviceEnvironmentHelper();
  MEMORY[0x1E129BAA0]();

  v2 = v1[11];
  v3 = v1[12];
  __swift_project_boxed_opaque_existential_1(v1 + 8, v2);
  (*(v3 + 16))(v2, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t key path setter for ConversationService.serialFacade : ConversationService(void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *a2;
  v5 = *(*a2 + 312);
  v4[39] = *a1;
  v4[40] = v2;
  v4[41] = v3;

  return outlined consume of ConversationServiceSerialFacade?(v5);
}

uint64_t ConversationService.serialFacade.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[39];
  v3[39] = a1;
  v3[40] = a2;
  v3[41] = a3;
  return outlined consume of ConversationServiceSerialFacade?(v4);
}

uint64_t (*ConversationService.serialFacade.modify(void *a1))()
{
  a1[3] = v1;
  *a1 = ConversationService.serialFacade.getter();
  a1[1] = v3;
  a1[2] = v4;
  return ConversationService.serialFacade.modify;
}

uint64_t ConversationService.serialFacade.modify(void *a1, char a2)
{
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v5 = v3[39];
  v3[39] = *a1;
  v3[40] = v2;
  v3[41] = v4;
  if (a2)
  {

    outlined consume of ConversationServiceSerialFacade?(v5);
  }

  else
  {

    return outlined consume of ConversationServiceSerialFacade?(v5);
  }
}

uint64_t ConversationService.bridge(didReceiveRSKE:sessionConfiguration:withRequestContextData:withRecognizedUser:withUserMeetingSessionThreshold:withRemoteRequestWasMadeInSession:from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = swift_task_alloc();
  *(v8 + 16) = v16;
  *v16 = v8;
  v16[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return specialized ConversationService.bridge(didReceiveRSKE:sessionConfiguration:withRequestContextData:withRecognizedUser:withUserMeetingSessionThreshold:withRemoteRequestWasMadeInSession:from:)(a1, a2, a3, a4, a6, a7, a8);
}

uint64_t ConversationService.cleanupPeerTriggeredConversations()()
{
  *(v1 + 144) = v0;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = static MessageBusActor.shared;
  *(v1 + 152) = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](ConversationService.cleanupPeerTriggeredConversations(), v2, 0);
}

{
  v1 = MEMORY[0x1E69E7CC0];
  v0[16] = MEMORY[0x1E69E7CC0];
  v2 = v0[18];
  swift_beginAccess();
  v3 = *(v2 + 104);
  if ((v3 & 0xC000000000000001) == 0)
  {
    v11 = -1;
    v12 = -1 << *(v3 + 32);
    v6 = v3 + 56;
    v13 = *(v3 + 56);
    if (-v12 < 64)
    {
      v11 = ~(-1 << -v12);
    }

    v0[23] = v1;
    v4 = v0 + 23;
    v9 = v11 & v13;
    v0[21] = v6;
    v0[22] = ~v12;
    v0[20] = v3;
    v10 = 63 - v12;

    v8 = 0;
    goto LABEL_7;
  }

  __CocoaSet.makeIterator()();
  type metadata accessor for RemoteConversationClient();
  _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type RemoteConversationClient and conformance RemoteConversationClient, 255, type metadata accessor for RemoteConversationClient, &protocol conformance descriptor for RemoteConversationClient);
  Set.Iterator.init(_cocoa:)();
  v0[23] = v1;
  v4 = v0 + 23;
  v5 = v0[2];
  v6 = v0[3];
  v7 = v0[4];
  v8 = v0[5];
  v9 = v0[6];
  v0[21] = v6;
  v0[22] = v7;
  v0[20] = v5;
  if ((v5 & 0x8000000000000000) == 0)
  {
    v10 = v7 + 64;
LABEL_7:
    v14 = v9;
    v15 = v8;
    if (!v9)
    {
      v16 = v8;
      while (1)
      {
        v15 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        if (v15 >= (v10 >> 6))
        {
          goto LABEL_19;
        }

        v14 = *(v6 + 8 * v15);
        ++v16;
        if (v14)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_28:
      v19 = __CocoaSet.count.getter();
      v23 = v19;
      if (!v19)
      {
        goto LABEL_29;
      }

      goto LABEL_21;
    }

LABEL_12:
    v17 = (v14 - 1) & v14;
    v18 = *(*(v5 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));

    goto LABEL_13;
  }

  v22 = __CocoaSet.Iterator.next()();
  if (!v22)
  {
    goto LABEL_19;
  }

  v0[17] = v22;
  swift_dynamicCast();
  v18 = v0[13];
  v15 = v8;
  v17 = v9;
LABEL_13:
  v0[25] = v15;
  v0[26] = v17;
  v0[24] = v18;
  if (v18)
  {
    v19 = ConversationService.cleanupPeerTriggeredConversations();
    v20 = v18;
    v21 = 0;

    return MEMORY[0x1EEE6DFA0](v19, v20, v21);
  }

LABEL_19:
  v15 = v0[23];
  outlined consume of Set<RemoteConversationClient>.Iterator._Variant(v0[20]);

  if (v15 >> 62)
  {
    goto LABEL_28;
  }

  v23 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v23)
  {
LABEL_21:
    if (v23 >= 1)
    {
      v24 = 0;
      v25 = v15 & 0xC000000000000001;
      v26 = *v4 + 32;
      do
      {
        if (v25)
        {
          v27 = MEMORY[0x1E12A1FE0](v24, *v4);
        }

        else
        {
          v27 = *(v26 + 8 * v24);
        }

        ++v24;
        swift_beginAccess();
        specialized Set._Variant.remove(_:)(v27);
        swift_endAccess();
      }

      while (v23 != v24);
      goto LABEL_29;
    }

    __break(1u);
    return MEMORY[0x1EEE6DFA0](v19, v20, v21);
  }

LABEL_29:

  v28 = v0[1];

  return v28();
}

{
  v1 = *(*(v0 + 192) + 184);
  *(v0 + 216) = v1;
  if (v1 == 2)
  {
    v2 = ConversationService.cleanupPeerTriggeredConversations();
  }

  else
  {
    v2 = ConversationService.cleanupPeerTriggeredConversations();
  }

  return MEMORY[0x1EEE6DFA0](v2, *(v0 + 152), 0);
}

{
  if (*(v0 + 216))
  {

    MEMORY[0x1E12A1680](v1);
    if (*((*(v0 + 128) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 128) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v3 = *(v0 + 200);
    v2 = *(v0 + 208);
    *(v0 + 184) = *(v0 + 128);
    v4 = *(v0 + 160);
    if (v4 < 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v9 = v2;
    v7 = v3;
    if (!v2)
    {
      v10 = v3;
      while (1)
      {
        v7 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        if (v7 >= ((*(v0 + 176) + 64) >> 6))
        {
          goto LABEL_18;
        }

        v9 = *(*(v0 + 168) + 8 * v7);
        ++v10;
        if (v9)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
      goto LABEL_27;
    }

LABEL_13:
    v8 = (v9 - 1) & v9;
    v6 = *(*(v4 + 48) + ((v7 << 9) | (8 * __clz(__rbit64(v9)))));

    goto LABEL_14;
  }

  v3 = *(v0 + 200);
  v2 = *(v0 + 208);
  v4 = *(v0 + 160);
  if ((v4 & 0x8000000000000000) == 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  v5 = __CocoaSet.Iterator.next()();
  if (!v5)
  {
    goto LABEL_18;
  }

  *(v0 + 136) = v5;
  type metadata accessor for RemoteConversationClient();
  swift_dynamicCast();
  v6 = *(v0 + 104);
  v7 = v3;
  v8 = v2;
LABEL_14:
  *(v0 + 200) = v7;
  *(v0 + 208) = v8;
  *(v0 + 192) = v6;
  if (v6)
  {
    v11 = ConversationService.cleanupPeerTriggeredConversations();
    v12 = v6;
    v13 = 0;

    return MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }

LABEL_18:
  v7 = *(v0 + 184);
  outlined consume of Set<RemoteConversationClient>.Iterator._Variant(*(v0 + 160));

  if (!(v7 >> 62))
  {
    v14 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
      goto LABEL_28;
    }

    goto LABEL_20;
  }

LABEL_27:
  v11 = __CocoaSet.count.getter();
  v14 = v11;
  if (!v11)
  {
    goto LABEL_28;
  }

LABEL_20:
  if (v14 < 1)
  {
    __break(1u);
    return MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }

  v15 = 0;
  v16 = v7 & 0xC000000000000001;
  v17 = *(v0 + 184) + 32;
  do
  {
    if (v16)
    {
      v18 = MEMORY[0x1E12A1FE0](v15, *(v0 + 184));
    }

    else
    {
      v18 = *(v17 + 8 * v15);
    }

    ++v15;
    swift_beginAccess();
    specialized Set._Variant.remove(_:)(v18);
    swift_endAccess();
  }

  while (v14 != v15);
LABEL_28:

  v19 = *(v0 + 8);

  return v19();
}

{

  v1 = v0[25];
  v2 = v0[26];
  v3 = v0[20];
  if (v3 < 0)
  {
    v9 = __CocoaSet.Iterator.next()();
    if (!v9)
    {
      goto LABEL_14;
    }

    v0[17] = v9;
    type metadata accessor for RemoteConversationClient();
    swift_dynamicCast();
    v8 = v0[13];
    v5 = v1;
    v7 = v2;
  }

  else
  {
    v4 = v0[26];
    v5 = v0[25];
    if (!v2)
    {
      v6 = v0[25];
      while (1)
      {
        v5 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          break;
        }

        if (v5 >= ((v0[22] + 64) >> 6))
        {
          goto LABEL_14;
        }

        v4 = *(v0[21] + 8 * v5);
        ++v6;
        if (v4)
        {
          goto LABEL_7;
        }
      }

      __break(1u);
LABEL_23:
      v10 = __CocoaSet.count.getter();
      v13 = v10;
      if (!v10)
      {
        goto LABEL_24;
      }

      goto LABEL_16;
    }

LABEL_7:
    v7 = (v4 - 1) & v4;
    v8 = *(*(v3 + 48) + ((v5 << 9) | (8 * __clz(__rbit64(v4)))));
  }

  v0[25] = v5;
  v0[26] = v7;
  v0[24] = v8;
  if (v8)
  {
    v10 = ConversationService.cleanupPeerTriggeredConversations();
    v11 = v8;
    v12 = 0;

    return MEMORY[0x1EEE6DFA0](v10, v11, v12);
  }

LABEL_14:
  v5 = v0[23];
  outlined consume of Set<RemoteConversationClient>.Iterator._Variant(v0[20]);

  if (v5 >> 62)
  {
    goto LABEL_23;
  }

  v13 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v13)
  {
LABEL_16:
    if (v13 >= 1)
    {
      v14 = 0;
      v15 = v5 & 0xC000000000000001;
      v16 = v0[23] + 32;
      do
      {
        if (v15)
        {
          v17 = MEMORY[0x1E12A1FE0](v14, v0[23]);
        }

        else
        {
          v17 = *(v16 + 8 * v14);
        }

        ++v14;
        swift_beginAccess();
        specialized Set._Variant.remove(_:)(v17);
        swift_endAccess();
      }

      while (v13 != v14);
      goto LABEL_24;
    }

    __break(1u);
    return MEMORY[0x1EEE6DFA0](v10, v11, v12);
  }

LABEL_24:

  v18 = v0[1];

  return v18();
}

uint64_t ConversationService.bridge(didReceiveStartExecutionTurn:from:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return specialized ConversationService.bridge(didReceiveStartExecutionTurn:from:)(a1);
}

uint64_t ConversationService.State.isNewSession.getter(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a2 >> 6 == 1)
  {
    v2 = a2;
  }

  else
  {
    v2 = 0;
  }

  if (a2 >> 6)
  {
    a1 = v2;
  }

  return a1 & 1;
}

uint64_t closure #2 in closure #1 in ConversationService.bridge(didReceiveStartExecutionTurn:from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 48) = a1;
  *(v4 + 56) = a4;
  return MEMORY[0x1EEE6DFA0](closure #2 in closure #1 in ConversationService.bridge(didReceiveStartExecutionTurn:from:), a4, 0);
}

uint64_t ConversationService.bridge(didReceiveInput:from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[14] = a3;
  v4[15] = v3;
  v4[12] = a1;
  v4[13] = a2;
  v4[16] = type metadata accessor for ConversationService.EagerResult(0);
  v4[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v4[18] = swift_task_alloc();
  v5 = type metadata accessor for Siri_Nlu_External_ResponseStatus.StatusCode();
  v4[19] = v5;
  v4[20] = *(v5 - 8);
  v4[21] = swift_task_alloc();
  v6 = type metadata accessor for Siri_Nlu_External_RepetitionResult();
  v4[22] = v6;
  v4[23] = *(v6 - 8);
  v4[24] = swift_task_alloc();
  v7 = type metadata accessor for Siri_Nlu_External_RepetitionResult.RepetitionType();
  v4[25] = v7;
  v4[26] = *(v7 - 8);
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v8 = type metadata accessor for Siri_Nlu_External_UserParse();
  v4[29] = v8;
  v4[30] = *(v8 - 8);
  v4[31] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v9 = static MessageBusActor.shared;
  v4[32] = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](ConversationService.bridge(didReceiveInput:from:), v9, 0);
}

uint64_t ConversationService.bridge(didReceiveInput:from:)()
{
  v72 = v0;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 96);
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.executor);
  Logger.debugF(file:function:)("SiriKitRuntime/ConversationService.swift", 40, 2, "bridge(didReceiveInput:from:)", 29, 2);
  type metadata accessor for ConversationSELFHelper();
  static ConversationSELFHelper.shared.getter();
  v61 = *(v1 + 24);
  v62 = *(v1 + 16);
  dispatch thunk of ConversationSELFHelper.emitExecutionPrepareTimeBegin(rcId:)();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v71[0] = v6;
    *v5 = 136315138;
    v7 = ConversationUserInput.debugDescription.getter();
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, v71);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_1DC659000, v3, v4, "Received ConversationUserInput: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x1E12A2F50](v6, -1, -1);
    MEMORY[0x1E12A2F50](v5, -1, -1);
  }

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v71[0] = v13;
    *v12 = 136315138;
    *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, v61, v71);
    _os_log_impl(&dword_1DC659000, v10, v11, "[ConversationService] received ConversationUserInput for rcId: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x1E12A2F50](v13, -1, -1);
    MEMORY[0x1E12A2F50](v12, -1, -1);
  }

  v14 = *(v0 + 120);
  swift_beginAccess();
  v15 = *(v14 + 112);
  LOBYTE(v14) = *(v14 + 120);
  outlined copy of ConversationService.State(v15, v14);
  v16 = specialized ConversationService.State.assertTurnStarted(function:)("bridge(didReceiveInput:from:)", 29, 2, v15, v14);
  *(v0 + 264) = v16;
  v17 = v16;
  v18 = *(v0 + 96);

  outlined consume of ConversationService.State(v15, v14);
  v19 = *(v18 + 56);
  v20 = *(v19 + 16);
  v21 = *(v20 + 16);
  if (v21)
  {
    v57 = *(v18 + 56);
    v22 = *(v0 + 240);
    v23 = *(v0 + 208);
    v59 = *(v0 + 96);
    v60 = v17;
    v67 = *(v22 + 16);
    v24 = v20 + ((*(v22 + 80) + 32) & ~*(v22 + 80));
    v65 = (v22 + 8);
    v66 = *(v22 + 72);
    v64 = (*(v0 + 184) + 8);
    v63 = *MEMORY[0x1E69D0B70];
    v69 = (v23 + 104);
    v25 = (v23 + 8);
    v58 = *MEMORY[0x1E69D0B68];

    v68 = v25;
    do
    {
      v28 = *(v0 + 248);
      v29 = *(v0 + 232);
      v30 = *(v0 + 216);
      v32 = *(v0 + 192);
      v31 = *(v0 + 200);
      v33 = *(v0 + 176);
      v67(v28, v24, v29);
      Siri_Nlu_External_UserParse.repetitionResult.getter();
      (*v65)(v28, v29);
      Siri_Nlu_External_RepetitionResult.repetitionType.getter();
      (*v64)(v32, v33);
      v34 = *v69;
      (*v69)(v30, v63, v31);
      _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type Siri_Nlu_External_RepetitionResult.RepetitionType and conformance Siri_Nlu_External_RepetitionResult.RepetitionType, 255, MEMORY[0x1E69D0B78], MEMORY[0x1E69D0B80]);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      v35 = *v68;
      (*v68)(v30, v31);
      if (*(v0 + 64) == *(v0 + 72) || (v36 = *(v0 + 216), v37 = *(v0 + 200), v34(v36, v58, v37), dispatch thunk of RawRepresentable.rawValue.getter(), dispatch thunk of RawRepresentable.rawValue.getter(), v35(v36, v37), *(v0 + 80) == *(v0 + 88)))
      {
        v26 = [*(v59 + 48) recognition];
        v27 = [v26 aceRecognition];

        (*(*v60 + 336))(v62, v61, v27);
      }

      v35(*(v0 + 224), *(v0 + 200));
      v24 += v66;
      --v21;
    }

    while (v21);

    v19 = v57;
    v17 = v60;
  }

  (*(*(v0 + 160) + 16))(*(v0 + 168), v19 + OBJC_IVAR____TtC14SiriKitRuntime10NLResponse_nlResponseStatusCode, *(v0 + 152));
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&dword_1DC659000, v38, v39, "[ConversationService] Storing NL Response code ConversationUserInput for execution overrides check", v40, 2u);
    MEMORY[0x1E12A2F50](v40, -1, -1);
  }

  v41 = *(v0 + 168);
  v42 = *(v0 + 144);
  v43 = *(v0 + 120);
  v44 = *(v0 + 96);
  v70 = *(v0 + 104);

  (*(*v17 + 368))(v62, v61, v41);
  v45 = type metadata accessor for TaskPriority();
  (*(*(v45 - 8) + 56))(v42, 1, 1, v45);
  v46 = static MessageBusActor.shared;
  v48 = _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MessageBusActor and conformance MessageBusActor, v47, type metadata accessor for MessageBusActor, &protocol conformance descriptor for MessageBusActor);
  v49 = swift_allocObject();
  *(v49 + 16) = v46;
  *(v49 + 24) = v48;
  *(v49 + 32) = v44;
  *(v49 + 40) = v43;
  *(v49 + 48) = v17;
  *(v49 + 56) = v70;

  swift_unknownObjectRetain();

  v50 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfC14SiriKitRuntime19ConversationServiceC11EagerResultO_Tt2g5(0, 0, v42, &async function pointer to partial apply for closure #1 in ConversationService.bridge(didReceiveInput:from:), v49);
  *(v0 + 272) = v50;
  (*(*v17 + 320))(v44, v50);
  v51 = swift_task_alloc();
  *(v0 + 280) = v51;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  *v51 = v0;
  v51[1] = ConversationService.bridge(didReceiveInput:from:);
  v54 = *(v0 + 128);
  v53 = *(v0 + 136);
  v55 = MEMORY[0x1E69E7288];

  return MEMORY[0x1EEE6DA10](v53, v50, v54, v52, v55);
}

{
  v2 = *v1;
  v2[36] = v0;

  v3 = v2[32];
  if (v0)
  {
    v4 = ConversationService.bridge(didReceiveInput:from:);
  }

  else
  {
    outlined destroy of ConversationService.EagerResult(v2[17], type metadata accessor for ConversationService.EagerResult);
    v4 = ConversationService.bridge(didReceiveInput:from:);
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t ConversationService.State.assertTurnStarted(function:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = specialized ConversationService.State.assertTurnStarted(function:)(a1, a2, a3, a4, a5);
  if (!v5)
  {
  }

  return result;
}

uint64_t closure #1 in ConversationService.bridge(didReceiveInput:from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[22] = a7;
  v8[23] = a8;
  v8[20] = a5;
  v8[21] = a6;
  v8[18] = a1;
  v8[19] = a4;
  v9 = type metadata accessor for Siri_Nlu_External_Parser();
  v8[24] = v9;
  v8[25] = *(v9 - 8);
  v8[26] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR);
  v8[27] = swift_task_alloc();
  type metadata accessor for InputContinuationState();
  v8[28] = swift_task_alloc();
  v10 = type metadata accessor for Parse();
  v8[29] = v10;
  v8[30] = *(v10 - 8);
  v8[31] = swift_task_alloc();
  v8[32] = swift_task_alloc();
  v11 = type metadata accessor for Siri_Nlu_External_UserParse();
  v8[33] = v11;
  v8[34] = *(v11 - 8);
  v8[35] = swift_task_alloc();
  v8[36] = swift_task_alloc();
  v8[37] = swift_task_alloc();
  v8[38] = swift_task_alloc();
  v8[39] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  v8[40] = swift_task_alloc();
  v12 = type metadata accessor for Input();
  v8[41] = v12;
  v8[42] = *(v12 - 8);
  v8[43] = swift_task_alloc();
  v8[44] = swift_task_alloc();
  v8[45] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime22DecisionEngineResponseVSgMd, &_s14SiriKitRuntime22DecisionEngineResponseVSgMR);
  v8[46] = swift_task_alloc();
  v13 = type metadata accessor for DecisionEngineResponse(0);
  v8[47] = v13;
  v8[48] = *(v13 - 8);
  v8[49] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR);
  v8[50] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
  v8[51] = swift_task_alloc();
  v8[52] = swift_task_alloc();
  v14 = type metadata accessor for ServerFallbackReason();
  v8[53] = v14;
  v8[54] = *(v14 - 8);
  v8[55] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v15 = static MessageBusActor.shared;
  v8[56] = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in ConversationService.bridge(didReceiveInput:from:), v15, 0);
}

uint64_t closure #1 in ConversationService.bridge(didReceiveInput:from:)()
{
  v1 = *(v0 + 424);
  v2 = *(v0 + 432);
  v3 = *(v0 + 416);
  v4 = *(*(v0 + 152) + 56);
  *(v0 + 456) = v4;
  outlined init with copy of ReferenceResolutionClientProtocol?(v4 + OBJC_IVAR____TtC14SiriKitRuntime10NLResponse_serverFallbackReason, v3, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v5 = *(v0 + 160);
    outlined destroy of ReferenceResolutionClientProtocol?(*(v0 + 416), &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
    swift_beginAccess();
    v7 = *(v5 + 104);
    if ((v7 & 0xC000000000000001) != 0)
    {

      v8 = __CocoaSet.count.getter();

      if (v8)
      {
LABEL_4:
        v9 = static MessageBusActor.shared;
        *(v0 + 464) = static MessageBusActor.shared;
        v10 = _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MessageBusActor and conformance MessageBusActor, v6, type metadata accessor for MessageBusActor, &protocol conformance descriptor for MessageBusActor);
        v11 = swift_task_alloc();
        *(v0 + 472) = v11;
        v11[1] = vextq_s8(*(v0 + 152), *(v0 + 152), 8uLL);

        v12 = swift_task_alloc();
        *(v0 + 480) = v12;
        *v12 = v0;
        v12[1] = closure #1 in ConversationService.bridge(didReceiveInput:from:);
        v13 = MEMORY[0x1E69E6370];
        v14 = MEMORY[0x1E69E6370];
        v15 = MEMORY[0x1E69E6370];

        return MEMORY[0x1EEE6DBF8](v0 + 572, v13, v14, v9, v10, &async function pointer to partial apply for closure #1 in closure #1 in ConversationService.bridge(didReceiveInput:from:), v11, v15);
      }
    }

    else if (*(v7 + 16))
    {
      goto LABEL_4;
    }

    v46 = *(v0 + 160);
    swift_beginAccess();
    if (!*(v46 + 280))
    {
      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v72 = type metadata accessor for Logger();
      *(v0 + 488) = __swift_project_value_buffer(v72, static Logger.executor);
      v73 = Logger.logObject.getter();
      v74 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v73, v74))
      {
        v75 = swift_slowAlloc();
        *v75 = 0;
        _os_log_impl(&dword_1DC659000, v73, v74, "[ConversationService] Eagerly executing...", v75, 2u);
        MEMORY[0x1E12A2F50](v75, -1, -1);
      }

      v76 = Logger.logObject.getter();
      v77 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v76, v77))
      {
        v78 = *(v0 + 152);
        v79 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        v104 = v80;
        *v79 = 136315138;
        *(v79 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v78 + 16), *(v78 + 24), &v104);
        _os_log_impl(&dword_1DC659000, v76, v77, "[ConversationService] calling decision engine for rcId: %s", v79, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v80);
        MEMORY[0x1E12A2F50](v80, -1, -1);
        MEMORY[0x1E12A2F50](v79, -1, -1);
      }

      v81 = *(v0 + 160);
      v82 = v81[6];
      __swift_project_boxed_opaque_existential_1(v81 + 2, v81[5]);
      *(v0 + 496) = v81[13];
      *(v0 + 504) = *(v46 + 280);
      v83 = *(v82 + 8);

      v100 = v83 + *v83;
      v84 = swift_task_alloc();
      *(v0 + 512) = v84;
      *v84 = v0;
      v84[1] = closure #1 in ConversationService.bridge(didReceiveInput:from:);

      __asm { BRAA            X8, X16 }
    }

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
      v50 = *(v0 + 152);
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v104 = v52;
      *v51 = 136315138;
      *(v0 + 136) = v50;
      type metadata accessor for ConversationUserInput(0);

      v53 = String.init<A>(describing:)();
      v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v54, &v104);

      *(v51 + 4) = v55;
      _os_log_impl(&dword_1DC659000, v48, v49, "[ConversationService] Skipping eager for %s", v51, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v52);
      MEMORY[0x1E12A2F50](v52, -1, -1);
      MEMORY[0x1E12A2F50](v51, -1, -1);
    }

    v56 = *(*(v0 + 456) + 16);
    if (*(v56 + 16))
    {
      v57 = *(v0 + 272);
      v96 = *(v57 + 16);
      v96(*(v0 + 280), v56 + ((*(v57 + 80) + 32) & ~*(v57 + 80)), *(v0 + 264));
      v58 = Logger.logObject.getter();
      v59 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        *v60 = 0;
        _os_log_impl(&dword_1DC659000, v58, v59, "[ConversationService] Storing first parse from ConversationUserInput for execution overrides check", v60, 2u);
        MEMORY[0x1E12A2F50](v60, -1, -1);
      }

      v94 = *(v0 + 344);
      v97 = *(v0 + 336);
      v99 = *(v0 + 328);
      v61 = *(v0 + 296);
      v62 = v58;
      v63 = *(v0 + 280);
      v102 = *(v0 + 272);
      v64 = *(v0 + 264);
      v65 = *(v0 + 240);
      v66 = *(v0 + 208);
      v67 = *(v0 + 216);
      v68 = *(v0 + 200);
      v86 = *(v0 + 192);
      v87 = *(v0 + 256);
      v89 = *(v0 + 232);
      v90 = *(v0 + 168);
      v69 = *(v0 + 152);

      v88 = *(v69 + 16);
      v92 = *(v69 + 24);
      v96(v61, v63, v64);
      Siri_Nlu_External_UserParse.parser.getter();
      Siri_Nlu_External_Parser.parserID.getter();
      (*(v68 + 8))(v66, v86);
      v70 = type metadata accessor for Siri_Nlu_External_Parser.ParserIdentifier();
      (*(*(v70 - 8) + 56))(v67, 0, 1, v70);
      USOParse.init(userParse:parserIdentifier:appBundleId:)();
      (*(v65 + 104))(v87, *MEMORY[0x1E69D0168], v89);
      Input.init(parse:)();
      (*(*v90 + 352))(v88, v92, v94);
      (*(v97 + 8))(v94, v99);
      (*(v102 + 8))(v63, v64);
    }

    **(v0 + 144) = *(v0 + 152);
    type metadata accessor for ConversationService.EagerResult(0);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for ConversationSELFHelper();

    static ConversationSELFHelper.shared.getter();
  }

  else
  {
    v16 = *(v0 + 440);
    v17 = *(v0 + 424);
    v18 = *(v0 + 432);
    v19 = *(v0 + 408);
    v20 = *(v0 + 416);
    v21 = *(v0 + 400);
    v22 = *(v0 + 272);
    v98 = *(v0 + 264);
    v23 = *(v0 + 160);
    v101 = *(v0 + 168);

    v95 = v18[4];
    v95(v16, v20, v17);
    v24 = v23[32];
    v25 = v23[33];
    __swift_project_boxed_opaque_existential_1(v23 + 29, v24);
    (*(v22 + 56))(v21, 1, 1, v98);
    v93 = v18[2];
    v93(v19, v16, v17);
    v91 = v18[7];
    v91(v19, 0, 1, v17);
    LOBYTE(v16) = (*(v25 + 8))(0, v21, v19, *(v101 + OBJC_IVAR____TtCC14SiriKitRuntime19ConversationService10ActiveTurn_turnData), *(v101 + OBJC_IVAR____TtCC14SiriKitRuntime19ConversationService10ActiveTurn_turnData + 8), v24, v25);
    outlined destroy of ReferenceResolutionClientProtocol?(v19, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
    outlined destroy of ReferenceResolutionClientProtocol?(v21, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR);
    if (v16)
    {
      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v26 = type metadata accessor for Logger();
      __swift_project_value_buffer(v26, static Logger.executor);
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_1DC659000, v27, v28, "[ConversationService] Receiving serverFallbackReason from NLResponse for eager task but shouldDisableServerFallback returns true, we will generate fatal response for request", v29, 2u);
        MEMORY[0x1E12A2F50](v29, -1, -1);
      }

      v30 = *(v0 + 440);
      v31 = *(v0 + 424);
      v32 = *(v0 + 144);

      v95(v32, v30, v31);
      type metadata accessor for ConversationService.EagerResult(0);
      swift_storeEnumTagMultiPayload();
      type metadata accessor for ConversationSELFHelper();
      static ConversationSELFHelper.shared.getter();
    }

    else
    {
      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v33 = type metadata accessor for Logger();
      __swift_project_value_buffer(v33, static Logger.executor);
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&dword_1DC659000, v34, v35, "[ConversationService] Receiving serverFallbackReason from NLResponse for eager task and shouldDisableServerFallback returns false, will fall back to server if this RC is selected.", v36, 2u);
        MEMORY[0x1E12A2F50](v36, -1, -1);
      }

      v37 = *(v0 + 432);
      v38 = *(v0 + 440);
      v39 = *(v0 + 424);
      v40 = *(v0 + 408);
      v41 = *(v0 + 184);
      v42 = *(v0 + 152);

      ObjectType = swift_getObjectType();
      v44 = *(v42 + 16);
      v45 = *(v42 + 24);
      v93(v40, v38, v39);
      v91(v40, 0, 1, v39);
      (*(v41 + 48))(v44, v45, v40, ObjectType, v41);
      outlined destroy of ReferenceResolutionClientProtocol?(v40, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
      (*(v37 + 8))(v38, v39);
      type metadata accessor for ConversationService.EagerResult(0);
      swift_storeEnumTagMultiPayload();
      type metadata accessor for ConversationSELFHelper();
      static ConversationSELFHelper.shared.getter();
    }
  }

  dispatch thunk of ConversationSELFHelper.emitExecutionPrepareTimeEnd(rcId:)();

  v71 = *(v0 + 8);

  return v71();
}

{
  v1 = *(*v0 + 448);

  return MEMORY[0x1EEE6DFA0](closure #1 in ConversationService.bridge(didReceiveInput:from:), v1, 0);
}

{
  if (*(v0 + 572) == 1)
  {
    v1 = *(v0 + 160);
    swift_beginAccess();
    if (!*(v1 + 280))
    {
      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v28 = type metadata accessor for Logger();
      *(v0 + 488) = __swift_project_value_buffer(v28, static Logger.executor);
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_1DC659000, v29, v30, "[ConversationService] Eagerly executing...", v31, 2u);
        MEMORY[0x1E12A2F50](v31, -1, -1);
      }

      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = *(v0 + 152);
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v54 = v36;
        *v35 = 136315138;
        *(v35 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v34 + 16), *(v34 + 24), &v54);
        _os_log_impl(&dword_1DC659000, v32, v33, "[ConversationService] calling decision engine for rcId: %s", v35, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v36);
        MEMORY[0x1E12A2F50](v36, -1, -1);
        MEMORY[0x1E12A2F50](v35, -1, -1);
      }

      v37 = *(v0 + 160);
      v38 = v37[6];
      __swift_project_boxed_opaque_existential_1(v37 + 2, v37[5]);
      *(v0 + 496) = v37[13];
      *(v0 + 504) = *(v1 + 280);
      v39 = *(v38 + 8);

      v51 = v39 + *v39;
      v40 = swift_task_alloc();
      *(v0 + 512) = v40;
      *v40 = v0;
      v40[1] = closure #1 in ConversationService.bridge(didReceiveInput:from:);

      __asm { BRAA            X8, X16 }
    }
  }

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
    v5 = *(v0 + 152);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v54 = v7;
    *v6 = 136315138;
    *(v0 + 136) = v5;
    type metadata accessor for ConversationUserInput(0);

    v8 = String.init<A>(describing:)();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v54);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_1DC659000, v3, v4, "[ConversationService] Skipping eager for %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x1E12A2F50](v7, -1, -1);
    MEMORY[0x1E12A2F50](v6, -1, -1);
  }

  v11 = *(*(v0 + 456) + 16);
  if (*(v11 + 16))
  {
    v12 = *(v0 + 272);
    v48 = *(v12 + 16);
    v48(*(v0 + 280), v11 + ((*(v12 + 80) + 32) & ~*(v12 + 80)), *(v0 + 264));
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1DC659000, v13, v14, "[ConversationService] Storing first parse from ConversationUserInput for execution overrides check", v15, 2u);
      MEMORY[0x1E12A2F50](v15, -1, -1);
    }

    v47 = *(v0 + 344);
    v49 = *(v0 + 336);
    v50 = *(v0 + 328);
    v16 = *(v0 + 296);
    v17 = v13;
    v18 = *(v0 + 280);
    v52 = *(v0 + 272);
    v19 = *(v0 + 264);
    v20 = *(v0 + 240);
    v21 = *(v0 + 208);
    v22 = *(v0 + 216);
    v23 = *(v0 + 200);
    v41 = *(v0 + 192);
    v42 = *(v0 + 256);
    v44 = *(v0 + 232);
    v45 = *(v0 + 168);
    v24 = *(v0 + 152);

    v43 = *(v24 + 16);
    v46 = *(v24 + 24);
    v48(v16, v18, v19);
    Siri_Nlu_External_UserParse.parser.getter();
    Siri_Nlu_External_Parser.parserID.getter();
    (*(v23 + 8))(v21, v41);
    v25 = type metadata accessor for Siri_Nlu_External_Parser.ParserIdentifier();
    (*(*(v25 - 8) + 56))(v22, 0, 1, v25);
    USOParse.init(userParse:parserIdentifier:appBundleId:)();
    (*(v20 + 104))(v42, *MEMORY[0x1E69D0168], v44);
    Input.init(parse:)();
    (*(*v45 + 352))(v43, v46, v47);
    (*(v49 + 8))(v47, v50);
    (*(v52 + 8))(v18, v19);
  }

  **(v0 + 144) = *(v0 + 152);
  type metadata accessor for ConversationService.EagerResult(0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for ConversationSELFHelper();

  static ConversationSELFHelper.shared.getter();
  dispatch thunk of ConversationSELFHelper.emitExecutionPrepareTimeEnd(rcId:)();

  v26 = *(v0 + 8);

  return v26();
}

{
  v2 = *v1;
  *(*v1 + 520) = v0;

  if (v0)
  {
    v3 = *(v2 + 448);
    v4 = closure #1 in ConversationService.bridge(didReceiveInput:from:);
  }

  else
  {
    v5 = *(v2 + 448);

    v4 = closure #1 in ConversationService.bridge(didReceiveInput:from:);
    v3 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

{
  v102 = v0;
  v1 = v0;
  v3 = v0[47];
  v2 = v0[48];
  v4 = v0[46];
  if ((*(v2 + 48))(v4, 1, v3) == 1)
  {

    outlined destroy of ReferenceResolutionClientProtocol?(v4, &_s14SiriKitRuntime22DecisionEngineResponseVSgMd, &_s14SiriKitRuntime22DecisionEngineResponseVSgMR);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = v1[19];
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v101 = v9;
      *v8 = 136315138;
      *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v7 + 16), *(v7 + 24), &v101);
      _os_log_impl(&dword_1DC659000, v5, v6, "[ConversationService] No DecisionEngine response found for rcId %s during eager phase. Will redirect to server if this result is selected.", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v9);
      MEMORY[0x1E12A2F50](v9, -1, -1);
      MEMORY[0x1E12A2F50](v8, -1, -1);
    }

LABEL_5:
    type metadata accessor for ConversationService.EagerResult(0);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for ConversationSELFHelper();
    static ConversationSELFHelper.shared.getter();
    dispatch thunk of ConversationSELFHelper.emitExecutionPrepareTimeEnd(rcId:)();

    v10 = v1[1];

    return v10();
  }

  v12 = v1[49];
  v14 = v1[41];
  v13 = v1[42];
  v15 = v1[40];
  outlined init with take of DecisionEngineResponse(v4, v12, type metadata accessor for DecisionEngineResponse);
  v16 = *(v3 + 24);
  *(v1 + 142) = v16;
  outlined init with copy of ReferenceResolutionClientProtocol?(v12 + v16, v15, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  if ((*(v13 + 48))(v15, 1, v14) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v1[40], &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
    v17 = v1[49];
    v18 = *v17;
    v1[67] = *v17;
    if (!v18)
    {

      v61 = Logger.logObject.getter();
      v62 = static os_log_type_t.debug.getter();

      v63 = os_log_type_enabled(v61, v62);
      v64 = v1[49];
      if (v63)
      {
        v65 = v1[19];
        v66 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        v101 = v67;
        *v66 = 136315138;
        *(v66 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v65 + 16), *(v65 + 24), &v101);
        _os_log_impl(&dword_1DC659000, v61, v62, "[ConversationService] No conversation found for rcId %s during eager phase. Will redirect to server if this result is selected.", v66, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v67);
        MEMORY[0x1E12A2F50](v67, -1, -1);
        MEMORY[0x1E12A2F50](v66, -1, -1);
      }

      outlined destroy of ConversationService.EagerResult(v64, type metadata accessor for DecisionEngineResponse);
      goto LABEL_5;
    }

    v19 = closure #1 in ConversationService.bridge(didReceiveInput:from:);
    v20 = v18;
    v21 = 0;

    return MEMORY[0x1EEE6DFA0](v19, v20, v21);
  }

  v22 = v1[57];
  v23 = v1[44];
  v24 = v1[45];
  v25 = v1[41];
  v26 = v1[42];
  (*(v26 + 32))(v24, v1[40], v25);
  (*(v26 + 16))(v23, v24, v25);
  v27 = *(v22 + 16);
  v28 = *(v27 + 16);

  v29 = MEMORY[0x1E69E7CC0];
  if (v28)
  {
    v30 = 0;
    v31 = v1[34];
    v94 = v28;
    v96 = v1;
    v98 = (v31 + 32);
    while (v30 < *(v27 + 16))
    {
      v32 = (*(v31 + 80) + 32) & ~*(v31 + 80);
      v33 = *(v31 + 72);
      v34 = (*(v31 + 16))(v1[39], v27 + v32 + v33 * v30, v1[33]);
      MEMORY[0x1E129C0F0](v34);
      v35 = Array<A>.hasWantedToPause.getter();

      if (v35)
      {
        v36 = *v98;
        (*v98)(v1[38], v1[39], v1[33]);
        v101 = v29;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v29 + 16) + 1, 1);
          v29 = v101;
        }

        v38 = *(v29 + 16);
        v37 = *(v29 + 24);
        if (v38 >= v37 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v37 > 1), v38 + 1, 1);
          v29 = v101;
        }

        v39 = v96[38];
        v40 = v96[33];
        *(v29 + 16) = v38 + 1;
        v41 = v29 + v32 + v38 * v33;
        v1 = v96;
        v19 = v36(v41, v39, v40);
        v28 = v94;
      }

      else
      {
        v19 = (*(v31 + 8))(v1[39], v1[33]);
      }

      if (v28 == ++v30)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
    return MEMORY[0x1EEE6DFA0](v19, v20, v21);
  }

LABEL_24:

  v42 = *(v29 + 16);
  if (v42)
  {
    v43 = v1[34];
    v44 = v1[30];
    v45 = v1[25];
    v101 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v42, 0);
    v46 = v101;
    v47 = *(v43 + 16);
    v43 += 16;
    v48 = v29 + ((*(v43 + 64) + 32) & ~*(v43 + 64));
    v91 = *(v43 + 56);
    v92 = v47;
    v89 = (v43 - 8);
    v90 = (v45 + 8);
    v88 = *MEMORY[0x1E69D0168];
    v93 = v44;
    v87 = (v44 + 104);
    do
    {
      v97 = v46;
      v100 = v42;
      v49 = v1[36];
      v50 = v1[37];
      v51 = v1[33];
      v95 = v1[31];
      v99 = v1[29];
      v52 = v1[26];
      v53 = v1[27];
      v54 = v1[24];
      v92(v50, v48, v51);
      v92(v49, v50, v51);
      Siri_Nlu_External_UserParse.parser.getter();
      Siri_Nlu_External_Parser.parserID.getter();
      v55 = v54;
      v46 = v97;
      (*v90)(v52, v55);
      v56 = type metadata accessor for Siri_Nlu_External_Parser.ParserIdentifier();
      (*(*(v56 - 8) + 56))(v53, 0, 1, v56);
      USOParse.init(userParse:parserIdentifier:appBundleId:)();
      (*v89)(v50, v51);
      (*v87)(v95, v88, v99);
      v101 = v97;
      v58 = *(v97 + 16);
      v57 = *(v97 + 24);
      if (v58 >= v57 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v57 > 1), v58 + 1, 1);
        v46 = v101;
      }

      v59 = v1[31];
      v60 = v1[29];
      *(v46 + 16) = v58 + 1;
      (*(v93 + 32))(v46 + ((*(v93 + 80) + 32) & ~*(v93 + 80)) + *(v93 + 72) * v58, v59, v60);
      v48 += v91;
      v42 = v100 - 1;
    }

    while (v100 != 1);
  }

  else
  {

    v46 = MEMORY[0x1E69E7CC0];
  }

  v68 = v1[44];
  v69 = v1[42];
  v70 = v1[43];
  v71 = v1[41];
  Input.parse.getter();
  v101 = Input.alternatives.getter();
  specialized Array.append<A>(contentsOf:)(v46);
  Input.continuationState.getter();
  Input.init(parse:alternatives:continuationState:)();
  (*(v69 + 40))(v68, v70, v71);
  v72 = Logger.logObject.getter();
  v73 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v72, v73))
  {
    v74 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    v101 = v75;
    *v74 = 136315138;
    swift_beginAccess();
    _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type Input and conformance Input, 255, MEMORY[0x1E69D0100], MEMORY[0x1E69D0118]);
    v76 = dispatch thunk of CustomStringConvertible.description.getter();
    v78 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v76, v77, &v101);

    *(v74 + 4) = v78;
    _os_log_impl(&dword_1DC659000, v72, v73, "[ConversationService] input: %s", v74, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v75);
    MEMORY[0x1E12A2F50](v75, -1, -1);
    MEMORY[0x1E12A2F50](v74, -1, -1);
  }

  v79 = v1[44];
  v80 = v1[21];
  v81 = v1[19];
  v82 = *(v81 + 16);
  v83 = *(v81 + 24);
  swift_beginAccess();
  (*(*v80 + 352))(v82, v83, v79);
  Input.parse.getter();
  v84 = swift_task_alloc();
  v1[66] = v84;
  *v84 = v1;
  v84[1] = closure #1 in ConversationService.bridge(didReceiveInput:from:);
  v85 = v1[32];
  v86 = v1[21];

  return specialized ConversationService.updateRequestHandlingExecutionSystem(activeTurn:rcId:parse:)(v86, v82, v83, v85);
}

{
  v1 = *(*v0 + 448);
  v2 = *(*v0 + 256);
  v3 = *(*v0 + 240);
  v4 = *(*v0 + 232);

  (*(v3 + 8))(v2, v4);

  return MEMORY[0x1EEE6DFA0](closure #1 in ConversationService.bridge(didReceiveInput:from:), v1, 0);
}

{
  v16 = v0;
  v1 = v0[44];
  v2 = v0[41];
  v3 = *(v0[42] + 8);
  v3(v0[45], v2);
  v3(v1, v2);
  v4 = v0[49];
  v5 = *v4;
  v0[67] = *v4;
  if (v5)
  {

    return MEMORY[0x1EEE6DFA0](closure #1 in ConversationService.bridge(didReceiveInput:from:), v5, 0);
  }

  else
  {

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.debug.getter();

    v8 = os_log_type_enabled(v6, v7);
    v9 = v0[49];
    if (v8)
    {
      v10 = v0[19];
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v15 = v12;
      *v11 = 136315138;
      *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v10 + 16), *(v10 + 24), &v15);
      _os_log_impl(&dword_1DC659000, v6, v7, "[ConversationService] No conversation found for rcId %s during eager phase. Will redirect to server if this result is selected.", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      MEMORY[0x1E12A2F50](v12, -1, -1);
      MEMORY[0x1E12A2F50](v11, -1, -1);
    }

    outlined destroy of ConversationService.EagerResult(v9, type metadata accessor for DecisionEngineResponse);
    type metadata accessor for ConversationService.EagerResult(0);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for ConversationSELFHelper();
    static ConversationSELFHelper.shared.getter();
    dispatch thunk of ConversationSELFHelper.emitExecutionPrepareTimeEnd(rcId:)();

    v13 = v0[1];

    return v13();
  }
}

{
  v1 = *(v0 + 536);
  v7 = *(v0 + 176);
  Logger.debugF(file:function:)("SiriKitRuntime/RemoteConversationClient.swift", 45, 2, "prepare(bridge:)", 16, 2);
  v2 = v1[20];
  __swift_project_boxed_opaque_existential_1(v1 + 16, v1[19]);
  v3 = swift_allocObject();
  *(v0 + 544) = v3;
  *(v3 + 16) = v7;
  v4 = *(v2 + 8);
  swift_unknownObjectRetain();
  v8 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v0 + 552) = v5;
  *v5 = v0;
  v5[1] = closure #1 in ConversationService.bridge(didReceiveInput:from:);

  return v8();
}

{
  v2 = *v1;
  *(*v1 + 560) = v0;

  if (v0)
  {
    v3 = *(v2 + 536);
    v4 = closure #1 in ConversationService.bridge(didReceiveInput:from:);
  }

  else
  {

    v3 = *(v2 + 536);
    v4 = closure #1 in ConversationService.bridge(didReceiveInput:from:);
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

{
  return MEMORY[0x1EEE6DFA0](closure #1 in ConversationService.bridge(didReceiveInput:from:), *(v0 + 448), 0);
}

{
  v1 = *(v0 + 536);
  v2 = *(v0 + 568);
  v3 = *(v0 + 392);
  v5 = *(v0 + 144);
  v4 = *(v0 + 152);

  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime21ConversationUserInputC_AA06RemoteD6ClientC0aB4Flow0F0VSgtMd, &_s14SiriKitRuntime21ConversationUserInputC_AA06RemoteD6ClientC0aB4Flow0F0VSgtMR) + 64);
  *v5 = v4;
  v5[1] = v1;
  outlined init with copy of ReferenceResolutionClientProtocol?(v3 + v2, v5 + v6, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);

  outlined destroy of ConversationService.EagerResult(v3, type metadata accessor for DecisionEngineResponse);
  type metadata accessor for ConversationService.EagerResult(0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for ConversationSELFHelper();
  static ConversationSELFHelper.shared.getter();
  dispatch thunk of ConversationSELFHelper.emitExecutionPrepareTimeEnd(rcId:)();

  v7 = *(v0 + 8);

  return v7();
}

{
  v1 = *(v0 + 448);

  return MEMORY[0x1EEE6DFA0](closure #1 in ConversationService.bridge(didReceiveInput:from:), v1, 0);
}

{
  v1 = *(v0 + 392);

  outlined destroy of ConversationService.EagerResult(v1, type metadata accessor for DecisionEngineResponse);
  type metadata accessor for ConversationSELFHelper();
  static ConversationSELFHelper.shared.getter();
  dispatch thunk of ConversationSELFHelper.emitExecutionPrepareTimeEnd(rcId:)();

  v2 = *(v0 + 8);

  return v2();
}

{

  type metadata accessor for ConversationSELFHelper();
  static ConversationSELFHelper.shared.getter();
  dispatch thunk of ConversationSELFHelper.emitExecutionPrepareTimeEnd(rcId:)();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in closure #1 in ConversationService.bridge(didReceiveInput:from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[24] = a3;
  v4[25] = a4;
  v4[22] = a1;
  v4[23] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScG8IteratorVySb_GMd, &_sScG8IteratorVySb_GMR);
  v4[26] = v5;
  v4[27] = *(v5 - 8);
  v4[28] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v6 = static MessageBusActor.shared;
  v4[31] = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in ConversationService.bridge(didReceiveInput:from:), v6, 0);
}

uint64_t closure #1 in closure #1 in ConversationService.bridge(didReceiveInput:from:)()
{
  v54 = v0;
  v1 = *(v0 + 192);
  swift_beginAccess();
  v2 = *(v1 + 104);
  if ((v2 & 0xC000000000000001) != 0)
  {

    __CocoaSet.makeIterator()();
    type metadata accessor for RemoteConversationClient();
    _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type RemoteConversationClient and conformance RemoteConversationClient, 255, type metadata accessor for RemoteConversationClient, &protocol conformance descriptor for RemoteConversationClient);
    Set.Iterator.init(_cocoa:)();
    v2 = *(v0 + 16);
    v3 = *(v0 + 24);
    v4 = *(v0 + 32);
    v5 = *(v0 + 40);
    v6 = *(v0 + 48);
  }

  else
  {
    v7 = -1 << *(v2 + 32);
    v3 = v2 + 56;
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

    v6 = v9 & *(v2 + 56);

    v5 = 0;
  }

  v10 = (v4 + 64) >> 6;
  v48 = v3;
  v49 = v2;
  v50 = v10;
  while (v2 < 0)
  {
    v18 = __CocoaSet.Iterator.next()();
    if (!v18)
    {
      goto LABEL_30;
    }

    *(v0 + 168) = v18;
    type metadata accessor for RemoteConversationClient();
    swift_dynamicCast();
    v17 = *(v0 + 160);
    v15 = v5;
    v16 = v6;
    if (!v17)
    {
      goto LABEL_30;
    }

LABEL_19:
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, static Logger.executor);

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.debug.getter();

    v51 = v16;
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v52 = v23;
      v53[0] = 0;
      *v22 = 136315138;
      v53[1] = 0xE000000000000000;

      _StringGuts.grow(_:)(17);

      strcpy(v53, "FlowExtension(");
      HIBYTE(v53[1]) = -18;
      MEMORY[0x1E12A1580](*(v17 + 112), *(v17 + 120));
      MEMORY[0x1E12A1580](41, 0xE100000000000000);

      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53[0], v53[1], &v52);

      *(v22 + 4) = v24;
      _os_log_impl(&dword_1DC659000, v20, v21, "[ConversationService] check for inputContinuation support for conversation: %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v23);
      MEMORY[0x1E12A2F50](v23, -1, -1);
      MEMORY[0x1E12A2F50](v22, -1, -1);
    }

    v26 = *(v0 + 232);
    v25 = *(v0 + 240);
    v27 = *(v0 + 200);
    v28 = type metadata accessor for TaskPriority();
    v29 = *(v28 - 8);
    (*(v29 + 56))(v25, 1, 1, v28);
    v30 = swift_allocObject();
    v30[2] = 0;
    v31 = v30 + 2;
    v30[3] = 0;
    v30[4] = v17;
    v30[5] = v27;
    outlined init with copy of ReferenceResolutionClientProtocol?(v25, v26, &_sScPSgMd, &_sScPSgMR);
    LODWORD(v26) = (*(v29 + 48))(v26, 1, v28);

    v32 = *(v0 + 232);
    if (v26 == 1)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(v32, &_sScPSgMd, &_sScPSgMR);
      if (*v31)
      {
        goto LABEL_25;
      }
    }

    else
    {
      TaskPriority.rawValue.getter();
      (*(v29 + 8))(v32, v28);
      if (*v31)
      {
LABEL_25:
        swift_getObjectType();
        swift_unknownObjectRetain();
        v33 = dispatch thunk of Actor.unownedExecutor.getter();
        v35 = v34;
        swift_unknownObjectRelease();
        goto LABEL_28;
      }
    }

    v33 = 0;
    v35 = 0;
LABEL_28:
    v36 = **(v0 + 184);
    v37 = swift_allocObject();
    *(v37 + 16) = &async function pointer to partial apply for closure #1 in closure #1 in closure #1 in ConversationService.bridge(didReceiveInput:from:);
    *(v37 + 24) = v30;

    if (v35 | v33)
    {
      v11 = v0 + 56;
      *(v0 + 56) = 0;
      *(v0 + 64) = 0;
      *(v0 + 72) = v33;
      *(v0 + 80) = v35;
    }

    else
    {
      v11 = 0;
    }

    v3 = v48;
    v2 = v49;
    v12 = *(v0 + 240);
    *(v0 + 136) = 1;
    *(v0 + 144) = v11;
    *(v0 + 152) = v36;
    swift_task_create();

    outlined destroy of ReferenceResolutionClientProtocol?(v12, &_sScPSgMd, &_sScPSgMR);
    v5 = v15;
    v6 = v51;
    v10 = v50;
  }

  v13 = v5;
  v14 = v6;
  v15 = v5;
  if (!v6)
  {
    while (1)
    {
      v15 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v15 >= v10)
      {
        goto LABEL_30;
      }

      v14 = *(v3 + 8 * v15);
      ++v13;
      if (v14)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
    goto LABEL_37;
  }

LABEL_15:
  v16 = (v14 - 1) & v14;
  v17 = *(*(v2 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));

  if (v17)
  {
    goto LABEL_19;
  }

LABEL_30:
  outlined consume of Set<RemoteConversationClient>.Iterator._Variant(v2);
  if (one-time initialization token for executor == -1)
  {
    goto LABEL_31;
  }

LABEL_37:
  swift_once();
LABEL_31:
  v38 = type metadata accessor for Logger();
  __swift_project_value_buffer(v38, static Logger.executor);
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 0;
    _os_log_impl(&dword_1DC659000, v39, v40, "[ConversationService] checking if conversation group satisifies input continuation check", v41, 2u);
    MEMORY[0x1E12A2F50](v41, -1, -1);
  }

  TaskGroup.makeAsyncIterator()();
  v42 = static MessageBusActor.shared;
  *(v0 + 256) = static MessageBusActor.shared;
  v44 = _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MessageBusActor and conformance MessageBusActor, v43, type metadata accessor for MessageBusActor, &protocol conformance descriptor for MessageBusActor);

  v45 = swift_task_alloc();
  *(v0 + 264) = v45;
  *v45 = v0;
  v45[1] = closure #1 in closure #1 in ConversationService.bridge(didReceiveInput:from:);
  v46 = *(v0 + 208);

  return MEMORY[0x1EEE6D8A8](v0 + 272, v42, v44, v46);
}

{
  v1 = *(*v0 + 248);

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in ConversationService.bridge(didReceiveInput:from:), v1, 0);
}

uint64_t closure #1 in closure #1 in ConversationService.bridge(didReceiveInput:from:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 272);
  if (v3 == 2)
  {
    v4 = 1;
LABEL_8:
    v9 = *(v2 + 176);
    (*(*(v2 + 216) + 8))(*(v2 + 224), *(v2 + 208));

    *v9 = v4;

    v10 = *(v2 + 8);

    return v10();
  }

  if ((v3 & 1) == 0)
  {
    v4 = 0;
    goto LABEL_8;
  }

  v5 = static MessageBusActor.shared;
  *(v2 + 256) = static MessageBusActor.shared;
  v6 = _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MessageBusActor and conformance MessageBusActor, a2, type metadata accessor for MessageBusActor, &protocol conformance descriptor for MessageBusActor);

  v7 = swift_task_alloc();
  *(v2 + 264) = v7;
  *v7 = v2;
  v7[1] = closure #1 in closure #1 in ConversationService.bridge(didReceiveInput:from:);
  v8 = *(v2 + 208);

  return MEMORY[0x1EEE6D8A8](v2 + 272, v5, v6, v8);
}

uint64_t closure #1 in closure #1 in closure #1 in ConversationService.bridge(didReceiveInput:from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  v6 = type metadata accessor for FlexibleExecutionSupportOptions();
  v5[5] = v6;
  v5[6] = *(v6 - 8);
  v5[7] = swift_task_alloc();
  v5[8] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow31FlexibleExecutionSupportOptionsVSgMd, &_s11SiriKitFlow31FlexibleExecutionSupportOptionsVSgMR);
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();
  v7 = swift_task_alloc();
  v5[12] = v7;
  v8 = swift_task_alloc();
  v5[13] = v8;
  *v8 = v5;
  v8[1] = closure #1 in closure #1 in closure #1 in ConversationService.bridge(didReceiveInput:from:);

  return RemoteConversationClient.flexibleExecutionSupportOptions()(v7);
}

uint64_t closure #1 in closure #1 in closure #1 in ConversationService.bridge(didReceiveInput:from:)()
{

  if (v0)
  {

    v1 = closure #1 in closure #1 in closure #1 in ConversationService.bridge(didReceiveInput:from:);
  }

  else
  {
    v1 = closure #1 in closure #1 in closure #1 in ConversationService.bridge(didReceiveInput:from:);
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

{
  v34 = v0;
  (*(*(v0 + 48) + 56))(*(v0 + 96), 0, 1, *(v0 + 40));
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.executor);
  outlined init with copy of ReferenceResolutionClientProtocol?(v2, v1, &_s11SiriKitFlow31FlexibleExecutionSupportOptionsVSgMd, &_s11SiriKitFlow31FlexibleExecutionSupportOptionsVSgMR);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 88);
  if (v6)
  {
    v8 = *(v0 + 80);
    v10 = *(v0 + 24);
    v9 = *(v0 + 32);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v32 = v12;
    *v11 = 136315650;
    *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v9 + 16), *(v9 + 24), &v32);
    *(v11 + 12) = 2080;
    v33[0] = 0;
    v33[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(17);

    strcpy(v33, "FlowExtension(");
    HIBYTE(v33[1]) = -18;
    MEMORY[0x1E12A1580](*(v10 + 112), *(v10 + 120));
    MEMORY[0x1E12A1580](41, 0xE100000000000000);
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33[0], v33[1], &v32);

    *(v11 + 14) = v13;
    *(v11 + 22) = 2080;
    outlined init with copy of ReferenceResolutionClientProtocol?(v7, v8, &_s11SiriKitFlow31FlexibleExecutionSupportOptionsVSgMd, &_s11SiriKitFlow31FlexibleExecutionSupportOptionsVSgMR);
    v14 = String.init<A>(describing:)();
    v16 = v15;
    outlined destroy of ReferenceResolutionClientProtocol?(v7, &_s11SiriKitFlow31FlexibleExecutionSupportOptionsVSgMd, &_s11SiriKitFlow31FlexibleExecutionSupportOptionsVSgMR);
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, &v32);

    *(v11 + 24) = v17;
    _os_log_impl(&dword_1DC659000, v4, v5, "[ConversationService] flexible execution options for rcId: %s, active conversation:  %s are  %s", v11, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v12, -1, -1);
    MEMORY[0x1E12A2F50](v11, -1, -1);
  }

  else
  {

    outlined destroy of ReferenceResolutionClientProtocol?(v7, &_s11SiriKitFlow31FlexibleExecutionSupportOptionsVSgMd, &_s11SiriKitFlow31FlexibleExecutionSupportOptionsVSgMR);
  }

  v18 = *(v0 + 72);
  v19 = *(v0 + 40);
  v20 = *(v0 + 48);
  outlined init with copy of ReferenceResolutionClientProtocol?(*(v0 + 96), v18, &_s11SiriKitFlow31FlexibleExecutionSupportOptionsVSgMd, &_s11SiriKitFlow31FlexibleExecutionSupportOptionsVSgMR);
  v21 = (*(v20 + 48))(v18, 1, v19);
  v22 = *(v0 + 96);
  v23 = *(v0 + 72);
  if (v21 == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(*(v0 + 96), &_s11SiriKitFlow31FlexibleExecutionSupportOptionsVSgMd, &_s11SiriKitFlow31FlexibleExecutionSupportOptionsVSgMR);
    outlined destroy of ReferenceResolutionClientProtocol?(v23, &_s11SiriKitFlow31FlexibleExecutionSupportOptionsVSgMd, &_s11SiriKitFlow31FlexibleExecutionSupportOptionsVSgMR);
    v24 = 0;
  }

  else
  {
    v26 = *(v0 + 48);
    v25 = *(v0 + 56);
    v27 = *(v0 + 40);
    static FlexibleExecutionSupportOptions.inputContinuation.getter();
    _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type FlexibleExecutionSupportOptions and conformance FlexibleExecutionSupportOptions, 255, MEMORY[0x1E69D00C0], MEMORY[0x1E69D00C8]);
    v28 = dispatch thunk of SetAlgebra.isSuperset(of:)();
    v29 = *(v26 + 8);
    v29(v25, v27);
    outlined destroy of ReferenceResolutionClientProtocol?(v22, &_s11SiriKitFlow31FlexibleExecutionSupportOptionsVSgMd, &_s11SiriKitFlow31FlexibleExecutionSupportOptionsVSgMR);
    v29(v23, v27);
    v24 = v28 & 1;
  }

  **(v0 + 16) = v24;

  v30 = *(v0 + 8);

  return v30();
}

{
  v34 = v0;
  (*(*(v0 + 48) + 56))(*(v0 + 96), 1, 1, *(v0 + 40));
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.executor);
  outlined init with copy of ReferenceResolutionClientProtocol?(v2, v1, &_s11SiriKitFlow31FlexibleExecutionSupportOptionsVSgMd, &_s11SiriKitFlow31FlexibleExecutionSupportOptionsVSgMR);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 88);
  if (v6)
  {
    v8 = *(v0 + 80);
    v10 = *(v0 + 24);
    v9 = *(v0 + 32);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v32 = v12;
    *v11 = 136315650;
    *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v9 + 16), *(v9 + 24), &v32);
    *(v11 + 12) = 2080;
    v33[0] = 0;
    v33[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(17);

    strcpy(v33, "FlowExtension(");
    HIBYTE(v33[1]) = -18;
    MEMORY[0x1E12A1580](*(v10 + 112), *(v10 + 120));
    MEMORY[0x1E12A1580](41, 0xE100000000000000);
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33[0], v33[1], &v32);

    *(v11 + 14) = v13;
    *(v11 + 22) = 2080;
    outlined init with copy of ReferenceResolutionClientProtocol?(v7, v8, &_s11SiriKitFlow31FlexibleExecutionSupportOptionsVSgMd, &_s11SiriKitFlow31FlexibleExecutionSupportOptionsVSgMR);
    v14 = String.init<A>(describing:)();
    v16 = v15;
    outlined destroy of ReferenceResolutionClientProtocol?(v7, &_s11SiriKitFlow31FlexibleExecutionSupportOptionsVSgMd, &_s11SiriKitFlow31FlexibleExecutionSupportOptionsVSgMR);
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, &v32);

    *(v11 + 24) = v17;
    _os_log_impl(&dword_1DC659000, v4, v5, "[ConversationService] flexible execution options for rcId: %s, active conversation:  %s are  %s", v11, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v12, -1, -1);
    MEMORY[0x1E12A2F50](v11, -1, -1);
  }

  else
  {

    outlined destroy of ReferenceResolutionClientProtocol?(v7, &_s11SiriKitFlow31FlexibleExecutionSupportOptionsVSgMd, &_s11SiriKitFlow31FlexibleExecutionSupportOptionsVSgMR);
  }

  v18 = *(v0 + 72);
  v19 = *(v0 + 40);
  v20 = *(v0 + 48);
  outlined init with copy of ReferenceResolutionClientProtocol?(*(v0 + 96), v18, &_s11SiriKitFlow31FlexibleExecutionSupportOptionsVSgMd, &_s11SiriKitFlow31FlexibleExecutionSupportOptionsVSgMR);
  v21 = (*(v20 + 48))(v18, 1, v19);
  v22 = *(v0 + 96);
  v23 = *(v0 + 72);
  if (v21 == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(*(v0 + 96), &_s11SiriKitFlow31FlexibleExecutionSupportOptionsVSgMd, &_s11SiriKitFlow31FlexibleExecutionSupportOptionsVSgMR);
    outlined destroy of ReferenceResolutionClientProtocol?(v23, &_s11SiriKitFlow31FlexibleExecutionSupportOptionsVSgMd, &_s11SiriKitFlow31FlexibleExecutionSupportOptionsVSgMR);
    v24 = 0;
  }

  else
  {
    v26 = *(v0 + 48);
    v25 = *(v0 + 56);
    v27 = *(v0 + 40);
    static FlexibleExecutionSupportOptions.inputContinuation.getter();
    _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type FlexibleExecutionSupportOptions and conformance FlexibleExecutionSupportOptions, 255, MEMORY[0x1E69D00C0], MEMORY[0x1E69D00C8]);
    v28 = dispatch thunk of SetAlgebra.isSuperset(of:)();
    v29 = *(v26 + 8);
    v29(v25, v27);
    outlined destroy of ReferenceResolutionClientProtocol?(v22, &_s11SiriKitFlow31FlexibleExecutionSupportOptionsVSgMd, &_s11SiriKitFlow31FlexibleExecutionSupportOptionsVSgMR);
    v29(v23, v27);
    v24 = v28 & 1;
  }

  **(v0 + 16) = v24;

  v30 = *(v0 + 8);

  return v30();
}

uint64_t ConversationService.bridge(didReceiveCheckExecutionOverrides:resultCandidateId:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v21 - v12;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  v15 = one-time initialization token for shared;

  if (v15 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v16 = static MessageBusActor.shared;
  v18 = _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MessageBusActor and conformance MessageBusActor, v17, type metadata accessor for MessageBusActor, &protocol conformance descriptor for MessageBusActor);
  v19 = swift_allocObject();
  v19[2] = v16;
  v19[3] = v18;
  v19[4] = a4;
  v19[5] = a5;
  v19[6] = v5;
  v19[7] = a1;
  v19[8] = a2;
  v19[9] = a3;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v13, &async function pointer to partial apply for closure #1 in ConversationService.bridge(didReceiveCheckExecutionOverrides:resultCandidateId:completion:), v19);
}

uint64_t closure #1 in ConversationService.bridge(didReceiveCheckExecutionOverrides:resultCandidateId:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a4;
  v8[6] = a5;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v8[7] = static MessageBusActor.shared;

  v11 = swift_task_alloc();
  v8[8] = v11;
  *v11 = v8;
  v11[1] = closure #1 in ConversationService.bridge(didReceiveCheckExecutionOverrides:resultCandidateId:completion:);

  return ConversationService.checkExecutionOverrides(context:resultCandidateId:)(a7, a8, v14);
}

uint64_t closure #1 in ConversationService.bridge(didReceiveCheckExecutionOverrides:resultCandidateId:completion:)(uint64_t a1)
{
  v2 = *(*v1 + 56);
  *(*v1 + 72) = a1;

  return MEMORY[0x1EEE6DFA0](closure #1 in ConversationService.bridge(didReceiveCheckExecutionOverrides:resultCandidateId:completion:), v2, 0);
}

uint64_t closure #1 in ConversationService.bridge(didReceiveCheckExecutionOverrides:resultCandidateId:completion:)()
{
  v1 = v0[9];
  v2 = v0[5];

  v2(v1);

  v3 = v0[1];

  return v3();
}

uint64_t ConversationService.checkExecutionOverrides(context:resultCandidateId:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[50] = a3;
  v4[51] = v3;
  v4[48] = a1;
  v4[49] = a2;
  v5 = type metadata accessor for Parse();
  v4[52] = v5;
  v4[53] = *(v5 - 8);
  v4[54] = swift_task_alloc();
  v6 = type metadata accessor for USOParse();
  v4[55] = v6;
  v4[56] = *(v6 - 8);
  v4[57] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR);
  v4[58] = swift_task_alloc();
  v4[59] = swift_task_alloc();
  v7 = type metadata accessor for Siri_Nlu_External_ResponseStatus.StatusCode();
  v4[60] = v7;
  v4[61] = *(v7 - 8);
  v4[62] = swift_task_alloc();
  v4[63] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A28_Nlu_External_ResponseStatusV0F4CodeOSg_AFtMd, &_s12SiriNLUTypes0A28_Nlu_External_ResponseStatusV0F4CodeOSg_AFtMR);
  v4[64] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A28_Nlu_External_ResponseStatusV0F4CodeOSgMd, &_s12SiriNLUTypes0A28_Nlu_External_ResponseStatusV0F4CodeOSgMR);
  v4[65] = swift_task_alloc();
  v4[66] = swift_task_alloc();
  v4[67] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  v4[68] = swift_task_alloc();
  v4[69] = swift_task_alloc();
  v4[70] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v8 = static MessageBusActor.shared;
  v4[71] = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](ConversationService.checkExecutionOverrides(context:resultCandidateId:), v8, 0);
}

uint64_t ConversationService.checkExecutionOverrides(context:resultCandidateId:)()
{
  v1 = *(v0 + 408);
  swift_beginAccess();
  v2 = *(v1 + 112);
  *(v0 + 576) = v2;
  v3 = *(v1 + 120);
  *(v0 + 700) = v3;
  if ((v3 & 0xC0) == 0x80)
  {
    v4 = one-time initialization token for executor;

    if (v4 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    *(v0 + 584) = __swift_project_value_buffer(v5, static Logger.executor);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1DC659000, v6, v7, "[ConversationService] didReceiveCheckExecutionOverrides", v8, 2u);
      MEMORY[0x1E12A2F50](v8, -1, -1);
    }

    v9 = *(v1 + 120);
    v10 = v2;
    if (v9 >> 6)
    {
      if (v9 >> 6 != 1)
      {
        LOBYTE(v9) = 0;
      }
    }

    else
    {
      v9 = *(v1 + 112);
    }

    *(v0 + 701) = v9 & 1;
    v14 = *(v0 + 536);
    v15 = *(v0 + 528);
    v16 = *(v0 + 512);
    v44 = *(v0 + 504);
    v17 = *(v0 + 480);
    v18 = *(v0 + 488);
    v20 = *(v0 + 392);
    v19 = *(v0 + 400);
    (*(*v10 + 360))(v20, v19);
    (*(*v10 + 376))(v20, v19);
    v21 = OBJC_IVAR____TtCC14SiriKitRuntime19ConversationService10ActiveTurn_turnData;
    *(v0 + 592) = OBJC_IVAR____TtCC14SiriKitRuntime19ConversationService10ActiveTurn_turnData;
    v46 = v10;
    v22 = &v10[v21];
    v23 = *(type metadata accessor for RemoteConversationTurnData(0) + 32);
    *(v0 + 696) = v23;
    v24 = (*&v22[v23] + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_inputOrigin);
    *(v0 + 600) = *v24;
    *(v0 + 608) = v24[1];
    (*(v18 + 104))(v15, *MEMORY[0x1E69D0A98], v17);
    (*(v18 + 56))(v15, 0, 1, v17);
    v25 = *(v44 + 48);
    outlined init with copy of ReferenceResolutionClientProtocol?(v14, v16, &_s12SiriNLUTypes0A28_Nlu_External_ResponseStatusV0F4CodeOSgMd, &_s12SiriNLUTypes0A28_Nlu_External_ResponseStatusV0F4CodeOSgMR);
    outlined init with copy of ReferenceResolutionClientProtocol?(v15, v16 + v25, &_s12SiriNLUTypes0A28_Nlu_External_ResponseStatusV0F4CodeOSgMd, &_s12SiriNLUTypes0A28_Nlu_External_ResponseStatusV0F4CodeOSgMR);
    v26 = *(v18 + 48);
    if (v26(v16, 1, v17) == 1)
    {
      v27 = *(v0 + 528);
      v28 = *(v0 + 480);

      outlined destroy of ReferenceResolutionClientProtocol?(v27, &_s12SiriNLUTypes0A28_Nlu_External_ResponseStatusV0F4CodeOSgMd, &_s12SiriNLUTypes0A28_Nlu_External_ResponseStatusV0F4CodeOSgMR);
      v29 = v26(v16 + v25, 1, v28);
      v30 = v46;
      if (v29 == 1)
      {
        outlined destroy of ReferenceResolutionClientProtocol?(*(v0 + 512), &_s12SiriNLUTypes0A28_Nlu_External_ResponseStatusV0F4CodeOSgMd, &_s12SiriNLUTypes0A28_Nlu_External_ResponseStatusV0F4CodeOSgMR);
        v31 = 1;
LABEL_20:
        *(v0 + 702) = v31 & 1;
        v42 = OBJC_IVAR____TtCC14SiriKitRuntime19ConversationService10ActiveTurn_aceServiceInvoker;
        v43 = swift_task_alloc();
        *(v0 + 616) = v43;
        *v43 = v0;
        v43[1] = ConversationService.checkExecutionOverrides(context:resultCandidateId:);

        return specialized static ConversationService.skipEmptyAsr(_:)(&v30[v42]);
      }
    }

    else
    {
      v32 = *(v0 + 480);
      outlined init with copy of ReferenceResolutionClientProtocol?(*(v0 + 512), *(v0 + 520), &_s12SiriNLUTypes0A28_Nlu_External_ResponseStatusV0F4CodeOSgMd, &_s12SiriNLUTypes0A28_Nlu_External_ResponseStatusV0F4CodeOSgMR);
      v33 = v26(v16 + v25, 1, v32);
      v34 = *(v0 + 528);
      v35 = *(v0 + 520);
      if (v33 != 1)
      {
        v45 = *(v0 + 512);
        v39 = *(v0 + 488);
        v38 = *(v0 + 496);
        v40 = *(v0 + 480);
        (*(v39 + 32))(v38, v16 + v25, v40);
        _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type Siri_Nlu_External_ResponseStatus.StatusCode and conformance Siri_Nlu_External_ResponseStatus.StatusCode, 255, MEMORY[0x1E69D0AA8], MEMORY[0x1E69D0AB0]);

        v31 = dispatch thunk of static Equatable.== infix(_:_:)();
        v41 = *(v39 + 8);
        v41(v38, v40);
        outlined destroy of ReferenceResolutionClientProtocol?(v34, &_s12SiriNLUTypes0A28_Nlu_External_ResponseStatusV0F4CodeOSgMd, &_s12SiriNLUTypes0A28_Nlu_External_ResponseStatusV0F4CodeOSgMR);
        v41(v35, v40);
        outlined destroy of ReferenceResolutionClientProtocol?(v45, &_s12SiriNLUTypes0A28_Nlu_External_ResponseStatusV0F4CodeOSgMd, &_s12SiriNLUTypes0A28_Nlu_External_ResponseStatusV0F4CodeOSgMR);
        v30 = v46;
        goto LABEL_20;
      }

      v37 = *(v0 + 480);
      v36 = *(v0 + 488);

      outlined destroy of ReferenceResolutionClientProtocol?(v34, &_s12SiriNLUTypes0A28_Nlu_External_ResponseStatusV0F4CodeOSgMd, &_s12SiriNLUTypes0A28_Nlu_External_ResponseStatusV0F4CodeOSgMR);
      (*(v36 + 8))(v35, v37);
      v30 = v46;
    }

    outlined destroy of ReferenceResolutionClientProtocol?(*(v0 + 512), &_s12SiriNLUTypes0A28_Nlu_External_ResponseStatusV0F4CodeOSg_AFtMd, &_s12SiriNLUTypes0A28_Nlu_External_ResponseStatusV0F4CodeOSg_AFtMR);
    v31 = 0;
    goto LABEL_20;
  }

  outlined copy of ConversationService.State(v2, v3);

  _StringGuts.grow(_:)(35);

  v11 = StaticString.description.getter();
  MEMORY[0x1E12A1580](v11);

  MEMORY[0x1E12A1580](0xD000000000000015, 0x80000001DCA80F50);
  outlined consume of ConversationService.State(v2, v3);

  v12 = *(v0 + 8);

  return v12(0);
}

{
  v1 = *(v0 + 408);
  swift_beginAccess();
  v2 = *(v1 + 104);
  if ((v2 & 0xC000000000000001) != 0)
  {

    v3 = __CocoaSet.count.getter();
  }

  else
  {
    v3 = *(v2 + 16);
  }

  *(v0 + 624) = v3;
  v4 = *(v0 + 696);
  v5 = *(v0 + 576);
  v6 = *(v0 + 408);
  v7 = *(v0 + 384);
  v8 = v5 + *(v0 + 592);
  swift_beginAccess();
  *(v0 + 632) = *(v6 + 272);
  *(v0 + 640) = *(v7 + 40);
  v9 = *(v8 + v4);
  *(v0 + 704) = *(v9 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_didPreviouslyFallbackToServer);
  *(v0 + 705) = *(v9 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isSpeechRequest);
  v10 = v5 + OBJC_IVAR____TtCC14SiriKitRuntime19ConversationService10ActiveTurn_bridge;
  *(v0 + 648) = *(v5 + OBJC_IVAR____TtCC14SiriKitRuntime19ConversationService10ActiveTurn_bridge);
  *(v0 + 656) = *(v10 + 8);

  return MEMORY[0x1EEE6DFA0](ConversationService.checkExecutionOverrides(context:resultCandidateId:), 0, 0);
}

{
  v1 = *(v0 + 560);
  v2 = *(v0 + 552);
  specialized Logger.debugF(_:_:_:_:)("SiriKitRuntime/ExecutionOverrideHandler.swift", 45, 2, "runExecutionOverridesAfterRCSelection(rcId:aceInputOrigin:input:isNlEmpty:isFirstRequestInSession:isFlowAwaitingInput:consecutiveEmptyInputs:endpointMode:executionOverrideContext:didPreviouslyFallbackToServer:isSpeechRequest:bridge:skipEmptyAsr:)", 246, 2);
  outlined init with copy of ReferenceResolutionClientProtocol?(v1, v2, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  v3 = type metadata accessor for Input();
  v4 = *(v3 - 8);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    v5 = *(v0 + 472);
    outlined destroy of ReferenceResolutionClientProtocol?(*(v0 + 552), &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
    v6 = type metadata accessor for Siri_Nlu_External_UserParse();
    (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  }

  else
  {
    v8 = *(v0 + 424);
    v7 = *(v0 + 432);
    v9 = *(v0 + 416);
    Input.parse.getter();
    if ((*(v8 + 88))(v7, v9) == *MEMORY[0x1E69D0168])
    {
      v11 = *(v0 + 448);
      v10 = *(v0 + 456);
      v13 = *(v0 + 432);
      v12 = *(v0 + 440);
      (*(*(v0 + 424) + 96))(v13, *(v0 + 416));
      (*(v11 + 32))(v10, v13, v12);
      USOParse.userParse.getter();
      (*(v11 + 8))(v10, v12);
      v14 = 0;
    }

    else
    {
      (*(*(v0 + 424) + 8))(*(v0 + 432), *(v0 + 416));
      v14 = 1;
    }

    v15 = *(v0 + 552);
    v16 = *(v0 + 472);
    v17 = type metadata accessor for Siri_Nlu_External_UserParse();
    (*(*(v17 - 8) + 56))(v16, v14, 1, v17);
    (*(v4 + 8))(v15, v3);
  }

  v18 = *(v0 + 656);
  v19 = *(v0 + 648);
  v20 = *(v0 + 705);
  v21 = *(v0 + 702);
  v23 = *(v0 + 464);
  v22 = *(v0 + 472);
  v24 = MEMORY[0x1E69E7CC0];
  *(v0 + 328) = MEMORY[0x1E69E7CC0];
  outlined init with copy of ReferenceResolutionClientProtocol?(v22, v23, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR);
  v25 = type metadata accessor for HangUpOverride(0);
  swift_allocObject();
  swift_unknownObjectRetain();
  v26 = HangUpOverride.init(topRankedParse:bridge:isSpeechRequest:isNlEmpty:)(v23, v19, v18, v20, v21);
  swift_beginAccess();
  v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, v24);
  v29 = v27[2];
  v28 = v27[3];
  if (v29 >= v28 >> 1)
  {
    v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1, v27);
  }

  v30 = *(v0 + 608);
  v71 = *(v0 + 600);
  v31 = *(v0 + 701);
  v32 = *(v0 + 560);
  v33 = *(v0 + 544);
  *(v0 + 40) = v25;
  *(v0 + 48) = &protocol witness table for HangUpOverride;
  *(v0 + 16) = v26;
  v27[2] = v29 + 1;
  outlined init with take of ReferenceResolutionClientProtocol((v0 + 16), &v27[5 * v29 + 4]);
  *(v0 + 328) = v27;
  outlined init with copy of ReferenceResolutionClientProtocol?(v32, v33, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  v34 = type metadata accessor for WaitUniversalActionOverride(0);
  v35 = swift_allocObject();
  *(v35 + 16) = 7;
  outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v33, v35 + OBJC_IVAR____TtC14SiriKitRuntime27WaitUniversalActionOverride_input, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  v70 = v31;
  *(v35 + OBJC_IVAR____TtC14SiriKitRuntime27WaitUniversalActionOverride_isFirstRequestInSession) = v31;
  v36 = (v35 + OBJC_IVAR____TtC14SiriKitRuntime27WaitUniversalActionOverride_aceInputOrigin);
  *v36 = v71;
  v36[1] = v30;
  v38 = v27[2];
  v37 = v27[3];

  if (v38 >= v37 >> 1)
  {
    v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v37 > 1), v38 + 1, 1, v27);
  }

  v40 = *(v0 + 464);
  v39 = *(v0 + 472);
  *(v0 + 80) = v34;
  *(v0 + 88) = &protocol witness table for WaitUniversalActionOverride;
  *(v0 + 56) = v35;
  v27[2] = v38 + 1;
  outlined init with take of ReferenceResolutionClientProtocol((v0 + 56), &v27[5 * v38 + 4]);
  *(v0 + 328) = v27;
  outlined init with copy of ReferenceResolutionClientProtocol?(v39, v40, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR);
  v41 = type metadata accessor for EmergencyCallMitigatorOverride(0);
  v42 = swift_allocObject();
  *(v42 + 16) = 1;
  outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v40, v42 + OBJC_IVAR____TtC14SiriKitRuntime30EmergencyCallMitigatorOverride_topRankedParse, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR);
  v44 = v27[2];
  v43 = v27[3];
  if (v44 >= v43 >> 1)
  {
    v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v43 > 1), v44 + 1, 1, v27);
  }

  v45 = *(v0 + 464);
  v46 = *(v0 + 472);
  v47 = *(v0 + 384);
  *(v0 + 120) = v41;
  *(v0 + 128) = &protocol witness table for EmergencyCallMitigatorOverride;
  *(v0 + 96) = v42;
  v27[2] = v44 + 1;
  outlined init with take of ReferenceResolutionClientProtocol((v0 + 96), &v27[5 * v44 + 4]);
  *(v0 + 328) = v27;
  v49 = *(v47 + 16);
  v48 = *(v47 + 24);
  outlined init with copy of ReferenceResolutionClientProtocol?(v46, v45, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR);
  LOBYTE(v46) = *(v47 + 32);
  *(v0 + 706) = v46;
  v50 = *(v47 + 33);
  LOBYTE(v47) = *(v47 + 48);
  v51 = type metadata accessor for AnnounceExecutionOverride(0);
  v52 = swift_allocObject();
  *(v52 + 16) = 1028;
  *(v52 + 24) = v49;
  *(v52 + 32) = v48;
  outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v45, v52 + OBJC_IVAR____TtC14SiriKitRuntime25AnnounceExecutionOverride_topNlParse, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR);
  *(v52 + OBJC_IVAR____TtC14SiriKitRuntime25AnnounceExecutionOverride_isTriggerlessFollowup) = v46;
  *(v52 + OBJC_IVAR____TtC14SiriKitRuntime25AnnounceExecutionOverride_isMitigated) = v50;
  *(v52 + OBJC_IVAR____TtC14SiriKitRuntime25AnnounceExecutionOverride_isMedocSupported) = v47;
  v53 = v27[2];
  v54 = v27[3];

  if (v53 >= v54 >> 1)
  {
    v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v54 > 1), v53 + 1, 1, v27);
  }

  v55 = *(v0 + 703);
  *(v0 + 160) = v51;
  *(v0 + 168) = &protocol witness table for AnnounceExecutionOverride;
  *(v0 + 136) = v52;
  v27[2] = v53 + 1;
  outlined init with take of ReferenceResolutionClientProtocol((v0 + 136), &v27[5 * v53 + 4]);
  *(v0 + 328) = v27;
  swift_endAccess();
  if (v55 == 1)
  {
  }

  else
  {
    v68 = *(v0 + 704);
    v69 = *(v0 + 705);
    v56 = *(v0 + 640);
    v57 = *(v0 + 632);
    v58 = *(v0 + 702);
    v59 = *(v0 + 608);
    v60 = *(v0 + 600);
    v61 = *(v0 + 624) != 0;
    v72 = type metadata accessor for EmptyAsrOverride();
    v62 = swift_allocObject();
    *(v62 + 16) = 6;
    *(v62 + 40) = v70;
    *(v62 + 41) = v61;
    *(v62 + 24) = v56;
    *(v62 + 32) = v57;
    *(v62 + 42) = v68;
    *(v62 + 44) = v58;
    *(v62 + 43) = v69;
    *(v62 + 48) = v60;
    *(v62 + 56) = v59;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v53 + 2, 1, v27);
    }

    v64 = v27[2];
    v63 = v27[3];
    if (v64 >= v63 >> 1)
    {
      v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v63 > 1), v64 + 1, 1, v27);
    }

    *(v0 + 200) = v72;
    *(v0 + 208) = &protocol witness table for EmptyAsrOverride;
    *(v0 + 176) = v62;
    v27[2] = v64 + 1;
    outlined init with take of ReferenceResolutionClientProtocol((v0 + 176), &v27[5 * v64 + 4]);
  }

  *(v0 + 664) = v27;
  type metadata accessor for ExecutionOverrideDecisionMaker();
  swift_initStaticObject();
  type metadata accessor for CompositeExecutionOverrides();
  inited = swift_initStackObject();
  *(v0 + 672) = inited;
  *(inited + 16) = v27;

  v66 = swift_task_alloc();
  *(v0 + 680) = v66;
  *v66 = v0;
  v66[1] = ConversationService.checkExecutionOverrides(context:resultCandidateId:);

  return ExecutionOverrideDecisionMaker.evaluate(rules:)(inited);
}

{
  v1 = *(v0 + 688);
  v2 = *(v0 + 584);
  v3 = *(v0 + 384);

  v4 = v1;
  specialized Logger.debugF(_:_:_:_:)("SiriKitRuntime/ExecutionOverrideHandler.swift", 45, 2, "runExecutionOverridesAfterRCSelection(rcId:aceInputOrigin:input:isNlEmpty:isFirstRequestInSession:isFlowAwaitingInput:consecutiveEmptyInputs:endpointMode:executionOverrideContext:didPreviouslyFallbackToServer:isSpeechRequest:bridge:skipEmptyAsr:)", 246, 2, v2, v3, v4);

  v5 = v4[OBJC_IVAR____TtC14SiriKitRuntime23ExecutionOverrideResult_type];
  if (v5 > 3)
  {
    switch(v5)
    {
      case 4u:
        v6 = 1;
        break;
      case 6u:
        v6 = 6;
        break;
      case 8u:
        if (*(v0 + 706))
        {
          v6 = 3;
        }

        else
        {
          v6 = 2;
        }

        break;
      default:
LABEL_14:
        v6 = 0;
        break;
    }
  }

  else
  {
    if (!v4[OBJC_IVAR____TtC14SiriKitRuntime23ExecutionOverrideResult_type])
    {
      v6 = 5;
      goto LABEL_17;
    }

    if (v5 != 1)
    {
      if (v5 == 2)
      {
        v6 = 7;
        goto LABEL_17;
      }

      goto LABEL_14;
    }

    v6 = 4;
  }

LABEL_17:
  v7 = *(v0 + 568);
  v8 = *(v0 + 472);
  specialized Logger.debugF(_:_:_:_:)("SiriKitRuntime/ExecutionOverrideHandler.swift", 45, 2, "runExecutionOverridesAfterRCSelection(rcId:aceInputOrigin:input:isNlEmpty:isFirstRequestInSession:isFlowAwaitingInput:consecutiveEmptyInputs:endpointMode:executionOverrideContext:didPreviouslyFallbackToServer:isSpeechRequest:bridge:skipEmptyAsr:)", 246, 2, *(v0 + 584), v6);
  type metadata accessor for ConversationSELFHelper();
  static ConversationSELFHelper.shared.getter();
  dispatch thunk of ConversationSELFHelper.emitExecutionOverrideInfo(rcId:executionOverrideDecision:)();

  outlined destroy of ReferenceResolutionClientProtocol?(v8, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR);

  return MEMORY[0x1EEE6DFA0](ConversationService.checkExecutionOverrides(context:resultCandidateId:), v7, 0);
}

{
  v7 = *(v0 + 688);
  v1 = *(v0 + 576);
  v2 = *(v0 + 560);
  v3 = *(v0 + 536);
  v4 = *(v0 + 700);

  outlined consume of ConversationService.State(v1, v4);
  outlined destroy of ReferenceResolutionClientProtocol?(v3, &_s12SiriNLUTypes0A28_Nlu_External_ResponseStatusV0F4CodeOSgMd, &_s12SiriNLUTypes0A28_Nlu_External_ResponseStatusV0F4CodeOSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v2, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);

  v5 = *(v0 + 8);

  return v5(v7);
}

uint64_t ConversationService.checkExecutionOverrides(context:resultCandidateId:)(char a1)
{
  v2 = *(*v1 + 568);
  *(*v1 + 703) = a1;

  return MEMORY[0x1EEE6DFA0](ConversationService.checkExecutionOverrides(context:resultCandidateId:), v2, 0);
}

uint64_t ConversationService.checkExecutionOverrides(context:resultCandidateId:)(uint64_t a1)
{
  *(*v1 + 688) = a1;

  return MEMORY[0x1EEE6DFA0](ConversationService.checkExecutionOverrides(context:resultCandidateId:), 0, 0);
}

uint64_t static ConversationService.skipEmptyAsr(_:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = AppShortcutStateProvider.intentsStates(appShortcutTargets:conditionalIntentMetadata:);

  return specialized static ConversationService.skipEmptyAsr(_:)(a1);
}

uint64_t ConversationService.bridge(didReceiveCommitResultCandidateId:from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[39] = a3;
  v4[40] = v3;
  v4[37] = a1;
  v4[38] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v4[41] = swift_task_alloc();
  v4[42] = swift_task_alloc();
  v5 = type metadata accessor for Siri_Nlu_External_UUID();
  v4[43] = v5;
  v4[44] = *(v5 - 8);
  v4[45] = swift_task_alloc();
  v6 = type metadata accessor for Siri_Nlu_External_UserParse();
  v4[46] = v6;
  v4[47] = *(v6 - 8);
  v4[48] = swift_task_alloc();
  v7 = type metadata accessor for ServerFallbackReason();
  v4[49] = v7;
  v4[50] = *(v7 - 8);
  v4[51] = swift_task_alloc();
  v8 = type metadata accessor for USOParse();
  v4[52] = v8;
  v4[53] = *(v8 - 8);
  v4[54] = swift_task_alloc();
  v4[55] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v4[56] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
  v4[57] = swift_task_alloc();
  v4[58] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR);
  v4[59] = swift_task_alloc();
  v4[60] = swift_task_alloc();
  v9 = type metadata accessor for Parse();
  v4[61] = v9;
  v4[62] = *(v9 - 8);
  v4[63] = swift_task_alloc();
  v4[64] = swift_task_alloc();
  v4[65] = swift_task_alloc();
  v4[66] = swift_task_alloc();
  v10 = type metadata accessor for Input();
  v4[67] = v10;
  v4[68] = *(v10 - 8);
  v4[69] = swift_task_alloc();
  v4[70] = swift_task_alloc();
  v4[71] = swift_task_alloc();
  v11 = type metadata accessor for DecisionEngineResponse(0);
  v4[72] = v11;
  v4[73] = *(v11 - 8);
  v4[74] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime22DecisionEngineResponseVSgMd, &_s14SiriKitRuntime22DecisionEngineResponseVSgMR);
  v4[75] = swift_task_alloc();
  v4[76] = swift_task_alloc();
  v4[77] = swift_task_alloc();
  v4[78] = swift_task_alloc();
  v4[79] = swift_task_alloc();
  v4[80] = type metadata accessor for ConversationService.EagerResult(0);
  v4[81] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  v4[82] = swift_task_alloc();
  v4[83] = swift_task_alloc();
  v4[84] = swift_task_alloc();
  v4[85] = swift_task_alloc();
  v4[86] = swift_task_alloc();
  v4[87] = swift_task_alloc();
  v4[88] = swift_task_alloc();
  v4[89] = swift_task_alloc();
  v12 = type metadata accessor for SiriKitEventPayload();
  v4[90] = v12;
  v4[91] = *(v12 - 8);
  v4[92] = swift_task_alloc();
  updated = type metadata accessor for ContextUpdateScope();
  v4[93] = updated;
  v4[94] = *(updated - 8);
  v4[95] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  v4[96] = swift_task_alloc();
  v4[97] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5ParseO16DirectInvocationVSgMd, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMR);
  v4[98] = swift_task_alloc();
  type metadata accessor for BinaryDecodingOptions();
  v4[99] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMd, &_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMR);
  v4[100] = swift_task_alloc();
  v14 = type metadata accessor for Com_Apple_Siri_Product_Proto_PromptContext();
  v4[101] = v14;
  v4[102] = *(v14 - 8);
  v4[103] = swift_task_alloc();
  v4[104] = swift_task_alloc();
  v15 = type metadata accessor for RequestSummary.ExecutionSource();
  v4[105] = v15;
  v4[106] = *(v15 - 8);
  v4[107] = swift_task_alloc();
  v4[108] = swift_task_alloc();
  v4[109] = swift_task_alloc();
  v4[110] = swift_task_alloc();
  v4[111] = swift_task_alloc();
  v4[112] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
  v4[113] = swift_task_alloc();
  v4[114] = swift_task_alloc();
  v4[115] = swift_task_alloc();
  v4[116] = swift_task_alloc();
  v4[117] = swift_task_alloc();
  v4[118] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v16 = static MessageBusActor.shared;
  v4[119] = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](ConversationService.bridge(didReceiveCommitResultCandidateId:from:), v16, 0);
}

uint64_t ConversationService.bridge(didReceiveCommitResultCandidateId:from:)()
{
  v106 = v0;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 320);
  v2 = type metadata accessor for Logger();
  *(v0 + 960) = __swift_project_value_buffer(v2, static Logger.executor);
  Logger.debugF(file:function:)("SiriKitRuntime/ConversationService.swift", 40, 2, "bridge(didReceiveCommitResultCandidateId:from:)", 47, 2);
  swift_beginAccess();
  v3 = *(v1 + 112);
  LOBYTE(v1) = *(v1 + 120);
  outlined copy of ConversationService.State(v3, v1);
  v4 = specialized ConversationService.State.assertTurnStarted(function:)("bridge(didReceiveCommitResultCandidateId:from:)", 47, 2, v3, v1);
  *(v0 + 968) = v4;
  v5 = v4;
  v6 = *(v0 + 296);

  outlined consume of ConversationService.State(v3, v1);
  v7 = *(v6 + 16);
  *(v0 + 976) = v7;
  v8 = *(v6 + 24);
  *(v0 + 984) = v8;
  v104 = (*(*v5 + 344))(v7, v8);
  if (v104)
  {
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1DC659000, v9, v10, "Sending ACE command to reveal ASR", v11, 2u);
      MEMORY[0x1E12A2F50](v11, -1, -1);
    }

    v12 = *(v0 + 944);
    v13 = *(v0 + 896);
    v97 = *(v0 + 936);
    v99 = *(v0 + 888);
    v14 = *(v0 + 848);
    v15 = *(v0 + 840);

    v16 = [objc_allocWithZone(MEMORY[0x1E69C7BA0]) init];
    [v16 setRecognition_];
    v17 = MEMORY[0x1E12A1410](v7, v8);
    [v16 setSpeechRecognizedAceId_];

    v19 = *(v5 + OBJC_IVAR____TtCC14SiriKitRuntime19ConversationService10ActiveTurn_turnData);
    v18 = *(v5 + OBJC_IVAR____TtCC14SiriKitRuntime19ConversationService10ActiveTurn_turnData + 8);
    v20 = type metadata accessor for FlowOutputMessage.InAppResponse();
    (*(*(v20 - 8) + 56))(v12, 1, 1, v20);
    (*(v14 + 104))(v13, *MEMORY[0x1E69D0678], v15);
    v21 = *(v14 + 16);
    v21(v99, v13, v15);
    outlined init with copy of ReferenceResolutionClientProtocol?(v12, v97, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
    v102 = type metadata accessor for ExecutionOutput(0);
    v22 = objc_allocWithZone(v102);
    v23 = &v22[OBJC_IVAR___SKRExecutionOutput_executionRequestId];
    *v23 = v19;
    *(v23 + 1) = v18;
    v24 = &v22[OBJC_IVAR___SKRExecutionOutput_fullPrint];
    *v24 = 0;
    *(v24 + 1) = 0;
    v25 = &v22[OBJC_IVAR___SKRExecutionOutput_fullSpeak];
    *v25 = 0;
    *(v25 + 1) = 0;
    v26 = &v22[OBJC_IVAR___SKRExecutionOutput_redactedFullPrint];
    *v26 = 0;
    *(v26 + 1) = 0;
    v27 = &v22[OBJC_IVAR___SKRExecutionOutput_redactedFullSpeak];
    *v27 = 0;
    *(v27 + 1) = 0;
    v21(&v22[OBJC_IVAR___SKRExecutionOutput_executionSource], v99, v15);
    v100 = v22;
    outlined init with copy of ReferenceResolutionClientProtocol?(v97, &v22[OBJC_IVAR___SKRExecutionOutput_inAppResponse], &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
    objc_opt_self();
    v28 = swift_dynamicCastObjCClass();
    v29 = v16;
    v30 = v29;
    v98 = v29;
    if (v28)
    {
      v31 = v29;

      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v105[0] = v36;
        *v34 = 136315394;
        *(v34 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000085, 0x80000001DCA7C240, v105);
        *(v34 + 12) = 2112;
        *(v34 + 14) = v28;
        *v35 = v28;
        v37 = v31;
        _os_log_impl(&dword_1DC659000, v32, v33, "ExecutionOutput: %s: converting SARDNativeFlowContextUpdate=%@ to ExecutionOutput", v34, 0x16u);
        outlined destroy of ReferenceResolutionClientProtocol?(v35, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x1E12A2F50](v35, -1, -1);
        __swift_destroy_boxed_opaque_existential_1Tm(v36);
        MEMORY[0x1E12A2F50](v36, -1, -1);
        MEMORY[0x1E12A2F50](v34, -1, -1);
      }

      v38 = [v28 promptContextProto];
      v96 = v28;
      if (v38)
      {
        v39 = v38;
        v40 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v42 = v41;

        memset(v105, 0, 40);
        outlined copy of Data._Representation(v40, v42);
        BinaryDecodingOptions.init()();
        _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type Com_Apple_Siri_Product_Proto_PromptContext and conformance Com_Apple_Siri_Product_Proto_PromptContext, 255, MEMORY[0x1E69D1500], MEMORY[0x1E69D14F8]);
        Message.init(serializedData:extensions:partial:options:)();
        v75 = *(v0 + 832);
        v76 = *(v0 + 824);
        v77 = *(v0 + 816);
        v78 = *(v0 + 808);
        v79 = *(v0 + 800);
        (*(v77 + 56))(v79, 0, 1, v78);
        (*(v77 + 32))(v75, v79, v78);
        (*(v77 + 16))(v76, v75, v78);
        v80 = Logger.logObject.getter();
        v81 = static os_log_type_t.debug.getter();
        v82 = os_log_type_enabled(v80, v81);
        v83 = *(v0 + 832);
        v84 = *(v0 + 824);
        v85 = *(v0 + 816);
        v86 = *(v0 + 808);
        if (v82)
        {
          v94 = v81;
          v87 = *(v0 + 808);
          v88 = swift_slowAlloc();
          v95 = swift_slowAlloc();
          v105[0] = v95;
          *v88 = 136315394;
          *(v88 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000085, 0x80000001DCA7C240, v105);
          *(v88 + 12) = 2080;
          v89 = Message.textFormatString()();
          v90 = *(v85 + 8);
          v90(v84, v87);
          v91 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v89._countAndFlagsBits, v89._object, v105);

          *(v88 + 14) = v91;
          _os_log_impl(&dword_1DC659000, v80, v94, "ExecutionOutput: %s: NFCU has prompt context %s", v88, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1E12A2F50](v95, -1, -1);
          MEMORY[0x1E12A2F50](v88, -1, -1);

          outlined consume of Data._Representation(v40, v42);
          v90(v83, v87);
        }

        else
        {

          outlined consume of Data._Representation(v40, v42);
          v92 = *(v85 + 8);
          v92(v84, v86);
          v92(v83, v86);
        }
      }

      else
      {
        v43 = Logger.logObject.getter();
        v44 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v43, v44))
        {
          v45 = swift_slowAlloc();
          v46 = swift_slowAlloc();
          v105[0] = v46;
          *v45 = 136315138;
          *(v45 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000085, 0x80000001DCA7C240, v105);
          _os_log_impl(&dword_1DC659000, v43, v44, "ExecutionOutput: %s: NFCU has no (or invalid) prompt context", v45, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v46);
          MEMORY[0x1E12A2F50](v46, -1, -1);
          MEMORY[0x1E12A2F50](v45, -1, -1);
        }
      }

      v47 = *(v0 + 784);
      v48 = *(v0 + 776);
      v49 = *(v0 + 768);
      v50 = *(v0 + 760);
      v51 = *(v0 + 752);
      v52 = *(v0 + 744);
      v53 = type metadata accessor for Parse.DirectInvocation();
      (*(*(v53 - 8) + 56))(v47, 1, 1, v53);
      v54 = type metadata accessor for PommesContext();
      (*(*(v54 - 8) + 56))(v48, 1, 1, v54);
      (*(v51 + 104))(v50, *MEMORY[0x1E69CFF08], v52);
      v55 = type metadata accessor for ExecutionContextUpdate(0);
      v56 = objc_allocWithZone(v55);
      outlined init with copy of ReferenceResolutionClientProtocol?(v48, v49, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
      specialized static ExecutionContextUpdate.synchronizePromptContexts(pommesContext:nativeFlowContextCommand:)(v49, v96);
      *&v56[OBJC_IVAR___SKRExecutionContextUpdate_provideContextCommand] = 0;
      *&v56[OBJC_IVAR___SKRExecutionContextUpdate_nativeFlowContextCommand] = v96;
      *&v56[OBJC_IVAR___SKRExecutionContextUpdate_nluSystemDialogActs] = 0;
      *&v56[OBJC_IVAR___SKRExecutionContextUpdate_nluActiveTasks] = 0;
      *&v56[OBJC_IVAR___SKRExecutionContextUpdate_nluCompletedTasks] = 0;
      outlined init with copy of ReferenceResolutionClientProtocol?(v47, &v56[OBJC_IVAR___SKRExecutionContextUpdate_undoDirectInvocation], &_s11SiriKitFlow5ParseO16DirectInvocationVSgMd, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMR);
      *&v56[OBJC_IVAR___SKRExecutionContextUpdate_rrEntities] = 0;
      outlined init with copy of ReferenceResolutionClientProtocol?(v49, &v56[OBJC_IVAR___SKRExecutionContextUpdate_pommesContext], &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
      (*(v51 + 16))(&v56[OBJC_IVAR___SKRExecutionContextUpdate_contextUpdateScope], v50, v52);
      v57 = &v56[OBJC_IVAR___SKRExecutionContextUpdate_restoreSessionForRequestId];
      *v57 = 0;
      v57[1] = 0;
      v56[OBJC_IVAR___SKRExecutionContextUpdate_executedOnRemoteDevice] = 0;
      *(v0 + 280) = v56;
      *(v0 + 288) = v55;
      v58 = objc_msgSendSuper2((v0 + 280), sel_init);
      (*(v51 + 8))(v50, v52);
      outlined destroy of ReferenceResolutionClientProtocol?(v48, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
      outlined destroy of ReferenceResolutionClientProtocol?(v47, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMd, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMR);
      outlined destroy of ReferenceResolutionClientProtocol?(v49, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
      v22 = v100;
      *&v100[OBJC_IVAR___SKRExecutionOutput_contextUpdate] = v58;
      *&v100[OBJC_IVAR___SKRExecutionOutput_command] = 0;
    }

    else
    {

      v59 = Logger.logObject.getter();
      v60 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        v105[0] = v63;
        *v61 = 136315394;
        *(v61 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000085, 0x80000001DCA7C240, v105);
        *(v61 + 12) = 2112;
        *(v61 + 14) = v30;
        *v62 = v16;
        v64 = v30;
        _os_log_impl(&dword_1DC659000, v59, v60, "ExecutionOutput: %s: converting non-context ACE command=%@ to ExecutionOutput", v61, 0x16u);
        outlined destroy of ReferenceResolutionClientProtocol?(v62, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x1E12A2F50](v62, -1, -1);
        __swift_destroy_boxed_opaque_existential_1Tm(v63);
        MEMORY[0x1E12A2F50](v63, -1, -1);
        MEMORY[0x1E12A2F50](v61, -1, -1);
      }

      *&v22[OBJC_IVAR___SKRExecutionOutput_command] = v16;
      *&v22[OBJC_IVAR___SKRExecutionOutput_contextUpdate] = 0;
      v65 = v30;
    }

    v66 = v102;
    v101 = *(v0 + 944);
    v67 = *(v0 + 936);
    v68 = *(v0 + 896);
    v69 = *(v0 + 888);
    v70 = *(v0 + 848);
    v71 = *(v0 + 840);
    v72 = *(v0 + 312);
    ObjectType = swift_getObjectType();
    *(v0 + 264) = v22;
    *(v0 + 272) = v66;
    v73 = objc_msgSendSuper2((v0 + 264), sel_init);
    outlined destroy of ReferenceResolutionClientProtocol?(v67, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
    v74 = *(v70 + 8);
    v74(v69, v71);

    v74(v68, v71);
    outlined destroy of ReferenceResolutionClientProtocol?(v101, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
    (*(v72 + 8))(v73, closure #1 in ConversationService.bridge(didReceiveCommitResultCandidateId:from:), 0, ObjectType, v72);
  }

  *(v0 + 992) = OBJC_IVAR____TtCC14SiriKitRuntime19ConversationService10ActiveTurn_eventSender;

  return MEMORY[0x1EEE6DFA0](ConversationService.bridge(didReceiveCommitResultCandidateId:from:), 0, 0);
}

{
  v1 = v0[123];
  v2 = v0[122];
  v3 = v0[92];
  v4 = v0[91];
  v5 = v0[90];
  v6 = (v0[121] + v0[124]);
  v7 = v6[3];
  v8 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v7);
  v0[125] = type metadata accessor for SiriKitEvent();
  *v3 = v2;
  v3[1] = v1;
  v9 = *MEMORY[0x1E69CFC40];
  v10 = *(v4 + 104);
  v0[126] = v10;
  v0[127] = (v4 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v10(v3, v9, v5);

  v11 = SiriKitEvent.__allocating_init(_:builder:)();
  v0[128] = v11;
  v12 = swift_task_alloc();
  v0[129] = v12;
  *v12 = v0;
  v12[1] = ConversationService.bridge(didReceiveCommitResultCandidateId:from:);

  return MEMORY[0x1EEE39338](v11, v7, v8);
}

{
  v1 = *(*v0 + 952);

  return MEMORY[0x1EEE6DFA0](ConversationService.bridge(didReceiveCommitResultCandidateId:from:), v1, 0);
}

{
  v54 = v0;
  v1 = *(v0 + 968);
  v2 = *(v0 + 296);
  ConversationService.markBusy(doing:)(0x74696D6D6F43, 0xE600000000000000);
  v3 = (*(*v1 + 328))(*(v2 + 32), *(v2 + 40));
  *(v0 + 1040) = v3;
  if (v3)
  {
    v4 = v3;
    v5 = swift_task_alloc();
    *(v0 + 1048) = v5;
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    *v5 = v0;
    v5[1] = ConversationService.bridge(didReceiveCommitResultCandidateId:from:);
    v7 = *(v0 + 648);
    v8 = *(v0 + 640);
    v9 = MEMORY[0x1E69E7288];

    return MEMORY[0x1EEE6DA10](v7, v4, v8, v6, v9);
  }

  else
  {
    v10 = *(v0 + 968);
    v11 = *(v0 + 912);
    v12 = *(v0 + 904);
    v13 = *(v0 + 864);
    v14 = *(v0 + 856);
    v15 = *(v0 + 848);
    v16 = *(v0 + 840);

    v17 = v10 + OBJC_IVAR____TtCC14SiriKitRuntime19ConversationService10ActiveTurn_turnData;
    v18 = *(v10 + OBJC_IVAR____TtCC14SiriKitRuntime19ConversationService10ActiveTurn_turnData);
    v19 = *(v17 + 8);
    v20 = type metadata accessor for FlowOutputMessage.InAppResponse();
    (*(*(v20 - 8) + 56))(v11, 1, 1, v20);
    (*(v15 + 104))(v13, *MEMORY[0x1E69D0678], v16);
    v21 = *(v15 + 16);
    v21(v14, v13, v16);
    outlined init with copy of ReferenceResolutionClientProtocol?(v11, v12, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
    v22 = type metadata accessor for ExecutionOutput(0);
    v23 = objc_allocWithZone(v22);
    v24 = &v23[OBJC_IVAR___SKRExecutionOutput_executionRequestId];
    *v24 = v18;
    *(v24 + 1) = v19;
    v25 = &v23[OBJC_IVAR___SKRExecutionOutput_fullPrint];
    *v25 = 0;
    *(v25 + 1) = 0;
    v26 = &v23[OBJC_IVAR___SKRExecutionOutput_fullSpeak];
    *v26 = 0;
    *(v26 + 1) = 0;
    v27 = &v23[OBJC_IVAR___SKRExecutionOutput_redactedFullPrint];
    *v27 = 0;
    *(v27 + 1) = 0;
    v28 = &v23[OBJC_IVAR___SKRExecutionOutput_redactedFullSpeak];
    *v28 = 0;
    *(v28 + 1) = 0;
    v21(&v23[OBJC_IVAR___SKRExecutionOutput_executionSource], v14, v16);
    outlined init with copy of ReferenceResolutionClientProtocol?(v12, &v23[OBJC_IVAR___SKRExecutionOutput_inAppResponse], &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);

    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v52 = v33;
      *v31 = 136315394;
      *(v31 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000085, 0x80000001DCA7C240, &v52);
      *(v31 + 12) = 2112;
      *(v31 + 14) = 0;
      *v32 = 0;
      _os_log_impl(&dword_1DC659000, v29, v30, "ExecutionOutput: %s: converting non-context ACE command=%@ to ExecutionOutput", v31, 0x16u);
      outlined destroy of ReferenceResolutionClientProtocol?(v32, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1E12A2F50](v32, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v33);
      MEMORY[0x1E12A2F50](v33, -1, -1);
      MEMORY[0x1E12A2F50](v31, -1, -1);
    }

    v48 = *(v0 + 976);
    v49 = *(v0 + 984);
    v34 = *(v0 + 912);
    v35 = *(v0 + 904);
    v36 = *(v0 + 864);
    v37 = *(v0 + 856);
    v38 = *(v0 + 848);
    v39 = *(v0 + 840);
    v50 = *(v0 + 312);
    ObjectType = swift_getObjectType();
    *&v23[OBJC_IVAR___SKRExecutionOutput_command] = 0;
    *&v23[OBJC_IVAR___SKRExecutionOutput_contextUpdate] = 0;
    *(v0 + 200) = v23;
    *(v0 + 208) = v22;
    v40 = objc_msgSendSuper2((v0 + 200), sel_init);
    outlined destroy of ReferenceResolutionClientProtocol?(v35, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
    v41 = *(v38 + 8);
    v41(v37, v39);
    v41(v36, v39);
    outlined destroy of ReferenceResolutionClientProtocol?(v34, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
    v52 = 0;
    v53 = 0xE000000000000000;
    _StringGuts.grow(_:)(76);
    MEMORY[0x1E12A1580](0xD000000000000023, 0x80000001DCA810A0);
    MEMORY[0x1E12A1580](v48, v49);
    MEMORY[0x1E12A1580](0xD000000000000027, 0x80000001DCA810D0);
    (*(v50 + 32))(v40, v52, v53, ObjectType);

    v42 = *(v0 + 448);
    v43 = *(v0 + 320);
    v44 = type metadata accessor for TaskPriority();
    (*(*(v44 - 8) + 56))(v42, 1, 1, v44);
    v45 = swift_allocObject();
    v45[2] = 0;
    v45[3] = 0;
    v45[4] = v43;

    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v42, &async function pointer to partial apply for closure #1 in ConversationService.markNotBusyAsync(), v45);

    v46 = *(v0 + 8);

    return v46();
  }
}

{
  v2 = *v1;
  *(*v1 + 1056) = v0;

  v3 = *(v2 + 952);
  if (v0)
  {
    v4 = ConversationService.bridge(didReceiveCommitResultCandidateId:from:);
  }

  else
  {
    v4 = ConversationService.bridge(didReceiveCommitResultCandidateId:from:);
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

{
  v1 = *(v0 + 648);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      *(v0 + 1064) = *v1;

      v76 = Logger.logObject.getter();
      v77 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v76, v77))
      {
        v78 = *(v0 + 984);
        v79 = *(v0 + 976);
        v80 = swift_slowAlloc();
        v81 = swift_slowAlloc();
        v195 = v81;
        *v80 = 136315138;
        *(v80 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v79, v78, &v195);
        _os_log_impl(&dword_1DC659000, v76, v77, "[ConversationService] Now running unsafe eager input %s, since it was committed", v80, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v81);
        MEMORY[0x1E12A2F50](v81, -1, -1);
        MEMORY[0x1E12A2F50](v80, -1, -1);
      }

      v82 = *(v0 + 320);
      v83 = v82[6];
      __swift_project_boxed_opaque_existential_1(v82 + 2, v82[5]);
      swift_beginAccess();
      *(v0 + 1072) = v82[13];
      swift_beginAccess();
      *(v0 + 1080) = v82[35];
      *(v0 + 1088) = OBJC_IVAR____TtCC14SiriKitRuntime19ConversationService10ActiveTurn_turnData;
      v84 = *(v83 + 8);

      v185 = v84 + *v84;
      v85 = swift_task_alloc();
      *(v0 + 1096) = v85;
      *v85 = v0;
      v85[1] = ConversationService.bridge(didReceiveCommitResultCandidateId:from:);

      __asm { BRAA            X8, X16 }
    }

    v9 = *(v0 + 704);
    v11 = *v1;
    v10 = v1[1];
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime21ConversationUserInputC_AA06RemoteD6ClientC0aB4Flow0F0VSgtMd, &_s14SiriKitRuntime21ConversationUserInputC_AA06RemoteD6ClientC0aB4Flow0F0VSgtMR);
    outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v1 + *(v12 + 64), v9, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1DC659000, v13, v14, "Now running commit for conversation which was eagerly prepared", v15, 2u);
      MEMORY[0x1E12A2F50](v15, -1, -1);
    }

    v16 = *(v0 + 712);
    v17 = *(v0 + 704);

    outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v17, v16, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
    *(v0 + 1176) = v10;
    *(v0 + 1168) = v11;
    v18 = *(v0 + 712);
    v19 = *(v0 + 672);
    v20 = *(v0 + 544);
    v21 = *(v0 + 536);

    v189 = v10;

    outlined init with copy of ReferenceResolutionClientProtocol?(v18, v19, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
    v22 = *(v20 + 48);
    if (v22(v19, 1, v21) == 1)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(*(v0 + 672), &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
    }

    else
    {
      v86 = *(v0 + 512);
      v87 = *(v0 + 488);
      v88 = *(v0 + 496);
      (*(*(v0 + 544) + 32))(*(v0 + 560), *(v0 + 672), *(v0 + 536));
      Input.parse.getter();
      if ((*(v88 + 88))(v86, v87) == *MEMORY[0x1E69D0178])
      {
        v89 = *(v0 + 320);
        (*(*(v0 + 496) + 8))(*(v0 + 512), *(v0 + 488));
        result = swift_beginAccess();
        v90 = *(v89 + 272);
        v91 = __OFADD__(v90, 1);
        v92 = v90 + 1;
        if (v91)
        {
          __break(1u);
          return result;
        }

        *(v89 + 272) = v92;

        v93 = Logger.logObject.getter();
        v94 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v93, v94))
        {
          v95 = swift_slowAlloc();
          *v95 = 134217984;
          *(v95 + 4) = *(v89 + 272);

          _os_log_impl(&dword_1DC659000, v93, v94, "Input given to flow was empty: Incrementing consecutiveEmptyInputs to %ld", v95, 0xCu);
          MEMORY[0x1E12A2F50](v95, -1, -1);
        }

        else
        {
        }

        (*(*(v0 + 544) + 8))(*(v0 + 560), *(v0 + 536));
LABEL_42:
        v110 = *(v0 + 664);
        v111 = *(v0 + 536);
        outlined init with copy of ReferenceResolutionClientProtocol?(*(v0 + 712), v110, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
        if (v22(v110, 1, v111) == 1)
        {
          outlined destroy of ReferenceResolutionClientProtocol?(*(v0 + 664), &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
LABEL_53:
          v149 = *(v0 + 712);
          v150 = *(v0 + 656);
          v151 = *(v0 + 536);
          type metadata accessor for ConversationSELFHelper();
          *(v0 + 1184) = static ConversationSELFHelper.shared.getter();
          outlined init with copy of ReferenceResolutionClientProtocol?(v149, v150, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
          v152 = v22(v150, 1, v151);
          v153 = *(v0 + 656);
          if (v152 == 1)
          {
            outlined destroy of ReferenceResolutionClientProtocol?(*(v0 + 656), &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
            v154 = 1;
          }

          else
          {
            v155 = *(v0 + 544);
            v156 = *(v0 + 536);
            Input.identifier.getter();
            (*(v155 + 8))(v153, v156);
            v154 = 0;
          }

          v157 = v189;
          v158 = *(v0 + 968);
          v160 = *(v0 + 320);
          v159 = *(v0 + 328);
          v161 = *(v0 + 296);
          v162 = type metadata accessor for UUID();
          v193 = *(v0 + 304);
          (*(*(v162 - 8) + 56))(v159, v154, 1, v162);
          v163 = swift_allocObject();
          *(v0 + 1192) = v163;
          *(v163 + 16) = v160;
          *(v163 + 24) = v161;
          *(v163 + 32) = v158;
          *(v163 + 40) = v193;
          *(v163 + 56) = v157;
          *(v163 + 64) = 0;
          *(v163 + 72) = v11;
          v188 = (*MEMORY[0x1E69D0038] + MEMORY[0x1E69D0038]);

          swift_unknownObjectRetain();
          v164 = swift_task_alloc();
          *(v0 + 1200) = v164;
          *v164 = v0;
          v164[1] = ConversationService.bridge(didReceiveCommitResultCandidateId:from:);

          return v188();
        }

        v113 = *(v0 + 496);
        v112 = *(v0 + 504);
        v114 = *(v0 + 488);
        (*(*(v0 + 544) + 32))(*(v0 + 552), *(v0 + 664), *(v0 + 536));
        Input.parse.getter();
        v115 = (*(v113 + 88))(v112, v114);
        if (v115 == *MEMORY[0x1E69D0138])
        {
          v116 = *(v0 + 552);
          v187 = v11;
          v117 = *(v0 + 544);
          v118 = *(v0 + 536);
          v119 = *(v0 + 312);
          (*(*(v0 + 496) + 8))(*(v0 + 504), *(v0 + 488));
          ObjectType = swift_getObjectType();
          v121 = type metadata accessor for ExecutionInputInfo();
          v122 = objc_allocWithZone(v121);
          v123 = &v122[OBJC_IVAR____TtC14SiriKitRuntime18ExecutionInputInfo_parseId];
          *v123 = 0;
          v123[1] = 0;
          v122[OBJC_IVAR____TtC14SiriKitRuntime18ExecutionInputInfo_executePommes] = 1;
          *(v0 + 232) = v122;
          *(v0 + 240) = v121;
          v124 = objc_msgSendSuper2((v0 + 232), sel_init);
          (*(v119 + 168))(v124, ObjectType, v119);

          (*(v117 + 8))(v116, v118);
        }

        else
        {
          if (v115 != *MEMORY[0x1E69D0168])
          {
            v138 = *(v0 + 496);
            v137 = *(v0 + 504);
            v139 = *(v0 + 488);
            (*(*(v0 + 544) + 8))(*(v0 + 552), *(v0 + 536));
            (*(v138 + 8))(v137, v139);
            goto LABEL_53;
          }

          v125 = *(v0 + 504);
          v127 = *(v0 + 424);
          v126 = *(v0 + 432);
          v128 = *(v0 + 416);
          v130 = *(v0 + 376);
          v129 = *(v0 + 384);
          v183 = *(v0 + 368);
          v187 = v11;
          v180 = *(v0 + 336);
          (*(*(v0 + 496) + 96))(v125, *(v0 + 488));
          (*(v127 + 32))(v126, v125, v128);
          USOParse.userParse.getter();
          Siri_Nlu_External_UserParse.id.getter();
          (*(v130 + 8))(v129, v183);
          v131 = type metadata accessor for ExecutionInputInfo();
          v132 = objc_allocWithZone(v131);
          static ConversionUtils.convertProtoToUuid(protoUuid:)();
          v133 = type metadata accessor for UUID();
          v134 = *(v133 - 8);
          v135 = (*(v134 + 48))(v180, 1, v133);
          v136 = *(v0 + 336);
          if (v135 == 1)
          {
            outlined destroy of ReferenceResolutionClientProtocol?(v136, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
            v169 = 0;
            v171 = 0;
          }

          else
          {
            v140 = UUID.uuidString.getter();
            v169 = v141;
            v171 = v140;
            (*(v134 + 8))(v136, v133);
          }

          v142 = *(v0 + 544);
          v177 = *(v0 + 536);
          v181 = *(v0 + 552);
          v143 = *(v0 + 424);
          v173 = *(v0 + 416);
          v175 = *(v0 + 432);
          v144 = *(v0 + 352);
          v167 = *(v0 + 360);
          v145 = *(v0 + 344);
          v146 = *(v0 + 312);
          v166 = swift_getObjectType();
          v147 = &v132[OBJC_IVAR____TtC14SiriKitRuntime18ExecutionInputInfo_parseId];
          *v147 = v171;
          v147[1] = v169;
          v132[OBJC_IVAR____TtC14SiriKitRuntime18ExecutionInputInfo_executePommes] = 0;
          *(v0 + 248) = v132;
          *(v0 + 256) = v131;
          v148 = objc_msgSendSuper2((v0 + 248), sel_init);
          (*(v144 + 8))(v167, v145);
          (*(v146 + 168))(v148, v166, v146);

          (*(v143 + 8))(v175, v173);
          (*(v142 + 8))(v181, v177);
        }

        v11 = v187;
        goto LABEL_53;
      }

      v106 = *(v0 + 512);
      v107 = *(v0 + 488);
      v108 = *(v0 + 496);
      (*(*(v0 + 544) + 8))(*(v0 + 560), *(v0 + 536));
      (*(v108 + 8))(v106, v107);
    }

    v109 = *(v0 + 320);
    swift_beginAccess();
    *(v109 + 272) = 0;
    goto LABEL_42;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v23 = *(v0 + 968);
    v24 = *(v0 + 456);
    v26 = *(v0 + 400);
    v25 = *(v0 + 408);
    v27 = *(v0 + 392);

    (*(v26 + 32))(v25, v1, v27);
    v28 = (v23 + OBJC_IVAR____TtCC14SiriKitRuntime19ConversationService10ActiveTurn_turnData);
    v29 = *(v23 + OBJC_IVAR____TtCC14SiriKitRuntime19ConversationService10ActiveTurn_turnData);
    v170 = v28[2];
    v184 = v28[3];
    v190 = v28[1];
    (*(v26 + 16))(v24, v25, v27);
    (*(v26 + 56))(v24, 0, 1, v27);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 67109120;
      _os_log_impl(&dword_1DC659000, v30, v31, "[ConversationService] ServerFallback needed with domainDirected=%{BOOL}d but shouldDisableServerFallback returns true; initiating a fatal response and returning an error instead of performing fallback.", v32, 8u);
      MEMORY[0x1E12A2F50](v32, -1, -1);
    }

    v33 = *(v0 + 928);
    v34 = *(v0 + 920);
    v35 = *(v0 + 880);
    v36 = *(v0 + 872);
    v37 = *(v0 + 848);
    v38 = *(v0 + 840);

    v39 = type metadata accessor for FlowOutputMessage.InAppResponse();
    (*(*(v39 - 8) + 56))(v33, 1, 1, v39);
    (*(v37 + 104))(v35, *MEMORY[0x1E69D0678], v38);
    v40 = *(v37 + 16);
    v40(v36, v35, v38);
    outlined init with copy of ReferenceResolutionClientProtocol?(v33, v34, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
    v178 = type metadata accessor for ExecutionOutput(0);
    v41 = objc_allocWithZone(v178);
    v42 = &v41[OBJC_IVAR___SKRExecutionOutput_executionRequestId];
    v168 = v29;
    *v42 = v29;
    *(v42 + 1) = v190;
    v43 = &v41[OBJC_IVAR___SKRExecutionOutput_fullPrint];
    *v43 = 0;
    *(v43 + 1) = 0;
    v44 = &v41[OBJC_IVAR___SKRExecutionOutput_fullSpeak];
    *v44 = 0;
    *(v44 + 1) = 0;
    v45 = &v41[OBJC_IVAR___SKRExecutionOutput_redactedFullPrint];
    *v45 = 0;
    *(v45 + 1) = 0;
    v46 = &v41[OBJC_IVAR___SKRExecutionOutput_redactedFullSpeak];
    *v46 = 0;
    *(v46 + 1) = 0;
    v40(&v41[OBJC_IVAR___SKRExecutionOutput_executionSource], v36, v38);
    outlined init with copy of ReferenceResolutionClientProtocol?(v34, &v41[OBJC_IVAR___SKRExecutionOutput_inAppResponse], &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);

    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v195 = v51;
      *v49 = 136315394;
      *(v49 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000085, 0x80000001DCA7C240, &v195);
      *(v49 + 12) = 2112;
      *(v49 + 14) = 0;
      *v50 = 0;
      _os_log_impl(&dword_1DC659000, v47, v48, "ExecutionOutput: %s: converting non-context ACE command=%@ to ExecutionOutput", v49, 0x16u);
      outlined destroy of ReferenceResolutionClientProtocol?(v50, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1E12A2F50](v50, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v51);
      MEMORY[0x1E12A2F50](v51, -1, -1);
      MEMORY[0x1E12A2F50](v49, -1, -1);
    }

    v52 = *(v0 + 920);
    v172 = *(v0 + 880);
    v174 = *(v0 + 928);
    v53 = *(v0 + 872);
    v54 = *(v0 + 848);
    v55 = *(v0 + 840);
    v56 = *(v0 + 312);
    v176 = *(v0 + 320);
    *&v41[OBJC_IVAR___SKRExecutionOutput_command] = 0;
    *&v41[OBJC_IVAR___SKRExecutionOutput_contextUpdate] = 0;
    *(v0 + 216) = v41;
    *(v0 + 224) = v178;
    v57 = objc_msgSendSuper2((v0 + 216), sel_init);
    outlined destroy of ReferenceResolutionClientProtocol?(v52, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
    v58 = *(v54 + 8);
    v58(v53, v55);
    v58(v172, v55);
    outlined destroy of ReferenceResolutionClientProtocol?(v174, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
    v59 = swift_getObjectType();
    v182 = v57;
    (*(v56 + 40))(v57, 0xD000000000000028, 0x80000001DCA81100, 1, v59, v56);
    outlined init with copy of ReferenceResolutionClientProtocol(v176 + 232, v0 + 16);
    v60 = *(v0 + 48);
    v179 = *(v0 + 40);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v179);
    if (v184)
    {
      v61 = v170;
      v62 = v184;
    }

    else
    {
      v62 = v190;

      v61 = v168;
    }

    v96 = *(v0 + 984);
    v97 = *(v0 + 976);
    v98 = *(v0 + 456);
    v99 = *(v0 + 400);
    v186 = *(v0 + 392);
    v192 = *(v0 + 408);
    v100 = *(v60 + 24);

    v100(v97, v96, v61, v62, v98, v179, v60);

    outlined destroy of ReferenceResolutionClientProtocol?(v98, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
    (*(v99 + 8))(v192, v186);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
    v165 = &closure #1 in ConversationService.markNotBusyAsync()partial apply;
    goto LABEL_35;
  }

  if (EnumCaseMultiPayload == 3)
  {

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = *(v0 + 984);
      v6 = *(v0 + 976);
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v195 = v8;
      *v7 = 136315138;
      *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v5, &v195);
      _os_log_impl(&dword_1DC659000, v3, v4, "[ConversationService] rcId %s fell back to server, ending commit.", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v8);
      MEMORY[0x1E12A2F50](v8, -1, -1);
      MEMORY[0x1E12A2F50](v7, -1, -1);
    }

    else
    {
    }

    v165 = &closure #1 in ConversationService.markNotBusyAsync()partial apply;
LABEL_35:
    v101 = *(v0 + 448);
    v102 = *(v0 + 320);
    v103 = type metadata accessor for TaskPriority();
    (*(*(v103 - 8) + 56))(v101, 1, 1, v103);
    v104 = swift_allocObject();
    v104[2] = 0;
    v104[3] = 0;
    v104[4] = v102;

    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v101, v165, v104);

    v105 = *(v0 + 8);

    return v105();
  }

  v63 = Logger.logObject.getter();
  v64 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v63, v64))
  {
    v65 = *(v0 + 984);
    v66 = *(v0 + 976);
    v67 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    v195 = v68;
    *v67 = 136315138;
    *(v67 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v66, v65, &v195);
    _os_log_impl(&dword_1DC659000, v63, v64, "[ConversationService] No conversation found for rcId %s during commit. Will redirect to server.", v67, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v68);
    MEMORY[0x1E12A2F50](v68, -1, -1);
    MEMORY[0x1E12A2F50](v67, -1, -1);
  }

  v69 = *(v0 + 320);
  v70 = v69[11];
  v71 = v69[12];
  __swift_project_boxed_opaque_existential_1(v69 + 8, v70);
  v191 = (*(v71 + 40) + **(v71 + 40));
  v72 = swift_task_alloc();
  *(v0 + 1160) = v72;
  *v72 = v0;
  v72[1] = ConversationService.bridge(didReceiveCommitResultCandidateId:from:);
  v73 = *(v0 + 984);
  v74 = *(v0 + 976);

  return v191(v74, v73, v70, v71);
}

{
  v2 = *v1;
  *(*v1 + 1104) = v0;

  v3 = *(v2 + 952);

  if (v0)
  {
    v4 = ConversationService.bridge(didReceiveCommitResultCandidateId:from:);
  }

  else
  {
    v4 = ConversationService.bridge(didReceiveCommitResultCandidateId:from:);
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

{
  v1 = v0[78];
  v2 = v0[73];
  v3 = v0[72];
  outlined init with copy of ReferenceResolutionClientProtocol?(v0[79], v1, &_s14SiriKitRuntime22DecisionEngineResponseVSgMd, &_s14SiriKitRuntime22DecisionEngineResponseVSgMR);
  v4 = *(v2 + 48);
  v0[139] = v4;
  v0[140] = (v2 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v4(v1, 1, v3) == 1)
  {
    v5 = v0[78];
    v6 = &_s14SiriKitRuntime22DecisionEngineResponseVSgMd;
    v7 = &_s14SiriKitRuntime22DecisionEngineResponseVSgMR;
LABEL_5:
    outlined destroy of ReferenceResolutionClientProtocol?(v5, v6, v7);
    v14 = v0[40];
    v15 = v14[11];
    v16 = v14[12];
    __swift_project_boxed_opaque_existential_1(v14 + 8, v15);
    v27 = (*(v16 + 40) + **(v16 + 40));
    v17 = swift_task_alloc();
    v0[144] = v17;
    *v17 = v0;
    v17[1] = ConversationService.bridge(didReceiveCommitResultCandidateId:from:);
    v18 = v0[123];
    v19 = v0[122];

    return v27(v19, v18, v15, v16);
  }

  v8 = v0[87];
  v9 = v0[74];
  v10 = v0[72];
  v11 = v0[68];
  v12 = v0[67];
  outlined init with take of DecisionEngineResponse(v0[78], v9, type metadata accessor for DecisionEngineResponse);
  outlined init with copy of ReferenceResolutionClientProtocol?(v9 + *(v10 + 24), v8, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  if ((*(v11 + 48))(v8, 1, v12) == 1)
  {
    v13 = v0[87];
    outlined destroy of ConversationService.EagerResult(v0[74], type metadata accessor for DecisionEngineResponse);
    v6 = &_s11SiriKitFlow5InputVSgMd;
    v7 = &_s11SiriKitFlow5InputVSgMR;
    v5 = v13;
    goto LABEL_5;
  }

  v21 = v0[133];
  (*(v0[68] + 32))(v0[71], v0[87], v0[67]);
  v22 = *(v21 + 16);
  v23 = *(v21 + 24);
  Input.parse.getter();
  v24 = swift_task_alloc();
  v0[141] = v24;
  *v24 = v0;
  v24[1] = ConversationService.bridge(didReceiveCommitResultCandidateId:from:);
  v25 = v0[121];
  v26 = v0[66];

  return specialized ConversationService.updateRequestHandlingExecutionSystem(activeTurn:rcId:parse:)(v25, v22, v23, v26);
}

{
  v1 = *(*v0 + 952);
  v2 = *(*v0 + 528);
  v3 = *(*v0 + 496);
  v4 = *(*v0 + 488);

  (*(v3 + 8))(v2, v4);

  return MEMORY[0x1EEE6DFA0](ConversationService.bridge(didReceiveCommitResultCandidateId:from:), v1, 0);
}

{
  v1 = v0[74];
  if (*(v1 + 8))
  {
    (*(v0[68] + 8))(v0[71], v0[67]);
    outlined destroy of ConversationService.EagerResult(v1, type metadata accessor for DecisionEngineResponse);
    v2 = v0[40];
    v3 = v2[11];
    v4 = v2[12];
    __swift_project_boxed_opaque_existential_1(v2 + 8, v3);
    v9 = (*(v4 + 40) + **(v4 + 40));
    v5 = swift_task_alloc();
    v0[144] = v5;
    *v5 = v0;
    v5[1] = ConversationService.bridge(didReceiveCommitResultCandidateId:from:);
    v6 = v0[123];
    v7 = v0[122];

    return v9(v7, v6, v3, v4);
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](ConversationService.bridge(didReceiveCommitResultCandidateId:from:), 0, 0);
  }
}

{
  v1 = v0[126];
  v2 = v0[92];
  v3 = v0[90];
  v4 = (v0[121] + v0[124]);
  v5 = v4[3];
  v6 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v5);
  *v2 = specialized static SiriKitMetricsUtils.extractIntentTypeName(input:)();
  v2[1] = v7;
  v1(v2, *MEMORY[0x1E69CFBC8], v3);
  v8 = SiriKitEvent.__allocating_init(_:builder:)();
  v0[142] = v8;
  v9 = swift_task_alloc();
  v0[143] = v9;
  *v9 = v0;
  v9[1] = ConversationService.bridge(didReceiveCommitResultCandidateId:from:);

  return MEMORY[0x1EEE39338](v8, v5, v6);
}

{
  v1 = *(*v0 + 952);

  return MEMORY[0x1EEE6DFA0](ConversationService.bridge(didReceiveCommitResultCandidateId:from:), v1, 0);
}

{
  v1 = v0[74];
  (*(v0[68] + 8))(v0[71], v0[67]);
  outlined destroy of ConversationService.EagerResult(v1, type metadata accessor for DecisionEngineResponse);
  v2 = v0[40];
  v3 = v2[11];
  v4 = v2[12];
  __swift_project_boxed_opaque_existential_1(v2 + 8, v3);
  v9 = (*(v4 + 40) + **(v4 + 40));
  v5 = swift_task_alloc();
  v0[144] = v5;
  *v5 = v0;
  v5[1] = ConversationService.bridge(didReceiveCommitResultCandidateId:from:);
  v6 = v0[123];
  v7 = v0[122];

  return v9(v7, v6, v3, v4);
}

{
  v1 = *(*v0 + 952);

  return MEMORY[0x1EEE6DFA0](ConversationService.bridge(didReceiveCommitResultCandidateId:from:), v1, 0);
}

{
  v136 = v0;
  v1 = *(v0 + 1112);
  v2 = *(v0 + 616);
  v3 = *(v0 + 576);
  outlined init with copy of ReferenceResolutionClientProtocol?(*(v0 + 632), v2, &_s14SiriKitRuntime22DecisionEngineResponseVSgMd, &_s14SiriKitRuntime22DecisionEngineResponseVSgMR);
  if (v1(v2, 1, v3) == 1)
  {
    v4 = *(v0 + 616);

    outlined destroy of ReferenceResolutionClientProtocol?(v4, &_s14SiriKitRuntime22DecisionEngineResponseVSgMd, &_s14SiriKitRuntime22DecisionEngineResponseVSgMR);
LABEL_7:

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = *(v0 + 984);
      v18 = *(v0 + 976);
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v135 = v20;
      *v19 = 136315138;
      *(v19 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v17, &v135);
      _os_log_impl(&dword_1DC659000, v15, v16, "[ConversationService] No conversation found for followup input %s during commit. Will redirect to server.", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v20);
      MEMORY[0x1E12A2F50](v20, -1, -1);
      MEMORY[0x1E12A2F50](v19, -1, -1);
    }

    v21 = *(v0 + 1112);
    v22 = *(v0 + 600);
    v23 = *(v0 + 576);
    v24 = (*(v0 + 968) + *(v0 + 1088));
    v127 = v24[1];
    v130 = *v24;
    v122 = v24[3];
    v124 = v24[2];
    outlined init with copy of ReferenceResolutionClientProtocol?(*(v0 + 632), v22, &_s14SiriKitRuntime22DecisionEngineResponseVSgMd, &_s14SiriKitRuntime22DecisionEngineResponseVSgMR);
    v25 = v21(v22, 1, v23);
    v26 = *(v0 + 600);
    v27 = *(v0 + 480);
    if (v25 == 1)
    {
      v28 = *(v0 + 368);
      v29 = *(v0 + 376);
      outlined destroy of ReferenceResolutionClientProtocol?(*(v0 + 600), &_s14SiriKitRuntime22DecisionEngineResponseVSgMd, &_s14SiriKitRuntime22DecisionEngineResponseVSgMR);
      (*(v29 + 56))(v27, 1, 1, v28);
    }

    else
    {
      DecisionEngineResponse.topNlParse.getter(*(v0 + 480));
      outlined destroy of ConversationService.EagerResult(v26, type metadata accessor for DecisionEngineResponse);
    }

    v30 = *(v0 + 984);
    v31 = *(v0 + 976);
    v120 = *(v0 + 632);
    v32 = *(v0 + 480);
    v33 = *(v0 + 464);
    v34 = *(v0 + 392);
    v35 = *(v0 + 400);
    v36 = *(v0 + 312);
    v37 = *(v0 + 304);
    (*(v35 + 104))(v33, *MEMORY[0x1E69D0780], v34);
    (*(v35 + 56))(v33, 0, 1, v34);
    ConversationService.maybeDoServerFallback(bridge:forResultCandidateId:executionRequestId:rootRequestId:isDomainDirected:topNlParse:serverFallbackReason:)(v37, v36, v31, v30, v130, v127, v124, v122, 0, v32, v33);

    outlined destroy of ReferenceResolutionClientProtocol?(v33, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
    outlined destroy of ReferenceResolutionClientProtocol?(v32, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR);
    outlined destroy of ReferenceResolutionClientProtocol?(v120, &_s14SiriKitRuntime22DecisionEngineResponseVSgMd, &_s14SiriKitRuntime22DecisionEngineResponseVSgMR);
    v38 = *(v0 + 448);
    v39 = *(v0 + 320);
    v40 = type metadata accessor for TaskPriority();
    (*(*(v40 - 8) + 56))(v38, 1, 1, v40);
    v41 = swift_allocObject();
    v41[2] = 0;
    v41[3] = 0;
    v41[4] = v39;

    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v38, &closure #1 in ConversationService.markNotBusyAsync()partial apply, v41);

    v42 = *(v0 + 8);

    return v42();
  }

  v5 = *(v0 + 616);
  v6 = *v5;

  outlined destroy of ConversationService.EagerResult(v5, type metadata accessor for DecisionEngineResponse);
  if (!v6)
  {

    goto LABEL_7;
  }

  v7 = *(v0 + 1112);
  v8 = *(v0 + 608);
  v9 = *(v0 + 576);
  outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(*(v0 + 632), v8, &_s14SiriKitRuntime22DecisionEngineResponseVSgMd, &_s14SiriKitRuntime22DecisionEngineResponseVSgMR);
  v10 = v7(v8, 1, v9);
  v11 = *(v0 + 688);
  v12 = *(v0 + 608);
  if (v10 == 1)
  {
    v13 = *(v0 + 544);
    v14 = *(v0 + 536);

    outlined destroy of ReferenceResolutionClientProtocol?(v12, &_s14SiriKitRuntime22DecisionEngineResponseVSgMd, &_s14SiriKitRuntime22DecisionEngineResponseVSgMR);
    (*(v13 + 56))(v11, 1, 1, v14);
  }

  else
  {
    outlined init with copy of ReferenceResolutionClientProtocol?(v12 + *(*(v0 + 576) + 24), *(v0 + 688), &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);

    outlined destroy of ConversationService.EagerResult(v12, type metadata accessor for DecisionEngineResponse);
  }

  outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(*(v0 + 688), *(v0 + 712), &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  v44 = *(v0 + 1064);
  *(v0 + 1176) = v6;
  v128 = v44;
  *(v0 + 1168) = v44;
  v45 = *(v0 + 672);
  v46 = *(v0 + 544);
  v47 = *(v0 + 536);
  outlined init with copy of ReferenceResolutionClientProtocol?(*(v0 + 712), v45, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  v48 = *(v46 + 48);
  if (v48(v45, 1, v47) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(*(v0 + 672), &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  }

  else
  {
    v49 = *(v0 + 512);
    v50 = *(v0 + 488);
    v51 = *(v0 + 496);
    (*(*(v0 + 544) + 32))(*(v0 + 560), *(v0 + 672), *(v0 + 536));
    Input.parse.getter();
    if ((*(v51 + 88))(v49, v50) == *MEMORY[0x1E69D0178])
    {
      v52 = *(v0 + 320);
      (*(*(v0 + 496) + 8))(*(v0 + 512), *(v0 + 488));
      result = swift_beginAccess();
      v53 = *(v52 + 272);
      v54 = __OFADD__(v53, 1);
      v55 = v53 + 1;
      if (v54)
      {
        __break(1u);
        return result;
      }

      *(v52 + 272) = v55;

      v56 = Logger.logObject.getter();
      v57 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        *v58 = 134217984;
        *(v58 + 4) = *(v52 + 272);

        _os_log_impl(&dword_1DC659000, v56, v57, "Input given to flow was empty: Incrementing consecutiveEmptyInputs to %ld", v58, 0xCu);
        MEMORY[0x1E12A2F50](v58, -1, -1);
      }

      else
      {
      }

      (*(*(v0 + 544) + 8))(*(v0 + 560), *(v0 + 536));
      goto LABEL_26;
    }

    v59 = *(v0 + 512);
    v60 = *(v0 + 488);
    v61 = *(v0 + 496);
    (*(*(v0 + 544) + 8))(*(v0 + 560), *(v0 + 536));
    (*(v61 + 8))(v59, v60);
  }

  v62 = *(v0 + 320);
  swift_beginAccess();
  *(v62 + 272) = 0;
LABEL_26:
  v63 = *(v0 + 664);
  v64 = *(v0 + 536);
  outlined init with copy of ReferenceResolutionClientProtocol?(*(v0 + 712), v63, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  if (v48(v63, 1, v64) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(*(v0 + 664), &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  }

  else
  {
    v66 = *(v0 + 496);
    v65 = *(v0 + 504);
    v67 = *(v0 + 488);
    (*(*(v0 + 544) + 32))(*(v0 + 552), *(v0 + 664), *(v0 + 536));
    Input.parse.getter();
    v68 = (*(v66 + 88))(v65, v67);
    if (v68 == *MEMORY[0x1E69D0138])
    {
      v131 = *(v0 + 552);
      v69 = *(v0 + 544);
      v70 = *(v0 + 536);
      v71 = *(v0 + 312);
      (*(*(v0 + 496) + 8))(*(v0 + 504), *(v0 + 488));
      ObjectType = swift_getObjectType();
      v73 = type metadata accessor for ExecutionInputInfo();
      v74 = objc_allocWithZone(v73);
      v75 = &v74[OBJC_IVAR____TtC14SiriKitRuntime18ExecutionInputInfo_parseId];
      *v75 = 0;
      v75[1] = 0;
      v74[OBJC_IVAR____TtC14SiriKitRuntime18ExecutionInputInfo_executePommes] = 1;
      *(v0 + 232) = v74;
      *(v0 + 240) = v73;
      v76 = objc_msgSendSuper2((v0 + 232), sel_init);
      (*(v71 + 168))(v76, ObjectType, v71);

      (*(v69 + 8))(v131, v70);
    }

    else if (v68 == *MEMORY[0x1E69D0168])
    {
      v77 = *(v0 + 504);
      v79 = *(v0 + 424);
      v78 = *(v0 + 432);
      v80 = *(v0 + 416);
      v81 = *(v0 + 376);
      v82 = *(v0 + 384);
      v132 = *(v0 + 368);
      v125 = *(v0 + 336);
      (*(*(v0 + 496) + 96))(v77, *(v0 + 488));
      (*(v79 + 32))(v78, v77, v80);
      USOParse.userParse.getter();
      Siri_Nlu_External_UserParse.id.getter();
      (*(v81 + 8))(v82, v132);
      v133 = type metadata accessor for ExecutionInputInfo();
      v83 = objc_allocWithZone(v133);
      static ConversionUtils.convertProtoToUuid(protoUuid:)();
      v84 = type metadata accessor for UUID();
      v85 = *(v84 - 8);
      v86 = (*(v85 + 48))(v125, 1, v84);
      v87 = *(v0 + 336);
      if (v86 == 1)
      {
        outlined destroy of ReferenceResolutionClientProtocol?(*(v0 + 336), &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        v117 = 0;
        v118 = 0;
      }

      else
      {
        v91 = UUID.uuidString.getter();
        v117 = v92;
        v118 = v91;
        (*(v85 + 8))(v87, v84);
      }

      v93 = *(v0 + 544);
      v123 = *(v0 + 536);
      v126 = *(v0 + 552);
      v94 = *(v0 + 424);
      v119 = *(v0 + 416);
      v121 = *(v0 + 432);
      v95 = *(v0 + 352);
      v116 = *(v0 + 360);
      v114 = *(v0 + 344);
      v96 = *(v0 + 312);
      v115 = swift_getObjectType();
      v97 = &v83[OBJC_IVAR____TtC14SiriKitRuntime18ExecutionInputInfo_parseId];
      *v97 = v118;
      v97[1] = v117;
      v83[OBJC_IVAR____TtC14SiriKitRuntime18ExecutionInputInfo_executePommes] = 0;
      *(v0 + 248) = v83;
      *(v0 + 256) = v133;
      v98 = objc_msgSendSuper2((v0 + 248), sel_init);
      (*(v95 + 8))(v116, v114);
      (*(v96 + 168))(v98, v115, v96);

      (*(v94 + 8))(v121, v119);
      (*(v93 + 8))(v126, v123);
    }

    else
    {
      v89 = *(v0 + 496);
      v88 = *(v0 + 504);
      v90 = *(v0 + 488);
      (*(*(v0 + 544) + 8))(*(v0 + 552), *(v0 + 536));
      (*(v89 + 8))(v88, v90);
    }
  }

  v99 = *(v0 + 712);
  v100 = *(v0 + 656);
  v101 = *(v0 + 536);
  type metadata accessor for ConversationSELFHelper();
  *(v0 + 1184) = static ConversationSELFHelper.shared.getter();
  outlined init with copy of ReferenceResolutionClientProtocol?(v99, v100, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  v102 = v48(v100, 1, v101);
  v103 = *(v0 + 656);
  if (v102 == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(*(v0 + 656), &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
    v104 = 1;
  }

  else
  {
    v105 = *(v0 + 544);
    v106 = *(v0 + 536);
    Input.identifier.getter();
    (*(v105 + 8))(v103, v106);
    v104 = 0;
  }

  v107 = *(v0 + 968);
  v109 = *(v0 + 320);
  v108 = *(v0 + 328);
  v110 = *(v0 + 296);
  v111 = type metadata accessor for UUID();
  v134 = *(v0 + 304);
  (*(*(v111 - 8) + 56))(v108, v104, 1, v111);
  v112 = swift_allocObject();
  *(v0 + 1192) = v112;
  *(v112 + 16) = v109;
  *(v112 + 24) = v110;
  *(v112 + 32) = v107;
  *(v112 + 40) = v134;
  *(v112 + 56) = v6;
  *(v112 + 64) = 1;
  *(v112 + 72) = v128;
  v129 = (*MEMORY[0x1E69D0038] + MEMORY[0x1E69D0038]);

  swift_unknownObjectRetain();
  v113 = swift_task_alloc();
  *(v0 + 1200) = v113;
  *v113 = v0;
  v113[1] = ConversationService.bridge(didReceiveCommitResultCandidateId:from:);

  return v129();
}

{
  v1 = *(*v0 + 952);

  return MEMORY[0x1EEE6DFA0](ConversationService.bridge(didReceiveCommitResultCandidateId:from:), v1, 0);
}

{
  v1 = v0[123];
  v2 = v0[122];
  v3 = v0[121];
  v4 = v0[85];
  v5 = v0[68];
  v6 = v0[67];

  v45 = *(v3 + OBJC_IVAR____TtCC14SiriKitRuntime19ConversationService10ActiveTurn_turnData + 8);
  v46 = *(v3 + OBJC_IVAR____TtCC14SiriKitRuntime19ConversationService10ActiveTurn_turnData);
  v43 = *(v3 + OBJC_IVAR____TtCC14SiriKitRuntime19ConversationService10ActiveTurn_turnData + 24);
  v44 = *(v3 + OBJC_IVAR____TtCC14SiriKitRuntime19ConversationService10ActiveTurn_turnData + 16);
  (*(*v3 + 360))(v2, v1);
  if ((*(v5 + 48))(v4, 1, v6) == 1)
  {
    v7 = v0[59];
    v8 = v0[46];
    v9 = v0[47];
    outlined destroy of ReferenceResolutionClientProtocol?(v0[85], &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
    (*(v9 + 56))(v7, 1, 1, v8);
  }

  else
  {
    v10 = v0[65];
    v12 = v0[61];
    v11 = v0[62];
    Input.parse.getter();
    if ((*(v11 + 88))(v10, v12) == *MEMORY[0x1E69D0168])
    {
      v13 = v0[65];
      v14 = v0 + 55;
      v15 = v0[55];
      v16 = v0 + 53;
      v17 = v0 + 52;
      v19 = v0[52];
      v18 = v0[53];
      (*(v0[62] + 96))(v13, v0[61]);
      (*(v18 + 32))(v15, v13, v19);
      USOParse.userParse.getter();
      v20 = 0;
    }

    else
    {
      v14 = v0 + 65;
      v16 = v0 + 62;
      v17 = v0 + 61;
      v20 = 1;
    }

    v21 = *v14;
    v22 = *v16;
    v23 = v0[85];
    v24 = v0[68];
    v25 = v0[67];
    v26 = v0[59];
    v28 = v0[46];
    v27 = v0[47];
    (*(v22 + 8))(v21, *v17);
    (*(v27 + 56))(v26, v20, 1, v28);
    (*(v24 + 8))(v23, v25);
  }

  v29 = v0[123];
  v30 = v0[122];
  v32 = v0[58];
  v31 = v0[59];
  v33 = v0[49];
  v34 = v0[50];
  v35 = v0[39];
  v36 = v0[38];
  (*(v34 + 104))(v32, *MEMORY[0x1E69D0780], v33);
  (*(v34 + 56))(v32, 0, 1, v33);
  ConversationService.maybeDoServerFallback(bridge:forResultCandidateId:executionRequestId:rootRequestId:isDomainDirected:topNlParse:serverFallbackReason:)(v36, v35, v30, v29, v46, v45, v44, v43, 0, v31, v32);

  outlined destroy of ReferenceResolutionClientProtocol?(v32, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v31, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR);
  v37 = v0[56];
  v38 = v0[40];
  v39 = type metadata accessor for TaskPriority();
  (*(*(v39 - 8) + 56))(v37, 1, 1, v39);
  v40 = swift_allocObject();
  v40[2] = 0;
  v40[3] = 0;
  v40[4] = v38;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v37, &closure #1 in ConversationService.markNotBusyAsync()partial apply, v40);

  v41 = v0[1];

  return v41();
}

{
  v2 = *v1;
  *(*v1 + 1208) = v0;

  v3 = *(v2 + 952);
  outlined destroy of ReferenceResolutionClientProtocol?(*(v2 + 328), &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);

  if (v0)
  {
    v4 = ConversationService.bridge(didReceiveCommitResultCandidateId:from:);
  }

  else
  {
    v4 = ConversationService.bridge(didReceiveCommitResultCandidateId:from:);
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

{
  v1 = v0[89];

  outlined destroy of ReferenceResolutionClientProtocol?(v1, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  v2 = v0[56];
  v3 = v0[40];
  v4 = type metadata accessor for TaskPriority();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v3;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v2, &closure #1 in ConversationService.markNotBusyAsync()partial apply, v5);

  v6 = v0[1];

  return v6();
}

{
  v1 = v0[56];
  v2 = v0[40];

  v3 = type metadata accessor for TaskPriority();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  v4 = swift_allocObject();
  v4[2] = 0;
  v4[3] = 0;
  v4[4] = v2;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v1, &closure #1 in ConversationService.markNotBusyAsync()partial apply, v4);

  v5 = v0[1];

  return v5();
}

{
  v1 = v0[56];
  v2 = v0[40];

  v3 = type metadata accessor for TaskPriority();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  v4 = swift_allocObject();
  v4[2] = 0;
  v4[3] = 0;
  v4[4] = v2;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v1, &closure #1 in ConversationService.markNotBusyAsync()partial apply, v4);

  v5 = v0[1];

  return v5();
}

{
  v1 = v0[89];
  v2 = v0[56];
  v3 = v0[40];

  outlined destroy of ReferenceResolutionClientProtocol?(v1, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  v4 = type metadata accessor for TaskPriority();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v3;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v2, &closure #1 in ConversationService.markNotBusyAsync()partial apply, v5);

  v6 = v0[1];

  return v6();
}

void closure #1 in ConversationService.bridge(didReceiveCommitResultCandidateId:from:)(int a1, NSObject *a2)
{
  if (a2)
  {
    v3 = a2;
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static Logger.executor);
    v5 = a2;
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v19 = v9;
      *v8 = 136315138;
      v10 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v11 = String.init<A>(describing:)();
      v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v19);

      *(v8 + 4) = v13;
      _os_log_impl(&dword_1DC659000, v6, v7, "UIRevealRecognizedSpeech error: %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v9);
      MEMORY[0x1E12A2F50](v9, -1, -1);
      MEMORY[0x1E12A2F50](v8, -1, -1);

      return;
    }

    v17 = a2;
  }

  else
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static Logger.executor);
    oslog = Logger.logObject.getter();
    v15 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(oslog, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_1DC659000, oslog, v15, "UIRevealRecognizedSpeech handled", v16, 2u);
      MEMORY[0x1E12A2F50](v16, -1, -1);
    }

    v17 = oslog;
  }
}

uint64_t ConversationService.maybeDoServerFallback(bridge:forResultCandidateId:executionRequestId:rootRequestId:isDomainDirected:topNlParse:serverFallbackReason:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, uint64_t a10, uint64_t a11)
{
  v102 = a8;
  v101 = a7;
  v117 = a3;
  v112 = a1;
  v113 = a2;
  v15 = a11;
  v104 = a10;
  v16 = type metadata accessor for RequestSummary.ExecutionSource();
  v110 = *(v16 - 8);
  v111 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v109 = &v94[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v18);
  v108 = &v94[-v19];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v106 = &v94[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v22);
  v107 = &v94[-v23];
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
  MEMORY[0x1EEE9AC00](v99);
  v98 = &v94[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v94[-v26];
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v97 = &v94[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v94[-v31];
  v33 = v11[32];
  v34 = v11[33];
  v100 = v11;
  __swift_project_boxed_opaque_existential_1(v11 + 29, v33);
  v35 = *(v34 + 8);
  LODWORD(v105) = a9;
  v36 = v104;
  v116 = a5;
  v37 = v35(a9, v104, a11, a5, a6, v33, v34);
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v38 = type metadata accessor for Logger();
  v39 = __swift_project_value_buffer(v38, static Logger.executor);
  outlined init with copy of ReferenceResolutionClientProtocol?(v36, v32, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR);
  outlined init with copy of ReferenceResolutionClientProtocol?(a11, v27, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);

  v104 = v39;
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.debug.getter();

  v42 = os_log_type_enabled(v40, v41);
  v43 = a6;
  v114 = a11;
  v115 = a4;
  LODWORD(v103) = v37;
  if (!v42)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v32, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR);

    outlined destroy of ReferenceResolutionClientProtocol?(v27, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
    v46 = v105;
    goto LABEL_11;
  }

  v95 = v41;
  v96 = v27;
  v44 = swift_slowAlloc();
  v45 = swift_slowAlloc();
  v118[0] = v45;
  *v44 = 67110402;
  *(v44 + 4) = v37 & 1;
  *(v44 + 8) = 2080;
  *(v44 + 10) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v116, a6, v118);
  *(v44 + 18) = 2080;
  *(v44 + 20) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v117, a4, v118);
  *(v44 + 28) = 1024;
  v46 = v105;
  *(v44 + 30) = v105 & 1;
  *(v44 + 34) = 1024;
  v47 = v97;
  outlined init with copy of ReferenceResolutionClientProtocol?(v32, v97, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR);
  v48 = type metadata accessor for Siri_Nlu_External_UserParse();
  v49 = *(v48 - 8);
  if ((*(v49 + 48))(v47, 1, v48) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v47, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR);
LABEL_9:
    v51 = 0;
    goto LABEL_10;
  }

  v50 = Siri_Nlu_External_UserParse.isNlv3FallbackException.getter();
  (*(v49 + 8))(v47, v48);
  if ((v50 & 1) == 0)
  {
    goto LABEL_9;
  }

  v51 = 1;
LABEL_10:
  v43 = a6;
  outlined destroy of ReferenceResolutionClientProtocol?(v32, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR);
  *(v44 + 36) = v51;
  *(v44 + 40) = 2080;
  v52 = v96;
  outlined init with copy of ReferenceResolutionClientProtocol?(v96, v98, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
  v53 = String.init<A>(describing:)();
  v55 = v54;
  outlined destroy of ReferenceResolutionClientProtocol?(v52, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
  v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v55, v118);

  *(v44 + 42) = v56;
  _os_log_impl(&dword_1DC659000, v40, v95, "[ConversationService] shouldDisableServerFallbackWithABExperiment = %{BOOL}d) for executionRequestId: %s, rcId: %s, isDomainDirected: %{BOOL}d, nlExceptionParse: %{BOOL}d, serverFallbackReason: %s", v44, 0x32u);
  swift_arrayDestroy();
  MEMORY[0x1E12A2F50](v45, -1, -1);
  MEMORY[0x1E12A2F50](v44, -1, -1);

  v15 = v114;
  a4 = v115;
LABEL_11:
  if (v103)
  {
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 67109120;
      *(v59 + 4) = v46 & 1;
      _os_log_impl(&dword_1DC659000, v57, v58, "[ConversationService] ServerFallback needed with domainDirected=%{BOOL}d but shouldDisableServerFallback returns true; initiating a fatal response and returning an error instead of performing fallback.", v59, 8u);
      MEMORY[0x1E12A2F50](v59, -1, -1);
    }

    v60 = 0xD00000000000002CLL;
    if ((v46 & 1) == 0)
    {
      v60 = 0xD000000000000028;
    }

    v103 = v60;
    if (v46)
    {
      v61 = " execution.";
    }

    else
    {
      v61 = "before RC was received?";
    }

    v105 = v61;
    v62 = type metadata accessor for FlowOutputMessage.InAppResponse();
    v63 = v107;
    (*(*(v62 - 8) + 56))(v107, 1, 1, v62);
    v65 = v110;
    v64 = v111;
    v66 = v108;
    (*(v110 + 104))(v108, *MEMORY[0x1E69D0678], v111);
    v67 = *(v65 + 16);
    v68 = v109;
    v67(v109, v66, v64);
    v69 = v106;
    outlined init with copy of ReferenceResolutionClientProtocol?(v63, v106, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
    v70 = type metadata accessor for ExecutionOutput(0);
    v71 = objc_allocWithZone(v70);
    v72 = &v71[OBJC_IVAR___SKRExecutionOutput_executionRequestId];
    *v72 = v116;
    *(v72 + 1) = v43;
    v73 = &v71[OBJC_IVAR___SKRExecutionOutput_fullPrint];
    *v73 = 0;
    *(v73 + 1) = 0;
    v74 = &v71[OBJC_IVAR___SKRExecutionOutput_fullSpeak];
    *v74 = 0;
    *(v74 + 1) = 0;
    v75 = &v71[OBJC_IVAR___SKRExecutionOutput_redactedFullPrint];
    *v75 = 0;
    *(v75 + 1) = 0;
    v76 = &v71[OBJC_IVAR___SKRExecutionOutput_redactedFullSpeak];
    *v76 = 0;
    *(v76 + 1) = 0;
    v67(&v71[OBJC_IVAR___SKRExecutionOutput_executionSource], v68, v64);
    outlined init with copy of ReferenceResolutionClientProtocol?(v69, &v71[OBJC_IVAR___SKRExecutionOutput_inAppResponse], &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
    v99 = v43;

    v77 = Logger.logObject.getter();
    v78 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      v118[0] = v81;
      *v79 = 136315394;
      *(v79 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000085, 0x80000001DCA7C240, v118);
      *(v79 + 12) = 2112;
      *(v79 + 14) = 0;
      *v80 = 0;
      _os_log_impl(&dword_1DC659000, v77, v78, "ExecutionOutput: %s: converting non-context ACE command=%@ to ExecutionOutput", v79, 0x16u);
      outlined destroy of ReferenceResolutionClientProtocol?(v80, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1E12A2F50](v80, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v81);
      MEMORY[0x1E12A2F50](v81, -1, -1);
      MEMORY[0x1E12A2F50](v79, -1, -1);
    }

    v82 = v114;
    v83 = v101;
    *&v71[OBJC_IVAR___SKRExecutionOutput_command] = 0;
    *&v71[OBJC_IVAR___SKRExecutionOutput_contextUpdate] = 0;
    v121.receiver = v71;
    v121.super_class = v70;
    v84 = objc_msgSendSuper2(&v121, sel_init);
    outlined destroy of ReferenceResolutionClientProtocol?(v106, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
    v85 = *(v110 + 8);
    v86 = v111;
    v85(v109, v111);
    v85(v108, v86);
    outlined destroy of ReferenceResolutionClientProtocol?(v107, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
    ObjectType = swift_getObjectType();
    (*(v113 + 40))(v84, v103, v105 | 0x8000000000000000, 1, ObjectType);

    outlined init with copy of ReferenceResolutionClientProtocol((v100 + 29), v118);
    v88 = v119;
    v89 = v120;
    __swift_project_boxed_opaque_existential_1(v118, v119);
    v90 = v102;
    if (!v102)
    {
      v90 = v99;

      v83 = v116;
    }

    v91 = *(v89 + 24);

    v91(v117, v115, v83, v90, v82, v88, v89);

    return __swift_destroy_boxed_opaque_existential_1Tm(v118);
  }

  else
  {
    v93 = swift_getObjectType();
    return (*(v113 + 48))(v117, a4, v15, v93);
  }
}

uint64_t closure #2 in ConversationService.bridge(didReceiveCommitResultCandidateId:from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 56) = a7;
  *(v8 + 64) = v10;
  *(v8 + 128) = a8;
  *(v8 + 40) = a5;
  *(v8 + 48) = a6;
  *(v8 + 24) = a3;
  *(v8 + 32) = a4;
  *(v8 + 16) = a2;
  return MEMORY[0x1EEE6DFA0](closure #2 in ConversationService.bridge(didReceiveCommitResultCandidateId:from:), 0, 0);
}

uint64_t closure #2 in ConversationService.bridge(didReceiveCommitResultCandidateId:from:)()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v1[11];
  v4 = v1[12];
  __swift_project_boxed_opaque_existential_1(v1 + 8, v3);
  v5 = *(v2 + 16);
  v0[9] = v5;
  v6 = *(v2 + 24);
  v0[10] = v6;
  v9 = (*(v4 + 40) + **(v4 + 40));
  v7 = swift_task_alloc();
  v0[11] = v7;
  *v7 = v0;
  v7[1] = closure #2 in ConversationService.bridge(didReceiveCommitResultCandidateId:from:);

  return v9(v5, v6, v3, v4);
}

{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  v1[12] = v3;
  *v3 = v2;
  v3[1] = closure #2 in ConversationService.bridge(didReceiveCommitResultCandidateId:from:);
  v4 = v1[10];
  v5 = v1[9];
  v6 = v1[4];

  return specialized ConversationService.maybeSubmitRequestHandlingUpdate(activeTurn:rcId:bridge:)(v6, v5, v4);
}

{

  return MEMORY[0x1EEE6DFA0](closure #2 in ConversationService.bridge(didReceiveCommitResultCandidateId:from:), 0, 0);
}

{
  v1 = *(v0 + 64);
  v2 = *(v0 + 32);
  v3 = ConversationUserInput.asSpeechData.getter();
  *(v0 + 104) = v3;
  v4 = OBJC_IVAR____TtCC14SiriKitRuntime19ConversationService10ActiveTurn_turnData;
  v5 = swift_task_alloc();
  *(v0 + 112) = v5;
  *v5 = v0;
  v5[1] = closure #2 in ConversationService.bridge(didReceiveCommitResultCandidateId:from:);
  v6 = *(v0 + 128);
  v7 = *(v0 + 48);
  v8 = *(v0 + 56);
  v9 = *(v0 + 40);

  return ConversationService.handleConversationOrSendErrorToBridge(_:needsPrepare:speechData:turnData:bridge:userInput:)(v8, v6, v3, v2 + v4, v9, v7, v1);
}

{
  v2 = *v1;
  *(v2 + 120) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](closure #2 in ConversationService.bridge(didReceiveCommitResultCandidateId:from:), 0, 0);
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

uint64_t ConversationService.bridge(didReceiveClearContext:from:)()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return specialized ConversationService.bridge(didReceiveClearContext:from:)();
}

uint64_t ConversationService.bridge(didReceiveCancelRequest:from:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return specialized ConversationService.bridge(didReceiveCancelRequest:from:)(a1);
}

uint64_t closure #1 in ConversationService.bridge(didReceiveCancelRequest:from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[23] = a3;
  v4[24] = a4;
  v4[22] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = static MessageBusActor.shared;
  v4[27] = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in ConversationService.bridge(didReceiveCancelRequest:from:), v5, 0);
}

uint64_t closure #1 in ConversationService.bridge(didReceiveCancelRequest:from:)()
{
  v1 = v0[23];
  swift_beginAccess();
  v2 = *(v1 + 104);
  if ((v2 & 0xC000000000000001) != 0)
  {

    __CocoaSet.makeIterator()();
    type metadata accessor for RemoteConversationClient();
    _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type RemoteConversationClient and conformance RemoteConversationClient, 255, type metadata accessor for RemoteConversationClient, &protocol conformance descriptor for RemoteConversationClient);
    v3 = Set.Iterator.init(_cocoa:)();
    v2 = v0[2];
    v6 = v0[3];
    v7 = v0[4];
    v8 = v0[5];
    v9 = v0[6];
  }

  else
  {
    v10 = -1 << *(v2 + 32);
    v6 = v2 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(v2 + 56);

    v8 = 0;
  }

  v41 = v0 + 7;
  v13 = (v7 + 64) >> 6;
  v42 = v6;
  v43 = v2;
  v44 = v13;
  v46 = v0;
  while (v2 < 0)
  {
    v21 = __CocoaSet.Iterator.next()();
    if (!v21 || (v0[21] = v21, type metadata accessor for RemoteConversationClient(), swift_dynamicCast(), v20 = v0[20], v18 = v8, v19 = v9, !v20))
    {
LABEL_26:
      outlined consume of Set<RemoteConversationClient>.Iterator._Variant(v2);
      v36 = static MessageBusActor.shared;
      v0[28] = static MessageBusActor.shared;
      v38 = _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MessageBusActor and conformance MessageBusActor, v37, type metadata accessor for MessageBusActor, &protocol conformance descriptor for MessageBusActor);

      v39 = swift_task_alloc();
      v0[29] = v39;
      v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScGyytGMd, &_sScGyytGMR);
      *v39 = v0;
      v39[1] = closure #1 in ConversationService.bridge(didReceiveCancelRequest:from:);
      v3 = v36;
      v4 = v38;

      return MEMORY[0x1EEE6D898](v3, v4, v5);
    }

LABEL_19:
    v45 = v19;
    v23 = v0[25];
    v22 = v0[26];
    v24 = v46[24];
    v25 = v20;
    v26 = type metadata accessor for TaskPriority();
    v27 = *(v26 - 8);
    (*(v27 + 56))(v22, 1, 1, v26);
    v28 = swift_allocObject();
    v28[2] = 0;
    v29 = v28 + 2;
    v28[3] = 0;
    v28[4] = v25;
    v28[5] = v24;
    outlined init with copy of ReferenceResolutionClientProtocol?(v22, v23, &_sScPSgMd, &_sScPSgMR);
    LODWORD(v23) = (*(v27 + 48))(v23, 1, v26);

    v0 = v46;

    v30 = v46[25];
    if (v23 == 1)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(v46[25], &_sScPSgMd, &_sScPSgMR);
      if (*v29)
      {
        goto LABEL_21;
      }
    }

    else
    {
      TaskPriority.rawValue.getter();
      (*(v27 + 8))(v30, v26);
      if (*v29)
      {
LABEL_21:
        swift_getObjectType();
        swift_unknownObjectRetain();
        v31 = dispatch thunk of Actor.unownedExecutor.getter();
        v33 = v32;
        swift_unknownObjectRelease();
        goto LABEL_24;
      }
    }

    v31 = 0;
    v33 = 0;
LABEL_24:
    v34 = *v46[22];
    v35 = swift_allocObject();
    *(v35 + 16) = &async function pointer to partial apply for closure #1 in closure #1 in ConversationService.bridge(didReceiveCancelRequest:from:);
    *(v35 + 24) = v28;

    if (v33 | v31)
    {
      v14 = v41;
      *v41 = 0;
      v41[1] = 0;
      v46[9] = v31;
      v46[10] = v33;
    }

    else
    {
      v14 = 0;
    }

    v6 = v42;
    v2 = v43;
    v15 = v46[26];
    v46[17] = 1;
    v46[18] = v14;
    v46[19] = v34;
    swift_task_create();

    v3 = outlined destroy of ReferenceResolutionClientProtocol?(v15, &_sScPSgMd, &_sScPSgMR);
    v8 = v18;
    v9 = v45;
    v13 = v44;
  }

  v16 = v8;
  v17 = v9;
  v18 = v8;
  if (v9)
  {
LABEL_15:
    v19 = (v17 - 1) & v17;

    if (!v20)
    {
      goto LABEL_26;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v18 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v18 >= v13)
    {
      goto LABEL_26;
    }

    v17 = *(v6 + 8 * v18);
    ++v16;
    if (v17)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
  return MEMORY[0x1EEE6D898](v3, v4, v5);
}

{
  v1 = *(*v0 + 216);

  return MEMORY[0x1EEE6DFA0](closure #1 in ConversationService.bridge(didReceiveCancelRequest:from:), v1, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in closure #1 in ConversationService.bridge(didReceiveCancelRequest:from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in ConversationService.bridge(didReceiveCancelRequest:from:), 0, 0);
}

uint64_t closure #1 in closure #1 in ConversationService.bridge(didReceiveCancelRequest:from:)()
{
  v1 = v0[2];
  v0[4] = *(v0[3] + 32);
  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in ConversationService.bridge(didReceiveCancelRequest:from:), v1, 0);
}

{
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = v0[4];
  v2 = v0[2];
  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.executor);
  Logger.debugF(file:function:)("SiriKitRuntime/RemoteConversationClient.swift", 45, 2, "cancel(_:)", 10, 2);
  v4 = v2[19];
  v5 = v2[20];
  __swift_project_boxed_opaque_existential_1(v2 + 16, v4);
  v6 = swift_allocObject();
  v0[5] = v6;
  *(v6 + 16) = v1;
  v10 = (*(v5 + 16) + **(v5 + 16));
  v7 = swift_task_alloc();
  v0[6] = v7;
  *v7 = v0;
  v7[1] = closure #1 in closure #1 in ConversationService.bridge(didReceiveCancelRequest:from:);
  v8 = MEMORY[0x1E69E7CA8] + 8;

  return v10(v0 + 7, &async function pointer to partial apply for closure #1 in RemoteConversationClient.cancel(_:), v6, v8, v4, v5);
}

{
  v2 = *v1;

  v3 = *(v2 + 16);
  if (v0)
  {

    v4 = AceServiceInvokerImpl.prepareForAudioHandoffFailed();
  }

  else
  {

    v4 = protocol witness for AceServiceInvokerAsync.prepareForAudioHandoffFailed() in conformance AceServiceInvokerImpl;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t ConversationService.bridge(didReceiveSiriKitPluginSignal:from:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return specialized ConversationService.bridge(didReceiveSiriKitPluginSignal:from:)(a1);
}

uint64_t ConversationService.drainAsyncWork()()
{
  *(v1 + 40) = v0;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = static MessageBusActor.shared;
  *(v1 + 48) = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](ConversationService.drainAsyncWork(), v2, 0);
}

{
  v1 = *(*v0 + 48);

  return MEMORY[0x1EEE6DFA0](ConversationService.drainAsyncWork(), v1, 0);
}

{
  v1 = *(v0[5] + 216);
  v0[9] = v1;
  v2 = *(*v1 + 216);

  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  v0[10] = v3;
  *v3 = v0;
  v3[1] = ConversationService.drainAsyncWork();

  return v5();
}

{
  v1 = *(*v0 + 48);

  return MEMORY[0x1EEE6DFA0](ConversationService.drainAsyncWork(), v1, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t ConversationService.drainAsyncWork()(uint64_t a1, uint64_t a2)
{
  v3 = static MessageBusActor.shared;
  v2[7] = static MessageBusActor.shared;
  v4 = _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MessageBusActor and conformance MessageBusActor, a2, type metadata accessor for MessageBusActor, &protocol conformance descriptor for MessageBusActor);

  v5 = swift_task_alloc();
  v2[8] = v5;
  *v5 = v2;
  v5[1] = ConversationService.drainAsyncWork();
  v6 = v2[5];
  v7 = MEMORY[0x1E69E7CA8] + 8;
  v8 = MEMORY[0x1E69E7CA8] + 8;
  v9 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DBF8](v5, v7, v8, v3, v4, &async function pointer to partial apply for closure #1 in ConversationService.drainAsyncWork(), v6, v9);
}

uint64_t closure #1 in ConversationService.drainAsyncWork()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[25] = a2;
  v3[26] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in ConversationService.drainAsyncWork(), v4, 0);
}

uint64_t closure #1 in ConversationService.drainAsyncWork()()
{
  v1 = *(v0 + 208);
  swift_beginAccess();
  v2 = *(v1 + 104);
  if ((v2 & 0xC000000000000001) != 0)
  {

    __CocoaSet.makeIterator()();
    type metadata accessor for RemoteConversationClient();
    _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type RemoteConversationClient and conformance RemoteConversationClient, 255, type metadata accessor for RemoteConversationClient, &protocol conformance descriptor for RemoteConversationClient);
    result = Set.Iterator.init(_cocoa:)();
    v2 = *(v0 + 16);
    v4 = *(v0 + 24);
    v5 = *(v0 + 32);
    v6 = *(v0 + 40);
    v7 = *(v0 + 48);
  }

  else
  {
    v8 = -1 << *(v2 + 32);
    v4 = v2 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(v2 + 56);

    v6 = 0;
  }

  v11 = (v5 + 64) >> 6;
  v39 = v4;
  v40 = v2;
  v38 = v11;
  while (v2 < 0)
  {
    v19 = __CocoaSet.Iterator.next()();
    if (!v19 || (*(v0 + 192) = v19, type metadata accessor for RemoteConversationClient(), swift_dynamicCast(), v18 = *(v0 + 184), v16 = v6, v17 = v7, !v18))
    {
LABEL_27:
      v32 = *(v0 + 208);
      outlined consume of Set<RemoteConversationClient>.Iterator._Variant(v2);
      swift_beginAccess();
      v33 = *(v32 + 280);
      if (v33)
      {
        v34 = *(v0 + 216);
        v35 = type metadata accessor for TaskPriority();
        (*(*(v35 - 8) + 56))(v34, 1, 1, v35);
        v36 = swift_allocObject();
        v36[2] = 0;
        v36[3] = 0;
        v36[4] = v33;

        _sScG7addTask8priority9operationyScPSg_xyYaYAcntFyt_Tg5(v34, &async function pointer to partial apply for closure #2 in closure #1 in ConversationService.drainAsyncWork(), v36);
        outlined destroy of ReferenceResolutionClientProtocol?(v34, &_sScPSgMd, &_sScPSgMR);
      }

      v37 = *(v0 + 8);

      return v37();
    }

LABEL_19:
    v42 = v17;
    v21 = *(v0 + 224);
    v20 = *(v0 + 232);
    v22 = type metadata accessor for TaskPriority();
    v23 = *(v22 - 8);
    (*(v23 + 56))(v20, 1, 1, v22);
    v24 = swift_allocObject();
    v24[2] = 0;
    v25 = v24 + 2;
    v24[3] = 0;
    v24[4] = v18;
    v41 = v24;
    outlined init with copy of ReferenceResolutionClientProtocol?(v20, v21, &_sScPSgMd, &_sScPSgMR);
    LODWORD(v21) = (*(v23 + 48))(v21, 1, v22);

    v26 = *(v0 + 224);
    if (v21 == 1)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(*(v0 + 224), &_sScPSgMd, &_sScPSgMR);
    }

    else
    {
      TaskPriority.rawValue.getter();
      (*(v23 + 8))(v26, v22);
    }

    if (*v25)
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      v27 = dispatch thunk of Actor.unownedExecutor.getter();
      v29 = v28;
      swift_unknownObjectRelease();
    }

    else
    {
      v27 = 0;
      v29 = 0;
    }

    v30 = **(v0 + 200);
    v31 = swift_allocObject();
    *(v31 + 16) = &async function pointer to partial apply for closure #1 in closure #1 in ConversationService.drainAsyncWork();
    *(v31 + 24) = v41;

    if (v29 | v27)
    {
      v12 = v0 + 56;
      *(v0 + 56) = 0;
      *(v0 + 64) = 0;
      *(v0 + 72) = v27;
      *(v0 + 80) = v29;
    }

    else
    {
      v12 = 0;
    }

    v13 = *(v0 + 232);
    *(v0 + 160) = 1;
    *(v0 + 168) = v12;
    *(v0 + 176) = v30;
    swift_task_create();

    result = outlined destroy of ReferenceResolutionClientProtocol?(v13, &_sScPSgMd, &_sScPSgMR);
    v6 = v16;
    v7 = v42;
    v4 = v39;
    v2 = v40;
    v11 = v38;
  }

  v14 = v6;
  v15 = v7;
  v16 = v6;
  if (v7)
  {
LABEL_15:
    v17 = (v15 - 1) & v15;
    v18 = *(*(v2 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));

    if (!v18)
    {
      goto LABEL_27;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v16 >= v11)
    {
      goto LABEL_27;
    }

    v15 = *(v4 + 8 * v16);
    ++v14;
    if (v15)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in closure #1 in ConversationService.drainAsyncWork()()
{
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.executor);
  Logger.debugF(file:function:)("SiriKitRuntime/RemoteConversationClient.swift", 45, 2, "drainAsyncWork()", 16, 2);
  v3 = v1[19];
  v4 = v1[20];
  __swift_project_boxed_opaque_existential_1(v1 + 16, v3);
  v8 = (*(v4 + 16) + **(v4 + 16));
  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  *v5 = v0;
  v5[1] = closure #1 in closure #1 in ConversationService.bridge(didReceiveClearContext:from:);
  v6 = MEMORY[0x1E69E7CA8] + 8;

  return v8(v0 + 32, &async function pointer to closure #1 in RemoteConversationClient.drainAsyncWork(), 0, v6, v3, v4);
}

uint64_t closure #2 in closure #1 in ConversationService.drainAsyncWork()()
{
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.executor);
  Logger.debugF(file:function:)("SiriKitRuntime/RemoteConversationClient.swift", 45, 2, "drainAsyncWork()", 16, 2);
  v3 = v1[19];
  v4 = v1[20];
  __swift_project_boxed_opaque_existential_1(v1 + 16, v3);
  v8 = (*(v4 + 16) + **(v4 + 16));
  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  *v5 = v0;
  v5[1] = closure #2 in closure #1 in ConversationService.drainAsyncWork();
  v6 = MEMORY[0x1E69E7CA8] + 8;

  return v8(v0 + 32, &async function pointer to closure #1 in RemoteConversationClient.drainAsyncWork(), 0, v6, v3, v4);
}

{
  v2 = *v1;

  v3 = *(v2 + 16);
  if (v0)
  {

    v4 = AceServiceInvokerImpl.prepareForAudioHandoffFailed();
  }

  else
  {
    v4 = protocol witness for AceServiceInvokerAsync.prepareForAudioHandoffFailed() in conformance AceServiceInvokerImpl;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t ConversationService.ActiveTurn.__allocating_init(turnData:conversationLoggingId:bridge:taskService:invokedByPeerToPeerEORR:rrClient:useNoopEventSender:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, void *a7, int a8)
{
  swift_allocObject();
  v16 = specialized ConversationService.ActiveTurn.init(turnData:conversationLoggingId:bridge:taskService:invokedByPeerToPeerEORR:rrClient:useNoopEventSender:)(a1, a2, a3, a4, a5, a6, a7, a8);
  swift_unknownObjectRelease();

  return v16;
}

uint64_t ConversationService.ActiveTurn.conversationLoggingId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCC14SiriKitRuntime19ConversationService10ActiveTurn_conversationLoggingId;
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ConversationService.ActiveTurn.init(turnData:conversationLoggingId:bridge:taskService:invokedByPeerToPeerEORR:rrClient:useNoopEventSender:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, void *a7, int a8)
{
  v8 = specialized ConversationService.ActiveTurn.init(turnData:conversationLoggingId:bridge:taskService:invokedByPeerToPeerEORR:rrClient:useNoopEventSender:)(a1, a2, a3, a4, a5, a6, a7, a8);
  swift_unknownObjectRelease();

  return v8;
}

uint64_t ConversationService.ActiveTurn.registerEagerTask(forInput:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = OBJC_IVAR____TtCC14SiriKitRuntime19ConversationService10ActiveTurn_eagerTasks;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v2 + v6);
  *(v2 + v6) = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a2, v4, v5, isUniquelyReferenced_nonNull_native);

  *(v2 + v6) = v9;
  return swift_endAccess();
}

uint64_t ConversationService.ActiveTurn.getEagerTask(conversationUserInputId:)(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtCC14SiriKitRuntime19ConversationService10ActiveTurn_eagerTasks;
  swift_beginAccess();
  v6 = *(v2 + v5);
  if (!*(v6 + 16))
  {
    return 0;
  }

  v7 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if (v8)
  {
    v9 = *(*(v6 + 56) + 8 * v7);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void ConversationService.ActiveTurn.registerNeedsASRReveal(rcId:recognition:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    swift_beginAccess();
    v6 = a3;

    specialized Dictionary.subscript.setter(a3, a1, a2);
    swift_endAccess();
  }

  else
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Logger.executor);
    oslog = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1DC659000, oslog, v8, "[ConversationService] nil SASRecognition found, cannot reveal ASR", v9, 2u);
      MEMORY[0x1E12A2F50](v9, -1, -1);
    }
  }
}

void *ConversationService.ActiveTurn.getNeedsASRReveal(rcId:)(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtCC14SiriKitRuntime19ConversationService10ActiveTurn_needsASRReveal;
  swift_beginAccess();
  v6 = *(v2 + v5);
  if (!*(v6 + 16))
  {
    return 0;
  }

  v7 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if (v8)
  {
    v9 = *(*(v6 + 56) + 8 * v7);
    v10 = v9;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t ConversationService.ActiveTurn.registerInput(rcId:input:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v12 - v7;
  v9 = type metadata accessor for Input();
  v10 = *(v9 - 8);
  (*(v10 + 16))(v8, a3, v9);
  (*(v10 + 56))(v8, 0, 1, v9);
  swift_beginAccess();

  specialized Dictionary.subscript.setter(v8, a1, a2);
  return swift_endAccess();
}

uint64_t ConversationService.ActiveTurn.registerNlResponseCode(rcId:responseCode:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A28_Nlu_External_ResponseStatusV0F4CodeOSgMd, &_s12SiriNLUTypes0A28_Nlu_External_ResponseStatusV0F4CodeOSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v12 - v7;
  v9 = type metadata accessor for Siri_Nlu_External_ResponseStatus.StatusCode();
  v10 = *(v9 - 8);
  (*(v10 + 16))(v8, a3, v9);
  (*(v10 + 56))(v8, 0, 1, v9);
  swift_beginAccess();

  specialized Dictionary.subscript.setter(v8, a1, a2);
  return swift_endAccess();
}

uint64_t ConversationService.ActiveTurn.getInput(rcId:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  v10 = *a3;
  swift_beginAccess();
  v11 = *(v5 + v10);
  if (*(v11 + 16))
  {

    v12 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
    if (v13)
    {
      v14 = v12;
      v15 = *(v11 + 56);
      v16 = a4(0);
      v17 = *(v16 - 8);
      (*(v17 + 16))(a5, v15 + *(v17 + 72) * v14, v16);

      return (*(v17 + 56))(a5, 0, 1, v16);
    }
  }

  v19 = a4(0);
  return (*(*(v19 - 8) + 56))(a5, 1, 1, v19);
}

void *ConversationService.ExecutionTaskContext.init(forceTimeout:)(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC0];
  v1[2] = MEMORY[0x1E69E7CC0];
  v1[3] = v2;
  v1[4] = 0;
  static ConversationService.ExecutionTaskContext.expirationInNanoSeconds = a1;
  return v1;
}

uint64_t ConversationService.ExecutionTaskContext.deinit()
{

  return v0;
}

uint64_t ConversationService.ExecutionTaskContext.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t ConversationService.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 64));

  outlined consume of ConversationService.State(*(v0 + 112), *(v0 + 120));

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 144));

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 232));

  outlined consume of ConversationServiceSerialFacade?(*(v0 + 312));
  return v0;
}

uint64_t ConversationService.__deallocating_deinit()
{
  ConversationService.deinit();

  return swift_deallocClassInstance();
}

uint64_t specialized Set._Variant._migrateToNative(_:removing:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;

  v5 = __CocoaSet.count.getter();
  v6 = swift_unknownObjectRetain();
  v7 = _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfC14SiriKitRuntime24RemoteConversationClientC_Tt1g5(v6, v5);
  v19 = v7;
  Hasher.init(_seed:)();
  v8 = *(a2 + 112);
  v9 = *(a2 + 120);

  String.hash(into:)();
  v10 = Hasher._finalize()();
  v11 = -1 << *(v7 + 32);
  v12 = v10 & ~v11;
  if ((*(v7 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    while (1)
    {
      v14 = *(*(v7 + 48) + 8 * v12);
      v15 = *(v14 + 112) == v8 && *(v14 + 120) == v9;
      if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v7 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:

    __break(1u);
  }

  v16 = *(*(v7 + 48) + 8 * v12);
  specialized _NativeSet._delete(at:)(v12);
  v17 = v8 == *(v16 + 112) && v9 == *(v16 + 120);
  if (v17 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
  {
    *v3 = v19;
    return v16;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t specialized ConversationService.init(conversationHandlerLocator:referenceResolutionClient:useStubCamBridge:useNoopEventSender:doWarmup:selfEmitter:serverFallbackDisablingUtils:)(uint64_t a1, uint64_t a2, int a3, int a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v92 = a7;
  v93 = a1;
  v88 = a6;
  v89 = a4;
  v90 = a5;
  LODWORD(v81) = a3;
  v94 = a2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v91 = &v79 - v13;
  v14 = type metadata accessor for DispatchTimeInterval();
  v86 = *(v14 - 8);
  v87 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v85 = &v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Logger();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v79 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102[3] = a10;
  v102[4] = a11;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v102);
  (*(*(a10 - 8) + 32))(boxed_opaque_existential_0, a8, a10);
  *(a9 + 104) = MEMORY[0x1E69E7CD0];
  *(a9 + 112) = 1;
  *(a9 + 120) = 0;
  *(a9 + 136) = 0;
  v84 = type metadata accessor for CorrectionsPlatformClient();
  swift_allocObject();
  *(a9 + 184) = CorrectionsPlatformClient.init()();
  type metadata accessor for TaskService();
  v21 = swift_allocObject();
  v21[2] = closure #1 in default argument 1 of TaskService.init(initialTask:taskIdGenerator:);
  v21[3] = 0;
  v22 = MEMORY[0x1E69E7CC0];
  v21[4] = MEMORY[0x1E69E7CC0];
  *(a9 + 192) = v21;
  v83 = type metadata accessor for ConcurrentTaskPool();
  v23 = swift_allocObject();
  *(v23 + 16) = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v23 + 24) = v24;
  *(a9 + 200) = v23;
  type metadata accessor for ConversationService.ExecutionTaskContext();
  v25 = swift_allocObject();
  v25[2] = v22;
  v25[3] = v22;
  v25[4] = 0;
  static ConversationService.ExecutionTaskContext.expirationInNanoSeconds = 60000000000;
  *(a9 + 208) = v25;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v26 = __swift_project_value_buffer(v16, static Logger.executor);
  v27 = *(v17 + 16);
  v80 = v26;
  v27(v19);
  type metadata accessor for AsyncSerialQueue(0);
  v28 = swift_allocObject();
  v28[2] = v22;
  v28[3] = 0;
  v28[4] = 0;
  v28[5] = 0;
  v29 = swift_allocObject();
  *(v29 + 16) = 0;
  v28[6] = v29;
  v28[7] = 0xD000000000000021;
  v28[8] = 0x80000001DCA80DD0;
  (*(v17 + 32))(v28 + OBJC_IVAR____TtC14SiriKitRuntime16AsyncSerialQueue_logger, v19, v16);
  *(a9 + 216) = v28;
  v82 = type metadata accessor for ExperimentationAnalyticsManager();
  *(a9 + 224) = [objc_allocWithZone(v82) init];
  *(a9 + 272) = 0;
  *(a9 + 280) = 0;
  *(a9 + 320) = 0;
  *(a9 + 328) = 0;
  *(a9 + 312) = 0;
  outlined init with copy of ReferenceResolutionClientProtocol?(v94, &v99, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMd, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMR);
  if (v100)
  {
    outlined init with take of ReferenceResolutionClientProtocol(&v99, v101);
  }

  else
  {
    outlined destroy of ReferenceResolutionClientProtocol?(&v99, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMd, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMR);
    v30 = type metadata accessor for ReferenceResolutionClient();
    v31 = ReferenceResolutionClient.__allocating_init()();
    v101[3] = v30;
    v101[4] = MEMORY[0x1E69D01B0];
    v101[0] = v31;
  }

  v32 = v93;
  outlined init with copy of ReferenceResolutionClientProtocol(v101, a9 + 144);
  if (v81)
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v33 = static StubCamBridge.shared;
    v34 = type metadata accessor for StubCamBridge();
    v35 = &protocol witness table for StubCamBridge;
  }

  else
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v33 = static CamBridgeImpl.shared;
    v34 = type metadata accessor for CamBridgeImpl();
    v35 = &protocol witness table for CamBridgeImpl;
  }

  *(a9 + 88) = v34;
  *(a9 + 96) = v35;
  *(a9 + 64) = v33;

  *(a9 + 56) = v32;

  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&dword_1DC659000, v36, v37, "[ConversationService] Ambiguity handling Feature Flag is on. Using DecisionEngine", v38, 2u);
    MEMORY[0x1E12A2F50](v38, -1, -1);
  }

  outlined init with copy of ReferenceResolutionClientProtocol(v101, &v99);
  v39 = *(a9 + 184);
  v40 = type metadata accessor for LinkMetadataProvider();
  v41 = swift_allocObject();
  v42 = objc_allocWithZone(MEMORY[0x1E69ACF60]);

  v43 = v39;

  *(v41 + 16) = [v42 init];
  type metadata accessor for LinkExpansionContextBuilder();
  v44 = swift_allocObject();
  v44[6] = v40;
  v44[7] = &protocol witness table for LinkMetadataProvider;
  v44[11] = &type metadata for LinkViewActionProvider;
  v44[12] = &protocol witness table for LinkViewActionProvider;
  v44[2] = 0;
  v44[3] = v41;
  v44[13] = 0;
  v45 = *(a9 + 200);
  outlined init with copy of ReferenceResolutionClientProtocol(a9 + 64, v98);
  v46 = one-time initialization token for instance;

  if (v46 != -1)
  {
    swift_once();
  }

  v79 = static DecisionEngineCurareDonator.instance;
  v81 = type metadata accessor for DecisionEngine();
  v47 = swift_allocObject();
  v97[3] = v84;
  v97[4] = &protocol witness table for CorrectionsPlatformClient;
  v97[0] = v43;
  v80 = v43;
  v96[3] = v83;
  v96[4] = &protocol witness table for ConcurrentTaskPool;
  v96[0] = v45;
  type metadata accessor for ServerFallbackDisablingUtils();
  *(v47 + 176) = 0;
  *(v47 + 184) = 0;
  v48 = swift_allocObject();
  v49 = objc_allocWithZone(v82);
  swift_retain_n();
  swift_retain_n();

  v48[2] = [v49 init];
  v48[3] = closure #1 in default argument 5 of ConversationService.init(conversationHandlerLocator:referenceResolutionClient:useStubCamBridge:useNoopEventSender:doWarmup:selfEmitter:serverFallbackDisablingUtils:);
  v48[4] = 0;
  *(v47 + 192) = v48;
  *(v47 + 200) = 0u;
  *(v47 + 216) = 0u;
  *(v47 + 232) = 0;
  v50 = v93;
  *(v47 + 24) = v93;
  outlined init with copy of ReferenceResolutionClientProtocol(&v99, v47 + 48);
  outlined init with copy of ReferenceResolutionClientProtocol(v96, v95);
  type metadata accessor for ConversationHelper();
  v51 = swift_allocObject();
  *(v51 + 16) = v50;
  outlined init with take of ReferenceResolutionClientProtocol(v95, v51 + 24);
  *(v47 + 32) = v51;
  v52 = swift_allocObject();
  v53 = objc_allocWithZone(MEMORY[0x1E69ACF60]);
  swift_retain_n();
  *(v52 + 16) = [v53 init];
  v54 = type metadata accessor for AppShortcutStateProvider();
  v55 = swift_allocObject();
  v84 = v45;
  v56 = v55;
  type metadata accessor for AppShortcutExpansionContextBuilder();
  v57 = swift_allocObject();
  v57[9] = v40;
  v57[10] = &protocol witness table for LinkMetadataProvider;
  v57[6] = v52;
  v57[14] = v54;
  v57[15] = &protocol witness table for AppShortcutStateProvider;
  v57[11] = v56;
  type metadata accessor for ConditionalIntentMetadataStore();
  v57[4] = 0;
  v57[5] = 0;
  v57[3] = 0;
  v58 = swift_allocObject();
  *(v58 + 16) = MEMORY[0x1E69E7CC8];
  v57[2] = v58;
  type metadata accessor for ActionGenerator();
  v59 = swift_allocObject();
  v59[3] = v57;
  v59[4] = v50;
  v59[2] = v44;
  *(v47 + 16) = v59;
  outlined init with copy of ReferenceResolutionClientProtocol(v97, v95);
  type metadata accessor for CorrectionsService();
  v60 = swift_allocObject();
  outlined init with take of ReferenceResolutionClientProtocol(v95, v60 + 16);
  *(v60 + 56) = v50;
  *(v47 + 40) = v60;
  *(v47 + 88) = v79;
  v61 = type metadata accessor for AppShortcutProvider();
  v62 = MEMORY[0x1E69CFFA8];
  *(v47 + 120) = v61;
  *(v47 + 128) = v62;
  __swift_allocate_boxed_opaque_existential_0((v47 + 96));
  AppShortcutProvider.init()();

  __swift_destroy_boxed_opaque_existential_1Tm(&v99);
  __swift_destroy_boxed_opaque_existential_1Tm(v96);
  __swift_destroy_boxed_opaque_existential_1Tm(v97);
  outlined init with take of ReferenceResolutionClientProtocol(v98, v47 + 136);
  *(a9 + 40) = v81;
  *(a9 + 48) = &protocol witness table for DecisionEngine;
  *(a9 + 16) = v47;
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  v63 = static OS_dispatch_queue.main.getter();
  if (one-time initialization token for defaultTimeout != -1)
  {
    swift_once();
  }

  v64 = v87;
  v65 = __swift_project_value_buffer(v87, static JetsamHelper.defaultTimeout);
  v67 = v85;
  v66 = v86;
  (*(v86 + 16))(v85, v65, v64);
  type metadata accessor for JetsamHelper(0);
  v68 = swift_allocObject();
  v69 = (v68 + OBJC_IVAR____TtC14SiriKitRuntime12JetsamHelper_transaction);
  *v69 = 0;
  v69[1] = 0;
  v68[2] = 0xD00000000000002CLL;
  v68[3] = 0x80000001DCA80E00;
  v68[4] = dispatch_semaphore_create(1);
  v68[5] = v63;
  (*(v66 + 32))(v68 + OBJC_IVAR____TtC14SiriKitRuntime12JetsamHelper_timeout, v67, v64);
  *(a9 + 128) = v68;
  v70 = v92;
  *(a9 + 288) = v88;
  *(a9 + 296) = v70;
  *(a9 + 304) = v89 & 1;
  outlined init with copy of ReferenceResolutionClientProtocol(v102, a9 + 232);
  v71 = v91;
  if (v90)
  {
    v72 = type metadata accessor for TaskPriority();
    (*(*(v72 - 8) + 56))(v71, 1, 1, v72);
    v73 = one-time initialization token for shared;

    if (v73 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v74 = static MessageBusActor.shared;
    v76 = _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MessageBusActor and conformance MessageBusActor, v75, type metadata accessor for MessageBusActor, &protocol conformance descriptor for MessageBusActor);
    v77 = swift_allocObject();
    v77[2] = v74;
    v77[3] = v76;
    v77[4] = a9;

    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v71, &closure #1 in ConversationService.warmup()partial apply, v77);

    outlined destroy of ReferenceResolutionClientProtocol?(v94, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMd, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMR);
  }

  else
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v94, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMd, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMR);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v102);
  __swift_destroy_boxed_opaque_existential_1Tm(v101);
  return a9;
}

uint64_t outlined consume of ConversationServiceSerialFacade?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t outlined copy of ConversationServiceSerialFacade?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t partial apply for closure #1 in ConversationService.warmup()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in ConversationService.warmup()(a1, v4, v5, v6);
}

uint64_t specialized ConversationService.State.assertTurnStarted(function:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if ((a5 & 0xC0) != 0x80)
  {
    v11[6] = v5;
    v11[7] = v6;
    _StringGuts.grow(_:)(35);

    strcpy(v11, "Cannot call ");
    BYTE5(v11[1]) = 0;
    HIWORD(v11[1]) = -5120;
    v7 = StaticString.description.getter();
    MEMORY[0x1E12A1580](v7);

    MEMORY[0x1E12A1580](0xD000000000000015, 0x80000001DCA80F50);
    v8 = v11[1];
    lazy protocol witness table accessor for type IllegalStateError and conformance IllegalStateError();
    swift_allocError();
    *v9 = v11[0];
    v9[1] = v8;
    swift_willThrow();
  }

  return a4;
}

uint64_t partial apply for closure #1 in ConversationService.bridge(didReceiveInput:from:)(uint64_t a1)
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
  v11[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in ConversationService.bridge(didReceiveInput:from:)(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t partial apply for closure #1 in ConversationService.bridge(didReceiveCheckExecutionOverrides:resultCandidateId:completion:)(uint64_t a1)
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
  v11[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in ConversationService.bridge(didReceiveCheckExecutionOverrides:resultCandidateId:completion:)(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t specialized static ConversationService.skipEmptyAsr(_:)(uint64_t a1)
{
  *(v1 + 144) = a1;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = static MessageBusActor.shared;
  *(v1 + 152) = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](specialized static ConversationService.skipEmptyAsr(_:), v2, 0);
}

{
  v2 = *(*v1 + 152);
  *(*v1 + 168) = a1;

  return MEMORY[0x1EEE6DFA0](specialized static ConversationService.skipEmptyAsr(_:), v2, 0);
}

uint64_t specialized static ConversationService.skipEmptyAsr(_:)()
{
  v1 = *(v0 + 144);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = swift_task_alloc();
  *(v0 + 160) = v4;
  *v4 = v0;
  v4[1] = specialized static ConversationService.skipEmptyAsr(_:);

  return MEMORY[0x1EEE39A78](v2, v3);
}

void specialized static ConversationService.skipEmptyAsr(_:)()
{
  v1 = *(v0 + 168);

  if (!(v1 >> 62))
  {
    v48 = v1 & 0xFFFFFFFFFFFFFF8;
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_26:
    v49 = MEMORY[0x1E69E7CC0];
    goto LABEL_27;
  }

LABEL_25:
  v48 = v1 & 0xFFFFFFFFFFFFFF8;
  v2 = __CocoaSet.count.getter();
  if (!v2)
  {
    goto LABEL_26;
  }

LABEL_3:
  v3 = 0;
  v4 = v1 & 0xC000000000000001;
  v5 = *(v0 + 168) + 32;
  v49 = MEMORY[0x1E69E7CC0];
  do
  {
    v6 = v3;
    while (1)
    {
      if (v4)
      {
        v7 = MEMORY[0x1E12A1FE0](v6, *(v0 + 168));
      }

      else
      {
        if (v6 >= *(v48 + 16))
        {
          goto LABEL_24;
        }

        v7 = *(v5 + 8 * v6);
      }

      v1 = v7;
      v3 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      v8 = RecentDialog.addViews.getter();
      v9 = [v8 views];

      if (!v9)
      {
        v12 = MEMORY[0x1E69E7CC0];
        goto LABEL_16;
      }

      v10 = RecentDialog.addViews.getter();
      v11 = [v10 views];

      if (v11)
      {
        break;
      }

      ++v6;
      if (v3 == v2)
      {
        goto LABEL_27;
      }
    }

    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SAAceView, 0x1E69C7708);
    v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v12 = specialized _arrayForceCast<A, B>(_:)(v13);

LABEL_16:

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v14 = v49;
    }

    else
    {
      v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v49[2] + 1, 1, v49);
    }

    v16 = v14[2];
    v15 = v14[3];
    v1 = v16 + 1;
    if (v16 >= v15 >> 1)
    {
      v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1, v14);
    }

    v14[2] = v1;
    v49 = v14;
    v14[v16 + 4] = v12;
  }

  while (v3 != v2);
LABEL_27:

  v17 = v49;
  v18 = v49[2];
  v19 = MEMORY[0x1E69E7CC0];
  if (!v18)
  {
LABEL_45:

    v50 = MEMORY[0x1E69E7CC0];
    v30 = *(v19 + 2);
    if (v30)
    {
      v31 = (v19 + 32);
      v32 = MEMORY[0x1E69E7CC0];
      do
      {
        outlined init with copy of Any(v31, v0 + 16);
        outlined init with take of Any((v0 + 16), (v0 + 48));
        type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SAUIAssistantUtteranceView, 0x1E69C7B08);
        if ((swift_dynamicCast() & 1) != 0 && *(v0 + 136))
        {
          MEMORY[0x1E12A1680]();
          if (*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v50 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v32 = v50;
        }

        v31 += 32;
        --v30;
      }

      while (v30);

      if (!(v32 >> 62))
      {
LABEL_54:
        v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v33)
        {
          goto LABEL_55;
        }

        goto LABEL_69;
      }
    }

    else
    {

      v32 = MEMORY[0x1E69E7CC0];
      if (!(MEMORY[0x1E69E7CC0] >> 62))
      {
        goto LABEL_54;
      }
    }

    v33 = __CocoaSet.count.getter();
    if (v33)
    {
LABEL_55:
      v34 = 0;
      v35 = &selRef_setMitigationSource_;
      do
      {
        if ((v32 & 0xC000000000000001) != 0)
        {
          v36 = MEMORY[0x1E12A1FE0](v34, v32);
        }

        else
        {
          if (v34 >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_77;
          }

          v36 = *(v32 + 8 * v34 + 32);
        }

        v37 = v36;
        v38 = v34 + 1;
        if (__OFADD__(v34, 1))
        {
          goto LABEL_76;
        }

        v39 = [v36 v35[111]];
        if (v39)
        {

          v40 = v35;
          v41 = [v37 v35[111]];
          if (!v41)
          {
            goto LABEL_80;
          }

          v42 = v41;
          v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v45 = v44;

          *(v0 + 104) = v43;
          *(v0 + 112) = v45;
          *(v0 + 120) = 0xD000000000000019;
          *(v0 + 128) = 0x80000001DCA816C0;
          lazy protocol witness table accessor for type String and conformance String();
          lazy protocol witness table accessor for type String and conformance String();
          LOBYTE(v42) = BidirectionalCollection<>.starts<A>(with:)();

          v35 = v40;
          if (v42)
          {
            v46 = 1;
            goto LABEL_70;
          }
        }

        else
        {
        }

        ++v34;
      }

      while (v38 != v33);
    }

LABEL_69:
    v46 = 0;
LABEL_70:

    v47 = *(v0 + 8);

    v47(v46);
    return;
  }

  v20 = 0;
  while (v20 < v17[2])
  {
    v21 = v49[v20 + 4];
    v22 = *(v21 + 16);
    v23 = *(v19 + 2);
    v24 = v23 + v22;
    if (__OFADD__(v23, v22))
    {
      goto LABEL_74;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v24 <= *(v19 + 3) >> 1)
    {
      if (*(v21 + 16))
      {
        goto LABEL_41;
      }
    }

    else
    {
      if (v23 <= v24)
      {
        v26 = v23 + v22;
      }

      else
      {
        v26 = v23;
      }

      v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v26, 1, v19);
      if (*(v21 + 16))
      {
LABEL_41:
        if ((*(v19 + 3) >> 1) - *(v19 + 2) < v22)
        {
          goto LABEL_78;
        }

        swift_arrayInitWithCopy();

        if (v22)
        {
          v27 = *(v19 + 2);
          v28 = __OFADD__(v27, v22);
          v29 = v27 + v22;
          if (v28)
          {
            goto LABEL_79;
          }

          *(v19 + 2) = v29;
        }

        goto LABEL_30;
      }
    }

    if (v22)
    {
      goto LABEL_75;
    }

LABEL_30:
    ++v20;
    v17 = v49;
    if (v18 == v20)
    {
      goto LABEL_45;
    }
  }

  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
}

uint64_t partial apply for closure #2 in ConversationService.bridge(didReceiveCommitResultCandidateId:from:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #2 in ConversationService.bridge(didReceiveCommitResultCandidateId:from:)(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t specialized ConversationService.bridge(didReceiveCancelRequest:from:)(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = static MessageBusActor.shared;
  v2[10] = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](specialized ConversationService.bridge(didReceiveCancelRequest:from:), v3, 0);
}

uint64_t specialized ConversationService.bridge(didReceiveCancelRequest:from:)()
{
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = v0[9];
  v2 = type metadata accessor for Logger();
  v0[11] = __swift_project_value_buffer(v2, static Logger.executor);
  Logger.debugF(file:function:)("SiriKitRuntime/ConversationService.swift", 40, 2, "bridge(didReceiveCancelRequest:from:)", 37, 2);
  v3 = *(v1 + 216);
  v0[12] = v3;
  v4 = *(*v3 + 216);

  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  v0[13] = v5;
  *v5 = v0;
  v5[1] = specialized ConversationService.bridge(didReceiveCancelRequest:from:);

  return v7();
}

{
  v1 = *(*v0 + 80);

  return MEMORY[0x1EEE6DFA0](specialized ConversationService.bridge(didReceiveCancelRequest:from:), v1, 0);
}

{
  v1 = v0[4].i64[1];
  swift_beginAccess();
  v3 = *(v1 + 120);
  if ((v3 & 0xC0) != 0x80)
  {
    goto LABEL_25;
  }

  v4 = *(v1 + 112);
  v5 = v0[4].i64[0];
  v6 = *&v4[OBJC_IVAR____TtCC14SiriKitRuntime19ConversationService10ActiveTurn_turnData];
  v7 = *&v4[OBJC_IVAR____TtCC14SiriKitRuntime19ConversationService10ActiveTurn_turnData + 8];
  v8 = *(v5 + 16);
  v9 = *(v5 + 24);
  v10 = v6 == v8 && v7 == v9;
  if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    goto LABEL_25;
  }

  v11 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v11 = v6 & 0xFFFFFFFFFFFFLL;
  }

  if (v11)
  {
    if ((v9 & 0x2000000000000000) != 0)
    {
      v12 = HIBYTE(v9) & 0xF;
    }

    else
    {
      v12 = v8 & 0xFFFFFFFFFFFFLL;
    }

    if (v12)
    {

      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_1DC659000, v13, v14, "Received CancelExecutionTurn for turn that is not currently executing. Will ignore.", v15, 2u);
        MEMORY[0x1E12A2F50](v15, -1, -1);
      }

      outlined consume of ConversationService.State(v4, v3);
      v16 = v0->i64[1];

      return v16();
    }

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v18, v19))
    {
      goto LABEL_24;
    }

    v20 = swift_slowAlloc();
    *v20 = 0;
    v21 = "Got a CancelExecutionTurn, but its executionRequestId is empty. Will proceed with cancellation.";
    goto LABEL_23;
  }

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    v21 = "Got a CancelExecutionTurn, but the current turn's executionRequestId is empty. Will proceed with cancellation.";
LABEL_23:
    _os_log_impl(&dword_1DC659000, v18, v19, v21, v20, 2u);
    MEMORY[0x1E12A2F50](v20, -1, -1);
  }

LABEL_24:

  outlined consume of ConversationService.State(v4, v3);
LABEL_25:
  v22 = static MessageBusActor.shared;
  v0[7].i64[0] = static MessageBusActor.shared;
  v23 = _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MessageBusActor and conformance MessageBusActor, v2, type metadata accessor for MessageBusActor, &protocol conformance descriptor for MessageBusActor);
  v24 = swift_task_alloc();
  v0[7].i64[1] = v24;
  v24[1] = vextq_s8(v0[4], v0[4], 8uLL);

  v25 = swift_task_alloc();
  v0[8].i64[0] = v25;
  *v25 = v0;
  v25[1] = specialized ConversationService.bridge(didReceiveCancelRequest:from:);
  v26 = MEMORY[0x1E69E7CA8] + 8;
  v27 = MEMORY[0x1E69E7CA8] + 8;
  v28 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DBF8](v25, v26, v27, v22, v23, &async function pointer to partial apply for closure #1 in ConversationService.bridge(didReceiveCancelRequest:from:), v24, v28);
}

{
  v1 = *(*v0 + 80);

  return MEMORY[0x1EEE6DFA0](specialized ConversationService.bridge(didReceiveCancelRequest:from:), v1, 0);
}

{
  v1 = *(v0 + 72);

  v2 = *(v1 + 88);
  v3 = *(v1 + 96);
  __swift_project_boxed_opaque_existential_1((v1 + 64), v2);
  (*(v3 + 72))(v2, v3);
  v4 = *(v1 + 112);
  v5 = *(v1 + 120);
  if (v5 >> 6 == 1)
  {
    v6 = *(v1 + 120);
  }

  else
  {
    v6 = 0;
  }

  if (v5 >> 6)
  {
    LOBYTE(v7) = v6;
  }

  else
  {
    v7 = *(v1 + 112);
  }

  v8 = *(v0 + 72);
  *(v8 + 112) = v7 & 1;
  *(v8 + 120) = 0;
  outlined consume of ConversationService.State(v4, v5);
  v9 = *(v0 + 8);

  return v9();
}

uint64_t specialized ConversationService.bridge(didReceiveSiriKitPluginSignal:from:)(uint64_t a1)
{
  v2[15] = a1;
  v2[16] = v1;
  v3 = type metadata accessor for OSSignpostID();
  v2[17] = v3;
  v2[18] = *(v3 - 8);
  v2[19] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = static MessageBusActor.shared;
  v2[20] = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](specialized ConversationService.bridge(didReceiveSiriKitPluginSignal:from:), v4, 0);
}

uint64_t specialized ConversationService.bridge(didReceiveSiriKitPluginSignal:from:)()
{
  v40 = v0;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 120);
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.executor);
  Logger.debugF(file:function:)("SiriKitRuntime/ConversationService.swift", 40, 2, "bridge(didReceiveSiriKitPluginSignal:from:)", 43, 2);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();

  v6 = off_1E8646000;
  if (os_log_type_enabled(v4, v5))
  {
    v7 = 0x3E6C696E3CLL;
    v8 = *(v0 + 120);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v39 = v10;
    *v9 = 136315394;
    v11 = [v8 bundleIdentifier];
    if (v11)
    {
      v12 = v11;
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;
    }

    else
    {
      v15 = 0xE500000000000000;
      v13 = 0x3E6C696E3CLL;
    }

    v16 = *(v0 + 120);
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v15, &v39);

    *(v9 + 4) = v17;
    *(v9 + 12) = 2080;
    v6 = off_1E8646000;
    v18 = [v16 refId];
    if (v18)
    {
      v19 = v18;
      v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v20;

      v6 = off_1E8646000;
    }

    else
    {
      v21 = 0xE500000000000000;
    }

    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v21, &v39);

    *(v9 + 14) = v22;
    _os_log_impl(&dword_1DC659000, v4, v5, "SiriKitPluginSignal received with bundleIdentifier=%s and refId=%s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v10, -1, -1);
    MEMORY[0x1E12A2F50](v9, -1, -1);
  }

  v23 = [*(v0 + 120) bundleIdentifier];
  if (v23)
  {
    v24 = *(v0 + 120);
    v25 = v23;
    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;

    *(v0 + 168) = v28;
    v29 = [v24 v6[426]];
    if (v29)
    {
      v30 = v29;
      v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v33 = v32;

      *(v0 + 176) = v31;
      *(v0 + 184) = v33;
      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v34 = static Log.executor;
      *(v0 + 192) = static Log.executor;
      v35 = v34;
      OSSignpostID.init(log:)();
      static os_signpost_type_t.begin.getter();
      os_signpost(_:dso:log:name:signpostID:)();
      v36 = swift_task_alloc();
      *(v0 + 200) = v36;
      *v36 = v0;
      v36[1] = specialized ConversationService.bridge(didReceiveSiriKitPluginSignal:from:);

      return ConversationHandlerLocator.handler(id:)(v0 + 56, v26, v28);
    }
  }

  else
  {
  }

  v38 = *(v0 + 8);

  return v38();
}

{
  v1 = *(*v0 + 160);

  return MEMORY[0x1EEE6DFA0](specialized ConversationService.bridge(didReceiveSiriKitPluginSignal:from:), v1, 0);
}

{
  if (*(v0 + 80))
  {
    outlined init with take of ReferenceResolutionClientProtocol((v0 + 56), v0 + 16);
    v1 = *(v0 + 40);
    v2 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v1);
    v11 = (*(v2 + 24) + **(v2 + 24));
    v3 = swift_task_alloc();
    *(v0 + 208) = v3;
    *v3 = v0;
    v3[1] = specialized ConversationService.bridge(didReceiveSiriKitPluginSignal:from:);
    v5 = *(v0 + 176);
    v4 = *(v0 + 184);

    return v11(v5, v4, v1, v2);
  }

  else
  {

    outlined destroy of ReferenceResolutionClientProtocol?(v0 + 56, &_s14SiriKitRuntime19ConversationHandler_pSgMd, &_s14SiriKitRuntime19ConversationHandler_pSgMR);
    v8 = *(v0 + 144);
    v7 = *(v0 + 152);
    v9 = *(v0 + 136);
    static os_signpost_type_t.end.getter();
    os_signpost(_:dso:log:name:signpostID:)();
    (*(v8 + 8))(v7, v9);

    v10 = *(v0 + 8);

    return v10();
  }
}

{
  v1 = *(*v0 + 160);

  return MEMORY[0x1EEE6DFA0](specialized ConversationService.bridge(didReceiveSiriKitPluginSignal:from:), v1, 0);
}

{

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[17];
  static os_signpost_type_t.end.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t partial apply for closure #1 in ConversationService.drainAsyncWork()(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in ConversationService.drainAsyncWork()(a1, a2, v2);
}

uint64_t assignWithCopy for ConversationService.State(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  outlined copy of ConversationService.State(*a2, v4);
  v5 = *a1;
  *a1 = v3;
  v6 = *(a1 + 8);
  *(a1 + 8) = v4;
  outlined consume of ConversationService.State(v5, v6);
  return a1;
}

uint64_t assignWithTake for ConversationService.State(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v4 = *a1;
  *a1 = *a2;
  v5 = *(a1 + 8);
  *(a1 + 8) = v3;
  outlined consume of ConversationService.State(v4, v5);
  return a1;
}

uint64_t getEnumTagSinglePayload for ConversationService.State(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >> 1 >= 0xFFF && *(a1 + 9))
  {
    return (*a1 + 8190);
  }

  v3 = ((*(a1 + 8) >> 6) | (4 * ((*a1 >> 58) & 0x3C | (*a1 >> 1) & 3 | (((*(a1 + 8) >> 1) & 0x1F) << 6)))) ^ 0x1FFF;
  if (v3 >= 0x1FFD)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for ConversationService.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >> 1 > 0xFFE)
  {
    *(result + 8) = 0;
    *result = a2 - 8190;
    if (a3 >> 1 >= 0xFFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >> 1 >= 0xFFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x7FF | ((-a2 & 0x1FFF) << 11);
      *result = ((v3 << 58) | (2 * v3)) & 0xF000000000000007;
      *(result + 8) = (v3 >> 5) & 0xFE;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for ConversationService.State(uint64_t result, char a2)
{
  v2 = *(result + 8) & 1 | (a2 << 6);
  *result &= 0xFFFFFFFFFFFFFF9uLL;
  *(result + 8) = v2;
  return result;
}

char *initializeBufferWithCopyOfBuffer for ConversationService.EagerResult(char *a1, char *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v13 = *a2;
    *a1 = *a2;
    a1 = (v13 + ((v5 + 16) & ~v5));

    return a1;
  }

  v6 = *(a3 - 8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:
      v14 = type metadata accessor for ServerFallbackReason();
      (*(*(v14 - 8) + 16))(a1, a2, v14);
      goto LABEL_14;
    case 1:
      *a1 = *a2;

LABEL_14:
      swift_storeEnumTagMultiPayload();
      return a1;
    case 0:
      v8 = *(a2 + 1);
      *a1 = *a2;
      *(a1 + 1) = v8;

      v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime21ConversationUserInputC_AA06RemoteD6ClientC0aB4Flow0F0VSgtMd, &_s14SiriKitRuntime21ConversationUserInputC_AA06RemoteD6ClientC0aB4Flow0F0VSgtMR) + 64);
      v10 = type metadata accessor for Input();
      v11 = *(v10 - 8);
      if ((*(v11 + 48))(&a2[v9], 1, v10))
      {
        v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
        memcpy(&a1[v9], &a2[v9], *(*(v12 - 8) + 64));
      }

      else
      {
        (*(v11 + 16))(&a1[v9], &a2[v9], v10);
        (*(v11 + 56))(&a1[v9], 0, 1, v10);
      }

      goto LABEL_14;
  }

  v15 = *(v6 + 64);

  return memcpy(a1, a2, v15);
}

char *initializeWithCopy for ConversationService.EagerResult(char *a1, char *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:
      v12 = type metadata accessor for ServerFallbackReason();
      (*(*(v12 - 8) + 16))(a1, a2, v12);
      goto LABEL_12;
    case 1:
      *a1 = *a2;

LABEL_12:
      swift_storeEnumTagMultiPayload();
      return a1;
    case 0:
      v7 = *(a2 + 1);
      *a1 = *a2;
      *(a1 + 1) = v7;

      v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime21ConversationUserInputC_AA06RemoteD6ClientC0aB4Flow0F0VSgtMd, &_s14SiriKitRuntime21ConversationUserInputC_AA06RemoteD6ClientC0aB4Flow0F0VSgtMR) + 64);
      v9 = type metadata accessor for Input();
      v10 = *(v9 - 8);
      if ((*(v10 + 48))(&a2[v8], 1, v9))
      {
        v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
        memcpy(&a1[v8], &a2[v8], *(*(v11 - 8) + 64));
      }

      else
      {
        (*(v10 + 16))(&a1[v8], &a2[v8], v9);
        (*(v10 + 56))(&a1[v8], 0, 1, v9);
      }

      goto LABEL_12;
  }

  v13 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v13);
}

char *assignWithCopy for ConversationService.EagerResult(char *a1, char *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  outlined destroy of ConversationService.EagerResult(a1, type metadata accessor for ConversationService.EagerResult);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:
      v11 = type metadata accessor for ServerFallbackReason();
      (*(*(v11 - 8) + 16))(a1, a2, v11);
      goto LABEL_13;
    case 1:
      *a1 = *a2;

LABEL_13:
      swift_storeEnumTagMultiPayload();
      return a1;
    case 0:
      *a1 = *a2;
      *(a1 + 1) = *(a2 + 1);

      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime21ConversationUserInputC_AA06RemoteD6ClientC0aB4Flow0F0VSgtMd, &_s14SiriKitRuntime21ConversationUserInputC_AA06RemoteD6ClientC0aB4Flow0F0VSgtMR) + 64);
      v8 = type metadata accessor for Input();
      v9 = *(v8 - 8);
      if ((*(v9 + 48))(&a2[v7], 1, v8))
      {
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
        memcpy(&a1[v7], &a2[v7], *(*(v10 - 8) + 64));
      }

      else
      {
        (*(v9 + 16))(&a1[v7], &a2[v7], v8);
        (*(v9 + 56))(&a1[v7], 0, 1, v8);
      }

      goto LABEL_13;
  }

  v12 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v12);
}

char *initializeWithTake for ConversationService.EagerResult(char *a1, char *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v11 = type metadata accessor for ServerFallbackReason();
    (*(*(v11 - 8) + 32))(a1, a2, v11);
LABEL_10:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  if (!EnumCaseMultiPayload)
  {
    *a1 = *a2;
    v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime21ConversationUserInputC_AA06RemoteD6ClientC0aB4Flow0F0VSgtMd, &_s14SiriKitRuntime21ConversationUserInputC_AA06RemoteD6ClientC0aB4Flow0F0VSgtMR) + 64);
    v8 = type metadata accessor for Input();
    v9 = *(v8 - 8);
    if ((*(v9 + 48))(&a2[v7], 1, v8))
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
      memcpy(&a1[v7], &a2[v7], *(*(v10 - 8) + 64));
    }

    else
    {
      (*(v9 + 32))(&a1[v7], &a2[v7], v8);
      (*(v9 + 56))(&a1[v7], 0, 1, v8);
    }

    goto LABEL_10;
  }

  v12 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v12);
}

char *assignWithTake for ConversationService.EagerResult(char *a1, char *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  outlined destroy of ConversationService.EagerResult(a1, type metadata accessor for ConversationService.EagerResult);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v11 = type metadata accessor for ServerFallbackReason();
    (*(*(v11 - 8) + 32))(a1, a2, v11);
LABEL_11:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  if (!EnumCaseMultiPayload)
  {
    *a1 = *a2;
    v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime21ConversationUserInputC_AA06RemoteD6ClientC0aB4Flow0F0VSgtMd, &_s14SiriKitRuntime21ConversationUserInputC_AA06RemoteD6ClientC0aB4Flow0F0VSgtMR) + 64);
    v8 = type metadata accessor for Input();
    v9 = *(v8 - 8);
    if ((*(v9 + 48))(&a2[v7], 1, v8))
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
      memcpy(&a1[v7], &a2[v7], *(*(v10 - 8) + 64));
    }

    else
    {
      (*(v9 + 32))(&a1[v7], &a2[v7], v8);
      (*(v9 + 56))(&a1[v7], 0, 1, v8);
    }

    goto LABEL_11;
  }

  v12 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v12);
}

void type metadata completion function for ConversationService.EagerResult(uint64_t a1)
{
  type metadata accessor for Input?(319);
  if (v1 <= 0x3F)
  {
    v2 = MEMORY[0x1E69E5D20] + 64;
    swift_getTupleTypeLayout3();
    v6 = &v5;
    v7 = v2;
    v3 = type metadata accessor for ServerFallbackReason();
    if (v4 <= 0x3F)
    {
      v8 = *(v3 - 8) + 64;
      swift_initEnumMetadataMultiPayload();
    }
  }
}

void type metadata accessor for Input?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Input?)
  {
    type metadata accessor for Input();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Input?);
    }
  }
}

uint64_t type metadata completion function for ConversationService.ActiveTurn(uint64_t a1)
{
  result = type metadata accessor for RemoteConversationTurnData(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for UUID();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t partial apply for closure #2 in closure #1 in ConversationService.drainAsyncWork()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #2 in closure #1 in ConversationService.drainAsyncWork()(a1, v4, v5, v6);
}

uint64_t partial apply for closure #1 in closure #1 in ConversationService.drainAsyncWork()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in closure #1 in ConversationService.drainAsyncWork()(a1, v4, v5, v6);
}

uint64_t partial apply for closure #1 in ConversationService.bridge(didReceiveCancelRequest:from:)(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in ConversationService.bridge(didReceiveCancelRequest:from:)(a1, a2, v7, v6);
}

uint64_t partial apply for closure #1 in closure #1 in ConversationService.bridge(didReceiveCancelRequest:from:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in closure #1 in ConversationService.bridge(didReceiveCancelRequest:from:)(a1, v4, v5, v7, v6);
}

uint64_t partial apply for closure #1 in RemoteConversationClient.cancel(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 16);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in RemoteConversationClient.cancel(_:)(a1, a2, a3, v8);
}

uint64_t closure #1 in $defer #1 () in ConversationService.handleConversationOrSendErrorToBridge(_:needsPrepare:speechData:turnData:bridge:userInput:)partial apply()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return closure #1 in $defer #1 () in ConversationService.handleConversationOrSendErrorToBridge(_:needsPrepare:speechData:turnData:bridge:userInput:)();
}

uint64_t partial apply for closure #1 in closure #1 in ConversationService.bridge(didReceiveInput:from:)(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in closure #1 in ConversationService.bridge(didReceiveInput:from:)(a1, a2, v7, v6);
}

uint64_t objectdestroy_160Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in ConversationService.bridge(didReceiveInput:from:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in closure #1 in closure #1 in ConversationService.bridge(didReceiveInput:from:)(a1, v4, v5, v7, v6);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzlTRSb_TG5TA(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRSb_TG5(a1, v4);
}

uint64_t objectdestroy_272Tm()
{
  v1 = type metadata accessor for RemoteConversationTurnData(0);
  v2 = *(*(v1 - 1) + 80);
  v15 = *(*(v1 - 1) + 64);
  v16 = (v2 + 16) & ~v2;
  v17 = v0;
  v3 = v0 + v16;

  v4 = v1[6];
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 48);
  if (!v7(v0 + v16 + v4, 1, v5))
  {
    (*(v6 + 8))(v3 + v4, v5);
  }

  v8 = v1[7];
  v9 = type metadata accessor for SessionConfiguration();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v3 + v8, 1, v9))
  {
    (*(v10 + 8))(v3 + v8, v9);
  }

  v11 = v1[9];
  if (!v7(v3 + v11, 1, v5))
  {
    (*(v6 + 8))(v3 + v11, v5);
  }

  v12 = (v3 + v1[13]);
  v13 = v12[1];
  if (v13 >> 60 != 15)
  {
    outlined consume of Data._Representation(*v12, v13);
  }

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v17, ((v15 + v16 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t outlined consume of RemoteConversationClient??(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t partial apply for closure #2 in closure #1 in ConversationService.bridge(didReceiveStartExecutionTurn:from:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #2 in closure #1 in ConversationService.bridge(didReceiveStartExecutionTurn:from:)(a1, v4, v5, v6);
}

uint64_t ConversationServiceSerialFacade.bridge(didReceiveStartExecutionTurn:from:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  v12[2] = a4;
  v12[3] = a5;
  v12[4] = a6;
  v12[5] = a1;
  v12[6] = a2;
  v12[7] = a3;

  v13 = a1;
  swift_unknownObjectRetain();
  v14 = StaticString.description.getter();
  v16 = v15;
  v17 = swift_allocObject();
  *(v17 + 16) = &async function pointer to partial apply for closure #1 in ConversationServiceSerialFacade.bridge(didReceiveStartExecutionTurn:from:);
  *(v17 + 24) = v12;
  *(v17 + 32) = "bridge(didReceiveStartExecutionTurn:from:)";
  *(v17 + 40) = 42;
  *(v17 + 48) = 2;
  v18 = *(*a5 + 208);

  v18(v14, v16, &async function pointer to partial apply for closure #1 in ConversationServiceSerialFacade.doStartTurnWork(function:work:), v17);
}

uint64_t ConversationServiceSerialFacade.bridge(didReceiveRequestContextData:from:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  v12[2] = a4;
  v12[3] = a5;
  v12[4] = a6;
  v12[5] = a1;
  v12[6] = a2;
  v12[7] = a3;

  v13 = a1;
  swift_unknownObjectRetain();
  v14 = StaticString.description.getter();
  v16 = v15;
  v17 = swift_allocObject();
  *(v17 + 16) = &async function pointer to partial apply for closure #1 in ConversationServiceSerialFacade.bridge(didReceiveRequestContextData:from:);
  *(v17 + 24) = v12;
  *(v17 + 32) = "bridge(didReceiveRequestContextData:from:)";
  *(v17 + 40) = 42;
  *(v17 + 48) = 2;
  v18 = *(*a5 + 208);

  v18(v14, v16, &closure #1 in ConversationServiceSerialFacade.doStartTurnWork(function:work:)partial apply, v17);
}

uint64_t ConversationServiceSerialFacade.bridge(didReceiveInput:from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  v12[2] = a4;
  v12[3] = a5;
  v12[4] = a6;
  v12[5] = a1;
  v12[6] = a2;
  v12[7] = a3;

  swift_unknownObjectRetain();
  v13 = StaticString.description.getter();
  v15 = v14;
  v16 = swift_allocObject();
  *(v16 + 16) = a4;
  *(v16 + 24) = a5;
  *(v16 + 32) = a6;
  *(v16 + 40) = "bridge(didReceiveInput:from:)";
  *(v16 + 48) = 29;
  *(v16 + 56) = 2;
  *(v16 + 64) = &async function pointer to partial apply for closure #1 in ConversationServiceSerialFacade.bridge(didReceiveInput:from:);
  *(v16 + 72) = v12;
  v17 = *(*a5 + 208);

  v17(v13, v15, &async function pointer to partial apply for closure #1 in ConversationServiceSerialFacade.doExecutionWork(function:work:), v16);
}

uint64_t ConversationServiceSerialFacade.bridge(didReceiveClearContext:from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  v12[2] = a4;
  v12[3] = a5;
  v12[4] = a6;
  v12[5] = a1;
  v12[6] = a2;
  v12[7] = a3;

  swift_unknownObjectRetain();
  v13 = StaticString.description.getter();
  v15 = v14;
  v16 = swift_allocObject();
  *(v16 + 16) = &async function pointer to partial apply for closure #1 in ConversationServiceSerialFacade.bridge(didReceiveClearContext:from:);
  *(v16 + 24) = v12;
  *(v16 + 32) = "bridge(didReceiveClearContext:from:)";
  *(v16 + 40) = 36;
  *(v16 + 48) = 2;
  v17 = *(*a5 + 208);

  v17(v13, v15, &closure #1 in ConversationServiceSerialFacade.doStartTurnWork(function:work:)partial apply, v16);
}

uint64_t ConversationServiceSerialFacade.bridge(didReceiveCancelRequest:from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  v12[2] = a4;
  v12[3] = a5;
  v12[4] = a6;
  v12[5] = a1;
  v12[6] = a2;
  v12[7] = a3;

  swift_unknownObjectRetain();
  v13 = StaticString.description.getter();
  v15 = v14;
  v16 = swift_allocObject();
  *(v16 + 16) = &async function pointer to partial apply for closure #1 in ConversationServiceSerialFacade.bridge(didReceiveCancelRequest:from:);
  *(v16 + 24) = v12;
  *(v16 + 32) = "bridge(didReceiveCancelRequest:from:)";
  *(v16 + 40) = 37;
  *(v16 + 48) = 2;
  v17 = *(*a5 + 208);

  v17(v13, v15, &closure #1 in ConversationServiceSerialFacade.doStartTurnWork(function:work:)partial apply, v16);
}

uint64_t ConversationServiceSerialFacade.checkExecutionOverrides(context:resultCandidateId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[5] = a3;
  v6[6] = a4;
  v6[3] = a1;
  v6[4] = a2;
  return MEMORY[0x1EEE6DFA0](ConversationServiceSerialFacade.checkExecutionOverrides(context:resultCandidateId:), 0, 0);
}

uint64_t ConversationServiceSerialFacade.checkExecutionOverrides(context:resultCandidateId:)()
{
  v1 = *(v0 + 64);
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  v4 = *(v0 + 24);
  v5 = swift_task_alloc();
  *(v0 + 72) = v5;
  *(v5 + 16) = *(v0 + 48);
  *(v5 + 32) = v1;
  *(v5 + 40) = v4;
  *(v5 + 48) = v3;
  *(v5 + 56) = v2;
  v6 = swift_task_alloc();
  *(v0 + 80) = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime23ExecutionOverrideResultCSgMd, &_s14SiriKitRuntime23ExecutionOverrideResultCSgMR);
  *v6 = v0;
  v6[1] = ConversationServiceSerialFacade.checkExecutionOverrides(context:resultCandidateId:);

  return MEMORY[0x1EEE6DDE0](v0 + 16, 0, 0, 0xD000000000000033, 0x80000001DCA80B80, partial apply for closure #1 in ConversationServiceSerialFacade.checkExecutionOverrides(context:resultCandidateId:), v5, v7);
}

{

  return MEMORY[0x1EEE6DFA0](protocol witness for AceServiceInvokerAsync.recentDialogs() in conformance AceServiceInvokerImpl, 0, 0);
}

uint64_t ConversationServiceSerialFacade.bridge(didReceiveCommitResultCandidateId:from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  v12[2] = a4;
  v12[3] = a5;
  v12[4] = a6;
  v12[5] = a1;
  v12[6] = a2;
  v12[7] = a3;

  swift_unknownObjectRetain();
  v13 = StaticString.description.getter();
  v15 = v14;
  v16 = swift_allocObject();
  *(v16 + 16) = a4;
  *(v16 + 24) = a5;
  *(v16 + 32) = a6;
  *(v16 + 40) = "bridge(didReceiveCommitResultCandidateId:from:)";
  *(v16 + 48) = 47;
  *(v16 + 56) = 2;
  *(v16 + 64) = &async function pointer to partial apply for closure #1 in ConversationServiceSerialFacade.bridge(didReceiveCommitResultCandidateId:from:);
  *(v16 + 72) = v12;
  v17 = *(*a5 + 208);

  v17(v13, v15, &closure #1 in ConversationServiceSerialFacade.doExecutionWork(function:work:)partial apply, v16);
}

uint64_t ConversationServiceSerialFacade.bridge(didReceiveRSKE:sessionConfiguration:withRequestContextData:withRecognizedUser:withUserMeetingSessionThreshold:withRemoteRequestWasMadeInSession:from:)(void *a1, uint64_t a2, void *a3, void *a4, void *a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v45 = a7;
  v46 = a8;
  v44 = a6;
  v42 = a4;
  v43 = a5;
  v40 = a1;
  v41 = a3;
  v39 = a9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v16 = &v39 - v15;
  outlined init with copy of SessionConfiguration?(a2, &v39 - v15);
  v17 = (*(v13 + 80) + 48) & ~*(v13 + 80);
  v18 = (v14 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v18 + 15) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  v20[2] = a9;
  v20[3] = a10;
  v21 = v40;
  v20[4] = a11;
  v20[5] = v21;
  outlined init with take of SessionConfiguration?(v16, v20 + v17);
  v22 = v41;
  *(v20 + v18) = v41;
  v24 = v42;
  v23 = v43;
  *(v20 + v19) = v42;
  v25 = v20 + ((v19 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v25 = v23;
  v25[8] = v44;
  v26 = (v20 + ((v19 + 31) & 0xFFFFFFFFFFFFFFF8));
  v27 = v46;
  *v26 = v45;
  v26[1] = v27;
  v28 = v23;
  swift_unknownObjectRetain();
  v29 = v39;

  v30 = v21;
  v31 = v22;
  v32 = v24;
  v33 = StaticString.description.getter();
  v35 = v34;
  v36 = swift_allocObject();
  *(v36 + 16) = v29;
  *(v36 + 24) = a10;
  *(v36 + 32) = a11;
  *(v36 + 40) = "bridge(didReceiveRSKE:sessionConfiguration:withRequestContextData:withRecognizedUser:withUserMeetingSessionThreshold:withRemoteRequestWasMadeInSession:from:)";
  *(v36 + 48) = 157;
  *(v36 + 56) = 2;
  *(v36 + 64) = &async function pointer to partial apply for closure #1 in ConversationServiceSerialFacade.bridge(didReceiveRSKE:sessionConfiguration:withRequestContextData:withRecognizedUser:withUserMeetingSessionThreshold:withRemoteRequestWasMadeInSession:from:);
  *(v36 + 72) = v20;
  v37 = *(*a10 + 208);

  v37(v33, v35, &closure #1 in ConversationServiceSerialFacade.doExecutionWork(function:work:)partial apply, v36);
}

uint64_t ConversationServiceSerialFacade.bridge(didReceiveSiriKitPluginSignal:from:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  v12[2] = a4;
  v12[3] = a5;
  v12[4] = a6;
  v12[5] = a1;
  v12[6] = a2;
  v12[7] = a3;

  v13 = a1;
  swift_unknownObjectRetain();
  v14 = StaticString.description.getter();
  v16 = v15;
  v17 = swift_allocObject();
  *(v17 + 16) = a4;
  *(v17 + 24) = a5;
  *(v17 + 32) = a6;
  *(v17 + 40) = "bridge(didReceiveSiriKitPluginSignal:from:)";
  *(v17 + 48) = 43;
  *(v17 + 56) = 2;
  *(v17 + 64) = &async function pointer to partial apply for closure #1 in ConversationServiceSerialFacade.bridge(didReceiveSiriKitPluginSignal:from:);
  *(v17 + 72) = v12;
  v18 = *(*a5 + 208);

  v18(v14, v16, &closure #1 in ConversationServiceSerialFacade.doExecutionWork(function:work:)partial apply, v17);
}

void ConversationServiceSerialFacade.init(wrapping:)(uint64_t a1)
{
  v11[1] = a1;
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v1, static Logger.executor);
  v11[0] = *(v2 + 16);
  (v11[0])(v4, v5, v1);
  type metadata accessor for AsyncSerialQueue(0);
  v6 = swift_allocObject();
  *(v6 + 2) = MEMORY[0x1E69E7CC0];
  *(v6 + 3) = 0;
  *(v6 + 4) = 0;
  *(v6 + 5) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v6 + 6) = v7;
  *(v6 + 7) = 0xD000000000000022;
  *(v6 + 8) = 0x80000001DCA80E60;
  v8 = *(v2 + 32);
  v8(&v6[OBJC_IVAR____TtC14SiriKitRuntime16AsyncSerialQueue_logger], v4, v1);
  (v11[0])(v4, v5, v1);
  v9 = swift_allocObject();
  *(v9 + 2) = MEMORY[0x1E69E7CC0];
  *(v9 + 3) = 0;
  *(v9 + 4) = 0;
  *(v9 + 5) = 0;
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v9 + 6) = v10;
  *(v9 + 7) = 0xD000000000000020;
  *(v9 + 8) = 0x80000001DCA80E90;
  v8(&v9[OBJC_IVAR____TtC14SiriKitRuntime16AsyncSerialQueue_logger], v4, v1);
}

uint64_t closure #1 in ConversationServiceSerialFacade.bridge(didReceiveInput:from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = swift_task_alloc();
  *(v6 + 16) = v10;
  *v10 = v6;
  v10[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return ConversationService.bridge(didReceiveInput:from:)(a4, a5, a6);
}

uint64_t ConversationServiceSerialFacade.bridge(didReceiveCheckExecutionOverrides:resultCandidateId:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = swift_allocObject();
  v16[2] = a6;
  v16[3] = a7;
  v16[4] = a8;
  v16[5] = a1;
  v16[6] = a2;
  v16[7] = a3;
  v16[8] = a4;
  v16[9] = a5;

  v17 = StaticString.description.getter();
  v19 = v18;
  v20 = swift_allocObject();
  *(v20 + 16) = a6;
  *(v20 + 24) = a7;
  *(v20 + 32) = a8;
  *(v20 + 40) = "bridge(didReceiveCheckExecutionOverrides:resultCandidateId:completion:)";
  *(v20 + 48) = 71;
  *(v20 + 56) = 2;
  *(v20 + 64) = &async function pointer to partial apply for closure #1 in ConversationServiceSerialFacade.bridge(didReceiveCheckExecutionOverrides:resultCandidateId:completion:);
  *(v20 + 72) = v16;
  v21 = *(*a7 + 208);

  v21(v17, v19, &closure #1 in ConversationServiceSerialFacade.doExecutionWork(function:work:)partial apply, v20);
}

uint64_t closure #1 in ConversationServiceSerialFacade.bridge(didReceiveCheckExecutionOverrides:resultCandidateId:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a7;
  v8[10] = a8;
  v8[7] = a5;
  v8[8] = a6;
  v8[5] = a1;
  v8[6] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v8[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in ConversationServiceSerialFacade.bridge(didReceiveCheckExecutionOverrides:resultCandidateId:completion:), 0, 0);
}

uint64_t closure #1 in ConversationServiceSerialFacade.bridge(didReceiveCheckExecutionOverrides:resultCandidateId:completion:)()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in ConversationServiceSerialFacade.bridge(didReceiveCheckExecutionOverrides:resultCandidateId:completion:), v0, 0);
}

{
  v1 = *(v0 + 88);
  v3 = *(v0 + 56);
  v2 = *(v0 + 64);
  v10 = *(v0 + 72);
  v11 = *(v0 + 40);
  v4 = type metadata accessor for TaskPriority();
  (*(*(v4 - 8) + 56))(v1, 1, 1, v4);
  v5 = static MessageBusActor.shared;
  v6 = lazy protocol witness table accessor for type MessageBusActor and conformance MessageBusActor();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v7 + 24) = v6;
  *(v7 + 32) = v10;
  *(v7 + 48) = v11;
  *(v7 + 64) = v3;
  *(v7 + 72) = v2;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v1, &async function pointer to partial apply for closure #1 in ConversationService.bridge(didReceiveCheckExecutionOverrides:resultCandidateId:completion:), v7);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t closure #1 in ConversationServiceSerialFacade.checkExecutionOverrides(context:resultCandidateId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v33 = a6;
  v34 = a7;
  v31 = a4;
  v32 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14SiriKitRuntime23ExecutionOverrideResultCSgs5NeverOGMd, &_sScCy14SiriKitRuntime23ExecutionOverrideResultCSgs5NeverOGMR);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v31 - v14;
  (*(v11 + 16))(&v31 - v14, a1, v10, v13);
  v16 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v17 = (v12 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v17 + 31) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  (*(v11 + 32))(v19 + v16, v15, v10);
  v20 = (v19 + v17);
  *v20 = a2;
  v20[1] = a3;
  v22 = v31;
  v21 = v32;
  v20[2] = v31;
  *(v19 + v18) = v21;
  v23 = (v19 + ((v18 + 15) & 0xFFFFFFFFFFFFFFF8));
  v24 = v34;
  *v23 = v33;
  v23[1] = v24;

  v25 = StaticString.description.getter();
  v27 = v26;
  v28 = swift_allocObject();
  *(v28 + 16) = a2;
  *(v28 + 24) = a3;
  *(v28 + 32) = v22;
  *(v28 + 40) = "checkExecutionOverrides(context:resultCandidateId:)";
  *(v28 + 48) = 51;
  *(v28 + 56) = 2;
  *(v28 + 64) = &async function pointer to partial apply for closure #1 in closure #1 in ConversationServiceSerialFacade.checkExecutionOverrides(context:resultCandidateId:);
  *(v28 + 72) = v19;
  v29 = *(*a3 + 208);

  v29(v25, v27, &closure #1 in ConversationServiceSerialFacade.doExecutionWork(function:work:)partial apply, v28);
}

uint64_t closure #1 in closure #1 in ConversationServiceSerialFacade.checkExecutionOverrides(context:resultCandidateId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 24) = a1;
  v11 = swift_task_alloc();
  *(v7 + 32) = v11;
  *v11 = v7;
  v11[1] = closure #1 in closure #1 in ConversationServiceSerialFacade.checkExecutionOverrides(context:resultCandidateId:);

  return ConversationService.checkExecutionOverrides(context:resultCandidateId:)(a5, a6, a7);
}

uint64_t closure #1 in closure #1 in ConversationServiceSerialFacade.checkExecutionOverrides(context:resultCandidateId:)(uint64_t a1)
{
  *(*v1 + 40) = a1;

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in ConversationServiceSerialFacade.checkExecutionOverrides(context:resultCandidateId:), 0, 0);
}

uint64_t closure #1 in closure #1 in ConversationServiceSerialFacade.checkExecutionOverrides(context:resultCandidateId:)()
{
  v0[2] = v0[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14SiriKitRuntime23ExecutionOverrideResultCSgs5NeverOGMd, &_sScCy14SiriKitRuntime23ExecutionOverrideResultCSgs5NeverOGMR);
  CheckedContinuation.resume(returning:)();
  v1 = v0[1];

  return v1();
}

uint64_t closure #1 in ConversationServiceSerialFacade.bridge(didReceiveCancelRequest:from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = closure #1 in ConversationServiceSerialFacade.bridge(didReceiveStartExecutionTurn:from:);

  return specialized ConversationService.bridge(didReceiveCancelRequest:from:)(a4);
}

uint64_t closure #1 in ConversationServiceSerialFacade.bridge(didReceiveCommitResultCandidateId:from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = swift_task_alloc();
  *(v6 + 16) = v10;
  *v10 = v6;
  v10[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return ConversationService.bridge(didReceiveCommitResultCandidateId:from:)(a4, a5, a6);
}

uint64_t closure #1 in ConversationServiceSerialFacade.bridge(didReceiveSiriKitPluginSignal:from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = _s14SiriKitRuntime21ParaphraseProbeResultOIegHr_ACs5Error_pIegHTrzo_TRTQ0_;

  return specialized ConversationService.bridge(didReceiveSiriKitPluginSignal:from:)(a4);
}

uint64_t outlined init with copy of SessionConfiguration?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in ConversationServiceSerialFacade.bridge(didReceiveCheckExecutionOverrides:resultCandidateId:completion:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v9 = v0[8];
  v8 = v0[9];
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in ConversationServiceSerialFacade.bridge(didReceiveCheckExecutionOverrides:resultCandidateId:completion:)(v2, v3, v4, v5, v6, v7, v9, v8);
}

uint64_t destroy for ConversationServiceSerialFacade()
{
}

void *initializeBufferWithCopyOfBuffer for ConversationServiceSerialFacade(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  a1[2] = a2[2];

  return a1;
}

void *assignWithCopy for ConversationServiceSerialFacade(void *a1, void *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  a1[2] = a2[2];

  return a1;
}

uint64_t assignWithTake for ConversationServiceSerialFacade(uint64_t a1, uint64_t a2)
{

  *a1 = *a2;

  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t partial apply for closure #1 in closure #1 in ConversationServiceSerialFacade.checkExecutionOverrides(context:resultCandidateId:)()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14SiriKitRuntime23ExecutionOverrideResultCSgs5NeverOGMd, &_sScCy14SiriKitRuntime23ExecutionOverrideResultCSgs5NeverOGMR) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 31) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v0 + v4);
  v8 = *v7;
  v9 = v7[1];
  v10 = *(v0 + v5);
  v11 = v7[2];
  v12 = *(v0 + v6);
  v13 = *(v0 + v6 + 8);
  v14 = swift_task_alloc();
  *(v1 + 16) = v14;
  *v14 = v1;
  v14[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return closure #1 in closure #1 in ConversationServiceSerialFacade.checkExecutionOverrides(context:resultCandidateId:)(v0 + v3, v8, v9, v11, v10, v12, v13);
}

uint64_t key path setter for CurrentRequest.flowTaskMetadata : CurrentRequest(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriFlowEnvironment0B12TaskMetadataVSgMd, &_s19SiriFlowEnvironment0B12TaskMetadataVSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  outlined init with copy of FlowTaskMetadata?(a1, &v5 - v3);
  return CurrentRequest.flowTaskMetadata.setter();
}

uint64_t keypath_set_91Tm(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

uint64_t outlined init with copy of FlowTaskMetadata?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriFlowEnvironment0B12TaskMetadataVSgMd, &_s19SiriFlowEnvironment0B12TaskMetadataVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t PommesInfo.__allocating_init(pommesResponse:pommesError:pommesSearchReason:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(a2, v6 + OBJC_IVAR____TtC14SiriKitRuntime10PommesInfo_pommesError, &_s16SiriMessageTypes11PommesErrorOSgMd, &_s16SiriMessageTypes11PommesErrorOSgMR);
  outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(a3, v6 + OBJC_IVAR____TtC14SiriKitRuntime10PommesInfo_pommesSearchReason, &_s20SiriInformationTypes18PommesSearchReasonOSgMd, &_s20SiriInformationTypes18PommesSearchReasonOSgMR);
  return v6;
}

uint64_t NLResponse.__allocating_init(nlParses:nlResponseStatusCode:pommesInfo:languageVariantResult:responseVariantResult:serverFallbackReason:nlRoutingDecision:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  v17 = OBJC_IVAR____TtC14SiriKitRuntime10NLResponse_nlResponseStatusCode;
  v18 = type metadata accessor for Siri_Nlu_External_ResponseStatus.StatusCode();
  (*(*(v18 - 8) + 32))(v16 + v17, a2, v18);
  outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(a4, v16 + OBJC_IVAR____TtC14SiriKitRuntime10NLResponse_languageVariantResult, &_s12SiriNLUTypes0A35_Nlu_External_LanguageVariantResultVSgMd, &_s12SiriNLUTypes0A35_Nlu_External_LanguageVariantResultVSgMR);
  v19 = (v16 + OBJC_IVAR____TtC14SiriKitRuntime10NLResponse_responseVariantResult);
  *v19 = a5;
  v19[1] = a6;
  *(v16 + OBJC_IVAR____TtC14SiriKitRuntime10NLResponse_pommesInfo) = a3;
  outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(a7, v16 + OBJC_IVAR____TtC14SiriKitRuntime10NLResponse_serverFallbackReason, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
  outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(a8, v16 + OBJC_IVAR____TtC14SiriKitRuntime10NLResponse_nlRoutingDecision, &_s16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0OSgMd, &_s16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0OSgMR);
  return v16;
}

uint64_t ConversationUserInput.debugDescription.getter()
{
  v1 = v0;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0C15RedirectContextOSgMd, &_s11SiriKitFlow0C15RedirectContextOSgMR);
  MEMORY[0x1EEE9AC00](v75);
  v74 = &v74 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMd, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMR);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v74 - v4;
  v78[0] = _typeName(_:qualified:)();
  v78[1] = v6;
  MEMORY[0x1E12A1580](31520, 0xE200000000000000);
  v7 = v78[0];
  v8 = v78[1];
  v78[0] = 123;
  v78[1] = 0xE100000000000000;
  MEMORY[0x1E12A1580](v7, v8);

  v9 = v78[0];
  v10 = v78[1];
  v78[0] = 0xD000000000000013;
  v78[1] = 0x80000001DCA81880;
  MEMORY[0x1E12A1580](v1[2], v1[3]);
  MEMORY[0x1E12A1580](8236, 0xE200000000000000);
  v12 = v78[0];
  v11 = v78[1];
  v78[0] = v9;
  v78[1] = v10;

  MEMORY[0x1E12A1580](v12, v11);

  v14 = v78[0];
  v13 = v78[1];
  v78[0] = 0xD000000000000019;
  v78[1] = 0x80000001DCA818A0;
  MEMORY[0x1E12A1580](v1[4], v1[5]);
  MEMORY[0x1E12A1580](8236, 0xE200000000000000);
  v15 = v78[0];
  v16 = v78[1];
  v78[0] = v14;
  v78[1] = v13;

  MEMORY[0x1E12A1580](v15, v16);

  v17 = v78[0];
  v18 = v78[1];
  v78[0] = 0x6150686365657073;
  v78[1] = 0xEF203A6567616B63;
  v76 = v0[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo15AFSpeechPackageCSgMd, &_sSo15AFSpeechPackageCSgMR);
  v19 = Optional.debugDescription.getter();
  MEMORY[0x1E12A1580](v19);

  MEMORY[0x1E12A1580](8236, 0xE200000000000000);
  v20 = v78[0];
  v21 = v78[1];
  v78[0] = v17;
  v78[1] = v18;

  MEMORY[0x1E12A1580](v20, v21);

  v23 = v78[0];
  v22 = v78[1];
  strcpy(v78, "nlResponse: ");
  BYTE5(v78[1]) = 0;
  HIWORD(v78[1]) = -5120;
  v24 = NLResponse.debugDescription.getter();
  MEMORY[0x1E12A1580](v24);

  MEMORY[0x1E12A1580](8236, 0xE200000000000000);
  v25 = v78[0];
  v26 = v78[1];
  v78[0] = v23;
  v78[1] = v22;

  MEMORY[0x1E12A1580](v25, v26);

  v28 = v78[0];
  v27 = v78[1];
  v78[0] = 0xD000000000000014;
  v78[1] = 0x80000001DCA818C0;
  outlined init with copy of ReferenceResolutionClientProtocol?(v0 + OBJC_IVAR____TtC14SiriKitRuntime21ConversationUserInput_mitigationDecision, v5, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMd, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMR);
  v29 = String.init<A>(describing:)();
  MEMORY[0x1E12A1580](v29);

  MEMORY[0x1E12A1580](8236, 0xE200000000000000);
  v30 = v78[0];
  v31 = v78[1];
  v78[0] = v28;
  v78[1] = v27;

  MEMORY[0x1E12A1580](v30, v31);

  v33 = v78[0];
  v32 = v78[1];
  v78[0] = 0xD000000000000023;
  v78[1] = 0x80000001DCA818E0;
  v34 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime21ConversationUserInput_userSpecificInfoForRecognizedUser);
  if (v34)
  {
    v35 = [v34 debugDescription];
    v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v37;
  }

  else
  {
    v36 = 0;
    v38 = 0;
  }

  v76 = v36;
  v77 = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  v39 = String.init<A>(describing:)();
  MEMORY[0x1E12A1580](v39);

  MEMORY[0x1E12A1580](8236, 0xE200000000000000);
  v40 = v78[0];
  v41 = v78[1];
  v78[0] = v33;
  v78[1] = v32;

  MEMORY[0x1E12A1580](v40, v41);

  v43 = v78[0];
  v42 = v78[1];
  v78[0] = 0xD000000000000030;
  v78[1] = 0x80000001DCA81910;
  v44 = *(v1 + OBJC_IVAR____TtC14SiriKitRuntime21ConversationUserInput_userSpecificInfoForUserMeetingSessionThreshold);
  if (v44)
  {
    v45 = [v44 debugDescription];
    v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v48 = v47;
  }

  else
  {
    v46 = 0;
    v48 = 0;
  }

  v76 = v46;
  v77 = v48;
  v49 = String.init<A>(describing:)();
  MEMORY[0x1E12A1580](v49);

  MEMORY[0x1E12A1580](8236, 0xE200000000000000);
  v50 = v78[0];
  v51 = v78[1];
  v78[0] = v43;
  v78[1] = v42;

  MEMORY[0x1E12A1580](v50, v51);

  v53 = v78[0];
  v52 = v78[1];
  v78[0] = 0xD00000000000001FLL;
  v78[1] = 0x80000001DCA81950;
  if (*(v1 + OBJC_IVAR____TtC14SiriKitRuntime21ConversationUserInput_remoteRequestWasMadeInSession))
  {
    v54 = 1702195828;
  }

  else
  {
    v54 = 0x65736C6166;
  }

  if (*(v1 + OBJC_IVAR____TtC14SiriKitRuntime21ConversationUserInput_remoteRequestWasMadeInSession))
  {
    v55 = 0xE400000000000000;
  }

  else
  {
    v55 = 0xE500000000000000;
  }

  MEMORY[0x1E12A1580](v54, v55);

  MEMORY[0x1E12A1580](8236, 0xE200000000000000);
  v56 = v78[0];
  v57 = v78[1];
  v78[0] = v53;
  v78[1] = v52;

  MEMORY[0x1E12A1580](v56, v57);

  v59 = v78[0];
  v58 = v78[1];
  strcpy(v78, "asrLocation: ");
  HIWORD(v78[1]) = -4864;
  v60 = ExecutionLocation.description.getter();
  MEMORY[0x1E12A1580](v60);

  MEMORY[0x1E12A1580](8236, 0xE200000000000000);
  v61 = v78[0];
  v62 = v78[1];
  v78[0] = v59;
  v78[1] = v58;

  MEMORY[0x1E12A1580](v61, v62);

  v64 = v78[0];
  v63 = v78[1];
  strcpy(v78, "nlLocation: ");
  BYTE5(v78[1]) = 0;
  HIWORD(v78[1]) = -5120;
  v65 = ExecutionLocation.description.getter();
  MEMORY[0x1E12A1580](v65);

  MEMORY[0x1E12A1580](32, 0xE100000000000000);
  v66 = v78[0];
  v67 = v78[1];
  v78[0] = v64;
  v78[1] = v63;

  MEMORY[0x1E12A1580](v66, v67);

  v69 = v78[0];
  v68 = v78[1];
  v78[0] = 0xD000000000000015;
  v78[1] = 0x80000001DCA81970;
  outlined init with copy of ReferenceResolutionClientProtocol?(v1 + OBJC_IVAR____TtC14SiriKitRuntime21ConversationUserInput_flowRedirectContext, v74, &_s11SiriKitFlow0C15RedirectContextOSgMd, &_s11SiriKitFlow0C15RedirectContextOSgMR);
  v70 = String.init<A>(describing:)();
  MEMORY[0x1E12A1580](v70);

  MEMORY[0x1E12A1580](32, 0xE100000000000000);
  v71 = v78[0];
  v72 = v78[1];
  v78[0] = v69;
  v78[1] = v68;

  MEMORY[0x1E12A1580](v71, v72);

  MEMORY[0x1E12A1580](125, 0xE100000000000000);

  return v78[0];
}

char *ConversationUserInput.__allocating_init(resultCandidateId:speechPackage:nlResponse:mitigationDecision:userSpecificInfoForRecognizedUser:userSpecificInfoForUserMeetingSessionThreshold:remoteRequestWasMadeInSession:utterance:asrLocation:nlLocation:flowRedirectContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v40 = a8;
  v38 = a12;
  v39 = a13;
  v36 = a7;
  v37 = a11;
  v34 = a9;
  v35 = a10;
  v19 = type metadata accessor for UUID();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = swift_allocObject();
  *(v23 + 2) = a1;
  *(v23 + 3) = a2;
  UUID.init()();
  v24 = UUID.uuidString.getter();
  v26 = v25;
  (*(v20 + 8))(v22, v19);
  *(v23 + 4) = v24;
  *(v23 + 5) = v26;
  *(v23 + 6) = a3;
  *(v23 + 7) = a4;
  outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(a5, &v23[OBJC_IVAR____TtC14SiriKitRuntime21ConversationUserInput_mitigationDecision], &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMd, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMR);
  *&v23[OBJC_IVAR____TtC14SiriKitRuntime21ConversationUserInput_userSpecificInfoForRecognizedUser] = a6;
  *&v23[OBJC_IVAR____TtC14SiriKitRuntime21ConversationUserInput_userSpecificInfoForUserMeetingSessionThreshold] = v36;
  *&v23[OBJC_IVAR____TtC14SiriKitRuntime21ConversationUserInput_executionOverrideContext] = 0;
  v27 = &v23[OBJC_IVAR____TtC14SiriKitRuntime21ConversationUserInput_utterance];
  v28 = v35;
  *v27 = v34;
  v27[1] = v28;
  v29 = OBJC_IVAR____TtC14SiriKitRuntime21ConversationUserInput_asrLocation;
  v30 = type metadata accessor for ExecutionLocation();
  v31 = *(*(v30 - 8) + 32);
  v31(&v23[v29], v37, v30);
  v31(&v23[OBJC_IVAR____TtC14SiriKitRuntime21ConversationUserInput_nlLocation], v38, v30);
  v23[OBJC_IVAR____TtC14SiriKitRuntime21ConversationUserInput_remoteRequestWasMadeInSession] = v40;
  outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v39, &v23[OBJC_IVAR____TtC14SiriKitRuntime21ConversationUserInput_flowRedirectContext], &_s11SiriKitFlow0C15RedirectContextOSgMd, &_s11SiriKitFlow0C15RedirectContextOSgMR);
  return v23;
}

id ConversationUserInput.asSpeechData.getter()
{
  v1 = v0;
  v2 = type metadata accessor for ExecutionLocation();
  v3 = *(v2 - 8);
  v79 = v2;
  v80 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v84 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v83 = &v63 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0C15RedirectContextOSgMd, &_s11SiriKitFlow0C15RedirectContextOSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v77 = &v63 - v8;
  v9 = type metadata accessor for NLRoutingDecisionMessage.RoutingDecision();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for NLRoutingDecisionMessage.RoutingDecision.SiriXRoute();
  v64 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v14 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0OSgMd, &_s16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0OSgMR);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v63 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes017NLRoutingDecisionB0C27GenAIFallbackSuppressReasonOSgMd, &_s16SiriMessageTypes017NLRoutingDecisionB0C27GenAIFallbackSuppressReasonOSgMR);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v63 - v19;
  v21 = *(v0 + 2);
  v75 = *(v0 + 3);
  v76 = v21;

  v23 = MEMORY[0x1E12A2570](v22);
  v24 = *&v0[OBJC_IVAR____TtC14SiriKitRuntime21ConversationUserInput_userSpecificInfoForUserMeetingSessionThreshold];
  v81 = *&v0[OBJC_IVAR____TtC14SiriKitRuntime21ConversationUserInput_userSpecificInfoForRecognizedUser];
  v82 = v24;
  v71 = v0[OBJC_IVAR____TtC14SiriKitRuntime21ConversationUserInput_remoteRequestWasMadeInSession];
  v72 = v23;
  v25 = *&v0[OBJC_IVAR____TtC14SiriKitRuntime21ConversationUserInput_utterance + 8];
  v73 = *&v0[OBJC_IVAR____TtC14SiriKitRuntime21ConversationUserInput_utterance];
  v26 = *(v0 + 6);
  v27 = *(v0 + 7);
  v78 = v26;
  v28 = *(v27 + OBJC_IVAR____TtC14SiriKitRuntime10NLResponse_responseVariantResult + 8);
  v69 = *(v27 + OBJC_IVAR____TtC14SiriKitRuntime10NLResponse_responseVariantResult);
  v70 = v28;

  v74 = v25;

  v29 = NLResponse.requestLanguageVariant.getter();
  v67 = v30;
  v68 = v29;
  outlined init with copy of ReferenceResolutionClientProtocol?(v27 + OBJC_IVAR____TtC14SiriKitRuntime10NLResponse_nlRoutingDecision, v17, &_s16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0OSgMd, &_s16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0OSgMR);
  if ((*(v10 + 48))(v17, 1, v9) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v17, &_s16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0OSgMd, &_s16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0OSgMR);
    v31 = type metadata accessor for NLRoutingDecisionMessage.GenAIFallbackSuppressReason();
    v32 = v20;
    (*(*(v31 - 8) + 56))(v20, 1, 1, v31);
  }

  else
  {
    (*(v10 + 16))(v12, v17, v9);
    if ((*(v10 + 88))(v12, v9) == *MEMORY[0x1E69D02E8])
    {
      (*(v10 + 96))(v12, v9);
      v33 = v64;
      v34 = v12;
      v35 = v65;
      (*(v64 + 32))(v14, v34, v65);
      NLRoutingDecisionMessage.RoutingDecision.SiriXRoute.genAIFallbackSuppressReason.getter();
      (*(v33 + 8))(v14, v35);
      (*(v10 + 8))(v17, v9);
    }

    else
    {
      v36 = *(v10 + 8);
      v36(v12, v9);
      v37 = type metadata accessor for NLRoutingDecisionMessage.GenAIFallbackSuppressReason();
      (*(*(v37 - 8) + 56))(v20, 1, 1, v37);
      v36(v17, v9);
    }

    v32 = v20;
  }

  v38 = v77;
  outlined init with copy of ReferenceResolutionClientProtocol?(&v1[OBJC_IVAR____TtC14SiriKitRuntime21ConversationUserInput_flowRedirectContext], v77, &_s11SiriKitFlow0C15RedirectContextOSgMd, &_s11SiriKitFlow0C15RedirectContextOSgMR);
  v39 = v79;
  v40 = v80;
  v41 = *(v80 + 16);
  v41(v83, &v1[OBJC_IVAR____TtC14SiriKitRuntime21ConversationUserInput_asrLocation], v79);
  v41(v84, &v1[OBJC_IVAR____TtC14SiriKitRuntime21ConversationUserInput_nlLocation], v39);
  v42 = type metadata accessor for RemoteConversationSpeechData(0);
  v43 = objc_allocWithZone(v42);
  v44 = &v43[OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_rcId];
  v45 = v75;
  *v44 = v76;
  v44[1] = v45;
  v43[OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_asrOnDevice] = v72;
  v46 = v82;
  *&v43[OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_userSpecificInfoForRecognizedUser] = v81;
  *&v43[OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_userSpecificInfoForUserMeetingSessionThreshold] = v46;
  v43[OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_remoteRequestWasMadeInSession] = v71;
  v47 = v78;
  *&v43[OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_speechPackage] = v78;
  v48 = &v43[OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_utterance];
  v49 = v74;
  *v48 = v73;
  v48[1] = v49;
  v50 = &v43[OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_responseLanguageVariant];
  v51 = v70;
  *v50 = v69;
  v50[1] = v51;
  v52 = &v43[OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_requestLanguageVariant];
  v53 = v67;
  *v52 = v68;
  v52[1] = v53;
  v66 = v32;
  outlined init with copy of ReferenceResolutionClientProtocol?(v32, &v43[OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_genAIFallbackSuppressReason], &_s16SiriMessageTypes017NLRoutingDecisionB0C27GenAIFallbackSuppressReasonOSgMd, &_s16SiriMessageTypes017NLRoutingDecisionB0C27GenAIFallbackSuppressReasonOSgMR);
  v54 = v38;
  outlined init with copy of ReferenceResolutionClientProtocol?(v38, &v43[OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_flowRedirectContext], &_s11SiriKitFlow0C15RedirectContextOSgMd, &_s11SiriKitFlow0C15RedirectContextOSgMR);
  v55 = v83;
  v41(&v43[OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_asrLocation], v83, v39);
  v56 = v84;
  v41(&v43[OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_nlLocation], v84, v39);
  v85.receiver = v43;
  v85.super_class = v42;
  v57 = v81;
  v58 = v82;
  v59 = v47;
  v60 = objc_msgSendSuper2(&v85, sel_init);
  v61 = *(v40 + 8);
  v61(v56, v39);
  v61(v55, v39);
  outlined destroy of ReferenceResolutionClientProtocol?(v54, &_s11SiriKitFlow0C15RedirectContextOSgMd, &_s11SiriKitFlow0C15RedirectContextOSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v66, &_s16SiriMessageTypes017NLRoutingDecisionB0C27GenAIFallbackSuppressReasonOSgMd, &_s16SiriMessageTypes017NLRoutingDecisionB0C27GenAIFallbackSuppressReasonOSgMR);
  return v60;
}

uint64_t NLResponse.responseVariantResult.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime10NLResponse_responseVariantResult);

  return v1;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NLResponse.CodingKeys(uint64_t a1)
{
  String.hash(into:)();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance NLResponse.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized NLResponse.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance NLResponse.CodingKeys(void *a1@<X8>)
{
  v2 = *v1;
  if (v2 <= 2)
  {
    v8 = 0xE800000000000000;
    v9 = 0xD000000000000014;
    v10 = 0x80000001DCA7AAA0;
    if (v2 != 1)
    {
      v9 = 0x6E4973656D6D6F70;
      v10 = 0xEA00000000006F66;
    }

    v11 = v2 == 0;
    if (*v1)
    {
      v12 = v9;
    }

    else
    {
      v12 = 0x7365737261506C6ELL;
    }

    if (!v11)
    {
      v8 = v10;
    }

    *a1 = v12;
    a1[1] = v8;
  }

  else
  {
    v3 = 0x80000001DCA7AB00;
    v4 = 0xD000000000000011;
    if (v2 == 5)
    {
      v4 = 0xD000000000000014;
    }

    else
    {
      v3 = 0x80000001DCA7AB20;
    }

    v5 = 0x80000001DCA7AAC0;
    if (v2 != 3)
    {
      v5 = 0x80000001DCA7AAE0;
    }

    if (*v1 <= 4u)
    {
      v6 = 0xD000000000000015;
    }

    else
    {
      v6 = v4;
    }

    if (*v1 <= 4u)
    {
      v7 = v5;
    }

    else
    {
      v7 = v3;
    }

    *a1 = v6;
    a1[1] = v7;
  }
}

uint64_t NLResponse.init(nlParses:nlResponseStatusCode:pommesInfo:languageVariantResult:responseVariantResult:serverFallbackReason:nlRoutingDecision:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 16) = a1;
  v16 = OBJC_IVAR____TtC14SiriKitRuntime10NLResponse_nlResponseStatusCode;
  v17 = type metadata accessor for Siri_Nlu_External_ResponseStatus.StatusCode();
  (*(*(v17 - 8) + 32))(v8 + v16, a2, v17);
  outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(a4, v8 + OBJC_IVAR____TtC14SiriKitRuntime10NLResponse_languageVariantResult, &_s12SiriNLUTypes0A35_Nlu_External_LanguageVariantResultVSgMd, &_s12SiriNLUTypes0A35_Nlu_External_LanguageVariantResultVSgMR);
  v18 = (v8 + OBJC_IVAR____TtC14SiriKitRuntime10NLResponse_responseVariantResult);
  *v18 = a5;
  v18[1] = a6;
  *(v8 + OBJC_IVAR____TtC14SiriKitRuntime10NLResponse_pommesInfo) = a3;
  outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(a7, v8 + OBJC_IVAR____TtC14SiriKitRuntime10NLResponse_serverFallbackReason, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
  outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(a8, v8 + OBJC_IVAR____TtC14SiriKitRuntime10NLResponse_nlRoutingDecision, &_s16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0OSgMd, &_s16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0OSgMR);
  return v8;
}

uint64_t NLResponse.debugDescription.getter()
{
  v1 = v0;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0OSgMd, &_s16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0OSgMR);
  MEMORY[0x1EEE9AC00](v33);
  v32 = &v30 - v2;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
  MEMORY[0x1EEE9AC00](v31);
  v4 = &v30 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A35_Nlu_External_LanguageVariantResultVSgMd, &_s12SiriNLUTypes0A35_Nlu_External_LanguageVariantResultVSgMR);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v30 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1DCA696F0;
  v36 = 0;
  v37 = 0xE000000000000000;
  LOBYTE(v34) = 0;
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1E12A1580](8250, 0xE200000000000000);
  v9 = *(v0 + 16);
  v10 = type metadata accessor for Siri_Nlu_External_UserParse();
  v11 = MEMORY[0x1E12A1700](v9, v10);
  MEMORY[0x1E12A1580](v11);

  v12 = v37;
  *(v8 + 32) = v36;
  *(v8 + 40) = v12;
  v36 = 0;
  v37 = 0xE000000000000000;
  LOBYTE(v34) = 1;
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1E12A1580](8250, 0xE200000000000000);
  type metadata accessor for Siri_Nlu_External_ResponseStatus.StatusCode();
  _print_unlocked<A, B>(_:_:)();
  v13 = v37;
  *(v8 + 48) = v36;
  *(v8 + 56) = v13;
  v36 = 0;
  v37 = 0xE000000000000000;
  LOBYTE(v34) = 2;
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1E12A1580](8250, 0xE200000000000000);
  v34 = *(v1 + OBJC_IVAR____TtC14SiriKitRuntime10NLResponse_pommesInfo);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime10PommesInfoCSgMd, &_s14SiriKitRuntime10PommesInfoCSgMR);
  v14 = String.init<A>(describing:)();
  MEMORY[0x1E12A1580](v14);

  v15 = v37;
  *(v8 + 64) = v36;
  *(v8 + 72) = v15;
  v36 = 0;
  v37 = 0xE000000000000000;
  LOBYTE(v34) = 3;
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1E12A1580](8250, 0xE200000000000000);
  outlined init with copy of ReferenceResolutionClientProtocol?(v1 + OBJC_IVAR____TtC14SiriKitRuntime10NLResponse_languageVariantResult, v7, &_s12SiriNLUTypes0A35_Nlu_External_LanguageVariantResultVSgMd, &_s12SiriNLUTypes0A35_Nlu_External_LanguageVariantResultVSgMR);
  v16 = String.init<A>(describing:)();
  MEMORY[0x1E12A1580](v16);

  v17 = v37;
  *(v8 + 80) = v36;
  *(v8 + 88) = v17;
  v36 = 0;
  v37 = 0xE000000000000000;
  LOBYTE(v34) = 4;
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1E12A1580](8250, 0xE200000000000000);
  v18 = *(v1 + OBJC_IVAR____TtC14SiriKitRuntime10NLResponse_responseVariantResult + 8);
  v34 = *(v1 + OBJC_IVAR____TtC14SiriKitRuntime10NLResponse_responseVariantResult);
  v35 = v18;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  v19 = String.init<A>(describing:)();
  MEMORY[0x1E12A1580](v19);

  v20 = v37;
  *(v8 + 96) = v36;
  *(v8 + 104) = v20;
  v36 = 0;
  v37 = 0xE000000000000000;
  LOBYTE(v34) = 5;
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1E12A1580](8250, 0xE200000000000000);
  outlined init with copy of ReferenceResolutionClientProtocol?(v1 + OBJC_IVAR____TtC14SiriKitRuntime10NLResponse_serverFallbackReason, v4, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
  v21 = String.init<A>(describing:)();
  MEMORY[0x1E12A1580](v21);

  v22 = v37;
  *(v8 + 112) = v36;
  *(v8 + 120) = v22;
  v36 = 0;
  v37 = 0xE000000000000000;
  LOBYTE(v34) = 6;
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1E12A1580](8250, 0xE200000000000000);
  outlined init with copy of ReferenceResolutionClientProtocol?(v1 + OBJC_IVAR____TtC14SiriKitRuntime10NLResponse_nlRoutingDecision, v32, &_s16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0OSgMd, &_s16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0OSgMR);
  v23 = String.init<A>(describing:)();
  MEMORY[0x1E12A1580](v23);

  v24 = v37;
  *(v8 + 128) = v36;
  *(v8 + 136) = v24;
  v36 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v25 = BidirectionalCollection<>.joined(separator:)();
  v27 = v26;

  v36 = _typeName(_:qualified:)();
  v37 = v28;
  MEMORY[0x1E12A1580](31520, 0xE200000000000000);
  MEMORY[0x1E12A1580](v25, v27);

  MEMORY[0x1E12A1580](125, 0xE100000000000000);
  return v36;
}