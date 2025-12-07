void ConversationManagerHost.conversationManagerHostConnection(_:buzzMember:conversationUUID:)(void *a1, void *a2, uint64_t a3, const char *a4, SEL *a5)
{
  v43 = a2;
  v44 = a5;
  v40 = a4;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchPredicate();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = (&v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v42 = v5;
  v16 = *(v5 + OBJC_IVAR___CPConversationManagerHost_queue);
  *v15 = v16;
  (*(v13 + 104))(v15, *MEMORY[0x1E69E8020], v12);
  v17 = v16;
  LOBYTE(v16) = _dispatchPreconditionTest(_:)();
  (*(v13 + 8))(v15, v12);
  if (v16)
  {
    if (one-time initialization token for host == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, static Log.host);
  v19 = *(v9 + 16);
  v41 = a3;
  v20 = a3;
  v21 = v8;
  v19(v11, v20, v8);
  v22 = a1;
  v23 = v43;
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v45 = v43;
    *v26 = 138412802;
    *(v26 + 4) = v22;
    *(v26 + 12) = 2112;
    *(v26 + 14) = v23;
    *v27 = v22;
    v27[1] = v23;
    *(v26 + 22) = 2080;
    _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_4(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v39 = v24;
    v28 = v22;
    v29 = v23;
    v30 = dispatch thunk of CustomStringConvertible.description.getter();
    v32 = v31;
    (*(v9 + 8))(v11, v21);
    v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v32, &v45);

    *(v26 + 24) = v33;
    v34 = v39;
    _os_log_impl(&dword_1AEB26000, v39, v25, v40, v26, 0x20u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v27, -1, -1);
    v35 = v43;
    __swift_destroy_boxed_opaque_existential_1Tm(v43);
    MEMORY[0x1B27120C0](v35, -1, -1);
    MEMORY[0x1B27120C0](v26, -1, -1);
  }

  else
  {

    (*(v9 + 8))(v11, v8);
  }

  v36 = *(v42 + OBJC_IVAR___CPConversationManagerHost_dataSource);
  isa = UUID._bridgeToObjectiveC()().super.isa;
  [v36 *v44];
}

void ConversationManagerHost.conversationManagerHostConnection(_:updateConversationWith:participantPresentationContexts:)(void *a1, uint64_t a2, uint64_t a3)
{
  v36 = a3;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = (&v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(v3 + OBJC_IVAR___CPConversationManagerHost_queue);
  *v13 = v14;
  (*(v11 + 104))(v13, *MEMORY[0x1E69E8020], v10);
  v15 = v14;
  LOBYTE(v14) = _dispatchPreconditionTest(_:)();
  (*(v11 + 8))(v13, v10);
  if (v14)
  {
    if (one-time initialization token for host == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static Log.host);
  (*(v7 + 16))(v9, a2, v6);
  v17 = a1;
  v18 = v36;

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v34 = v22;
    v35 = swift_slowAlloc();
    v37 = v35;
    *v21 = 138412802;
    *(v21 + 4) = v17;
    *v22 = v17;
    *(v21 + 12) = 2080;
    _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_4(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v23 = v17;
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    v26 = v25;
    (*(v7 + 8))(v9, v6);
    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v26, &v37);

    *(v21 + 14) = v27;
    *(v21 + 22) = 2080;
    v28 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationParticipantPresentationContext, 0x1E69D8BA0);
    v29 = MEMORY[0x1B2710180](v18, v28);
    v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, &v37);

    *(v21 + 24) = v31;
    _os_log_impl(&dword_1AEB26000, v19, v20, "conversationManagerHostConnection: %@ conversationUUID: %s participantPresentationContexts: %s", v21, 0x20u);
    v32 = v34;
    outlined destroy of NSObject?(v34, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B27120C0](v32, -1, -1);
    v33 = v35;
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v33, -1, -1);
    MEMORY[0x1B27120C0](v21, -1, -1);
  }

  else
  {

    (*(v7 + 8))(v9, v6);
  }
}

void ConversationManagerHost.conversationManagerHostConnectionInvalidated(_:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v2 + OBJC_IVAR___CPConversationManagerHost_queue);
  *v7 = v8;
  (*(v5 + 104))(v7, *MEMORY[0x1E69E8020], v4);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v7, v4);
  if (v8)
  {
    if (one-time initialization token for host == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Log.host);
  v11 = a1;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    *(v14 + 4) = v11;
    *v15 = v11;
    v16 = v11;
    _os_log_impl(&dword_1AEB26000, v12, v13, "conversationManagerHostConnectionInvalidated: %@", v14, 0xCu);
    outlined destroy of NSObject?(v15, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B27120C0](v15, -1, -1);
    MEMORY[0x1B27120C0](v14, -1, -1);
  }

  swift_beginAccess();
  v17 = specialized Set._Variant.remove(_:)(v11);
  swift_endAccess();

  v18 = *(v2 + OBJC_IVAR___CPConversationManagerHost_dataSource);
  v19 = *&v11[direct field offset for XPCHostConnection.bundleIdentifier];
  v20 = *&v11[direct field offset for XPCHostConnection.bundleIdentifier + 8];
  v21 = MEMORY[0x1B270FF70](v19, v20);
  [v18 revokeBackgroundPipAuthorizationsForBundleID_];

  v22 = MEMORY[0x1B270FF70](v19, v20);
  [v18 resetActivitySessionSceneAssociationsForBundleID_];
}

void ConversationManagerHost.conversationManagerHostConnection(_:includeMetricsReport:onConversationWithUUID:)(void *a1, uint64_t a2, void *a3)
{
  v36 = a1;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = (&v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v35 = v3;
  v14 = *(v3 + OBJC_IVAR___CPConversationManagerHost_queue);
  *v13 = v14;
  (*(v11 + 104))(v13, *MEMORY[0x1E69E8020], v10);
  v15 = v14;
  LOBYTE(v14) = _dispatchPreconditionTest(_:)();
  (*(v11 + 8))(v13, v10);
  if (v14)
  {
    v34 = a2;
    if (one-time initialization token for host == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static Log.host);
  (*(v7 + 16))(v9, a3, v6);
  v17 = v36;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v36 = a3;
    v21 = v20;
    v22 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v37 = v33;
    *v21 = 138412546;
    *(v21 + 4) = v17;
    *v22 = v17;
    *(v21 + 12) = 2080;
    _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_4(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v23 = v17;
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    v26 = v25;
    (*(v7 + 8))(v9, v6);
    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v26, &v37);

    *(v21 + 14) = v27;
    _os_log_impl(&dword_1AEB26000, v18, v19, "conversationManagerHostConnection: %@ includeMetricsReport conversationUUID: %s", v21, 0x16u);
    outlined destroy of NSObject?(v22, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B27120C0](v22, -1, -1);
    v28 = v33;
    __swift_destroy_boxed_opaque_existential_1Tm(v33);
    MEMORY[0x1B27120C0](v28, -1, -1);
    MEMORY[0x1B27120C0](v21, -1, -1);
  }

  else
  {

    (*(v7 + 8))(v9, v6);
  }

  v29 = *(v35 + OBJC_IVAR___CPConversationManagerHost_dataSource);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v31 = UUID._bridgeToObjectiveC()().super.isa;
  [v29 includeMetricsReport:isa onConversationWithUUID:v31];
}

uint64_t ConversationManagerHost.conversationManagerHostConnection(_:didRegisterEndpointWithIdentifier:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v3 + OBJC_IVAR___CPConversationManagerHost_queue);
  *v10 = v11;
  (*(v8 + 104))(v10, *MEMORY[0x1E69E8020], v7);
  v12 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  (*(v8 + 8))(v10, v7);
  if (v11)
  {
    v13 = OBJC_IVAR___CPConversationManagerHost_pendingEndpointRequests;
    swift_beginAccess();

    v14 = a1;
    v15 = specialized MutableCollection._halfStablePartition(isSuffixElement:)((v3 + v13), a2, a3, v14);

    v16 = *(*(v3 + v13) + 16);
    if (v16 >= v15)
    {
      specialized Array.replaceSubrange<A>(_:with:)(v15, v16, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
      return swift_endAccess();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  result = swift_endAccess();
  __break(1u);
  return result;
}

void ConversationManagerHost.conversationManagerHostConnection(_:fetchEndpointWithIdentifier:activitySessionUUID:activity:completionHandler:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v52 = a7;
  v50 = a6;
  v53 = a5;
  v55 = a2;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v49 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v44 - v14;
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static Log.host);
  v47 = *(v11 + 16);
  v48 = a4;
  v47(v15, a4, v10);
  v17 = a1;

  v18 = a3;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  v54 = v18;

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v45 = v22;
    v46 = swift_slowAlloc();
    aBlock[0] = v46;
    *v21 = 138412802;
    *(v21 + 4) = v17;
    *v22 = v17;
    *(v21 + 12) = 2080;
    v23 = v17;
    *(v21 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v54, aBlock);
    *(v21 + 22) = 2080;
    _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_4(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    v26 = v25;
    (*(v11 + 8))(v15, v10);
    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v26, aBlock);

    *(v21 + 24) = v27;
    _os_log_impl(&dword_1AEB26000, v19, v20, "conversationManagerHostConnection: %@ fetchEndpoint identifier: %s activitySessionUUID: %s", v21, 0x20u);
    v28 = v45;
    outlined destroy of NSObject?(v45, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B27120C0](v28, -1, -1);
    v29 = v46;
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v29, -1, -1);
    MEMORY[0x1B27120C0](v21, -1, -1);
  }

  else
  {

    (*(v11 + 8))(v15, v10);
  }

  v30 = v51;
  v46 = *&v51[OBJC_IVAR___CPConversationManagerHost_dataSource];
  v31 = v49;
  v47(v49, v48, v10);
  v32 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v33 = (v12 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = (v33 + 23) & 0xFFFFFFFFFFFFFFF8;
  v35 = swift_allocObject();
  *(v35 + 16) = v30;
  (*(v11 + 32))(v35 + v32, v31, v10);
  v36 = (v35 + v33);
  v38 = v52;
  v37 = v53;
  *v36 = v50;
  v36[1] = v38;
  v39 = (v35 + v34);
  v40 = v54;
  *v39 = v55;
  v39[1] = v40;
  *(v35 + ((v34 + 23) & 0xFFFFFFFFFFFFFFF8)) = v37;
  aBlock[4] = partial apply for closure #1 in ConversationManagerHost.conversationManagerHostConnection(_:fetchEndpointWithIdentifier:activitySessionUUID:activity:completionHandler:);
  aBlock[5] = v35;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Set<TUConversationActivitySessionContainer>) -> ();
  aBlock[3] = &block_descriptor_9_3;
  v41 = _Block_copy(aBlock);

  v42 = v30;

  v43 = v37;

  [v46 fetchActiveActivitySessionContainersWithCompletion_];
  _Block_release(v41);
}

uint64_t closure #1 in ConversationManagerHost.conversationManagerHostConnection(_:fetchEndpointWithIdentifier:activitySessionUUID:activity:completionHandler:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v42 = a7;
  v43 = a8;
  v41 = a6;
  v38 = a4;
  v39 = a5;
  v37 = a2;
  v47 = type metadata accessor for DispatchWorkItemFlags();
  v49 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v45 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for DispatchQoS();
  v46 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v40 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = *&a2[OBJC_IVAR___CPConversationManagerHost_queue];
  (*(v14 + 16))(v16, a3, v13);
  v17 = (*(v14 + 80) + 24) & ~*(v14 + 80);
  v18 = (v15 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v18 + 23) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v19 + 15) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v20 + 23) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  *(v22 + 16) = a1;
  (*(v14 + 32))(v22 + v17, v16, v13);
  v23 = (v22 + v18);
  v24 = v39;
  *v23 = v38;
  v23[1] = v24;
  v25 = v37;
  *(v22 + v19) = v37;
  v26 = (v22 + v20);
  v27 = v42;
  *v26 = v41;
  v26[1] = v27;
  v28 = v43;
  *(v22 + v21) = v43;
  aBlock[4] = partial apply for closure #1 in closure #1 in ConversationManagerHost.conversationManagerHostConnection(_:fetchEndpointWithIdentifier:activitySessionUUID:activity:completionHandler:);
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_28;
  v29 = _Block_copy(aBlock);

  v30 = v25;

  v31 = v28;
  v32 = v40;
  static DispatchQoS.unspecified.getter();
  v50 = MEMORY[0x1E69E7CC0];
  _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_4(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  v33 = v45;
  v34 = v47;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27106E0](0, v32, v33, v29);
  _Block_release(v29);
  (*(v49 + 8))(v33, v34);
  (*(v46 + 8))(v32, v48);
}

uint64_t closure #1 in closure #1 in ConversationManagerHost.conversationManagerHostConnection(_:fetchEndpointWithIdentifier:activitySessionUUID:activity:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(void))
{
  v32 = a8;
  v15 = type metadata accessor for UUID();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = a2;
  v19 = specialized Sequence.contains(where:)(partial apply for closure #1 in closure #1 in closure #1 in ConversationManagerHost.conversationManagerHostConnection(_:fetchEndpointWithIdentifier:activitySessionUUID:activity:completionHandler:), v33, a1);
  if (v19)
  {
    MEMORY[0x1EEE9AC00](v19);
    *(&v31 - 8) = a6;
    *(&v31 - 7) = a7;
    v20 = v32;
    *(&v31 - 6) = a2;
    *(&v31 - 5) = v20;
    *(&v31 - 4) = a3;
    *(&v31 - 3) = a4;
    *(&v31 - 2) = a5;

    specialized ConversationManagerHost.withFirstConnection(where:_:)(partial apply for closure #2 in ConversationManagerHost.fetchEndpoint(for:activitySessionUUID:activity:completion:), (&v31 - 10), a5, a6, a7);
  }

  else
  {
    v32 = a3;
    if (one-time initialization token for host != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static Log.host);
    (*(v16 + 16))(v18, a2, v15);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v35 = v26;
      *v25 = 136315138;
      _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_4(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v27 = dispatch thunk of CustomStringConvertible.description.getter();
      v29 = v28;
      (*(v16 + 8))(v18, v15);
      v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v29, &v35);

      *(v25 + 4) = v30;
      _os_log_impl(&dword_1AEB26000, v23, v24, "No joined activity session container contains session with uuid: %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v26);
      MEMORY[0x1B27120C0](v26, -1, -1);
      MEMORY[0x1B27120C0](v25, -1, -1);
    }

    else
    {

      (*(v16 + 8))(v18, v15);
    }

    return v32(0);
  }
}

uint64_t closure #1 in closure #1 in closure #1 in ConversationManagerHost.conversationManagerHostConnection(_:fetchEndpointWithIdentifier:activitySessionUUID:activity:completionHandler:)(id *a1, uint64_t a2)
{
  v3 = [*a1 activitySessions];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationActivitySession, 0x1E69D8B58);
  lazy protocol witness table accessor for type TUConversationActivitySessionContainer and conformance NSObject(&lazy protocol witness table cache variable for type TUConversationActivitySession and conformance NSObject, &lazy cache variable for type metadata for TUConversationActivitySession, 0x1E69D8B58);
  v4 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v7[2] = a2;
  v5 = specialized Sequence.contains(where:)(partial apply for closure #1 in closure #1 in closure #1 in closure #1 in ConversationManagerHost.conversationManagerHostConnection(_:fetchEndpointWithIdentifier:activitySessionUUID:activity:completionHandler:), v7, v4);

  return v5 & 1;
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in ConversationManagerHost.conversationManagerHostConnection(_:fetchEndpointWithIdentifier:activitySessionUUID:activity:completionHandler:)(id *a1, uint64_t a2)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [*a1 UUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v8 = static UUID.== infix(_:_:)();
  (*(v4 + 8))(v6, v3);
  return v8 & 1;
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Set<TUConversationActivitySessionContainer>) -> ()(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationActivitySessionContainer, 0x1E69D8B60);
  lazy protocol witness table accessor for type TUConversationActivitySessionContainer and conformance NSObject(&lazy protocol witness table cache variable for type TUConversationActivitySessionContainer and conformance NSObject, &lazy cache variable for type metadata for TUConversationActivitySessionContainer, 0x1E69D8B60);
  v3 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v2(v3);
}

void closure #1 in ConversationManagerHost.listener(_:shouldAcceptNewConnection:)(uint64_t a1, void *a2)
{
  swift_beginAccess();
  specialized Set._Variant.insert(_:)(&v3, a2);
  swift_endAccess();
}

uint64_t closure #1 in CPConversationManagerDataSource.filteredActivitySessionContainers(from:connection:protectedStorage:)(uint64_t *a1, id *a2, uint64_t a3, char *a4, void *a5, uint64_t a6)
{
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = CPConversationManagerDataSource.filteredActivitySessionContainer(from:connection:protectedStorage:)(*a2, a4, a5, a6);
  v16 = [v15 groupUUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *a1;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v15, v14, isUniquelyReferenced_nonNull_native);
  result = (*(v12 + 8))(v14, v11);
  *a1 = v20;
  return result;
}

id CPConversationManagerDataSource.filteredActivitySessionContainer(from:connection:protectedStorage:)(id a1, char *a2, void *a3, uint64_t a4)
{
  v96 = a3;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v89 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *&a2[direct field offset for XPCHostConnection.bundleIdentifier];
  v104 = *&a2[direct field offset for XPCHostConnection.bundleIdentifier + 8];
  v108[0] = [objc_allocWithZone(MEMORY[0x1E69D8B60]) init];
  v12 = v108[0];
  v13 = [a1 UUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  isa = UUID._bridgeToObjectiveC()().super.isa;
  v15 = *(v8 + 8);
  v15(v10, v7);
  [v12 setUUID_];

  v16 = [a1 groupUUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v17 = UUID._bridgeToObjectiveC()().super.isa;
  v15(v10, v7);
  [v12 setGroupUUID_];

  [v12 setState_];
  [v12 setCapabilities_];
  v103 = v12;

  v18 = a2;
  v19 = [a1 activitySessions];
  v20 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationActivitySession, 0x1E69D8B58);
  v21 = v104;
  v97 = lazy protocol witness table accessor for type TUConversationActivitySessionContainer and conformance NSObject(&lazy protocol witness table cache variable for type TUConversationActivitySession and conformance NSObject, &lazy cache variable for type metadata for TUConversationActivitySession, 0x1E69D8B58);
  v98 = v20;
  v22 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v99 = a4;
  v23 = CPConversationManagerDataSource.filteredSessions(for:connection:from:)(v11, v21, a2, v22, a4);
  v101 = a1;
  v102 = a2;
  if ((v11 != 0xD00000000000001ALL || 0x80000001AEE36620 != v21) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {

    if ((v23 & 0xC000000000000001) != 0)
    {
      goto LABEL_9;
    }

LABEL_15:
    if (*(v23 + 16) >= 1)
    {
      goto LABEL_10;
    }

LABEL_16:

    goto LABEL_22;
  }

  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  __swift_project_value_buffer(v24, static Log.default);

  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v100 = v23;
    v29 = v28;
    v105[0] = v28;
    *v27 = 136315394;
    v106 = 0xD000000000000011;
    v107 = 0x80000001AEE36640;
    v30 = String.init<A>(reflecting:)();
    v32 = v11;
    v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, v105);

    *(v27 + 4) = v33;
    v11 = v32;
    *(v27 + 12) = 2080;
    v106 = v32;
    v107 = v104;

    v34 = String.init<A>(reflecting:)();
    v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v35, v105);

    *(v27 + 14) = v36;
    a1 = v101;
    v18 = v102;
    _os_log_impl(&dword_1AEB26000, v25, v26, "Adding sessions for %s for %s", v27, 0x16u);
    swift_arrayDestroy();
    v37 = v29;
    v23 = v100;
    MEMORY[0x1B27120C0](v37, -1, -1);
    v38 = v27;
    v21 = v104;
    MEMORY[0x1B27120C0](v38, -1, -1);
  }

  v39 = CPConversationManagerDataSource.filteredSessions(for:connection:from:)(0xD000000000000011, 0x80000001AEE36640, v18, v22, v99);

  specialized Set.union<A>(_:)(v39, v23);
  v23 = v40;
  if ((v40 & 0xC000000000000001) == 0)
  {
    goto LABEL_15;
  }

LABEL_9:
  if (__CocoaSet.count.getter() < 1)
  {
    goto LABEL_16;
  }

LABEL_10:
  v99 = v11;
  v100 = v23;
  if (v18[direct field offset for XPCHostConnection.isEntitledToUsePrivateAPI] == 1)
  {
    v41 = [a1 localMember];
    v42 = v103;
    [v103 setLocalMember_];

    v43 = [a1 initiator];
    [v42 setInitiator_];
  }

  v44 = [a1 virtualParticipants];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationVirtualParticipant, 0x1E69D8BC0);
  lazy protocol witness table accessor for type TUConversationActivitySessionContainer and conformance NSObject(&lazy protocol witness table cache variable for type TUConversationVirtualParticipant and conformance NSObject, &lazy cache variable for type metadata for TUConversationVirtualParticipant, 0x1E69D8BC0);
  static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v45 = Set._bridgeToObjectiveC()().super.isa;

  [v103 setVirtualParticipants_];

  v46 = *&v18[direct field offset for ConversationManagerHostConnection.serverBag];
  v95 = [v46 qrPluginConnectionRetryIntervalMillis];
  v94 = [v46 qrPluginMaxConnectionAttempts];
  v93 = [v46 qrPluginConnectionRetryIntervalMillis];
  v92 = [v46 qrPluginMaxRpcStreamAttempts];
  v47 = v96;
  v48 = v96[3];
  v49 = v96[4];
  __swift_project_boxed_opaque_existential_1(v96, v48);
  v50 = objc_opt_self();
  v51 = [v50 serverCertValidationEnabledUserDefaultsKey];
  v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v54 = v53;

  (*(v49 + 32))(&v106, MEMORY[0x1E69E6370], v52, v54, MEMORY[0x1E69E6370], MEMORY[0x1E69E6390], MEMORY[0x1E69E6378], v48, v49);

  v91 = v106;
  v90 = v106 == 2;
  v55 = v47[3];
  v56 = v47[4];
  __swift_project_boxed_opaque_existential_1(v47, v55);
  v57 = v50;
  v58 = [v50 serverCertHostnameUserDefaultsKey];
  v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v61 = v60;

  v62 = MEMORY[0x1E69E6158];
  (*(v56 + 32))(&v106, MEMORY[0x1E69E6158], v59, v61, MEMORY[0x1E69E6158], MEMORY[0x1E69E6190], MEMORY[0x1E69E6160], v55, v56);

  v64 = v106;
  v63 = v107;
  v65 = v47[3];
  v66 = v47[4];
  __swift_project_boxed_opaque_existential_1(v47, v65);
  v67 = [v57 serverCertLeafMarkerOIDUserDefaultsKey];
  v68 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v70 = v69;

  (*(v66 + 32))(v105, v62, v68, v70, v62, MEMORY[0x1E69E6190], MEMORY[0x1E69E6160], v65, v66);

  v71 = v105[0];
  v72 = v105[1];
  if (v63)
  {
    v73 = MEMORY[0x1B270FF70](v64, v63);
  }

  else
  {
    v73 = 0;
  }

  v74 = v90 | v91;
  v11 = v99;
  if (v72)
  {
    v75 = MEMORY[0x1B270FF70](v71, v72);
  }

  else
  {
    v75 = 0;
  }

  v76 = objc_allocWithZone(MEMORY[0x1E69D8BC8]);
  v77 = [v76 initWithConnectionRetryIntervalMillis:v95 connectionMaxAttempts:v94 rpcStreamRetryIntervalMillis:v93 rpcStreamMaxAttempts:v92 serverCertValidationEnabled:v74 & 1 serverCertHostnameOverride:v73 serverCertLeafMarkerOIDOverride:v75];

  v78 = v103;
  [v103 setVirtualParticipantConfig_];

  v79 = [v46 unreliableMessengerEstablishChannelMaxAttempts];
  v80 = [v46 unreliableMessengerEstablishChannelRetryIntervalMillis];
  v81 = [v46 unreliableMessengerEgressMessagePayloadMaxSizeBytes];
  v82 = [v46 unreliableMessengerChannelStreamMaxQueueSize];
  v83 = [v46 unreliableMessengerChannelStreamMaxTries];
  v84 = [v46 unreliableMessengerChannelStreamRetryIntervalMillis];
  v85 = [v46 unreliableMessengerSeqNumBufferSize];
  v86 = [objc_allocWithZone(MEMORY[0x1E69D8BB8]) initWithEstablishChannelMaxAttempts:v79 establishChannelRetryIntervalMillis:v80 egressMessagePayloadMaxSizeBytes:v81 channelStreamMaxQueueSize:v82 channelStreamMaxTries:v83 channelStreamRetryIntervalMillis:v84 seqNumBufferSize:v85];
  [v78 setUnreliableMessengerConfig_];

  v87 = Set._bridgeToObjectiveC()().super.isa;

  [v78 setActivitySessions_];

  [v78 setLocalParticipantIdentifier_];
  v21 = v104;
  v18 = v102;
LABEL_22:
  CPConversationManagerDataSource.addAliasesIfNecessary(toConversationContainer:forBundleIdentifier:connection:)(v108, v11, v21, v18);
  return v108[0];
}

void CPConversationManagerDataSource.addAliasesIfNecessary(toConversationContainer:forBundleIdentifier:connection:)(void **a1, uint64_t a2, char *a3, void *a4)
{
  v5 = v4;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v61 - v15;
  v17 = *a1;
  if (*(a4 + direct field offset for XPCHostConnection.isEntitledToAccessUnaliasedIdentifiers))
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static Log.default);
    v19 = v17;
    v65 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v65, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412290;
      *(v21 + 4) = v19;
      *v22 = v19;
      _os_log_impl(&dword_1AEB26000, v65, v20, "Not adding aliases to container: %@, client is entitled to access unaliased identifiers", v21, 0xCu);
      outlined destroy of NSObject?(v22, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1B27120C0](v22, -1, -1);
      MEMORY[0x1B27120C0](v21, -1, -1);
    }

    else
    {
    }

    v60 = v65;
  }

  else
  {
    v62 = a1;
    v63 = a2;
    v64 = a3;
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    __swift_project_value_buffer(v23, static Log.default);
    v24 = v17;
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();

    v27 = os_log_type_enabled(v25, v26);
    v65 = v11;
    if (v27)
    {
      v28 = v5;
      v29 = v16;
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v30 = 138412290;
      *(v30 + 4) = v24;
      *v31 = v24;
      v32 = v24;
      _os_log_impl(&dword_1AEB26000, v25, v26, "Adding aliases to container: %@", v30, 0xCu);
      outlined destroy of NSObject?(v31, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1B27120C0](v31, -1, -1);
      v33 = v30;
      v16 = v29;
      v5 = v28;
      v11 = v65;
      MEMORY[0x1B27120C0](v33, -1, -1);
    }

    v34 = [v24 groupUUID];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v35 = (*((*MEMORY[0x1E69E7D40] & *a4) + 0x1A0))();
    if (*(v35 + 16) && (v36 = specialized __RawDictionaryStorage.find<A>(_:)(v16), (v37 & 1) != 0))
    {
      v38 = v5;
      v39 = v16;
      v40 = *(v35 + 56) + 16 * v36;
      v41 = *(v40 + 8);
      v42 = *v40;
      v43 = v41;

      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSObject, 0x1E69E58C0);
      v44 = v42;
      v45 = static NSObject.== infix(_:_:)();

      if (v45)
      {
        (v11[1].isa)(v39, v10);

        *v62 = v43;
        return;
      }

      v16 = v39;
      v5 = v38;
    }

    else
    {
    }

    [v24 copy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationActivitySessionContainer, 0x1E69D8B60);
    v46 = swift_dynamicCast();
    v47 = v66;
    v48 = MEMORY[0x1B270FF70](v63, v64);
    [v5 addAliasesToConversationContainer:v24 forBundleIdentifier:v48];

    isa = v11[2].isa;
    v64 = v16;
    v50 = v10;
    isa(v14, v16, v10);
    if (!v46 || (v51 = v47) == 0)
    {
      v51 = v24;
      v47 = 0;
    }

    v52 = *((*MEMORY[0x1E69E7D40] & *a4) + 0x1B0);
    v53 = v24;
    v54 = v47;
    v55 = v52(v67);
    v57 = v56;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v66 = *v57;
    *v57 = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v51, v53, v14, isUniquelyReferenced_nonNull_native);
    v59 = v65[1].isa;
    (v59)(v14, v50);
    *v57 = v66;
    v55(v67, 0);

    (v59)(v64, v50);
  }
}

