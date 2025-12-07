uint64_t PhotogrammetrySessionImpl.RequestMap.getStartTimestamp(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation25PhotogrammetrySessionImplC10RequestMapC5Entry33_372E864D6FBFC56F64A9656CCD500B7CLLVSgMd, &_s17RealityFoundation25PhotogrammetrySessionImplC10RequestMapC5Entry33_372E864D6FBFC56F64A9656CCD500B7CLLVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v19[-v6];
  v8 = type metadata accessor for PhotogrammetrySessionImpl.RequestMap.Entry(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v19[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  v12 = *(v2 + 16);

  os_unfair_lock_lock((v12 + 24));
  v13 = *(v12 + 16);

  os_unfair_lock_unlock((v12 + 24));

  v20 = a1;
  specialized Sequence.first(where:)(partial apply for closure #1 in PhotogrammetrySessionImpl.RequestMap.getStartTimestamp(for:), v13, v7);

  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    outlined destroy of BodyTrackingComponent?(v7, &_s17RealityFoundation25PhotogrammetrySessionImplC10RequestMapC5Entry33_372E864D6FBFC56F64A9656CCD500B7CLLVSgMd, &_s17RealityFoundation25PhotogrammetrySessionImplC10RequestMapC5Entry33_372E864D6FBFC56F64A9656CCD500B7CLLVSgMR);
    v14 = type metadata accessor for Date();
    return (*(*(v14 - 8) + 56))(a2, 1, 1, v14);
  }

  else
  {
    outlined init with take of PhotogrammetrySession.Request(v7, v11, type metadata accessor for PhotogrammetrySessionImpl.RequestMap.Entry);
    v16 = *(v8 + 24);
    v17 = type metadata accessor for Date();
    v18 = *(v17 - 8);
    (*(v18 + 16))(a2, &v11[v16], v17);
    outlined destroy of PhotogrammetrySession.Request(v11, type metadata accessor for PhotogrammetrySessionImpl.RequestMap.Entry);
    return (*(v18 + 56))(a2, 0, 1, v17);
  }
}

uint64_t PhotogrammetrySessionImpl.RequestMap.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t closure #1 in PhotogrammetrySessionImpl.onProcessingCancelled()(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC17RealityFoundation25PhotogrammetrySessionImpl_requestMap);
  swift_beginAccess();
  v3 = *(v2 + 16);

  os_unfair_lock_lock((v3 + 24));
  closure #1 in Atomic.store(_:)specialized partial apply((v3 + 16));
  os_unfair_lock_unlock((v3 + 24));
  swift_endAccess();

  *(a1 + OBJC_IVAR____TtC17RealityFoundation25PhotogrammetrySessionImpl_isProcessing) = 0;
  *(a1 + OBJC_IVAR____TtC17RealityFoundation25PhotogrammetrySessionImpl_state) = 0;
  return result;
}

uint64_t PhotogrammetrySessionImpl.logAnalyticsEvents(sourceType:)(char a1)
{
  v2 = v1;
  v32 = type metadata accessor for AnalyticsManager.PhotogrammetrySessionBundleIdentifierEvent(0);
  MEMORY[0x1EEE9AC00](v32);
  v5 = v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  inited = type metadata accessor for AnalyticsManager.PhotogrammetrySessionInitEvent(0);
  v7 = inited - 8;
  v8 = *(inited - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](inited);
  v10 = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v31 - v12;
  v14 = OBJC_IVAR____TtC17RealityFoundation25PhotogrammetrySessionImpl_sessionID;
  v15 = type metadata accessor for UUID();
  v16 = *(v15 - 8);
  v17 = *(v16 + 16);
  v33 = v2;
  v18 = v2 + v14;
  v19 = v17;
  v31[1] = v16 + 16;
  v17(v13, v18, v15);
  v13[*(v7 + 28)] = a1 & 1;
  v20 = MEMORY[0x1C68F3280](0xD000000000000031, 0x80000001C18E8450);
  outlined init with copy of PhotogrammetrySession.Request(v13, v10, type metadata accessor for AnalyticsManager.PhotogrammetrySessionInitEvent);
  v21 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v22 = swift_allocObject();
  outlined init with take of PhotogrammetrySession.Request(v10, v22 + v21, type metadata accessor for AnalyticsManager.PhotogrammetrySessionInitEvent);
  aBlock[4] = partial apply for closure #1 in AnalyticsManager.sendPhotogrammetrySessionInitEvent(event:);
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> (@owned [String : NSObject]?);
  aBlock[3] = &block_descriptor_153;
  v23 = _Block_copy(aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v23);

  outlined destroy of PhotogrammetrySession.Request(v13, type metadata accessor for AnalyticsManager.PhotogrammetrySessionInitEvent);
  v24 = [objc_opt_self() mainBundle];
  v25 = [v24 bundleIdentifier];

  if (v25)
  {
    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;
  }

  else
  {
    v26 = 0;
    v28 = 0xE000000000000000;
  }

  v19(v5, v33 + v14, v15);
  v29 = &v5[*(v32 + 20)];
  *v29 = v26;
  v29[1] = v28;
  specialized AnalyticsManager.sendPhotogrammetrySessionBundleIdentifierEvent(event:)(v5);
  return outlined destroy of PhotogrammetrySession.Request(v5, type metadata accessor for AnalyticsManager.PhotogrammetrySessionBundleIdentifierEvent);
}

uint64_t OutputPublisherMonitor.sessionID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v20 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v20 - v10;
  v12 = OBJC_IVAR____TtC17RealityFoundation22OutputPublisherMonitor____lazy_storage___sessionID;
  swift_beginAccess();
  outlined init with copy of [String : String](v1 + v12, v11, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  v15 = *(v14 + 48);
  if (v15(v11, 1, v13) != 1)
  {
    return (*(v14 + 32))(a1, v11, v13);
  }

  v21 = a1;
  outlined destroy of BodyTrackingComponent?(v11, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(v14 + 16))(v8, Strong + OBJC_IVAR____TtC17RealityFoundation25PhotogrammetrySessionImpl_sessionID, v13);

    v17 = *(v14 + 56);
    v17(v8, 0, 1, v13);
    v18 = v21;
    (*(v14 + 32))(v21, v8, v13);
  }

  else
  {
    v17 = *(v14 + 56);
    v17(v8, 1, 1, v13);
    UUID.init()();
    if (v15(v8, 1, v13) != 1)
    {
      outlined destroy of BodyTrackingComponent?(v8, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    }

    v18 = v21;
  }

  (*(v14 + 16))(v5, v18, v13);
  v17(v5, 0, 1, v13);
  swift_beginAccess();
  outlined assign with take of Any?(v5, v1 + v12, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  return swift_endAccess();
}

uint64_t OutputPublisherMonitor.init(publisher:)(uint64_t a1)
{
  v2 = v1;
  v34 = a1;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV15BufferingPolicyOy17RealityFoundation21PhotogrammetrySessionC6OutputO__GMd, &_sScS12ContinuationV15BufferingPolicyOy17RealityFoundation21PhotogrammetrySessionC6OutputO__GMR);
  v33 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v32 = &v24 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy17RealityFoundation21PhotogrammetrySessionC6OutputOGSgMd, &_sScSy17RealityFoundation21PhotogrammetrySessionC6OutputOGSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v31 = &v24 - v5;
  v6 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v26 = *(v6 - 8);
  v27 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v25 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x1EEE9AC00](v8);
  v9 = type metadata accessor for DispatchQoS();
  MEMORY[0x1EEE9AC00](v9 - 8);
  *(v1 + 64) = 0;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 16) = 0u;
  v10 = OBJC_IVAR____TtC17RealityFoundation22OutputPublisherMonitor_outputs;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy17RealityFoundation21PhotogrammetrySessionC6OutputOGMd, &_sScSy17RealityFoundation21PhotogrammetrySessionC6OutputOGMR);
  v11 = *(v29 - 8);
  v28 = *(v11 + 56);
  v30 = v11 + 56;
  v28(v1 + v10, 1, 1, v29);
  swift_weakInit();
  v12 = OBJC_IVAR____TtC17RealityFoundation22OutputPublisherMonitor____lazy_storage___sessionID;
  v13 = type metadata accessor for UUID();
  (*(*(v13 - 8) + 56))(v1 + v12, 1, 1, v13);
  v14 = (v1 + OBJC_IVAR____TtC17RealityFoundation22OutputPublisherMonitor_onOutput);
  *v14 = 0;
  v14[1] = 0;
  v24 = OBJC_IVAR____TtC17RealityFoundation22OutputPublisherMonitor_serialOutputQueue;
  type metadata accessor for OS_dispatch_queue();
  static DispatchQoS.userInitiated.getter();
  v38 = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR, MEMORY[0x1E69E6328]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v26 + 104))(v25, *MEMORY[0x1E69E8090], v27);
  *(v1 + v24) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v15 = (v1 + OBJC_IVAR____TtC17RealityFoundation22OutputPublisherMonitor_onPublishOutputMessage);
  *v15 = 0;
  v15[1] = 0;
  v16 = OBJC_IVAR____TtC17RealityFoundation22OutputPublisherMonitor__internalProcessingCompleteReceived;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCySbSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCySbSo16os_unfair_lock_sVGMR);
  v17 = swift_allocObject();
  *(v17 + 20) = 0;
  *(v17 + 16) = 0;
  *(v2 + v16) = v17;
  v18 = (v2 + OBJC_IVAR____TtC17RealityFoundation22OutputPublisherMonitor_onInternalProcessingComplete);
  *v18 = 0;
  v18[1] = 0;
  v19 = OBJC_IVAR____TtC17RealityFoundation22OutputPublisherMonitor_tasks;
  type metadata accessor for OutputPublisherMonitor.Tasks();
  v20 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v20 + 112) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_ScTyyts5NeverOGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v2 + v19) = v20;
  v36 = v2;
  v37 = v34;
  type metadata accessor for PhotogrammetrySession.Output(0);
  (*(v33 + 104))(v32, *MEMORY[0x1E69E8650], v35);
  v21 = v31;
  AsyncStream.init(_:bufferingPolicy:_:)();

  v28(v21, 0, 1, v29);
  v22 = OBJC_IVAR____TtC17RealityFoundation22OutputPublisherMonitor_outputs;
  swift_beginAccess();
  outlined assign with take of Any?(v21, v2 + v22, &_sScSy17RealityFoundation21PhotogrammetrySessionC6OutputOGSgMd, &_sScSy17RealityFoundation21PhotogrammetrySessionC6OutputOGSgMR);
  swift_endAccess();
  return v2;
}

uint64_t closure #1 in OutputPublisherMonitor.init(publisher:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v36 = a1;
  v37 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy17RealityFoundation21PhotogrammetrySessionC6OutputO_GMd, &_sScS12ContinuationVy17RealityFoundation21PhotogrammetrySessionC6OutputO_GMR);
  v6 = *(v5 - 8);
  v40 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v36 - v7;
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = (a2 + OBJC_IVAR____TtC17RealityFoundation22OutputPublisherMonitor_onOutput);
  v11 = *(a2 + OBJC_IVAR____TtC17RealityFoundation22OutputPublisherMonitor_onOutput);
  v12 = *(a2 + OBJC_IVAR____TtC17RealityFoundation22OutputPublisherMonitor_onOutput + 8);
  *v10 = partial apply for closure #1 in closure #1 in OutputPublisherMonitor.init(publisher:);
  v10[1] = v9;

  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v11, v12);

  v13 = swift_allocObject();
  swift_weakInit();
  v41 = *(v6 + 16);
  v14 = v5;
  v41(v8, a1, v5);
  v15 = *(v6 + 80);
  v16 = (v15 + 24) & ~v15;
  v17 = swift_allocObject();
  *(v17 + 16) = v13;
  v18 = *(v6 + 32);
  v38 = v6 + 32;
  v39 = v18;
  v19 = v14;
  v18(v17 + v16, v8, v14);
  v20 = (a2 + OBJC_IVAR____TtC17RealityFoundation22OutputPublisherMonitor_onPublishOutputMessage);
  v22 = *(a2 + OBJC_IVAR____TtC17RealityFoundation22OutputPublisherMonitor_onPublishOutputMessage);
  v21 = *(a2 + OBJC_IVAR____TtC17RealityFoundation22OutputPublisherMonitor_onPublishOutputMessage + 8);
  *v20 = partial apply for closure #2 in closure #1 in OutputPublisherMonitor.init(publisher:);
  v20[1] = v17;

  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v22, v21);

  v23 = swift_allocObject();
  swift_weakInit();
  v24 = v36;
  v25 = v19;
  v41(v8, v36, v19);
  v26 = swift_allocObject();
  *(v26 + 16) = v23;
  v27 = v26 + v16;
  v28 = v25;
  v39(v27, v8, v25);
  v29 = (a2 + OBJC_IVAR____TtC17RealityFoundation22OutputPublisherMonitor_onInternalProcessingComplete);
  v30 = *(a2 + OBJC_IVAR____TtC17RealityFoundation22OutputPublisherMonitor_onInternalProcessingComplete);
  v31 = *(a2 + OBJC_IVAR____TtC17RealityFoundation22OutputPublisherMonitor_onInternalProcessingComplete + 8);
  *v29 = partial apply for closure #3 in closure #1 in OutputPublisherMonitor.init(publisher:);
  v29[1] = v26;

  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v30, v31);

  v41(v8, v24, v28);
  v32 = swift_allocObject();
  v39(v32 + ((v15 + 16) & ~v15), v8, v28);
  v33 = *(a2 + 56);
  v34 = *(a2 + 64);
  *(a2 + 56) = partial apply for closure #4 in closure #1 in OutputPublisherMonitor.init(publisher:);
  *(a2 + 64) = v32;
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v33, v34);

  AsyncStream.Continuation.onTermination.setter();
  return OutputPublisherMonitor.connectPublisher(_:)(v37);
}

uint64_t closure #1 in closure #1 in OutputPublisherMonitor.init(publisher:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    OutputPublisherMonitor.publishOutputMessage(internalOutput:)(a1);
  }

  return result;
}

uint64_t closure #2 in closure #1 in OutputPublisherMonitor.init(publisher:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v29 = a3;
  v30 = a1;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v33 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v32 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v31 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PhotogrammetrySession.Output(0);
  v28 = *(v8 - 8);
  v9 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy17RealityFoundation21PhotogrammetrySessionC6OutputO_GMd, &_sScS12ContinuationVy17RealityFoundation21PhotogrammetrySessionC6OutputO_GMR);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v26 - v13;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v27 = *(result + OBJC_IVAR____TtC17RealityFoundation22OutputPublisherMonitor_serialOutputQueue);

    (*(v11 + 16))(v14, v29, v10);
    outlined init with copy of PhotogrammetrySession.Request(v30, &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PhotogrammetrySession.Output);
    v16 = *(v11 + 80);
    v30 = v6;
    v17 = v4;
    v18 = v3;
    v19 = (v16 + 16) & ~v16;
    v20 = (v12 + *(v28 + 80) + v19) & ~*(v28 + 80);
    v21 = swift_allocObject();
    (*(v11 + 32))(v21 + v19, v14, v10);
    outlined init with take of PhotogrammetrySession.Request(&v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20, type metadata accessor for PhotogrammetrySession.Output);
    aBlock[4] = partial apply for closure #1 in closure #2 in closure #1 in OutputPublisherMonitor.init(publisher:);
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_203;
    v22 = _Block_copy(aBlock);
    v23 = v31;
    static DispatchQoS.unspecified.getter();
    v34 = MEMORY[0x1E69E7CC0];
    lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
    v24 = v33;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v25 = v27;
    MEMORY[0x1C68F3CA0](0, v23, v24, v22);
    _Block_release(v22);

    (*(v17 + 8))(v24, v18);
    (*(v32 + 8))(v23, v30);
  }

  return result;
}

uint64_t closure #1 in closure #2 in closure #1 in OutputPublisherMonitor.init(publisher:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for PhotogrammetrySession.Output(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOy17RealityFoundation21PhotogrammetrySessionC6OutputO__GMd, &_sScS12ContinuationV11YieldResultOy17RealityFoundation21PhotogrammetrySessionC6OutputO__GMR);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  outlined init with copy of PhotogrammetrySession.Request(a2, v5, type metadata accessor for PhotogrammetrySession.Output);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy17RealityFoundation21PhotogrammetrySessionC6OutputO_GMd, &_sScS12ContinuationVy17RealityFoundation21PhotogrammetrySessionC6OutputO_GMR);
  AsyncStream.Continuation.yield(_:)();
  return (*(v7 + 8))(v9, v6);
}

uint64_t closure #3 in closure #1 in OutputPublisherMonitor.init(publisher:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v23 = *(v7 - 8);
  v24 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy17RealityFoundation21PhotogrammetrySessionC6OutputO_GMd, &_sScS12ContinuationVy17RealityFoundation21PhotogrammetrySessionC6OutputO_GMR);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v22 - v12;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v15 = *(result + OBJC_IVAR____TtC17RealityFoundation22OutputPublisherMonitor_serialOutputQueue);
    v22[0] = v6;
    v22[1] = v15;
    v16 = result;
    (*(v11 + 16))(v13, a2, v10);
    v17 = v3;
    v18 = (*(v11 + 80) + 24) & ~*(v11 + 80);
    v19 = swift_allocObject();
    *(v19 + 16) = v16;
    (*(v11 + 32))(v19 + v18, v13, v10);
    aBlock[4] = partial apply for closure #1 in closure #3 in closure #1 in OutputPublisherMonitor.init(publisher:);
    aBlock[5] = v19;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_193;
    v20 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v25 = MEMORY[0x1E69E7CC0];
    lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
    v21 = v22[0];
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x1C68F3CA0](0, v9, v21, v20);
    _Block_release(v20);
    (*(v4 + 8))(v21, v17);
    (*(v23 + 8))(v9, v24);
  }

  return result;
}

uint64_t closure #1 in closure #3 in closure #1 in OutputPublisherMonitor.init(publisher:)(uint64_t a1)
{
  v2 = type metadata accessor for PhotogrammetrySession.Output(0);
  MEMORY[0x1EEE9AC00](v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOy17RealityFoundation21PhotogrammetrySessionC6OutputO__GMd, &_sScS12ContinuationV11YieldResultOy17RealityFoundation21PhotogrammetrySessionC6OutputO__GMR);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v23 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v23 - v8;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, logger);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v23 = v6;
    v14 = v13;
    *v13 = 0;
    _os_log_impl(&dword_1C1358000, v11, v12, "Publishing processingComplete...", v13, 2u);
    v6 = v23;
    MEMORY[0x1C6902A30](v14, -1, -1);
  }

  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v9, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = a1;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v9, &async function pointer to partial apply for closure #1 in closure #1 in closure #3 in closure #1 in OutputPublisherMonitor.init(publisher:), v16);

  v17 = OBJC_IVAR____TtC17RealityFoundation22OutputPublisherMonitor__internalProcessingCompleteReceived;
  swift_beginAccess();
  v18 = *(a1 + v17);
  os_unfair_lock_lock((v18 + 20));
  *(v18 + 16) = 0;
  os_unfair_lock_unlock((v18 + 20));
  swift_endAccess();
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy17RealityFoundation21PhotogrammetrySessionC6OutputO_GMd, &_sScS12ContinuationVy17RealityFoundation21PhotogrammetrySessionC6OutputO_GMR);
  AsyncStream.Continuation.yield(_:)();
  result = (*(v4 + 8))(v6, v3);
  v20 = *(a1 + 24);
  if (v20)
  {
    v21 = *(a1 + 32);

    v20(v22);
    return outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v20, v21);
  }

  return result;
}

uint64_t closure #1 in closure #1 in closure #3 in closure #1 in OutputPublisherMonitor.init(publisher:)()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC17RealityFoundation22OutputPublisherMonitor_tasks);
  *(v0 + 24) = v1;

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in closure #3 in closure #1 in OutputPublisherMonitor.init(publisher:), v1, 0);
}

{
  OutputPublisherMonitor.Tasks.clear()();

  v1 = *(v0 + 8);

  return v1();
}

void closure #4 in closure #1 in OutputPublisherMonitor.init(publisher:)()
{
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, logger);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1C1358000, v1, v2, "Ending continuation...", v3, 2u);
    MEMORY[0x1C6902A30](v3, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy17RealityFoundation21PhotogrammetrySessionC6OutputO_GMd, &_sScS12ContinuationVy17RealityFoundation21PhotogrammetrySessionC6OutputO_GMR);
  AsyncStream.Continuation.finish()();
}

uint64_t closure #5 in closure #1 in OutputPublisherMonitor.init(publisher:)()
{
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, logger);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1C1358000, v1, v2, "onTermination() called. Stopping monitoring...", v3, 2u);
    MEMORY[0x1C6902A30](v3, -1, -1);
  }

  return OutputPublisherMonitor.stopMonitoring()();
}

uint64_t OutputPublisherMonitor.stopMonitoring()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy17RealityFoundation21PhotogrammetrySessionC6OutputOGSgMd, &_sScSy17RealityFoundation21PhotogrammetrySessionC6OutputOGSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v8 - v3;
  if (*(v0 + 16))
  {

    AnyCancellable.cancel()();
  }

  *(v0 + 16) = 0;

  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy17RealityFoundation21PhotogrammetrySessionC6OutputOGMd, &_sScSy17RealityFoundation21PhotogrammetrySessionC6OutputOGMR);
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtC17RealityFoundation22OutputPublisherMonitor_outputs;
  swift_beginAccess();
  outlined assign with take of Any?(v4, v1 + v6, &_sScSy17RealityFoundation21PhotogrammetrySessionC6OutputOGSgMd, &_sScSy17RealityFoundation21PhotogrammetrySessionC6OutputOGSgMR);
  return swift_endAccess();
}

uint64_t OutputPublisherMonitor.connectPublisher(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO17BufferingStrategyOy_s5NeverOGMd, &_s7Combine10PublishersO17BufferingStrategyOy_s5NeverOGMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - v4;
  v6 = type metadata accessor for Publishers.PrefetchStrategy();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO6BufferVy_AA12AnyPublisherVy6CoreOC21PhotogrammetrySessionC6OutputOs5NeverOGGMd, &_s7Combine10PublishersO6BufferVy_AA12AnyPublisherVy6CoreOC21PhotogrammetrySessionC6OutputOs5NeverOGGMR);
  v11 = *(v10 - 8);
  v19 = v10;
  v20 = v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v19 - v13;
  v22 = a1;
  (*(v7 + 104))(v9, *MEMORY[0x1E695BD20], v6, v12);
  (*(v3 + 104))(v5, *MEMORY[0x1E695BD40], v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy6CoreOC21PhotogrammetrySessionC6OutputOs5NeverOGMd, &_s7Combine12AnyPublisherVy6CoreOC21PhotogrammetrySessionC6OutputOs5NeverOGMR);
  lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type AnyPublisher<PhotogrammetrySession.Output, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy6CoreOC21PhotogrammetrySessionC6OutputOs5NeverOGMd, &_s7Combine12AnyPublisherVy6CoreOC21PhotogrammetrySessionC6OutputOs5NeverOGMR, MEMORY[0x1E695BED8]);
  Publisher.buffer(size:prefetch:whenFull:)();
  (*(v3 + 8))(v5, v2);
  (*(v7 + 8))(v9, v6);
  swift_allocObject();
  v15 = v21;
  swift_weakInit();
  lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type Publishers.Buffer<AnyPublisher<PhotogrammetrySession.Output, Never>> and conformance Publishers.Buffer<A>, &_s7Combine10PublishersO6BufferVy_AA12AnyPublisherVy6CoreOC21PhotogrammetrySessionC6OutputOs5NeverOGGMd, &_s7Combine10PublishersO6BufferVy_AA12AnyPublisherVy6CoreOC21PhotogrammetrySessionC6OutputOs5NeverOGGMR, MEMORY[0x1E695BDD8]);
  v16 = v19;
  v17 = Publisher<>.sink(receiveValue:)();

  (*(v20 + 8))(v14, v16);
  *(v15 + 16) = v17;
}

uint64_t closure #1 in OutputPublisherMonitor.connectPublisher(_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v13 = *(result + OBJC_IVAR____TtC17RealityFoundation22OutputPublisherMonitor_serialOutputQueue);
    v30 = v9;
    v28 = v13;

    v14 = type metadata accessor for PhotogrammetrySession.Output();
    v29 = &v25;
    v15 = *(v14 - 8);
    v26 = v7;
    v16 = v15;
    v17 = *(v15 + 64);
    v18 = MEMORY[0x1EEE9AC00](v14);
    (*(v16 + 16))(&v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v14, v18);
    v19 = *(v16 + 80);
    v27 = v8;
    v20 = (v19 + 24) & ~v19;
    v21 = swift_allocObject();
    *(v21 + 16) = a2;
    (*(v16 + 32))(v21 + v20, &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v14);
    aBlock[4] = partial apply for closure #1 in closure #1 in OutputPublisherMonitor.connectPublisher(_:);
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_21;
    v22 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v31 = MEMORY[0x1E69E7CC0];
    lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
    v23 = v26;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v24 = v28;
    MEMORY[0x1C68F3CA0](0, v11, v23, v22);
    _Block_release(v22);

    (*(v5 + 8))(v23, v4);
    (*(v30 + 8))(v11, v27);
  }

  return result;
}

uint64_t closure #1 in closure #1 in OutputPublisherMonitor.connectPublisher(_:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = *(result + OBJC_IVAR____TtC17RealityFoundation22OutputPublisherMonitor_onOutput);
    v4 = *(result + OBJC_IVAR____TtC17RealityFoundation22OutputPublisherMonitor_onOutput + 8);
    outlined copy of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v5, v4);

    if (v5)
    {
      v5(a2);
      return outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v5, v4);
    }
  }

  return result;
}

