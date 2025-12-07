uint64_t closure #1 in static ConnectionTCPInfoMetrics.connectionTCPInfoMetrics(from:wasConnected:queue:deadline:_:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v9[3] = type metadata accessor for NWConnection();
  v9[4] = &protocol witness table for NWConnection;
  v9[0] = a2;

  static ConnectionTCPInfoMetrics.connectionCopyTCPInfo(from:wasConnected:xpcTCPInfo:)();
  v7 = v6;
  outlined destroy of ConnectionSnapshotReport?(v9, &_s11SiriNetwork0B18ConnectionProtocol_pSgMd, &_s11SiriNetwork0B18ConnectionProtocol_pSgMR);
  if (a4)
  {
    a4(v7);
  }
}

void closure #2 in static ConnectionTCPInfoMetrics.connectionTCPInfoMetrics(from:wasConnected:queue:deadline:_:)()
{
  OUTLINED_FUNCTION_46();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_0_0();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_0_1();
  v10 = v9 - v8;
  v11 = type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_0_0();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_0_1();
  v17 = v16 - v15;
  v18 = swift_allocObject();
  *(v18 + 16) = v1;
  *(v18 + 24) = v3;
  v20[4] = partial apply for closure #1 in closure #2 in static ConnectionTCPInfoMetrics.connectionTCPInfoMetrics(from:wasConnected:queue:deadline:_:);
  v20[5] = v18;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 1107296256;
  v20[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v20[3] = &block_descriptor_10;
  v19 = _Block_copy(v20);
  swift_unknownObjectRetain();

  static DispatchQoS.unspecified.getter();
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x223DE2460](0, v17, v10, v19);
  _Block_release(v19);
  (*(v6 + 8))(v10, v4);
  (*(v13 + 8))(v17, v11);

  OUTLINED_FUNCTION_47();
}

uint64_t closure #1 in closure #2 in static ConnectionTCPInfoMetrics.connectionTCPInfoMetrics(from:wasConnected:queue:deadline:_:)(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for siriNetwork != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.siriNetwork);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_223515000, v5, v6, "NetworkMetrics: TCP Info metrics extracted", v7, 2u);
    MEMORY[0x223DE38F0](v7, -1, -1);
  }

  swift_beginAccess();
  v8 = *(a1 + 16);
  if (v8)
  {
    v9 = *(a1 + 24);

    v8(a2);
    outlined consume of (@escaping @callee_guaranteed (@guaranteed SNLinkRecommendationInfo?) -> ())?(v8, v9);
  }

  swift_beginAccess();
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  return outlined consume of (@escaping @callee_guaranteed (@guaranteed SNLinkRecommendationInfo?) -> ())?(v10, v11);
}

uint64_t closure #3 in static ConnectionTCPInfoMetrics.connectionTCPInfoMetrics(from:wasConnected:queue:deadline:_:)(uint64_t a1)
{
  if (one-time initialization token for siriNetwork != -1)
  {
    OUTLINED_FUNCTION_0_6(&one-time initialization token for siriNetwork);
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.siriNetwork);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_223515000, v3, v4, "NetworkMetrics: TCP Info metrics timeout", v5, 2u);
    OUTLINED_FUNCTION_12();
  }

  swift_beginAccess();
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = *(a1 + 24);

    v6(0);
    outlined consume of (@escaping @callee_guaranteed (@guaranteed SNLinkRecommendationInfo?) -> ())?(v6, v7);
  }

  swift_beginAccess();
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  return outlined consume of (@escaping @callee_guaranteed (@guaranteed SNLinkRecommendationInfo?) -> ())?(v8, v9);
}

uint64_t closure #1 in static ConnectionTCPInfoMetrics.connectionCopyTCPInfo(from:wasConnected:xpcTCPInfo:)(uint64_t a1, xpc_object_t xdata, uint64_t *a3)
{
  result = xpc_data_get_bytes_ptr(xdata);
  if (result)
  {
    v6 = result;
    if (xpc_data_get_length(xdata) == 424 && (v7 = MEMORY[0x223DE3B00](xdata), v7 == XPC_TYPE_DATA.getter()))
    {
      String.init(cString:)();
      MEMORY[0x223DE13C0](v6, 424);
      swift_isUniquelyReferenced_nonNull_native();
      v8 = *a3;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)();
      *a3 = v8;

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t specialized Data.withUnsafeBytes<A>(_:)(uint64_t result, unint64_t a2)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      v5 = result >> 32;
      if (result >> 32 >= result)
      {
        result = result;
        v4 = v5;
        goto LABEL_9;
      }

      __break(1u);
      break;
    case 2uLL:
      v3 = *(result + 24);
      result = *(result + 16);
      v4 = v3;
LABEL_9:
      result = specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(result, v4);
      break;
    case 3uLL:
      result = 0;
      v2 = 0;
      goto LABEL_5;
    default:
      v2 = a2 & 0xFFFFFFFFFFFFFFLL;
LABEL_5:
      result = specialized Data.InlineData.withUnsafeBytes<A>(_:)(result, v2);
      break;
  }

  return result;
}

{
  switch(a2 >> 62)
  {
    case 1uLL:
      v5 = result >> 32;
      if (result >> 32 >= result)
      {
        result = result;
        v4 = v5;
        goto LABEL_9;
      }

      __break(1u);
      break;
    case 2uLL:
      v3 = *(result + 24);
      result = *(result + 16);
      v4 = v3;
LABEL_9:
      result = specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(result, v4);
      break;
    case 3uLL:
      result = 0;
      v2 = 0;
      goto LABEL_5;
    default:
      v2 = a2 & 0xFFFFFFFFFFFFFFLL;
LABEL_5:
      result = specialized Data.InlineData.withUnsafeBytes<A>(_:)(result, v2);
      break;
  }

  return result;
}

id @objc SpeechPacket.internalAceId.getter(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v3 = a3();
  if (v4)
  {
    v5 = MEMORY[0x223DE2070](v3);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t SpeechPacket.internalAceId.getter(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v3 = *v2;

  return v3;
}

void @objc SpeechPacket.internalAceId.setter(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  if (a3)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = a1;
  a4(v6, v8);
}

uint64_t SpeechPacket.internalAceId.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  OUTLINED_FUNCTION_95(v6, v8);
  *v6 = a1;
  v6[1] = a2;
}

uint64_t key path setter for SpeechPacket.internalAceId : SpeechPacket(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

double SpeechPacket.packets.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_6_13(a1);

  return result;
}

uint64_t SpeechPacket.packets.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___SNSpeechPacketInternal_packets;
  OUTLINED_FUNCTION_95(v1 + OBJC_IVAR___SNSpeechPacketInternal_packets, v5);
  *(v1 + v3) = a1;
}

uint64_t SpeechPacket.packetNumber.getter(uint64_t a1)
{
  v2 = OBJC_IVAR___SNSpeechPacketInternal_packetNumber;
  OUTLINED_FUNCTION_6_13(a1);
  return *(v1 + v2);
}

uint64_t SpeechPacket.packetNumber.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___SNSpeechPacketInternal_packetNumber;
  result = OUTLINED_FUNCTION_95(v1 + OBJC_IVAR___SNSpeechPacketInternal_packetNumber, v5);
  *(v1 + v3) = a1;
  return result;
}

id SpeechPacket.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SpeechPacket.__allocating_init(aceId:refId:packets:packetNumber:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_2_15();
  v13 = objc_allocWithZone(v6);
  return SpeechPacket.init(aceId:refId:packets:packetNumber:)(v11, v10, v9, v8, v7, a6);
}

id SpeechPacket.init(aceId:refId:packets:packetNumber:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_2_15();
  v12 = &v6[OBJC_IVAR___SNSpeechPacketInternal_internalAceId];
  *v12 = 0;
  *(v12 + 1) = 0;
  v13 = &v6[OBJC_IVAR___SNSpeechPacketInternal_internalRefId];
  *v13 = 0;
  *(v13 + 1) = 0;
  v14 = OBJC_IVAR___SNSpeechPacketInternal_packets;
  *&v6[OBJC_IVAR___SNSpeechPacketInternal_packets] = MEMORY[0x277D84F90];
  v15 = OBJC_IVAR___SNSpeechPacketInternal_packetNumber;
  *&v6[OBJC_IVAR___SNSpeechPacketInternal_packetNumber] = 0;
  OUTLINED_FUNCTION_95(v12, v22);
  *v12 = v11;
  *(v12 + 1) = v10;
  OUTLINED_FUNCTION_95(v13, v21);
  *v13 = v9;
  *(v13 + 1) = v8;
  OUTLINED_FUNCTION_95(&v6[v14], v20);
  *&v6[v14] = v7;

  OUTLINED_FUNCTION_95(&v6[v15], v19);
  *&v6[v15] = a6;
  v18.receiver = v6;
  v18.super_class = type metadata accessor for SpeechPacket();
  return objc_msgSendSuper2(&v18, sel_init);
}

size_t SpeechPacket.serializedAceData()()
{
  result = static AceSerialization.aceDataForSpeechPacket(_:)(v0);
  if (!v1)
  {
    v4 = v3;
    if (v3 >> 60 == 15)
    {
      lazy protocol witness table accessor for type AceSerializationError and conformance AceSerializationError();
      swift_allocError();
      *v5 = xmmword_2235F1900;
      *(v5 + 16) = 3;
      return swift_willThrow();
    }

    else
    {
      v6 = result;
      v7 = specialized Data.withUnsafeBytes<A>(_:)(result, v3);
      outlined consume of Data?(v6, v4);
      return v7;
    }
  }

  return result;
}

Swift::String_optional __swiftcall SpeechPacket.sessionRequestId()()
{
  v0 = 0;
  v1 = 0;
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

id SpeechPacket.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SpeechPacket();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t type metadata accessor for NSData()
{
  result = lazy cache variable for type metadata for NSData;
  if (!lazy cache variable for type metadata for NSData)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSData);
  }

  return result;
}

uint64_t one-time initialization function for logger()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static AsyncSequentialExecutor.logger);
  v1 = __swift_project_value_buffer(v0, static AsyncSequentialExecutor.logger);
  if (one-time initialization token for utility != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, static Logger.utility);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t AsyncSequentialExecutor.__allocating_init(label:priority:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  AsyncSequentialExecutor.init(label:priority:)(a1, a2, a3);
  return v6;
}

void *AsyncSequentialExecutor.init(label:priority:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v28 = a3;
  v29 = a2;
  v26 = *v3;
  v27 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV15BufferingPolicyOy11SiriNetwork23AsyncSequentialExecutorC0F4Work33_929935727E72E3DCCC3D8351439F96F6LLV__GMd, &_sScS12ContinuationV15BufferingPolicyOy11SiriNetwork23AsyncSequentialExecutorC0F4Work33_929935727E72E3DCCC3D8351439F96F6LLV__GMR);
  OUTLINED_FUNCTION_0_0();
  v7 = v6;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v8);
  v10 = &v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy11SiriNetwork23AsyncSequentialExecutorC0D4Work33_929935727E72E3DCCC3D8351439F96F6LLV_GMd, &_sScS12ContinuationVy11SiriNetwork23AsyncSequentialExecutorC0D4Work33_929935727E72E3DCCC3D8351439F96F6LLV_GMR);
  OUTLINED_FUNCTION_0_0();
  v13 = v12;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v14);
  v16 = &v26 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy11SiriNetwork23AsyncSequentialExecutorC0C4Work33_929935727E72E3DCCC3D8351439F96F6LLVGMd, &_sScSy11SiriNetwork23AsyncSequentialExecutorC0C4Work33_929935727E72E3DCCC3D8351439F96F6LLVGMR);
  OUTLINED_FUNCTION_0_0();
  v19 = v18;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v20);
  v22 = &v26 - v21;
  swift_defaultActor_initialize();
  (*(v7 + 104))(v10, *MEMORY[0x277D85778], v5);
  static AsyncStream.makeStream(of:bufferingPolicy:)();
  (*(v7 + 8))(v10, v5);
  (*(v13 + 16))(v4 + OBJC_IVAR____TtC11SiriNetwork23AsyncSequentialExecutor_streamContinuation, v16, v11);
  v23 = v28;
  v24 = static AsyncSequentialExecutor.asynchronouslyConsume(stream:withPriority:label:)(v22, v28, v27, v29);

  outlined destroy of TaskPriority?(v23);
  (*(v13 + 8))(v16, v11);
  (*(v19 + 8))(v22, v17);
  *(v4 + OBJC_IVAR____TtC11SiriNetwork23AsyncSequentialExecutor_task) = v24;
  return v4;
}

uint64_t static AsyncSequentialExecutor.asynchronouslyConsume(stream:withPriority:label:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy11SiriNetwork23AsyncSequentialExecutorC0C4Work33_929935727E72E3DCCC3D8351439F96F6LLVGMd, &_sScSy11SiriNetwork23AsyncSequentialExecutorC0C4Work33_929935727E72E3DCCC3D8351439F96F6LLVGMR);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v20 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v20 - v15;
  outlined init with copy of TaskPriority?(a2, &v20 - v15);
  (*(v10 + 16))(v13, a1, v9);
  v17 = (*(v10 + 80) + 48) & ~*(v10 + 80);
  v18 = swift_allocObject();
  *(v18 + 2) = 0;
  *(v18 + 3) = 0;
  *(v18 + 4) = a3;
  *(v18 + 5) = a4;
  (*(v10 + 32))(&v18[v17], v13, v9);
  *&v18[(v11 + v17 + 7) & 0xFFFFFFFFFFFFFFF8] = v4;

  return _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v16, &async function pointer to partial apply for closure #1 in static AsyncSequentialExecutor.asynchronouslyConsume(stream:withPriority:label:), v18);
}

uint64_t outlined destroy of TaskPriority?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t closure #1 in static AsyncSequentialExecutor.asynchronouslyConsume(stream:withPriority:label:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[10] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy11SiriNetwork23AsyncSequentialExecutorC0D4Work33_929935727E72E3DCCC3D8351439F96F6LLV_GMd, &_sScS8IteratorVy11SiriNetwork23AsyncSequentialExecutorC0D4Work33_929935727E72E3DCCC3D8351439F96F6LLV_GMR);
  v6[13] = v7;
  v6[14] = *(v7 - 8);
  v6[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in static AsyncSequentialExecutor.asynchronouslyConsume(stream:withPriority:label:), 0, 0);
}

uint64_t closure #1 in static AsyncSequentialExecutor.asynchronouslyConsume(stream:withPriority:label:)()
{
  OUTLINED_FUNCTION_7_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy11SiriNetwork23AsyncSequentialExecutorC0C4Work33_929935727E72E3DCCC3D8351439F96F6LLVGMd, &_sScSy11SiriNetwork23AsyncSequentialExecutorC0C4Work33_929935727E72E3DCCC3D8351439F96F6LLVGMR);
  AsyncStream.makeAsyncIterator()();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_4_13(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_29(v1);

  return MEMORY[0x2822003E8](v3);
}

{
  OUTLINED_FUNCTION_7_0();
  v1 = *v0;
  OUTLINED_FUNCTION_5_1();
  *v2 = v1;

  return MEMORY[0x2822009F8](closure #1 in static AsyncSequentialExecutor.asynchronouslyConsume(stream:withPriority:label:), 0, 0);
}

{
  v22 = v0;
  v1 = v0[2];
  v3 = v0[4];
  v2 = v0[5];
  v0[17] = v0[3];
  v0[18] = v3;
  v0[19] = v2;
  if (v1)
  {
    if (one-time initialization token for logger != -1)
    {
      OUTLINED_FUNCTION_2_16(&one-time initialization token for logger);
    }

    v4 = type metadata accessor for Logger();
    v0[20] = __swift_project_value_buffer(v4, static AsyncSequentialExecutor.logger);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = OUTLINED_FUNCTION_55();
      v8 = OUTLINED_FUNCTION_54();
      v21 = v8;
      *v7 = 136315138;

      v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v3, v2, &v21);

      *(v7 + 4) = v9;
      _os_log_impl(&dword_223515000, v5, v6, "#AsyncSequentialExecutor Starting async task: %s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_12();
    }

    v20 = (v1 + *v1);
    v10 = swift_task_alloc();
    v0[21] = v10;
    *v10 = v0;
    v10[1] = closure #1 in static AsyncSequentialExecutor.asynchronouslyConsume(stream:withPriority:label:);

    return v20();
  }

  else
  {
    (*(v0[14] + 8))(v0[15], v0[13]);
    if (one-time initialization token for logger != -1)
    {
      OUTLINED_FUNCTION_2_16(&one-time initialization token for logger);
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static AsyncSequentialExecutor.logger);

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v16 = v0[10];
      v15 = v0[11];
      v17 = OUTLINED_FUNCTION_55();
      v18 = OUTLINED_FUNCTION_54();
      v21 = v18;
      *v17 = 136315138;
      *(v17 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v15, &v21);
      _os_log_impl(&dword_223515000, v13, v14, "#AsyncSequentialExecutor ending main task: %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_12();
    }

    v19 = v0[1];

    return v19();
  }
}

{
  OUTLINED_FUNCTION_7_0();
  v2 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v3 = v2;
  *(v4 + 176) = v0;

  if (v0)
  {
    v5 = closure #1 in static AsyncSequentialExecutor.asynchronouslyConsume(stream:withPriority:label:);
  }

  else
  {
    v5 = closure #1 in static AsyncSequentialExecutor.asynchronouslyConsume(stream:withPriority:label:);
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

{
  v15 = v0;

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();

  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 152);
  if (v3)
  {
    v5 = *(v0 + 144);
    v6 = OUTLINED_FUNCTION_55();
    v7 = OUTLINED_FUNCTION_54();
    v14 = v7;
    *v6 = 136315138;

    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v4, &v14);

    *(v6 + 4) = v8;
    _os_log_impl(&dword_223515000, v1, v2, "#AsyncSequentialExecutor Ending async task: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_12();
  }

  else
  {
  }

  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_4_13(v9);
  *v10 = v11;
  v12 = OUTLINED_FUNCTION_0_29(v10);

  return MEMORY[0x2822003E8](v12);
}

{
  v20 = v0;
  v1 = v0[22];

  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[22];
    v6 = v0[18];
    v7 = v0[19];
    v8 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v8 = 136315394;

    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, &v19);

    *(v8 + 4) = v9;
    *(v8 + 12) = 2080;
    swift_getErrorValue();
    v10 = Error.localizedDescription.getter();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v19);

    *(v8 + 14) = v12;
    _os_log_impl(&dword_223515000, v3, v4, "#AsyncSequentialExecutor async task %s threw an exception: %s", v8, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_12();
  }

  else
  {
    v13 = v0[22];
  }

  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_4_13(v14);
  *v15 = v16;
  v17 = OUTLINED_FUNCTION_0_29(v15);

  return MEMORY[0x2822003E8](v17);
}

uint64_t AsyncSequentialExecutor.submit(taskName:task:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOy11SiriNetwork23AsyncSequentialExecutorC0F4Work33_929935727E72E3DCCC3D8351439F96F6LLV__GMd, &_sScS12ContinuationV11YieldResultOy11SiriNetwork23AsyncSequentialExecutorC0F4Work33_929935727E72E3DCCC3D8351439F96F6LLV__GMR);
  OUTLINED_FUNCTION_0_0();
  v10 = v9;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v11);
  v13 = &v23 - v12;
  v14 = one-time initialization token for logger;

  if (v14 != -1)
  {
    OUTLINED_FUNCTION_2_16(&one-time initialization token for logger);
  }

  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, static AsyncSequentialExecutor.logger);

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = OUTLINED_FUNCTION_55();
    v23 = a3;
    v19 = v18;
    v20 = OUTLINED_FUNCTION_54();
    v24 = v8;
    v25[0] = v20;
    v21 = v20;
    *v19 = 136315138;
    *(v19 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, v25);
    _os_log_impl(&dword_223515000, v16, v17, "#AsyncSequentialExecutor Submitting async task: %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v21);
    v8 = v24;
    OUTLINED_FUNCTION_12();
    a3 = v23;
    OUTLINED_FUNCTION_12();
  }

  v25[0] = a3;
  v25[1] = a4;
  v25[2] = a1;
  v25[3] = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy11SiriNetwork23AsyncSequentialExecutorC0D4Work33_929935727E72E3DCCC3D8351439F96F6LLV_GMd, &_sScS12ContinuationVy11SiriNetwork23AsyncSequentialExecutorC0D4Work33_929935727E72E3DCCC3D8351439F96F6LLV_GMR);
  AsyncStream.Continuation.yield(_:)();

  return (*(v10 + 8))(v13, v8);
}

uint64_t AsyncSequentialExecutor.deinit()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy11SiriNetwork23AsyncSequentialExecutorC0D4Work33_929935727E72E3DCCC3D8351439F96F6LLV_GMd, &_sScS12ContinuationVy11SiriNetwork23AsyncSequentialExecutorC0D4Work33_929935727E72E3DCCC3D8351439F96F6LLV_GMR);
  OUTLINED_FUNCTION_0_0();
  v4 = v3;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v5);
  v7 = &v11 - v6;
  v8 = OBJC_IVAR____TtC11SiriNetwork23AsyncSequentialExecutor_streamContinuation;
  (*(v4 + 16))(&v11 - v6, v1 + OBJC_IVAR____TtC11SiriNetwork23AsyncSequentialExecutor_streamContinuation, v2);
  AsyncStream.Continuation.finish()();
  v9 = *(v4 + 8);
  v9(v7, v2);
  v9((v1 + v8), v2);

  swift_defaultActor_destroy();
  return v1;
}