uint64_t CPConversationManagerDataSource.filteredSessions(for:connection:from:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  if (*(a3 + direct field offset for XPCHostConnection.isEntitledToAccessAllSessions))
  {
    v7 = v5;
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Log.default);
    swift_unknownObjectRetain();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v25 = v7;
      v26 = v13;
      *v12 = 136315138;
      v14 = >> prefix<A>(_:)(&v25, a5);
      v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v26);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_1AEB26000, v10, v11, "Passing up all sessions as %s is entitled", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      MEMORY[0x1B27120C0](v13, -1, -1);
      MEMORY[0x1B27120C0](v12, -1, -1);
    }
  }

  else
  {

    v21 = a3;
    specialized Sequence.compactMap<A>(_:)(a4, a1, a2, v21);
    v23 = v22;

    v24 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo29TUConversationActivitySessionC_SayAEGTt0g5Tf4g_n(v23);

    return v24;
  }
}

void specialized Set.union<A>(_:)(uint64_t a1, void *a2)
{
  v2 = a1;
  v15[1] = a2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationActivitySession, 0x1E69D8B58);
    lazy protocol witness table accessor for type TUConversationActivitySessionContainer and conformance NSObject(&lazy protocol witness table cache variable for type TUConversationActivitySession and conformance NSObject, &lazy cache variable for type metadata for TUConversationActivitySession, 0x1E69D8B58);
    Set.Iterator.init(_cocoa:)();
    v2 = v15[2];
    v3 = v15[3];
    v4 = v15[4];
    v5 = v15[5];
    v6 = v15[6];
  }

  else
  {
    v5 = 0;
    v7 = -1 << *(a1 + 32);
    v3 = (a1 + 56);
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

    v6 = (v9 & *(a1 + 56));
  }

  if (v2 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v10 = v5;
    v11 = v6;
    v12 = v5;
    if (!v6)
    {
      break;
    }

LABEL_12:
    v13 = (v11 - 1) & v11;
    v14 = *(*(v2 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v11)))));
    if (!v14)
    {
LABEL_18:
      outlined consume of Set<TUConversationActivitySession>.Iterator._Variant(v2);
      return;
    }

    while (1)
    {
      specialized Set._Variant.insert(_:)(v15, v14);

      v5 = v12;
      v6 = v13;
      if ((v2 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (__CocoaSet.Iterator.next()())
      {
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationActivitySession, 0x1E69D8B58);
        swift_dynamicCast();
        v14 = v15[0];
        v12 = v5;
        v13 = v6;
        if (v15[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v12 = (v10 + 1);
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= ((v4 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v11 = v3[v12];
    ++v10;
    if (v11)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

char *specialized ConversationManagerHost.__allocating_init(dataSource:featureFlags:)(uint64_t a1, uint64_t a2, Class a3)
{
  v5 = objc_allocWithZone(a3);

  return specialized ConversationManagerHost.init(dataSource:featureFlags:)(a1, a2, v5);
}

char *specialized ConversationManagerHost.init(dataSource:featureFlags:)(uint64_t a1, uint64_t a2, char *a3)
{
  v41 = a2;
  v43 = a1;
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v39 = *(v4 - 8);
  v40 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x1EEE9AC00](v7);
  v8 = type metadata accessor for DispatchQoS();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = OBJC_IVAR___CPConversationManagerHost_serverBag;
  *&a3[v9] = [objc_allocWithZone(CPSharedConversationServerBag) init];
  v10 = OBJC_IVAR___CPConversationManagerHost_queue;
  v11 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  v38[0] = "ge";
  v38[1] = v11;
  static DispatchQoS.unspecified.getter();
  v45 = MEMORY[0x1E69E7CC0];
  _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_4(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v39 + 104))(v6, *MEMORY[0x1E69E8090], v40);
  *&a3[v10] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v12 = OBJC_IVAR___CPConversationManagerHost_listener;
  v13 = objc_allocWithZone(MEMORY[0x1E696B0D8]);
  v14 = MEMORY[0x1B270FF70](0xD000000000000032, 0x80000001AEE2E990);
  v15 = [v13 initWithMachServiceName_];

  *&a3[v12] = v15;
  v16 = OBJC_IVAR___CPConversationManagerHost_listenerDeprecated;
  v17 = objc_allocWithZone(MEMORY[0x1E696B0D8]);
  v18 = MEMORY[0x1B270FF70](0xD00000000000002CLL, 0x80000001AEE2E960);
  v19 = [v17 initWithMachServiceName_];

  *&a3[v16] = v19;
  v20 = MEMORY[0x1E69E7CC0];
  v21 = MEMORY[0x1E69E7CD0];
  v22 = MEMORY[0x1E69E7CD0];
  if (MEMORY[0x1E69E7CC0] >> 62)
  {
    if (__CocoaSet.count.getter())
    {
      _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC14CopresenceCore33ConversationManagerHostConnectionC_Tt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    }

    else
    {
      v22 = MEMORY[0x1E69E7CD0];
    }
  }

  *&a3[OBJC_IVAR___CPConversationManagerHost_connections] = v22;
  *&a3[OBJC_IVAR___CPConversationManagerHost_subscriptions] = v21;
  *&a3[OBJC_IVAR___CPConversationManagerHost_pendingEndpointRequests] = v20;
  v23 = &a3[OBJC_IVAR___CPConversationManagerHost____lazy_storage___protectedStorage];
  *v23 = 0u;
  *(v23 + 1) = 0u;
  *(v23 + 4) = 0;
  *&a3[OBJC_IVAR___CPConversationManagerHost_dataSource] = v43;
  *&a3[OBJC_IVAR___CPConversationManagerHost_featureFlags] = v41;
  v24 = *&a3[v10];
  type metadata accessor for DarwinNotification();
  swift_allocObject();
  swift_unknownObjectRetain();
  *&a3[OBJC_IVAR___CPConversationManagerHost_clientShouldConnectNotification] = DarwinNotification.init(name:queue:)(0xD00000000000003ALL, 0x80000001AEE2E8A0, v24);
  v25 = *&a3[v10];
  swift_allocObject();
  *&a3[OBJC_IVAR___CPConversationManagerHost_clientShouldConnectIfCanBypassSharePlayRestrictionNotification] = DarwinNotification.init(name:queue:)(0xD000000000000056, 0x80000001AEE2E8E0, v25);
  v44.receiver = a3;
  v44.super_class = ObjectType;
  v26 = objc_msgSendSuper2(&v44, sel_init);
  v27 = OBJC_IVAR___CPConversationManagerHost_dataSource;
  v28 = *&v26[OBJC_IVAR___CPConversationManagerHost_dataSource];
  v29 = OBJC_IVAR___CPConversationManagerHost_queue;
  v30 = *&v26[OBJC_IVAR___CPConversationManagerHost_queue];
  v31 = v26;
  [v28 addObserver:v31 queue:v30];
  v32 = [*&v26[v27] activityAuthorizationManager];
  v33 = [v32 neighborhoodActivityConduit];

  [v33 addDelegate:v31 queue:*&v26[v29]];
  v34 = OBJC_IVAR___CPConversationManagerHost_listener;
  [*&v31[OBJC_IVAR___CPConversationManagerHost_listener] setDelegate_];
  [*&v31[v34] resume];
  v35 = OBJC_IVAR___CPConversationManagerHost_listenerDeprecated;
  v36 = *&v31[OBJC_IVAR___CPConversationManagerHost_listenerDeprecated];
  [v36 setDelegate_];

  [*&v31[v35] resume];
  swift_unknownObjectRelease();
  return v31;
}

char *_s14CopresenceCore33ConversationManagerHostConnectionC10connection5queue12featureFlags9serverBagACSgSo15NSXPCConnectionC_So012OS_dispatch_H0CSo09CPFeatureJ0_pSo020CPConversationServerL0_ptcfCTfq4nnnen_nSo08CPSharedcrL0C_Tt3g5(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = objc_allocWithZone(type metadata accessor for ConversationManagerHostConnection(0));
  *&v8[direct field offset for ConversationManagerHostConnection.delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v8[direct field offset for ConversationManagerHostConnection.aliasedConversationContainers] = MEMORY[0x1E69E7CC8];
  v9 = &v8[direct field offset for ConversationManagerHostConnection.$__lazy_storage_$_protectedStorage];
  *(v9 + 4) = 0;
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *&v8[direct field offset for ConversationManagerHostConnection.identifiersForCustomEndpoints] = MEMORY[0x1E69E7CD0];
  *&v8[direct field offset for ConversationManagerHostConnection.featureFlags] = a3;
  *&v8[direct field offset for ConversationManagerHostConnection.serverBag] = a4;
  swift_unknownObjectRetain();
  v10 = specialized XPCHostConnection.init(connection:queue:)(a1, a2);
  v11 = v10;
  swift_unknownObjectRelease();
  if (v10)
  {
  }

  return v10;
}

unint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_18;
  }

  v7 = *v3;
  v8 = v7 + 32 + (result << 6);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v10)
  {
    goto LABEL_15;
  }

  v11 = *(v7 + 16);
  if (__OFSUB__(v11, a2))
  {
    goto LABEL_19;
  }

  result = v8 + (a3 << 6);
  v12 = v7 + 32 + (a2 << 6);
  if (result < v12 || result >= v12 + ((v11 - a2) << 6))
  {
    result = swift_arrayInitWithTakeFrontToBack();
  }

  else if (result != v12)
  {
    result = swift_arrayInitWithTakeBackToFront();
  }

  v14 = *(v7 + 16);
  v9 = __OFADD__(v14, v10);
  v15 = v14 + v10;
  if (v9)
  {
    goto LABEL_20;
  }

  *(v7 + 16) = v15;
LABEL_15:
  if (a3 > 0)
  {
LABEL_21:
    __break(1u);
  }

  return result;
}

uint64_t specialized Array.replaceSubrange<A>(_:with:)(uint64_t a1, uint64_t a2)
{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), type metadata accessor for Attachment);
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), type metadata accessor for PubSubTopic.SendItem);
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

void specialized Sequence.compactMap<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v40 = a2;
  v5 = a1;
  v47 = MEMORY[0x1E69E7CC0];
  v41 = a3;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationActivitySession, 0x1E69D8B58);
    v6 = v41;
    lazy protocol witness table accessor for type TUConversationActivitySessionContainer and conformance NSObject(&lazy protocol witness table cache variable for type TUConversationActivitySession and conformance NSObject, &lazy cache variable for type metadata for TUConversationActivitySession, 0x1E69D8B58);
    Set.Iterator.init(_cocoa:)();
    v5 = v46[2];
    v7 = v46[3];
    v8 = v46[4];
    v9 = v46[5];
    v10 = v46[6];
  }

  else
  {
    v6 = a3;
    v11 = -1 << *(a1 + 32);
    v7 = a1 + 56;
    v8 = ~v11;
    v12 = -v11;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v10 = v13 & *(a1 + 56);

    v9 = 0;
  }

  v38[5] = v8;
  v39 = MEMORY[0x1E69E7CC0];
  v14 = (v8 + 64) >> 6;
  v42 = v5;
  while (v5 < 0)
  {
    v19 = __CocoaSet.Iterator.next()();
    if (!v19 || (v45 = v19, type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationActivitySession, 0x1E69D8B58), swift_dynamicCast(), v18 = v46[0], v44 = v10, !v46[0]))
    {
LABEL_36:
      outlined consume of Set<TUConversationActivitySession>.Iterator._Variant(v5);
      return;
    }

LABEL_19:
    v20 = [v18 activity];
    v21 = [v20 bundleIdentifier];

    if (v21)
    {
      v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v24 = v23;

      if (v22 == v40 && v24 == v6)
      {
      }

      else
      {
        v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v26 & 1) == 0)
        {
          goto LABEL_29;
        }
      }

      if (![v18 state] || objc_msgSend(v18, sel_state) == 1)
      {
        goto LABEL_9;
      }
    }

LABEL_29:
    if (*(a4 + direct field offset for XPCHostConnection.isEntitledToForWebFallback))
    {
      v27 = [v18 activity];
      v28 = [v27 isEligibleForWebBrowser];

      if (v28)
      {
        goto LABEL_9;
      }
    }

    v29 = a4;
    v30 = *(a4 + direct field offset for XPCHostConnection.definedAccessActivityIdentifiers);
    v31 = [v18 activity];
    v32 = [v31 activityIdentifier];

    v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = v34;

    v46[0] = v33;
    v46[1] = v35;
    MEMORY[0x1EEE9AC00](v36);
    v38[2] = v46;
    v37 = v43;
    LOBYTE(v33) = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v38, v30);
    v43 = v37;

    if (v33)
    {
      a4 = v29;
      v6 = v41;
LABEL_9:
      v10 = v44;
      v15 = [v18 publicCopy];

      v5 = v42;
      if (v15)
      {
        MEMORY[0x1B2710150]();
        if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          v5 = v42;
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v39 = v47;
      }
    }

    else
    {

      a4 = v29;
      v6 = v41;
      v5 = v42;
      v10 = v44;
    }
  }

  v16 = v9;
  v17 = v10;
  if (v10)
  {
LABEL_15:
    v44 = (v17 - 1) & v17;
    v18 = *(*(v5 + 48) + ((v9 << 9) | (8 * __clz(__rbit64(v17)))));
    if (!v18)
    {
      goto LABEL_36;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v9 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v9 >= v14)
    {
      goto LABEL_36;
    }

    v17 = *(v7 + 8 * v9);
    ++v16;
    if (v17)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
}

