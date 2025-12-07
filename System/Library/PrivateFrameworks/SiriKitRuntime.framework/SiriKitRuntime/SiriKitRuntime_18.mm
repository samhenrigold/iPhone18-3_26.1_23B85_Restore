uint64_t static ConversationBridgeFeatureFlag.forceEnabled.getter()
{
  if (one-time initialization token for forceEnabled != -1)
  {
    swift_once();
  }
}

Swift::Int ConversationBridgeFeatureFlag.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x1E12A23F0](0);
  return Hasher._finalize()();
}

uint64_t *ConversationBridgeInstrumentationUtil.sharedInstance.unsafeMutableAddressor()
{
  if (one-time initialization token for sharedInstance != -1)
  {
    swift_once();
  }

  return &static ConversationBridgeInstrumentationUtil.sharedInstance;
}

uint64_t one-time initialization function for sharedInstance()
{
  v0 = type metadata accessor for FeatureChecker();
  v1 = swift_allocObject();
  *(v1 + 16) = AFDeviceSupportsSAEByDeviceCapabilityAndFeatureFlags();
  v7 = &type metadata for IntelligenceFlowFeatureFlag;
  v8 = lazy protocol witness table accessor for type IntelligenceFlowFeatureFlag and conformance IntelligenceFlowFeatureFlag();
  v2 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_1Tm(&v6);
  *(v1 + 17) = v2 & 1;
  v7 = v0;
  v8 = &protocol witness table for FeatureChecker;
  *&v6 = v1;
  type metadata accessor for ConversationBridgeInstrumentationUtil();
  v3 = swift_allocObject();
  v4 = objc_opt_self();
  v3[2] = [v4 sharedStream];
  type metadata accessor for InstrumentationUtil();
  v3[3] = swift_allocObject();
  v3[7] = &type metadata for ComponentIdGeneratorImpl;
  v3[8] = &protocol witness table for ComponentIdGeneratorImpl;
  v3[9] = [v4 sharedAnalytics];
  result = outlined init with take of ReferenceResolutionClientProtocol(&v6, (v3 + 10));
  static ConversationBridgeInstrumentationUtil.sharedInstance = v3;
  return result;
}

uint64_t static ConversationBridgeInstrumentationUtil.sharedInstance.getter()
{
  if (one-time initialization token for sharedInstance != -1)
  {
    swift_once();
  }
}

void *ConversationBridgeInstrumentationUtil.__allocating_init(_:_:_:_:_:)(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, __int128 *a5)
{
  v10 = swift_allocObject();
  v10[2] = a1;
  v10[3] = a2;
  outlined init with take of ReferenceResolutionClientProtocol(a3, (v10 + 4));
  v10[9] = a4;
  outlined init with take of ReferenceResolutionClientProtocol(a5, (v10 + 10));
  return v10;
}

void *ConversationBridgeInstrumentationUtil.init(_:_:_:_:_:)(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, __int128 *a5)
{
  v5[2] = a1;
  v5[3] = a2;
  outlined init with take of ReferenceResolutionClientProtocol(a3, (v5 + 4));
  v5[9] = a4;
  outlined init with take of ReferenceResolutionClientProtocol(a5, (v5 + 10));
  return v5;
}

Swift::Void __swiftcall ConversationBridgeInstrumentationUtil.logExecutionRequestEnded(rootRequestId:requestId:resultCandidateId:)(Swift::String rootRequestId, Swift::String requestId, Swift::String resultCandidateId)
{
  object = resultCandidateId._object;
  countAndFlagsBits = resultCandidateId._countAndFlagsBits;
  v46 = requestId;
  v6 = rootRequestId._object;
  v7 = rootRequestId._countAndFlagsBits;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v47 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v44 - v11;
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v45 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v44 - v17;
  v19 = [objc_allocWithZone(MEMORY[0x1E69CF338]) init];
  if (v19)
  {
    v48 = v19;
    [v19 setExists:1];
    v20 = specialized InstrumentationUtil.buildWrapperEventMessage(_:_:logResourceUtilization:)(v7, v6, countAndFlagsBits, object, 1);
    if (v20)
    {
      v21 = v20;
      v22 = [objc_allocWithZone(MEMORY[0x1E69CF330]) init];
      if (v22)
      {
        v23 = v22;
        UUID.init(uuidString:)();
        v24 = v14;
        v44 = *(v14 + 48);
        if (v44(v12, 1, v13) == 1)
        {
          outlined destroy of ReferenceResolutionClientProtocol?(v12, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        }

        else
        {
          (*(v14 + 32))(v18, v12, v13);
          v33 = objc_allocWithZone(MEMORY[0x1E69CF638]);
          v24 = v14;
          isa = UUID._bridgeToObjectiveC()().super.isa;
          v35 = [v33 initWithNSUUID_];

          [v23 setTrpId_];
          (*(v14 + 8))(v18, v13);
        }

        v36 = v3[13];
        v37 = v3[14];
        v38 = v3;
        __swift_project_boxed_opaque_existential_1(v3 + 10, v36);
        if ((*(v37 + 16))(v36, v37))
        {
          v39 = v47;
          UUID.init(uuidString:)();
          if (v44(v39, 1, v13) == 1)
          {
            outlined destroy of ReferenceResolutionClientProtocol?(v39, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
          }

          else
          {
            v40 = v45;
            (*(v24 + 32))(v45, v39, v13);
            v41 = objc_allocWithZone(MEMORY[0x1E69CF638]);
            v42 = UUID._bridgeToObjectiveC()().super.isa;
            v43 = [v41 initWithNSUUID_];

            [v23 setSubRequestId_];
            (*(v24 + 8))(v40, v13);
          }
        }

        [v23 setEnded_];
        [v21 setExecutionBridgeContext_];
        [v38[2] emitMessage_];

        return;
      }

      if (one-time initialization token for conversationBridge != -1)
      {
        swift_once();
      }

      v28 = type metadata accessor for Logger();
      __swift_project_value_buffer(v28, static Logger.conversationBridge);
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_1DC659000, v29, v30, "Failed to create ORCHSchemaORCHExecutionBridgeContext event", v31, 2u);
        MEMORY[0x1E12A2F50](v31, -1, -1);
      }
    }
  }

  else
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    __swift_project_value_buffer(v25, static Logger.conversationBridge);
    v48 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v48, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_1DC659000, v48, v26, "Failed to create ORCHSchemaORCHExecutionEnded event", v27, 2u);
      MEMORY[0x1E12A2F50](v27, -1, -1);
    }
  }

  v32 = v48;
}

Swift::Void __swiftcall ConversationBridgeInstrumentationUtil.logExecutionRequestFailed(error:rootRequestId:requestId:resultCandidateId:)(Swift::String error, Swift::String rootRequestId, Swift::String requestId, Swift::String_optional resultCandidateId)
{
  object = resultCandidateId.value._object;
  countAndFlagsBits = resultCandidateId.value._countAndFlagsBits;
  v51 = requestId;
  v6 = rootRequestId._object;
  v7 = rootRequestId._countAndFlagsBits;
  v8 = error._object;
  v9 = error._countAndFlagsBits;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v52 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v49 - v13;
  v15 = type metadata accessor for UUID();
  v54 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v50 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v49 - v18;
  v20 = [objc_allocWithZone(MEMORY[0x1E69CF340]) init];
  if (v20)
  {
    v55 = v20;
    v21 = MEMORY[0x1E12A1410](v9, v8);
    [v55 setErrorString:v21];

    v22 = specialized InstrumentationUtil.buildWrapperEventMessage(_:_:logResourceUtilization:)(v7, v6, countAndFlagsBits, object, 1);
    if (v22)
    {
      v23 = v22;
      v24 = [objc_allocWithZone(MEMORY[0x1E69CF330]) init];
      if (v24)
      {
        v25 = v24;
        v26 = v15;
        v27 = v53;
        if (object)
        {
          UUID.init(uuidString:)();
          v28 = v54;
          if ((*(v54 + 48))(v14, 1, v26) == 1)
          {
            outlined destroy of ReferenceResolutionClientProtocol?(v14, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
          }

          else
          {
            (*(v28 + 32))(v19, v14, v26);
            v37 = objc_allocWithZone(MEMORY[0x1E69CF638]);
            isa = UUID._bridgeToObjectiveC()().super.isa;
            v39 = [v37 initWithNSUUID_];

            [v25 setTrpId_];
            (*(v28 + 8))(v19, v26);
          }
        }

        v40 = v27[13];
        v41 = v27[14];
        v42 = v27;
        __swift_project_boxed_opaque_existential_1(v27 + 10, v40);
        if ((*(v41 + 16))(v40, v41))
        {
          v43 = v52;
          UUID.init(uuidString:)();
          v44 = v54;
          if ((*(v54 + 48))(v43, 1, v26) == 1)
          {
            outlined destroy of ReferenceResolutionClientProtocol?(v43, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
          }

          else
          {
            v45 = v50;
            (*(v44 + 32))(v50, v43, v26);
            v46 = objc_allocWithZone(MEMORY[0x1E69CF638]);
            v47 = UUID._bridgeToObjectiveC()().super.isa;
            v48 = [v46 initWithNSUUID_];

            [v25 setSubRequestId_];
            (*(v44 + 8))(v45, v26);
          }
        }

        [v25 setFailed_];
        [v23 setExecutionBridgeContext_];
        [v42[2] emitMessage_];

        return;
      }

      if (one-time initialization token for conversationBridge != -1)
      {
        swift_once();
      }

      v32 = type metadata accessor for Logger();
      __swift_project_value_buffer(v32, static Logger.conversationBridge);
      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&dword_1DC659000, v33, v34, "Failed to create ORCHSchemaORCHExecutionBridgeContext event", v35, 2u);
        MEMORY[0x1E12A2F50](v35, -1, -1);
      }
    }
  }

  else
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    __swift_project_value_buffer(v29, static Logger.conversationBridge);
    v55 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v55, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_1DC659000, v55, v30, "Failed to create ORCHSchemaORCHExecutionFailed event", v31, 2u);
      MEMORY[0x1E12A2F50](v31, -1, -1);
    }
  }

  v36 = v55;
}

uint64_t ConversationBridgeInstrumentationUtil.logRequestCancelledForMitigation(requestId:mitigationSource:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(*v3 + 184))();
  v7 = *(*v3 + 192);

  return v7(a3, a1, a2);
}

Swift::Void __swiftcall ConversationBridgeInstrumentationUtil.logRequestCancelled(requestId:)(Swift::String requestId)
{
  v2 = specialized InstrumentationUtil.buildWrapperEventMessage(_:_:logResourceUtilization:)(requestId._countAndFlagsBits, requestId._object, 0, 0, 0);
  if (v2)
  {
    v3 = v2;
    v4 = [objc_allocWithZone(MEMORY[0x1E69CF3C0]) init];
    if (v4)
    {
      v18 = v4;
      v5 = [objc_allocWithZone(MEMORY[0x1E69CF3B8]) init];
      if (v5)
      {
        v6 = v5;
        [v5 setReason:1];
        [v18 setCancelled:v6];
        [v3 setRequestContext_];
        [*(v1 + 16) emitMessage_];

        v7 = v6;
        goto LABEL_20;
      }

      if (one-time initialization token for conversationBridge != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      __swift_project_value_buffer(v14, static Logger.conversationBridge);
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&dword_1DC659000, v15, v16, "Failed to create ORCHSchemaORCHRequestCancelled event", v17, 2u);
        MEMORY[0x1E12A2F50](v17, -1, -1);
      }
    }

    else
    {
      if (one-time initialization token for conversationBridge != -1)
      {
        swift_once();
      }

      v11 = type metadata accessor for Logger();
      __swift_project_value_buffer(v11, static Logger.conversationBridge);
      v18 = Logger.logObject.getter();
      v12 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v18, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&dword_1DC659000, v18, v12, "Failed to create ORCHSchemaORCHRequestContext event", v13, 2u);
        MEMORY[0x1E12A2F50](v13, -1, -1);
      }
    }
  }

  else
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static Logger.conversationBridge);
    v18 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1DC659000, v18, v9, "Failed to create wrapper for ORCHSchemaORCHRequestCancelled event", v10, 2u);
      MEMORY[0x1E12A2F50](v10, -1, -1);
    }
  }

  v7 = v18;
LABEL_20:
}

void ConversationBridgeInstrumentationUtil.logRequestMitigated(mitigationSource:requestId:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v8 = specialized InstrumentationUtil.buildWrapperEventMessage(_:_:logResourceUtilization:)(a2, a3, 0, 0, 0);
  if (v8)
  {
    v9 = v8;
    oslog = [objc_allocWithZone(MEMORY[0x1E69CF3C8]) init];
    [oslog setMitigationSource:a1];
    [v9 setRequestMitigated_];
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static Logger.conversationBridge);

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v19 = v14;
      *v13 = 136315138;
      *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, a3, &v19);
      _os_log_impl(&dword_1DC659000, v11, v12, "Sending SELF RequestMitigated event for requestId %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      MEMORY[0x1E12A2F50](v14, -1, -1);
      MEMORY[0x1E12A2F50](v13, -1, -1);
    }

    [*(v4 + 16) emitMessage_];
  }

  else
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static Logger.conversationBridge);
    oslog = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1DC659000, oslog, v16, "Could not build wrapper when logging requestMitigatedEvent", v17, 2u);
      MEMORY[0x1E12A2F50](v17, -1, -1);
    }
  }
}

void ConversationBridgeInstrumentationUtil.logServerFallbackInitiated(requestId:resultCandidateId:contextId:fallbackReason:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = v6;
  v68 = a5;
  v13 = type metadata accessor for ServerFallbackReason();
  v71 = *(v13 - 8);
  v72 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v69 = v14;
  v70 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v60 - v16;
  v73 = type metadata accessor for UUID();
  v67 = *(v73 - 8);
  v18 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v73);
  v66 = &v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v60 - v20;
  v22 = [objc_allocWithZone(MEMORY[0x1E69CF3F0]) init];
  if (v22)
  {
    v23 = *(*v7 + 34);
    v74 = a4;
    v75 = v22;
    v63 = a6;
    v24 = v23(a6);
    [v75 setFallbackReason:v24];
    v64 = a3;
    v25 = specialized InstrumentationUtil.buildWrapperEventMessage(_:_:logResourceUtilization:)(a1, a2, a3, v74, 1);
    if (v25)
    {
      v65 = v25;
      v26 = [objc_allocWithZone(MEMORY[0x1E69CF3E0]) init];
      if (v26)
      {
        v27 = v26;
        v61 = a1;
        v62 = a2;
        v28 = objc_allocWithZone(MEMORY[0x1E69CF638]);
        v29 = v68;
        isa = UUID._bridgeToObjectiveC()().super.isa;
        v31 = [v28 initWithNSUUID_];

        [v27 setContextId_];
        [v27 setStartedOrChanged_];
        v32 = v64;
        UUID.init(uuidString:)();
        v33 = v67;
        v34 = v73;
        if ((*(v67 + 48))(v17, 1, v73) == 1)
        {
          outlined destroy of ReferenceResolutionClientProtocol?(v17, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        }

        else
        {
          (*(v33 + 32))(v21, v17, v34);
          v43 = objc_allocWithZone(MEMORY[0x1E69CF638]);
          v44 = v34;
          v45 = UUID._bridgeToObjectiveC()().super.isa;
          v46 = [v43 initWithNSUUID_];

          v34 = v44;
          [v27 setTrpId_];

          (*(v33 + 8))(v21, v44);
        }

        v47 = v63;
        v48 = v65;
        [v65 setServerFallbackContext_];
        [v7[2] emitMessage_];
        v63 = v27;
        if (one-time initialization token for insightRequestSummaryLogger != -1)
        {
          swift_once();
        }

        v49 = type metadata accessor for InsightRequestSummaryLogger(0);
        v60 = __swift_project_value_buffer(v49, static Logger.insightRequestSummaryLogger);
        v50 = v66;
        (*(v33 + 16))(v66, v29, v34);
        v51 = v33;
        v52 = v70;
        v53 = v71;
        v54 = v72;
        (*(v71 + 16))(v70, v47, v72);
        v55 = (*(v51 + 80) + 48) & ~*(v51 + 80);
        v56 = (v18 + *(v53 + 80) + v55) & ~*(v53 + 80);
        v57 = swift_allocObject();
        v58 = v62;
        *(v57 + 2) = v61;
        *(v57 + 3) = v58;
        *(v57 + 4) = v32;
        v59 = v73;
        *(v57 + 5) = v74;
        (*(v51 + 32))(&v57[v55], v50, v59);
        (*(v53 + 32))(&v57[v56], v52, v54);

        InsightRequestSummaryLogger.emitDebug(_:)(partial apply for implicit closure #1 in ConversationBridgeInstrumentationUtil.logServerFallbackInitiated(requestId:resultCandidateId:contextId:fallbackReason:));

        return;
      }

      if (one-time initialization token for conversationBridge != -1)
      {
        swift_once();
      }

      v38 = type metadata accessor for Logger();
      __swift_project_value_buffer(v38, static Logger.conversationBridge);
      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 0;
        _os_log_impl(&dword_1DC659000, v39, v40, "Failed to create ORCHSchemaORCHServerFallbackContext event", v41, 2u);
        MEMORY[0x1E12A2F50](v41, -1, -1);
      }
    }
  }

  else
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    __swift_project_value_buffer(v35, static Logger.conversationBridge);
    v75 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v75, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_1DC659000, v75, v36, "Failed to create ORCHSchemaORCHServerFallbackInitiated event", v37, 2u);
      MEMORY[0x1E12A2F50](v37, -1, -1);
    }
  }

  v42 = v75;
}

uint64_t implicit closure #1 in ConversationBridgeInstrumentationUtil.logServerFallbackInitiated(requestId:resultCandidateId:contextId:fallbackReason:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy14SiriKitRuntime24InsightRequestSummaryKeyV_SStGMd, &_ss23_ContiguousArrayStorageCy14SiriKitRuntime24InsightRequestSummaryKeyV_SStGMR);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1DCA69C00;
  *(v8 + 32) = 0x614E656764697262;
  *(v8 + 40) = 0xEA0000000000656DLL;
  *(v8 + 48) = 0xD000000000000012;
  *(v8 + 56) = 0x80000001DCA7F2A0;
  *(v8 + 64) = 0xD000000000000012;
  *(v8 + 72) = 0x80000001DCA7F2C0;
  *(v8 + 80) = 0xD00000000000001ALL;
  *(v8 + 88) = 0x80000001DCA7B760;
  *(v8 + 96) = 0x4974736575716572;
  *(v8 + 104) = 0xE900000000000064;
  *(v8 + 112) = a1;
  *(v8 + 120) = a2;
  *(v8 + 128) = 0xD000000000000011;
  *(v8 + 136) = 0x80000001DCA7AB40;
  *(v8 + 144) = a3;
  *(v8 + 152) = a4;
  *(v8 + 160) = 0xD000000000000017;
  *(v8 + 168) = 0x80000001DCA7F2E0;

  *(v8 + 176) = UUID.uuidString.getter();
  *(v8 + 184) = v9;
  *(v8 + 192) = 0xD000000000000014;
  *(v8 + 200) = 0x80000001DCA7AB00;
  *(v8 + 208) = ServerFallbackReason.rawValue.getter();
  *(v8 + 216) = v10;
  return v8;
}

void ConversationBridgeInstrumentationUtil.logServerFallbackResponseReceived(requestId:contextId:rcId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v51 - v11;
  v13 = type metadata accessor for UUID();
  v58 = *(v13 - 8);
  isa = v58[8].isa;
  MEMORY[0x1EEE9AC00](v13);
  v56 = &v51 - ((isa + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v51 - v16;
  v18 = [objc_allocWithZone(MEMORY[0x1E69CF3F8]) init];
  if (v18)
  {
    v54 = a3;
    v57 = v18;
    [v18 setExists:1];
    v19 = specialized InstrumentationUtil.buildWrapperEventMessage(_:_:logResourceUtilization:)(a1, a2, a4, a5, 1);
    if (v19)
    {
      v20 = v19;
      v53 = v13;
      v21 = [objc_allocWithZone(MEMORY[0x1E69CF3E0]) init];
      if (v21)
      {
        v22 = v21;
        v23 = objc_allocWithZone(MEMORY[0x1E69CF638]);
        v51 = a2;
        v52 = a1;
        v24 = v20;
        v25 = v23;
        v26 = UUID._bridgeToObjectiveC()().super.isa;
        v27 = [v25 initWithNSUUID_];

        [v22 setContextId_];
        v28 = a4;
        v29 = v58;
        if (a5)
        {
          UUID.init(uuidString:)();
          v30 = v53;
          if ((v29[6].isa)(v12, 1, v53) == 1)
          {
            outlined destroy of ReferenceResolutionClientProtocol?(v12, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
          }

          else
          {
            (v29[4].isa)(v17, v12, v30);
            v39 = objc_allocWithZone(MEMORY[0x1E69CF638]);
            v40 = UUID._bridgeToObjectiveC()().super.isa;
            v41 = [v39 initWithNSUUID_];

            [v22 setTrpId_];
            (v58[1].isa)(v17, v30);
          }
        }

        v42 = v28;
        [v22 setEnded_];
        [v24 setServerFallbackContext_];
        [v55[2] emitMessage_];
        v43 = v24;
        v55 = v22;
        if (one-time initialization token for insightRequestSummaryLogger != -1)
        {
          swift_once();
        }

        v44 = type metadata accessor for InsightRequestSummaryLogger(0);
        __swift_project_value_buffer(v44, static Logger.insightRequestSummaryLogger);
        v45 = v58;
        v46 = v56;
        v47 = v53;
        (v58[2].isa)(v56, v54, v53);
        v48 = (LOBYTE(v45[10].isa) + 48) & ~LOBYTE(v45[10].isa);
        v49 = swift_allocObject();
        v50 = v51;
        v49[2] = v52;
        v49[3] = v50;
        v49[4] = v42;
        v49[5] = a5;
        (v45[4].isa)(v49 + v48, v46, v47);

        InsightRequestSummaryLogger.emitDebug(_:)(partial apply for implicit closure #1 in ConversationBridgeInstrumentationUtil.logServerFallbackResponseReceived(requestId:contextId:rcId:));

        return;
      }

      if (one-time initialization token for conversationBridge != -1)
      {
        swift_once();
      }

      v35 = type metadata accessor for Logger();
      __swift_project_value_buffer(v35, static Logger.conversationBridge);
      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        *v38 = 0;
        _os_log_impl(&dword_1DC659000, v36, v37, "Failed to create ORCHSchemaORCHServerFallbackContext event", v38, 2u);
        MEMORY[0x1E12A2F50](v38, -1, -1);
      }
    }

    v34 = v57;
  }

  else
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    __swift_project_value_buffer(v31, static Logger.conversationBridge);
    v58 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v58, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_1DC659000, v58, v32, "Failed to create ORCHSchemaORCHServerFallbackResponseReceived event", v33, 2u);
      MEMORY[0x1E12A2F50](v33, -1, -1);
    }

    v34 = v58;
  }
}

uint64_t implicit closure #1 in ConversationBridgeInstrumentationUtil.logServerFallbackResponseReceived(requestId:contextId:rcId:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy14SiriKitRuntime24InsightRequestSummaryKeyV_SStGMd, &_ss23_ContiguousArrayStorageCy14SiriKitRuntime24InsightRequestSummaryKeyV_SStGMR);
  v8 = swift_allocObject();
  v9 = v8;
  *(v8 + 16) = xmmword_1DCA69C10;
  *(v8 + 32) = 0x614E656764697262;
  *(v8 + 40) = 0xEA0000000000656DLL;
  *(v8 + 48) = 0xD000000000000012;
  *(v8 + 56) = 0x80000001DCA7F2A0;
  *(v8 + 64) = 0xD000000000000012;
  *(v8 + 72) = 0x80000001DCA7F2C0;
  *(v8 + 80) = 0xD000000000000021;
  *(v8 + 88) = 0x80000001DCA7B780;
  *(v8 + 96) = 0x4974736575716572;
  *(v8 + 104) = 0xE900000000000064;
  *(v8 + 112) = a1;
  *(v8 + 120) = a2;
  *(v8 + 128) = 0xD000000000000011;
  *(v8 + 136) = 0x80000001DCA7AB40;
  if (a4)
  {
    v10 = a3;
  }

  else
  {
    v10 = 0;
  }

  v11 = 0xE000000000000000;
  if (a4)
  {
    v11 = a4;
  }

  *(v8 + 144) = v10;
  *(v8 + 152) = v11;
  *(v8 + 160) = 0xD000000000000017;
  *(v8 + 168) = 0x80000001DCA7F2E0;

  *(v9 + 176) = UUID.uuidString.getter();
  *(v9 + 184) = v12;
  return v9;
}

Swift::Void __swiftcall ConversationBridgeInstrumentationUtil.logServerFallbackFailed(errorCode:requestId:)(Swift::Int32 errorCode, Swift::String requestId)
{
  object = requestId._object;
  countAndFlagsBits = requestId._countAndFlagsBits;
  v5 = *&errorCode;
  v6 = [objc_allocWithZone(MEMORY[0x1E69CF3E8]) init];
  if (v6)
  {
    v20 = v6;
    [v6 setErrorCode:v5];
    v7 = specialized InstrumentationUtil.buildWrapperEventMessage(_:_:logResourceUtilization:)(countAndFlagsBits, object, 0, 0, 1);
    if (v7)
    {
      v8 = v7;
      v9 = [objc_allocWithZone(MEMORY[0x1E69CF3E0]) init];
      if (v9)
      {
        v10 = v9;
        [v9 setFailed_];
        [v8 setServerFallbackContext_];
        [*(v2 + 16) emitMessage_];
        if (one-time initialization token for insightRequestSummaryLogger != -1)
        {
          swift_once();
        }

        v11 = type metadata accessor for InsightRequestSummaryLogger(0);
        v12 = __swift_project_value_buffer(v11, static Logger.insightRequestSummaryLogger);

        specialized InsightRequestSummaryLogger.emitDebug(_:)(v12, countAndFlagsBits, object);

        return;
      }

      if (one-time initialization token for conversationBridge != -1)
      {
        swift_once();
      }

      v16 = type metadata accessor for Logger();
      __swift_project_value_buffer(v16, static Logger.conversationBridge);
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&dword_1DC659000, v17, v18, "Failed to create ORCHSchemaORCHServerFallbackContext event", v19, 2u);
        MEMORY[0x1E12A2F50](v19, -1, -1);
      }
    }
  }

  else
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static Logger.conversationBridge);
    v20 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1DC659000, v20, v14, "Failed to create ORCHSchemaORCHServerFallbackFailed event", v15, 2u);
      MEMORY[0x1E12A2F50](v15, -1, -1);
    }
  }
}

Swift::Void __swiftcall ConversationBridgeInstrumentationUtil.logRequestLinkEvent(requestId:)(Swift::String requestId)
{
  v2 = v1;
  object = requestId._object;
  countAndFlagsBits = requestId._countAndFlagsBits;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v28 - v6;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v28 - v13;
  UUID.init(uuidString:)();
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v7, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
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
      v29 = v19;
      *v18 = 136315138;
      *(v18 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(countAndFlagsBits, object, &v29);
      _os_log_impl(&dword_1DC659000, v16, v17, "RequestId=%s isn't in the right format of a uuid string", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
      MEMORY[0x1E12A2F50](v19, -1, -1);
      MEMORY[0x1E12A2F50](v18, -1, -1);
    }
  }

  else
  {
    (*(v9 + 32))(v14, v7, v8);
    v20 = *(v2 + 56);
    v21 = *(v2 + 64);
    __swift_project_boxed_opaque_existential_1((v2 + 32), v20);
    (*(v21 + 8))(3, v14, v20, v21);
    v22 = specialized InstrumentationUtil.buildRequestLinkEvent(sourceComponent:sourceUUID:targetComponent:targetUUID:)(1, v14, 3);
    if (v22)
    {
      v23 = v22;
      [*(v2 + 16) emitMessage_];
    }

    else
    {
      if (one-time initialization token for conversationBridge != -1)
      {
        swift_once();
      }

      v24 = type metadata accessor for Logger();
      __swift_project_value_buffer(v24, static Logger.conversationBridge);
      v23 = Logger.logObject.getter();
      v25 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v23, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&dword_1DC659000, v23, v25, "Failed to create RequestLink event for ExecutionBridge", v26, 2u);
        MEMORY[0x1E12A2F50](v26, -1, -1);
      }
    }

    v27 = *(v9 + 8);
    v27(v11, v8);
    v27(v14, v8);
  }
}