uint64_t AsyncSequentialExecutor.__deallocating_deinit()
{
  AsyncSequentialExecutor.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for AsyncSequentialExecutor(uint64_t a1)
{
  result = type metadata singleton initialization cache for AsyncSequentialExecutor;
  if (!type metadata singleton initialization cache for AsyncSequentialExecutor)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for AsyncSequentialExecutor(uint64_t a1)
{
  type metadata accessor for AsyncStream<AsyncSequentialExecutor.AsyncWork>.Continuation();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for AsyncStream<AsyncSequentialExecutor.AsyncWork>.Continuation()
{
  if (!lazy cache variable for type metadata for AsyncStream<AsyncSequentialExecutor.AsyncWork>.Continuation)
  {
    v0 = type metadata accessor for AsyncStream.Continuation();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AsyncStream<AsyncSequentialExecutor.AsyncWork>.Continuation);
    }
  }
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for AsyncSequentialExecutor.AsyncWork(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t storeEnumTagSinglePayload for AsyncSequentialExecutor.AsyncWork(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t outlined init with copy of TaskPriority?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in static AsyncSequentialExecutor.asynchronouslyConsume(stream:withPriority:label:)(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy11SiriNetwork23AsyncSequentialExecutorC0C4Work33_929935727E72E3DCCC3D8351439F96F6LLVGMd, &_sScSy11SiriNetwork23AsyncSequentialExecutorC0C4Work33_929935727E72E3DCCC3D8351439F96F6LLVGMR) - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = partial apply for closure #1 in static AsyncSequentialExecutor.asynchronouslyConsume(stream:withPriority:label:);

  return closure #1 in static AsyncSequentialExecutor.asynchronouslyConsume(stream:withPriority:label:)(a1, v7, v8, v9, v10, v1 + v6);
}

uint64_t partial apply for closure #1 in static AsyncSequentialExecutor.asynchronouslyConsume(stream:withPriority:label:)()
{
  OUTLINED_FUNCTION_7_0();
  v1 = *v0;
  OUTLINED_FUNCTION_5_1();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

Swift::Int MessageCenterEventState.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x223DE2980](v1);
  return Hasher._finalize()();
}

uint64_t MessageCenterEvent.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MessageCenterEvent(0) + 24);
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for MessageCenterEvent(uint64_t a1)
{
  result = type metadata singleton initialization cache for MessageCenterEvent;
  if (!type metadata singleton initialization cache for MessageCenterEvent)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *MessageCenterEvent.error.getter()
{
  v1 = *(v0 + *(type metadata accessor for MessageCenterEvent(0) + 32));
  v2 = v1;
  return v1;
}

unint64_t lazy protocol witness table accessor for type MessageCenterEventState and conformance MessageCenterEventState()
{
  result = lazy protocol witness table cache variable for type MessageCenterEventState and conformance MessageCenterEventState;
  if (!lazy protocol witness table cache variable for type MessageCenterEventState and conformance MessageCenterEventState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MessageCenterEventState and conformance MessageCenterEventState);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MessageCenterEventState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
    if (a2 + 2 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 2) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for MessageCenterEventState(_BYTE *result, unsigned int a2, unsigned int a3)
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

void type metadata completion function for MessageCenterEvent(uint64_t a1)
{
  type metadata accessor for MessageCenterMessage();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Date();
    if (v2 <= 0x3F)
    {
      type metadata accessor for MessageCenterProtocol?(319, &lazy cache variable for type metadata for MessageCenterProtocol?, &_s11SiriNetwork21MessageCenterProtocol_pMd, &_s11SiriNetwork21MessageCenterProtocol_pMR);
      if (v3 <= 0x3F)
      {
        type metadata accessor for MessageCenterProtocol?(319, &lazy cache variable for type metadata for Error?, &_ss5Error_pMd, &_ss5Error_pMR);
        if (v4 <= 0x3F)
        {
          type metadata accessor for Int?();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void type metadata accessor for MessageCenterProtocol?(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = type metadata accessor for Optional();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void type metadata accessor for Int?()
{
  if (!lazy cache variable for type metadata for Int?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Int?);
    }
  }
}

uint64_t one-time initialization function for siriContext()
{
  String.utf8CString.getter();
  v0 = nw_context_create();

  nw_context_set_scheduling_mode();
  nw_context_set_isolate_protocol_stack();
  nw_context_set_privacy_level();
  result = nw_context_set_isolate_protocol_cache();
  static NWParameters.siriContext = v0;
  return result;
}

uint64_t specialized Data.withUnsafeBytes<A>(_:)(uint64_t result, unint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t))
{
  v8 = result;
  switch(a2 >> 62)
  {
    case 1uLL:
      v15 = result >> 32;
      if (result >> 32 >= result)
      {
        v16 = result;

        v13 = a2 & 0x3FFFFFFFFFFFFFFFLL;
        v11 = v16;
        v12 = v15;
        goto LABEL_8;
      }

      __break(1u);
      return result;
    case 2uLL:

      v11 = OUTLINED_FUNCTION_53();
LABEL_8:
      v14 = specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(v11, v12, v13, a3, a4);
      goto LABEL_9;
    case 3uLL:

      v10 = 0;
      v9 = 0;
      goto LABEL_5;
    default:

      v9 = a2 & 0xFFFFFFFFFFFFFFLL;
      v10 = v8;
LABEL_5:
      v14 = specialized Data.InlineData.withUnsafeBytes<A>(_:)(v10, v9, a3, a4);
LABEL_9:
      v17 = v14;

      if (!v4)
      {
        return v17 & 1;
      }

      return result;
  }
}

uint64_t (*CommunicationProtocolAce.safetyNetBuffer.modify())(uint64_t a1)
{
  OUTLINED_FUNCTION_27_1();
  swift_beginAccess();
  return static ConnectionConfigurationError.errorDomain.modify;
}

uint64_t closure #1 in CommunicationProtocolAce.closeConnection(prepareForReconnect:)(uint64_t a1)
{
  v4 = 0;
  memset(v3, 0, sizeof(v3));
  swift_beginAccess();
  outlined assign with take of DataCompressing?(v3, a1 + 152, &_s11SiriNetwork15DataCompressing_pSgMd, &_s11SiriNetwork15DataCompressing_pSgMR);
  return swift_endAccess();
}

void CommunicationProtocolAce.barrier(with:)(uint64_t a1, uint64_t a2)
{
  CommunicationProtocolAce.sendAcePing(withId:)(*(v2 + 216));
  v5 = *(v2 + 216);
  if (a1)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = a1;
    *(v6 + 24) = a2;
  }

  OUTLINED_FUNCTION_27_1();
  swift_beginAccess();
  if (a1)
  {
    outlined copy of (@escaping @callee_guaranteed @Sendable () -> (@out UMUserPersonProtocol?))?(a1, a2);
    swift_isUniquelyReferenced_nonNull_native();
    v13 = *(v2 + 208);
    v7 = OUTLINED_FUNCTION_57();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v7, v8, v5);
    *(v2 + 208) = v13;
  }

  else
  {
    outlined copy of (@escaping @callee_guaranteed @Sendable () -> (@out UMUserPersonProtocol?))?(0, a2);
    v9 = specialized Dictionary._Variant.removeValue(forKey:)(v5);
    outlined consume of (@escaping @callee_guaranteed (@guaranteed SNLinkRecommendationInfo?) -> ())?(v9, v10);
  }

  swift_endAccess();
  v11 = *(v2 + 216);
  if (v11 == -1)
  {
    v12 = -100000;
  }

  else
  {
    v12 = v11 + 1;
  }

  *(v2 + 216) = v12;
  OUTLINED_FUNCTION_77_0();
}

uint64_t CommunicationProtocolAce.compressData(_:logDebug:)(uint64_t a1, unint64_t a2, char a3)
{
  v8 = *(v3 + 336);
  os_unfair_lock_lock(v8 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)();
  os_unfair_lock_unlock(v8 + 4);
  if (!v4)
  {
    if (v56 >> 60 == 15)
    {
      if (one-time initialization token for siriNetwork != -1)
      {
        OUTLINED_FUNCTION_0_8();
        swift_once();
      }

      v9 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_58(v9, static Logger.siriNetwork);
      v10 = Logger.logObject.getter();
      static os_log_type_t.error.getter();
      v11 = OUTLINED_FUNCTION_10_4();
      if (os_log_type_enabled(v11, v12))
      {
        OUTLINED_FUNCTION_17_5();
        v13 = swift_slowAlloc();
        OUTLINED_FUNCTION_51_1(v13);
        OUTLINED_FUNCTION_9_8();
        _os_log_impl(v14, v15, v16, v17, v18, v19);
        v20 = OUTLINED_FUNCTION_2_0();
        MEMORY[0x223DE38F0](v20);
      }

      lazy protocol witness table accessor for type BackgroundConnectionError and conformance BackgroundConnectionError();
      OUTLINED_FUNCTION_10_0();
      swift_allocError();
      OUTLINED_FUNCTION_8_10(v21, 3);
      swift_willThrow();
      v22 = OUTLINED_FUNCTION_60_1();
      outlined consume of Data?(v22, v23);
    }

    else if (a3)
    {
      if (one-time initialization token for siriNetwork != -1)
      {
        OUTLINED_FUNCTION_0_8();
        swift_once();
      }

      v25 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_58(v25, static Logger.siriNetwork);
      v26 = OUTLINED_FUNCTION_57();
      outlined copy of Data._Representation(v26, v27);
      v28 = OUTLINED_FUNCTION_60_1();
      outlined copy of Data?(v28, v29);
      v30 = Logger.logObject.getter();
      static os_log_type_t.default.getter();
      v31 = OUTLINED_FUNCTION_16_0();
      if (os_log_type_enabled(v31, v32))
      {
        OUTLINED_FUNCTION_30();
        result = swift_slowAlloc();
        *result = 134218240;
        v33 = result;
        v34 = 0;
        switch(a2 >> 62)
        {
          case 1uLL:
            LODWORD(v34) = HIDWORD(a1) - a1;
            if (!__OFSUB__(HIDWORD(a1), a1))
            {
              v34 = v34;
              goto LABEL_19;
            }

            __break(1u);
            goto LABEL_27;
          case 2uLL:
            v40 = *(a1 + 16);
            v39 = *(a1 + 24);
            v41 = __OFSUB__(v39, v40);
            v34 = v39 - v40;
            if (!v41)
            {
              goto LABEL_19;
            }

LABEL_27:
            __break(1u);
LABEL_28:
            __break(1u);
LABEL_29:
            __break(1u);
            return result;
          case 3uLL:
            goto LABEL_19;
          default:
            v34 = BYTE6(a2);
LABEL_19:
            *(result + 4) = v34;
            v42 = OUTLINED_FUNCTION_57();
            result = outlined consume of Data._Representation(v42, v43);
            *(v33 + 12) = 2048;
            v44 = 0;
            switch(v56 >> 62)
            {
              case 1uLL:
                LODWORD(v44) = HIDWORD(v55) - v55;
                if (__OFSUB__(HIDWORD(v55), v55))
                {
                  goto LABEL_28;
                }

                v44 = v44;
                break;
              case 2uLL:
                v46 = *(v55 + 16);
                v45 = *(v55 + 24);
                v41 = __OFSUB__(v45, v46);
                v44 = v45 - v46;
                if (v41)
                {
                  goto LABEL_29;
                }

                break;
              case 3uLL:
                break;
              default:
                v44 = BYTE6(v56);
                break;
            }

            *(v33 + 14) = v44;
            v47 = OUTLINED_FUNCTION_60_1();
            outlined consume of Data?(v47, v48);
            OUTLINED_FUNCTION_34_2();
            _os_log_impl(v49, v50, v51, v52, v53, 0x16u);
            v54 = OUTLINED_FUNCTION_5_14();
            MEMORY[0x223DE38F0](v54);
            goto LABEL_25;
        }
      }

      v35 = OUTLINED_FUNCTION_60_1();
      outlined consume of Data?(v35, v36);
      v37 = OUTLINED_FUNCTION_57();
      outlined consume of Data._Representation(v37, v38);
LABEL_25:
    }
  }

  return OUTLINED_FUNCTION_60_1();
}

uint64_t closure #1 in CommunicationProtocolAce.compressData(_:logDebug:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  swift_beginAccess();
  outlined init with copy of DataDecompressing?(a1 + 152, v17, &_s11SiriNetwork15DataCompressing_pSgMd, &_s11SiriNetwork15DataCompressing_pSgMR);
  if (v18)
  {
    outlined init with copy of RPCOspreyConnectionProtocol(v17, v14);
    outlined destroy of NetworkConnectionProtocol?(v17, &_s11SiriNetwork15DataCompressing_pSgMd, &_s11SiriNetwork15DataCompressing_pSgMR);
    v9 = v15;
    v10 = v16;
    __swift_project_boxed_opaque_existential_1(v14, v15);
    v11 = (*(v10 + 16))(a2, a3, v9, v10);
    if (!v4)
    {
      *a4 = v11;
      a4[1] = v12;
    }

    return __swift_destroy_boxed_opaque_existential_0(v14);
  }

  else
  {
    result = outlined destroy of NetworkConnectionProtocol?(v17, &_s11SiriNetwork15DataCompressing_pSgMd, &_s11SiriNetwork15DataCompressing_pSgMR);
    *a4 = xmmword_2235EF700;
  }

  return result;
}

uint64_t closure #1 in CommunicationProtocolAce.initializeBufferedGeneralOutputData(hasInitialPayload:)(uint64_t a1)
{
  v2 = type metadata accessor for ZlibDataCompressor();
  swift_allocObject();
  v3 = ZlibDataCompressor.init()();
  if (v3)
  {
    v4 = &protocol witness table for ZlibDataCompressor;
  }

  else
  {
    v2 = 0;
    v4 = 0;
    v6[1] = 0;
    v6[2] = 0;
  }

  v6[0] = v3;
  v6[3] = v2;
  v6[4] = v4;
  swift_beginAccess();
  outlined assign with take of DataCompressing?(v6, a1 + 152, &_s11SiriNetwork15DataCompressing_pSgMd, &_s11SiriNetwork15DataCompressing_pSgMR);
  return swift_endAccess();
}

uint64_t CommunicationProtocolAce.handleAcePing(_:)(uint64_t a1)
{
  if (one-time initialization token for siriNetwork != -1)
  {
    OUTLINED_FUNCTION_0_8();
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_58(v2, static Logger.siriNetwork);
  v3 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  v4 = OUTLINED_FUNCTION_16_0();
  if (os_log_type_enabled(v4, v5))
  {
    OUTLINED_FUNCTION_28_3();
    v6 = swift_slowAlloc();
    *v6 = 67109120;
    v6[1] = a1;
    OUTLINED_FUNCTION_6_0();
    _os_log_impl(v7, v8, v9, v10, v11, 8u);
    v12 = OUTLINED_FUNCTION_1_2();
    MEMORY[0x223DE38F0](v12);
  }

  return CommunicationProtocolAce.sendAcePong(withId:)(a1);
}

uint64_t CommunicationProtocolAce.handleAceEnd()()
{
  if (one-time initialization token for siriNetwork != -1)
  {
    OUTLINED_FUNCTION_0_8();
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_58(v1, static Logger.siriNetwork);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    OUTLINED_FUNCTION_17_5();
    v4 = swift_slowAlloc();
    OUTLINED_FUNCTION_40_2(v4);
    OUTLINED_FUNCTION_44_2();
    _os_log_impl(v5, v6, v7, v8, v9, v10);
    v11 = OUTLINED_FUNCTION_1_2();
    MEMORY[0x223DE38F0](v11);
  }

  OUTLINED_FUNCTION_36_2((v0 + 5), v12, v13, v14);
  if (v0[6] >> 60 != 15 && (v22 = OUTLINED_FUNCTION_2_13(), outlined copy of Data._Representation(v22, v23), v24 = OUTLINED_FUNCTION_2_13(), v25 = MEMORY[0x223DE13E0](v24), v26 = OUTLINED_FUNCTION_2_13(), outlined consume of Data?(v26, v27), v25 > 0) || (OUTLINED_FUNCTION_37_1((v0 + 9), v15, v16, v17, v18, v19, v20, v21, v48), v0[10] >> 60 != 15) && (v28 = OUTLINED_FUNCTION_2_13(), outlined copy of Data._Representation(v28, v29), v30 = OUTLINED_FUNCTION_2_13(), v31 = MEMORY[0x223DE13E0](v30), v32 = OUTLINED_FUNCTION_2_13(), outlined consume of Data?(v32, v33), v31 > 0) || v0[28])
  {
    v34 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    v35 = OUTLINED_FUNCTION_16_0();
    if (os_log_type_enabled(v35, v36))
    {
      OUTLINED_FUNCTION_17_5();
      v37 = swift_slowAlloc();
      OUTLINED_FUNCTION_11_7(v37);
      OUTLINED_FUNCTION_15_0();
      _os_log_impl(v38, v39, v40, v41, v42, 2u);
      v43 = OUTLINED_FUNCTION_6_15();
      MEMORY[0x223DE38F0](v43);
    }

    if (CommunicationProtocolAce.aceDelegate.getter())
    {
      lazy protocol witness table accessor for type BackgroundConnectionError and conformance BackgroundConnectionError();
      OUTLINED_FUNCTION_10_0();
      v44 = swift_allocError();
      OUTLINED_FUNCTION_8_10(v45, 1);
      BackgroundConnection.didEncounterError(_:)(v46);
      swift_unknownObjectRelease();
    }
  }

  result = CommunicationProtocolAce.aceDelegate.getter();
  if (result)
  {
    BackgroundConnection.cancel()();
    return swift_unknownObjectRelease();
  }

  return result;
}

void CommunicationProtocolAce.handleAceNop()()
{
  if (one-time initialization token for siriNetwork != -1)
  {
    OUTLINED_FUNCTION_0_8();
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_58(v0, static Logger.siriNetwork);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    OUTLINED_FUNCTION_17_5();
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_223515000, oslog, v1, "CommunicationProtocol - Ace object: Connection got nop", v2, 2u);
    OUTLINED_FUNCTION_2_2();
    MEMORY[0x223DE38F0]();
  }
}

uint64_t closure #1 in CommunicationProtocolAce.pingTimerFired()(char a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (a1)
    {
      v4 = *(result + 240);
      if (v4)
      {
        v5 = PingInfo.totalPingCount()();
        v6 = PingInfo.numberOfUnacknowledgedPings()();
      }

      else
      {
        v6 = 0;
        v5 = 0;
      }

      v7 = v4 == 0;
      v8 = v4 == 0;
      if (v7)
      {
        v9 = 0x3000000000000001;
      }

      else
      {
        v9 = 0x3000000000000000;
      }

      lazy protocol witness table accessor for type NetworkConnectionError and conformance NetworkConnectionError();
      v10 = swift_allocError();
      *v11 = v5;
      v11[1] = v8;
      v11[2] = v6;
      v11[3] = v9;
      v11[4] = 0;
      BackgroundConnection.didEncounterIntermediateError(_:)(v10);
    }
  }

  return result;
}

void CommunicationProtocolAce.checkForProgressOnReadingData()()
{
  OUTLINED_FUNCTION_40_1(v0 + 40, v18);
  OUTLINED_FUNCTION_48_0();
  if (!(!v2 & v1))
  {

    v3 = OUTLINED_FUNCTION_3_2();
    outlined copy of Data?(v3, v4);
    v5 = OUTLINED_FUNCTION_3_2();
    specialized Data.withUnsafeBytes<A>(_:)(v5, v6, v0, v7);
    v8 = OUTLINED_FUNCTION_3_2();
    outlined consume of Data?(v8, v9);
  }

  OUTLINED_FUNCTION_40_1(v0 + 72, v17);
  OUTLINED_FUNCTION_48_0();
  if (!(!v2 & v1))
  {

    v10 = OUTLINED_FUNCTION_3_2();
    outlined copy of Data?(v10, v11);
    v12 = OUTLINED_FUNCTION_3_2();
    specialized Data.withUnsafeBytes<A>(_:)(v12, v13, v0, v14);
    v15 = OUTLINED_FUNCTION_3_2();
    outlined consume of Data?(v15, v16);
  }

  if (__OFADD__(*(v0 + 288), *(v0 + 312)))
  {
    __break(1u);
  }
}

void closure #1 in CommunicationProtocolAce.checkForProgressOnReadingData()(uint64_t a1@<X0>, void *a2@<X2>, _BYTE *a3@<X8>)
{
  if (!a1)
  {
    goto LABEL_22;
  }

  v35 = a3;
  if (one-time initialization token for siriNetwork != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.siriNetwork);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v36[0] = v9;
    *v8 = 136315138;
    v37 = a2[34];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSVSgMd, &_sSVSgMR);
    v10 = Optional.debugDescription.getter();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, v36);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_223515000, v6, v7, "CommunicationProtocol - Ace objects: lastInputDataPointer %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x223DE38F0](v9, -1, -1);
    MEMORY[0x223DE38F0](v8, -1, -1);
  }

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v36[0] = v16;
    *v15 = 136315138;
    v37 = a1;
    v17 = _Pointer.debugDescription.getter();
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, v36);

    *(v15 + 4) = v19;
    _os_log_impl(&dword_223515000, v13, v14, "CommunicationProtocol - Ace objects: baseAddress %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x223DE38F0](v16, -1, -1);
    MEMORY[0x223DE38F0](v15, -1, -1);
  }

  if (a2[34] != a1)
  {
    a2[35] = 0;
    a2[36] = 0;
    a2[34] = a1;
LABEL_21:
    a3 = v35;
LABEL_22:
    *a3 = 0;
    return;
  }

  swift_beginAccess();
  v20 = 0;
  v21 = a2[6];
  if (v21 >> 60 == 15 || (v22 = a2[5], outlined copy of Data._Representation(v22, a2[6]), v20 = MEMORY[0x223DE13E0](v22, v21), outlined consume of Data?(v22, v21), v20 < 1) || v20 != a2[35])
  {
    a2[36] = 0;
    v26 = Logger.logObject.getter();
    v34 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v26, v34))
    {
LABEL_19:

LABEL_20:
      a2[35] = v20;
      goto LABEL_21;
    }

    v28 = swift_slowAlloc();
    *v28 = 0;
    v29 = "CommunicationProtocol - Ace objects: Reset Input Unchanged Counter to 0";
    v30 = v34;
    v31 = v26;
    v32 = v28;
    v33 = 2;
LABEL_18:
    _os_log_impl(&dword_223515000, v31, v30, v29, v32, v33);
    MEMORY[0x223DE38F0](v28, -1, -1);
    goto LABEL_19;
  }

  v23 = a2[36];
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (!v24)
  {
    a2[36] = v25;

    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v26, v27))
    {

      goto LABEL_20;
    }

    v28 = swift_slowAlloc();
    *v28 = 134217984;
    *(v28 + 4) = a2[36];

    v29 = "CommunicationProtocol - Ace objects: Incremented Input Unchanged Counter to %ld";
    v30 = v27;
    v31 = v26;
    v32 = v28;
    v33 = 12;
    goto LABEL_18;
  }

  __break(1u);
}

void closure #2 in CommunicationProtocolAce.checkForProgressOnReadingData()(uint64_t a1@<X0>, void *a2@<X2>, _BYTE *a3@<X8>)
{
  if (a1)
  {
    if (a2[37] == a1)
    {
      swift_beginAccess();
      v5 = 0;
      v6 = a2[10];
      if (v6 >> 60 == 15 || (v7 = a2[9], outlined copy of Data._Representation(v7, a2[10]), v5 = MEMORY[0x223DE13E0](v7, v6), outlined consume of Data?(v7, v6), v5 < 1) || v5 != a2[38])
      {
        a2[39] = 0;
        if (one-time initialization token for siriNetwork != -1)
        {
          swift_once();
        }

        v20 = type metadata accessor for Logger();
        __swift_project_value_buffer(v20, static Logger.siriNetwork);
        v12 = Logger.logObject.getter();
        v21 = static os_log_type_t.default.getter();
        if (!os_log_type_enabled(v12, v21))
        {
          goto LABEL_16;
        }

        v14 = swift_slowAlloc();
        *v14 = 0;
        v15 = "CommunicationProtocol - Ace objects: Reset Output Unchanged Counter to 0";
        v16 = v21;
        v17 = v12;
        v18 = v14;
        v19 = 2;
LABEL_15:
        _os_log_impl(&dword_223515000, v17, v16, v15, v18, v19);
        MEMORY[0x223DE38F0](v14, -1, -1);
LABEL_16:

LABEL_17:
        a2[38] = v5;
        goto LABEL_18;
      }

      v8 = a2[39];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        __break(1u);
      }

      else
      {
        a2[39] = v10;
        if (one-time initialization token for siriNetwork == -1)
        {
LABEL_8:
          v11 = type metadata accessor for Logger();
          __swift_project_value_buffer(v11, static Logger.siriNetwork);

          v12 = Logger.logObject.getter();
          v13 = static os_log_type_t.default.getter();
          if (!os_log_type_enabled(v12, v13))
          {

            goto LABEL_17;
          }

          v14 = swift_slowAlloc();
          *v14 = 134217984;
          *(v14 + 4) = a2[39];

          v15 = "CommunicationProtocol - Ace objects: Incremented Output Unchanged Counter to %ld";
          v16 = v13;
          v17 = v12;
          v18 = v14;
          v19 = 12;
          goto LABEL_15;
        }
      }

      swift_once();
      goto LABEL_8;
    }

    a2[38] = 0;
    a2[39] = 0;
    a2[37] = a1;
  }

LABEL_18:
  *a3 = 0;
}

uint64_t CommunicationProtocolAce.sendAcePong(withId:)(uint64_t a1)
{
  if (one-time initialization token for siriNetwork != -1)
  {
    OUTLINED_FUNCTION_0_8();
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_58(v3, static Logger.siriNetwork);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    OUTLINED_FUNCTION_28_3();
    v6 = swift_slowAlloc();
    *v6 = 67109120;
    *(v6 + 4) = a1;
    _os_log_impl(&dword_223515000, v4, v5, "CommunicationProtocol - Ace pings: Sending ACE Pong %u", v6, 8u);
    v7 = OUTLINED_FUNCTION_4_0();
    MEMORY[0x223DE38F0](v7);
  }

  static AceDataHeader.createHeaderData(forType:lengthOrIdentifier:)(5, a1);
  OUTLINED_FUNCTION_31_2();
  if (!v9 & v8)
  {
    v10 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    v11 = OUTLINED_FUNCTION_10_4();
    if (os_log_type_enabled(v11, v12))
    {
      OUTLINED_FUNCTION_17_5();
      v13 = swift_slowAlloc();
      OUTLINED_FUNCTION_51_1(v13);
      OUTLINED_FUNCTION_9_8();
      _os_log_impl(v14, v15, v16, v17, v18, v19);
      v20 = OUTLINED_FUNCTION_2_0();
      MEMORY[0x223DE38F0](v20);
    }

    goto LABEL_10;
  }

  v22 = OUTLINED_FUNCTION_3_2();
  CommunicationProtocolAce.compressData(_:logDebug:)(v22, v23, 0);
  if (v1)
  {
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_31_2();
  if (!v9 & v8)
  {
LABEL_10:
    lazy protocol witness table accessor for type BackgroundConnectionError and conformance BackgroundConnectionError();
    OUTLINED_FUNCTION_10_0();
    swift_allocError();
    OUTLINED_FUNCTION_8_10(v21, 3);
    swift_willThrow();
    goto LABEL_16;
  }

  if (CommunicationProtocolAce.aceDelegate.getter())
  {
    v24 = OUTLINED_FUNCTION_26();
    BackgroundConnection.connectionSendData(_:)(v24, v25);
    swift_unknownObjectRelease();
  }

  v26 = OUTLINED_FUNCTION_26();
  outlined consume of Data?(v26, v27);
LABEL_16:
  v28 = OUTLINED_FUNCTION_3_2();
  return outlined consume of Data?(v28, v29);
}

uint64_t CommunicationProtocolAce.handleBarrierReply(barrierValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = OUTLINED_FUNCTION_36_2(v4 + 208, a2, a3, a4);
  v7 = *(v4 + 208);
  if (*(v7 + 16))
  {
    result = specialized __RawDictionaryStorage.find<A>(_:)(a1);
    if (v8)
    {
      v9 = *(*(v7 + 56) + 16 * result);
      v12[0] = 1;

      v9(v12);

      OUTLINED_FUNCTION_27_1();
      swift_beginAccess();
      specialized Dictionary._Variant.removeValue(forKey:)(a1);
      swift_endAccess();
      v10 = OUTLINED_FUNCTION_14_3();
      return outlined consume of (@escaping @callee_guaranteed (@guaranteed SNLinkRecommendationInfo?) -> ())?(v10, v11);
    }
  }

  return result;
}

uint64_t protocol witness for CommunicationProtocol.safetyNetBuffer.getter in conformance CommunicationProtocolAce()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 320);
  outlined copy of Data?(v2, *(v1 + 328));
  return v2;
}

uint64_t protocol witness for CommunicationProtocol.safetyNetBuffer.setter in conformance CommunicationProtocolAce(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  swift_beginAccess();
  v6 = *(v5 + 320);
  v7 = *(v5 + 328);
  *(v5 + 320) = a1;
  *(v5 + 328) = a2;
  return outlined consume of Data?(v6, v7);
}

BOOL protocol witness for CommunicationProtocol.hasBufferedDataOrOutstandPings() in conformance CommunicationProtocolAce()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = v1[6];
  if ((v2 >> 60 == 15 || (v3 = v1[5], outlined copy of Data._Representation(v3, v1[6]), v4 = MEMORY[0x223DE13E0](v3, v2), outlined consume of Data?(v3, v2), v4 <= 0)) && ((swift_beginAccess(), v5 = v1[10], v5 >> 60 == 15) || (v6 = v1[9], outlined copy of Data._Representation(v6, v1[10]), v7 = MEMORY[0x223DE13E0](v6, v5), outlined consume of Data?(v6, v5), v7 <= 0)))
  {
    return v1[28] != 0;
  }

  else
  {
    return 1;
  }
}

uint64_t thunk for @escaping @callee_guaranteed () -> (@unowned UInt32)@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t specialized Data.InlineData.withUnsafeBytes<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(unsigned __int8 *__return_ptr, uint64_t *, char *))
{
  v10 = *MEMORY[0x277D85DE8];
  v6 = a1;
  v8 = WORD2(a2);
  v7 = a2;
  a4(&v9, &v6, &v6 + BYTE6(a2));

  if (!v4)
  {
    return v9;
  }

  return result;
}

uint64_t specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t))
{
  result = __DataStorage._bytes.getter();
  v11 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_15:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  v12 = __OFSUB__(a2, a1);
  v13 = a2 - a1;
  if (v12)
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = MEMORY[0x223DE1260]();
  if (v14 >= v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = v14;
  }

  v16 = v15 + v11;
  if (v11)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  a5(&v18, v11, v17, a4);

  if (!v5)
  {
    return v18;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type BackgroundConnectionError and conformance BackgroundConnectionError()
{
  result = lazy protocol witness table cache variable for type BackgroundConnectionError and conformance BackgroundConnectionError;
  if (!lazy protocol witness table cache variable for type BackgroundConnectionError and conformance BackgroundConnectionError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BackgroundConnectionError and conformance BackgroundConnectionError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BackgroundConnectionError and conformance BackgroundConnectionError;
  if (!lazy protocol witness table cache variable for type BackgroundConnectionError and conformance BackgroundConnectionError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BackgroundConnectionError and conformance BackgroundConnectionError);
  }

  return result;
}

uint64_t outlined copy of AceSerializationError(uint64_t result, unint64_t a2, unsigned __int8 a3)
{
  if (a3 - 1 <= 1)
  {
    return outlined copy of Data?(result, a2);
  }

  return result;
}

uint64_t outlined consume of AceSerializationError(uint64_t result, unint64_t a2, unsigned __int8 a3)
{
  if (a3 - 1 <= 1)
  {
    return outlined consume of Data?(result, a2);
  }

  return result;
}

uint64_t outlined consume of BackgroundConnectionError(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, char a5)
{
  if (!a5)
  {
  }

  return result;
}

uint64_t objectdestroy_84Tm(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 16));
  a2(*(v2 + 24));
  OUTLINED_FUNCTION_109();

  return MEMORY[0x2821FE8E8](v4, v5, v6);
}

uint64_t outlined init with copy of DataDecompressing?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_75_0(a1, a2, a3, a4);
  OUTLINED_FUNCTION_71();
  v5 = OUTLINED_FUNCTION_14_3();
  v6(v5);
  return v4;
}

uint64_t OUTLINED_FUNCTION_63_2(uint64_t result, float a2)
{
  *result = a2;
  *(result + 4) = v2;
  return result;
}

id OUTLINED_FUNCTION_79_0(id a1, uint64_t a2)
{
  *a2 = v2;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = v3;

  return a1;
}

uint64_t MessageCenterMessage.messageType.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t MessageCenterMessage.__allocating_init()()
{
  OUTLINED_FUNCTION_41();
  v0 = swift_allocObject();
  MessageCenterMessage.init()();
  return v0;
}

uint64_t *MessageCenterMessage.init()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork013MessageCenterC0CmMd, &_s11SiriNetwork013MessageCenterC0CmMR);
  *(v0 + 16) = String.init<A>(describing:)();
  *(v0 + 24) = v1;
  return v0;
}

uint64_t MessageCenterMessage.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x546567617373656DLL && a2 == 0xEB00000000657079)
  {

    v4 = 0;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

Swift::Int MessageCenterMessage.CodingKeys.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x223DE2980](0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MessageCenterMessage.CodingKeys(uint64_t a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x223DE2980](0);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MessageCenterMessage.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = MessageCenterMessage.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance MessageCenterMessage.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = OUTLINED_FUNCTION_22();
  *a1 = result & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MessageCenterMessage.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MessageCenterMessage.CodingKeys and conformance MessageCenterMessage.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MessageCenterMessage.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MessageCenterMessage.CodingKeys and conformance MessageCenterMessage.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MessageCenterMessage.__deallocating_deinit()
{

  v0 = OUTLINED_FUNCTION_41();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t MessageCenterMessage.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy11SiriNetwork013MessageCenterF0C10CodingKeys33_A2F59A18C718FF7409E73977D77D451FLLOGMd, &_ss22KeyedEncodingContainerVy11SiriNetwork013MessageCenterF0C10CodingKeys33_A2F59A18C718FF7409E73977D77D451FLLOGMR);
  OUTLINED_FUNCTION_1_16();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MessageCenterMessage.CodingKeys and conformance MessageCenterMessage.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v4 + 8))(v7, v1);
}

unint64_t lazy protocol witness table accessor for type MessageCenterMessage.CodingKeys and conformance MessageCenterMessage.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MessageCenterMessage.CodingKeys and conformance MessageCenterMessage.CodingKeys;
  if (!lazy protocol witness table cache variable for type MessageCenterMessage.CodingKeys and conformance MessageCenterMessage.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MessageCenterMessage.CodingKeys and conformance MessageCenterMessage.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MessageCenterMessage.CodingKeys and conformance MessageCenterMessage.CodingKeys;
  if (!lazy protocol witness table cache variable for type MessageCenterMessage.CodingKeys and conformance MessageCenterMessage.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MessageCenterMessage.CodingKeys and conformance MessageCenterMessage.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MessageCenterMessage.CodingKeys and conformance MessageCenterMessage.CodingKeys;
  if (!lazy protocol witness table cache variable for type MessageCenterMessage.CodingKeys and conformance MessageCenterMessage.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MessageCenterMessage.CodingKeys and conformance MessageCenterMessage.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MessageCenterMessage.CodingKeys and conformance MessageCenterMessage.CodingKeys;
  if (!lazy protocol witness table cache variable for type MessageCenterMessage.CodingKeys and conformance MessageCenterMessage.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MessageCenterMessage.CodingKeys and conformance MessageCenterMessage.CodingKeys);
  }

  return result;
}

uint64_t MessageCenterMessage.__allocating_init(from:)(void *a1)
{
  OUTLINED_FUNCTION_41();
  v2 = swift_allocObject();
  MessageCenterMessage.init(from:)(a1);
  return v2;
}

uint64_t MessageCenterMessage.init(from:)(void *a1)
{
  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy11SiriNetwork013MessageCenterF0C10CodingKeys33_A2F59A18C718FF7409E73977D77D451FLLOGMd, &_ss22KeyedDecodingContainerVy11SiriNetwork013MessageCenterF0C10CodingKeys33_A2F59A18C718FF7409E73977D77D451FLLOGMR);
  OUTLINED_FUNCTION_1_16();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v15 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MessageCenterMessage.CodingKeys and conformance MessageCenterMessage.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    type metadata accessor for MessageCenterMessage();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v12 = KeyedDecodingContainer.decode(_:forKey:)();
    v14 = v13;
    (*(v7 + 8))(v10, v3);
    *(v4 + 16) = v12;
    *(v4 + 24) = v14;
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v4;
}

