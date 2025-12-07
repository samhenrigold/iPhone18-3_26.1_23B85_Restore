uint64_t protocol witness for AceServiceInvoker.submitAndForget(_:) in conformance AceServiceInvokerImpl(NSObject *a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = type metadata accessor for RequestSummary.ExecutionSource();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 104))(v10, *MEMORY[0x1E69D0678], v6, v8);
  AceServiceInvokerImpl.submitAndForget(_:setRefId:executionSource:)(a1, a4, v10);
  return (*(v7 + 8))(v10, v6);
}

uint64_t protocol witness for AceServiceInvoker.submitAllSerial(_:_:) in conformance AceServiceInvokerImpl(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  v27 = a8;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v26 - v14;
  v16 = type metadata accessor for RequestSummary.ExecutionSource();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v26 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *v8;
  (*(v17 + 104))(v20, *MEMORY[0x1E69D0678], v16, v18);
  v22 = AceServiceInvokerImpl._submitAllSerialPrep(_:setRefId:executionSource:)(a1, a6, v20);
  (*(v17 + 8))(v20, v16);
  v23 = type metadata accessor for TaskPriority();
  (*(*(v23 - 8) + 56))(v15, 1, 1, v23);
  v24 = swift_allocObject();
  v24[2] = 0;
  v24[3] = 0;
  v24[4] = v21;
  v24[5] = v22;
  v24[6] = a2;
  v24[7] = a3;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v15, v27, v24);
}

void protocol witness for AceServiceInvoker.prepareForAudioHandoff(completion:) in conformance AceServiceInvokerImpl(uint64_t a1, uint64_t a2)
{
  v3 = *(*v2 + 16);
  v5[4] = a1;
  v5[5] = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 1107296256;
  v5[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool) -> ();
  v5[3] = &block_descriptor_104;
  v4 = _Block_copy(v5);

  [v3 prepareForAudioHandoffWithCompletion_];
  _Block_release(v4);
}

void protocol witness for AceServiceInvoker.prepareForAudioHandoffFailed(completion:) in conformance AceServiceInvokerImpl(uint64_t a1, uint64_t a2)
{
  v3 = *(*v2 + 16);
  v5[4] = a1;
  v5[5] = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 1107296256;
  v5[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v5[3] = &block_descriptor_101;
  v4 = _Block_copy(v5);

  [v3 prepareForAudioHandoffFailedWithCompletion_];
  _Block_release(v4);
}

uint64_t protocol witness for AceServiceInvokerAsync.submitToCompanion<A>(_:setRefId:) in conformance AceServiceInvokerImpl(uint64_t a1, char a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = protocol witness for AceServiceInvokerAsync.submit<A>(_:setRefId:) in conformance AceServiceInvokerImpl;

  return AceServiceInvokerImpl.submitToCompanion<A>(_:setRefId:)(a1, a2, a3);
}

uint64_t protocol witness for AceServiceInvokerAsync.submitToRemote<A>(_:_:setRefId:) in conformance AceServiceInvokerImpl(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = protocol witness for AceServiceInvokerAsync.submitToRemote<A>(_:_:setRefId:) in conformance AceServiceInvokerImpl;

  return AceServiceInvokerImpl.submitToRemote<A>(_:_:setRefId:)(a1, a2, a3, a4, a5);
}

uint64_t protocol witness for AceServiceInvokerAsync.submitAllSerial(_:setRefId:) in conformance AceServiceInvokerImpl(uint64_t a1, char a2)
{
  *(v3 + 80) = a2;
  *(v3 + 16) = a1;
  v4 = type metadata accessor for RequestSummary.ExecutionSource();
  *(v3 + 24) = v4;
  *(v3 + 32) = *(v4 - 8);
  v5 = swift_task_alloc();
  v6 = *v2;
  *(v3 + 40) = v5;
  *(v3 + 48) = v6;

  return MEMORY[0x1EEE6DFA0](protocol witness for AceServiceInvokerAsync.submitAllSerial(_:setRefId:) in conformance AceServiceInvokerImpl, 0, 0);
}

uint64_t protocol witness for AceServiceInvokerAsync.submitAllSerial(_:setRefId:) in conformance AceServiceInvokerImpl()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 80);
  v5 = *(v0 + 16);
  (*(v3 + 104))(v1, *MEMORY[0x1E69D0678], v2);
  v6 = AceServiceInvokerImpl._submitAllSerialPrep(_:setRefId:executionSource:)(v5, v4, v1);
  *(v0 + 56) = v6;
  (*(v3 + 8))(v1, v2);
  v7 = swift_task_alloc();
  *(v0 + 64) = v7;
  *v7 = v0;
  v7[1] = protocol witness for AceServiceInvokerAsync.submitAllSerial(_:setRefId:) in conformance AceServiceInvokerImpl;

  return AceServiceInvokerImpl._submitAllSerialExecute(_:)(v6);
}

{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = protocol witness for AceServiceInvokerAsync.submitAllSerial(_:setRefId:) in conformance AceServiceInvokerImpl;
  }

  else
  {
    v2 = protocol witness for AceServiceInvokerAsync.submitAllSerial(_:setRefId:) in conformance AceServiceInvokerImpl;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

id protocol witness for AceServiceInvoker.endpointInfo() in conformance AceServiceInvokerImpl@<X0>(uint64_t *a1@<X8>)
{
  v6 = *(*(*v1 + 32) + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_endpointInfo);
  v3 = type metadata accessor for EndpointInfoProvider();
  v4 = swift_allocObject();
  *(v4 + 16) = v6;
  a1[3] = v3;
  a1[4] = lazy protocol witness table accessor for type PeerInfoProvider and conformance PeerInfoProvider(&lazy protocol witness table cache variable for type EndpointInfoProvider and conformance EndpointInfoProvider, 255, type metadata accessor for EndpointInfoProvider, &protocol conformance descriptor for EndpointInfoProvider);
  *a1 = v4;

  return v6;
}

uint64_t protocol witness for AceServiceInvokerAsync.prepareForAudioHandoff() in conformance AceServiceInvokerImpl()
{
  *(v1 + 16) = *v0;
  return MEMORY[0x1EEE6DFA0](protocol witness for AceServiceInvokerAsync.prepareForAudioHandoff() in conformance AceServiceInvokerImpl, 0, 0);
}

{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = protocol witness for AceServiceInvokerAsync.prepareForAudioHandoff() in conformance AceServiceInvokerImpl;
  v2 = *(v0 + 16);
  v3 = MEMORY[0x1E69E6370];

  return MEMORY[0x1EEE6DDE0](v0 + 32, 0, 0, 0xD000000000000018, 0x80000001DCA7C2D0, closure #1 in AceServiceInvokerImpl.prepareForAudioHandoff()partial apply, v2, v3);
}

{

  return MEMORY[0x1EEE6DFA0](protocol witness for AceServiceInvokerAsync.prepareForAudioHandoff() in conformance AceServiceInvokerImpl, 0, 0);
}

{
  return (*(v0 + 8))(*(v0 + 32));
}

uint64_t protocol witness for AceServiceInvokerAsync.recentDialogs() in conformance AceServiceInvokerImpl()
{
  *(v1 + 24) = *v0;
  return MEMORY[0x1EEE6DFA0](protocol witness for AceServiceInvokerAsync.recentDialogs() in conformance AceServiceInvokerImpl, 0, 0);
}

{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11SiriKitFlow12RecentDialogCGMd, &_sSay11SiriKitFlow12RecentDialogCGMR);
  *v1 = v0;
  v1[1] = protocol witness for AceServiceInvokerAsync.recentDialogs() in conformance AceServiceInvokerImpl;
  v3 = *(v0 + 24);

  return MEMORY[0x1EEE6DDE0](v0 + 16, 0, 0, 0x6944746E65636572, 0xEF292873676F6C61, closure #1 in AceServiceInvokerImpl.recentDialogs()partial apply, v3, v2);
}

{

  return MEMORY[0x1EEE6DFA0](protocol witness for AceServiceInvokerAsync.recentDialogs() in conformance AceServiceInvokerImpl, 0, 0);
}

{
  return (*(v0 + 8))(*(v0 + 16));
}

uint64_t protocol witness for AceServiceInvokerAsync.submitExternalActivationRequest(withRequestInfo:) in conformance AceServiceInvokerImpl(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 32) = a1;
  *(v2 + 40) = v3;
  return MEMORY[0x1EEE6DFA0](protocol witness for AceServiceInvokerAsync.submitExternalActivationRequest(withRequestInfo:) in conformance AceServiceInvokerImpl, 0, 0);
}

uint64_t protocol witness for AceServiceInvokerAsync.submitExternalActivationRequest(withRequestInfo:) in conformance AceServiceInvokerImpl()
{
  v1 = swift_task_alloc();
  v0[3].i64[0] = v1;
  v1[1] = vextq_s8(v0[2], v0[2], 8uLL);
  v2 = swift_task_alloc();
  v0[3].i64[1] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSb_s5Error_pSgtMd, &_sSb_s5Error_pSgtMR);
  *v2 = v0;
  v2[1] = protocol witness for AceServiceInvokerAsync.submitExternalActivationRequest(withRequestInfo:) in conformance AceServiceInvokerImpl;

  return MEMORY[0x1EEE6DDE0](&v0[1], 0, 0, 0xD000000000000031, 0x80000001DCA7C310, closure #1 in AceServiceInvokerImpl.submitExternalActivationRequest(withRequestInfo:)partial apply, v1, v3);
}

{

  return MEMORY[0x1EEE6DFA0](protocol witness for AceServiceInvokerAsync.submitExternalActivationRequest(withRequestInfo:) in conformance AceServiceInvokerImpl, 0, 0);
}

{
  return (*(v0 + 8))(*(v0 + 16), *(v0 + 24));
}

uint64_t protocol witness for AceServiceInvokerAsync.postToMessageBus(message:) in conformance AceServiceInvokerImpl(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = protocol witness for AceServiceInvokerAsync.postToMessageBus(message:) in conformance AceServiceInvokerImpl;

  return AceServiceInvokerImpl.postToMessageBus(message:)(a1);
}

uint64_t protocol witness for AceServiceInvokerAsync.postToMessageBus(message:) in conformance AceServiceInvokerImpl(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

void specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SABaseCommand, 0x1E69C7738);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = (2 * (v9 >> 3)) | 1;
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

char *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, uint64_t a2, uint64_t a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, uint64_t a2, uint64_t a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS9namespace_SSSg5valuetGMd, &_ss23_ContiguousArrayStorageCySS9namespace_SSSg5valuetGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS9namespace_SSSg5valuetMd, &_sSS9namespace_SSSg5valuetMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_14SiriKitRuntime15AffinityScoring_ptGMd, &_ss23_ContiguousArrayStorageCySS_14SiriKitRuntime15AffinityScoring_ptGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[7 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 56 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_14SiriKitRuntime15AffinityScoring_ptMd, &_sSS_14SiriKitRuntime15AffinityScoring_ptMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS11appBundleId_SDySSypG8userDatatGMd, &_ss23_ContiguousArrayStorageCySS11appBundleId_SDySSypG8userDatatGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS11appBundleId_SDySSypG8userDatatMd, &_sSS11appBundleId_SDySSypG8userDatatMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void (*specialized protocol witness for Collection.subscript.read in conformance [A](void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1E12A1FE0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return protocol witness for Collection.subscript.read in conformance [A]specialized ;
  }

  __break(1u);
  return result;
}

uint64_t (*specialized protocol witness for Collection.subscript.read in conformance [A](uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1E12A1FE0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return protocol witness for Collection.subscript.read in conformance [A]specialized ;
  }

  __break(1u);
  return result;
}

{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1E12A1FE0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return protocol witness for Collection.subscript.read in conformance [A]specialized ;
  }

  __break(1u);
  return result;
}

uint64_t _s14SiriKitRuntime16AceMetricsLoggerO18logRemoteAnalytics7service7commandy0aB4Flow0D19ServiceInvokerAsync_p_So12SAAceCommand_ptFZTf4een_nAA0dmN4ImplC_So06SABaseQ0CTt1g5(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for OSSignpostID();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = a1;
  v8 = one-time initialization token for executor;

  if (v8 != -1)
  {
    swift_once();
  }

  v9 = static Log.executor;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  os_signpost(_:dso:log:name:signpostID:)();
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
    _os_log_impl(&dword_1DC659000, v11, v12, "Logging Analytics to remote device", v13, 2u);
    MEMORY[0x1E12A2F50](v13, -1, -1);
  }

  objc_opt_self();
  v14 = swift_dynamicCastObjCClass();
  if (v14)
  {
    v15 = v14;
    v16 = a2;
    v17 = specialized static ViewMetricsLogger.getSparseAddViews(addViews:)(v15);
  }

  else
  {
    objc_opt_self();
    v18 = swift_dynamicCastObjCClass();
    if (!v18)
    {

      goto LABEL_15;
    }

    v19 = v18;
    v20 = a2;
    v17 = specialized static SayMetricsLogger.getSparseCommand(command:)(v19);
  }

  v21 = v17;

  v22 = v21;
  v23 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v40 = v23;
  v24 = [v22 dictionary];

  if (v24)
  {
    v39 = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSMutableDictionary, 0x1E695DF90);
    *&v38 = v24;
    outlined init with take of Any(&v38, v37);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v36 = v23;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v37, 0x6C46746E65696C43, 0xEE0077656956776FLL, isUniquelyReferenced_nonNull_native);
    v26 = v36;
    v40 = v36;
  }

  else
  {
    specialized Dictionary._Variant.removeValue(forKey:)(0x6C46746E65696C43, 0xEE0077656956776FLL, &v38);
    outlined destroy of ReferenceResolutionClientProtocol?(&v38, &_sypSgMd, &_sypSgMR);
    v26 = v40;
  }

  v27 = specialized static AceMetricsLogger.makeJSONFromDictionary(dictionary:)(v26);
  v29 = v28;

  v30 = [objc_allocWithZone(MEMORY[0x1E69C78C8]) init];
  v31 = MEMORY[0x1E12A1410](0x52524F454E4B53, 0xE700000000000000);
  [v30 setEventName_];

  v32 = MEMORY[0x1E12A1410](v27, v29);

  [v30 setEventValue_];

  type metadata accessor for AceServiceInvokerImpl();
  lazy protocol witness table accessor for type PeerInfoProvider and conformance PeerInfoProvider(&lazy protocol witness table cache variable for type AceServiceInvokerImpl and conformance AceServiceInvokerImpl, v33, type metadata accessor for AceServiceInvokerImpl, &protocol conformance descriptor for AceServiceInvokerImpl);
  AceServiceInvokerAsync.submitAndForget(_:)();

LABEL_15:
  static os_signpost_type_t.end.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  return (*(v5 + 8))(v7, v4);
}

void specialized static AceServiceInvokerImpl.genericErrorLogger(originalCommand:error:)(void *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow18SubmitCommandErrorOSgMd, &_s11SiriKitFlow18SubmitCommandErrorOSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v129 - v5;
  v7 = type metadata accessor for SubmitCommandError();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v129 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v129 - v12;
  v134 = a2;
  v14 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v15 = swift_dynamicCast();
  v16 = *(v8 + 56);
  if (v15)
  {
    v16(v6, 0, 1, v7);
    (*(v8 + 32))(v13, v6, v7);
    (*(v8 + 16))(v10, v13, v7);
    v17 = (*(v8 + 88))(v10, v7);
    if (v17 == *MEMORY[0x1E69CFF78])
    {
      (*(v8 + 96))(v10, v7);
      v18 = *v10;
      if (one-time initialization token for ace != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      __swift_project_value_buffer(v19, static Logger.ace);
      v20 = v18;
      v21 = a1;
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v134 = v25;
        *v24 = 136315394;
        swift_getErrorValue();
        v26 = Error.localizedDescription.getter();
        v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, &v134);
        v133 = v13;
        v29 = v28;

        *(v24 + 4) = v29;
        *(v24 + 12) = 2080;
        v30 = [v21 description];
        v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v33 = v32;

        v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v33, &v134);

        *(v24 + 14) = v34;
        _os_log_impl(&dword_1DC659000, v22, v23, "Received an error <%s> for command <%s>", v24, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E12A2F50](v25, -1, -1);
        MEMORY[0x1E12A2F50](v24, -1, -1);

LABEL_47:
        (*(v8 + 8))(v133, v7);
        return;
      }

LABEL_33:
      (*(v8 + 8))(v13, v7);
      return;
    }

    if (v17 == *MEMORY[0x1E69CFF88])
    {
      (*(v8 + 96))(v10, v7);
      v50 = *v10;
      if (one-time initialization token for ace != -1)
      {
        swift_once();
      }

      v51 = type metadata accessor for Logger();
      __swift_project_value_buffer(v51, static Logger.ace);
      v52 = v50;
      v53 = a1;
      v54 = v52;
      v55 = Logger.logObject.getter();
      v56 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v55, v56))
      {
        v130 = v53;
        LODWORD(v132) = v56;
        v133 = v13;
        v57 = 0x3E6C696E3CLL;
        v58 = swift_slowAlloc();
        v131 = swift_slowAlloc();
        v134 = v131;
        *v58 = 136316418;
        v59 = [v54 aceId];
        if (v59)
        {
          v60 = v59;
          v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v63 = v62;
        }

        else
        {
          v63 = 0xE500000000000000;
          v61 = 0x3E6C696E3CLL;
        }

        v105 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v61, v63, &v134);

        *(v58 + 4) = v105;
        *(v58 + 12) = 2080;
        v106 = [v54 refId];
        if (v106)
        {
          v107 = v106;
          v108 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v110 = v109;
        }

        else
        {
          v110 = 0xE500000000000000;
          v108 = 0x3E6C696E3CLL;
        }

        v111 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v108, v110, &v134);

        *(v58 + 14) = v111;
        *(v58 + 22) = 2048;
        v112 = [v54 errorCode];

        *(v58 + 24) = v112;
        *(v58 + 32) = 2080;
        v113 = [v54 reason];
        if (v113)
        {
          v114 = v113;
          v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v116 = v115;
        }

        else
        {
          v116 = 0xE500000000000000;
        }

        v117 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v57, v116, &v134);

        *(v58 + 34) = v117;
        *(v58 + 42) = 2080;
        v118 = [v54 description];
        v119 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v121 = v120;

        v122 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v119, v121, &v134);

        *(v58 + 44) = v122;
        *(v58 + 52) = 2080;
        v123 = [v130 description];
        v124 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v126 = v125;

        v127 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v124, v126, &v134);

        *(v58 + 54) = v127;
        _os_log_impl(&dword_1DC659000, v55, v132, "Received SACommandFailed: aceId=%s refId=%s errorCode=%ld, reason='%s', description='%s' for command <%s>", v58, 0x3Eu);
        v128 = v131;
        swift_arrayDestroy();
        MEMORY[0x1E12A2F50](v128, -1, -1);
        v81 = v58;
        goto LABEL_46;
      }

      goto LABEL_32;
    }

    if (v17 == *MEMORY[0x1E69CFF90])
    {
      (*(v8 + 96))(v10, v7);
      v64 = *v10;
      if (one-time initialization token for ace != -1)
      {
        swift_once();
      }

      v65 = type metadata accessor for Logger();
      __swift_project_value_buffer(v65, static Logger.ace);
      v66 = a1;
      v54 = v64;
      v55 = Logger.logObject.getter();
      v67 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v55, v67))
      {
        v68 = swift_slowAlloc();
        v132 = swift_slowAlloc();
        v134 = v132;
        *v68 = 136315394;
        v69 = [v54 description];
        v70 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v133 = v13;
        v71 = v70;
        v73 = v72;

        v74 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v71, v73, &v134);

        *(v68 + 4) = v74;
        *(v68 + 12) = 2080;
        v75 = [v66 description];
        v76 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v78 = v77;

        v79 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v76, v78, &v134);

        *(v68 + 14) = v79;
        _os_log_impl(&dword_1DC659000, v55, v67, "Received unexpected command response type: %s for command <%s>", v68, 0x16u);
        v80 = v132;
        swift_arrayDestroy();
        MEMORY[0x1E12A2F50](v80, -1, -1);
        v81 = v68;
LABEL_46:
        MEMORY[0x1E12A2F50](v81, -1, -1);

        goto LABEL_47;
      }

LABEL_32:
      goto LABEL_33;
    }

    if (v17 == *MEMORY[0x1E69CFF80])
    {
      if (one-time initialization token for ace != -1)
      {
        swift_once();
      }

      v82 = type metadata accessor for Logger();
      __swift_project_value_buffer(v82, static Logger.ace);
      v83 = a1;
      v84 = Logger.logObject.getter();
      v85 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v84, v85))
      {
        v86 = swift_slowAlloc();
        v87 = swift_slowAlloc();
        v134 = v87;
        *v86 = 136315138;
        v88 = [v83 description];
        v89 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v91 = v90;

        v92 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v89, v91, &v134);

        *(v86 + 4) = v92;
        _os_log_impl(&dword_1DC659000, v84, v85, "Received unexpected nil response for command <%s>", v86, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v87);
        MEMORY[0x1E12A2F50](v87, -1, -1);
        MEMORY[0x1E12A2F50](v86, -1, -1);
      }

      goto LABEL_33;
    }

    if (one-time initialization token for ace != -1)
    {
      swift_once();
    }

    v93 = type metadata accessor for Logger();
    __swift_project_value_buffer(v93, static Logger.ace);
    v94 = a1;
    v95 = Logger.logObject.getter();
    v96 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v95, v96))
    {
      v97 = swift_slowAlloc();
      v98 = swift_slowAlloc();
      v134 = v98;
      *v97 = 136315138;
      v99 = [v94 description];
      v100 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v133 = v13;
      v102 = v101;

      v103 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v100, v102, &v134);

      *(v97 + 4) = v103;
      _os_log_impl(&dword_1DC659000, v95, v96, "AceServiceInvokerImpl genericErrorLogger unknown case for command <%s>", v97, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v98);
      MEMORY[0x1E12A2F50](v98, -1, -1);
      MEMORY[0x1E12A2F50](v97, -1, -1);

      v104 = *(v8 + 8);
      v104(v133, v7);
    }

    else
    {

      v104 = *(v8 + 8);
      v104(v13, v7);
    }

    v104(v10, v7);
  }

  else
  {
    v16(v6, 1, 1, v7);
    outlined destroy of ReferenceResolutionClientProtocol?(v6, &_s11SiriKitFlow18SubmitCommandErrorOSgMd, &_s11SiriKitFlow18SubmitCommandErrorOSgMR);
    if (one-time initialization token for ace != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    __swift_project_value_buffer(v35, static Logger.ace);
    v36 = a2;
    v37 = a1;
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v134 = v41;
      *v40 = 136315394;
      swift_getErrorValue();
      v42 = Error.localizedDescription.getter();
      v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v43, &v134);

      *(v40 + 4) = v44;
      *(v40 + 12) = 2080;
      v45 = [v37 description];
      v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v48 = v47;

      v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v48, &v134);

      *(v40 + 14) = v49;
      _os_log_impl(&dword_1DC659000, v38, v39, "Received an error <%s> for command <%s>", v40, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v41, -1, -1);
      MEMORY[0x1E12A2F50](v40, -1, -1);
    }
  }
}