void OutputPublisherMonitor.publishOutputMessage(internalOutput:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v100 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21PhotogrammetrySessionC7RequestOSgMd, &_s17RealityFoundation21PhotogrammetrySessionC7RequestOSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v100 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v100 - v10;
  v12 = type metadata accessor for PhotogrammetrySession.Request(0);
  v110 = *(v12 - 8);
  v111 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v100 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v100 - v16);
  v108 = type metadata accessor for PhotogrammetrySession.Output(0);
  MEMORY[0x1EEE9AC00](v108);
  v109 = &v100 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for PhotogrammetrySession.Output();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = (&v100 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v20 + 16))(v23, a1, v19, v21);
  v24 = (*(v20 + 88))(v23, v19);
  if (MEMORY[0x1E6998310] && v24 == *MEMORY[0x1E6998310])
  {
    (*(v20 + 96))(v23, v19);
    v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s6CoreOC21PhotogrammetrySessionC7RequestO_AC5ErrorOtMd, &_s6CoreOC21PhotogrammetrySessionC7RequestO_AC5ErrorOtMR) + 48);
    v26 = type metadata accessor for PhotogrammetrySession.Request();
    v111 = &v100;
    v27 = *(v26 - 8);
    v28 = MEMORY[0x1EEE9AC00](v26);
    v30 = &v100 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v27 + 32))(v30, v23, v26, v28);
    v31 = type metadata accessor for PhotogrammetrySession.Error();
    v32 = *(v31 - 8);
    v33 = MEMORY[0x1EEE9AC00](v31);
    v35 = &v100 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v32 + 32))(v35, v23 + v25, v31, v33);
    lazy protocol witness table accessor for type PhotogrammetrySession.Error and conformance PhotogrammetrySession.Error();
    v36 = swift_allocError();
    (*(v32 + 16))(v37, v35, v31);
    OutputPublisherMonitor.handleRequestError(internalRequest:error:)(v30, v36);
    (*(v32 + 8))(v35, v31);
    (*(v27 + 8))(v30, v26);

    return;
  }

  if (MEMORY[0x1E6998330] && v24 == *MEMORY[0x1E6998330])
  {
    (*(v20 + 96))(v23, v19);
    v38 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s6CoreOC21PhotogrammetrySessionC7RequestO_AC6ResultOtMd, &_s6CoreOC21PhotogrammetrySessionC7RequestO_AC6ResultOtMR) + 48);
    v39 = type metadata accessor for PhotogrammetrySession.Request();
    v111 = &v100;
    v40 = *(v39 - 8);
    v41 = MEMORY[0x1EEE9AC00](v39);
    v43 = &v100 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v40 + 32))(v43, v23, v39, v41);
    v44 = type metadata accessor for PhotogrammetrySession.Result();
    v45 = *(v44 - 8);
    v46 = MEMORY[0x1EEE9AC00](v44);
    v48 = &v100 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v45 + 32))(v48, v23 + v38, v44, v46);
    OutputPublisherMonitor.handleRequestComplete(internalRequest:internalResult:)(v43, v48);
    (*(v45 + 8))(v48, v44);
    (*(v40 + 8))(v43, v39);
    return;
  }

  if (MEMORY[0x1E6998338] && v24 == *MEMORY[0x1E6998338])
  {
    (*(v20 + 96))(v23, v19);
    v49 = *(v23 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s6CoreOC21PhotogrammetrySessionC7RequestO_Sd16fractionCompletetMd, &_s6CoreOC21PhotogrammetrySessionC7RequestO_Sd16fractionCompletetMR) + 48));
    v50 = type metadata accessor for PhotogrammetrySession.Request();
    v107 = &v100;
    v51 = *(v50 - 8);
    v52 = *(v51 + 64);
    v53 = MEMORY[0x1EEE9AC00](v50);
    v54 = &v100 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v51 + 32))(v54, v23, v50, v53);
    if (swift_weakLoadStrong())
    {

      PhotogrammetrySessionImpl.RequestMap.findRequest(for:)(&v100 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0), v11);

      v56 = v110;
      v55 = v111;
      v57 = (*(v110 + 48))(v11, 1, v111);
      if (v57 != 1)
      {
        outlined init with take of PhotogrammetrySession.Request(v11, v17, type metadata accessor for PhotogrammetrySession.Request);
LABEL_34:
        v80 = *(v1 + OBJC_IVAR____TtC17RealityFoundation22OutputPublisherMonitor_onPublishOutputMessage);
        if (v80)
        {
          v81 = *(v1 + OBJC_IVAR____TtC17RealityFoundation22OutputPublisherMonitor_onPublishOutputMessage + 8);
          v82 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21PhotogrammetrySessionC7RequestO_Sd16fractionCompletetMd, &_s17RealityFoundation21PhotogrammetrySessionC7RequestO_Sd16fractionCompletetMR) + 48);
          v83 = v109;
          outlined init with copy of PhotogrammetrySession.Request(v17, v109, type metadata accessor for PhotogrammetrySession.Request);
          *(v83 + v82) = v49;
          swift_storeEnumTagMultiPayload();

          v80(v83);
          outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v80, v81);
          outlined destroy of PhotogrammetrySession.Request(v83, type metadata accessor for PhotogrammetrySession.Output);
        }

        outlined destroy of PhotogrammetrySession.Request(v17, type metadata accessor for PhotogrammetrySession.Request);
        (*(v51 + 8))(v54, v50);
        return;
      }
    }

    else
    {
      v56 = v110;
      v55 = v111;
      v57 = (*(v110 + 56))(v11, 1, 1, v111);
    }

    v78 = MEMORY[0x1EEE9AC00](v57);
    v79 = &v100 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v51 + 16))(v79, v54, v50, v78);
    PhotogrammetrySession.Request.init(_:)(v79, v17);
    if ((*(v56 + 48))(v11, 1, v55) != 1)
    {
      outlined destroy of BodyTrackingComponent?(v11, &_s17RealityFoundation21PhotogrammetrySessionC7RequestOSgMd, &_s17RealityFoundation21PhotogrammetrySessionC7RequestOSgMR);
    }

    goto LABEL_34;
  }

  if (MEMORY[0x1E6998350] && v24 == *MEMORY[0x1E6998350])
  {
    (*(v20 + 96))(v23, v19);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s6CoreOC21PhotogrammetrySessionC7RequestO_AC6OutputO12ProgressInfoV8progresstMd, &_s6CoreOC21PhotogrammetrySessionC7RequestO_AC6OutputO12ProgressInfoV8progresstMR);
    v58 = type metadata accessor for PhotogrammetrySession.Request();
    v105 = &v100;
    v59 = *(*(v58 - 8) + 64);
    v60 = MEMORY[0x1EEE9AC00](v58);
    v104 = v61;
    v62 = *(v61 + 32);
    v107 = v63;
    v62(&v100 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0), v23, v60);
    v64 = type metadata accessor for PhotogrammetrySession.Output.ProgressInfo();
    v103 = &v100;
    v65 = *(v64 - 8);
    v66 = *(v65 + 64);
    v67 = MEMORY[0x1EEE9AC00](v64);
    v68 = *(v65 + 32);
    v101 = &v100 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
    v102 = v69;
    v68(v67);
    Strong = swift_weakLoadStrong();
    v106 = &v100 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (Strong)
    {

      PhotogrammetrySessionImpl.RequestMap.findRequest(for:)(&v100 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0), v8);

      v72 = v110;
      v71 = v111;
      v73 = (*(v110 + 48))(v8, 1, v111);
      if (v73 != 1)
      {
        outlined init with take of PhotogrammetrySession.Request(v8, v14, type metadata accessor for PhotogrammetrySession.Request);
        v74 = v104;
LABEL_45:
        v88 = *(v1 + OBJC_IVAR____TtC17RealityFoundation22OutputPublisherMonitor_onPublishOutputMessage);
        v89 = v101;
        v90 = v102;
        if (v88)
        {
          v91 = *(v1 + OBJC_IVAR____TtC17RealityFoundation22OutputPublisherMonitor_onPublishOutputMessage + 8);
          v111 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21PhotogrammetrySessionC7RequestO_AC6OutputO12ProgressInfoVtMd, &_s17RealityFoundation21PhotogrammetrySessionC7RequestO_AC6OutputO12ProgressInfoVtMR) + 48);
          v92 = v109;
          v93 = outlined init with copy of PhotogrammetrySession.Request(v14, v109, type metadata accessor for PhotogrammetrySession.Request);
          v94 = MEMORY[0x1EEE9AC00](v93);
          v95 = &v100 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v65 + 16))(v95, v89, v90, v94);

          PhotogrammetrySession.Output.ProgressInfo.init(_:)(v95, v92 + v111);
          swift_storeEnumTagMultiPayload();
          v88(v92);
          outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v88, v91);
          outlined destroy of PhotogrammetrySession.Request(v92, type metadata accessor for PhotogrammetrySession.Output);
        }

        outlined destroy of PhotogrammetrySession.Request(v14, type metadata accessor for PhotogrammetrySession.Request);
        (*(v65 + 8))(v89, v90);
        (*(v74 + 8))(v106, v107);
        return;
      }
    }

    else
    {
      v72 = v110;
      v71 = v111;
      v73 = (*(v110 + 56))(v8, 1, 1, v111);
    }

    v84 = MEMORY[0x1EEE9AC00](v73);
    v85 = (v59 + 15) & 0xFFFFFFFFFFFFFFF0;
    v86 = v71;
    v87 = &v100 - v85;
    v74 = v104;
    (*(v104 + 16))(&v100 - v85, v106, v107, v84);
    PhotogrammetrySession.Request.init(_:)(v87, v14);
    if ((*(v72 + 48))(v8, 1, v86) != 1)
    {
      outlined destroy of BodyTrackingComponent?(v8, &_s17RealityFoundation21PhotogrammetrySessionC7RequestOSgMd, &_s17RealityFoundation21PhotogrammetrySessionC7RequestOSgMR);
    }

    goto LABEL_45;
  }

  if (MEMORY[0x1E6998320] && v24 == *MEMORY[0x1E6998320])
  {
    (*(v20 + 96))(v23, v19);
    OutputPublisherMonitor.handleInvalidSample(id:reason:)(*v23, v23[1], v23[2]);

    return;
  }

  if (MEMORY[0x1E6998328] && v24 == *MEMORY[0x1E6998328])
  {
    (*(v20 + 96))(v23, v19);
    OutputPublisherMonitor.handleSkippedSample(id:)(*v23);
    return;
  }

  if (MEMORY[0x1E6998318] && v24 == *MEMORY[0x1E6998318])
  {
    v75 = *(v1 + OBJC_IVAR____TtC17RealityFoundation22OutputPublisherMonitor_onPublishOutputMessage);
    if (!v75)
    {
      return;
    }

    v76 = *(v1 + OBJC_IVAR____TtC17RealityFoundation22OutputPublisherMonitor_onPublishOutputMessage + 8);
    v77 = v109;
    goto LABEL_41;
  }

  if (MEMORY[0x1E6998360] && v24 == *MEMORY[0x1E6998360])
  {
    v75 = *(v1 + OBJC_IVAR____TtC17RealityFoundation22OutputPublisherMonitor_onPublishOutputMessage);
    if (!v75)
    {
      return;
    }

    v76 = *(v1 + OBJC_IVAR____TtC17RealityFoundation22OutputPublisherMonitor_onPublishOutputMessage + 8);
    v77 = v109;
    goto LABEL_41;
  }

  if (MEMORY[0x1E6998358] && v24 == *MEMORY[0x1E6998358])
  {
    v75 = *(v1 + OBJC_IVAR____TtC17RealityFoundation22OutputPublisherMonitor_onPublishOutputMessage);
    if (!v75)
    {
      return;
    }

    v76 = *(v1 + OBJC_IVAR____TtC17RealityFoundation22OutputPublisherMonitor_onPublishOutputMessage + 8);
    v77 = v109;
LABEL_41:
    swift_storeEnumTagMultiPayload();

    v75(v77);
    outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v75, v76);
    outlined destroy of PhotogrammetrySession.Request(v77, type metadata accessor for PhotogrammetrySession.Output);
    return;
  }

  if (MEMORY[0x1E6998340] && v24 == *MEMORY[0x1E6998340])
  {
    v96 = type metadata accessor for TaskPriority();
    (*(*(v96 - 8) + 56))(v5, 1, 1, v96);
    v97 = swift_allocObject();
    v97[2] = 0;
    v97[3] = 0;
    v97[4] = v1;

    v98 = &async function pointer to partial apply for closure #1 in OutputPublisherMonitor.handleProcessingComplete();
  }

  else
  {
    if (!MEMORY[0x1E6998348] || v24 != *MEMORY[0x1E6998348])
    {
      v112 = 0;
      v113 = 0xE000000000000000;
      _StringGuts.grow(_:)(48);
      MEMORY[0x1C68F3410](0xD00000000000002ELL, 0x80000001C18E83E0);
      _print_unlocked<A, B>(_:_:)();
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return;
    }

    v99 = type metadata accessor for TaskPriority();
    (*(*(v99 - 8) + 56))(v5, 1, 1, v99);
    v97 = swift_allocObject();
    v97[2] = 0;
    v97[3] = 0;
    v97[4] = v1;

    v98 = &async function pointer to partial apply for closure #1 in OutputPublisherMonitor.handleProcessingCancelled();
  }

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v5, v98, v97);
}

uint64_t PhotogrammetrySession.Request.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PhotogrammetrySession.Request();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, a1, v8, v10);
  v13 = (*(v9 + 88))(v12, v8);
  if (MEMORY[0x1E69983A8] && v13 == *MEMORY[0x1E69983A8])
  {
    v60 = a2;
    v64 = a1;
    (*(v9 + 96))(v12, v8);
    v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV3url_6CoreOC21PhotogrammetrySessionC7RequestO6DetailO6detailAI8GeometryVSg8geometrytMd, &_s10Foundation3URLV3url_6CoreOC21PhotogrammetrySessionC7RequestO6DetailO6detailAI8GeometryVSg8geometrytMR) + 64);
    v66 = v7;
    v67 = v5;
    v15 = *(v5 + 32);
    v68 = v4;
    v15(v7, v12, v4);
    v16 = type metadata accessor for PhotogrammetrySession.Request.Detail();
    v63 = &v50;
    v17 = *(v16 - 8);
    v18 = MEMORY[0x1EEE9AC00](v16);
    v59 = v19;
    v20 = *(v17 + 32);
    v65 = &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    v50 = v21;
    v20(v18);
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6CoreOC21PhotogrammetrySessionC7RequestO8GeometryVSgMd, &_s6CoreOC21PhotogrammetrySessionC7RequestO8GeometryVSgMR);
    v62 = &v50;
    v23 = *(*(v22 - 8) + 64);
    MEMORY[0x1EEE9AC00](v22 - 8);
    v24 = (v23 + 15) & 0xFFFFFFFFFFFFFFF0;
    outlined init with take of AnySubscriber<EngineRenderEvent, Never>(&v12[v14], &v50 - v24, &_s6CoreOC21PhotogrammetrySessionC7RequestO8GeometryVSgMd, &_s6CoreOC21PhotogrammetrySessionC7RequestO8GeometryVSgMR);
    v70 = 1;
    v25 = type metadata accessor for PhotogrammetrySession.Request.Geometry();
    v54 = &v50;
    v26 = *(v25 - 8);
    MEMORY[0x1EEE9AC00](v25);
    v28 = &v50 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
    MEMORY[0x1EEE9AC00](v29);
    v61 = &v50 - v24;
    outlined init with copy of [String : String](&v50 - v24, &v50 - v24, &_s6CoreOC21PhotogrammetrySessionC7RequestO8GeometryVSgMd, &_s6CoreOC21PhotogrammetrySessionC7RequestO8GeometryVSgMR);
    if ((*(v26 + 48))(&v50 - v24, 1, v25) == 1)
    {
      outlined destroy of BodyTrackingComponent?(&v50 - v24, &_s6CoreOC21PhotogrammetrySessionC7RequestO8GeometryVSgMd, &_s6CoreOC21PhotogrammetrySessionC7RequestO8GeometryVSgMR);
      v55 = 0u;
      v51 = v70;
      v53 = 0u;
      v52 = 0u;
      v57 = 0u;
      v58 = 0u;
      v56 = 0u;
    }

    else
    {
      (*(v26 + 32))(v28, &v50 - v24, v25);
      PhotogrammetrySession.Request.Geometry.orientedBoundsTransform.getter();
      computeOrientedBoundingBox(for:)(v69);
      v57 = v69[1];
      v58 = v69[0];
      v56 = v69[2];
      PhotogrammetrySession.Request.Geometry.rootTransform.getter();
      REMakeSRTFromMatrix();
      v55 = v31;
      v53 = v32;
      v52 = v33;
      if (one-time initialization token for identity != -1)
      {
        swift_once();
      }

      (*(v26 + 8))(v28, v25);
      LOBYTE(v69[0]) = 0;
      v51 = 0;
    }

    v34 = v50;
    v35 = v60;
    v36 = (*(v67 + 16))();
    v60 = &v50;
    v37 = v59;
    v38 = MEMORY[0x1EEE9AC00](v36);
    v39 = &v50 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
    v40 = *(v17 + 16);
    v41 = v40(v39, v65, v34, v38);
    v54 = &v50;
    v42 = MEMORY[0x1EEE9AC00](v41);
    v40(v39, v39, v34, v42);
    v43 = (*(v17 + 88))(v39, v34);
    if (MEMORY[0x1E6998398] && v43 == *MEMORY[0x1E6998398])
    {
      v44 = v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV3url_07RealityA021PhotogrammetrySessionC7RequestO6DetailO6detailAI8GeometryVSg8geometrytMd, &_s10Foundation3URLV3url_07RealityA021PhotogrammetrySessionC7RequestO6DetailO6detailAI8GeometryVSg8geometrytMR) + 64);
      (*(v9 + 8))(v64, v8);
      v45 = *(v17 + 8);
      v45(v39, v34);
      outlined destroy of BodyTrackingComponent?(v61, &_s6CoreOC21PhotogrammetrySessionC7RequestO8GeometryVSgMd, &_s6CoreOC21PhotogrammetrySessionC7RequestO8GeometryVSgMR);
      v45(v65, v34);
      (*(v67 + 8))(v66, v68);
      v46 = v53;
      *v44 = v55;
      *(v44 + 1) = v46;
      v48 = v57;
      v47 = v58;
      *(v44 + 2) = v52;
      *(v44 + 3) = v47;
      v49 = v56;
      *(v44 + 4) = v48;
      *(v44 + 5) = v49;
      v44[96] = v51;
      type metadata accessor for PhotogrammetrySession.Request(0);
      return swift_storeEnumTagMultiPayload();
    }
  }

  else if (MEMORY[0x1E6998388] && v13 == *MEMORY[0x1E6998388] || MEMORY[0x1E69983A0] && v13 == *MEMORY[0x1E69983A0] || MEMORY[0x1E6998390] && v13 == *MEMORY[0x1E6998390])
  {
    (*(v9 + 8))(a1, v8);
    type metadata accessor for PhotogrammetrySession.Request(0);
    return swift_storeEnumTagMultiPayload();
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t PhotogrammetrySession.Output.ProgressInfo.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = PhotogrammetrySession.Output.ProgressInfo.estimatedRemainingTime.getter();
  v22 = v5 & 1;
  v6 = type metadata accessor for PhotogrammetrySession.ProcessStage();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6CoreOC21PhotogrammetrySessionC12ProcessStageOSgMd, &_s6CoreOC21PhotogrammetrySessionC12ProcessStageOSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v21 - v11;
  PhotogrammetrySession.Output.ProgressInfo.processStage.getter();
  if ((*(v7 + 48))(v12, 1, v6) == 1)
  {
    v13 = type metadata accessor for PhotogrammetrySession.Output.ProgressInfo();
    (*(*(v13 - 8) + 8))(a1, v13);
    result = outlined destroy of BodyTrackingComponent?(v12, &_s6CoreOC21PhotogrammetrySessionC12ProcessStageOSgMd, &_s6CoreOC21PhotogrammetrySessionC12ProcessStageOSgMR);
    v15 = 6;
LABEL_22:
    v20 = v22;
    *a2 = v4;
    *(a2 + 8) = v20;
    *(a2 + 9) = v15;
    return result;
  }

  v16 = (*(v7 + 32))(&v21 - v9, v12, v6);
  v17 = MEMORY[0x1EEE9AC00](v16);
  (*(v7 + 16))(&v21 - v9, &v21 - v9, v6, v17);
  v18 = (*(v7 + 88))(&v21 - v9, v6);
  if (MEMORY[0x1E6998290] && v18 == *MEMORY[0x1E6998290])
  {
    v15 = 0;
LABEL_21:
    v19 = type metadata accessor for PhotogrammetrySession.Output.ProgressInfo();
    (*(*(v19 - 8) + 8))(a1, v19);
    result = (*(v7 + 8))(&v21 - v9, v6);
    goto LABEL_22;
  }

  if (MEMORY[0x1E6998298] && v18 == *MEMORY[0x1E6998298])
  {
    v15 = 1;
    goto LABEL_21;
  }

  if (MEMORY[0x1E69982B0] && v18 == *MEMORY[0x1E69982B0])
  {
    v15 = 2;
    goto LABEL_21;
  }

  if (MEMORY[0x1E69982A0] && v18 == *MEMORY[0x1E69982A0])
  {
    v15 = 3;
    goto LABEL_21;
  }

  if (MEMORY[0x1E69982A8] && v18 == *MEMORY[0x1E69982A8])
  {
    v15 = 4;
    goto LABEL_21;
  }

  if (MEMORY[0x1E6998288] && v18 == *MEMORY[0x1E6998288])
  {
    v15 = 5;
    goto LABEL_21;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t OutputPublisherMonitor.handleInvalidSample(id:reason:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for PhotogrammetrySession.Output(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = swift_weakLoadStrong();
  if (result)
  {
    v11 = result;
    v21 = a3;
    v12 = OBJC_IVAR____TtC17RealityFoundation25PhotogrammetrySessionImpl_invalidSamples;
    v13 = *(result + OBJC_IVAR____TtC17RealityFoundation25PhotogrammetrySessionImpl_invalidSamples);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v11 + v12) = v13;
    v15 = a2;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v13 + 2) + 1, 1, v13);
      *(v11 + v12) = v13;
    }

    v17 = *(v13 + 2);
    v16 = *(v13 + 3);
    if (v17 >= v16 >> 1)
    {
      v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1, v13);
    }

    *(v13 + 2) = v17 + 1;
    *&v13[8 * v17 + 32] = a1;
    *(v11 + v12) = v13;

    a2 = v15;
    a3 = v21;
  }

  v18 = *(v3 + OBJC_IVAR____TtC17RealityFoundation22OutputPublisherMonitor_onPublishOutputMessage);
  if (v18)
  {
    v19 = *(v3 + OBJC_IVAR____TtC17RealityFoundation22OutputPublisherMonitor_onPublishOutputMessage + 8);
    *v9 = a1;
    v9[1] = a2;
    v9[2] = a3;
    swift_storeEnumTagMultiPayload();
    outlined copy of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v18, v19);

    v18(v9);
    outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v18, v19);
    return outlined destroy of PhotogrammetrySession.Request(v9, type metadata accessor for PhotogrammetrySession.Output);
  }

  return result;
}

uint64_t OutputPublisherMonitor.handleSkippedSample(id:)(uint64_t a1)
{
  v3 = type metadata accessor for PhotogrammetrySession.Output(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = (&v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    v8 = OBJC_IVAR____TtC17RealityFoundation25PhotogrammetrySessionImpl_skippedSamples;
    v9 = *(result + OBJC_IVAR____TtC17RealityFoundation25PhotogrammetrySessionImpl_skippedSamples);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v7 + v8) = v9;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 2) + 1, 1, v9);
      *(v7 + v8) = v9;
    }

    v12 = *(v9 + 2);
    v11 = *(v9 + 3);
    if (v12 >= v11 >> 1)
    {
      v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1, v9);
    }

    *(v9 + 2) = v12 + 1;
    *&v9[8 * v12 + 32] = a1;
    *(v7 + v8) = v9;
  }

  v13 = *(v1 + OBJC_IVAR____TtC17RealityFoundation22OutputPublisherMonitor_onPublishOutputMessage);
  if (v13)
  {
    v14 = *(v1 + OBJC_IVAR____TtC17RealityFoundation22OutputPublisherMonitor_onPublishOutputMessage + 8);
    *v5 = a1;
    swift_storeEnumTagMultiPayload();

    v13(v5);
    outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v13, v14);
    return outlined destroy of PhotogrammetrySession.Request(v5, type metadata accessor for PhotogrammetrySession.Output);
  }

  return result;
}

uint64_t OutputPublisherMonitor.handleRequestError(internalRequest:error:)(uint64_t a1, void *a2)
{
  v60 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v57 = &v53 - v5;
  v6 = type metadata accessor for Date();
  v58 = *(v6 - 8);
  v59 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v54 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v53 = &v53 - v9;
  v55 = type metadata accessor for PhotogrammetrySession.Output(0);
  MEMORY[0x1EEE9AC00](v55);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21PhotogrammetrySessionC7RequestOSgMd, &_s17RealityFoundation21PhotogrammetrySessionC7RequestOSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v53 - v13;
  v15 = type metadata accessor for PhotogrammetrySession.Request(0);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = (&v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = v2;
  v56 = OBJC_IVAR____TtC17RealityFoundation22OutputPublisherMonitor_session;
  if (swift_weakLoadStrong())
  {

    v20 = a1;
    PhotogrammetrySessionImpl.RequestMap.findRequest(for:)(a1, v14);

    if ((*(v16 + 48))(v14, 1, v15) != 1)
    {
      outlined init with take of PhotogrammetrySession.Request(v14, v18, type metadata accessor for PhotogrammetrySession.Request);
      v21 = v2;
      goto LABEL_7;
    }
  }

  else
  {
    v20 = a1;
    (*(v16 + 56))(v14, 1, 1, v15);
  }

  v22 = type metadata accessor for PhotogrammetrySession.Request();
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v53 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v26 + 16))(v25, v20, v23);
  PhotogrammetrySession.Request.init(_:)(v25, v18);
  v21 = v19;
  if ((*(v16 + 48))(v14, 1, v15) != 1)
  {
    outlined destroy of BodyTrackingComponent?(v14, &_s17RealityFoundation21PhotogrammetrySessionC7RequestOSgMd, &_s17RealityFoundation21PhotogrammetrySessionC7RequestOSgMR);
  }

LABEL_7:
  v27 = *(v21 + OBJC_IVAR____TtC17RealityFoundation22OutputPublisherMonitor_onPublishOutputMessage);
  v28 = v60;
  if (v27)
  {
    v29 = *(v21 + OBJC_IVAR____TtC17RealityFoundation22OutputPublisherMonitor_onPublishOutputMessage + 8);
    v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21PhotogrammetrySessionC7RequestO_s5Error_ptMd, &_s17RealityFoundation21PhotogrammetrySessionC7RequestO_s5Error_ptMR) + 48);
    outlined init with copy of PhotogrammetrySession.Request(v18, v11, type metadata accessor for PhotogrammetrySession.Request);
    *&v11[v30] = v28;
    swift_storeEnumTagMultiPayload();
    outlined copy of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v27, v29);
    v31 = v28;
    v27(v11);
    outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v27, v29);
    outlined destroy of PhotogrammetrySession.Request(v11, type metadata accessor for PhotogrammetrySession.Output);
  }

  v32 = v20;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v33 = type metadata accessor for Logger();
  __swift_project_value_buffer(v33, logger);
  v34 = v28;
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *v37 = 138543362;
    v39 = v28;
    v40 = _swift_stdlib_bridgeErrorToNSError();
    *(v37 + 4) = v40;
    *v38 = v40;
    _os_log_impl(&dword_1C1358000, v35, v36, "requestError: %{public}@", v37, 0xCu);
    outlined destroy of BodyTrackingComponent?(v38, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1C6902A30](v38, -1, -1);
    MEMORY[0x1C6902A30](v37, -1, -1);
  }

  Strong = swift_weakLoadStrong();
  v43 = v58;
  v42 = v59;
  if (Strong)
  {

    v44 = v57;
    PhotogrammetrySessionImpl.RequestMap.getStartTimestamp(for:)(v32, v57);

    if ((*(v43 + 48))(v44, 1, v42) != 1)
    {
      v45 = v53;
      (*(v43 + 32))(v53, v44, v42);
      v46 = v54;
      Date.init()();
      Date.timeIntervalSince(_:)();
      v48 = v47;
      v49 = *(v43 + 8);
      v49(v46, v42);
      v49(v45, v42);
      v50 = 0;
      v51 = v48;
      goto LABEL_18;
    }
  }

  else
  {
    v44 = v57;
    (*(v58 + 56))(v57, 1, 1, v59);
  }

  outlined destroy of BodyTrackingComponent?(v44, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v51 = 0;
  v50 = 1;
LABEL_18:
  OutputPublisherMonitor.sendAnalyticsForRequest(request:success:error:requestTime:)(v18, 0, v28, v51, v50);
  if (swift_weakLoadStrong())
  {

    PhotogrammetrySessionImpl.RequestMap.removeRequest(internalRequest:)(v32);
  }

  return outlined destroy of PhotogrammetrySession.Request(v18, type metadata accessor for PhotogrammetrySession.Request);
}

uint64_t OutputPublisherMonitor.handleRequestComplete(internalRequest:internalResult:)(uint64_t a1, uint64_t a2)
{
  v78 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v80 = &v70 - v5;
  v6 = type metadata accessor for Date();
  v81 = *(v6 - 8);
  v82 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v75 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v74 = &v70 - v9;
  v76 = type metadata accessor for PhotogrammetrySession.Output(0);
  MEMORY[0x1EEE9AC00](v76);
  v77 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PhotogrammetrySession.Result(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v79 = (&v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = type metadata accessor for URL();
  v72 = *(v13 - 8);
  v73 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v71 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21PhotogrammetrySessionC7RequestOSgMd, &_s17RealityFoundation21PhotogrammetrySessionC7RequestOSgMR);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v70 - v16;
  v18 = type metadata accessor for PhotogrammetrySession.Request(0);
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v70 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = (&v70 - v23);
  v83 = v2;
  if (swift_weakLoadStrong())
  {

    v25 = a1;
    PhotogrammetrySessionImpl.RequestMap.findRequest(for:)(a1, v17);

    if ((*(v19 + 48))(v17, 1, v18) != 1)
    {
      outlined init with take of PhotogrammetrySession.Request(v17, v24, type metadata accessor for PhotogrammetrySession.Request);
      v26 = v79;
      goto LABEL_7;
    }
  }

  else
  {
    v25 = a1;
    (*(v19 + 56))(v17, 1, 1, v18);
  }

  v27 = type metadata accessor for PhotogrammetrySession.Request();
  v28 = MEMORY[0x1EEE9AC00](v27);
  v30 = &v70 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v31 + 16))(v30, v25, v28);
  PhotogrammetrySession.Request.init(_:)(v30, v24);
  v32 = (*(v19 + 48))(v17, 1, v18);
  v26 = v79;
  if (v32 != 1)
  {
    outlined destroy of BodyTrackingComponent?(v17, &_s17RealityFoundation21PhotogrammetrySessionC7RequestOSgMd, &_s17RealityFoundation21PhotogrammetrySessionC7RequestOSgMR);
  }