uint64_t instantiation function for generic protocol witness table for MessageCenterMessage(uint64_t a1)
{
  *(a1 + 8) = lazy protocol witness table accessor for type MessageCenterMessage and conformance MessageCenterMessage(&lazy protocol witness table cache variable for type MessageCenterMessage and conformance MessageCenterMessage, &protocol conformance descriptor for MessageCenterMessage);
  result = lazy protocol witness table accessor for type MessageCenterMessage and conformance MessageCenterMessage(&lazy protocol witness table cache variable for type MessageCenterMessage and conformance MessageCenterMessage, &protocol conformance descriptor for MessageCenterMessage);
  *(a1 + 16) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type MessageCenterMessage and conformance MessageCenterMessage(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MessageCenterMessage();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t protocol witness for Decodable.init(from:) in conformance MessageCenterMessage@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 104))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MessageCenterMessage.CodingKeys(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_BYTE *storeEnumTagSinglePayload for MessageCenterMessage.CodingKeys(_BYTE *result, int a2, int a3)
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

double MessageCenterDeviceProtocol.user.getter@<D0>(_OWORD *a1@<X8>)
{
  return MessageCenterDeviceProtocol.user.getter(a1);
}

{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t MessageCenterDevice.idsIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t MessageCenterDevice.idsIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t MessageCenterDevice.model.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t MessageCenterDevice.model.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

double MessageCenterDevice.user.getter@<D0>(uint64_t *a1@<X8>)
{
  v2 = v1[4];
  v3 = v1[5];
  v4 = v1[6];
  v5 = v1[7];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return outlined copy of MessageCenterUser?(v2, v3, v4, v5);
}

double outlined copy of MessageCenterUser?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }

  return result;
}

__n128 MessageCenterDevice.user.setter(uint64_t a1)
{
  outlined consume of MessageCenterUser?(*(v1 + 32), *(v1 + 40));
  result = *a1;
  v4 = *(a1 + 16);
  *(v1 + 32) = *a1;
  *(v1 + 48) = v4;
  return result;
}

uint64_t outlined consume of MessageCenterUser?(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t MessageCenterDevice.description.getter()
{
  _StringGuts.grow(_:)(39);

  MEMORY[0x223DE2180](*v0, v0[1]);
  MEMORY[0x223DE2180](0x3D6C65646F6D202CLL, 0xE800000000000000);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  v1 = String.init<A>(describing:)();
  MEMORY[0x223DE2180](v1);

  MEMORY[0x223DE2180](62, 0xE100000000000000);
  return 0xD00000000000001ALL;
}

uint64_t MessageCenterDevice.init(actor:endpoint:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  *(a3 + 64) = 0u;
  v6 = a3 + 64;
  *(a3 + 112) = 0u;
  *(a3 + 128) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  outlined init with copy of MessageCenterEndpointProtocol?(a2, v33);
  v7 = v34;
  if (v34)
  {
    v8 = v35;
    __swift_project_boxed_opaque_existential_1(v33, v34);
    v9 = (*(v8 + 16))(v7, v8);
    v11 = v10;
    __swift_destroy_boxed_opaque_existential_0(v33);
    if (v11)
    {
      outlined assign with copy of MessageCenterActorProtocol?(a1, v6, &_s11SiriNetwork26MessageCenterActorProtocol_pSgMd, &_s11SiriNetwork26MessageCenterActorProtocol_pSgMR);
      outlined assign with copy of MessageCenterActorProtocol?(v3, v6 + 40, &_s11SiriNetwork29MessageCenterEndpointProtocol_pSgMd, &_s11SiriNetwork29MessageCenterEndpointProtocol_pSgMR);
      *a3 = v9;
      *(a3 + 8) = v11;
      outlined init with copy of MessageCenterEndpointProtocol?(v3, v33);
      v12 = v34;
      if (v34)
      {
        v13 = v35;
        __swift_project_boxed_opaque_existential_1(v33, v34);
        v14 = (*(v13 + 24))(v12, v13);
        v16 = v15;
        outlined destroy of ConnectionSnapshotReport?(v3, &_s11SiriNetwork29MessageCenterEndpointProtocol_pSgMd, &_s11SiriNetwork29MessageCenterEndpointProtocol_pSgMR);
        outlined destroy of ConnectionSnapshotReport?(a1, &_s11SiriNetwork26MessageCenterActorProtocol_pSgMd, &_s11SiriNetwork26MessageCenterActorProtocol_pSgMR);
        result = __swift_destroy_boxed_opaque_existential_0(v33);
      }

      else
      {
        outlined destroy of ConnectionSnapshotReport?(v3, &_s11SiriNetwork29MessageCenterEndpointProtocol_pSgMd, &_s11SiriNetwork29MessageCenterEndpointProtocol_pSgMR);
        outlined destroy of ConnectionSnapshotReport?(a1, &_s11SiriNetwork26MessageCenterActorProtocol_pSgMd, &_s11SiriNetwork26MessageCenterActorProtocol_pSgMR);
        result = outlined destroy of ConnectionSnapshotReport?(v33, &_s11SiriNetwork29MessageCenterEndpointProtocol_pSgMd, &_s11SiriNetwork29MessageCenterEndpointProtocol_pSgMR);
        v14 = 0;
        v16 = 0;
      }

      *(a3 + 16) = v14;
      *(a3 + 24) = v16;
      return result;
    }
  }

  else
  {
    outlined destroy of ConnectionSnapshotReport?(v33, &_s11SiriNetwork29MessageCenterEndpointProtocol_pSgMd, &_s11SiriNetwork29MessageCenterEndpointProtocol_pSgMR);
  }

  if (one-time initialization token for messageCenter != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, static Logger.messageCenter);
  outlined init with copy of MessageCenterEndpointProtocol?(v3, v33);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v36 = v31;
    *v21 = 136315138;
    outlined init with copy of MessageCenterEndpointProtocol?(v33, v32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork29MessageCenterEndpointProtocol_pSgMd, &_s11SiriNetwork29MessageCenterEndpointProtocol_pSgMR);
    v22 = String.init<A>(describing:)();
    v23 = v3;
    v24 = a1;
    v26 = v25;
    outlined destroy of ConnectionSnapshotReport?(v33, &_s11SiriNetwork29MessageCenterEndpointProtocol_pSgMd, &_s11SiriNetwork29MessageCenterEndpointProtocol_pSgMR);
    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v26, &v36);
    a1 = v24;
    v3 = v23;

    *(v21 + 4) = v27;
    _os_log_impl(&dword_223515000, v19, v20, "Ignoring MessageCenterDevice initializer as endpoint does not have an ids identifier %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v31);
    MEMORY[0x223DE38F0](v31, -1, -1);
    MEMORY[0x223DE38F0](v21, -1, -1);
  }

  else
  {

    outlined destroy of ConnectionSnapshotReport?(v33, &_s11SiriNetwork29MessageCenterEndpointProtocol_pSgMd, &_s11SiriNetwork29MessageCenterEndpointProtocol_pSgMR);
  }

  lazy protocol witness table accessor for type MessageCenterError and conformance MessageCenterError();
  v28 = OUTLINED_FUNCTION_0_30();
  *v29 = 19;
  *(v29 + 8) = 8;
  OUTLINED_FUNCTION_0_30();
  *v30 = v28;
  *(v30 + 8) = 4;
  swift_willThrow();
  outlined destroy of ConnectionSnapshotReport?(v3, &_s11SiriNetwork29MessageCenterEndpointProtocol_pSgMd, &_s11SiriNetwork29MessageCenterEndpointProtocol_pSgMR);
  outlined destroy of ConnectionSnapshotReport?(a1, &_s11SiriNetwork26MessageCenterActorProtocol_pSgMd, &_s11SiriNetwork26MessageCenterActorProtocol_pSgMR);
  outlined consume of MessageCenterUser?(*(a3 + 32), *(a3 + 40));
  outlined destroy of ConnectionSnapshotReport?(v6, &_s11SiriNetwork26MessageCenterActorProtocol_pSgMd, &_s11SiriNetwork26MessageCenterActorProtocol_pSgMR);
  return outlined destroy of ConnectionSnapshotReport?(v6 + 40, &_s11SiriNetwork29MessageCenterEndpointProtocol_pSgMd, &_s11SiriNetwork29MessageCenterEndpointProtocol_pSgMR);
}

uint64_t static MessageCenterDevice.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

Swift::Int MessageCenterDevice.hashValue.getter()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MessageCenterDevice(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

unint64_t instantiation function for generic protocol witness table for MessageCenterDevice(uint64_t a1)
{
  *(a1 + 8) = lazy protocol witness table accessor for type MessageCenterDevice and conformance MessageCenterDevice();
  result = lazy protocol witness table accessor for type MessageCenterDevice and conformance MessageCenterDevice();
  *(a1 + 16) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type MessageCenterDevice and conformance MessageCenterDevice()
{
  result = lazy protocol witness table cache variable for type MessageCenterDevice and conformance MessageCenterDevice;
  if (!lazy protocol witness table cache variable for type MessageCenterDevice and conformance MessageCenterDevice)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MessageCenterDevice and conformance MessageCenterDevice);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MessageCenterDevice and conformance MessageCenterDevice;
  if (!lazy protocol witness table cache variable for type MessageCenterDevice and conformance MessageCenterDevice)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MessageCenterDevice and conformance MessageCenterDevice);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MessageCenterDevice and conformance MessageCenterDevice;
  if (!lazy protocol witness table cache variable for type MessageCenterDevice and conformance MessageCenterDevice)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MessageCenterDevice and conformance MessageCenterDevice);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_11SiriNetwork17MessageCenterUserVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t getEnumTagSinglePayload for MessageCenterDevice(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 144))
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

uint64_t storeEnumTagSinglePayload for MessageCenterDevice(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
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
      *(result + 144) = 1;
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

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t outlined init with copy of MessageCenterEndpointProtocol?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork29MessageCenterEndpointProtocol_pSgMd, &_s11SiriNetwork29MessageCenterEndpointProtocol_pSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type MessageCenterError and conformance MessageCenterError()
{
  result = lazy protocol witness table cache variable for type MessageCenterError and conformance MessageCenterError;
  if (!lazy protocol witness table cache variable for type MessageCenterError and conformance MessageCenterError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MessageCenterError and conformance MessageCenterError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MessageCenterError and conformance MessageCenterError;
  if (!lazy protocol witness table cache variable for type MessageCenterError and conformance MessageCenterError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MessageCenterError and conformance MessageCenterError);
  }

  return result;
}

uint64_t outlined assign with copy of MessageCenterActorProtocol?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 24))(a2, a1, v6);
  return a2;
}

uint64_t MessageCenterEndpointPayload.description.getter()
{
  v1 = *v0;
  _StringGuts.grow(_:)(28);

  OUTLINED_FUNCTION_60_2();
  v6 = v2;
  if (v1)
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if (v1)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  MEMORY[0x223DE2180](v3, v4);

  return v6;
}

uint64_t MessageCenterEndpointPayload.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x4349417369 && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MessageCenterEndpointPayload.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = MessageCenterEndpointPayload.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MessageCenterEndpointPayload.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MessageCenterEndpointPayload.CodingKeys and conformance MessageCenterEndpointPayload.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MessageCenterEndpointPayload.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MessageCenterEndpointPayload.CodingKeys and conformance MessageCenterEndpointPayload.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MessageCenterEndpointPayload.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy11SiriNetwork28MessageCenterEndpointPayloadV10CodingKeys33_8D5DBEF99912F277E07A3932C7939D03LLOGMd, &_ss22KeyedEncodingContainerVy11SiriNetwork28MessageCenterEndpointPayloadV10CodingKeys33_8D5DBEF99912F277E07A3932C7939D03LLOGMR);
  OUTLINED_FUNCTION_0_0();
  v4 = v3;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v5);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MessageCenterEndpointPayload.CodingKeys and conformance MessageCenterEndpointPayload.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v4 + 8))(v7, v2);
}

unint64_t lazy protocol witness table accessor for type MessageCenterEndpointPayload.CodingKeys and conformance MessageCenterEndpointPayload.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MessageCenterEndpointPayload.CodingKeys and conformance MessageCenterEndpointPayload.CodingKeys;
  if (!lazy protocol witness table cache variable for type MessageCenterEndpointPayload.CodingKeys and conformance MessageCenterEndpointPayload.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MessageCenterEndpointPayload.CodingKeys and conformance MessageCenterEndpointPayload.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MessageCenterEndpointPayload.CodingKeys and conformance MessageCenterEndpointPayload.CodingKeys;
  if (!lazy protocol witness table cache variable for type MessageCenterEndpointPayload.CodingKeys and conformance MessageCenterEndpointPayload.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MessageCenterEndpointPayload.CodingKeys and conformance MessageCenterEndpointPayload.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MessageCenterEndpointPayload.CodingKeys and conformance MessageCenterEndpointPayload.CodingKeys;
  if (!lazy protocol witness table cache variable for type MessageCenterEndpointPayload.CodingKeys and conformance MessageCenterEndpointPayload.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MessageCenterEndpointPayload.CodingKeys and conformance MessageCenterEndpointPayload.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MessageCenterEndpointPayload.CodingKeys and conformance MessageCenterEndpointPayload.CodingKeys;
  if (!lazy protocol witness table cache variable for type MessageCenterEndpointPayload.CodingKeys and conformance MessageCenterEndpointPayload.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MessageCenterEndpointPayload.CodingKeys and conformance MessageCenterEndpointPayload.CodingKeys);
  }

  return result;
}

uint64_t MessageCenterEndpointPayload.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy11SiriNetwork28MessageCenterEndpointPayloadV10CodingKeys33_8D5DBEF99912F277E07A3932C7939D03LLOGMd, &_ss22KeyedDecodingContainerVy11SiriNetwork28MessageCenterEndpointPayloadV10CodingKeys33_8D5DBEF99912F277E07A3932C7939D03LLOGMR);
  OUTLINED_FUNCTION_0_0();
  v7 = v6;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MessageCenterEndpointPayload.CodingKeys and conformance MessageCenterEndpointPayload.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v11 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v7 + 8))(v10, v5);
    *a2 = v11 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t MessageCenterEndpointBrowser.description.getter()
{
  _StringGuts.grow(_:)(43);

  MEMORY[0x223DE2180](*(v0 + 192), *(v0 + 200));
  return 0xD000000000000029;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> MessageCenterEndpointBrowser.start()()
{

  OUTLINED_FUNCTION_25_3();
  specialized MessageCenterEndpointBrowser.executeAsPersonaIfNeeded<A>(_:)(v0, v1, v2, v3);
}

void closure #1 in MessageCenterEndpointBrowser.start()(uint64_t a1)
{
  v2 = type metadata accessor for NWBrowser.Descriptor();
  MEMORY[0x28223BE20](v2 - 8);
  if (*(a1 + 208) == 1)
  {
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_223515000, v3, v4, "NetworkDeviceBrowser has already been started", v5, 2u);
      MEMORY[0x223DE38F0](v5, -1, -1);
    }
  }

  else
  {
    *(a1 + 208) = 1;
    v6 = *(a1 + 112);
    if (v6)
    {
      v7 = *(a1 + 120);

      v6(v24, v8);
      outlined consume of (@escaping @callee_guaranteed (@guaranteed SNLinkRecommendationInfo?) -> ())?(v6, v7);
    }

    else
    {

      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v24[0] = v12;
        *v11 = 136315138;
        v13 = MessageCenterEndpointBrowser.description.getter();
        v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, v24);

        *(v11 + 4) = v15;
        _os_log_impl(&dword_223515000, v9, v10, "%s Creating NWBrowser", v11, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v12);
        MEMORY[0x223DE38F0](v12, -1, -1);
        MEMORY[0x223DE38F0](v11, -1, -1);
      }

      static MessageCenterEndpointBrowser.defaultBrowseDescriptor.getter();
      static MessageCenterEndpointBrowser.defaultBrowseParameters.getter();
      v16 = type metadata accessor for NWBrowser();
      swift_allocObject();
      v17 = NWBrowser.init(for:using:)();
      v25 = v16;
      v26 = &protocol witness table for NWBrowser;
      v24[0] = v17;
    }

    swift_beginAccess();
    outlined assign with take of MessageCenterBrowserProtocol?(v24, a1 + 128);
    swift_endAccess();
    v19 = MessageCenterEndpointBrowser.browser.modify(v24);
    v20 = *(v18 + 24);
    if (v20)
    {
      v21 = *(v18 + 32);
      __swift_mutable_project_boxed_opaque_existential_1(v18, *(v18 + 24));
      v22 = *(v21 + 16);

      v22(partial apply for closure #1 in closure #1 in MessageCenterEndpointBrowser.start(), a1, v20, v21);
    }

    (v19)(v24, 0);
    swift_beginAccess();
    outlined init with copy of MessageCenterBrowserProtocol?(a1 + 128, v24, &_s11SiriNetwork28MessageCenterBrowserProtocol_pSgMd, &_s11SiriNetwork28MessageCenterBrowserProtocol_pSgMR);
    if (v25)
    {
      outlined init with copy of UMUserPersonProtocol(v24, v23);
      outlined destroy of NetworkConnectionProtocol?(v24, &_s11SiriNetwork28MessageCenterBrowserProtocol_pSgMd, &_s11SiriNetwork28MessageCenterBrowserProtocol_pSgMR);
      __swift_project_boxed_opaque_existential_1(v23, v23[3]);
      NWBrowser.start(queue:)();
      __swift_destroy_boxed_opaque_existential_0(v23);
    }

    else
    {
      outlined destroy of NetworkConnectionProtocol?(v24, &_s11SiriNetwork28MessageCenterBrowserProtocol_pSgMd, &_s11SiriNetwork28MessageCenterBrowserProtocol_pSgMR);
    }
  }
}

uint64_t static MessageCenterEndpointBrowser.defaultBrowseDescriptor.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Network9NWBrowserC10DescriptorOSgMd, &_s7Network9NWBrowserC10DescriptorOSgMR);
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v0);
  v2 = &v8 - v1;
  v3 = String.utf8CString.getter();
  nw_browse_descriptor_create_application_service((v3 + 32));

  nw_browse_descriptor_set_browse_scope();
  swift_unknownObjectRetain();
  NWBrowser.Descriptor.init(_:)();
  v4 = type metadata accessor for NWBrowser.Descriptor();
  result = __swift_getEnumTagSinglePayload(v2, 1, v4);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_13_4();
    v6 = OUTLINED_FUNCTION_14_3();
    return v7(v6);
  }

  return result;
}

uint64_t static MessageCenterEndpointBrowser.defaultBrowseParameters.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Network15NWApplicationIDVSgMd, &_s7Network15NWApplicationIDVSgMR);
  OUTLINED_FUNCTION_10();
  v1 = MEMORY[0x28223BE20](v0);
  v3 = &v13 - v2;
  v4 = MEMORY[0x223DE3050](v1);
  v5 = xpc_array_create(0, 0);
  v6 = xpc_string_create("com.apple.rapport.browse");
  xpc_array_append_value(v5, v6);
  v7 = xpc_array_create(0, 0);
  v8 = xpc_string_create("RapportBrowseAgent");
  xpc_array_append_value(v7, v8);
  swift_unknownObjectRetain();
  nw_parameters_set_required_netagent_classes();
  MEMORY[0x223DE3070](v4, 1);
  static NWApplicationID.self.getter();
  v9 = type metadata accessor for NWApplicationID();
  if (__swift_getEnumTagSinglePayload(v3, 1, v9) == 1)
  {
    outlined destroy of NetworkConnectionProtocol?(v3, &_s7Network15NWApplicationIDVSgMd, &_s7Network15NWApplicationIDVSgMR);
  }

  else
  {
    NWApplicationID.nw.getter();
    OUTLINED_FUNCTION_13_4();
    (*(v10 + 8))(v3, v9);
  }

  nw_parameters_set_application_id();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  type metadata accessor for NWParameters();
  v11 = NWParameters.__allocating_init(_:)();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v11;
}

void closure #1 in closure #1 in MessageCenterEndpointBrowser.start()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v43 = v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = v37 - v8;
  v10 = type metadata accessor for NWBrowser.Result.Change();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v42 = v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v49 = v37 - v14;
  swift_unownedRetainStrong();
  swift_unownedRetain();
  swift_unownedRetain();
  v47 = a3;

  v15 = a2 + 56;
  v16 = 1 << *(a2 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(a2 + 56);
  v19 = (v16 + 63) >> 6;
  v38 = v12 + 7;
  v39 = v11 + 16;
  v44 = v11;
  v37[0] = v11 + 8;
  v37[1] = v11 + 32;
  v48 = a2;

  v20 = 0;
  v40 = v19;
  v41 = a2 + 56;
  v45 = v10;
  v46 = v9;
  if (v18)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v21 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v21 >= v19)
    {
      swift_unownedRelease();
      swift_unownedRelease();

      return;
    }

    v18 = *(v15 + 8 * v21);
    ++v20;
    if (v18)
    {
      v20 = v21;
      do
      {
LABEL_8:
        v22 = v49;
        v23 = v44;
        v24 = *(v44 + 16);
        v24(v49, *(v48 + 48) + *(v44 + 72) * (__clz(__rbit64(v18)) | (v20 << 6)), v10);
        v25 = type metadata accessor for TaskPriority();
        __swift_storeEnumTagSinglePayload(v9, 1, 1, v25);
        v26 = v9;
        v27 = v42;
        v24(v42, v22, v10);
        v28 = (*(v23 + 80) + 32) & ~*(v23 + 80);
        v29 = (v38 + v28) & 0xFFFFFFFFFFFFFFF8;
        v30 = swift_allocObject();
        *(v30 + 16) = 0;
        *(v30 + 24) = 0;
        (*(v23 + 32))(v30 + v28, v27, v10);
        *(v30 + v29) = v47;
        v31 = v43;
        outlined init with copy of MessageCenterBrowserProtocol?(v26, v43, &_sScPSgMd, &_sScPSgMR);
        LODWORD(v28) = __swift_getEnumTagSinglePayload(v31, 1, v25);
        swift_unownedRetain();

        if (v28 == 1)
        {
          outlined destroy of NetworkConnectionProtocol?(v31, &_sScPSgMd, &_sScPSgMR);
        }

        else
        {
          TaskPriority.rawValue.getter();
          (*(*(v25 - 8) + 8))(v31, v25);
        }

        v32 = *(v30 + 16);
        swift_unknownObjectRetain();

        v9 = v46;
        v19 = v40;
        if (v32)
        {
          swift_getObjectType();
          v33 = dispatch thunk of Actor.unownedExecutor.getter();
          v35 = v34;
          swift_unknownObjectRelease();
        }

        else
        {
          v33 = 0;
          v35 = 0;
        }

        outlined destroy of NetworkConnectionProtocol?(v9, &_sScPSgMd, &_sScPSgMR);
        v36 = swift_allocObject();
        *(v36 + 16) = &async function pointer to partial apply for closure #1 in closure #1 in closure #1 in closure #1 in MessageCenterEndpointBrowser.start();
        *(v36 + 24) = v30;
        if (v35 | v33)
        {
          v50 = 0;
          v51 = 0;
          v52 = v33;
          v53 = v35;
        }

        v15 = v41;
        v18 &= v18 - 1;
        swift_task_create();

        v10 = v45;
        (*v37[0])(v49, v45);
      }

      while (v18);
    }
  }

  __break(1u);
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in MessageCenterEndpointBrowser.start()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = type metadata accessor for NWEndpoint();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  v5[7] = swift_task_alloc();
  v7 = type metadata accessor for NWBrowser.Result();
  v5[8] = v7;
  v5[9] = *(v7 - 8);
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();
  v8 = type metadata accessor for NWBrowser.Result.Change();
  v5[12] = v8;
  v5[13] = *(v8 - 8);
  v5[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in closure #1 in closure #1 in closure #1 in MessageCenterEndpointBrowser.start(), 0, 0);
}

void closure #1 in closure #1 in closure #1 in closure #1 in MessageCenterEndpointBrowser.start()()
{
  (*(*(v0 + 104) + 16))(*(v0 + 112), *(v0 + 16), *(v0 + 96));
  v1 = OUTLINED_FUNCTION_41_0();
  v3 = v2(v1);
  if (v3 == *MEMORY[0x277CD9130])
  {
    v4 = OUTLINED_FUNCTION_24_2();
    v5(v4);
    v6 = OUTLINED_FUNCTION_14_3();
    v7(v6);
    swift_unownedRetainStrong();
    NWBrowser.Result.endpoint.getter();
    OUTLINED_FUNCTION_4_15(&async function pointer to specialized MessageCenterEndpointBrowser.handleEndpointAdded(_:));
    v8 = swift_task_alloc();
    *(v0 + 120) = v8;
    *v8 = v0;
    v9 = closure #1 in closure #1 in closure #1 in closure #1 in MessageCenterEndpointBrowser.start();
  }

  else
  {
    if (v3 != *MEMORY[0x277CD9140])
    {
      v16 = *(v0 + 104);
      v17 = *(v0 + 112);
      v18 = *(v0 + 96);
      if (v3 == *MEMORY[0x277CD9138])
      {
        v19 = *(v0 + 80);
        v20 = *(v0 + 64);
        v21 = *(v0 + 72);
        (*(v16 + 96))(v17, v18);
        v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Network9NWBrowserC6ResultV3old_AE3newAE6ChangeO5FlagsV5flagstMd, &_s7Network9NWBrowserC6ResultV3old_AE3newAE6ChangeO5FlagsV5flagstMR);
        v23 = *(v22 + 48);
        *(v0 + 144) = *(v22 + 64);
        v24 = *(v21 + 32);
        v25 = OUTLINED_FUNCTION_14_3();
        v24(v25);
        (v24)(v19, v17 + v23, v20);
        swift_unownedRetainStrong();
        NWBrowser.Result.endpoint.getter();
        NWBrowser.Result.endpoint.getter();
        OUTLINED_FUNCTION_4_15(&async function pointer to specialized MessageCenterEndpointBrowser.handleEndpointChanged(_:newEndpoint:));
        v26 = swift_task_alloc();
        *(v0 + 136) = v26;
        *v26 = v0;
        v26[1] = closure #1 in closure #1 in closure #1 in closure #1 in MessageCenterEndpointBrowser.start();
        OUTLINED_FUNCTION_63_0();

        __asm { BR              X3 }
      }

      (*(v16 + 8))(*(v0 + 112), v18);
      OUTLINED_FUNCTION_50_2();

      OUTLINED_FUNCTION_6_3();
      OUTLINED_FUNCTION_63_0();

      __asm { BRAA            X1, X16 }
    }

    v10 = OUTLINED_FUNCTION_24_2();
    v11(v10);
    v12 = OUTLINED_FUNCTION_14_3();
    v13(v12);
    swift_unownedRetainStrong();
    NWBrowser.Result.endpoint.getter();
    OUTLINED_FUNCTION_4_15(&async function pointer to specialized MessageCenterEndpointBrowser.handleEndpointRemoved(_:));
    v8 = swift_task_alloc();
    *(v0 + 128) = v8;
    *v8 = v0;
    v9 = closure #1 in closure #1 in closure #1 in closure #1 in MessageCenterEndpointBrowser.start();
  }

  v8[1] = v9;
  OUTLINED_FUNCTION_63_0();

  __asm { BR              X2 }
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in MessageCenterEndpointBrowser.start()()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_11_0();
  v1 = *v0;
  OUTLINED_FUNCTION_5_1();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_41_0();
  v4(v3);
  v5 = OUTLINED_FUNCTION_36_3();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

{
  OUTLINED_FUNCTION_29();
  (*(v0[9] + 8))(v0[11], v0[8]);
  OUTLINED_FUNCTION_50_2();

  OUTLINED_FUNCTION_6_3();

  return v1();
}