void ConversationBridgeInstrumentationUtil.logSensitiveCondition(forSensitiveCondition:requestId:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v38 - v7;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v43 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static Logger.conversationBridge);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();

  v15 = os_log_type_enabled(v13, v14);
  v42 = v5;
  if (v15)
  {
    v16 = swift_slowAlloc();
    v39 = v10;
    v17 = v16;
    v18 = swift_slowAlloc();
    v40 = v9;
    v19 = a2;
    v20 = v18;
    aBlock[0] = v18;
    *v17 = 136315394;
    v21 = SISchemaDeviceSensitivityState.description.getter();
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, aBlock);

    *(v17 + 4) = v23;
    *(v17 + 12) = 2080;
    *(v17 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, a3, aBlock);
    _os_log_impl(&dword_1DC659000, v13, v14, "Logging SiriAnalytics sensitive condition: %s for requestId: %s", v17, 0x16u);
    swift_arrayDestroy();
    v24 = v20;
    a2 = v19;
    v9 = v40;
    MEMORY[0x1E12A2F50](v24, -1, -1);
    v25 = v17;
    v10 = v39;
    MEMORY[0x1E12A2F50](v25, -1, -1);
  }

  UUID.init(uuidString:)();
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v8, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);

    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      aBlock[0] = v29;
      *v28 = 136315138;
      *(v28 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, a3, aBlock);
      _os_log_impl(&dword_1DC659000, v26, v27, "Failed to redact SiriAnalytics since requestId %s is malformed", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v29);
      MEMORY[0x1E12A2F50](v29, -1, -1);
      MEMORY[0x1E12A2F50](v28, -1, -1);
    }
  }

  else
  {
    v30 = v43;
    (*(v10 + 32))(v43, v8, v9);
    v31 = objc_allocWithZone(MEMORY[0x1E69CE200]);
    isa = UUID._bridgeToObjectiveC()().super.isa;
    v33 = v42;
    v34 = [v31 initWithConditionType:v42 requestId:isa joined:1];

    v35 = *(v41 + 72);
    v36 = swift_allocObject();
    *(v36 + 16) = v33;
    *(v36 + 24) = a2;
    *(v36 + 32) = a3;
    aBlock[4] = partial apply for closure #1 in ConversationBridgeInstrumentationUtil.logSensitiveCondition(forSensitiveCondition:requestId:);
    aBlock[5] = v36;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
    aBlock[3] = &block_descriptor_3;
    v37 = _Block_copy(aBlock);

    [v35 createTag:v34 completion:v37];
    _Block_release(v37);

    (*(v10 + 8))(v30, v9);
  }
}

void closure #1 in ConversationBridgeInstrumentationUtil.logSensitiveCondition(forSensitiveCondition:requestId:)(char a1, void *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Logger.conversationBridge);

  v10 = a2;
  oslog = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(oslog, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v22 = v14;
    *v12 = 136315906;
    v15 = SISchemaDeviceSensitivityState.description.getter();
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v22);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2080;
    *(v12 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a4, a5, &v22);
    *(v12 + 22) = 1024;
    *(v12 + 24) = a1 & 1;
    *(v12 + 28) = 2112;
    if (a2)
    {
      v18 = a2;
      v19 = _swift_stdlib_bridgeErrorToNSError();
      v20 = v19;
    }

    else
    {
      v19 = 0;
      v20 = 0;
    }

    *(v12 + 30) = v19;
    *v13 = v20;
    _os_log_impl(&dword_1DC659000, oslog, v11, "Logged sensitive condition: %s for requestId: %s successfully: %{BOOL}d. Error: %@", v12, 0x26u);
    outlined destroy of ReferenceResolutionClientProtocol?(v13, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1E12A2F50](v13, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v14, -1, -1);
    MEMORY[0x1E12A2F50](v12, -1, -1);
  }
}

void ConversationBridgeInstrumentationUtil.logSREvent(requestId:strategy:predictedErrorType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v31 - v9;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init(uuidString:)();
  if ((*(v12 + 48))(v10, 1, v11) != 1)
  {
    (*(v12 + 32))(v14, v10, v11);
    v19 = objc_allocWithZone(MEMORY[0x1E69CF638]);
    isa = UUID._bridgeToObjectiveC()().super.isa;
    v21 = [v19 initWithNSUUID_];

    v22 = [objc_allocWithZone(MEMORY[0x1E69CF678]) init];
    v23 = v22;
    if (v22)
    {
      [v22 setRequestId_];
    }

    v24 = [objc_allocWithZone(MEMORY[0x1E69CF668]) init];
    [v24 setSelectedRecoveryStrategy_];
    [v24 setPredictedErrorType_];
    v25 = [objc_allocWithZone(MEMORY[0x1E69CF680]) init];
    [v25 setCheckErrorResponse_];
    v26 = [objc_allocWithZone(MEMORY[0x1E69CF670]) init];
    if (v26)
    {
      v27 = v26;
      [v26 setEventMetadata:v23];
      [v27 setErrorChecked:v25];
      [*(v5 + 16) emitMessage_];
    }

    else
    {
      if (one-time initialization token for conversationBridge != -1)
      {
        swift_once();
      }

      v28 = type metadata accessor for Logger();
      __swift_project_value_buffer(v28, static Logger.conversationBridge);
      v27 = Logger.logObject.getter();
      v29 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v27, v29))
      {

        goto LABEL_16;
      }

      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_1DC659000, v27, v29, "Failed to create SRSchemaSRClientEvent.", v30, 2u);
      MEMORY[0x1E12A2F50](v30, -1, -1);
    }

LABEL_16:
    (*(v12 + 8))(v14, v11);
    return;
  }

  outlined destroy of ReferenceResolutionClientProtocol?(v10, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
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
    *v18 = 0;
    _os_log_impl(&dword_1DC659000, v16, v17, "The requestId is not a valid UUID.", v18, 2u);
    MEMORY[0x1E12A2F50](v18, -1, -1);
  }
}

void ConversationBridgeInstrumentationUtil.logSearchRequestClassifierExecutedEvent(isPegasusSearchPerformed:mitigationResponseDecision:)(char a1, uint64_t a2)
{
  v3 = v2;
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.conversationBridge);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v19 = v10;
    *v9 = 67109378;
    *(v9 + 4) = a1 & 1;
    *(v9 + 8) = 2080;
    v11 = POMMESSchemaPOMMESSelfReflectionAgentDecision.description.getter();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v19);

    *(v9 + 10) = v13;
    _os_log_impl(&dword_1DC659000, v7, v8, "Search query classifier ran: (isPegasusSearchPerformed: %{BOOL}d, mitigationResponseDecision: %s)", v9, 0x12u);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x1E12A2F50](v10, -1, -1);
    MEMORY[0x1E12A2F50](v9, -1, -1);
  }

  v14 = [objc_allocWithZone(MEMORY[0x1E69CF4A8]) init];
  if (v14)
  {
    v18 = v14;
    v15 = [objc_allocWithZone(MEMORY[0x1E69CF4A0]) init];
    if (v15)
    {
      v16 = v15;
      [v18 setIsPegasusSearchPerformed_];
      [v18 setMitigationResponseDecision_];
      [v16 setPommesSearchRequestClassifierExecuted_];
      [*(v3 + 16) emitMessage_];

      v17 = v16;
    }

    else
    {
      v17 = v18;
    }
  }
}

uint64_t ConversationBridgeInstrumentationUtil.mapServerFallbackReasonToLoggingReason(_:)(uint64_t a1)
{
  v2 = type metadata accessor for ServerFallbackReason();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x1E69D0768])
  {
    return 5;
  }

  if (v7 == *MEMORY[0x1E69D0770])
  {
    return 4;
  }

  if (v7 == *MEMORY[0x1E69D0758])
  {
    return 2;
  }

  if (v7 == *MEMORY[0x1E69D0780])
  {
    return 3;
  }

  if (v7 == *MEMORY[0x1E69D0760])
  {
    return 1;
  }

  if (v7 == *MEMORY[0x1E69D0778])
  {
    return 6;
  }

  if (v7 != *MEMORY[0x1E69D0788])
  {
    (*(v3 + 8))(v6, v2);
  }

  return 0;
}

uint64_t ConversationBridgeInstrumentationUtil.deinit()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 80));
  return v0;
}

uint64_t ConversationBridgeInstrumentationUtil.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 80));

  return swift_deallocClassInstance();
}

uint64_t partial apply for implicit closure #1 in ConversationBridgeInstrumentationUtil.logServerFallbackInitiated(requestId:resultCandidateId:contextId:fallbackReason:)()
{
  type metadata accessor for UUID();
  type metadata accessor for ServerFallbackReason();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];

  return implicit closure #1 in ConversationBridgeInstrumentationUtil.logServerFallbackInitiated(requestId:resultCandidateId:contextId:fallbackReason:)(v1, v2, v3, v4);
}

uint64_t partial apply for implicit closure #1 in ConversationBridgeInstrumentationUtil.logServerFallbackResponseReceived(requestId:contextId:rcId:)()
{
  type metadata accessor for UUID();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];

  return implicit closure #1 in ConversationBridgeInstrumentationUtil.logServerFallbackResponseReceived(requestId:contextId:rcId:)(v1, v2, v3, v4);
}

uint64_t ConversationBridgeProcessorDelegate.__allocating_init(requestDispatcherServiceHelper:)(uint64_t a1)
{
  v2 = swift_allocObject();
  swift_weakInit();
  *(v2 + 24) = a1;
  return v2;
}

uint64_t ConversationBridgeProcessorDelegate.init(requestDispatcherServiceHelper:)(uint64_t a1)
{
  swift_weakInit();
  *(v1 + 24) = a1;
  return v1;
}

void ConversationBridgeProcessorDelegate.submit(executionOutput:completion:)(void *a1, void (*a2)(void, void *), uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(*Strong + 1016))(a1, a2, a3);
  }

  else
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Logger.conversationBridge);
    v8 = a1;
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v15 = v12;
      *v11 = 136315138;
      *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*&v8[OBJC_IVAR___SKRExecutionOutput_executionRequestId], *&v8[OBJC_IVAR___SKRExecutionOutput_executionRequestId + 8], &v15);
      _os_log_impl(&dword_1DC659000, v9, v10, "ConversationRequestProcessor already released, ingoring sumbit of %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      MEMORY[0x1E12A2F50](v12, -1, -1);
      MEMORY[0x1E12A2F50](v11, -1, -1);
    }

    lazy protocol witness table accessor for type ConversationOutputError and conformance ConversationOutputError();
    v13 = swift_allocError();
    *v14 = 0;
    a2(0, v13);
  }
}

void ConversationBridgeProcessorDelegate.close(withExecutionOutput:needsUserInput:)(void *a1, char a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(*Strong + 1048))(a1, a2 & 1);
  }

  else
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Logger.conversationBridge);
    v6 = a1;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v11 = v10;
      *v9 = 136315138;
      *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*&v6[OBJC_IVAR___SKRExecutionOutput_executionRequestId], *&v6[OBJC_IVAR___SKRExecutionOutput_executionRequestId + 8], &v11);
      _os_log_impl(&dword_1DC659000, v7, v8, "ConversationRequestProcessor already released, ignoring close of %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v10);
      MEMORY[0x1E12A2F50](v10, -1, -1);
      MEMORY[0x1E12A2F50](v9, -1, -1);
    }
  }
}

void ConversationBridgeProcessorDelegate.close(withExecutionOutput:)(void *a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(*Strong + 1024))(a1);
  }

  else
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static Logger.conversationBridge);
    v4 = a1;
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v9 = v8;
      *v7 = 136315138;
      *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*&v4[OBJC_IVAR___SKRExecutionOutput_executionRequestId], *&v4[OBJC_IVAR___SKRExecutionOutput_executionRequestId + 8], &v9);
      _os_log_impl(&dword_1DC659000, v5, v6, "ConversationRequestProcessor already released, ignoring close of %s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v8);
      MEMORY[0x1E12A2F50](v8, -1, -1);
      MEMORY[0x1E12A2F50](v7, -1, -1);
    }
  }
}

void ConversationBridgeProcessorDelegate.close(withExecutionOutput:errorString:)(void *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(*Strong + 1032))(a1, a2, a3);
  }

  else
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Logger.conversationBridge);
    v8 = a1;
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v13 = v12;
      *v11 = 136315138;
      *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*&v8[OBJC_IVAR___SKRExecutionOutput_executionRequestId], *&v8[OBJC_IVAR___SKRExecutionOutput_executionRequestId + 8], &v13);
      _os_log_impl(&dword_1DC659000, v9, v10, "ConversationRequestProcessor already released, ignoring close of %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      MEMORY[0x1E12A2F50](v12, -1, -1);
      MEMORY[0x1E12A2F50](v11, -1, -1);
    }
  }
}

void ConversationBridgeProcessorDelegate.close(withExecutionOutput:errorString:shouldFailRequest:)(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(*Strong + 1040))(a1, a2, a3, a4 & 1);
  }

  else
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Logger.conversationBridge);
    v10 = a1;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v15 = v14;
      *v13 = 136315138;
      *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*&v10[OBJC_IVAR___SKRExecutionOutput_executionRequestId], *&v10[OBJC_IVAR___SKRExecutionOutput_executionRequestId + 8], &v15);
      _os_log_impl(&dword_1DC659000, v11, v12, "ConversationRequestProcessor already released, ignoring close of %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      MEMORY[0x1E12A2F50](v14, -1, -1);
      MEMORY[0x1E12A2F50](v13, -1, -1);
    }
  }
}

void ConversationBridgeProcessorDelegate.fallbackToServer(forResultCandidateId:serverFallbackReason:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(*Strong + 1056))(a1, a2, a3);
  }

  else
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Logger.conversationBridge);

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v14 = v11;
      *v10 = 136315138;
      if (a2)
      {
        v12 = a2;
      }

      else
      {
        a1 = 7104878;
        v12 = 0xE300000000000000;
      }

      v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, v12, &v14);

      *(v10 + 4) = v13;
      _os_log_impl(&dword_1DC659000, v8, v9, "ConversationRequestProcessor already released, ignoring fallbackToServer of %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v11);
      MEMORY[0x1E12A2F50](v11, -1, -1);
      MEMORY[0x1E12A2F50](v10, -1, -1);
    }
  }
}

Swift::Void __swiftcall ConversationBridgeProcessorDelegate.fallbackToInfoDomainResults(forResultCandidateId:)(Swift::String_optional forResultCandidateId)
{
  object = forResultCandidateId.value._object;
  countAndFlagsBits = forResultCandidateId.value._countAndFlagsBits;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(*Strong + 1064))(countAndFlagsBits, object);
  }

  else
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static Logger.conversationBridge);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v11 = v8;
      *v7 = 136315138;
      if (object)
      {
        v9 = object;
      }

      else
      {
        countAndFlagsBits = 7104878;
        v9 = 0xE300000000000000;
      }

      v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(countAndFlagsBits, v9, &v11);

      *(v7 + 4) = v10;
      _os_log_impl(&dword_1DC659000, v5, v6, "ConversationRequestProcessor already released, ignoring fallbackToInfoDomainResults of %s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v8);
      MEMORY[0x1E12A2F50](v8, -1, -1);
      MEMORY[0x1E12A2F50](v7, -1, -1);
    }
  }
}

void ConversationBridgeProcessorDelegate.fallbackToIntelligenceFlow(prescribedTool:)(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(*Strong + 816))(a1);
  }

  else
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static Logger.conversationBridge);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1DC659000, v4, v5, "ConversationRequestProcessor already released, ignoring fallbackToIntelligenceFlow", v6, 2u);
      MEMORY[0x1E12A2F50](v6, -1, -1);
    }
  }
}

void ConversationBridgeProcessorDelegate.redirectToSiriX(rcId:context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(*Strong + 824))(a1, a2, a3);
  }

  else
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Logger.conversationBridge);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1DC659000, v8, v9, "ConversationRequestProcessor already released, ignoring redirectToSiriX", v10, 2u);
      MEMORY[0x1E12A2F50](v10, -1, -1);
    }
  }
}

void ConversationBridgeProcessorDelegate.willRedirectToSiriX(rcId:context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(*Strong + 832))(a1, a2, a3);
  }

  else
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Logger.conversationBridge);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1DC659000, v8, v9, "ConversationRequestProcessor already released, ignoring willRedirectToSiriX", v10, 2u);
      MEMORY[0x1E12A2F50](v10, -1, -1);
    }
  }
}

void ConversationBridgeProcessorDelegate.flowPluginWillExecute(flowPluginInfo:)(char *a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static Logger.conversationBridge);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1DC659000, v5, v6, "Checking if request is sensitive", v7, 2u);
      MEMORY[0x1E12A2F50](v7, -1, -1);
    }

    v8 = objc_opt_self();
    v9 = *&a1[OBJC_IVAR____TtC14SiriKitRuntime14FlowPluginInfo_sensitivityPolicy];
    v10 = objc_opt_self();
    v11 = [v10 sharedPreferences];
    v12 = [v11 siriDataSharingOptInStatus];

    v13 = [v10 sharedPreferences];
    v14 = [v13 languageCode];

    LODWORD(v8) = [v8 isRequestSensitiveWithPolicy:v9 optInStatus:v12 siriLanguageCode:v14];
    if (v8)
    {
      v15 = v3[8];
      v16 = v3[9];
      v17 = *(**(v3 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_instrumentationUtil) + 232);

      v17(6, v15, v16);
    }

    (*(*v3 + 1088))(a1);
  }

  else
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static Logger.conversationBridge);
    v19 = a1;
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138412290;
      *(v22 + 4) = v19;
      *v23 = v19;
      v24 = v19;
      _os_log_impl(&dword_1DC659000, v20, v21, "ConversationRequestProcessor already released, ignoring flowPluginWillExecute of %@", v22, 0xCu);
      outlined destroy of ReferenceResolutionClientProtocol?(v23, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1E12A2F50](v23, -1, -1);
      MEMORY[0x1E12A2F50](v22, -1, -1);
    }
  }
}

uint64_t ConversationBridgeProcessorDelegate.fetchSpeechInfo(reply:)(uint64_t (*a1)(void), uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(*Strong + 1072))(a1, a2);
  }

  else
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Logger.conversationBridge);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1DC659000, v7, v8, "ConversationRequestProcessor already released, ignoring fetchSpeechInfo", v9, 2u);
      MEMORY[0x1E12A2F50](v9, -1, -1);
    }

    return a1(0);
  }
}

void ConversationBridgeProcessorDelegate.retriggerOriginalRequest(withExecutionRequestId:forUserId:givenCurrentExecutionRequestId:reply:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void), uint64_t a8)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(*Strong + 1184))(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static Logger.conversationBridge);

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v24 = v21;
      *v20 = 136315138;
      *(v20 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v24);
      _os_log_impl(&dword_1DC659000, v18, v19, "ConversationRequestProcessor already released, ignoring retriggerOriginalRequest for request id %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v21);
      MEMORY[0x1E12A2F50](v21, -1, -1);
      MEMORY[0x1E12A2F50](v20, -1, -1);
    }

    lazy protocol witness table accessor for type ConversationOutputError and conformance ConversationOutputError();
    v22 = swift_allocError();
    *v23 = 0;
    a7();
  }
}

Swift::Void __swiftcall ConversationBridgeProcessorDelegate.closeServerRequest(forExecutionRequestId:)(Swift::String forExecutionRequestId)
{
  object = forExecutionRequestId._object;
  countAndFlagsBits = forExecutionRequestId._countAndFlagsBits;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(*Strong + 1192))(countAndFlagsBits, object);
  }

  else
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static Logger.conversationBridge);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v9 = v8;
      *v7 = 136315138;
      *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(countAndFlagsBits, object, &v9);
      _os_log_impl(&dword_1DC659000, v5, v6, "ConversationRequestProcessor already released, ignoring closeServerRequest for request id %s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v8);
      MEMORY[0x1E12A2F50](v8, -1, -1);
      MEMORY[0x1E12A2F50](v7, -1, -1);
    }
  }
}

uint64_t ConversationBridgeProcessorDelegate.fetchRecentDialogs(reply:)(void (*a1)(void))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(*Strong + 1080))();
    a1();
  }

  else
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static Logger.conversationBridge);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1DC659000, v5, v6, "ConversationRequestProcessor already released, ignoring fetchRecentDialogs", v7, 2u);
      MEMORY[0x1E12A2F50](v7, -1, -1);
    }

    return (a1)(MEMORY[0x1E69E7CC0]);
  }
}

Swift::Void __swiftcall ConversationBridgeProcessorDelegate.actionCandidatesGenerated(_:rcId:)(Swift::OpaquePointer _, Swift::String rcId)
{
  object = rcId._object;
  countAndFlagsBits = rcId._countAndFlagsBits;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(*Strong + 1376))(_._rawValue, countAndFlagsBits, object);
  }

  else
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Logger.conversationBridge);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1DC659000, v7, v8, "ConversationRequestProcessor already released, ignoring actionCandidatesGenerated", v9, 2u);
      MEMORY[0x1E12A2F50](v9, -1, -1);
    }
  }
}

void ConversationBridgeProcessorDelegate.willExecute(executionInputInfo:)(void *a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(*Strong + 1096))(a1);
  }

  else
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static Logger.conversationBridge);
    v4 = a1;
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      *(v7 + 4) = v4;
      *v8 = v4;
      v9 = v4;
      _os_log_impl(&dword_1DC659000, v5, v6, "ConversationRequestProcessor already released, ignoring willExecute for request id %@", v7, 0xCu);
      outlined destroy of ReferenceResolutionClientProtocol?(v8, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1E12A2F50](v8, -1, -1);
      MEMORY[0x1E12A2F50](v7, -1, -1);
    }
  }
}

uint64_t ConversationBridgeProcessorDelegate.fetchSelfReflectionDecision(reply:)(void (*a1)(void *))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(*Strong + 1104))(v8);
    a1(v8);
  }

  else
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static Logger.conversationBridge);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1DC659000, v5, v6, "ConversationRequestProcessor already released, ignoring fetchSelfReflectionDecision", v7, 2u);
      MEMORY[0x1E12A2F50](v7, -1, -1);
    }

    LOBYTE(v8[0]) = 2;
    return (a1)(v8);
  }
}

uint64_t ConversationBridgeProcessorDelegate.submitExternalActivationRequest(withRequestInfo:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(*Strong + 1112))(a1, a2, a3);
  }

  else
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static Logger.conversationBridge);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1DC659000, v11, v12, "ConversationRequestProcessor not in scope. Routing the external activation request directly", v13, 2u);
      MEMORY[0x1E12A2F50](v13, -1, -1);
    }

    return static ServiceBridgeDelegate.defaultSubmitExternalActivationRequest(withRequestInfo:serviceHelper:completion:)(a1, *(v4 + 24), a2, a3);
  }
}

uint64_t ConversationBridgeProcessorDelegate.postToMessageBus(message:completion:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, void), uint64_t a4)
{
  v5 = v4;
  v29 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes0B14XPCTransporterOSgMd, &_s16SiriMessageTypes0B14XPCTransporterOSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v28 - v8;
  v10 = type metadata accessor for MessageXPCTransporter();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  v28[2] = __swift_project_value_buffer(v14, static Logger.conversationBridge);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v28[1] = v5;
    v18 = a3;
    v19 = v17;
    *v17 = 0;
    _os_log_impl(&dword_1DC659000, v15, v16, "Decoding and posting message to message bus", v17, 2u);
    v20 = v19;
    a3 = v18;
    MEMORY[0x1E12A2F50](v20, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v22 = Strong;
    type metadata accessor for PropertyListDecoder();
    swift_allocObject();
    PropertyListDecoder.init()();
    lazy protocol witness table accessor for type MessageXPCTransporter and conformance MessageXPCTransporter();
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
    (*(v11 + 56))(v9, 0, 1, v10);
    (*(v11 + 32))(v13, v9, v10);
    v26 = MessageXPCTransporter.toMessageBase()();
    (*(*v22 + 1120))(v26, a3, v29);

    return (*(v11 + 8))(v13, v10);
  }

  else
  {
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_1DC659000, v23, v24, "Not publising flow message because ConversationRequestProcessor is not in scope", v25, 2u);
      MEMORY[0x1E12A2F50](v25, -1, -1);
    }

    return a3(0, 0);
  }
}

uint64_t ConversationBridgeProcessorDelegate.deinit()
{
  swift_weakDestroy();
  swift_unknownObjectRelease();
  return v0;
}

void specialized ConversationBridgeProcessorDelegate.fallbackToPeer()()
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
    _os_log_impl(&dword_1DC659000, oslog, v1, "ConversationRequestProcessor does not support fallbackToPeer", v2, 2u);
    MEMORY[0x1E12A2F50](v2, -1, -1);
  }
}

unint64_t lazy protocol witness table accessor for type MessageXPCTransporter and conformance MessageXPCTransporter()
{
  result = lazy protocol witness table cache variable for type MessageXPCTransporter and conformance MessageXPCTransporter;
  if (!lazy protocol witness table cache variable for type MessageXPCTransporter and conformance MessageXPCTransporter)
  {
    type metadata accessor for MessageXPCTransporter();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MessageXPCTransporter and conformance MessageXPCTransporter);
  }

  return result;
}

void static ConversationBridgeUtils.replyCommandFailed(forCommand:errorCode:reason:replyHandler:)(void *a1, uint64_t a2, unint64_t a3, unint64_t a4, void (*a5)(id, id), uint64_t a6)
{
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a5)
  {
    v37 = a3;
    v16 = a2;
    v17 = objc_allocWithZone(MEMORY[0x1E69C7778]);
    v38 = a6;

    v18 = [v17 init];
    UUID.init()();
    v19 = UUID.uuidString.getter();
    v21 = v20;
    (*(v13 + 8))(v15, v12);
    v22 = MEMORY[0x1E12A1410](v19, v21);

    [v18 setAceId_];

    v23 = v16;
    v24 = v18;
    v25 = [a1 aceId];
    [v24 setRefId_];

    [v24 setErrorCode_];
    if (a4)
    {
      v26 = v37;
      v27 = MEMORY[0x1E12A1410](v37, a4);
    }

    else
    {
      v27 = 0;
      v26 = 0xD000000000000017;
    }

    [v24 setReason_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
    inited = swift_initStackObject();
    v29 = inited;
    *(inited + 16) = xmmword_1DCA66060;
    *(inited + 32) = 0x6567617373654DLL;
    v30 = inited + 32;
    *(inited + 72) = MEMORY[0x1E69E6158];
    v31 = 0x80000001DCA7F380;
    if (a4)
    {
      v31 = a4;
    }

    *(inited + 40) = 0xE700000000000000;
    *(inited + 48) = v26;
    *(inited + 56) = v31;

    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(v29);
    swift_setDeallocating();
    outlined destroy of (String, Any)(v30);
    v32 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v33 = MEMORY[0x1E12A1410](0x6F69747563657845, 0xEF6567646972426ELL);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v35 = [v32 initWithDomain:v33 code:v23 userInfo:isa];

    v36 = v38;
    a5(v24, v35);

    _sxRi_zRi0_zlySDySSSbGIsegr_SgWOe(a5, v36);
  }
}

void static ConversationBridgeUtils.replyCommandSucceeded(forCommand:replyHandler:)(void *a1, void (*a2)(id, void), uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v10 = objc_allocWithZone(MEMORY[0x1E69C7788]);

    v11 = [v10 init];
    UUID.init()();
    v12 = UUID.uuidString.getter();
    v14 = v13;
    (*(v7 + 8))(v9, v6);
    v15 = MEMORY[0x1E12A1410](v12, v14);

    [v11 setAceId_];

    v16 = v11;
    v17 = [a1 aceId];
    [v16 setRefId_];

    a2(v16, 0);
    _sxRi_zRi0_zlySDySSSbGIsegr_SgWOe(a2, a3);
  }
}

void static ConversationBridgeUtils.replyCommandIgnored(forCommand:errorCode:reason:replyHandler:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(id, id), uint64_t a6)
{
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a5)
  {
    v16 = objc_allocWithZone(MEMORY[0x1E69C7780]);
    v31 = a3;
    v17 = v16;

    v18 = [v17 init];
    UUID.init()();
    v19 = UUID.uuidString.getter();
    v32 = a2;
    v21 = v20;
    (*(v13 + 8))(v15, v12);
    v22 = MEMORY[0x1E12A1410](v19, v21);

    [v18 setAceId_];

    v23 = v18;
    v24 = [a1 aceId];
    [v23 setRefId_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DCA66060;
    *(inited + 32) = 0x6567617373654DLL;
    *(inited + 72) = MEMORY[0x1E69E6158];
    v26 = v31;
    *(inited + 40) = 0xE700000000000000;
    *(inited + 48) = v26;
    *(inited + 56) = a4;

    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    outlined destroy of (String, Any)(inited + 32);
    v27 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v28 = MEMORY[0x1E12A1410](0x6F69747563657845, 0xEF6567646972426ELL);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v30 = [v27 initWithDomain:v28 code:v32 userInfo:isa];

    a5(v23, v30);
    _sxRi_zRi0_zlySDySSSbGIsegr_SgWOe(a5, a6);
  }
}

void closure #1 in static ConversationBridgeUtils.failRequest(serviceHelper:executionRequestId:reason:)()
{
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static Logger.conversationBridge);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_1DC659000, oslog, v1, "Sent CommandFailed to fail this request", v2, 2u);
    MEMORY[0x1E12A2F50](v2, -1, -1);
  }
}

uint64_t outlined destroy of (String, Any)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void specialized static ConversationBridgeUtils.failRequest(serviceHelper:executionRequestId:reason:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v26 = a4;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static Logger.conversationBridge);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_1DC659000, v14, v15, "Sending CommandFailed to fail this request.", v16, 2u);
    MEMORY[0x1E12A2F50](v16, -1, -1);
  }

  v17 = [objc_allocWithZone(MEMORY[0x1E69C7778]) init];
  UUID.init()();
  v18 = UUID.uuidString.getter();
  v20 = v19;
  (*(v10 + 8))(v12, v9);
  v21 = MEMORY[0x1E12A1410](v18, v20);

  [v17 setAceId_];

  v22 = v17;
  v23 = MEMORY[0x1E12A1410](a2, a3);
  [v22 setRefId_];

  if (a5)
  {
    a5 = MEMORY[0x1E12A1410](v26, a5);
  }

  [v22 setReason_];

  aBlock[4] = closure #1 in static ConversationBridgeUtils.failRequest(serviceHelper:executionRequestId:reason:);
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed SABaseCommand?, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_4;
  v24 = _Block_copy(aBlock);
  [a1 handleCommand:v22 completion:v24];
  _Block_release(v24);
}