uint64_t specialized Collection.firstIndex(where:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for UUID();
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  v10 = v9 == 0;
  v29 = v9;
  if (!v9)
  {
    return 0;
  }

  v28 = v2;
  v36 = a2 + 56;
  v34 = v6 + 16;
  v30 = v6;
  v11 = (v6 + 8);
  v12 = type metadata accessor for ConversationManagerHost.EndpointRequest(0);
  v13 = 0;
  v33 = v12;
  v14 = a1 + ((*(*(v12 - 8) + 80) + 32) & ~*(*(v12 - 8) + 80));
  v15 = *(*(v12 - 8) + 72);
  v37 = a2;
  v26 = v15;
  v27 = v14;
  while (1)
  {
    v31 = v10;
    v32 = v13;
    v38 = v14 + v15 * v13;
    if (!*(a2 + 16))
    {
      break;
    }

    v16 = *(v33 + 20);
    _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_4(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    v35 = v16;
    v17 = v37;
    v18 = dispatch thunk of Hashable._rawHashValue(seed:)();
    v19 = -1 << *(v17 + 32);
    v20 = v18 & ~v19;
    if (((*(v36 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
    {
      break;
    }

    v21 = ~v19;
    v22 = *(v30 + 72);
    v23 = *(v30 + 16);
    while (1)
    {
      v23(v8, *(v17 + 48) + v22 * v20, v5);
      _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_4(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
      v24 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v11)(v8, v5);
      if (v24)
      {
        break;
      }

      v20 = (v20 + 1) & v21;
      v17 = v37;
      if (((*(v36 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    v13 = v32 + 1;
    v10 = v32 + 1 == v29;
    a2 = v37;
    v15 = v26;
    v14 = v27;
    if (v32 + 1 == v29)
    {
      return 0;
    }
  }

LABEL_11:
  (*(v38 + *(v33 + 28)))(0);
  return v32;
}

uint64_t specialized Collection.firstIndex(where:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    return 0;
  }

  v9 = type metadata accessor for ConversationManagerHost.EndpointRequest(0);
  v10 = 0;
  v11 = *(*(v9 - 8) + 72);
  v12 = (((*(*(v9 - 8) + 80) + 32) & ~*(*(v9 - 8) + 80)) + a1 + 8);
  while (1)
  {
    v13 = *(v12 - 1) == a2 && *v12 == a3;
    if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    ++v10;
    v12 = (v12 + v11);
    if (v4 == v10)
    {
      return 0;
    }
  }

  v14 = MEMORY[0x1B270FF70](a2, a3);
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v16 = *(v9 + 28);
  v17 = *(v12 + *(v9 + 24) - 8);
  v18 = (v12 + v16);
  v19 = *(v12 + v16 - 8);
  v20 = *v18;
  v23[4] = v19;
  v23[5] = v20;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 1107296256;
  v23[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed IMUserNotification?) -> ();
  v23[3] = &block_descriptor_37_0;
  v21 = _Block_copy(v23);

  [a4 requestEndpointWith:v14 activitySessionUUID:isa activity:v17 completion:v21];
  _Block_release(v21);

  return v10;
}

uint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v10 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v4 = a3;
  v7 = a2;
  v11 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v8 = v5 + 4;
  v6 = &v5[a1 + 4];
  a4(0);
  result = swift_arrayDestroy();
  v13 = __OFSUB__(v4, v10);
  v10 = v4 - v10;
  if (v13)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v10)
  {
    goto LABEL_17;
  }

  v9 = v11 >> 62;
  if (!(v11 >> 62))
  {
    result = v5[2];
    v14 = result - v7;
    if (!__OFSUB__(result, v7))
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
  v14 = result - v7;
  if (__OFSUB__(result, v7))
  {
    goto LABEL_23;
  }

LABEL_6:
  v15 = (v6 + 8 * v4);
  v16 = &v8[v7];
  if (v15 != v16 || v15 >= &v16[8 * v14])
  {
    memmove(v15, v16, 8 * v14);
  }

  if (v9)
  {
    result = __CocoaSet.count.getter();
  }

  else
  {
    result = v5[2];
  }

  if (__OFADD__(result, v10))
  {
    goto LABEL_24;
  }

  v5[2] = result + v10;
LABEL_17:
  if (v4 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t specialized Array.replaceSubrange<A>(_:with:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), uint64_t (*a4)(void))
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = a4;
    v9 = a3;
    v7 = a2;
    v8 = a1;
    v10 = *v6;
    v11 = *v6 >> 62;
    if (!v11)
    {
      result = *((*v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_13:
      __break(1u);
      goto LABEL_14;
    }
  }

  result = __CocoaSet.count.getter();
  if (result < v7)
  {
    goto LABEL_13;
  }

LABEL_4:
  if (__OFSUB__(v7, v8))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v13 = v8 - v7;
  if (__OFSUB__(0, v7 - v8))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v11)
  {
    v14 = __CocoaSet.count.getter();
  }

  else
  {
    v14 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v15 = __OFADD__(v14, v13);
  result = v14 + v13;
  if (!v15)
  {
    v9(result, 1);
    return specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v8, v7, 0, v5);
  }

LABEL_16:
  __break(1u);
  return result;
}

void specialized ConversationManagerHost.withFirstConnection(where:_:)(void (*a1)(void *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v52 = a4;
  v53 = a5;
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = (&v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(a3 + OBJC_IVAR___CPConversationManagerHost_queue);
  *v13 = v14;
  (*(v11 + 104))(v13, *MEMORY[0x1E69E8020], v10);
  v15 = v14;
  LOBYTE(v14) = _dispatchPreconditionTest(_:)();
  (*(v11 + 8))(v13, v10);
  if (v14)
  {
    v47 = a2;
    v16 = OBJC_IVAR___CPConversationManagerHost_connections;
    swift_beginAccess();
    v17 = *(a3 + v16);
    v48 = a1;
    if ((v17 & 0xC000000000000001) != 0)
    {

      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      type metadata accessor for ConversationManagerHostConnection(0);
      _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_4(&lazy protocol witness table cache variable for type ConversationManagerHostConnection and conformance NSObject, type metadata accessor for ConversationManagerHostConnection, MEMORY[0x1E69E81B8]);
      Set.Iterator.init(_cocoa:)();
      v18 = v56;
      v50 = v55;
      v19 = v57;
      v20 = v58;
      v21 = v59;
    }

    else
    {
      v22 = -1 << *(v17 + 32);
      v18 = v17 + 56;
      v19 = ~v22;
      v23 = -v22;
      if (v23 < 64)
      {
        v24 = ~(-1 << v23);
      }

      else
      {
        v24 = -1;
      }

      v21 = v24 & *(v17 + 56);
      swift_bridgeObjectRetain_n();
      v20 = 0;
      v50 = v17;
    }

    v46 = v19;
    v25 = (v19 + 64) >> 6;
    while (2)
    {
      v26 = v50;
      v51 = v20;
      if (v50 < 0)
      {
        while (1)
        {
          v31 = __CocoaSet.Iterator.next()();
          if (!v31)
          {
            v30 = 0;
            goto LABEL_34;
          }

          v60 = v31;
          type metadata accessor for ConversationManagerHostConnection(0);
          swift_dynamicCast();
          v30 = v54;
          v29 = v21;
          if (!v54)
          {
            goto LABEL_34;
          }

LABEL_18:
          if (*(v30 + direct field offset for XPCHostConnection.isEntitledToProvideCustomEndpoint) == 1)
          {
            break;
          }

          v21 = v29;
          v51 = v20;
          if ((v26 & 0x8000000000000000) == 0)
          {
            goto LABEL_10;
          }
        }

        v49 = v29;
        v32 = (*((*MEMORY[0x1E69E7D40] & *v30) + 0x1D0))();
        if (!*(v32 + 16))
        {

          v21 = v49;
          continue;
        }

        v44 = v17;
        v45 = v6;
        Hasher.init(_seed:)();
        v34 = v52;
        v33 = v53;
        String.hash(into:)();
        v35 = Hasher._finalize()();
        v36 = v34;
        v37 = -1 << *(v32 + 32);
        v38 = v35 & ~v37;
        if (((*(v32 + 56 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38) & 1) == 0)
        {
LABEL_30:

          v21 = v49;
          v6 = v45;
          v17 = v44;
          continue;
        }

        v39 = v33;
        v40 = ~v37;
        while (1)
        {
          v41 = (*(v32 + 48) + 16 * v38);
          if (*v41 == v36 && v41[1] == v39)
          {
            break;
          }

          v43 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v36 = v52;
          v39 = v53;
          if (v43)
          {
            break;
          }

          v38 = (v38 + 1) & v40;
          if (((*(v32 + 56 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38) & 1) == 0)
          {
            goto LABEL_30;
          }
        }

        v26 = v50;
      }

      else
      {
LABEL_10:
        v27 = v20;
        v28 = v21;
        if (!v21)
        {
          while (1)
          {
            v20 = v27 + 1;
            if (__OFADD__(v27, 1))
            {
              break;
            }

            if (v20 >= v25)
            {
              v30 = 0;
              goto LABEL_34;
            }

            v28 = *(v18 + 8 * v20);
            ++v27;
            if (v28)
            {
              goto LABEL_14;
            }
          }

          __break(1u);
          goto LABEL_37;
        }

LABEL_14:
        v29 = (v28 - 1) & v28;
        v30 = *(*(v26 + 48) + ((v20 << 9) | (8 * __clz(__rbit64(v28)))));
        if (v30)
        {
          goto LABEL_18;
        }
      }

      break;
    }

LABEL_34:
    outlined consume of Set<TUConversationActivitySession>.Iterator._Variant(v26);

    v48(v30);

    return;
  }

LABEL_37:
  __break(1u);
}

uint64_t specialized MutableCollection._halfStablePartition(isSuffixElement:)(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v53 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for ConversationManagerHost.EndpointRequest(0);
  v7 = *(v59 - 8);
  v8 = MEMORY[0x1EEE9AC00](v59);
  v10 = v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = v48 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = v48 - v14;
  v16 = a1;
  v17 = *a1;
  v18 = v65;
  result = specialized Collection.firstIndex(where:)(v17, a2);
  if (!v18)
  {
    v65 = v15;
    v51 = v10;
    v52 = result;
    v50 = v13;
    v64 = a2;
    if (v20)
    {
      return *(v17 + 16);
    }

    else
    {
      v49 = v16;
      v21 = v52 + 1;
      if (!__OFADD__(v52, 1))
      {
        v22 = v17;
        v48[1] = 0;
        v23 = v64;
        v62 = v53 + 16;
        v63 = v64 + 56;
        v24 = (v53 + 8);
        v25 = v65;
        v54 = v7;
        while (1)
        {
          v28 = v22[2];
          if (v21 == v28)
          {
            return v52;
          }

          if (v21 >= v28)
          {
            break;
          }

          v29 = (*(v7 + 80) + 32) & ~*(v7 + 80);
          v60 = v22;
          v61 = v21;
          v55 = v29;
          v57 = *(v7 + 72);
          v58 = v22 + v29;
          v56 = v57 * v21;
          outlined init with copy of ConversationManagerHost.EndpointRequest(v22 + v29 + v57 * v21, v25);
          if (*(v23 + 16) && (_sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_4(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]), v30 = dispatch thunk of Hashable._rawHashValue(seed:)(), v31 = v64, v32 = -1 << *(v64 + 32), v33 = v30 & ~v32, ((*(v63 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) != 0))
          {
            v34 = ~v32;
            v35 = *(v53 + 72);
            v36 = *(v53 + 16);
            while (1)
            {
              v36(v6, *(v31 + 48) + v35 * v33, v4);
              _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_4(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
              v37 = dispatch thunk of static Equatable.== infix(_:_:)();
              (*v24)(v6, v4);
              if (v37)
              {
                break;
              }

              v33 = (v33 + 1) & v34;
              v31 = v64;
              if (((*(v63 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) == 0)
              {
                goto LABEL_6;
              }
            }

            v25 = v65;
            result = outlined destroy of ConversationManagerHost.EndpointRequest(v65);
            v38 = v52;
            v26 = v61;
            if (v52 == v61)
            {
              v23 = v64;
              v22 = v60;
            }

            else
            {
              v39 = v50;
              if ((v52 & 0x8000000000000000) != 0)
              {
                goto LABEL_32;
              }

              v40 = v60[2];
              if (v52 >= v40)
              {
                goto LABEL_33;
              }

              v41 = v58;
              v42 = v57 * v52;
              result = outlined init with copy of ConversationManagerHost.EndpointRequest(&v58[v57 * v52], v50);
              if (v61 >= v40)
              {
                goto LABEL_34;
              }

              v43 = v41;
              v44 = v56;
              outlined init with copy of ConversationManagerHost.EndpointRequest(&v43[v56], v51);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v60 = specialized _ArrayBuffer._consumeAndCreateNew()(v60);
              }

              v45 = v60 + v55;
              v46 = v60 + v55 + v42;
              v22 = v60;
              result = outlined assign with take of ConversationManagerHost.EndpointRequest(v51, v46);
              if (v61 >= v22[2])
              {
                goto LABEL_35;
              }

              result = outlined assign with take of ConversationManagerHost.EndpointRequest(v39, &v45[v44]);
              v26 = v61;
              *v49 = v22;
              v23 = v64;
            }

            v27 = __OFADD__(v38, 1);
            v47 = v38 + 1;
            if (v27)
            {
              goto LABEL_31;
            }

            v52 = v47;
          }

          else
          {
LABEL_6:
            v25 = v65;
            (*&v65[*(v59 + 28)])(0);
            v23 = v64;
            result = outlined destroy of ConversationManagerHost.EndpointRequest(v25);
            v22 = v60;
            v26 = v61;
          }

          v27 = __OFADD__(v26, 1);
          v21 = v26 + 1;
          v7 = v54;
          if (v27)
          {
            goto LABEL_30;
          }
        }

        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
      }

      __break(1u);
    }
  }

  return result;
}

unint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = type metadata accessor for ConversationManagerHost.EndpointRequest(0);
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

void specialized ConversationManagerHost.conversationManager(_:activitySessionContainersChanged:)(uint64_t a1)
{
  v2 = v1;
  v33 = a1;
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + OBJC_IVAR___CPConversationManagerHost_queue);
  *v6 = v7;
  v8 = *MEMORY[0x1E69E8020];
  v9 = *(v4 + 104);
  v9(v6, v8, v3);
  v10 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  v11 = *(v4 + 8);
  v11(v6, v3);
  if ((v7 & 1) == 0)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  ConversationManagerHost.updateClientShouldConnectNotification()();
  ConversationManagerHost.cleanUpPendingEndpointRequests(for:)(v33);
  *v6 = v10;
  v9(v6, v8, v3);
  v12 = _dispatchPreconditionTest(_:)();
  v11(v6, v3);
  if (v12)
  {
    v13 = OBJC_IVAR___CPConversationManagerHost_connections;
    swift_beginAccess();
    v32 = *(v2 + v13);
    if ((v32 & 0xC000000000000001) != 0)
    {

      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      type metadata accessor for ConversationManagerHostConnection(0);
      _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_4(&lazy protocol witness table cache variable for type ConversationManagerHostConnection and conformance NSObject, type metadata accessor for ConversationManagerHostConnection, MEMORY[0x1E69E81B8]);
      Set.Iterator.init(_cocoa:)();
      v15 = v36;
      v14 = v37;
      v17 = v38;
      v16 = v39;
      v18 = v40;
    }

    else
    {
      v19 = -1 << *(v32 + 32);
      v14 = v32 + 56;
      v17 = ~v19;
      v20 = -v19;
      if (v20 < 64)
      {
        v21 = ~(-1 << v20);
      }

      else
      {
        v21 = -1;
      }

      v18 = v21 & *(v32 + 56);
      v15 = v32;
      swift_bridgeObjectRetain_n();
      v16 = 0;
    }

    v31[1] = v17;
    v22 = (v17 + 64) >> 6;
    if (v15 < 0)
    {
      goto LABEL_16;
    }

    while (1)
    {
      v23 = v16;
      v24 = v18;
      v25 = v16;
      if (!v18)
      {
        break;
      }

LABEL_14:
      v26 = (v24 - 1) & v24;
      v27 = *(*(v15 + 48) + ((v25 << 9) | (8 * __clz(__rbit64(v24)))));
      if (!v27)
      {
LABEL_20:
        outlined consume of Set<TUConversationActivitySession>.Iterator._Variant(v15);

        return;
      }

      while (1)
      {
        ObjectType = swift_getObjectType();
        ConversationManagerHost.protectedStorage.getter(v35);
        CPConversationManagerDataSource.filteredActivitySessionContainers(from:connection:protectedStorage:)(v33, v27, v35, ObjectType);
        __swift_destroy_boxed_opaque_existential_1Tm(v35);
        type metadata accessor for UUID();
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationActivitySessionContainer, 0x1E69D8B60);
        _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_4(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        [v27 updateConversationContainersWithConversationContainersByGroupUUID_];

        v16 = v25;
        v18 = v26;
        if ((v15 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_16:
        v28 = __CocoaSet.Iterator.next()();
        if (v28)
        {
          v34 = v28;
          type metadata accessor for ConversationManagerHostConnection(0);
          swift_dynamicCast();
          v27 = v35[0];
          v25 = v16;
          v26 = v18;
          if (v35[0])
          {
            continue;
          }
        }

        goto LABEL_20;
      }
    }

    while (1)
    {
      v25 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v25 >= v22)
      {
        goto LABEL_20;
      }

      v24 = *(v14 + 8 * v25);
      ++v23;
      if (v24)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
    goto LABEL_22;
  }

LABEL_23:
  __break(1u);
}

uint64_t outlined init with take of (key: UUID, value: ConversationManagerHostConnection.ConversationContainerWrapper)?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_14CopresenceCore33ConversationManagerHostConnectionC0F16ContainerWrapperV5valuetSgMd, &_s10Foundation4UUIDV3key_14CopresenceCore33ConversationManagerHostConnectionC0F16ContainerWrapperV5valuetSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t specialized ConversationManagerHost.conversationManager(_:sharePlayAllowedChanged:)(char a1)
{
  v2 = v1;
  LOBYTE(v3) = a1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *&v1[OBJC_IVAR___CPConversationManagerHost_queue];
  *v7 = v8;
  v9 = *MEMORY[0x1E69E8020];
  *&v52 = *(v5 + 104);
  (v52)(v7, v9, v4);
  v51 = v8;
  v10 = _dispatchPreconditionTest(_:)();
  v11 = *(v5 + 8);
  v11(v7, v4);
  if ((v10 & 1) == 0)
  {
    goto LABEL_34;
  }

  if (one-time initialization token for host != -1)
  {
LABEL_35:
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  v53 = __swift_project_value_buffer(v12, static Log.host);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v49 = v4;
    v16 = v11;
    v17 = v9;
    v18 = v2;
    v19 = v15;
    *v15 = 67109120;
    *(v15 + 4) = v3 & 1;
    _os_log_impl(&dword_1AEB26000, v13, v14, "sharePlayAllowedChanged to %{BOOL}d", v15, 8u);
    v20 = v19;
    v2 = v18;
    v9 = v17;
    v11 = v16;
    v4 = v49;
    MEMORY[0x1B27120C0](v20, -1, -1);
  }

  result = ConversationManagerHost.updateClientShouldConnectNotification()();
  if ((v3 & 1) == 0)
  {
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_1AEB26000, v22, v23, "Killing connections to clients since SharePlay is not allowed", v24, 2u);
      MEMORY[0x1B27120C0](v24, -1, -1);
    }

    v26 = v51;
    v25 = v52;
    *v7 = v51;
    v25(v7, v9, v4);
    v27 = v26;
    LOBYTE(v26) = _dispatchPreconditionTest(_:)();
    result = (v11)(v7, v4);
    if (v26)
    {
      v11 = OBJC_IVAR___CPConversationManagerHost_connections;
      swift_beginAccess();
      v51 = *(v11 + v2);
      if ((v51 & 0xC000000000000001) != 0)
      {

        swift_unknownObjectRetain();
        __CocoaSet.makeIterator()();
        type metadata accessor for ConversationManagerHostConnection(0);
        _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_4(&lazy protocol witness table cache variable for type ConversationManagerHostConnection and conformance NSObject, type metadata accessor for ConversationManagerHostConnection, MEMORY[0x1E69E81B8]);
        Set.Iterator.init(_cocoa:)();
        v29 = v56;
        v7 = v57;
        v30 = v58;
        v9 = v59;
        v3 = v60;
      }

      else
      {
        v31 = -1 << *(v51 + 32);
        v7 = (v51 + 56);
        v30 = ~v31;
        v32 = -v31;
        if (v32 < 64)
        {
          v33 = ~(-1 << v32);
        }

        else
        {
          v33 = -1;
        }

        v3 = v33 & *(v51 + 56);
        v29 = v51;
        swift_bridgeObjectRetain_n();
        v9 = 0;
      }

      v49 = v30;
      v34 = (v30 + 64) >> 6;
      *&v28 = 136315138;
      v52 = v28;
      v50 = v2;
      while (1)
      {
        if (v29 < 0)
        {
          v39 = __CocoaSet.Iterator.next()();
          if (!v39 || (v54 = v39, type metadata accessor for ConversationManagerHostConnection(0), swift_dynamicCast(), v38 = v55, v37 = v9, v11 = v3, !v55))
          {
LABEL_31:
            outlined consume of Set<TUConversationActivitySession>.Iterator._Variant(v29);
          }
        }

        else
        {
          v35 = v9;
          v36 = v3;
          v37 = v9;
          if (!v3)
          {
            while (1)
            {
              v37 = v35 + 1;
              if (__OFADD__(v35, 1))
              {
                break;
              }

              if (v37 >= v34)
              {
                goto LABEL_31;
              }

              v36 = v7[v37];
              ++v35;
              if (v36)
              {
                goto LABEL_23;
              }
            }

            __break(1u);
LABEL_34:
            __break(1u);
            goto LABEL_35;
          }

LABEL_23:
          v11 = ((v36 - 1) & v36);
          v38 = *(*(v29 + 48) + ((v37 << 9) | (8 * __clz(__rbit64(v36)))));
          if (!v38)
          {
            goto LABEL_31;
          }
        }

        if (*(v38 + direct field offset for XPCHostConnection.isEntitledToBypassSharePlayRestriction) == 1)
        {
          v40 = v38;
          v41 = Logger.logObject.getter();
          v4 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v41, v4))
          {
            v42 = swift_slowAlloc();
            v43 = swift_slowAlloc();
            v55 = v43;
            *v42 = v52;
            *(v42 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v40 + direct field offset for XPCHostConnection.bundleIdentifier), *(v40 + direct field offset for XPCHostConnection.bundleIdentifier + 8), &v55);
            _os_log_impl(&dword_1AEB26000, v41, v4, "Allowing SharePlay connection despite system restriction since client is entitled. BundleID %s", v42, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v43);
            MEMORY[0x1B27120C0](v43, -1, -1);
            v44 = v42;
            v2 = v50;
            MEMORY[0x1B27120C0](v44, -1, -1);
          }
        }

        else
        {
          v45 = swift_allocObject();
          *(v45 + 16) = v2;
          v4 = (*MEMORY[0x1E69E7D40] & *v38) + 336;
          v46 = *((*MEMORY[0x1E69E7D40] & *v38) + 0x150);
          v47 = v2;
          v46(partial apply for closure #1 in closure #1 in ConversationManagerHost.conversationManager(_:sharePlayAllowedChanged:), v45);
        }

        v9 = v37;
        v3 = v11;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t specialized ConversationManagerHost.conversationManager(_:requestedEndpointWithIdentifier:activitySession:completion:)(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v47 = a4;
  v48 = a5;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v49 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchPredicate();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = (&v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(v5 + OBJC_IVAR___CPConversationManagerHost_queue);
  *v15 = v16;
  (*(v13 + 104))(v15, *MEMORY[0x1E69E8020], v12);
  v17 = v16;
  v18 = _dispatchPreconditionTest(_:)();
  (*(v13 + 8))(v15, v12);
  if (v18)
  {
    v45 = v5;
    v46 = v10;
    v18 = v9;
    if (one-time initialization token for host == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v19 = type metadata accessor for Logger();
  __swift_project_value_buffer(v19, static Log.host);

  v20 = a3;
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v50[0] = v44;
    *v23 = 136315394;
    v43 = a1;
    *(v23 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, v50);
    *(v23 + 12) = 2080;
    v24 = [v20 UUID];
    v25 = v49;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_4(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    v28 = v27;
    v29 = v22;
    v30 = v46;
    (*(v46 + 8))(v25, v18);
    v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v28, v50);

    *(v23 + 14) = v31;
    v32 = v29;
    a1 = v43;
    _os_log_impl(&dword_1AEB26000, v21, v32, "requestedEndpoint identifier=%s activitySessionUUID=%s", v23, 0x16u);
    v33 = v44;
    swift_arrayDestroy();
    v34 = v33;
    v35 = &_OBJC_LABEL_PROTOCOL___SKPresenceDelegate;
    MEMORY[0x1B27120C0](v34, -1, -1);
    MEMORY[0x1B27120C0](v23, -1, -1);
  }

  else
  {

    v30 = v46;
    v25 = v49;
    v35 = &_OBJC_LABEL_PROTOCOL___SKPresenceDelegate;
  }

  v36 = v45;
  ConversationManagerHost.updateClientShouldConnectNotification()();
  v37 = [v20 v35[477]];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v38 = [v20 activity];
  v39 = MEMORY[0x1EEE9AC00](v38);
  *(&v42 - 8) = a1;
  *(&v42 - 7) = a2;
  *(&v42 - 6) = v25;
  *(&v42 - 5) = v39;
  v40 = v48;
  *(&v42 - 4) = v47;
  *(&v42 - 3) = v40;
  *(&v42 - 2) = v36;

  specialized ConversationManagerHost.withFirstConnection(where:_:)(closure #2 in ConversationManagerHost.fetchEndpoint(for:activitySessionUUID:activity:completion:)partial apply, (&v42 - 10), v36, a1, a2);

  return (*(v30 + 8))(v25, v18);
}

void specialized ConversationManagerHost.conversationManagerHostConnection(_:advertiseGroupActivityWithUUID:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v32 = a2;
  swift_getObjectType();
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Log.host);
  v11 = *(v7 + 16);
  v31[1] = a1;
  v11(v9, a1, v6);
  v12 = v3;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v31[0] = a3;
    v16 = v15;
    v17 = swift_slowAlloc();
    v33 = v12;
    aBlock[0] = v17;
    *v16 = 136315394;
    v18 = v12;
    v19 = String.init<A>(reflecting:)();
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, aBlock);

    *(v16 + 4) = v21;
    *(v16 + 12) = 2080;
    _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_4(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    v24 = v23;
    (*(v7 + 8))(v9, v6);
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v24, aBlock);

    *(v16 + 14) = v25;
    _os_log_impl(&dword_1AEB26000, v13, v14, "%s advertising GroupActivity Session: %s", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v17, -1, -1);
    v26 = v16;
    a3 = v31[0];
    MEMORY[0x1B27120C0](v26, -1, -1);
  }

  else
  {

    (*(v7 + 8))(v9, v6);
  }

  v27 = *&v12[OBJC_IVAR___CPConversationManagerHost_dataSource];
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v29 = swift_allocObject();
  *(v29 + 16) = v32;
  *(v29 + 24) = a3;
  aBlock[4] = partial apply for closure #1 in ConversationManagerHost.conversationManagerHostConnection(_:advertiseGroupActivityWithUUID:completion:);
  aBlock[5] = v29;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_49;
  v30 = _Block_copy(aBlock);

  [v27 advertiseGroupActivity:isa completionHandler:v30];
  _Block_release(v30);
}

void specialized ConversationManagerHost.conversationManagerHostConnection(_:stopAdvertisingGroupActivityWithUUID:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v32 = a2;
  swift_getObjectType();
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Log.host);
  v11 = *(v7 + 16);
  v31[1] = a1;
  v11(v9, a1, v6);
  v12 = v3;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v31[0] = a3;
    v16 = v15;
    v17 = swift_slowAlloc();
    v33 = v12;
    aBlock[0] = v17;
    *v16 = 136315394;
    v18 = v12;
    v19 = String.init<A>(reflecting:)();
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, aBlock);

    *(v16 + 4) = v21;
    *(v16 + 12) = 2080;
    _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_4(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    v24 = v23;
    (*(v7 + 8))(v9, v6);
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v24, aBlock);

    *(v16 + 14) = v25;
    _os_log_impl(&dword_1AEB26000, v13, v14, "%s stopped advertising GroupActivity Session: %s", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v17, -1, -1);
    v26 = v16;
    a3 = v31[0];
    MEMORY[0x1B27120C0](v26, -1, -1);
  }

  else
  {

    (*(v7 + 8))(v9, v6);
  }

  v27 = *&v12[OBJC_IVAR___CPConversationManagerHost_dataSource];
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v29 = swift_allocObject();
  *(v29 + 16) = v32;
  *(v29 + 24) = a3;
  aBlock[4] = partial apply for closure #1 in ConversationManagerHost.conversationManagerHostConnection(_:stopAdvertisingGroupActivityWithUUID:completion:);
  aBlock[5] = v29;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_43;
  v30 = _Block_copy(aBlock);

  [v27 stopAdvertisingGroupActivity:isa completionHandler:v30];
  _Block_release(v30);
}

uint64_t _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t specialized MutableCollection._halfStablePartition(isSuffixElement:)(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for ConversationManagerHost.EndpointRequest(0);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v48 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = (&v48 - v16);
  v53 = a1;
  v18 = *a1;
  v59 = a2;
  v19 = v58;
  result = specialized Collection.firstIndex(where:)(v18, a2, a3, a4);
  if (!v19)
  {
    v51 = v12;
    v52 = v15;
    v58 = a3;
    v50 = 0;
    if (v21)
    {
      return *(v18 + 16);
    }

    v55 = result;
    v22 = result + 1;
    if (!__OFADD__(result, 1))
    {
      v23 = v18;
      v26 = *(v18 + 16);
      v25 = (v18 + 16);
      v24 = v26;
      if (v22 == v26)
      {
        return v55;
      }

      v27 = a4;
      v54 = v61;
      v49 = a4;
      v56 = v9;
      while (v22 < v24)
      {
        v34 = v8;
        v35 = (*(v9 + 80) + 32) & ~*(v9 + 80);
        v57 = v23;
        v36 = v23 + v35;
        v37 = *(v9 + 72);
        v38 = v37 * v22;
        outlined init with copy of ConversationManagerHost.EndpointRequest(v23 + v35 + v37 * v22, v17);
        v39 = v58;
        v40 = v59;
        v41 = *v17 == v59 && v17[1] == v58;
        if (v41 || (v42 = _stringCompareWithSmolCheck(_:_:expecting:)(), v39 = v58, v40 = v59, (v42 & 1) != 0))
        {
          v28 = MEMORY[0x1B270FF70](v40, v39);
          isa = UUID._bridgeToObjectiveC()().super.isa;
          v30 = *(v17 + *(v34 + 24));
          v31 = (v17 + *(v34 + 28));
          v32 = v31[1];
          v61[2] = *v31;
          v61[3] = v32;
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 1107296256;
          v61[0] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed IMUserNotification?) -> ();
          v61[1] = &block_descriptor_34;
          v33 = _Block_copy(aBlock);
          v8 = v34;

          [v27 requestEndpointWith:v28 activitySessionUUID:isa activity:v30 completion:v33];
          _Block_release(v33);

          result = outlined destroy of ConversationManagerHost.EndpointRequest(v17);
          v9 = v56;
          v23 = v57;
        }

        else
        {
          result = outlined destroy of ConversationManagerHost.EndpointRequest(v17);
          v43 = v55;
          if (v22 == v55)
          {
            v8 = v34;
            v9 = v56;
            v23 = v57;
          }

          else
          {
            if ((v55 & 0x8000000000000000) != 0)
            {
              goto LABEL_28;
            }

            v44 = *v25;
            if (v55 >= *v25)
            {
              goto LABEL_29;
            }

            v45 = v37 * v55;
            result = outlined init with copy of ConversationManagerHost.EndpointRequest(&v36[v37 * v55], v52);
            if (v22 >= v44)
            {
              goto LABEL_30;
            }

            outlined init with copy of ConversationManagerHost.EndpointRequest(&v36[v38], v51);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v57 = specialized _ArrayBuffer._consumeAndCreateNew()(v57);
            }

            v27 = v49;
            v8 = v34;
            v9 = v56;
            v46 = v57;
            v47 = v57 + v35;
            result = outlined assign with take of ConversationManagerHost.EndpointRequest(v51, &v47[v45]);
            if (v22 >= v46[2])
            {
              goto LABEL_31;
            }

            result = outlined assign with take of ConversationManagerHost.EndpointRequest(v52, &v47[v38]);
            *v53 = v46;
            v43 = v55;
            v23 = v46;
          }

          v55 = v43 + 1;
        }

        ++v22;
        v25 = v23 + 2;
        v24 = v23[2];
        if (v22 == v24)
        {
          return v55;
        }
      }

      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t partial apply for closure #1 in ConversationManagerHost.conversationManagerHostConnection(_:fetchEndpointWithIdentifier:activitySessionUUID:activity:completionHandler:)(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = (v1 + v5);
  v9 = *v8;
  v10 = v8[1];
  v11 = *(v1 + v6);
  v12 = *(v1 + v6 + 8);
  v13 = *(v1 + ((v6 + 23) & 0xFFFFFFFFFFFFFFF8));

  return closure #1 in ConversationManagerHost.conversationManagerHostConnection(_:fetchEndpointWithIdentifier:activitySessionUUID:activity:completionHandler:)(a1, v7, v1 + v4, v9, v10, v11, v12, v13);
}

uint64_t specialized ConversationManagerHost.listener(_:shouldAcceptNewConnection:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v53 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v51 = *(v7 - 8);
  v52 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Log.host);
  v11 = a1;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    *(v14 + 4) = v11;
    *v15 = v11;
    v16 = v11;
    _os_log_impl(&dword_1AEB26000, v12, v13, "Asked to accept new connection from %@", v14, 0xCu);
    outlined destroy of NSObject?(v15, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B27120C0](v15, -1, -1);
    MEMORY[0x1B27120C0](v14, -1, -1);
  }

  v17 = [objc_msgSend(*&v2[OBJC_IVAR___CPConversationManagerHost_dataSource] sharePlaySystemStateObserver)];
  swift_unknownObjectRelease();
  if (v17)
  {
    goto LABEL_6;
  }

  v32 = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SbTt0B5(15);
  if (v32 != 2 && (v32 & 1) != 0)
  {
    v33 = v11;
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v50 = v34;
      v38 = v37;
      *v36 = 138412290;
      *(v36 + 4) = v33;
      *v37 = v33;
      v39 = v33;
      _os_log_impl(&dword_1AEB26000, v50, v35, "ConversationManagerHost accepted the connection because the client is allowed to bypass system restrictions. Connection %@", v36, 0xCu);
      outlined destroy of NSObject?(v38, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v40 = v38;
      v34 = v50;
      MEMORY[0x1B27120C0](v40, -1, -1);
      MEMORY[0x1B27120C0](v36, -1, -1);
    }

LABEL_6:
    v18 = *&v2[OBJC_IVAR___CPConversationManagerHost_queue];
    v19 = *&v2[OBJC_IVAR___CPConversationManagerHost_featureFlags];
    v20 = *&v2[OBJC_IVAR___CPConversationManagerHost_serverBag];
    v21 = v11;
    v22 = v18;
    swift_unknownObjectRetain();
    v23 = _s14CopresenceCore33ConversationManagerHostConnectionC10connection5queue12featureFlags9serverBagACSgSo15NSXPCConnectionC_So012OS_dispatch_H0CSo09CPFeatureJ0_pSo020CPConversationServerL0_ptcfCTfq4nnnen_nSo08CPSharedcrL0C_Tt3g5(v21, v22, v19, v20);
    if (v23)
    {
      v24 = v23;
      v25 = *((*MEMORY[0x1E69E7D40] & *v23) + 0x190);
      v26 = swift_unknownObjectRetain();
      v25(v26, &protocol witness table for ConversationManagerHost);
      v27 = swift_allocObject();
      *(v27 + 16) = v2;
      *(v27 + 24) = v24;
      aBlock[4] = partial apply for closure #1 in ConversationManagerHost.listener(_:shouldAcceptNewConnection:);
      aBlock[5] = v27;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      aBlock[3] = &block_descriptor_22;
      v28 = _Block_copy(aBlock);
      v29 = v2;
      v30 = v24;
      static DispatchQoS.unspecified.getter();
      v54 = MEMORY[0x1E69E7CC0];
      _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_4(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      MEMORY[0x1B27106E0](0, v9, v6, v28);
      _Block_release(v28);

      (*(v53 + 8))(v6, v4);
      (*(v51 + 8))(v9, v52);

      return 1;
    }

    v47 = v21;
    v42 = Logger.logObject.getter();
    v48 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v42, v48))
    {

      return 0;
    }

    v44 = swift_slowAlloc();
    *v44 = 67109120;
    *(v44 + 4) = [v47 processIdentifier];

    _os_log_impl(&dword_1AEB26000, v42, v48, "ConversationManagerHostConnection could not be created; rejecting connection from PID %d.", v44, 8u);
    goto LABEL_17;
  }

  v41 = v11;
  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    *v44 = 138412290;
    *(v44 + 4) = v41;
    *v45 = v41;
    v46 = v41;
    _os_log_impl(&dword_1AEB26000, v42, v43, "ConversationManagerHost rejecting connection %@ because SharePlay is not allowed", v44, 0xCu);
    outlined destroy of NSObject?(v45, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B27120C0](v45, -1, -1);
LABEL_17:
    MEMORY[0x1B27120C0](v44, -1, -1);
  }

  return 0;
}

uint64_t type metadata accessor for ConversationManagerHost.EndpointRequest(uint64_t a1)
{
  result = type metadata singleton initialization cache for ConversationManagerHost.EndpointRequest;
  if (!type metadata singleton initialization cache for ConversationManagerHost.EndpointRequest)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for ConversationManagerHost.EndpointRequest(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for NSObject(319, &lazy cache variable for type metadata for TUConversationActivity, 0x1E69D8B28);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for ()();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t type metadata accessor for ()()
{
  result = lazy cache variable for type metadata for ();
  if (!lazy cache variable for type metadata for ())
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &lazy cache variable for type metadata for ());
  }

  return result;
}

uint64_t specialized Array.replaceSubrange<A>(_:with:)(uint64_t result, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, void))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = *v4;
  v7 = *(*v4 + 16);
  if (v7 < a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = v7 + v9;
  if (__OFADD__(v7, v9))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v10 > *(v6 + 24) >> 1)
  {
    v6 = a3();
    *v4 = v6;
  }

  result = a4(v8, a2, 0);
  *v4 = v6;
  return result;
}

uint64_t partial apply for closure #1 in closure #1 in ConversationManagerHost.conversationManagerHostConnection(_:fetchEndpointWithIdentifier:activitySessionUUID:activity:completionHandler:)()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  v7 = v0 + v3;
  v8 = *v7;
  v9 = *(v7 + 8);
  v10 = *(v0 + v4);
  v11 = *(v0 + v5);
  v12 = *(v0 + v5 + 8);
  v13 = *(v0 + ((v5 + 23) & 0xFFFFFFFFFFFFFFF8));

  return closure #1 in closure #1 in ConversationManagerHost.conversationManagerHostConnection(_:fetchEndpointWithIdentifier:activitySessionUUID:activity:completionHandler:)(v6, v0 + v2, v8, v9, v10, v11, v12, v13);
}

void partial apply for closure #2 in ConversationManagerHost.fetchEndpoint(for:activitySessionUUID:activity:completion:)(void *a1)
{
  partial apply for closure #2 in ConversationManagerHost.fetchEndpoint(for:activitySessionUUID:activity:completion:)(a1);
}

{
  closure #2 in ConversationManagerHost.fetchEndpoint(for:activitySessionUUID:activity:completion:)(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56), *(v1 + 64));
}

uint64_t outlined init with take of ConversationManagerHost.EndpointRequest(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConversationManagerHost.EndpointRequest(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of ConversationManagerHost.EndpointRequest(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConversationManagerHost.EndpointRequest(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of ConversationManagerHost.EndpointRequest(uint64_t a1)
{
  v2 = type metadata accessor for ConversationManagerHost.EndpointRequest(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined assign with take of ConversationManagerHost.EndpointRequest(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConversationManagerHost.EndpointRequest(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

BOOL NSProcessInfo.isAllowedToConnect<A>(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(a3 + 24))(&v6, a2, a3);
  if ((v6 & 0xFE) == 4)
  {
    return 1;
  }

  else
  {
    v5 = v6;
    return NSProcessInfo.isAllowedToConnect(to:)(&v5);
  }
}

Swift::Bool __swiftcall NSProcessInfo.isAllowedToConnect(to:)(CopresenceCore::MachServiceName to)
{
  v2 = [v1 processIdentifier];
  String.utf8CString.getter();

  LOBYTE(v2) = _cp_sandbox_check_0(v2);

  return v2;
}

uint64_t NSProcessInfo.bundleIdentifier.getter()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (!v1)
  {
    return 0;
  }

  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

void NSProcessInfo.value(forEntitlement:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  task = SecTaskCreateFromSelf(0);
  if (task)
  {
    v6 = MEMORY[0x1B270FF70](a1, a2);
    v7 = SecTaskCopyValueForEntitlement(task, v6, 0);

    if (v7)
    {
      *(a3 + 24) = swift_getObjectType();

      *a3 = v7;
    }

    else
    {
      *a3 = 0u;
      *(a3 + 16) = 0u;
    }
  }

  else
  {
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }
}

uint64_t protocol witness for EntitlementValueProviding.bundleIdentifier.getter in conformance NSProcessInfo()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (!v1)
  {
    return 0;
  }

  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t XPCClient.connectionClosure.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + direct field offset for XPCClient.connectionClosure);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return _sxRi_zRi0_zlyytIseghHr_SgWOe(v6, v7);
}

Swift::Void __swiftcall XPCClient.destroyConnection()()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v5 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11[1] = *&v0[direct field offset for XPCClient.queue];
  v8 = swift_allocObject();
  *(v8 + 16) = v0;
  aBlock[4] = partial apply for closure #1 in XPCClient.destroyConnection();
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_3_0;
  v9 = _Block_copy(aBlock);
  v10 = v0;
  static DispatchQoS.unspecified.getter();
  v13 = MEMORY[0x1E69E7CC0];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_5(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27106E0](0, v7, v4, v9);
  _Block_release(v9);
  (*(v2 + 8))(v4, v1);
  (*(v5 + 8))(v7, v12);
}

uint64_t XPCClient.withHost(body:errorHandler:)(void (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = type metadata accessor for Optional();
  v20 = *(v7 - 8);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v20 - v9;
  v11 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v8);
  v13 = &v20 - v12;
  v14 = specialized XPCClient.connection.getter();
  aBlock[4] = a3;
  aBlock[5] = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed Error) -> ();
  aBlock[3] = &block_descriptor_6_4;
  v15 = _Block_copy(aBlock);

  v16 = [v14 remoteObjectProxyWithErrorHandler_];
  _Block_release(v15);

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  v17 = swift_dynamicCast();
  v18 = *(v11 + 56);
  if (v17)
  {
    v18(v10, 0, 1, AssociatedTypeWitness);
    (*(v11 + 32))(v13, v10, AssociatedTypeWitness);
    v21(v13);
    return (*(v11 + 8))(v13, AssociatedTypeWitness);
  }

  else
  {
    v18(v10, 1, 1, AssociatedTypeWitness);
    result = (*(v20 + 8))(v10, v7);
    __break(1u);
  }

  return result;
}

uint64_t key path getter for XPCClient.connectionClosure : <A>XPCClient<A>@<X0>(void **a1@<X0>, uint64_t (**a2)()@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x78))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = partial apply for thunk for @escaping @callee_guaranteed () -> (@owned NSXPCConnection, @error @owned Error);
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t key path setter for XPCClient.connectionClosure : <A>XPCClient<A>(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed () -> (@out NSXPCConnection, @error @owned Error);
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x80);
  outlined copy of (@escaping @callee_guaranteed @Sendable (@in_guaranteed NWConnection.State) -> ())?(v3, v4);
  return v7(v6, v5);
}

id XPCClient.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t closure #1 in closure #1 in closure #1 in XPCClient.init()(void *a1, uint64_t a2)
{
  if (one-time initialization token for client != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Log.client);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v6 = 136315138;
    v8 = _typeName(_:qualified:)();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v12);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_1AEB26000, v4, v5, "XPC connection interrupted for %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x1B27120C0](v7, -1, -1);
    MEMORY[0x1B27120C0](v6, -1, -1);
  }

  return (*((*MEMORY[0x1E69E7D40] & *a1) + 0xB0))();
}

char *closure #1 in closure #1 in XPCClient.init()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for DispatchQoS();
  v14 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v23 = *&result[direct field offset for XPCClient.queue];
    v18 = result;
    v19 = swift_allocObject();
    *(v19 + 16) = v18;
    *(v19 + 24) = a2;
    aBlock[4] = a6;
    aBlock[5] = v19;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = a7;
    v20 = _Block_copy(aBlock);
    v22 = v18;
    static DispatchQoS.unspecified.getter();
    v25 = MEMORY[0x1E69E7CC0];
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_5(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x1B27106E0](0, v16, v13, v20);
    _Block_release(v20);
    (*(v11 + 8))(v13, v10);
    (*(v14 + 8))(v16, v24);
  }

  return result;
}

uint64_t closure #1 in closure #2 in closure #1 in XPCClient.init()(void *a1, uint64_t a2)
{
  if (one-time initialization token for client != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Log.client);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v18[0] = v7;
    *v6 = 136315138;
    v8 = _typeName(_:qualified:)();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, v18);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_1AEB26000, v4, v5, "XPC connection invalidated for %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x1B27120C0](v7, -1, -1);
    MEMORY[0x1B27120C0](v6, -1, -1);
  }

  v11 = a1 + direct field offset for XPCClient._connection;
  swift_beginAccess();
  v12 = *v11;
  if (*v11)
  {
    v17 = *v11;
    v13 = *(v11 + 3);
    if (v13)
    {
      v14 = *(v11 + 4);

      v13(&v17);
      _sxRi_zRi0_zlyytIseghHr_SgWOe(v13, v14);
    }
  }

  *v11 = 0;
  v15 = swift_endAccess();
  return (*((*MEMORY[0x1E69E7D40] & *a1) + 0xB0))(v15);
}

id closure #2 in XPCClient.init()(void *a1, uint64_t a2)
{
  if (one-time initialization token for client != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Log.client);
  v4 = a1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v7 = 136315394;
    v10 = _typeName(_:qualified:)();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v15);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2112;
    *(v7 + 14) = v4;
    *v8 = v4;
    v13 = v4;
    _os_log_impl(&dword_1AEB26000, v5, v6, "Resetting XPC client connection on %s: %@", v7, 0x16u);
    outlined destroy of NSObject?(v8);
    MEMORY[0x1B27120C0](v8, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x1B27120C0](v9, -1, -1);
    MEMORY[0x1B27120C0](v7, -1, -1);
  }

  [v4 setInvalidationHandler_];
  [v4 setInterruptionHandler_];
  [v4 setExportedObject_];

  return [v4 invalidate];
}