{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_11_0();
  v1 = *v0;
  OUTLINED_FUNCTION_5_1();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_41_0();
  v4(v3);
  v5 = OUTLINED_FUNCTION_36_3();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

{
  OUTLINED_FUNCTION_40_3();
  OUTLINED_FUNCTION_11_0();
  v2 = v1[7];
  v3 = v1[6];
  v4 = v1[5];
  v5 = v1[4];
  v6 = *v0;
  OUTLINED_FUNCTION_5_1();
  *v7 = v6;

  v8 = *(v4 + 8);
  v8(v3, v5);
  v8(v2, v5);
  v9 = OUTLINED_FUNCTION_36_3();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

{
  OUTLINED_FUNCTION_40_3();
  v1 = *(v0 + 144);
  v2 = *(v0 + 112);
  v3 = *(*(v0 + 72) + 8);
  (v3)(*(v0 + 80), *(v0 + 64));
  v4 = OUTLINED_FUNCTION_41_0();
  v3(v4);
  type metadata accessor for NWBrowser.Result.Change.Flags();
  OUTLINED_FUNCTION_71();
  (*(v5 + 8))(v2 + v1);
  OUTLINED_FUNCTION_50_2();

  OUTLINED_FUNCTION_6_3();

  return v6();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> MessageCenterEndpointBrowser.stop()()
{
  if (*(v0 + OBJC_IVAR____TtC11SiriNetwork28MessageCenterEndpointBrowser_usePersona) == 1)
  {
    v1 = OBJC_IVAR____TtC11SiriNetwork28MessageCenterEndpointBrowser_executionStrategy;
    swift_retain_n();
    _s11SiriNetwork29AdoptPersonaExecutionStrategyV13executeAsUseryxxyKXEKlFyt_Tg504_s11a47Network28MessageCenterEndpointBrowserC24executehD32IfNeededyxxyKXEKlFxyKXEfU_yt_Tg5xs5Error_pRi_zRi0_zlyytIsgrzo_Tf1ncn_n0jaklmnO17C4stopyyKFyyXEfU_AA0lmnO0CTf1nnc_n((v0 + v1), v0, v2);
  }

  else
  {

    closure #1 in MessageCenterEndpointBrowser.stop()(v3);
  }
}

void closure #1 in MessageCenterEndpointBrowser.stop()(uint64_t a1)
{
  if (*(a1 + 208))
  {
    *(a1 + 208) = 0;
    swift_beginAccess();
    outlined init with copy of MessageCenterBrowserProtocol?(a1 + 128, v6, &_s11SiriNetwork28MessageCenterBrowserProtocol_pSgMd, &_s11SiriNetwork28MessageCenterBrowserProtocol_pSgMR);
    if (v7)
    {
      outlined init with copy of UMUserPersonProtocol(v6, v5);
      outlined destroy of NetworkConnectionProtocol?(v6, &_s11SiriNetwork28MessageCenterBrowserProtocol_pSgMd, &_s11SiriNetwork28MessageCenterBrowserProtocol_pSgMR);
      __swift_project_boxed_opaque_existential_1(v5, v5[3]);
      NWBrowser.cancel()();
      __swift_destroy_boxed_opaque_existential_0(v5);
    }

    else
    {
      outlined destroy of NetworkConnectionProtocol?(v6, &_s11SiriNetwork28MessageCenterBrowserProtocol_pSgMd, &_s11SiriNetwork28MessageCenterBrowserProtocol_pSgMR);
    }
  }

  else
  {
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_223515000, v2, v3, "NetworkDeviceBrowser has already been stopped", v4, 2u);
      MEMORY[0x223DE38F0](v4, -1, -1);
    }
  }
}

void *static MessageCenterEndpointBrowser.defaultConnectionParametersForPersona(persona:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AdoptPersonaExecutionStrategy(0);
  OUTLINED_FUNCTION_71();
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v8 = a1;
  *(v8 + 1) = a2;
  v9 = *(v6 + 20);
  v10 = one-time initialization token for messageCenterActor;

  if (v10 != -1)
  {
    OUTLINED_FUNCTION_14_4();
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Logger.messageCenterActor);
  OUTLINED_FUNCTION_13_4();
  (*(v12 + 16))(&v8[v9]);
  v13 = &v8[*(v4 + 24)];
  *v13 = 0;
  *(v13 + 1) = 0;
  v14 = specialized AdoptPersonaExecutionStrategy.executeAsUser<A>(_:)(v8);
  outlined destroy of AdoptPersonaExecutionStrategy(v8);
  return v14;
}

uint64_t _s11SiriNetwork29AdoptPersonaExecutionStrategyV13executeAsUseryxxyKXEKlFyt_Tg504_s11a47Network28MessageCenterEndpointBrowserC24executehD32IfNeededyxxyKXEKlFxyKXEfU_yt_Tg5xs5Error_pRi_zRi0_zlyytIsgrzo_Tf1ncn_n0jaklmnO18C5startyyKFyyXEfU_AA0lmnO0CAIXDXMTTf1nnc_n@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v103 = a4;
  v7 = type metadata accessor for AdoptPersonaExecutionStrategy(0);
  v8 = MEMORY[0x28223BE20](v7);
  v102 = (&v95 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = MEMORY[0x28223BE20](v8);
  v12 = (&v95 - v11);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = (&v95 - v14);
  v16 = (a1 + *(v13 + 24));
  v17 = *v16;
  v18 = v16[1];
  if (*v16)
  {
    v19 = *v16;
  }

  else
  {
    v19 = UMUserPersona.current();
  }

  if (*v16)
  {
    v20 = v16[1];
  }

  else
  {
    v20 = 0;
  }

  swift_retain_n();
  v21 = outlined copy of (@escaping @callee_guaranteed @Sendable () -> (@out UMUserPersonProtocol?))?(v17, v18);
  v105 = v20;
  (v19)(v107, v21);
  v22 = v108;
  if (v108)
  {
    v101 = a3;
    v23 = v109;
    __swift_project_boxed_opaque_existential_1(v107, v108);
    (*(v23 + 16))(&v110, v22, v23);
    __swift_destroy_boxed_opaque_existential_0(v107);
    if (*(&v111 + 1))
    {
      v100 = a2;
      outlined init with take of RPCOspreyConnectionProtocol(&v110, v113);
      v24 = a1;
      v25 = *a1;
      v99 = v24;
      v26 = v24[1];
      v28 = v114;
      v27 = v115;
      __swift_project_boxed_opaque_existential_1(v113, v114);
      v29 = *(v27 + 8);

      v30 = v29(v28, v27);
      if (v31)
      {
        if (v25 == v30 && v31 == v26)
        {

LABEL_22:
          outlined init with copy of AdoptPersonaExecutionStrategy(v99, v15);
          v51 = Logger.logObject.getter();
          v52 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v51, v52))
          {
            v53 = swift_slowAlloc();
            v54 = swift_slowAlloc();
            *&v110 = v54;
            *v53 = 136315138;
            v55 = *v15;
            v56 = v15[1];

            outlined destroy of AdoptPersonaExecutionStrategy(v15);
            v57 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v56, &v110);

            *(v53 + 4) = v57;
            _os_log_impl(&dword_223515000, v51, v52, "Already running as persona %s, nothing to do", v53, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v54);
            MEMORY[0x223DE38F0](v54, -1, -1);
            MEMORY[0x223DE38F0](v53, -1, -1);
          }

          else
          {

            outlined destroy of AdoptPersonaExecutionStrategy(v15);
          }

          specialized closure #1 in MessageCenterEndpointBrowser.executeAsPersonaIfNeeded<A>(_:)(v80);
LABEL_40:

          __swift_destroy_boxed_opaque_existential_0(v113);
        }

        v98 = v25;
        v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v33)
        {
          goto LABEL_22;
        }
      }

      else
      {
        v98 = v25;
      }

      v35 = *(v7 + 20);
      v36 = v99;
      outlined init with copy of AdoptPersonaExecutionStrategy(v99, v12);
      outlined init with copy of UMUserPersonProtocol(v113, &v110);
      v97 = v35;
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.default.getter();
      v39 = os_log_type_enabled(v37, v38);
      v96 = v26;
      if (v39)
      {
        v40 = swift_slowAlloc();
        v106 = swift_slowAlloc();
        v41 = v36;
        v42 = v106;
        *v40 = 136315394;
        v43 = *v12;
        v44 = v12[1];

        outlined destroy of AdoptPersonaExecutionStrategy(v12);
        v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v44, &v106);

        *(v40 + 4) = v45;
        *(v40 + 12) = 2080;
        outlined init with copy of UMUserPersonProtocol(&v110, v107);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork20UMUserPersonProtocol_pMd, &_s11SiriNetwork20UMUserPersonProtocol_pMR);
        v46 = String.init<A>(describing:)();
        v48 = v47;
        __swift_destroy_boxed_opaque_existential_0(&v110);
        v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v48, &v106);

        *(v40 + 14) = v49;
        _os_log_impl(&dword_223515000, v37, v38, "Request to execute as user %s, currently running as %s", v40, 0x16u);
        swift_arrayDestroy();
        v50 = v42;
        v36 = v41;
        MEMORY[0x223DE38F0](v50, -1, -1);
        MEMORY[0x223DE38F0](v40, -1, -1);
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_0(&v110);
        outlined destroy of AdoptPersonaExecutionStrategy(v12);
      }

      v58 = v114;
      v59 = v115;
      __swift_project_boxed_opaque_existential_1(v113, v114);
      v60 = v104;
      v61 = (*(v59 + 40))(v58, v59);
      if (!v60)
      {
        v62 = v61;
        v63 = v114;
        v64 = v115;
        __swift_project_boxed_opaque_existential_1(v113, v114);
        v65 = (*(v64 + 32))(v98, v96, v63, v64);
        if (v65)
        {
          v66 = v65;
          v104 = v62;
          v67 = v102;
          outlined init with copy of AdoptPersonaExecutionStrategy(v36, v102);
          v68 = v66;
          v69 = Logger.logObject.getter();
          v70 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v69, v70))
          {
            v71 = swift_slowAlloc();
            v72 = swift_slowAlloc();
            *&v110 = v72;
            *v71 = 136315394;
            v73 = v67;
            v74 = *v67;
            v75 = *(v73 + 8);

            outlined destroy of AdoptPersonaExecutionStrategy(v73);
            v76 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v74, v75, &v110);

            *(v71 + 4) = v76;
            *(v71 + 12) = 2080;
            swift_getErrorValue();
            v77 = Error.localizedDescription.getter();
            v79 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v77, v78, &v110);

            *(v71 + 14) = v79;
            _os_log_impl(&dword_223515000, v69, v70, "Failed adopting persona %s: %s", v71, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x223DE38F0](v72, -1, -1);
            MEMORY[0x223DE38F0](v71, -1, -1);
          }

          else
          {

            outlined destroy of AdoptPersonaExecutionStrategy(v67);
          }

          lazy protocol witness table accessor for type AdoptPersonaExecutionStrategy.AdoptPersonaExecutionStrategyError and conformance AdoptPersonaExecutionStrategy.AdoptPersonaExecutionStrategyError();
          swift_allocError();
          *v89 = 0;
          swift_willThrow();

          v90 = v104;
          $defer #1 <A>() in AdoptPersonaExecutionStrategy.executeAsUser<A>(_:)(v113, v104);
        }

        else
        {
          v81 = Logger.logObject.getter();
          v82 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v81, v82))
          {
            v104 = v62;
            v83 = swift_slowAlloc();
            v102 = swift_slowAlloc();
            *&v110 = v102;
            *v83 = 136315138;
            v84 = [objc_opt_self() currentPersona];
            if (v84)
            {
              v85 = v84;
              v86 = UMUserPersona.logDescription.getter();
              v88 = v87;
            }

            else
            {
              v88 = 0xE300000000000000;
              v86 = 7104878;
            }

            v91 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v86, v88, &v110);

            *(v83 + 4) = v91;
            _os_log_impl(&dword_223515000, v81, v82, "Executing as %s", v83, 0xCu);
            v92 = v102;
            __swift_destroy_boxed_opaque_existential_0(v102);
            MEMORY[0x223DE38F0](v92, -1, -1);
            MEMORY[0x223DE38F0](v83, -1, -1);

            v62 = v104;
          }

          else
          {
          }

          specialized closure #1 in MessageCenterEndpointBrowser.executeAsPersonaIfNeeded<A>(_:)(v93);
          $defer #1 <A>() in AdoptPersonaExecutionStrategy.executeAsUser<A>(_:)(v113, v62);
        }
      }

      goto LABEL_40;
    }
  }

  else
  {
    outlined destroy of NetworkConnectionProtocol?(v107, &_s11SiriNetwork20UMUserPersonProtocol_pSgMd, &_s11SiriNetwork20UMUserPersonProtocol_pSgMR);
    v110 = 0u;
    v111 = 0u;
    v112 = 0;
  }

  outlined destroy of NetworkConnectionProtocol?(&v110, &_s11SiriNetwork20UMUserPersonProtocol_pSgMd, &_s11SiriNetwork20UMUserPersonProtocol_pSgMR);
  lazy protocol witness table accessor for type AdoptPersonaExecutionStrategy.AdoptPersonaExecutionStrategyError and conformance AdoptPersonaExecutionStrategy.AdoptPersonaExecutionStrategyError();
  swift_allocError();
  *v34 = 1;
  swift_willThrow();
}

uint64_t _s11SiriNetwork29AdoptPersonaExecutionStrategyV13executeAsUseryxxyKXEKlFyt_Tg504_s11a47Network28MessageCenterEndpointBrowserC24executehD32IfNeededyxxyKXEKlFxyKXEfU_yt_Tg5xs5Error_pRi_zRi0_zlyytIsgrzo_Tf1ncn_n0jaklmnO17C4stopyyKFyyXEfU_AA0lmnO0CTf1nnc_n@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for AdoptPersonaExecutionStrategy(0);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = (v90 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = MEMORY[0x28223BE20](v7);
  v12 = (v90 - v11);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = (v90 - v14);
  v16 = *(v13 + 24);
  v96 = a1;
  v17 = (a1 + v16);
  v18 = *v17;
  v19 = v17[1];
  if (*v17)
  {
    v20 = *v17;
  }

  else
  {
    v20 = UMUserPersona.current();
  }

  if (*v17)
  {
    v21 = v17[1];
  }

  else
  {
    v21 = 0;
  }

  swift_retain_n();
  v22 = outlined copy of (@escaping @callee_guaranteed @Sendable () -> (@out UMUserPersonProtocol?))?(v18, v19);
  v97 = v21;
  (v20)(v99, v22);
  v23 = v100;
  if (v100)
  {
    v94 = a3;
    v24 = v101;
    __swift_project_boxed_opaque_existential_1(v99, v100);
    (*(v24 + 16))(&v102, v23, v24);
    __swift_destroy_boxed_opaque_existential_0(v99);
    if (*(&v103 + 1))
    {
      v92 = v9;
      v93 = a2;
      outlined init with take of RPCOspreyConnectionProtocol(&v102, v105);
      v25 = *v96;
      v26 = v96[1];
      v28 = v106;
      v27 = v107;
      __swift_project_boxed_opaque_existential_1(v105, v106);
      v29 = *(v27 + 8);

      v30 = v29(v28, v27);
      if (v31)
      {
        if (v25 == v30 && v31 == v26)
        {

LABEL_22:
          outlined init with copy of AdoptPersonaExecutionStrategy(v96, v15);
          v47 = Logger.logObject.getter();
          v48 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v47, v48))
          {
            v49 = swift_slowAlloc();
            v50 = swift_slowAlloc();
            *&v102 = v50;
            *v49 = 136315138;
            v51 = *v15;
            v52 = v15[1];

            outlined destroy of AdoptPersonaExecutionStrategy(v15);
            v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v52, &v102);

            *(v49 + 4) = v53;
            _os_log_impl(&dword_223515000, v47, v48, "Already running as persona %s, nothing to do", v49, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v50);
            MEMORY[0x223DE38F0](v50, -1, -1);
            MEMORY[0x223DE38F0](v49, -1, -1);
          }

          else
          {

            outlined destroy of AdoptPersonaExecutionStrategy(v15);
          }

          closure #1 in MessageCenterEndpointBrowser.stop()(v75);

LABEL_40:

          __swift_destroy_boxed_opaque_existential_0(v105);
        }

        v91 = v25;
        v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v33)
        {
          goto LABEL_22;
        }
      }

      else
      {
        v91 = v25;
      }

      v35 = *(v6 + 20);
      outlined init with copy of AdoptPersonaExecutionStrategy(v96, v12);
      outlined init with copy of UMUserPersonProtocol(v105, &v102);
      v90[1] = v35;
      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v98 = v39;
        *v38 = 136315394;
        v40 = *v12;
        v41 = v12[1];

        outlined destroy of AdoptPersonaExecutionStrategy(v12);
        v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v41, &v98);

        *(v38 + 4) = v42;
        *(v38 + 12) = 2080;
        outlined init with copy of UMUserPersonProtocol(&v102, v99);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork20UMUserPersonProtocol_pMd, &_s11SiriNetwork20UMUserPersonProtocol_pMR);
        v43 = String.init<A>(describing:)();
        v45 = v44;
        __swift_destroy_boxed_opaque_existential_0(&v102);
        v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v45, &v98);

        *(v38 + 14) = v46;
        _os_log_impl(&dword_223515000, v36, v37, "Request to execute as user %s, currently running as %s", v38, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223DE38F0](v39, -1, -1);
        MEMORY[0x223DE38F0](v38, -1, -1);
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_0(&v102);
        outlined destroy of AdoptPersonaExecutionStrategy(v12);
      }

      v54 = v92;
      v55 = v106;
      v56 = v107;
      __swift_project_boxed_opaque_existential_1(v105, v106);
      v57 = v95;
      v58 = (*(v56 + 40))(v55, v56);
      if (!v57)
      {
        v59 = v58;
        v60 = v106;
        v61 = v107;
        __swift_project_boxed_opaque_existential_1(v105, v106);
        v62 = (*(v61 + 32))(v91, v26, v60, v61);
        if (v62)
        {
          v63 = v62;
          v95 = v59;
          outlined init with copy of AdoptPersonaExecutionStrategy(v96, v54);
          v64 = v63;
          v65 = Logger.logObject.getter();
          v66 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v65, v66))
          {
            v67 = swift_slowAlloc();
            v68 = swift_slowAlloc();
            *&v102 = v68;
            *v67 = 136315394;
            v69 = *v54;
            v70 = v54[1];

            outlined destroy of AdoptPersonaExecutionStrategy(v54);
            v71 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v69, v70, &v102);

            *(v67 + 4) = v71;
            *(v67 + 12) = 2080;
            swift_getErrorValue();
            v72 = Error.localizedDescription.getter();
            v74 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v72, v73, &v102);

            *(v67 + 14) = v74;
            _os_log_impl(&dword_223515000, v65, v66, "Failed adopting persona %s: %s", v67, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x223DE38F0](v68, -1, -1);
            MEMORY[0x223DE38F0](v67, -1, -1);
          }

          else
          {

            outlined destroy of AdoptPersonaExecutionStrategy(v54);
          }

          lazy protocol witness table accessor for type AdoptPersonaExecutionStrategy.AdoptPersonaExecutionStrategyError and conformance AdoptPersonaExecutionStrategy.AdoptPersonaExecutionStrategyError();
          swift_allocError();
          *v84 = 0;
          swift_willThrow();

          v85 = v95;
          $defer #1 <A>() in AdoptPersonaExecutionStrategy.executeAsUser<A>(_:)(v105, v95);
        }

        else
        {
          v76 = Logger.logObject.getter();
          v77 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v76, v77))
          {
            v95 = v59;
            v78 = swift_slowAlloc();
            v93 = swift_slowAlloc();
            *&v102 = v93;
            *v78 = 136315138;
            v79 = [objc_opt_self() currentPersona];
            if (v79)
            {
              v80 = v79;
              v81 = UMUserPersona.logDescription.getter();
              v83 = v82;
            }

            else
            {
              v83 = 0xE300000000000000;
              v81 = 7104878;
            }

            v86 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v81, v83, &v102);

            *(v78 + 4) = v86;
            _os_log_impl(&dword_223515000, v76, v77, "Executing as %s", v78, 0xCu);
            v87 = v93;
            __swift_destroy_boxed_opaque_existential_0(v93);
            MEMORY[0x223DE38F0](v87, -1, -1);
            MEMORY[0x223DE38F0](v78, -1, -1);

            v59 = v95;
          }

          else
          {
          }

          closure #1 in MessageCenterEndpointBrowser.stop()(v88);

          $defer #1 <A>() in AdoptPersonaExecutionStrategy.executeAsUser<A>(_:)(v105, v59);
        }
      }

      goto LABEL_40;
    }
  }

  else
  {
    outlined destroy of NetworkConnectionProtocol?(v99, &_s11SiriNetwork20UMUserPersonProtocol_pSgMd, &_s11SiriNetwork20UMUserPersonProtocol_pSgMR);
    v102 = 0u;
    v103 = 0u;
    v104 = 0;
  }

  outlined destroy of NetworkConnectionProtocol?(&v102, &_s11SiriNetwork20UMUserPersonProtocol_pSgMd, &_s11SiriNetwork20UMUserPersonProtocol_pSgMR);
  lazy protocol witness table accessor for type AdoptPersonaExecutionStrategy.AdoptPersonaExecutionStrategyError and conformance AdoptPersonaExecutionStrategy.AdoptPersonaExecutionStrategyError();
  swift_allocError();
  *v34 = 1;
  swift_willThrow();
}

void *specialized AdoptPersonaExecutionStrategy.executeAsUser<A>(_:)(void *a1)
{
  v3 = type metadata accessor for AdoptPersonaExecutionStrategy(0);
  v4 = MEMORY[0x28223BE20](v3);
  v6 = (v86 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = MEMORY[0x28223BE20](v4);
  v9 = (v86 - v8);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = (v86 - v11);
  v13 = (a1 + *(v10 + 24));
  if (*v13)
  {
    v14 = *v13;
  }

  else
  {
    v14 = UMUserPersona.current();
  }

  if (*v13)
  {
    v15 = v13[1];
  }

  else
  {
    v15 = 0;
  }

  v16 = outlined copy of (@escaping @callee_guaranteed @Sendable () -> (@out UMUserPersonProtocol?))?(*v13, v13[1]);
  (v14)(v93, v16);
  v17 = v94;
  if (v94)
  {
    v88 = v6;
    v18 = v95;
    __swift_project_boxed_opaque_existential_1(v93, v94);
    (*(v18 + 16))(&v96, v17, v18);
    __swift_destroy_boxed_opaque_existential_0(v93);
    if (*(&v97 + 1))
    {
      v89 = v1;
      v90 = v15;
      outlined init with take of RPCOspreyConnectionProtocol(&v96, v99);
      v19 = *a1;
      v20 = a1[1];
      v91 = a1;
      v21 = v100;
      v22 = v101;
      __swift_project_boxed_opaque_existential_1(v99, v100);
      v23 = *(v22 + 8);

      v24 = v23(v21, v22);
      if (v25)
      {
        if (v19 == v24 && v25 == v20)
        {

          v28 = v91;
LABEL_22:
          outlined init with copy of AdoptPersonaExecutionStrategy(v28, v12);
          v45 = Logger.logObject.getter();
          v46 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v45, v46))
          {
            v47 = swift_slowAlloc();
            v48 = swift_slowAlloc();
            *&v96 = v48;
            *v47 = 136315138;
            v49 = *v12;
            v50 = v12[1];

            outlined destroy of AdoptPersonaExecutionStrategy(v12);
            v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v50, &v96);

            *(v47 + 4) = v51;
            _os_log_impl(&dword_223515000, v45, v46, "Already running as persona %s, nothing to do", v47, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v48);
            MEMORY[0x223DE38F0](v48, -1, -1);
            MEMORY[0x223DE38F0](v47, -1, -1);
          }

          else
          {

            v52 = outlined destroy of AdoptPersonaExecutionStrategy(v12);
          }

          v72 = MEMORY[0x223DE3050](v52);
          nw_parameters_set_include_peer_to_peer(v72, 1);
          type metadata accessor for NWParameters();
          v17 = NWParameters.__allocating_init(_:)();
LABEL_36:

          __swift_destroy_boxed_opaque_existential_0(v99);
          return v17;
        }

        v87 = v19;
        v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v28 = v91;
        if (v27)
        {
          goto LABEL_22;
        }
      }

      else
      {
        v87 = v19;

        v28 = v91;
      }

      v30 = *(v3 + 20);
      outlined init with copy of AdoptPersonaExecutionStrategy(v28, v9);
      outlined init with copy of UMUserPersonProtocol(v99, &v96);
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.default.getter();
      v33 = os_log_type_enabled(v31, v32);
      v34 = v89;
      if (v33)
      {
        v35 = swift_slowAlloc();
        v86[1] = v30;
        v36 = v35;
        v37 = swift_slowAlloc();
        v92 = v37;
        *v36 = 136315394;
        v39 = *v9;
        v38 = v9[1];

        outlined destroy of AdoptPersonaExecutionStrategy(v9);
        v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v38, &v92);

        *(v36 + 4) = v40;
        *(v36 + 12) = 2080;
        outlined init with copy of UMUserPersonProtocol(&v96, v93);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork20UMUserPersonProtocol_pMd, &_s11SiriNetwork20UMUserPersonProtocol_pMR);
        v41 = String.init<A>(describing:)();
        v43 = v42;
        __swift_destroy_boxed_opaque_existential_0(&v96);
        v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v43, &v92);

        *(v36 + 14) = v44;
        _os_log_impl(&dword_223515000, v31, v32, "Request to execute as user %s, currently running as %s", v36, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223DE38F0](v37, -1, -1);
        MEMORY[0x223DE38F0](v36, -1, -1);
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_0(&v96);
        outlined destroy of AdoptPersonaExecutionStrategy(v9);
      }

      v17 = v100;
      v53 = v101;
      __swift_project_boxed_opaque_existential_1(v99, v100);
      v54 = (*(v53 + 40))(v17, v53);
      if (!v34)
      {
        v55 = v54;
        v56 = v100;
        v57 = v101;
        __swift_project_boxed_opaque_existential_1(v99, v100);
        v58 = (*(v57 + 32))(v87, v20, v56, v57);
        if (v58)
        {
          v59 = v58;
          v90 = v55;
          v60 = v88;
          outlined init with copy of AdoptPersonaExecutionStrategy(v91, v88);
          v61 = v59;
          v62 = Logger.logObject.getter();
          v63 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v62, v63))
          {
            v64 = swift_slowAlloc();
            v65 = swift_slowAlloc();
            *&v96 = v65;
            *v64 = 136315394;
            v66 = *v60;
            v67 = v60[1];

            outlined destroy of AdoptPersonaExecutionStrategy(v60);
            v68 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v66, v67, &v96);

            *(v64 + 4) = v68;
            *(v64 + 12) = 2080;
            swift_getErrorValue();
            v69 = Error.localizedDescription.getter();
            v71 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v69, v70, &v96);

            *(v64 + 14) = v71;
            _os_log_impl(&dword_223515000, v62, v63, "Failed adopting persona %s: %s", v64, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x223DE38F0](v65, -1, -1);
            MEMORY[0x223DE38F0](v64, -1, -1);
          }

          else
          {

            outlined destroy of AdoptPersonaExecutionStrategy(v60);
          }

          lazy protocol witness table accessor for type AdoptPersonaExecutionStrategy.AdoptPersonaExecutionStrategyError and conformance AdoptPersonaExecutionStrategy.AdoptPersonaExecutionStrategyError();
          swift_allocError();
          *v81 = 0;
          swift_willThrow();

          v17 = v90;
          $defer #1 <A>() in AdoptPersonaExecutionStrategy.executeAsUser<A>(_:)(v99, v90);
        }

        else
        {
          v73 = Logger.logObject.getter();
          v74 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v73, v74))
          {
            v75 = swift_slowAlloc();
            v90 = swift_slowAlloc();
            *&v96 = v90;
            *v75 = 136315138;
            v76 = [objc_opt_self() currentPersona];
            if (v76)
            {
              v77 = v76;
              v78 = UMUserPersona.logDescription.getter();
              v80 = v79;
            }

            else
            {
              v80 = 0xE300000000000000;
              v78 = 7104878;
            }

            v83 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v78, v80, &v96);

            *(v75 + 4) = v83;
            _os_log_impl(&dword_223515000, v73, v74, "Executing as %s", v75, 0xCu);
            v84 = v90;
            __swift_destroy_boxed_opaque_existential_0(v90);
            MEMORY[0x223DE38F0](v84, -1, -1);
            MEMORY[0x223DE38F0](v75, -1, -1);
          }

          v85 = MEMORY[0x223DE3050]();
          nw_parameters_set_include_peer_to_peer(v85, 1);
          type metadata accessor for NWParameters();
          v17 = NWParameters.__allocating_init(_:)();
          $defer #1 <A>() in AdoptPersonaExecutionStrategy.executeAsUser<A>(_:)(v99, v55);
        }
      }

      goto LABEL_36;
    }
  }

  else
  {
    outlined destroy of NetworkConnectionProtocol?(v93, &_s11SiriNetwork20UMUserPersonProtocol_pSgMd, &_s11SiriNetwork20UMUserPersonProtocol_pSgMR);
    v96 = 0u;
    v97 = 0u;
    v98 = 0;
  }

  outlined destroy of NetworkConnectionProtocol?(&v96, &_s11SiriNetwork20UMUserPersonProtocol_pSgMd, &_s11SiriNetwork20UMUserPersonProtocol_pSgMR);
  lazy protocol witness table accessor for type AdoptPersonaExecutionStrategy.AdoptPersonaExecutionStrategyError and conformance AdoptPersonaExecutionStrategy.AdoptPersonaExecutionStrategyError();
  swift_allocError();
  *v29 = 1;
  swift_willThrow();

  return v17;
}

uint64_t specialized MessageCenterEndpointBrowser.executeAsPersonaIfNeeded<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a1 + OBJC_IVAR____TtC11SiriNetwork28MessageCenterEndpointBrowser_usePersona) == 1)
  {
    v8 = OBJC_IVAR____TtC11SiriNetwork28MessageCenterEndpointBrowser_executionStrategy;

    _s11SiriNetwork29AdoptPersonaExecutionStrategyV13executeAsUseryxxyKXEKlFyt_Tg504_s11a47Network28MessageCenterEndpointBrowserC24executehD32IfNeededyxxyKXEKlFxyKXEfU_yt_Tg5xs5Error_pRi_zRi0_zlyytIsgrzo_Tf1ncn_n0jaklmnO18C5startyyKFyyXEfU_AA0lmnO0CAIXDXMTTf1nnc_n((a1 + v8), a2, a3, a4);
  }

  else
  {
    closure #1 in MessageCenterEndpointBrowser.start()(a2);
  }
}