uint64_t partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:)(uint64_t a1)
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

  return closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:)(a1, v4, v5, v7, v8, v9, v10, v6);
}

uint64_t partial apply for closure #1 in AceServiceInvokerImpl.submitWithoutRefId<A>(_:completion:)(uint64_t a1)
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

  return closure #1 in AceServiceInvokerImpl.submitWithoutRefId<A>(_:completion:)(a1, v4, v5, v7, v8, v9, v10, v6);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t specialized AceServiceInvokerImpl.serializeCommandAsPList(_:)(void *a1)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v1 = [a1 dictionary];
  if (v1)
  {
    v2 = v1;
    v16[0] = 0;
    v3 = [objc_opt_self() dataWithPropertyList:v1 format:200 options:0 error:v16];
    v4 = v16[0];
    if (v3)
    {
      v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

      return v5;
    }

    v10 = v4;
    v11 = _convertNSErrorToError(_:)();

    swift_willThrow();
    if (one-time initialization token for ace != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Logger.ace);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1DC659000, v13, v14, "AceServiceInvoker failed to serialize command to pList", v15, 2u);
      MEMORY[0x1E12A2F50](v15, -1, -1);
    }
  }

  else
  {
    if (one-time initialization token for ace != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Logger.ace);
    v2 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v2, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1DC659000, v2, v8, "AceServiceInvoker failed to serialize command to dictionary", v9, 2u);
      MEMORY[0x1E12A2F50](v9, -1, -1);
    }
  }

  return 0;
}

id specialized AceServiceInvokerImpl.wrapCommandForExecution(_:assistantId:)(void *a1, uint64_t a2, unint64_t a3)
{
  if (a3)
  {
    if (one-time initialization token for ace != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    v6 = __swift_project_value_buffer(v5, static Logger.ace);
    v7 = a1;

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v8, v9))
    {
      a1 = v6;
      v10 = 0x3E4C494E3CLL;
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v48 = v12;
      *v11 = 136315650;
      *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, a3, &v48);
      *(v11 + 12) = 2080;
      v13 = [v7 refId];
      if (v13)
      {
        v14 = v13;
        v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v16 = v15;
      }

      else
      {
        v16 = 0xE500000000000000;
      }

      v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v16, &v48);

      *(v11 + 14) = v22;
      *(v11 + 22) = 2080;
      v23 = [v7 aceId];
      if (v23)
      {
        v24 = v23;
        v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v27 = v26;
      }

      else
      {
        v27 = 0xE500000000000000;
        v25 = 0x3E4C494E3CLL;
      }

      v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v27, &v48);

      *(v11 + 24) = v28;
      _os_log_impl(&dword_1DC659000, v8, v9, "AceServiceInvoker wrapping command for remote execution with assistantID: '%s', refID: '%s', aceID: '%s'", v11, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v12, -1, -1);
      MEMORY[0x1E12A2F50](v11, -1, -1);
    }

    else
    {
    }

    v29 = [objc_allocWithZone(MEMORY[0x1E69C77E0]) init];
    v30 = specialized AceServiceInvokerImpl.serializeCommandAsPList(_:)(v7);
    v32 = v31;
    isa = Data._bridgeToObjectiveC()().super.isa;
    outlined consume of Data._Representation(v30, v32);
    [v29 setSerializedCommand_];

    v34 = [objc_allocWithZone(MEMORY[0x1E69C79B8]) init];
    v35 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v35 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v35)
    {
      v36 = MEMORY[0x1E12A1410](a2, a3);
      [v34 setAssistantId_];
    }

    [v34 setSiriEnabled_];
    [v29 setRemoteDevice_];
    type metadata accessor for SiriEnvironment();
    if (static SiriEnvironment.forCurrentTask.getter())
    {
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&dword_1DC659000, v37, v38, "CurrentTask has value for shouldFallbacktoAWDL", v39, 2u);
        MEMORY[0x1E12A2F50](v39, -1, -1);
      }

      SiriEnvironment.aceServiceContext.getter();
      v40 = dispatch thunk of AceServiceContextProvider.shouldFallbacktoAWDL.getter();
    }

    else
    {
      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        *v43 = 0;
        _os_log_impl(&dword_1DC659000, v41, v42, "Setting shouldFallbacktoAWDL to true since currentTask is nil", v43, 2u);
        MEMORY[0x1E12A2F50](v43, -1, -1);
      }

      v40 = 1;
    }

    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 67109120;
      *(v46 + 4) = v40 & 1;
      _os_log_impl(&dword_1DC659000, v44, v45, "AceServiceInvoker setting shouldFallbackOnAWDL: %{BOOL}d", v46, 8u);
      MEMORY[0x1E12A2F50](v46, -1, -1);
    }

    [v29 setShouldFallbackOnAWDL_];
    return v29;
  }

  else
  {
    if (one-time initialization token for ace != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static Logger.ace);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1DC659000, v18, v19, "AceServiceInvoker wrapping command for remote execution skipped because of null assistantID", v20, 2u);
      MEMORY[0x1E12A2F50](v20, -1, -1);
    }

    return a1;
  }
}

uint64_t partial apply for closure #1 in AceServiceInvokerImpl.submitToCompanion<A>(_:completion:)(uint64_t a1)
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

  return closure #1 in AceServiceInvokerImpl.submitToCompanion<A>(_:completion:)(a1, v4, v5, v7, v8, v9, v10, v6);
}

uint64_t partial apply for closure #1 in AceServiceInvokerImpl.submitToCompanionWithoutRefId<A>(_:completion:)(uint64_t a1)
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

  return closure #1 in AceServiceInvokerImpl.submitToCompanionWithoutRefId<A>(_:completion:)(a1, v4, v5, v7, v8, v9, v10, v6);
}

uint64_t partial apply for closure #1 in AceServiceInvokerImpl.submitToRemote<A>(_:_:completion:)(uint64_t a1)
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

  return closure #1 in AceServiceInvokerImpl.submitToRemote<A>(_:_:completion:)(a1, v4, v5, v7, v8, v9, v10, v6);
}

uint64_t partial apply for closure #1 in AceServiceInvokerImpl.submitAllSerial(_:_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in AceServiceInvokerImpl.submitAllSerial(_:_:)(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t partial apply for closure #1 in AceServiceInvokerImpl.submitAllSerialWithoutRefId(_:_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in AceServiceInvokerImpl.submitAllSerialWithoutRefId(_:_:)(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTR14SiriKitRuntime25PluginLookupByIntentTopic_p_Tg5TA(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return _s14SiriKitRuntime21ParaphraseProbeResultOIegHr_ACs5Error_pIegHTrzo_TR(a1, v4);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTR14SiriKitRuntime20LinkExpansionContextV07SessionI0C_TG5TA(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTR14SiriKitRuntime20LinkExpansionContextV07SessionI0C_TG5(a1, v4);
}

uint64_t partial apply for closure #1 in closure #1 in AceServiceInvokerImpl.recentDialogs()(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySay11SiriKitFlow12RecentDialogCGs5NeverOGMd, &_sScCySay11SiriKitFlow12RecentDialogCGs5NeverOGMR);

  return closure #1 in closure #1 in AceServiceInvokerImpl.recentDialogs()(a1);
}

unint64_t lazy protocol witness table accessor for type SerialSubmissionError and conformance SerialSubmissionError()
{
  result = lazy protocol witness table cache variable for type SerialSubmissionError and conformance SerialSubmissionError;
  if (!lazy protocol witness table cache variable for type SerialSubmissionError and conformance SerialSubmissionError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SerialSubmissionError and conformance SerialSubmissionError);
  }

  return result;
}

uint64_t partial apply for specialized closure #1 in Sequence<>.contains(_:)(uint64_t a1)
{
  v2 = *(*(v1 + 16) + 8);
  if (*(a1 + 8))
  {
    if (v2)
    {
      return 1;
    }
  }

  else if (!v2)
  {
    return 1;
  }

  return 0;
}

uint64_t specialized AceServiceInvokerImpl.getResponse<A>(from:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 32) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13SABaseCommandCSgMd, &_sSo13SABaseCommandCSgMR);
  *(v1 + 40) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  *v3 = v1;
  v3[1] = specialized AceServiceInvokerImpl.getResponse<A>(from:);
  v6 = MEMORY[0x1E69E7288];

  return MEMORY[0x1EEE6DA10](v1 + 16, a1, v4, v5, v6);
}

uint64_t partial apply for closure #1 in closure #1 in AceServiceInvokerImpl.submitToRemote<A>(_:_:completion:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return closure #1 in closure #1 in AceServiceInvokerImpl.submitToRemote<A>(_:_:completion:)(a1, v5, v6, v4);
}

uint64_t partial apply for closure #1 in closure #1 in AceServiceInvokerImpl.submitToCompanionWithoutRefId<A>(_:completion:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in closure #1 in AceServiceInvokerImpl.submitToCompanion<A>(_:completion:)(a1, v5, v6, v4);
}

uint64_t partial apply for closure #1 in closure #1 in AceServiceInvokerImpl.submitToCompanion<A>(_:completion:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in closure #1 in AceServiceInvokerImpl.submitToCompanion<A>(_:completion:)(a1, v5, v6, v4);
}

uint64_t partial apply for closure #1 in closure #1 in AceServiceInvokerImpl.submitWithoutRefId<A>(_:completion:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:)(a1, v5, v6, v4);
}

uint64_t partial apply for closure #1 in closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:)(a1, v5, v6, v4);
}

void *assignWithCopy for AceServiceInvokerImpl.AceSubmitOptions(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];

  return a1;
}

uint64_t getEnumTagSinglePayload for AceServiceInvokerImpl.AceSubmitOptions(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AceServiceInvokerImpl.AceSubmitOptions(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t getEnumTag for AceServiceInvokerImpl.AceSubmitOptions(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *destructiveInjectEnumTag for AceServiceInvokerImpl.AceSubmitOptions(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

void destroy for SerialSubmissionError(uint64_t a1)
{
  v2 = *(a1 + 8);
}

uint64_t assignWithCopy for SerialSubmissionError(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  v7 = *(a2 + 8);
  v8 = v7;
  v9 = *(a1 + 8);
  *(a1 + 8) = v7;

  return a1;
}

uint64_t assignWithTake for SerialSubmissionError(uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for SerialSubmissionError(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for SerialSubmissionError(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t SiriXActionCandidate.init(fromCamActionCandidate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes0A16XActionCandidateVSgMd, &_s16SiriMessageTypes0A16XActionCandidateVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v24 - v5;
  v7 = type metadata accessor for CamParse();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = (&v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes0A6XParseOSgMd, &_s16SiriMessageTypes0A6XParseOSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v24 - v11;
  v13 = type metadata accessor for SiriXParse();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  ActionCandidate.parse.getter();
  SiriXParse.init(fromCamParse:)(v9, v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v12, &_s16SiriMessageTypes0A6XParseOSgMd, &_s16SiriMessageTypes0A6XParseOSgMR);
  }

  else
  {
    v17 = (*(v14 + 32))(v16, v12, v13);
    MEMORY[0x1EEE9AC00](v17);
    *(&v24 - 2) = a1;
    *(&v24 - 1) = v16;
    SiriXActionCandidate.init(build:)();
    v18 = type metadata accessor for SiriXActionCandidate();
    v19 = *(v18 - 8);
    if (!(*(v19 + 48))(v6, 1, v18))
    {
      (*(v19 + 32))(a2, v6, v18);
      (*(v14 + 8))(v16, v13);
      (*(v19 + 56))(a2, 0, 1, v18);
      v23 = type metadata accessor for ActionCandidate();
      return (*(*(v23 - 8) + 8))(a1, v23);
    }

    outlined destroy of ReferenceResolutionClientProtocol?(v6, &_s16SiriMessageTypes0A16XActionCandidateVSgMd, &_s16SiriMessageTypes0A16XActionCandidateVSgMR);
    (*(v14 + 8))(v16, v13);
  }

  v20 = type metadata accessor for ActionCandidate();
  (*(*(v20 - 8) + 8))(a1, v20);
  v21 = type metadata accessor for SiriXActionCandidate();
  return (*(*(v21 - 8) + 56))(a2, 1, 1, v21);
}

uint64_t SiriXParse.init(fromCamParse:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v72 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes0A9XUSOParseVSgMd, &_s16SiriMessageTypes0A9XUSOParseVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v66 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v68 = &v60 - v6;
  v67 = type metadata accessor for SiriXUSOParse();
  v65 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v63 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CamUSOParse();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v64 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v60 - v12;
  v14 = type metadata accessor for CamParse();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v61 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v62 = &v60 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v60 - v20;
  v22 = type metadata accessor for SiriXParse();
  v70 = *(v22 - 8);
  v71 = v22;
  v23 = MEMORY[0x1EEE9AC00](v22);
  v69 = (&v60 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = *(v15 + 16);
  v26 = a1;
  v25(v21, a1, v14, v23);
  v27 = (*(v15 + 88))(v21, v14);
  if (v27 == *MEMORY[0x1E69CE300])
  {
    (*(v15 + 96))(v21, v14);
    (*(v9 + 32))(v13, v21, v8);
    v28 = v64;
    v29 = (*(v9 + 16))(v64, v13, v8);
    MEMORY[0x1EEE9AC00](v29);
    *(&v60 - 2) = v28;
    v30 = v66;
    SiriXUSOParse.init(build:)();
    (*(v15 + 8))(v26, v14);
    v31 = *(v9 + 8);
    v31(v13, v8);
    v32 = v65;
    v33 = *(v65 + 48);
    v34 = v67;
    if (v33(v30, 1, v67))
    {
      outlined destroy of ReferenceResolutionClientProtocol?(v30, &_s16SiriMessageTypes0A9XUSOParseVSgMd, &_s16SiriMessageTypes0A9XUSOParseVSgMR);
      v31(v28, v8);
      v35 = v68;
      (*(v32 + 56))(v68, 1, 1, v34);
    }

    else
    {
      v41 = v30;
      v35 = v68;
      (*(v32 + 32))(v68, v41, v34);
      (*(v32 + 56))(v35, 0, 1, v34);
      v31(v28, v8);
    }

    if (v33(v35, 1, v34) == 1)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(v35, &_s16SiriMessageTypes0A9XUSOParseVSgMd, &_s16SiriMessageTypes0A9XUSOParseVSgMR);
LABEL_20:
      v44 = 1;
      v39 = v71;
      v38 = v72;
      v40 = v70;
      return (*(v40 + 56))(v38, v44, 1, v39);
    }

    v42 = *(v32 + 32);
    v43 = v63;
    v42(v63, v35, v34);
    v36 = v69;
    v42(v69, v43, v34);
    v37 = MEMORY[0x1E69D0420];
    goto LABEL_12;
  }

  if (v27 == *MEMORY[0x1E69CE2F8])
  {
    (*(v15 + 8))(a1, v14);
    (*(v15 + 96))(v21, v14);
    v36 = v69;
    *v69 = *v21;
    v37 = MEMORY[0x1E69D0418];
LABEL_12:
    v39 = v71;
    v38 = v72;
    v40 = v70;
    goto LABEL_13;
  }

  if (v27 != *MEMORY[0x1E69CE308])
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v45 = type metadata accessor for Logger();
    __swift_project_value_buffer(v45, static Logger.executor);
    v46 = v62;
    (v25)(v62, a1, v14);
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v69 = a1;
      v50 = v49;
      v68 = swift_slowAlloc();
      v73 = v68;
      *v50 = 136315138;
      (v25)(v61, v46, v14);
      v51 = String.init<A>(describing:)();
      v52 = v46;
      v54 = v53;
      v55 = *(v15 + 8);
      v55(v52, v14);
      v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v54, &v73);

      *(v50 + 4) = v56;
      _os_log_impl(&dword_1DC659000, v47, v48, "Unknown CamParse type: %s", v50, 0xCu);
      v57 = v68;
      __swift_destroy_boxed_opaque_existential_1Tm(v68);
      MEMORY[0x1E12A2F50](v57, -1, -1);
      MEMORY[0x1E12A2F50](v50, -1, -1);

      v58 = v69;
    }

    else
    {

      v55 = *(v15 + 8);
      v55(a1, v14);
      v58 = v46;
    }

    v55(v58, v14);
    v55(v21, v14);
    goto LABEL_20;
  }

  (*(v15 + 8))(a1, v14);
  v37 = MEMORY[0x1E69D0428];
  v39 = v71;
  v38 = v72;
  v36 = v69;
  v40 = v70;
LABEL_13:
  (*(v40 + 104))(v36, *v37, v39);
  (*(v40 + 32))(v38, v36, v39);
  v44 = 0;
  return (*(v40 + 56))(v38, v44, 1, v39);
}

uint64_t closure #1 in SiriXActionCandidate.init(fromCamActionCandidate:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v14 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes0A6XParseOSgMd, &_s16SiriMessageTypes0A6XParseOSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v14 - v8;
  ActionCandidate.flowHandlerId.getter();
  SiriXActionCandidate.Builder.flowHandlerId.setter();
  v10 = type metadata accessor for SiriXParse();
  v11 = *(v10 - 8);
  (*(v11 + 16))(v9, a3, v10);
  (*(v11 + 56))(v9, 0, 1, v10);
  SiriXActionCandidate.Builder.parse.setter();
  ActionCandidate.affinityScore.getter();
  SiriXActionCandidate.Builder.affinityScore.setter();
  ActionCandidate.loggingId.getter();
  v12 = type metadata accessor for UUID();
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  return SiriXActionCandidate.Builder.loggingId.setter();
}

uint64_t SiriXUSOParse.init(fromCamUsoParse:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes0A9XUSOParseVSgMd, &_s16SiriMessageTypes0A9XUSOParseVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v12[-v5];
  v13 = a1;
  SiriXUSOParse.init(build:)();
  v7 = type metadata accessor for SiriXUSOParse();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7))
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v6, &_s16SiriMessageTypes0A9XUSOParseVSgMd, &_s16SiriMessageTypes0A9XUSOParseVSgMR);
    v9 = type metadata accessor for CamUSOParse();
    (*(*(v9 - 8) + 8))(a1, v9);
    return (*(v8 + 56))(a2, 1, 1, v7);
  }

  else
  {
    (*(v8 + 32))(a2, v6, v7);
    (*(v8 + 56))(a2, 0, 1, v7);
    v11 = type metadata accessor for CamUSOParse();
    return (*(*(v11 - 8) + 8))(a1, v11);
  }
}