id XPCClient.__deallocating_deinit()
{
  v1 = v0;
  v28 = *v0;
  v27 = *MEMORY[0x1E69E7D40];
  v23 = type metadata accessor for DispatchWorkItemFlags();
  v26 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v22 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for DispatchQoS();
  v24 = *(v3 - 8);
  v25 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = swift_allocObject();
  v7 = &v0[direct field offset for XPCClient._connection];
  swift_beginAccess();
  v8 = *v7;
  v9 = *(v7 + 1);
  v11 = *(v7 + 2);
  v10 = *(v7 + 3);
  v12 = *(v7 + 4);
  v6[2] = v8;
  v6[3] = v9;
  v6[4] = v11;
  v6[5] = v10;
  v6[6] = v12;
  v13 = *&v1[direct field offset for XPCClient.queue];
  aBlock[4] = partial apply for closure #1 in XPCClient.deinit;
  aBlock[5] = v6;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_30_0;
  v14 = _Block_copy(aBlock);
  v15 = v8;
  outlined copy of (@escaping @callee_guaranteed @Sendable (@in_guaranteed NWConnection.State) -> ())?(v9, v11);
  outlined copy of (@escaping @callee_guaranteed @Sendable (@in_guaranteed NWConnection.State) -> ())?(v10, v12);
  v16 = v13;

  static DispatchQoS.unspecified.getter();
  v30 = MEMORY[0x1E69E7CC0];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_5(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  v17 = v22;
  v18 = v23;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27106E0](0, v5, v17, v14);
  _Block_release(v14);

  (*(v26 + 8))(v17, v18);
  (*(v24 + 8))(v5, v25);

  v20 = type metadata accessor for XPCClient(0, *((v27 & v28) + 0x50), *((v27 & v28) + 0x58), v19);
  v29.receiver = v1;
  v29.super_class = v20;
  return objc_msgSendSuper2(&v29, sel_dealloc);
}

uint64_t closure #1 in XPCClient.deinit(void *a1)
{
  swift_beginAccess();
  v2 = a1[2];
  if (v2)
  {
    v7 = a1[2];
    v3 = a1[5];
    if (v3)
    {
      v4 = a1[6];
      v5 = v2;
      outlined copy of (@escaping @callee_guaranteed @Sendable (@in_guaranteed NWConnection.State) -> ())?(v3, v4);
      v3(&v7);
      _sxRi_zRi0_zlyytIseghHr_SgWOe(v3, v4);
    }

    else
    {
    }
  }

  a1[2] = 0;
  return swift_endAccess();
}

uint64_t @objc XPCClient.__ivar_destroyer(uint64_t a1)
{
  _sxRi_zRi0_zlyytIseghHr_SgWOe(*(a1 + direct field offset for XPCClient.connectionClosure), *(a1 + direct field offset for XPCClient.connectionClosure + 8));
  v2 = (a1 + direct field offset for XPCClient._connection);
  v3 = *(a1 + direct field offset for XPCClient._connection);
  v4 = *(a1 + direct field offset for XPCClient._connection + 8);
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];

  _sxRi_zRi0_zlyytIseghHr_SgWOe(v4, v5);

  return _sxRi_zRi0_zlyytIseghHr_SgWOe(v6, v7);
}

uint64_t closure #1 in XPCClient.destroyConnection()(uint64_t a1)
{
  v1 = a1 + direct field offset for XPCClient._connection;
  swift_beginAccess();
  v2 = *v1;
  if (*v1)
  {
    v7 = *v1;
    v3 = *(v1 + 24);
    if (v3)
    {
      v4 = *(v1 + 32);
      v5 = v2;
      outlined copy of (@escaping @callee_guaranteed @Sendable (@in_guaranteed NWConnection.State) -> ())?(v3, v4);
      v3(&v7);
      _sxRi_zRi0_zlyytIseghHr_SgWOe(v3, v4);
    }

    else
    {
    }
  }

  *v1 = 0;
  return swift_endAccess();
}

void *partial apply for thunk for @escaping @callee_guaranteed () -> (@out NSXPCConnection, @error @owned Error)()
{
  result = (*(v0 + 16))(&v3);
  if (!v1)
  {
    return v3;
  }

  return result;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed () -> (@owned NSXPCConnection, @error @owned Error)@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

void specialized Sequence.compactMap<A>(_:)(uint64_t a1)
{
  v1 = a1;
  v21 = MEMORY[0x1E69E7CC0];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for ActivitySession(0);
    lazy protocol witness table accessor for type ActivitySession and conformance NSObject(&lazy protocol witness table cache variable for type ActivitySession and conformance NSObject, type metadata accessor for ActivitySession, MEMORY[0x1E69E81B8]);
    Set.Iterator.init(_cocoa:)();
    v1 = v16;
    v2 = v17;
    v3 = v18;
    v4 = v19;
    v5 = v20;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  v9 = MEMORY[0x1E69E7D40];
  while (v1 < 0)
  {
    if (!__CocoaSet.Iterator.next()() || (type metadata accessor for ActivitySession(0), swift_dynamicCast(), (v12 = v15) == 0))
    {
LABEL_22:
      outlined consume of Set<String>.Iterator._Variant(v1);
      return;
    }

LABEL_17:
    v13 = (*((*v9 & *v12) + 0x328))();
    v14 = [v13 isSystemActivity];

    if (v14)
    {
    }

    else
    {
      (*((*v9 & *v12) + 0x388))();

      MEMORY[0x1B2710150]();
      if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }
  }

  v10 = v4;
  v11 = v5;
  if (v5)
  {
LABEL_13:
    v5 = (v11 - 1) & v11;
    v12 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v11)))));
    if (!v12)
    {
      goto LABEL_22;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_22;
    }

    v11 = *(v2 + 8 * v4);
    ++v10;
    if (v11)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

{
  v1 = a1;
  v21 = MEMORY[0x1E69E7CC0];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for ActivitySession(0);
    lazy protocol witness table accessor for type ActivitySession and conformance NSObject(&lazy protocol witness table cache variable for type ActivitySession and conformance NSObject, type metadata accessor for ActivitySession, MEMORY[0x1E69E81B8]);
    Set.Iterator.init(_cocoa:)();
    v1 = v16;
    v2 = v17;
    v3 = v18;
    v4 = v19;
    v5 = v20;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  v9 = MEMORY[0x1E69E7D40];
  while (v1 < 0)
  {
    if (!__CocoaSet.Iterator.next()() || (type metadata accessor for ActivitySession(0), swift_dynamicCast(), (v12 = v15) == 0))
    {
LABEL_22:
      outlined consume of Set<String>.Iterator._Variant(v1);
      return;
    }

LABEL_17:
    v13 = (*((*v9 & *v12) + 0x328))();
    v14 = [v13 isSystemActivity];

    if (v14)
    {
      (*((*v9 & *v12) + 0x388))();

      MEMORY[0x1B2710150]();
      if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    else
    {
    }
  }

  v10 = v4;
  v11 = v5;
  if (v5)
  {
LABEL_13:
    v5 = (v11 - 1) & v11;
    v12 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v11)))));
    if (!v12)
    {
      goto LABEL_22;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_22;
    }

    v11 = *(v2 + 8 * v4);
    ++v10;
    if (v11)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00);
    lazy protocol witness table accessor for type TUConversationActivitySessionContainer and conformance NSObject(&lazy protocol witness table cache variable for type TUHandle and conformance NSObject, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00);
    Set.Iterator.init(_cocoa:)();
    v1 = v21;
    v2 = v22;
    v3 = v23;
    v4 = v24;
    v5 = v25;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  v20 = MEMORY[0x1E69E7CC0];
  while (v1 < 0)
  {
    if (!__CocoaSet.Iterator.next()() || (type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00), swift_dynamicCast(), (v11 = v26) == 0))
    {
LABEL_24:
      outlined consume of Set<String>.Iterator._Variant(v1);
      return;
    }