uint64_t MessageCenterEndpointBrowser.deinit()
{
  outlined consume of (@escaping @callee_guaranteed (@guaranteed SNLinkRecommendationInfo?) -> ())?(*(v0 + 112), *(v0 + 120));
  outlined destroy of NetworkConnectionProtocol?(v0 + 128, &_s11SiriNetwork28MessageCenterBrowserProtocol_pSgMd, &_s11SiriNetwork28MessageCenterBrowserProtocol_pSgMR);

  outlined destroy of weak ConnectionProviderDelegate?(v0 + 176);

  v1 = OBJC_IVAR____TtC11SiriNetwork28MessageCenterEndpointBrowser_logger;
  type metadata accessor for Logger();
  OUTLINED_FUNCTION_71();
  (*(v2 + 8))(v0 + v1);
  outlined destroy of AdoptPersonaExecutionStrategy(v0 + OBJC_IVAR____TtC11SiriNetwork28MessageCenterEndpointBrowser_executionStrategy);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t MessageCenterEndpointBrowser.__deallocating_deinit()
{
  MessageCenterEndpointBrowser.deinit();

  return MEMORY[0x282200960](v0);
}

unint64_t NWEndpoint.isMeDevice.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Network11NWTXTRecordVSgMd, &_s7Network11NWTXTRecordVSgMR);
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v0);
  v2 = &v9 - v1;
  NWEndpoint.txtRecord.getter();
  v3 = type metadata accessor for NWTXTRecord();
  if (__swift_getEnumTagSinglePayload(v2, 1, v3) == 1)
  {
    outlined destroy of NetworkConnectionProtocol?(v2, &_s7Network11NWTXTRecordVSgMd, &_s7Network11NWTXTRecordVSgMR);
    return 0;
  }

  else
  {
    v5 = NWTXTRecord.statusFlags.getter();
    v4 = (v5 >> 7) & 1 & ~v6;
    OUTLINED_FUNCTION_13_4();
    (*(v7 + 8))(v2, v3);
  }

  return v4;
}

uint64_t NWEndpoint.endpointPayload.getter()
{
  v0 = lazy protocol witness table accessor for type MessageCenterEndpointPayload and conformance MessageCenterEndpointPayload();

  return MEMORY[0x282125278](&type metadata for MessageCenterEndpointPayload, v0);
}

uint64_t NWEndpoint.discoverActor(persona:invalidationHandler:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a5@<X8>)
{
  if (one-time initialization token for actorSystem != -1)
  {
    swift_once();
  }

  outlined init with copy of UMUserPersonProtocol(static MessageCenter.actorSystem, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork34MessageCenterNWActorSystemProtocol_pMd, &_s11SiriNetwork34MessageCenterNWActorSystemProtocol_pMR);
  type metadata accessor for NWActorSystem();
  if (swift_dynamicCast())
  {
    type metadata accessor for MessageCenterEndpointBrowser(0);
    static MessageCenterEndpointBrowser.defaultConnectionParametersForPersona(persona:)(a1, a2);
    if (v5)
    {
    }

    else
    {
      v10 = type metadata accessor for MessageCenterActor(0);
      OUTLINED_FUNCTION_12_5();
      lazy protocol witness table accessor for type NWEndpoint and conformance NWEndpoint(v11, v12, &protocol conformance descriptor for MessageCenterActor);
      v14 = static DistributedActor<>.discover(_:connectionParameters:using:invalidationHandler:)();
      a5[3] = v10;
      OUTLINED_FUNCTION_12_5();
      a5[4] = lazy protocol witness table accessor for type NWEndpoint and conformance NWEndpoint(v15, v16, &protocol conformance descriptor for MessageCenterActor);

      *a5 = v14;
    }
  }

  else
  {
    lazy protocol witness table accessor for type MessageCenterError and conformance MessageCenterError();
    swift_allocError();
    *v9 = 1;
    *(v9 + 8) = 8;
    return swift_willThrow();
  }

  return result;
}

unint64_t NWTXTRecord.statusFlags.getter()
{
  result = NWTXTRecord.subscript.getter();
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = HIBYTE(v2) & 0xF;
  v5 = result & 0xFFFFFFFFFFFFLL;
  if ((v3 & 0x2000000000000000) != 0)
  {
    v6 = v4;
  }

  else
  {
    v6 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {

    return 0;
  }

  if ((v3 & 0x1000000000000000) != 0)
  {
    v0 = specialized _parseInteger<A, B>(ascii:radix:)(result, v3, 10);
    v14 = v15;
LABEL_74:

    if ((v14 & 1) == 0)
    {
      return v0;
    }

    return 0;
  }

  if ((v3 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (v3 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
    }

    v7 = *result;
    if (v7 == 43)
    {
      if (v5 >= 1)
      {
        if (v5 != 1)
        {
          v0 = 0;
          if (result)
          {
            while (1)
            {
              OUTLINED_FUNCTION_10_5();
              if (!v9 && v8)
              {
                goto LABEL_72;
              }

              OUTLINED_FUNCTION_46_2();
              if (!v9)
              {
                goto LABEL_72;
              }

              OUTLINED_FUNCTION_37_2();
              if (v8)
              {
                goto LABEL_72;
              }

              OUTLINED_FUNCTION_45_2();
              if (v9)
              {
                goto LABEL_73;
              }
            }
          }

          goto LABEL_62;
        }

        goto LABEL_72;
      }

      goto LABEL_82;
    }

    if (v7 != 45)
    {
      if (v5)
      {
        v0 = 0;
        if (result)
        {
          while (1)
          {
            v13 = *result - 48;
            if (v13 > 9)
            {
              goto LABEL_72;
            }

            if (!is_mul_ok(v0, 0xAuLL))
            {
              goto LABEL_72;
            }

            v8 = __CFADD__(10 * v0, v13);
            v0 = 10 * v0 + v13;
            if (v8)
            {
              goto LABEL_72;
            }

            ++result;
            if (!--v5)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_62;
      }

LABEL_72:
      v0 = 0;
      v11 = 1;
      goto LABEL_73;
    }

    if (v5 >= 1)
    {
      if (v5 != 1)
      {
        v0 = 0;
        if (result)
        {
          while (1)
          {
            OUTLINED_FUNCTION_10_5();
            if (!v9 && v8)
            {
              goto LABEL_72;
            }

            OUTLINED_FUNCTION_46_2();
            if (!v9)
            {
              goto LABEL_72;
            }

            v8 = 10 * v0 >= v10;
            v0 = 10 * v0 - v10;
            if (!v8)
            {
              goto LABEL_72;
            }

            OUTLINED_FUNCTION_45_2();
            if (v9)
            {
              goto LABEL_73;
            }
          }
        }

LABEL_62:
        v11 = 0;
LABEL_73:
        v14 = v11;
        goto LABEL_74;
      }

      goto LABEL_72;
    }

    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  if (result != 43)
  {
    if (result != 45)
    {
      if (v4)
      {
        v0 = 0;
        while (1)
        {
          OUTLINED_FUNCTION_10_5();
          if (!v9 && v8)
          {
            break;
          }

          OUTLINED_FUNCTION_46_2();
          if (!v9)
          {
            break;
          }

          OUTLINED_FUNCTION_37_2();
          if (v8)
          {
            break;
          }

          OUTLINED_FUNCTION_45_2();
          if (v9)
          {
            goto LABEL_73;
          }
        }
      }

      goto LABEL_72;
    }

    if (v4)
    {
      if (v4 != 1)
      {
        OUTLINED_FUNCTION_54_1();
        while (1)
        {
          OUTLINED_FUNCTION_10_5();
          if (!v9 && v8)
          {
            break;
          }

          OUTLINED_FUNCTION_46_2();
          if (!v9)
          {
            break;
          }

          v8 = 10 * v0 >= v12;
          v0 = 10 * v0 - v12;
          if (!v8)
          {
            break;
          }

          OUTLINED_FUNCTION_45_2();
          if (v9)
          {
            goto LABEL_73;
          }
        }
      }

      goto LABEL_72;
    }

    goto LABEL_81;
  }

  if (v4)
  {
    if (v4 != 1)
    {
      OUTLINED_FUNCTION_54_1();
      while (1)
      {
        OUTLINED_FUNCTION_10_5();
        if (!v9 && v8)
        {
          break;
        }

        OUTLINED_FUNCTION_46_2();
        if (!v9)
        {
          break;
        }

        OUTLINED_FUNCTION_37_2();
        if (v8)
        {
          break;
        }

        OUTLINED_FUNCTION_45_2();
        if (v9)
        {
          goto LABEL_73;
        }
      }
    }

    goto LABEL_72;
  }

LABEL_83:
  __break(1u);
  return result;
}

id UMUserPersona.current()@<X0>(void *a1@<X8>)
{
  result = [objc_opt_self() currentPersona];
  v3 = result;
  if (result)
  {
    result = type metadata accessor for UMUserPersona();
    v4 = &protocol witness table for UMUserPersona;
  }

  else
  {
    v4 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v3;
  a1[3] = result;
  a1[4] = v4;
  return result;
}

id @nonobjc UMUserPersona.restorePersona(withSavedPersonaContext:)(uint64_t a1)
{
  v2 = [v1 restorePersonaWithSavedPersonaContext_];

  return v2;
}

id @nonobjc UMUserPersona.generateAndRestorePersonaContext(withPersonaUniqueString:)(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = MEMORY[0x223DE2070](a1);
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 generateAndRestorePersonaContextWithPersonaUniqueString_];

  return v4;
}

id @nonobjc UMUserPersona.copyCurrentPersonaContext()()
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  v1 = [v0 copyCurrentPersonaContextWithError_];
  if (v1)
  {
    v2 = v5[0];
  }

  else
  {
    v3 = v5[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v1;
}

Swift::Int AdoptPersonaExecutionStrategy.AdoptPersonaExecutionStrategyError.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x223DE2980](a1 & 1);
  return Hasher._finalize()();
}

void $defer #1 <A>() in AdoptPersonaExecutionStrategy.executeAsUser<A>(_:)(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);

  type metadata accessor for AdoptPersonaExecutionStrategy(0);
  v5 = a2;
  oslog = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v21 = v8;
    *v7 = 136315394;
    v9 = [v5 description];
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v12, &v21);

    *(v7 + 4) = v13;
    *(v7 + 12) = 2080;
    v14 = [objc_opt_self() currentPersona];
    if (v14)
    {
      v15 = v14;
      v16 = UMUserPersona.logDescription.getter();
      v18 = v17;
    }

    else
    {
      v18 = 0xE300000000000000;
      v16 = 7104878;
    }

    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, &v21);

    *(v7 + 14) = v19;
    _os_log_impl(&dword_223515000, oslog, v6, "Restored persona context %s, executing as %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DE38F0](v8, -1, -1);
    MEMORY[0x223DE38F0](v7, -1, -1);
  }
}

uint64_t UMUserPersona.logDescription.getter()
{
  _StringGuts.grow(_:)(35);
  v1 = outlined bridged method (pb) of @objc UMUserPersona.userPersonaUniqueString.getter(v0, &selRef_userPersonaUniqueString);
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v1 = 0x3E6C696E3CLL;
    v3 = 0xE500000000000000;
  }

  MEMORY[0x223DE2180](v1, v3);

  MEMORY[0x223DE2180](10272, 0xE200000000000000);
  v4 = outlined bridged method (pb) of @objc UMUserPersona.userPersonaUniqueString.getter(v0, &selRef_userPersonaNickName);
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v4 = 0x3E6C696E3CLL;
    v6 = 0xE500000000000000;
  }

  MEMORY[0x223DE2180](v4, v6);

  MEMORY[0x223DE2180](0x203A65707974202CLL, 0xE800000000000000);
  [v0 userPersonaType];
  type metadata accessor for UMUserPersonaType(0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x223DE2180](0x203A444955202CLL, 0xE700000000000000);
  [v0 uid];
  v7 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x223DE2180](v7);

  MEMORY[0x223DE2180](0x203A444947202CLL, 0xE700000000000000);
  [v0 gid];
  v8 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x223DE2180](v8);

  MEMORY[0x223DE2180](41, 0xE100000000000000);
  return 0;
}

uint64_t MessageCenterEndpointPayloadProducer.init(capabilityProvider:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = *(type metadata accessor for MessageCenterEndpointPayloadProducer(0) + 20);
  if (one-time initialization token for messageCenterActor != -1)
  {
    OUTLINED_FUNCTION_14_4();
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Logger.messageCenterActor);
  OUTLINED_FUNCTION_13_4();
  result = (*(v8 + 16))(&a3[v6]);
  *a3 = a1;
  *(a3 + 1) = a2;
  return result;
}

SiriNetwork::MessageCenterEndpointPayload __swiftcall MessageCenterEndpointPayloadProducer.payload()()
{
  v2 = v0;
  v3 = *v1;
  if (*v1)
  {
    v4 = *(v1 + 8);

    v6 = v3(v5);
    outlined consume of (@escaping @callee_guaranteed (@guaranteed SNLinkRecommendationInfo?) -> ())?(v3, v4);
  }

  else
  {
    v7 = MEMORY[0x223DE2070](0xD000000000000024, 0x80000002235F80E0);
    v6 = MGGetBoolAnswer();
  }

  type metadata accessor for MessageCenterEndpointPayloadProducer(0);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = OUTLINED_FUNCTION_55();
    v11 = OUTLINED_FUNCTION_54();
    *v10 = 136315138;
    v20 = v11;
    _StringGuts.grow(_:)(28);

    OUTLINED_FUNCTION_60_2();
    v18 = v13;
    v19 = v12;
    if (v6)
    {
      v14 = 1702195828;
    }

    else
    {
      v14 = 0x65736C6166;
    }

    if (v6)
    {
      v15 = 0xE400000000000000;
    }

    else
    {
      v15 = 0xE500000000000000;
    }

    MEMORY[0x223DE2180](v14, v15);

    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v20);

    *(v10 + 4) = v16;
    _os_log_impl(&dword_223515000, v8, v9, "Producing endpoint payload %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_11();
  }

  *v2 = v6 & 1;
  return result;
}

void specialized Sequence.first(where:)(uint64_t (*a1)(__int128 *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = a2 + 56;
  v8 = 1 << *(a2 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a2 + 56);
  v11 = (v8 + 63) >> 6;

  v12 = 0;
  if (v10)
  {
    while (1)
    {
      v13 = v12;
LABEL_8:
      outlined init with copy of MessageCenterEndpoint(*(a2 + 48) + 40 * (__clz(__rbit64(v10)) | (v13 << 6)), v19);
      v16 = v19[0];
      v17 = v19[1];
      v18 = v20;
      v14 = a1(&v16);
      if (v3)
      {
        outlined destroy of MessageCenterEndpoint(&v16);

        return;
      }

      if (v14)
      {
        break;
      }

      v10 &= v10 - 1;
      outlined destroy of MessageCenterEndpoint(&v16);
      v12 = v13;
      if (!v10)
      {
        goto LABEL_5;
      }
    }

    v15 = v17;
    *a3 = v16;
    *(a3 + 16) = v15;
    *(a3 + 32) = v18;
  }

  else
  {
LABEL_5:
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v13 >= v11)
      {

        *(a3 + 32) = 0;
        *a3 = 0u;
        *(a3 + 16) = 0u;
        return;
      }

      v10 = *(v7 + 8 * v13);
      ++v12;
      if (v10)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

BOOL specialized Sequence.contains(where:)(uint64_t (*a1)(void *, __n128), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = *v5;
    v11[0] = *(v5 - 1);
    v11[1] = v7;

    v8 = (a1)(v11);
    if (v3)
    {

      return v6 != 0;
    }

    v9 = v8;
    v5 += 2;
  }

  while ((v9 & 1) == 0);
  return v6 != 0;
}

unint64_t specialized Collection.dropFirst(_:)(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if ((a3 & 0x2000000000000000) != 0)
    {
      v3 = HIBYTE(a3) & 0xF;
    }

    else
    {
      v3 = a2 & 0xFFFFFFFFFFFFLL;
    }

    v4 = 7;
    if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v4 = 11;
    }

    v5 = v4 | (v3 << 16);
    result = String.index(_:offsetBy:limitedBy:)();
    if (v6)
    {
      result = v5;
    }

    if (4 * v3 >= result >> 14)
    {
      v7 = String.subscript.getter();

      return v7;
    }
  }

  __break(1u);
  return result;
}

void (*specialized Dictionary.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(void **a1)
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  v6[4] = specialized Dictionary._Variant.subscript.modify(v6, a2, a3);
  return Dictionary.subscript.modifyspecialized ;
}

void Dictionary.subscript.modifyspecialized (void **a1)
{
  v1 = *a1;
  v2 = OUTLINED_FUNCTION_34_3();
  v3(v2);

  free(v1);
}