uint64_t closure #1 in SiriXUSOParse.init(fromCamUsoParse:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v6 - v2;
  CamUSOParse.userParse.getter();
  v4 = type metadata accessor for Siri_Nlu_External_UserParse();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  SiriXUSOParse.Builder.userParse.setter();
  CamUSOParse.parserIdentifier.getter();
  SiriXUSOParse.Builder.parserIdentifier.setter();
  CamUSOParse.appBundleId.getter();
  SiriXUSOParse.Builder.appBundleId.setter();
  CamUSOParse.groupIndex.getter();
  return SiriXUSOParse.Builder.groupIndex.setter();
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay14SiriKitRuntime28GeneralizedAppShortcutTargetVG_0dE4Flow8USOParseVs5NeverOTg5(void (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v20 = a1;
  v21 = a2;
  v19 = type metadata accessor for USOParse();
  v6 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a3 + 16);
  v10 = MEMORY[0x1E69E7CC0];
  if (!v9)
  {
    return v10;
  }

  v25 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9, 0);
  v10 = v25;
  v18[1] = v6 + 32;
  for (i = (a3 + 52); ; i += 24)
  {
    v12 = *(i - 12);
    v13 = *(i - 1);
    v14 = *i;
    v22[0] = *(i - 20);
    v22[1] = v12;
    v23 = v13;
    v24 = v14;

    v20(v22);
    if (v4)
    {
      break;
    }

    v4 = 0;

    v25 = v10;
    v16 = *(v10 + 16);
    v15 = *(v10 + 24);
    if (v16 >= v15 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1);
      v10 = v25;
    }

    *(v10 + 16) = v16 + 1;
    (*(v6 + 32))(v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v16, v8, v19);
    if (!--v9)
    {
      return v10;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySS11appBundleId_SDySSypG8userDatatG_14SiriKitRuntime09ParseUserH10AttachmentVs5NeverOTg5(void (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v19 = a1;
  v20 = a2;
  v6 = type metadata accessor for ParseUserDataAttachment(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  if (!v10)
  {
    return v11;
  }

  v22 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10, 0);
  v11 = v22;
  for (i = (a3 + 48); ; i += 3)
  {
    v13 = *(i - 1);
    v14 = *i;
    v21[0] = *(i - 2);
    v21[1] = v13;
    v21[2] = v14;

    v19(v21);
    if (v4)
    {
      break;
    }

    v4 = 0;

    v22 = v11;
    v16 = *(v11 + 16);
    v15 = *(v11 + 24);
    if (v16 >= v15 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1);
      v11 = v22;
    }

    *(v11 + 16) = v16 + 1;
    outlined init with take of StringKeyedValue(v9, v11 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v16, type metadata accessor for ParseUserDataAttachment);
    if (!--v10)
    {
      return v11;
    }
  }

  __break(1u);
  return result;
}

uint64_t ParseUserDataAttachment.uuid.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UUID();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ParseUserDataAttachment.parse.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ParseUserDataAttachment(0) + 20);
  v4 = type metadata accessor for Parse();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for ParseUserDataAttachment(uint64_t a1)
{
  result = type metadata singleton initialization cache for ParseUserDataAttachment;
  if (!type metadata singleton initialization cache for ParseUserDataAttachment)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ParseUserDataAttachment.userData.getter()
{
  type metadata accessor for ParseUserDataAttachment(0);
}

uint64_t ParseUserDataAttachment.init(parse:userData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  UUID.init()();
  v6 = type metadata accessor for ParseUserDataAttachment(0);
  v7 = *(v6 + 20);
  v8 = type metadata accessor for Parse();
  result = (*(*(v8 - 8) + 32))(a3 + v7, a1, v8);
  *(a3 + *(v6 + 24)) = a2;
  return result;
}

void *ActionGenerator.__allocating_init(conversationHandlerLocator:linkExpansionContextBuilder:appShortcutExpansionContextBuilder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_allocObject();
  result[3] = a3;
  result[4] = a1;
  result[2] = a2;
  return result;
}

void *ActionGenerator.init(conversationHandlerLocator:linkExpansionContextBuilder:appShortcutExpansionContextBuilder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a3;
  v3[4] = a1;
  v3[2] = a2;
  return v3;
}

uint64_t specialized FeatureToggle<>.isEnabled.getter()
{
  if (one-time initialization token for forceEnabled != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = static LinkFeature.forceEnabled;
  if (*(static LinkFeature.forceEnabled + 16) && (v1 = specialized __RawDictionaryStorage.find<A>(_:)(), (v2 & 1) != 0))
  {
    v3 = *(*(v0 + 56) + v1);
  }

  else
  {
    v5[3] = &type metadata for LinkFeature;
    v5[4] = lazy protocol witness table accessor for type LinkFeature and conformance LinkFeature();
    v3 = isFeatureEnabled(_:)();
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
  }

  return v3 & 1;
}

{
  if (one-time initialization token for forceEnabled != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = static SiriKitFlowFeatureFlagDefinitions.forceEnabled;
  if (*(static SiriKitFlowFeatureFlagDefinitions.forceEnabled + 16) && (v1 = specialized __RawDictionaryStorage.find<A>(_:)(), (v2 & 1) != 0))
  {
    v3 = *(*(v0 + 56) + v1);
  }

  else
  {
    v5[3] = &type metadata for SiriKitFlowFeatureFlagDefinitions;
    v5[4] = lazy protocol witness table accessor for type SiriKitFlowFeatureFlagDefinitions and conformance SiriKitFlowFeatureFlagDefinitions();
    v3 = isFeatureEnabled(_:)();
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
  }

  return v3 & 1;
}

{
  if (one-time initialization token for forceEnabled != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = static SiriPlaybackControlFeature.forceEnabled;
  if (*(static SiriPlaybackControlFeature.forceEnabled + 16) && (v1 = specialized __RawDictionaryStorage.find<A>(_:)(), (v2 & 1) != 0))
  {
    v3 = *(*(v0 + 56) + v1);
  }

  else
  {
    v5[3] = &type metadata for SiriPlaybackControlFeature;
    v5[4] = lazy protocol witness table accessor for type SiriPlaybackControlFeature and conformance SiriPlaybackControlFeature();
    v3 = isFeatureEnabled(_:)();
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
  }

  return v3 & 1;
}

{
  if (one-time initialization token for forceEnabled != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = static SiriPhoneFeature.forceEnabled;
  if (*(static SiriPhoneFeature.forceEnabled + 16) && (v1 = specialized __RawDictionaryStorage.find<A>(_:)(), (v2 & 1) != 0))
  {
    v3 = *(*(v0 + 56) + v1);
  }

  else
  {
    v5[3] = &type metadata for SiriPhoneFeature;
    v5[4] = lazy protocol witness table accessor for type SiriPhoneFeature and conformance SiriPhoneFeature();
    v3 = isFeatureEnabled(_:)();
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
  }

  return v3 & 1;
}

uint64_t specialized FeatureToggle<>.isEnabled.getter(uint64_t a1)
{
  if (one-time initialization token for forceEnabled != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = static AmbiguityFeatureFlags.forceEnabled;
  if (*(static AmbiguityFeatureFlags.forceEnabled + 16) && (v3 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v4 & 1) != 0))
  {
    v5 = *(*(v2 + 56) + v3);
  }

  else
  {
    v7[3] = &type metadata for AmbiguityFeatureFlags;
    v7[4] = lazy protocol witness table accessor for type AmbiguityFeatureFlags and conformance AmbiguityFeatureFlags();
    LOBYTE(v7[0]) = a1;
    v5 = isFeatureEnabled(_:)();
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
  }

  return v5 & 1;
}

{
  if (one-time initialization token for forceEnabled != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = static SydneyConversationFeatureFlags.forceEnabled;
  if (*(static SydneyConversationFeatureFlags.forceEnabled + 16) && (v3 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v4 & 1) != 0))
  {
    v5 = *(*(v2 + 56) + v3);
  }

  else
  {
    v7[3] = &type metadata for SydneyConversationFeatureFlags;
    v7[4] = lazy protocol witness table accessor for type SydneyConversationFeatureFlags and conformance SydneyConversationFeatureFlags();
    LOBYTE(v7[0]) = a1;
    v5 = isFeatureEnabled(_:)();
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
  }

  return v5 & 1;
}

uint64_t ActionGenerator.generateActionCandidates(from:rrCandidates:appShortcutProvider:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[52] = a3;
  v4[53] = v3;
  v4[50] = a1;
  v4[51] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tSgMd, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tSgMR);
  v4[54] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMR);
  v4[55] = v5;
  v4[56] = *(v5 - 8);
  v4[57] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMd, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMR);
  v4[58] = v6;
  v4[59] = *(v6 - 8);
  v4[60] = swift_task_alloc();
  v4[61] = swift_task_alloc();
  v4[62] = swift_task_alloc();
  v4[63] = swift_task_alloc();
  v4[64] = swift_task_alloc();
  v4[65] = swift_task_alloc();
  type metadata accessor for CamParse();
  v4[66] = swift_task_alloc();
  v4[67] = swift_task_alloc();
  v7 = type metadata accessor for ActionCandidate();
  v4[68] = v7;
  v4[69] = *(v7 - 8);
  v4[70] = swift_task_alloc();
  v4[71] = swift_task_alloc();
  v8 = type metadata accessor for USOParse();
  v4[72] = v8;
  v4[73] = *(v8 - 8);
  v4[74] = swift_task_alloc();
  v4[75] = swift_task_alloc();
  v9 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v4[76] = v9;
  v4[77] = *(v9 - 8);
  v4[78] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_12SiriNLUTypes0B23_Nlu_External_UserParseV7elementtMd, &_sSi6offset_12SiriNLUTypes0B23_Nlu_External_UserParseV7elementtMR);
  v4[79] = v10;
  v4[80] = *(v10 - 8);
  v4[81] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_12SiriNLUTypes0B23_Nlu_External_UserParseV7elementtSgMd, &_sSi6offset_12SiriNLUTypes0B23_Nlu_External_UserParseV7elementtSgMR);
  v4[82] = swift_task_alloc();
  v4[83] = swift_task_alloc();
  v11 = type metadata accessor for Siri_Nlu_External_Parser.ParserIdentifier();
  v4[84] = v11;
  v4[85] = *(v11 - 8);
  v4[86] = swift_task_alloc();
  v4[87] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5ParseOSgMd, &_s11SiriKitFlow5ParseOSgMR);
  v4[88] = swift_task_alloc();
  v12 = type metadata accessor for Parse();
  v4[89] = v12;
  v4[90] = *(v12 - 8);
  v4[91] = swift_task_alloc();
  v4[92] = swift_task_alloc();
  v4[93] = swift_task_alloc();
  v13 = type metadata accessor for UUID();
  v4[94] = v13;
  v4[95] = *(v13 - 8);
  v4[96] = swift_task_alloc();
  v4[97] = swift_task_alloc();
  v4[98] = swift_task_alloc();
  v4[99] = swift_task_alloc();
  v4[100] = swift_task_alloc();
  v14 = type metadata accessor for NLRouterParse();
  v4[101] = v14;
  v4[102] = *(v14 - 8);
  v4[103] = swift_task_alloc();
  v4[104] = swift_task_alloc();
  v4[105] = swift_task_alloc();
  v15 = type metadata accessor for NLRouterParse.InputCandidate();
  v4[106] = v15;
  v4[107] = *(v15 - 8);
  v4[108] = swift_task_alloc();
  v4[109] = swift_task_alloc();
  v16 = type metadata accessor for Siri_Nlu_External_Parser();
  v4[110] = v16;
  v4[111] = *(v16 - 8);
  v4[112] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR);
  v4[113] = swift_task_alloc();
  v17 = type metadata accessor for Siri_Nlu_External_UserParse();
  v4[114] = v17;
  v4[115] = *(v17 - 8);
  v4[116] = swift_task_alloc();
  v4[117] = swift_task_alloc();
  v4[118] = swift_task_alloc();
  v4[119] = swift_task_alloc();
  v4[120] = swift_task_alloc();
  v4[121] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow8USOParseVSgMd, &_s11SiriKitFlow8USOParseVSgMR);
  v4[122] = swift_task_alloc();
  v4[123] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0OSgMd, &_s16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0OSgMR);
  v4[124] = swift_task_alloc();
  v18 = type metadata accessor for NLRoutingDecisionMessage.RoutingDecision();
  v4[125] = v18;
  v4[126] = *(v18 - 8);
  v4[127] = swift_task_alloc();
  v4[128] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](ActionGenerator.generateActionCandidates(from:rrCandidates:appShortcutProvider:), 0, 0);
}

{
  v4 = *v3;
  v4[135] = a1;
  v4[136] = a2;
  v4[137] = a3;

  return MEMORY[0x1EEE6DFA0](ActionGenerator.generateActionCandidates(from:rrCandidates:appShortcutProvider:), 0, 0);
}

uint64_t ActionGenerator.generateActionCandidates(from:rrCandidates:appShortcutProvider:)()
{
  v283 = v0;
  if (one-time initialization token for executor != -1)
  {
    goto LABEL_102;
  }

  while (1)
  {
    v1 = type metadata accessor for Logger();
    *(v0 + 1032) = __swift_project_value_buffer(v1, static Logger.executor);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_1DC659000, v2, v3, "[ActionGenerator] Generating actions", v4, 2u);
      MEMORY[0x1E12A2F50](v4, -1, -1);
    }

    v5 = *(v0 + 1008);
    v6 = *(v0 + 1000);
    v7 = *(v0 + 992);
    v8 = *(v0 + 400);

    v9 = MEMORY[0x1E69E7CC0];
    *(v0 + 312) = MEMORY[0x1E69E7CC8];
    *(v0 + 320) = v9;
    v10 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_SiTt0g5Tf4g_n(v9);
    *(v0 + 1040) = v10;
    v270 = v10;
    *(v0 + 328) = v10;
    v275 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_SDySSypGTt0g5Tf4g_nTm(v9, &_s10Foundation4UUIDV_SDySSypGtMd, &_s10Foundation4UUIDV_SDySSypGtMR, &_ss18_DictionaryStorageCy10Foundation4UUIDVSDySSypGGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDVSDySSypGGMR);
    *(v0 + 1048) = v275;
    *(v0 + 336) = v9;
    v11 = *(v8 + 56);
    *(v0 + 1056) = v11;
    outlined init with copy of ReferenceResolutionClientProtocol?(v11 + OBJC_IVAR____TtC14SiriKitRuntime10NLResponse_nlRoutingDecision, v7, &_s16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0OSgMd, &_s16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0OSgMR);
    if ((*(v5 + 48))(v7, 1, v6) == 1)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(*(v0 + 992), &_s16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0OSgMd, &_s16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0OSgMR);
    }

    else
    {
      (*(*(v0 + 1008) + 32))(*(v0 + 1024), *(v0 + 992), *(v0 + 1000));
      if ((NLRoutingDecisionMessage.RoutingDecision.shouldBeHandledBySiriX.getter() & 1) == 0)
      {
        v12 = (*(v0 + 400) + OBJC_IVAR____TtC14SiriKitRuntime21ConversationUserInput_utterance);
        v13 = v12[1];
        if (v13)
        {
          v14 = *v12;
          v15 = *(v11 + 16);
          v265 = v13;
          if (*(v15 + 16))
          {
            v16 = *(v0 + 968);
            v278 = *(v0 + 960);
            v17 = *(v0 + 920);
            v18 = *(v0 + 912);
            v19 = *(v0 + 896);
            v260 = v14;
            v20 = *(v0 + 888);
            v236 = *(v0 + 904);
            v242 = *(v0 + 880);
            v246 = *(v0 + 680);
            v250 = *(v0 + 672);
            v21 = *(v17 + 16);
            v21(v16, v15 + ((*(v17 + 80) + 32) & ~*(v17 + 80)), v18);
            v21(v278, v16, v18);
            Siri_Nlu_External_UserParse.parser.getter();
            Siri_Nlu_External_Parser.parserID.getter();
            v22 = v19;
            v13 = v265;
            (*(v20 + 8))(v22, v242);
            v14 = v260;
            (*(v246 + 56))(v236, 0, 1, v250);
            USOParse.init(userParse:parserIdentifier:appBundleId:)();
            (*(v17 + 8))(v16, v18);
            v23 = 0;
          }

          else
          {
            v23 = 1;
          }

          v172 = *(v0 + 872);
          v173 = *(v0 + 856);
          v174 = *(v0 + 848);
          (*(*(v0 + 584) + 56))(*(v0 + 984), v23, 1, *(v0 + 576));
          *v172 = v14;
          v172[1] = v13;
          (*(v173 + 104))(v172, *MEMORY[0x1E69CFE20], v174);
          v175 = *(v11 + OBJC_IVAR____TtC14SiriKitRuntime10NLResponse_pommesInfo);
          if (v175)
          {
            v239 = *(v175 + 16);
            v176 = v239;
          }

          else
          {
            v239 = 0;
          }

          v263 = *(v0 + 984);
          v226 = *(v0 + 976);
          v177 = *(v0 + 872);
          v178 = *(v0 + 864);
          v179 = *(v0 + 856);
          v180 = *(v0 + 848);
          v280 = *(v0 + 840);
          v181 = *(v0 + 816);
          v228 = *(v0 + 800);
          v230 = *(v0 + 808);
          v182 = *(v0 + 760);
          v244 = *(v0 + 792);
          v248 = *(v0 + 752);
          v183 = *(v0 + 744);
          v184 = *(v0 + 720);
          v233 = *(v0 + 712);
          v254 = *(v0 + 704);
          v258 = *(v0 + 832);
          (*(*(v0 + 1008) + 16))();
          (*(v179 + 16))(v178, v177, v180);
          outlined init with copy of ReferenceResolutionClientProtocol?(v263, v226, &_s11SiriKitFlow8USOParseVSgMd, &_s11SiriKitFlow8USOParseVSgMR);
          v264 = v239;

          NLRouterParse.init(nlRoutingDecision:input:usoParse:pommesResponse:)();
          UUID.init()();
          v185 = *(v181 + 16);
          v185(v183, v280, v230);
          (*(v184 + 104))(v183, *MEMORY[0x1E69D0180], v233);
          (*(v182 + 16))(v244, v228, v248);
          (*(v184 + 16))(v254, v183, v233);
          (*(v184 + 56))(v254, 0, 1, v233);
          specialized SimpleOrderedDictionary.subscript.setter(v254, v244);
          v186 = *(v270 + 16);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v186, v228, isUniquelyReferenced_nonNull_native);
          *(v0 + 328) = v270;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_1DCA66060;
          *(inited + 32) = 0x726574756F526C6ELL;
          *(inited + 40) = 0xE800000000000000;
          *(inited + 72) = v230;
          boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 48));
          v185(boxed_opaque_existential_0, v280, v230);
          v190 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
          swift_setDeallocating();
          outlined destroy of ReferenceResolutionClientProtocol?(inited + 32, &_sSS_yptMd, &_sSS_yptMR);
          v191 = swift_isUniquelyReferenced_nonNull_native();
          v282[0] = v275;
          v192 = v185;
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v190, v228, v191);
          v185(v258, v280, v230);
          v193 = Logger.logObject.getter();
          v194 = static os_log_type_t.debug.getter();
          v195 = os_log_type_enabled(v193, v194);
          v274 = *(v0 + 1024);
          v281 = *(v0 + 1008);
          v269 = *(v0 + 1000);
          v255 = *(v0 + 872);
          v259 = *(v0 + 984);
          v196 = *(v0 + 856);
          v245 = *(v0 + 840);
          v249 = *(v0 + 848);
          v197 = *(v0 + 832);
          if (v195)
          {
            v198 = *(v0 + 824);
            v234 = *(v0 + 856);
            v199 = *(v0 + 808);
            v229 = *(v0 + 752);
            v231 = *(v0 + 800);
            v225 = *(v0 + 744);
            v227 = *(v0 + 760);
            v222 = *(v0 + 816);
            v223 = *(v0 + 720);
            v224 = *(v0 + 712);
            v200 = swift_slowAlloc();
            v201 = swift_slowAlloc();
            v282[0] = v201;
            *v200 = 136315138;
            v192(v198, v197, v199);
            v240 = v194;
            v202 = v199;
            v203 = String.init<A>(describing:)();
            v205 = v204;
            v206 = *(v222 + 8);
            v206(v197, v202);
            v207 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v203, v205, v282);

            *(v200 + 4) = v207;
            _os_log_impl(&dword_1DC659000, v193, v240, "[ActionGenerator] Found NLRoutingDecision. Generating parse for it. nl router parse: %s", v200, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v201);
            MEMORY[0x1E12A2F50](v201, -1, -1);
            MEMORY[0x1E12A2F50](v200, -1, -1);

            (*(v223 + 8))(v225, v224);
            (*(v227 + 8))(v231, v229);
            v206(v245, v202);
            (*(v234 + 8))(v255, v249);
          }

          else
          {
            v208 = *(v0 + 816);
            v209 = *(v0 + 808);
            v210 = *(v0 + 760);
            v235 = *(v0 + 752);
            v241 = *(v0 + 800);
            v211 = *(v0 + 744);
            v212 = *(v0 + 720);
            v213 = *(v0 + 712);

            v214 = *(v208 + 8);
            v214(v197, v209);
            (*(v212 + 8))(v211, v213);
            (*(v210 + 8))(v241, v235);
            v214(v245, v209);
            (*(v196 + 8))(v255, v249);
          }

          outlined destroy of ReferenceResolutionClientProtocol?(v259, &_s11SiriKitFlow8USOParseVSgMd, &_s11SiriKitFlow8USOParseVSgMR);
          (*(v281 + 8))(v274, v269);
          v47 = 0;
LABEL_95:
          *(v0 + 1256) = v275;
          *(v0 + 1248) = v47;
          v215 = Logger.logObject.getter();
          v216 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v215, v216))
          {
            v217 = swift_slowAlloc();
            *v217 = 0;
            _os_log_impl(&dword_1DC659000, v215, v216, "[ActionGenerator] Finding plugins/extensions", v217, 2u);
            MEMORY[0x1E12A2F50](v217, -1, -1);
          }

          v218 = *(v0 + 312);
          v219 = *(v0 + 320);
          *(v0 + 1264) = v218;
          *(v0 + 1272) = v219;

          v220 = swift_task_alloc();
          *(v0 + 1280) = v220;
          *v220 = v0;
          v220[1] = ActionGenerator.generateActionCandidates(from:rrCandidates:appShortcutProvider:);

          return ConversationHandlerLocator.allHandlers(for:)(v218, v219);
        }
      }

      (*(*(v0 + 1008) + 8))(*(v0 + 1024), *(v0 + 1000));
    }

    v24 = *(v11 + 16);
    if (!*(v24 + 16))
    {
      v47 = 0;
LABEL_64:
      v105 = *(*(v0 + 1056) + OBJC_IVAR____TtC14SiriKitRuntime10NLResponse_pommesInfo);
      if (v105)
      {
        v106 = *(v105 + 16);
        if (v106)
        {
          v107 = *(v0 + 792);
          v108 = *(v0 + 776);
          v109 = *(v0 + 760);
          v110 = *(v0 + 752);
          v111 = *(v0 + 720);
          v112 = *(v0 + 712);
          v113 = *(v0 + 704);
          v114 = v106;
          UUID.init()();
          (*(v109 + 16))(v107, v108, v110);
          *v113 = v114;
          (*(v111 + 104))(v113, *MEMORY[0x1E69D0138], v112);
          (*(v111 + 56))(v113, 0, 1, v112);
          v115 = v114;
          specialized SimpleOrderedDictionary.subscript.setter(v113, v107);
          v116 = *(v270 + 16);
          v117 = *(v0 + 328);
          v118 = swift_isUniquelyReferenced_nonNull_native();
          v282[0] = v117;
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v116, v108, v118);
          *(v0 + 328) = v117;
          v119 = Logger.logObject.getter();
          v120 = static os_log_type_t.debug.getter();
          v121 = os_log_type_enabled(v119, v120);
          v122 = *(v0 + 776);
          v123 = *(v0 + 760);
          v124 = *(v0 + 752);
          if (v121)
          {
            v125 = swift_slowAlloc();
            *v125 = 0;
            _os_log_impl(&dword_1DC659000, v119, v120, "[ActionGenerator] Found PommesResponse. Generating parse for it", v125, 2u);
            MEMORY[0x1E12A2F50](v125, -1, -1);
          }

          else
          {
          }

          (*(v123 + 8))(v122, v124);
        }
      }

      goto LABEL_95;
    }

    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 134217984;
      *(v27 + 4) = *(v24 + 16);
      _os_log_impl(&dword_1DC659000, v25, v26, "[ActionGenerator] Found %ld unranked parses.", v27, 0xCu);
      MEMORY[0x1E12A2F50](v27, -1, -1);
    }

    v28 = specialized ActionGenerator.dedupeAppShortcuts(parses:)(v24);

    v29 = v28;
    v279 = *(v28 + 16);
    if (!v279)
    {
      break;
    }

    v30 = 0;
    v31 = *(v0 + 920);
    v32 = *(v0 + 680);
    v261 = (*(v0 + 888) + 8);
    v256 = *MEMORY[0x1E69D0968];
    v251 = (v32 + 104);
    v247 = (v32 + 8);
    v232 = (v31 + 32);
    v271 = v31;
    v243 = (v31 + 8);
    v237 = MEMORY[0x1E69E7CC0];
    v276 = v28;
    while (v30 < *(v29 + 16))
    {
      v33 = *(v0 + 896);
      v34 = *(v0 + 880);
      v35 = *(v0 + 696);
      v36 = *(v0 + 688);
      v37 = *(v0 + 672);
      v38 = (*(v271 + 80) + 32) & ~*(v271 + 80);
      v39 = *(v271 + 72);
      (*(v271 + 16))(*(v0 + 952), v29 + v38 + v39 * v30, *(v0 + 912));
      Siri_Nlu_External_UserParse.parser.getter();
      Siri_Nlu_External_Parser.parserID.getter();
      (*v261)(v33, v34);
      (*v251)(v36, v256, v37);
      lazy protocol witness table accessor for type MessageBusActor and conformance MessageBusActor(&lazy protocol witness table cache variable for type Siri_Nlu_External_Parser.ParserIdentifier and conformance Siri_Nlu_External_Parser.ParserIdentifier, MEMORY[0x1E69D0990], MEMORY[0x1E69D09A8]);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      v40 = *v247;
      (*v247)(v36, v37);
      v40(v35, v37);
      if (*(v0 + 344) == *(v0 + 352) || (Siri_Nlu_External_UserParse.isOverriddenPSC.getter() & 1) != 0)
      {
        (*v243)(*(v0 + 952), *(v0 + 912));
      }

      else
      {
        v41 = *v232;
        (*v232)(*(v0 + 944), *(v0 + 952), *(v0 + 912));
        v42 = v237;
        v282[0] = v237;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v237 + 16) + 1, 1);
          v42 = v282[0];
        }

        v44 = *(v42 + 16);
        v43 = *(v42 + 24);
        if (v44 >= v43 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v43 > 1), v44 + 1, 1);
          v42 = v282[0];
        }

        v45 = *(v0 + 944);
        v46 = *(v0 + 912);
        *(v42 + 16) = v44 + 1;
        v237 = v42;
        v41(v42 + v38 + v44 * v39, v45, v46);
      }

      ++v30;
      v29 = v276;
      if (v279 == v30)
      {
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_101:
    __break(1u);
LABEL_102:
    swift_once();
  }

  v237 = MEMORY[0x1E69E7CC0];