LABEL_7:
  outlined init with copy of PhotogrammetrySession.Request(v24, v21, type metadata accessor for PhotogrammetrySession.Request);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v33 = type metadata accessor for PhotogrammetrySession.Request();
    v34 = *(v33 - 8);
    v35 = MEMORY[0x1EEE9AC00](v33);
    v37 = &v70 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
    v38 = v25;
    (*(v34 + 16))(v37, v25, v33, v35);
    v39 = (*(v34 + 88))(v37, v33);
    if (MEMORY[0x1E69983A8] && v39 == *MEMORY[0x1E69983A8])
    {
      (*(v34 + 96))(v37, v33);
      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV3url_6CoreOC21PhotogrammetrySessionC7RequestO6DetailO6detailAI8GeometryVSg8geometrytMd, &_s10Foundation3URLV3url_6CoreOC21PhotogrammetrySessionC7RequestO6DetailO6detailAI8GeometryVSg8geometrytMR);
      v41 = *(v40 + 48);
      v42 = *(v40 + 64);
      v43 = v71;
      v44 = v72;
      v45 = v73;
      (*(v72 + 32))(v71, v37, v73);
      outlined destroy of BodyTrackingComponent?(&v37[v42], &_s6CoreOC21PhotogrammetrySessionC7RequestO8GeometryVSgMd, &_s6CoreOC21PhotogrammetrySessionC7RequestO8GeometryVSgMR);
      v46 = type metadata accessor for PhotogrammetrySession.Request.Detail();
      (*(*(v46 - 8) + 8))(&v37[v41], v46);
      OutputPublisherMonitor.handleModelEntity(url:apiRequest:)(v43, v24);
      (*(v44 + 8))(v43, v45);
      v47 = v81;
      goto LABEL_16;
    }

    (*(v34 + 8))(v37, v33);
  }

  else
  {
    outlined destroy of PhotogrammetrySession.Request(v21, type metadata accessor for PhotogrammetrySession.Request);
    v38 = v25;
  }

  v48 = v83;
  v47 = v81;
  Strong = swift_weakLoadStrong();
  v50 = type metadata accessor for PhotogrammetrySession.Result();
  v51 = MEMORY[0x1EEE9AC00](v50);
  v53 = &v70 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v54 + 16))(v53, v78, v51);
  PhotogrammetrySession.Result.init(session:internalResult:)(Strong, v53, v26);
  v55 = *(v48 + OBJC_IVAR____TtC17RealityFoundation22OutputPublisherMonitor_onPublishOutputMessage);
  if (v55)
  {
    v56 = *(v48 + OBJC_IVAR____TtC17RealityFoundation22OutputPublisherMonitor_onPublishOutputMessage + 8);
    v57 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21PhotogrammetrySessionC7RequestO_AC6ResultOtMd, &_s17RealityFoundation21PhotogrammetrySessionC7RequestO_AC6ResultOtMR) + 48);
    v58 = v77;
    outlined init with copy of PhotogrammetrySession.Request(v24, v77, type metadata accessor for PhotogrammetrySession.Request);
    outlined init with copy of PhotogrammetrySession.Request(v26, v58 + v57, type metadata accessor for PhotogrammetrySession.Result);
    swift_storeEnumTagMultiPayload();

    v55(v58);
    outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v55, v56);
    outlined destroy of PhotogrammetrySession.Request(v58, type metadata accessor for PhotogrammetrySession.Output);
  }

  outlined destroy of PhotogrammetrySession.Request(v26, type metadata accessor for PhotogrammetrySession.Result);
LABEL_16:
  v59 = swift_weakLoadStrong();
  v60 = v82;
  if (v59)
  {

    v61 = v80;
    PhotogrammetrySessionImpl.RequestMap.getStartTimestamp(for:)(v38, v80);

    if ((*(v47 + 48))(v61, 1, v60) != 1)
    {
      v62 = v74;
      (*(v47 + 32))(v74, v61, v60);
      v63 = v75;
      Date.init()();
      Date.timeIntervalSince(_:)();
      v65 = v64;
      v66 = *(v47 + 8);
      v66(v63, v60);
      v66(v62, v60);
      v67 = 0;
      v68 = v65;
      goto LABEL_21;
    }
  }

  else
  {
    v61 = v80;
    (*(v47 + 56))(v80, 1, 1, v82);
  }

  outlined destroy of BodyTrackingComponent?(v61, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v68 = 0;
  v67 = 1;
LABEL_21:
  OutputPublisherMonitor.sendAnalyticsForRequest(request:success:error:requestTime:)(v24, 1, 0, v68, v67);
  if (swift_weakLoadStrong())
  {

    PhotogrammetrySessionImpl.RequestMap.removeRequest(internalRequest:)(v38);
  }

  return outlined destroy of PhotogrammetrySession.Request(v24, type metadata accessor for PhotogrammetrySession.Request);
}

uint64_t PhotogrammetrySession.Result.init(session:internalResult:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __n128 *a3@<X8>)
{
  v6 = type metadata accessor for PhotogrammetrySession.Result();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, a2, v6, v8);
  v11 = (*(v7 + 88))(v10, v6);
  if (MEMORY[0x1E6998380] && v11 == *MEMORY[0x1E6998380])
  {
    (*(v7 + 8))(a2, v6);

    (*(v7 + 96))(v10, v6);
    v12 = type metadata accessor for URL();
    (*(*(v12 - 8) + 32))(a3, v10, v12);
    type metadata accessor for PhotogrammetrySession.Result(0);
    return swift_storeEnumTagMultiPayload();
  }

  if (MEMORY[0x1E6998378] && v11 == *MEMORY[0x1E6998378])
  {
    (*(v7 + 96))(v10, v6);
    computeOrientedBoundingBox(for:)(&v35);
    v32 = v36;
    v33 = v37;
    simd_matrix4x4(v35);
    v13.n128_f64[0] = REAABBTransform(v32, v33);
    v32 = v14;
    v33 = v13;

    (*(v7 + 8))(a2, v6);
    *a3 = v33;
    a3[1] = v32;
    type metadata accessor for PhotogrammetrySession.Result(0);
    return swift_storeEnumTagMultiPayload();
  }

  v34 = a1;
  if (MEMORY[0x1E6998368] && v11 == *MEMORY[0x1E6998368])
  {
    (*(v7 + 96))(v10, v6);
    v16 = type metadata accessor for PhotogrammetrySession.PointCloud();
    v33.n128_u64[0] = &v32;
    v17 = *(v16 - 8);
    v18 = *(v17 + 64);
    v19 = MEMORY[0x1EEE9AC00](v16);
    v20 = (v18 + 15) & 0xFFFFFFFFFFFFFFF0;
    v21 = (*(v17 + 32))(&v32 - v20, v10, v16, v19);
    v32.n128_u64[0] = &v32;
    v22 = MEMORY[0x1EEE9AC00](v21);
    (*(v17 + 16))(&v32 - v20, &v32 - v20, v16, v22);
    PhotogrammetrySession.PointCloud.init(_:)(&v32 - v20, &v35);

    (*(v7 + 8))(a2, v6);
    (*(v17 + 8))(&v32 - v20, v16);
    a3->n128_u64[0] = v35.i64[0];
    type metadata accessor for PhotogrammetrySession.Result(0);
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    v33.n128_u64[0] = a3;
    if (MEMORY[0x1E6998370] && v11 == *MEMORY[0x1E6998370])
    {
      (*(v7 + 96))(v10, v6);
      v23 = type metadata accessor for PhotogrammetrySession.Poses();
      v32.n128_u64[0] = &v32;
      v24 = *(v23 - 8);
      v25 = *(v24 + 64);
      v26 = MEMORY[0x1EEE9AC00](v23);
      v27 = &v32 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
      v28 = (*(v24 + 32))(v27, v10, v23, v26);
      v29 = MEMORY[0x1EEE9AC00](v28);
      (*(v24 + 16))(v27, v27, v23, v29);
      PhotogrammetrySession.Poses.init(poses:)(v27, &v35);
      if (v34)
      {

        PhotogrammetrySessionImpl.addImageMappingDictionary(into:)(&v35);
      }

      (*(v7 + 8))(a2, v6);
      (*(v24 + 8))(v27, v23);
      v30 = v36.n128_u64[0];
      v31 = v33.n128_u64[0];
      *v33.n128_u64[0] = v35;
      *(v31 + 16) = v30;
      type metadata accessor for PhotogrammetrySession.Result(0);
      return swift_storeEnumTagMultiPayload();
    }

    else
    {
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  return result;
}

uint64_t OutputPublisherMonitor.handleModelEntity(url:apiRequest:)(uint64_t a1, void (*a2)(char *, char *, uint64_t))
{
  v50 = a1;
  v51 = a2;
  v2 = type metadata accessor for PhotogrammetrySession.Request(0);
  v52 = *(v2 - 8);
  v49 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v54 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for URL();
  v38 = v4;
  v5 = *(v4 - 8);
  v48 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v38 - v9;
  v53 = &v38 - v9;
  v11 = type metadata accessor for UUID();
  v40 = v11;
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v41 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v38 - v15;
  v43 = &v38 - v15;
  UUID.init()();
  v46 = type metadata accessor for TaskPriority();
  v17 = *(v46 - 8);
  v45 = *(v17 + 56);
  v47 = v17 + 56;
  v45(v10, 1, 1, v46);
  (*(v5 + 16))(v7, v50, v4);
  outlined init with copy of PhotogrammetrySession.Request(v51, v54, type metadata accessor for PhotogrammetrySession.Request);
  v18 = v12;
  v51 = *(v12 + 16);
  v51(&v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v16, v11);
  v19 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v20 = (v48 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = (*(v52 + 80) + v20 + 8) & ~*(v52 + 80);
  v22 = *(v18 + 80);
  v44 = v18;
  v23 = (v49 + v22 + v21) & ~v22;
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  (*(v5 + 32))(v24 + v19, v39, v38);
  v25 = v54;
  *(v24 + v20) = v55;
  outlined init with take of PhotogrammetrySession.Request(v25, v24 + v21, type metadata accessor for PhotogrammetrySession.Request);
  v26 = *(v18 + 32);
  v27 = v24 + v23;
  v28 = v40;
  v29 = v41;
  v26(v27, v41, v40);

  v30 = v53;
  v31 = _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v53, &async function pointer to partial apply for closure #1 in OutputPublisherMonitor.handleModelEntity(url:apiRequest:), v24);
  v45(v30, 1, 1, v46);
  v32 = v43;
  v33 = v28;
  v51(v29, v43, v28);
  v34 = (v22 + 40) & ~v22;
  v35 = (v42 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
  v36 = swift_allocObject();
  v36[2] = 0;
  v36[3] = 0;
  v36[4] = v55;
  v26(v36 + v34, v29, v33);
  *(v36 + v35) = v31;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v53, &async function pointer to partial apply for closure #2 in OutputPublisherMonitor.handleModelEntity(url:apiRequest:), v36);

  return (*(v44 + 8))(v32, v33);
}

uint64_t closure #1 in OutputPublisherMonitor.handleModelEntity(url:apiRequest:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[10] = a6;
  v7[11] = a7;
  v7[8] = a4;
  v7[9] = a5;
  v7[12] = type metadata accessor for PhotogrammetrySession.Output(0);
  v7[13] = swift_task_alloc();
  v8 = type metadata accessor for URL();
  v7[14] = v8;
  v7[15] = *(v8 - 8);
  v7[16] = swift_task_alloc();
  v7[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in OutputPublisherMonitor.handleModelEntity(url:apiRequest:), 0, 0);
}

uint64_t closure #1 in OutputPublisherMonitor.handleModelEntity(url:apiRequest:)()
{
  v29 = v0;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v1 = v0[17];
  v2 = v0[14];
  v3 = v0[15];
  v4 = v0[8];
  v5 = type metadata accessor for Logger();
  v0[18] = __swift_project_value_buffer(v5, logger);
  v6 = *(v3 + 16);
  v6(v1, v4, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[17];
  v12 = v0[14];
  v11 = v0[15];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v28 = v27;
    *v13 = 141558274;
    *(v13 + 4) = 1752392040;
    *(v13 + 12) = 2080;
    lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
    v26 = v8;
    v14 = v6;
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    (*(v11 + 8))(v10, v12);
    v18 = v15;
    v6 = v14;
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v17, &v28);

    *(v13 + 14) = v19;
    _os_log_impl(&dword_1C1358000, v7, v26, "Loading model from url: %{mask.hash}s", v13, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v27);
    MEMORY[0x1C6902A30](v27, -1, -1);
    MEMORY[0x1C6902A30](v13, -1, -1);
  }

  else
  {

    (*(v11 + 8))(v10, v12);
  }

  v20 = v0[16];
  v21 = v0[14];
  v22 = v0[8];
  type metadata accessor for ModelEntity();
  v6(v20, v22, v21);
  v23 = swift_task_alloc();
  v0[19] = v23;
  *v23 = v0;
  v23[1] = closure #1 in OutputPublisherMonitor.handleModelEntity(url:apiRequest:);
  v24 = v0[16];

  return Entity.init(contentsOf:withName:)(v24, 0, 0);
}

{
  OutputPublisherMonitor.Tasks.removeTask(ID:)(*(v0 + 88));

  return MEMORY[0x1EEE6DFA0](closure #1 in OutputPublisherMonitor.handleModelEntity(url:apiRequest:), 0, 0);
}

{
  v1 = v0[9];
  v2 = OBJC_IVAR____TtC17RealityFoundation22OutputPublisherMonitor__internalProcessingCompleteReceived;
  swift_beginAccess();
  v3 = *(v1 + v2);

  os_unfair_lock_lock((v3 + 20));
  LODWORD(v2) = *(v3 + 16);
  os_unfair_lock_unlock((v3 + 20));

  if (v2 == 1)
  {
    v4 = *(v0[9] + v0[22]);
    v0[24] = v4;

    return MEMORY[0x1EEE6DFA0](closure #1 in OutputPublisherMonitor.handleModelEntity(url:apiRequest:), v4, 0);
  }

  else
  {

    v5 = v0[1];

    return v5();
  }
}

{
  v1 = *(v0 + 192);
  swift_beginAccess();
  *(v0 + 200) = *(*(v1 + 112) + 16);

  return MEMORY[0x1EEE6DFA0](closure #1 in OutputPublisherMonitor.handleModelEntity(url:apiRequest:), 0, 0);
}

{
  if (!v0[25])
  {
    v1 = v0[9] + OBJC_IVAR____TtC17RealityFoundation22OutputPublisherMonitor_onInternalProcessingComplete;
    v2 = *v1;
    if (*v1)
    {
      v3 = *(v1 + 8);

      v2(v4);
      outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v2, v3);
    }
  }

  v5 = v0[1];

  return v5();
}

uint64_t closure #1 in OutputPublisherMonitor.handleModelEntity(url:apiRequest:)(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 160) = a1;
  *(v3 + 168) = v1;

  if (v1)
  {
    v4 = closure #1 in OutputPublisherMonitor.handleModelEntity(url:apiRequest:);
  }

  else
  {
    v4 = closure #1 in OutputPublisherMonitor.handleModelEntity(url:apiRequest:);
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

{
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1C1358000, v2, v3, "The model is successfully loaded!", v4, 2u);
    MEMORY[0x1C6902A30](v4, -1, -1);
  }

  if (static Task<>.isCancelled.getter())
  {
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1C1358000, v5, v6, "Task for model loading was canceled!", v7, 2u);
      MEMORY[0x1C6902A30](v7, -1, -1);
    }
  }

  else
  {
    v8 = v1[9] + OBJC_IVAR____TtC17RealityFoundation22OutputPublisherMonitor_onPublishOutputMessage;
    v9 = *v8;
    v10 = v1[20];
    if (*v8)
    {
      v11 = v1[13];
      v12 = v1[10];
      v13 = *(v8 + 8);
      v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21PhotogrammetrySessionC7RequestO_AC6ResultOtMd, &_s17RealityFoundation21PhotogrammetrySessionC7RequestO_AC6ResultOtMR) + 48);
      outlined init with copy of PhotogrammetrySession.Request(v12, v11, type metadata accessor for PhotogrammetrySession.Request);
      *(v11 + v14) = v10;
      type metadata accessor for PhotogrammetrySession.Result(0);
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      outlined copy of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v9, v13);

      v9(v11);
      outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v9, v13);

      outlined destroy of PhotogrammetrySession.Request(v11, type metadata accessor for PhotogrammetrySession.Output);
    }

    else
    {
    }
  }

  v15 = v1[9];
  v16 = OBJC_IVAR____TtC17RealityFoundation22OutputPublisherMonitor_tasks;
  v1[22] = OBJC_IVAR____TtC17RealityFoundation22OutputPublisherMonitor_tasks;
  v17 = *(v15 + v16);
  v1[23] = v17;

  return MEMORY[0x1EEE6DFA0](closure #1 in OutputPublisherMonitor.handleModelEntity(url:apiRequest:), v17, 0);
}

uint64_t closure #1 in OutputPublisherMonitor.handleModelEntity(url:apiRequest:)(__n128 a1)
{
  if (static Task<>.isCancelled.getter())
  {
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.debug.getter();
    v4 = os_log_type_enabled(v2, v3);
    v5 = v1[21];
    if (v4)
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1C1358000, v2, v3, "Task for model loading was canceled!", v6, 2u);
      MEMORY[0x1C6902A30](v6, -1, -1);
    }
  }

  else
  {
    v7 = v1[9] + OBJC_IVAR____TtC17RealityFoundation22OutputPublisherMonitor_onPublishOutputMessage;
    v8 = *v7;
    v9 = v1[21];
    if (*v7)
    {
      v10 = v1[13];
      v11 = v1[10];
      v12 = *(v7 + 8);
      v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21PhotogrammetrySessionC7RequestO_s5Error_ptMd, &_s17RealityFoundation21PhotogrammetrySessionC7RequestO_s5Error_ptMR) + 48);
      outlined init with copy of PhotogrammetrySession.Request(v11, v10, type metadata accessor for PhotogrammetrySession.Request);
      *(v10 + v13) = v9;
      swift_storeEnumTagMultiPayload();
      outlined copy of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v8, v12);
      v14 = v9;
      v8(v10);
      outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v8, v12);

      outlined destroy of PhotogrammetrySession.Request(v10, type metadata accessor for PhotogrammetrySession.Output);
    }

    else
    {
    }
  }

  v15 = v1[9];
  v16 = OBJC_IVAR____TtC17RealityFoundation22OutputPublisherMonitor_tasks;
  v1[22] = OBJC_IVAR____TtC17RealityFoundation22OutputPublisherMonitor_tasks;
  v17 = *(v15 + v16);
  v1[23] = v17;

  return MEMORY[0x1EEE6DFA0](closure #1 in OutputPublisherMonitor.handleModelEntity(url:apiRequest:), v17, 0);
}

uint64_t closure #2 in OutputPublisherMonitor.handleModelEntity(url:apiRequest:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x1EEE6DFA0](closure #2 in OutputPublisherMonitor.handleModelEntity(url:apiRequest:), 0, 0);
}

uint64_t closure #2 in OutputPublisherMonitor.handleModelEntity(url:apiRequest:)()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC17RealityFoundation22OutputPublisherMonitor_tasks);
  *(v0 + 40) = v1;

  return MEMORY[0x1EEE6DFA0](closure #2 in OutputPublisherMonitor.handleModelEntity(url:apiRequest:), v1, 0);
}

{
  OutputPublisherMonitor.Tasks.addTask(ID:task:)(v0[3], v0[4]);

  v1 = v0[1];

  return v1();
}

uint64_t closure #1 in OutputPublisherMonitor.handleProcessingComplete()()
{
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[9] = __swift_project_value_buffer(v1, logger);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1C1358000, v2, v3, "Got processingComplete from the internal publisher...", v4, 2u);
    MEMORY[0x1C6902A30](v4, -1, -1);
  }

  v5 = v0[8];

  v6 = *(v5 + OBJC_IVAR____TtC17RealityFoundation22OutputPublisherMonitor_tasks);
  v0[10] = v6;

  return MEMORY[0x1EEE6DFA0](closure #1 in OutputPublisherMonitor.handleProcessingComplete(), v6, 0);
}

{
  v1 = *(v0 + 80);
  swift_beginAccess();
  *(v0 + 88) = *(*(v1 + 112) + 16);

  return MEMORY[0x1EEE6DFA0](closure #1 in OutputPublisherMonitor.handleProcessingComplete(), 0, 0);
}

uint64_t closure #1 in OutputPublisherMonitor.handleProcessingComplete()(uint64_t a1)
{
  if (v1[11])
  {
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_1C1358000, v2, v3, "Waiting for internal tasks to finish...", v4, 2u);
      MEMORY[0x1C6902A30](v4, -1, -1);
    }

    v5 = v1[8];

    v6 = OBJC_IVAR____TtC17RealityFoundation22OutputPublisherMonitor__internalProcessingCompleteReceived;
    swift_beginAccess();
    v7 = *(v5 + v6);
    os_unfair_lock_lock((v7 + 20));
    *(v7 + 16) = 1;
    os_unfair_lock_unlock((v7 + 20));
    swift_endAccess();
  }

  else
  {
    v8 = v1[8] + OBJC_IVAR____TtC17RealityFoundation22OutputPublisherMonitor_onInternalProcessingComplete;
    v9 = *v8;
    if (*v8)
    {
      v10 = *(v8 + 8);

      v9(v11);
      outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v9, v10);
    }
  }

  v12 = v1[1];

  return v12();
}

uint64_t closure #1 in OutputPublisherMonitor.handleProcessingCancelled()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = type metadata accessor for PhotogrammetrySession.Output(0);
  v4[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in OutputPublisherMonitor.handleProcessingCancelled(), 0, 0);
}

uint64_t closure #1 in OutputPublisherMonitor.handleProcessingCancelled()()
{
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, logger);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1C1358000, v2, v3, "Got processingCancelled from the internal publisher...", v4, 2u);
    MEMORY[0x1C6902A30](v4, -1, -1);
  }

  v5 = *(v0 + 16);

  v6 = *(v5 + OBJC_IVAR____TtC17RealityFoundation22OutputPublisherMonitor_tasks);
  *(v0 + 40) = v6;

  return MEMORY[0x1EEE6DFA0](closure #1 in OutputPublisherMonitor.handleProcessingCancelled(), v6, 0);
}

{
  OutputPublisherMonitor.Tasks.clear()();

  return MEMORY[0x1EEE6DFA0](closure #1 in OutputPublisherMonitor.handleProcessingCancelled(), 0, 0);
}

{
  v1 = v0[2];
  v2 = *(v1 + OBJC_IVAR____TtC17RealityFoundation22OutputPublisherMonitor_onPublishOutputMessage);
  if (v2)
  {
    v3 = v0[4];
    v4 = *(v1 + OBJC_IVAR____TtC17RealityFoundation22OutputPublisherMonitor_onPublishOutputMessage + 8);
    swift_storeEnumTagMultiPayload();

    v2(v3);
    outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v2, v4);
    outlined destroy of PhotogrammetrySession.Request(v3, type metadata accessor for PhotogrammetrySession.Output);
    v1 = v0[2];
  }

  v5 = *(v1 + 40);
  if (v5)
  {
    v6 = *(v1 + 48);

    v5(v7);
    outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v5, v6);
  }

  v8 = v0[1];

  return v8();
}

void OutputPublisherMonitor.sendAnalyticsForRequest(request:success:error:requestTime:)(uint64_t a1, char a2, void *a3, uint64_t a4, char a5)
{
  v11 = type metadata accessor for AnalyticsManager.PhotogrammetrySessionReconstructionResultEvent(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PhotogrammetrySession.Request(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PhotogrammetrySession.Request(a1, v16, type metadata accessor for PhotogrammetrySession.Request);
  if (swift_getEnumCaseMultiPayload())
  {
    outlined destroy of PhotogrammetrySession.Request(v16, type metadata accessor for PhotogrammetrySession.Request);
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, logger);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1C1358000, v18, v19, "Not logging the Request to analytics since not .modelFile.", v20, 2u);
      MEMORY[0x1C6902A30](v20, -1, -1);
    }
  }

  else
  {
    v28[1] = v5;
    v21 = type metadata accessor for URL();
    (*(*(v21 - 8) + 8))(v16, v21);
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, logger);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_1C1358000, v23, v24, "Logging the .modelFile Request analytics...", v25, 2u);
      MEMORY[0x1C6902A30](v25, -1, -1);
    }

    if (a5)
    {
      v26 = -1.0;
    }

    else
    {
      v26 = *&a4;
    }

    OutputPublisherMonitor.sessionID.getter(v13);
    outlined init with copy of PhotogrammetrySession.Request(a1, &v13[v11[5]], type metadata accessor for PhotogrammetrySession.Request);
    v13[v11[7]] = a2 & 1;
    *&v13[v11[8]] = a3;
    *&v13[v11[9]] = v26;
    v27 = a3;
    specialized AnalyticsManager.sendPhotogrammetrySessionReconstructionResultEvent(event:)(v13);
    outlined destroy of PhotogrammetrySession.Request(v13, type metadata accessor for AnalyticsManager.PhotogrammetrySessionReconstructionResultEvent);
  }
}

uint64_t OutputPublisherMonitor.Tasks.addTask(ID:task:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, logger);
  (*(v7 + 16))(v9, a1, v6);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v24 = a2;
    v14 = v13;
    v23 = swift_slowAlloc();
    v26[0] = v23;
    *v14 = 136446210;
    lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    (*(v7 + 8))(v9, v6);
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v17, v26);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_1C1358000, v11, v12, "Adding a task: %{public}s", v14, 0xCu);
    v19 = v23;
    __swift_destroy_boxed_opaque_existential_1(v23);
    MEMORY[0x1C6902A30](v19, -1, -1);
    v20 = v14;
    a2 = v24;
    MEMORY[0x1C6902A30](v20, -1, -1);
  }

  else
  {

    (*(v7 + 8))(v9, v6);
  }

  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v25 = *(v3 + 112);
  *(v3 + 112) = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a2, a1, isUniquelyReferenced_nonNull_native);
  *(v3 + 112) = v25;
  return swift_endAccess();
}

uint64_t OutputPublisherMonitor.Tasks.removeTask(ID:)(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, logger);
  (*(v3 + 16))(v5, a1, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v18 = a1;
    v10 = v9;
    v11 = swift_slowAlloc();
    v19[0] = v11;
    *v10 = 136446210;
    lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v13;
    (*(v3 + 8))(v5, v2);
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v14, v19);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_1C1358000, v7, v8, "Removing a task: %{public}s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x1C6902A30](v11, -1, -1);
    v16 = v10;
    a1 = v18;
    MEMORY[0x1C6902A30](v16, -1, -1);
  }

  else
  {

    (*(v3 + 8))(v5, v2);
  }

  swift_beginAccess();
  specialized Dictionary.removeValue(forKey:)(a1);
  swift_endAccess();
}

double OutputPublisherMonitor.Tasks.clear()()
{
  v1 = v0;
  v51 = type metadata accessor for UUID();
  v49 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v46 = &v40 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_ScTyyts5NeverOG5valuetSgMd, &_s10Foundation4UUIDV3key_ScTyyts5NeverOG5valuetSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v40 - v7;
  if (one-time initialization token for logger != -1)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, logger);

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.debug.getter();

    v12 = os_log_type_enabled(v10, v11);
    v47 = v5;
    if (v12)
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v53[0] = v14;
      *v13 = 136446210;
      swift_beginAccess();
      v52 = *(*(v1 + 112) + 16);
      v15 = dispatch thunk of CustomStringConvertible.description.getter();
      v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, v53);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_1C1358000, v10, v11, "Clearing tasks - number of scheduled tasks: %{public}s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x1C6902A30](v14, -1, -1);
      v18 = v13;
      v5 = v47;
      MEMORY[0x1C6902A30](v18, -1, -1);
    }

    swift_beginAccess();
    v19 = *(v1 + 112);
    v20 = *(v19 + 64);
    v42 = v19 + 64;
    v21 = 1 << *(v19 + 32);
    v22 = -1;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    v23 = v22 & v20;
    v40 = v1;
    v41 = (v21 + 63) >> 6;
    v43 = v49 + 32;
    v44 = v49 + 16;
    v50 = (v49 + 8);
    v48 = v19;

    v24 = 0;
    v45 = v8;
    if (v23)
    {
      break;
    }