uint64_t static ConversationCanHandleResult.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  static ConversationCanHandleResult.supportsSecureCoding = a1;
  return result;
}

uint64_t one-time initialization function for unsupported()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v12 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for Input();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = type metadata accessor for UUID();
  (*(*(v7 - 8) + 56))(v2, 1, 1, v7);
  CanHandleResult = type metadata accessor for ConversationCanHandleResult(0);
  v9 = objc_allocWithZone(CanHandleResult);
  v9[OBJC_IVAR____TtC14SiriKitRuntime27ConversationCanHandleResult_directlySupported] = 0;
  v9[OBJC_IVAR____TtC14SiriKitRuntime27ConversationCanHandleResult_exclude] = 1;
  outlined init with copy of ReferenceResolutionClientProtocol?(v5, &v9[OBJC_IVAR____TtC14SiriKitRuntime27ConversationCanHandleResult_reformedInput], &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  outlined init with copy of ReferenceResolutionClientProtocol?(v2, &v9[OBJC_IVAR____TtC14SiriKitRuntime27ConversationCanHandleResult_flowIdentifier], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v12.receiver = v9;
  v12.super_class = CanHandleResult;
  v10 = objc_msgSendSuper2(&v12, sel_init);
  outlined destroy of ReferenceResolutionClientProtocol?(v2, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  result = outlined destroy of ReferenceResolutionClientProtocol?(v5, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  static ConversationCanHandleResult.unsupported = v10;
  return result;
}

uint64_t *ConversationCanHandleResult.unsupported.unsafeMutableAddressor()
{
  if (one-time initialization token for unsupported != -1)
  {
    swift_once();
  }

  return &static ConversationCanHandleResult.unsupported;
}

id static ConversationCanHandleResult.unsupported.getter()
{
  if (one-time initialization token for unsupported != -1)
  {
    swift_once();
  }

  v1 = static ConversationCanHandleResult.unsupported;

  return v1;
}

id static ConversationCanHandleResult.supported(flowIdentifier:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v13 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for Input();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  outlined init with copy of ReferenceResolutionClientProtocol?(a1, v4, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  CanHandleResult = type metadata accessor for ConversationCanHandleResult(0);
  v10 = objc_allocWithZone(CanHandleResult);
  v10[OBJC_IVAR____TtC14SiriKitRuntime27ConversationCanHandleResult_directlySupported] = 1;
  v10[OBJC_IVAR____TtC14SiriKitRuntime27ConversationCanHandleResult_exclude] = 1;
  outlined init with copy of ReferenceResolutionClientProtocol?(v7, &v10[OBJC_IVAR____TtC14SiriKitRuntime27ConversationCanHandleResult_reformedInput], &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  outlined init with copy of ReferenceResolutionClientProtocol?(v4, &v10[OBJC_IVAR____TtC14SiriKitRuntime27ConversationCanHandleResult_flowIdentifier], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v13.receiver = v10;
  v13.super_class = CanHandleResult;
  v11 = objc_msgSendSuper2(&v13, sel_init);
  outlined destroy of ReferenceResolutionClientProtocol?(v4, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v7, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  return v11;
}

SiriKitRuntime::ConversationCanHandleResult::CodingKeys_optional __swiftcall ConversationCanHandleResult.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  v2._countAndFlagsBits = stringValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ConversationCanHandleResult.CodingKeys.init(rawValue:), v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

unint64_t ConversationCanHandleResult.CodingKeys.stringValue.getter(unsigned __int8 a1)
{
  v1 = 0x6564756C637865;
  v2 = 0xD000000000000011;
  if (a1 != 2)
  {
    v2 = 0x6E656449776F6C66;
  }

  if (!a1)
  {
    v1 = 0xD000000000000011;
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

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance ConversationCanHandleResult.CodingKeys(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0x80000001DCA7A890;
  v5 = 0x6E656449776F6C66;
  if (v2 == 2)
  {
    v5 = 0xD000000000000011;
  }

  else
  {
    v4 = 0xEE00726569666974;
  }

  v6 = 0xD000000000000011;
  if (*a1)
  {
    v6 = 0x6564756C637865;
  }

  else
  {
    v3 = 0x80000001DCA7A870;
  }

  if (*a1 <= 1u)
  {
    v7 = v6;
  }

  else
  {
    v7 = v5;
  }

  if (v2 <= 1)
  {
    v8 = v3;
  }

  else
  {
    v8 = v4;
  }

  if (*a2 > 1u)
  {
    if (*a2 == 2)
    {
      v10 = 0x80000001DCA7A890;
      if (v7 != 0xD000000000000011)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v10 = 0xEE00726569666974;
      if (v7 != 0x6E656449776F6C66)
      {
LABEL_28:
        v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
        goto LABEL_29;
      }
    }
  }

  else
  {
    if (*a2)
    {
      v9 = 0x6564756C637865;
    }

    else
    {
      v9 = 0xD000000000000011;
    }

    if (*a2)
    {
      v10 = 0xE700000000000000;
    }

    else
    {
      v10 = 0x80000001DCA7A870;
    }

    if (v7 != v9)
    {
      goto LABEL_28;
    }
  }

  if (v8 != v10)
  {
    goto LABEL_28;
  }

  v11 = 1;
LABEL_29:

  return v11 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ConversationCanHandleResult.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ConversationCanHandleResult.CodingKeys(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ConversationCanHandleResult.CodingKeys(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance ConversationCanHandleResult.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized ConversationCanHandleResult.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance ConversationCanHandleResult.CodingKeys(unint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x6564756C637865;
  v4 = 0x80000001DCA7A890;
  v5 = 0xD000000000000011;
  if (*v1 != 2)
  {
    v5 = 0x6E656449776F6C66;
    v4 = 0xEE00726569666974;
  }

  if (!*v1)
  {
    v3 = 0xD000000000000011;
    v2 = 0x80000001DCA7A870;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance ConversationCanHandleResult.CodingKeys()
{
  v1 = 0x6564756C637865;
  v2 = 0xD000000000000011;
  if (*v0 != 2)
  {
    v2 = 0x6E656449776F6C66;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance ConversationCanHandleResult.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = specialized ConversationCanHandleResult.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ConversationCanHandleResult.CodingKeys(uint64_t a1)
{
  CanHandle = lazy protocol witness table accessor for type ConversationCanHandleResult.CodingKeys and conformance ConversationCanHandleResult.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, CanHandle);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ConversationCanHandleResult.CodingKeys(uint64_t a1)
{
  CanHandle = lazy protocol witness table accessor for type ConversationCanHandleResult.CodingKeys and conformance ConversationCanHandleResult.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, CanHandle);
}

id ConversationCanHandleResult.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ConversationCanHandleResult.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ConversationCanHandleResult(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id specialized static ConversationCanHandleResult.reformTo(input:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v15 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v15 - v6;
  v8 = type metadata accessor for Input();
  v9 = *(v8 - 8);
  (*(v9 + 16))(v7, a1, v8);
  (*(v9 + 56))(v7, 0, 1, v8);
  v10 = type metadata accessor for UUID();
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  CanHandleResult = type metadata accessor for ConversationCanHandleResult(0);
  v12 = objc_allocWithZone(CanHandleResult);
  v12[OBJC_IVAR____TtC14SiriKitRuntime27ConversationCanHandleResult_directlySupported] = 0;
  v12[OBJC_IVAR____TtC14SiriKitRuntime27ConversationCanHandleResult_exclude] = 1;
  outlined init with copy of ReferenceResolutionClientProtocol?(v7, &v12[OBJC_IVAR____TtC14SiriKitRuntime27ConversationCanHandleResult_reformedInput], &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  outlined init with copy of ReferenceResolutionClientProtocol?(v4, &v12[OBJC_IVAR____TtC14SiriKitRuntime27ConversationCanHandleResult_flowIdentifier], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v15.receiver = v12;
  v15.super_class = CanHandleResult;
  v13 = objc_msgSendSuper2(&v15, sel_init);
  outlined destroy of ReferenceResolutionClientProtocol?(v4, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v7, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  return v13;
}

uint64_t lazy protocol witness table accessor for type Input and conformance Input(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Input();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t specialized ConversationCanHandleResult.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ConversationCanHandleResult.CodingKeys.init(rawValue:), v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

unint64_t lazy protocol witness table accessor for type ConversationCanHandleResult.CodingKeys and conformance ConversationCanHandleResult.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ConversationCanHandleResult.CodingKeys and conformance ConversationCanHandleResult.CodingKeys;
  if (!lazy protocol witness table cache variable for type ConversationCanHandleResult.CodingKeys and conformance ConversationCanHandleResult.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConversationCanHandleResult.CodingKeys and conformance ConversationCanHandleResult.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ConversationCanHandleResult.CodingKeys and conformance ConversationCanHandleResult.CodingKeys;
  if (!lazy protocol witness table cache variable for type ConversationCanHandleResult.CodingKeys and conformance ConversationCanHandleResult.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConversationCanHandleResult.CodingKeys and conformance ConversationCanHandleResult.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ConversationCanHandleResult.CodingKeys and conformance ConversationCanHandleResult.CodingKeys;
  if (!lazy protocol witness table cache variable for type ConversationCanHandleResult.CodingKeys and conformance ConversationCanHandleResult.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConversationCanHandleResult.CodingKeys and conformance ConversationCanHandleResult.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ConversationCanHandleResult.CodingKeys and conformance ConversationCanHandleResult.CodingKeys;
  if (!lazy protocol witness table cache variable for type ConversationCanHandleResult.CodingKeys and conformance ConversationCanHandleResult.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConversationCanHandleResult.CodingKeys and conformance ConversationCanHandleResult.CodingKeys);
  }

  return result;
}

void type metadata completion function for ConversationCanHandleResult(uint64_t a1)
{
  _s11SiriKitFlow5InputVSgMaTm_0(319, &lazy cache variable for type metadata for Input?, MEMORY[0x1E69D0100]);
  if (v1 <= 0x3F)
  {
    _s11SiriKitFlow5InputVSgMaTm_0(319, &lazy cache variable for type metadata for UUID?, MEMORY[0x1E69695A8]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void _s11SiriKitFlow5InputVSgMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

void *ConversationCommitResultXPC.error.getter()
{
  v1 = *(v0 + OBJC_IVAR___SKRConversationCommitResult_error);
  v2 = v1;
  return v1;
}

uint64_t ConversationCommitResultXPC.nextPluginActionData.getter()
{
  v1 = *(v0 + OBJC_IVAR___SKRConversationCommitResult_nextPluginActionData);
  outlined copy of Data?(v1, *(v0 + OBJC_IVAR___SKRConversationCommitResult_nextPluginActionData + 8));
  return v1;
}

uint64_t ConversationCommitResultXPC.reparseExecutionRequestID.getter()
{
  v1 = *(v0 + OBJC_IVAR___SKRConversationCommitResult_reparseExecutionRequestID);

  return v1;
}

uint64_t ConversationCommitResultXPC.reparseUserID.getter()
{
  v1 = *(v0 + OBJC_IVAR___SKRConversationCommitResult_reparseUserID);

  return v1;
}

void *ConversationCommitResultXPC.siriXRedirectContext.getter()
{
  v1 = *(v0 + OBJC_IVAR___SKRConversationCommitResult_siriXRedirectContext);
  v2 = v1;
  return v1;
}

uint64_t FlowUnhandledReason.xpcRepresentation.getter()
{
  v1 = type metadata accessor for FlowUnhandledReason();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v0, v1, v3);
  v6 = (*(v2 + 88))(v5, v1);
  if (v6 == *MEMORY[0x1E69CFB50])
  {
    (*(v2 + 96))(v5, v1);
    outlined destroy of ReferenceResolutionClientProtocol?(v5, &_s11SiriKitFlow14PrescribedToolVSgMd, &_s11SiriKitFlow14PrescribedToolVSgMR);
    return 4;
  }

  else if (v6 == *MEMORY[0x1E69CFB58])
  {
    (*(v2 + 8))(v5, v1);
    return 5;
  }

  else if (v6 == *MEMORY[0x1E69CFB70])
  {
    return 1;
  }

  else if (v6 == *MEMORY[0x1E69CFB60])
  {
    return 2;
  }

  else if (v6 == *MEMORY[0x1E69CFB78])
  {
    return 3;
  }

  else if (v6 == *MEMORY[0x1E69CFB68])
  {
    return 6;
  }

  else
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static Logger.executor);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1DC659000, v9, v10, "Unknown FlowUnhandledReason, returning nil", v11, 2u);
      MEMORY[0x1E12A2F50](v11, -1, -1);
    }

    (*(v2 + 8))(v5, v1);
    return 0;
  }
}

uint64_t PrescribedTool.xpcRepresentation.getter()
{
  v1 = v0;
  v2 = type metadata accessor for PrescribedTool();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v18 - v8;
  (*(v3 + 16))(&v18 - v8, v1, v2, v7);
  static PrescribedTool.searchTool.getter();
  lazy protocol witness table accessor for type PrescribedTool and conformance PrescribedTool(&lazy protocol witness table cache variable for type PrescribedTool and conformance PrescribedTool, MEMORY[0x1E69CFE68], MEMORY[0x1E69CFE70]);
  v10 = dispatch thunk of static Equatable.== infix(_:_:)();
  v11 = *(v3 + 8);
  v11(v5, v2);
  if (v10)
  {
    v11(v9, v2);
    return 0;
  }

  else
  {
    static PrescribedTool.generateKnowledgeResponseIntentTool.getter();
    v13 = dispatch thunk of static Equatable.== infix(_:_:)();
    v11(v5, v2);
    v11(v9, v2);
    if (v13)
    {
      return 1;
    }

    else
    {
      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      __swift_project_value_buffer(v14, static Logger.executor);
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&dword_1DC659000, v15, v16, "Unknown PrescribedToolXPC, returning nil", v17, 2u);
        MEMORY[0x1E12A2F50](v17, -1, -1);
      }

      return 0;
    }
  }
}

id SiriXRedirectContext.xpcRepresentation.getter()
{
  v0 = type metadata accessor for SiriXRedirectContext.RedirectReason();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  SiriXRedirectContext.reason.getter();
  v4 = SiriXRedirectContext.RedirectReason.xpcRepresentation.getter();
  (*(v1 + 8))(v3, v0);
  v5 = type metadata accessor for SiriXRedirectContextXPC();
  v6 = objc_allocWithZone(v5);
  *&v6[OBJC_IVAR___SKRSiriXRedirectContext_reason] = v4;
  v8.receiver = v6;
  v8.super_class = v5;
  return objc_msgSendSuper2(&v8, sel_init);
}

uint64_t PrescribedToolXPC.swiftRepresentation.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 == 1)
  {
    static PrescribedTool.generateKnowledgeResponseIntentTool.getter();
  }

  else
  {
    if (a1)
    {
      result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
      __break(1u);
      return result;
    }

    static PrescribedTool.searchTool.getter();
  }

  v4 = type metadata accessor for PrescribedTool();
  v5 = *(*(v4 - 8) + 56);

  return v5(a2, 0, 1, v4);
}

uint64_t static ConversationCommitResultXPC.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  static ConversationCommitResultXPC.supportsSecureCoding = a1;
  return result;
}

unint64_t PrescribedToolXPC.init(rawValue:)(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

unint64_t ConversationCommitResultXPC.CodingKeys.rawValue.getter(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0xD000000000000019;
    v6 = 0x5565737261706572;
    if (a1 != 8)
    {
      v6 = 0xD000000000000014;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x726F727265;
    if (a1 != 5)
    {
      v7 = 0xD000000000000014;
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
    v1 = 1701869940;
    v2 = 0x6574656C706D6F63;
    v3 = 0xD000000000000013;
    if (a1 != 3)
    {
      v3 = 0x6269726373657270;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x6154657669746361;
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

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance ConversationCommitResultXPC.CodingKeys()
{
  v0 = ConversationCommitResultXPC.CodingKeys.stringValue.getter();
  v2 = v1;
  if (v0 == ConversationCommitResultXPC.CodingKeys.stringValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v5 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ConversationCommitResultXPC.CodingKeys()
{
  Hasher.init(_seed:)();
  ConversationCommitResultXPC.CodingKeys.stringValue.getter();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ConversationCommitResultXPC.CodingKeys(uint64_t a1)
{
  ConversationCommitResultXPC.CodingKeys.stringValue.getter();
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ConversationCommitResultXPC.CodingKeys(uint64_t a1)
{
  Hasher.init(_seed:)();
  ConversationCommitResultXPC.CodingKeys.stringValue.getter();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance ConversationCommitResultXPC.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized ConversationCommitResultXPC.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance ConversationCommitResultXPC.CodingKeys@<X0>(uint64_t *a1@<X8>)
{
  result = ConversationCommitResultXPC.CodingKeys.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance ConversationCommitResultXPC.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = specialized ConversationCommitResultXPC.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ConversationCommitResultXPC.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ConversationCommitResultXPC.CodingKeys and conformance ConversationCommitResultXPC.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ConversationCommitResultXPC.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ConversationCommitResultXPC.CodingKeys and conformance ConversationCommitResultXPC.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance ConversationCommitResultTypeXPC@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = specialized ConversationCommitResultTypeXPC.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

unint64_t *protocol witness for RawRepresentable.init(rawValue:) in conformance PrescribedToolXPC@<X0>(unint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 1;
  if (*result > 1)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance RedirectReasonTypeXPC@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = specialized RedirectReasonTypeXPC.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t RedirectReasonXPC.rewrittenUtterance.getter()
{
  v1 = *(v0 + OBJC_IVAR___SKRRedirectReason_rewrittenUtterance);

  return v1;
}

id RedirectReasonXPC.__allocating_init(type:rewrittenUtterance:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  *&v7[OBJC_IVAR___SKRRedirectReason_type] = a1;
  v8 = &v7[OBJC_IVAR___SKRRedirectReason_rewrittenUtterance];
  *v8 = a2;
  *(v8 + 1) = a3;
  v10.receiver = v7;
  v10.super_class = v3;
  return objc_msgSendSuper2(&v10, sel_init);
}

id RedirectReasonXPC.init(type:rewrittenUtterance:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR___SKRRedirectReason_type] = a1;
  v4 = &v3[OBJC_IVAR___SKRRedirectReason_rewrittenUtterance];
  *v4 = a2;
  *(v4 + 1) = a3;
  v6.receiver = v3;
  v6.super_class = type metadata accessor for RedirectReasonXPC();
  return objc_msgSendSuper2(&v6, sel_init);
}

uint64_t RedirectReasonXPC.swiftRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for SiriXRedirectContext.RedirectReason.NoMatchingTool();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + OBJC_IVAR___SKRRedirectReason_type);
  if (v8 <= 1)
  {
    if (!v8)
    {
      v9 = v5;
      lazy protocol witness table accessor for type PrescribedTool and conformance PrescribedTool(&lazy protocol witness table cache variable for type SiriXRedirectContext.RedirectReason.NoMatchingTool and conformance SiriXRedirectContext.RedirectReason.NoMatchingTool, MEMORY[0x1E69CFA10], MEMORY[0x1E69CFA00]);
      static Buildable.builder()();
      Builder.build()();

      (*(v4 + 32))(a1, v7, v9);
      v10 = MEMORY[0x1E69CFA18];
LABEL_8:
      v13 = *v10;
      v14 = type metadata accessor for SiriXRedirectContext.RedirectReason();
      v15 = *(v14 - 8);
      (*(v15 + 104))(a1, v13, v14);
      return (*(v15 + 56))(a1, 0, 1, v14);
    }

    if (v8 == 1)
    {
      type metadata accessor for SiriXRedirectContext.RedirectReason.UnableToHandleRequest();
      lazy protocol witness table accessor for type PrescribedTool and conformance PrescribedTool(&lazy protocol witness table cache variable for type SiriXRedirectContext.RedirectReason.UnableToHandleRequest and conformance SiriXRedirectContext.RedirectReason.UnableToHandleRequest, MEMORY[0x1E69CFA38], MEMORY[0x1E69CFA28]);
      static Buildable.builder()();
      swift_getKeyPath();
      v12 = *(v1 + OBJC_IVAR___SKRRedirectReason_rewrittenUtterance + 8);
      v22 = *(v1 + OBJC_IVAR___SKRRedirectReason_rewrittenUtterance);
      v23 = v12;

      Builder.subscript.setter();
      Builder.build()();

      v10 = MEMORY[0x1E69CFA20];
      goto LABEL_8;
    }

    goto LABEL_14;
  }

  if (v8 == 2)
  {
    v11 = MEMORY[0x1E69CF9F8];
  }

  else
  {
    if (v8 != 3)
    {
LABEL_14:
      v22 = *(v1 + OBJC_IVAR___SKRRedirectReason_type);
      result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
      __break(1u);
      return result;
    }

    v11 = MEMORY[0x1E69CFA40];
  }

  v17 = *v11;
  v18 = type metadata accessor for SiriXRedirectContext.RedirectReason();
  v21 = *(v18 - 8);
  (*(v21 + 104))(a1, v17, v18);
  v19 = *(v21 + 56);

  return v19(a1, 0, 1, v18);
}

uint64_t key path getter for SiriXRedirectContext.RedirectReason.UnableToHandleRequest.rewrittenUtterance : SiriXRedirectContext.RedirectReason.UnableToHandleRequest@<X0>(uint64_t *a2@<X8>)
{
  result = SiriXRedirectContext.RedirectReason.UnableToHandleRequest.rewrittenUtterance.getter();
  *a2 = result;
  a2[1] = v4;
  return result;
}

Swift::Void __swiftcall RedirectReasonXPC.encode(with:)(NSCoder with)
{
  v3 = *(v1 + OBJC_IVAR___SKRRedirectReason_type);
  v4 = MEMORY[0x1E12A1410](1701869940, 0xE400000000000000);
  [(objc_class *)with.super.isa encodeInteger:v3 forKey:v4];

  if (*(v1 + OBJC_IVAR___SKRRedirectReason_rewrittenUtterance + 8))
  {
    v5 = MEMORY[0x1E12A1410](*(v1 + OBJC_IVAR___SKRRedirectReason_rewrittenUtterance));
  }

  else
  {
    v5 = 0;
  }

  v6 = MEMORY[0x1E12A1410](0xD000000000000012, 0x80000001DCA7A980);
  [(objc_class *)with.super.isa encodeObject:v5 forKey:v6];
  swift_unknownObjectRelease();
}

uint64_t RedirectReasonXPC.init(coder:)(void *a1)
{
  v2 = MEMORY[0x1E12A1410](1701869940, 0xE400000000000000);
  v3 = [a1 decodeIntegerForKey_];

  if (v3 > 3)
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Logger.executor);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 134217984;
      *(v14 + 4) = v3;
      _os_log_impl(&dword_1DC659000, v12, v13, "Error decoding RedirectReasonTypeXPC: Unknown RedirectReasonTypeXPC:%ld", v14, 0xCu);
      MEMORY[0x1E12A2F50](v14, -1, -1);
    }

    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    v4 = MEMORY[0x1E12A1410](0xD000000000000012, 0x80000001DCA7A980);
    v5 = [a1 containsValueForKey_];

    if (v5 && (type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSString, 0x1E696AEC0), (v6 = NSCoder.decodeObject<A>(of:forKey:)()) != 0))
    {
      v7 = v6;
      v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = v9;
    }

    else
    {
      v8 = 0;
      v10 = 0;
    }

    ObjectType = swift_getObjectType();
    v17 = (*(ObjectType + 96))(v3, v8, v10);

    swift_deallocPartialClassInstance();
    return v17;
  }
}

SiriKitRuntime::RedirectReasonXPC::CodingKeys_optional __swiftcall RedirectReasonXPC.CodingKeys.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of RedirectReasonXPC.CodingKeys.init(rawValue:), v2);

  if (v3 == 1)
  {
    v4.value = SiriKitRuntime_RedirectReasonXPC_CodingKeys_rewrittenUtterance;
  }

  else
  {
    v4.value = SiriKitRuntime_RedirectReasonXPC_CodingKeys_unknownDefault;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

SiriKitRuntime::RedirectReasonXPC::CodingKeys_optional __swiftcall RedirectReasonXPC.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  v2._countAndFlagsBits = stringValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of RedirectReasonXPC.CodingKeys.init(rawValue:), v2);

  if (v3 == 1)
  {
    v4.value = SiriKitRuntime_RedirectReasonXPC_CodingKeys_rewrittenUtterance;
  }

  else
  {
    v4.value = SiriKitRuntime_RedirectReasonXPC_CodingKeys_unknownDefault;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t RedirectReasonXPC.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance RedirectReasonXPC.CodingKeys(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000012;
  }

  else
  {
    v3 = 1701869940;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0x80000001DCA7A980;
  }

  if (*a2)
  {
    v5 = 0xD000000000000012;
  }

  else
  {
    v5 = 1701869940;
  }

  if (*a2)
  {
    v6 = 0x80000001DCA7A980;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance RedirectReasonXPC.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance RedirectReasonXPC.CodingKeys(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance RedirectReasonXPC.CodingKeys(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance RedirectReasonXPC.CodingKeys@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of RedirectReasonXPC.CodingKeys.init(rawValue:), *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance RedirectReasonXPC.CodingKeys(unint64_t *a1@<X8>)
{
  v2 = 0x80000001DCA7A980;
  v3 = 1701869940;
  if (*v1)
  {
    v3 = 0xD000000000000012;
  }

  else
  {
    v2 = 0xE400000000000000;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance RedirectReasonXPC.CodingKeys()
{
  if (*v0)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance RedirectReasonXPC.CodingKeys@<X0>(Swift::String string@<0:X0, 8:X1>, char *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of RedirectReasonXPC.CodingKeys.init(rawValue:), v3);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance RedirectReasonXPC.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RedirectReasonXPC.CodingKeys and conformance RedirectReasonXPC.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance RedirectReasonXPC.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RedirectReasonXPC.CodingKeys and conformance RedirectReasonXPC.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id SiriXRedirectContextXPC.__allocating_init(reason:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR___SKRSiriXRedirectContext_reason] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id SiriXRedirectContextXPC.init(reason:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___SKRSiriXRedirectContext_reason] = a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SiriXRedirectContextXPC();
  return objc_msgSendSuper2(&v3, sel_init);
}

void *SiriXRedirectContextXPC.swiftRepresentation.getter()
{
  type metadata accessor for SiriXRedirectContext();
  lazy protocol witness table accessor for type PrescribedTool and conformance PrescribedTool(&lazy protocol witness table cache variable for type SiriXRedirectContext and conformance SiriXRedirectContext, MEMORY[0x1E69CFA50], MEMORY[0x1E69CF9F0]);
  return static Buildable.withBuilder(_:)();
}

uint64_t closure #1 in SiriXRedirectContextXPC.swiftRepresentation.getter(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0A16XRedirectContextV14RedirectReasonOSgMd, &_s11SiriKitFlow0A16XRedirectContextV14RedirectReasonOSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & **(a2 + OBJC_IVAR___SKRSiriXRedirectContext_reason)) + 0x68))();
  return Builder.subscript.setter();
}

Swift::Void __swiftcall SiriXRedirectContextXPC.encode(with:)(NSCoder with)
{
  v3 = *(v1 + OBJC_IVAR___SKRSiriXRedirectContext_reason);
  v4 = MEMORY[0x1E12A1410](0x6E6F73616572, 0xE600000000000000);
  [(objc_class *)with.super.isa encodeObject:v3 forKey:v4];
}

uint64_t SiriXRedirectContextXPC.init(coder:)(void *a1)
{
  v2 = MEMORY[0x1E12A1410](0x6E6F73616572, 0xE600000000000000);
  v3 = [a1 containsValueForKey_];

  if (v3 && (type metadata accessor for RedirectReasonXPC(), (v4 = NSCoder.decodeObject<A>(of:forKey:)()) != 0))
  {
    v5 = v4;
    ObjectType = swift_getObjectType();
    v7 = (*(ObjectType + 88))(v5);

    swift_deallocPartialClassInstance();
    return v7;
  }

  else
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Logger.executor);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1DC659000, v10, v11, "Unable to initialize SiriXRedirectContextXPC", v12, 2u);
      MEMORY[0x1E12A2F50](v12, -1, -1);
    }

    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return 0;
  }
}

BOOL SiriXRedirectContextXPC.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SiriXRedirectContextXPC.CodingKeys.init(rawValue:), v2);

  return v3 != 0;
}

BOOL SiriXRedirectContextXPC.CodingKeys.init(stringValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SiriXRedirectContextXPC.CodingKeys.init(stringValue:), v2);

  return v3 != 0;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance SiriXRedirectContextXPC.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SiriXRedirectContextXPC.CodingKeys(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance SiriXRedirectContextXPC.CodingKeys@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of protocol witness for RawRepresentable.init(rawValue:) in conformance SiriXRedirectContextXPC.CodingKeys, *a1);

  *a2 = v3 != 0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance SiriXRedirectContextXPC.CodingKeys@<X0>(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of protocol witness for CodingKey.init(stringValue:) in conformance SiriXRedirectContextXPC.CodingKeys, v3);

  *a2 = v5 != 0;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SiriXRedirectContextXPC.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SiriXRedirectContextXPC.CodingKeys and conformance SiriXRedirectContextXPC.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SiriXRedirectContextXPC.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SiriXRedirectContextXPC.CodingKeys and conformance SiriXRedirectContextXPC.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id SiriXRedirectContextXPC.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ConversationCommitResultXPC.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ConversationCommitResultTypeXPC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1E12A23F0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ConversationCommitResultTypeXPC(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x1E12A23F0](v2);
  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance FlowUnhandledReasonXPC@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = specialized FlowUnhandledReasonXPC.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id SiriXRedirectContext.RedirectReason.xpcRepresentation.getter()
{
  v1 = v0;
  v2 = type metadata accessor for SiriXRedirectContext.RedirectReason.UnableToHandleRequest();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SiriXRedirectContext.RedirectReason();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, v1, v6, v8);
  v11 = (*(v7 + 88))(v10, v6);
  if (v11 == *MEMORY[0x1E69CFA18])
  {
    v12 = type metadata accessor for RedirectReasonXPC();
    v13 = objc_allocWithZone(v12);
    *&v13[OBJC_IVAR___SKRRedirectReason_type] = 0;
    v14 = &v13[OBJC_IVAR___SKRRedirectReason_rewrittenUtterance];
    *v14 = 0;
    *(v14 + 1) = 0;
    v30.receiver = v13;
    v30.super_class = v12;
    v15 = objc_msgSendSuper2(&v30, sel_init);
    (*(v7 + 8))(v10, v6);
    return v15;
  }

  if (v11 == *MEMORY[0x1E69CFA20])
  {
    (*(v7 + 96))(v10, v6);
    (*(v3 + 32))(v5, v10, v2);
    v16 = SiriXRedirectContext.RedirectReason.UnableToHandleRequest.rewrittenUtterance.getter();
    v18 = v17;
    v19 = type metadata accessor for RedirectReasonXPC();
    v20 = objc_allocWithZone(v19);
    *&v20[OBJC_IVAR___SKRRedirectReason_type] = 1;
    v21 = &v20[OBJC_IVAR___SKRRedirectReason_rewrittenUtterance];
    *v21 = v16;
    v21[1] = v18;
    v32.receiver = v20;
    v32.super_class = v19;
    v15 = objc_msgSendSuper2(&v32, sel_init);
    (*(v3 + 8))(v5, v2);
    return v15;
  }

  if (v11 == *MEMORY[0x1E69CF9F8])
  {
    v22 = type metadata accessor for RedirectReasonXPC();
    v23 = objc_allocWithZone(v22);
    *&v23[OBJC_IVAR___SKRRedirectReason_type] = 2;
    v24 = &v23[OBJC_IVAR___SKRRedirectReason_rewrittenUtterance];
    *v24 = 0;
    *(v24 + 1) = 0;
    v31.receiver = v23;
    v31.super_class = v22;
    return objc_msgSendSuper2(&v31, sel_init);
  }

  if (v11 == *MEMORY[0x1E69CFA40])
  {
    v26 = type metadata accessor for RedirectReasonXPC();
    v27 = objc_allocWithZone(v26);
    *&v27[OBJC_IVAR___SKRRedirectReason_type] = 3;
    v28 = &v27[OBJC_IVAR___SKRRedirectReason_rewrittenUtterance];
    *v28 = 0;
    *(v28 + 1) = 0;
    v33.receiver = v27;
    v33.super_class = v26;
    return objc_msgSendSuper2(&v33, sel_init);
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

id specialized static ConversationCommitResultXPC.flowWasNotHandled(flowUnhandledReason:)(uint64_t a1)
{
  v50 = a1;
  v1 = type metadata accessor for SiriXRedirectContext.RedirectReason();
  v48 = *(v1 - 8);
  v49 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v46 = &v45 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for SiriXRedirectContext();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v47 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PrescribedTool();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v45 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FlowUnhandledReason();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0A16XRedirectContextVSgMd, &_s11SiriKitFlow0A16XRedirectContextVSgMR);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v45 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14PrescribedToolVSgMd, &_s11SiriKitFlow14PrescribedToolVSgMR);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v45 - v18;
  (*(v7 + 56))(&v45 - v18, 1, 1, v6, v17);
  v51 = v3;
  v52 = v4;
  v20 = *(v4 + 56);
  v20(v15, 1, 1, v3);
  (*(v10 + 16))(v12);
  v21 = (*(v10 + 88))(v12, v9);
  if (v21 == *MEMORY[0x1E69CFB50])
  {
    (*(v10 + 96))(v12, v9);
    outlined assign with take of PrescribedTool?(v12, v19);
  }

  else if (v21 == *MEMORY[0x1E69CFB58])
  {
    (*(v10 + 96))(v12, v9);
    outlined destroy of ReferenceResolutionClientProtocol?(v15, &_s11SiriKitFlow0A16XRedirectContextVSgMd, &_s11SiriKitFlow0A16XRedirectContextVSgMR);
    v22 = v51;
    (*(v52 + 32))(v15, v12, v51);
    v20(v15, 0, 1, v22);
  }

  else
  {
    (*(v10 + 8))(v12, v9);
  }

  v23 = FlowUnhandledReason.xpcRepresentation.getter();
  v24 = 1;
  if ((*(v7 + 48))(v19, 1, v6))
  {
    v25 = 0;
  }

  else
  {
    v26 = v45;
    (*(v7 + 16))(v45, v19, v6);
    v25 = PrescribedTool.xpcRepresentation.getter();
    v24 = v27;
    (*(v7 + 8))(v26, v6);
  }

  v28 = v51;
  v29 = v52;
  v30 = off_1E8646000;
  if ((*(v52 + 48))(v15, 1, v51))
  {
    v31 = 0;
  }

  else
  {
    v32 = v47;
    (*(v29 + 16))(v47, v15, v28);
    v33 = v46;
    SiriXRedirectContext.reason.getter();
    v34 = SiriXRedirectContext.RedirectReason.xpcRepresentation.getter();
    (*(v48 + 8))(v33, v49);
    v35 = type metadata accessor for SiriXRedirectContextXPC();
    v36 = objc_allocWithZone(v35);
    *&v36[OBJC_IVAR___SKRSiriXRedirectContext_reason] = v34;
    v53.receiver = v36;
    v53.super_class = v35;
    v30 = off_1E8646000;
    v31 = objc_msgSendSuper2(&v53, sel_init);
    (*(v29 + 8))(v32, v28);
  }

  v37 = type metadata accessor for ConversationCommitResultXPC();
  v38 = objc_allocWithZone(v37);
  *&v38[OBJC_IVAR___SKRConversationCommitResult_type] = 2;
  v39 = MEMORY[0x1E69E7CC0];
  *&v38[OBJC_IVAR___SKRConversationCommitResult_activeTasks] = MEMORY[0x1E69E7CC0];
  *&v38[OBJC_IVAR___SKRConversationCommitResult_completedTasks] = v39;
  *&v38[OBJC_IVAR___SKRConversationCommitResult_flowUnhandledReason] = v23;
  v40 = &v38[OBJC_IVAR___SKRConversationCommitResult_prescribedTool];
  *v40 = v25;
  v40[8] = v24 & 1;
  *&v38[OBJC_IVAR___SKRConversationCommitResult_error] = 0;
  *&v38[OBJC_IVAR___SKRConversationCommitResult_nextPluginActionData] = xmmword_1DCA69F00;
  v41 = &v38[OBJC_IVAR___SKRConversationCommitResult_reparseExecutionRequestID];
  *v41 = 0;
  *(v41 + 1) = 0;
  v42 = &v38[OBJC_IVAR___SKRConversationCommitResult_reparseUserID];
  *v42 = 0;
  *(v42 + 1) = 0;
  *&v38[OBJC_IVAR___SKRConversationCommitResult_siriXRedirectContext] = v31;
  v54.receiver = v38;
  v54.super_class = v37;
  v43 = objc_msgSendSuper2(&v54, v30[390]);
  outlined destroy of ReferenceResolutionClientProtocol?(v15, &_s11SiriKitFlow0A16XRedirectContextVSgMd, &_s11SiriKitFlow0A16XRedirectContextVSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v19, &_s11SiriKitFlow14PrescribedToolVSgMd, &_s11SiriKitFlow14PrescribedToolVSgMR);
  return v43;
}

id specialized static ConversationCommitResultXPC.flowWantsToRedirect(nextPluginAction:)(uint64_t a1)
{
  v1 = PluginAction.serialize()();
  v3 = v2;
  v4 = type metadata accessor for ConversationCommitResultXPC();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR___SKRConversationCommitResult_type] = 3;
  v6 = MEMORY[0x1E69E7CC0];
  *&v5[OBJC_IVAR___SKRConversationCommitResult_activeTasks] = MEMORY[0x1E69E7CC0];
  *&v5[OBJC_IVAR___SKRConversationCommitResult_completedTasks] = v6;
  *&v5[OBJC_IVAR___SKRConversationCommitResult_flowUnhandledReason] = 0;
  v7 = &v5[OBJC_IVAR___SKRConversationCommitResult_prescribedTool];
  *v7 = 0;
  v7[8] = 1;
  *&v5[OBJC_IVAR___SKRConversationCommitResult_error] = 0;
  v8 = &v5[OBJC_IVAR___SKRConversationCommitResult_nextPluginActionData];
  *v8 = v1;
  v8[1] = v3;
  v9 = &v5[OBJC_IVAR___SKRConversationCommitResult_reparseExecutionRequestID];
  *v9 = 0;
  *(v9 + 1) = 0;
  v10 = &v5[OBJC_IVAR___SKRConversationCommitResult_reparseUserID];
  *v10 = 0;
  *(v10 + 1) = 0;
  *&v5[OBJC_IVAR___SKRConversationCommitResult_siriXRedirectContext] = 0;
  v12.receiver = v5;
  v12.super_class = v4;
  return objc_msgSendSuper2(&v12, sel_init);
}

id specialized static ConversationCommitResultXPC.flowNeedsReparse(executionRequestID:userID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for ConversationCommitResultXPC();
  v9 = objc_allocWithZone(v8);
  *&v9[OBJC_IVAR___SKRConversationCommitResult_type] = 4;
  v10 = MEMORY[0x1E69E7CC0];
  *&v9[OBJC_IVAR___SKRConversationCommitResult_activeTasks] = MEMORY[0x1E69E7CC0];
  *&v9[OBJC_IVAR___SKRConversationCommitResult_completedTasks] = v10;
  *&v9[OBJC_IVAR___SKRConversationCommitResult_flowUnhandledReason] = 0;
  v11 = &v9[OBJC_IVAR___SKRConversationCommitResult_prescribedTool];
  *v11 = 0;
  v11[8] = 1;
  *&v9[OBJC_IVAR___SKRConversationCommitResult_error] = 0;
  *&v9[OBJC_IVAR___SKRConversationCommitResult_nextPluginActionData] = xmmword_1DCA69F00;
  v12 = &v9[OBJC_IVAR___SKRConversationCommitResult_reparseExecutionRequestID];
  *v12 = a1;
  *(v12 + 1) = a2;
  v13 = &v9[OBJC_IVAR___SKRConversationCommitResult_reparseUserID];
  *v13 = a3;
  *(v13 + 1) = a4;
  *&v9[OBJC_IVAR___SKRConversationCommitResult_siriXRedirectContext] = 0;
  v15.receiver = v9;
  v15.super_class = v8;

  return objc_msgSendSuper2(&v15, sel_init);
}

uint64_t outlined init with take of PrescribedTool?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14PrescribedToolVSgMd, &_s11SiriKitFlow14PrescribedToolVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of PrescribedTool?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14PrescribedToolVSgMd, &_s11SiriKitFlow14PrescribedToolVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id specialized static ConversationCommitResultXPC.error(_:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DCA66060;
  *(inited + 32) = 0x7470697263736564;
  *(inited + 40) = 0xEB000000006E6F69;
  v18 = a1;
  v3 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v4 = String.init<A>(describing:)();
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v4;
  *(inited + 56) = v5;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of ReferenceResolutionClientProtocol?(inited + 32, &_sSS_yptMd, &_sSS_yptMR);
  v6 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v7 = MEMORY[0x1E12A1410](0xD00000000000001DLL, 0x80000001DCA7F880);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v9 = [v6 initWithDomain:v7 code:-1 userInfo:isa];

  v10 = type metadata accessor for ConversationCommitResultXPC();
  v11 = objc_allocWithZone(v10);
  *&v11[OBJC_IVAR___SKRConversationCommitResult_type] = 0;
  v12 = MEMORY[0x1E69E7CC0];
  *&v11[OBJC_IVAR___SKRConversationCommitResult_activeTasks] = MEMORY[0x1E69E7CC0];
  *&v11[OBJC_IVAR___SKRConversationCommitResult_completedTasks] = v12;
  *&v11[OBJC_IVAR___SKRConversationCommitResult_flowUnhandledReason] = 0;
  v13 = &v11[OBJC_IVAR___SKRConversationCommitResult_prescribedTool];
  *v13 = 0;
  v13[8] = 1;
  *&v11[OBJC_IVAR___SKRConversationCommitResult_error] = v9;
  *&v11[OBJC_IVAR___SKRConversationCommitResult_nextPluginActionData] = xmmword_1DCA69F00;
  v14 = &v11[OBJC_IVAR___SKRConversationCommitResult_reparseExecutionRequestID];
  *v14 = 0;
  *(v14 + 1) = 0;
  v15 = &v11[OBJC_IVAR___SKRConversationCommitResult_reparseUserID];
  *v15 = 0;
  *(v15 + 1) = 0;
  *&v11[OBJC_IVAR___SKRConversationCommitResult_siriXRedirectContext] = 0;
  v17.receiver = v11;
  v17.super_class = v10;
  return objc_msgSendSuper2(&v17, sel_init);
}

unint64_t specialized ConversationCommitResultXPC.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ConversationCommitResultXPC.CodingKeys.init(rawValue:), v2);

  if (v3 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v3;
  }
}

unint64_t specialized RedirectReasonTypeXPC.init(rawValue:)(unint64_t result)
{
  if (result > 3)
  {
    return 0;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type PrescribedTool and conformance PrescribedTool(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t lazy protocol witness table accessor for type ConversationCommitResultXPC.CodingKeys and conformance ConversationCommitResultXPC.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ConversationCommitResultXPC.CodingKeys and conformance ConversationCommitResultXPC.CodingKeys;
  if (!lazy protocol witness table cache variable for type ConversationCommitResultXPC.CodingKeys and conformance ConversationCommitResultXPC.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConversationCommitResultXPC.CodingKeys and conformance ConversationCommitResultXPC.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ConversationCommitResultXPC.CodingKeys and conformance ConversationCommitResultXPC.CodingKeys;
  if (!lazy protocol witness table cache variable for type ConversationCommitResultXPC.CodingKeys and conformance ConversationCommitResultXPC.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConversationCommitResultXPC.CodingKeys and conformance ConversationCommitResultXPC.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ConversationCommitResultXPC.CodingKeys and conformance ConversationCommitResultXPC.CodingKeys;
  if (!lazy protocol witness table cache variable for type ConversationCommitResultXPC.CodingKeys and conformance ConversationCommitResultXPC.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConversationCommitResultXPC.CodingKeys and conformance ConversationCommitResultXPC.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ConversationCommitResultXPC.CodingKeys and conformance ConversationCommitResultXPC.CodingKeys;
  if (!lazy protocol witness table cache variable for type ConversationCommitResultXPC.CodingKeys and conformance ConversationCommitResultXPC.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConversationCommitResultXPC.CodingKeys and conformance ConversationCommitResultXPC.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ConversationCommitResultTypeXPC and conformance ConversationCommitResultTypeXPC()
{
  result = lazy protocol witness table cache variable for type ConversationCommitResultTypeXPC and conformance ConversationCommitResultTypeXPC;
  if (!lazy protocol witness table cache variable for type ConversationCommitResultTypeXPC and conformance ConversationCommitResultTypeXPC)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConversationCommitResultTypeXPC and conformance ConversationCommitResultTypeXPC);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PrescribedToolXPC and conformance PrescribedToolXPC()
{
  result = lazy protocol witness table cache variable for type PrescribedToolXPC and conformance PrescribedToolXPC;
  if (!lazy protocol witness table cache variable for type PrescribedToolXPC and conformance PrescribedToolXPC)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PrescribedToolXPC and conformance PrescribedToolXPC);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RedirectReasonTypeXPC and conformance RedirectReasonTypeXPC()
{
  result = lazy protocol witness table cache variable for type RedirectReasonTypeXPC and conformance RedirectReasonTypeXPC;
  if (!lazy protocol witness table cache variable for type RedirectReasonTypeXPC and conformance RedirectReasonTypeXPC)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RedirectReasonTypeXPC and conformance RedirectReasonTypeXPC);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RedirectReasonXPC.CodingKeys and conformance RedirectReasonXPC.CodingKeys()
{
  result = lazy protocol witness table cache variable for type RedirectReasonXPC.CodingKeys and conformance RedirectReasonXPC.CodingKeys;
  if (!lazy protocol witness table cache variable for type RedirectReasonXPC.CodingKeys and conformance RedirectReasonXPC.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RedirectReasonXPC.CodingKeys and conformance RedirectReasonXPC.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RedirectReasonXPC.CodingKeys and conformance RedirectReasonXPC.CodingKeys;
  if (!lazy protocol witness table cache variable for type RedirectReasonXPC.CodingKeys and conformance RedirectReasonXPC.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RedirectReasonXPC.CodingKeys and conformance RedirectReasonXPC.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RedirectReasonXPC.CodingKeys and conformance RedirectReasonXPC.CodingKeys;
  if (!lazy protocol witness table cache variable for type RedirectReasonXPC.CodingKeys and conformance RedirectReasonXPC.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RedirectReasonXPC.CodingKeys and conformance RedirectReasonXPC.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RedirectReasonXPC.CodingKeys and conformance RedirectReasonXPC.CodingKeys;
  if (!lazy protocol witness table cache variable for type RedirectReasonXPC.CodingKeys and conformance RedirectReasonXPC.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RedirectReasonXPC.CodingKeys and conformance RedirectReasonXPC.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SiriXRedirectContextXPC.CodingKeys and conformance SiriXRedirectContextXPC.CodingKeys()
{
  result = lazy protocol witness table cache variable for type SiriXRedirectContextXPC.CodingKeys and conformance SiriXRedirectContextXPC.CodingKeys;
  if (!lazy protocol witness table cache variable for type SiriXRedirectContextXPC.CodingKeys and conformance SiriXRedirectContextXPC.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriXRedirectContextXPC.CodingKeys and conformance SiriXRedirectContextXPC.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriXRedirectContextXPC.CodingKeys and conformance SiriXRedirectContextXPC.CodingKeys;
  if (!lazy protocol witness table cache variable for type SiriXRedirectContextXPC.CodingKeys and conformance SiriXRedirectContextXPC.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriXRedirectContextXPC.CodingKeys and conformance SiriXRedirectContextXPC.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriXRedirectContextXPC.CodingKeys and conformance SiriXRedirectContextXPC.CodingKeys;
  if (!lazy protocol witness table cache variable for type SiriXRedirectContextXPC.CodingKeys and conformance SiriXRedirectContextXPC.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriXRedirectContextXPC.CodingKeys and conformance SiriXRedirectContextXPC.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriXRedirectContextXPC.CodingKeys and conformance SiriXRedirectContextXPC.CodingKeys;
  if (!lazy protocol witness table cache variable for type SiriXRedirectContextXPC.CodingKeys and conformance SiriXRedirectContextXPC.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriXRedirectContextXPC.CodingKeys and conformance SiriXRedirectContextXPC.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type FlowUnhandledReasonXPC and conformance FlowUnhandledReasonXPC()
{
  result = lazy protocol witness table cache variable for type FlowUnhandledReasonXPC and conformance FlowUnhandledReasonXPC;
  if (!lazy protocol witness table cache variable for type FlowUnhandledReasonXPC and conformance FlowUnhandledReasonXPC)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FlowUnhandledReasonXPC and conformance FlowUnhandledReasonXPC);
  }

  return result;
}

void *assignWithCopy for ConversationCommitResult(void *a1, void *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    outlined destroy of ConversationCommitResult(a1);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v6 = type metadata accessor for PluginAction();
        (*(*(v6 - 8) + 16))(a1, a2, v6);
      }

      else
      {
        *a1 = *a2;
        a1[1] = a2[1];
        a1[2] = a2[2];
        a1[3] = a2[3];
      }
    }

    else if (EnumCaseMultiPayload)
    {
      v7 = type metadata accessor for FlowUnhandledReason();
      (*(*(v7 - 8) + 16))(a1, a2, v7);
    }

    else
    {
      *a1 = *a2;
      a1[1] = a2[1];
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t outlined destroy of ConversationCommitResult(uint64_t a1)
{
  v2 = type metadata accessor for ConversationCommitResult(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *initializeWithTake for ConversationCommitResult(void *a1, const void *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v8 = type metadata accessor for PluginAction();
    (*(*(v8 - 8) + 32))(a1, a2, v8);
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v7 = type metadata accessor for FlowUnhandledReason();
    (*(*(v7 - 8) + 32))(a1, a2, v7);
LABEL_5:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v10 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v10);
}

void *assignWithTake for ConversationCommitResult(void *a1, const void *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  outlined destroy of ConversationCommitResult(a1);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v8 = type metadata accessor for PluginAction();
    (*(*(v8 - 8) + 32))(a1, a2, v8);
    goto LABEL_6;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v7 = type metadata accessor for FlowUnhandledReason();
    (*(*(v7 - 8) + 32))(a1, a2, v7);
LABEL_6:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v10 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v10);
}

uint64_t type metadata completion function for ConversationCommitResult(uint64_t a1)
{
  result = type metadata accessor for FlowUnhandledReason();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for PluginAction();
    if (v3 <= 0x3F)
    {
      swift_initEnumMetadataMultiPayload();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RedirectReasonXPC.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RedirectReasonXPC.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t outlined assign with take of PrescribedTool?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14PrescribedToolVSgMd, &_s11SiriKitFlow14PrescribedToolVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t ConversationContextUpdateMetadata.__allocating_init(didFallbackToServer:requestType:flowPluginInfo:currentUserId:emptyServerContext:meetsUserSessionThreshold:meetsPersonalRequestThreshold:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6, char a7)
{
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  v15 = OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_requestType;
  v16 = type metadata accessor for RequestType();
  (*(*(v16 - 8) + 32))(v14 + v15, a2, v16);
  *(v14 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_flowPluginInfo) = a3;
  v17 = OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_currentUserId;
  v18 = type metadata accessor for UserID();
  (*(*(v18 - 8) + 32))(v14 + v17, a4, v18);
  *(v14 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_emptyServerContext) = a5;
  *(v14 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_meetsUserSessionThreshold) = a6;
  *(v14 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_meetsPersonalRequestThreshold) = a7;
  return v14;
}

void *ConversationContextUpdateMetadata.flowPluginInfo.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_flowPluginInfo);
  v2 = v1;
  return v1;
}

uint64_t ConversationContextUpdateMetadata.requestType.getter@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a2(0);
  v7 = *(*(v6 - 8) + 16);

  return v7(a3, v3 + v5, v6);
}

uint64_t ConversationContextUpdateMetadata.init(didFallbackToServer:requestType:flowPluginInfo:currentUserId:emptyServerContext:meetsUserSessionThreshold:meetsPersonalRequestThreshold:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6, char a7)
{
  *(v7 + 16) = a1;
  v14 = OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_requestType;
  v15 = type metadata accessor for RequestType();
  (*(*(v15 - 8) + 32))(v7 + v14, a2, v15);
  *(v7 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_flowPluginInfo) = a3;
  v16 = OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_currentUserId;
  v17 = type metadata accessor for UserID();
  (*(*(v17 - 8) + 32))(v7 + v16, a4, v17);
  *(v7 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_emptyServerContext) = a5;
  *(v7 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_meetsUserSessionThreshold) = a6;
  *(v7 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_meetsPersonalRequestThreshold) = a7;
  return v7;
}

uint64_t ConversationContextUpdateMetadata.__allocating_init(didFallbackToServer:requestType:flowPluginInfo:emptyServerContext:rcState:)(int a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v54 = a4;
  v53 = a3;
  v52 = a1;
  v7 = type metadata accessor for SelectedUserAttributes();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v45 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v42 - v14;
  v16 = type metadata accessor for UserID();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for RequestType();
  v21 = *(v20 - 8);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = *(v21 + 16);
  v46 = &v42 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = v25;
  v51 = a2;
  v24(v22);
  v48 = v19;
  v49 = v17;
  v26 = *(v17 + 16);
  v50 = v16;
  v27 = v26(v19, a5 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_userId, v16);
  v28 = *(*a5 + 792);
  v28(v27);
  v29 = v7;
  v30 = v8;
  v31 = *(v8 + 48);
  v32 = v31(v15, 1, v29);
  v43 = v10;
  if (v32)
  {
    v33 = outlined destroy of SelectedUserAttributes?(v15);
    v44 = 0;
  }

  else
  {
    (*(v30 + 16))(v10, v15, v29);
    outlined destroy of SelectedUserAttributes?(v15);
    v44 = SelectedUserAttributes.meetsUserSessionThreshold.getter();
    v33 = (*(v30 + 8))(v10, v29);
  }

  v34 = v29;
  v35 = v30;
  v36 = v45;
  v28(v33);
  if (v31(v36, 1, v29))
  {

    v37 = v47;
    (*(v21 + 8))(v51, v47);
    outlined destroy of SelectedUserAttributes?(v36);
    v38 = 0;
  }

  else
  {
    v39 = v43;
    (*(v35 + 16))(v43, v36, v29);
    outlined destroy of SelectedUserAttributes?(v36);
    v38 = SelectedUserAttributes.meetsPersonalRequestThreshold.getter();

    v37 = v47;
    (*(v21 + 8))(v51, v47);
    (*(v35 + 8))(v39, v34);
  }

  v40 = swift_allocObject();
  *(v40 + 16) = v52 & 1;
  (*(v21 + 32))(v40 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_requestType, v46, v37);
  *(v40 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_flowPluginInfo) = v53;
  (*(v49 + 32))(v40 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_currentUserId, v48, v50);
  *(v40 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_emptyServerContext) = v54 & 1;
  *(v40 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_meetsUserSessionThreshold) = v44 & 1;
  *(v40 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_meetsPersonalRequestThreshold) = v38 & 1;
  return v40;
}

uint64_t outlined destroy of SelectedUserAttributes?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ConversationContextUpdateMetadata.__allocating_init(didFallbackToServer:requestType:flowPluginInfo:emptyServerContext:rcState:fallbackUserId:)(int a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v71 = a6;
  v74 = a4;
  v73 = a3;
  v76 = a2;
  v72 = a1;
  v69 = type metadata accessor for SelectedUserAttributes();
  v8 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v68 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v70 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v59 - v13;
  v15 = type metadata accessor for UserID();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for RequestType();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v75 = &v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v59 - v23;
  if (a5)
  {
    v67 = v6;
    v63 = v20;
    v26 = *(v20 + 16);
    v26(&v59 - v23, v76, v19, v24);
    v62 = v25;
    (v26)(v75, v25, v19);
    v64 = v18;
    v65 = v16;
    v27 = *(v16 + 16);
    v66 = v15;
    v28 = v27(v18, a5 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_userId, v15);
    v29 = *(*a5 + 792);
    v29(v28);
    v30 = *(v8 + 48);
    v31 = v69;
    v32 = v30(v14, 1, v69);
    v33 = v19;
    v60 = v8;
    if (v32)
    {
      v34 = outlined destroy of SelectedUserAttributes?(v14);
      v61 = 0;
      v35 = v31;
    }

    else
    {
      v39 = v68;
      (*(v8 + 16))(v68, v14, v31);
      outlined destroy of SelectedUserAttributes?(v14);
      v35 = v31;
      v61 = SelectedUserAttributes.meetsUserSessionThreshold.getter();
      v40 = v39;
      v33 = v19;
      v34 = (*(v8 + 8))(v40, v31);
    }

    v41 = v70;
    v29(v34);
    v42 = v30(v41, 1, v35);
    v43 = v71;
    v44 = v76;
    if (v42)
    {

      v46 = v65;
      v45 = v66;
      (*(v65 + 8))(v43, v66);
      v47 = v63;
      v48 = *(v63 + 8);
      v48(v44, v33);
      v48(v62, v33);
      outlined destroy of SelectedUserAttributes?(v41);
      v49 = 0;
    }

    else
    {
      v50 = v41;
      v51 = v60;
      v52 = v33;
      v53 = v68;
      (*(v60 + 16))(v68, v50, v35);
      outlined destroy of SelectedUserAttributes?(v50);
      v49 = SelectedUserAttributes.meetsPersonalRequestThreshold.getter();

      v46 = v65;
      v45 = v66;
      (*(v65 + 8))(v43, v66);
      v47 = v63;
      v54 = *(v63 + 8);
      v54(v76, v52);
      v55 = v53;
      v33 = v52;
      (*(v51 + 8))(v55, v35);
      v54(v62, v52);
    }

    v56 = v73;
    v57 = v72;
    v38 = swift_allocObject();
    *(v38 + 16) = v57 & 1;
    (*(v47 + 32))(v38 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_requestType, v75, v33);
    *(v38 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_flowPluginInfo) = v56;
    (*(v46 + 32))(v38 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_currentUserId, v64, v45);
    *(v38 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_emptyServerContext) = v74 & 1;
    *(v38 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_meetsUserSessionThreshold) = v61 & 1;
    *(v38 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_meetsPersonalRequestThreshold) = v49 & 1;
  }

  else
  {
    v36 = swift_allocObject();
    v37 = v20;
    v38 = v36;
    *(v36 + 16) = v72 & 1;
    (*(v37 + 32))(v36 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_requestType, v76, v19);
    *(v38 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_flowPluginInfo) = v73;
    (*(v16 + 32))(v38 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_currentUserId, v71, v15);
    *(v38 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_emptyServerContext) = v74 & 1;
    *(v38 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_meetsUserSessionThreshold) = 0;
    *(v38 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_meetsPersonalRequestThreshold) = 0;
  }

  return v38;
}

uint64_t ConversationContextUpdateMetadata.deinit()
{
  v1 = OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_requestType;
  v2 = type metadata accessor for RequestType();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_currentUserId;
  v4 = type metadata accessor for UserID();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t type metadata completion function for ConversationContextUpdateMetadata(uint64_t a1)
{
  result = type metadata accessor for RequestType();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for UserID();
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

id FlexibleExecutionSupportOptions.xpcRepresentation.getter()
{
  v0 = FlexibleExecutionSupportOptions.rawValue.getter();
  v1 = type metadata accessor for ConversationFlexibleExecutionSupportXPC();
  v2 = objc_allocWithZone(v1);
  *&v2[OBJC_IVAR___SKRConversationFlexibleExecutionSupport_rawValue] = v0;
  v4.receiver = v2;
  v4.super_class = v1;
  return objc_msgSendSuper2(&v4, sel_init);
}

id ConversationFlexibleExecutionSupportXPC.__allocating_init(rawValue:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR___SKRConversationFlexibleExecutionSupport_rawValue] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t one-time initialization function for all()
{
  v0 = type metadata accessor for FlexibleExecutionSupportOptions();
  __swift_allocate_value_buffer(v0, static FlexibleExecutionSupportOptions.all);
  __swift_project_value_buffer(v0, static FlexibleExecutionSupportOptions.all);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11SiriKitFlow31FlexibleExecutionSupportOptionsVGMd, &_ss23_ContiguousArrayStorageCy11SiriKitFlow31FlexibleExecutionSupportOptionsVGMR);
  *(swift_allocObject() + 16) = xmmword_1DCA65720;
  static FlexibleExecutionSupportOptions.executeBeforeEndpoint.getter();
  static FlexibleExecutionSupportOptions.inputContinuation.getter();
  lazy protocol witness table accessor for type FlexibleExecutionSupportOptions and conformance FlexibleExecutionSupportOptions();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11SiriKitFlow31FlexibleExecutionSupportOptionsVGMd, &_sSay11SiriKitFlow31FlexibleExecutionSupportOptionsVGMR);
  lazy protocol witness table accessor for type [FlexibleExecutionSupportOptions] and conformance [A]();
  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

uint64_t FlexibleExecutionSupportOptions.none.unsafeMutableAddressor(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for FlexibleExecutionSupportOptions();

  return __swift_project_value_buffer(v4, a2);
}

uint64_t one-time initialization function for none()
{
  v0 = type metadata accessor for FlexibleExecutionSupportOptions();
  __swift_allocate_value_buffer(v0, static FlexibleExecutionSupportOptions.none);
  __swift_project_value_buffer(v0, static FlexibleExecutionSupportOptions.none);
  lazy protocol witness table accessor for type FlexibleExecutionSupportOptions and conformance FlexibleExecutionSupportOptions();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11SiriKitFlow31FlexibleExecutionSupportOptionsVGMd, &_sSay11SiriKitFlow31FlexibleExecutionSupportOptionsVGMR);
  lazy protocol witness table accessor for type [FlexibleExecutionSupportOptions] and conformance [A]();
  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

uint64_t static FlexibleExecutionSupportOptions.all.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for FlexibleExecutionSupportOptions();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

id protocol witness for XPCConvertible.xpcRepresentation.getter in conformance FlexibleExecutionSupportOptions()
{
  v0 = FlexibleExecutionSupportOptions.rawValue.getter();
  v1 = type metadata accessor for ConversationFlexibleExecutionSupportXPC();
  v2 = objc_allocWithZone(v1);
  *&v2[OBJC_IVAR___SKRConversationFlexibleExecutionSupport_rawValue] = v0;
  v4.receiver = v2;
  v4.super_class = v1;
  return objc_msgSendSuper2(&v4, sel_init);
}

id ConversationFlexibleExecutionSupportXPC.init(rawValue:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___SKRConversationFlexibleExecutionSupport_rawValue] = a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ConversationFlexibleExecutionSupportXPC();
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t static ConversationFlexibleExecutionSupportXPC.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  static ConversationFlexibleExecutionSupportXPC.supportsSecureCoding = a1;
  return result;
}

Swift::Void __swiftcall ConversationFlexibleExecutionSupportXPC.encode(with:)(NSCoder with)
{
  v3 = *(v1 + OBJC_IVAR___SKRConversationFlexibleExecutionSupport_rawValue);
  v4 = MEMORY[0x1E12A1410](0x6E6F6974706FLL, 0xE600000000000000);
  [(objc_class *)with.super.isa encodeInteger:v3 forKey:v4];
}

id ConversationFlexibleExecutionSupportXPC.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = MEMORY[0x1E12A1410](0x6E6F6974706FLL, 0xE600000000000000);
  v5 = [a1 decodeIntegerForKey_];

  *&v3[OBJC_IVAR___SKRConversationFlexibleExecutionSupport_rawValue] = v5;
  v8.receiver = v3;
  v8.super_class = v1;
  v6 = objc_msgSendSuper2(&v8, sel_init);

  return v6;
}

id ConversationFlexibleExecutionSupportXPC.init(coder:)(void *a1)
{
  v3 = MEMORY[0x1E12A1410](0x6E6F6974706FLL, 0xE600000000000000);
  v4 = [a1 decodeIntegerForKey_];

  *&v1[OBJC_IVAR___SKRConversationFlexibleExecutionSupport_rawValue] = v4;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for ConversationFlexibleExecutionSupportXPC();
  v5 = objc_msgSendSuper2(&v7, sel_init);

  return v5;
}

id static ConversationFlexibleExecutionSupportXPC.error(_:)()
{
  v0 = type metadata accessor for ConversationFlexibleExecutionSupportXPC();
  v1 = objc_allocWithZone(v0);
  *&v1[OBJC_IVAR___SKRConversationFlexibleExecutionSupport_rawValue] = -1;
  v3.receiver = v1;
  v3.super_class = v0;
  return objc_msgSendSuper2(&v3, sel_init);
}

id ConversationFlexibleExecutionSupportXPC.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ConversationFlexibleExecutionSupportXPC.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ConversationFlexibleExecutionSupportXPC();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t lazy protocol witness table accessor for type FlexibleExecutionSupportOptions and conformance FlexibleExecutionSupportOptions()
{
  result = lazy protocol witness table cache variable for type FlexibleExecutionSupportOptions and conformance FlexibleExecutionSupportOptions;
  if (!lazy protocol witness table cache variable for type FlexibleExecutionSupportOptions and conformance FlexibleExecutionSupportOptions)
  {
    type metadata accessor for FlexibleExecutionSupportOptions();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FlexibleExecutionSupportOptions and conformance FlexibleExecutionSupportOptions);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [FlexibleExecutionSupportOptions] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [FlexibleExecutionSupportOptions] and conformance [A];
  if (!lazy protocol witness table cache variable for type [FlexibleExecutionSupportOptions] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay11SiriKitFlow31FlexibleExecutionSupportOptionsVGMd, &_sSay11SiriKitFlow31FlexibleExecutionSupportOptionsVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [FlexibleExecutionSupportOptions] and conformance [A]);
  }

  return result;
}

uint64_t dispatch thunk of ConversationHandler.warmup(refId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 24) + **(a4 + 24));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of ConversationHandler.startTurn(turnData:rcId:hypothesisId:bridge:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v19 = (*(a8 + 32) + **(a8 + 32));
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return v19(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t dispatch thunk of ConversationHandler.findConversation(for:rcId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 40) + **(a6 + 40));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return v15(a1, a2, a3, a4, a5, a6);
}

void specialized closure #1 in withCancellableContinuation<A>(body:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo13SABaseCommandCSgs5Error_pGSgMd, &_sScCySo13SABaseCommandCSgs5Error_pGSgMR);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = (&v6 - v1);
  type metadata accessor for CancellationError();
  lazy protocol witness table accessor for type RemoteFlowPluginBundleConversationHandler and conformance RemoteFlowPluginBundleConversationHandler(&lazy protocol witness table cache variable for type CancellationError and conformance CancellationError, MEMORY[0x1E69E8550], MEMORY[0x1E69E8558]);
  v3 = swift_allocError();
  CancellationError.init()();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo13SABaseCommandCSgs5Error_pGMd, &_sScCySo13SABaseCommandCSgs5Error_pGMR);
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  v5 = v3;
  specialized ManagedContinuation.updateState(continuation:result:)(v2, v3, 1);
  outlined destroy of ReferenceResolutionClientProtocol?(v2, &_sScCySo13SABaseCommandCSgs5Error_pGSgMd, &_sScCySo13SABaseCommandCSgs5Error_pGSgMR);
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGSgMd, &_sScCyyts5Error_pGSgMR);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = (&v6 - v1);
  type metadata accessor for CancellationError();
  lazy protocol witness table accessor for type RemoteFlowPluginBundleConversationHandler and conformance RemoteFlowPluginBundleConversationHandler(&lazy protocol witness table cache variable for type CancellationError and conformance CancellationError, MEMORY[0x1E69E8550], MEMORY[0x1E69E8558]);
  v3 = swift_allocError();
  CancellationError.init()();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  v5 = v3;
  specialized ManagedContinuation.updateState(continuation:result:)(v2, v3, 1);
  outlined destroy of ReferenceResolutionClientProtocol?(v2, &_sScCyyts5Error_pGSgMd, &_sScCyyts5Error_pGSgMR);
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14SiriKitRuntime18RemoteConversation_pSgs5Error_pGSgMd, &_sScCy14SiriKitRuntime18RemoteConversation_pSgs5Error_pGSgMR);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v6 - v1;
  type metadata accessor for CancellationError();
  lazy protocol witness table accessor for type RemoteFlowPluginBundleConversationHandler and conformance RemoteFlowPluginBundleConversationHandler(&lazy protocol witness table cache variable for type CancellationError and conformance CancellationError, MEMORY[0x1E69E8550], MEMORY[0x1E69E8558]);
  v3 = swift_allocError();
  CancellationError.init()();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14SiriKitRuntime18RemoteConversation_pSgs5Error_pGMd, &_sScCy14SiriKitRuntime18RemoteConversation_pSgs5Error_pGMR);
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  v5 = v3;
  specialized ManagedContinuation.updateState(continuation:result:)(v2, v3, 0, 1);
  outlined destroy of ReferenceResolutionClientProtocol?(v2, &_sScCy14SiriKitRuntime18RemoteConversation_pSgs5Error_pGSgMd, &_sScCy14SiriKitRuntime18RemoteConversation_pSgs5Error_pGSgMR);
}

uint64_t one-time initialization function for lastSeenFlowPluginServiceClient()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCy14SiriKitRuntime29SharedFlowPluginServiceClientCSgSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCy14SiriKitRuntime29SharedFlowPluginServiceClientCSgSo16os_unfair_lock_sVGMR);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = 0;
  static ConversationHandlerLocator.lastSeenFlowPluginServiceClient = result;
  return result;
}

uint64_t *ConversationHandlerLocator.lastSeenFlowPluginServiceClient.unsafeMutableAddressor()
{
  if (one-time initialization token for lastSeenFlowPluginServiceClient != -1)
  {
    swift_once();
  }

  return &static ConversationHandlerLocator.lastSeenFlowPluginServiceClient;
}

uint64_t static ConversationHandlerLocator.lastSeenFlowPluginServiceClient.getter()
{
  if (one-time initialization token for lastSeenFlowPluginServiceClient != -1)
  {
    swift_once();
  }
}

void *ConversationHandlerLocator.__allocating_init(pluginCatalogTask:flowExtensionDiscoverer:sharedFlowPluginServiceClient:onConnectionInterrupted:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  result[6] = a5;
  return result;
}

void *ConversationHandlerLocator.init(pluginCatalogTask:flowExtensionDiscoverer:sharedFlowPluginServiceClient:onConnectionInterrupted:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a1;
  v5[3] = a2;
  v5[4] = a3;
  v5[5] = a4;
  v5[6] = a5;
  return v5;
}

void *ConversationHandlerLocator.__allocating_init(onConnectionInterrupted:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v80 = &v74 - v5;
  v6 = type metadata accessor for OSSignpostError();
  v75 = *(v6 - 8);
  v76 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v74 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URL();
  v78 = *(v8 - 8);
  v79 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = type metadata accessor for OSSignpostID();
  v11 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83);
  v77 = &v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v74 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v74 - v17;
  type metadata accessor for SharedFlowPluginServiceClient();
  v19 = swift_allocObject();
  v82 = a1;
  v84 = specialized SharedFlowPluginServiceClient.init(connectionProvider:onConnectionInterrupted:)(a1, a2, v19);
  v20 = one-time initialization token for executor;

  if (v20 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for OSSignposter();
  __swift_project_value_buffer(v21, static Signposter.executor);
  static OSSignpostID.exclusive.getter();
  v22 = OSSignposter.logHandle.getter();
  v23 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v24 = a2;
    v25 = swift_slowAlloc();
    *v25 = 0;
    v26 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_1DC659000, v22, v23, v26, "LoadPluginCatalog", "", v25, 2u);
    v27 = v25;
    a2 = v24;
    MEMORY[0x1E12A2F50](v27, -1, -1);
  }

  v28 = v83;
  (*(v11 + 16))(v15, v18, v83);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v29 = OSSignpostIntervalState.init(id:isOpen:)();
  v30 = *(v11 + 8);
  v30(v18, v28);
  static ConversationHandlerLocator.conversationHandlerCacheURL.getter();
  v31 = specialized static CachedPluginCatalog.load(cacheUrl:sharedFlowPluginServiceClient:ignoreOSVersion:)(v10, v84, 0);
  v33 = v32;
  (*(v78 + 8))(v10, v79);
  if (v31)
  {
    v79 = v33;
    v34 = OSSignposter.logHandle.getter();
    v35 = v77;
    OSSignpostIntervalState.signpostID.getter();
    v36 = static os_signpost_type_t.end.getter();
    if (OS_os_log.signpostsEnabled.getter())
    {

      v37 = v74;
      checkForErrorAndConsumeState(state:)();

      v39 = v75;
      v38 = v76;
      if ((*(v75 + 88))(v37, v76) == *MEMORY[0x1E69E93E8])
      {
        v40 = "[Error] Interval already ended";
      }

      else
      {
        (*(v39 + 8))(v37, v38);
        v40 = "";
      }

      v55 = swift_slowAlloc();
      *v55 = 0;
      v56 = v77;
      v57 = OSSignpostID.rawValue.getter();
      v58 = v40;
      v35 = v56;
      _os_signpost_emit_with_name_impl(&dword_1DC659000, v34, v36, v57, "LoadPluginCatalog", v58, v55, 2u);
      MEMORY[0x1E12A2F50](v55, -1, -1);
    }

    v30(v35, v83);
    v47 = v84;
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v59 = type metadata accessor for Logger();
    __swift_project_value_buffer(v59, static Logger.executor);
    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.debug.getter();
    v62 = os_log_type_enabled(v60, v61);
    v46 = v80;
    if (v62)
    {
      v63 = swift_slowAlloc();
      *v63 = 0;
      _os_log_impl(&dword_1DC659000, v60, v61, "ConversationHandlerLocator: Found plugin catalog from cache", v63, 2u);
      MEMORY[0x1E12A2F50](v63, -1, -1);
    }

    v64 = type metadata accessor for TaskPriority();
    (*(*(v64 - 8) + 56))(v46, 1, 1, v64);
    v65 = one-time initialization token for shared;

    if (v65 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v66 = static MessageBusActor.shared;
    v67 = lazy protocol witness table accessor for type RemoteFlowPluginBundleConversationHandler and conformance RemoteFlowPluginBundleConversationHandler(&lazy protocol witness table cache variable for type MessageBusActor and conformance MessageBusActor, type metadata accessor for MessageBusActor, &protocol conformance descriptor for MessageBusActor);
    v53 = swift_allocObject();
    v53[2] = v66;
    v53[3] = v67;
    v53[4] = v47;
    v53[5] = v31;
    v68 = v81;
    v53[6] = v79;
    v53[7] = v68;

    v54 = &async function pointer to partial apply for closure #1 in ConversationHandlerLocator.init(onConnectionInterrupted:);
  }

  else
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    __swift_project_value_buffer(v41, static Logger.executor);
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.debug.getter();
    v44 = os_log_type_enabled(v42, v43);
    v46 = v80;
    v45 = v81;
    v47 = v84;
    if (v44)
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_1DC659000, v42, v43, "ConversationHandlerLocator: No plugin catalog cache found, will construct a new one", v48, 2u);
      MEMORY[0x1E12A2F50](v48, -1, -1);
    }

    v49 = type metadata accessor for TaskPriority();
    (*(*(v49 - 8) + 56))(v46, 1, 1, v49);
    v50 = one-time initialization token for shared;

    if (v50 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v51 = static MessageBusActor.shared;
    v52 = lazy protocol witness table accessor for type RemoteFlowPluginBundleConversationHandler and conformance RemoteFlowPluginBundleConversationHandler(&lazy protocol witness table cache variable for type MessageBusActor and conformance MessageBusActor, type metadata accessor for MessageBusActor, &protocol conformance descriptor for MessageBusActor);
    v53 = swift_allocObject();
    v53[2] = v51;
    v53[3] = v52;
    v53[4] = v29;
    v53[5] = v47;
    v53[6] = v45;

    v54 = &async function pointer to partial apply for closure #2 in ConversationHandlerLocator.init(onConnectionInterrupted:);
  }

  v69 = _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfC14SiriKitRuntime25PluginLookupByIntentTopic_p_Tt2g5(0, 0, v46, v54, v53);
  v70 = one-time initialization token for shared;

  if (v70 != -1)
  {
    swift_once();
  }

  v71 = static FlowExtensionDiscoverer.shared;

  result = swift_allocObject();
  result[2] = v69;
  result[3] = v71;
  v73 = v82;
  result[4] = v47;
  result[5] = v73;
  result[6] = a2;
  return result;
}

uint64_t static ConversationHandlerLocator.conversationHandlerCacheURL.getter()
{
  v11[1] = *MEMORY[0x1E69E9840];
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_opt_self() defaultManager];
  v11[0] = 0;
  v5 = [v4 URLForDirectory:13 inDomain:1 appropriateForURL:0 create:0 error:v11];

  v6 = v11[0];
  if (v5)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    URL.appendingPathComponent(_:)();
    return (*(v1 + 8))(v3, v0);
  }

  else
  {
    v9 = v11[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    result = specialized static SiriKitRuntimeCrashHelper.logAndCrash(_:file:line:)(0xD00000000000001ELL, 0x80000001DCA7FC00, "/Library/Caches/com.apple.xbs/Sources/SiriKitExecutor/SiriKitRuntime/ConversationHandler/ConversationHandlerLocator.swift", 121, 2, 99);
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in ConversationHandlerLocator.init(onConnectionInterrupted:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[5] = a1;
  v6[6] = a4;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v7 = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in ConversationHandlerLocator.init(onConnectionInterrupted:), v7, 0);
}

uint64_t closure #1 in ConversationHandlerLocator.init(onConnectionInterrupted:)()
{
  if (one-time initialization token for lastSeenFlowPluginServiceClient != -1)
  {
    swift_once();
  }

  v1 = static ConversationHandlerLocator.lastSeenFlowPluginServiceClient;
  os_unfair_lock_lock((static ConversationHandlerLocator.lastSeenFlowPluginServiceClient + 24));
  partial apply for closure #1 in closure #1 in ConversationHandlerLocator.init(onConnectionInterrupted:)((v1 + 16));
  v2 = v0[7];
  v3 = v0[8];
  v4 = v0[5];
  os_unfair_lock_unlock((v1 + 24));
  v4[3] = &type metadata for CachedPluginCatalog;
  v4[4] = &protocol witness table for CachedPluginCatalog;
  *v4 = v2;
  v4[1] = v3;
  v6 = v0[1];

  return v6();
}

uint64_t closure #2 in ConversationHandlerLocator.init(onConnectionInterrupted:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[32] = a5;
  v6[33] = a6;
  v6[30] = a1;
  v6[31] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v6[34] = swift_task_alloc();
  v7 = type metadata accessor for URL();
  v6[35] = v7;
  v6[36] = *(v7 - 8);
  v6[37] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v8 = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #2 in ConversationHandlerLocator.init(onConnectionInterrupted:), v8, 0);
}

uint64_t closure #2 in ConversationHandlerLocator.init(onConnectionInterrupted:)()
{
  if (one-time initialization token for lastSeenFlowPluginServiceClient != -1)
  {
    swift_once();
  }

  v1 = static ConversationHandlerLocator.lastSeenFlowPluginServiceClient;
  os_unfair_lock_lock((static ConversationHandlerLocator.lastSeenFlowPluginServiceClient + 24));
  partial apply for closure #1 in closure #2 in ConversationHandlerLocator.init(onConnectionInterrupted:)((v1 + 16));
  v3 = *(v0 + 288);
  v2 = *(v0 + 296);
  v4 = *(v0 + 272);
  v5 = *(v0 + 280);
  v6 = *(v0 + 256);
  v7 = *(v0 + 240);
  os_unfair_lock_unlock((v1 + 24));
  v8 = MEMORY[0x1E12A25B0]();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  URL.init(fileURLWithPath:isDirectory:)();

  v9 = MEMORY[0x1E69D33E8];
  *(v0 + 80) = v5;
  *(v0 + 88) = v9;
  __swift_allocate_boxed_opaque_existential_0((v0 + 56));
  URL.appendingPathComponent(_:isDirectory:)();
  *(v0 + 120) = v5;
  *(v0 + 128) = v9;
  __swift_allocate_boxed_opaque_existential_0((v0 + 96));
  URL.appendingPathComponent(_:isDirectory:)();
  <+> infix(_:_:)();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  outlined init with copy of ReferenceResolutionClientProtocol(v0 + 16, v0 + 136);
  v10 = type metadata accessor for FlowPluginPackageFinder();
  v11 = swift_allocObject();
  outlined init with take of ReferenceResolutionClientProtocol((v0 + 136), v11 + 16);
  *(v11 + 56) = v6;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities23PluginCapabilityCatalogCy0A10KitRuntime010RemoteFlowC7PackageCGMd, &_s13SiriUtilities23PluginCapabilityCatalogCy0A10KitRuntime010RemoteFlowC7PackageCGMR);
  *(v0 + 200) = v10;
  *(v0 + 208) = lazy protocol witness table accessor for type RemoteFlowPluginBundleConversationHandler and conformance RemoteFlowPluginBundleConversationHandler(&lazy protocol witness table cache variable for type FlowPluginPackageFinder and conformance FlowPluginPackageFinder, type metadata accessor for FlowPluginPackageFinder, &protocol conformance descriptor for FlowPluginPackageFinder);
  *(v0 + 176) = v11;

  static ConversationHandlerLocator.conversationHandlerCacheURL.getter();
  (*(v3 + 56))(v4, 0, 1, v5);
  v13 = static PluginCapabilityCatalog.load<A>(finder:cache:)();
  outlined destroy of ReferenceResolutionClientProtocol?(v4, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 176));
  v7[3] = v12;
  v7[4] = &protocol witness table for <> PluginCapabilityCatalog<A>;

  *v7 = v13;
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  (*(v3 + 8))(v2, v5);
  $defer #1 () in closure #2 in ConversationHandlerLocator.init(onConnectionInterrupted:)();

  v14 = *(v0 + 8);

  return v14();
}

uint64_t $defer #1 () in closure #2 in ConversationHandlerLocator.init(onConnectionInterrupted:)()
{
  v0 = type metadata accessor for OSSignpostError();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OSSignpostID();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for OSSignposter();
  __swift_project_value_buffer(v8, static Signposter.executor);
  v9 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v10 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {

    checkForErrorAndConsumeState(state:)();

    if ((*(v1 + 88))(v3, v0) == *MEMORY[0x1E69E93E8])
    {
      v11 = "[Error] Interval already ended";
    }

    else
    {
      (*(v1 + 8))(v3, v0);
      v11 = "";
    }

    v12 = swift_slowAlloc();
    *v12 = 0;
    v13 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_1DC659000, v9, v10, v13, "LoadPluginCatalog", v11, v12, 2u);
    MEMORY[0x1E12A2F50](v12, -1, -1);
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t ConversationHandlerLocator.handler(id:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[22] = a3;
  v4[23] = v3;
  v4[20] = a1;
  v4[21] = a2;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = static MessageBusActor.shared;
  v4[24] = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](ConversationHandlerLocator.handler(id:), v5, 0);
}

uint64_t ConversationHandlerLocator.handler(id:)()
{
  v1 = *(*(v0 + 184) + 16);
  v2 = swift_task_alloc();
  *(v0 + 200) = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime25PluginLookupByIntentTopic_pMd, &_s14SiriKitRuntime25PluginLookupByIntentTopic_pMR);
  *v2 = v0;
  v2[1] = ConversationHandlerLocator.handler(id:);

  return MEMORY[0x1EEE6DA40](v0 + 16, v1, v3);
}

{
  v1 = *(*v0 + 192);

  return MEMORY[0x1EEE6DFA0](ConversationHandlerLocator.handler(id:), v1, 0);
}

{
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[5];
  v4 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v3);
  v5 = (*(v4 + 16))(v1, v2, v3, v4);
  if (v5)
  {
    v6 = v5;
    v7 = v0[20];

    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
    v7[3] = type metadata accessor for RemoteFlowPluginBundleConversationHandler();
    v7[4] = lazy protocol witness table accessor for type RemoteFlowPluginBundleConversationHandler and conformance RemoteFlowPluginBundleConversationHandler(&lazy protocol witness table cache variable for type RemoteFlowPluginBundleConversationHandler and conformance RemoteFlowPluginBundleConversationHandler, type metadata accessor for RemoteFlowPluginBundleConversationHandler, &protocol conformance descriptor for RemoteFlowPluginBundleConversationHandler);
    *v7 = v6;
    v8 = v0[1];

    return v8();
  }

  else
  {
    v10 = v0[23];
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
    v11 = *(v10 + 40);
    v12 = *(v10 + 48);
    v13 = swift_task_alloc();
    v0[26] = v13;
    *v13 = v0;
    v13[1] = ConversationHandlerLocator.handler(id:);
    v15 = v0[21];
    v14 = v0[22];

    return FlowExtensionDiscoverer.findFlowExtension(bundleId:onConnectionInterrupted:)(v15, v14, v11, v12);
  }
}

{

  v1 = *(v0 + 160);
  if (*(v0 + 120))
  {
    outlined init with take of ReferenceResolutionClientProtocol((v0 + 96), v0 + 56);
    outlined init with take of ReferenceResolutionClientProtocol((v0 + 56), v1);
  }

  else
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v0 + 96, &_s14SiriKitRuntime19ConversationHandler_pSgMd, &_s14SiriKitRuntime19ConversationHandler_pSgMR);
    *v1 = 0u;
    *(v1 + 16) = 0u;
    *(v1 + 32) = 0;
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t ConversationHandlerLocator.handler(id:)(uint64_t a1)
{
  *(*v1 + 216) = a1;

  return MEMORY[0x1EEE6DFA0](ConversationHandlerLocator.handler(id:), 0, 0);
}

{
  v2 = v1[27];
  if (v2)
  {
    v4 = *(v2 + 112);
    v3 = *(v2 + 120);
    v5 = lazy protocol witness table accessor for type FlowExtensionConversationHandler and conformance FlowExtensionConversationHandler();

    v6 = &type metadata for FlowExtensionConversationHandler;
  }

  else
  {
    v4 = 0;
    v3 = 0;
    v6 = 0;
    v5 = 0;
  }

  v7 = v1[24];
  v1[12] = v2;
  v1[13] = v4;
  v1[14] = v3;
  v1[15] = v6;
  v1[16] = v5;

  return MEMORY[0x1EEE6DFA0](ConversationHandlerLocator.handler(id:), v7, 0);
}

uint64_t ConversationHandlerLocator.sendStartTurnHint(turnData:bridge:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  v5 = *(type metadata accessor for RemoteConversationTurnData(0) - 8);
  v4[9] = v5;
  v4[10] = *(v5 + 64);
  v4[11] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v6 = static MessageBusActor.shared;
  v4[12] = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](ConversationHandlerLocator.sendStartTurnHint(turnData:bridge:), v6, 0);
}

uint64_t ConversationHandlerLocator.sendStartTurnHint(turnData:bridge:)()
{
  v1 = static MessageBusActor.shared;
  v0[13] = *(v0[8] + 32);
  v0[14] = v1;

  return MEMORY[0x1EEE6DFA0](ConversationHandlerLocator.sendStartTurnHint(turnData:bridge:), v1, 0);
}

{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  v3 = *(v0 + 72);
  v9 = *(v0 + 48);
  outlined init with copy of RemoteConversationTurnData(*(v0 + 40), v2, type metadata accessor for RemoteConversationTurnData);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (v1 + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = swift_allocObject();
  *(v0 + 120) = v6;
  outlined init with take of ConversationHandlerLocator.ScoredHandler(v2, v6 + v4, type metadata accessor for RemoteConversationTurnData);
  *(v6 + v5) = v9;
  swift_unknownObjectRetain();
  v7 = swift_task_alloc();
  *(v0 + 128) = v7;
  *v7 = v0;
  v7[1] = ConversationHandlerLocator.sendStartTurnHint(turnData:bridge:);

  return specialized SharedFlowPluginServiceClient.withCurrentConnection<A>(block:)(v7, &async function pointer to partial apply for closure #1 in SharedFlowPluginServiceClient.startTurn(turnData:bridge:), v6);
}

{
  v2 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = *(v2 + 112);
    v4 = ConversationHandlerLocator.sendStartTurnHint(turnData:bridge:);
  }

  else
  {
    v5 = *(v2 + 112);

    v4 = ConversationHandlerLocator.sendStartTurnHint(turnData:bridge:);
    v3 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

{
  v1 = *(v0 + 96);

  return MEMORY[0x1EEE6DFA0](ConversationHandlerLocator.sendStartTurnHint(turnData:bridge:), v1, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = *(v0 + 96);

  return MEMORY[0x1EEE6DFA0](ConversationHandlerLocator.sendStartTurnHint(turnData:bridge:), v1, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t ConversationHandlerLocator.ScoredHandler.input.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ConversationHandlerLocator.ScoredHandler(0) + 24);
  v4 = type metadata accessor for Input();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ConversationHandlerLocator.deinit()
{

  return v0;
}

uint64_t ConversationHandlerLocator.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void thunk for @escaping @callee_guaranteed (@guaranteed Error) -> ()(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void specialized closure #2 in InterruptibleTaskManager.perform<A>(_:)(uint64_t a1)
{
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
    v6 = swift_slowAlloc();
    v7 = v6;
    *v5 = 136315138;
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(a1 + 16), *(a1 + 24), &v7);
    _os_log_impl(&dword_1DC659000, v3, v4, "%s: task cancelled", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x1E12A2F50](v6, -1, -1);
    MEMORY[0x1E12A2F50](v5, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime23InterruptibleTaskResultOyytGMd, &_s14SiriKitRuntime23InterruptibleTaskResultOyytGMR);

  JUMPOUT(0x1E12A1950);
}

{
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
    v6 = swift_slowAlloc();
    v7 = v6;
    *v5 = 136315138;
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(a1 + 16), *(a1 + 24), &v7);
    _os_log_impl(&dword_1DC659000, v3, v4, "%s: task cancelled", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x1E12A2F50](v6, -1, -1);
    MEMORY[0x1E12A2F50](v5, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime23InterruptibleTaskResultOyAA18RemoteConversation_pSgGMd, &_s14SiriKitRuntime23InterruptibleTaskResultOyAA18RemoteConversation_pSgGMR);

  JUMPOUT(0x1E12A1950);
}

uint64_t specialized closure #5 in SharedFlowPluginServiceClient.withCurrentConnection<A>(block:)(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  v9 = (a2 + *a2);
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return v9(a1, a4);
}

{
  *(v4 + 32) = a1;
  v8 = (a2 + *a2);
  v6 = swift_task_alloc();
  *(v4 + 40) = v6;
  *v6 = v4;
  v6[1] = specialized closure #5 in SharedFlowPluginServiceClient.withCurrentConnection<A>(block:);

  return v8(v4 + 16, a4);
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(char **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v128 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMR);
  v135 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v131 = &v125 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v141 = &v125 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v145 = &v125 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v144 = &v125 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v143 = &v125 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v142 = &v125 - v19;
  v20 = *(a3 + 8);
  v137 = a3;
  if (v20 < 1)
  {
    v22 = MEMORY[0x1E69E7CC0];
LABEL_96:
    v8 = v22;
    v22 = *v128;
    if (!*v128)
    {
      goto LABEL_135;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_98:
      v150 = v8;
      v120 = *(v8 + 16);
      if (v120 >= 2)
      {
        v121 = v135;
        while (*a3)
        {
          v122 = *(v8 + 16 * v120);
          v123 = *(v8 + 16 * (v120 - 1) + 40);
          specialized _merge<A>(low:mid:high:buffer:by:)(*a3 + *(v121 + 72) * v122, *a3 + *(v121 + 72) * *(v8 + 16 * (v120 - 1) + 32), *a3 + *(v121 + 72) * v123, v22);
          if (v5)
          {
            goto LABEL_107;
          }

          if (v123 < v122)
          {
            goto LABEL_122;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
          }

          if (v120 - 2 >= *(v8 + 16))
          {
            goto LABEL_123;
          }

          v124 = (v8 + 16 * v120);
          *v124 = v122;
          v124[1] = v123;
          v150 = v8;
          specialized Array.remove(at:)(v120 - 1);
          v8 = v150;
          v120 = *(v150 + 16);
          a3 = v137;
          if (v120 <= 1)
          {
            goto LABEL_107;
          }
        }

        goto LABEL_133;
      }

LABEL_107:

      return;
    }

LABEL_129:
    v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
    goto LABEL_98;
  }

  v125 = a4;
  v21 = 0;
  v22 = MEMORY[0x1E69E7CC0];
  v146 = v8;
  while (1)
  {
    v129 = v21;
    if (v21 + 1 >= v20)
    {
      v37 = v21 + 1;
    }

    else
    {
      v138 = v20;
      v126 = v22;
      v127 = v5;
      v149 = *a3;
      v23 = v149;
      v24 = *(v135 + 72);
      v25 = v149 + v24 * (v21 + 1);
      v26 = v142;
      outlined init with copy of ReferenceResolutionClientProtocol?(v25, v142, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMR);
      v27 = v143;
      outlined init with copy of ReferenceResolutionClientProtocol?(v23 + v24 * v21, v143, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMR);
      v22 = v144;
      outlined init with copy of ReferenceResolutionClientProtocol?(v26, v144, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMR);
      v28 = *(v8 + 48);
      v139 = *&v22[v28];
      outlined destroy of ConversationHandlerLocator.ScoredHandler(&v22[v28]);
      v29 = v145;
      outlined init with copy of ReferenceResolutionClientProtocol?(v27, v145, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMR);
      v30 = *(v8 + 48);
      v136 = *(v29 + v30);
      outlined destroy of ConversationHandlerLocator.ScoredHandler(v29 + v30);
      v31 = type metadata accessor for UUID();
      v32 = *(v31 - 8);
      v33 = *(v32 + 8);
      v34 = v32 + 8;
      v33(v29, v31);
      v133 = v33;
      v134 = v31;
      v132 = v34;
      v33(v22, v31);
      outlined destroy of ReferenceResolutionClientProtocol?(v27, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMR);
      outlined destroy of ReferenceResolutionClientProtocol?(v26, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMR);
      v35 = v129 + 2;
      v140 = v24;
      v36 = v149 + v24 * (v129 + 2);
      while (1)
      {
        v37 = v138;
        if (v138 == v35)
        {
          break;
        }

        LODWORD(v149) = v136 < v139;
        v38 = v142;
        outlined init with copy of ReferenceResolutionClientProtocol?(v36, v142, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMR);
        v39 = v143;
        outlined init with copy of ReferenceResolutionClientProtocol?(v25, v143, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMR);
        v40 = v144;
        outlined init with copy of ReferenceResolutionClientProtocol?(v38, v144, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMR);
        v41 = v146;
        v42 = *(v146 + 48);
        v148 = *(v40 + v42);
        outlined destroy of ConversationHandlerLocator.ScoredHandler(v40 + v42);
        v43 = v145;
        outlined init with copy of ReferenceResolutionClientProtocol?(v39, v145, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMR);
        v44 = *(v41 + 48);
        v147 = *(v43 + v44);
        outlined destroy of ConversationHandlerLocator.ScoredHandler(v43 + v44);
        v45 = v43;
        v46 = v133;
        v22 = v134;
        (v133)(v45, v134);
        v46(v40, v22);
        outlined destroy of ReferenceResolutionClientProtocol?(v39, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMR);
        outlined destroy of ReferenceResolutionClientProtocol?(v38, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMR);
        ++v35;
        v36 += v140;
        v25 += v140;
        if (((v149 ^ (v147 >= v148)) & 1) == 0)
        {
          v37 = v35 - 1;
          break;
        }
      }

      v8 = v146;
      a3 = v137;
      v5 = v127;
      v21 = v129;
      if (v136 >= v139)
      {
        goto LABEL_23;
      }

      if (v37 < v129)
      {
        goto LABEL_126;
      }

      if (v129 >= v37)
      {
LABEL_23:
        v22 = v126;
      }

      else
      {
        v47 = v140 * (v37 - 1);
        v48 = v37;
        v49 = v37 * v140;
        v138 = v37;
        v50 = v129;
        v51 = v129 * v140;
        do
        {
          if (v50 != --v48)
          {
            v52 = *v137;
            if (!*v137)
            {
              goto LABEL_132;
            }

            outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v52 + v51, v131, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMR);
            if (v51 < v47 || v52 + v51 >= (v52 + v49))
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v51 != v47)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v131, v52 + v47, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMR);
          }

          ++v50;
          v47 -= v140;
          v49 -= v140;
          v51 += v140;
        }

        while (v50 < v48);
        v5 = v127;
        v22 = v126;
        v8 = v146;
        a3 = v137;
        v37 = v138;
        v21 = v129;
      }
    }

    v53 = *(a3 + 8);
    if (v37 >= v53)
    {
      goto LABEL_34;
    }

    if (__OFSUB__(v37, v21))
    {
      goto LABEL_125;
    }

    if (v37 - v21 >= v125)
    {
LABEL_34:
      v55 = v37;
      if (v37 < v21)
      {
        goto LABEL_124;
      }

      goto LABEL_35;
    }

    if (__OFADD__(v21, v125))
    {
      goto LABEL_127;
    }

    if (v21 + v125 >= v53)
    {
      v54 = *(a3 + 8);
    }

    else
    {
      v54 = v21 + v125;
    }

    if (v54 < v21)
    {
LABEL_128:
      __break(1u);
      goto LABEL_129;
    }

    if (v37 == v54)
    {
      goto LABEL_34;
    }

    v126 = v22;
    v127 = v5;
    v103 = *a3;
    v104 = *(v135 + 72);
    a3 = *a3 + v104 * (v37 - 1);
    v139 = -v104;
    v140 = v103;
    v105 = (v21 - v37);
    v130 = v104;
    v106 = (v103 + v37 * v104);
    v132 = v54;
LABEL_87:
    v138 = v37;
    v133 = v106;
    v134 = v105;
    v107 = v106;
    v108 = v105;
    v136 = a3;
LABEL_88:
    v147 = v108;
    v109 = v142;
    outlined init with copy of ReferenceResolutionClientProtocol?(v107, v142, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMR);
    v110 = v143;
    outlined init with copy of ReferenceResolutionClientProtocol?(a3, v143, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMR);
    v111 = v144;
    outlined init with copy of ReferenceResolutionClientProtocol?(v109, v144, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMR);
    v112 = *(v8 + 48);
    v149 = *(v111 + v112);
    outlined destroy of ConversationHandlerLocator.ScoredHandler(v111 + v112);
    v113 = v145;
    outlined init with copy of ReferenceResolutionClientProtocol?(v110, v145, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMR);
    v114 = *(v8 + 48);
    v148 = *(v113 + v114);
    outlined destroy of ConversationHandlerLocator.ScoredHandler(v113 + v114);
    v115 = type metadata accessor for UUID();
    v116 = *(*(v115 - 8) + 8);
    v116(v113, v115);
    v116(v111, v115);
    outlined destroy of ReferenceResolutionClientProtocol?(v110, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMR);
    outlined destroy of ReferenceResolutionClientProtocol?(v109, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMR);
    if (v148 < v149)
    {
      break;
    }

    v8 = v146;
LABEL_86:
    v37 = v138 + 1;
    a3 = v136 + v130;
    v105 = v134 - 1;
    v106 = &v133[v130];
    v55 = v132;
    if (v138 + 1 != v132)
    {
      goto LABEL_87;
    }

    v5 = v127;
    v22 = v126;
    if (v132 < v129)
    {
      goto LABEL_124;
    }

LABEL_35:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v132 = v55;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v22 + 2) + 1, 1, v22);
    }

    v58 = *(v22 + 2);
    v57 = *(v22 + 3);
    v59 = v58 + 1;
    if (v58 >= v57 >> 1)
    {
      v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v57 > 1), v58 + 1, 1, v22);
    }

    *(v22 + 2) = v59;
    v60 = &v22[16 * v58];
    v61 = v132;
    *(v60 + 4) = v129;
    *(v60 + 5) = v61;
    v149 = *v128;
    if (!v149)
    {
      goto LABEL_134;
    }

    if (v58)
    {
      while (2)
      {
        a3 = v59 - 1;
        if (v59 >= 4)
        {
          v66 = &v22[16 * v59 + 32];
          v67 = *(v66 - 64);
          v68 = *(v66 - 56);
          v72 = __OFSUB__(v68, v67);
          v69 = v68 - v67;
          if (v72)
          {
            goto LABEL_111;
          }

          v71 = *(v66 - 48);
          v70 = *(v66 - 40);
          v72 = __OFSUB__(v70, v71);
          v64 = v70 - v71;
          v65 = v72;
          if (v72)
          {
            goto LABEL_112;
          }

          v73 = &v22[16 * v59];
          v75 = *v73;
          v74 = *(v73 + 1);
          v72 = __OFSUB__(v74, v75);
          v76 = v74 - v75;
          if (v72)
          {
            goto LABEL_114;
          }

          v72 = __OFADD__(v64, v76);
          v77 = v64 + v76;
          if (v72)
          {
            goto LABEL_117;
          }

          if (v77 >= v69)
          {
            v95 = &v22[16 * a3 + 32];
            v97 = *v95;
            v96 = *(v95 + 1);
            v72 = __OFSUB__(v96, v97);
            v98 = v96 - v97;
            if (v72)
            {
              goto LABEL_121;
            }

            if (v64 < v98)
            {
              a3 = v59 - 2;
            }
          }

          else
          {
LABEL_54:
            if (v65)
            {
              goto LABEL_113;
            }

            v78 = &v22[16 * v59];
            v80 = *v78;
            v79 = *(v78 + 1);
            v81 = __OFSUB__(v79, v80);
            v82 = v79 - v80;
            v83 = v81;
            if (v81)
            {
              goto LABEL_116;
            }

            v84 = &v22[16 * a3 + 32];
            v86 = *v84;
            v85 = *(v84 + 1);
            v72 = __OFSUB__(v85, v86);
            v87 = v85 - v86;
            if (v72)
            {
              goto LABEL_119;
            }

            if (__OFADD__(v82, v87))
            {
              goto LABEL_120;
            }

            if (v82 + v87 < v64)
            {
              goto LABEL_68;
            }

            if (v64 < v87)
            {
              a3 = v59 - 2;
            }
          }
        }

        else
        {
          if (v59 == 3)
          {
            v62 = *(v22 + 4);
            v63 = *(v22 + 5);
            v72 = __OFSUB__(v63, v62);
            v64 = v63 - v62;
            v65 = v72;
            goto LABEL_54;
          }

          v88 = &v22[16 * v59];
          v90 = *v88;
          v89 = *(v88 + 1);
          v72 = __OFSUB__(v89, v90);
          v82 = v89 - v90;
          v83 = v72;
LABEL_68:
          if (v83)
          {
            goto LABEL_115;
          }

          v91 = &v22[16 * a3];
          v93 = *(v91 + 4);
          v92 = *(v91 + 5);
          v72 = __OFSUB__(v92, v93);
          v94 = v92 - v93;
          if (v72)
          {
            goto LABEL_118;
          }

          if (v94 < v82)
          {
            break;
          }
        }

        v99 = a3 - 1;
        if (a3 - 1 >= v59)
        {
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
          goto LABEL_128;
        }

        if (!*v137)
        {
          goto LABEL_131;
        }

        v100 = *&v22[16 * v99 + 32];
        v101 = *&v22[16 * a3 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)(*v137 + *(v135 + 72) * v100, *v137 + *(v135 + 72) * *&v22[16 * a3 + 32], *v137 + *(v135 + 72) * v101, v149);
        if (v5)
        {
          goto LABEL_107;
        }

        if (v101 < v100)
        {
          goto LABEL_109;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v22 = specialized _ArrayBuffer._consumeAndCreateNew()(v22);
        }

        if (v99 >= *(v22 + 2))
        {
          goto LABEL_110;
        }

        v102 = &v22[16 * v99];
        *(v102 + 4) = v100;
        *(v102 + 5) = v101;
        v150 = v22;
        specialized Array.remove(at:)(a3);
        v22 = v150;
        v59 = *(v150 + 16);
        if (v59 <= 1)
        {
          break;
        }

        continue;
      }
    }

    a3 = v137;
    v20 = v137[1];
    v21 = v132;
    if (v132 >= v20)
    {
      goto LABEL_96;
    }
  }

  v117 = v147;
  if (v140)
  {
    v118 = v141;
    outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v107, v141, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMR);
    v8 = v146;
    swift_arrayInitWithTakeFrontToBack();
    outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v118, a3, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMR);
    a3 += v139;
    v107 += v139;
    v119 = __CFADD__(v117, 1);
    v108 = v117 + 1;
    if (v119)
    {
      goto LABEL_86;
    }

    goto LABEL_88;
  }

  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
}

void specialized _merge<A>(low:mid:high:buffer:by:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMR);
  MEMORY[0x1EEE9AC00](v68);
  v62 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v61 = &v54 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v60 = &v54 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v66 = &v54 - v14;
  v16 = *(v15 + 72);
  if (!v16)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v16 == -1)
  {
    goto LABEL_62;
  }

  v17 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v16 == -1)
  {
    goto LABEL_63;
  }

  v18 = (a2 - a1) / v16;
  v71 = a1;
  v70 = a4;
  if (v18 >= v17 / v16)
  {
    v20 = v17 / v16 * v16;
    if (a4 < a2 || a2 + v20 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v36 = a4 + v20;
    if (v20 >= 1)
    {
      v37 = -v16;
      v38 = v36;
      v67 = a1;
      v56 = -v16;
      v57 = a4;
      while (2)
      {
        while (1)
        {
          v54 = v36;
          v39 = a2;
          v40 = a2 + v37;
          v58 = v39;
          v59 = v40;
          while (1)
          {
            if (v39 <= a1)
            {
              v71 = v39;
              v69 = v54;
              goto LABEL_60;
            }

            v55 = v36;
            v65 = a3 + v37;
            v41 = v38 + v37;
            v42 = v66;
            v43 = a3;
            outlined init with copy of ReferenceResolutionClientProtocol?(v38 + v37, v66, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMR);
            v44 = v60;
            outlined init with copy of ReferenceResolutionClientProtocol?(v40, v60, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMR);
            v45 = v61;
            outlined init with copy of ReferenceResolutionClientProtocol?(v42, v61, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMR);
            v46 = v68;
            v47 = *(v68 + 48);
            v64 = *(v45 + v47);
            outlined destroy of ConversationHandlerLocator.ScoredHandler(v45 + v47);
            v48 = v62;
            outlined init with copy of ReferenceResolutionClientProtocol?(v44, v62, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMR);
            v49 = *(v46 + 48);
            v63 = *(v48 + v49);
            outlined destroy of ConversationHandlerLocator.ScoredHandler(v48 + v49);
            v50 = type metadata accessor for UUID();
            v51 = *(*(v50 - 8) + 8);
            v51(v48, v50);
            v51(v45, v50);
            outlined destroy of ReferenceResolutionClientProtocol?(v44, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMR);
            outlined destroy of ReferenceResolutionClientProtocol?(v66, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMR);
            if (v63 < v64)
            {
              break;
            }

            v36 = v41;
            a3 = v65;
            v52 = v57;
            if (v43 < v38 || v65 >= v38)
            {
              swift_arrayInitWithTakeFrontToBack();
              v40 = v59;
              a1 = v67;
              v37 = v56;
            }

            else
            {
              v40 = v59;
              a1 = v67;
              v37 = v56;
              if (v43 != v38)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v38 = v41;
            v39 = v58;
            if (v41 <= v52)
            {
              a2 = v58;
              goto LABEL_59;
            }
          }

          v53 = v57;
          a3 = v65;
          if (v43 < v58 || v65 >= v58)
          {
            break;
          }

          a2 = v59;
          a1 = v67;
          v36 = v55;
          v37 = v56;
          if (v43 != v58)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v38 <= v53)
          {
            goto LABEL_59;
          }
        }

        a2 = v59;
        swift_arrayInitWithTakeFrontToBack();
        a1 = v67;
        v36 = v55;
        v37 = v56;
        if (v38 > v53)
        {
          continue;
        }

        break;
      }
    }

LABEL_59:
    v71 = a2;
    v69 = v36;
  }

  else
  {
    v19 = v18 * v16;
    if (a4 < a1 || a1 + v19 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v59 = a4 + v19;
    v69 = a4 + v19;
    if (v19 >= 1 && a2 < a3)
    {
      v65 = a3;
      v58 = v16;
      do
      {
        v67 = a1;
        v22 = v66;
        outlined init with copy of ReferenceResolutionClientProtocol?(a2, v66, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMR);
        v23 = v60;
        outlined init with copy of ReferenceResolutionClientProtocol?(a4, v60, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMR);
        v24 = v61;
        outlined init with copy of ReferenceResolutionClientProtocol?(v22, v61, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMR);
        v25 = v68;
        v26 = *(v68 + 48);
        v64 = *(v24 + v26);
        outlined destroy of ConversationHandlerLocator.ScoredHandler(v24 + v26);
        v27 = v62;
        outlined init with copy of ReferenceResolutionClientProtocol?(v23, v62, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMR);
        v28 = *(v25 + 48);
        v63 = *(v27 + v28);
        outlined destroy of ConversationHandlerLocator.ScoredHandler(v27 + v28);
        v29 = type metadata accessor for UUID();
        v30 = *(*(v29 - 8) + 8);
        v31 = a4;
        v30(v27, v29);
        v30(v24, v29);
        outlined destroy of ReferenceResolutionClientProtocol?(v23, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMR);
        outlined destroy of ReferenceResolutionClientProtocol?(v22, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMR);
        if (v63 >= v64)
        {
          v32 = v58;
          a4 += v58;
          v33 = v67;
          v35 = v31;
          if (v67 < v31 || v67 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
            v34 = v65;
          }

          else
          {
            v34 = v65;
            if (v67 != v35)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v70 = a4;
        }

        else
        {
          v32 = v58;
          v33 = v67;
          if (v67 < a2 || v67 >= a2 + v58)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 += v32;
            v34 = v65;
          }

          else
          {
            v34 = v65;
            if (v67 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 += v32;
          }
        }

        a1 = v33 + v32;
        v71 = a1;
      }

      while (a4 < v59 && a2 < v34);
    }
  }

LABEL_60:
  specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(&v71, &v70, &v69);
}

void *specialized SharedFlowPluginServiceClient.init(connectionProvider:onConnectionInterrupted:)(uint64_t a1, uint64_t a2, void *a3)
{
  a3[10] = &type metadata for SharedFlowPluginServiceXPCConnectionProvider;
  a3[11] = &protocol witness table for SharedFlowPluginServiceXPCConnectionProvider;
  type metadata accessor for SharedFlowPluginServiceClient.LoadedConversationTracker();
  a3[2] = 0;
  a3[3] = 0;
  v6 = swift_allocObject();
  v7 = MEMORY[0x1E69E7CC8];
  *(v6 + 16) = MEMORY[0x1E69E7CC8];
  a3[4] = v6;
  a3[5] = 0;
  type metadata accessor for InterruptibleTaskManager();
  v8 = swift_allocObject();
  v8[4] = v7;
  v8[5] = 0;
  v8[2] = 0xD00000000000001DLL;
  v8[3] = 0x80000001DCA7FE70;
  a3[6] = v8;
  a3[12] = a1;
  a3[13] = a2;
  return a3;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC11SiriKitFlow32AppShortcutGeneralizedInvocationV_SayAFGTt0g5Tf4g_n(uint64_t a1, double a2)
{
  v3 = type metadata accessor for AppShortcutGeneralizedInvocation();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v19 - v8;
  v10 = *(a1 + 16);
  v11 = lazy protocol witness table accessor for type RemoteFlowPluginBundleConversationHandler and conformance RemoteFlowPluginBundleConversationHandler(&lazy protocol witness table cache variable for type AppShortcutGeneralizedInvocation and conformance AppShortcutGeneralizedInvocation, MEMORY[0x1E69D00D0], MEMORY[0x1E69D00D8]);
  result = MEMORY[0x1E12A1A00](v10, v3, v11);
  v20 = result;
  if (v10)
  {
    v15 = *(v4 + 16);
    v13 = v4 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v18 = v14(v6, v16, v3);
      specialized Set._Variant.insert(_:)(v9, v6, v18);
      (*(v13 - 8))(v9, v3);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v20;
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1E12A1A00](v2, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      specialized Set._Variant.insert(_:)(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo16LNSystemProtocolC_SayAEGTt0g5Tf4g_n(unint64_t a1)
{
  j = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    v4 = type metadata accessor for LNSystemProtocol();
    v5 = lazy protocol witness table accessor for type RemoteFlowPluginBundleConversationHandler and conformance RemoteFlowPluginBundleConversationHandler(&lazy protocol witness table cache variable for type LNSystemProtocol and conformance NSObject, type metadata accessor for LNSystemProtocol, MEMORY[0x1E69E81B8]);
    result = MEMORY[0x1E12A1A00](i, v4, v5);
    v12 = result;
    if (j)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1E12A1FE0](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v9 = *(a1 + 8 * j + 32);
      }

      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      specialized Set._Variant.insert(_:)(&v11, v9);

      if (v10 == v7)
      {
        return v12;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = __CocoaSet.count.getter();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t partial apply for closure #2 in ConversationHandlerLocator.init(onConnectionInterrupted:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #2 in ConversationHandlerLocator.init(onConnectionInterrupted:)(a1, v4, v5, v6, v7, v8);
}

uint64_t partial apply for closure #1 in ConversationHandlerLocator.init(onConnectionInterrupted:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in ConversationHandlerLocator.init(onConnectionInterrupted:)(a1, v4, v5, v6, v7, v8);
}

unint64_t lazy protocol witness table accessor for type FlowExtensionConversationHandler and conformance FlowExtensionConversationHandler()
{
  result = lazy protocol witness table cache variable for type FlowExtensionConversationHandler and conformance FlowExtensionConversationHandler;
  if (!lazy protocol witness table cache variable for type FlowExtensionConversationHandler and conformance FlowExtensionConversationHandler)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FlowExtensionConversationHandler and conformance FlowExtensionConversationHandler);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FlowExtensionConversationHandler and conformance FlowExtensionConversationHandler;
  if (!lazy protocol witness table cache variable for type FlowExtensionConversationHandler and conformance FlowExtensionConversationHandler)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FlowExtensionConversationHandler and conformance FlowExtensionConversationHandler);
  }

  return result;
}

char *initializeBufferWithCopyOfBuffer for ConversationHandlerLocator.ScoredHandler(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v10 = *a2;
    *v3 = *a2;
    v3 = (v10 + ((v4 + 16) & ~v4));
  }

  else
  {
    *a1 = *a2;
    v6 = *(a2 + 2);
    *(a1 + 32) = v6;
    (**(v6 - 8))(a1 + 8, a2 + 1);
    v8 = *(a3 + 24);
    v9 = type metadata accessor for Input();
    (*(*(v9 - 8) + 16))(&v3[v8], a2 + v8, v9);
  }

  return v3;
}

void *assignWithCopy for ConversationHandlerLocator.ScoredHandler(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  __swift_assign_boxed_opaque_existential_1(a1 + 1, a2 + 1);
  v6 = *(a3 + 24);
  v7 = type metadata accessor for Input();
  (*(*(v7 - 8) + 24))(a1 + v6, a2 + v6, v7);
  return a1;
}

uint64_t initializeWithTake for ConversationHandlerLocator.ScoredHandler(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  v5 = *(a3 + 24);
  v6 = type metadata accessor for Input();
  (*(*(v6 - 8) + 32))(a1 + v5, a2 + v5, v6);
  return a1;
}

uint64_t assignWithTake for ConversationHandlerLocator.ScoredHandler(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  __swift_destroy_boxed_opaque_existential_1Tm((a1 + 8));
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  v6 = *(a3 + 24);
  v7 = type metadata accessor for Input();
  (*(*(v7 - 8) + 40))(a1 + v6, a2 + v6, v7);
  return a1;
}

uint64_t type metadata completion function for ConversationHandlerLocator.ScoredHandler(uint64_t a1)
{
  result = type metadata accessor for Input();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SharedFlowPluginServiceConnectionError and conformance SharedFlowPluginServiceConnectionError()
{
  result = lazy protocol witness table cache variable for type SharedFlowPluginServiceConnectionError and conformance SharedFlowPluginServiceConnectionError;
  if (!lazy protocol witness table cache variable for type SharedFlowPluginServiceConnectionError and conformance SharedFlowPluginServiceConnectionError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SharedFlowPluginServiceConnectionError and conformance SharedFlowPluginServiceConnectionError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SharedFlowPluginServiceConnectionError and conformance SharedFlowPluginServiceConnectionError;
  if (!lazy protocol witness table cache variable for type SharedFlowPluginServiceConnectionError and conformance SharedFlowPluginServiceConnectionError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SharedFlowPluginServiceConnectionError and conformance SharedFlowPluginServiceConnectionError);
  }

  return result;
}

void *outlined consume of SharedFlowPluginServiceClient.SharedFlowPluginServiceConnection?(void *result, uint64_t a2)
{
  if (result)
  {

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t partial apply for specialized closure #5 in SharedFlowPluginServiceClient.withCurrentConnection<A>(block:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return specialized closure #5 in SharedFlowPluginServiceClient.withCurrentConnection<A>(block:)(a1, v4, v5, v6);
}

{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return specialized closure #5 in SharedFlowPluginServiceClient.withCurrentConnection<A>(block:)(a1, v4, v5, v6);
}

id outlined copy of InterruptibleTaskResult<RemoteConversation?>(id result, uint64_t a2, char a3)
{
  if (a3 == 2 || a3 == 1)
  {
    return result;
  }

  if (!a3)
  {
    return swift_unknownObjectRetain();
  }

  return result;
}

void partial apply for specialized closure #2 in InterruptibleTaskManager.perform<A>(_:)()
{
  specialized closure #2 in InterruptibleTaskManager.perform<A>(_:)(*(v0 + 16));
}

{
  specialized closure #2 in InterruptibleTaskManager.perform<A>(_:)(*(v0 + 16));
}

void partial apply for specialized closure #1 in withCancellableContinuation<A>(body:)()
{
  specialized closure #1 in withCancellableContinuation<A>(body:)();
}

{
  specialized closure #1 in withCancellableContinuation<A>(body:)();
}

{
  specialized closure #1 in withCancellableContinuation<A>(body:)();
}

uint64_t objectdestroy_30Tm()
{

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t partial apply for closure #1 in closure #1 in ConversationHandlerLocator.init(onConnectionInterrupted:)(void *a1)
{

  *a1 = v1;
}

{
  return partial apply for closure #1 in closure #2 in ConversationHandlerLocator.init(onConnectionInterrupted:)(a1);
}

uint64_t outlined destroy of ConversationHandlerLocator.ScoredHandler(uint64_t a1)
{
  v2 = type metadata accessor for ConversationHandlerLocator.ScoredHandler(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type [RemoteFlowPluginPackage] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [RemoteFlowPluginPackage] and conformance [A];
  if (!lazy protocol witness table cache variable for type [RemoteFlowPluginPackage] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay14SiriKitRuntime23RemoteFlowPluginPackageCGMd, &_sSay14SiriKitRuntime23RemoteFlowPluginPackageCGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [RemoteFlowPluginPackage] and conformance [A]);
  }

  return result;
}

uint64_t ConversationHelper.loadNewConversation(pluginAction:conversationHelperInput:)(uint64_t a1, uint64_t a2)
{
  v3[16] = a2;
  v3[17] = v2;
  v3[15] = a1;
  v4 = type metadata accessor for RemoteConversationOrReformedInput(0);
  v3[18] = v4;
  v3[19] = *(v4 - 8);
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v5 = type metadata accessor for Input();
  v3[22] = v5;
  v3[23] = *(v5 - 8);
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime33RemoteConversationOrReformedInputOSgMd, &_s14SiriKitRuntime33RemoteConversationOrReformedInputOSgMR);
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v6 = type metadata accessor for PluginAction();
  v3[28] = v6;
  v3[29] = *(v6 - 8);
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v7 = static MessageBusActor.shared;
  v3[32] = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](ConversationHelper.loadNewConversation(pluginAction:conversationHelperInput:), v7, 0);
}

uint64_t ConversationHelper.loadNewConversation(pluginAction:conversationHelperInput:)()
{
  v26 = v0;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = v0[31];
  v2 = v0[28];
  v3 = v0[29];
  v4 = v0[15];
  v5 = type metadata accessor for Logger();
  v0[33] = __swift_project_value_buffer(v5, static Logger.executor);
  v6 = *(v3 + 16);
  v0[34] = v6;
  v0[35] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[31];
  v11 = v0[28];
  v12 = v0[29];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v25 = v24;
    *v13 = 136315138;
    lazy protocol witness table accessor for type PluginAction and conformance PluginAction(&lazy protocol witness table cache variable for type PluginAction and conformance PluginAction, MEMORY[0x1E69CFE08], MEMORY[0x1E69CFE18]);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    v17 = *(v12 + 8);
    v17(v10, v11);
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, &v25);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_1DC659000, v7, v8, "[DecisionEngine] Finding conversation for plugin action: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
    MEMORY[0x1E12A2F50](v24, -1, -1);
    MEMORY[0x1E12A2F50](v13, -1, -1);
  }

  else
  {

    v17 = *(v12 + 8);
    v17(v10, v11);
  }

  v0[36] = v17;
  v19 = PluginAction.flowHandlerId.getter();
  v21 = v20;
  v0[37] = v20;
  v22 = swift_task_alloc();
  v0[38] = v22;
  *v22 = v0;
  v22[1] = ConversationHelper.loadNewConversation(pluginAction:conversationHelperInput:);

  return ConversationHandlerLocator.handler(id:)((v0 + 7), v19, v21);
}