LABEL_17:
    v12 = [v11 normalizedValue];
    if (v12)
    {
      v13 = v12;
      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v20 + 2) + 1, 1, v20);
      }

      v17 = *(v20 + 2);
      v16 = *(v20 + 3);
      if (v17 >= v16 >> 1)
      {
        v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1, v20);
      }

      *(v20 + 2) = v17 + 1;
      v18 = &v20[16 * v17];
      *(v18 + 4) = v19;
      *(v18 + 5) = v15;
    }

    else
    {
    }
  }

  v9 = v4;
  v10 = v5;
  if (v5)
  {
LABEL_13:
    v5 = (v10 - 1) & v10;
    v11 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v11)
    {
      goto LABEL_24;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v4 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_24;
    }

    v10 = *(v2 + 8 * v4);
    ++v9;
    if (v10)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy14CopresenceCore15ActivitySessionCG_So014TUConversationF0Cs5NeverOTg504_s14d6Core22fg30ManagerC06createcD002tucD0AA0co23CSgSo014TUConversationcO18C_tFSo0hC0CAGXEfU_Tf1cn_n(uint64_t a1)
{
  v25 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = __CocoaSet.count.getter();
    result = MEMORY[0x1E69E7CC0];
    if (!v2)
    {
      return result;
    }

    v30 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)();
    result = __CocoaSet.startIndex.getter();
    v27 = result;
    v28 = v4;
    v29 = 1;
    if ((v2 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v2 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return result;
  }

  v30 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray.reserveCapacity(_:)();
  result = _HashTable.startBucket.getter();
  v5 = *(a1 + 36);
  v27 = result;
  v28 = v5;
  v29 = 0;
LABEL_7:
  v6 = 0;
  while (v6 < v2)
  {
    if (__OFADD__(v6++, 1))
    {
      goto LABEL_31;
    }

    v10 = v27;
    v9 = v28;
    v11 = v29;
    specialized Set.subscript.getter(v27, v28, v29, a1);
    v13 = v12;
    v14 = (*((*MEMORY[0x1E69E7D40] & *v12) + 0x388))();
    v15 = [v14 activity];

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    result = specialized ContiguousArray._endMutation()();
    if (v25)
    {
      if (!v11)
      {
        goto LABEL_35;
      }

      if (__CocoaSet.Index.handleBitPattern.getter())
      {
        swift_isUniquelyReferenced_nonNull_native();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSh5IndexVy14CopresenceCore15ActivitySessionC_GMd, &_sSh5IndexVy14CopresenceCore15ActivitySessionC_GMR);
      v7 = Set.Index._asCocoa.modify();
      __CocoaSet.formIndex(after:isUnique:)();
      result = v7(v26, 0);
      if (v6 == v2)
      {
LABEL_28:
        outlined consume of Set<AddressableMember>.Index._Variant(v27, v28, v29);
        return v30;
      }
    }

    else
    {
      if (v11)
      {
        goto LABEL_36;
      }

      if ((v10 & 0x8000000000000000) != 0)
      {
        goto LABEL_32;
      }

      v16 = 1 << *(a1 + 32);
      if (v10 >= v16)
      {
        goto LABEL_32;
      }

      v17 = v10 >> 6;
      v18 = *(a1 + 56 + 8 * (v10 >> 6));
      if (((v18 >> v10) & 1) == 0)
      {
        goto LABEL_33;
      }

      if (*(a1 + 36) != v9)
      {
        goto LABEL_34;
      }

      v19 = v18 & (-2 << (v10 & 0x3F));
      if (v19)
      {
        v16 = __clz(__rbit64(v19)) | v10 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v20 = v17 << 6;
        v21 = v17 + 1;
        v22 = (a1 + 64 + 8 * v17);
        while (v21 < (v16 + 63) >> 6)
        {
          v24 = *v22++;
          v23 = v24;
          v20 += 64;
          ++v21;
          if (v24)
          {
            result = outlined consume of Set<AddressableMember>.Index._Variant(v10, v9, 0);
            v16 = __clz(__rbit64(v23)) + v20;
            goto LABEL_27;
          }
        }

        result = outlined consume of Set<AddressableMember>.Index._Variant(v10, v9, 0);
      }

LABEL_27:
      v27 = v16;
      v28 = v9;
      v29 = 0;
      if (v6 == v2)
      {
        goto LABEL_28;
      }
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

void _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy14CopresenceCore15ActivitySessionCG_SSs5NeverOTg504_s14d6Core22fG127ManagerC26updateVirtualParticipantIdyys6UInt64VFSaySSGShyAA0cD0CGcfU0_SSAIcfu_33_23d0b21f370648a7fa82888872819982AISSTf3nnnpk_nTf1cn_n(uint64_t a1)
{
  v1 = a1;
  v33 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v40 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2 & ~(v2 >> 63), 0);
    v35 = v40;
    if (v33)
    {
      v3 = __CocoaSet.startIndex.getter();
    }

    else
    {
      v3 = _HashTable.startBucket.getter();
      v4 = *(v1 + 36);
    }

    v37 = v3;
    v38 = v4;
    v39 = v33 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      v31 = v1 + 56;
      v30 = v1 + 64;
      v32 = v2;
      while (v5 < v2)
      {
        if (__OFADD__(v5++, 1))
        {
          goto LABEL_35;
        }

        v8 = v37;
        v9 = v39;
        v34 = v38;
        v10 = v1;
        specialized Set.subscript.getter(v37, v38, v39, v1);
        v12 = v11;
        swift_beginAccess();
        v13 = UUID.uuidString.getter();
        v15 = v14;
        swift_endAccess();

        v16 = v35;
        v40 = v35;
        v18 = *(v35 + 16);
        v17 = *(v35 + 24);
        if (v18 >= v17 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1);
          v16 = v40;
        }

        *(v16 + 16) = v18 + 1;
        v19 = v16 + 16 * v18;
        *(v19 + 32) = v13;
        *(v19 + 40) = v15;
        v35 = v16;
        if (v33)
        {
          if (!v9)
          {
            goto LABEL_40;
          }

          v1 = v10;
          if (__CocoaSet.Index.handleBitPattern.getter())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v32;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSh5IndexVy14CopresenceCore15ActivitySessionC_GMd, &_sSh5IndexVy14CopresenceCore15ActivitySessionC_GMR);
          v6 = Set.Index._asCocoa.modify();
          __CocoaSet.formIndex(after:isUnique:)();
          v6(v36, 0);
          if (v5 == v32)
          {
LABEL_32:
            outlined consume of Set<AddressableMember>.Index._Variant(v37, v38, v39);
            return;
          }
        }

        else
        {
          if (v9)
          {
            goto LABEL_41;
          }

          if ((v8 & 0x8000000000000000) != 0)
          {
            goto LABEL_36;
          }

          v1 = v10;
          v20 = 1 << *(v10 + 32);
          if (v8 >= v20)
          {
            goto LABEL_36;
          }

          v21 = v8 >> 6;
          v22 = *(v31 + 8 * (v8 >> 6));
          if (((v22 >> v8) & 1) == 0)
          {
            goto LABEL_37;
          }

          if (*(v10 + 36) != v34)
          {
            goto LABEL_38;
          }

          v23 = v22 & (-2 << (v8 & 0x3F));
          if (v23)
          {
            v20 = __clz(__rbit64(v23)) | v8 & 0x7FFFFFFFFFFFFFC0;
            v2 = v32;
          }

          else
          {
            v24 = v21 << 6;
            v25 = v21 + 1;
            v26 = (v30 + 8 * v21);
            v2 = v32;
            while (v25 < (v20 + 63) >> 6)
            {
              v28 = *v26++;
              v27 = v28;
              v24 += 64;
              ++v25;
              if (v28)
              {
                outlined consume of Set<AddressableMember>.Index._Variant(v8, v34, 0);
                v20 = __clz(__rbit64(v27)) + v24;
                goto LABEL_31;
              }
            }

            outlined consume of Set<AddressableMember>.Index._Variant(v8, v34, 0);
          }

LABEL_31:
          v29 = *(v10 + 36);
          v37 = v20;
          v38 = v29;
          v39 = 0;
          if (v5 == v2)
          {
            goto LABEL_32;
          }
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }
}

void specialized Sequence.first(where:)(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  if (v9)
  {
    while (1)
    {
      v12 = v11;
LABEL_8:
      v15 = *(*(a3 + 56) + ((v12 << 9) | (8 * __clz(__rbit64(v9)))));
      v13 = v15;
      v14 = a1(&v15);
      if (v3)
      {
        break;
      }

      if (v14)
      {
        goto LABEL_12;
      }

      v9 &= v9 - 1;

      v11 = v12;
      if (!v9)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v12 >= v10)
      {
LABEL_12:

        return;
      }

      v9 = *(v6 + 8 * v12);
      ++v11;
      if (v9)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

{
  v4 = v3;
  v5 = a3;
  if ((a3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for ActivitySession(0);
    lazy protocol witness table accessor for type ActivitySession and conformance NSObject(&lazy protocol witness table cache variable for type ActivitySession and conformance NSObject, type metadata accessor for ActivitySession, MEMORY[0x1E69E81B8]);
    Set.Iterator.init(_cocoa:)();
    v5 = v21;
    v6 = v22;
    v7 = v23;
    v8 = v24;
    v9 = v25;
  }

  else
  {
    v10 = -1 << *(a3 + 32);
    v6 = a3 + 56;
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

    v9 = v12 & *(a3 + 56);

    v8 = 0;
  }

  v20 = v5;
  if (v5 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v13 = v8;
  v14 = v9;
  v15 = v8;
  if (v9)
  {
LABEL_12:
    v16 = (v14 - 1) & v14;
    v17 = *(*(v5 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (v17)
    {
      while (1)
      {
        v26 = v17;
        v18 = a1(&v26);
        if (v4)
        {
          break;
        }

        if (v18)
        {
          goto LABEL_23;
        }

        v8 = v15;
        v9 = v16;
        v5 = v20;
        if ((v20 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (!__CocoaSet.Iterator.next()())
        {
          goto LABEL_20;
        }

        type metadata accessor for ActivitySession(0);
        swift_dynamicCast();
        v17 = v26;
        v15 = v8;
        v16 = v9;
        if (!v26)
        {
          goto LABEL_21;
        }
      }

LABEL_23:
      outlined consume of Set<String>.Iterator._Variant(v20);
    }

    else
    {
LABEL_21:
      v5 = v20;
LABEL_20:
      outlined consume of Set<String>.Iterator._Variant(v5);
    }
  }

  else
  {
    while (1)
    {
      v15 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v15 >= ((v7 + 64) >> 6))
      {
        goto LABEL_20;
      }

      v14 = *(v6 + 8 * v15);
      ++v13;
      if (v14)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t specialized Sequence.first(where:)(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
LABEL_16:
    v5 = __CocoaSet.count.getter();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_3:
      v6 = 0;
      do
      {
        if ((a3 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x1B2710B10](v6, a3);
          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
LABEL_13:
            __break(1u);
LABEL_14:

            return v7;
          }
        }

        else
        {
          if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_16;
          }

          v7 = *(a3 + 8 * v6 + 32);

          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_13;
          }
        }

        v12 = v7;
        v9 = a1(&v12);
        if (v3)
        {
          goto LABEL_14;
        }

        if (v9)
        {
          return v7;
        }

        ++v6;
      }

      while (v8 != v5);
    }
  }

  return 0;
}

void *specialized Sequence.first(where:)(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = a3;
  if ((a3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for BackgroundSession(0);
    lazy protocol witness table accessor for type ActivitySession and conformance NSObject(&lazy protocol witness table cache variable for type BackgroundSession and conformance BackgroundSession, type metadata accessor for BackgroundSession, &protocol conformance descriptor for BackgroundSession);
    result = Set.Iterator.init(_cocoa:)();
    v5 = v22;
    v7 = v23;
    v8 = v24;
    v9 = v25;
    v10 = v26;
  }

  else
  {
    v11 = -1 << *(a3 + 32);
    v7 = a3 + 56;
    v8 = ~v11;
    v12 = -v11;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v10 = v13 & *(a3 + 56);

    v9 = 0;
  }

  v21 = v5;
  if (v5 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v14 = v9;
  v15 = v10;
  v16 = v9;
  if (v10)
  {
LABEL_12:
    v17 = (v15 - 1) & v15;
    v18 = *(*(v5 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));

    if (v18)
    {
      while (1)
      {
        v27 = v18;
        v19 = a1(&v27);
        if (v4)
        {
          break;
        }

        if (v19)
        {
          goto LABEL_23;
        }

        v9 = v16;
        v10 = v17;
        v5 = v21;
        if ((v21 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (!__CocoaSet.Iterator.next()())
        {
          goto LABEL_20;
        }

        type metadata accessor for BackgroundSession(0);
        swift_dynamicCast();
        v18 = v27;
        v16 = v9;
        v17 = v10;
        if (!v27)
        {
          goto LABEL_21;
        }
      }

LABEL_23:
      outlined consume of Set<String>.Iterator._Variant(v21);
    }

    else
    {
LABEL_21:
      v5 = v21;
LABEL_20:
      outlined consume of Set<String>.Iterator._Variant(v5);
      return 0;
    }

    return v18;
  }

  else
  {
    while (1)
    {
      v16 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v16 >= ((v8 + 64) >> 6))
      {
        goto LABEL_20;
      }

      v15 = *(v7 + 8 * v16);
      ++v14;
      if (v15)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

void thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ()(uint64_t a1, void *a2)
{
  thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ()(a1, a2);
}

{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

Swift::Int ActivitySessionErrors.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1B27111E0](a1);
  return Hasher._finalize()();
}

uint64_t ActivitySessionManager.id.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t ActivitySessionManager._activitySessions.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t ActivitySessionManager.activitySessions.getter()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = (v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *(v0 + OBJC_IVAR___CPActivitySessionManager_queue);
  *v4 = v5;
  (*(v2 + 104))(v4, *MEMORY[0x1E69E8020], v1);
  v6 = v5;
  LOBYTE(v5) = _dispatchPreconditionTest(_:)();
  result = (*(v2 + 8))(v4, v1);
  if (v5)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    return v8[1];
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t ActivitySessionManager.delegate.setter(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*ActivitySessionManager.delegate.modify(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___CPActivitySessionManager_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return ActivitySessionManager.delegate.modify;
}

void ActivitySessionManager.delegate.modify(void **a1, char a2)
{
  v3 = *a1;
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

id ActivitySessionManager.applicationLauncher.getter()
{
  v1 = OBJC_IVAR___CPActivitySessionManager__applicationLauncher;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void ActivitySessionManager.applicationLauncher.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___CPActivitySessionManager__applicationLauncher;
  swift_beginAccess();

  v4 = MEMORY[0x1B270FF70](0x50747365546E6553, 0xEC00000065626F72);
  v5 = NSClassFromString(v4);

  if (v5 || (v6 = MEMORY[0x1B270FF70](0x7250747365544358, 0xEB0000000065626FLL), v7 = NSClassFromString(v6), v6, v7))
  {
    *(v1 + v3) = a1;
    swift_endAccess();
  }

  else
  {
    __break(1u);
  }
}

void (*ActivitySessionManager.applicationLauncher.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___CPActivitySessionManager__applicationLauncher;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 24) = v6;
  v7 = v6;
  return ActivitySessionManager.applicationLauncher.modify;
}

void ActivitySessionManager.applicationLauncher.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*(*a1 + 32) + *(*a1 + 40));
  if ((a2 & 1) == 0)
  {

    v10 = MEMORY[0x1B270FF70](0x50747365546E6553, 0xEC00000065626F72);
    v11 = NSClassFromString(v10);

    if (v11 || (v12 = MEMORY[0x1B270FF70](0x7250747365544358, 0xEB0000000065626FLL), v13 = NSClassFromString(v12), v12, v13))
    {
      *(*(v2 + 32) + *(v2 + 40)) = v3;
      goto LABEL_8;
    }

LABEL_12:
    __break(1u);
    return;
  }

  v5 = v3;

  v6 = MEMORY[0x1B270FF70](0x50747365546E6553, 0xEC00000065626F72);
  v7 = NSClassFromString(v6);

  if (!v7)
  {
    v8 = MEMORY[0x1B270FF70](0x7250747365544358, 0xEB0000000065626FLL);
    v9 = NSClassFromString(v8);

    if (!v9)
    {
      __break(1u);
      goto LABEL_12;
    }
  }

  *(*(v2 + 32) + *(v2 + 40)) = v5;

LABEL_8:
  swift_endAccess();

  free(v2);
}

uint64_t ActivitySessionManager.handedOff.getter()
{
  v1 = OBJC_IVAR___CPActivitySessionManager_handedOff;
  swift_beginAccess();
  return *(v0 + v1);
}

void ActivitySessionManager.handedOff.setter(char a1)
{
  v3 = OBJC_IVAR___CPActivitySessionManager_handedOff;
  swift_beginAccess();
  *(v1 + v3) = a1;
  ActivitySessionManager.handedOff.didset();
}

void ActivitySessionManager.handedOff.didset()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v1 + OBJC_IVAR___CPActivitySessionManager_queue);
  *v5 = v6;
  (*(v3 + 104))(v5, *MEMORY[0x1E69E8020], v2);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v31[2] = v36;
    if ((v36 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      type metadata accessor for ActivitySession(0);
      lazy protocol witness table accessor for type ActivitySession and conformance NSObject(&lazy protocol witness table cache variable for type ActivitySession and conformance NSObject, type metadata accessor for ActivitySession, MEMORY[0x1E69E81B8]);
      Set.Iterator.init(_cocoa:)();
      v8 = v37;
      v33 = v36;
      v9 = v38;
      v10 = v39;
      v11 = v40;
    }

    else
    {
      v12 = -1 << *(v36 + 32);
      v8 = v36 + 56;
      v9 = ~v12;
      v13 = -v12;
      if (v13 < 64)
      {
        v14 = ~(-1 << v13);
      }

      else
      {
        v14 = -1;
      }

      v11 = v14 & *(v36 + 56);
      v10 = 0;
    }

    v31[1] = v9;
    v15 = (v9 + 64) >> 6;
    v16 = v33;
    v32 = v1;
    while (1)
    {
      if (v16 < 0)
      {
        v22 = __CocoaSet.Iterator.next()();
        if (!v22 || (v34 = v22, type metadata accessor for ActivitySession(0), swift_dynamicCast(), v21 = v35, v19 = v10, v20 = v11, !v35))
        {
LABEL_27:
          outlined consume of Set<String>.Iterator._Variant(v16);

          return;
        }
      }

      else
      {
        v17 = v10;
        v18 = v11;
        v19 = v10;
        if (!v11)
        {
          while (1)
          {
            v19 = v17 + 1;
            if (__OFADD__(v17, 1))
            {
              break;
            }

            if (v19 >= v15)
            {
              goto LABEL_27;
            }

            v18 = *(v8 + 8 * v19);
            ++v17;
            if (v18)
            {
              goto LABEL_15;
            }
          }

          __break(1u);
          break;
        }

LABEL_15:
        v20 = (v18 - 1) & v18;
        v21 = *(*(v16 + 48) + ((v19 << 9) | (8 * __clz(__rbit64(v18)))));
        if (!v21)
        {
          goto LABEL_27;
        }
      }

      v23 = MEMORY[0x1E69E7D40];
      if ((*((*MEMORY[0x1E69E7D40] & *v1) + 0x150))())
      {
        v24 = *((*v23 & *v21) + 0x2F8);
        (v24)(&v35);
        v25 = v35;
        outlined consume of ActivitySession.State(v35);
        if (v25 >> 62 != 1)
        {
          v26 = swift_allocObject();
          v24();
          v35 = v26 | 0x4000000000000000;
          (*((*MEMORY[0x1E69E7D40] & *v21) + 0x300))(&v35);
        }

        v10 = v19;
        v11 = v20;
        v16 = v33;
      }

      else
      {
        (*((*v23 & *v21) + 0x2F8))(&v35);
        v27 = v35;
        if (v35 >> 62 == 1)
        {
          v28 = *((v35 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
          outlined copy of ActivitySession.State(v28);
          outlined consume of ActivitySession.State(v27);
          v34 = 0x8000000000000008;
          v35 = v28;
          outlined copy of ActivitySession.State(v28);
          v29 = v28;
          if (static ActivitySession.State.== infix(_:_:)(&v35, &v34))
          {
            outlined consume of ActivitySession.State(v28);
            v29 = 0x8000000000000000;
          }

          v35 = v29;
          v30 = *((*MEMORY[0x1E69E7D40] & *v21) + 0x300);
          outlined copy of ActivitySession.State(v29);
          v30(&v35);

          outlined consume of ActivitySession.State(v29);
          outlined consume of ActivitySession.State(v28);
          v10 = v19;
          v11 = v20;
          v1 = v32;
          v16 = v33;
        }

        else
        {
          outlined consume of ActivitySession.State(v35);

          v10 = v19;
          v11 = v20;
        }
      }
    }
  }

  __break(1u);
}

void (*ActivitySessionManager.handedOff.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return ActivitySessionManager.handedOff.modify;
}

void ActivitySessionManager.handedOff.modify(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    ActivitySessionManager.handedOff.didset();
  }
}

Class @objc ActivitySessionManager.tuSystemActivitySessions.getter(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  a3();

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationActivitySession, 0x1E69D8B58);
  lazy protocol witness table accessor for type TUConversationActivitySession and conformance NSObject(&lazy protocol witness table cache variable for type TUConversationActivitySession and conformance NSObject, &lazy cache variable for type metadata for TUConversationActivitySession, 0x1E69D8B58, MEMORY[0x1E69E81B8]);
  v5.super.isa = Set._bridgeToObjectiveC()().super.isa;

  return v5.super.isa;
}

uint64_t ActivitySessionManager.tuActivitySessions.getter(uint64_t (*a1)(uint64_t))
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + OBJC_IVAR___CPActivitySessionManager_queue);
  *v6 = v7;
  (*(v4 + 104))(v6, *MEMORY[0x1E69E8020], v3);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  result = (*(v4 + 8))(v6, v3);
  if (v7)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v10 = a1(v12[1]);

    v11 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo29TUConversationActivitySessionC_SayAEGTt0g5Tf4g_n(v10);

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::UInt64_optional __swiftcall ActivitySessionManager.localParticipantAlias(for:)(Swift::String_optional a1)
{
  object = a1.value._object;
  countAndFlagsBits = a1.value._countAndFlagsBits;
  v4 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x120))();
  if (v4)
  {
    if (object)
    {
      object = MEMORY[0x1B270FF70](countAndFlagsBits, object);
    }

    v5 = [v4 activitySessionManager:v1 localParticipantAliasForBundleIdentifier:object];
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0;
  }

  v6 = v4 == 0;
  v7 = v5;
  result.value = v7;
  result.is_nil = v6;
  return result;
}

id ActivitySessionManager.localParticipantCluster.getter()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x120))();
  if (!v1)
  {
    return 0;
  }

  v2 = [v1 activitySessionManagerRequestedLocalParticipantCluster_];
  swift_unknownObjectRelease();
  return v2;
}

void ActivitySessionManager.participant(with:for:includeLocalParticipant:completion:)(uint64_t a1, uint64_t a2, void *a3, char a4, void (*a5)(void), uint64_t a6)
{
  v13 = (*((*MEMORY[0x1E69E7D40] & *v6) + 0x120))();
  if (v13)
  {
    v14 = v13;
    if (a3)
    {
      a3 = MEMORY[0x1B270FF70](a2, a3);
    }

    v16[4] = a5;
    v16[5] = a6;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 1107296256;
    v16[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed TUConversationParticipant?) -> ();
    v16[3] = &block_descriptor_29;
    v15 = _Block_copy(v16);

    [v14 activitySessionManager:v6 participantWithIdentifier:a1 bundleIdentifier:a3 includeLocalParticipant:a4 & 1 completionHandler:v15];
    _Block_release(v15);
    swift_unknownObjectRelease();
  }

  else
  {
    a5();
  }
}

char *specialized thunk for @escaping @callee_guaranteed (@guaranteed TUConversationActivitySession, @guaranteed ActivitySessionManager) -> (@owned ActivitySession)@<X0>(id *a1@<X0>, id *a2@<X1>, char **a3@<X8>)
{
  result = _s14CopresenceCore15ActivitySessionC08activityD07managerACSo014TUConversationcD0C_AA0cD15ManagerProtocol_ptcfCTf4nen_nAA0cdH0C_Tt1g5(*a1, *a2);
  *a3 = result;
  return result;
}

uint64_t key path setter for ActivitySessionManager.activitySessionCreation : ActivitySessionManager(uint64_t *a1, void **a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x1A0);

  return v6(thunk for @escaping @callee_guaranteed (@in_guaranteed TUConversationActivitySession, @in_guaranteed ActivitySessionManager) -> (@out ActivitySession)partial apply, v5);
}

uint64_t (*ActivitySessionManager.activitySessionCreation.getter())()
{
  v1 = (v0 + OBJC_IVAR___CPActivitySessionManager__activitySessionCreation);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;

  return partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed TUConversationActivitySession, @in_guaranteed ActivitySessionManager) -> (@out ActivitySession);
}

void (*ActivitySessionManager.activitySessionCreation.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___CPActivitySessionManager__activitySessionCreation;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = (v1 + v5);
  swift_beginAccess();
  v8 = *v6;
  v7 = v6[1];
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v7;
  *(v4 + 24) = thunk for @escaping @callee_guaranteed (@in_guaranteed TUConversationActivitySession, @in_guaranteed ActivitySessionManager) -> (@out ActivitySession)partial apply;
  *(v4 + 32) = v9;

  return ActivitySessionManager.activitySessionCreation.modify;
}

uint64_t ActivitySessionManager.protectedStorage.getter@<X0>(void *a1@<X8>)
{
  v3 = OBJC_IVAR___CPActivitySessionManager____lazy_storage___protectedStorage;
  swift_beginAccess();
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + v3, &v7, &_s14CopresenceCore16ProtectedStorage_pSgMd, &_s14CopresenceCore16ProtectedStorage_pSgMR);
  if (v8)
  {
    return outlined init with take of ContiguousBytes(&v7, a1);
  }

  outlined destroy of NSObject?(&v7, &_s14CopresenceCore16ProtectedStorage_pSgMd, &_s14CopresenceCore16ProtectedStorage_pSgMR);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSUserDefaults, 0x1E695E000);
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  static NSUserDefaults.classProtectedStorage(suiteName:)(v5, v6, a1);

  outlined init with copy of UserNotificationCenter(a1, &v7);
  swift_beginAccess();
  outlined assign with take of ProtectedStorage?(&v7, v1 + v3);
  return swift_endAccess();
}

uint64_t ActivitySessionManager.protectedStorage.setter(__int128 *a1)
{
  outlined init with take of ContiguousBytes(a1, v4);
  v2 = OBJC_IVAR___CPActivitySessionManager____lazy_storage___protectedStorage;
  swift_beginAccess();
  outlined assign with take of ProtectedStorage?(v4, v1 + v2);
  return swift_endAccess();
}

void (*ActivitySessionManager.protectedStorage.modify(void *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x70uLL);
  }

  *a1 = v3;
  v3[13] = v1;
  ActivitySessionManager.protectedStorage.getter(v3);
  return ActivitySessionManager.protectedStorage.modify;
}

void ActivitySessionManager.protectedStorage.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 104);
  if (a2)
  {
    outlined init with copy of UserNotificationCenter(*a1, (v2 + 5));
    v4 = OBJC_IVAR___CPActivitySessionManager____lazy_storage___protectedStorage;
    swift_beginAccess();
    outlined assign with take of ProtectedStorage?((v2 + 5), v3 + v4);
    swift_endAccess();
    __swift_destroy_boxed_opaque_existential_1Tm(v2);
  }

  else
  {
    outlined init with take of ContiguousBytes(*a1, (v2 + 5));
    v5 = OBJC_IVAR___CPActivitySessionManager____lazy_storage___protectedStorage;
    swift_beginAccess();
    outlined assign with take of ProtectedStorage?((v2 + 5), v3 + v5);
    swift_endAccess();
  }

  free(v2);
}

uint64_t ActivitySessionManager.__allocating_init(id:groupUUID:activities:applicationController:delegate:queue:systemStateObserver:sceneObservationManager:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v31 = a7;
  v32 = a8;
  v35 = a5;
  v36 = a6;
  v33 = a3;
  v34 = a4;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v31 - v16;
  objc_allocWithZone(v8);
  ObjectType = swift_getObjectType();
  v19 = *(v12 + 16);
  v38 = a1;
  v19(v17, a1, v11);
  v37 = a2;
  v20 = a2;
  v21 = v31;
  v19(v15, v20, v11);
  v22 = [objc_allocWithZone(CPFeatureFlags) init];
  v23 = one-time initialization token for shared;
  swift_unknownObjectRetain();
  if (v23 != -1)
  {
    swift_once();
  }

  v24 = static CPAudioRoutePolicyManager.shared;
  v25 = objc_allocWithZone(CPSharedConversationServerBag);
  v26 = v24;
  v27 = [v25 init];
  v28 = (*(ObjectType + 456))(v17, v15, v33, v34, v35, v22, v36, v21, v26, v27, v32, 0, 1);
  swift_unknownObjectRelease();
  v29 = *(v12 + 8);
  v29(v37, v11);
  v29(v38, v11);
  swift_deallocPartialClassInstance();
  return v28;
}

uint64_t ActivitySessionManager.init(id:groupUUID:activities:applicationController:delegate:queue:systemStateObserver:sceneObservationManager:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v30 = a7;
  v31 = a8;
  v34 = a5;
  v35 = a6;
  v32 = a3;
  v33 = a4;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v30 - v15;
  ObjectType = swift_getObjectType();
  v18 = *(v11 + 16);
  v37 = a1;
  v18(v16, a1, v10);
  v36 = a2;
  v19 = a2;
  v20 = v30;
  v18(v14, v19, v10);
  v21 = [objc_allocWithZone(CPFeatureFlags) init];
  v22 = one-time initialization token for shared;
  swift_unknownObjectRetain();
  if (v22 != -1)
  {
    swift_once();
  }

  v23 = static CPAudioRoutePolicyManager.shared;
  v24 = objc_allocWithZone(CPSharedConversationServerBag);
  v25 = v23;
  v26 = [v24 init];
  v27 = (*(ObjectType + 456))(v16, v14, v32, v33, v34, v21, v35, v20, v25, v26, v31, 0, 1);
  swift_unknownObjectRelease();
  v28 = *(v11 + 8);
  v28(v36, v10);
  v28(v37, v10);
  swift_deallocPartialClassInstance();
  return v27;
}

char *ActivitySessionManager.__allocating_init(id:groupUUID:activities:applicationController:delegate:featureFlags:queue:systemStateObserver:audioRoutePolicyManager:serverBag:sceneObservationManager:topicsObserverCacheEvictionTimeout:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unsigned __int8 a13)
{
  v14 = v13;
  v61 = a8;
  v62 = a5;
  v63 = a6;
  v51 = a4;
  v52 = a9;
  v64 = a11;
  v58 = a12;
  LODWORD(v55) = a13;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVyShy14CopresenceCore15ActivitySessionCGGMd, &_s7Combine9PublishedVyShy14CopresenceCore15ActivitySessionCGGMR);
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v50 - v20;

  v22 = objc_allocWithZone(v14);
  v23 = OBJC_IVAR___CPActivitySessionManager___activitySessions;
  v66 = MEMORY[0x1E69E7CD0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy14CopresenceCore15ActivitySessionCGMd, &_sShy14CopresenceCore15ActivitySessionCGMR);
  Published.init(initialValue:)();
  (*(v19 + 32))(&v22[v23], v21, v18);
  swift_unknownObjectWeakInit();
  v22[OBJC_IVAR___CPActivitySessionManager_handedOff] = 0;
  v24 = &v22[OBJC_IVAR___CPActivitySessionManager__activitySessionCreation];
  *v24 = specialized thunk for @escaping @callee_guaranteed (@guaranteed TUConversationActivitySession, @guaranteed ActivitySessionManager) -> (@owned ActivitySession);
  v24[1] = 0;
  v25 = &v22[OBJC_IVAR___CPActivitySessionManager____lazy_storage___protectedStorage];
  *v25 = 0u;
  *(v25 + 1) = 0u;
  *(v25 + 4) = 0;
  *&v22[OBJC_IVAR___CPActivitySessionManager_topicsObserver] = 0;
  *&v22[OBJC_IVAR___CPActivitySessionManager_topicsObserverSubscription] = 0;
  v26 = &v22[OBJC_IVAR___CPActivitySessionManager__topicsObserverGenerator];
  *v26 = specialized thunk for @escaping @callee_guaranteed (@guaranteed ActivitySessionManager, @in_guaranteed UUID, @unowned UInt64) -> (@owned PubSubTopicsObserver);
  v26[1] = 0;
  v27 = OBJC_IVAR___CPActivitySessionManager_id;
  v28 = type metadata accessor for UUID();
  v56 = *(v28 - 8);
  v29 = *(v56 + 16);
  v60 = a1;
  v29(&v22[v27], a1, v28);
  v59 = a2;
  v57 = v28;
  v29(&v22[OBJC_IVAR___CPActivitySessionManager_groupUUID], a2, v28);
  v30 = v61;
  *&v22[OBJC_IVAR___CPActivitySessionManager_queue] = a7;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v31 = v51;
  *&v22[OBJC_IVAR___CPActivitySessionManager_applicationController] = v51;
  *&v22[OBJC_IVAR___CPActivitySessionManager_featureFlags] = v63;
  *&v22[OBJC_IVAR___CPActivitySessionManager_systemStateObserver] = v30;
  *&v22[OBJC_IVAR___CPActivitySessionManager_audioRoutePolicyManager] = v52;
  *&v22[OBJC_IVAR___CPActivitySessionManager_serverBag] = a10;
  v32 = 50;
  if ((v55 & 1) == 0)
  {
    v32 = v58;
  }

  *&v22[OBJC_IVAR___CPActivitySessionManager_topicsObserverCacheEvictionTimeout] = v32;
  *&v22[OBJC_IVAR___CPActivitySessionManager_sceneObservationManager] = v64;
  v33 = objc_allocWithZone(CPApplicationLauncher);
  swift_unknownObjectRetain();
  v54 = a7;
  v55 = v31;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v58 = a10;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v34 = [v33 initWithSpatialApplicationManager_];
  v35 = OBJC_IVAR___CPActivitySessionManager__applicationLauncher;
  swift_beginAccess();
  *&v22[v35] = v34;
  v65.receiver = v22;
  v65.super_class = v53;
  v36 = objc_msgSendSuper2(&v65, sel_init);
  v37 = *&v36[OBJC_IVAR___CPActivitySessionManager_applicationController];
  v38 = *&v37[OBJC_IVAR___CPApplicationController_lock];
  v39 = *(v38 + 16);
  v40 = v36;
  v41 = v37;
  os_unfair_lock_lock(v39);
  [*&v41[OBJC_IVAR___CPApplicationController_observers] addObject_];
  os_unfair_lock_unlock(*(v38 + 16));

  v42 = *&v40[OBJC_IVAR___CPActivitySessionManager_systemStateObserver];
  if (v42)
  {
    [v42 addObserver:v40 withQueue:*&v40[OBJC_IVAR___CPActivitySessionManager_queue]];
  }

  else
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v43 = type metadata accessor for Logger();
    __swift_project_value_buffer(v43, static Log.default);
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_1AEB26000, v44, v45, "Unable to add observer to systemStateObserver as it is nil", v46, 2u);
      MEMORY[0x1B27120C0](v46, -1, -1);
    }
  }

  [*&v40[OBJC_IVAR___CPActivitySessionManager_audioRoutePolicyManager] addObserver:v40 withQueue:*&v40[OBJC_IVAR___CPActivitySessionManager_queue]];
  ActivitySessionManager.createStaticActivities()();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v47 = v57;
  v48 = *(v56 + 8);
  v48(v59, v57);
  v48(v60, v47);
  return v40;
}

char *ActivitySessionManager.init(id:groupUUID:activities:applicationController:delegate:featureFlags:queue:systemStateObserver:audioRoutePolicyManager:serverBag:sceneObservationManager:topicsObserverCacheEvictionTimeout:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unsigned __int8 a13)
{
  v52 = a7;
  v53 = a4;
  v58 = a5;
  v59 = a6;
  v57 = a2;
  v60 = a10;
  v61 = a11;
  v55 = a12;
  LODWORD(v54) = a13;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVyShy14CopresenceCore15ActivitySessionCGGMd, &_s7Combine9PublishedVyShy14CopresenceCore15ActivitySessionCGGMR);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v49 - v18;

  v20 = OBJC_IVAR___CPActivitySessionManager___activitySessions;
  v63 = MEMORY[0x1E69E7CD0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy14CopresenceCore15ActivitySessionCGMd, &_sShy14CopresenceCore15ActivitySessionCGMR);
  Published.init(initialValue:)();
  (*(v17 + 32))(&v13[v20], v19, v16);
  swift_unknownObjectWeakInit();
  v13[OBJC_IVAR___CPActivitySessionManager_handedOff] = 0;
  v21 = &v13[OBJC_IVAR___CPActivitySessionManager__activitySessionCreation];
  *v21 = specialized thunk for @escaping @callee_guaranteed (@guaranteed TUConversationActivitySession, @guaranteed ActivitySessionManager) -> (@owned ActivitySession);
  v21[1] = 0;
  v22 = &v13[OBJC_IVAR___CPActivitySessionManager____lazy_storage___protectedStorage];
  *v22 = 0u;
  *(v22 + 1) = 0u;
  *(v22 + 4) = 0;
  *&v13[OBJC_IVAR___CPActivitySessionManager_topicsObserver] = 0;
  *&v13[OBJC_IVAR___CPActivitySessionManager_topicsObserverSubscription] = 0;
  v23 = &v13[OBJC_IVAR___CPActivitySessionManager__topicsObserverGenerator];
  *v23 = specialized thunk for @escaping @callee_guaranteed (@guaranteed ActivitySessionManager, @in_guaranteed UUID, @unowned UInt64) -> (@owned PubSubTopicsObserver);
  v23[1] = 0;
  v24 = OBJC_IVAR___CPActivitySessionManager_id;
  v25 = type metadata accessor for UUID();
  v50 = *(v25 - 8);
  v26 = *(v50 + 16);
  v56 = a1;
  v26(&v13[v24], a1, v25);
  v51 = v25;
  v26(&v13[OBJC_IVAR___CPActivitySessionManager_groupUUID], v57, v25);
  v27 = v52;
  *&v13[OBJC_IVAR___CPActivitySessionManager_queue] = v52;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v28 = v53;
  *&v13[OBJC_IVAR___CPActivitySessionManager_applicationController] = v53;
  v29 = v60;
  *&v13[OBJC_IVAR___CPActivitySessionManager_featureFlags] = v59;
  *&v13[OBJC_IVAR___CPActivitySessionManager_systemStateObserver] = a8;
  *&v13[OBJC_IVAR___CPActivitySessionManager_audioRoutePolicyManager] = a9;
  *&v13[OBJC_IVAR___CPActivitySessionManager_serverBag] = v29;
  v30 = 50;
  if ((v54 & 1) == 0)
  {
    v30 = v55;
  }

  *&v13[OBJC_IVAR___CPActivitySessionManager_topicsObserverCacheEvictionTimeout] = v30;
  *&v13[OBJC_IVAR___CPActivitySessionManager_sceneObservationManager] = v61;
  v31 = objc_allocWithZone(CPApplicationLauncher);
  v55 = a8;
  swift_unknownObjectRetain();
  v52 = v27;
  v53 = v28;
  swift_unknownObjectRetain();
  v54 = a9;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v32 = [v31 initWithSpatialApplicationManager_];
  v33 = OBJC_IVAR___CPActivitySessionManager__applicationLauncher;
  swift_beginAccess();
  *&v13[v33] = v32;
  v34 = type metadata accessor for ActivitySessionManager(0);
  v62.receiver = v13;
  v62.super_class = v34;
  v35 = objc_msgSendSuper2(&v62, sel_init);
  v36 = *&v35[OBJC_IVAR___CPActivitySessionManager_applicationController];
  v37 = *&v36[OBJC_IVAR___CPApplicationController_lock];
  v38 = *(v37 + 16);
  v39 = v35;
  v40 = v36;
  os_unfair_lock_lock(v38);
  [*&v40[OBJC_IVAR___CPApplicationController_observers] addObject_];
  os_unfair_lock_unlock(*(v37 + 16));

  v41 = *&v39[OBJC_IVAR___CPActivitySessionManager_systemStateObserver];
  if (v41)
  {
    [v41 addObserver:v39 withQueue:*&v39[OBJC_IVAR___CPActivitySessionManager_queue]];
  }

  else
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v42 = type metadata accessor for Logger();
    __swift_project_value_buffer(v42, static Log.default);
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_1AEB26000, v43, v44, "Unable to add observer to systemStateObserver as it is nil", v45, 2u);
      MEMORY[0x1B27120C0](v45, -1, -1);
    }
  }

  [*&v39[OBJC_IVAR___CPActivitySessionManager_audioRoutePolicyManager] addObserver:v39 withQueue:*&v39[OBJC_IVAR___CPActivitySessionManager_queue]];
  ActivitySessionManager.createStaticActivities()();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v46 = v51;
  v47 = *(v50 + 8);
  v47(v57, v51);
  v47(v56, v46);
  return v39;
}