LABEL_8:
    if (v41 <= v24 + 1)
    {
      v25 = v24 + 1;
    }

    else
    {
      v25 = v41;
    }

    v26 = v25 - 1;
    while (1)
    {
      v1 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v1 >= v41)
      {
        v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_ScTyyts5NeverOG5valuetMd, &_s10Foundation4UUIDV3key_ScTyyts5NeverOG5valuetMR);
        (*(*(v38 - 8) + 56))(v5, 1, 1, v38);
        v23 = 0;
        goto LABEL_16;
      }

      v23 = *(v42 + 8 * v1);
      ++v24;
      if (v23)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_22:
    swift_once();
  }

  while (1)
  {
    v1 = v24;
LABEL_15:
    v27 = __clz(__rbit64(v23));
    v23 &= v23 - 1;
    v28 = v27 | (v1 << 6);
    v29 = v48;
    v30 = v49;
    v31 = v46;
    v32 = v51;
    (*(v49 + 16))(v46, *(v48 + 48) + *(v49 + 72) * v28, v51);
    v33 = *(*(v29 + 56) + 8 * v28);
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_ScTyyts5NeverOG5valuetMd, &_s10Foundation4UUIDV3key_ScTyyts5NeverOG5valuetMR);
    v35 = *(v34 + 48);
    v36 = *(v30 + 32);
    v5 = v47;
    v36(v47, v31, v32);
    *&v5[v35] = v33;
    (*(*(v34 - 8) + 56))(v5, 0, 1, v34);

    v26 = v1;
    v8 = v45;
LABEL_16:
    outlined init with take of AnySubscriber<EngineRenderEvent, Never>(v5, v8, &_s10Foundation4UUIDV3key_ScTyyts5NeverOG5valuetSgMd, &_s10Foundation4UUIDV3key_ScTyyts5NeverOG5valuetSgMR);
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_ScTyyts5NeverOG5valuetMd, &_s10Foundation4UUIDV3key_ScTyyts5NeverOG5valuetMR);
    if ((*(*(v37 - 8) + 48))(v8, 1, v37) == 1)
    {
      break;
    }

    MEMORY[0x1C68F3910](*&v8[*(v37 + 48)], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7410]);

    (*v50)(v8, v51);
    v24 = v26;
    if (!v23)
    {
      goto LABEL_8;
    }
  }

  *(v40 + 112) = MEMORY[0x1E69E7CC8];

  return result;
}

uint64_t OutputPublisherMonitor.Tasks.__deallocating_deinit()
{

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t *OutputPublisherMonitor.deinit()
{

  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v0[3], v0[4]);
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v0[5], v0[6]);
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v0[7], v0[8]);
  outlined destroy of BodyTrackingComponent?(v0 + OBJC_IVAR____TtC17RealityFoundation22OutputPublisherMonitor_outputs, &_sScSy17RealityFoundation21PhotogrammetrySessionC6OutputOGSgMd, &_sScSy17RealityFoundation21PhotogrammetrySessionC6OutputOGSgMR);
  swift_weakDestroy();
  outlined destroy of BodyTrackingComponent?(v0 + OBJC_IVAR____TtC17RealityFoundation22OutputPublisherMonitor____lazy_storage___sessionID, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(*(v0 + OBJC_IVAR____TtC17RealityFoundation22OutputPublisherMonitor_onOutput), *(v0 + OBJC_IVAR____TtC17RealityFoundation22OutputPublisherMonitor_onOutput + 8));

  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(*(v0 + OBJC_IVAR____TtC17RealityFoundation22OutputPublisherMonitor_onPublishOutputMessage), *(v0 + OBJC_IVAR____TtC17RealityFoundation22OutputPublisherMonitor_onPublishOutputMessage + 8));

  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(*(v0 + OBJC_IVAR____TtC17RealityFoundation22OutputPublisherMonitor_onInternalProcessingComplete), *(v0 + OBJC_IVAR____TtC17RealityFoundation22OutputPublisherMonitor_onInternalProcessingComplete + 8));

  return v0;
}

uint64_t OutputPublisherMonitor.__deallocating_deinit()
{
  OutputPublisherMonitor.deinit();

  return swift_deallocClassInstance();
}

void type metadata completion function for OutputPublisherMonitor(uint64_t a1)
{
  type metadata accessor for AsyncStream<PhotogrammetrySession.Output>?(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UUID?(319, &lazy cache variable for type metadata for UUID?, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void type metadata accessor for AsyncStream<PhotogrammetrySession.Output>?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for AsyncStream<PhotogrammetrySession.Output>?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sScSy17RealityFoundation21PhotogrammetrySessionC6OutputOGMd, &_sScSy17RealityFoundation21PhotogrammetrySessionC6OutputOGMR);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for AsyncStream<PhotogrammetrySession.Output>?);
    }
  }
}

uint64_t type metadata completion function for PhotogrammetrySessionImpl.RequestMap.Entry(uint64_t a1)
{
  result = type metadata accessor for PhotogrammetrySession.Request(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for PhotogrammetrySession.Request();
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for Date();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PhotogrammetrySessionImpl.State and conformance PhotogrammetrySessionImpl.State()
{
  result = lazy protocol witness table cache variable for type PhotogrammetrySessionImpl.State and conformance PhotogrammetrySessionImpl.State;
  if (!lazy protocol witness table cache variable for type PhotogrammetrySessionImpl.State and conformance PhotogrammetrySessionImpl.State)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PhotogrammetrySessionImpl.State, &unk_1F4104528, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PhotogrammetrySessionImpl.State and conformance PhotogrammetrySessionImpl.State);
  }

  return result;
}

uint64_t protocol witness for AsyncOutputIteratorProtocol.next() in conformance AsyncOutputIterator(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy17RealityFoundation21PhotogrammetrySessionC6OutputO_GMd, &_sScS8IteratorVy17RealityFoundation21PhotogrammetrySessionC6OutputO_GMR);
  *v3 = v1;
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_;

  return MEMORY[0x1EEE6D9D0](a1, v4);
}

float computeOrientedBoundingBox(for:)@<S0>(_OWORD *a2@<X8>)
{
  REMakeSRTFromMatrix();
  if (one-time initialization token for identity != -1)
  {
    v11 = v5;
    v12 = v4;
    v10 = v3;
    swift_once();
    v3 = v10;
    v5 = v11;
    v4 = v12;
  }

  v6 = vmuls_lane_f32(0.5, v3, 2);
  v7 = vmul_f32(*v3.f32, 0x3F0000003F000000);
  *&v8 = vsub_f32(*&v5, v7);
  *(&v8 + 2) = *(&v5 + 2) - v6;
  HIDWORD(v8) = 0;
  *&v5 = vadd_f32(*&v5, v7);
  result = *(&v5 + 2) + v6;
  *(&v5 + 2) = *(&v5 + 2) + v6;
  HIDWORD(v5) = 0;
  *a2 = v4;
  a2[1] = v8;
  a2[2] = v5;
  return result;
}

void PhotogrammetrySession.PointCloud.init(_:)(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = PhotogrammetrySession.PointCloud.points.getter();
  v5 = *(v4 + 16);
  if (v5)
  {
    v29 = a1;
    v30 = a2;
    v38 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5, 0);
    v6 = v38;
    v7 = type metadata accessor for PhotogrammetrySession.PointCloud.Point();
    v8 = v7;
    v9 = *(v7 - 8);
    v10 = *(v9 + 16);
    v34 = v9 + 16;
    v35 = v10;
    v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v28 = v4;
    v12 = v4 + v11;
    v13 = *(v9 + 64);
    v32 = *(v9 + 72);
    v33 = v13;
    v31 = (v9 + 8);
    do
    {
      v37 = &v28;
      v14 = v33;
      v15 = MEMORY[0x1EEE9AC00](v7);
      v16 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
      v17 = v35;
      v18 = (v35)(v16, v12, v8, v15);
      v19 = MEMORY[0x1EEE9AC00](v18);
      v17(v16, v16, v8, v19);
      PhotogrammetrySession.PointCloud.Point.position.getter();
      v36 = v20;
      v21 = PhotogrammetrySession.PointCloud.Point.color.getter();
      v22 = *v31;
      (*v31)(v16, v8);
      v7 = v22(v16, v8);
      v38 = v6;
      v24 = *(v6 + 16);
      v23 = *(v6 + 24);
      if (v24 >= v23 >> 1)
      {
        v7 = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1);
        v6 = v38;
      }

      *(v6 + 16) = v24 + 1;
      v25 = v6 + 32 * v24;
      *(v25 + 32) = v36;
      *(v25 + 48) = v21;
      v12 += v32;
      --v5;
    }

    while (v5);
    v26 = type metadata accessor for PhotogrammetrySession.PointCloud();
    (*(*(v26 - 8) + 8))(v29, v26);

    a2 = v30;
  }

  else
  {

    v27 = type metadata accessor for PhotogrammetrySession.PointCloud();
    (*(*(v27 - 8) + 8))(a1, v27);
    v6 = MEMORY[0x1E69E7CC0];
  }

  *a2 = v6;
}

uint64_t PhotogrammetrySession.Poses.init(poses:)@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v156 = a2;
  v3 = MEMORY[0x1E69E7CC0];
  v4 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_So13simd_float4x4aSgTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v195 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_17RealityFoundation21PhotogrammetrySessionC4PoseVTt0g5Tf4g_n(v3);
  v157 = a1;
  v5 = PhotogrammetrySession.Poses.posesBySample.getter();
  v7 = v5;
  v8 = 0;
  v9 = v5 + 64;
  v10 = 1 << *(v5 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(v5 + 64);
  v13 = (v10 + 63) >> 6;
  *&v6 = 134218242;
  v159 = v6;
  *&v6 = 134349056;
  v158 = v6;
  *&v6 = 134217984;
  v154 = v6;
  *&v6 = 134349314;
  v155 = v6;
  v164 = v13;
  v160 = v5;
LABEL_4:
  v14 = v8;
  while (v12)
  {
    v8 = v14;
LABEL_11:
    v15 = __clz(__rbit64(v12)) | (v8 << 6);
    v16 = *(*(v7 + 48) + 8 * v15);
    v17 = *(v7 + 56) + 80 * v15;
    v18 = *v17;
    v169 = *(v17 + 16);
    v170 = v18;
    v19 = *(v17 + 32);
    v167 = *(v17 + 48);
    v168 = v19;
    v20 = *(v17 + 64);
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    v166 = __swift_project_value_buffer(v21, logger);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();
    v24 = os_log_type_enabled(v22, v23);
    LODWORD(v165) = v20;
    if (v24)
    {
      v25 = swift_slowAlloc();
      v163 = v4;
      v26 = v20;
      v27 = v25;
      v161 = swift_slowAlloc();
      *&v177 = v161;
      *v27 = v159;
      *(v27 + 4) = v16;
      *(v27 + 12) = 2080;
      v186 = v170;
      v187 = v169;
      v188 = v168;
      v189 = v167;
      LOBYTE(v190) = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13simd_float4x4aSgMd, &_sSo13simd_float4x4aSgMR);
      v28 = String.init<A>(describing:)();
      v162 = v12;
      v30 = v9;
      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, &v177);
      v12 = v162;

      *(v27 + 14) = v31;
      v9 = v30;
      v4 = v163;
      _os_log_impl(&dword_1C1358000, v22, v23, "Caching sampleID=%ld pose=%s.", v27, 0x16u);
      v32 = v161;
      __swift_destroy_boxed_opaque_existential_1(v161);
      v33 = v32;
      v7 = v160;
      MEMORY[0x1C6902A30](v33, -1, -1);
      MEMORY[0x1C6902A30](v27, -1, -1);
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v194 = v4;
    v35 = specialized __RawDictionaryStorage.find<A>(_:)(v16);
    isa = v4[2].isa;
    v38 = (v36 & 1) == 0;
    v39 = __OFADD__(isa, v38);
    v40 = isa + v38;
    if (v39)
    {
      goto LABEL_57;
    }

    v41 = v36;
    if (v4[3].isa >= v40)
    {
      v43 = 0uLL;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v59 = v16;
        v60 = v35;
        specialized _NativeDictionary.copy()();
        v43 = 0uLL;
        v35 = v60;
        v16 = v59;
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v40, isUniquelyReferenced_nonNull_native);
      v35 = specialized __RawDictionaryStorage.find<A>(_:)(v16);
      if ((v41 & 1) != (v42 & 1))
      {
        goto LABEL_59;
      }

      v43 = 0uLL;
    }

    v12 &= v12 - 1;
    v4 = v194;
    if (v41)
    {
      v44 = v194[7].isa + 80 * v35;
      v45 = v169;
      *v44 = v170;
      *(v44 + 16) = v45;
      v46 = v167;
      *(v44 + 32) = v168;
      *(v44 + 48) = v46;
      v47 = v165;
      *(v44 + 64) = v165;
      if ((v47 & 1) == 0)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v194[(v35 >> 6) + 8].isa = (v194[(v35 >> 6) + 8].isa | (1 << v35));
      *(v4[6].isa + v35) = v16;
      v48 = v4[7].isa + 80 * v35;
      v49 = v169;
      *v48 = v170;
      *(v48 + 16) = v49;
      v50 = v167;
      *(v48 + 32) = v168;
      *(v48 + 48) = v50;
      v51 = v165;
      *(v48 + 64) = v165;
      v52 = v4[2].isa;
      v39 = __OFADD__(v52, 1);
      v53 = (v52 + 1);
      if (v39)
      {
        goto LABEL_58;
      }

      v4[2].isa = v53;
      if ((v51 & 1) == 0)
      {
LABEL_28:
        v189 = v43;
        v190 = v43;
        v188 = v43;
        v191 = 1;
        v192 = v43;
        v193 = v43;
        REMakeSRTFromMatrix();
        if (one-time initialization token for identity != -1)
        {
          v151 = v62;
          v165 = v61;
          swift_once();
          v61 = v165;
          v62 = v151;
        }

        HIDWORD(v62) = HIDWORD(v152);
        v186 = v62;
        v187 = v61;
        v151 = v62;
        v185 = 0uLL;
        v63 = PhotogrammetrySession.Poses.intrinsicsBySample.getter();
        v64 = *(v63 + 16);
        v150 = v9;
        v153 = v16;
        if (v64 && (v65 = specialized __RawDictionaryStorage.find<A>(_:)(v16), (v66 & 1) != 0))
        {
          v67 = *(v63 + 56) + (v65 << 6);
          v68 = *v67;
          *&v152 = *(v67 + 8);
          v69 = *(v67 + 16);
          *&v165 = *(v67 + 24);
          v70 = *(v67 + 40);
          v162 = *(v67 + 32);
          LODWORD(v161) = *(v67 + 48);

          v71 = Logger.logObject.getter();
          LODWORD(v145) = static os_log_type_t.debug.getter();
          v163 = v71;
          v72 = os_log_type_enabled(v71, v145);
          v147 = v69;
          v148 = v68;
          v146 = v70;
          if (v72)
          {
            v73 = swift_slowAlloc();
            v74 = v165;
            v75 = v73;
            v144 = swift_slowAlloc();
            *&v171 = v144;
            *v75 = v159;
            *(v75 + 4) = v153;
            *(v75 + 12) = 2080;
            *&v177 = v68;
            *(&v177 + 1) = v152;
            *&v178 = v69;
            *(&v178 + 1) = v74;
            *&v179 = v162;
            *(&v179 + 1) = v70;
            LOBYTE(v180) = v161;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13simd_float3x3aSgMd, &_sSo13simd_float3x3aSgMR);
            v76 = String.init<A>(describing:)();
            v78 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v76, v77, &v171);

            *(v75 + 14) = v78;
            v79 = v163;
            _os_log_impl(&dword_1C1358000, v163, v145, "Got estimated intrinsics sampleID=%ld  intrinsics=%s", v75, 0x16u);
            v80 = v144;
            __swift_destroy_boxed_opaque_existential_1(v144);
            MEMORY[0x1C6902A30](v80, -1, -1);
            MEMORY[0x1C6902A30](v75, -1, -1);

            v81 = v74;
          }

          else
          {

            v81 = v165;
          }
        }

        else
        {

          v82 = Logger.logObject.getter();
          v83 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v82, v83))
          {
            v84 = swift_slowAlloc();
            *v84 = v154;
            *(v84 + 4) = v153;
            _os_log_impl(&dword_1C1358000, v82, v83, "Couldn't find estimated intrinsics matching sampleID=%ld", v84, 0xCu);
            MEMORY[0x1C6902A30](v84, -1, -1);
          }

          v147 = 0;
          v148 = 0;
          *&v152 = 0;
          v81 = 0;
          v162 = 0;
          v146 = 0;
          LODWORD(v161) = 1;
        }

        v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6CoreOC18LensDistortionDataVSgMd, &_s6CoreOC18LensDistortionDataVSgMR);
        v145 = &v139;
        v86 = *(v85 - 8);
        v87 = *(v86 + 64);
        MEMORY[0x1EEE9AC00](v85 - 8);
        v144 = (&v139 - v88);
        v89 = PhotogrammetrySession.Poses.lensDistortionDataBySample.getter();
        v90 = *(v89 + 16);
        *&v165 = v81;
        if (v90 && (v91 = specialized __RawDictionaryStorage.find<A>(_:)(v153), (v92 & 1) != 0))
        {
          v163 = v4;
          v93 = v144;
          outlined init with copy of [String : String](*(v89 + 56) + *(v86 + 72) * v91, v144, &_s6CoreOC18LensDistortionDataVSgMd, &_s6CoreOC18LensDistortionDataVSgMR);

          v94 = type metadata accessor for LensDistortionData();
          v143 = &v139;
          v95 = *(v94 - 8);
          v96 = *(v95 + 64);
          MEMORY[0x1EEE9AC00](v94);
          v141 = &v139 - ((v96 + 15) & 0xFFFFFFFFFFFFFFF0);
          v139 = (v96 + 15) & 0xFFFFFFFFFFFFFFF0;
          v140 = &v139;
          MEMORY[0x1EEE9AC00](v97);
          v98 = &v139 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0);
          outlined init with copy of [String : String](v93, v98, &_s6CoreOC18LensDistortionDataVSgMd, &_s6CoreOC18LensDistortionDataVSgMR);
          v142 = v95;
          if ((*(v95 + 48))(v98, 1, v94) == 1)
          {
            outlined destroy of BodyTrackingComponent?(v93, &_s6CoreOC18LensDistortionDataVSgMd, &_s6CoreOC18LensDistortionDataVSgMR);
            outlined destroy of BodyTrackingComponent?(v98, &_s6CoreOC18LensDistortionDataVSgMd, &_s6CoreOC18LensDistortionDataVSgMR);
            v7 = v160;
            v4 = v163;
            goto LABEL_42;
          }

          v114 = v141;
          v115 = v142;
          v116 = (*(v142 + 32))(v141, v98, v94);
          v117 = MEMORY[0x1EEE9AC00](v116);
          v118 = &v139 - v139;
          (*(v115 + 16))(&v139 - v139, v114, v94, v117);
          LensDistortionData.center.getter();
          v120 = v119;
          v121 = LensDistortionData.radialLookupTable.getter();
          v124 = *(v115 + 8);
          v123 = v115 + 8;
          v122 = v124;
          (v124)(v118, v94);
          swift_beginAccess();
          *&v185 = v120;
          *(&v185 + 1) = v121;

          v125 = Logger.logObject.getter();
          v126 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v125, v126))
          {
            v127 = swift_slowAlloc();
            v128 = swift_slowAlloc();
            v142 = v123;
            v129 = v128;
            *&v171 = v128;
            *v127 = v159;
            *(v127 + 4) = v153;
            *(v127 + 12) = 2080;
            v177 = v185;

            __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation18LensDistortionDataVSgMd, &_s17RealityFoundation18LensDistortionDataVSgMR);
            v130 = String.init<A>(describing:)();
            v132 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v130, v131, &v171);
            v140 = v122;
            v133 = v132;

            *(v127 + 14) = v133;
            _os_log_impl(&dword_1C1358000, v125, v126, "Got estimated lens distortion data sampleID=%ld  lensDistortionData=%s", v127, 0x16u);
            __swift_destroy_boxed_opaque_existential_1(v129);
            MEMORY[0x1C6902A30](v129, -1, -1);
            MEMORY[0x1C6902A30](v127, -1, -1);

            (v140)(v141, v94);
          }

          else
          {

            (v122)(v141, v94);
          }

          outlined destroy of BodyTrackingComponent?(v144, &_s6CoreOC18LensDistortionDataVSgMd, &_s6CoreOC18LensDistortionDataVSgMR);
          v7 = v160;
          v100 = v147;
          v99 = v148;
          v101 = v152;
          v4 = v163;
        }

        else
        {

LABEL_42:
          v100 = v147;
          v99 = v148;
          v101 = v152;
        }

        swift_beginAccess();
        v102 = v185;
        *(&v176[1] + 8) = 0u;
        *(v176 + 8) = 0u;

        REMakeSRTFromMatrix();
        HIDWORD(v103) = HIDWORD(v149);
        v171 = v103;
        v172 = v104;
        v170 = v103;
        *&v173 = v99;
        *(&v173 + 1) = v101;
        *&v174 = v100;
        *(&v174 + 1) = v165;
        *&v175 = v162;
        *(&v175 + 1) = v146;
        LOBYTE(v176[0]) = v161;
        if (*(&v102 + 1))
        {
          v177 = v102;
          *(&v178 + 1) = &type metadata for LensDistortionData;
        }

        else
        {
          v177 = 0u;
          v178 = 0u;
        }

        outlined assign with take of Any?(&v177, v176 + 8, &_sypSgMd, &_sypSgMR);
        v181 = v175;
        v182 = v176[0];
        v183 = v176[1];
        v184 = *&v176[2];
        v177 = v171;
        v178 = v172;
        v179 = v173;
        v180 = v174;
        swift_beginAccess();
        outlined assign with take of PhotogrammetrySession.Pose(&v177, &v186);

        v105 = Logger.logObject.getter();
        v106 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v105, v106))
        {
          v107 = swift_slowAlloc();
          v108 = swift_slowAlloc();
          *&v171 = v108;
          *v107 = v155;
          *(v107 + 4) = v153;
          *(v107 + 12) = 2082;
          outlined init with copy of PhotogrammetrySession.Pose(&v186, &v177);
          v109 = String.init<A>(describing:)();
          v163 = v4;
          v111 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v109, v110, &v171);
          v4 = v163;

          *(v107 + 14) = v111;
          _os_log_impl(&dword_1C1358000, v105, v106, "Adding posesBySample[%{public}ld] = %{public}s", v107, 0x16u);
          __swift_destroy_boxed_opaque_existential_1(v108);
          MEMORY[0x1C6902A30](v108, -1, -1);
          v112 = v107;
          v113 = v153;
          MEMORY[0x1C6902A30](v112, -1, -1);

          v9 = v150;
          v13 = v164;
        }

        else
        {

          v9 = v150;
          v13 = v164;
          v113 = v153;
        }

        outlined init with copy of PhotogrammetrySession.Pose(&v186, &v177);
        specialized Dictionary.subscript.setter(&v177, v113);
        outlined destroy of PhotogrammetrySession.Pose(&v186);
        v149 = v170;
        v152 = v151;
        goto LABEL_4;
      }
    }

    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = v16;
      v58 = v56;
      *v56 = v158;
      *(v56 + 4) = v57;
      _os_log_impl(&dword_1C1358000, v54, v55, "Poses: sampleID=%{public}ld was unable to be registered.  Not returning a pose.", v56, 0xCu);
      MEMORY[0x1C6902A30](v58, -1, -1);
    }

    v14 = v8;
    v13 = v164;
  }

  while (1)
  {
    v8 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v8 >= v13)
    {

      v134 = v195;
      v135 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_10Foundation3URLVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
      v136 = type metadata accessor for PhotogrammetrySession.Poses();
      result = (*(*(v136 - 8) + 8))(v157, v136);
      v138 = v156;
      *v156 = v134;
      v138[1] = v135;
      v138[2] = v4;
      return result;
    }

    v12 = *(v9 + 8 * v8);
    ++v14;
    if (v12)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew()(uint64_t a1)
{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

void specialized MutableCollection<>.sort(by:)(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  v4 = _minimumMergeRunLength(_:)(v3);
  if (v4 >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[8 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 8;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 8;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = v4;
    v6 = (v3 >> 1);
    if (v3 >= 2)
    {
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v16[0] = (v7 + 32);
    v16[1] = v6;
    specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
}

{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = *(v2 + 2);
  v33[0] = (v2 + 32);
  v33[1] = v3;
  v4 = _minimumMergeRunLength(_:)(v3);
  if (v4 >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 128;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          if (*(v12 + 12) >= *(v12 - 12))
          {
            break;
          }

          v13 = v12 - 96;
          v14 = *(v12 + 1);
          v27 = *v12;
          v28 = v14;
          v15 = *(v12 + 2);
          v16 = *(v12 + 3);
          v17 = *(v12 + 4);
          v32 = *(v12 + 10);
          v30 = v16;
          v31 = v17;
          v29 = v15;
          v18 = *(v12 - 1);
          *(v12 + 4) = *(v12 - 2);
          *(v12 + 5) = v18;
          v19 = *(v12 - 3);
          *(v12 + 2) = *(v12 - 4);
          *(v12 + 3) = v19;
          v20 = *(v12 - 5);
          *v12 = *(v12 - 6);
          *(v12 + 1) = v20;
          v21 = v28;
          *v13 = v27;
          *(v13 + 1) = v21;
          v22 = v29;
          v23 = v30;
          v24 = v31;
          *(v13 + 10) = v32;
          *(v13 + 3) = v23;
          *(v13 + 4) = v24;
          *(v13 + 2) = v22;
          v12 -= 96;
        }

        while (!__CFADD__(v11++, 1));
        v8 += 96;
        --v9;
      }
    }
  }

  else
  {
    v5 = v4;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    *&v27 = v7 + 32;
    *(&v27 + 1) = v6;
    specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(&v27, v26, v33, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v5 = *a1;
    if (!*a1)
    {
      goto LABEL_128;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_122:
      v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
    }

    v75 = v8 + 16;
    v76 = *(v8 + 2);
    if (v76 >= 2)
    {
      while (*a3)
      {
        v77 = &v8[16 * v76];
        v78 = *v77;
        v79 = &v75[2 * v76];
        v80 = v79[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 8 * *v77), (*a3 + 8 * *v79), (*a3 + 8 * v80), v5);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v80 < v78)
        {
          goto LABEL_114;
        }

        if (v76 - 2 >= *v75)
        {
          goto LABEL_115;
        }

        *v77 = v78;
        *(v77 + 1) = v80;
        v81 = *v75 - v76;
        if (*v75 < v76)
        {
          goto LABEL_116;
        }

        v76 = *v75 - 1;
        memmove(v79, v79 + 2, 16 * v81);
        *v75 = v76;
        if (v76 <= 1)
        {
          goto LABEL_97;
        }
      }

      goto LABEL_126;
    }

LABEL_97:

    return;
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v82 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = *(*a3 + 8 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 8 * v12);
        v15 = (v10 < v11) ^ (v14 >= v13);
        ++v12;
        v13 = v14;
        if ((v15 & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = v7 - 1;
        v17 = v9;
        do
        {
          if (v17 != v16)
          {
            v20 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v18 = *(v20 + 8 * v17);
            *(v20 + 8 * v17) = *(v20 + 8 * v16);
            *(v20 + 8 * v16) = v18;
          }
        }

        while (++v17 < v16--);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
    }

    v5 = *(v8 + 2);
    v29 = *(v8 + 3);
    v30 = v5 + 1;
    if (v5 >= v29 >> 1)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v5 + 1, 1, v8);
    }

    *(v8 + 2) = v30;
    v31 = v8 + 32;
    v32 = &v8[16 * v5 + 32];
    *v32 = v9;
    *(v32 + 1) = v7;
    v84 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v30 - 1;
        if (v30 >= 4)
        {
          break;
        }

        if (v30 == 3)
        {
          v33 = *(v8 + 4);
          v34 = *(v8 + 5);
          v43 = __OFSUB__(v34, v33);
          v35 = v34 - v33;
          v36 = v43;
LABEL_57:
          if (v36)
          {
            goto LABEL_104;
          }

          v49 = &v8[16 * v30];
          v51 = *v49;
          v50 = *(v49 + 1);
          v52 = __OFSUB__(v50, v51);
          v53 = v50 - v51;
          v54 = v52;
          if (v52)
          {
            goto LABEL_106;
          }

          v55 = &v31[16 * v5];
          v57 = *v55;
          v56 = *(v55 + 1);
          v43 = __OFSUB__(v56, v57);
          v58 = v56 - v57;
          if (v43)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v53, v58))
          {
            goto LABEL_111;
          }

          if (v53 + v58 >= v35)
          {
            if (v35 < v58)
            {
              v5 = v30 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v30 < 2)
        {
          goto LABEL_112;
        }

        v59 = &v8[16 * v30];
        v61 = *v59;
        v60 = *(v59 + 1);
        v43 = __OFSUB__(v60, v61);
        v53 = v60 - v61;
        v54 = v43;
LABEL_72:
        if (v54)
        {
          goto LABEL_108;
        }

        v62 = &v31[16 * v5];
        v64 = *v62;
        v63 = *(v62 + 1);
        v43 = __OFSUB__(v63, v64);
        v65 = v63 - v64;
        if (v43)
        {
          goto LABEL_110;
        }

        if (v65 < v53)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v30)
        {
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

        v70 = &v31[16 * v5 - 16];
        v71 = *v70;
        v72 = &v31[16 * v5];
        v73 = *(v72 + 1);
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 8 * *v70), (*a3 + 8 * *v72), (*a3 + 8 * v73), v84);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v73 < v71)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 2))
        {
          goto LABEL_100;
        }

        *v70 = v71;
        *(v70 + 1) = v73;
        v74 = *(v8 + 2);
        if (v5 >= v74)
        {
          goto LABEL_101;
        }

        v30 = v74 - 1;
        memmove(&v31[16 * v5], v72 + 16, 16 * (v74 - 1 - v5));
        *(v8 + 2) = v74 - 1;
        if (v74 <= 2)
        {
          goto LABEL_3;
        }
      }

      v37 = &v31[16 * v30];
      v38 = *(v37 - 8);
      v39 = *(v37 - 7);
      v43 = __OFSUB__(v39, v38);
      v40 = v39 - v38;
      if (v43)
      {
        goto LABEL_102;
      }

      v42 = *(v37 - 6);
      v41 = *(v37 - 5);
      v43 = __OFSUB__(v41, v42);
      v35 = v41 - v42;
      v36 = v43;
      if (v43)
      {
        goto LABEL_103;
      }

      v44 = &v8[16 * v30];
      v46 = *v44;
      v45 = *(v44 + 1);
      v43 = __OFSUB__(v45, v46);
      v47 = v45 - v46;
      if (v43)
      {
        goto LABEL_105;
      }

      v43 = __OFADD__(v35, v47);
      v48 = v35 + v47;
      if (v43)
      {
        goto LABEL_107;
      }

      if (v48 >= v40)
      {
        v66 = &v31[16 * v5];
        v68 = *v66;
        v67 = *(v66 + 1);
        v43 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v43)
        {
          goto LABEL_113;
        }

        if (v35 < v69)
        {
          v5 = v30 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v82;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v21 = *a3;
  v22 = *a3 + 8 * v7 - 8;
  v23 = v9 - v7;
LABEL_30:
  v24 = *(v21 + 8 * v7);
  v25 = v23;
  v26 = v22;
  while (1)
  {
    v27 = *v26;
    if (v24 >= *v26)
    {
LABEL_29:
      ++v7;
      v22 += 8;
      --v23;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v21)
    {
      break;
    }

    *v26 = v24;
    v26[1] = v27;
    --v26;
    if (__CFADD__(v25++, 1))
    {
      goto LABEL_29;
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

{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_109:
    v9 = *a1;
    if (!*a1)
    {
      goto LABEL_148;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_142:
      v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
    }

    v94 = v5;
    v95 = v8 + 16;
    v96 = *(v8 + 2);
    if (v96 >= 2)
    {
      while (*a3)
      {
        v97 = &v8[16 * v96];
        v5 = *v97;
        v98 = &v95[2 * v96];
        v99 = v98[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 32 * *v97), (*a3 + 32 * *v98), (*a3 + 32 * v99), v9);
        if (v94)
        {
          goto LABEL_118;
        }

        if (v99 < v5)
        {
          goto LABEL_134;
        }

        if (v96 - 2 >= *v95)
        {
          goto LABEL_135;
        }

        *v97 = v5;
        *(v97 + 1) = v99;
        v100 = *v95 - v96;
        if (*v95 < v96)
        {
          goto LABEL_136;
        }

        v96 = *v95 - 1;
        memmove(v98, v98 + 2, 16 * v100);
        *v95 = v96;
        if (v96 <= 1)
        {
          goto LABEL_118;
        }
      }

      goto LABEL_146;
    }

LABEL_118:

    return;
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 32 * v7);
      v11 = (*a3 + 32 * v9);
      if (*v11 == *v10 && v11[1] == v10[1])
      {
        v13 = 0;
      }

      else
      {
        v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 5;
        v15 = v11 + 5;
        do
        {
          v17 = v15[4];
          v15 += 4;
          v16 = v17;
          if (*(v14 - 1) == v14[3] && *v14 == v16)
          {
            if (v13)
            {
              goto LABEL_25;
            }
          }

          else if ((v13 ^ _stringCompareWithSmolCheck(_:_:expecting:)()))
          {
            goto LABEL_24;
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_24:
      if (v13)
      {
LABEL_25:
        if (v7 < v9)
        {
          goto LABEL_139;
        }

        if (v9 < v7)
        {
          v19 = 32 * v7 - 32;
          v20 = 32 * v9;
          v21 = v7;
          v22 = v9;
          do
          {
            if (v22 != --v21)
            {
              v25 = *a3;
              if (!*a3)
              {
                goto LABEL_145;
              }

              v26 = (v25 + v20);
              v27 = (v25 + v19);
              v28 = *(v25 + v20);
              v29 = *(v25 + v20 + 8);
              v30 = *(v25 + v20 + 24);
              v31 = *(v25 + v20 + 28);
              if (v20 != v19 || v26 >= v27 + 2)
              {
                v23 = v27[1];
                *v26 = *v27;
                v26[1] = v23;
              }

              v24 = v25 + v19;
              *v24 = v28;
              *(v24 + 8) = v29;
              *(v24 + 24) = v30;
              *(v24 + 28) = v31;
            }

            ++v22;
            v19 -= 32;
            v20 += 32;
          }

          while (v22 < v21);
        }
      }
    }

    v32 = a3[1];
    if (v7 < v32)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_138;
      }

      if (v7 - v9 < a4)
      {
        v33 = v9 + a4;
        if (__OFADD__(v9, a4))
        {
          goto LABEL_140;
        }

        if (v33 >= v32)
        {
          v33 = a3[1];
        }

        if (v33 < v9)
        {
LABEL_141:
          __break(1u);
          goto LABEL_142;
        }

        if (v7 != v33)
        {
          break;
        }
      }
    }

LABEL_57:
    if (v7 < v9)
    {
      goto LABEL_137;
    }

    v47 = v5;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
    }

    v49 = *(v8 + 2);
    v48 = *(v8 + 3);
    v50 = v49 + 1;
    if (v49 >= v48 >> 1)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v48 > 1), v49 + 1, 1, v8);
    }

    *(v8 + 2) = v50;
    v51 = &v8[16 * v49];
    *(v51 + 4) = v9;
    *(v51 + 5) = v7;
    v52 = *a1;
    if (!*a1)
    {
      goto LABEL_147;
    }

    if (v49)
    {
      v5 = v47;
      while (1)
      {
        v53 = v50 - 1;
        if (v50 >= 4)
        {
          break;
        }

        if (v50 == 3)
        {
          v54 = *(v8 + 4);
          v55 = *(v8 + 5);
          v64 = __OFSUB__(v55, v54);
          v56 = v55 - v54;
          v57 = v64;
LABEL_78:
          if (v57)
          {
            goto LABEL_125;
          }

          v70 = &v8[16 * v50];
          v72 = *v70;
          v71 = *(v70 + 1);
          v73 = __OFSUB__(v71, v72);
          v74 = v71 - v72;
          v75 = v73;
          if (v73)
          {
            goto LABEL_128;
          }

          v76 = &v8[16 * v53 + 32];
          v78 = *v76;
          v77 = *(v76 + 1);
          v64 = __OFSUB__(v77, v78);
          v79 = v77 - v78;
          if (v64)
          {
            goto LABEL_131;
          }

          if (__OFADD__(v74, v79))
          {
            goto LABEL_132;
          }

          if (v74 + v79 >= v56)
          {
            if (v56 < v79)
            {
              v53 = v50 - 2;
            }

            goto LABEL_99;
          }

          goto LABEL_92;
        }

        v80 = &v8[16 * v50];
        v82 = *v80;
        v81 = *(v80 + 1);
        v64 = __OFSUB__(v81, v82);
        v74 = v81 - v82;
        v75 = v64;
LABEL_92:
        if (v75)
        {
          goto LABEL_127;
        }

        v83 = &v8[16 * v53];
        v85 = *(v83 + 4);
        v84 = *(v83 + 5);
        v64 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v64)
        {
          goto LABEL_130;
        }

        if (v86 < v74)
        {
          goto LABEL_4;
        }

LABEL_99:
        v9 = v53 - 1;
        if (v53 - 1 >= v50)
        {
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
LABEL_129:
          __break(1u);
LABEL_130:
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
          goto LABEL_141;
        }

        if (!*a3)
        {
          goto LABEL_144;
        }

        v91 = *&v8[16 * v9 + 32];
        v92 = *&v8[16 * v53 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 32 * v91), (*a3 + 32 * *&v8[16 * v53 + 32]), (*a3 + 32 * v92), v52);
        if (v5)
        {
          goto LABEL_118;
        }

        if (v92 < v91)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_122;
        }

        v93 = &v8[16 * v9];
        *(v93 + 4) = v91;
        *(v93 + 5) = v92;
        specialized Array.remove(at:)(v53);
        v50 = *(v8 + 2);
        if (v50 <= 1)
        {
          goto LABEL_4;
        }
      }

      v58 = &v8[16 * v50 + 32];
      v59 = *(v58 - 64);
      v60 = *(v58 - 56);
      v64 = __OFSUB__(v60, v59);
      v61 = v60 - v59;
      if (v64)
      {
        goto LABEL_123;
      }

      v63 = *(v58 - 48);
      v62 = *(v58 - 40);
      v64 = __OFSUB__(v62, v63);
      v56 = v62 - v63;
      v57 = v64;
      if (v64)
      {
        goto LABEL_124;
      }

      v65 = &v8[16 * v50];
      v67 = *v65;
      v66 = *(v65 + 1);
      v64 = __OFSUB__(v66, v67);
      v68 = v66 - v67;
      if (v64)
      {
        goto LABEL_126;
      }

      v64 = __OFADD__(v56, v68);
      v69 = v56 + v68;
      if (v64)
      {
        goto LABEL_129;
      }

      if (v69 >= v61)
      {
        v87 = &v8[16 * v53 + 32];
        v89 = *v87;
        v88 = *(v87 + 1);
        v64 = __OFSUB__(v88, v89);
        v90 = v88 - v89;
        if (v64)
        {
          goto LABEL_133;
        }

        if (v56 < v90)
        {
          v53 = v50 - 2;
        }

        goto LABEL_99;
      }

      goto LABEL_78;
    }

    v5 = v47;