{
  v1 = *(*v0 + 256);

  return MEMORY[0x1EEE6DFA0](ConversationHelper.loadNewConversation(pluginAction:conversationHelperInput:), v1, 0);
}

{
  v25 = v0;
  if (*(v0 + 80))
  {
    outlined init with take of ReferenceResolutionClientProtocol((v0 + 56), v0 + 16);
    PluginAction.input.getter();
    v1 = swift_task_alloc();
    *(v0 + 312) = v1;
    *v1 = v0;
    v1[1] = ConversationHelper.loadNewConversation(pluginAction:conversationHelperInput:);
    v2 = *(v0 + 216);
    v3 = *(v0 + 200);
    v4 = *(v0 + 128);

    return ConversationHelper.loadConversationAndAccept(handler:input:conversationHelperInput:)(v2, v0 + 16, v3, v4);
  }

  else
  {
    v6 = *(v0 + 272);
    v7 = *(v0 + 240);
    v8 = *(v0 + 224);
    v9 = *(v0 + 120);

    outlined destroy of ReferenceResolutionClientProtocol?(v0 + 56, &_s14SiriKitRuntime19ConversationHandler_pSgMd, &_s14SiriKitRuntime19ConversationHandler_pSgMR);
    v6(v7, v9, v8);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    v12 = os_log_type_enabled(v10, v11);
    v13 = *(v0 + 288);
    v14 = *(v0 + 240);
    v15 = *(v0 + 224);
    if (v12)
    {
      v23 = v11;
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v24 = v17;
      *v16 = 136315138;
      v18 = PluginAction.flowHandlerId.getter();
      v20 = v19;
      v13(v14, v15);
      v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, &v24);

      *(v16 + 4) = v21;
      _os_log_impl(&dword_1DC659000, v10, v23, "[AmbiguityService] Cannot load a RemoteConversationClient for %s: handler not found", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v17);
      MEMORY[0x1E12A2F50](v17, -1, -1);
      MEMORY[0x1E12A2F50](v16, -1, -1);
    }

    else
    {

      v13(v14, v15);
    }

    v22 = *(v0 + 8);

    return v22(0);
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v4 = *(*v1 + 184);
  v5 = *(*v1 + 176);
  v2[40] = v0;

  v6 = *(v4 + 8);
  v2[41] = v6;
  v2[42] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v3, v5);
  v7 = v2[32];
  if (v0)
  {
    v8 = ConversationHelper.loadNewConversation(pluginAction:conversationHelperInput:);
  }

  else
  {
    v8 = ConversationHelper.loadNewConversation(pluginAction:conversationHelperInput:);
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

{
  v1 = v0[26];
  v2 = v0[18];
  v3 = v0[19];
  outlined init with copy of ReferenceResolutionClientProtocol?(v0[27], v1, &_s14SiriKitRuntime33RemoteConversationOrReformedInputOSgMd, &_s14SiriKitRuntime33RemoteConversationOrReformedInputOSgMR);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[26];
    v5 = v0[27];

    outlined destroy of ReferenceResolutionClientProtocol?(v5, &_s14SiriKitRuntime33RemoteConversationOrReformedInputOSgMd, &_s14SiriKitRuntime33RemoteConversationOrReformedInputOSgMR);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
    outlined destroy of ReferenceResolutionClientProtocol?(v4, &_s14SiriKitRuntime33RemoteConversationOrReformedInputOSgMd, &_s14SiriKitRuntime33RemoteConversationOrReformedInputOSgMR);
    v6 = 0;
LABEL_8:

    v16 = v0[1];

    return v16(v6);
  }

  v7 = v0[20];
  v8 = v0[21];
  outlined init with take of RemoteConversationOrReformedInput(v0[26], v8, type metadata accessor for RemoteConversationOrReformedInput);
  outlined init with copy of RemoteConversationOrReformedInput(v8, v7, type metadata accessor for RemoteConversationOrReformedInput);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v13 = v0[27];
    v15 = v0[20];
    v14 = v0[21];

    outlined destroy of RemoteConversationOrReformedInput(v14, type metadata accessor for RemoteConversationOrReformedInput);
    outlined destroy of ReferenceResolutionClientProtocol?(v13, &_s14SiriKitRuntime33RemoteConversationOrReformedInputOSgMd, &_s14SiriKitRuntime33RemoteConversationOrReformedInputOSgMR);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
    v6 = *v15;
    goto LABEL_8;
  }

  (*(v0[23] + 32))(v0[24], v0[20], v0[22]);
  v9 = swift_task_alloc();
  v0[43] = v9;
  *v9 = v0;
  v9[1] = ConversationHelper.loadNewConversation(pluginAction:conversationHelperInput:);
  v10 = v0[24];
  v11 = v0[16];

  return ConversationHelper.loadNewConversation(input:conversationHelperInput:priorReformationCount:isFallback:)(v10, v11, 1, 0);
}