void *ActivitySessionManager.createActivitySession(tuActivitySession:)(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v185 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v205 = type metadata accessor for UUID();
  v8 = *(v205 - 8);
  v9 = MEMORY[0x1EEE9AC00](v205);
  v203 = &v185 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v204 = &v185 - v11;
  v12 = type metadata accessor for DispatchPredicate();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = (&v185 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(v2 + OBJC_IVAR___CPActivitySessionManager_queue);
  *v15 = v16;
  (*(v13 + 104))(v15, *MEMORY[0x1E69E8020], v12);
  v17 = v16;
  LOBYTE(v16) = _dispatchPreconditionTest(_:)();
  (*(v13 + 8))(v15, v12);
  if ((v16 & 1) == 0)
  {
    goto LABEL_145;
  }

  v198 = v8;
  v196 = v7;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v18 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy14CopresenceCore15ActivitySessionCG_So014TUConversationF0Cs5NeverOTg504_s14d6Core22fg30ManagerC06createcD002tucD0AA0co23CSgSo014TUConversationcO18C_tFSo0hC0CAGXEfU_Tf1cn_n(v208);

  v19 = [a1 activity];
  v208 = v19;
  MEMORY[0x1EEE9AC00](v19);
  *(&v185 - 2) = &v208;
  v20 = v18;
  LOBYTE(v18) = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), (&v185 - 4), v18);

  if (v18)
  {

    return 0;
  }

  v21 = [a1 activity];
  v22 = [v21 bundleIdentifier];

  if (!v22)
  {

    if (one-time initialization token for default != -1)
    {
      goto LABEL_147;
    }

    goto LABEL_18;
  }

  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;

  v26 = [*(v2 + OBJC_IVAR___CPActivitySessionManager_serverBag) blockedActivitySessionBundleIdentifiers];
  if (v26)
  {
    v27 = v26;
    v28 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v29 = (v28 + 40);
    v30 = *(v28 + 16) + 1;
    while (--v30)
    {
      if (*(v29 - 1) != v23 || *v29 != v25)
      {
        v29 += 2;
        if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          continue;
        }
      }

      if (one-time initialization token for default != -1)
      {
        swift_once();
      }

      v32 = type metadata accessor for Logger();
      __swift_project_value_buffer(v32, static Log.default);

      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v208 = v36;
        *v35 = 136315138;
        v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v25, &v208);

        *(v35 + 4) = v37;
        _os_log_impl(&dword_1AEB26000, v33, v34, "Failed to create activitySession, bundleIdentifier %s is blocked via server bag", v35, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v36);
        MEMORY[0x1B27120C0](v36, -1, -1);
        goto LABEL_20;
      }

      goto LABEL_56;
    }
  }

  v192 = v23;
  v186 = v5;
  v187 = v4;
  swift_getKeyPath();
  swift_getKeyPath();
  v197 = v2;
  static Published.subscript.getter();

  v201 = a1;
  v195 = v25;
  v191 = v208;
  if ((v208 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for ActivitySession(0);
    lazy protocol witness table accessor for type ActivitySession and conformance NSObject(&lazy protocol witness table cache variable for type ActivitySession and conformance NSObject, type metadata accessor for ActivitySession, MEMORY[0x1E69E81B8]);
    Set.Iterator.init(_cocoa:)();
    v41 = v207[2];
    v40 = v207[3];
    v43 = v207[4];
    v42 = v207[5];
    v44 = v207[6];
  }

  else
  {
    v45 = -1 << *(v208 + 32);
    v40 = (v208 + 56);
    v43 = ~v45;
    v46 = -v45;
    if (v46 < 64)
    {
      v47 = ~(-1 << v46);
    }

    else
    {
      v47 = -1;
    }

    v44 = (v47 & *(v208 + 56));

    v42 = 0;
    v41 = v48;
  }

  v190 = v43;
  v49 = (v43 + 64) >> 6;
  i = MEMORY[0x1E69E7D40];
  v199 = v20;
  v51 = v42;
  while (1)
  {
    if (v41 < 0)
    {
      v57 = __CocoaSet.Iterator.next()();
      if (!v57)
      {
        v202 = 0;
        v189 = 1;
        goto LABEL_51;
      }

      v206[0] = v57;
      type metadata accessor for ActivitySession(0);
      swift_dynamicCast();
      v56 = v208;
      v54 = v51;
      v55 = v44;
      if (!v208)
      {
LABEL_50:
        v202 = 0;
        v189 = 1;
        goto LABEL_51;
      }
    }

    else
    {
      v52 = v51;
      v53 = v44;
      v54 = v51;
      if (!v44)
      {
        while (1)
        {
          v54 = v52 + 1;
          if (__OFADD__(v52, 1))
          {
            break;
          }

          if (v54 >= v49)
          {
            goto LABEL_50;
          }

          v53 = v40[v54];
          ++v52;
          if (v53)
          {
            goto LABEL_35;
          }
        }

        __break(1u);
LABEL_144:
        __break(1u);
LABEL_145:
        __break(1u);
        goto LABEL_146;
      }

LABEL_35:
      v55 = (v53 - 1) & v53;
      v56 = *(*(v41 + 48) + ((v54 << 9) | (8 * __clz(__rbit64(v53)))));
      if (!v56)
      {
        goto LABEL_50;
      }
    }

    v193 = v51;
    v194 = v44;
    v58 = v56;
    v59 = (*((*i & *v56) + 0x328))();
    v60 = [v59 bundleIdentifier];

    if (v60)
    {
      v202 = v58;
      v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v63 = v62;

      if (v61 == v192 && v63 == v195)
      {

        v58 = v202;
      }

      else
      {
        v65 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v58 = v202;
        if ((v65 & 1) == 0)
        {
          goto LABEL_29;
        }
      }

      v67 = *((*i & *v58) + 0x2F8);
      v67(&v208, v66);
      v206[0] = 0x8000000000000000;
      v68 = static ActivitySession.State.== infix(_:_:)(&v208, v206);
      v69 = outlined consume of ActivitySession.State(v208);
      if (v68)
      {
        v189 = 0;
        i = MEMORY[0x1E69E7D40];
        goto LABEL_51;
      }

      v67(&v208, v69);
      v206[0] = 0x8000000000000008;
      v70 = static ActivitySession.State.== infix(_:_:)(&v208, v206);
      outlined consume of ActivitySession.State(v208);
      i = MEMORY[0x1E69E7D40];
      if (v70)
      {
        break;
      }
    }

LABEL_29:

    v51 = v54;
    v44 = v55;
  }

  v189 = 0;
LABEL_51:

  outlined consume of Set<String>.Iterator._Variant(v41);

  v72 = (*(ObjectType + 360))(v71);
  v73 = v201;
  if ((v72 & 1) == 0)
  {
    v74 = [v201 activity];
    v75 = [v74 isSystemActivity];

    if ((v75 & 1) == 0)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v116 = v208;
      v205 = v208;
      if ((v208 & 0xC000000000000001) != 0)
      {
        swift_unknownObjectRetain();
        __CocoaSet.makeIterator()();
        type metadata accessor for ActivitySession(0);
        lazy protocol witness table accessor for type ActivitySession and conformance NSObject(&lazy protocol witness table cache variable for type ActivitySession and conformance NSObject, type metadata accessor for ActivitySession, MEMORY[0x1E69E81B8]);
        Set.Iterator.init(_cocoa:)();
        v116 = v208;
        v117 = v209;
        v118 = v210;
        v119 = v211;
        v120 = v212;
      }

      else
      {
        v122 = -1 << *(v208 + 32);
        v117 = v208 + 56;
        v118 = ~v122;
        v123 = -v122;
        if (v123 < 64)
        {
          v124 = ~(-1 << v123);
        }

        else
        {
          v124 = -1;
        }

        v120 = v124 & *(v208 + 56);

        v119 = 0;
      }

      v204 = v118;
      v125 = (v118 + 64) >> 6;
      if ((v116 & 0x8000000000000000) == 0)
      {
        goto LABEL_95;
      }

LABEL_92:
      v126 = __CocoaSet.Iterator.next()();
      if (v126)
      {
        v207[0] = v126;
        type metadata accessor for ActivitySession(0);
        v127 = swift_dynamicCast();
        v128 = v206[0];
        v129 = v119;
        v130 = v120;
        if (v206[0])
        {
          while (1)
          {
            v133 = (*((*MEMORY[0x1E69E7D40] & *v128) + 0x328))(v127);
            v134 = [v133 isSystemActivity];

            if (!v134)
            {
              break;
            }

            v119 = v129;
            v120 = v130;
            i = MEMORY[0x1E69E7D40];
            if (v116 < 0)
            {
              goto LABEL_92;
            }

LABEL_95:
            v131 = v119;
            v132 = v120;
            v129 = v119;
            if (!v120)
            {
              while (1)
              {
                v129 = v131 + 1;
                if (__OFADD__(v131, 1))
                {
                  break;
                }

                if (v129 >= v125)
                {
                  goto LABEL_103;
                }

                v132 = *(v117 + 8 * v129);
                ++v131;
                if (v132)
                {
                  goto LABEL_99;
                }
              }

LABEL_146:
              __break(1u);
LABEL_147:
              swift_once();
LABEL_18:
              v38 = type metadata accessor for Logger();
              __swift_project_value_buffer(v38, static Log.default);
              v33 = Logger.logObject.getter();
              v39 = static os_log_type_t.error.getter();
              if (os_log_type_enabled(v33, v39))
              {
                v35 = swift_slowAlloc();
                *v35 = 0;
                _os_log_impl(&dword_1AEB26000, v33, v39, "Failed to create activitySession, bundleIdentifier is nil", v35, 2u);
LABEL_20:
                MEMORY[0x1B27120C0](v35, -1, -1);
              }

LABEL_56:

              return 0;
            }

LABEL_99:
            v130 = (v132 - 1) & v132;
            v127 = *(*(v116 + 48) + ((v129 << 9) | (8 * __clz(__rbit64(v132)))));
            v128 = v127;
            if (!v127)
            {
              goto LABEL_140;
            }
          }

          outlined consume of Set<String>.Iterator._Variant(v116);

          v73 = v201;
          v184 = shouldContinue #1 (with:) in ActivitySessionManager.createActivitySession(tuActivitySession:)(v128, v201, v192, v195);

          v99 = v197;
          i = MEMORY[0x1E69E7D40];
          if ((v184 & 1) == 0)
          {
            goto LABEL_142;
          }

LABEL_104:
          v135 = (*((*i & *v99) + 0x198))(v121);
          v81 = v135(v73, v99);

          v137 = *(v99 + OBJC_IVAR___CPActivitySessionManager_applicationController);
          v138 = *((*i & *v81) + 0x328);
          v139 = (v138)(v136);
          v140 = specialized CPApplicationControllerProtocol.isActivitySupported(_:)(v139);

          v141 = v138();
          [v141 setSupported_];
          v142 = (*((*i & *v81) + 0x330))(v141);
          v143 = (*((*i & *v99) + 0x150))(v142);
          if (v143)
          {
            v144 = swift_allocObject();
            (*((*i & *v81) + 0x2F8))();
            v206[0] = v144 | 0x4000000000000000;
            v143 = (*((*i & *v81) + 0x300))(v206);
          }

          if ((v189 & 1) == 0)
          {
            v206[0] = 0x8000000000000000;
            v143 = (*((*i & *v81) + 0x300))(v206);
          }

          v145 = (v138)(v143);
          v146 = [v145 bundleIdentifier];

          if (v146)
          {
            v147 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v149 = v148;

            v150 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            if (v149)
            {
              if (v147 == v150 && v149 == v151)
              {
              }

              else
              {
                v153 = _stringCompareWithSmolCheck(_:_:expecting:)();

                v154 = &_OBJC_LABEL_PROTOCOL___SKPresenceDelegate;
                if ((v153 & 1) == 0)
                {
                  goto LABEL_121;
                }
              }

              v206[0] = 0x8000000000000000;
              (*((*i & *v81) + 0x300))(v206);
LABEL_120:
              v154 = &_OBJC_LABEL_PROTOCOL___SKPresenceDelegate;
LABEL_121:
              v155 = [v201 v154[500]];
              v156 = (*((*i & *v137) + 0x118))();

              if (v156)
              {
                v206[0] = 0x8000000000000000;
                (*((*i & *v81) + 0x300))(v206);
              }

              swift_getKeyPath();
              swift_getKeyPath();
              v157 = v81;
              v158 = static Published.subscript.modify();
              specialized Set._Variant.insert(_:)(v207, v157);

              v158(v206, 0);
              v159 = v197;

              ActivitySessionManager.logMetricsForSessionStart(_:)(v157);
              v160 = (*((*i & *v157) + 0x340))();
              if ((v160 & 1) == 0)
              {
                LOBYTE(v206[0]) = 2;
                v161 = v157;
                v162 = [v201 timestamp];
                v163 = v196;
                static Date._unconditionallyBridgeFromObjectiveC(_:)();

                specialized static SharePlayLatencyLogger.logInterval(for:activityIdentifier:serverStartTime:)(v206, v163, v161);
                v160 = (*(v186 + 8))(v163, v187);
              }

              v164 = (v138)(v160);
              v165 = [v164 isSystemActivity];

              if ((v165 & 1) != 0 || (v166 = (*((*i & *v159) + 0x120))()) == 0)
              {
              }

              else
              {
                v167 = v166;
                if ([v166 respondsToSelector_])
                {
                  (*((*i & *v159) + 0x170))();
                  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationActivitySession, 0x1E69D8B58);
                  lazy protocol witness table accessor for type TUConversationActivitySession and conformance NSObject(&lazy protocol witness table cache variable for type TUConversationActivitySession and conformance NSObject, &lazy cache variable for type metadata for TUConversationActivitySession, 0x1E69D8B58, MEMORY[0x1E69E81B8]);
                  isa = Set._bridgeToObjectiveC()().super.isa;

                  [v167 activitySessionManager:v159 tuActivitySessionsDidChange:isa];
                  swift_unknownObjectRelease();
                }

                else
                {

                  swift_unknownObjectRelease();
                }
              }

              return v81;
            }
          }

          else
          {
            static String._unconditionallyBridgeFromObjectiveC(_:)();
          }

          goto LABEL_120;
        }

LABEL_140:
        i = MEMORY[0x1E69E7D40];
      }

LABEL_103:
      outlined consume of Set<String>.Iterator._Variant(v116);

      v99 = v197;
      v73 = v201;
      goto LABEL_104;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v76 = v208;
  v190 = v208;
  if ((v208 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for ActivitySession(0);
    lazy protocol witness table accessor for type ActivitySession and conformance NSObject(&lazy protocol witness table cache variable for type ActivitySession and conformance NSObject, type metadata accessor for ActivitySession, MEMORY[0x1E69E81B8]);
    Set.Iterator.init(_cocoa:)();
    v76 = v208;
    v77 = v209;
    v78 = v210;
    v79 = v211;
    v80 = v212;
  }

  else
  {
    v83 = -1 << *(v208 + 32);
    v77 = v208 + 56;
    v78 = ~v83;
    v84 = -v83;
    if (v84 < 64)
    {
      v85 = ~(-1 << v84);
    }

    else
    {
      v85 = -1;
    }

    v80 = v85 & *(v208 + 56);

    v79 = 0;
  }

  v188 = v78;
  v86 = (v78 + 64) >> 6;
  v191 = (v198 + 8);
  v199 = v77;
  v198 = v76;
  while (2)
  {
    if (v76 < 0)
    {
      v102 = __CocoaSet.Iterator.next()();
      i = MEMORY[0x1E69E7D40];
      if (!v102 || (v207[0] = v102, type metadata accessor for ActivitySession(0), swift_dynamicCast(), v101 = v206[0], v98 = v79, v100 = v80, !v206[0]))
      {
LABEL_85:
        v99 = v197;
LABEL_86:
        outlined consume of Set<String>.Iterator._Variant(v76);

        goto LABEL_104;
      }
    }

    else
    {
      v96 = v79;
      v97 = v80;
      v98 = v79;
      v99 = v197;
      for (i = MEMORY[0x1E69E7D40]; !v97; ++v96)
      {
        v98 = v96 + 1;
        if (__OFADD__(v96, 1))
        {
          goto LABEL_144;
        }

        if (v98 >= v86)
        {
          goto LABEL_86;
        }

        v97 = *(v77 + 8 * v98);
      }

      v100 = (v97 - 1) & v97;
      v101 = *(*(v76 + 48) + ((v98 << 9) | (8 * __clz(__rbit64(v97)))));
      if (!v101)
      {
        goto LABEL_85;
      }
    }

    ObjectType = v100;
    v193 = v79;
    v194 = v80;
    v103 = *((*i & *v101) + 0x328);
    v104 = v103();
    v105 = [v104 activityIdentifier];

    v106 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v108 = v107;

    v109 = [v73 activity];
    v110 = [v109 activityIdentifier];

    v111 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v113 = v112;

    if (v106 == v111 && v108 == v113)
    {

      v73 = v201;
    }

    else
    {
      v115 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v73 = v201;
      if ((v115 & 1) == 0)
      {
        goto LABEL_66;
      }
    }

    v88 = (v103)(v87);
    v89 = [v88 UUID];

    v90 = v204;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v91 = [v73 activity];
    v92 = [v91 UUID];

    v93 = v203;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    LOBYTE(v91) = static UUID.== infix(_:_:)();
    v94 = *v191;
    v95 = v205;
    (*v191)(v93, v205);
    v94(v90, v95);
    if ((v91 & 1) == 0)
    {
LABEL_66:

      v79 = v98;
      v80 = ObjectType;
      v77 = v199;
      v76 = v198;
      continue;
    }

    break;
  }

  outlined consume of Set<String>.Iterator._Variant(v198);

  v169 = shouldContinue #1 (with:) in ActivitySessionManager.createActivitySession(tuActivitySession:)(v101, v73, v192, v195);

  if (v169)
  {

    v99 = v197;
    i = MEMORY[0x1E69E7D40];
    goto LABEL_104;
  }

  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v170 = type metadata accessor for Logger();
  __swift_project_value_buffer(v170, static Log.default);
  v171 = v73;
  v172 = Logger.logObject.getter();
  v173 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v172, v173))
  {
    v174 = swift_slowAlloc();
    v175 = swift_slowAlloc();
    v206[0] = v175;
    *v174 = 136315138;
    v176 = [v171 activity];
    v177 = [v176 UUID];

    v178 = v204;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    lazy protocol witness table accessor for type ActivitySession and conformance NSObject(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v179 = v205;
    v180 = dispatch thunk of CustomStringConvertible.description.getter();
    v182 = v181;
    v94(v178, v179);
    v183 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v180, v182, v206);

    *(v174 + 4) = v183;
    _os_log_impl(&dword_1AEB26000, v172, v173, "Ignoring new activity session due to existing activity session with same identifier (%s)", v174, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v175);
    MEMORY[0x1B27120C0](v175, -1, -1);
    MEMORY[0x1B27120C0](v174, -1, -1);
  }

LABEL_142:
  return 0;
}

uint64_t shouldContinue #1 (with:) in ActivitySessionManager.createActivitySession(tuActivitySession:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v74 = a3;
  v75 = a4;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v76 = v6;
  v77 = v7;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v70 - v11;
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v70 - v18;
  v20 = [a2 UUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v21 = [a1 UUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  lazy protocol witness table accessor for type ActivitySession and conformance NSObject(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
  LOBYTE(v21) = dispatch thunk of static Equatable.== infix(_:_:)();
  v22 = *(v14 + 8);
  v22(v17, v13);
  v23 = (v22)(v19, v13);
  if (v21)
  {
    v24 = MEMORY[0x1E69E7D40];
    v25 = (*((*MEMORY[0x1E69E7D40] & *a1) + 0x328))(v23);
    v26 = [v25 isStaticActivity];

    if (v26 && ((*((*v24 & *a1) + 0x2F8))(&v79), v78 = 0x8000000000000010, v27 = static ActivitySession.State.== infix(_:_:)(&v79, &v78), outlined consume of ActivitySession.State(v79), (v27 & 1) != 0))
    {
      if (one-time initialization token for default != -1)
      {
        swift_once();
      }

      v28 = type metadata accessor for Logger();
      __swift_project_value_buffer(v28, static Log.default);
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_1AEB26000, v29, v30, "Trying to create a new activity session with the same identifier as an already existing static activity session, ignoring the new session and permitting join on the existing one.", v31, 2u);
        MEMORY[0x1B27120C0](v31, -1, -1);
      }

      (*((*v24 & *a1) + 0x448))();
    }

    else
    {
      if (one-time initialization token for default != -1)
      {
        swift_once();
      }

      v45 = type metadata accessor for Logger();
      __swift_project_value_buffer(v45, static Log.default);
      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        *v48 = 0;
        _os_log_impl(&dword_1AEB26000, v46, v47, "Trying to create a new activity session with the same identifier as an already existing activity session, ignoring the new activity session.", v48, 2u);
        MEMORY[0x1B27120C0](v48, -1, -1);
      }
    }
  }

  else
  {
    v73 = a2;
    v32 = [a2 timestamp];
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v33 = *MEMORY[0x1E69E7D40] & *a1;
    v34 = a1;
    v71 = *(v33 + 0x388);
    v72 = v33 + 904;
    v35 = v71();
    v36 = [v35 timestamp];

    static Date._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = static Date.> infix(_:_:)();
    v38 = v76;
    v39 = *(v77 + 8);
    v77 += 8;
    v39(v10, v76);
    v39(v12, v38);
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v40 = type metadata accessor for Logger();
    __swift_project_value_buffer(v40, static Log.default);
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 67109120;
      *(v43 + 4) = v37 & 1;
      _os_log_impl(&dword_1AEB26000, v41, v42, "Comparison result: isNewer? %{BOOL}d", v43, 8u);
      MEMORY[0x1B27120C0](v43, -1, -1);
    }

    if (v37)
    {
      (*((*MEMORY[0x1E69E7D40] & *v34) + 0x4D0))(v74, v75);
      return 1;
    }

    v49 = v12;
    v50 = v73;
    v51 = v34;
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = v39;
      v55 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v79 = v75;
      *v55 = 136315394;
      LODWORD(v74) = v53;
      v56 = [v50 timestamp];
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      lazy protocol witness table accessor for type ActivitySession and conformance NSObject(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
      v57 = v76;
      v58 = dispatch thunk of CustomStringConvertible.description.getter();
      v60 = v59;
      v54(v49, v57);
      v61 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v58, v60, &v79);

      *(v55 + 4) = v61;
      *(v55 + 12) = 2080;
      v63 = (v71)(v62);
      v64 = [v63 timestamp];

      static Date._unconditionallyBridgeFromObjectiveC(_:)();
      v65 = dispatch thunk of CustomStringConvertible.description.getter();
      v67 = v66;
      v54(v49, v57);
      v68 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v65, v67, &v79);

      *(v55 + 14) = v68;
      _os_log_impl(&dword_1AEB26000, v52, v74, "Ignoring new activity session since it was made before (%s) the latest activity session (%s)", v55, 0x16u);
      v69 = v75;
      swift_arrayDestroy();
      MEMORY[0x1B27120C0](v69, -1, -1);
      MEMORY[0x1B27120C0](v55, -1, -1);
    }
  }

  return 0;
}

uint64_t specialized CPApplicationControllerProtocol.isActivitySupported(_:)(void *a1)
{
  v2 = [a1 bundleIdentifier];
  if (v2)
  {
    v3 = v2;
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;

    v7._countAndFlagsBits = v4;
    v7._object = v6;
    LOBYTE(v3) = CPApplicationController.isBundleIdentifierSupported(_:)(v7);

    return v3 & 1;
  }

  else
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Log.default);
    v10 = a1;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v19 = v14;
      *v13 = 136315138;
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationActivity, 0x1E69D8B28);
      v15 = v10;
      v16 = String.init<A>(reflecting:)();
      v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &v19);

      *(v13 + 4) = v18;
      _os_log_impl(&dword_1AEB26000, v11, v12, "Missing bundle identifier: %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      MEMORY[0x1B27120C0](v14, -1, -1);
      MEMORY[0x1B27120C0](v13, -1, -1);
    }

    return 0;
  }
}

void ActivitySessionManager.leaveActivitySession(activitySessionUUID:)(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v45 - v8;
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 1);
  MEMORY[0x1EEE9AC00](v10);
  v13 = (&v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *&v1[OBJC_IVAR___CPActivitySessionManager_queue];
  *v13 = v14;
  (*(v11 + 104))(v13, *MEMORY[0x1E69E8020], v10);
  v15 = v14;
  LOBYTE(v14) = _dispatchPreconditionTest(_:)();
  (*(v11 + 8))(v13, v10);
  if (v14)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v17 = v46;
    MEMORY[0x1EEE9AC00](v16);
    *(&v45 - 2) = a1;
    specialized Sequence.first(where:)(partial apply for closure #1 in ActivitySessionManager.leaveActivitySession(activitySessionUUID:), (&v45 - 4), v17);
    v19 = v18;

    if (v19)
    {
      (*((*MEMORY[0x1E69E7D40] & *v19) + 0x438))(v20);
    }

    else
    {
      if (one-time initialization token for default != -1)
      {
        swift_once();
      }

      v31 = type metadata accessor for Logger();
      __swift_project_value_buffer(v31, static Log.default);
      (*(v4 + 16))(v9, a1, v3);
      v32 = v1;
      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v46 = v36;
        *v35 = 136315394;
        lazy protocol witness table accessor for type ActivitySession and conformance NSObject(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
        v37 = dispatch thunk of CustomStringConvertible.description.getter();
        v39 = v38;
        (*(v4 + 8))(v9, v3);
        v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v39, &v46);

        *(v35 + 4) = v40;
        *(v35 + 12) = 2080;
        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter();

        type metadata accessor for ActivitySession(0);
        lazy protocol witness table accessor for type ActivitySession and conformance NSObject(&lazy protocol witness table cache variable for type ActivitySession and conformance NSObject, type metadata accessor for ActivitySession, MEMORY[0x1E69E81B8]);
        v41 = Set.description.getter();
        v43 = v42;

        v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v43, &v46);

        *(v35 + 14) = v44;
        _os_log_impl(&dword_1AEB26000, v33, v34, "Couldn't find matching activitySession for %s activitySessions: %s", v35, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1B27120C0](v36, -1, -1);
        MEMORY[0x1B27120C0](v35, -1, -1);
      }

      else
      {

        (*(v4 + 8))(v9, v3);
      }
    }
  }

  else
  {
    __break(1u);
    swift_once();
    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, static Log.default);
    (*(v4 + 16))(v7, a1, v3);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v46 = v25;
      *v24 = 136315138;
      lazy protocol witness table accessor for type ActivitySession and conformance NSObject(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v26 = dispatch thunk of CustomStringConvertible.description.getter();
      v27 = v3;
      v29 = v28;
      (*(v4 + 8))(v7, v27);
      v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v29, &v46);

      *(v24 + 4) = v30;
      _os_log_impl(&dword_1AEB26000, v22, v23, "Could not leave activitySessionWithUUID:%s. Session may have already been left", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v25);
      MEMORY[0x1B27120C0](v25, -1, -1);
      MEMORY[0x1B27120C0](v24, -1, -1);
    }

    else
    {

      (*(v4 + 8))(v7, v3);
    }
  }
}