LABEL_28:
  *(v0 + 1064) = v237;

  if (one-time initialization token for forceEnabled != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v48 = static LinkFeature.forceEnabled;
  if (*(static LinkFeature.forceEnabled + 16) && (v49 = specialized __RawDictionaryStorage.find<A>(_:)(), (v50 & 1) != 0))
  {
    if (*(*(v48 + 56) + v49) != 1)
    {
      goto LABEL_39;
    }
  }

  else
  {
    *(v0 + 200) = &type metadata for LinkFeature;
    *(v0 + 208) = lazy protocol witness table accessor for type LinkFeature and conformance LinkFeature();
    v51 = isFeatureEnabled(_:)();
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 176));
    if ((v51 & 1) == 0)
    {
      goto LABEL_39;
    }
  }

  if (specialized Sequence<>.isContainsAppShortcutParse.getter(v237))
  {
    v52 = swift_task_alloc();
    *(v0 + 1072) = v52;
    *v52 = v0;
    v52[1] = ActionGenerator.generateActionCandidates(from:rrCandidates:appShortcutProvider:);
    v53 = *(v0 + 408);

    return ActionGenerator.getAppShortcutExpansionContext(rrCandidates:nlParses:)(v53, v237);
  }

LABEL_39:
  if (one-time initialization token for emptyContext != -1)
  {
    swift_once();
  }

  v56 = static AppShortcutExpansionContext.emptyContext;
  v55 = *algn_1EE15DC78;
  v57 = qword_1EE15DC80;
  *(v0 + 1120) = qword_1EE15DC80;
  *(v0 + 1112) = v55;
  *(v0 + 1104) = v56;
  type metadata accessor for AppShortcutParseExpansion();

  v58 = swift_initStackObject();
  *(v0 + 1128) = v58;
  v58[2] = v56;
  v58[3] = v55;
  v58[4] = v57;
  *(v0 + 1296) = *MEMORY[0x1E69D0168];
  *(v0 + 1300) = *MEMORY[0x1E69D0980];
  v270 = *(v0 + 1040);
  v275 = *(v0 + 1048);

  v47 = 0;
  v59 = 0;
  v60 = MEMORY[0x1E69E7CC0];
  while (2)
  {
    v61 = *(v0 + 1064);
    v62 = *(v61 + 16);
    if (v59 == v62)
    {
      v63 = 1;
    }

    else
    {
      if (v59 >= v62)
      {
        goto LABEL_101;
      }

      v64 = *(v0 + 920);
      v65 = *(v0 + 912);
      v66 = *(v0 + 656);
      v67 = *(v0 + 648);
      v68 = v59 + 1;
      v69 = *(v64 + 16);
      v70 = v61 + ((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * v59;
      v71 = *(*(v0 + 632) + 48);
      *v67 = v59;
      v69(v67 + v71, v70, v65);
      outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v67, v66, &_sSi6offset_12SiriNLUTypes0B23_Nlu_External_UserParseV7elementtMd, &_sSi6offset_12SiriNLUTypes0B23_Nlu_External_UserParseV7elementtMR);
      v63 = 0;
      v59 = v68;
    }

    *(v0 + 1136) = v59;
    v72 = *(v0 + 664);
    v73 = *(v0 + 656);
    v74 = *(v0 + 640);
    v75 = *(v0 + 632);
    (*(v74 + 56))(v73, v63, 1, v75);
    outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v73, v72, &_sSi6offset_12SiriNLUTypes0B23_Nlu_External_UserParseV7elementtSgMd, &_sSi6offset_12SiriNLUTypes0B23_Nlu_External_UserParseV7elementtSgMR);
    if ((*(v74 + 48))(v72, 1, v75) == 1)
    {

      swift_setDeallocating();

      goto LABEL_64;
    }

    v76 = *(v0 + 936);
    v77 = *(v0 + 920);
    v78 = *(v0 + 912);
    v79 = *(v0 + 664);
    v80 = *(v0 + 632);
    *(v0 + 1144) = *v79;
    v81 = (*(v77 + 32))(v76, &v79[*(v80 + 48)], v78);
    v82 = MEMORY[0x1E129C0F0](v81);
    if (*(v82 + 16))
    {
      v83 = *(v0 + 624);
      v84 = *(v0 + 616);
      v85 = *(v0 + 608);
      (*(v84 + 16))(v83, v82 + ((*(v84 + 80) + 32) & ~*(v84 + 80)), v85);

      v86 = Siri_Nlu_External_UserDialogAct.toUsoTask()();
      (*(v84 + 8))(v83, v85);
      if (v86)
      {

        static UsoTask_CodegenConverter.convert(task:)();

        if (*(v0 + 280))
        {
          type metadata accessor for UsoTask_run_common_VoiceCommand();
          if (swift_dynamicCast())
          {
            v88 = UsoTask_run_common_VoiceCommand.appShortcuts.getter(v87);

            if (!*(v88 + 2))
            {
              goto LABEL_52;
            }

LABEL_59:
            v92 = *(v0 + 1128);
            v101 = *(v0 + 936);
            v102 = swift_task_alloc();
            *(v102 + 16) = v92;
            *(v102 + 24) = v101;
            v93 = specialized Sequence.compactMap<A>(_:)(partial apply for closure #1 in AppShortcutParseExpansion.expandExactMatchParses(nlParse:appShortcutTargets:), v102, v88);

LABEL_60:

            goto LABEL_61;
          }
        }

        else
        {

          outlined destroy of ReferenceResolutionClientProtocol?(v0 + 256, &_sypSgMd, &_sypSgMR);
        }
      }
    }

    else
    {
    }

    v88 = v60;
    if (*(v60 + 16))
    {
      goto LABEL_59;
    }

LABEL_52:

    v89 = Siri_Nlu_External_UserParse.generalizedAppShortcuts.getter();
    if (*(v89 + 2))
    {
      v90 = *(v0 + 936);
      v91 = v89;
      v92 = swift_task_alloc();
      *(v92 + 16) = v90;
      v93 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay14SiriKitRuntime28GeneralizedAppShortcutTargetVG_0dE4Flow8USOParseVs5NeverOTg5(partial apply for closure #1 in AppShortcutParseExpansion.expand(nlParse:), v92, v91);

      goto LABEL_60;
    }

    v94 = *(v0 + 960);
    v95 = *(v0 + 936);
    v92 = *(v0 + 920);
    v252 = *(v0 + 912);
    v88 = *(v0 + 904);
    v96 = *(v0 + 896);
    v97 = *(v0 + 888);
    v98 = *(v0 + 680);
    v262 = *(v0 + 880);
    v266 = *(v0 + 672);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11SiriKitFlow8USOParseVGMd, &_ss23_ContiguousArrayStorageCy11SiriKitFlow8USOParseVGMR);
    v93 = swift_allocObject();
    *(v93 + 16) = xmmword_1DCA66060;
    v99 = *(v92 + 16);
    LOBYTE(v92) = v92 + 16;
    v99(v94, v95, v252);
    Siri_Nlu_External_UserParse.parser.getter();
    Siri_Nlu_External_Parser.parserID.getter();
    (*(v97 + 8))(v96, v262);
    v60 = MEMORY[0x1E69E7CC0];
    (*(v98 + 56))(v88, 0, 1, v266);
    v100 = USOParse.init(userParse:parserIdentifier:appBundleId:)();
LABEL_61:
    *(v0 + 1160) = v93;
    *(v0 + 1152) = v47;
    v103 = *(v93 + 16);
    *(v0 + 1168) = v103;
    if (!v103)
    {
      v104 = *(v0 + 920);

      (*(v104 + 8))(*(v0 + 936), *(v0 + 912));
      v47 = *(v0 + 1152);
      v59 = *(v0 + 1136);
      continue;
    }

    break;
  }

  v126 = *(v0 + 584);
  v127 = *(v126 + 80);
  *(v0 + 1304) = v127;
  *(v0 + 1192) = v60;
  *(v0 + 1184) = 0;
  *(v0 + 1176) = v275;
  if (!*(v93 + 16))
  {
    __break(1u);
LABEL_104:
    __break(1u);
LABEL_105:
    v221 = v100;
    specialized _NativeDictionary.copy()();
    v100 = v221;
    goto LABEL_81;
  }

  v128 = *(v0 + 600);
  v129 = *(v0 + 592);
  v130 = *(v0 + 576);
  v131 = *(v126 + 16);
  v131(v128, v93 + ((v127 + 32) & ~v127), v130);
  v277 = v131;
  v131(v129, v128, v130);
  v132 = Logger.logObject.getter();
  v133 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v132, v133))
  {
    v134 = *(v0 + 960);
    v135 = *(v0 + 920);
    v136 = *(v0 + 896);
    v137 = *(v0 + 888);
    v253 = *(v0 + 912);
    v257 = *(v0 + 880);
    v238 = *(v0 + 592);
    v138 = *(v0 + 584);
    v267 = *(v0 + 576);
    v139 = swift_slowAlloc();
    v272 = swift_slowAlloc();
    v282[0] = v272;
    *v139 = 136315138;
    USOParse.userParse.getter();
    Siri_Nlu_External_UserParse.parser.getter();
    (*(v135 + 8))(v134, v253);
    Siri_Nlu_External_Parser.parserID.getter();
    (*(v137 + 8))(v136, v257);
    v140 = String.init<A>(describing:)();
    v142 = v141;
    v143 = *(v138 + 8);
    v143(v238, v267);
    v144 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v140, v142, v282);

    *(v139 + 4) = v144;
    _os_log_impl(&dword_1DC659000, v132, v133, "[ActionGenerator] Generating UUID for parse of type: %s", v139, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v272);
    MEMORY[0x1E12A2F50](v272, -1, -1);
    MEMORY[0x1E12A2F50](v139, -1, -1);
  }

  else
  {
    v145 = *(v0 + 592);
    v146 = *(v0 + 584);
    v147 = *(v0 + 576);

    v143 = *(v146 + 8);
    v143(v145, v147);
  }

  *(v0 + 1200) = v143;
  v148 = *(v0 + 1296);
  v273 = *(v0 + 792);
  v92 = *(v0 + 784);
  v149 = *(v0 + 760);
  v268 = *(v0 + 752);
  v150 = *(v0 + 736);
  v151 = *(v0 + 720);
  v152 = *(v0 + 712);
  v153 = *(v0 + 704);
  v154 = *(v0 + 600);
  v155 = *(v0 + 576);
  UUID.init()();
  v277(v150, v154, v155);
  (*(v151 + 104))(v150, v148, v152);
  v88 = *(v149 + 16);
  *(v0 + 1208) = v88;
  *(v0 + 1216) = (v149 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  (v88)(v273, v92, v268);
  (*(v151 + 16))(v153, v150, v152);
  (*(v151 + 56))(v153, 0, 1, v152);
  specialized SimpleOrderedDictionary.subscript.setter(v153, v273);
  v156 = *(v0 + 328);
  v157 = swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 360) = v156;
  v100 = specialized __RawDictionaryStorage.find<A>(_:)(v92);
  v159 = *(v156 + 16);
  v160 = (v158 & 1) == 0;
  v161 = __OFADD__(v159, v160);
  v162 = v159 + v160;
  if (v161)
  {
    goto LABEL_104;
  }

  LOBYTE(v92) = v158;
  if (*(v156 + 24) >= v162)
  {
    if (v157)
    {
      goto LABEL_81;
    }

    goto LABEL_105;
  }

  v163 = *(v0 + 784);
  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v162, v157);
  v100 = specialized __RawDictionaryStorage.find<A>(_:)(v163);
  if ((v92 & 1) != (v164 & 1))
  {

    return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  }

LABEL_81:
  v165 = *(v0 + 360);
  *(v0 + 1224) = v165;
  v166 = *(v0 + 1144);
  if (v92)
  {
    *(v165[7] + 8 * v100) = v166;
  }

  else
  {
    v167 = *(v0 + 792);
    v168 = v100;
    (v88)(v167, *(v0 + 784), *(v0 + 752));
    specialized _NativeDictionary._insert(at:key:value:)(v168, v167, v166, v165);
  }

  *(v0 + 328) = v165;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  v169 = swift_initStackObject();
  *(v0 + 1232) = v169;
  *(v169 + 16) = xmmword_1DCA66060;
  *(v169 + 32) = 0xD000000000000014;
  *(v169 + 40) = 0x80000001DCA7C5C0;
  v170 = swift_task_alloc();
  *(v0 + 1240) = v170;
  *v170 = v0;
  v170[1] = ActionGenerator.generateActionCandidates(from:rrCandidates:appShortcutProvider:);
  v171 = *(v0 + 416);

  return MEMORY[0x1EEE39E98](v171);
}

{
  v142 = v0;
  v3 = *(v0 + 1096);
  v4 = *(v0 + 1088);
  v5 = *(v0 + 1080);
  *(v0 + 1120) = v3;
  *(v0 + 1112) = v4;
  *(v0 + 1104) = v5;
  type metadata accessor for AppShortcutParseExpansion();
  inited = swift_initStackObject();
  *(v0 + 1128) = inited;
  inited[2] = v5;
  inited[3] = v4;
  inited[4] = v3;
  *(v0 + 1296) = *MEMORY[0x1E69D0168];
  *(v0 + 1300) = *MEMORY[0x1E69D0980];
  v128 = *(v0 + 1040);
  v129 = *(v0 + 1048);

  v8 = 0;
  v9 = 0;
  v10 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v11 = *(v0 + 1064);
    v12 = *(v11 + 16);
    if (v9 == v12)
    {
      v13 = 1;
    }

    else
    {
      if (v9 >= v12)
      {
        __break(1u);
        goto LABEL_52;
      }

      v14 = *(v0 + 920);
      v15 = *(v0 + 912);
      v16 = *(v0 + 656);
      v17 = *(v0 + 648);
      v18 = v9 + 1;
      v19 = *(v14 + 16);
      v20 = v11 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v9;
      v21 = *(*(v0 + 632) + 48);
      *v17 = v9;
      v19(v17 + v21, v20, v15);
      outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v17, v16, &_sSi6offset_12SiriNLUTypes0B23_Nlu_External_UserParseV7elementtMd, &_sSi6offset_12SiriNLUTypes0B23_Nlu_External_UserParseV7elementtMR);
      v13 = 0;
      v9 = v18;
    }

    *(v0 + 1136) = v9;
    v22 = *(v0 + 664);
    v23 = *(v0 + 656);
    v24 = *(v0 + 640);
    v25 = *(v0 + 632);
    (*(v24 + 56))(v23, v13, 1, v25);
    outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v23, v22, &_sSi6offset_12SiriNLUTypes0B23_Nlu_External_UserParseV7elementtSgMd, &_sSi6offset_12SiriNLUTypes0B23_Nlu_External_UserParseV7elementtSgMR);
    if ((*(v24 + 48))(v22, 1, v25) == 1)
    {
      break;
    }

    v26 = *(v0 + 936);
    v27 = *(v0 + 920);
    v28 = *(v0 + 912);
    v29 = *(v0 + 664);
    v30 = *(v0 + 632);
    *(v0 + 1144) = *v29;
    v31 = (*(v27 + 32))(v26, &v29[*(v30 + 48)], v28);
    v32 = MEMORY[0x1E129C0F0](v31);
    if (*(v32 + 16))
    {
      v33 = *(v0 + 624);
      v34 = *(v0 + 616);
      v35 = *(v0 + 608);
      (*(v34 + 16))(v33, v32 + ((*(v34 + 80) + 32) & ~*(v34 + 80)), v35);

      v36 = Siri_Nlu_External_UserDialogAct.toUsoTask()();
      (*(v34 + 8))(v33, v35);
      if (v36)
      {

        static UsoTask_CodegenConverter.convert(task:)();

        if (*(v0 + 280))
        {
          type metadata accessor for UsoTask_run_common_VoiceCommand();
          if (swift_dynamicCast())
          {
            v2 = UsoTask_run_common_VoiceCommand.appShortcuts.getter(v37);

            if (*(v2 + 2))
            {
              goto LABEL_19;
            }

            goto LABEL_12;
          }
        }

        else
        {

          outlined destroy of ReferenceResolutionClientProtocol?(v0 + 256, &_sypSgMd, &_sypSgMR);
        }
      }
    }

    else
    {
    }

    v2 = v10;
    if (*(v10 + 16))
    {
LABEL_19:
      v4 = *(v0 + 1128);
      v47 = *(v0 + 936);
      v48 = swift_task_alloc();
      *(v48 + 16) = v4;
      *(v48 + 24) = v47;
      v41 = specialized Sequence.compactMap<A>(_:)(partial apply for closure #1 in AppShortcutParseExpansion.expandExactMatchParses(nlParse:appShortcutTargets:), v48, v2);

      goto LABEL_20;
    }

LABEL_12:

    v38 = Siri_Nlu_External_UserParse.generalizedAppShortcuts.getter();
    if (!*(v38 + 2))
    {
      v42 = *(v0 + 960);
      v43 = *(v0 + 936);
      v44 = *(v0 + 920);
      v132 = *(v0 + 912);
      v2 = *(v0 + 904);
      v4 = *(v0 + 896);
      v140 = v1;
      v45 = *(v0 + 888);
      v46 = *(v0 + 680);
      v135 = *(v0 + 880);
      v138 = *(v0 + 672);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11SiriKitFlow8USOParseVGMd, &_ss23_ContiguousArrayStorageCy11SiriKitFlow8USOParseVGMR);
      v41 = swift_allocObject();
      *(v41 + 16) = xmmword_1DCA66060;
      (*(v44 + 16))(v42, v43, v132);
      Siri_Nlu_External_UserParse.parser.getter();
      Siri_Nlu_External_Parser.parserID.getter();
      (*(v45 + 8))(v4, v135);
      v1 = v140;
      (*(v46 + 56))(v2, 0, 1, v138);
      v10 = MEMORY[0x1E69E7CC0];
      v7 = USOParse.init(userParse:parserIdentifier:appBundleId:)();
      goto LABEL_21;
    }

    v39 = *(v0 + 936);
    v40 = v38;
    v4 = swift_task_alloc();
    *(v4 + 16) = v39;
    v41 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay14SiriKitRuntime28GeneralizedAppShortcutTargetVG_0dE4Flow8USOParseVs5NeverOTg5(partial apply for closure #1 in AppShortcutParseExpansion.expand(nlParse:), v4, v40);

LABEL_20:

    v1 = v8;
LABEL_21:
    *(v0 + 1160) = v41;
    *(v0 + 1152) = v8;
    v49 = *(v41 + 16);
    *(v0 + 1168) = v49;
    if (v49)
    {
      v73 = *(v0 + 584);
      v74 = *(v73 + 80);
      *(v0 + 1304) = v74;
      *(v0 + 1192) = v10;
      *(v0 + 1184) = 0;
      *(v0 + 1176) = v129;
      if (*(v41 + 16))
      {
        v75 = *(v0 + 600);
        v76 = *(v0 + 592);
        v77 = *(v0 + 576);
        v78 = *(v73 + 16);
        v78(v75, v41 + ((v74 + 32) & ~v74), v77);
        v139 = v78;
        v78(v76, v75, v77);
        v79 = Logger.logObject.getter();
        v80 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v79, v80))
        {
          v81 = *(v0 + 960);
          v82 = *(v0 + 920);
          v83 = *(v0 + 896);
          v84 = *(v0 + 888);
          v130 = *(v0 + 912);
          v131 = *(v0 + 880);
          v127 = *(v0 + 592);
          v85 = *(v0 + 584);
          v133 = *(v0 + 576);
          v86 = swift_slowAlloc();
          v136 = swift_slowAlloc();
          v141 = v136;
          *v86 = 136315138;
          USOParse.userParse.getter();
          Siri_Nlu_External_UserParse.parser.getter();
          (*(v82 + 8))(v81, v130);
          Siri_Nlu_External_Parser.parserID.getter();
          (*(v84 + 8))(v83, v131);
          v87 = String.init<A>(describing:)();
          v89 = v88;
          v90 = *(v85 + 8);
          v90(v127, v133);
          v91 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v87, v89, &v141);

          *(v86 + 4) = v91;
          _os_log_impl(&dword_1DC659000, v79, v80, "[ActionGenerator] Generating UUID for parse of type: %s", v86, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v136);
          MEMORY[0x1E12A2F50](v136, -1, -1);
          MEMORY[0x1E12A2F50](v86, -1, -1);
        }

        else
        {
          v92 = *(v0 + 592);
          v93 = *(v0 + 584);
          v94 = *(v0 + 576);

          v90 = *(v93 + 8);
          v90(v92, v94);
        }

        *(v0 + 1200) = v90;
        v95 = *(v0 + 1296);
        v4 = *(v0 + 784);
        v96 = *(v0 + 760);
        v134 = *(v0 + 752);
        v137 = *(v0 + 792);
        v97 = *(v0 + 736);
        v98 = *(v0 + 720);
        v99 = *(v0 + 712);
        v100 = *(v0 + 704);
        v101 = *(v0 + 600);
        v102 = *(v0 + 576);
        UUID.init()();
        v139(v97, v101, v102);
        (*(v98 + 104))(v97, v95, v99);
        v2 = *(v96 + 16);
        *(v0 + 1208) = v2;
        *(v0 + 1216) = (v96 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
        (v2)(v137, v4, v134);
        (*(v98 + 16))(v100, v97, v99);
        (*(v98 + 56))(v100, 0, 1, v99);
        specialized SimpleOrderedDictionary.subscript.setter(v100, v137);
        v103 = *(v0 + 328);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v0 + 360) = v103;
        v7 = specialized __RawDictionaryStorage.find<A>(_:)(v4);
        v106 = *(v103 + 16);
        v107 = (v105 & 1) == 0;
        v108 = __OFADD__(v106, v107);
        v109 = v106 + v107;
        if (!v108)
        {
          LOBYTE(v4) = v105;
          if (*(v103 + 24) < v109)
          {
            v110 = *(v0 + 784);
            specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v109, isUniquelyReferenced_nonNull_native);
            v7 = specialized __RawDictionaryStorage.find<A>(_:)(v110);
            if ((v4 & 1) != (v111 & 1))
            {

              return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            }

            goto LABEL_38;
          }

          if (isUniquelyReferenced_nonNull_native)
          {
LABEL_38:
            v113 = *(v0 + 360);
            *(v0 + 1224) = v113;
            v114 = *(v0 + 1144);
            if (v4)
            {
              *(v113[7] + 8 * v7) = v114;
            }

            else
            {
              v115 = *(v0 + 792);
              v116 = v7;
              (v2)(v115, *(v0 + 784), *(v0 + 752));
              specialized _NativeDictionary._insert(at:key:value:)(v116, v115, v114, v113);
            }

            *(v0 + 328) = v113;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
            v117 = swift_initStackObject();
            *(v0 + 1232) = v117;
            *(v117 + 16) = xmmword_1DCA66060;
            *(v117 + 32) = 0xD000000000000014;
            *(v117 + 40) = 0x80000001DCA7C5C0;
            v118 = swift_task_alloc();
            *(v0 + 1240) = v118;
            *v118 = v0;
            v118[1] = ActionGenerator.generateActionCandidates(from:rrCandidates:appShortcutProvider:);
            v119 = *(v0 + 416);

            return MEMORY[0x1EEE39E98](v119);
          }