LABEL_4:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_109;
    }
  }

  v101 = v9;
  v34 = *a3;
  v35 = *a3 + 32 * v7 + 28;
  v36 = (v9 - v7);
  v104 = v33;
LABEL_46:
  v37 = v36;
  v38 = v35;
  while (1)
  {
    v39 = (v38 - 28);
    v40 = *(v38 - 60) == *(v38 - 28) && *(v38 - 52) == *(v38 - 20);
    if (v40 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
LABEL_45:
      ++v7;
      v35 += 32;
      --v36;
      if (v7 != v104)
      {
        goto LABEL_46;
      }

      v7 = v104;
      v9 = v101;
      goto LABEL_57;
    }

    if (!v34)
    {
      break;
    }

    v42 = *(v38 - 60);
    v41 = *(v38 - 44);
    *(v38 - 32) = *v38;
    v38 -= 32;
    v43 = *(v38 + 4);
    v44 = *(v38 + 28);
    v45 = *(v38 + 12);
    *v39 = v42;
    v39[1] = v41;
    *(v38 - 28) = v43;
    *(v38 - 20) = v45;
    *(v38 - 4) = v44;
    if (__CFADD__(v37++, 1))
    {
      goto LABEL_45;
    }
  }

  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
}

{
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x1E69E7CC0];
LABEL_108:
    v8 = *a1;
    if (!*a1)
    {
      goto LABEL_146;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_140:
      v7 = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
    }

    v85 = v7 + 16;
    v86 = *(v7 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v7[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + (*v87 << 6)), (*a3 + (*v89 << 6)), (*a3 + (v90 << 6)), v8);
        if (v4)
        {
          goto LABEL_117;
        }

        if (v90 < v88)
        {
          goto LABEL_132;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_133;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_134;
        }

        v86 = *v85 - 1;
        memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
          goto LABEL_117;
        }
      }

      goto LABEL_144;
    }

LABEL_117:

    return;
  }

  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *a3 + (v6 << 6);
      v10 = *a3 + (v8 << 6);
      if (*(v9 + 8) == *(v10 + 8) && *(v9 + 16) == *(v10 + 16))
      {
        v12 = 0;
      }

      else
      {
        v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      v6 = v8 + 2;
      if (v8 + 2 < v5)
      {
        v13 = (v10 + 144);
        do
        {
          if (*(v13 - 1) == *(v13 - 9) && *v13 == *(v13 - 8))
          {
            if (v12)
            {
              goto LABEL_24;
            }
          }

          else if ((v12 ^ _stringCompareWithSmolCheck(_:_:expecting:)()))
          {
            goto LABEL_23;
          }

          v13 += 8;
          ++v6;
        }

        while (v5 != v6);
        v6 = v5;
      }

LABEL_23:
      if (v12)
      {
LABEL_24:
        if (v6 < v8)
        {
          goto LABEL_137;
        }

        if (v8 < v6)
        {
          v15 = (v6 << 6) - 64;
          v16 = v8 << 6;
          v17 = v6;
          v18 = v8;
          do
          {
            if (v18 != --v17)
            {
              v22 = *a3;
              if (!*a3)
              {
                goto LABEL_143;
              }

              v23 = (v22 + v16);
              v24 = (v22 + v15);
              v96 = *v23;
              v97 = v23[1];
              *v98 = v23[2];
              *&v98[9] = *(v23 + 41);
              if (v16 != v15 || v23 >= v24 + 4)
              {
                v19 = *v24;
                v20 = v24[1];
                v21 = v24[3];
                v23[2] = v24[2];
                v23[3] = v21;
                *v23 = v19;
                v23[1] = v20;
              }

              *v24 = v96;
              v24[1] = v97;
              v24[2] = *v98;
              *(v24 + 41) = *&v98[9];
            }

            ++v18;
            v15 -= 64;
            v16 += 64;
          }

          while (v18 < v17);
        }
      }
    }

    v25 = a3[1];
    if (v6 < v25)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_136;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_138;
        }

        if (v8 + a4 >= v25)
        {
          v26 = a3[1];
        }

        else
        {
          v26 = v8 + a4;
        }

        if (v26 < v8)
        {
LABEL_139:
          __break(1u);
          goto LABEL_140;
        }

        if (v6 != v26)
        {
          break;
        }
      }
    }

LABEL_57:
    if (v6 < v8)
    {
      goto LABEL_135;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 2) + 1, 1, v7);
    }

    v40 = *(v7 + 2);
    v39 = *(v7 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), v40 + 1, 1, v7);
    }

    *(v7 + 2) = v41;
    v42 = &v7[16 * v40];
    *(v42 + 4) = v8;
    *(v42 + 5) = v6;
    v43 = *a1;
    if (!*a1)
    {
      goto LABEL_145;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v7 + 4);
          v46 = *(v7 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_77:
          if (v48)
          {
            goto LABEL_123;
          }

          v61 = &v7[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_126;
          }

          v67 = &v7[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_129;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_130;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_98;
          }

          goto LABEL_91;
        }

        v71 = &v7[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_91:
        if (v66)
        {
          goto LABEL_125;
        }

        v74 = &v7[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_128;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_98:
        v82 = v44 - 1;
        if (v44 - 1 >= v41)
        {
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
LABEL_129:
          __break(1u);
LABEL_130:
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
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
          goto LABEL_139;
        }

        if (!*a3)
        {
          goto LABEL_142;
        }

        v8 = *&v7[16 * v82 + 32];
        v83 = *&v7[16 * v44 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + (v8 << 6)), (*a3 + (*&v7[16 * v44 + 32] << 6)), (*a3 + (v83 << 6)), v43);
        if (v4)
        {
          goto LABEL_117;
        }

        if (v83 < v8)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
        }

        if (v82 >= *(v7 + 2))
        {
          goto LABEL_120;
        }

        v84 = &v7[16 * v82];
        *(v84 + 4) = v8;
        *(v84 + 5) = v83;
        specialized Array.remove(at:)(v44);
        v41 = *(v7 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v7[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_121;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_122;
      }

      v56 = &v7[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_124;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_127;
      }

      if (v60 >= v52)
      {
        v78 = &v7[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_131;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_98;
      }

      goto LABEL_77;
    }

LABEL_3:
    v5 = a3[1];
    if (v6 >= v5)
    {
      goto LABEL_108;
    }
  }

  v27 = *a3;
  v92 = v8;
  v28 = (v8 - v6);
  v29 = *a3 + (v6 << 6);
LABEL_46:
  v30 = v29;
  v31 = v28;
  while (1)
  {
    v32 = *(v30 + 8) == *(v30 - 56) && *(v30 + 16) == *(v30 - 48);
    if (v32 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
LABEL_45:
      ++v6;
      --v28;
      v29 += 64;
      if (v6 != v26)
      {
        goto LABEL_46;
      }

      v6 = v26;
      v8 = v92;
      goto LABEL_57;
    }

    if (!v27)
    {
      break;
    }

    v33 = (v30 - 64);
    v34 = *(v30 + 16);
    *v99 = *(v30 + 32);
    *&v99[9] = *(v30 + 41);
    v35 = *v30;
    v36 = *(v30 - 48);
    *v30 = *(v30 - 64);
    *(v30 + 16) = v36;
    v37 = *(v30 - 16);
    *(v30 + 32) = *(v30 - 32);
    *(v30 + 48) = v37;
    *(v33 + 41) = *&v99[9];
    v33[1] = v34;
    v33[2] = *v99;
    v30 -= 64;
    *v33 = v35;
    if (__CFADD__(v31++, 1))
    {
      goto LABEL_45;
    }
  }

  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v6 < *v4)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4;
      v4 += 8;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6;
    v6 += 8;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 8;
    v5 -= 8;
    v18 = v14;
    do
    {
      v19 = v5 + 8;
      v21 = *(v18 - 8);
      v18 -= 8;
      v20 = v21;
      if (v21 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 8, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v20;
      }

      v5 -= 8;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 31;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 5;
  v11 = a3 - __src;
  v12 = a3 - __src + 31;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 5;
  if (v10 < v13)
  {
    v14 = 32 * v10;
    if (a4 != __dst || &__dst[v14] <= a4)
    {
      memmove(a4, __dst, v14);
    }

    v15 = &v4[v14];
    if (v8 < 32)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v18 = *v4 == *v6 && *(v4 + 1) == *(v6 + 1);
      if (!v18 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v16 = v4;
      v18 = v7 == v4;
      v4 += 32;
      if (!v18)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 32;
      if (v4 >= v15)
      {
        goto LABEL_10;
      }
    }

    v16 = v6;
    v18 = v7 == v6;
    v6 += 32;
    if (v18)
    {
      goto LABEL_13;
    }

LABEL_12:
    v17 = *(v16 + 1);
    *v7 = *v16;
    *(v7 + 1) = v17;
    goto LABEL_13;
  }

  v19 = 32 * v13;
  if (a4 != __src || &__src[v19] <= a4)
  {
    memmove(a4, __src, 32 * v13);
  }

  v15 = &v4[v19];
  if (v11 >= 32 && v6 > v7)
  {
LABEL_28:
    v20 = v6 - 32;
    v5 -= 32;
    v21 = v15;
    do
    {
      v22 = *(v21 - 4);
      v23 = *(v21 - 3);
      v21 -= 32;
      v24 = *(v6 - 4) == v22 && *(v6 - 3) == v23;
      if (!v24 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        if (v5 + 32 != v6)
        {
          v26 = *(v6 - 1);
          *v5 = *v20;
          *(v5 + 1) = v26;
        }

        if (v15 <= v4 || (v6 -= 32, v20 <= v7))
        {
          v6 = v20;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 32 != v15)
      {
        v25 = *(v21 + 1);
        *v5 = *v21;
        *(v5 + 1) = v25;
      }

      v5 -= 32;
      v15 = v21;
    }

    while (v21 > v4);
    v15 = v21;
  }

LABEL_43:
  v27 = (v15 - v4 + (v15 - v4 < 0 ? 0x1FuLL : 0)) & 0xFFFFFFFFFFFFFFE0;
  if (v6 != v4 || v6 >= &v4[v27])
  {
    memmove(v6, v4, v27);
  }

  return 1;
}

{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 63;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 6;
  v11 = a3 - __src;
  v12 = a3 - __src + 63;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 6;
  if (v10 < v13)
  {
    v14 = v10 << 6;
    if (a4 != __dst || &__dst[v14] <= a4)
    {
      memmove(a4, __dst, v14);
    }

    v15 = &v4[v14];
    if (v8 < 64)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v20 = *(v6 + 1) == *(v4 + 1) && *(v6 + 2) == *(v4 + 2);
      if (!v20 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v16 = v4;
      v20 = v7 == v4;
      v4 += 64;
      if (!v20)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 64;
      if (v4 >= v15)
      {
        goto LABEL_10;
      }
    }

    v16 = v6;
    v20 = v7 == v6;
    v6 += 64;
    if (v20)
    {
      goto LABEL_13;
    }

LABEL_12:
    v17 = *v16;
    v18 = *(v16 + 1);
    v19 = *(v16 + 3);
    *(v7 + 2) = *(v16 + 2);
    *(v7 + 3) = v19;
    *v7 = v17;
    *(v7 + 1) = v18;
    goto LABEL_13;
  }

  v21 = v13 << 6;
  if (a4 != __src || &__src[v21] <= a4)
  {
    memmove(a4, __src, v13 << 6);
  }

  v15 = &v4[v21];
  if (v11 >= 64 && v6 > v7)
  {
LABEL_28:
    v5 -= 64;
    do
    {
      v22 = *(v15 - 7) == *(v6 - 7) && *(v15 - 6) == *(v6 - 6);
      if (!v22 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v27 = v6 - 64;
        if (v5 + 64 != v6)
        {
          v28 = *v27;
          v29 = *(v6 - 3);
          v30 = *(v6 - 1);
          *(v5 + 2) = *(v6 - 2);
          *(v5 + 3) = v30;
          *v5 = v28;
          *(v5 + 1) = v29;
        }

        if (v15 <= v4 || (v6 -= 64, v27 <= v7))
        {
          v6 = v27;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      v23 = v15 - 64;
      if (v5 + 64 != v15)
      {
        v24 = *v23;
        v25 = *(v15 - 3);
        v26 = *(v15 - 1);
        *(v5 + 2) = *(v15 - 2);
        *(v5 + 3) = v26;
        *v5 = v24;
        *(v5 + 1) = v25;
      }

      v5 -= 64;
      v15 -= 64;
    }

    while (v23 > v4);
    v15 = v23;
  }

LABEL_43:
  v31 = (v15 - v4 + (v15 - v4 < 0 ? 0x3FuLL : 0)) & 0xFFFFFFFFFFFFFFC0;
  if (v6 != v4 || v6 >= &v4[v31])
  {
    memmove(v6, v4, v31);
  }

  return 1;
}

uint64_t specialized static PhotogrammetrySessionImpl.verifyFreeStorageForFolderInputOrThrow(inputFolder:configuration:)(uint64_t a1, uint64_t a2)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v40 - v7;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v40 - v14;
  result = specialized static ImageHelper.calculateTotalImagesSizeInFolderShallowly(_:)();
  if (v2)
  {
    return result;
  }

  v17 = 3 * result;
  if ((result * 3) >> 64 != (3 * result) >> 63)
  {
    __break(1u);
LABEL_21:
    swift_once();
LABEL_5:
    v19 = __swift_project_value_buffer(v9, static PhotogrammetryFileHelpers.temporaryDirectory);
    (*(v10 + 16))(v15, v19, v9);
    if (v3(v8, 1, v9) != 1)
    {
      outlined destroy of BodyTrackingComponent?(v8, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    }

    goto LABEL_8;
  }

  a1 = 0;
  v18 = type metadata accessor for PhotogrammetrySession.Configuration(0);
  outlined init with copy of [String : String](a2 + *(v18 + 28), v8, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v3 = *(v10 + 48);
  if (v3(v8, 1, v9) == 1)
  {
    if (one-time initialization token for temporaryDirectory == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_21;
  }

  (*(v10 + 32))(v15, v8, v9);
LABEL_8:
  specialized static PhotogrammetryFileHelpers.ensureDirectoryExists(directory:)(v15);
  if (a1 || specialized static PhotogrammetryFileHelpers.checkIfSufficientStorageSpace(requiredBytes:directory:)(v17, v15))
  {
    return (*(v10 + 8))(v15, v9);
  }

  v21 = v20;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  __swift_project_value_buffer(v22, logger);
  (*(v10 + 16))(v12, v15, v9);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v41 = v24;
    v43 = v21;
    v25 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v44 = v40;
    *v25 = 141558530;
    *(v25 + 4) = 1752392040;
    *(v25 + 12) = 2080;
    lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    v28 = v27;
    v42 = *(v10 + 8);
    v42(v12, v9);
    v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v28, &v44);

    *(v25 + 14) = v29;
    *(v25 + 22) = 2082;
    if (one-time initialization token for byteFormatter != -1)
    {
      swift_once();
    }

    v30 = v43;
    v31 = [static PhotogrammetryFileHelpers.byteFormatter stringFromByteCount_];
    v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v33;

    v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v34, &v44);

    *(v25 + 24) = v35;
    _os_log_impl(&dword_1C1358000, v23, v41, "Insufficient storage remaining in checkpointDirectory = %{mask.hash}s  Required bytes = %{public}s", v25, 0x20u);
    v36 = v40;
    swift_arrayDestroy();
    MEMORY[0x1C6902A30](v36, -1, -1);
    v37 = v25;
    v21 = v30;
    MEMORY[0x1C6902A30](v37, -1, -1);

    v38 = v42;
  }

  else
  {

    v38 = *(v10 + 8);
    v38(v12, v9);
  }

  type metadata accessor for PhotogrammetrySession.Error(0);
  lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type PhotogrammetrySession.Error and conformance PhotogrammetrySession.Error, type metadata accessor for PhotogrammetrySession.Error, protocol conformance descriptor for PhotogrammetrySession.Error);
  swift_allocError();
  *v39 = v21;
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  return (v38)(v15, v9);
}

BOOL specialized static PhotogrammetrySessionImpl.containsMinimalNumberOfImages(_:)(uint64_t a1)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ImageHelper();
  v8 = static ImageHelper.enumerateImageFilesInFolderShallowly(_:sorted:)(a1, 0);
  if (!v1)
  {
    v20[1] = 0;
    v9 = v8[2];

    v2 = v9 > 2;
    if (v9 <= 2)
    {
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v10 = type metadata accessor for Logger();
      __swift_project_value_buffer(v10, logger);
      (*(v5 + 16))(v7, a1, v4);
      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v20[0] = swift_slowAlloc();
        v21 = v20[0];
        *v13 = 141558274;
        *(v13 + 4) = 1752392040;
        *(v13 + 12) = 2080;
        lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
        v14 = dispatch thunk of CustomStringConvertible.description.getter();
        v16 = v15;
        (*(v5 + 8))(v7, v4);
        v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, &v21);

        *(v13 + 14) = v17;
        _os_log_impl(&dword_1C1358000, v11, v12, "There are not enough images in the input folder: %{mask.hash}s", v13, 0x16u);
        v18 = v20[0];
        __swift_destroy_boxed_opaque_existential_1(v20[0]);
        MEMORY[0x1C6902A30](v18, -1, -1);
        MEMORY[0x1C6902A30](v13, -1, -1);
      }

      else
      {

        (*(v5 + 8))(v7, v4);
      }
    }
  }

  return v2;
}