uint64_t instantiation function for generic protocol witness table for NWEndpoint(uint64_t a1)
{
  result = lazy protocol witness table accessor for type NWEndpoint and conformance NWEndpoint(&lazy protocol witness table cache variable for type NWEndpoint and conformance NWEndpoint, MEMORY[0x277CD8B10], MEMORY[0x277CD8B18]);
  *(a1 + 8) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for MessageCenterEndpointPayload(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for MessageCenterEndpointPayload(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t dispatch thunk of MessageCenterEndpointBrowseDelegate.browser(_:didFindEndpoint:)()
{
  OUTLINED_FUNCTION_38_1();
  OUTLINED_FUNCTION_21();
  v17 = OUTLINED_FUNCTION_28(v1, v2, v3, v4, v5) + 8;
  OUTLINED_FUNCTION_57_0();
  v18 = v6 + *v6;
  v7 = swift_task_alloc();
  *(v0 + 16) = v7;
  *v7 = v0;
  OUTLINED_FUNCTION_22_4(v7);
  OUTLINED_FUNCTION_26_3();

  return v13(v8, v9, v10, v11, v12, v13, v14, v15, v17, v18);
}

uint64_t dispatch thunk of MessageCenterEndpointBrowseDelegate.browser(_:didLoseEndpoint:)()
{
  OUTLINED_FUNCTION_38_1();
  OUTLINED_FUNCTION_21();
  v17 = OUTLINED_FUNCTION_28(v1, v2, v3, v4, v5) + 16;
  OUTLINED_FUNCTION_57_0();
  v18 = v6 + *v6;
  v7 = swift_task_alloc();
  *(v0 + 16) = v7;
  *v7 = v0;
  OUTLINED_FUNCTION_22_4(v7);
  OUTLINED_FUNCTION_26_3();

  return v13(v8, v9, v10, v11, v12, v13, v14, v15, v17, v18);
}

uint64_t dispatch thunk of MessageCenterEndpointBrowseDelegate.browser(_:didUpdateEndpoint:from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_57_0();
  v16 = (v13 + *v13);
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = dispatch thunk of MessageCenterEndpointBrowseDelegate.browser(_:didLoseEndpoint:);

  return v16(a1, a2, a3, a4, a5, a6);
}

uint64_t type metadata completion function for MessageCenterEndpointBrowser(uint64_t a1)
{
  result = type metadata accessor for Logger();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for AdoptPersonaExecutionStrategy(319);
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

void type metadata completion function for MessageCenterEndpointPayloadProducer(uint64_t a1)
{
  type metadata accessor for (())?(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Logger();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for (())?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (())?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_syycMd, &_syycMR);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for (())?);
    }
  }
}

void type metadata completion function for AdoptPersonaExecutionStrategy(uint64_t a1)
{
  type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    type metadata accessor for (())?(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

_BYTE *storeEnumTagSinglePayload for MessageCenterEndpointPayload.CodingKeys(_BYTE *result, int a2, int a3)
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

uint64_t instantiation function for generic protocol witness table for MessageCenterEndpointBrowser(uint64_t a1)
{
  result = lazy protocol witness table accessor for type NWEndpoint and conformance NWEndpoint(&lazy protocol witness table cache variable for type MessageCenterEndpointBrowser and conformance MessageCenterEndpointBrowser, type metadata accessor for MessageCenterEndpointBrowser, &protocol conformance descriptor for MessageCenterEndpointBrowser);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type NWEndpoint and conformance NWEndpoint(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t lazy protocol witness table accessor for type AdoptPersonaExecutionStrategy.AdoptPersonaExecutionStrategyError and conformance AdoptPersonaExecutionStrategy.AdoptPersonaExecutionStrategyError()
{
  result = lazy protocol witness table cache variable for type AdoptPersonaExecutionStrategy.AdoptPersonaExecutionStrategyError and conformance AdoptPersonaExecutionStrategy.AdoptPersonaExecutionStrategyError;
  if (!lazy protocol witness table cache variable for type AdoptPersonaExecutionStrategy.AdoptPersonaExecutionStrategyError and conformance AdoptPersonaExecutionStrategy.AdoptPersonaExecutionStrategyError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AdoptPersonaExecutionStrategy.AdoptPersonaExecutionStrategyError and conformance AdoptPersonaExecutionStrategy.AdoptPersonaExecutionStrategyError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AdoptPersonaExecutionStrategy.AdoptPersonaExecutionStrategyError and conformance AdoptPersonaExecutionStrategy.AdoptPersonaExecutionStrategyError;
  if (!lazy protocol witness table cache variable for type AdoptPersonaExecutionStrategy.AdoptPersonaExecutionStrategyError and conformance AdoptPersonaExecutionStrategy.AdoptPersonaExecutionStrategyError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AdoptPersonaExecutionStrategy.AdoptPersonaExecutionStrategyError and conformance AdoptPersonaExecutionStrategy.AdoptPersonaExecutionStrategyError);
  }

  return result;
}

uint64_t outlined init with copy of AdoptPersonaExecutionStrategy(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AdoptPersonaExecutionStrategy(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of AdoptPersonaExecutionStrategy(uint64_t a1)
{
  v2 = type metadata accessor for AdoptPersonaExecutionStrategy(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unsigned __int8 *specialized _parseInteger<A, B>(ascii:radix:)(uint64_t a1, uint64_t a2, int64_t a3)
{
  v69 = a1;
  v70 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  v7 = v5;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = static String._copying(_:)(result, v5);
    v40 = v39;

    v7 = v40;
    if ((v40 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
    }

    v9 = *result;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        v22 = v8 - 1;
        if (v8 != 1)
        {
          v23 = a3 + 48;
          v24 = a3 + 55;
          v25 = a3 + 87;
          if (a3 > 10)
          {
            v23 = 58;
          }

          else
          {
            v25 = 97;
            v24 = 65;
          }

          if (result)
          {
            v14 = 0;
            v26 = result + 1;
            do
            {
              v27 = *v26;
              if (v27 < 0x30 || v27 >= v23)
              {
                if (v27 < 0x41 || v27 >= v24)
                {
                  v18 = 0;
                  if (v27 < 0x61 || v27 >= v25)
                  {
                    goto LABEL_129;
                  }

                  v28 = -87;
                }

                else
                {
                  v28 = -55;
                }
              }

              else
              {
                v28 = -48;
              }

              if (!is_mul_ok(v14, a3))
              {
                goto LABEL_128;
              }

              v29 = v14 * a3;
              v30 = v27 + v28;
              v21 = __CFADD__(v29, v30);
              v14 = v29 + v30;
              if (v21)
              {
                goto LABEL_128;
              }

              ++v26;
              --v22;
            }

            while (v22);
LABEL_47:
            v18 = v14;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

LABEL_128:
        v18 = 0;
        goto LABEL_129;
      }

      goto LABEL_133;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v31 = a3 + 48;
        v32 = a3 + 55;
        v33 = a3 + 87;
        if (a3 > 10)
        {
          v31 = 58;
        }

        else
        {
          v33 = 97;
          v32 = 65;
        }

        if (result)
        {
          v34 = 0;
          do
          {
            v35 = *result;
            if (v35 < 0x30 || v35 >= v31)
            {
              if (v35 < 0x41 || v35 >= v32)
              {
                v18 = 0;
                if (v35 < 0x61 || v35 >= v33)
                {
                  goto LABEL_129;
                }

                v36 = -87;
              }

              else
              {
                v36 = -55;
              }
            }

            else
            {
              v36 = -48;
            }

            if (!is_mul_ok(v34, a3))
            {
              goto LABEL_128;
            }

            v37 = v34 * a3;
            v38 = v35 + v36;
            v21 = __CFADD__(v37, v38);
            v34 = v37 + v38;
            if (v21)
            {
              goto LABEL_128;
            }

            ++result;
            --v8;
          }

          while (v8);
          v18 = v34;
          goto LABEL_129;
        }

        goto LABEL_67;
      }

      goto LABEL_128;
    }

    if (v8 >= 1)
    {
      v10 = v8 - 1;
      if (v8 != 1)
      {
        v11 = a3 + 48;
        v12 = a3 + 55;
        v13 = a3 + 87;
        if (a3 > 10)
        {
          v11 = 58;
        }

        else
        {
          v13 = 97;
          v12 = 65;
        }

        if (result)
        {
          v14 = 0;
          v15 = result + 1;
          while (1)
          {
            v16 = *v15;
            if (v16 < 0x30 || v16 >= v11)
            {
              if (v16 < 0x41 || v16 >= v12)
              {
                v18 = 0;
                if (v16 < 0x61 || v16 >= v13)
                {
                  goto LABEL_129;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            if (!is_mul_ok(v14, a3))
            {
              goto LABEL_128;
            }

            v19 = v14 * a3;
            v20 = v16 + v17;
            v21 = v19 >= v20;
            v14 = v19 - v20;
            if (!v21)
            {
              goto LABEL_128;
            }

            ++v15;
            if (!--v10)
            {
              goto LABEL_47;
            }
          }
        }

LABEL_67:
        v18 = 0;
LABEL_129:

        return v18;
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v41 = HIBYTE(v7) & 0xF;
  v69 = v6;
  v70 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v41)
      {
        v43 = 0;
        v61 = a3 + 48;
        v62 = a3 + 55;
        v63 = a3 + 87;
        if (a3 > 10)
        {
          v61 = 58;
        }

        else
        {
          v63 = 97;
          v62 = 65;
        }

        v64 = &v69;
        while (1)
        {
          v65 = *v64;
          if (v65 < 0x30 || v65 >= v61)
          {
            if (v65 < 0x41 || v65 >= v62)
            {
              v18 = 0;
              if (v65 < 0x61 || v65 >= v63)
              {
                goto LABEL_129;
              }

              v66 = -87;
            }

            else
            {
              v66 = -55;
            }
          }

          else
          {
            v66 = -48;
          }

          if (!is_mul_ok(v43, a3))
          {
            goto LABEL_128;
          }

          v67 = v43 * a3;
          v68 = v65 + v66;
          v21 = __CFADD__(v67, v68);
          v43 = v67 + v68;
          if (v21)
          {
            goto LABEL_128;
          }

          v64 = (v64 + 1);
          if (!--v41)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v41)
    {
      v42 = v41 - 1;
      if (v42)
      {
        v43 = 0;
        v44 = a3 + 48;
        v45 = a3 + 55;
        v46 = a3 + 87;
        if (a3 > 10)
        {
          v44 = 58;
        }

        else
        {
          v46 = 97;
          v45 = 65;
        }

        v47 = &v69 + 1;
        while (1)
        {
          v48 = *v47;
          if (v48 < 0x30 || v48 >= v44)
          {
            if (v48 < 0x41 || v48 >= v45)
            {
              v18 = 0;
              if (v48 < 0x61 || v48 >= v46)
              {
                goto LABEL_129;
              }

              v49 = -87;
            }

            else
            {
              v49 = -55;
            }
          }

          else
          {
            v49 = -48;
          }

          if (!is_mul_ok(v43, a3))
          {
            goto LABEL_128;
          }

          v50 = v43 * a3;
          v51 = v48 + v49;
          v21 = v50 >= v51;
          v43 = v50 - v51;
          if (!v21)
          {
            goto LABEL_128;
          }

          ++v47;
          if (!--v42)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v41)
  {
    v52 = v41 - 1;
    if (v52)
    {
      v43 = 0;
      v53 = a3 + 48;
      v54 = a3 + 55;
      v55 = a3 + 87;
      if (a3 > 10)
      {
        v53 = 58;
      }

      else
      {
        v55 = 97;
        v54 = 65;
      }

      v56 = &v69 + 1;
      do
      {
        v57 = *v56;
        if (v57 < 0x30 || v57 >= v53)
        {
          if (v57 < 0x41 || v57 >= v54)
          {
            v18 = 0;
            if (v57 < 0x61 || v57 >= v55)
            {
              goto LABEL_129;
            }

            v58 = -87;
          }

          else
          {
            v58 = -55;
          }
        }

        else
        {
          v58 = -48;
        }

        if (!is_mul_ok(v43, a3))
        {
          goto LABEL_128;
        }

        v59 = v43 * a3;
        v60 = v57 + v58;
        v21 = __CFADD__(v59, v60);
        v43 = v59 + v60;
        if (v21)
        {
          goto LABEL_128;
        }

        ++v56;
        --v52;
      }

      while (v52);
LABEL_127:
      v18 = v43;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

uint64_t static String._copying(_:)(uint64_t a1, unint64_t a2)
{
  v2 = specialized Collection.subscript.getter(implicit closure #1 in static String._copying(_:), 0, a1, a2);
  v6 = static String._copying(_:)(v2, v3, v4, v5);

  return v6;
}

uint64_t static String._copying(_:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = Substring.UTF8View.distance(from:to:)();
    if (!v9 || (v10 = v9, v11 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v9, 0), v12 = specialized Sequence._copySequenceContents(initializing:)(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = static String._uncheckedFromUTF8(_:)();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return static String._uncheckedFromUTF8(_:)();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  _StringObject.sharedUTF8.getter();
LABEL_4:

  return static String._uncheckedFromUTF8(_:)();
}

unint64_t specialized Sequence._copySequenceContents(initializing:)(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_36;
  }

  if (a3 < 0)
  {
    goto LABEL_40;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_36:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    result = v12;
    if ((v12 & 0xC) == v15)
    {
      result = _StringGuts._slowEnsureMatchingEncoding(_:)(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v19 = result;
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v19 = *(result + v18);
      }
    }

    if ((v12 & 0xC) == v15)
    {
      result = _StringGuts._slowEnsureMatchingEncoding(_:)(v12, a6, a7);
      v12 = result;
      if ((a7 & 0x1000000000000000) == 0)
      {
LABEL_27:
        v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_31;
      }
    }

    else if ((a7 & 0x1000000000000000) == 0)
    {
      goto LABEL_27;
    }

    if (v23 <= v12 >> 16)
    {
      goto LABEL_39;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v12 = result;
LABEL_31:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_36;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_38;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

unint64_t _StringGuts._slowEnsureMatchingEncoding(_:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x223DE21C0](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

unsigned __int8 *specialized _parseInteger<A, B>(ascii:radix:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v84 = a1;
  v85 = a2;
  v86 = a3;
  v87 = a4;
  lazy protocol witness table accessor for type Substring and conformance Substring();

  result = String.init<A>(_:)();
  v8 = result;
  v9 = v7;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v45 = OUTLINED_FUNCTION_32();
    v8 = static String._copying(_:)(v45, v46);
    v48 = v47;

    v9 = v48;
    if ((v48 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v9 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v10 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      OUTLINED_FUNCTION_32();
      result = _StringObject.sharedUTF8.getter();
    }

    v11 = *result;
    if (v11 == 43)
    {
      if (v10 >= 1)
      {
        if (v10 != 1)
        {
          OUTLINED_FUNCTION_41_3();
          if (v27 ^ v28 | v26)
          {
            v31 = 65;
          }

          if (!(v27 ^ v28 | v26))
          {
            v32 = 58;
          }

          if (v29)
          {
            v19 = 0;
            v33 = (v29 + 1);
            do
            {
              v34 = *v33;
              if (v34 < 0x30 || v34 >= v32)
              {
                if (v34 < 0x41 || v34 >= v31)
                {
                  OUTLINED_FUNCTION_39_1();
                  if (!v24 || v34 >= v36)
                  {
                    goto LABEL_142;
                  }

                  v35 = -87;
                }

                else
                {
                  v35 = -55;
                }
              }

              else
              {
                v35 = -48;
              }

              v37 = v19 * a5;
              if ((v19 * a5) >> 64 != (v19 * a5) >> 63)
              {
                goto LABEL_141;
              }

              v19 = v37 + (v34 + v35);
              if (__OFADD__(v37, (v34 + v35)))
              {
                goto LABEL_141;
              }

              ++v33;
              --v30;
            }

            while (v30);
LABEL_52:
            v8 = v19;
            goto LABEL_142;
          }

          goto LABEL_72;
        }

LABEL_141:
        v8 = 0;
        goto LABEL_142;
      }

      goto LABEL_146;
    }

    if (v11 != 45)
    {
      if (v10)
      {
        v38 = a5 + 48;
        v39 = a5 + 55;
        v40 = a5 + 87;
        if (a5 > 10)
        {
          v38 = 58;
        }

        else
        {
          v40 = 97;
          v39 = 65;
        }

        if (result)
        {
          v41 = 0;
          do
          {
            v42 = *result;
            if (v42 < 0x30 || v42 >= v38)
            {
              if (v42 < 0x41 || v42 >= v39)
              {
                v8 = 0;
                if (v42 < 0x61 || v42 >= v40)
                {
                  goto LABEL_142;
                }

                v43 = -87;
              }

              else
              {
                v43 = -55;
              }
            }

            else
            {
              v43 = -48;
            }

            v44 = v41 * a5;
            if ((v41 * a5) >> 64 != (v41 * a5) >> 63)
            {
              goto LABEL_141;
            }

            v41 = v44 + (v42 + v43);
            if (__OFADD__(v44, (v42 + v43)))
            {
              goto LABEL_141;
            }

            ++result;
            --v10;
          }

          while (v10);
          v8 = v44 + (v42 + v43);
          goto LABEL_142;
        }

        goto LABEL_72;
      }

      goto LABEL_141;
    }

    if (v10 >= 1)
    {
      if (v10 != 1)
      {
        OUTLINED_FUNCTION_41_3();
        if (v13 ^ v14 | v12)
        {
          v17 = 65;
        }

        if (!(v13 ^ v14 | v12))
        {
          v18 = 58;
        }

        if (v15)
        {
          v19 = 0;
          v20 = (v15 + 1);
          while (1)
          {
            v21 = *v20;
            if (v21 < 0x30 || v21 >= v18)
            {
              if (v21 < 0x41 || v21 >= v17)
              {
                OUTLINED_FUNCTION_39_1();
                if (!v24 || v21 >= v23)
                {
                  goto LABEL_142;
                }

                v22 = -87;
              }

              else
              {
                v22 = -55;
              }
            }

            else
            {
              v22 = -48;
            }

            v25 = v19 * a5;
            if ((v19 * a5) >> 64 != (v19 * a5) >> 63)
            {
              goto LABEL_141;
            }

            v19 = v25 - (v21 + v22);
            if (__OFSUB__(v25, (v21 + v22)))
            {
              goto LABEL_141;
            }

            ++v20;
            if (!--v16)
            {
              goto LABEL_52;
            }
          }
        }

LABEL_72:
        v8 = 0;
LABEL_142:

        return v8;
      }

      goto LABEL_141;
    }

    __break(1u);
LABEL_145:
    __break(1u);
LABEL_146:
    __break(1u);
    goto LABEL_147;
  }

  v49 = HIBYTE(v9) & 0xF;
  v84 = v8;
  v85 = v9 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v49)
      {
        OUTLINED_FUNCTION_5_15();
        if (v74 ^ v75 | v73)
        {
          v77 = 65;
        }

        if (!(v74 ^ v75 | v73))
        {
          v78 = 58;
        }

        v79 = &v84;
        while (1)
        {
          v80 = *v79;
          if (v80 < 0x30 || v80 >= v78)
          {
            if (v80 < 0x41 || v80 >= v77)
            {
              OUTLINED_FUNCTION_39_1();
              if (!v24 || v80 >= v82)
              {
                goto LABEL_142;
              }

              v81 = -87;
            }

            else
            {
              v81 = -55;
            }
          }

          else
          {
            v81 = -48;
          }

          v83 = v54 * a5;
          if ((v54 * a5) >> 64 != (v54 * a5) >> 63)
          {
            goto LABEL_141;
          }

          v54 = v83 + (v80 + v81);
          if (__OFADD__(v83, (v80 + v81)))
          {
            goto LABEL_141;
          }

          v79 = (v79 + 1);
          if (!--v76)
          {
            goto LABEL_140;
          }
        }
      }

      goto LABEL_141;
    }

    if (v49)
    {
      if (v49 != 1)
      {
        OUTLINED_FUNCTION_5_15();
        if (v51 ^ v52 | v50)
        {
          v55 = 65;
        }

        if (!(v51 ^ v52 | v50))
        {
          v56 = 58;
        }

        v57 = &v84 + 1;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v56)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              OUTLINED_FUNCTION_39_1();
              if (!v24 || v58 >= v60)
              {
                goto LABEL_142;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v61 = v54 * a5;
          if ((v54 * a5) >> 64 != (v54 * a5) >> 63)
          {
            goto LABEL_141;
          }

          v54 = v61 - (v58 + v59);
          if (__OFSUB__(v61, (v58 + v59)))
          {
            goto LABEL_141;
          }

          ++v57;
          if (!--v53)
          {
            goto LABEL_140;
          }
        }
      }

      goto LABEL_141;
    }

    goto LABEL_145;
  }

  if (v49)
  {
    if (v49 != 1)
    {
      OUTLINED_FUNCTION_5_15();
      if (v63 ^ v64 | v62)
      {
        v66 = 65;
      }

      if (!(v63 ^ v64 | v62))
      {
        v67 = 58;
      }

      v68 = &v84 + 1;
      do
      {
        v69 = *v68;
        if (v69 < 0x30 || v69 >= v67)
        {
          if (v69 < 0x41 || v69 >= v66)
          {
            OUTLINED_FUNCTION_39_1();
            if (!v24 || v69 >= v71)
            {
              goto LABEL_142;
            }

            v70 = -87;
          }

          else
          {
            v70 = -55;
          }
        }

        else
        {
          v70 = -48;
        }

        v72 = v54 * a5;
        if ((v54 * a5) >> 64 != (v54 * a5) >> 63)
        {
          goto LABEL_141;
        }

        v54 = v72 + (v69 + v70);
        if (__OFADD__(v72, (v69 + v70)))
        {
          goto LABEL_141;
        }

        ++v68;
        --v65;
      }

      while (v65);
LABEL_140:
      v8 = v54;
      goto LABEL_142;
    }

    goto LABEL_141;
  }

LABEL_147:
  __break(1u);
  return result;
}

void (*specialized Dictionary._Variant.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  v6 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6[8] = specialized Dictionary._Variant.asNative.modify(v6);
  v6[9] = specialized _NativeDictionary.subscript.modify(v6 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return Dictionary._Variant.subscript.modifyspecialized ;
}

void Dictionary._Variant.subscript.modifyspecialized (uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v3 = OUTLINED_FUNCTION_34_3();
  v2(v3);

  free(v1);
}

void (*specialized _NativeDictionary.subscript.modify(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1)
{
  v5 = v4;
  v10 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v10;
  v10[2] = a3;
  v10[3] = v4;
  v10[1] = a2;
  v11 = *v4;
  v12 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  *(v10 + 40) = v13 & 1;
  v14 = *(v11 + 16);
  v15 = (v13 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_10;
  }

  v17 = v12;
  v18 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSShy11SiriNetwork21MessageCenterEndpointVGGMd, &_ss17_NativeDictionaryVySSShy11SiriNetwork21MessageCenterEndpointVGGMR);
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(a4 & 1, v16))
  {
    v19 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if ((v18 & 1) == (v20 & 1))
    {
      v17 = v19;
      goto LABEL_5;
    }

LABEL_10:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_5:
  v10[4] = v17;
  if (v18)
  {
    v21 = *(*(*v5 + 56) + 8 * v17);
  }

  else
  {
    v21 = 0;
  }

  *v10 = v21;
  return _NativeDictionary.subscript.modifyspecialized ;
}

void _NativeDictionary.subscript.modifyspecialized (uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 40);
  if (v2)
  {
    v4 = v1[4];
    v5 = *v1[3];
    if (v3)
    {
      *(v5[7] + 8 * v4) = v2;
    }

    else
    {
      specialized _NativeDictionary._insert(at:key:value:)(v4, v1[1], v1[2], v2, v5);
    }
  }

  else if ((*a1)[5])
  {
    outlined destroy of String(*(*v1[3] + 48) + 16 * v1[4]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy11SiriNetwork21MessageCenterEndpointVGMd, &_sShy11SiriNetwork21MessageCenterEndpointVGMR);
    _NativeDictionary._delete(at:)();
  }

  free(v1);
}

uint64_t (*specialized Dictionary._Variant.asNative.modify(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return Dictionary._Variant.asNative.modifyspecialized ;
}

unint64_t type metadata accessor for UMUserPersona()
{
  result = lazy cache variable for type metadata for UMUserPersona;
  if (!lazy cache variable for type metadata for UMUserPersona)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UMUserPersona);
  }

  return result;
}

uint64_t outlined assign with take of MessageCenterBrowserProtocol?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork28MessageCenterBrowserProtocol_pSgMd, &_s11SiriNetwork28MessageCenterBrowserProtocol_pSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in closure #1 in MessageCenterEndpointBrowser.start()()
{
  OUTLINED_FUNCTION_40_3();
  v3 = v2;
  type metadata accessor for NWBrowser.Result.Change();
  OUTLINED_FUNCTION_57_0();
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = *(v0 + 16);
  v8 = *(v0 + 24);
  v9 = *(v0 + ((*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  swift_task_alloc();
  OUTLINED_FUNCTION_27_2();
  *(v1 + 16) = v10;
  *v10 = v11;
  v10[1] = partial apply for closure #1 in closure #1 in closure #1 in closure #1 in MessageCenterEndpointBrowser.start();

  return closure #1 in closure #1 in closure #1 in closure #1 in MessageCenterEndpointBrowser.start()(v3, v7, v8, v0 + v5, v9);
}

{
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_11_0();
  v1 = *v0;
  OUTLINED_FUNCTION_5_1();
  *v2 = v1;

  OUTLINED_FUNCTION_6_3();

  return v3();
}

uint64_t outlined init with copy of MessageCenterBrowserProtocol?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_71();
  v5 = OUTLINED_FUNCTION_14_3();
  v6(v5);
  return a2;
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA()
{
  OUTLINED_FUNCTION_29();
  swift_task_alloc();
  OUTLINED_FUNCTION_27_2();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = partial apply for closure #1 in closure #1 in closure #1 in closure #1 in MessageCenterEndpointBrowser.start();

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5();
}

uint64_t _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5SiSg_Tg5061_ss17FixedWidthIntegerPsE_5radixxSgqd___SitcSyRd__lufcADSRys5I15VGXEfU_Si_SsTG5SiTf1cn_n(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    result = 0;
    goto LABEL_8;
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v12 = HIBYTE(a4) & 0xF;
    v15[0] = a3;
    v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v11 = v15;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v11 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v12 = a3 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = _StringObject.sharedUTF8.getter();
  }

  result = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFqd__AGKXEfU_SRys5UInt8VGABySS8UTF8ViewVGSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lyAIqd__Isgyrzo_qd__sAO_pALRszr__lIetyggrzo_Tpq5SiSg_Tg5061_ss17FixedWidthIntegerPsE_5radixxSgqd___SitcSyRd__lufcADSRys5H15VGXEfU_Si_SsTG5SiTf1nnc_n(v11, v12, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v17 = v14 & 1;
LABEL_8:
    v16 = (a4 & 0x1000000000000000) != 0;
  }

  return result;
}

uint64_t _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFqd__AGKXEfU_SRys5UInt8VGABySS8UTF8ViewVGSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lyAIqd__Isgyrzo_qd__sAO_pALRszr__lIetyggrzo_Tpq5SiSg_Tg5061_ss17FixedWidthIntegerPsE_5radixxSgqd___SitcSyRd__lufcADSRys5H15VGXEfU_Si_SsTG5SiTf1nnc_n(uint64_t result, uint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7)
{
  v11 = a3;
  v12 = result;
  v13 = (a5 >> 59) & 1;
  if ((a6 & 0x1000000000000000) == 0)
  {
    LOBYTE(v13) = 1;
  }

  v14 = 4 << v13;
  v15 = a3 & 0xC;
  v16 = a3;
  if (v15 == 4 << v13)
  {
    result = _StringGuts._slowEnsureMatchingEncoding(_:)(a3, a5, a6);
    v16 = result;
  }

  v17 = HIBYTE(a6) & 0xF;
  if ((a6 & 0x1000000000000000) != 0)
  {
    v19 = a5 & 0xFFFFFFFFFFFFLL;
    if ((a6 & 0x2000000000000000) != 0)
    {
      v19 = HIBYTE(a6) & 0xF;
    }

    if (v19 < v16 >> 16)
    {
      goto LABEL_96;
    }

    result = String.UTF8View._foreignDistance(from:to:)();
    v18 = result;
    v17 = HIBYTE(a6) & 0xF;
  }

  else
  {
    v18 = v16 >> 16;
  }

  if (v15 == v14)
  {
    v20 = v17;
    result = _StringGuts._slowEnsureMatchingEncoding(_:)(v11, a5, a6);
    v17 = v20;
    v11 = result;
  }

  if ((a4 & 0xC) == v14)
  {
    v21 = a4;
    v22 = v17;
    result = _StringGuts._slowEnsureMatchingEncoding(_:)(v21, a5, a6);
    v17 = v22;
    a4 = result;
    if ((a6 & 0x1000000000000000) == 0)
    {
      goto LABEL_11;
    }
  }

  else if ((a6 & 0x1000000000000000) == 0)
  {
LABEL_11:
    result = (a4 >> 16) - (v11 >> 16);
    goto LABEL_22;
  }

  v23 = a5 & 0xFFFFFFFFFFFFLL;
  if ((a6 & 0x2000000000000000) != 0)
  {
    v23 = v17;
  }

  if (v23 < v11 >> 16)
  {
    goto LABEL_92;
  }

  if (v23 < a4 >> 16)
  {
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  result = String.UTF8View._foreignDistance(from:to:)();
LABEL_22:
  v24 = v18 + result;
  if (__OFADD__(v18, result))
  {
    __break(1u);
    goto LABEL_91;
  }

  if (v24 < v18)
  {
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  v25 = (v18 + v12);
  if (!v12)
  {
    v25 = 0;
  }

  v26 = *v25;
  if (v26 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v37 = a7 + 48;
        v38 = a7 + 55;
        v39 = a7 + 87;
        if (a7 > 10)
        {
          v37 = 58;
        }

        else
        {
          v39 = 97;
          v38 = 65;
        }

        if (v25)
        {
          v30 = 0;
          v40 = v25 + 1;
          v41 = result - 1;
          do
          {
            v42 = *v40;
            if (v42 < 0x30 || v42 >= v37)
            {
              if (v42 < 0x41 || v42 >= v38)
              {
                v35 = 0;
                if (v42 < 0x61 || v42 >= v39)
                {
                  return v35;
                }

                v43 = -87;
              }

              else
              {
                v43 = -55;
              }
            }

            else
            {
              v43 = -48;
            }

            v44 = v30 * a7;
            if ((v30 * a7) >> 64 != (v30 * a7) >> 63)
            {
              return 0;
            }

            v30 = v44 + (v42 + v43);
            if (__OFADD__(v44, (v42 + v43)))
            {
              return 0;
            }

            ++v40;
            --v41;
          }

          while (v41);
          return v30;
        }

        return 0;
      }

      return 0;
    }

    goto LABEL_95;
  }

  if (v26 != 45)
  {
    if (v24 != v18)
    {
      v45 = a7 + 48;
      v46 = a7 + 55;
      v47 = a7 + 87;
      if (a7 > 10)
      {
        v45 = 58;
      }

      else
      {
        v47 = 97;
        v46 = 65;
      }

      if (v25)
      {
        v30 = 0;
        while (1)
        {
          v48 = *v25;
          if (v48 < 0x30 || v48 >= v45)
          {
            if (v48 < 0x41 || v48 >= v46)
            {
              v35 = 0;
              if (v48 < 0x61 || v48 >= v47)
              {
                return v35;
              }

              v49 = -87;
            }

            else
            {
              v49 = -55;
            }
          }

          else
          {
            v49 = -48;
          }

          v50 = v30 * a7;
          if ((v30 * a7) >> 64 != (v30 * a7) >> 63)
          {
            return 0;
          }

          v30 = v50 + (v48 + v49);
          if (__OFADD__(v50, (v48 + v49)))
          {
            return 0;
          }

          ++v25;
          if (!--result)
          {
            return v30;
          }
        }
      }

      return 0;
    }

    return 0;
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v27 = a7 + 48;
      v28 = a7 + 55;
      v29 = a7 + 87;
      if (a7 > 10)
      {
        v27 = 58;
      }

      else
      {
        v29 = 97;
        v28 = 65;
      }

      if (v25)
      {
        v30 = 0;
        v31 = v25 + 1;
        v32 = result - 1;
        while (1)
        {
          v33 = *v31;
          if (v33 < 0x30 || v33 >= v27)
          {
            if (v33 < 0x41 || v33 >= v28)
            {
              v35 = 0;
              if (v33 < 0x61 || v33 >= v29)
              {
                return v35;
              }

              v34 = -87;
            }

            else
            {
              v34 = -55;
            }
          }

          else
          {
            v34 = -48;
          }

          v36 = v30 * a7;
          if ((v30 * a7) >> 64 != (v30 * a7) >> 63)
          {
            return 0;
          }

          v30 = v36 - (v33 + v34);
          if (__OFSUB__(v36, (v33 + v34)))
          {
            return 0;
          }

          ++v31;
          if (!--v32)
          {
            return v30;
          }
        }
      }

      return 0;
    }

    return 0;
  }

LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
  return result;
}

uint64_t specialized MessageCenterActorBrowser.checkDeviceForRemoteIntelligence(_:)(uint64_t a1, uint64_t a2)
{
  v28[3] = &type metadata for MessageCenterEndpoint;
  v28[4] = lazy protocol witness table accessor for type MessageCenterEndpoint and conformance MessageCenterEndpoint();
  v4 = swift_allocObject();
  v28[0] = v4;
  outlined init with copy of MessageCenterEndpoint(a1, (v4 + 2));
  if (*(a2 + 152))
  {
    v5 = 0x80000002235F64B0;
  }

  else
  {
    v5 = 0xEF726573776F7242;
  }

  if ((*(a2 + 152) & 1) != 0 || v5 != 0xEF726573776F7242)
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = 0;
    if ((v6 & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  outlined init with copy of UMUserPersonProtocol(v28, v27);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v26 = v11;
    *v10 = 136315138;
    outlined init with copy of UMUserPersonProtocol(v27, &v25);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork29MessageCenterEndpointProtocol_pMd, &_s11SiriNetwork29MessageCenterEndpointProtocol_pMR);
    v12 = String.init<A>(describing:)();
    v14 = v13;
    __swift_destroy_boxed_opaque_existential_0(v27);
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v14, &v26);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_223515000, v8, v9, "checking device for remote intelligence %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x223DE38F0](v11, -1, -1);
    MEMORY[0x223DE38F0](v10, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0(v27);
  }

  v16 = v4[5];
  v17 = v4[6];
  __swift_project_boxed_opaque_existential_1(v4 + 2, v16);
  v18 = (*(v17 + 32))(v16, v17);
  v19 = specialized MessageCenterActorBrowser.deviceSupportsAppleIntelligence(_:)((v4 + 2));
  v20 = v19;
  if (v18 & 1) != 0 && (v19)
  {
    v7 = 1;
  }

  else
  {
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 67109376;
      *(v23 + 4) = v18 & 1;
      *(v23 + 8) = 1024;
      *(v23 + 10) = v20 & 1;
      _os_log_impl(&dword_223515000, v21, v22, "Device is not eligible for remote intelligence. meDevice = %{BOOL}d, supportsAI = %{BOOL}d", v23, 0xEu);
      MEMORY[0x223DE38F0](v23, -1, -1);
    }

    v7 = 0;
  }

LABEL_17:
  __swift_destroy_boxed_opaque_existential_0(v28);
  return v7;
}

uint64_t specialized MessageCenterActorBrowser.deviceSupportsAppleIntelligence(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v83[-2] - v3;
  v88 = &type metadata for MessageCenterEndpoint;
  v5 = lazy protocol witness table accessor for type MessageCenterEndpoint and conformance MessageCenterEndpoint();
  v89 = v5;
  v87[0] = swift_allocObject();
  outlined init with copy of MessageCenterEndpoint(a1, v87[0] + 16);
  __swift_project_boxed_opaque_existential_1(v87, &type metadata for MessageCenterEndpoint);
  (*(v5 + 48))(&v85, &type metadata for MessageCenterEndpoint, v5);
  LOBYTE(v6) = v85;
  if (v85 == 2)
  {
    outlined init with copy of UMUserPersonProtocol(v87, &v85);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v84 = v10;
      *v9 = 136315138;
      outlined init with copy of UMUserPersonProtocol(&v85, v83);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork29MessageCenterEndpointProtocol_pMd, &_s11SiriNetwork29MessageCenterEndpointProtocol_pMR);
      v11 = String.init<A>(describing:)();
      v13 = v12;
      __swift_destroy_boxed_opaque_existential_0(&v85);
      v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v13, &v84);

      *(v9 + 4) = v14;
      _os_log_impl(&dword_223515000, v7, v8, "Payload missing on endpoint %s. Falling back to builtin list", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x223DE38F0](v10, -1, -1);
      MEMORY[0x223DE38F0](v9, -1, -1);
    }

    else
    {

      v15 = __swift_destroy_boxed_opaque_existential_0(&v85);
    }

    MEMORY[0x28223BE20](v15);
    v80 = v87;
    if (specialized Sequence.contains(where:)(partial apply for closure #1 in MessageCenterActorBrowser.deviceSupportsAppleIntelligence(_:), (&v82 - 4), &outlined read-only object #0 of one-time initialization function for kSupportedDevices))
    {
      LOBYTE(v6) = 1;
      goto LABEL_30;
    }

    v19 = v88;
    v20 = v89;
    __swift_project_boxed_opaque_existential_1(v87, v88);
    v21 = (*(v20 + 24))(v19, v20);
    v6 = v22;
    if (!v22)
    {
      goto LABEL_30;
    }

    v23 = v21;
    v85 = v21;
    v86 = v22;
    strcpy(v83, "^iPhone(\\d+)");
    BYTE1(v83[3]) = 0;
    HIWORD(v83[3]) = -5120;
    v24 = type metadata accessor for Locale();
    __swift_storeEnumTagSinglePayload(v4, 1, 1, v24);
    v25 = lazy protocol witness table accessor for type String and conformance String();
    v80 = v25;
    v81 = v25;
    StringProtocol.range<A>(of:options:range:locale:)();
    v27 = v26;
    outlined destroy of NetworkConnectionProtocol?(v4, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
    if (v27)
    {
      v85 = v23;
      v86 = v6;
      strcpy(v83, "^iPad(\\d+)");
      HIBYTE(v83[2]) = 0;
      v83[3] = -369098752;
      __swift_storeEnumTagSinglePayload(v4, 1, 1, v24);
      v80 = v25;
      v81 = v25;
      StringProtocol.range<A>(of:options:range:locale:)();
      v29 = v28;
      outlined destroy of NetworkConnectionProtocol?(v4, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
      if ((v29 & 1) == 0)
      {
        v52 = String.subscript.getter();
        v54 = v53;
        v56 = v55;
        v58 = v57;

        v59 = MEMORY[0x223DE2130](v52, v54, v56, v58);
        v61 = v60;

        v62 = specialized Collection.dropFirst(_:)(4uLL, v59, v61);
        v66 = v65;
        if ((v62 ^ v63) >= 0x4000)
        {
          v67 = v62;
          v68 = v63;
          v69 = v64;
          v70 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5SiSg_Tg5061_ss17FixedWidthIntegerPsE_5radixxSgqd___SitcSyRd__lufcADSRys5I15VGXEfU_Si_SsTG5SiTf1cn_n(v62, v63, v64, v65, 10);
          if ((v71 & 0x100) != 0)
          {
            v72 = specialized _parseInteger<A, B>(ascii:radix:)(v67, v68, v69, v66, 10);
            v78 = v77;

            if ((v78 & 1) == 0)
            {
LABEL_26:
              v76 = v72 <= 13;
LABEL_27:
              LOBYTE(v6) = !v76;
              goto LABEL_30;
            }
          }

          else
          {
            v72 = v70;
            v73 = v71;

            if ((v73 & 1) == 0)
            {
              goto LABEL_26;
            }
          }

LABEL_25:
          LOBYTE(v6) = 0;
          goto LABEL_30;
        }
      }
    }

    else
    {
      v30 = String.subscript.getter();
      v32 = v31;
      v34 = v33;
      v36 = v35;

      v37 = MEMORY[0x223DE2130](v30, v32, v34, v36);
      v39 = v38;

      v40 = specialized Collection.dropFirst(_:)(6uLL, v37, v39);
      v44 = v43;
      if ((v40 ^ v41) >= 0x4000)
      {
        v45 = v40;
        v46 = v41;
        v47 = v42;
        v48 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5SiSg_Tg5061_ss17FixedWidthIntegerPsE_5radixxSgqd___SitcSyRd__lufcADSRys5I15VGXEfU_Si_SsTG5SiTf1cn_n(v40, v41, v42, v43, 10);
        if ((v49 & 0x100) != 0)
        {
          v50 = specialized _parseInteger<A, B>(ascii:radix:)(v45, v46, v47, v44, 10);
          v75 = v74;

          if (v75)
          {
            goto LABEL_25;
          }
        }

        else
        {
          v50 = v48;
          v51 = v49;

          if (v51)
          {
            goto LABEL_25;
          }
        }

        v76 = v50 <= 15;
        goto LABEL_27;
      }
    }

    goto LABEL_25;
  }

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 67109120;
    *(v18 + 4) = v6 & 1;
    _os_log_impl(&dword_223515000, v16, v17, "Found endpoint with Apple Intelligence support: %{BOOL}d", v18, 8u);
    MEMORY[0x223DE38F0](v18, -1, -1);
  }

LABEL_30:
  __swift_destroy_boxed_opaque_existential_0(v87);
  return v6 & 1;
}

uint64_t specialized MessageCenterEndpointBrowser.handleEndpointAdded(_:)(uint64_t a1, uint64_t a2)
{
  v2[17] = a2;
  v4 = type metadata accessor for NWEndpoint();
  v2[5] = v4;
  v2[6] = lazy protocol witness table accessor for type NWEndpoint and conformance NWEndpoint(&lazy protocol witness table cache variable for type NWEndpoint and conformance NWEndpoint, MEMORY[0x277CD8B10], &protocol conformance descriptor for NWEndpoint);
  v2[18] = __swift_allocate_boxed_opaque_existential_1(v2 + 2);
  (*(*(v4 - 8) + 16))();

  return MEMORY[0x2822009F8](specialized MessageCenterEndpointBrowser.handleEndpointAdded(_:), a2, 0);
}

uint64_t specialized MessageCenterEndpointBrowser.handleEndpointAdded(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_38_1();
  a17 = v19;
  a18 = v20;
  OUTLINED_FUNCTION_21();
  a16 = v18;
  outlined init with copy of UMUserPersonProtocol((v18 + 2), (v18 + 7));

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    a10 = swift_slowAlloc();
    *v23 = 136315394;
    v24 = MessageCenterEndpointBrowser.description.getter();
    v26 = v25;
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, &a10);

    OUTLINED_FUNCTION_47_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork29MessageCenterEndpointProtocol_pMd, &_s11SiriNetwork29MessageCenterEndpointProtocol_pMR);
    String.init<A>(describing:)();
    OUTLINED_FUNCTION_55_1();
    v27 = __swift_destroy_boxed_opaque_existential_0(v18 + 7);
    OUTLINED_FUNCTION_70_0(v27, v28, &a10);
    OUTLINED_FUNCTION_68_2();
    *(v23 + 14) = v26;
    OUTLINED_FUNCTION_16_7();
    _os_log_impl(v29, v30, v31, v32, v33, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_7_13();
    OUTLINED_FUNCTION_12();
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0(v18 + 7);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  v18[19] = Strong;
  if (Strong)
  {
    OUTLINED_FUNCTION_4_15(&async function pointer to specialized MessageCenterActorBrowser.handleEndpointFound(_:on:));
    v54 = v35;
    v36 = swift_task_alloc();
    v18[20] = v36;
    *v36 = v18;
    OUTLINED_FUNCTION_31_3(v36);
    OUTLINED_FUNCTION_26_3();

    return v40(v37, v38, v39, v40, v41, v42, v43, v44, v54, a10);
  }

  else
  {
    OUTLINED_FUNCTION_2_18(v18 + 2);
    OUTLINED_FUNCTION_26_3();

    return v47(v46, v47, v48, v49, v50, v51, v52, v53, a9, a10);
  }
}

uint64_t specialized MessageCenterEndpointBrowser.handleEndpointAdded(_:)()
{
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_11_0();
  v1 = *v0;
  OUTLINED_FUNCTION_5_1();
  *v2 = v1;

  swift_unknownObjectRelease();
  v3 = OUTLINED_FUNCTION_3_14();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

{
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_2_18((v0 + 16));

  return v1();
}

uint64_t specialized MessageCenterEndpointBrowser.handleEndpointRemoved(_:)(uint64_t a1, uint64_t a2)
{
  v2[17] = a2;
  v4 = type metadata accessor for NWEndpoint();
  v2[5] = v4;
  v2[6] = lazy protocol witness table accessor for type NWEndpoint and conformance NWEndpoint(&lazy protocol witness table cache variable for type NWEndpoint and conformance NWEndpoint, MEMORY[0x277CD8B10], &protocol conformance descriptor for NWEndpoint);
  v2[18] = __swift_allocate_boxed_opaque_existential_1(v2 + 2);
  (*(*(v4 - 8) + 16))();

  return MEMORY[0x2822009F8](specialized MessageCenterEndpointBrowser.handleEndpointRemoved(_:), a2, 0);
}

uint64_t specialized MessageCenterEndpointBrowser.handleEndpointRemoved(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_38_1();
  a17 = v19;
  a18 = v20;
  OUTLINED_FUNCTION_21();
  a16 = v18;
  outlined init with copy of UMUserPersonProtocol((v18 + 2), (v18 + 7));

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    a10 = swift_slowAlloc();
    *v23 = 136315394;
    v24 = MessageCenterEndpointBrowser.description.getter();
    v26 = v25;
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, &a10);

    OUTLINED_FUNCTION_47_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork29MessageCenterEndpointProtocol_pMd, &_s11SiriNetwork29MessageCenterEndpointProtocol_pMR);
    String.init<A>(describing:)();
    OUTLINED_FUNCTION_55_1();
    v27 = __swift_destroy_boxed_opaque_existential_0(v18 + 7);
    OUTLINED_FUNCTION_70_0(v27, v28, &a10);
    OUTLINED_FUNCTION_68_2();
    *(v23 + 14) = v26;
    OUTLINED_FUNCTION_16_7();
    _os_log_impl(v29, v30, v31, v32, v33, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_7_13();
    OUTLINED_FUNCTION_12();
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0(v18 + 7);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  v18[19] = Strong;
  if (Strong)
  {
    OUTLINED_FUNCTION_4_15(&async function pointer to specialized MessageCenterActorBrowser.handleEndpointLost(_:on:));
    v54 = v35;
    v36 = swift_task_alloc();
    v18[20] = v36;
    *v36 = v18;
    OUTLINED_FUNCTION_31_3(v36);
    OUTLINED_FUNCTION_26_3();

    return v40(v37, v38, v39, v40, v41, v42, v43, v44, v54, a10);
  }

  else
  {
    OUTLINED_FUNCTION_2_18(v18 + 2);
    OUTLINED_FUNCTION_26_3();

    return v47(v46, v47, v48, v49, v50, v51, v52, v53, a9, a10);
  }
}

uint64_t specialized MessageCenterEndpointBrowser.handleEndpointRemoved(_:)()
{
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_11_0();
  v1 = *v0;
  OUTLINED_FUNCTION_5_1();
  *v2 = v1;

  swift_unknownObjectRelease();
  v3 = OUTLINED_FUNCTION_3_14();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t specialized MessageCenterEndpointBrowser.handleEndpointChanged(_:newEndpoint:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[32] = a3;
  v6 = type metadata accessor for NWEndpoint();
  v3[5] = v6;
  v7 = lazy protocol witness table accessor for type NWEndpoint and conformance NWEndpoint(&lazy protocol witness table cache variable for type NWEndpoint and conformance NWEndpoint, MEMORY[0x277CD8B10], &protocol conformance descriptor for NWEndpoint);
  v3[6] = v7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v3 + 2);
  v9 = *(*(v6 - 8) + 16);
  (v9)(boxed_opaque_existential_1, a1, v6);
  v3[10] = v6;
  v3[11] = v7;
  v3[33] = __swift_allocate_boxed_opaque_existential_1(v3 + 7);
  v9();

  return MEMORY[0x2822009F8](specialized MessageCenterEndpointBrowser.handleEndpointChanged(_:newEndpoint:), a3, 0);
}

uint64_t specialized MessageCenterEndpointBrowser.handleEndpointChanged(_:newEndpoint:)()
{
  v22 = v0;
  outlined init with copy of UMUserPersonProtocol((v0 + 2), (v0 + 12));
  outlined init with copy of UMUserPersonProtocol((v0 + 7), (v0 + 17));
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v3 = 136315394;
    outlined init with copy of UMUserPersonProtocol((v0 + 12), (v0 + 22));
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork29MessageCenterEndpointProtocol_pMd, &_s11SiriNetwork29MessageCenterEndpointProtocol_pMR);
    v4 = String.init<A>(describing:)();
    v6 = v5;
    __swift_destroy_boxed_opaque_existential_0(v0 + 12);
    v7 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v6, &v21);

    *(v3 + 4) = v7;
    *(v3 + 12) = 2080;
    outlined init with copy of UMUserPersonProtocol((v0 + 17), (v0 + 27));
    v8 = String.init<A>(describing:)();
    v10 = v9;
    __swift_destroy_boxed_opaque_existential_0(v0 + 17);
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v10, &v21);

    *(v3 + 14) = v11;
    _os_log_impl(&dword_223515000, v1, v2, "Browser changed endpoint %s->%s", v3, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_12();
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0(v0 + 17);
    __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  v0[34] = Strong;
  if (Strong)
  {
    v13 = Strong;
    OUTLINED_FUNCTION_4_15(&async function pointer to specialized MessageCenterActorBrowser.handleEndpointChanged(_:on:));
    v20 = v14;
    v15 = swift_task_alloc();
    v0[35] = v15;
    *v15 = v0;
    v15[1] = specialized MessageCenterEndpointBrowser.handleEndpointChanged(_:newEndpoint:);
    v16 = v0[32];
    v17 = v0[33];

    return v20(v17, v16, v13);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
    OUTLINED_FUNCTION_2_18(v0 + 7);

    return v19();
  }
}

{
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_11_0();
  v1 = *v0;
  OUTLINED_FUNCTION_5_1();
  *v2 = v1;

  swift_unknownObjectRelease();
  v3 = OUTLINED_FUNCTION_3_14();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

{
  OUTLINED_FUNCTION_7_0();
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  OUTLINED_FUNCTION_2_18((v0 + 56));

  return v1();
}

uint64_t specialized MessageCenterActorBrowser.handleEndpointChanged(_:on:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[106] = a3;
  v3[105] = a2;
  v6 = type metadata accessor for NWEndpoint();
  v3[41] = v6;
  v3[42] = lazy protocol witness table accessor for type NWEndpoint and conformance NWEndpoint(&lazy protocol witness table cache variable for type NWEndpoint and conformance NWEndpoint, MEMORY[0x277CD8B10], &protocol conformance descriptor for NWEndpoint);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v3 + 38);
  (*(*(v6 - 8) + 16))(boxed_opaque_existential_1, a1, v6);
  v3[107] = lazy protocol witness table accessor for type NWEndpoint and conformance NWEndpoint(&lazy protocol witness table cache variable for type MessageCenterEndpointBrowser and conformance MessageCenterEndpointBrowser, type metadata accessor for MessageCenterEndpointBrowser, &protocol conformance descriptor for MessageCenterEndpointBrowser);

  return MEMORY[0x2822009F8](specialized MessageCenterActorBrowser.handleEndpointChanged(_:on:), a3, 0);
}

uint64_t specialized MessageCenterActorBrowser.handleEndpointChanged(_:on:)()
{
  OUTLINED_FUNCTION_40_3();
  outlined init with copy of UMUserPersonProtocol(v0 + 304, v0 + 384);
  MessageCenterEndpoint.init(_:)((v0 + 384), v0 + 344);
  *(v0 + 864) = 0;
  *(v0 + 944) = specialized MessageCenterActorBrowser.checkDeviceForRemoteIntelligence(_:)(v0 + 344, *(v0 + 848)) & 1;
  swift_getObjectType();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](specialized MessageCenterActorBrowser.handleEndpointChanged(_:on:), v2, v1);
}

{
  v32 = v0;
  v1 = v0[113];
  OUTLINED_FUNCTION_59_0();
  MessageCenterActorBrowser.addActiveEndpoint(_:to:)();
  OUTLINED_FUNCTION_20_3();
  v30 = &type metadata for MessageCenterEndpoint;
  v31 = lazy protocol witness table accessor for type MessageCenterEndpoint and conformance MessageCenterEndpoint();
  OUTLINED_FUNCTION_44_3();
  v2 = swift_allocObject();
  OUTLINED_FUNCTION_67(v2);
  MessageCenterDevice.init(actor:endpoint:)(&v28, v29, (v0 + 2));
  if (v1)
  {
    OUTLINED_FUNCTION_25_3();
    outlined destroy of NetworkConnectionProtocol?(v3, v4, v5);
    OUTLINED_FUNCTION_25_3();
    outlined destroy of NetworkConnectionProtocol?(v6, v7, v8);
    outlined destroy of MessageCenterEndpoint((v0 + 43));
    v9 = v1;
    v10 = Logger.logObject.getter();
    static os_log_type_t.default.getter();

    if (OUTLINED_FUNCTION_52_2())
    {
      OUTLINED_FUNCTION_55();
      v11 = OUTLINED_FUNCTION_30_4();
      OUTLINED_FUNCTION_69_0(5.7779e-34);
      v12 = _swift_stdlib_bridgeErrorToNSError();
      OUTLINED_FUNCTION_58_1(v12);
      OUTLINED_FUNCTION_15_5(&dword_223515000, v13, v14, "Ignoring endpoint %@");
      outlined destroy of NetworkConnectionProtocol?(v11, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      OUTLINED_FUNCTION_7_13();
      OUTLINED_FUNCTION_11();
    }

    else
    {
    }

LABEL_10:
    OUTLINED_FUNCTION_2_18(v0 + 38);

    return v27();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  v0[114] = Strong;
  if (!Strong)
  {
    outlined destroy of MessageCenterDevice((v0 + 2));
    OUTLINED_FUNCTION_25_3();
    outlined destroy of NetworkConnectionProtocol?(v21, v22, v23);
    OUTLINED_FUNCTION_25_3();
    outlined destroy of NetworkConnectionProtocol?(v24, v25, v26);
    outlined destroy of MessageCenterEndpoint((v0 + 43));
    goto LABEL_10;
  }

  swift_task_alloc();
  OUTLINED_FUNCTION_27_2();
  v0[115] = v16;
  *v16 = v17;
  v16[1] = specialized MessageCenterActorBrowser.handleEndpointChanged(_:on:);
  OUTLINED_FUNCTION_59_0();

  return MessageCenter.didFindDevice(_:for:)((v0 + 2), v18, v19);
}

{
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_11_0();
  v1 = *v0;
  OUTLINED_FUNCTION_5_1();
  *v2 = v1;

  swift_unknownObjectRelease();
  v3 = OUTLINED_FUNCTION_3_14();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

{
  OUTLINED_FUNCTION_7_0();
  outlined destroy of MessageCenterDevice(v0 + 16);
  OUTLINED_FUNCTION_25_3();
  outlined destroy of NetworkConnectionProtocol?(v1, v2, v3);
  OUTLINED_FUNCTION_25_3();
  outlined destroy of NetworkConnectionProtocol?(v4, v5, v6);
  outlined destroy of MessageCenterEndpoint(v0 + 344);
  OUTLINED_FUNCTION_2_18((v0 + 304));

  return v7();
}

{
  v20 = v0;
  v1 = v0[111];
  OUTLINED_FUNCTION_59_0();
  MessageCenterActorBrowser.addActiveIneligibleEndpoint(_:to:)();
  OUTLINED_FUNCTION_20_3();
  v18 = &type metadata for MessageCenterEndpoint;
  v19 = lazy protocol witness table accessor for type MessageCenterEndpoint and conformance MessageCenterEndpoint();
  OUTLINED_FUNCTION_44_3();
  v2 = swift_allocObject();
  OUTLINED_FUNCTION_67(v2);
  MessageCenterDevice.init(actor:endpoint:)(&v16, v17, (v0 + 20));
  if (v1)
  {
    outlined destroy of NetworkConnectionProtocol?((v0 + 53), &_s11SiriNetwork21MessageCenterEndpointVSgMd, &_s11SiriNetwork21MessageCenterEndpointVSgMR);
    outlined destroy of MessageCenterEndpoint((v0 + 43));
    v3 = v1;
    v4 = Logger.logObject.getter();
    static os_log_type_t.default.getter();

    if (OUTLINED_FUNCTION_52_2())
    {
      OUTLINED_FUNCTION_55();
      v5 = OUTLINED_FUNCTION_30_4();
      OUTLINED_FUNCTION_69_0(5.7779e-34);
      v6 = _swift_stdlib_bridgeErrorToNSError();
      OUTLINED_FUNCTION_58_1(v6);
      OUTLINED_FUNCTION_15_5(&dword_223515000, v7, v8, "Ignoring endpoint %@");
      outlined destroy of NetworkConnectionProtocol?(v5, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      OUTLINED_FUNCTION_7_13();
      OUTLINED_FUNCTION_11();
    }

    else
    {
    }

LABEL_10:
    OUTLINED_FUNCTION_2_18(v0 + 38);

    return v15();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  v0[116] = Strong;
  if (!Strong)
  {
    outlined destroy of MessageCenterDevice((v0 + 20));
    outlined destroy of NetworkConnectionProtocol?((v0 + 53), &_s11SiriNetwork21MessageCenterEndpointVSgMd, &_s11SiriNetwork21MessageCenterEndpointVSgMR);
    outlined destroy of MessageCenterEndpoint((v0 + 43));
    goto LABEL_10;
  }

  swift_task_alloc();
  OUTLINED_FUNCTION_27_2();
  v0[117] = v10;
  *v10 = v11;
  v10[1] = specialized MessageCenterActorBrowser.handleEndpointChanged(_:on:);
  OUTLINED_FUNCTION_59_0();

  return MessageCenter.didLoseDevice(_:for:)((v0 + 20), v12, v13);
}

{
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_11_0();
  v1 = *v0;
  OUTLINED_FUNCTION_5_1();
  *v2 = v1;

  swift_unknownObjectRelease();
  v3 = OUTLINED_FUNCTION_3_14();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

{
  OUTLINED_FUNCTION_7_0();
  outlined destroy of MessageCenterDevice(v0 + 160);
  outlined destroy of NetworkConnectionProtocol?(v0 + 424, &_s11SiriNetwork21MessageCenterEndpointVSgMd, &_s11SiriNetwork21MessageCenterEndpointVSgMR);
  outlined destroy of MessageCenterEndpoint(v0 + 344);
  OUTLINED_FUNCTION_2_18((v0 + 304));

  return v1();
}

uint64_t specialized MessageCenterActorBrowser.handleEndpointChanged(_:on:)(uint64_t a1)
{
  v2 = v1[106];
  v3 = v1[105];
  v1[109] = *(v3 + 192);
  v1[110] = *(v3 + 200);
  return OUTLINED_FUNCTION_0_31(a1, v2);
}

uint64_t specialized MessageCenterActorBrowser.handleEndpointChanged(_:on:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_38_1();
  a17 = v19;
  a18 = v20;
  OUTLINED_FUNCTION_21();
  a16 = v18;
  swift_beginAccess();

  OUTLINED_FUNCTION_32();
  v21 = specialized Dictionary.subscript.getter();

  if (!v21)
  {
    *(v18 + 456) = 0;
    *(v18 + 424) = 0u;
    *(v18 + 440) = 0u;
    v22 = *(v18 + 864);
    goto LABEL_8;
  }

  v22 = *(v18 + 864);
  *(swift_task_alloc() + 16) = v18 + 344;
  specialized Sequence.first(where:)(partial apply for closure #1 in MessageCenterActorBrowser.handleEndpointChanged(_:on:), v21, v18 + 424);
  *(v18 + 888) = v22;

  if (!*(v18 + 448))
  {
LABEL_8:
    *(v18 + 896) = v22;
    goto LABEL_12;
  }

  if (*(v18 + 944) == 1)
  {
    outlined destroy of NetworkConnectionProtocol?(v18 + 424, &_s11SiriNetwork21MessageCenterEndpointVSgMd, &_s11SiriNetwork21MessageCenterEndpointVSgMR);
    outlined destroy of MessageCenterEndpoint(v18 + 344);
    OUTLINED_FUNCTION_2_18((v18 + 304));
    OUTLINED_FUNCTION_26_3();

    return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10);
  }

  outlined init with copy of MessageCenterEndpoint(v18 + 344, v18 + 584);
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = OUTLINED_FUNCTION_55();
    v35 = OUTLINED_FUNCTION_54();
    a9 = v35;
    *v34 = 136315138;
    MessageCenterEndpoint.description.getter();
    OUTLINED_FUNCTION_55_1();
    v36 = outlined destroy of MessageCenterEndpoint(v18 + 584);
    OUTLINED_FUNCTION_70_0(v36, v37, &a9);
    OUTLINED_FUNCTION_68_2();
    *(v34 + 4) = v18 + 584;
    OUTLINED_FUNCTION_16_7();
    _os_log_impl(v38, v39, v40, v41, v42, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v35);
    OUTLINED_FUNCTION_7_13();
    OUTLINED_FUNCTION_12();
  }

  else
  {

    outlined destroy of MessageCenterEndpoint(v18 + 584);
  }

LABEL_12:
  OUTLINED_FUNCTION_26_3();

  return MEMORY[0x2822009F8](v43, v44, v45);
}

{
  OUTLINED_FUNCTION_38_1();
  a17 = v19;
  a18 = v20;
  OUTLINED_FUNCTION_21();
  a16 = v18;
  swift_beginAccess();

  OUTLINED_FUNCTION_32();
  v21 = specialized Dictionary.subscript.getter();

  if (v21)
  {
    v22 = *(v18 + 896);
    *(swift_task_alloc() + 16) = v18 + 344;
    specialized Sequence.first(where:)(partial apply for closure #1 in MessageCenterActorBrowser.handleEndpointChanged(_:on:), v21, v18 + 464);
    *(v18 + 904) = v22;

    if (*(v18 + 488) && *(v18 + 944) == 1)
    {
      outlined init with copy of MessageCenterEndpoint(v18 + 344, v18 + 504);
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = OUTLINED_FUNCTION_55();
        v26 = OUTLINED_FUNCTION_54();
        a9 = v26;
        *v25 = 136315138;
        MessageCenterEndpoint.description.getter();
        OUTLINED_FUNCTION_55_1();
        v27 = outlined destroy of MessageCenterEndpoint(v18 + 504);
        OUTLINED_FUNCTION_70_0(v27, v28, &a9);
        OUTLINED_FUNCTION_68_2();
        *(v25 + 4) = v18 + 504;
        OUTLINED_FUNCTION_16_7();
        _os_log_impl(v29, v30, v31, v32, v33, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v26);
        OUTLINED_FUNCTION_7_13();
        OUTLINED_FUNCTION_12();
      }

      else
      {

        outlined destroy of MessageCenterEndpoint(v18 + 504);
      }

      OUTLINED_FUNCTION_26_3();

      return MEMORY[0x2822009F8](v43, v44, v45);
    }
  }

  else
  {
    *(v18 + 496) = 0;
    *(v18 + 464) = 0u;
    *(v18 + 480) = 0u;
  }

  outlined destroy of NetworkConnectionProtocol?(v18 + 464, &_s11SiriNetwork21MessageCenterEndpointVSgMd, &_s11SiriNetwork21MessageCenterEndpointVSgMR);
  outlined destroy of NetworkConnectionProtocol?(v18 + 424, &_s11SiriNetwork21MessageCenterEndpointVSgMd, &_s11SiriNetwork21MessageCenterEndpointVSgMR);
  outlined destroy of MessageCenterEndpoint(v18 + 344);
  OUTLINED_FUNCTION_2_18((v18 + 304));
  OUTLINED_FUNCTION_26_3();

  return v35(v34, v35, v36, v37, v38, v39, v40, v41, a9, a10);
}

uint64_t specialized MessageCenterActorBrowser.handleEndpointLost(_:on:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[44] = a2;
  v3[45] = a3;
  v6 = type metadata accessor for NWEndpoint();
  v3[23] = v6;
  v3[24] = lazy protocol witness table accessor for type NWEndpoint and conformance NWEndpoint(&lazy protocol witness table cache variable for type NWEndpoint and conformance NWEndpoint, MEMORY[0x277CD8B10], &protocol conformance descriptor for NWEndpoint);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v3 + 20);
  (*(*(v6 - 8) + 16))(boxed_opaque_existential_1, a1, v6);
  v3[46] = lazy protocol witness table accessor for type NWEndpoint and conformance NWEndpoint(&lazy protocol witness table cache variable for type MessageCenterEndpointBrowser and conformance MessageCenterEndpointBrowser, type metadata accessor for MessageCenterEndpointBrowser, &protocol conformance descriptor for MessageCenterEndpointBrowser);

  return MEMORY[0x2822009F8](specialized MessageCenterActorBrowser.handleEndpointLost(_:on:), a3, 0);
}

uint64_t specialized MessageCenterActorBrowser.handleEndpointLost(_:on:)()
{
  OUTLINED_FUNCTION_40_3();
  v1 = v0[45];
  v2 = v0[23];
  v3 = v0[24];
  v4 = __swift_project_boxed_opaque_existential_1(v0 + 20, v2);
  LOBYTE(v2) = specialized MessageCenterActorBrowser.checkDeviceForRemoteIntelligence(_:)(v4, v1, v2, v3);
  swift_getObjectType();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v2)
  {
    v7 = specialized MessageCenterActorBrowser.handleEndpointLost(_:on:);
  }

  else
  {
    v7 = specialized MessageCenterActorBrowser.handleEndpointLost(_:on:);
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

{
  v15 = v0;
  *(v0 + 392) = OBJC_IVAR____TtC11SiriNetwork25MessageCenterActorBrowser_activeEndpoints;
  swift_beginAccess();

  v1 = specialized Dictionary.subscript.getter();

  if (!v1)
  {
LABEL_8:
    OUTLINED_FUNCTION_2_18((v0 + 160));
    OUTLINED_FUNCTION_64_0();

    __asm { BRAA            X1, X16 }
  }

  *(swift_task_alloc() + 16) = v0 + 160;
  specialized Sequence.first(where:)(partial apply for closure #1 in MessageCenterActorBrowser.handleEndpointLost(_:on:), v1, v0 + 240);

  if (!*(v0 + 264))
  {
    outlined destroy of NetworkConnectionProtocol?(v0 + 240, &_s11SiriNetwork21MessageCenterEndpointVSgMd, &_s11SiriNetwork21MessageCenterEndpointVSgMR);
    goto LABEL_8;
  }

  v2 = *(v0 + 256);
  *(v0 + 200) = *(v0 + 240);
  *(v0 + 216) = v2;
  *(v0 + 232) = *(v0 + 272);
  OUTLINED_FUNCTION_20_3();
  v13 = &type metadata for MessageCenterEndpoint;
  v14 = lazy protocol witness table accessor for type MessageCenterEndpoint and conformance MessageCenterEndpoint();
  OUTLINED_FUNCTION_44_3();
  v3 = swift_allocObject();
  OUTLINED_FUNCTION_66_1(v3);
  MessageCenterDevice.init(actor:endpoint:)(&v11, v12, v0 + 16);
  OUTLINED_FUNCTION_64_0();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

{
  OUTLINED_FUNCTION_29();
  swift_beginAccess();
  v1 = OUTLINED_FUNCTION_32();
  specialized Dictionary._Variant.removeValue(forKey:)(v1, v2);
  swift_endAccess();

  OUTLINED_FUNCTION_2_18((v0 + 160));

  return v3();
}

{
  OUTLINED_FUNCTION_29();
  swift_beginAccess();
  v1 = OUTLINED_FUNCTION_32();
  specialized Dictionary._Variant.removeValue(forKey:)(v1, v2);
  swift_endAccess();

  v3 = swift_task_alloc();
  v0[52] = v3;
  *v3 = v0;
  v3[1] = specialized MessageCenterActorBrowser.handleEndpointLost(_:on:);
  v4 = v0[47];
  v5 = v0[48];

  return MessageCenterActorBrowser.handleActorInvalidation(error:for:)(0, v4, v5);
}

{
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_11_0();
  v2 = *(v1 + 360);
  v3 = *v0;
  OUTLINED_FUNCTION_5_1();
  *v4 = v3;

  return MEMORY[0x2822009F8](specialized MessageCenterActorBrowser.handleEndpointLost(_:on:), v2, 0);
}

{
  OUTLINED_FUNCTION_7_0();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[53] = Strong;
  if (Strong)
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_27_2();
    v0[54] = v2;
    *v2 = v3;
    v2[1] = specialized MessageCenterActorBrowser.handleEndpointLost(_:on:);
    v4 = v0[47];
    v5 = v0[48];

    return MessageCenter.didLoseDevice(_:for:)((v0 + 2), v4, v5);
  }

  else
  {
    outlined destroy of MessageCenterDevice((v0 + 2));
    outlined destroy of MessageCenterEndpoint((v0 + 25));
    OUTLINED_FUNCTION_2_18(v0 + 20);

    return v7();
  }
}

{
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_11_0();
  v1 = *v0;
  OUTLINED_FUNCTION_5_1();
  *v2 = v1;

  swift_unknownObjectRelease();
  v3 = OUTLINED_FUNCTION_3_14();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

{
  OUTLINED_FUNCTION_7_0();
  outlined destroy of MessageCenterDevice(v0 + 16);
  outlined destroy of MessageCenterEndpoint(v0 + 200);
  OUTLINED_FUNCTION_2_18((v0 + 160));

  return v1();
}

uint64_t specialized MessageCenterActorBrowser.handleEndpointLost(_:on:)(uint64_t a1)
{
  v3 = v1[44];
  v2 = v1[45];
  v1[47] = *(v3 + 192);
  v1[48] = *(v3 + 200);
  return OUTLINED_FUNCTION_0_31(a1, v2);
}

{
  v3 = v1[44];
  v2 = v1[45];
  v1[50] = *(v3 + 192);
  v1[51] = *(v3 + 200);
  return OUTLINED_FUNCTION_0_31(a1, v2);
}

uint64_t specialized MessageCenterActorBrowser.handleEndpointFound(_:on:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[35] = a2;
  v3[36] = a3;
  v5 = type metadata accessor for NWEndpoint();
  v3[23] = v5;
  v3[24] = lazy protocol witness table accessor for type NWEndpoint and conformance NWEndpoint(&lazy protocol witness table cache variable for type NWEndpoint and conformance NWEndpoint, MEMORY[0x277CD8B10], &protocol conformance descriptor for NWEndpoint);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v3 + 20);
  (*(*(v5 - 8) + 16))(boxed_opaque_existential_1, a1, v5);
  lazy protocol witness table accessor for type NWEndpoint and conformance NWEndpoint(&lazy protocol witness table cache variable for type MessageCenterEndpointBrowser and conformance MessageCenterEndpointBrowser, type metadata accessor for MessageCenterEndpointBrowser, &protocol conformance descriptor for MessageCenterEndpointBrowser);
  swift_getObjectType();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](specialized MessageCenterActorBrowser.handleEndpointFound(_:on:), v8, v7);
}

uint64_t specialized MessageCenterActorBrowser.handleEndpointFound(_:on:)(uint64_t a1)
{
  v3 = v1[35];
  v2 = v1[36];
  v1[37] = *(v3 + 192);
  v1[38] = *(v3 + 200);
  return OUTLINED_FUNCTION_0_31(a1, v2);
}

uint64_t specialized MessageCenterActorBrowser.handleEndpointFound(_:on:)()
{
  v41 = v0;
  outlined init with copy of UMUserPersonProtocol((v0 + 20), (v0 + 30));
  MessageCenterEndpoint.init(_:)(v0 + 30, (v0 + 25));
  OUTLINED_FUNCTION_20_3();
  v40[3] = &type metadata for MessageCenterEndpoint;
  v40[4] = lazy protocol witness table accessor for type MessageCenterEndpoint and conformance MessageCenterEndpoint();
  OUTLINED_FUNCTION_44_3();
  v1 = swift_allocObject();
  OUTLINED_FUNCTION_66_1(v1);
  MessageCenterDevice.init(actor:endpoint:)(&v36, v40, (v0 + 2));
  v4 = specialized MessageCenterActorBrowser.checkDeviceForRemoteIntelligence(_:)((v0 + 25), v0[36]);
  v5 = OBJC_IVAR____TtC11SiriNetwork25MessageCenterActorBrowser_logger;

  v6 = Logger.logObject.getter();
  static os_log_type_t.info.getter();
  OUTLINED_FUNCTION_43_2();

  v7 = OUTLINED_FUNCTION_52_2();
  if ((v4 & 1) == 0)
  {
    if (v7)
    {
      v26 = OUTLINED_FUNCTION_55();
      v27 = OUTLINED_FUNCTION_54();
      v40[0] = v27;
      *(v26 + 4) = OUTLINED_FUNCTION_65_1(4.8149e-34, v27, v28, v29, v30, v31, v32, v33, v34, v36, v37, v38, v39);
      OUTLINED_FUNCTION_51_2(&dword_223515000, v35, v5, "Endpoint for persona %s does not support remote intelligence");
      __swift_destroy_boxed_opaque_existential_0(v27);
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_7_13();
    }

    MessageCenterActorBrowser.addActiveIneligibleEndpoint(_:to:)();
LABEL_15:
    outlined destroy of MessageCenterDevice((v0 + 2));
    outlined destroy of MessageCenterEndpoint((v0 + 25));
    OUTLINED_FUNCTION_2_18(v0 + 20);
    OUTLINED_FUNCTION_64_0();

    __asm { BRAA            X1, X16 }
  }

  if (v7)
  {
    v8 = OUTLINED_FUNCTION_55();
    v9 = OUTLINED_FUNCTION_54();
    v40[0] = v9;
    *(v8 + 4) = OUTLINED_FUNCTION_65_1(4.8149e-34, v9, v10, v11, v12, v13, v14, v15, v16, v36, v37, v38, v39);
    OUTLINED_FUNCTION_51_2(&dword_223515000, v17, v5, "Endpoint created for persona %s");
    __swift_destroy_boxed_opaque_existential_0(v9);
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_7_13();
  }

  MessageCenterActorBrowser.addActiveEndpoint(_:to:)();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[39] = Strong;
  if (!Strong)
  {
    goto LABEL_15;
  }

  swift_task_alloc();
  OUTLINED_FUNCTION_27_2();
  v0[40] = v19;
  *v19 = v20;
  v19[1] = specialized MessageCenterActorBrowser.handleEndpointFound(_:on:);
  OUTLINED_FUNCTION_64_0();

  return MessageCenter.didFindDevice(_:for:)(v21, v22, v23);
}

{
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_11_0();
  v1 = *v0;
  OUTLINED_FUNCTION_5_1();
  *v2 = v1;

  swift_unknownObjectRelease();
  v3 = OUTLINED_FUNCTION_3_14();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

unint64_t lazy protocol witness table accessor for type MessageCenterEndpoint and conformance MessageCenterEndpoint()
{
  result = lazy protocol witness table cache variable for type MessageCenterEndpoint and conformance MessageCenterEndpoint;
  if (!lazy protocol witness table cache variable for type MessageCenterEndpoint and conformance MessageCenterEndpoint)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MessageCenterEndpoint and conformance MessageCenterEndpoint);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MessageCenterEndpoint and conformance MessageCenterEndpoint;
  if (!lazy protocol witness table cache variable for type MessageCenterEndpoint and conformance MessageCenterEndpoint)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MessageCenterEndpoint and conformance MessageCenterEndpoint);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MessageCenterEndpoint and conformance MessageCenterEndpoint;
  if (!lazy protocol witness table cache variable for type MessageCenterEndpoint and conformance MessageCenterEndpoint)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MessageCenterEndpoint and conformance MessageCenterEndpoint);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Substring and conformance Substring()
{
  result = lazy protocol witness table cache variable for type Substring and conformance Substring;
  if (!lazy protocol witness table cache variable for type Substring and conformance Substring)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Substring and conformance Substring);
  }

  return result;
}

uint64_t outlined init with copy of UMUserPersonProtocol(uint64_t a1, uint64_t a2)
{
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 32) = *(a1 + 32);
  OUTLINED_FUNCTION_13_4();
  (*v3)(a2);
  return a2;
}

unint64_t lazy protocol witness table accessor for type MessageCenterEndpointPayload and conformance MessageCenterEndpointPayload()
{
  result = lazy protocol witness table cache variable for type MessageCenterEndpointPayload and conformance MessageCenterEndpointPayload;
  if (!lazy protocol witness table cache variable for type MessageCenterEndpointPayload and conformance MessageCenterEndpointPayload)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MessageCenterEndpointPayload and conformance MessageCenterEndpointPayload);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AdoptPersonaExecutionStrategy.AdoptPersonaExecutionStrategyError(_BYTE *result, unsigned int a2, unsigned int a3)
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

id OUTLINED_FUNCTION_69_0(float a1)
{
  *v2 = a1;

  return v1;
}

uint64_t (*MessageCenterProtocol.errorDelegate.modify(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = MessageCenterProtocol.errorDelegate.modify(v2);
  return MessageCenterProtocol.errorDelegate.modify;
}

{
  *a1 = 0;
  a1[1] = 0;
  return MessageCenterProtocol.errorDelegate.modify;
}

void MessageCenterProtocol.errorDelegate.modify(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t MessageCenterProtocol.instrumentationEventStream.getter@<X0>(uint64_t a1@<X8>)
{
  return MessageCenterProtocol.instrumentationEventStream.getter(a1);
}

{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy11SiriNetwork26MessageCenterEventProtocol_pGMd, &_sScSy11SiriNetwork26MessageCenterEventProtocol_pGMR);

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v2);
}

uint64_t MessageCenterProtocol.sendMessage(_:toSiriSharedUserId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = swift_task_alloc();
  *(v5 + 16) = v6;
  *v6 = v5;
  v6[1] = dispatch thunk of MessageCenterEndpointBrowseDelegate.browser(_:didLoseEndpoint:);

  return MessageCenterProtocol.sendMessage(_:toSiriSharedUserId:)();
}

uint64_t specialized MessageCenterProtocol.sendMessage(_:toSiriSharedUserId:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = dispatch thunk of MessageCenterEndpointBrowseDelegate.browser(_:didLoseEndpoint:);

  return MessageCenter.sendMessage(_:toSiriSharedUserId:timeout:)();
}

uint64_t MessageCenterProtocol.sendMessage(_:toSiriSharedUserId:)()
{
  OUTLINED_FUNCTION_38_1();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_9_9();
  v18 = OUTLINED_FUNCTION_70_1(v0, v1, v2, v3, v4) + 104;
  OUTLINED_FUNCTION_57_0();
  v19 = v5 + *v5;
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_34(v6);
  *v7 = v8;
  v7[1] = dispatch thunk of MessageCenterEndpointBrowseDelegate.browser(_:didLoseEndpoint:);
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_26_3();

  return v14(v9, v10, v11, v12, v13, v14, v15, v16, v18, v19);
}

uint64_t MessageCenterProtocol.sendMessage(_:toSiriSharedUserId:timeout:)()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = dispatch thunk of MessageCenterEndpointBrowseDelegate.browser(_:didLoseEndpoint:);

  return MessageCenterProtocol.sendMessage(_:toSiriSharedUserId:timeout:)();
}

uint64_t MessageCenterProtocol.sendMessage(_:toPersona:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = swift_task_alloc();
  *(v5 + 16) = v6;
  *v6 = v5;
  v6[1] = dispatch thunk of MessageCenterEndpointBrowseDelegate.browser(_:didLoseEndpoint:);

  return MessageCenterProtocol.sendMessage(_:toPersona:)();
}

uint64_t specialized MessageCenterProtocol.sendMessage(_:toPersona:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = dispatch thunk of MessageCenterEndpointBrowseDelegate.browser(_:didLoseEndpoint:);

  return MessageCenter.sendMessage(_:toPersona:timeout:)();
}

uint64_t MessageCenterProtocol.sendMessage(_:toPersona:)()
{
  OUTLINED_FUNCTION_38_1();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_9_9();
  v18 = OUTLINED_FUNCTION_70_1(v0, v1, v2, v3, v4) + 120;
  OUTLINED_FUNCTION_57_0();
  v19 = v5 + *v5;
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_34(v6);
  *v7 = v8;
  v7[1] = dispatch thunk of MessageCenterEndpointBrowseDelegate.browser(_:didLoseEndpoint:);
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_26_3();

  return v14(v9, v10, v11, v12, v13, v14, v15, v16, v18, v19);
}

uint64_t MessageCenterProtocol.sendMessage(_:toPersona:timeout:)()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = dispatch thunk of MessageCenterEndpointBrowseDelegate.browser(_:didLoseEndpoint:);

  return MessageCenterProtocol.sendMessage(_:toSiriSharedUserId:timeout:)();
}

uint64_t MessageCenterProtocol.sendMessage(_:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = dispatch thunk of MessageCenterEndpointBrowseDelegate.browser(_:didLoseEndpoint:);

  return MessageCenterProtocol.sendMessage(_:to:)();
}

uint64_t specialized MessageCenterProtocol.sendMessage(_:to:)(uint64_t a1, uint64_t a2)
{
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = dispatch thunk of MessageCenterEndpointBrowseDelegate.browser(_:didLoseEndpoint:);

  return MessageCenter.sendMessage(_:to:timeout:)();
}

uint64_t MessageCenterProtocol.sendMessage(_:to:)()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_13_5(v0, v1, v2, v3);
  OUTLINED_FUNCTION_10_6();
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_34(v4);
  *v5 = v6;
  v5[1] = dispatch thunk of MessageCenterEndpointBrowseDelegate.browser(_:didLoseEndpoint:);
  v7 = OUTLINED_FUNCTION_7_14();

  return v8(v7);
}

uint64_t MessageCenterProtocol.sendMessage(_:to:timeout:)()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = dispatch thunk of MessageCenterEndpointBrowseDelegate.browser(_:didLoseEndpoint:);

  return MessageCenterProtocol.sendMessage(_:to:timeout:)();
}

uint64_t MessageCenterProtocol.reset()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = dispatch thunk of MessageCenterEndpointBrowseDelegate.browser(_:didLoseEndpoint:);

  return MessageCenterProtocol.reset()();
}

uint64_t key path setter for MessageCenterProtocol.instrumentationEventStream : <A>A(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy11SiriNetwork26MessageCenterEventProtocol_pGSgMd, &_sScSy11SiriNetwork26MessageCenterEventProtocol_pGSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - v3;
  outlined init with copy of AsyncStream<MessageCenterEventProtocol>?(a1, &v6 - v3, &_sScSy11SiriNetwork26MessageCenterEventProtocol_pGSgMd, &_sScSy11SiriNetwork26MessageCenterEventProtocol_pGSgMR);
  return MessageCenterProtocol.instrumentationEventStream.setter(v4);
}

void (*MessageCenterProtocol.instrumentationEventStream.modify(void **a1))(uint64_t a1, char a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy11SiriNetwork26MessageCenterEventProtocol_pGSgMd, &_sScSy11SiriNetwork26MessageCenterEventProtocol_pGSgMR);
  OUTLINED_FUNCTION_11_1(v2);
  v4 = *(v3 + 64);
  *a1 = __swift_coroFrameAllocStub(v4);
  v5 = __swift_coroFrameAllocStub(v4);
  a1[1] = v5;
  MessageCenterProtocol.instrumentationEventStream.getter(v5);
  return MessageCenterProtocol.instrumentationEventStream.modify;
}

void MessageCenterProtocol.instrumentationEventStream.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (a2)
  {
    outlined init with copy of AsyncStream<MessageCenterEventProtocol>?(*(a1 + 8), v2, &_sScSy11SiriNetwork26MessageCenterEventProtocol_pGSgMd, &_sScSy11SiriNetwork26MessageCenterEventProtocol_pGSgMR);
    outlined destroy of AsyncStream<MessageCenterEventProtocol>?(v2, &_sScSy11SiriNetwork26MessageCenterEventProtocol_pGSgMd, &_sScSy11SiriNetwork26MessageCenterEventProtocol_pGSgMR);
  }

  outlined destroy of AsyncStream<MessageCenterEventProtocol>?(v3, &_sScSy11SiriNetwork26MessageCenterEventProtocol_pGSgMd, &_sScSy11SiriNetwork26MessageCenterEventProtocol_pGSgMR);
  free(v3);

  free(v2);
}

SiriNetwork::MessageCenter::MessageCenterApplicationType_optional __swiftcall MessageCenter.MessageCenterApplicationType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of MessageCenter.MessageCenterApplicationType.init(rawValue:), v3);

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

  *v4 = v7;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance MessageCenter.MessageCenterApplicationType@<X0>(void *a1@<X8>)
{
  result = MessageCenter.MessageCenterApplicationType.rawValue.getter();
  *a1 = 0xD000000000000018;
  a1[1] = v3;
  return result;
}

uint64_t one-time initialization function for actorSystem()
{
  v0 = type metadata accessor for NWListener.Service();
  v1 = OUTLINED_FUNCTION_11_1(v0);
  MEMORY[0x28223BE20](v1);
  NWListener.Service.init(applicationService:)();
  type metadata accessor for NWParameters();
  static NWParameters.applicationService.getter();
  v2 = type metadata accessor for NWActorSystem();
  swift_allocObject();
  OUTLINED_FUNCTION_14_3();
  result = NWActorSystem.init(service:parameters:)();
  qword_281327350 = v2;
  unk_281327358 = &protocol witness table for NWActorSystem;
  static MessageCenter.actorSystem[0] = result;
  return result;
}

uint64_t key path getter for MessageCenter.messageDelegate : MessageCenter@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 168);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t key path setter for MessageCenter.messageDelegate : MessageCenter(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 168) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t MessageCenter.messageDelegate.setter()
{
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_95(v1 + 160, v3);
  *(v1 + 168) = v0;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*MessageCenter.messageDelegate.modify(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[5] = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = *(v1 + 168);
  v3[3] = Strong;
  v3[4] = v5;
  return MessageCenter.messageDelegate.modify;
}

uint64_t key path getter for MessageCenter.errorDelegate : MessageCenter@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 184);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t key path setter for MessageCenter.errorDelegate : MessageCenter(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 184) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t MessageCenter.errorDelegate.setter()
{
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_95(v1 + 176, v3);
  *(v1 + 184) = v0;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*MessageCenter.errorDelegate.modify(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[5] = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = *(v1 + 184);
  v3[3] = Strong;
  v3[4] = v5;
  return MessageCenter.errorDelegate.modify;
}

uint64_t MessageCenter.init(_:)(char *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV15BufferingPolicyOy11SiriNetwork26MessageCenterEventProtocol_p__GMd, &_sScS12ContinuationV15BufferingPolicyOy11SiriNetwork26MessageCenterEventProtocol_p__GMR);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v29 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy11SiriNetwork26MessageCenterEventProtocol_pG6stream_ScS12ContinuationVyAaB_p_G12continuationtMd, &_sScSy11SiriNetwork26MessageCenterEventProtocol_pG6stream_ScS12ContinuationVyAaB_p_G12continuationtMR);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v29 - v12;
  v14 = *a1;
  swift_defaultActor_initialize();
  *(v2 + 144) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + 168) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + 184) = 0;
  swift_unknownObjectWeakInit();
  v15 = OBJC_IVAR____TtC11SiriNetwork13MessageCenter_logger;
  if (one-time initialization token for messageCenter != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  v17 = __swift_project_value_buffer(v16, static Logger.messageCenter);
  (*(*(v16 - 8) + 16))(v2 + v15, v17, v16);
  *(v2 + OBJC_IVAR____TtC11SiriNetwork13MessageCenter_started) = 0;
  v18 = OBJC_IVAR____TtC11SiriNetwork13MessageCenter_registeredMessages;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork23MessageCenterMessagable_pXpMd, &_s11SiriNetwork23MessageCenterMessagable_pXpMR);
  *(v2 + v18) = Dictionary.init(dictionaryLiteral:)();
  *(v2 + 152) = v14;
  type metadata accessor for MessageCenterActorBrowser(0);
  swift_allocObject();
  *(v2 + 112) = MessageCenterActorBrowser.init(browserType:usePersona:)(0, 1);
  type metadata accessor for MessageCenterActorListenerPublisher(0);
  swift_allocObject();
  v19 = MessageCenterActorListenerPublisher.init()();
  v20 = lazy protocol witness table accessor for type MessageCenter and conformance MessageCenter(&lazy protocol witness table cache variable for type MessageCenterActorListenerPublisher and conformance MessageCenterActorListenerPublisher, type metadata accessor for MessageCenterActorListenerPublisher);
  *(v2 + 120) = v19;
  *(v2 + 128) = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork26MessageCenterEventProtocol_pMd, &_s11SiriNetwork26MessageCenterEventProtocol_pMR);
  (*(v5 + 104))(v7, *MEMORY[0x277D85778], v4);
  static AsyncStream.makeStream(of:bufferingPolicy:)();
  (*(v5 + 8))(v7, v4);
  v21 = OBJC_IVAR____TtC11SiriNetwork13MessageCenter_instrumentationEventStream;
  outlined init with copy of AsyncStream<MessageCenterEventProtocol>?(v13, v11, &_sScSy11SiriNetwork26MessageCenterEventProtocol_pG6stream_ScS12ContinuationVyAaB_p_G12continuationtMd, &_sScSy11SiriNetwork26MessageCenterEventProtocol_pG6stream_ScS12ContinuationVyAaB_p_G12continuationtMR);
  v22 = *(v8 + 48);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy11SiriNetwork26MessageCenterEventProtocol_pGMd, &_sScSy11SiriNetwork26MessageCenterEventProtocol_pGMR);
  v24 = *(v23 - 8);
  (*(v24 + 32))(v2 + v21, v11, v23);
  __swift_storeEnumTagSinglePayload(v2 + v21, 0, 1, v23);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy11SiriNetwork26MessageCenterEventProtocol_p_GMd, &_sScS12ContinuationVy11SiriNetwork26MessageCenterEventProtocol_p_GMR);
  v26 = *(v25 - 8);
  (*(v26 + 8))(&v11[v22], v25);
  v27 = OBJC_IVAR____TtC11SiriNetwork13MessageCenter_continuation;
  outlined init with take of (stream: AsyncStream<MessageCenterEventProtocol>, continuation: AsyncStream<MessageCenterEventProtocol>.Continuation)(v13, v11);
  (*(v26 + 32))(v2 + v27, &v11[*(v8 + 48)], v25);
  __swift_storeEnumTagSinglePayload(v2 + v27, 0, 1, v25);
  (*(v24 + 8))(v11, v23);
  return v2;
}

uint64_t MessageCenter.deinit()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy11SiriNetwork26MessageCenterEventProtocol_p_GSgMd, &_sScS12ContinuationVy11SiriNetwork26MessageCenterEventProtocol_p_GSgMR);
  v3 = OUTLINED_FUNCTION_11_1(v2);
  MEMORY[0x28223BE20](v3);
  v5 = &v15 - v4;
  v6 = OBJC_IVAR____TtC11SiriNetwork13MessageCenter_continuation;
  outlined init with copy of AsyncStream<MessageCenterEventProtocol>?(v1 + OBJC_IVAR____TtC11SiriNetwork13MessageCenter_continuation, &v15 - v4, &_sScS12ContinuationVy11SiriNetwork26MessageCenterEventProtocol_p_GSgMd, &_sScS12ContinuationVy11SiriNetwork26MessageCenterEventProtocol_p_GSgMR);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy11SiriNetwork26MessageCenterEventProtocol_p_GMd, &_sScS12ContinuationVy11SiriNetwork26MessageCenterEventProtocol_p_GMR);
  v8 = OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_66_2(v8, v9, v7);
  if (v10)
  {
    outlined destroy of AsyncStream<MessageCenterEventProtocol>?(v5, &_sScS12ContinuationVy11SiriNetwork26MessageCenterEventProtocol_p_GSgMd, &_sScS12ContinuationVy11SiriNetwork26MessageCenterEventProtocol_p_GSgMR);
  }

  else
  {
    AsyncStream.Continuation.finish()();
    OUTLINED_FUNCTION_13_4();
    (*(v11 + 8))(v5, v7);
  }

  swift_unknownObjectRelease();
  outlined destroy of weak ConnectionProviderDelegate?(v1 + 136);
  outlined destroy of weak ConnectionProviderDelegate?(v1 + 160);
  outlined destroy of weak ConnectionProviderDelegate?(v1 + 176);
  v12 = OBJC_IVAR____TtC11SiriNetwork13MessageCenter_logger;
  type metadata accessor for Logger();
  OUTLINED_FUNCTION_13_4();
  (*(v13 + 8))(v1 + v12);

  outlined destroy of AsyncStream<MessageCenterEventProtocol>?(v1 + OBJC_IVAR____TtC11SiriNetwork13MessageCenter_instrumentationEventStream, &_sScSy11SiriNetwork26MessageCenterEventProtocol_pGSgMd, &_sScSy11SiriNetwork26MessageCenterEventProtocol_pGSgMR);
  outlined destroy of AsyncStream<MessageCenterEventProtocol>?(v1 + v6, &_sScS12ContinuationVy11SiriNetwork26MessageCenterEventProtocol_p_GSgMd, &_sScS12ContinuationVy11SiriNetwork26MessageCenterEventProtocol_p_GSgMR);
  swift_defaultActor_destroy();
  return v1;
}