LABEL_54:
          v126 = v7;
          specialized _NativeDictionary.copy()();
          v7 = v126;
          goto LABEL_38;
        }

LABEL_53:
        __break(1u);
        goto LABEL_54;
      }

LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    v50 = *(v0 + 920);

    v7 = (*(v50 + 8))(*(v0 + 936), *(v0 + 912));
    v8 = *(v0 + 1152);
    v9 = *(v0 + 1136);
  }

  swift_setDeallocating();

  v51 = *(*(v0 + 1056) + OBJC_IVAR____TtC14SiriKitRuntime10NLResponse_pommesInfo);
  if (v51)
  {
    v52 = *(v51 + 16);
    if (v52)
    {
      v53 = *(v0 + 792);
      v54 = *(v0 + 776);
      v55 = *(v0 + 760);
      v56 = *(v0 + 752);
      v57 = *(v0 + 720);
      v58 = *(v0 + 712);
      v59 = *(v0 + 704);
      v60 = v52;
      UUID.init()();
      (*(v55 + 16))(v53, v54, v56);
      *v59 = v60;
      (*(v57 + 104))(v59, *MEMORY[0x1E69D0138], v58);
      (*(v57 + 56))(v59, 0, 1, v58);
      v61 = v60;
      specialized SimpleOrderedDictionary.subscript.setter(v59, v53);
      v62 = *(v128 + 16);
      v63 = *(v0 + 328);
      v64 = swift_isUniquelyReferenced_nonNull_native();
      v141 = v63;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v62, v54, v64);
      *(v0 + 328) = v63;
      v65 = Logger.logObject.getter();
      v66 = static os_log_type_t.debug.getter();
      v67 = os_log_type_enabled(v65, v66);
      v68 = *(v0 + 776);
      v69 = *(v0 + 760);
      v70 = *(v0 + 752);
      if (v67)
      {
        v71 = swift_slowAlloc();
        *v71 = 0;
        _os_log_impl(&dword_1DC659000, v65, v66, "[ActionGenerator] Found PommesResponse. Generating parse for it", v71, 2u);
        MEMORY[0x1E12A2F50](v71, -1, -1);
        v72 = v65;
      }

      else
      {
        v72 = v61;
        v61 = v65;
      }

      (*(v69 + 8))(v68, v70);
    }
  }

  *(v0 + 1256) = v129;
  *(v0 + 1248) = v8;
  v120 = Logger.logObject.getter();
  v121 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v120, v121))
  {
    v122 = swift_slowAlloc();
    *v122 = 0;
    _os_log_impl(&dword_1DC659000, v120, v121, "[ActionGenerator] Finding plugins/extensions", v122, 2u);
    MEMORY[0x1E12A2F50](v122, -1, -1);
  }

  v123 = *(v0 + 312);
  v124 = *(v0 + 320);
  *(v0 + 1264) = v123;
  *(v0 + 1272) = v124;

  v125 = swift_task_alloc();
  *(v0 + 1280) = v125;
  *v125 = v0;
  v125[1] = ActionGenerator.generateActionCandidates(from:rrCandidates:appShortcutProvider:);

  return ConversationHandlerLocator.allHandlers(for:)(v123, v124);
}

{
  v204 = v0;
  v2 = *(v0 + 1308);
  v3 = *(v0 + 1232);
  v4 = *(v0 + 1176);
  v5 = *(v0 + 784);
  *(v3 + 72) = MEMORY[0x1E69E6370];
  *(v3 + 48) = v2;
  v6 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(v3);
  swift_setDeallocating();
  outlined destroy of ReferenceResolutionClientProtocol?(v3 + 32, &_sSS_yptMd, &_sSS_yptMR);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 368) = v4;
  v8 = specialized __RawDictionaryStorage.find<A>(_:)(v5);
  v11 = *(v4 + 16);
  v12 = (v9 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  LOBYTE(v15) = v9;
  if (*(*(v0 + 1176) + 24) < v14)
  {
    v16 = *(v0 + 784);
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, isUniquelyReferenced_nonNull_native, &_ss18_DictionaryStorageCy10Foundation4UUIDVSDySSypGGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDVSDySSypGGMR);
    v8 = specialized __RawDictionaryStorage.find<A>(_:)(v16);
    if ((v15 & 1) == (v17 & 1))
    {
      goto LABEL_6;
    }

LABEL_55:

    return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_79;
  }

  while (1)
  {
LABEL_6:
    v18 = *(v0 + 368);
    v183 = v18;
    if (v15)
    {
      *(v18[7] + 8 * v8) = v6;
    }

    else
    {
      v19 = *(v0 + 792);
      v20 = v8;
      (*(v0 + 1208))(v19, *(v0 + 784), *(v0 + 752));
      specialized _NativeDictionary._insert(at:key:value:)(v20, v19, v6, v18);
    }

    v202 = *(v0 + 1300);
    v21 = *(v0 + 896);
    v22 = *(v0 + 888);
    v23 = *(v0 + 880);
    v24 = *(v0 + 696);
    v25 = *(v0 + 688);
    v26 = *(v0 + 680);
    v27 = *(v0 + 672);
    USOParse.userParse.getter();
    Siri_Nlu_External_UserParse.parser.getter();
    Siri_Nlu_External_Parser.parserID.getter();
    (*(v22 + 8))(v21, v23);
    (*(v26 + 104))(v25, v202, v27);
    lazy protocol witness table accessor for type MessageBusActor and conformance MessageBusActor(&lazy protocol witness table cache variable for type Siri_Nlu_External_Parser.ParserIdentifier and conformance Siri_Nlu_External_Parser.ParserIdentifier, MEMORY[0x1E69D0990], MEMORY[0x1E69D09A8]);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v28 = *(v26 + 8);
    v28(v25, v27);
    v28(v24, v27);
    if (*(v0 + 376) == *(v0 + 384) || (Siri_Nlu_External_UserParse.isOverriddenSNLC.getter() & 1) != 0)
    {
      v1 = *(*(v0 + 920) + 8);
      v1(*(v0 + 928), *(v0 + 912));
    }

    else
    {
      v118 = *(v0 + 928);
      v119 = *(v0 + 920);
      v120 = *(v0 + 912);
      v121 = Siri_Nlu_External_UserParse.isNlv3FallbackException.getter();
      v1 = *(v119 + 8);
      v1(v118, v120);
      if ((v121 & 1) == 0)
      {
        v122 = *(v0 + 1200);
        v123 = *(v0 + 784);
        v124 = *(v0 + 760);
        v125 = *(v0 + 752);
        v6 = *(v0 + 600);
        v126 = *(v0 + 576);
        (*(*(v0 + 720) + 8))(*(v0 + 736), *(v0 + 712));
        (*(v124 + 8))(v123, v125);
        v8 = v122(v6, v126);
        v15 = *(v0 + 1192);
        goto LABEL_18;
      }
    }

    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_1DC659000, v29, v30, "[ActionGenerator] Found SNLC parse. Generating dummy action candidate", v31, 2u);
      MEMORY[0x1E12A2F50](v31, -1, -1);
    }

    v32 = *(v0 + 1208);
    v33 = *(v0 + 792);
    v34 = *(v0 + 784);
    v35 = *(v0 + 752);
    v187 = *(v0 + 568);
    v36 = *(v0 + 552);
    v198 = *(v0 + 544);
    v37 = *(v0 + 536);
    v188 = *(v0 + 464);
    v193 = *(v0 + 520);

    Parse.asCamParse()(v37);
    v32(v33, v34, v35);
    ActionCandidate.init(flowHandlerId:parse:affinityScore:loggingId:userData:)();
    v38 = *(v188 + 48);
    v32(v193, v34, v35);
    (*(v36 + 32))(v193 + v38, v187, v198);
    v39 = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(v0 + 1192);
    if ((v39 & 1) == 0)
    {
LABEL_75:
      v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10[2] + 1, 1, v10, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionJ0tGMd, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionJ0tGMR, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMd, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMR);
    }

    v41 = v10[2];
    v40 = v10[3];
    v199 = v41 >= v40 >> 1 ? specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v40 > 1), v41 + 1, 1, v10, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionJ0tGMd, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionJ0tGMR, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMd, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMR) : v10;
    v42 = *(v0 + 784);
    v43 = *(v0 + 760);
    v6 = *(v0 + 752);
    v44 = *(v0 + 600);
    v45 = *(v0 + 576);
    v189 = *(v0 + 1200);
    v194 = *(v0 + 520);
    v46 = *(v0 + 472);
    (*(*(v0 + 720) + 8))(*(v0 + 736), *(v0 + 712));
    (*(v43 + 8))(v42, v6);
    v189(v44, v45);
    v15 = v199;
    v199[2] = v41 + 1;
    v8 = outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v194, v199 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v41, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMd, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMR);
    *(v0 + 336) = v199;
LABEL_18:
    v47 = *(v0 + 1184) + 1;
    v48 = *(v0 + 1160);
    if (v47 == *(v0 + 1168))
    {
      break;
    }

LABEL_48:
    *(v0 + 1192) = v15;
    *(v0 + 1184) = v47;
    *(v0 + 1176) = v183;
    if (v47 >= *(v48 + 16))
    {
      __break(1u);
    }

    else
    {
      v127 = *(v0 + 600);
      v128 = *(v0 + 592);
      v129 = *(v0 + 584);
      v130 = *(v0 + 576);
      v131 = *(v129 + 16);
      v131(v127, v48 + ((*(v0 + 1304) + 32) & ~*(v0 + 1304)) + *(v129 + 72) * v47, v130);
      v201 = v131;
      v131(v128, v127, v130);
      v132 = Logger.logObject.getter();
      v133 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v132, v133))
      {
        v134 = *(v0 + 960);
        v135 = *(v0 + 920);
        v136 = *(v0 + 896);
        v137 = *(v0 + 888);
        v184 = *(v0 + 912);
        v186 = *(v0 + 880);
        v182 = *(v0 + 592);
        v138 = *(v0 + 584);
        v191 = *(v0 + 576);
        v139 = swift_slowAlloc();
        v196 = swift_slowAlloc();
        v203 = v196;
        *v139 = 136315138;
        USOParse.userParse.getter();
        Siri_Nlu_External_UserParse.parser.getter();
        (*(v135 + 8))(v134, v184);
        Siri_Nlu_External_Parser.parserID.getter();
        (*(v137 + 8))(v136, v186);
        v140 = String.init<A>(describing:)();
        v142 = v141;
        v143 = *(v138 + 8);
        v143(v182, v191);
        v144 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v140, v142, &v203);

        *(v139 + 4) = v144;
        _os_log_impl(&dword_1DC659000, v132, v133, "[ActionGenerator] Generating UUID for parse of type: %s", v139, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v196);
        MEMORY[0x1E12A2F50](v196, -1, -1);
        MEMORY[0x1E12A2F50](v139, -1, -1);
      }

      else
      {
        v145 = *(v0 + 592);
        v146 = *(v0 + 584);
        v147 = *(v0 + 576);

        v143 = *(v146 + 8);
        v143(v145, v147);
      }

      *(v0 + 1200) = v143;
      v148 = *(v0 + 1296);
      v15 = *(v0 + 784);
      v149 = *(v0 + 760);
      v192 = *(v0 + 752);
      v197 = *(v0 + 792);
      v150 = *(v0 + 736);
      v151 = *(v0 + 720);
      v152 = *(v0 + 712);
      v153 = *(v0 + 704);
      v154 = *(v0 + 600);
      v155 = *(v0 + 576);
      UUID.init()();
      v201(v150, v154, v155);
      (*(v151 + 104))(v150, v148, v152);
      v156 = *(v149 + 16);
      *(v0 + 1208) = v156;
      *(v0 + 1216) = (v149 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v156(v197, v15, v192);
      (*(v151 + 16))(v153, v150, v152);
      (*(v151 + 56))(v153, 0, 1, v152);
      specialized SimpleOrderedDictionary.subscript.setter(v153, v197);
      v157 = *(v0 + 328);
      v6 = swift_isUniquelyReferenced_nonNull_native();
      *(v0 + 360) = v157;
      v8 = specialized __RawDictionaryStorage.find<A>(_:)(v15);
      v159 = *(v157 + 16);
      v160 = (v158 & 1) == 0;
      v13 = __OFADD__(v159, v160);
      v161 = v159 + v160;
      if (!v13)
      {
        v162 = v158;
        if (*(v157 + 24) >= v161)
        {
          if ((v6 & 1) == 0)
          {
            v180 = v8;
            specialized _NativeDictionary.copy()();
            v8 = v180;
          }
        }

        else
        {
          v163 = *(v0 + 784);
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v161, v6);
          v8 = specialized __RawDictionaryStorage.find<A>(_:)(v163);
          if ((v162 & 1) != (v164 & 1))
          {
            goto LABEL_55;
          }
        }

        v166 = *(v0 + 360);
        *(v0 + 1224) = v166;
        v167 = *(v0 + 1144);
        if (v162)
        {
          *(v166[7] + 8 * v8) = v167;
        }

        else
        {
          v168 = *(v0 + 792);
          v169 = v8;
          v156(v168, *(v0 + 784), *(v0 + 752));
          specialized _NativeDictionary._insert(at:key:value:)(v169, v168, v167, v166);
        }

        *(v0 + 328) = v166;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
        inited = swift_initStackObject();
        *(v0 + 1232) = inited;
        *(inited + 16) = xmmword_1DCA66060;
        *(inited + 32) = 0xD000000000000014;
        *(inited + 40) = 0x80000001DCA7C5C0;
        v171 = swift_task_alloc();
        *(v0 + 1240) = v171;
        *v171 = v0;
        v171[1] = ActionGenerator.generateActionCandidates(from:rrCandidates:appShortcutProvider:);
        v172 = *(v0 + 416);

        return MEMORY[0x1EEE39E98](v172);
      }
    }

    __break(1u);
LABEL_79:
    v179 = v8;
    specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCy10Foundation4UUIDVSDySSypGGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDVSDySSypGGMR);
    v8 = v179;
  }

  v200 = v15;

  v49 = MEMORY[0x1E69E7CC0];
  v181 = *(v0 + 1224);
  v1(*(v0 + 936), *(v0 + 912));
  while (1)
  {
    v6 = *(v0 + 1152);
    v50 = *(v0 + 1136);
    v51 = *(v0 + 1064);
    v52 = *(v51 + 16);
    if (v50 == v52)
    {
      v53 = 1;
    }

    else
    {
      if (v50 >= v52)
      {
        __break(1u);
        goto LABEL_74;
      }

      v54 = *(v0 + 920);
      v55 = *(v0 + 912);
      v56 = *(v0 + 656);
      v57 = *(v0 + 648);
      v58 = v50 + 1;
      v59 = *(v54 + 16);
      v60 = v51 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v50;
      v61 = *(*(v0 + 632) + 48);
      *v57 = v50;
      v59(v57 + v61, v60, v55);
      outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v57, v56, &_sSi6offset_12SiriNLUTypes0B23_Nlu_External_UserParseV7elementtMd, &_sSi6offset_12SiriNLUTypes0B23_Nlu_External_UserParseV7elementtMR);
      v53 = 0;
      v50 = v58;
    }

    *(v0 + 1136) = v50;
    v62 = *(v0 + 664);
    v63 = *(v0 + 656);
    v64 = *(v0 + 640);
    v65 = *(v0 + 632);
    (*(v64 + 56))(v63, v53, 1, v65);
    outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v63, v62, &_sSi6offset_12SiriNLUTypes0B23_Nlu_External_UserParseV7elementtSgMd, &_sSi6offset_12SiriNLUTypes0B23_Nlu_External_UserParseV7elementtSgMR);
    if ((*(v64 + 48))(v62, 1, v65) == 1)
    {
      break;
    }

    v66 = *(v0 + 936);
    v67 = *(v0 + 920);
    v68 = *(v0 + 912);
    v69 = *(v0 + 664);
    v70 = *(v0 + 632);
    *(v0 + 1144) = *v69;
    v71 = (*(v67 + 32))(v66, &v69[*(v70 + 48)], v68);
    v72 = MEMORY[0x1E129C0F0](v71);
    if (*(v72 + 16))
    {
      v73 = *(v0 + 624);
      v74 = *(v0 + 616);
      v75 = *(v0 + 608);
      (*(v74 + 16))(v73, v72 + ((*(v74 + 80) + 32) & ~*(v74 + 80)), v75);

      v76 = Siri_Nlu_External_UserDialogAct.toUsoTask()();
      (*(v74 + 8))(v73, v75);
      if (v76)
      {

        static UsoTask_CodegenConverter.convert(task:)();

        if (*(v0 + 280))
        {
          type metadata accessor for UsoTask_run_common_VoiceCommand();
          if (swift_dynamicCast())
          {
            v78 = UsoTask_run_common_VoiceCommand.appShortcuts.getter(v77);

            if (*(v78 + 2))
            {
              goto LABEL_37;
            }

            goto LABEL_30;
          }
        }

        else
        {

          outlined destroy of ReferenceResolutionClientProtocol?(v0 + 256, &_sypSgMd, &_sypSgMR);
        }
      }
    }

    else
    {
    }

    v78 = v49;
    if (*(v49 + 16))
    {
LABEL_37:
      v90 = *(v0 + 1128);
      v91 = *(v0 + 936);
      v92 = swift_task_alloc();
      *(v92 + 16) = v90;
      *(v92 + 24) = v91;
      v48 = specialized Sequence.compactMap<A>(_:)(partial apply for closure #1 in AppShortcutParseExpansion.expandExactMatchParses(nlParse:appShortcutTargets:), v92, v78);

      goto LABEL_38;
    }

LABEL_30:

    v79 = Siri_Nlu_External_UserParse.generalizedAppShortcuts.getter();
    if (!*(v79 + 2))
    {
      v83 = *(v0 + 960);
      v84 = *(v0 + 936);
      v85 = *(v0 + 920);
      v185 = *(v0 + 912);
      v86 = *(v0 + 904);
      v87 = *(v0 + 896);
      v88 = *(v0 + 888);
      v89 = *(v0 + 680);
      v190 = *(v0 + 880);
      v195 = *(v0 + 672);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11SiriKitFlow8USOParseVGMd, &_ss23_ContiguousArrayStorageCy11SiriKitFlow8USOParseVGMR);
      v48 = swift_allocObject();
      *(v48 + 16) = xmmword_1DCA66060;
      (*(v85 + 16))(v83, v84, v185);
      Siri_Nlu_External_UserParse.parser.getter();
      Siri_Nlu_External_Parser.parserID.getter();
      (*(v88 + 8))(v87, v190);
      (*(v89 + 56))(v86, 0, 1, v195);
      v49 = MEMORY[0x1E69E7CC0];
      v8 = USOParse.init(userParse:parserIdentifier:appBundleId:)();
      goto LABEL_39;
    }

    v80 = *(v0 + 936);
    v81 = v79;
    v82 = swift_task_alloc();
    *(v82 + 16) = v80;
    v48 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay14SiriKitRuntime28GeneralizedAppShortcutTargetVG_0dE4Flow8USOParseVs5NeverOTg5(partial apply for closure #1 in AppShortcutParseExpansion.expand(nlParse:), v82, v81);

LABEL_38:

LABEL_39:
    *(v0 + 1160) = v48;
    *(v0 + 1152) = v6;
    v93 = *(v48 + 16);
    *(v0 + 1168) = v93;
    if (v93)
    {
      v47 = 0;
      *(v0 + 1304) = *(*(v0 + 584) + 80);
      v15 = v200;
      goto LABEL_48;
    }

    v94 = *(v0 + 920);

    v1 = *(v94 + 8);
    v1(*(v0 + 936), *(v0 + 912));
  }

  swift_setDeallocating();

  v95 = *(*(v0 + 1056) + OBJC_IVAR____TtC14SiriKitRuntime10NLResponse_pommesInfo);
  v96 = v183;
  if (v95)
  {
    v97 = *(v95 + 16);
    if (v97)
    {
      v98 = *(v0 + 792);
      v99 = *(v0 + 776);
      v100 = *(v0 + 760);
      v101 = *(v0 + 752);
      v102 = *(v0 + 720);
      v103 = *(v0 + 712);
      v104 = *(v0 + 704);
      v105 = v97;
      UUID.init()();
      (*(v100 + 16))(v98, v99, v101);
      *v104 = v105;
      (*(v102 + 104))(v104, *MEMORY[0x1E69D0138], v103);
      (*(v102 + 56))(v104, 0, 1, v103);
      v106 = v105;
      specialized SimpleOrderedDictionary.subscript.setter(v104, v98);
      v107 = *(v181 + 16);
      v108 = *(v0 + 328);
      v109 = swift_isUniquelyReferenced_nonNull_native();
      v203 = v108;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v107, v99, v109);
      *(v0 + 328) = v203;
      v110 = Logger.logObject.getter();
      v111 = static os_log_type_t.debug.getter();
      v112 = os_log_type_enabled(v110, v111);
      v113 = *(v0 + 776);
      v114 = *(v0 + 760);
      v115 = *(v0 + 752);
      if (v112)
      {
        v116 = swift_slowAlloc();
        *v116 = 0;
        _os_log_impl(&dword_1DC659000, v110, v111, "[ActionGenerator] Found PommesResponse. Generating parse for it", v116, 2u);
        MEMORY[0x1E12A2F50](v116, -1, -1);
        v117 = v110;
      }

      else
      {
        v117 = v106;
        v106 = v110;
      }

      (*(v114 + 8))(v113, v115);
      v96 = v183;
    }
  }

  *(v0 + 1256) = v96;
  *(v0 + 1248) = v6;
  v173 = Logger.logObject.getter();
  v174 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v173, v174))
  {
    v175 = swift_slowAlloc();
    *v175 = 0;
    _os_log_impl(&dword_1DC659000, v173, v174, "[ActionGenerator] Finding plugins/extensions", v175, 2u);
    MEMORY[0x1E12A2F50](v175, -1, -1);
  }

  v176 = *(v0 + 312);
  v177 = *(v0 + 320);
  *(v0 + 1264) = v176;
  *(v0 + 1272) = v177;

  v178 = swift_task_alloc();
  *(v0 + 1280) = v178;
  *v178 = v0;
  v178[1] = ActionGenerator.generateActionCandidates(from:rrCandidates:appShortcutProvider:);

  return ConversationHandlerLocator.allHandlers(for:)(v176, v177);
}