uint64_t specialized static PhotogrammetrySessionImpl.isCheckpointDirectoryValidForResumingReconstruction(checkpointDirectory:inputURL:internalConfiguration:)(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  if (!specialized static PhotogrammetryFileHelpers.isEmptyDirectory(_:)(a4))
  {
    type metadata accessor for ImageHelper();
    v6 = static ImageHelper.enumerateImageFilesInFolderShallowly(_:sorted:)(a2, 0);
    type metadata accessor for PhotogrammetrySession();
    v7 = static PhotogrammetrySession.getNumberOfSamplesInSnapshot(snapshotURL:)();
    if (v8)
    {
      v9 = 0;
    }

    else
    {
      v9 = v7;
    }

    v10 = v6[2];

    if (v10 == v9)
    {
      v11 = static PhotogrammetrySession.isConfigurationCompatibleWithSnapshot(configuration:snapshotURL:)();
      if (v11 != 2 && (v11 & 1) != 0)
      {
        v12 = static PhotogrammetrySession.isDeviceCompatibleWithSnapshot(snapshotURL:)();
        if (v12 != 2 && (v12 & 1) != 0)
        {
          if (one-time initialization token for logger != -1)
          {
            swift_once();
          }

          v13 = type metadata accessor for Logger();
          __swift_project_value_buffer(v13, logger);
          v14 = Logger.logObject.getter();
          v15 = static os_log_type_t.default.getter();
          if (!os_log_type_enabled(v14, v15))
          {
            v5 = 1;
            goto LABEL_30;
          }

          v16 = swift_slowAlloc();
          *v16 = 0;
          _os_log_impl(&dword_1C1358000, v14, v15, "The checkpoint directory is valid for resuming reconstruction.", v16, 2u);
          v5 = 1;
          goto LABEL_24;
        }

        if (one-time initialization token for logger != -1)
        {
          swift_once();
        }

        v21 = type metadata accessor for Logger();
        __swift_project_value_buffer(v21, logger);
        v14 = Logger.logObject.getter();
        v18 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v14, v18))
        {
          v16 = swift_slowAlloc();
          *v16 = 0;
          v19 = "The checkpoint is not compatible with this device. Ignoring the checkpoint...";
          goto LABEL_23;
        }

LABEL_29:
        v5 = 0;
        goto LABEL_30;
      }

      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v20 = type metadata accessor for Logger();
      __swift_project_value_buffer(v20, logger);
      v14 = Logger.logObject.getter();
      v18 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v14, v18))
      {
        goto LABEL_29;
      }

      v16 = swift_slowAlloc();
      *v16 = 0;
      v19 = "The configuration is different than the one in the checkpoint. Ignoring the checkpoint...";
    }

    else
    {
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      __swift_project_value_buffer(v17, logger);
      v14 = Logger.logObject.getter();
      v18 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v14, v18))
      {
        goto LABEL_29;
      }

      v16 = swift_slowAlloc();
      *v16 = 0;
      v19 = "Number of input images does not match the samples in the checkpoint. Ignoring the checkpoint...";
    }

LABEL_23:
    _os_log_impl(&dword_1C1358000, v14, v18, v19, v16, 2u);
    v5 = 0;
LABEL_24:
    MEMORY[0x1C6902A30](v16, -1, -1);
LABEL_30:

    return v5;
  }

  return 0;
}

char *specialized PhotogrammetrySessionImpl.__allocating_init(id:input:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v212 = a1;
  v213 = type metadata accessor for UUID();
  v211 = *(v213 - 8);
  MEMORY[0x1EEE9AC00](v213);
  v209 = v185 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x1EEE9AC00](v204);
  v203 = v185 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v208 = (v185 - v8);
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v214 = v9;
  v215 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v205 = v185 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v207 = (v185 - v13);
  MEMORY[0x1EEE9AC00](v14);
  v206 = (v185 - v15);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v185 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = v185 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = (v185 - v23);
  v25 = type metadata accessor for PhotogrammetrySession.Configuration(0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = v185 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = v185 - v29;
  MEMORY[0x1EEE9AC00](v31);
  v33 = v185 - v32;
  v34 = v210;
  specialized static PhotogrammetrySessionImpl.verifyFreeStorageForFolderInputOrThrow(inputFolder:configuration:)(a2, a3);
  if (v34)
  {
    outlined destroy of PhotogrammetrySession.Request(a3, type metadata accessor for PhotogrammetrySession.Configuration);
    (*(v215 + 8))(a2, v214);
    (*(v211 + 8))(v212, v213);
    return v21;
  }

  v198 = v33;
  v199 = v21;
  v200 = v25;
  v201 = v24;
  v210 = v18;
  v196 = v27;
  v197 = v30;
  v202 = a3;
  v35 = specialized static PhotogrammetrySessionImpl.containsMinimalNumberOfImages(_:)(a2);
  v36 = a2;
  v38 = v213;
  v39 = v202;
  v40 = v215;
  v195 = v36;
  if (!v35)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v66 = type metadata accessor for Logger();
    __swift_project_value_buffer(v66, logger);
    v67 = v207;
    v68 = v214;
    v209 = *(v40 + 16);
    v210 = (v40 + 16);
    (v209)(v207, v36, v214);
    v69 = Logger.logObject.getter();
    v70 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v69, v70))
    {
      v71 = v67;
      v72 = swift_slowAlloc();
      v208 = swift_slowAlloc();
      v217 = v208;
      *v72 = 141558274;
      *(v72 + 4) = 1752392040;
      *(v72 + 12) = 2080;
      lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
      v73 = dispatch thunk of CustomStringConvertible.description.getter();
      v75 = v74;
      v76 = v71;
      v38 = v213;
      v215 = *(v40 + 8);
      (v215)(v76, v68);
      v77 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v73, v75, &v217);
      v39 = v202;

      *(v72 + 14) = v77;
      _os_log_impl(&dword_1C1358000, v69, v70, "The given URL didn't have enough images to reconstruct: %{mask.hash}s", v72, 0x16u);
      v78 = v208;
      __swift_destroy_boxed_opaque_existential_1(v208);
      MEMORY[0x1C6902A30](v78, -1, -1);
      MEMORY[0x1C6902A30](v72, -1, -1);
    }

    else
    {

      v215 = *(v40 + 8);
      (v215)(v67, v68);
    }

    v87 = v212;
    type metadata accessor for PhotogrammetrySession.Error(0);
    lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type PhotogrammetrySession.Error and conformance PhotogrammetrySession.Error, type metadata accessor for PhotogrammetrySession.Error, protocol conformance descriptor for PhotogrammetrySession.Error);
    v21 = swift_allocError();
    v88 = v195;
    (v209)(v89, v195, v68);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    outlined destroy of PhotogrammetrySession.Request(v39, type metadata accessor for PhotogrammetrySession.Configuration);
    (v215)(v88, v68);
    (*(v211 + 8))(v87, v38);
    return v21;
  }

  v193 = 0;
  v41 = type metadata accessor for PhotogrammetrySession.Configuration();
  v190 = v185;
  v42 = *(v41 - 1);
  MEMORY[0x1EEE9AC00](v41);
  v207 = v43;
  v44 = (v43 + 15) & 0xFFFFFFFFFFFFFFF0;
  v45 = v198;
  outlined init with copy of PhotogrammetrySession.Request(v39, v198, type metadata accessor for PhotogrammetrySession.Configuration);
  PhotogrammetrySession.Configuration.init(_:)(v45);
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v46 = type metadata accessor for Logger();
  v47 = __swift_project_value_buffer(v46, logger);
  v187 = v185;
  v48 = MEMORY[0x1EEE9AC00](v47);
  v49 = v185 - v44;
  v50 = *(v42 + 16);
  v198 = v185 - v44;
  v50(v185 - v44, v185 - v44, v41, v48);
  v194 = v47;
  v51 = Logger.logObject.getter();
  v52 = static os_log_type_t.default.getter();
  v53 = os_log_type_enabled(v51, v52);
  v192 = v42 + 16;
  v191 = v50;
  if (v53)
  {
    v54 = v42;
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v186 = v56;
    v185[1] = v185;
    v217 = v56;
    *v55 = 136315138;
    v57 = MEMORY[0x1EEE9AC00](v56);
    v50(v185 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0), v49, v41, v57);
    v59 = String.init<A>(describing:)();
    v60 = v52;
    v62 = v61;
    v188 = *(v54 + 8);
    v188(v49, v41);
    v63 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, v62, &v217);

    v64 = v55;
    v42 = v54;
    v36 = v195;
    *(v64 + 1) = v63;
    _os_log_impl(&dword_1C1358000, v51, v60, "Using internal session config = %s", v64, 0xCu);
    v65 = v186;
    __swift_destroy_boxed_opaque_existential_1(v186);
    MEMORY[0x1C6902A30](v65, -1, -1);
    MEMORY[0x1C6902A30](v64, -1, -1);
  }

  else
  {

    v188 = *(v42 + 8);
    v188(v49, v41);
  }

  v79 = v214;
  v80 = v199;
  v81 = v208;
  outlined init with copy of [String : String](v202 + *(v200 + 28), v208, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v82 = v215;
  v83 = (*(v215 + 48))(v81, 1, v79);
  v208 = v41;
  v84 = v210;
  v85 = v201;
  v189 = v42;
  if (v83 == 1)
  {
    outlined destroy of BodyTrackingComponent?(v81, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v86 = v82;
  }

  else
  {
    v90.n128_f64[0] = (*(v82 + 32))(v201, v81, v79);
    v86 = v82;
    if (specialized static PhotogrammetrySessionImpl.isCheckpointDirectoryValidForResumingReconstruction(checkpointDirectory:inputURL:internalConfiguration:)(v85, v36, v198, v90))
    {
      v91 = v80;
      v199 = *(v82 + 16);
      v199(v80, v85, v79);
      v92 = Logger.logObject.getter();
      v93 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v92, v93))
      {
        v94 = v82;
        v95 = swift_slowAlloc();
        v96 = swift_slowAlloc();
        v217 = v96;
        *v95 = 141558274;
        *(v95 + 4) = 1752392040;
        *(v95 + 12) = 2080;
        lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
        v97 = dispatch thunk of CustomStringConvertible.description.getter();
        v98 = v79;
        v100 = v99;
        v101 = *(v94 + 8);
        v101(v91, v98);
        v102 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v97, v100, &v217);

        *(v95 + 14) = v102;
        _os_log_impl(&dword_1C1358000, v92, v93, "Resuming internal photogrammetry session from checkpointDirectory = %{mask.hash}s", v95, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v96);
        MEMORY[0x1C6902A30](v96, -1, -1);
        v103 = v95;
        v85 = v201;
        MEMORY[0x1C6902A30](v103, -1, -1);
      }

      else
      {

        v101 = *(v82 + 8);
        v104 = (v101)(v91, v79);
      }

      v105 = MEMORY[0x1EEE9AC00](v104);
      v191(v185 - ((v106 + 15) & 0xFFFFFFFFFFFFFFF0), v198, v208, v105);
      type metadata accessor for PhotogrammetrySession();
      swift_allocObject();
      v107 = v193;
      v108 = PhotogrammetrySession.init(configuration:)();
      if (!v107)
      {
        v119 = v108;
        v210 = v101;
        v101(v85, v214);
        v120 = v211;
        v121 = v209;
LABEL_36:
        v143 = v212;
        (*(v120 + 16))(v121, v212, v213);
        v144 = v197;
        outlined init with copy of PhotogrammetrySession.Request(v202, v197, type metadata accessor for PhotogrammetrySession.Configuration);
        type metadata accessor for PhotogrammetrySessionImpl(0);
        v21 = swift_allocObject();

        PhotogrammetrySessionImpl.init(id:using:configuration:)(v121, v119, v144);
        type metadata accessor for ImageHelper();

        *&v21[OBJC_IVAR____TtC17RealityFoundation25PhotogrammetrySessionImpl_sortedImageFiles] = static ImageHelper.enumerateImageFilesInFolderShallowly(_:sorted:)(v36, 1);

        specialized static ImageHelper.logFilenames(files:)(v181);

        v188(v198, v208);
        PhotogrammetrySessionImpl.logAnalyticsEvents(sourceType:)(0);
        outlined destroy of PhotogrammetrySession.Request(v202, type metadata accessor for PhotogrammetrySession.Configuration);
        v210(v36, v214);
        (*(v120 + 8))(v143, v213);

        return v21;
      }

      v193 = 0;
      v109 = v107;
      v110 = Logger.logObject.getter();
      v111 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v110, v111))
      {
        v112 = swift_slowAlloc();
        v113 = swift_slowAlloc();
        v217 = v113;
        *v112 = 136446210;
        v216 = v107;
        v114 = v107;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
        v115 = String.init<A>(describing:)();
        v117 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v115, v116, &v217);

        *(v112 + 4) = v117;
        _os_log_impl(&dword_1C1358000, v110, v111, "Resuming internal photogrammetry session failed with %{public}s", v112, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v113);
        MEMORY[0x1C6902A30](v113, -1, -1);
        MEMORY[0x1C6902A30](v112, -1, -1);

        v86 = v215;
        v118 = v201;
      }

      else
      {

        v86 = v215;
        v118 = v85;
      }

      v79 = v214;
      v101(v118, v214);
      v84 = v210;
    }

    else
    {
      (*(v82 + 8))(v85, v79);
    }
  }

  v199 = *(v86 + 16);
  v199(v84, v36, v79);
  v122 = v86;
  v123 = Logger.logObject.getter();
  v124 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v123, v124))
  {
    v125 = v84;
    v126 = swift_slowAlloc();
    v201 = swift_slowAlloc();
    v217 = v201;
    *v126 = 141558274;
    *(v126 + 4) = 1752392040;
    *(v126 + 12) = 2080;
    lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
    v127 = dispatch thunk of CustomStringConvertible.description.getter();
    v129 = v128;
    v210 = *(v122 + 8);
    v210(v125, v214);
    v130 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v127, v129, &v217);
    v131 = v36;
    v132 = v130;
    v79 = v214;

    *(v126 + 14) = v132;
    v36 = v131;
    _os_log_impl(&dword_1C1358000, v123, v124, "Creating internal photogrammetry session from imageURL = %{mask.hash}s", v126, 0x16u);
    v133 = v201;
    __swift_destroy_boxed_opaque_existential_1(v201);
    MEMORY[0x1C6902A30](v133, -1, -1);
    MEMORY[0x1C6902A30](v126, -1, -1);
  }

  else
  {

    v210 = *(v122 + 8);
    v210(v84, v79);
  }

  v134 = v191;
  v135 = (v199)(v206, v36, v79);
  v136 = MEMORY[0x1EEE9AC00](v135);
  v138 = v198;
  v21 = v208;
  v134(v185 - ((v137 + 15) & 0xFFFFFFFFFFFFFFF0), v198, v208, v136);
  type metadata accessor for PhotogrammetrySession();
  swift_allocObject();
  v139 = v193;
  v140 = PhotogrammetrySession.init(imagesURL:configuration:)();
  v121 = v209;
  if (!v139)
  {
    v119 = v140;
    v120 = v211;
    v36 = v195;
    goto LABEL_36;
  }

  v188(v138, v21);
  LODWORD(v209) = 0;
  v142 = v211;
  v141 = v212;
  v217 = v139;
  v145 = type metadata accessor for PhotogrammetrySession.Error();
  v146 = *(v145 - 8);
  MEMORY[0x1EEE9AC00](v145);
  v148 = v185 - ((v147 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = v139;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v150 = swift_dynamicCast();
  v151 = v213;
  if (!v150)
  {
    goto LABEL_52;
  }

  v208 = v185;
  v152 = (*(v146 + 88))(v148, v145);
  v153 = v152;
  if (MEMORY[0x1E6998308] && v152 == *MEMORY[0x1E6998308])
  {

    v154 = v196;
    outlined init with copy of PhotogrammetrySession.Request(v202, v196, type metadata accessor for PhotogrammetrySession.Configuration);
    v155 = Logger.logObject.getter();
    v156 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v155, v156))
    {
      v157 = swift_slowAlloc();
      v207 = swift_slowAlloc();
      v216 = v207;
      *v157 = 141558274;
      *(v157 + 4) = 1752392040;
      *(v157 + 12) = 2080;
      v158 = v154 + *(v200 + 28);
      LODWORD(v206) = v156;
      outlined init with copy of [String : String](v158, v203, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      v159 = String.init<A>(describing:)();
      v161 = v160;
      outlined destroy of PhotogrammetrySession.Request(v154, type metadata accessor for PhotogrammetrySession.Configuration);
      v162 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v159, v161, &v216);
      v142 = v211;

      *(v157 + 14) = v162;
      _os_log_impl(&dword_1C1358000, v155, v206, "Internal photogrammetry session init failed for checkpointDirectory = %{mask.hash}s", v157, 0x16u);
      v163 = v207;
      __swift_destroy_boxed_opaque_existential_1(v207);
      MEMORY[0x1C6902A30](v163, -1, -1);
      v164 = v157;
      v151 = v213;
      MEMORY[0x1C6902A30](v164, -1, -1);
    }

    else
    {

      outlined destroy of PhotogrammetrySession.Request(v154, type metadata accessor for PhotogrammetrySession.Configuration);
    }

LABEL_54:
    lazy protocol witness table accessor for type PhotogrammetrySession.Error and conformance PhotogrammetrySession.Error();
    swift_allocError();
    (*(v146 + 104))(v180, v153, v145);
    swift_willThrow();
    outlined destroy of PhotogrammetrySession.Request(v202, type metadata accessor for PhotogrammetrySession.Configuration);
    v210(v195, v214);
    (*(v142 + 8))(v212, v151);

LABEL_55:
    if (!v209)
    {
      return v21;
    }

LABEL_56:

    return v21;
  }

  if (!MEMORY[0x1E6998300] || v152 != *MEMORY[0x1E6998300])
  {
    if (MEMORY[0x1E69982F8] && v152 == *MEMORY[0x1E69982F8])
    {

      v176 = Logger.logObject.getter();
      v177 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v176, v177))
      {
        v178 = swift_slowAlloc();
        *v178 = 0;
        _os_log_impl(&dword_1C1358000, v176, v177, "Internal photogrammetry session init failed!", v178, 2u);
        v179 = v178;
        v151 = v213;
        MEMORY[0x1C6902A30](v179, -1, -1);
      }

      goto LABEL_54;
    }

    (*(v146 + 8))(v148, v145);
    v141 = v212;
LABEL_52:

    swift_willThrow();
    outlined destroy of PhotogrammetrySession.Request(v202, type metadata accessor for PhotogrammetrySession.Configuration);
    v210(v195, v214);
    (*(v142 + 8))(v141, v151);
    goto LABEL_55;
  }

  v165 = v214;
  v166 = (v215 + 16);
  v167 = v205;
  v199(v205, v195, v214);
  v168 = Logger.logObject.getter();
  v169 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v168, v169))
  {
    v170 = swift_slowAlloc();
    v206 = swift_slowAlloc();
    v216 = v206;
    *v170 = 141558274;
    *(v170 + 4) = 1752392040;
    *(v170 + 12) = 2080;
    lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
    v171 = dispatch thunk of CustomStringConvertible.description.getter();
    v207 = v166;
    v173 = v172;
    v210(v167, v165);
    v174 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v171, v173, &v216);

    *(v170 + 14) = v174;
    _os_log_impl(&dword_1C1358000, v168, v169, "Internal photogrammetry session init failed for imageURL = %{mask.hash}s", v170, 0x16u);
    v175 = v206;
    __swift_destroy_boxed_opaque_existential_1(v206);
    MEMORY[0x1C6902A30](v175, -1, -1);
    MEMORY[0x1C6902A30](v170, -1, -1);
  }

  else
  {

    v210(v167, v165);
  }

  v182 = v212;
  type metadata accessor for PhotogrammetrySession.Error(0);
  lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type PhotogrammetrySession.Error and conformance PhotogrammetrySession.Error, type metadata accessor for PhotogrammetrySession.Error, protocol conformance descriptor for PhotogrammetrySession.Error);
  swift_allocError();
  v183 = v195;
  v199(v184, v195, v165);
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  outlined destroy of PhotogrammetrySession.Request(v202, type metadata accessor for PhotogrammetrySession.Configuration);
  v210(v183, v165);
  (*(v211 + 8))(v182, v213);

  if (v209)
  {
    goto LABEL_56;
  }

  return v21;
}

uint64_t specialized static PhotogrammetrySessionImpl.verifyFreeStorageForSequenceInputOrThrow(configuration:)(uint64_t a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v37 - v5;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v37 - v12;
  if (one-time initialization token for requiredBytesForImagesCaptureDirectory != -1)
  {
    swift_once();
  }

  v14 = 3 * static PhotogrammetryFileHelpers.requiredBytesForImagesCaptureDirectory;
  if ((static PhotogrammetryFileHelpers.requiredBytesForImagesCaptureDirectory * 3) >> 64 != (3 * static PhotogrammetryFileHelpers.requiredBytesForImagesCaptureDirectory) >> 63)
  {
    __break(1u);
LABEL_21:
    swift_once();
    goto LABEL_6;
  }

  v15 = type metadata accessor for PhotogrammetrySession.Configuration(0);
  outlined init with copy of [String : String](a1 + *(v15 + 28), v6, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v2 = *(v8 + 48);
  if (v2(v6, 1, v7) != 1)
  {
    (*(v8 + 32))(v13, v6, v7);
    goto LABEL_9;
  }

  if (one-time initialization token for temporaryDirectory != -1)
  {
    goto LABEL_21;
  }

LABEL_6:
  v16 = __swift_project_value_buffer(v7, static PhotogrammetryFileHelpers.temporaryDirectory);
  (*(v8 + 16))(v13, v16, v7);
  if (v2(v6, 1, v7) != 1)
  {
    outlined destroy of BodyTrackingComponent?(v6, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  }

LABEL_9:
  specialized static PhotogrammetryFileHelpers.ensureDirectoryExists(directory:)(v13);
  if (v1 || specialized static PhotogrammetryFileHelpers.checkIfSufficientStorageSpace(requiredBytes:directory:)(v14, v13))
  {
    return (*(v8 + 8))(v13, v7);
  }

  v19 = v17;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  __swift_project_value_buffer(v20, logger);
  (*(v8 + 16))(v10, v13, v7);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v39 = v22;
    v40 = v21;
    v23 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v41 = v38;
    *v23 = 141558530;
    *(v23 + 4) = 1752392040;
    *(v23 + 12) = 2080;
    lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    v26 = v25;
    v27 = *(v8 + 8);
    v27(v10, v7);
    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v26, &v41);

    *(v23 + 14) = v28;
    *(v23 + 22) = 2082;
    if (one-time initialization token for byteFormatter != -1)
    {
      swift_once();
    }

    v29 = [static PhotogrammetryFileHelpers.byteFormatter stringFromByteCount_];
    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v31;

    v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v32, &v41);

    *(v23 + 24) = v33;
    v34 = v40;
    _os_log_impl(&dword_1C1358000, v40, v39, "Insufficient storage remaining in checkpointDirectory = %{mask.hash}s  Required bytes = %{public}s", v23, 0x20u);
    v35 = v38;
    swift_arrayDestroy();
    MEMORY[0x1C6902A30](v35, -1, -1);
    MEMORY[0x1C6902A30](v23, -1, -1);
  }

  else
  {

    v27 = *(v8 + 8);
    v27(v10, v7);
  }

  type metadata accessor for PhotogrammetrySession.Error(0);
  lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type PhotogrammetrySession.Error and conformance PhotogrammetrySession.Error, type metadata accessor for PhotogrammetrySession.Error, protocol conformance descriptor for PhotogrammetrySession.Error);
  swift_allocError();
  *v36 = v19;
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  return (v27)(v13, v7);
}

uint64_t specialized PhotogrammetrySessionImpl.isValidModelUrl(_:)(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((URL.isFileURL.getter() & 1) == 0)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, logger);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v9, v10))
    {
      goto LABEL_14;
    }

    v11 = swift_slowAlloc();
    *v11 = 0;
    v12 = "modelFile output URL must be a file URL!";
    goto LABEL_13;
  }

  if (URL.hasDirectoryPath.getter())
  {
    if (specialized static PhotogrammetryFileHelpers.isExistingDirectory(_:)(a1, v6))
    {
      if (!specialized static PhotogrammetryFileHelpers.isEmptyDirectory(_:)(v7))
      {
        if (one-time initialization token for logger != -1)
        {
          swift_once();
        }

        v8 = type metadata accessor for Logger();
        __swift_project_value_buffer(v8, logger);
        v9 = Logger.logObject.getter();
        v10 = static os_log_type_t.error.getter();
        if (!os_log_type_enabled(v9, v10))
        {
          goto LABEL_14;
        }

        v11 = swift_slowAlloc();
        *v11 = 0;
        v12 = "Existing directory output URL must be empty!";
LABEL_13:
        _os_log_impl(&dword_1C1358000, v9, v10, v12, v11, 2u);
        MEMORY[0x1C6902A30](v11, -1, -1);
LABEL_14:

        return 0;
      }
    }

    else
    {
      v30 = [objc_opt_self() defaultManager];
      v31 = URL.path.getter();
      v32 = MEMORY[0x1C68F3280](v31);

      v33 = [v30 fileExistsAtPath_];

      if (v33)
      {
        if (one-time initialization token for logger != -1)
        {
          swift_once();
        }

        v34 = type metadata accessor for Logger();
        __swift_project_value_buffer(v34, logger);
        v9 = Logger.logObject.getter();
        v10 = static os_log_type_t.error.getter();
        if (!os_log_type_enabled(v9, v10))
        {
          goto LABEL_14;
        }

        v11 = swift_slowAlloc();
        *v11 = 0;
        v12 = "Model output directory URL provided, but a non-directory already exists at this URL!";
        goto LABEL_13;
      }
    }

    return 1;
  }

  if (URL.pathExtension.getter() == 2053403509 && v15 == 0xE400000000000000)
  {
  }

  else
  {
    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v16 & 1) == 0)
    {
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v35 = type metadata accessor for Logger();
      __swift_project_value_buffer(v35, logger);
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v9, v10))
      {
        goto LABEL_14;
      }

      v11 = swift_slowAlloc();
      *v11 = 0;
      v12 = "Output URL must be specify a '.usdz' extension file!";
      goto LABEL_13;
    }
  }

  v17 = [objc_opt_self() defaultManager];
  v18 = URL.path.getter();
  v19 = MEMORY[0x1C68F3280](v18);

  v20 = [v17 fileExistsAtPath_];

  if (!v20)
  {
    return 1;
  }

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  __swift_project_value_buffer(v21, logger);
  (*(v3 + 16))(v5, a1, v2);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v37 = v25;
    *v24 = 141558274;
    *(v24 + 4) = 1752392040;
    *(v24 + 12) = 2080;
    lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    v28 = v27;
    (*(v3 + 8))(v5, v2);
    v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v28, &v37);

    *(v24 + 14) = v29;
    _os_log_impl(&dword_1C1358000, v22, v23, "A file already exists at url %{mask.hash}s and will not be overwritten!", v24, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v25);
    MEMORY[0x1C6902A30](v25, -1, -1);
    MEMORY[0x1C6902A30](v24, -1, -1);
  }

  else
  {

    (*(v3 + 8))(v5, v2);
  }

  return 0;
}

void specialized PhotogrammetrySessionImpl.throwIfInvalidRequests(_:)(uint64_t a1)
{
  v2 = type metadata accessor for PhotogrammetrySession.Request(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for URL();
  v17 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  if (v9)
  {
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = (v17 + 32);
    v12 = (v17 + 8);
    v13 = *(v3 + 72);
    do
    {
      outlined init with copy of PhotogrammetrySession.Request(v10, v5, type metadata accessor for PhotogrammetrySession.Request);
      if (swift_getEnumCaseMultiPayload())
      {
        outlined destroy of PhotogrammetrySession.Request(v5, type metadata accessor for PhotogrammetrySession.Request);
      }

      else
      {
        (*v11)(v8, v5, v6);
        if ((specialized PhotogrammetrySessionImpl.isValidModelUrl(_:)(v8) & 1) == 0)
        {
          type metadata accessor for PhotogrammetrySession.Error(0);
          lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type PhotogrammetrySession.Error and conformance PhotogrammetrySession.Error, type metadata accessor for PhotogrammetrySession.Error, protocol conformance descriptor for PhotogrammetrySession.Error);
          swift_allocError();
          v14 = v17 + 16;
          (*(v17 + 16))(v15, v8, v6);
          swift_storeEnumTagMultiPayload();
          swift_willThrow();
          (*(v14 - 8))(v8, v6);
          return;
        }

        (*v12)(v8, v6);
      }

      v10 += v13;
      --v9;
    }

    while (v9);
  }
}