{
  v1 = v0[41];
  v2 = v0[27];
  v3 = v0[24];
  v5 = v0[21];
  v4 = v0[22];

  v1(v3, v4);
  outlined destroy of RemoteConversationOrReformedInput(v5, type metadata accessor for RemoteConversationOrReformedInput);
  outlined destroy of ReferenceResolutionClientProtocol?(v2, &_s14SiriKitRuntime33RemoteConversationOrReformedInputOSgMd, &_s14SiriKitRuntime33RemoteConversationOrReformedInputOSgMR);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v6 = v0[44];

  v7 = v0[1];

  return v7(v6);
}

{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t ConversationHelper.loadNewConversation(pluginAction:conversationHelperInput:)(uint64_t a1)
{
  v2 = *(*v1 + 256);
  *(*v1 + 352) = a1;

  return MEMORY[0x1EEE6DFA0](ConversationHelper.loadNewConversation(pluginAction:conversationHelperInput:), v2, 0);
}

uint64_t ConversationHelperInput.init(speechData:turnData:bridge:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = a1;
  v9 = type metadata accessor for ConversationHelperInput(0);
  result = outlined init with take of RemoteConversationOrReformedInput(a2, a5 + *(v9 + 20), type metadata accessor for RemoteConversationTurnData);
  v11 = (a5 + *(v9 + 24));
  *v11 = a3;
  v11[1] = a4;
  return result;
}

uint64_t ConversationHelper.__allocating_init(conversationHandlerLocator:preFlowBlockingWork:)(uint64_t a1, __int128 *a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  outlined init with take of ReferenceResolutionClientProtocol(a2, v4 + 24);
  return v4;
}

uint64_t ConversationHelper.init(conversationHandlerLocator:preFlowBlockingWork:)(uint64_t a1, __int128 *a2)
{
  *(v2 + 16) = a1;
  outlined init with take of ReferenceResolutionClientProtocol(a2, v2 + 24);
  return v2;
}

uint64_t ConversationHelper.deinit()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));
  return v0;
}