uint64_t ActionGenerator.generateActionCandidates(from:rrCandidates:appShortcutProvider:)(char a1)
{
  *(*v1 + 1308) = a1;

  return MEMORY[0x1EEE6DFA0](ActionGenerator.generateActionCandidates(from:rrCandidates:appShortcutProvider:), 0, 0);
}

uint64_t ActionGenerator.generateActionCandidates(from:rrCandidates:appShortcutProvider:)(uint64_t a1)
{
  *(*v1 + 1288) = a1;

  return MEMORY[0x1EEE6DFA0](ActionGenerator.generateActionCandidates(from:rrCandidates:appShortcutProvider:), 0, 0);
}

void ActionGenerator.generateActionCandidates(from:rrCandidates:appShortcutProvider:)()
{
  v70 = v0;
  v62 = v0[161];
  v1 = MEMORY[0x1E69E7CC0];
  v60 = *(v62 + 16);
  if (v60)
  {
    v2 = 0;
    v3 = v0[59];
    v58 = (v0[95] + 16);
    v53 = (v3 + 56);
    v55 = (v0[90] + 8);
    v64 = v0[157];
    v49 = v0[56];
    v51 = (v3 + 48);
    v47 = v3;
    v48 = v0[55];
    while (v2 < *(v62 + 16))
    {
      v66 = v1;
      v4 = v0[94];
      v5 = v0[91];
      v6 = v0[89];
      v7 = v0[66];
      v8 = v0[57];
      v9 = v0[54];
      outlined init with copy of ReferenceResolutionClientProtocol?(v0[161] + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v2, v8, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMR);
      v10 = (v8 + *(v48 + 48));
      (*v58)(v9, v8, v4);
      v11 = v10[4];
      v12 = v10[5];
      __swift_project_boxed_opaque_existential_1(v10 + 1, v11);
      (*(v12 + 16))(v11, v12);
      type metadata accessor for ConversationHandlerLocator.ScoredHandler(0);
      Input.parse.getter();
      Parse.asCamParse()(v7);
      (*v55)(v5, v6);
      UUID.init()();
      if (*(v64 + 16))
      {
        specialized __RawDictionaryStorage.find<A>(_:)(v0[57]);
        if (v13)
        {
        }
      }

      v1 = v66;
      v15 = v0[57];
      v14 = v0[58];
      v16 = v0[54];
      ActionCandidate.init(flowHandlerId:parse:affinityScore:loggingId:userData:)();
      (*v53)(v16, 0, 1, v14);
      outlined destroy of ReferenceResolutionClientProtocol?(v15, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMR);
      if ((*v51)(v16, 1, v14) == 1)
      {
        outlined destroy of ReferenceResolutionClientProtocol?(v0[54], &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tSgMd, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tSgMR);
      }

      else
      {
        v18 = v0[63];
        v17 = v0[64];
        outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v0[54], v17, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMd, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMR);
        outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v17, v18, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMd, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMR);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v66[2] + 1, 1, v66, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionJ0tGMd, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionJ0tGMR, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMd, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMR);
        }

        v20 = v1[2];
        v19 = v1[3];
        if (v20 >= v19 >> 1)
        {
          v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1, v1, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionJ0tGMd, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionJ0tGMR, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMd, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMR);
        }

        v21 = v0[63];
        v1[2] = v20 + 1;
        outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v21, v1 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v20, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMd, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMR);
      }

      if (v60 == ++v2)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:
    v22 = v0[156];

    specialized Array.append<A>(contentsOf:)(v23, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionJ0tGMd, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionJ0tGMR, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMd, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMR);
    v24 = v0[42];
    v69[0] = v24;

    specialized MutableCollection<>.sort(by:)(v69, v0 + 41);
    if (v22)
    {
    }

    else
    {

      v25 = v69[0];
      v26 = *(v69[0] + 16);
      if (v26)
      {
        v50 = v24;
        v27 = v0[95];
        v28 = v0[69];
        v29 = v0[59];
        v57 = v0[58];
        v69[0] = MEMORY[0x1E69E7CC0];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v26, 0);
        v30 = v69[0];
        v31 = v25 + ((*(v29 + 80) + 32) & ~*(v29 + 80));
        v54 = (v27 + 32);
        v56 = *(v29 + 72);
        v59 = v28;
        v61 = (v28 + 32);
        v52 = (v28 + 16);
        do
        {
          v67 = v26;
          v32 = v0[94];
          v63 = v0[70];
          v33 = v0[68];
          v34 = v0[61];
          v35 = v0[62];
          v36 = v0[60];
          outlined init with copy of ReferenceResolutionClientProtocol?(v31, v35, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMd, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMR);
          outlined init with copy of ReferenceResolutionClientProtocol?(v35, v34, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMd, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMR);
          v37 = *(v57 + 48);
          (*v54)(v36, v34, v32);
          v65 = *v61;
          (*v61)(v36 + v37, v34 + v37, v33);
          (*v52)(v63, v36 + v37, v33);
          outlined destroy of ReferenceResolutionClientProtocol?(v36, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMd, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMR);
          outlined destroy of ReferenceResolutionClientProtocol?(v35, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMd, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMR);
          v69[0] = v30;
          v39 = *(v30 + 16);
          v38 = *(v30 + 24);
          if (v39 >= v38 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v38 > 1), v39 + 1, 1);
            v30 = v69[0];
          }

          v40 = v0[70];
          v41 = v0[68];
          *(v30 + 16) = v39 + 1;
          v65(v30 + ((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * v39, v40, v41);
          v31 += v56;
          v26 = v67 - 1;
        }

        while (v67 != 1);
        v68 = v30;

        v24 = v50;
      }

      else
      {

        v68 = MEMORY[0x1E69E7CC0];
      }

      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        *v44 = 134217984;
        v45 = *(v24 + 16);

        *(v44 + 4) = v45;

        _os_log_impl(&dword_1DC659000, v42, v43, "[ActionGenerator] Sorting and returning %ld ActionCandidates", v44, 0xCu);
        MEMORY[0x1E12A2F50](v44, -1, -1);
      }

      else
      {
        swift_bridgeObjectRelease_n();
      }

      v46 = v0[1];

      v46(v68);
    }
  }
}

uint64_t specialized SimpleOrderedDictionary.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestSgMd, &_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v27 - v12;
  v14 = *v3;
  if (*(v14 + 16) && (v15 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3), (v16 & 1) != 0))
  {
    v17 = v15;
    v18 = *(v14 + 56);
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestMd, &_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestMR);
    v20 = *(v19 - 8);
    outlined init with copy of ReferenceResolutionClientProtocol?(v18 + *(v20 + 72) * v17, v13, &_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestMd, &_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestMR);
    (*(v20 + 56))(v13, 0, 1, v19);
    outlined destroy of ReferenceResolutionClientProtocol?(v13, &_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestSgMd, &_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestSgMR);
    outlined init with copy of ReferenceResolutionClientProtocol?(a1, v10, &_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestSgMd, &_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestSgMR);
    specialized Dictionary.subscript.setter(v10, a2, a3);
    return outlined destroy of ReferenceResolutionClientProtocol?(a1, &_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestSgMd, &_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestSgMR);
  }

  else
  {
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestMd, &_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestMR);
    (*(*(v22 - 8) + 56))(v13, 1, 1, v22);
    outlined destroy of ReferenceResolutionClientProtocol?(v13, &_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestSgMd, &_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestSgMR);
    outlined init with copy of ReferenceResolutionClientProtocol?(a1, v10, &_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestSgMd, &_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestSgMR);

    specialized Dictionary.subscript.setter(v10, a2, a3);
    v23 = v4[1];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v23 + 2) + 1, 1, v23);
    }

    v25 = *(v23 + 2);
    v24 = *(v23 + 3);
    if (v25 >= v24 >> 1)
    {
      v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v25 + 1, 1, v23);
    }

    result = outlined destroy of ReferenceResolutionClientProtocol?(a1, &_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestSgMd, &_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestSgMR);
    *(v23 + 2) = v25 + 1;
    v26 = &v23[16 * v25];
    *(v26 + 4) = a2;
    *(v26 + 5) = a3;
    v4[1] = v23;
  }

  return result;
}

BOOL specialized Sequence<>.isContainsAppShortcutParse.getter(uint64_t a1)
{
  v29 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v2 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v28 = v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Siri_Nlu_External_UserParse();
  v5 = *(v4 - 8);
  v6.n128_f64[0] = MEMORY[0x1EEE9AC00](v4);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  if (v9)
  {
    v11 = *(v5 + 16);
    v10 = v5 + 16;
    v12 = a1 + ((*(v10 + 64) + 32) & ~*(v10 + 64));
    v30 = *(v10 + 56);
    v31 = v11;
    v26[1] = v2 + 16;
    v27 = v2;
    v26[0] = v2 + 8;
    v13 = v9 - 1;
    for (i = v11(v8, v12, v4, v6); ; i = v31(v8, v12, v4, v17))
    {
      v20 = MEMORY[0x1E129C0F0](i);
      if (!*(v20 + 16))
      {
        break;
      }

      v22 = v27;
      v21 = v28;
      v23 = v29;
      (*(v27 + 16))(v28, v20 + ((*(v22 + 80) + 32) & ~*(v22 + 80)), v29);

      v24 = Siri_Nlu_External_UserDialogAct.toUsoTask()();
      (*(v22 + 8))(v21, v23);
      if (!v24)
      {
        goto LABEL_4;
      }

      static UsoTask_CodegenConverter.convert(task:)();

      if (!v33)
      {

        outlined destroy of ReferenceResolutionClientProtocol?(v32, &_sypSgMd, &_sypSgMR);
        goto LABEL_4;
      }

      type metadata accessor for UsoTask_run_common_VoiceCommand();
      if ((swift_dynamicCast() & 1) == 0)
      {

        goto LABEL_4;
      }

      v15 = UsoTask_run_common_VoiceCommand.appShortcuts.getter(v25);

LABEL_5:
      (*(v10 - 8))(v8, v4);
      v16 = *(v15 + 2);

      result = v16 != 0;
      if (v16)
      {
        v19 = 1;
      }

      else
      {
        v19 = v13 == 0;
      }

      --v13;
      v12 += v30;
      if (v19)
      {
        return result;
      }
    }

LABEL_4:
    v15 = MEMORY[0x1E69E7CC0];
    goto LABEL_5;
  }

  return 0;
}

uint64_t ActionGenerator.getAppShortcutExpansionContext(rrCandidates:nlParses:)(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v4 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();
  v5 = type metadata accessor for Siri_Nlu_External_UserParse();
  v3[13] = v5;
  v3[14] = *(v5 - 8);
  v3[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](ActionGenerator.getAppShortcutExpansionContext(rrCandidates:nlParses:), 0, 0);
}

uint64_t ActionGenerator.getAppShortcutExpansionContext(rrCandidates:nlParses:)()
{
  if (one-time initialization token for executor != -1)
  {
    goto LABEL_39;
  }

  while (1)
  {
    v1 = type metadata accessor for Logger();
    __swift_project_value_buffer(v1, static Logger.executor);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_1DC659000, v2, v3, "[ActionGenerator] Beginning building the AppShortcutExpansionContext", v4, 2u);
      MEMORY[0x1E12A2F50](v4, -1, -1);
    }

    v5 = v0[8];

    v6 = *(v5 + 16);
    if (!v6)
    {
      break;
    }

    v7 = v0[14];
    v8 = v0[11];
    v31 = *(v7 + 16);
    v9 = v0[8] + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v30 = *(v7 + 72);
    v10 = (v7 + 8);
    v11 = MEMORY[0x1E69E7CC0];
    for (i = v31(v0[15], v9, v0[13]); ; i = v31(v0[15], v9, v0[13]))
    {
      v13 = MEMORY[0x1E129C0F0](i);
      if (*(v13 + 16))
      {
        v14 = v0[12];
        v15 = v0[10];
        (*(v8 + 16))(v14, v13 + ((*(v8 + 80) + 32) & ~*(v8 + 80)), v15);

        v16 = Siri_Nlu_External_UserDialogAct.toUsoTask()();
        (*(v8 + 8))(v14, v15);
        if (v16)
        {

          static UsoTask_CodegenConverter.convert(task:)();

          if (v0[5])
          {
            type metadata accessor for UsoTask_run_common_VoiceCommand();
            if (swift_dynamicCast())
            {
              v18 = UsoTask_run_common_VoiceCommand.appShortcuts.getter(v17);

              goto LABEL_18;
            }
          }

          else
          {

            outlined destroy of ReferenceResolutionClientProtocol?((v0 + 2), &_sypSgMd, &_sypSgMR);
          }
        }
      }

      else
      {
      }

      v18 = MEMORY[0x1E69E7CC0];
LABEL_18:
      (*v10)(v0[15], v0[13]);
      v19 = *(v18 + 2);
      v20 = *(v11 + 2);
      v21 = v20 + v19;
      if (__OFADD__(v20, v19))
      {
        break;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) != 0 && v21 <= *(v11 + 3) >> 1)
      {
        if (*(v18 + 2))
        {
          goto LABEL_27;
        }
      }

      else
      {
        if (v20 <= v21)
        {
          v23 = v20 + v19;
        }

        else
        {
          v23 = v20;
        }

        v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v23, 1, v11, &_ss23_ContiguousArrayStorageCy14SiriKitRuntime17AppShortcutTargetVGMd, &_ss23_ContiguousArrayStorageCy14SiriKitRuntime17AppShortcutTargetVGMR, &type metadata for AppShortcutTarget);
        if (*(v18 + 2))
        {
LABEL_27:
          if ((*(v11 + 3) >> 1) - *(v11 + 2) < v19)
          {
            goto LABEL_37;
          }

          swift_arrayInitWithCopy();

          if (v19)
          {
            v24 = *(v11 + 2);
            v25 = __OFADD__(v24, v19);
            v26 = v24 + v19;
            if (v25)
            {
              goto LABEL_38;
            }

            *(v11 + 2) = v26;
          }

          goto LABEL_7;
        }
      }

      if (v19)
      {
        goto LABEL_36;
      }

LABEL_7:
      v9 += v30;
      if (!--v6)
      {
        goto LABEL_32;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    swift_once();
  }

  v11 = MEMORY[0x1E69E7CC0];
LABEL_32:
  v0[16] = v11;
  v27 = swift_task_alloc();
  v0[17] = v27;
  *v27 = v0;
  v27[1] = ActionGenerator.getAppShortcutExpansionContext(rrCandidates:nlParses:);
  v28 = v0[7];

  return AppShortcutExpansionContextBuilder.build(rrCandidates:appShortcutTargets:)(v28, v11);
}

uint64_t ActionGenerator.getAppShortcutExpansionContext(rrCandidates:nlParses:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *v3;

  v7 = *(v9 + 8);

  return v7(a1, a2, a3);
}

void *specialized Sequence.compactMap<A>(_:)(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v35 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow8USOParseVSgMd, &_s11SiriKitFlow8USOParseVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v29 - v7;
  v9 = type metadata accessor for USOParse();
  MEMORY[0x1EEE9AC00](v9);
  v34 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v31 = &v29 - v13;
  v14 = *(a3 + 16);
  if (!v14)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v29 = v12;
  v32 = (v12 + 32);
  v33 = (v12 + 48);
  v15 = (a3 + 69);
  v40 = MEMORY[0x1E69E7CC0];
  v30 = a1;
  while (1)
  {
    v16 = v9;
    v17 = *(v15 - 29);
    v18 = *(v15 - 13);
    v19 = *v15;
    v20 = *(v15 - 1);
    v21 = *(v15 - 5);
    v22 = *(v15 - 21);
    v36[0] = *(v15 - 37);
    v36[1] = v17;
    v36[2] = v22;
    v36[3] = v18;
    v37 = v21;
    v38 = v20;
    v39 = v19;

    a1(v36);
    if (v3)
    {
      break;
    }

    v9 = v16;
    if ((*v33)(v8, 1, v16) == 1)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(v8, &_s11SiriKitFlow8USOParseVSgMd, &_s11SiriKitFlow8USOParseVSgMR);
    }

    else
    {
      v23 = v31;
      v24 = *v32;
      (*v32)(v31);
      (v24)(v34, v23, v16);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v40 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v40[2] + 1, 1, v40, &_ss23_ContiguousArrayStorageCy11SiriKitFlow8USOParseVGMd, &_ss23_ContiguousArrayStorageCy11SiriKitFlow8USOParseVGMR, MEMORY[0x1E69D01A0]);
      }

      v26 = v40[2];
      v25 = v40[3];
      if (v26 >= v25 >> 1)
      {
        v40 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1, v40, &_ss23_ContiguousArrayStorageCy11SiriKitFlow8USOParseVGMd, &_ss23_ContiguousArrayStorageCy11SiriKitFlow8USOParseVGMR, MEMORY[0x1E69D01A0]);
      }

      v27 = v40;
      v40[2] = v26 + 1;
      v9 = v16;
      (v24)(v27 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v26, v34, v16);
      a1 = v30;
    }

    v15 += 40;
    if (!--v14)
    {
      return v40;
    }
  }

  return v40;
}