uint64_t MessageCenter.__deallocating_deinit()
{
  MessageCenter.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t MessageCenter.setMessageDelegate(_:)(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  return OUTLINED_FUNCTION_1_0(MessageCenter.setMessageDelegate(_:), v2);
}

uint64_t MessageCenter.setMessageDelegate(_:)()
{
  OUTLINED_FUNCTION_29();
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  OUTLINED_FUNCTION_95(v1 + 160, v0 + 16);
  *(v1 + 168) = v2;
  swift_unknownObjectWeakAssign();
  OUTLINED_FUNCTION_6_3();

  return v3();
}

uint64_t MessageCenter.setErrorDelegate(_:)(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  return OUTLINED_FUNCTION_1_0(MessageCenter.setErrorDelegate(_:), v2);
}

uint64_t MessageCenter.setErrorDelegate(_:)()
{
  OUTLINED_FUNCTION_29();
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  OUTLINED_FUNCTION_95(v1 + 176, v0 + 16);
  *(v1 + 184) = v2;
  swift_unknownObjectWeakAssign();
  OUTLINED_FUNCTION_6_3();

  return v3();
}

uint64_t MessageCenter.getActiveDevices()()
{
  *(v1 + 16) = v0;
  return OUTLINED_FUNCTION_1_0(MessageCenter.getActiveDevices(), v0);
}

{
  OUTLINED_FUNCTION_7_0();
  v0[3] = *(v0[2] + 112);

  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_33(v1);

  return MessageCenterActorBrowser.getActiveEndpointsDevices()();
}

{
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_11_0();
  v1 = *v0;
  OUTLINED_FUNCTION_5_1();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_74_1();

  return v4(v3);
}

uint64_t static MessageCenter.makeMessageCenter(applicationType:)(char *a1)
{
  v2 = *a1;
  swift_allocObject();
  return MessageCenter.init(_:)(&v2);
}

uint64_t MessageCenter.start()()
{
  *(v1 + 16) = v0;
  return OUTLINED_FUNCTION_1_0(MessageCenter.start(), v0);
}

{
  OUTLINED_FUNCTION_29();
  v1 = v0[2];
  if (*(v1 + OBJC_IVAR____TtC11SiriNetwork13MessageCenter_started) == 1)
  {
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_57_1(v3))
    {
      v4 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_85(v4);
      OUTLINED_FUNCTION_32_3(&dword_223515000, v5, v6, "message center is already running");
      OUTLINED_FUNCTION_42_0();
    }

    v7 = lazy protocol witness table accessor for type MessageCenterError and conformance MessageCenterError();
    OUTLINED_FUNCTION_60(&type metadata for MessageCenterError, v7);
    *v8 = 0;
    *(v8 + 8) = 8;
    swift_willThrow();
    OUTLINED_FUNCTION_6_3();

    return v9();
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC11SiriNetwork13MessageCenter_started) = 1;
    v0[3] = OBJC_IVAR____TtC11SiriNetwork13MessageCenter_logger;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_57_1(v12))
    {
      v13 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_85(v13);
      OUTLINED_FUNCTION_32_3(&dword_223515000, v14, v15, "starting MessageCenter...");
      OUTLINED_FUNCTION_42_0();
    }

    v16 = v0[2];

    v0[4] = *(v16 + 120);
    OUTLINED_FUNCTION_54_2();
    swift_unknownObjectRetain();
    v17 = OUTLINED_FUNCTION_14_5();

    return MEMORY[0x2822009F8](v17, v18, v19);
  }
}