uint64_t ConversationHelper.__deallocating_deinit()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t RemoteConversationOrReformedInput.remoteConversationOrNil.getter()
{
  v1 = type metadata accessor for RemoteConversationOrReformedInput(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of RemoteConversationOrReformedInput(v0, v3, type metadata accessor for RemoteConversationOrReformedInput);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return *v3;
  }

  outlined destroy of RemoteConversationOrReformedInput(v3, type metadata accessor for RemoteConversationOrReformedInput);
  return 0;
}

uint64_t Sequence<>.containsConversationTriggeredByPeer()(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v3[6] = *(a1 - 8);
  v3[7] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3[8] = AssociatedTypeWitness;
  v3[9] = *(AssociatedTypeWitness - 8);
  v3[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](Sequence<>.containsConversationTriggeredByPeer(), 0, 0);
}

uint64_t Sequence<>.containsConversationTriggeredByPeer()()
{
  (*(v0[6] + 16))(v0[7], v0[5], v0[3]);
  dispatch thunk of Sequence.makeIterator()();
  swift_getAssociatedConformanceWitness();
  dispatch thunk of IteratorProtocol.next()();
  v1 = v0[2];
  if (v1)
  {
    v0[11] = v1;

    return MEMORY[0x1EEE6DFA0](Sequence<>.containsConversationTriggeredByPeer(), v1, 0);
  }

  else
  {
    (*(v0[9] + 8))(v0[10], v0[8]);

    v2 = v0[1];

    return v2(0);
  }
}