uint64_t specialized Array.append<A>(contentsOf:)(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = __CocoaSet.count.getter();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = __CocoaSet.count.getter();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(result, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  specialized Array._copyContents(initializing:)(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

char *specialized Array.append<A>(contentsOf:)(char *result)
{
  v2 = *(result + 2);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 2);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 2) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t result, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  v6 = *(result + 16);
  v7 = *v5;
  v8 = *(*v5 + 16);
  v9 = v8 + v6;
  if (__OFADD__(v8, v6))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v14 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v9 <= v7[3] >> 1)
  {
    if (*(v14 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v8 <= v9)
  {
    v20 = v8 + v6;
  }

  else
  {
    v20 = v8;
  }

  v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v20, 1, v7, a2, a3, a4);
  if (!*(v14 + 16))
  {
LABEL_13:

    if (!v6)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v16 = (v7[3] >> 1) - v7[2];
  result = a5(0);
  if (v16 < v6)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v6)
  {
LABEL_14:
    *v5 = v7;
    return result;
  }

  v17 = v7[2];
  v18 = __OFADD__(v17, v6);
  v19 = v17 + v6;
  if (!v18)
  {
    v7[2] = v19;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *specialized Array.append<A>(contentsOf:)(void *result)
{
  v2 = result[2];
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS11appBundleId_SDySSypG8userDatatMd, &_sSS11appBundleId_SDySSypG8userDatatMR);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

BOOL closure #3 in ActionGenerator.generateActionCandidates(from:rrCandidates:appShortcutProvider:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v50 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMd, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMR);
  MEMORY[0x1EEE9AC00](v5);
  v48 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v42 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v42 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v42 - v14;
  v47 = a1;
  outlined init with copy of ReferenceResolutionClientProtocol?(a1, &v42 - v14, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMd, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMR);
  v49 = v5;
  v16 = *(v5 + 48);
  v17 = *a3;
  if (!*(*a3 + 16) || (v18 = specialized __RawDictionaryStorage.find<A>(_:)(v15), (v19 & 1) == 0))
  {
    v20 = type metadata accessor for ActionCandidate();
    (*(*(v20 - 8) + 8))(&v15[v16], v20);
    v23 = type metadata accessor for UUID();
    v30 = (v23 - 8) & 0xFFFFFFFFFFFFLL | 0x2E3F000000000000;
    (*(*(v23 - 8) + 8))(v15, v23);
    goto LABEL_9;
  }

  v43 = *(*(v17 + 56) + 8 * v18);
  v20 = type metadata accessor for ActionCandidate();
  v21 = *(v20 - 8);
  v22 = *(v21 + 8);
  v45 = v21 + 8;
  v46 = v22;
  v22(&v15[v16], v20);
  v23 = type metadata accessor for UUID();
  v24 = *(*(v23 - 8) + 8);
  v51 = (v23 - 8) & 0xFFFFFFFFFFFFLL | 0x2E3F000000000000;
  v44 = v24;
  v24(v15, v23);
  outlined init with copy of ReferenceResolutionClientProtocol?(v50, v12, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMd, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMR);
  v25 = *(v49 + 48);
  v26 = *a3;
  if (!*(*a3 + 16) || (v27 = specialized __RawDictionaryStorage.find<A>(_:)(v12), (v28 & 1) == 0))
  {
    v46(&v12[v25], v20);
    v44(v12, v23);
    v30 = v51;
    goto LABEL_9;
  }

  v29 = *(*(v26 + 56) + 8 * v27);
  v46(&v12[v25], v20);
  v44(v12, v23);
  v30 = v51;
  if (v43 == v29)
  {
LABEL_9:
    v51 = v30;
    outlined init with copy of ReferenceResolutionClientProtocol?(v47, v9, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMd, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMR);
    v32 = v23;
    v33 = v9;
    v34 = v49;
    v35 = *(v49 + 48);
    v47 = ActionCandidate.affinityScore.getter();
    type metadata accessor for ActionCandidate();
    v36 = *(*(v20 - 8) + 8);
    v36(&v33[v35], v20);
    v37 = v48;
    outlined init with copy of ReferenceResolutionClientProtocol?(v50, v48, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMd, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMR);
    v38 = *(v34 + 48);
    v39 = ActionCandidate.affinityScore.getter();
    v36((v37 + v38), v20);
    v31 = v39 < v47;
    type metadata accessor for UUID();
    v40 = *(*(v32 - 8) + 8);
    v40(v37, v32);
    v40(v33, v32);
    return v31;
  }

  return v43 < v29;
}

uint64_t closure #3 in ActionGenerator.dedupeAppShortcuts(parses:)(uint64_t a1, uint64_t a2)
{
  v44 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow21AppShortcutInvocationOSgMd, &_s11SiriKitFlow21AppShortcutInvocationOSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v49 = &v40 - v3;
  v4 = type metadata accessor for AppShortcutExactInvocation();
  v42 = *(v4 - 8);
  v43 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v41 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v47 = *(v6 - 8);
  v48 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v45 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v46 = &v40 - v9;
  v10 = type metadata accessor for Siri_Nlu_External_Parser.ParserIdentifier();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v40 - v15;
  v17 = type metadata accessor for Siri_Nlu_External_Parser();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  Siri_Nlu_External_UserParse.parser.getter();
  Siri_Nlu_External_Parser.parserID.getter();
  (*(v18 + 8))(v20, v17);
  (*(v11 + 104))(v13, *MEMORY[0x1E69D0960], v10);
  lazy protocol witness table accessor for type MessageBusActor and conformance MessageBusActor(&lazy protocol witness table cache variable for type Siri_Nlu_External_Parser.ParserIdentifier and conformance Siri_Nlu_External_Parser.ParserIdentifier, MEMORY[0x1E69D0990], MEMORY[0x1E69D09A8]);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v21 = *(v11 + 8);
  v21(v13, v10);
  v22 = (v21)(v16, v10);
  if (v51 != v50)
  {
    goto LABEL_6;
  }

  v23 = MEMORY[0x1E129C0F0](v22);
  if (!*(v23 + 16))
  {

    goto LABEL_6;
  }

  v25 = v47;
  v24 = v48;
  v26 = v45;
  (*(v47 + 16))(v45, v23 + ((*(v25 + 80) + 32) & ~*(v25 + 80)), v48);

  v27 = v46;
  (*(v25 + 32))(v46, v26, v24);
  LOBYTE(v51) = 1;
  v28 = v49;
  Siri_Nlu_External_UserDialogAct.extractAppShortcutInvocation(groupIndex:)();
  v29 = type metadata accessor for AppShortcutInvocation();
  v30 = *(v29 - 8);
  if ((*(v30 + 48))(v28, 1, v29) == 1)
  {
    (*(v25 + 8))(v27, v24);
    outlined destroy of ReferenceResolutionClientProtocol?(v28, &_s11SiriKitFlow21AppShortcutInvocationOSgMd, &_s11SiriKitFlow21AppShortcutInvocationOSgMR);
LABEL_6:
    v31 = 1;
    return v31 & 1;
  }

  if ((*(v30 + 88))(v28, v29) == *MEMORY[0x1E69D0018])
  {
    (*(v30 + 96))(v28, v29);
    v34 = v41;
    v33 = v42;
    v35 = v28;
    v36 = v43;
    v37 = (*(v42 + 32))(v41, v35, v43);
    v38 = MEMORY[0x1EEE9AC00](v37);
    *(&v40 - 2) = v34;
    v39 = specialized Sequence.contains(where:)(partial apply for closure #1 in closure #3 in ActionGenerator.dedupeAppShortcuts(parses:), (&v40 - 4), v44, v38);
    (*(v25 + 8))(v27, v24);
    v31 = v39 ^ 1;
    (*(v33 + 8))(v34, v36);
  }

  else
  {
    (*(v25 + 8))(v27, v24);
    (*(v30 + 8))(v28, v29);
    v31 = 1;
  }

  return v31 & 1;
}

uint64_t closure #1 in closure #3 in ActionGenerator.dedupeAppShortcuts(parses:)()
{
  v0 = AppShortcutGeneralizedInvocation.extractedActionIdentifier.getter();
  if (v1)
  {
    v2 = v0;
    v3 = v1;
    v4 = AppShortcutGeneralizedInvocation.bundleId.getter();
    v6 = v5;
    if (v4 == AppShortcutExactInvocation.bundleId.getter() && v6 == v7)
    {
      v8 = 1;
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    if (v2 == AppShortcutExactInvocation.actionIdentifier.getter() && v3 == v10)
    {
      v11 = 1;
    }

    else
    {
      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v9 = v8 & v11;
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t ActionGenerator.deinit()
{

  return v0;
}

uint64_t ActionGenerator.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void specialized MutableCollection<>.sort(by:)(uint64_t *a1, uint64_t *a2)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMd, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMR) - 8);
  v5 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v5);
  }

  v6 = v5[2];
  v7[0] = v5 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v7[1] = v6;
  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v7, a2);
  *a1 = v5;
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, uint64_t a2, uint64_t a3, char *a4)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy14SiriKitRuntime17AppShortcutTargetVGMd, &_ss23_ContiguousArrayStorageCy14SiriKitRuntime17AppShortcutTargetVGMR, &type metadata for AppShortcutTarget);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy14SiriKitRuntime18LinkActionMetadataVGMd, &_ss23_ContiguousArrayStorageCy14SiriKitRuntime18LinkActionMetadataVGMR, &type metadata for LinkActionMetadata);
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy14SiriKitRuntime19ConversationHandler_pGMd, &_ss23_ContiguousArrayStorageCy14SiriKitRuntime19ConversationHandler_pGMR, &_s14SiriKitRuntime19ConversationHandler_pMd, &_s14SiriKitRuntime19ConversationHandler_pMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy14SiriKitRuntime0D35EnvironmentStringKeyedValueFetching_pGMd, &_ss23_ContiguousArrayStorageCy14SiriKitRuntime0D35EnvironmentStringKeyedValueFetching_pGMR, &_s14SiriKitRuntime0A35EnvironmentStringKeyedValueFetching_pMd, &_s14SiriKitRuntime0A35EnvironmentStringKeyedValueFetching_pMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy14SiriKitRuntime16PreExecutionRule_pGMd, &_ss23_ContiguousArrayStorageCy14SiriKitRuntime16PreExecutionRule_pGMR, &_s14SiriKitRuntime16PreExecutionRule_pMd, &_s14SiriKitRuntime16PreExecutionRule_pMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy14SiriKitRuntime17ExecutionOverride_pGMd, &_ss23_ContiguousArrayStorageCy14SiriKitRuntime17ExecutionOverride_pGMR, &_s14SiriKitRuntime17ExecutionOverride_pMd, &_s14SiriKitRuntime17ExecutionOverride_pMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy14SiriKitRuntime14UndoingCommand_pGMd, &_ss23_ContiguousArrayStorageCy14SiriKitRuntime14UndoingCommand_pGMR, &_s14SiriKitRuntime14UndoingCommand_pMd, &_s14SiriKitRuntime14UndoingCommand_pMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy11SiriKitFlow6Output_pGMd, &_ss23_ContiguousArrayStorageCy11SiriKitFlow6Output_pGMR, &_s11SiriKitFlow6Output_pMd, &_s11SiriKitFlow6Output_pMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCyyyYaYbKcGMd, &_ss23_ContiguousArrayStorageCyyyYaYbKcGMR, &_syycMd, &_syycMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy13SiriUtilities13PluginPackage_pGMd, &_ss23_ContiguousArrayStorageCy13SiriUtilities13PluginPackage_pGMR, &_s13SiriUtilities13PluginPackage_pMd, &_s13SiriUtilities13PluginPackage_pMR);
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v8 = result;
  if (a3)
  {
    v9 = *(a4 + 3);
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = *(a4 + 2);
  if (v10 <= v11)
  {
    v12 = *(a4 + 2);
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size(v13);
    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * ((v14 - 32) / 40);
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  v15 = v13 + 32;
  v16 = a4 + 32;
  if (v8)
  {
    if (v13 != a4 || v15 >= &v16[40 * v11])
    {
      memmove(v15, v16, 40 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t _ss29getContiguousArrayStorageType3fors01_bcD0CyxGmxm_tlF16SiriMessageTypes07RequestH4BaseCm_Ttg5()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes07RequestB4BaseCmMd, &_s16SiriMessageTypes07RequestB4BaseCmMR);
  if (swift_isClassType())
  {
    v1 = v0 == 0;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    v2 = &_ss23_ContiguousArrayStorageCy16SiriMessageTypes07RequestE4BaseCmGMd;
    v3 = &_ss23_ContiguousArrayStorageCy16SiriMessageTypes07RequestE4BaseCmGMR;
  }

  else
  {
    v2 = &_ss23_ContiguousArrayStorageCyyXlGMd;
    v3 = &_ss23_ContiguousArrayStorageCyyXlGMR;
  }

  return __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(unint64_t a1)
{
  Hasher.init(_seed:)();
  if ((a1 & 0x100000000) != 0)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(a1);
  }

  v2 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1 | ((HIDWORD(a1) & 1) << 32), v2);
}

Swift::Int specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v37 = v6;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = result;
  if (*(v7 + 16))
  {
    v36 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = (*(v7 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(*(v7 + 56) + 8 * v22);
      if ((v37 & 1) == 0)
      {

        v27 = v26;
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v28 = -1 << *(v9 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v16 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v16 + 8 * v30);
          if (v34 != -1)
          {
            v17 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v29) & ~*(v16 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v7 = v36;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v35 = 1 << *(v7 + 32);
    v5 = v4;
    if (v35 >= 64)
    {
      bzero(v11, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v35;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v36 = v6;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = result;
  if (*(v7 + 16))
  {
    v35 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = (*(v7 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(*(v7 + 56) + 8 * v22);
      if ((v36 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v27 = -1 << *(v9 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v16 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v16 + 8 * v29);
          if (v33 != -1)
          {
            v17 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v28) & ~*(v16 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v7 = v35;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v34 = 1 << *(v7 + 32);
    v5 = v4;
    if (v34 >= 64)
    {
      bzero(v11, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v34;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v36 = v6;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = result;
  if (*(v7 + 16))
  {
    v35 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = (*(v7 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(*(v7 + 56) + 8 * v22);
      if ((v36 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v27 = -1 << *(v9 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v16 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v16 + 8 * v29);
          if (v33 != -1)
          {
            v17 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v28) & ~*(v16 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v7 = v35;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v34 = 1 << *(v7 + 32);
    v5 = v4;
    if (v34 >= 64)
    {
      bzero(v11, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v34;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

Swift::Int specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5)
{
  v8 = v5;
  v9 = a2;
  v50 = a3(0);
  v10 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v49 = &v42 - v11;
  v12 = *v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v47 = v9;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v14 = result;
  if (*(v12 + 16))
  {
    v15 = 0;
    v16 = (v12 + 64);
    v17 = 1 << *(v12 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v12 + 64);
    v20 = (v17 + 63) >> 6;
    v43 = v5;
    v44 = (v10 + 16);
    v45 = v12;
    v46 = v10;
    v48 = (v10 + 32);
    v21 = result + 64;
    while (v19)
    {
      v24 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_15:
      v27 = v24 | (v15 << 6);
      v28 = *(v12 + 56);
      v29 = (*(v12 + 48) + 16 * v27);
      v31 = *v29;
      v30 = v29[1];
      v32 = *(v46 + 72);
      v33 = v28 + v32 * v27;
      if (v47)
      {
        (*v48)(v49, v33, v50);
      }

      else
      {
        (*v44)(v49, v33, v50);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v34 = -1 << *(v14 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v21 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v21 + 8 * v36);
          if (v40 != -1)
          {
            v22 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v35) & ~*(v21 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      v23 = (*(v14 + 48) + 16 * v22);
      *v23 = v31;
      v23[1] = v30;
      result = (*v48)(*(v14 + 56) + v32 * v22, v49, v50);
      ++*(v14 + 16);
      v12 = v45;
    }

    v25 = v15;
    while (1)
    {
      v15 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v15 >= v20)
      {
        break;
      }

      v26 = v16[v15];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v19 = (v26 - 1) & v26;
        goto LABEL_15;
      }
    }

    if ((v47 & 1) == 0)
    {

      v8 = v43;
      goto LABEL_34;
    }

    v41 = 1 << *(v12 + 32);
    v8 = v43;
    if (v41 >= 64)
    {
      bzero(v16, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v41;
    }

    *(v12 + 16) = 0;
  }

LABEL_34:
  *v8 = v14;
  return result;
}

Swift::Int specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, void (*a5)(uint64_t, _BYTE *))
{
  v6 = v5;
  v7 = a2;
  v8 = *v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v36 = v7;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v10 = result;
  if (*(v8 + 16))
  {
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v23 = v20 | (v11 << 6);
      v24 = (*(v8 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v8 + 56) + 40 * v23;
      if (v36)
      {
        a5(v27, v38);
      }

      else
      {
        outlined init with copy of ReferenceResolutionClientProtocol(v27, v38);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v28 = -1 << *(v10 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v17 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v17 + 8 * v30);
          if (v34 != -1)
          {
            v18 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v29) & ~*(v17 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      result = (a5)(v38, *(v10 + 56) + 40 * v18);
      ++*(v10 + 16);
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v6 = v5;
      goto LABEL_34;
    }

    v35 = 1 << *(v8 + 32);
    v6 = v5;
    if (v35 >= 64)
    {
      bzero((v8 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v35;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v6 = v10;
  return result;
}

unint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(char a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
      result = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      specialized _NativeDictionary.copy()();
      result = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + result) = a1 & 1;
    return result;
  }

  v21[(result >> 6) + 8] |= 1 << result;
  v22 = (v21[6] + 16 * result);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + result) = a1 & 1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21[2] = v24;
}

{
  v5 = v4;
  v10 = *v4;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
      result = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      specialized _NativeDictionary.copy()();
      result = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + result) = a1;
    return result;
  }

  v21[(result >> 6) + 8] |= 1 << result;
  v22 = (v21[6] + 16 * result);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + result) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21[2] = v24;
}

int64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  result = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_14;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 >= result && (a3 & 1) != 0)
  {
LABEL_7:
    v20 = *v4;
    if (v18)
    {
LABEL_8:
      *(v20[7] + 8 * v14) = a1;
      return result;
    }

    goto LABEL_11;
  }

  if (v19 >= result && (a3 & 1) == 0)
  {
    result = specialized _NativeDictionary.copy()();
    goto LABEL_7;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(result, a3 & 1);
  result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  if ((v18 & 1) != (v21 & 1))
  {
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v14 = result;
  v20 = *v4;
  if (v18)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  return specialized _NativeDictionary._insert(at:key:value:)(v14, v11, a1, v20);
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestMd, &_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestMR);
      return outlined assign with take of (Input, AnyFlow, SiriEnvironment)(a1, v19 + *(*(v20 - 8) + 72) * v12, &_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestMd, &_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestMR);
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    specialized _NativeDictionary.copy()();
    goto LABEL_7;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v15, a4 & 1);
  v22 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  if ((v16 & 1) != (v23 & 1))
  {
LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v12 = v22;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  specialized _NativeDictionary._insert(at:key:value:)(v12, a2, a3, a1, v18);
}

{
  v5 = v4;
  v10 = *v4;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1, &_ss18_DictionaryStorageCySS14SiriKitRuntime20ResultCandidateStateCGMd, &_ss18_DictionaryStorageCySS14SiriKitRuntime20ResultCandidateStateCGMR);
      v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySS14SiriKitRuntime20ResultCandidateStateCGMd, &_ss18_DictionaryStorageCySS14SiriKitRuntime20ResultCandidateStateCGMR);
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v24 = v21[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v25;
}

{
  v5 = v4;
  v10 = *v4;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1, &_ss18_DictionaryStorageCySSSo14SASRecognitionCGMd, &_ss18_DictionaryStorageCySSSo14SASRecognitionCGMR);
      v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return MEMORY[0x1EEE66BB8]();
      }
    }

    else
    {
      v19 = v11;
      specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySSSo14SASRecognitionCGMd, &_ss18_DictionaryStorageCySSSo14SASRecognitionCGMR);
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return MEMORY[0x1EEE66BB8]();
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;
}

{
  v5 = v4;
  v10 = *v4;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
      v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      specialized _NativeDictionary.copy()();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v24 = v21[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v25;
}

{
  v5 = v4;
  v10 = *v4;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1, &_ss18_DictionaryStorageCySSSDySo16LNSystemProtocolCSay14SiriKitRuntime18LinkActionMetadataVGGGMd, &_ss18_DictionaryStorageCySSSDySo16LNSystemProtocolCSay14SiriKitRuntime18LinkActionMetadataVGGGMR);
      v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySSSDySo16LNSystemProtocolCSay14SiriKitRuntime18LinkActionMetadataVGGGMd, &_ss18_DictionaryStorageCySSSDySo16LNSystemProtocolCSay14SiriKitRuntime18LinkActionMetadataVGGGMR);
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v24 = v21[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v25;
}

{
  v5 = v4;
  v10 = *v4;
  v12 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_16;
  }

  v16 = v11;
  v17 = *(v10 + 24);
  if (v17 >= v15 && (a4 & 1) != 0)
  {
    goto LABEL_7;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySS14SiriKitRuntime40ConversationMessageDispatchingBridgeBaseC0g7HandlerJ0CyAC0fI0C_GGMd, &_ss18_DictionaryStorageCySS14SiriKitRuntime40ConversationMessageDispatchingBridgeBaseC0g7HandlerJ0CyAC0fI0C_GGMR);
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];

      *(v19 + 8 * v12) = a1;
      return result;
    }

    goto LABEL_11;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v15, a4 & 1, &_ss18_DictionaryStorageCySS14SiriKitRuntime40ConversationMessageDispatchingBridgeBaseC0g7HandlerJ0CyAC0fI0C_GGMd, &_ss18_DictionaryStorageCySS14SiriKitRuntime40ConversationMessageDispatchingBridgeBaseC0g7HandlerJ0CyAC0fI0C_GGMR);
  v21 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  if ((v16 & 1) != (v22 & 1))
  {
LABEL_17:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v12 = v21;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  v18[(v12 >> 6) + 8] |= 1 << v12;
  v23 = (v18[6] + 16 * v12);
  *v23 = a2;
  v23[1] = a3;
  *(v18[7] + 8 * v12) = a1;
  v24 = v18[2];
  v25 = __OFADD__(v24, 1);
  v26 = v24 + 1;
  if (v25)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v18[2] = v26;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, a4, MEMORY[0x1E69D0AA8], &_ss18_DictionaryStorageCySS12SiriNLUTypes0C28_Nlu_External_ResponseStatusV0H4CodeOGMd, &_ss18_DictionaryStorageCySS12SiriNLUTypes0C28_Nlu_External_ResponseStatusV0H4CodeOGMR, MEMORY[0x1E69D0AA8]);
}

{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, a4, MEMORY[0x1E69D0100], &_ss18_DictionaryStorageCySS11SiriKitFlow5InputVGMd, &_ss18_DictionaryStorageCySS11SiriKitFlow5InputVGMR, MEMORY[0x1E69D0100]);
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t (*a5)(void), uint64_t *a6, uint64_t *a7, uint64_t (*a8)(void))
{
  v11 = v8;
  v16 = *v8;
  v18 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v19 = v16[2];
  v20 = (v17 & 1) == 0;
  v21 = v19 + v20;
  if (__OFADD__(v19, v20))
  {
    __break(1u);
    goto LABEL_17;
  }

  v22 = v17;
  v23 = v16[3];
  if (v23 < v21 || (a4 & 1) == 0)
  {
    if (v23 >= v21 && (a4 & 1) == 0)
    {
      specialized _NativeDictionary.copy()(a5, a6, a7);
      goto LABEL_7;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v21, a4 & 1, a5, a6, a7);
    v32 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if ((v22 & 1) == (v33 & 1))
    {
      v18 = v32;
      v24 = *v11;
      if (v22)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v24 = *v11;
  if (v22)
  {
LABEL_8:
    v25 = v24[7];
    v26 = a8(0);
    v27 = *(v26 - 8);
    v28 = *(v27 + 40);
    v29 = v26;
    v30 = v25 + *(v27 + 72) * v18;

    return v28(v30, a1, v29);
  }

LABEL_13:
  specialized _NativeDictionary._insert(at:key:value:)(v18, a2, a3, a1, v24, a5);
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
      v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      specialized _NativeDictionary.copy()();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + 80 * v11;

    return outlined assign with take of FlowPluginAndBundle(a1, v22);
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v24 = (v21[6] + 16 * v11);
  *v24 = a2;
  v24[1] = a3;
  v25 = (v21[7] + 80 * v11);
  *v25 = *a1;
  v26 = a1[1];
  v27 = a1[2];
  v28 = a1[4];
  v25[3] = a1[3];
  v25[4] = v28;
  v25[1] = v26;
  v25[2] = v27;
  v29 = v21[2];
  v15 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v30;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestMd, &_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestMR);
  result = outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(a4, v9 + *(*(v10 - 8) + 72) * a1, &_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestMd, &_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestMR);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t (*a6)(void))
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v9 = (a5[6] + 16 * a1);
  *v9 = a2;
  v9[1] = a3;
  v10 = a5[7];
  v11 = a6(0);
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a4, v11);
  v13 = a5[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v15;
  }

  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      if (*(*(v2 + 48) + v4))
      {
        v7 = 0x4C4E79636167656CLL;
        v8 = 0xEF747865746E6F43;
        if (*(*(v2 + 48) + v4) != 1)
        {
          v7 = 0xD00000000000001ALL;
          v8 = 0x80000001DCA7A620;
        }

        v9 = a1;
        if (!a1)
        {
LABEL_16:
          v11 = 0x80000001DCA7A5F0;
          if (v7 != 0xD000000000000019)
          {
            goto LABEL_18;
          }

          goto LABEL_17;
        }
      }

      else
      {
        v7 = 0xD000000000000019;
        v8 = 0x80000001DCA7A5F0;
        v9 = a1;
        if (!a1)
        {
          goto LABEL_16;
        }
      }

      if (v9 == 1)
      {
        v10 = 0x4C4E79636167656CLL;
      }

      else
      {
        v10 = 0xD00000000000001ALL;
      }

      if (v9 == 1)
      {
        v11 = 0xEF747865746E6F43;
      }

      else
      {
        v11 = 0x80000001DCA7A620;
      }

      if (v7 != v10)
      {
        goto LABEL_18;
      }

LABEL_17:
      if (v8 == v11)
      {

        return v4;
      }

LABEL_18:
      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

void *specialized _NativeDictionary.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        outlined init with copy of Any(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        outlined init with take of Any(v25, (*(v4 + 56) + v22));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSbGMd, &_ss18_DictionaryStorageCySSSbGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        LOBYTE(v18) = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySSSDySSSbGGMd, &_ss18_DictionaryStorageCySSSDySSSbGGMR);
}

{
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySSSDySSSo8NSNumberCGGMd, &_ss18_DictionaryStorageCySSSDySSSo8NSNumberCGGMR);
}

{
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySSSaySSGGMd, &_ss18_DictionaryStorageCySSSaySSGGMR);
}

{
  v1 = v0;
  v2 = type metadata accessor for StringKeyedValue(0);
  v31 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v30 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS14SiriKitRuntime16StringKeyedValueVGMd, &_ss18_DictionaryStorageCySS14SiriKitRuntime16StringKeyedValueVGMR);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v29 = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v8 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v32 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = *(v4 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v10 << 6);
        v21 = 16 * v20;
        v22 = (*(v4 + 48) + 16 * v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = v30;
        v26 = *(v31 + 72) * v20;
        outlined init with copy of StringKeyedValue(*(v4 + 56) + v26, v30);
        v27 = v32;
        v28 = (*(v32 + 48) + v21);
        *v28 = v23;
        v28[1] = v24;
        outlined init with take of StringKeyedValue(v25, *(v27 + 56) + v26, type metadata accessor for StringKeyedValue);
      }

      while (v15);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v16)
      {

        v1 = v29;
        v6 = v32;
        goto LABEL_18;
      }

      v19 = *(v8 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

{
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySS14SiriKitRuntime15AffinityScoring_pGMd, &_ss18_DictionaryStorageCySS14SiriKitRuntime15AffinityScoring_pGMR, outlined init with take of NSExtensionProtocol);
}

{
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCy10Foundation4UUIDVSayAEGGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDVSayAEGGMR);
}

{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestMd, &_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestMR);
  v32 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v31 = &v29 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS7SiriCam12RankedActionV03topF0_SayAC0D5ParseOG17alternativeParsestGMd, &_ss18_DictionaryStorageCySS7SiriCam12RankedActionV03topF0_SayAC0D5ParseOG17alternativeParsestGMR);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v30 = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v8 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v33 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    v14 = *(v4 + 64);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v15 = v13 & v14;
    v16 = (v12 + 63) >> 6;
    if ((v13 & v14) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v34 = (v15 - 1) & v15;
LABEL_14:
        v20 = v17 | (v10 << 6);
        v21 = 16 * v20;
        v22 = (*(v4 + 48) + 16 * v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = v31;
        v26 = *(v32 + 72) * v20;
        outlined init with copy of ReferenceResolutionClientProtocol?(*(v4 + 56) + v26, v31, &_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestMd, &_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestMR);
        v27 = v33;
        v28 = (*(v33 + 48) + v21);
        *v28 = v23;
        v28[1] = v24;
        outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v25, *(v27 + 56) + v26, &_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestMd, &_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestMR);

        v15 = v34;
      }

      while (v34);
    }

    v18 = v10;
    v6 = v33;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v16)
      {

        v1 = v30;
        goto LABEL_18;
      }

      v19 = *(v8 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v34 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS14SiriKitRuntime18ConversationActionOGMd, &_ss18_DictionaryStorageCySS14SiriKitRuntime18ConversationActionOGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        LOBYTE(v18) = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  return specialized _NativeDictionary.copy()(MEMORY[0x1E69E6D30], &_ss18_DictionaryStorageCys17CodingUserInfoKeyVs8Sendable_pGMd, &_ss18_DictionaryStorageCys17CodingUserInfoKeyVs8Sendable_pGMR);
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd, &_ss18_DictionaryStorageCyS2SGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySSSay11SiriKitFlow11IntentTopicVGGMd, &_ss18_DictionaryStorageCySSSay11SiriKitFlow11IntentTopicVGGMR);
}

{
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySS14SiriKitRuntime23RemoteFlowPluginPackageCGMd, &_ss18_DictionaryStorageCySS14SiriKitRuntime23RemoteFlowPluginPackageCGMR);
}

{
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySuyycGMd, &_ss18_DictionaryStorageCySuyycGMR);
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy14SiriKitRuntime14ContextTypeKeyOSo17AFContextSnapshot_pGMd, &_ss18_DictionaryStorageCy14SiriKitRuntime14ContextTypeKeyOSo17AFContextSnapshot_pGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 8 * v17) = v18;
        result = swift_unknownObjectRetain();
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  return specialized _NativeDictionary.copy()(MEMORY[0x1E69D0820], &_ss18_DictionaryStorageCy16SiriMessageTypes22ConversationSessionKeyOs8Sendable_pGMd, &_ss18_DictionaryStorageCy16SiriMessageTypes22ConversationSessionKeyOs8Sendable_pGMR);
}

{
  v1 = v0;
  v2 = type metadata accessor for ConversationSessionKey();
  v3 = *(v2 - 8);
  v30 = v2;
  v31 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v29 = v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy16SiriMessageTypes22ConversationSessionKeyOs8Sendable_pSgGMd, &_ss18_DictionaryStorageCy16SiriMessageTypes22ConversationSessionKeyOs8Sendable_pSgGMR);
  v5 = *v0;
  v6 = static _DictionaryStorage.copy(original:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v28[0] = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v32 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v28[1] = v31 + 32;
    v28[2] = v31 + 16;
    if (v15)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v33 = (v15 - 1) & v15;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v22 = v30;
        v21 = v31;
        v23 = *(v31 + 72) * v20;
        v24 = v29;
        (*(v31 + 16))(v29, *(v5 + 48) + v23, v30);
        v20 *= 32;
        outlined init with copy of ReferenceResolutionClientProtocol?(*(v5 + 56) + v20, v34, &_ss8Sendable_pSgMd, &_ss8Sendable_pSgMR);
        v25 = v32;
        result = (*(v21 + 32))(*(v32 + 48) + v23, v24, v22);
        v26 = (*(v25 + 56) + v20);
        v27 = v34[1];
        *v26 = v34[0];
        v26[1] = v27;
        v15 = v33;
      }

      while (v33);
    }

    v18 = v11;
    v7 = v32;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v28[0];
        goto LABEL_18;
      }

      v19 = *(v9 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v33 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

{
  v1 = v0;
  v30 = type metadata accessor for UUID();
  v32 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v29 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDVySo13SABaseCommandCSg_s5Error_pSgt14SiriKitRuntime15MessageBusActorCYccGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDVySo13SABaseCommandCSg_s5Error_pSgt14SiriKitRuntime15MessageBusActorCYccGMR);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v25 = v1;
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v8 = 0;
    v9 = *(v3 + 16);
    v31 = v5;
    *(v5 + 16) = v9;
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 64);
    v13 = (v10 + 63) >> 6;
    v28 = v32 + 16;
    v26 = v3 + 64;
    for (i = v32 + 32; v12; result = )
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_14:
      v17 = v14 | (v8 << 6);
      v18 = v32;
      v19 = *(v32 + 72) * v17;
      v20 = v29;
      v21 = v30;
      (*(v32 + 16))(v29, *(v3 + 48) + v19, v30);
      v17 *= 16;
      v22 = v31;
      v23 = *(v31 + 48);
      v24 = *(v18 + 32);
      v33 = *(*(v3 + 56) + v17);
      v24(v23 + v19, v20, v21);
      *(*(v22 + 56) + v17) = v33;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v25;
        v5 = v31;
        goto LABEL_18;
      }

      v16 = *(v26 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

{
  return specialized _NativeDictionary.copy()(MEMORY[0x1E69D0AA8], &_ss18_DictionaryStorageCySS12SiriNLUTypes0C28_Nlu_External_ResponseStatusV0H4CodeOGMd, &_ss18_DictionaryStorageCySS12SiriNLUTypes0C28_Nlu_External_ResponseStatusV0H4CodeOGMR);
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSScTy14SiriKitRuntime19ConversationServiceC11EagerResultOs5Error_pGGMd, &_ss18_DictionaryStorageCySSScTy14SiriKitRuntime19ConversationServiceC11EagerResultOs5Error_pGGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  return specialized _NativeDictionary.copy()(MEMORY[0x1E69D0100], &_ss18_DictionaryStorageCySS11SiriKitFlow5InputVGMd, &_ss18_DictionaryStorageCySS11SiriKitFlow5InputVGMR);
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS14SiriKitRuntime12AnyEncodableVGMd, &_ss18_DictionaryStorageCySS14SiriKitRuntime12AnyEncodableVGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + v17);
        v22 = (*(v4 + 48) + v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + v17) = v21;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy14SiriKitRuntime14ContextTypeKeyOSo17AFContextSnapshot_pSgGMd, &_ss18_DictionaryStorageCy14SiriKitRuntime14ContextTypeKeyOSo17AFContextSnapshot_pSgGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 8 * v17) = v18;
        result = swift_unknownObjectRetain();
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySO14SiriKitRuntime17InstrumentedStackC16TrackedFlowAgent33_D2D0045FA6DDADCCE44653D1D4022143LLCGMd, &_ss18_DictionaryStorageCySO14SiriKitRuntime17InstrumentedStackC16TrackedFlowAgent33_D2D0045FA6DDADCCE44653D1D4022143LLCGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySS14SiriKitRuntime19NSExtensionProtocol_pGMd, &_ss18_DictionaryStorageCySS14SiriKitRuntime19NSExtensionProtocol_pGMR, outlined init with take of NSExtensionProtocol);
}