uint64_t outlined destroy of PhotogrammetrySession.Request(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t partial apply for closure #1 in OutputPublisherMonitor.handleModelEntity(url:apiRequest:)(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for URL() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(type metadata accessor for PhotogrammetrySession.Request(0) - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(type metadata accessor for UUID() - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = *(v1 + 16);
  v14 = *(v1 + 24);
  v15 = *(v1 + v7);
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = partial apply for specialized closure #1 in ShaderCacheLoader.loadResource(forKey:);

  return closure #1 in OutputPublisherMonitor.handleModelEntity(url:apiRequest:)(a1, v13, v14, v1 + v6, v15, v1 + v9, v1 + v12);
}

uint64_t partial apply for closure #2 in OutputPublisherMonitor.handleModelEntity(url:apiRequest:)(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = partial apply for closure #1 in TextureResource.PartialContents.init(source:mipmaps:);

  return closure #2 in OutputPublisherMonitor.handleModelEntity(url:apiRequest:)(a1, v6, v7, v8, v1 + v5, v9);
}

uint64_t outlined init with copy of PhotogrammetrySession.Request(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t partial apply for closure #1 in OutputPublisherMonitor.handleProcessingCancelled()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for specialized closure #1 in ShaderCacheLoader.loadResource(forKey:);

  return closure #1 in OutputPublisherMonitor.handleProcessingCancelled()(a1, v4, v5, v6);
}

uint64_t partial apply for closure #1 in OutputPublisherMonitor.handleProcessingComplete()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for specialized closure #1 in ShaderCacheLoader.loadResource(forKey:);

  return closure #1 in OutputPublisherMonitor.handleProcessingComplete()(a1, v4, v5, v6);
}

unint64_t lazy protocol witness table accessor for type PhotogrammetrySession.Error and conformance PhotogrammetrySession.Error()
{
  result = lazy protocol witness table cache variable for type PhotogrammetrySession.Error and conformance PhotogrammetrySession.Error;
  if (!lazy protocol witness table cache variable for type PhotogrammetrySession.Error and conformance PhotogrammetrySession.Error)
  {
    v3 = type metadata accessor for PhotogrammetrySession.Error();
    result = swift_getWitnessTable(MEMORY[0x1EEE865A8], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PhotogrammetrySession.Error and conformance PhotogrammetrySession.Error);
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #1 in OutputPublisherMonitor.connectPublisher(_:)()
{
  v1 = *(type metadata accessor for PhotogrammetrySession.Output() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return closure #1 in closure #1 in OutputPublisherMonitor.connectPublisher(_:)(v2, v3);
}

double block_copy_helper_21(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t outlined assign with take of Any?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t outlined init with take of PhotogrammetrySession.Request(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t partial apply for closure #1 in PhotogrammetrySessionImpl.RequestMap.getStartTimestamp(for:)(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = type metadata accessor for PhotogrammetrySessionImpl.RequestMap.Entry(0);
  return MEMORY[0x1C68F2C00](a1 + *(v4 + 20), v3) & 1;
}

{
  return partial apply for closure #1 in PhotogrammetrySessionImpl.RequestMap.findRequest(for:)(a1) & 1;
}

uint64_t partial apply for specialized closure #1 in Atomic.store(_:)(void *a1)
{
  return partial apply for specialized closure #1 in Atomic.store(_:)(a1);
}

{
  v3 = **(v1 + 16);

  *a1 = v3;
}

uint64_t partial apply for closure #1 in AnalyticsManager.sendPhotogrammetrySessionInitEvent(event:)()
{
  v1 = *(type metadata accessor for AnalyticsManager.PhotogrammetrySessionInitEvent(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return closure #1 in AnalyticsManager.sendPhotogrammetrySessionInitEvent(event:)(v2);
}

uint64_t lazy protocol witness table accessor for type URL and conformance URL(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t partial apply for closure #2 in closure #1 in OutputPublisherMonitor.init(publisher:)(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy17RealityFoundation21PhotogrammetrySessionC6OutputO_GMd, &_sScS12ContinuationVy17RealityFoundation21PhotogrammetrySessionC6OutputO_GMR) - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return closure #2 in closure #1 in OutputPublisherMonitor.init(publisher:)(a1, v4, v5);
}

void partial apply for closure #4 in closure #1 in OutputPublisherMonitor.init(publisher:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy17RealityFoundation21PhotogrammetrySessionC6OutputO_GMd, &_sScS12ContinuationVy17RealityFoundation21PhotogrammetrySessionC6OutputO_GMR);

  closure #4 in closure #1 in OutputPublisherMonitor.init(publisher:)();
}

uint64_t objectdestroy_179Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy17RealityFoundation21PhotogrammetrySessionC6OutputO_GMd, &_sScS12ContinuationVy17RealityFoundation21PhotogrammetrySessionC6OutputO_GMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t partial apply for closure #3 in closure #1 in OutputPublisherMonitor.init(publisher:)(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy17RealityFoundation21PhotogrammetrySessionC6OutputO_GMd, &_sScS12ContinuationVy17RealityFoundation21PhotogrammetrySessionC6OutputO_GMR) - 8);
  v3 = *(v1 + 16);
  v4 = v1 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return a1(v3, v4);
}

uint64_t objectdestroy_134Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t partial apply for closure #1 in closure #1 in closure #3 in closure #1 in OutputPublisherMonitor.init(publisher:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for specialized closure #1 in ShaderCacheLoader.loadResource(forKey:);

  return closure #1 in closure #1 in closure #3 in closure #1 in OutputPublisherMonitor.init(publisher:)(a1, v4, v5, v6);
}

uint64_t partial apply for closure #1 in closure #2 in closure #1 in OutputPublisherMonitor.init(publisher:)()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy17RealityFoundation21PhotogrammetrySessionC6OutputO_GMd, &_sScS12ContinuationVy17RealityFoundation21PhotogrammetrySessionC6OutputO_GMR) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for PhotogrammetrySession.Output(0) - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return closure #1 in closure #2 in closure #1 in OutputPublisherMonitor.init(publisher:)(v0 + v2, v5);
}

void type metadata completion function for AsyncOutputIterator(uint64_t a1)
{
  type metadata accessor for UUID?(319, &lazy cache variable for type metadata for AsyncStream<PhotogrammetrySession.Output>.Iterator, type metadata accessor for PhotogrammetrySession.Output, MEMORY[0x1E69E8688]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void type metadata accessor for UUID?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t protocol witness for LocalizedError.errorDescription.getter in conformance AudioFileGroupResource.Error()
{
  v1 = 0xD000000000000050;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000064;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x206E776F6E6B6E55;
  }
}

void specialized Array.append<A>(contentsOf:)(uint64_t a1)
{
  specialized Array.append<A>(contentsOf:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), type metadata accessor for AccessibilityComponent.RotorTypeInternal);
}

{
  v2 = *(a1 + 16);
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

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v11, 1, v3);
  if (!*(a1 + 16))
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
    return;
  }

  v8 = *(v3 + 2);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 2) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

{
  specialized Array.append<A>(contentsOf:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), type metadata accessor for __RKEntityTriggerSpecification);
}

{
  specialized Array.append<A>(contentsOf:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), type metadata accessor for __RKEntityActionSpecification);
}

{
  v2 = *(a1 + 16);
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

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v11, 1, v3);
  if (!*(a1 + 16))
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss9CodingKey_pMd, &_ss9CodingKey_pMR);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v8 = v3[2];
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    v3[2] = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

{
  v2 = *(a1 + 16);
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

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 2);
  if ((*(v3 + 3) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[4 * v8 + 32], (a1 + 32), 4 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v9 = *(v3 + 2);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 2) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

{
  v2 = *(a1 + 16);
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

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 2);
  if ((*(v3 + 3) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[v8 + 32], (a1 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v9 = *(v3 + 2);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 2) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

{
  v2 = *(a1 + 16);
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

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v11, 1, v3);
  if (!*(a1 + 16))
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
    return;
  }

  v8 = *(v3 + 2);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 2) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

{
  v2 = *(a1 + 16);
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

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 2);
  if ((*(v3 + 3) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[8 * v8 + 32], (a1 + 32), 8 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v9 = *(v3 + 2);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 2) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

{
  specialized Array.append<A>(contentsOf:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), type metadata accessor for __RKEntityInteractionSpecification);
}

{
  v2 = *(a1 + 16);
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

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 2);
  if ((*(v3 + 3) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[16 * v8 + 32], (a1 + 32), 16 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v9 = *(v3 + 2);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 2) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

{
  v2 = *(a1 + 16);
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

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 2);
  if ((*(v3 + 3) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[32 * v8 + 32], (a1 + 32), 32 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v9 = *(v3 + 2);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 2) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

{
  v2 = *(a1 + 16);
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

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 2);
  if ((*(v3 + 3) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[16 * v8 + 32], (a1 + 32), 16 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v9 = *(v3 + 2);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 2) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

Swift::Int specialized Array.append<A>(contentsOf:)(Swift::Int result, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    result = String.UTF8View._foreignCount()();
    v3 = result;
  }

  else if ((a2 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v3 = result & 0xFFFFFFFFFFFFLL;
  }

  v4 = *v2;
  v5 = *(*v2 + 2);
  v6 = v5 + v3;
  if (__OFADD__(v5, v3))
  {
    __break(1u);
  }

  else
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || *(v4 + 3) >> 1 < v6)
    {
      if (v5 <= v6)
      {
        v8 = v5 + v3;
      }

      else
      {
        v8 = v5;
      }

      v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v8, 1, v4);
    }

    result = _StringGuts.copyUTF8(into:)();
    if (v9)
    {
      goto LABEL_22;
    }

    v10 = result;
    result = swift_bridgeObjectRelease_n();
    if (v10 >= v3)
    {
      if (v10 < 1)
      {
LABEL_17:
        *v2 = v4;
        return result;
      }

      v11 = *(v4 + 2);
      v12 = __OFADD__(v11, v10);
      v13 = v11 + v10;
      if (!v12)
      {
        *(v4 + 2) = v13;
        goto LABEL_17;
      }

      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
  return result;
}

void specialized Array.append<A>(contentsOf:)(unint64_t a1)
{
  specialized Array.append<A>(contentsOf:)(a1, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized Array._copyContents(initializing:));
}

{
  specialized Array.append<A>(contentsOf:)(a1, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized Array._copyContents(initializing:));
}

void specialized Array.append<A>(contentsOf:)(unint64_t a1, void (*a2)(void), uint64_t (*a3)(uint64_t, void, uint64_t))
{
  if (a1 >> 62)
  {
    v7 = __CocoaSet.count.getter();
  }

  else
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v3 >> 62))
  {
    if (!__OFADD__(*((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10), v7))
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (__OFADD__(__CocoaSet.count.getter(), v7))
  {
    goto LABEL_13;
  }

LABEL_5:
  a2();
  v8 = *v3;
  v9 = *v3 & 0xFFFFFFFFFFFFFF8;
  a3(v9 + 8 * *(v9 + 0x10) + 32, (*(v9 + 0x18) >> 1) - *(v9 + 0x10), a1);
  v11 = v10;

  if (v11 < v7)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v11 < 1)
  {
LABEL_9:
    *v3 = v8;
    return;
  }

  v12 = *(v9 + 16);
  v13 = __OFADD__(v12, v11);
  v14 = v12 + v11;
  if (!v13)
  {
    *(v9 + 16) = v14;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t a1)
{
  v5 = v1;
  ChildCount = REEntityGetChildCount();
  if (ChildCount < 0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v2 = ChildCount;
  if (ChildCount)
  {
    v8 = 0;
    while (v8 < REEntityGetChildCount())
    {
      if (v2 == ++v8)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
    goto LABEL_15;
  }

LABEL_6:
  if (!(*v5 >> 62))
  {
    if (!__OFADD__(*((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10), v2))
    {
      goto LABEL_8;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_16:
  if (__OFADD__(__CocoaSet.count.getter(), v2))
  {
    goto LABEL_18;
  }

LABEL_8:
  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)();
  v3 = *v5;
  v4 = *v5 & 0xFFFFFFFFFFFFFF8;
  v9 = *(v4 + 0x10);
  v10 = (*(v4 + 0x18) >> 1) - v9;
  v11 = specialized Sequence._copySequenceContents(initializing:)(&v19, v4 + 8 * v9 + 32, v10, a1);
  if (v11 < v2)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v11 >= 1)
  {
    v12 = *(v4 + 16);
    v13 = __OFADD__(v12, v11);
    v14 = v12 + v11;
    if (v13)
    {
      __break(1u);
LABEL_32:
      *(v2 + 16) = a1;
      goto LABEL_13;
    }

    *(v4 + 16) = v14;
  }

  if (v11 != v10)
  {
    goto LABEL_13;
  }

LABEL_20:
  a1 = *(v4 + 16);
  v16 = specialized Entity.ChildCollection.IndexingIterator.next()();
  if (v16)
  {
    while (1)
    {
      if (a1 + 1 > *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v18 = v16;
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v16 = v18;
      }

      v3 = *v5;
      v2 = *v5 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *(v2 + 0x18) >> 1)
      {
        v17 = *((*v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
      }

      else
      {
        v17 = a1;
      }

      while (v17 != a1)
      {
        *(v2 + 32 + 8 * a1++) = v16;
        v16 = specialized Entity.ChildCollection.IndexingIterator.next()();
        if (!v16)
        {
          goto LABEL_32;
        }
      }

      *(v2 + 16) = v17;
      a1 = v17;
    }
  }

LABEL_13:

  *v5 = v3;
  return result;
}

void specialized Array.append<A>(contentsOf:)(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *(a1 + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (swift_isUniquelyReferenced_nonNull_native() && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v5 = a2();
  if (!*(a1 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v10 = (*(v5 + 24) >> 1) - *(v5 + 16);
  a3(0);
  if (v10 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return;
  }

  v11 = *(v5 + 16);
  v12 = __OFADD__(v11, v4);
  v13 = v11 + v4;
  if (!v12)
  {
    *(v5 + 16) = v13;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
}

void MeshDescriptor.makeGeomMesh()(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  v59 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  LODWORD(v6) = *(v1 + 56);
  v60 = *(v1 + 72);
  v55 = *(v1 + 80);
  v56 = *(v1 + 88);
  v58 = *(v1 + 96);
  if (one-time initialization token for positions != -1)
  {
LABEL_108:
    swift_once();
  }

  if (*(v3 + 16) && (!HIBYTE(word_1EBEAD0B8) ? (v7 = 0) : (v7 = 256), v8 = specialized __RawDictionaryStorage.find<A>(_:)(static MeshBuffers.positions, *(&static MeshBuffers.positions + 1), v7 | word_1EBEAD0B8), (v9 & 1) != 0))
  {
    outlined init with copy of __REAssetService(*(v3 + 56) + 40 * v8, &v83);
    outlined init with take of BindableDataInternal(&v83, &v89);
    v51 = v6;
    v6 = *(&v90 + 1);
    v10 = v91;
    __swift_project_boxed_opaque_existential_1(&v89, *(&v90 + 1));
    v11 = *(v10 + 56);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
    v13 = v6;
    LODWORD(v6) = v51;
    v11(&v95, v12, v13, v10);
    __swift_destroy_boxed_opaque_existential_1(&v89);
  }

  else
  {
    v100 = 0;
    v98 = 0u;
    v99 = 0u;
    v96 = 0u;
    v97 = 0u;
    v95 = 0u;
  }

  v91 = v97;
  v92 = v98;
  v93 = v99;
  v94 = v100;
  v89 = v95;
  v90 = v96;
  if (!v95)
  {
    _s17RealityFoundation10MeshBufferVyACyxGqd__c7ElementQyd__RszAA09AttributeD0Rd__lufCs5SIMD3VySfG_AA05ArrayD0VyAJGTt1g5(MEMORY[0x1E69E7CC0], &v77);
    v85 = v79;
    v86 = v80;
    v87 = v81;
    v88 = v82;
    v83 = v77;
    v84 = v78;
    outlined destroy of BodyTrackingComponent?(&v83, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMd, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMR);
    if (*(&v87 + 1))
    {
      goto LABEL_11;
    }

LABEL_21:
    *a1 = 0;
    a1[1] = 0;
    *(a1 + 8) = 0;
    *(a1 + 18) = 1;
    return;
  }

  outlined destroy of BodyTrackingComponent?(&v89, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGSgMd, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGSgMR);
  if (!*(&v93 + 1))
  {
    goto LABEL_21;
  }

LABEL_11:
  if (*(v3 + 16) && (!HIBYTE(word_1EBEAD0B8) ? (v14 = 0) : (v14 = 256), v15 = specialized __RawDictionaryStorage.find<A>(_:)(static MeshBuffers.positions, *(&static MeshBuffers.positions + 1), v14 | word_1EBEAD0B8), (v16 & 1) != 0))
  {
    outlined init with copy of __REAssetService(*(v3 + 56) + 40 * v15, &v71);
    outlined init with take of BindableDataInternal(&v71, &v77);
    v52 = v4;
    v17 = v6;
    v6 = *(&v78 + 1);
    v18 = v79;
    __swift_project_boxed_opaque_existential_1(&v77, *(&v78 + 1));
    v19 = *(v18 + 56);
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
    v21 = v6;
    LODWORD(v6) = v17;
    v4 = v52;
    v19(&v83, v20, v21, v18);
    __swift_destroy_boxed_opaque_existential_1(&v77);
  }

  else
  {
    v88 = 0;
    v86 = 0u;
    v87 = 0u;
    v84 = 0u;
    v85 = 0u;
    v83 = 0u;
  }

  v79 = v85;
  v80 = v86;
  v81 = v87;
  v82 = v88;
  v77 = v83;
  v78 = v84;
  if (v83)
  {
    outlined destroy of BodyTrackingComponent?(&v77, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGSgMd, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGSgMR);
    v22 = *(&v81 + 1);
  }

  else
  {
    _s17RealityFoundation10MeshBufferVyACyxGqd__c7ElementQyd__RszAA09AttributeD0Rd__lufCs5SIMD3VySfG_AA05ArrayD0VyAJGTt1g5(MEMORY[0x1E69E7CC0], &v65);
    v74 = v68;
    v75 = v69;
    v76 = v70;
    v71 = v65;
    v72 = v66;
    v73 = v67;
    outlined destroy of BodyTrackingComponent?(&v71, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMd, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMR);
    v22 = *(&v75 + 1);
  }

  v57 = a1;
  if (v6 > 1)
  {
    if (v6 == 2)
    {
      v24 = *(v4 + 16);
      v25 = v24 / 3;
      v26 = v4;
      v27 = *(v5 + 16);
      v28 = v27 >> 2;
      v53 = v26;
      outlined copy of MeshDescriptor.Primitives(v26, v5, 2u);
      if (v24 >= 3)
      {
        v29 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v29 + 16) = v25;
        memset((v29 + 32), 3, v24 / 3);
      }

      else
      {
        v29 = MEMORY[0x1E69E7CC0];
      }

      v23 = v28 + v25;
      if (v27 >= 4)
      {
        v31 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v31 + 16) = v28;
        memset((v31 + 32), 4, v27 >> 2);
      }

      else
      {
        v31 = MEMORY[0x1E69E7CC0];
      }

      *&v71 = v29;
      specialized Array.append<A>(contentsOf:)(v31);
      *&v71 = v53;
      specialized Array.append<A>(contentsOf:)(v5);
    }

    else
    {
      v23 = 0;
    }
  }

  else if (v6)
  {
    v23 = *(v4 + 16);
    outlined copy of MeshDescriptor.Primitives(v4, v5, 1u);
  }

  else if (*(v4 + 16) >= 3uLL)
  {
    v23 = *(v4 + 16) / 3uLL;
    outlined copy of MeshDescriptor.Primitives(v4, v5, 0);
    v30 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(v30 + 16) = v23;
    memset((v30 + 32), 3, v23);
  }

  else
  {
    outlined copy of MeshDescriptor.Primitives(v4, v5, 0);
    v23 = 0;
  }

  if (v22 > 0xFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_110;
  }

  if (v22 < 0)
  {
LABEL_110:
    __break(1u);
    goto LABEL_111;
  }

  if (HIDWORD(v23))
  {
LABEL_111:
    __break(1u);
LABEL_112:
    __break(1u);
LABEL_113:
    __break(1u);
    goto LABEL_114;
  }

  v6 = REGeomModelDescriptorCreate();

  if (!v6)
  {
    *v57 = xmmword_1C18A4F10;
    *(v57 + 16) = 0;
    *(v57 + 18) = 1;
    return;
  }

  v54 = v22;
  v32 = MeshBufferDictionary.entries.getter(v3);
  v3 = v32;
  v5 = 0;
  a1 = v32 + 8;
  v33 = 1 << *(v32 + 32);
  v34 = -1;
  if (v33 < 64)
  {
    v34 = ~(-1 << v33);
  }

  v35 = v34 & v32[8];
  v4 = (v33 + 63) >> 6;
  while (v35)
  {
LABEL_51:
    outlined init with copy of AnyMeshBuffer(*(v3 + 56) + 40 * (__clz(__rbit64(v35)) | (v5 << 6)), &v71);
    *&v67 = v73;
    v65 = v71;
    v66 = v72;
    v37 = *(&v72 + 1);
    v38 = v73;
    __swift_project_boxed_opaque_existential_1(&v65, *(&v72 + 1));
    (*(v38 + 8))(&v61, v37, v38);
    v39 = v61;
    v40 = v62;
    if (one-time initialization token for triangleIndices != -1)
    {
      v44 = v61;
      swift_once();
      v39 = v44;
    }

    v35 &= v35 - 1;
    if (__PAIR128__(v40, v39) == static MeshBuffers.Identifier.triangleIndices)
    {
    }

    else
    {
      v41 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v41 & 1) == 0)
      {
        v42 = *(&v66 + 1);
        v43 = v67;
        __swift_project_boxed_opaque_existential_1(&v65, *(&v66 + 1));
        (*(v43 + 32))(&v61, v42, v43);
        if (v61 > 5u)
        {
          if (v61 > 8u)
          {
            if (v61 == 9)
            {
              if ((specialized addAttribute #1 <A>(_:_:_:) in OpaquePointer.addAttribute(_:)(&v65, @nonobjc REGeomModelDescriptorAddAttributeVector3F(_:_:_:_:_:), 0, @nonobjc REGeomModelDescriptorAddIndexedAttributeVector3F(_:_:_:_:_:_:_:), 0, v6) & 1) == 0)
              {
                goto LABEL_103;
              }
            }

            else if (v61 != 10 || (specialized addAttribute #1 <A>(_:_:_:) in OpaquePointer.addAttribute(_:)(&v65, @nonobjc REGeomModelDescriptorAddAttributeVector4F(_:_:_:_:_:), 0, @nonobjc REGeomModelDescriptorAddIndexedAttributeVector4F(_:_:_:_:_:_:_:), 0, v6) & 1) == 0)
            {
LABEL_103:
              RERelease();
              v46 = *(&v66 + 1);
              v47 = v67;
              __swift_project_boxed_opaque_existential_1(&v65, *(&v66 + 1));
              (*(v47 + 8))(&v61, v46, v47);

              outlined destroy of AnyMeshBuffer(&v65);
              v48 = v62;
              v49 = v63;
              if (v64)
              {
                v50 = 256;
              }

              else
              {
                v50 = 0;
              }

              *v57 = v61;
              *(v57 + 8) = v48;
              *(v57 + 16) = v50 | v49;
              *(v57 + 18) = 1;
              return;
            }
          }

          else if (v61 == 6)
          {
            if ((specialized addAttribute #1 <A>(_:_:_:) in OpaquePointer.addAttribute(_:)(&v65, @nonobjc REGeomModelDescriptorAddAttributeFloat(_:_:_:_:_:), 0, @nonobjc REGeomModelDescriptorAddIndexedAttributeFloat(_:_:_:_:_:_:_:), 0, v6) & 1) == 0)
            {
              goto LABEL_103;
            }
          }

          else if (v61 == 7)
          {
            if ((specialized addAttribute #1 <A>(_:_:_:) in OpaquePointer.addAttribute(_:)(&v65, @nonobjc REGeomModelDescriptorAddAttributeDouble(_:_:_:_:_:), 0, @nonobjc REGeomModelDescriptorAddIndexedAttributeDouble(_:_:_:_:_:_:_:), 0, v6) & 1) == 0)
            {
              goto LABEL_103;
            }
          }

          else if ((specialized addAttribute #1 <A>(_:_:_:) in OpaquePointer.addAttribute(_:)(&v65, @nonobjc REGeomModelDescriptorAddAttributeVector2F(_:_:_:_:_:), 0, @nonobjc REGeomModelDescriptorAddIndexedAttributeVector2F(_:_:_:_:_:_:_:), 0, v6) & 1) == 0)
          {
            goto LABEL_103;
          }
        }

        else if (v61 > 2u)
        {
          if (v61 == 3)
          {
            if ((specialized addAttribute #1 <A>(_:_:_:) in OpaquePointer.addAttribute(_:)(&v65, @nonobjc REGeomModelDescriptorAddAttributeInt8(_:_:_:_:_:), 0, @nonobjc REGeomModelDescriptorAddIndexedAttributeInt8(_:_:_:_:_:_:_:), 0, v6) & 1) == 0)
            {
              goto LABEL_103;
            }
          }

          else if (v61 == 4)
          {
            if ((specialized addAttribute #1 <A>(_:_:_:) in OpaquePointer.addAttribute(_:)(&v65, @nonobjc REGeomModelDescriptorAddAttributeInt16(_:_:_:_:_:), 0, @nonobjc REGeomModelDescriptorAddIndexedAttributeInt16(_:_:_:_:_:_:_:), 0, v6) & 1) == 0)
            {
              goto LABEL_103;
            }
          }

          else if ((specialized addAttribute #1 <A>(_:_:_:) in OpaquePointer.addAttribute(_:)(&v65, @nonobjc REGeomModelDescriptorAddAttributeInt32(_:_:_:_:_:), 0, @nonobjc REGeomModelDescriptorAddIndexedAttributeInt32(_:_:_:_:_:_:_:), 0, v6) & 1) == 0)
          {
            goto LABEL_103;
          }
        }

        else if (v61)
        {
          if (v61 == 1)
          {
            if ((specialized addAttribute #1 <A>(_:_:_:) in OpaquePointer.addAttribute(_:)(&v65, @nonobjc REGeomModelDescriptorAddAttributeUInt16(_:_:_:_:_:), 0, @nonobjc REGeomModelDescriptorAddIndexedAttributeUInt16(_:_:_:_:_:_:_:), 0, v6) & 1) == 0)
            {
              goto LABEL_103;
            }
          }

          else if ((specialized addAttribute #1 <A>(_:_:_:) in OpaquePointer.addAttribute(_:)(&v65, @nonobjc REGeomModelDescriptorAddAttributeUInt32(_:_:_:_:_:), 0, @nonobjc REGeomModelDescriptorAddIndexedAttributeUInt32(_:_:_:_:_:_:_:), 0, v6) & 1) == 0)
          {
            goto LABEL_103;
          }
        }

        else if ((specialized addAttribute #1 <A>(_:_:_:) in OpaquePointer.addAttribute(_:)(&v65, @nonobjc REGeomModelDescriptorAddAttributeUInt8(_:_:_:_:_:), 0, @nonobjc REGeomModelDescriptorAddIndexedAttributeUInt8(_:_:_:_:_:_:_:), 0, v6) & 1) == 0)
        {
          goto LABEL_103;
        }
      }
    }

    outlined destroy of AnyMeshBuffer(&v65);
  }

  while (1)
  {
    v36 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
      goto LABEL_108;
    }

    if (v36 >= v4)
    {
      break;
    }

    v35 = a1[v36];
    ++v5;
    if (v35)
    {
      v5 = v36;
      goto LABEL_51;
    }
  }

  String.utf8CString.getter();
  REGeomModelDescriptorSetName();

  if (v59)
  {
    REGeomModelDescriptorSetMaterialAssignmentsPerFace();
  }

  else
  {
    REGeomModelDescriptorSetMaterialAssignmentForModel();
  }

  if (!v60)
  {
    goto LABEL_101;
  }

  v45 = v58 * v54;
  if ((v58 * v54) >> 64 != (v58 * v54) >> 63)
  {
    goto LABEL_112;
  }

  if (!v45 || *(v56 + 16) != v45 || *(v55 + 16) != v45)
  {
    RERelease();
    *v57 = xmmword_1C18A4F10;
    *(v57 + 16) = 0;
    *(v57 + 18) = 1;
    return;
  }

  if (v58 < 0xFFFFFFFF80000000)
  {
    goto LABEL_113;
  }

  if (v58 <= 0x7FFFFFFF)
  {
    String.utf8CString.getter();
    REGeomModelDescriptorAddSkinningData();

LABEL_101:
    *v57 = v6;
    *(v57 + 8) = 0;
    *(v57 + 16) = 0;
    *(v57 + 18) = 0;
    return;
  }

LABEL_114:
  __break(1u);
}

uint64_t MeshJointInfluence.init(jointIndex:weight:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, float a3@<S0>)
{
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (result <= 0x7FFFFFFF)
  {
    *a2 = result;
    *(a2 + 4) = a3;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t MeshJointInfluence.jointIndex.setter(uint64_t result)
{
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (result <= 0x7FFFFFFF)
  {
    *v1 = result;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t (*MeshJointInfluence.jointIndex.modify(void *a1))(uint64_t result, char a2)
{
  *a1 = *v1;
  a1[1] = v1;
  return MeshJointInfluence.jointIndex.modify;
}

uint64_t MeshJointInfluence.jointIndex.modify(uint64_t result, char a2)
{
  v2 = *result;
  v3 = *result < 0xFFFFFFFF80000000;
  if (a2)
  {
    if (*result < 0xFFFFFFFF80000000)
    {
      __break(1u);
      goto LABEL_9;
    }

    v3 = v2 < 0x7FFFFFFF;
    if (v2 <= 0x7FFFFFFF)
    {
LABEL_7:
      **(result + 8) = v2;
      return result;
    }

    __break(1u);
  }

  if (v3)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v2 <= 0x7FFFFFFF)
  {
    goto LABEL_7;
  }

LABEL_10:
  __break(1u);
  return result;
}

float (*MeshJointInfluence.weight.modify(uint64_t a1))(float *a1)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 4);
  return MeshJointInfluence.weight.modify;
}

float MeshJointInfluence.weight.modify(float *a1)
{
  result = a1[2];
  *(*a1 + 4) = result;
  return result;
}

uint64_t MeshBuffers.Identifier.name.getter()
{
  v1 = *v0;

  return v1;
}

void one-time initialization function for positions()
{
  strcpy(&static MeshBuffers.Identifier.positions, "vertexPosition");
  unk_1EBEAD027 = -18;
  word_1EBEAD028 = 0;
}

{
  strcpy(&static MeshBuffers.positions, "vertexPosition");
  HIBYTE(static MeshBuffers.positions) = -18;
  word_1EBEAD0B8 = 0;
}

uint64_t static MeshBuffers.Identifier.positions.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for positions != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v2 = unk_1EBEAD020;
  v3 = word_1EBEAD028;
  v4 = HIBYTE(word_1EBEAD028);
  *a1 = static MeshBuffers.Identifier.positions;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 17) = v4;
}

void one-time initialization function for normals()
{
  strcpy(&static MeshBuffers.Identifier.normals, "vertexNormal");
  algn_1EBEAD038[5] = 0;
  *&algn_1EBEAD038[6] = -5120;
  word_1EBEAD040 = 0;
}

{
  strcpy(&static MeshBuffers.normals, "vertexNormal");
  algn_1EBEAD0C8[5] = 0;
  *&algn_1EBEAD0C8[6] = -5120;
  word_1EBEAD0D0 = 0;
}

uint64_t static MeshBuffers.Identifier.normals.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for normals != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v2 = *algn_1EBEAD038;
  v3 = word_1EBEAD040;
  v4 = HIBYTE(word_1EBEAD040);
  *a1 = static MeshBuffers.Identifier.normals;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 17) = v4;
}

void one-time initialization function for tangents()
{
  strcpy(&static MeshBuffers.Identifier.tangents, "vertexTangent");
  unk_1EBEAD056 = -4864;
  word_1EBEAD058 = 0;
}

{
  strcpy(&static MeshBuffers.tangents, "vertexTangent");
  unk_1EBEAD0E6 = -4864;
  word_1EBEAD0E8 = 0;
}

uint64_t static MeshBuffers.Identifier.tangents.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for tangents != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v2 = unk_1EBEAD050;
  v3 = word_1EBEAD058;
  v4 = HIBYTE(word_1EBEAD058);
  *a1 = static MeshBuffers.Identifier.tangents;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 17) = v4;
}

void one-time initialization function for bitangents()
{
  static MeshBuffers.Identifier.bitangents = 0x6942786574726576;
  *algn_1EBEAD068 = 0xEF746E65676E6174;
  word_1EBEAD070 = 0;
}

{
  static MeshBuffers.bitangents = 0x6942786574726576;
  *algn_1EBEAD0F8 = 0xEF746E65676E6174;
  word_1EBEAD100 = 0;
}

uint64_t static MeshBuffers.Identifier.bitangents.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for bitangents != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v2 = *algn_1EBEAD068;
  v3 = word_1EBEAD070;
  v4 = HIBYTE(word_1EBEAD070);
  *a1 = static MeshBuffers.Identifier.bitangents;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 17) = v4;
}

void one-time initialization function for textureCoordinates()
{
  static MeshBuffers.Identifier.textureCoordinates = 0x5655786574726576;
  unk_1EBEAD080 = 0xE800000000000000;
  word_1EBEAD088 = 0;
}

{
  static MeshBuffers.textureCoordinates = 0x5655786574726576;
  unk_1EBEAD110 = 0xE800000000000000;
  word_1EBEAD118 = 0;
}

uint64_t static MeshBuffers.Identifier.textureCoordinates.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for textureCoordinates != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v2 = unk_1EBEAD080;
  v3 = word_1EBEAD088;
  v4 = HIBYTE(word_1EBEAD088);
  *a1 = static MeshBuffers.Identifier.textureCoordinates;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 17) = v4;
}

void one-time initialization function for triangleIndices()
{
  strcpy(&static MeshBuffers.Identifier.triangleIndices, "indexTriangles");
  HIBYTE(static MeshBuffers.Identifier.triangleIndices) = -18;
  word_1EBEAD0A0 = 0;
}

{
  strcpy(&static MeshBuffers.triangleIndices, "indexTriangles");
  algn_1EBEAD128[7] = -18;
  word_1EBEAD130 = 0;
}

uint64_t static MeshBuffers.Identifier.triangleIndices.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for triangleIndices != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v2 = *(&static MeshBuffers.Identifier.triangleIndices + 1);
  v3 = word_1EBEAD0A0;
  v4 = HIBYTE(word_1EBEAD0A0);
  *a1 = static MeshBuffers.Identifier.triangleIndices;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 17) = v4;
}

uint64_t MeshBuffers.Identifier.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  if (*(v0 + 16))
  {
    v3 = 34;
  }

  else
  {
    v3 = 0;
  }

  if (*(v0 + 16))
  {
    v4 = 0xE100000000000000;
  }

  else
  {
    v4 = 0xE000000000000000;
  }

  MEMORY[0x1C68F3410](v1, v2);

  MEMORY[0x1C68F3410](v3, v4);

  return v3;
}

uint64_t static MeshBuffers.Identifier.== infix(_:_:)(uint64_t *a1, void *a2)
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

Swift::Int MeshBuffers.Identifier.hashValue.getter()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance MeshBuffers.Identifier()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MeshBuffers.Identifier()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance MeshBuffers.Identifier(uint64_t *a1, void *a2)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MeshBuffers.Identifier()
{
  v1 = *v0;
  v2 = v0[1];
  if (*(v0 + 16))
  {
    v3 = 34;
  }

  else
  {
    v3 = 0;
  }

  if (*(v0 + 16))
  {
    v4 = 0xE100000000000000;
  }

  else
  {
    v4 = 0xE000000000000000;
  }

  MEMORY[0x1C68F3410](v1, v2);

  MEMORY[0x1C68F3410](v3, v4);

  return v3;
}

uint64_t MeshBuffers.ElementType.genericAttributeDescriptor.getter()
{
  v1 = *v0;
  if (v1 > 5)
  {
    if (*v0 > 8u)
    {
      v8 = MEMORY[0x1E6998E70];
      if (v1 != 10)
      {
        v8 = MEMORY[0x1E6998ED0];
      }

      if (v1 == 9)
      {
        v6 = MEMORY[0x1E6998E68];
      }

      else
      {
        v6 = v8;
      }
    }

    else if (v1 == 6)
    {
      v6 = MEMORY[0x1E6998E58];
    }

    else
    {
      if (v1 == 7)
      {
        return 0;
      }

      v6 = MEMORY[0x1E6998E60];
    }
  }

  else
  {
    v2 = MEMORY[0x1E6998EA0];
    v3 = MEMORY[0x1E6998E88];
    v4 = MEMORY[0x1E6998E78];
    if (v1 != 4)
    {
      v4 = MEMORY[0x1E6998E80];
    }

    if (v1 != 3)
    {
      v3 = v4;
    }

    v5 = MEMORY[0x1E6998E90];
    if (v1 != 1)
    {
      v5 = MEMORY[0x1E6998E98];
    }

    if (*v0)
    {
      v2 = v5;
    }

    if (*v0 <= 2u)
    {
      v6 = v2;
    }

    else
    {
      v6 = v3;
    }
  }

  v9 = *v6;
  type metadata accessor for MeshAttributeDescriptor();
  result = swift_allocObject();
  *(result + 16) = v9;
  return result;
}

uint64_t BufferDescriptor.description.getter()
{
  v1 = *(v0 + 20);
  MEMORY[0x1C68F3410](*v0, *(v0 + 8));
  MEMORY[0x1C68F3410](8250, 0xE200000000000000);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1C68F3410](32, 0xE100000000000000);
  _print_unlocked<A, B>(_:_:)();
  if (v1)
  {
    v2 = 695216160;
  }

  else
  {
    v2 = 0;
  }

  if (v1)
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE000000000000000;
  }

  MEMORY[0x1C68F3410](v2, v3);

  return 0;
}

uint64_t MeshBuffers.Semantic.id.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 17);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 17) = v4;
}

uint64_t static MeshBuffers.positions.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for positions != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v2 = *(&static MeshBuffers.positions + 1);
  v3 = word_1EBEAD0B8;
  v4 = HIBYTE(word_1EBEAD0B8);
  *a1 = static MeshBuffers.positions;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 17) = v4;
}

uint64_t static MeshBuffers.normals.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for normals != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v2 = *algn_1EBEAD0C8;
  v3 = word_1EBEAD0D0;
  v4 = HIBYTE(word_1EBEAD0D0);
  *a1 = static MeshBuffers.normals;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 17) = v4;
}

uint64_t static MeshBuffers.tangents.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for tangents != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v2 = unk_1EBEAD0E0;
  v3 = word_1EBEAD0E8;
  v4 = HIBYTE(word_1EBEAD0E8);
  *a1 = static MeshBuffers.tangents;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 17) = v4;
}

uint64_t static MeshBuffers.bitangents.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for bitangents != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v2 = *algn_1EBEAD0F8;
  v3 = word_1EBEAD100;
  v4 = HIBYTE(word_1EBEAD100);
  *a1 = static MeshBuffers.bitangents;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 17) = v4;
}

uint64_t static MeshBuffers.textureCoordinates.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for textureCoordinates != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v2 = unk_1EBEAD110;
  v3 = word_1EBEAD118;
  v4 = HIBYTE(word_1EBEAD118);
  *a1 = static MeshBuffers.textureCoordinates;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 17) = v4;
}

uint64_t static MeshBuffers.triangleIndices.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for triangleIndices != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v2 = *algn_1EBEAD128;
  v3 = word_1EBEAD130;
  v4 = HIBYTE(word_1EBEAD130);
  *a1 = static MeshBuffers.triangleIndices;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 17) = v4;
}