void ActivitySessionManager.presentSessionDismissalAlert(activitySessionUUID:allowingCancellation:completion:)(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v51 = a4;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (&v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *&v4[OBJC_IVAR___CPActivitySessionManager_queue];
  *v14 = v15;
  (*(v12 + 104))(v14, *MEMORY[0x1E69E8020], v11);
  v16 = v15;
  LOBYTE(v15) = _dispatchPreconditionTest(_:)();
  (*(v12 + 8))(v14, v11);
  if ((v15 & 1) == 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v18 = v52;
  MEMORY[0x1EEE9AC00](v17);
  *(&v49 - 2) = a1;
  specialized Sequence.first(where:)(partial apply for closure #1 in ActivitySessionManager.presentSessionDismissalAlert(activitySessionUUID:allowingCancellation:completion:), (&v49 - 4), v18);
  v20 = v19;

  if (!v20)
  {
    v50 = a3;
    if (one-time initialization token for default == -1)
    {
LABEL_6:
      v28 = type metadata accessor for Logger();
      __swift_project_value_buffer(v28, static Log.default);
      (*(v8 + 16))(v10, a1, v7);
      v29 = v4;
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v52 = v33;
        *v32 = 136315394;
        lazy protocol witness table accessor for type ActivitySession and conformance NSObject(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
        v34 = dispatch thunk of CustomStringConvertible.description.getter();
        v36 = v35;
        (*(v8 + 8))(v10, v7);
        v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v36, &v52);

        *(v32 + 4) = v37;
        *(v32 + 12) = 2080;
        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter();

        type metadata accessor for ActivitySession(0);
        lazy protocol witness table accessor for type ActivitySession and conformance NSObject(&lazy protocol witness table cache variable for type ActivitySession and conformance NSObject, type metadata accessor for ActivitySession, MEMORY[0x1E69E81B8]);
        v38 = Set.description.getter();
        v40 = v39;

        v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v40, &v52);

        *(v32 + 14) = v41;
        _os_log_impl(&dword_1AEB26000, v30, v31, "Couldn't find matching activitySession for %s activitySessions: %s", v32, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1B27120C0](v33, -1, -1);
        MEMORY[0x1B27120C0](v32, -1, -1);
      }

      else
      {

        (*(v8 + 8))(v10, v7);
      }

      v50(0);
      return;
    }

LABEL_16:
    swift_once();
    goto LABEL_6;
  }

  v22 = MEMORY[0x1E69E7D40];
  v23 = (*((*MEMORY[0x1E69E7D40] & *v20) + 0x328))(v21);
  v24 = [v23 bundleIdentifier];

  if (v24)
  {
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;

    (*((*v22 & *v20) + 0x488))(v25, v27, 1, a3, v51);
  }

  else
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v42 = type metadata accessor for Logger();
    __swift_project_value_buffer(v42, static Log.default);
    v43 = v20;
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      *v46 = 138412290;
      *(v46 + 4) = v43;
      *v47 = v20;
      v48 = v43;
      _os_log_impl(&dword_1AEB26000, v44, v45, "Unable to find bundleID for activitySession %@", v46, 0xCu);
      outlined destroy of NSObject?(v47, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1B27120C0](v47, -1, -1);
      MEMORY[0x1B27120C0](v46, -1, -1);
    }

    a3(0);
  }
}

void ActivitySessionManager.removeActivitySession(activitySessionUUID:using:)(uint64_t a1, void *a2)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *&v2[OBJC_IVAR___CPActivitySessionManager_queue];
  *v12 = v13;
  (*(v10 + 104))(v12, *MEMORY[0x1E69E8020], v9);
  v14 = v13;
  LOBYTE(v13) = _dispatchPreconditionTest(_:)();
  (*(v10 + 8))(v12, v9);
  if ((v13 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    swift_once();
    goto LABEL_5;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v16 = v38;
  MEMORY[0x1EEE9AC00](v15);
  *(&v37 - 2) = a1;
  specialized Sequence.first(where:)(partial apply for closure #1 in ActivitySessionManager.presentSessionDismissalAlert(activitySessionUUID:allowingCancellation:completion:), (&v37 - 4), v16);
  v18 = v17;

  if (v18)
  {
    v19 = MEMORY[0x1E69E7D40];
    v20 = *((*MEMORY[0x1E69E7D40] & *v18) + 0x190);
    v21 = a2;
    v22 = v20(a2);
    (*((*v19 & *v18) + 0x440))(v22);

    return;
  }

  if (one-time initialization token for default != -1)
  {
    goto LABEL_9;
  }

LABEL_5:
  v23 = type metadata accessor for Logger();
  __swift_project_value_buffer(v23, static Log.default);
  (*(v6 + 16))(v8, a1, v5);
  v24 = v2;
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v38 = v28;
    *v27 = 136315394;
    lazy protocol witness table accessor for type ActivitySession and conformance NSObject(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v29 = dispatch thunk of CustomStringConvertible.description.getter();
    v31 = v30;
    (*(v6 + 8))(v8, v5);
    v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v31, &v38);

    *(v27 + 4) = v32;
    *(v27 + 12) = 2080;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    type metadata accessor for ActivitySession(0);
    lazy protocol witness table accessor for type ActivitySession and conformance NSObject(&lazy protocol witness table cache variable for type ActivitySession and conformance NSObject, type metadata accessor for ActivitySession, MEMORY[0x1E69E81B8]);
    v33 = Set.description.getter();
    v35 = v34;

    v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v35, &v38);

    *(v27 + 14) = v36;
    _os_log_impl(&dword_1AEB26000, v25, v26, "Couldn't find matching activitySession for %s activitySessions: %s", v27, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v28, -1, -1);
    MEMORY[0x1B27120C0](v27, -1, -1);
  }

  else
  {

    (*(v6 + 8))(v8, v5);
  }
}

void ActivitySessionManager.updateActivitySession(activitySessionUUID:activity:)(uint64_t a1, void *a2)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *&v2[OBJC_IVAR___CPActivitySessionManager_queue];
  *v12 = v13;
  (*(v10 + 104))(v12, *MEMORY[0x1E69E8020], v9);
  v14 = v13;
  LOBYTE(v13) = _dispatchPreconditionTest(_:)();
  (*(v10 + 8))(v12, v9);
  if ((v13 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    swift_once();
    goto LABEL_5;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v16 = v34;
  MEMORY[0x1EEE9AC00](v15);
  *(&v33 - 2) = a1;
  *(&v33 - 1) = a2;
  specialized Sequence.first(where:)(partial apply for closure #1 in ActivitySessionManager.updateActivitySession(activitySessionUUID:activity:), (&v33 - 4), v16);
  v18 = v17;

  if (v18)
  {
    ActivitySession.updateActivity(_:)(a2);

    return;
  }

  if (one-time initialization token for default != -1)
  {
    goto LABEL_9;
  }

LABEL_5:
  v19 = type metadata accessor for Logger();
  __swift_project_value_buffer(v19, static Log.default);
  (*(v6 + 16))(v8, a1, v5);
  v20 = v2;
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v34 = v24;
    *v23 = 136315394;
    lazy protocol witness table accessor for type ActivitySession and conformance NSObject(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v25 = dispatch thunk of CustomStringConvertible.description.getter();
    v27 = v26;
    (*(v6 + 8))(v8, v5);
    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v27, &v34);

    *(v23 + 4) = v28;
    *(v23 + 12) = 2080;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    type metadata accessor for ActivitySession(0);
    lazy protocol witness table accessor for type ActivitySession and conformance NSObject(&lazy protocol witness table cache variable for type ActivitySession and conformance NSObject, type metadata accessor for ActivitySession, MEMORY[0x1E69E81B8]);
    v29 = Set.description.getter();
    v31 = v30;

    v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v31, &v34);

    *(v23 + 14) = v32;
    _os_log_impl(&dword_1AEB26000, v21, v22, "Couldn't find matching activitySession for %s activitySessions: %s", v23, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v24, -1, -1);
    MEMORY[0x1B27120C0](v23, -1, -1);
  }

  else
  {

    (*(v6 + 8))(v8, v5);
  }
}

BOOL closure #1 in ActivitySessionManager.updateActivitySession(activitySessionUUID:activity:)(void **a1, uint64_t a2, void *a3)
{
  v4 = *a1;
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v5 = (*((*MEMORY[0x1E69E7D40] & *v4) + 0x328))();
  v6 = [v5 bundleIdentifier];

  if (v6)
  {
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v11 = [a3 bundleIdentifier];
  if (v11)
  {
    v12 = v11;
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0;
  }

  v16 = specialized static BundleIdentiferMap.areEquivalentBundleIDs(bundleID:otherBundleID:)(v7, v9, v13, v15);

  return v16;
}

id ActivitySessionManager.updateNearbyClusters(localParticipantCluster:remoteParticipants:)(void *a1, uint64_t a2)
{
  v3 = v2;
  result = [*(v3 + OBJC_IVAR___CPActivitySessionManager_featureFlags) nearbyFaceTimeEnabled];
  if (result)
  {
    if (!a1 || [a1 type] != 1)
    {
      v7 = MEMORY[0x1E69E7CD0];
      goto LABEL_29;
    }

    v7 = swift_allocObject();
    v7[2] = a1;
    swift_getKeyPath();
    v47 = a1;

    v49[0] = MEMORY[0x1B27104E0](0, MEMORY[0x1E69E76D8], MEMORY[0x1E69E76E8]);
    v46 = v3;
    if ((a2 & 0xC000000000000001) != 0)
    {
      __CocoaSet.makeIterator()();
      v7 = &lazy cache variable for type metadata for TUConversationParticipant;
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationParticipant, 0x1E69D8B90);
      lazy protocol witness table accessor for type TUConversationActivitySession and conformance NSObject(&lazy protocol witness table cache variable for type TUConversationParticipant and conformance NSObject, &lazy cache variable for type metadata for TUConversationParticipant, 0x1E69D8B90, MEMORY[0x1E69E81B8]);
      Set.Iterator.init(_cocoa:)();
      a2 = v48[1];
      v8 = v48[2];
      v9 = v48[3];
      v10 = v48[4];
      v11 = v48[5];
    }

    else
    {
      v10 = 0;
      v12 = -1 << *(a2 + 32);
      v8 = (a2 + 56);
      v9 = ~v12;
      v13 = -v12;
      if (v13 < 64)
      {
        v14 = ~(-1 << v13);
      }

      else
      {
        v14 = -1;
      }

      v11 = v14 & *(a2 + 56);
    }

    v15 = (v9 + 64) >> 6;
    v3 = v10;
    if (a2 < 0)
    {
      goto LABEL_12;
    }

LABEL_15:
    v16 = v3;
    if (v11)
    {
      v17 = v3;
      goto LABEL_21;
    }

    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v17 >= v15)
      {
        goto LABEL_28;
      }

      v11 = v8[v17];
      ++v16;
      if (v11)
      {
        v3 = v17;
LABEL_21:
        v18 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v7 = *(*(a2 + 48) + ((v17 << 9) | (8 * v18)));
        if (!v7)
        {
          goto LABEL_28;
        }

        while (2)
        {
          v19 = [v7 cluster];
          if (!v19 || (v20 = v19, type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationParticipantCluster, 0x1E69D8B98), v21 = v47, v22 = static NSObject.== infix(_:_:)(), v21, v20, (v22 & 1) == 0))
          {

            if ((a2 & 0x8000000000000000) == 0)
            {
              goto LABEL_15;
            }

LABEL_12:
            if (__CocoaSet.Iterator.next()())
            {
              type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationParticipant, 0x1E69D8B90);
              swift_dynamicCast();
              v7 = v48[0];
              if (v48[0])
              {
                continue;
              }
            }

LABEL_28:

            outlined consume of Set<String>.Iterator._Variant(a2);

            v7 = v49[0];

            v3 = v46;
LABEL_29:
            if (one-time initialization token for default == -1)
            {
              goto LABEL_30;
            }

            goto LABEL_54;
          }

          break;
        }

        v23 = [v7 identifier];

        specialized Set._Variant.insert(_:)(v48, v23);
        if (a2 < 0)
        {
          goto LABEL_12;
        }

        goto LABEL_15;
      }
    }

    while (1)
    {
      __break(1u);
LABEL_54:
      swift_once();
LABEL_30:
      v24 = type metadata accessor for Logger();
      __swift_project_value_buffer(v24, static Log.default);

      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v49[0] = v28;
        *v27 = 136446466;
        *(v27 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000041, 0x80000001AEE36840, v49);
        *(v27 + 12) = 2080;
        v29 = Set.description.getter();
        v31 = v30;

        v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v31, v49);

        *(v27 + 14) = v32;
        _os_log_impl(&dword_1AEB26000, v25, v26, "%{public}s: Updated nearby participants %s", v27, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1B27120C0](v28, -1, -1);
        MEMORY[0x1B27120C0](v27, -1, -1);
      }

      else
      {
      }

      v33 = (*((*MEMORY[0x1E69E7D40] & *v3) + 0x118))();
      v3 = v33;
      if ((v33 & 0xC000000000000001) != 0)
      {
        __CocoaSet.makeIterator()();
        type metadata accessor for ActivitySession(0);
        lazy protocol witness table accessor for type ActivitySession and conformance NSObject(&lazy protocol witness table cache variable for type ActivitySession and conformance NSObject, type metadata accessor for ActivitySession, MEMORY[0x1E69E81B8]);
        Set.Iterator.init(_cocoa:)();
        v3 = v49[0];
        v34 = v49[1];
        v35 = v49[2];
        v36 = v49[3];
        v37 = v49[4];
      }

      else
      {
        v36 = 0;
        v38 = -1 << *(v33 + 32);
        v34 = v33 + 56;
        v35 = ~v38;
        v39 = -v38;
        v40 = v39 < 64 ? ~(-1 << v39) : -1;
        v37 = v40 & *(v33 + 56);
      }

      if (v3 < 0)
      {
        break;
      }

      while (1)
      {
        v44 = v36;
        v45 = v37;
        v42 = v36;
        if (!v37)
        {
          break;
        }

LABEL_47:
        v43 = (v45 - 1) & v45;
        v41 = *(*(v3 + 48) + ((v42 << 9) | (8 * __clz(__rbit64(v45)))));
        if (!v41)
        {
          goto LABEL_50;
        }

LABEL_48:
        (*((*MEMORY[0x1E69E7D40] & *v41) + 0x530))(v7);

        v36 = v42;
        v37 = v43;
        if (v3 < 0)
        {
          goto LABEL_40;
        }
      }

      while (1)
      {
        v42 = v44 + 1;
        if (__OFADD__(v44, 1))
        {
          break;
        }

        if (v42 >= ((v35 + 64) >> 6))
        {
          goto LABEL_50;
        }

        v45 = *(v34 + 8 * v42);
        ++v44;
        if (v45)
        {
          goto LABEL_47;
        }
      }

      __break(1u);
    }

LABEL_40:
    if (__CocoaSet.Iterator.next()())
    {
      type metadata accessor for ActivitySession(0);
      swift_dynamicCast();
      v41 = v48[0];
      v42 = v36;
      v43 = v37;
      if (v48[0])
      {
        goto LABEL_48;
      }
    }

LABEL_50:
    outlined consume of Set<String>.Iterator._Variant(v3);
  }

  return result;
}

void ActivitySessionManager.setUsingAirplay(_:_:)(char a1, uint64_t a2)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *&v2[OBJC_IVAR___CPActivitySessionManager_queue];
  *v12 = v13;
  (*(v10 + 104))(v12, *MEMORY[0x1E69E8020], v9);
  v14 = v13;
  LOBYTE(v13) = _dispatchPreconditionTest(_:)();
  (*(v10 + 8))(v12, v9);
  if ((v13 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    swift_once();
    goto LABEL_5;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v16 = v34;
  MEMORY[0x1EEE9AC00](v15);
  *(&v33 - 2) = a2;
  specialized Sequence.first(where:)(partial apply for closure #1 in ActivitySessionManager.presentSessionDismissalAlert(activitySessionUUID:allowingCancellation:completion:), (&v33 - 4), v16);
  v18 = v17;

  if (v18)
  {
    (*((*MEMORY[0x1E69E7D40] & *v18) + 0x378))(a1 & 1);

    return;
  }

  if (one-time initialization token for default != -1)
  {
    goto LABEL_9;
  }

LABEL_5:
  v19 = type metadata accessor for Logger();
  __swift_project_value_buffer(v19, static Log.default);
  (*(v6 + 16))(v8, a2, v5);
  v20 = v2;
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v34 = v24;
    *v23 = 136315394;
    lazy protocol witness table accessor for type ActivitySession and conformance NSObject(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v25 = dispatch thunk of CustomStringConvertible.description.getter();
    v27 = v26;
    (*(v6 + 8))(v8, v5);
    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v27, &v34);

    *(v23 + 4) = v28;
    *(v23 + 12) = 2080;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    type metadata accessor for ActivitySession(0);
    lazy protocol witness table accessor for type ActivitySession and conformance NSObject(&lazy protocol witness table cache variable for type ActivitySession and conformance NSObject, type metadata accessor for ActivitySession, MEMORY[0x1E69E81B8]);
    v29 = Set.description.getter();
    v31 = v30;

    v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v31, &v34);

    *(v23 + 14) = v32;
    _os_log_impl(&dword_1AEB26000, v21, v22, "Couldn't find matching activitySession for %s activitySessions: %s", v23, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v24, -1, -1);
    MEMORY[0x1B27120C0](v23, -1, -1);
  }

  else
  {

    (*(v6 + 8))(v8, v5);
  }
}