{
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySSShySSGGMd, &_ss18_DictionaryStorageCySSShySSGGMR);
}

{
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySi14SiriKitRuntime24RemoteConversationClientCSgyYbcGMd, &_ss18_DictionaryStorageCySi14SiriKitRuntime24RemoteConversationClientCSgyYbcGMR);
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS14SiriKitRuntime19FlowPluginAndBundleVGMd, &_ss18_DictionaryStorageCySS14SiriKitRuntime19FlowPluginAndBundleVGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v28 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 80 * v17;
        outlined init with copy of FlowPluginAndBundle(*(v2 + 56) + 80 * v17, v29);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        v24 = (*(v4 + 56) + v22);
        *v24 = v29[0];
        v25 = v29[1];
        v26 = v29[2];
        v27 = v29[4];
        v24[3] = v29[3];
        v24[4] = v27;
        v24[1] = v25;
        v24[2] = v26;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v28;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

char *specialized _NativeDictionary.copy()()
{
  v1 = v0;
  v31 = type metadata accessor for UUID();
  v33 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v30 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDVSiGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDVSiGMR);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v26 = v1;
    v27 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v32 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v33 + 32;
    v29 = v33 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v34 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v33;
        v20 = *(v33 + 72) * v18;
        v22 = v30;
        v21 = v31;
        (*(v33 + 16))(v30, *(v3 + 48) + v20, v31);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v32;
        result = (*(v19 + 32))(*(v32 + 48) + v20, v22, v21);
        *(*(v24 + 56) + 8 * v18) = v23;
        v13 = v34;
      }

      while (v34);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v26;
        v5 = v32;
        goto LABEL_18;
      }

      v17 = *(v27 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v34 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

{
  return specialized _NativeDictionary.copy()(MEMORY[0x1E69D0188], &_ss18_DictionaryStorageCy10Foundation4UUIDV11SiriKitFlow5ParseOGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV11SiriKitFlow5ParseOGMR);
}

{
  v1 = v0;
  v33 = type metadata accessor for UserID();
  v35 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v32 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy16SiriMessageTypes6UserIDV0C10KitRuntime14ContextUpdaterCGMd, &_ss18_DictionaryStorageCy16SiriMessageTypes6UserIDV0C10KitRuntime14ContextUpdaterCGMR);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v28 = v1;
    v29 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v34 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v30 = v35 + 32;
    v31 = v35 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v36 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v35;
        v20 = *(v35 + 72) * v18;
        v22 = v32;
        v21 = v33;
        (*(v35 + 16))(v32, *(v3 + 48) + v20, v33);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v3;
        v25 = v34;
        (*(v19 + 32))(*(v34 + 48) + v20, v22, v21);
        v26 = *(v25 + 56);
        v3 = v24;
        *(v26 + 8 * v18) = v23;

        v13 = v36;
      }

      while (v36);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v28;
        v5 = v34;
        goto LABEL_18;
      }

      v17 = *(v29 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v36 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

{
  v1 = v0;
  v2 = type metadata accessor for UserID();
  v3 = *(v2 - 8);
  v38 = v2;
  v39 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v37 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy16SiriMessageTypes6UserIDV10Foundation4DataVGMd, &_ss18_DictionaryStorageCy16SiriMessageTypes6UserIDV10Foundation4DataVGMR);
  v5 = *v0;
  v6 = static _DictionaryStorage.copy(original:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v32 = v1;
    v33 = v5 + 64;
    if (v7 != v5 || result >= &v9[8 * v10])
    {
      result = memmove(result, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v40 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v34 = v39 + 32;
    v35 = v39 + 16;
    v36 = v5;
    if (v15)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v41 = (v15 - 1) & v15;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = v38;
        v22 = v39;
        v23 = *(v39 + 72) * v20;
        v24 = v37;
        (*(v39 + 16))(v37, *(v5 + 48) + v23, v38);
        v25 = *(v5 + 56);
        v26 = 16 * v20;
        v27 = (v25 + 16 * v20);
        v28 = *v27;
        v29 = v27[1];
        v30 = v40;
        (*(v22 + 32))(*(v40 + 48) + v23, v24, v21);
        v31 = (*(v30 + 56) + v26);
        v5 = v36;
        *v31 = v28;
        v31[1] = v29;
        result = outlined copy of Data._Representation(v28, v29);
        v15 = v41;
      }

      while (v41);
    }

    v18 = v11;
    v7 = v40;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v32;
        goto LABEL_18;
      }

      v19 = *(v33 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v41 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

{
  return specialized _NativeDictionary.copy()(MEMORY[0x1E69CE370], &_ss18_DictionaryStorageCy10Foundation4UUIDV7SiriCam15ActionCandidateVGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV7SiriCam15ActionCandidateVGMR);
}

{
  return specialized _NativeDictionary.copy()(&_s11SiriKitFlow5InputV_AA06ActingC0_p0A9Utilities0A11EnvironmentCtMd, &_s11SiriKitFlow5InputV_AA06ActingC0_p0A9Utilities0A11EnvironmentCtMR, &_ss18_DictionaryStorageCy10Foundation4UUIDV11SiriKitFlow5InputV_AF06ActingG0_p0E9Utilities0E11EnvironmentCtGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV11SiriKitFlow5InputV_AF06ActingG0_p0E9Utilities0E11EnvironmentCtGMR);
}

{
  return specialized _NativeDictionary.copy()(&_s11SiriKitFlow5InputV_AA03AnyC0C0A9Utilities0A11EnvironmentCtMd, &_s11SiriKitFlow5InputV_AA03AnyC0C0A9Utilities0A11EnvironmentCtMR, &_ss18_DictionaryStorageCy10Foundation4UUIDV11SiriKitFlow5InputV_AF03AnyG0C0E9Utilities0E11EnvironmentCtGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV11SiriKitFlow5InputV_AF03AnyG0C0E9Utilities0E11EnvironmentCtGMR);
}

void *specialized _NativeDictionary.copy()(uint64_t *a1, uint64_t *a2)
{
  v5 = v2;
  v35 = type metadata accessor for UUID();
  v37 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v7 = *v2;
  v8 = static _DictionaryStorage.copy(original:)();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 64);
    v11 = ((1 << *(v9 + 32)) + 63) >> 6;
    v30 = v5;
    v31 = (v7 + 64);
    if (v9 != v7 || result >= v7 + 64 + 8 * v11)
    {
      result = memmove(result, v31, 8 * v11);
    }

    v13 = 0;
    v14 = *(v7 + 16);
    v36 = v9;
    *(v9 + 16) = v14;
    v15 = 1 << *(v7 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v7 + 64);
    v18 = (v15 + 63) >> 6;
    v32 = v37 + 32;
    v33 = v37 + 16;
    if (v17)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v38 = (v17 - 1) & v17;
LABEL_17:
        v22 = v19 | (v13 << 6);
        v23 = v37;
        v24 = *(v37 + 72) * v22;
        v26 = v34;
        v25 = v35;
        (*(v37 + 16))(v34, *(v7 + 48) + v24, v35);
        v27 = *(*(v7 + 56) + 8 * v22);
        v28 = v36;
        (*(v23 + 32))(*(v36 + 48) + v24, v26, v25);
        *(*(v28 + 56) + 8 * v22) = v27;

        v17 = v38;
      }

      while (v38);
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v5 = v30;
        v9 = v36;
        goto LABEL_21;
      }

      v21 = *(v31 + v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v38 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v5 = v9;
  }

  return result;
}

{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 56) + 16 * v19);
        *(*(v6 + 48) + 8 * v19) = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 56) + 16 * v19) = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

id specialized _NativeDictionary.copy()()
{
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySSSo14SASRecognitionCGMd, &_ss18_DictionaryStorageCySSSo14SASRecognitionCGMR);
}

{
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCy16SiriMessageTypes6UserIDVSo15AFSpeechPackageCGMd, &_ss18_DictionaryStorageCy16SiriMessageTypes6UserIDVSo15AFSpeechPackageCGMR);
}

{
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCy16SiriMessageTypes6UserIDVSo16SAHomeMemberInfoCGMd, &_ss18_DictionaryStorageCy16SiriMessageTypes6UserIDVSo16SAHomeMemberInfoCGMR);
}

{
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySSSo8NSNumberCGMd, &_ss18_DictionaryStorageCySSSo8NSNumberCGMR);
}

void *specialized _NativeDictionary.copy()(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v31 = a1(0);
  v33 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v30 = v29 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v8 = *v3;
  v9 = static _DictionaryStorage.copy(original:)();
  v10 = v9;
  if (*(v8 + 16))
  {
    v29[0] = v6;
    result = (v9 + 64);
    v12 = ((1 << *(v10 + 32)) + 63) >> 6;
    if (v10 != v8 || result >= v8 + 64 + 8 * v12)
    {
      result = memmove(result, (v8 + 64), 8 * v12);
    }

    v14 = 0;
    v15 = *(v8 + 16);
    v32 = v10;
    *(v10 + 16) = v15;
    v16 = 1 << *(v8 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v8 + 64);
    v19 = (v16 + 63) >> 6;
    v29[1] = v33 + 32;
    v29[2] = v33 + 16;
    if (v18)
    {
      do
      {
        v20 = __clz(__rbit64(v18));
        v34 = (v18 - 1) & v18;
LABEL_17:
        v23 = v20 | (v14 << 6);
        v24 = v33;
        v25 = *(v33 + 72) * v23;
        v26 = v30;
        v27 = v31;
        (*(v33 + 16))(v30, *(v8 + 48) + v25, v31);
        v23 *= 32;
        outlined init with copy of Any(*(v8 + 56) + v23, v35);
        v28 = v32;
        (*(v24 + 32))(*(v32 + 48) + v25, v26, v27);
        result = outlined init with take of Any(v35, (*(v28 + 56) + v23));
        v18 = v34;
      }

      while (v34);
    }

    v21 = v14;
    while (1)
    {
      v14 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v14 >= v19)
      {

        v6 = v29[0];
        v10 = v32;
        goto LABEL_21;
      }

      v22 = *(v8 + 64 + 8 * v14);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v34 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v10;
  }

  return result;
}

{
  v6 = v3;
  v43 = a1(0);
  v45 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v42 = &v37 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v8 = *v3;
  v9 = static _DictionaryStorage.copy(original:)();
  v10 = v9;
  if (*(v8 + 16))
  {
    v38 = v6;
    result = (v9 + 64);
    v12 = v8 + 64;
    v13 = ((1 << *(v10 + 32)) + 63) >> 6;
    if (v10 != v8 || result >= v8 + 64 + 8 * v13)
    {
      result = memmove(result, (v8 + 64), 8 * v13);
    }

    v15 = 0;
    v16 = *(v8 + 16);
    v44 = v10;
    *(v10 + 16) = v16;
    v17 = 1 << *(v8 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & *(v8 + 64);
    v20 = (v17 + 63) >> 6;
    v39 = v45 + 32;
    v40 = v45 + 16;
    v41 = v8;
    if (v19)
    {
      do
      {
        v21 = __clz(__rbit64(v19));
        v46 = (v19 - 1) & v19;
LABEL_17:
        v24 = v21 | (v15 << 6);
        v25 = 16 * v24;
        v26 = *(v8 + 56);
        v27 = (*(v8 + 48) + 16 * v24);
        v28 = *v27;
        v29 = v27[1];
        v30 = v45;
        v31 = *(v45 + 72) * v24;
        v32 = v42;
        v33 = v43;
        (*(v45 + 16))(v42, v26 + v31, v43);
        v34 = v44;
        v35 = (*(v44 + 48) + v25);
        *v35 = v28;
        v35[1] = v29;
        v36 = *(v34 + 56) + v31;
        v8 = v41;
        (*(v30 + 32))(v36, v32, v33);

        v19 = v46;
      }

      while (v46);
    }

    v22 = v15;
    while (1)
    {
      v15 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v15 >= v20)
      {

        v6 = v38;
        v10 = v44;
        goto LABEL_21;
      }

      v23 = *(v12 + 8 * v15);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v46 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v10;
  }

  return result;
}

id specialized _NativeDictionary.copy()(uint64_t *a1, uint64_t *a2)
{
  v5 = v2;
  v35 = type metadata accessor for UserID();
  v37 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v7 = *v2;
  v8 = static _DictionaryStorage.copy(original:)();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 64);
    v11 = ((1 << *(v9 + 32)) + 63) >> 6;
    v30 = v5;
    v31 = (v7 + 64);
    if (v9 != v7 || result >= v7 + 64 + 8 * v11)
    {
      result = memmove(result, v31, 8 * v11);
    }

    v13 = 0;
    v14 = *(v7 + 16);
    v36 = v9;
    *(v9 + 16) = v14;
    v15 = 1 << *(v7 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v7 + 64);
    v18 = (v15 + 63) >> 6;
    v32 = v37 + 32;
    v33 = v37 + 16;
    v19 = v9;
    if (v17)
    {
      do
      {
        v20 = __clz(__rbit64(v17));
        v38 = (v17 - 1) & v17;
LABEL_17:
        v23 = v20 | (v13 << 6);
        v24 = v37;
        v25 = *(v37 + 72) * v23;
        v27 = v34;
        v26 = v35;
        (*(v37 + 16))(v34, *(v7 + 48) + v25, v35);
        v28 = *(*(v7 + 56) + 8 * v23);
        (*(v24 + 32))(*(v19 + 48) + v25, v27, v26);
        *(*(v19 + 56) + 8 * v23) = v28;
        result = v28;
        v17 = v38;
      }

      while (v38);
    }

    v21 = v13;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v5 = v30;
        v9 = v36;
        goto LABEL_21;
      }

      v22 = *(v31 + v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v38 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v5 = v9;
  }

  return result;
}

{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;

        result = v22;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

char *specialized _NativeDictionary.copy()(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v46 = a1(0);
  v49 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v45 = &v35 - v7;
  v44 = type metadata accessor for UUID();
  v48 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v43 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v9 = *v3;
  v10 = static _DictionaryStorage.copy(original:)();
  v11 = v10;
  if (*(v9 + 16))
  {
    result = (v10 + 64);
    v13 = (v9 + 64);
    v14 = ((1 << *(v11 + 32)) + 63) >> 6;
    v35 = v6;
    v36 = v9 + 64;
    if (v11 != v9 || result >= &v13[8 * v14])
    {
      result = memmove(result, v13, 8 * v14);
    }

    v15 = 0;
    v16 = *(v9 + 16);
    v47 = v11;
    *(v11 + 16) = v16;
    v17 = 1 << *(v9 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & *(v9 + 64);
    v20 = (v17 + 63) >> 6;
    v40 = v48 + 16;
    v41 = v20;
    v38 = v48 + 32;
    v39 = v49 + 16;
    v37 = v49 + 32;
    v42 = v9;
    v22 = v43;
    v21 = v44;
    if (v19)
    {
      do
      {
        v23 = __clz(__rbit64(v19));
        v50 = (v19 - 1) & v19;
LABEL_14:
        v26 = v23 | (v15 << 6);
        v27 = v48;
        v28 = *(v48 + 72) * v26;
        (*(v48 + 16))(v22, *(v9 + 48) + v28, v21);
        v29 = v49;
        v30 = *(v49 + 72) * v26;
        v31 = v45;
        v32 = v46;
        (*(v49 + 16))(v45, *(v9 + 56) + v30, v46);
        v33 = v47;
        (*(v27 + 32))(*(v47 + 48) + v28, v22, v21);
        v34 = *(v33 + 56);
        v9 = v42;
        result = (*(v29 + 32))(v34 + v30, v31, v32);
        v20 = v41;
        v19 = v50;
      }

      while (v50);
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v15 >= v20)
      {

        v6 = v35;
        v11 = v47;
        goto LABEL_18;
      }

      v25 = *(v36 + 8 * v15);
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v50 = (v25 - 1) & v25;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v6 = v11;
  }

  return result;
}