unint64_t static MeshBuffers.custom<A>(_:type:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{

  v7._countAndFlagsBits = a1;
  v7._object = a2;
  result = specialized MeshBuffers.Identifier.BufferName.init(rawValue:)(v7);
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = result == 8;
  *(a3 + 17) = 0;
  return result;
}

void one-time initialization function for jointInfluences()
{
  static MeshBuffers.jointInfluences = 0xD00000000000001FLL;
  unk_1EBEAD140 = 0x80000001C18DD9B0;
  word_1EBEAD148 = 0;
}

{
  static MeshBuffers.Identifier.jointInfluences = 0xD00000000000001FLL;
  unk_1EBEAD170 = 0x80000001C18DD9B0;
  word_1EBEAD178 = 0;
}

uint64_t static MeshBuffers.jointInfluences.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for jointInfluences != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v2 = unk_1EBEAD140;
  v3 = word_1EBEAD148;
  v4 = HIBYTE(word_1EBEAD148);
  *a1 = static MeshBuffers.jointInfluences;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 17) = v4;
}

void one-time initialization function for jointInfluenceEndIndices()
{
  static MeshBuffers.jointInfluenceEndIndices = 0xD000000000000023;
  *algn_1EBEAD158 = 0x80000001C18DD9D0;
  word_1EBEAD160 = 0;
}

{
  static MeshBuffers.Identifier.jointInfluenceEndIndices = 0xD000000000000023;
  *algn_1EBEAD188 = 0x80000001C18DD9D0;
  word_1EBEAD190 = 0;
}

uint64_t static MeshBuffers.jointInfluenceEndIndices.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for jointInfluenceEndIndices != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v2 = *algn_1EBEAD158;
  v3 = word_1EBEAD160;
  v4 = HIBYTE(word_1EBEAD160);
  *a1 = static MeshBuffers.jointInfluenceEndIndices;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 17) = v4;
}

uint64_t static MeshBuffers.Identifier.jointInfluences.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for jointInfluences != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v2 = unk_1EBEAD170;
  v3 = word_1EBEAD178;
  v4 = HIBYTE(word_1EBEAD178);
  *a1 = static MeshBuffers.Identifier.jointInfluences;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 17) = v4;
}

uint64_t static MeshBuffers.Identifier.jointInfluenceEndIndices.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for jointInfluenceEndIndices != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v2 = *algn_1EBEAD188;
  v3 = word_1EBEAD190;
  v4 = HIBYTE(word_1EBEAD190);
  *a1 = static MeshBuffers.Identifier.jointInfluenceEndIndices;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 17) = v4;
}

Swift::Bool __swiftcall MeshBuffer.Iterator.getChunk()()
{
  v1 = v0;
  v2 = (v0[2])(*v0);
  v4 = v3;
  if (v3)
  {
    *v1 = v2;

    v1[1] = v4;
  }

  return v4 != 0;
}

uint64_t MeshBuffer.Iterator.next()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 16);
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v14 - v9;
  if (*(v2 + 8))
  {

    AnyIterator.next()();
    v11 = *(v5 - 8);
    if ((*(v11 + 48))(v10, 1, v5) == 1)
    {
      (*(v7 + 8))(v10, v6);
      if (MeshBuffer.Iterator.getChunk()())
      {
        MeshBuffer.Iterator.next()(a1, a2);
      }

      else
      {
        (*(v11 + 56))(a2, 1, 1, v5);
      }
    }

    else
    {

      (*(v11 + 32))(a2, v10, v5);
      return (*(v11 + 56))(a2, 0, 1, v5);
    }
  }

  else
  {
    v12 = *(*(v5 - 8) + 56);

    return v12(a2, 1, 1, v5, v8);
  }
}

BOOL MeshBuffer.makeIterator()@<W0>(uint64_t a1@<X8>)
{

  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = *(v1 + 48);
  return MeshBuffer.Iterator.getChunk()();
}

uint64_t _s17RealityFoundation10MeshBufferVyACyxGqd__c7ElementQyd__RszAA09AttributeD0Rd__lufCs5SIMD3VySfG_AA05ArrayD0VyAJGTt1g5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *a2 = closure #1 in MeshBuffer.init<A>(_:)specialized partial apply;
  *(a2 + 8) = v5;
  *(a2 + 16) = closure #2 in MeshBuffer.init<A>(_:)specialized partial apply;
  *(a2 + 24) = v6;
  *(a2 + 32) = closure #3 in MeshBuffer.init<A>(_:)specialized partial apply;
  *(a2 + 40) = v7;
  *(a2 + 48) = closure #4 in MeshBuffer.init<A>(_:)specialized partial apply;
  *(a2 + 56) = v8;
  *(a2 + 64) = 9;
  *(a2 + 72) = v4;
  *(a2 + 80) = 0;
  return swift_bridgeObjectRetain_n();
}

uint64_t _s17RealityFoundation10MeshBufferVyACyxGqd__c7ElementQyd__RszAA09AttributeD0Rd__lufCs4Int8V_AA05ArrayD0VyAIGTt1g5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *a2 = partial apply for specialized closure #1 in MeshBuffer.init<A>(_:);
  *(a2 + 8) = v5;
  *(a2 + 16) = type metadata completion function for _Proto_MeshDeformation_v1.PartFromCore;
  *(a2 + 24) = v6;
  *(a2 + 32) = partial apply for specialized closure #3 in MeshBuffer.init<A>(_:);
  *(a2 + 40) = v7;
  *(a2 + 48) = partial apply for specialized closure #4 in MeshBuffer.init<A>(_:);
  *(a2 + 56) = v8;
  *(a2 + 64) = 3;
  *(a2 + 72) = v4;
  *(a2 + 80) = 0;
  return swift_bridgeObjectRetain_n();
}

uint64_t _s17RealityFoundation10MeshBufferVyACyxGqd__c7ElementQyd__RszAA09AttributeD0Rd__lufCs4Int8V_AA08IndexingD0VyAIGTt1g5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 + 16);
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *a3 = __RKEntityLookAtCameraAction.reversed();
  *(a3 + 8) = v7;
  *(a3 + 16) = partial apply for specialized closure #2 in MeshBuffer.init<A>(_:);
  *(a3 + 24) = v8;
  *(a3 + 32) = partial apply for specialized closure #3 in MeshBuffer.init<A>(_:);
  *(a3 + 40) = v9;
  *(a3 + 48) = partial apply for specialized closure #4 in MeshBuffer.init<A>(_:);
  *(a3 + 56) = v10;
  *(a3 + 64) = 3;
  *(a3 + 72) = v6;
  *(a3 + 80) = 0;
  swift_bridgeObjectRetain_n();
  return swift_bridgeObjectRetain_n();
}

uint64_t _s17RealityFoundation10MeshBufferVyACyxGqd__c7ElementQyd__RszAA09AttributeD0Rd__lufCs5UInt8V_AA05ArrayD0VyAIGTt1g5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *a2 = partial apply for specialized closure #1 in MeshBuffer.init<A>(_:);
  *(a2 + 8) = v5;
  *(a2 + 16) = type metadata completion function for _Proto_MeshDeformation_v1.PartFromCore;
  *(a2 + 24) = v6;
  *(a2 + 32) = partial apply for specialized closure #3 in MeshBuffer.init<A>(_:);
  *(a2 + 40) = v7;
  *(a2 + 48) = partial apply for specialized closure #4 in MeshBuffer.init<A>(_:);
  *(a2 + 56) = v8;
  *(a2 + 64) = 0;
  *(a2 + 72) = v4;
  *(a2 + 80) = 0;
  return swift_bridgeObjectRetain_n();
}

uint64_t _s17RealityFoundation10MeshBufferVyACyxGqd__c7ElementQyd__RszAA09AttributeD0Rd__lufCs5UInt8V_AA08IndexingD0VyAIGTt1g5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 + 16);
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *a3 = __RKEntityLookAtCameraAction.reversed();
  *(a3 + 8) = v7;
  *(a3 + 16) = partial apply for specialized closure #2 in MeshBuffer.init<A>(_:);
  *(a3 + 24) = v8;
  *(a3 + 32) = partial apply for specialized closure #3 in MeshBuffer.init<A>(_:);
  *(a3 + 40) = v9;
  *(a3 + 48) = partial apply for specialized closure #4 in MeshBuffer.init<A>(_:);
  *(a3 + 56) = v10;
  *(a3 + 64) = 0;
  *(a3 + 72) = v6;
  *(a3 + 80) = 0;
  swift_bridgeObjectRetain_n();
  return swift_bridgeObjectRetain_n();
}

uint64_t _s17RealityFoundation10MeshBufferVyACyxGqd__c7ElementQyd__RszAA09AttributeD0Rd__lufCs5Int16V_AA05ArrayD0VyAIGTt1g5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *a2 = partial apply for specialized closure #1 in MeshBuffer.init<A>(_:);
  *(a2 + 8) = v5;
  *(a2 + 16) = type metadata completion function for _Proto_MeshDeformation_v1.PartFromCore;
  *(a2 + 24) = v6;
  *(a2 + 32) = partial apply for specialized closure #3 in MeshBuffer.init<A>(_:);
  *(a2 + 40) = v7;
  *(a2 + 48) = partial apply for specialized closure #4 in MeshBuffer.init<A>(_:);
  *(a2 + 56) = v8;
  *(a2 + 64) = 4;
  *(a2 + 72) = v4;
  *(a2 + 80) = 0;
  return swift_bridgeObjectRetain_n();
}

uint64_t _s17RealityFoundation10MeshBufferVyACyxGqd__c7ElementQyd__RszAA09AttributeD0Rd__lufCs5Int16V_AA08IndexingD0VyAIGTt1g5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 + 16);
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *a3 = __RKEntityLookAtCameraAction.reversed();
  *(a3 + 8) = v7;
  *(a3 + 16) = partial apply for specialized closure #2 in MeshBuffer.init<A>(_:);
  *(a3 + 24) = v8;
  *(a3 + 32) = partial apply for specialized closure #3 in MeshBuffer.init<A>(_:);
  *(a3 + 40) = v9;
  *(a3 + 48) = partial apply for specialized closure #4 in MeshBuffer.init<A>(_:);
  *(a3 + 56) = v10;
  *(a3 + 64) = 4;
  *(a3 + 72) = v6;
  *(a3 + 80) = 0;
  swift_bridgeObjectRetain_n();
  return swift_bridgeObjectRetain_n();
}

uint64_t _s17RealityFoundation10MeshBufferVyACyxGqd__c7ElementQyd__RszAA09AttributeD0Rd__lufCs6UInt16V_AA05ArrayD0VyAIGTt1g5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *a2 = partial apply for specialized closure #1 in MeshBuffer.init<A>(_:);
  *(a2 + 8) = v5;
  *(a2 + 16) = type metadata completion function for _Proto_MeshDeformation_v1.PartFromCore;
  *(a2 + 24) = v6;
  *(a2 + 32) = partial apply for specialized closure #3 in MeshBuffer.init<A>(_:);
  *(a2 + 40) = v7;
  *(a2 + 48) = partial apply for specialized closure #4 in MeshBuffer.init<A>(_:);
  *(a2 + 56) = v8;
  *(a2 + 64) = 1;
  *(a2 + 72) = v4;
  *(a2 + 80) = 0;
  return swift_bridgeObjectRetain_n();
}

uint64_t _s17RealityFoundation10MeshBufferVyACyxGqd__c7ElementQyd__RszAA09AttributeD0Rd__lufCs6UInt16V_AA08IndexingD0VyAIGTt1g5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 + 16);
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *a3 = __RKEntityLookAtCameraAction.reversed();
  *(a3 + 8) = v7;
  *(a3 + 16) = partial apply for specialized closure #2 in MeshBuffer.init<A>(_:);
  *(a3 + 24) = v8;
  *(a3 + 32) = partial apply for specialized closure #3 in MeshBuffer.init<A>(_:);
  *(a3 + 40) = v9;
  *(a3 + 48) = partial apply for specialized closure #4 in MeshBuffer.init<A>(_:);
  *(a3 + 56) = v10;
  *(a3 + 64) = 1;
  *(a3 + 72) = v6;
  *(a3 + 80) = 0;
  swift_bridgeObjectRetain_n();
  return swift_bridgeObjectRetain_n();
}

uint64_t _s17RealityFoundation10MeshBufferVyACyxGqd__c7ElementQyd__RszAA09AttributeD0Rd__lufCs5Int32V_AA05ArrayD0VyAIGTt1g5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *a2 = partial apply for specialized closure #1 in MeshBuffer.init<A>(_:);
  *(a2 + 8) = v5;
  *(a2 + 16) = type metadata completion function for _Proto_MeshDeformation_v1.PartFromCore;
  *(a2 + 24) = v6;
  *(a2 + 32) = partial apply for specialized closure #3 in MeshBuffer.init<A>(_:);
  *(a2 + 40) = v7;
  *(a2 + 48) = partial apply for specialized closure #4 in MeshBuffer.init<A>(_:);
  *(a2 + 56) = v8;
  *(a2 + 64) = 5;
  *(a2 + 72) = v4;
  *(a2 + 80) = 0;
  return swift_bridgeObjectRetain_n();
}

uint64_t _s17RealityFoundation10MeshBufferVyACyxGqd__c7ElementQyd__RszAA09AttributeD0Rd__lufCs5Int32V_AA08IndexingD0VyAIGTt1g5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 + 16);
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *a3 = __RKEntityLookAtCameraAction.reversed();
  *(a3 + 8) = v7;
  *(a3 + 16) = partial apply for specialized closure #2 in MeshBuffer.init<A>(_:);
  *(a3 + 24) = v8;
  *(a3 + 32) = partial apply for specialized closure #3 in MeshBuffer.init<A>(_:);
  *(a3 + 40) = v9;
  *(a3 + 48) = partial apply for specialized closure #4 in MeshBuffer.init<A>(_:);
  *(a3 + 56) = v10;
  *(a3 + 64) = 5;
  *(a3 + 72) = v6;
  *(a3 + 80) = 0;
  swift_bridgeObjectRetain_n();
  return swift_bridgeObjectRetain_n();
}

uint64_t _s17RealityFoundation10MeshBufferVyACyxGqd__c7ElementQyd__RszAA09AttributeD0Rd__lufCs6UInt32V_AA05ArrayD0VyAIGTt1g5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *a2 = partial apply for specialized closure #1 in MeshBuffer.init<A>(_:);
  *(a2 + 8) = v5;
  *(a2 + 16) = type metadata completion function for _Proto_MeshDeformation_v1.PartFromCore;
  *(a2 + 24) = v6;
  *(a2 + 32) = partial apply for specialized closure #3 in MeshBuffer.init<A>(_:);
  *(a2 + 40) = v7;
  *(a2 + 48) = partial apply for specialized closure #4 in MeshBuffer.init<A>(_:);
  *(a2 + 56) = v8;
  *(a2 + 64) = 2;
  *(a2 + 72) = v4;
  *(a2 + 80) = 0;
  return swift_bridgeObjectRetain_n();
}

uint64_t _s17RealityFoundation10MeshBufferVyACyxGqd__c7ElementQyd__RszAA09AttributeD0Rd__lufCs6UInt32V_AA08IndexingD0VyAIGTt1g5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 + 16);
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *a3 = __RKEntityLookAtCameraAction.reversed();
  *(a3 + 8) = v7;
  *(a3 + 16) = partial apply for specialized closure #2 in MeshBuffer.init<A>(_:);
  *(a3 + 24) = v8;
  *(a3 + 32) = partial apply for specialized closure #3 in MeshBuffer.init<A>(_:);
  *(a3 + 40) = v9;
  *(a3 + 48) = partial apply for specialized closure #4 in MeshBuffer.init<A>(_:);
  *(a3 + 56) = v10;
  *(a3 + 64) = 2;
  *(a3 + 72) = v6;
  *(a3 + 80) = 0;
  swift_bridgeObjectRetain_n();
  return swift_bridgeObjectRetain_n();
}

uint64_t _s17RealityFoundation10MeshBufferVyACyxGqd__c7ElementQyd__RszAA09AttributeD0Rd__lufCSf_AA05ArrayD0VySfGTt1g5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *a2 = partial apply for specialized closure #1 in MeshBuffer.init<A>(_:);
  *(a2 + 8) = v5;
  *(a2 + 16) = type metadata completion function for _Proto_MeshDeformation_v1.PartFromCore;
  *(a2 + 24) = v6;
  *(a2 + 32) = partial apply for specialized closure #3 in MeshBuffer.init<A>(_:);
  *(a2 + 40) = v7;
  *(a2 + 48) = partial apply for specialized closure #4 in MeshBuffer.init<A>(_:);
  *(a2 + 56) = v8;
  *(a2 + 64) = 6;
  *(a2 + 72) = v4;
  *(a2 + 80) = 0;
  return swift_bridgeObjectRetain_n();
}