Swift::Void __swiftcall ActivitySessionManager.refreshDataCryptors()()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = (v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *(v0 + OBJC_IVAR___CPActivitySessionManager_queue);
  *v4 = v5;
  (*(v2 + 104))(v4, *MEMORY[0x1E69E8020], v1);
  v6 = v5;
  LOBYTE(v5) = _dispatchPreconditionTest(_:)();
  (*(v2 + 8))(v4, v1);
  if (v5)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v7 = v27;
    if ((v27 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      type metadata accessor for ActivitySession(0);
      lazy protocol witness table accessor for type ActivitySession and conformance NSObject(&lazy protocol witness table cache variable for type ActivitySession and conformance NSObject, type metadata accessor for ActivitySession, MEMORY[0x1E69E81B8]);
      Set.Iterator.init(_cocoa:)();
      v9 = v27;
      v8 = v28;
      v10 = v29;
      v11 = v30;
      v12 = v31;
    }

    else
    {
      v13 = -1 << *(v27 + 32);
      v8 = v27 + 56;
      v10 = ~v13;
      v14 = -v13;
      if (v14 < 64)
      {
        v15 = ~(-1 << v14);
      }

      else
      {
        v15 = -1;
      }

      v12 = v15 & *(v27 + 56);

      v11 = 0;
      v9 = v7;
    }

    v25[0] = v10;
    v16 = (v10 + 64) >> 6;
    v17 = MEMORY[0x1E69E7D40];
    if (v9 < 0)
    {
      goto LABEL_15;
    }

    while (1)
    {
      v18 = v11;
      v19 = v12;
      v20 = v11;
      if (!v12)
      {
        break;
      }

LABEL_13:
      v21 = (v19 - 1) & v19;
      v22 = *(*(v9 + 48) + ((v20 << 9) | (8 * __clz(__rbit64(v19)))));
      v23 = v22;
      if (!v22)
      {
LABEL_19:
        outlined consume of Set<String>.Iterator._Variant(v9);

        return;
      }

      while (1)
      {
        (*((*v17 & *v23) + 0x4B8))(v22);

        v11 = v20;
        v12 = v21;
        if ((v9 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_15:
        v24 = __CocoaSet.Iterator.next()();
        if (v24)
        {
          v25[1] = v24;
          type metadata accessor for ActivitySession(0);
          v22 = swift_dynamicCast();
          v23 = v26;
          v20 = v11;
          v21 = v12;
          if (v26)
          {
            continue;
          }
        }

        goto LABEL_19;
      }
    }

    while (1)
    {
      v20 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v20 >= v16)
      {
        goto LABEL_19;
      }

      v19 = *(v8 + 8 * v20);
      ++v18;
      if (v19)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  __break(1u);
}

Swift::Void __swiftcall ActivitySessionManager.refreshActivitySessionActiveParticipants()()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = (v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *(v0 + OBJC_IVAR___CPActivitySessionManager_queue);
  *v4 = v5;
  (*(v2 + 104))(v4, *MEMORY[0x1E69E8020], v1);
  v6 = v5;
  LOBYTE(v5) = _dispatchPreconditionTest(_:)();
  (*(v2 + 8))(v4, v1);
  if (v5)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v7 = v27;
    if ((v27 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      type metadata accessor for ActivitySession(0);
      lazy protocol witness table accessor for type ActivitySession and conformance NSObject(&lazy protocol witness table cache variable for type ActivitySession and conformance NSObject, type metadata accessor for ActivitySession, MEMORY[0x1E69E81B8]);
      Set.Iterator.init(_cocoa:)();
      v9 = v27;
      v8 = v28;
      v10 = v29;
      v11 = v30;
      v12 = v31;
    }

    else
    {
      v13 = -1 << *(v27 + 32);
      v8 = v27 + 56;
      v10 = ~v13;
      v14 = -v13;
      if (v14 < 64)
      {
        v15 = ~(-1 << v14);
      }

      else
      {
        v15 = -1;
      }

      v12 = v15 & *(v27 + 56);

      v11 = 0;
      v9 = v7;
    }

    v25[0] = v10;
    v16 = (v10 + 64) >> 6;
    v17 = MEMORY[0x1E69E7D40];
    if (v9 < 0)
    {
      goto LABEL_15;
    }

    while (1)
    {
      v18 = v11;
      v19 = v12;
      v20 = v11;
      if (!v12)
      {
        break;
      }

LABEL_13:
      v21 = (v19 - 1) & v19;
      v22 = *(*(v9 + 48) + ((v20 << 9) | (8 * __clz(__rbit64(v19)))));
      v23 = v22;
      if (!v22)
      {
LABEL_19:
        outlined consume of Set<String>.Iterator._Variant(v9);

        return;
      }

      while (1)
      {
        (*((*v17 & *v23) + 0x4E8))(v22);

        v11 = v20;
        v12 = v21;
        if ((v9 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_15:
        v24 = __CocoaSet.Iterator.next()();
        if (v24)
        {
          v25[1] = v24;
          type metadata accessor for ActivitySession(0);
          v22 = swift_dynamicCast();
          v23 = v26;
          v20 = v11;
          v21 = v12;
          if (v26)
          {
            continue;
          }
        }

        goto LABEL_19;
      }
    }

    while (1)
    {
      v20 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v20 >= v16)
      {
        goto LABEL_19;
      }

      v19 = *(v8 + 8 * v20);
      ++v18;
      if (v19)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  __break(1u);
}

Swift::Void __swiftcall ActivitySessionManager.resetSessions()()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = (v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *(v0 + OBJC_IVAR___CPActivitySessionManager_queue);
  *v4 = v5;
  (*(v2 + 104))(v4, *MEMORY[0x1E69E8020], v1);
  v6 = v5;
  LOBYTE(v5) = _dispatchPreconditionTest(_:)();
  (*(v2 + 8))(v4, v1);
  if (v5)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v25 = v0;
    static Published.subscript.getter();

    v7 = v28;
    if ((v28 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      type metadata accessor for ActivitySession(0);
      lazy protocol witness table accessor for type ActivitySession and conformance NSObject(&lazy protocol witness table cache variable for type ActivitySession and conformance NSObject, type metadata accessor for ActivitySession, MEMORY[0x1E69E81B8]);
      Set.Iterator.init(_cocoa:)();
      v9 = v28;
      v8 = v29;
      v10 = v30;
      v11 = v31;
      v12 = v32;
    }

    else
    {
      v13 = -1 << *(v28 + 32);
      v8 = v28 + 56;
      v10 = ~v13;
      v14 = -v13;
      if (v14 < 64)
      {
        v15 = ~(-1 << v14);
      }

      else
      {
        v15 = -1;
      }

      v12 = v15 & *(v28 + 56);

      v11 = 0;
      v9 = v7;
    }

    v24[1] = v10;
    v16 = (v10 + 64) >> 6;
    if (v9 < 0)
    {
      goto LABEL_15;
    }

    while (1)
    {
      v17 = v11;
      v18 = v12;
      v19 = v11;
      if (!v12)
      {
        break;
      }

LABEL_13:
      v20 = (v18 - 1) & v18;
      v21 = *(*(v9 + 48) + ((v19 << 9) | (8 * __clz(__rbit64(v18)))));
      if (!v21)
      {
LABEL_19:
        outlined consume of Set<String>.Iterator._Variant(v9);

        v23 = v25;
        *(v25 + OBJC_IVAR___CPActivitySessionManager_topicsObserver) = 0;

        *(v23 + OBJC_IVAR___CPActivitySessionManager_topicsObserverSubscription) = 0;

        return;
      }

      while (1)
      {
        [v21 resetSession];

        v11 = v19;
        v12 = v20;
        if ((v9 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_15:
        v22 = __CocoaSet.Iterator.next()();
        if (v22)
        {
          v26 = v22;
          type metadata accessor for ActivitySession(0);
          swift_dynamicCast();
          v21 = v27;
          v19 = v11;
          v20 = v12;
          if (v27)
          {
            continue;
          }
        }

        goto LABEL_19;
      }
    }

    while (1)
    {
      v19 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v19 >= v16)
      {
        goto LABEL_19;
      }

      v18 = *(v8 + 8 * v19);
      ++v17;
      if (v18)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  __break(1u);
}

Swift::Void __swiftcall ActivitySessionManager.resetNonScreenSharingSessions()()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v1 + OBJC_IVAR___CPActivitySessionManager_queue);
  *v5 = v6;
  (*(v3 + 104))(v5, *MEMORY[0x1E69E8020], v2);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if ((v6 & 1) == 0)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (one-time initialization token for default != -1)
  {
LABEL_28:
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Log.default);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_1AEB26000, v9, v10, "Resetting non screensharing sessions", v11, 2u);
    MEMORY[0x1B27120C0](v11, -1, -1);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v12 = v33;
  v31[2] = v33;
  if ((v33 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for ActivitySession(0);
    lazy protocol witness table accessor for type ActivitySession and conformance NSObject(&lazy protocol witness table cache variable for type ActivitySession and conformance NSObject, type metadata accessor for ActivitySession, MEMORY[0x1E69E81B8]);
    Set.Iterator.init(_cocoa:)();
    v12 = v33;
    v13 = v34;
    v14 = v35;
    v15 = v36;
    v16 = v37;
  }

  else
  {
    v17 = -1 << *(v33 + 32);
    v13 = v33 + 56;
    v14 = ~v17;
    v18 = -v17;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v16 = v19 & *(v33 + 56);

    v15 = 0;
  }

  v31[1] = v14;
  while ((v12 & 0x8000000000000000) == 0)
  {
    v20 = v15;
    v21 = v16;
    v22 = v15;
    if (!v16)
    {
      while (1)
      {
        v22 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        if (v22 >= ((v14 + 64) >> 6))
        {
          goto LABEL_25;
        }

        v21 = *(v13 + 8 * v22);
        ++v20;
        if (v21)
        {
          goto LABEL_18;
        }
      }

      __break(1u);
      goto LABEL_27;
    }

LABEL_18:
    v23 = (v21 - 1) & v21;
    v24 = *(*(v12 + 48) + ((v22 << 9) | (8 * __clz(__rbit64(v21)))));
    if (!v24)
    {
      goto LABEL_25;
    }

LABEL_22:
    v26 = *((*MEMORY[0x1E69E7D40] & *v24) + 0x328);
    v27 = v26();
    v28 = [v27 isScreenSharingActivity];

    if ((v28 & 1) == 0)
    {
      v29 = v26();
      v30 = [v29 isSystemActivity];

      if ((v30 & 1) == 0)
      {
        [v24 resetSession];
      }
    }

    v15 = v22;
    v16 = v23;
  }

  v25 = __CocoaSet.Iterator.next()();
  if (v25)
  {
    v31[3] = v25;
    type metadata accessor for ActivitySession(0);
    swift_dynamicCast();
    v24 = v32;
    v22 = v15;
    v23 = v16;
    if (v32)
    {
      goto LABEL_22;
    }
  }

LABEL_25:
  outlined consume of Set<String>.Iterator._Variant(v12);
}

Swift::Void __swiftcall ActivitySessionManager.removeScreenSharingSessions()()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v1 + OBJC_IVAR___CPActivitySessionManager_queue);
  *v5 = v6;
  (*(v3 + 104))(v5, *MEMORY[0x1E69E8020], v2);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if ((v6 & 1) == 0)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (one-time initialization token for default != -1)
  {
LABEL_27:
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Log.default);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_1AEB26000, v9, v10, "Removing screensharing sessions", v11, 2u);
    MEMORY[0x1B27120C0](v11, -1, -1);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v12 = v34;
  if ((v34 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for ActivitySession(0);
    lazy protocol witness table accessor for type ActivitySession and conformance NSObject(&lazy protocol witness table cache variable for type ActivitySession and conformance NSObject, type metadata accessor for ActivitySession, MEMORY[0x1E69E81B8]);
    Set.Iterator.init(_cocoa:)();
    v14 = v34;
    v13 = v35;
    v15 = v36;
    v16 = v37;
    v17 = v38;
  }

  else
  {
    v18 = -1 << *(v34 + 32);
    v13 = v34 + 56;
    v15 = ~v18;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v17 = v20 & *(v34 + 56);

    v16 = 0;
    v14 = v12;
  }

  v32[0] = v15;
  v21 = (v15 + 64) >> 6;
  v22 = MEMORY[0x1E69E7D40];
  while ((v14 & 0x8000000000000000) == 0)
  {
    v23 = v16;
    v24 = v17;
    v25 = v16;
    if (!v17)
    {
      while (1)
      {
        v25 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          break;
        }

        if (v25 >= v21)
        {
          goto LABEL_24;
        }

        v24 = *(v13 + 8 * v25);
        ++v23;
        if (v24)
        {
          goto LABEL_18;
        }
      }

      __break(1u);
      goto LABEL_26;
    }

LABEL_18:
    v26 = (v24 - 1) & v24;
    v27 = *(*(v14 + 48) + ((v25 << 9) | (8 * __clz(__rbit64(v24)))));
    v28 = v27;
    if (!v27)
    {
      goto LABEL_24;
    }

LABEL_22:
    v30 = (*((*v22 & *v28) + 0x328))(v27);
    v31 = [v30 isScreenSharingActivity];

    if (v31)
    {
      (*((*v22 & *v28) + 0x440))();
    }

    v16 = v25;
    v17 = v26;
  }

  v29 = __CocoaSet.Iterator.next()();
  if (v29)
  {
    v32[1] = v29;
    type metadata accessor for ActivitySession(0);
    v27 = swift_dynamicCast();
    v28 = v33;
    v25 = v16;
    v26 = v17;
    if (v33)
    {
      goto LABEL_22;
    }
  }

LABEL_24:
  outlined consume of Set<String>.Iterator._Variant(v14);
}

Swift::Void __swiftcall ActivitySessionManager.removeLocalScreenSharingSessions()()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v1 + OBJC_IVAR___CPActivitySessionManager_queue);
  *v5 = v6;
  (*(v3 + 104))(v5, *MEMORY[0x1E69E8020], v2);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if ((v6 & 1) == 0)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (one-time initialization token for default != -1)
  {
LABEL_28:
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Log.default);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_1AEB26000, v9, v10, "Removing local screensharing sessions", v11, 2u);
    MEMORY[0x1B27120C0](v11, -1, -1);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v12 = v34;
  if ((v34 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for ActivitySession(0);
    lazy protocol witness table accessor for type ActivitySession and conformance NSObject(&lazy protocol witness table cache variable for type ActivitySession and conformance NSObject, type metadata accessor for ActivitySession, MEMORY[0x1E69E81B8]);
    Set.Iterator.init(_cocoa:)();
    v14 = v34;
    v13 = v35;
    v15 = v36;
    v16 = v37;
    v17 = v38;
  }

  else
  {
    v18 = -1 << *(v34 + 32);
    v13 = v34 + 56;
    v15 = ~v18;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v17 = v20 & *(v34 + 56);

    v16 = 0;
    v14 = v12;
  }

  v32[0] = v15;
  v21 = (v15 + 64) >> 6;
  v22 = MEMORY[0x1E69E7D40];
  while ((v14 & 0x8000000000000000) == 0)
  {
    v23 = v16;
    v24 = v17;
    v25 = v16;
    if (!v17)
    {
      while (1)
      {
        v25 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          break;
        }

        if (v25 >= v21)
        {
          goto LABEL_25;
        }

        v24 = *(v13 + 8 * v25);
        ++v23;
        if (v24)
        {
          goto LABEL_18;
        }
      }

      __break(1u);
      goto LABEL_27;
    }

LABEL_18:
    v26 = (v24 - 1) & v24;
    v27 = *(*(v14 + 48) + ((v25 << 9) | (8 * __clz(__rbit64(v24)))));
    v28 = v27;
    if (!v27)
    {
      goto LABEL_25;
    }

LABEL_22:
    v30 = (*((*v22 & *v28) + 0x328))(v27);
    v31 = [v30 isScreenSharingActivity];

    if (v31 && ((*((*v22 & *v28) + 0x340))() & 1) != 0)
    {
      (*((*v22 & *v28) + 0x440))();
    }

    v16 = v25;
    v17 = v26;
  }

  v29 = __CocoaSet.Iterator.next()();
  if (v29)
  {
    v32[1] = v29;
    type metadata accessor for ActivitySession(0);
    v27 = swift_dynamicCast();
    v28 = v33;
    v25 = v16;
    v26 = v17;
    if (v33)
    {
      goto LABEL_22;
    }
  }

LABEL_25:
  outlined consume of Set<String>.Iterator._Variant(v14);
}

Swift::Void __swiftcall ActivitySessionManager.resetSceneAssociations(for:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v1 + OBJC_IVAR___CPActivitySessionManager_queue);
  *v7 = v8;
  (*(v5 + 104))(v7, *MEMORY[0x1E69E8020], v4);
  v9 = v8;
  v10 = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v7, v4);
  if (v10)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v11 = v39;
    v35 = v39;
    if ((v39 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      type metadata accessor for ActivitySession(0);
      lazy protocol witness table accessor for type ActivitySession and conformance NSObject(&lazy protocol witness table cache variable for type ActivitySession and conformance NSObject, type metadata accessor for ActivitySession, MEMORY[0x1E69E81B8]);
      Set.Iterator.init(_cocoa:)();
      v11 = v39;
      v12 = v40;
      v13 = v41;
      v14 = v42;
      v15 = v43;
    }

    else
    {
      v16 = -1 << *(v39 + 32);
      v12 = v39 + 56;
      v13 = ~v16;
      v17 = -v16;
      if (v17 < 64)
      {
        v18 = ~(-1 << v17);
      }

      else
      {
        v18 = -1;
      }

      v15 = v18 & *(v39 + 56);

      v14 = 0;
    }

    v36 = countAndFlagsBits;
    v19 = object;
    v34 = v13;
    v20 = (v13 + 64) >> 6;
    while (1)
    {
      if (v11 < 0)
      {
        v26 = __CocoaSet.Iterator.next()();
        if (!v26 || (v37 = v26, type metadata accessor for ActivitySession(0), v23 = swift_dynamicCast(), (v25 = v38) == 0))
        {
LABEL_29:
          outlined consume of Set<String>.Iterator._Variant(v11);

          return;
        }
      }

      else
      {
        v21 = v14;
        v22 = v15;
        if (!v15)
        {
          while (1)
          {
            v14 = v21 + 1;
            if (__OFADD__(v21, 1))
            {
              break;
            }

            if (v14 >= v20)
            {
              goto LABEL_29;
            }

            v22 = *(v12 + 8 * v14);
            ++v21;
            if (v22)
            {
              goto LABEL_15;
            }
          }

          __break(1u);
          break;
        }

LABEL_15:
        v15 = (v22 - 1) & v22;
        v23 = *(*(v11 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v22)))));
        v25 = v23;
        if (!v23)
        {
          goto LABEL_29;
        }
      }

      v27 = (*((*MEMORY[0x1E69E7D40] & *v25) + 0x328))(v23, v24);
      v28 = [v27 bundleIdentifier];

      if (!v28)
      {
        goto LABEL_9;
      }

      v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v31 = v30;

      if (v29 == v36 && v31 == v19)
      {
      }

      else
      {
        v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v33 & 1) == 0)
        {
          goto LABEL_9;
        }
      }

      if (*(v25 + OBJC_IVAR___CPActivitySession_sceneAssociationCoordinator))
      {
        ActivitySession.SceneAssociationCoordinator.disassociateAllScenes()();
      }

      else
      {
LABEL_9:
      }
    }
  }

  __break(1u);
}

id ActivitySessionManager.supportsEndOnlyForMe.getter()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x120))();
  if (!v1)
  {
    return 0;
  }

  v2 = [v1 activitySessionManagerShouldSupportEndOnlyForMe_];
  swift_unknownObjectRelease();
  return v2;
}

id ActivitySessionManager.sessionIsJoinable(session:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v2 + OBJC_IVAR___CPActivitySessionManager_queue);
  *v7 = v8;
  (*(v5 + 104))(v7, *MEMORY[0x1E69E8020], v4);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  result = (*(v5 + 8))(v7, v4);
  if (v8)
  {
    v11 = MEMORY[0x1E69E7D40];
    v12 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x120))(result);
    if (!v12)
    {
      return 0;
    }

    v13 = v12;
    v14 = (*((*v11 & *a1) + 0x388))();
    v15 = [v13 activitySessionManager:v2 activitySessionIsJoinable:v14];
    swift_unknownObjectRelease();

    return v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *ActivitySessionManager.session(session:receivedEvent:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v2 + OBJC_IVAR___CPActivitySessionManager_queue);
  *v7 = v8;
  (*(v5 + 104))(v7, *MEMORY[0x1E69E8020], v4);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  result = (*(v5 + 8))(v7, v4);
  if (v8)
  {
    result = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x120))(result);
    if (result)
    {
      [result activitySessionManager:v2 receivedActivitySessionEvent:a2];
      return swift_unknownObjectRelease();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void ActivitySessionManager.session(session:fetchDataCryptorForTopic:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = (aBlock - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(v5 + OBJC_IVAR___CPActivitySessionManager_queue);
  *v13 = v14;
  (*(v11 + 104))(v13, *MEMORY[0x1E69E8020], v10);
  v15 = v14;
  LOBYTE(v14) = _dispatchPreconditionTest(_:)();
  v16 = (*(v11 + 8))(v13, v10);
  if (v14)
  {
    v17 = (*((*MEMORY[0x1E69E7D40] & *v5) + 0x120))(v16);
    if (v17)
    {
      v18 = v17;
      v19 = MEMORY[0x1B270FF70](a2, a3);
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;
      aBlock[4] = partial apply for closure #1 in ActivitySessionManager.session(session:fetchDataCryptorForTopic:completion:);
      aBlock[5] = v20;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed Any) -> ();
      aBlock[3] = &block_descriptor_32_0;
      v21 = _Block_copy(aBlock);

      [v18 activitySessionManager:v5 fetchDataCryptorForTopic:v19 completionHandler:v21];
      swift_unknownObjectRelease();
      _Block_release(v21);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t closure #1 in ActivitySessionManager.session(session:fetchDataCryptorForTopic:completion:)(uint64_t a1, void (*a2)())
{
  outlined init with copy of Any(a1, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CPDataCryptor_pMd, &_sSo13CPDataCryptor_pMR);
  result = swift_dynamicCast();
  if (result)
  {
    a2();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed Any) -> ()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v5[3] = swift_getObjectType();
  v5[0] = a2;

  swift_unknownObjectRetain();
  v3(v5);

  return __swift_destroy_boxed_opaque_existential_1Tm(v5);
}

void *ActivitySessionManager.session(session:requestEncryptionKeysForParticipants:topicName:)(uint64_t a1, Class isa, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(v5 + OBJC_IVAR___CPActivitySessionManager_queue);
  *v12 = v13;
  (*(v10 + 104))(v12, *MEMORY[0x1E69E8020], v9);
  v14 = v13;
  LOBYTE(v13) = _dispatchPreconditionTest(_:)();
  (*(v10 + 8))(v12, v9);
  if (v13)
  {
    if (one-time initialization token for default == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, static Log.default);

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v28 = v19;
    *v18 = 136315394;
    if (isa)
    {
      v20 = MEMORY[0x1B2710180](isa, MEMORY[0x1E69E76D8]);
      v22 = v21;
    }

    else
    {
      v22 = 0xE500000000000000;
      v20 = 0x3E6C696E3CLL;
    }

    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, &v28);

    *(v18 + 4) = v23;
    *(v18 + 12) = 2080;
    *(v18 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a3, a4, &v28);
    _os_log_impl(&dword_1AEB26000, v16, v17, "Requesting encryption keys for participants=%s topicName=%s", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v19, -1, -1);
    MEMORY[0x1B27120C0](v18, -1, -1);
  }

  result = (*((*MEMORY[0x1E69E7D40] & *v5) + 0x120))();
  if (result)
  {
    v25 = result;
    if (isa)
    {
      specialized _arrayForceCast<A, B>(_:)(isa);
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNumber, 0x1E696AD98);
      isa = Array._bridgeToObjectiveC()().super.isa;
    }

    v26 = MEMORY[0x1B270FF70](a3, a4);
    [v25 activitySessionManager:v5 requestEncryptionKeysForParticipants:isa topicName:v26];

    return swift_unknownObjectRelease();
  }

  return result;
}

void ActivitySessionManager.sessionChanged(session:)(void *a1, const char *a2, SEL *a3, ...)
{
  v6 = v3;
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v6 + OBJC_IVAR___CPActivitySessionManager_queue);
  *v11 = v12;
  (*(v9 + 104))(v11, *MEMORY[0x1E69E8020], v8);
  v13 = v12;
  LOBYTE(v12) = _dispatchPreconditionTest(_:)();
  (*(v9 + 8))(v11, v8);
  if (v12)
  {
    if (one-time initialization token for default == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static Log.default);
  v15 = a1;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v18 = 138412290;
    *(v18 + 4) = v15;
    *v19 = v15;
    v20 = v15;
    _os_log_impl(&dword_1AEB26000, v16, v17, a2, v18, 0xCu);
    outlined destroy of NSObject?(v19, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B27120C0](v19, -1, -1);
    MEMORY[0x1B27120C0](v18, -1, -1);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v21 = specialized Set.contains(_:)(v15, v36[1]);

  if (v21)
  {
    v23 = MEMORY[0x1E69E7D40];
    v24 = *((*MEMORY[0x1E69E7D40] & *v6) + 0x120);
    v25 = (v24)(v22);
    if (v25)
    {
      v26 = v25;
      v27 = (*((*v23 & *v15) + 0x388))();
      [v26 *a3];

      v25 = swift_unknownObjectRelease();
    }

    v31 = (*((*v23 & *v15) + 0x328))(v25);
    v32 = [v31 isSystemActivity];

    if ((v32 & 1) == 0)
    {
      v33 = v24();
      if (v33)
      {
        v34 = v33;
        if ([v33 respondsToSelector_])
        {
          (*((*v23 & *v6) + 0x170))();
          type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationActivitySession, 0x1E69D8B58);
          lazy protocol witness table accessor for type TUConversationActivitySession and conformance NSObject(&lazy protocol witness table cache variable for type TUConversationActivitySession and conformance NSObject, &lazy cache variable for type metadata for TUConversationActivitySession, 0x1E69D8B58, MEMORY[0x1E69E81B8]);
          isa = Set._bridgeToObjectiveC()().super.isa;

          [v34 activitySessionManager:v6 tuActivitySessionsDidChange:isa];
          swift_unknownObjectRelease();
        }

        else
        {
          swift_unknownObjectRelease();
        }
      }
    }
  }

  else
  {
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_1AEB26000, v28, v29, "Ignoring activity session update since it's not yet tracked", v30, 2u);
      MEMORY[0x1B27120C0](v30, -1, -1);
    }
  }
}

void ActivitySessionManager.session(session:stateChanged:)(void *a1, unint64_t *a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v90 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *a2;
  v11 = *(v3 + OBJC_IVAR___CPActivitySessionManager_queue);
  *v9 = v11;
  (*(v7 + 104))(v9, *MEMORY[0x1E69E8020], v6);
  v12 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  (*(v7 + 8))(v9, v6);
  if (v11)
  {
    if (one-time initialization token for default == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v92 = type metadata accessor for Logger();
  v13 = __swift_project_value_buffer(v92, static Log.default);
  v14 = a1;
  outlined copy of ActivitySession.State(v10);
  v94 = v13;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  outlined consume of ActivitySession.State(v10);

  v17 = os_log_type_enabled(v15, v16);
  v18 = MEMORY[0x1E69E7D40];
  if (v17)
  {
    v91 = v3;
    v19 = 0xEB00000000646574;
    v20 = v10;
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v95[0] = v23;
    *v21 = 136315650;
    v93 = v20;
    if (v20 >> 62)
    {
      if (v20 >> 62 == 1)
      {
        v24 = 0x664F6465646E6148;
        v25 = 0xE900000000000066;
      }

      else
      {
        v26 = 0xE600000000000000;
        v27 = 0x64656E696F4ALL;
        if (v93 != 0x8000000000000008)
        {
          v27 = 1952867660;
          v26 = 0xE400000000000000;
        }

        if (v93 == 0x8000000000000000)
        {
          v24 = 0x676E6974696157;
        }

        else
        {
          v24 = v27;
        }

        if (v93 == 0x8000000000000000)
        {
          v25 = 0xE700000000000000;
        }

        else
        {
          v25 = v26;
        }
      }
    }

    else
    {
      v24 = 0x6164696C61766E49;
      v25 = 0xEB00000000646574;
    }

    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, v95);

    *(v21 + 4) = v28;
    *(v21 + 12) = 2080;
    (*((*v18 & *v14) + 0x2F8))(&v96, v29);
    if (v96 >> 62)
    {
      if (v96 >> 62 == 1)
      {
        v30 = 0x664F6465646E6148;
        v19 = 0xE900000000000066;
      }

      else
      {
        v31 = 0xE600000000000000;
        v32 = 0x64656E696F4ALL;
        if (v96 != 0x8000000000000008)
        {
          v32 = 1952867660;
          v31 = 0xE400000000000000;
        }

        if (v96 == 0x8000000000000000)
        {
          v30 = 0x676E6974696157;
        }

        else
        {
          v30 = v32;
        }

        if (v96 == 0x8000000000000000)
        {
          v19 = 0xE700000000000000;
        }

        else
        {
          v19 = v31;
        }
      }
    }

    else
    {
      v30 = 0x6164696C61766E49;
    }

    outlined consume of ActivitySession.State(v96);
    v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v19, v95);

    *(v21 + 14) = v33;
    *(v21 + 22) = 2112;
    *(v21 + 24) = v14;
    *v22 = v14;
    v34 = v14;
    _os_log_impl(&dword_1AEB26000, v15, v16, "ActivitySessionManager state changed from %s to %s on activity session: %@", v21, 0x20u);
    outlined destroy of NSObject?(v22, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B27120C0](v22, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v23, -1, -1);
    MEMORY[0x1B27120C0](v21, -1, -1);

    v3 = v91;
    v10 = v93;
  }

  else
  {
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v35 = specialized Set.contains(_:)(v14, v95[0]);

  if ((v35 & 1) == 0)
  {
    v55 = Logger.logObject.getter();
    LOBYTE(v56) = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v55, v56))
    {
LABEL_44:

      return;
    }

    v57 = swift_slowAlloc();
    *v57 = 0;
    v58 = "Ignoring activity session update since it's not yet tracked";
LABEL_43:
    _os_log_impl(&dword_1AEB26000, v55, v56, v58, v57, 2u);
    MEMORY[0x1B27120C0](v57, -1, -1);
    goto LABEL_44;
  }

  v37 = *((*v18 & *v14) + 0x2F8);
  v38 = (*v18 & *v14) + 760;
  v37(v95, v36);
  v39 = v95[0];
  if (v95[0] >> 62)
  {
    v59 = outlined consume of ActivitySession.State(v95[0]);
    v60 = (*((*v18 & *v3) + 0x120))(v59);
    if (v60)
    {
      v61 = v60;
      v62 = (*((*v18 & *v14) + 0x388))();
      if (v10 >> 62)
      {
        if (v10 >> 62 == 1)
        {
          v63 = 4;
        }

        else
        {
          v69 = 1;
          if (v10 != 0x8000000000000008)
          {
            v69 = 5;
          }

          if (v10 == 0x8000000000000000)
          {
            v63 = 0;
          }

          else
          {
            v63 = v69;
          }
        }
      }

      else
      {
        v63 = 2;
      }

      [v61 activitySessionManager:v3 activitySessionStateChanged:v62 oldState:v63];
      swift_unknownObjectRelease();
    }

    goto LABEL_70;
  }

  v90 = v38;
  v91 = v37;
  v93 = v10;
  v40 = *(v95[0] + 24);

  outlined consume of ActivitySession.State(v39);
  v41 = v14;
  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    *v44 = 138412290;
    *(v44 + 4) = v41;
    *v45 = v14;
    v46 = v41;
    _os_log_impl(&dword_1AEB26000, v42, v43, "ActivitySessionManager session was invalidated: %@", v44, 0xCu);
    outlined destroy of NSObject?(v45, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B27120C0](v45, -1, -1);
    MEMORY[0x1B27120C0](v44, -1, -1);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v47 = static Published.subscript.modify();
  v48 = specialized Set._Variant.remove(_:)(v41);
  v47(v95, 0);

  if (!v48)
  {

    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v55, v56))
    {
      goto LABEL_44;
    }

    v57 = swift_slowAlloc();
    *v57 = 0;
    v58 = "ActivitySession not found -- not notifying delegate";
    goto LABEL_43;
  }

  v49 = (*((*v18 & *v41) + 0x328))();
  v50 = [v49 metadata];

  [v50 removeImageDiskFile];
  v51 = *((*v18 & *v3) + 0x120);
  v52 = v51();
  if (v52)
  {
    v53 = v52;
    v54 = (*((*v18 & *v41) + 0x388))();

    if (!v40)
    {
    }

    [v53 activitySessionManager:v3 activitySessionRemoved:v54 userOriginated:v40 == 0];

    swift_unknownObjectRelease();
  }

  if (v40)
  {

    v37 = v91;
  }

  else
  {

    v65 = (v51)(v64);
    v37 = v91;
    if (v65)
    {
      v66 = v65;
      v67 = (*((*v18 & *v41) + 0x388))();
      if (v93 >> 62)
      {
        if (v93 >> 62 == 1)
        {
          v68 = 4;
        }

        else if (v93 == 0x8000000000000000)
        {
          v68 = 0;
        }

        else if (v93 == 0x8000000000000008)
        {
          v68 = 1;
        }

        else
        {
          v68 = 5;
        }
      }

      else
      {
        v68 = 2;
      }

      [v66 activitySessionManager:v3 activitySessionStateChanged:v67 oldState:v68];
      swift_unknownObjectRelease();
    }
  }

  ActivitySessionManager.logMetricsForSessionEnd(_:)(v41);
LABEL_70:
  v70 = *((*v18 & *v14) + 0x328);
  v71 = v70();
  v72 = [v71 isSystemActivity];

  if ((v72 & 1) == 0)
  {
    v73 = (*((*v18 & *v3) + 0x120))();
    if (v73)
    {
      v74 = v73;
      if ([v73 respondsToSelector_])
      {
        (*((*v18 & *v3) + 0x170))();
        v91 = v37;
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationActivitySession, 0x1E69D8B58);
        lazy protocol witness table accessor for type TUConversationActivitySession and conformance NSObject(&lazy protocol witness table cache variable for type TUConversationActivitySession and conformance NSObject, &lazy cache variable for type metadata for TUConversationActivitySession, 0x1E69D8B58, MEMORY[0x1E69E81B8]);
        isa = Set._bridgeToObjectiveC()().super.isa;

        [v74 activitySessionManager:v3 tuActivitySessionsDidChange:isa];
        swift_unknownObjectRelease();

        v37 = v91;
        v18 = MEMORY[0x1E69E7D40];
      }

      else
      {
        v73 = swift_unknownObjectRelease();
      }
    }
  }

  v76 = (v70)(v73);
  v77 = [v76 isScreenSharingActivity];

  if (v77)
  {
    if ((*((*v18 & *v14) + 0x340))())
    {
      (v37)(v95);
      v96 = 0x8000000000000008;
      v78 = static ActivitySession.State.== infix(_:_:)(v95, &v96);
      v79 = outlined consume of ActivitySession.State(v95[0]);
      if ((v78 & 1) == 0)
      {
        v37(v95, v79);
        v96 = 0x8000000000000000;
        v80 = static ActivitySession.State.== infix(_:_:)(v95, &v96);
        outlined consume of ActivitySession.State(v95[0]);
        if ((v80 & 1) == 0)
        {
          v81 = v18;
          if (one-time initialization token for host != -1)
          {
            swift_once();
          }

          __swift_project_value_buffer(v92, static Log.host);
          v82 = v14;
          v83 = Logger.logObject.getter();
          v84 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v83, v84))
          {
            v85 = swift_slowAlloc();
            v86 = swift_slowAlloc();
            v95[0] = v86;
            *v85 = 136315138;
            v96 = v70();
            type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationActivity, 0x1E69D8B28);
            v87 = String.init<A>(reflecting:)();
            v89 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v87, v88, v95);

            *(v85 + 4) = v89;
            _os_log_impl(&dword_1AEB26000, v83, v84, "Invalidating session because activity is ScreenSharing: %s", v85, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v86);
            MEMORY[0x1B27120C0](v86, -1, -1);
            MEMORY[0x1B27120C0](v85, -1, -1);
          }

          (*((*v81 & *v82) + 0x440))();
        }
      }
    }
  }
}