{
  v1 = *(*(v0 + 88) + 184);
  *(v0 + 96) = v1;
  if (v1 == 2)
  {
    v2 = Sequence<>.containsConversationTriggeredByPeer();
  }

  else
  {
    v2 = Sequence<>.containsConversationTriggeredByPeer();
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{

  swift_getAssociatedConformanceWitness();
  dispatch thunk of IteratorProtocol.next()();
  v1 = v0[2];
  if (v1)
  {
    v0[11] = v1;

    return MEMORY[0x1EEE6DFA0](Sequence<>.containsConversationTriggeredByPeer(), v1, 0);
  }

  else
  {
    (*(v0[9] + 8))(v0[10], v0[8]);

    v2 = v0[1];

    return v2(0);
  }
}

{
  v1 = *(v0 + 96);

  if ((v1 & 1) != 0 || (swift_getAssociatedConformanceWitness(), dispatch thunk of IteratorProtocol.next()(), (v2 = *(v0 + 16)) == 0))
  {
    (*(*(v0 + 72) + 8))(*(v0 + 80), *(v0 + 64));

    v3 = *(v0 + 8);

    return v3(v1 & 1);
  }

  else
  {
    *(v0 + 88) = v2;

    return MEMORY[0x1EEE6DFA0](Sequence<>.containsConversationTriggeredByPeer(), v2, 0);
  }
}

void **initializeBufferWithCopyOfBuffer for ConversationHelperInput(void **a1, char **a2, uint64_t a3)
{
  v3 = *(*(a3 - 8) + 80);
  v4 = *a2;
  *a1 = *a2;
  if ((v3 & 0x20000) != 0)
  {
    v16 = &v4[(v3 + 16) & ~v3];
  }

  else
  {
    v5 = *(a3 + 20);
    v6 = a1 + v5;
    v7 = a2 + v5;
    v8 = *(a2 + v5 + 8);
    *v6 = *(a2 + v5);
    *(v6 + 1) = v8;
    v9 = *(a2 + v5 + 24);
    *(v6 + 2) = *(a2 + v5 + 16);
    *(v6 + 3) = v9;
    v35 = type metadata accessor for RemoteConversationTurnData(0);
    v10 = v35[6];
    v11 = type metadata accessor for UUID();
    v12 = *(v11 - 8);
    v13 = *(v12 + 48);
    v14 = v4;

    if (v13(&v7[v10], 1, v11))
    {
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      memcpy(&v6[v10], &v7[v10], *(*(v15 - 8) + 64));
    }

    else
    {
      (*(v12 + 16))(&v6[v10], &v7[v10], v11);
      (*(v12 + 56))(&v6[v10], 0, 1, v11);
    }

    v17 = v35[7];
    v18 = type metadata accessor for SessionConfiguration();
    v19 = *(v18 - 8);
    v16 = a1;
    if ((*(v19 + 48))(&v7[v17], 1, v18))
    {
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR);
      memcpy(&v6[v17], &v7[v17], *(*(v20 - 8) + 64));
    }

    else
    {
      (*(v19 + 16))(&v6[v17], &v7[v17], v18);
      (*(v19 + 56))(&v6[v17], 0, 1, v18);
    }

    v21 = v35[8];
    v22 = *&v7[v21];
    *&v6[v21] = v22;
    v23 = v35[9];
    v24 = v22;
    if (v13(&v7[v23], 1, v11))
    {
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      memcpy(&v6[v23], &v7[v23], *(*(v25 - 8) + 64));
    }

    else
    {
      (*(v12 + 16))(&v6[v23], &v7[v23], v11);
      (*(v12 + 56))(&v6[v23], 0, 1, v11);
    }

    *&v6[v35[10]] = *&v7[v35[10]];
    v6[v35[11]] = v7[v35[11]];
    v26 = v35[12];
    v27 = *&v7[v26];
    *&v6[v26] = v27;
    v28 = v35[13];
    v29 = &v6[v28];
    v30 = &v7[v28];
    v31 = *&v7[v28 + 8];

    v32 = v27;
    if (v31 >> 60 == 15)
    {
      *v29 = *v30;
    }

    else
    {
      v33 = *v30;
      outlined copy of Data._Representation(*v30, v31);
      *v29 = v33;
      *(v29 + 1) = v31;
    }

    *(a1 + *(a3 + 24)) = *(a2 + *(a3 + 24));
    swift_unknownObjectRetain();
  }

  return v16;
}

void **initializeWithCopy for ConversationHelperInput(void **a1, void **a2, uint64_t a3)
{
  v3 = *a2;
  *a1 = *a2;
  v4 = *(a3 + 20);
  v5 = a1 + v4;
  v6 = a2 + v4;
  v7 = *(a2 + v4 + 8);
  *v5 = *(a2 + v4);
  *(v5 + 1) = v7;
  v8 = *(a2 + v4 + 24);
  *(v5 + 2) = *(a2 + v4 + 16);
  *(v5 + 3) = v8;
  v33 = type metadata accessor for RemoteConversationTurnData(0);
  v9 = v33[6];
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  v13 = v3;

  if (v12(&v6[v9], 1, v10))
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    memcpy(&v5[v9], &v6[v9], *(*(v14 - 8) + 64));
  }

  else
  {
    (*(v11 + 16))(&v5[v9], &v6[v9], v10);
    (*(v11 + 56))(&v5[v9], 0, 1, v10);
  }

  v15 = v33[7];
  v16 = type metadata accessor for SessionConfiguration();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(&v6[v15], 1, v16))
  {
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR);
    memcpy(&v5[v15], &v6[v15], *(*(v18 - 8) + 64));
  }

  else
  {
    (*(v17 + 16))(&v5[v15], &v6[v15], v16);
    (*(v17 + 56))(&v5[v15], 0, 1, v16);
  }

  v19 = v33[8];
  v20 = *&v6[v19];
  *&v5[v19] = v20;
  v21 = v33[9];
  v22 = v20;
  if (v12(&v6[v21], 1, v10))
  {
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    memcpy(&v5[v21], &v6[v21], *(*(v23 - 8) + 64));
  }

  else
  {
    (*(v11 + 16))(&v5[v21], &v6[v21], v10);
    (*(v11 + 56))(&v5[v21], 0, 1, v10);
  }

  *&v5[v33[10]] = *&v6[v33[10]];
  v5[v33[11]] = v6[v33[11]];
  v24 = v33[12];
  v25 = *&v6[v24];
  *&v5[v24] = v25;
  v26 = v33[13];
  v27 = &v5[v26];
  v28 = &v6[v26];
  v29 = *&v6[v26 + 8];

  v30 = v25;
  if (v29 >> 60 == 15)
  {
    *v27 = *v28;
  }

  else
  {
    v31 = *v28;
    outlined copy of Data._Representation(*v28, v29);
    *v27 = v31;
    *(v27 + 1) = v29;
  }

  *(a1 + *(a3 + 24)) = *(a2 + *(a3 + 24));
  swift_unknownObjectRetain();
  return a1;
}

void **assignWithCopy for ConversationHelperInput(void **a1, void **a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *a1;
  *a1 = *a2;
  v8 = v6;

  v54 = a3;
  v55 = a2;
  v9 = *(a3 + 20);
  v56 = a1;
  v10 = a1 + v9;
  v11 = a2 + v9;
  *v10 = *(a2 + v9);
  *(v10 + 1) = *(a2 + v9 + 8);

  *(v10 + 2) = *(v11 + 2);
  *(v10 + 3) = *(v11 + 3);

  v12 = type metadata accessor for RemoteConversationTurnData(0);
  v13 = *(v12 + 24);
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  v16 = *(v15 + 48);
  v17 = v16(&v10[v13], 1, v14);
  v18 = v16(&v11[v13], 1, v14);
  v52 = v15;
  if (v17)
  {
    if (!v18)
    {
      (*(v15 + 16))(&v10[v13], &v11[v13], v14);
      (*(v15 + 56))(&v10[v13], 0, 1, v14);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v18)
  {
    (*(v15 + 8))(&v10[v13], v14);
LABEL_6:
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    memcpy(&v10[v13], &v11[v13], *(*(v19 - 8) + 64));
    goto LABEL_7;
  }

  (*(v15 + 24))(&v10[v13], &v11[v13], v14);
LABEL_7:
  v53 = v12;
  v20 = *(v12 + 28);
  v21 = type metadata accessor for SessionConfiguration();
  v22 = *(v21 - 8);
  v23 = *(v22 + 48);
  v24 = v23(&v10[v20], 1, v21);
  v25 = v23(&v11[v20], 1, v21);
  if (v24)
  {
    if (!v25)
    {
      (*(v22 + 16))(&v10[v20], &v11[v20], v21);
      (*(v22 + 56))(&v10[v20], 0, 1, v21);
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (v25)
  {
    (*(v22 + 8))(&v10[v20], v21);
LABEL_12:
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR);
    memcpy(&v10[v20], &v11[v20], *(*(v26 - 8) + 64));
    goto LABEL_13;
  }

  (*(v22 + 24))(&v10[v20], &v11[v20], v21);
LABEL_13:
  v27 = v53[8];
  v28 = *&v11[v27];
  v29 = *&v10[v27];
  *&v10[v27] = v28;
  v30 = v28;

  v31 = v53[9];
  v32 = v16(&v10[v31], 1, v14);
  v33 = v16(&v11[v31], 1, v14);
  if (v32)
  {
    if (!v33)
    {
      (*(v52 + 16))(&v10[v31], &v11[v31], v14);
      (*(v52 + 56))(&v10[v31], 0, 1, v14);
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if (v33)
  {
    (*(v52 + 8))(&v10[v31], v14);
LABEL_18:
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    memcpy(&v10[v31], &v11[v31], *(*(v34 - 8) + 64));
    goto LABEL_19;
  }

  (*(v52 + 24))(&v10[v31], &v11[v31], v14);
LABEL_19:
  *&v10[v53[10]] = *&v11[v53[10]];

  v10[v53[11]] = v11[v53[11]];
  v35 = v53[12];
  v36 = *&v10[v35];
  v37 = *&v11[v35];
  *&v10[v35] = v37;
  v38 = v37;

  v39 = v53[13];
  v40 = &v10[v39];
  v41 = &v11[v39];
  v42 = *&v11[v39 + 8];
  if (*&v10[v39 + 8] >> 60 != 15)
  {
    if (v42 >> 60 != 15)
    {
      v44 = *v41;
      outlined copy of Data._Representation(*v41, v42);
      v45 = *v40;
      v46 = v40[1];
      *v40 = v44;
      v40[1] = v42;
      outlined consume of Data._Representation(v45, v46);
      goto LABEL_26;
    }

    outlined destroy of Data(v40);
    goto LABEL_24;
  }

  if (v42 >> 60 == 15)
  {
LABEL_24:
    *v40 = *v41;
    goto LABEL_26;
  }

  v43 = *v41;
  outlined copy of Data._Representation(*v41, v42);
  *v40 = v43;
  v40[1] = v42;
LABEL_26:
  v47 = *(v54 + 24);
  v48 = (v56 + v47);
  v49 = (v55 + v47);
  v50 = v49[1];
  *v48 = *v49;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v48[1] = v50;
  return v56;
}

void *initializeWithTake for ConversationHelperInput(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(a3 + 20);
  v5 = a1 + v4;
  v6 = a2 + v4;
  v7 = *(a2 + v4 + 16);
  *v5 = *(a2 + v4);
  *(v5 + 1) = v7;
  v8 = type metadata accessor for RemoteConversationTurnData(0);
  v9 = v8[6];
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v20 = *(v11 + 48);
  if (v20(&v6[v9], 1, v10))
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    memcpy(&v5[v9], &v6[v9], *(*(v12 - 8) + 64));
  }

  else
  {
    (*(v11 + 32))(&v5[v9], &v6[v9], v10);
    (*(v11 + 56))(&v5[v9], 0, 1, v10);
  }

  v13 = v8[7];
  v14 = type metadata accessor for SessionConfiguration();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(&v6[v13], 1, v14))
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR);
    memcpy(&v5[v13], &v6[v13], *(*(v16 - 8) + 64));
  }

  else
  {
    (*(v15 + 32))(&v5[v13], &v6[v13], v14);
    (*(v15 + 56))(&v5[v13], 0, 1, v14);
  }

  *&v5[v8[8]] = *&v6[v8[8]];
  v17 = v8[9];
  if (v20(&v6[v17], 1, v10))
  {
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    memcpy(&v5[v17], &v6[v17], *(*(v18 - 8) + 64));
  }

  else
  {
    (*(v11 + 32))(&v5[v17], &v6[v17], v10);
    (*(v11 + 56))(&v5[v17], 0, 1, v10);
  }

  *&v5[v8[10]] = *&v6[v8[10]];
  v5[v8[11]] = v6[v8[11]];
  *&v5[v8[12]] = *&v6[v8[12]];
  *&v5[v8[13]] = *&v6[v8[13]];
  *(a1 + *(a3 + 24)) = *(a2 + *(a3 + 24));
  return a1;
}