{
  OUTLINED_FUNCTION_7_0();
  *(*(v0 + 32) + 184) = &protocol witness table for MessageCenter;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  v1 = OUTLINED_FUNCTION_3_14();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

{
  OUTLINED_FUNCTION_7_0();
  v0[5] = *(v0[2] + 120);
  swift_unknownObjectRetain();
  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_33(v1);

  return MessageCenterActorListenerPublisher.publish()();
}

{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_11_0();
  v3 = v2;
  OUTLINED_FUNCTION_11_8();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;

  swift_unknownObjectRelease();
  if (v0)
  {
    v7 = *(v5 + 8);

    return v7();
  }

  else
  {
    OUTLINED_FUNCTION_86_0();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }
}

{
  OUTLINED_FUNCTION_29();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_57_1(v2))
  {
    v3 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_85(v3);
    OUTLINED_FUNCTION_32_3(&dword_223515000, v4, v5, "published listener");
    OUTLINED_FUNCTION_42_0();
  }

  v6 = *(v0 + 16);

  if (*(v6 + 152))
  {
    v7 = "remoteIntelligenceClient";
  }

  else
  {
    v7 = "mits = %@ tfoSynDataAcked = %@}";
  }

  if ((v7 | 0x8000000000000000) == 0x80000002235F6460)
  {

LABEL_9:
    *(v0 + 56) = *(*(v0 + 16) + 112);
    OUTLINED_FUNCTION_54_2();

    v9 = OUTLINED_FUNCTION_14_5();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v8)
  {
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_26_4();

  return v12();
}

{
  OUTLINED_FUNCTION_7_0();
  *(*(v0 + 56) + 144) = &protocol witness table for MessageCenter;
  swift_unknownObjectWeakAssign();

  v1 = OUTLINED_FUNCTION_3_14();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

{
  OUTLINED_FUNCTION_7_0();
  v0[8] = *(v0[2] + 112);

  v1 = swift_task_alloc();
  v0[9] = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_33(v1);

  return MessageCenterActorBrowser.start()();
}

{
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_11_0();
  v3 = v2;
  OUTLINED_FUNCTION_11_8();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;
  *(v3 + 80) = v0;

  if (v0)
  {
    v7 = *(v3 + 16);
    v8 = MessageCenter.start();
  }

  else
  {
    v9 = *(v3 + 16);

    v8 = MessageCenter.start();
    v7 = v9;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

{
  OUTLINED_FUNCTION_29();
  v0 = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_57_1(v1))
  {
    v2 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_85(v2);
    OUTLINED_FUNCTION_32_3(&dword_223515000, v3, v4, "started browser");
    OUTLINED_FUNCTION_42_0();
  }

  OUTLINED_FUNCTION_26_4();

  return v5();
}

{
  OUTLINED_FUNCTION_7_0();

  OUTLINED_FUNCTION_6_3();

  return v0();
}