void **assignWithTake for ConversationHelperInput(void **a1, void **a2, uint64_t a3)
{
  v6 = *a1;
  *a1 = *a2;

  v48 = a3;
  v49 = a2;
  v7 = *(a3 + 20);
  v50 = a1;
  v8 = a1 + v7;
  v9 = a2 + v7;
  v10 = *(a2 + v7 + 8);
  *v8 = *(a2 + v7);
  *(v8 + 1) = v10;

  v11 = *(v9 + 3);
  *(v8 + 2) = *(v9 + 2);
  *(v8 + 3) = v11;

  v12 = type metadata accessor for RemoteConversationTurnData(0);
  v13 = *(v12 + 24);
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  v16 = *(v15 + 48);
  v17 = v16(&v8[v13], 1, v14);
  v18 = v16(&v9[v13], 1, v14);
  v46 = v15;
  if (v17)
  {
    if (!v18)
    {
      (*(v15 + 32))(&v8[v13], &v9[v13], v14);
      (*(v15 + 56))(&v8[v13], 0, 1, v14);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v18)
  {
    (*(v15 + 8))(&v8[v13], v14);
LABEL_6:
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    memcpy(&v8[v13], &v9[v13], *(*(v19 - 8) + 64));
    goto LABEL_7;
  }

  (*(v15 + 40))(&v8[v13], &v9[v13], v14);
LABEL_7:
  v47 = v12;
  v20 = *(v12 + 28);
  v21 = type metadata accessor for SessionConfiguration();
  v22 = *(v21 - 8);
  v23 = *(v22 + 48);
  v24 = v23(&v8[v20], 1, v21);
  v25 = v23(&v9[v20], 1, v21);
  if (v24)
  {
    if (!v25)
    {
      (*(v22 + 32))(&v8[v20], &v9[v20], v21);
      (*(v22 + 56))(&v8[v20], 0, 1, v21);
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (v25)
  {
    (*(v22 + 8))(&v8[v20], v21);
LABEL_12:
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR);
    memcpy(&v8[v20], &v9[v20], *(*(v26 - 8) + 64));
    goto LABEL_13;
  }

  (*(v22 + 40))(&v8[v20], &v9[v20], v21);
LABEL_13:
  v27 = v47[8];
  v28 = *&v8[v27];
  *&v8[v27] = *&v9[v27];

  v29 = v47[9];
  v30 = v16(&v8[v29], 1, v14);
  v31 = v16(&v9[v29], 1, v14);
  if (v30)
  {
    if (!v31)
    {
      (*(v46 + 32))(&v8[v29], &v9[v29], v14);
      (*(v46 + 56))(&v8[v29], 0, 1, v14);
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if (v31)
  {
    (*(v46 + 8))(&v8[v29], v14);
LABEL_18:
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    memcpy(&v8[v29], &v9[v29], *(*(v32 - 8) + 64));
    goto LABEL_19;
  }

  (*(v46 + 40))(&v8[v29], &v9[v29], v14);
LABEL_19:
  *&v8[v47[10]] = *&v9[v47[10]];

  v8[v47[11]] = v9[v47[11]];
  v33 = v47[12];
  v34 = *&v8[v33];
  *&v8[v33] = *&v9[v33];

  v35 = v47[13];
  v36 = &v8[v35];
  v37 = &v9[v35];
  v38 = *&v8[v35 + 8];
  if (v38 >> 60 != 15)
  {
    v39 = v37[1];
    if (v39 >> 60 != 15)
    {
      v40 = *v36;
      *v36 = *v37;
      v36[1] = v39;
      outlined consume of Data._Representation(v40, v38);
      goto LABEL_24;
    }

    outlined destroy of Data(v36);
  }

  *v36 = *v37;
LABEL_24:
  v41 = *(v48 + 24);
  v42 = (v50 + v41);
  v43 = (v49 + v41);
  v44 = v43[1];
  *v42 = *v43;
  swift_unknownObjectRelease();
  v42[1] = v44;
  return v50;
}

uint64_t type metadata completion function for ConversationHelperInput(uint64_t a1)
{
  result = type metadata accessor for RemoteConversationTurnData(319);
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for RemoteConversationOrReformedInput(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v7 = *a2;
    *a1 = *a2;
    a1 = (v7 + ((v5 + 16) & ~v5));
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v6 = type metadata accessor for Input();
      (*(*(v6 - 8) + 16))(a1, a2, v6);
    }

    else
    {
      *a1 = *a2;
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t destroy for RemoteConversationOrReformedInput(uint64_t a1, uint64_t a2)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = type metadata accessor for Input();
    v4 = *(*(v3 - 8) + 8);

    return v4(a1, v3);
  }

  else
  {
  }
}

void *initializeWithCopy for RemoteConversationOrReformedInput(void *a1, void *a2, uint64_t a3)
{
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
  return a1;
}

void *assignWithCopy for RemoteConversationOrReformedInput(void *a1, void *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    outlined destroy of RemoteConversationOrReformedInput(a1, type metadata accessor for RemoteConversationOrReformedInput);
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

void *assignWithTake for RemoteConversationOrReformedInput(void *a1, const void *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  outlined destroy of RemoteConversationOrReformedInput(a1, type metadata accessor for RemoteConversationOrReformedInput);
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

uint64_t type metadata completion function for RemoteConversationOrReformedInput(uint64_t a1)
{
  result = type metadata accessor for Input();
  if (v2 <= 0x3F)
  {
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type PluginAction and conformance PluginAction(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void MUXContextMessage.userIdOfPrimaryUser()(uint64_t a1@<X8>)
{
  v1 = MUXContextMessage.userIdToHomeMember.getter();
  v2 = v1;
  v3 = v1 + 64;
  v4 = 1 << *(v1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v1 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  v9 = &selRef_setMitigationSource_;
  v32 = v7;
  while (v6)
  {
    v10 = v8;
LABEL_9:
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v12 = *(*(v2 + 56) + ((v10 << 9) | (8 * v11)));
    v13 = [v12 v9[32]];
    if (v13)
    {
      v34 = v12;
      v14 = v13;
      v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v16 = *(v15 + 16);
      if (v16)
      {
        v30 = v3;
        v31 = v2;
        v17 = 0;
        v18 = v15 + 32;
        while (v17 < *(v15 + 16))
        {
          outlined init with copy of Any(v18, v38);
          outlined init with copy of Any(v38, v37);
          v19 = swift_dynamicCast();
          if (v19)
          {
            v20 = v35;
          }

          else
          {
            v20 = 0;
          }

          v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          if (v19)
          {
            v23 = v36 == 0;
          }

          else
          {
            v23 = 1;
          }

          if (v23)
          {
            __swift_destroy_boxed_opaque_existential_1Tm(v38);
          }

          else
          {
            if (v20 == v21 && v36 == v22)
            {

              __swift_destroy_boxed_opaque_existential_1Tm(v38);
LABEL_34:

              v26 = [v34 sharedUserId];

              if (!v26)
              {
                goto LABEL_36;
              }

              static String._unconditionallyBridgeFromObjectiveC(_:)();

              v27 = a1;
              UserID.init(sharedUserId:)();
              v28 = 0;
              goto LABEL_37;
            }

            v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

            __swift_destroy_boxed_opaque_existential_1Tm(v38);
            if (v25)
            {
              goto LABEL_34;
            }
          }

          ++v17;
          v18 += 32;
          if (v16 == v17)
          {

            v8 = v10;
            v3 = v30;
            v2 = v31;
            goto LABEL_31;
          }
        }

LABEL_39:
        __break(1u);
        return;
      }

      v8 = v10;
LABEL_31:
      v7 = v32;
      v9 = &selRef_setMitigationSource_;
    }

    else
    {

      v8 = v10;
    }
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      goto LABEL_39;
    }

    if (v10 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v10);
    ++v8;
    if (v6)
    {
      goto LABEL_9;
    }
  }

LABEL_36:
  v28 = 1;
  v27 = a1;
LABEL_37:
  v29 = type metadata accessor for UserID();
  (*(*(v29 - 8) + 56))(v27, v28, 1, v29);
}

void static ConversationMUXUtils.userAttribute(from:)(void *a1@<X0>, char *a2@<X8>)
{
  specialized static ConversationMUXUtils.isOwner(_:)(a1, MEMORY[0x1E69C7EE8]);
  if (v4)
  {
    v5 = 0;
  }

  else
  {
    specialized static ConversationMUXUtils.isOwner(_:)(a1, MEMORY[0x1E69C7EF0]);
    if (v6)
    {
      v5 = 1;
    }

    else
    {
      v5 = 2;
    }
  }

  *a2 = v5;
}

unint64_t static ConversationMUXUtils.toUserIdentityClassification(from:)@<X0>(unint64_t result@<X0>, char a2@<W1>, char *a3@<X8>)
{
  if (a2 & 1 | (result > 4))
  {
    v3 = 4;
  }

  else
  {
    v3 = 0x1030204uLL >> (8 * result);
  }

  *a3 = v3;
  return result;
}

uint64_t static ConversationMUXUtils.isUnknownUser(withUserId:fromMUXContextMessage:)(uint64_t a1)
{
  v2 = MUXContextMessage.userIdToHomeMember.getter();
  if (*(v2 + 16) && (v3 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v4 & 1) != 0))
  {
    v5 = *(*(v2 + 56) + 8 * v3);

    specialized static ConversationMUXUtils.isOwner(_:)(v5, MEMORY[0x1E69C7EF0]);
    v7 = v6;
  }

  else
  {

    v7 = 1;
  }

  return v7 & 1;
}

uint64_t static ConversationMUXUtils.getAllUserIds(from:)(void *a1)
{
  v22 = type metadata accessor for UserID();
  v2 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v21 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v20 = &v20 - v6;
  v7 = [a1 homeMembers];
  if (!v7)
  {
    return MEMORY[0x1E69E7CD0];
  }

  v8 = v7;
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SAHomeMemberInfo, 0x1E69C7820);
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  result = MEMORY[0x1E69E7CD0];
  v23 = MEMORY[0x1E69E7CD0];
  if (!v9)
  {
    return result;
  }

  if (!(v9 >> 62))
  {
    v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

  result = __CocoaSet.count.getter();
  v11 = result;
  if (!result)
  {
LABEL_16:

    return MEMORY[0x1E69E7CD0];
  }

LABEL_5:
  if (v11 < 1)
  {
    __break(1u);
  }

  else
  {
    v12 = 0;
    v13 = (v2 + 8);
    do
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x1E12A1FE0](v12, v9);
      }

      else
      {
        v14 = *(v9 + 8 * v12 + 32);
      }

      v15 = v14;
      v16 = [v14 sharedUserId];
      if (v16)
      {
        v17 = v16;
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v18 = v21;
        UserID.init(sharedUserId:)();
        v19 = v20;
        specialized Set._Variant.insert(_:)(v20, v18);

        (*v13)(v19, v22);
      }

      else
      {
      }

      ++v12;
    }

    while (v11 != v12);

    return v23;
  }

  return result;
}

void *static ConversationMUXUtils.getUserIdToLoggableSharedUserIdDict(from:)()
{
  v0 = type metadata accessor for UserID();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v63[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v4);
  v70 = &v63[-v5];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDV3key_So16SAHomeMemberInfoC5valuetSgMd, &_s16SiriMessageTypes6UserIDV3key_So16SAHomeMemberInfoC5valuetSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v63[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v75 = &v63[-v10];
  v11 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v12 = MUXContextMessage.userIdToHomeMember.getter();
  v13 = 0;
  v14 = *(v12 + 64);
  v67 = v12 + 64;
  v72 = v1;
  v73 = v12;
  v15 = 1 << *(v12 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & v14;
  v18 = (v15 + 63) >> 6;
  v68 = v1 + 16;
  v69 = v8;
  v77 = (v1 + 32);
  v78 = v0;
  v74 = (v1 + 8);
  v71 = v3;
LABEL_4:
  v76 = v11;
  v19 = v13;
  if (v17)
  {
    while (1)
    {
      v20 = v19;
LABEL_13:
      v23 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v24 = v23 | (v20 << 6);
      v25 = v72;
      v26 = v73;
      (*(v72 + 16))(v70, *(v73 + 48) + *(v72 + 72) * v24, v78);
      v27 = *(*(v26 + 56) + 8 * v24);
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDV3key_So16SAHomeMemberInfoC5valuetMd, &_s16SiriMessageTypes6UserIDV3key_So16SAHomeMemberInfoC5valuetMR);
      v29 = *(v28 + 48);
      v8 = v69;
      (*(v25 + 32))();
      *&v8[v29] = v27;
      (*(*(v28 - 8) + 56))(v8, 0, 1, v28);
      v30 = v27;
      v22 = v20;
      v3 = v71;
LABEL_14:
      v31 = v75;
      outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v8, v75, &_s16SiriMessageTypes6UserIDV3key_So16SAHomeMemberInfoC5valuetSgMd, &_s16SiriMessageTypes6UserIDV3key_So16SAHomeMemberInfoC5valuetSgMR);
      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDV3key_So16SAHomeMemberInfoC5valuetMd, &_s16SiriMessageTypes6UserIDV3key_So16SAHomeMemberInfoC5valuetMR);
      if ((*(*(v32 - 8) + 48))(v31, 1, v32) == 1)
      {
        break;
      }

      v33 = *&v31[*(v32 + 48)];
      (*v77)(v3, v31, v78);
      v34 = UserID.sharedUserId.getter();
      v36 = v35;
      v37 = [v33 loggableMultiUserSharedUserId];
      v11 = v76;
      if (v37)
      {
        v42 = v37;
        v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v66 = v43;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v79 = v11;
        v45 = specialized __RawDictionaryStorage.find<A>(_:)(v34, v36);
        v46 = v11[2];
        v47 = (v44 & 1) == 0;
        v48 = v46 + v47;
        if (__OFADD__(v46, v47))
        {
          goto LABEL_38;
        }

        if (v11[3] < v48)
        {
          v49 = v44;
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v48, isUniquelyReferenced_nonNull_native);
          v50 = specialized __RawDictionaryStorage.find<A>(_:)(v34, v36);
          if ((v49 & 1) != (v51 & 1))
          {
            goto LABEL_40;
          }

          v45 = v50;
          if ((v49 & 1) == 0)
          {
            goto LABEL_33;
          }

LABEL_30:

          v11 = v79;
          v53 = (v79[7] + 16 * v45);
          v54 = v66;
          *v53 = v65;
          v53[1] = v54;

          goto LABEL_31;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          if (v44)
          {
            goto LABEL_30;
          }
        }

        else
        {
          v76 = v45;
          v55 = v44;
          specialized _NativeDictionary.copy()();
          v45 = v76;
          if (v55)
          {
            goto LABEL_30;
          }
        }

LABEL_33:
        v11 = v79;
        v79[(v45 >> 6) + 8] |= 1 << v45;
        v56 = (v11[6] + 16 * v45);
        *v56 = v34;
        v56[1] = v36;
        v57 = (v11[7] + 16 * v45);
        v58 = v66;
        *v57 = v65;
        v57[1] = v58;

        (*v74)(v3, v78);
        v59 = v11[2];
        v60 = __OFADD__(v59, 1);
        v61 = v59 + 1;
        if (v60)
        {
          goto LABEL_39;
        }

        v11[2] = v61;
        goto LABEL_35;
      }

      v38 = specialized __RawDictionaryStorage.find<A>(_:)(v34, v36);
      v40 = v39;

      if (v40)
      {
        v52 = swift_isUniquelyReferenced_nonNull_native();
        v79 = v11;
        if (!v52)
        {
          specialized _NativeDictionary.copy()();
          v11 = v79;
        }

        specialized _NativeDictionary._delete(at:)(v38, v11);

LABEL_31:
        (*v74)(v3, v78);
LABEL_35:
        v13 = v22;
        goto LABEL_4;
      }

      (*v74)(v3, v78);

      v19 = v22;
      if (!v17)
      {
        goto LABEL_6;
      }
    }

    return v76;
  }

  else
  {
LABEL_6:
    if (v18 <= v19 + 1)
    {
      v21 = v19 + 1;
    }

    else
    {
      v21 = v18;
    }

    v22 = v21 - 1;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v20 >= v18)
      {
        v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDV3key_So16SAHomeMemberInfoC5valuetMd, &_s16SiriMessageTypes6UserIDV3key_So16SAHomeMemberInfoC5valuetMR);
        (*(*(v41 - 8) + 56))(v8, 1, 1, v41);
        v17 = 0;
        goto LABEL_14;
      }

      v17 = *(v67 + 8 * v20);
      ++v19;
      if (v17)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  return result;
}

uint64_t static ConversationMUXUtils.getUserIdFor(personaId:muxContextMessage:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v52 = a1;
  v53 = a2;
  v51 = a3;
  v3 = type metadata accessor for UserID();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v64 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v56 = &v51 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDV3key_So16SAHomeMemberInfoC5valuetSgMd, &_s16SiriMessageTypes6UserIDV3key_So16SAHomeMemberInfoC5valuetSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v62 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v61 = &v51 - v11;
  result = MUXContextMessage.userIdToHomeMember.getter();
  v13 = 0;
  v15 = result + 64;
  v14 = *(result + 64);
  v57 = result;
  v58 = v4;
  v16 = 1 << *(result + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v14;
  v19 = (v16 + 63) >> 6;
  v54 = result + 64;
  v55 = v4 + 16;
  v63 = (v4 + 32);
  v59 = (v4 + 8);
  v60 = v3;
  while (v18)
  {
    v20 = v13;
LABEL_16:
    v24 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
    v25 = v24 | (v20 << 6);
    v27 = v57;
    v26 = v58;
    v28 = v56;
    (*(v58 + 16))(v56, *(v57 + 48) + *(v58 + 72) * v25, v3);
    v29 = *(*(v27 + 56) + 8 * v25);
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDV3key_So16SAHomeMemberInfoC5valuetMd, &_s16SiriMessageTypes6UserIDV3key_So16SAHomeMemberInfoC5valuetMR);
    v31 = *(v30 + 48);
    v32 = *(v26 + 32);
    v23 = v62;
    v32(v62, v28, v3);
    *&v23[v31] = v29;
    (*(*(v30 - 8) + 56))(v23, 0, 1, v30);
    v33 = v29;
    v15 = v54;
LABEL_17:
    v34 = v23;
    v35 = v61;
    outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v34, v61, &_s16SiriMessageTypes6UserIDV3key_So16SAHomeMemberInfoC5valuetSgMd, &_s16SiriMessageTypes6UserIDV3key_So16SAHomeMemberInfoC5valuetSgMR);
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDV3key_So16SAHomeMemberInfoC5valuetMd, &_s16SiriMessageTypes6UserIDV3key_So16SAHomeMemberInfoC5valuetMR);
    if ((*(*(v36 - 8) + 48))(v35, 1, v36) == 1)
    {

      v49 = 1;
      v50 = v51;
      v3 = v60;
      return (*(v58 + 56))(v50, v49, 1, v3);
    }

    v37 = *(v35 + *(v36 + 48));
    v38 = *v63;
    v39 = v35;
    v40 = v60;
    (*v63)(v64, v39);
    v41 = [v37 personaIdentifier];
    if (v41)
    {
      v42 = v41;
      v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v45 = v44;

      if (v43 == v52 && v45 == v53)
      {

        v3 = v40;
        goto LABEL_28;
      }

      v47 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v3 = v40;
      if (v47)
      {

LABEL_28:
        v50 = v51;
        (v38)(v51, v64, v3);
        v49 = 0;
        return (*(v58 + 56))(v50, v49, 1, v3);
      }
    }

    else
    {

      v3 = v40;
    }

    result = (*v59)(v64, v3);
  }

  if (v19 <= v13 + 1)
  {
    v21 = v13 + 1;
  }

  else
  {
    v21 = v19;
  }

  v22 = v21 - 1;
  v23 = v62;
  while (1)
  {
    v20 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v20 >= v19)
    {
      v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDV3key_So16SAHomeMemberInfoC5valuetMd, &_s16SiriMessageTypes6UserIDV3key_So16SAHomeMemberInfoC5valuetMR);
      (*(*(v48 - 8) + 56))(v23, 1, 1, v48);
      v18 = 0;
      v13 = v22;
      goto LABEL_17;
    }

    v18 = *(v15 + 8 * v20);
    ++v13;
    if (v18)
    {
      v13 = v20;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t static ConversationMUXUtils.getUserIdForUnknownUser(fromHomeMemberInfo:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  static ConversationMUXUtils.getUserIdForPrimaryUser(from:)(a1, MEMORY[0x1E69C7EF0]);
  if (v3)
  {
    UserID.init(sharedUserId:)();
    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = type metadata accessor for UserID();
  v6 = *(*(v5 - 8) + 56);

  return v6(a2, v4, 1, v5);
}

uint64_t static ConversationMUXUtils.getUserIdForUnknownUser(fromHomeMemberInfoDict:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo16SAHomeMemberInfoC_Tt1g5Tm(*(a1 + 16), 0);
    v6 = specialized Sequence._copySequenceContents(initializing:)(&v14, v5 + 4, v3, a1);
    v7 = v14;

    outlined consume of Set<RemoteConversationClient>.Iterator._Variant(v7);
    if (v6 == v3)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v5 = MEMORY[0x1E69E7CC0];
LABEL_5:
  static ConversationMUXUtils.getUserIdForPrimaryUser(from:)(v5, MEMORY[0x1E69C7EF0]);
  v9 = v8;

  if (v9)
  {
    UserID.init(sharedUserId:)();
    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = type metadata accessor for UserID();
  v12 = *(*(v11 - 8) + 56);

  return v12(a2, v10, 1, v11);
}

void *static ConversationMUXUtils.convertToUserIDToSpeechPackageDict(sharedUserIdToSpeechRecognitionDict:)(uint64_t a1)
{
  v60 = type metadata accessor for UserID();
  MEMORY[0x1EEE9AC00](v60);
  v61 = &v55 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v62 = a1;
  v63 = &v55 - v5;
  v6 = a1 + 64;
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 64);
  v10 = (v7 + 63) >> 6;
  v56 = v4;
  v58 = (v4 + 8);
  v59 = (v4 + 16);

  v11 = 0;
  v12 = MEMORY[0x1E69E7CC8];
  v57 = v10;
LABEL_4:
  while (2)
  {
    while (2)
    {
      v13 = v11;
      if (!v9)
      {
        goto LABEL_6;
      }

      while (1)
      {
        v11 = v13;
LABEL_9:
        v14 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
        v15 = *(*(v62 + 56) + 8 * (v14 | (v11 << 6)));

        v16 = v15;
        v17 = v63;
        UserID.init(sharedUserId:)();
        v18 = objc_allocWithZone(MEMORY[0x1E698D210]);
        v19 = v16;
        v20 = [v18 init];
        v21 = objc_allocWithZone(MEMORY[0x1E698D228]);
        v22 = v19;
        v23 = [v21 initWithRecognition:v22 rawRecognition:v22 audioAnalytics:v20 isFinal:1 utteranceStart:0.0];

        v24 = v60;
        v25 = *v59;
        v26 = v61;
        (*v59)(v61, v17, v60);
        if (v23)
        {
          break;
        }

        v27 = specialized __RawDictionaryStorage.find<A>(_:)(v26);
        if (v28)
        {
          v40 = v27;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v64 = v12;
          if (!isUniquelyReferenced_nonNull_native)
          {
            specialized _NativeDictionary.copy()();
            v12 = v64;
          }

          v42 = *(v56 + 8);
          v42(v12[6] + *(v56 + 72) * v40, v24);

          specialized _NativeDictionary._delete(at:)(v40, v12);
          v42(v61, v24);
          v42(v63, v24);
          v10 = v57;
          goto LABEL_4;
        }

        v29 = *v58;
        (*v58)(v26, v24);
        v29(v63, v24);
        v13 = v11;
        v10 = v57;
        if (!v9)
        {
LABEL_6:
          while (1)
          {
            v11 = v13 + 1;
            if (__OFADD__(v13, 1))
            {
              break;
            }

            if (v11 >= v10)
            {

              return v12;
            }

            v9 = *(v6 + 8 * v11);
            ++v13;
            if (v9)
            {
              goto LABEL_9;
            }
          }

          __break(1u);
          goto LABEL_28;
        }
      }

      v30 = v23;
      v31 = swift_isUniquelyReferenced_nonNull_native();
      v64 = v12;
      v32 = specialized __RawDictionaryStorage.find<A>(_:)(v26);
      v34 = v12[2];
      v35 = (v33 & 1) == 0;
      v36 = __OFADD__(v34, v35);
      v37 = v34 + v35;
      if (v36)
      {
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      v38 = v33;
      if (v12[3] >= v37)
      {
        if ((v31 & 1) == 0)
        {
          v53 = v32;
          specialized _NativeDictionary.copy()();
          v32 = v53;
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v37, v31);
        v32 = specialized __RawDictionaryStorage.find<A>(_:)(v61);
        if ((v38 & 1) != (v39 & 1))
        {
          goto LABEL_30;
        }
      }

      v43 = v60;
      v12 = v64;
      if (v38)
      {
        v44 = v64[7];
        v45 = *(v44 + 8 * v32);
        *(v44 + 8 * v32) = v30;

        v46 = *v58;
        (*v58)(v61, v43);
        v46(v63, v43);
        v10 = v57;
        continue;
      }

      break;
    }

    v64[(v32 >> 6) + 8] |= 1 << v32;
    v47 = v56;
    v48 = v12[6] + *(v56 + 72) * v32;
    v55 = v32;
    v49 = v61;
    v25(v48, v61, v43);
    *(v12[7] + 8 * v55) = v30;

    v50 = *(v47 + 8);
    v50(v49, v43);
    v50(v63, v43);
    v51 = v12[2];
    v36 = __OFADD__(v51, 1);
    v52 = v51 + 1;
    if (!v36)
    {
      v12[2] = v52;
      v10 = v57;
      continue;
    }

    break;
  }

LABEL_29:
  __break(1u);
LABEL_30:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *Dictionary<>.toEncodableDictionary()(uint64_t a1, uint64_t a2)
{
  v113[1] = *MEMORY[0x1E69E9840];
  v4 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v106 = &v87[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for UserID();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v110 = &v87[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v87[-v10];
  MEMORY[0x1EEE9AC00](v12);
  v102 = &v87[-v13];
  v112 = v14;
  v107 = a2;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v98 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v98);
  v99 = &v87[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v17);
  v97 = &v87[-v19];
  v20 = *(a1 + 64);
  v89 = a1 + 64;
  v21 = 1 << *(a1 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & v20;
  v88 = (v21 + 63) >> 6;
  v100 = TupleTypeMetadata2;
  v96 = TupleTypeMetadata2 - 8;
  v109 = (v7 + 16);
  v90 = v4 + 16;
  v104 = (v4 + 32);
  v105 = (v7 + 32);
  v95 = (v18 + 32);
  v91 = v4;
  v94 = (v4 + 8);
  v101 = v7;
  v93 = (v7 + 8);
  v92 = a1;

  v24 = 0;
  v103 = v11;
  v111 = MEMORY[0x1E69E7CC8];
  if (v23)
  {
LABEL_4:
    v25 = v112;
    v26 = v24;
    goto LABEL_13;
  }

  while (2)
  {
    if (v88 <= v24 + 1)
    {
      v27 = v24 + 1;
    }

    else
    {
      v27 = v88;
    }

    v28 = v27 - 1;
    v30 = v99;
    v29 = v100;
    do
    {
      v26 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
      }

      if (v26 >= v88)
      {
        v23 = 0;
        v41 = 1;
        goto LABEL_14;
      }

      v23 = *(v89 + 8 * v26);
      ++v24;
    }

    while (!v23);
    v25 = v112;
LABEL_13:
    v31 = __clz(__rbit64(v23));
    v23 &= v23 - 1;
    v32 = v31 | (v26 << 6);
    v33 = v92;
    v34 = v101;
    (*(v101 + 16))(v102, *(v92 + 48) + *(v101 + 72) * v32, v25);
    v35 = v91;
    v36 = *(v33 + 56) + *(v91 + 72) * v32;
    v38 = v106;
    v37 = v107;
    (*(v91 + 16))(v106, v36, v107);
    v29 = v100;
    v39 = *(v100 + 48);
    v40 = *(v34 + 32);
    v30 = v99;
    v40(v99, v102, v25);
    (*(v35 + 32))(&v30[v39], v38, v37);
    v41 = 0;
    v28 = v26;
    v11 = v103;
LABEL_14:
    v42 = *(v29 - 8);
    (*(v42 + 56))(v30, v41, 1, v29);
    v43 = v97;
    (*v95)(v97, v30, v98);
    if ((*(v42 + 48))(v43, 1, v29) == 1)
    {

      return v111;
    }

    v44 = *(v29 + 48);
    (*v105)(v11, v43, v112);
    v45 = objc_opt_self();
    v46 = &v43[v44];
    v47 = v106;
    v48 = v107;
    (*v104)(v106, v46, v107);
    v49 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*v94)(v47, v48);
    v113[0] = 0;
    v50 = [v45 archivedDataWithRootObject:v49 requiringSecureCoding:1 error:v113];
    swift_unknownObjectRelease();
    v51 = v113[0];
    if (!v50)
    {
      v85 = v51;

      _convertNSErrorToError(_:)();

      swift_willThrow();

      (*v93)(v11, v112);
      return v111;
    }

    v108 = v28;
    v52 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v53 = v11;
    v55 = v54;

    v56 = v110;
    v57 = *v109;
    (*v109)(v110, v53);
    outlined copy of Data._Representation(v52, v55);
    v58 = v111;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v113[0] = v58;
    v61 = specialized __RawDictionaryStorage.find<A>(_:)(v56);
    v62 = v58[2];
    v63 = (v60 & 1) == 0;
    v64 = v62 + v63;
    if (__OFADD__(v62, v63))
    {
      goto LABEL_34;
    }

    v65 = v60;
    if (v58[3] >= v64)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v68 = v113[0];
        if (v60)
        {
          goto LABEL_24;
        }
      }

      else
      {
        specialized _NativeDictionary.copy()();
        v68 = v113[0];
        if (v65)
        {
          goto LABEL_24;
        }
      }

LABEL_20:
      v68[(v61 >> 6) + 8] |= 1 << v61;
      v69 = v101;
      v70 = v68[6] + *(v101 + 72) * v61;
      v71 = v110;
      v72 = v112;
      v111 = v68;
      v57(v70, v110, v112);
      v73 = (v111[7] + 16 * v61);
      *v73 = v52;
      v73[1] = v55;
      outlined consume of Data._Representation(v52, v55);
      v74 = *(v69 + 8);
      v74(v71, v72);
      v11 = v103;
      v74(v103, v72);
      v75 = v111;
      v76 = v111[2];
      v77 = __OFADD__(v76, 1);
      v78 = v76 + 1;
      if (!v77)
      {
        v111[2] = v78;
        goto LABEL_25;
      }

      goto LABEL_35;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v64, isUniquelyReferenced_nonNull_native);
    v66 = specialized __RawDictionaryStorage.find<A>(_:)(v110);
    if ((v65 & 1) == (v67 & 1))
    {
      v61 = v66;
      v68 = v113[0];
      if ((v65 & 1) == 0)
      {
        goto LABEL_20;
      }

LABEL_24:
      v79 = (v68[7] + 16 * v61);
      v80 = *v79;
      v81 = v79[1];
      *v79 = v52;
      v79[1] = v55;
      v82 = v68;
      outlined consume of Data._Representation(v80, v81);
      outlined consume of Data._Representation(v52, v55);
      v83 = *v93;
      v84 = v112;
      (*v93)(v110, v112);
      v11 = v103;
      v83(v103, v84);
      v75 = v82;
LABEL_25:
      v24 = v108;
      v111 = v75;
      if (v23)
      {
        goto LABEL_4;
      }

      continue;
    }

    break;
  }

  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}