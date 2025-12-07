unint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, double a8)
{
  v9 = v8;
  v18 = *v8;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4, a5, a6);
  v21 = *(v18 + 16);
  v22 = (v20 & 1) == 0;
  v23 = __OFADD__(v21, v22);
  v24 = v21 + v22;
  if (v23)
  {
    __break(1u);
    goto LABEL_15;
  }

  v25 = v20;
  v26 = *(v18 + 24);
  if (v26 < v24 || (a7 & 1) == 0)
  {
    if (v26 < v24 || (a7 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v24, a7 & 1);
      result = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4, a5, a6);
      if ((v25 & 1) != (v28 & 1))
      {
LABEL_16:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v27 = result;
      specialized _NativeDictionary.copy()();
      result = v27;
    }
  }

  v29 = *v9;
  if (v25)
  {
    v30 = v29[7] + 24 * result;
    *v30 = a1;
    *(v30 + 8) = a8;
    *(v30 + 16) = a2 & 1;
    return result;
  }

  v29[(result >> 6) + 8] |= 1 << result;
  v31 = (v29[6] + 32 * result);
  *v31 = a3;
  v31[1] = a4;
  v31[2] = a5;
  v31[3] = a6;
  v32 = v29[7] + 24 * result;
  *v32 = a1;
  *(v32 + 8) = a8;
  *(v32 + 16) = a2 & 1;
  v33 = v29[2];
  v23 = __OFADD__(v33, 1);
  v34 = v33 + 1;
  if (v23)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v29[2] = v34;
}

unint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, __int128 *a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = specialized __RawDictionaryStorage.find<A>(_:)();
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, a3 & 1);
      result = specialized __RawDictionaryStorage.find<A>(_:)();
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_15:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      specialized _NativeDictionary.copy()();
      result = v17;
    }
  }

  v19 = *v4;
  if (v15)
  {
    *(v19[7] + 8 * result) = a1;
    return result;
  }

  v19[(result >> 6) + 8] |= 1 << result;
  v20 = (v19[6] + 48 * result);
  v21 = *a2;
  v22 = a2[2];
  v20[1] = a2[1];
  v20[2] = v22;
  *v20 = v21;
  *(v19[7] + 8 * result) = a1;
  v23 = v19[2];
  v13 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v13)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v19[2] = v24;
  return outlined init with copy of MLS.InMemoryPersister.GroupMessageStoreID(a2, &v25);
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(uint64_t, void))
{
  v9 = v6;
  v14 = *v6;
  v15 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a4 & 1) == 0)
  {
    if (v22 < v20 || (a4 & 1) != 0)
    {
      a6(v20, a4 & 1);
      v15 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
      if ((v21 & 1) != (v24 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v23 = v15;
      a5();
      v15 = v23;
    }
  }

  v25 = *v9;
  if (v21)
  {
    *(v25[7] + 8 * v15) = a1;
  }

  v25[(v15 >> 6) + 8] |= 1 << v15;
  v27 = (v25[6] + 16 * v15);
  *v27 = a2;
  v27[1] = a3;
  *(v25[7] + 8 * v15) = a1;
  v28 = v25[2];
  v19 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v25[2] = v29;
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for MetricCollector.Event(0);
  result = outlined init with take of XPCUtils.XPCInterfaceRequest(a4, v9 + *(*(v10 - 8) + 72) * a1, type metadata accessor for MetricCollector.Event);
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

{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a5[6];
  v11 = type metadata accessor for UUID();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  v13 = (a5[7] + 16 * a1);
  *v13 = a3;
  v13[1] = a4;
  v14 = a5[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v16;
  }

  return result;
}

{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for UUID();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
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

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = type metadata accessor for XPCUtils.XPCInterfaceRequest(0);
  result = outlined init with take of XPCUtils.XPCInterfaceRequest(a3, v7 + *(*(v8 - 8) + 72) * a1, type metadata accessor for XPCUtils.XPCInterfaceRequest);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = outlined init with take of MLS.KeyUpdatePolicy(a4, a5[7] + 40 * a1);
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, __int128 *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = outlined init with take of MLS.KeyUpdatePolicy(a3, a4[7] + 40 * a1);
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

uint64_t specialized implicit closure #4 in closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:)(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  v5 = *(a4 + 8);
  v6 = *(a4 + 16);
  v7 = *(a4 + 17);
  *(v4 + 16) = *a4;
  *(v4 + 24) = v5;
  *(v4 + 32) = v6;
  *(v4 + 33) = v7;
  v10 = (a2 + *a2);
  v8 = swift_task_alloc();
  *(v4 + 48) = v8;
  *v8 = v4;
  v8[1] = specialized implicit closure #4 in closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v10(v4 + 34, v4 + 16);
}

uint64_t specialized implicit closure #4 in closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:)()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = specialized implicit closure #4 in closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);
  }

  else
  {
    v2 = specialized implicit closure #4 in closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  **(v0 + 40) = *(v0 + 34);
  return (*(v0 + 8))();
}

{
  return (*(v0 + 8))();
}

uint64_t specialized KDSRegistration.XPCCoordinator.init(clientIdentifier:provider:simUniqueID:simLabelID:supportedState:testPhoneNumberURI:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7, uint64_t a8)
{
  *(v9 + 88) = v13;
  *(v9 + 96) = v8;
  *(v9 + 72) = a6;
  *(v9 + 80) = a8;
  *(v9 + 56) = a4;
  *(v9 + 64) = a5;
  *(v9 + 40) = a2;
  *(v9 + 48) = a3;
  *(v9 + 104) = *v8;
  *(v9 + 168) = *a7;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v10 = static RegistrationActor.shared;
  *(v9 + 112) = static RegistrationActor.shared;

  return MEMORY[0x2822009F8](specialized KDSRegistration.XPCCoordinator.init(clientIdentifier:provider:simUniqueID:simLabelID:supportedState:testPhoneNumberURI:), v10, 0);
}

uint64_t specialized KDSRegistration.XPCCoordinator.init(clientIdentifier:provider:simUniqueID:simLabelID:supportedState:testPhoneNumberURI:)()
{
  v19 = *(v0 + 168);
  v1 = *(v0 + 96);
  v20 = *(v0 + 80);
  v21 = *(v0 + 88);
  v18 = *(v0 + 72);
  v3 = *(v0 + 56);
  v2 = *(v0 + 64);
  v4 = *(v0 + 48);
  Logger.init(subsystem:category:)();
  v5 = (v1 + direct field offset for KDSRegistration.XPCCoordinator.clientUUID);
  v6 = [objc_allocWithZone(MEMORY[0x277CCAD78]) init];
  v7 = [v6 UUIDString];

  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  *v5 = v8;
  v5[1] = v10;
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v11 = (v1 + direct field offset for KDSRegistration.XPCCoordinator.simUniqueID);
  *v11 = v4;
  v11[1] = v3;
  v12 = (v1 + direct field offset for KDSRegistration.XPCCoordinator.simLabelID);
  *v12 = v2;
  v12[1] = v18;
  *(v1 + direct field offset for KDSRegistration.XPCCoordinator.uriSupportedState) = v19;
  v13 = (v1 + direct field offset for KDSRegistration.XPCCoordinator.testPhoneNumberURI);
  *v13 = v20;
  v13[1] = v21;
  *(v1 + direct field offset for KDSRegistration.XPCCoordinator.listeners) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_15SecureMessaging15KDSRegistrationO8Listener_pSgyYbcTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v14 = v11[1];
  v15 = (v1 + direct field offset for KDSRegistration.XPCCoordinator.uniqueClientIdentifier);
  *v15 = *v11;
  v15[1] = v14;

  v16 = swift_task_alloc();
  *(v0 + 120) = v16;
  *v16 = v0;
  v16[1] = specialized KDSRegistration.XPCCoordinator.init(clientIdentifier:provider:simUniqueID:simLabelID:supportedState:testPhoneNumberURI:);

  return specialized static XPCUtils.XPCClient.weakSharedInstance.getter();
}

{
  v1 = v0[16];
  v2 = v0[13];
  *(v0[12] + direct field offset for KDSRegistration.XPCCoordinator.xpcClient) = v1;
  v3 = *(v1 + OBJC_IVAR____TtCO15SecureMessaging8XPCUtils9XPCClient_registrationInterface);
  v0[17] = v3;
  v4 = swift_allocObject();
  v0[18] = v4;
  swift_weakInit();
  v5 = swift_allocObject();
  v0[19] = v5;
  *(v5 + 16) = *(v2 + 80);
  *(v5 + 24) = v4;
  v6 = *(*v3 + 352);

  v9 = (v6 + *v6);
  v7 = swift_task_alloc();
  v0[20] = v7;
  *v7 = v0;
  v7[1] = specialized KDSRegistration.XPCCoordinator.init(clientIdentifier:provider:simUniqueID:simLabelID:supportedState:testPhoneNumberURI:);

  return v9(&async function pointer to partial apply for closure #1 in KDSRegistration.XPCCoordinator.init(clientIdentifier:provider:simUniqueID:simLabelID:supportedState:testPhoneNumberURI:), v5);
}

{
  v1 = *v0;
  v5 = *v0;

  v2 = *(v5 + 8);
  v3 = *(v1 + 96);

  return v2(v3);
}

uint64_t specialized KDSRegistration.XPCCoordinator.init(clientIdentifier:provider:simUniqueID:simLabelID:supportedState:testPhoneNumberURI:)(uint64_t a1)
{
  v2 = *(*v1 + 112);
  *(*v1 + 128) = a1;

  return MEMORY[0x2822009F8](specialized KDSRegistration.XPCCoordinator.init(clientIdentifier:provider:simUniqueID:simLabelID:supportedState:testPhoneNumberURI:), v2, 0);
}

uint64_t specialized KDSRegistration.XPCCoordinator.__allocating_init(clientIdentifier:provider:simUniqueID:simLabelID:supportedState:testPhoneNumberURI:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  type metadata accessor for KDSRegistration.XPCCoordinator(0, *(v9 + 80), a3, a4);
  swift_allocObject();
  v18 = swift_task_alloc();
  *(v10 + 16) = v18;
  *v18 = v10;
  v18[1] = specialized KDSRegistration.XPCCoordinator.__allocating_init(clientIdentifier:provider:simUniqueID:simLabelID:supportedState:testPhoneNumberURI:);

  return (specialized KDSRegistration.XPCCoordinator.init(clientIdentifier:provider:simUniqueID:simLabelID:supportedState:testPhoneNumberURI:))(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t specialized KDSRegistration.XPCCoordinator.__allocating_init(clientIdentifier:provider:simUniqueID:simLabelID:supportedState:testPhoneNumberURI:)(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

unint64_t lazy protocol witness table accessor for type KDSRegistration.ClientCreationError and conformance KDSRegistration.ClientCreationError()
{
  result = lazy protocol witness table cache variable for type KDSRegistration.ClientCreationError and conformance KDSRegistration.ClientCreationError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.ClientCreationError and conformance KDSRegistration.ClientCreationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.ClientCreationError and conformance KDSRegistration.ClientCreationError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.ClientCreationError and conformance KDSRegistration.ClientCreationError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.ClientCreationError and conformance KDSRegistration.ClientCreationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.ClientCreationError and conformance KDSRegistration.ClientCreationError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.ClientCreationError and conformance KDSRegistration.ClientCreationError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.ClientCreationError and conformance KDSRegistration.ClientCreationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.ClientCreationError and conformance KDSRegistration.ClientCreationError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.ClientCreationError and conformance KDSRegistration.ClientCreationError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.ClientCreationError and conformance KDSRegistration.ClientCreationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.ClientCreationError and conformance KDSRegistration.ClientCreationError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.ClientCreationError and conformance KDSRegistration.ClientCreationError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.ClientCreationError and conformance KDSRegistration.ClientCreationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.ClientCreationError and conformance KDSRegistration.ClientCreationError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.ClientCreationError and conformance KDSRegistration.ClientCreationError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.ClientCreationError and conformance KDSRegistration.ClientCreationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.ClientCreationError and conformance KDSRegistration.ClientCreationError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.ClientCreationError and conformance KDSRegistration.ClientCreationError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.ClientCreationError and conformance KDSRegistration.ClientCreationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.ClientCreationError and conformance KDSRegistration.ClientCreationError);
  }

  return result;
}

uint64_t type metadata accessor for KDSRegistration.XPCRequest(uint64_t a1)
{
  result = type metadata singleton initialization cache for KDSRegistration.XPCRequest;
  if (!type metadata singleton initialization cache for KDSRegistration.XPCRequest)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_264F3C564()
{
  MEMORY[0x266755640](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t partial apply for closure #1 in KDSRegistration.XPCCoordinator.add(listener:)@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v4 = *(v1 + 24);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t lazy protocol witness table accessor for type KDSRegistration.SupportedStateUpdateProcessedContext and conformance KDSRegistration.SupportedStateUpdateProcessedContext()
{
  result = lazy protocol witness table cache variable for type KDSRegistration.SupportedStateUpdateProcessedContext and conformance KDSRegistration.SupportedStateUpdateProcessedContext;
  if (!lazy protocol witness table cache variable for type KDSRegistration.SupportedStateUpdateProcessedContext and conformance KDSRegistration.SupportedStateUpdateProcessedContext)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.SupportedStateUpdateProcessedContext and conformance KDSRegistration.SupportedStateUpdateProcessedContext);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.SupportedStateUpdateProcessedContext and conformance KDSRegistration.SupportedStateUpdateProcessedContext;
  if (!lazy protocol witness table cache variable for type KDSRegistration.SupportedStateUpdateProcessedContext and conformance KDSRegistration.SupportedStateUpdateProcessedContext)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.SupportedStateUpdateProcessedContext and conformance KDSRegistration.SupportedStateUpdateProcessedContext);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type KDSRegistration.UpdateSupportedStateError and conformance KDSRegistration.UpdateSupportedStateError()
{
  result = lazy protocol witness table cache variable for type KDSRegistration.UpdateSupportedStateError and conformance KDSRegistration.UpdateSupportedStateError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.UpdateSupportedStateError and conformance KDSRegistration.UpdateSupportedStateError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.UpdateSupportedStateError and conformance KDSRegistration.UpdateSupportedStateError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.UpdateSupportedStateError and conformance KDSRegistration.UpdateSupportedStateError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.UpdateSupportedStateError and conformance KDSRegistration.UpdateSupportedStateError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.UpdateSupportedStateError and conformance KDSRegistration.UpdateSupportedStateError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.UpdateSupportedStateError and conformance KDSRegistration.UpdateSupportedStateError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.UpdateSupportedStateError and conformance KDSRegistration.UpdateSupportedStateError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.UpdateSupportedStateError and conformance KDSRegistration.UpdateSupportedStateError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.UpdateSupportedStateError and conformance KDSRegistration.UpdateSupportedStateError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.UpdateSupportedStateError and conformance KDSRegistration.UpdateSupportedStateError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.UpdateSupportedStateError and conformance KDSRegistration.UpdateSupportedStateError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.UpdateSupportedStateError and conformance KDSRegistration.UpdateSupportedStateError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.UpdateSupportedStateError and conformance KDSRegistration.UpdateSupportedStateError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.UpdateSupportedStateError and conformance KDSRegistration.UpdateSupportedStateError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.UpdateSupportedStateError and conformance KDSRegistration.UpdateSupportedStateError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.UpdateSupportedStateError and conformance KDSRegistration.UpdateSupportedStateError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.UpdateSupportedStateError and conformance KDSRegistration.UpdateSupportedStateError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.UpdateSupportedStateError and conformance KDSRegistration.UpdateSupportedStateError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.UpdateSupportedStateError and conformance KDSRegistration.UpdateSupportedStateError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.UpdateSupportedStateError and conformance KDSRegistration.UpdateSupportedStateError);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type KDSRegistration.IsRegisteredResult and conformance KDSRegistration.IsRegisteredResult()
{
  result = lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredResult and conformance KDSRegistration.IsRegisteredResult;
  if (!lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredResult and conformance KDSRegistration.IsRegisteredResult)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredResult and conformance KDSRegistration.IsRegisteredResult);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredResult and conformance KDSRegistration.IsRegisteredResult;
  if (!lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredResult and conformance KDSRegistration.IsRegisteredResult)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredResult and conformance KDSRegistration.IsRegisteredResult);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type KDSRegistration.IsRegisteredError and conformance KDSRegistration.IsRegisteredError()
{
  result = lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredError and conformance KDSRegistration.IsRegisteredError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredError and conformance KDSRegistration.IsRegisteredError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredError and conformance KDSRegistration.IsRegisteredError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredError and conformance KDSRegistration.IsRegisteredError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredError and conformance KDSRegistration.IsRegisteredError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredError and conformance KDSRegistration.IsRegisteredError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredError and conformance KDSRegistration.IsRegisteredError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredError and conformance KDSRegistration.IsRegisteredError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredError and conformance KDSRegistration.IsRegisteredError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredError and conformance KDSRegistration.IsRegisteredError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredError and conformance KDSRegistration.IsRegisteredError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredError and conformance KDSRegistration.IsRegisteredError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredError and conformance KDSRegistration.IsRegisteredError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredError and conformance KDSRegistration.IsRegisteredError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredError and conformance KDSRegistration.IsRegisteredError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredError and conformance KDSRegistration.IsRegisteredError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredError and conformance KDSRegistration.IsRegisteredError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredError and conformance KDSRegistration.IsRegisteredError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredError and conformance KDSRegistration.IsRegisteredError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredError and conformance KDSRegistration.IsRegisteredError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredError and conformance KDSRegistration.IsRegisteredError);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type KDSRegistration.SigningOutput and conformance KDSRegistration.SigningOutput()
{
  result = lazy protocol witness table cache variable for type KDSRegistration.SigningOutput and conformance KDSRegistration.SigningOutput;
  if (!lazy protocol witness table cache variable for type KDSRegistration.SigningOutput and conformance KDSRegistration.SigningOutput)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.SigningOutput and conformance KDSRegistration.SigningOutput);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.SigningOutput and conformance KDSRegistration.SigningOutput;
  if (!lazy protocol witness table cache variable for type KDSRegistration.SigningOutput and conformance KDSRegistration.SigningOutput)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.SigningOutput and conformance KDSRegistration.SigningOutput);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type KDSRegistration.SignWithParticipantKeyError and conformance KDSRegistration.SignWithParticipantKeyError()
{
  result = lazy protocol witness table cache variable for type KDSRegistration.SignWithParticipantKeyError and conformance KDSRegistration.SignWithParticipantKeyError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.SignWithParticipantKeyError and conformance KDSRegistration.SignWithParticipantKeyError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.SignWithParticipantKeyError and conformance KDSRegistration.SignWithParticipantKeyError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.SignWithParticipantKeyError and conformance KDSRegistration.SignWithParticipantKeyError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.SignWithParticipantKeyError and conformance KDSRegistration.SignWithParticipantKeyError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.SignWithParticipantKeyError and conformance KDSRegistration.SignWithParticipantKeyError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.SignWithParticipantKeyError and conformance KDSRegistration.SignWithParticipantKeyError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.SignWithParticipantKeyError and conformance KDSRegistration.SignWithParticipantKeyError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.SignWithParticipantKeyError and conformance KDSRegistration.SignWithParticipantKeyError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.SignWithParticipantKeyError and conformance KDSRegistration.SignWithParticipantKeyError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.SignWithParticipantKeyError and conformance KDSRegistration.SignWithParticipantKeyError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.SignWithParticipantKeyError and conformance KDSRegistration.SignWithParticipantKeyError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.SignWithParticipantKeyError and conformance KDSRegistration.SignWithParticipantKeyError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.SignWithParticipantKeyError and conformance KDSRegistration.SignWithParticipantKeyError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.SignWithParticipantKeyError and conformance KDSRegistration.SignWithParticipantKeyError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.SignWithParticipantKeyError and conformance KDSRegistration.SignWithParticipantKeyError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.SignWithParticipantKeyError and conformance KDSRegistration.SignWithParticipantKeyError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.SignWithParticipantKeyError and conformance KDSRegistration.SignWithParticipantKeyError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.SignWithParticipantKeyError and conformance KDSRegistration.SignWithParticipantKeyError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.SignWithParticipantKeyError and conformance KDSRegistration.SignWithParticipantKeyError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.SignWithParticipantKeyError and conformance KDSRegistration.SignWithParticipantKeyError);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_264F3C968()
{
  outlined consume of Data._Representation(*(v0 + 16), *(v0 + 24));
  outlined consume of Data._Representation(*(v0 + 32), *(v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t partial apply for closure #2 in KDSRegistration.XPCCoordinator.isRegisteredChanged(simUniqueID:isRegistered:context:completion:)(uint64_t a1, uint64_t a2, _BYTE *a3, _BYTE *a4)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = partial apply for closure #2 in KDSRegistration.XPCCoordinator.isRegisteredChanged(simUniqueID:isRegistered:context:completion:);

  return closure #2 in KDSRegistration.XPCCoordinator.isRegisteredChanged(simUniqueID:isRegistered:context:completion:)(a1, a2, a3, a4, v4);
}

uint64_t partial apply for closure #2 in KDSRegistration.XPCCoordinator.isRegisteredChanged(simUniqueID:isRegistered:context:completion:)(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed @Sendable @async (@guaranteed String, @in_guaranteed KDSRegistration.IsRegisteredResult, @in_guaranteed KDSRegistration.RegistrationCompletedContext?) -> (@unowned Bool)(uint64_t a1, uint64_t *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return thunk for @escaping @callee_guaranteed @Sendable @async (@guaranteed String, @in_guaranteed KDSRegistration.IsRegisteredResult, @in_guaranteed KDSRegistration.RegistrationCompletedContext?) -> (@unowned Bool)(a1, a2, v6);
}

uint64_t partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:)(uint64_t a1)
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
  v11[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:)(a1, v4, v5, v6, v7, v8, v9, v10);
}

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
  v11[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:)(a1, v4, v5, v6, v7, v8, v9, v10);
}

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
  v11[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:)(a1, v4, v5, v6, v7, v8, v9, v10);
}

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
  v11[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:)(a1, v4, v5, v6, v7, v8, v9, v10);
}

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
  v11[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:)(a1, v4, v5, v6, v7, v8, v9, v10);
}

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
  v11[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:)(a1, v4, v5, v6, v7, v8, v9, v10);
}

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
  v11[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:)(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:)()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_264F3CE3C()
{
  outlined consume of Data._Representation(*(v0 + 16), *(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t partial apply for closure #2 in KDSRegistration.XPCCoordinator.obtainPhoneAuthenticationInfo(request:completion:)(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #2 in KDSRegistration.XPCCoordinator.obtainPhoneAuthenticationInfo(request:completion:)(a1, a2, v2);
}

uint64_t objectdestroy_22Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

unint64_t lazy protocol witness table accessor for type KDSRegistration.UniqueClientIdentifier and conformance KDSRegistration.UniqueClientIdentifier()
{
  result = lazy protocol witness table cache variable for type KDSRegistration.UniqueClientIdentifier and conformance KDSRegistration.UniqueClientIdentifier;
  if (!lazy protocol witness table cache variable for type KDSRegistration.UniqueClientIdentifier and conformance KDSRegistration.UniqueClientIdentifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.UniqueClientIdentifier and conformance KDSRegistration.UniqueClientIdentifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.UniqueClientIdentifier and conformance KDSRegistration.UniqueClientIdentifier;
  if (!lazy protocol witness table cache variable for type KDSRegistration.UniqueClientIdentifier and conformance KDSRegistration.UniqueClientIdentifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.UniqueClientIdentifier and conformance KDSRegistration.UniqueClientIdentifier);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type KDSRegistration.XPCRequest.RequestType and conformance KDSRegistration.XPCRequest.RequestType()
{
  result = lazy protocol witness table cache variable for type KDSRegistration.XPCRequest.RequestType and conformance KDSRegistration.XPCRequest.RequestType;
  if (!lazy protocol witness table cache variable for type KDSRegistration.XPCRequest.RequestType and conformance KDSRegistration.XPCRequest.RequestType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.XPCRequest.RequestType and conformance KDSRegistration.XPCRequest.RequestType);
  }

  return result;
}

uint64_t sub_264F3D278@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 176))();
  *a2 = result;
  return result;
}

uint64_t sub_264F3D2C4(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 184);
  v3 = swift_unknownObjectRetain();
  return v2(v3);
}

void *sub_264F3D330@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 200))(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_264F3D38C(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return (*(*v2 + 208))(&v4);
}

uint64_t sub_264F3D3F0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 224))();
  *a2 = result;
  return result;
}

uint64_t sub_264F3D43C(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 232);

  return v2(v3);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for KDSRegistration.UniqueClientIdentifier(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for KDSRegistration.UniqueClientIdentifier(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t type metadata completion function for KDSRegistration.XPCCoordinator(uint64_t a1)
{
  result = type metadata accessor for Logger();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t dispatch thunk of KDSRegistration.XPCCoordinator.__allocating_init(clientIdentifier:provider:simUniqueID:simLabelID:supportedState:testPhoneNumberURI:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v20 = (*(v9 + 248) + **(v9 + 248));
  v18 = swift_task_alloc();
  *(v10 + 16) = v18;
  *v18 = v10;
  v18[1] = dispatch thunk of KDSRegistration.XPCCoordinator.__allocating_init(clientIdentifier:provider:simUniqueID:simLabelID:supportedState:testPhoneNumberURI:);

  return v20(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t dispatch thunk of KDSRegistration.XPCCoordinator.__allocating_init(clientIdentifier:provider:simUniqueID:simLabelID:supportedState:testPhoneNumberURI:)(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t dispatch thunk of KDSRegistration.XPCCoordinator.setupXPCConnection()()
{
  v4 = (*(*v0 + 256) + **(*v0 + 256));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v4();
}

uint64_t dispatch thunk of KDSRegistration.XPCCoordinator.update(supportedState:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 280) + **(*v2 + 280));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v8(a1, a2);
}

uint64_t dispatch thunk of KDSRegistration.XPCCoordinator.isRegistered(context:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 288) + **(*v2 + 288));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v8(a1, a2);
}

uint64_t dispatch thunk of KDSRegistration.XPCCoordinator.signWithParticipantKey(input:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 296) + **(*v2 + 296));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v8(a1, a2);
}

uint64_t sub_264F3DF78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy10Foundation4DataVs5Error_pGMd, &_sScCy10Foundation4DataVs5Error_pGMR);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 4)
    {
      return v10 - 3;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_264F3E050(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy10Foundation4DataVs5Error_pGMd, &_sScCy10Foundation4DataVs5Error_pGMR);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 3;
  }

  return result;
}

void type metadata completion function for KDSRegistration.XPCRequest(uint64_t a1)
{
  type metadata accessor for CheckedContinuation<Data, Error>(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void type metadata accessor for CheckedContinuation<Data, Error>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for CheckedContinuation<Data, Error>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v1 = type metadata accessor for CheckedContinuation();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for CheckedContinuation<Data, Error>);
    }
  }
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

uint64_t getEnumTagSinglePayload for KDSRegistration.XPCRequest.RequestType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for KDSRegistration.XPCRequest.RequestType(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for KDSRegistration.UniqueClientIdentifier.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for KDSRegistration.UniqueClientIdentifier.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_264F3E61C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

unint64_t lazy protocol witness table accessor for type MLS.KeyPackageRetrievalError and conformance MLS.KeyPackageRetrievalError()
{
  result = lazy protocol witness table cache variable for type MLS.KeyPackageRetrievalError and conformance MLS.KeyPackageRetrievalError;
  if (!lazy protocol witness table cache variable for type MLS.KeyPackageRetrievalError and conformance MLS.KeyPackageRetrievalError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.KeyPackageRetrievalError and conformance MLS.KeyPackageRetrievalError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.KeyPackageRetrievalError and conformance MLS.KeyPackageRetrievalError;
  if (!lazy protocol witness table cache variable for type MLS.KeyPackageRetrievalError and conformance MLS.KeyPackageRetrievalError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.KeyPackageRetrievalError and conformance MLS.KeyPackageRetrievalError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.KeyPackageRetrievalError and conformance MLS.KeyPackageRetrievalError;
  if (!lazy protocol witness table cache variable for type MLS.KeyPackageRetrievalError and conformance MLS.KeyPackageRetrievalError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.KeyPackageRetrievalError and conformance MLS.KeyPackageRetrievalError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.KeyPackageRetrievalError and conformance MLS.KeyPackageRetrievalError;
  if (!lazy protocol witness table cache variable for type MLS.KeyPackageRetrievalError and conformance MLS.KeyPackageRetrievalError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.KeyPackageRetrievalError and conformance MLS.KeyPackageRetrievalError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.KeyPackageRetrievalError and conformance MLS.KeyPackageRetrievalError;
  if (!lazy protocol witness table cache variable for type MLS.KeyPackageRetrievalError and conformance MLS.KeyPackageRetrievalError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.KeyPackageRetrievalError and conformance MLS.KeyPackageRetrievalError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.KeyPackageRetrievalError and conformance MLS.KeyPackageRetrievalError;
  if (!lazy protocol witness table cache variable for type MLS.KeyPackageRetrievalError and conformance MLS.KeyPackageRetrievalError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.KeyPackageRetrievalError and conformance MLS.KeyPackageRetrievalError);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type XPCActor and conformance XPCActor(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void outlined copy of Data?(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    outlined copy of Data._Representation(a1, a2);
  }
}

unint64_t lazy protocol witness table accessor for type MLS.FetchMemberError and conformance MLS.FetchMemberError()
{
  result = lazy protocol witness table cache variable for type MLS.FetchMemberError and conformance MLS.FetchMemberError;
  if (!lazy protocol witness table cache variable for type MLS.FetchMemberError and conformance MLS.FetchMemberError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.FetchMemberError and conformance MLS.FetchMemberError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.FetchMemberError and conformance MLS.FetchMemberError;
  if (!lazy protocol witness table cache variable for type MLS.FetchMemberError and conformance MLS.FetchMemberError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.FetchMemberError and conformance MLS.FetchMemberError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.FetchMemberError and conformance MLS.FetchMemberError;
  if (!lazy protocol witness table cache variable for type MLS.FetchMemberError and conformance MLS.FetchMemberError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.FetchMemberError and conformance MLS.FetchMemberError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.FetchMemberError and conformance MLS.FetchMemberError;
  if (!lazy protocol witness table cache variable for type MLS.FetchMemberError and conformance MLS.FetchMemberError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.FetchMemberError and conformance MLS.FetchMemberError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.FetchMemberError and conformance MLS.FetchMemberError;
  if (!lazy protocol witness table cache variable for type MLS.FetchMemberError and conformance MLS.FetchMemberError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.FetchMemberError and conformance MLS.FetchMemberError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.FetchMemberError and conformance MLS.FetchMemberError;
  if (!lazy protocol witness table cache variable for type MLS.FetchMemberError and conformance MLS.FetchMemberError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.FetchMemberError and conformance MLS.FetchMemberError);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type MLS.KeyPackageRetrievalResult<MLS.AllMember> and conformance MLS.KeyPackageRetrievalResult<A>(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t outlined consume of MLS.FetchMemberResult<MLS.AllMember>(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 - 126 >= 2 && a4 - 254 >= 2)
  {
    return outlined consume of MLS.AllMember(a1, a2);
  }

  return a1;
}

unint64_t lazy protocol witness table accessor for type MLS.FetchGroupRecoveryInfoError and conformance MLS.FetchGroupRecoveryInfoError()
{
  result = lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoError and conformance MLS.FetchGroupRecoveryInfoError;
  if (!lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoError and conformance MLS.FetchGroupRecoveryInfoError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoError and conformance MLS.FetchGroupRecoveryInfoError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoError and conformance MLS.FetchGroupRecoveryInfoError;
  if (!lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoError and conformance MLS.FetchGroupRecoveryInfoError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoError and conformance MLS.FetchGroupRecoveryInfoError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoError and conformance MLS.FetchGroupRecoveryInfoError;
  if (!lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoError and conformance MLS.FetchGroupRecoveryInfoError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoError and conformance MLS.FetchGroupRecoveryInfoError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoError and conformance MLS.FetchGroupRecoveryInfoError;
  if (!lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoError and conformance MLS.FetchGroupRecoveryInfoError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoError and conformance MLS.FetchGroupRecoveryInfoError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoError and conformance MLS.FetchGroupRecoveryInfoError;
  if (!lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoError and conformance MLS.FetchGroupRecoveryInfoError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoError and conformance MLS.FetchGroupRecoveryInfoError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoError and conformance MLS.FetchGroupRecoveryInfoError;
  if (!lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoError and conformance MLS.FetchGroupRecoveryInfoError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoError and conformance MLS.FetchGroupRecoveryInfoError);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.FetchGroupRecoveryInfoResult and conformance MLS.FetchGroupRecoveryInfoResult()
{
  result = lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoResult and conformance MLS.FetchGroupRecoveryInfoResult;
  if (!lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoResult and conformance MLS.FetchGroupRecoveryInfoResult)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoResult and conformance MLS.FetchGroupRecoveryInfoResult);
  }

  return result;
}

uint64_t outlined consume of MLS.FetchGroupRecoveryInfoResult(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2 >> 60 != 15 && (a2 & 0xF000000000000000) != 0xB000000000000000)
  {
    outlined consume of Data._Representation(result, a2);

    return outlined consume of Data?(a3, a4);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.ReceiveError and conformance MLS.ReceiveError()
{
  result = lazy protocol witness table cache variable for type MLS.ReceiveError and conformance MLS.ReceiveError;
  if (!lazy protocol witness table cache variable for type MLS.ReceiveError and conformance MLS.ReceiveError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ReceiveError and conformance MLS.ReceiveError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ReceiveError and conformance MLS.ReceiveError;
  if (!lazy protocol witness table cache variable for type MLS.ReceiveError and conformance MLS.ReceiveError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ReceiveError and conformance MLS.ReceiveError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ReceiveError and conformance MLS.ReceiveError;
  if (!lazy protocol witness table cache variable for type MLS.ReceiveError and conformance MLS.ReceiveError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ReceiveError and conformance MLS.ReceiveError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ReceiveError and conformance MLS.ReceiveError;
  if (!lazy protocol witness table cache variable for type MLS.ReceiveError and conformance MLS.ReceiveError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ReceiveError and conformance MLS.ReceiveError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ReceiveError and conformance MLS.ReceiveError;
  if (!lazy protocol witness table cache variable for type MLS.ReceiveError and conformance MLS.ReceiveError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ReceiveError and conformance MLS.ReceiveError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ReceiveError and conformance MLS.ReceiveError;
  if (!lazy protocol witness table cache variable for type MLS.ReceiveError and conformance MLS.ReceiveError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ReceiveError and conformance MLS.ReceiveError);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.ReceiveResult and conformance MLS.ReceiveResult()
{
  result = lazy protocol witness table cache variable for type MLS.ReceiveResult and conformance MLS.ReceiveResult;
  if (!lazy protocol witness table cache variable for type MLS.ReceiveResult and conformance MLS.ReceiveResult)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ReceiveResult and conformance MLS.ReceiveResult);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ReceiveResult and conformance MLS.ReceiveResult;
  if (!lazy protocol witness table cache variable for type MLS.ReceiveResult and conformance MLS.ReceiveResult)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ReceiveResult and conformance MLS.ReceiveResult);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.SendError and conformance MLS.SendError()
{
  result = lazy protocol witness table cache variable for type MLS.SendError and conformance MLS.SendError;
  if (!lazy protocol witness table cache variable for type MLS.SendError and conformance MLS.SendError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SendError and conformance MLS.SendError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.SendError and conformance MLS.SendError;
  if (!lazy protocol witness table cache variable for type MLS.SendError and conformance MLS.SendError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SendError and conformance MLS.SendError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.SendError and conformance MLS.SendError;
  if (!lazy protocol witness table cache variable for type MLS.SendError and conformance MLS.SendError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SendError and conformance MLS.SendError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.SendError and conformance MLS.SendError;
  if (!lazy protocol witness table cache variable for type MLS.SendError and conformance MLS.SendError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SendError and conformance MLS.SendError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.SendError and conformance MLS.SendError;
  if (!lazy protocol witness table cache variable for type MLS.SendError and conformance MLS.SendError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SendError and conformance MLS.SendError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.SendError and conformance MLS.SendError;
  if (!lazy protocol witness table cache variable for type MLS.SendError and conformance MLS.SendError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SendError and conformance MLS.SendError);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.SendResult and conformance MLS.SendResult()
{
  result = lazy protocol witness table cache variable for type MLS.SendResult and conformance MLS.SendResult;
  if (!lazy protocol witness table cache variable for type MLS.SendResult and conformance MLS.SendResult)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SendResult and conformance MLS.SendResult);
  }

  return result;
}

uint64_t outlined consume of MLS.SendResult(uint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
  if (!a4)
  {
    return outlined consume of Data?(a1, a2);
  }

  return a1;
}

uint64_t outlined init with take of MLS.KeyUpdatePolicy(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t outlined assign with take of XPCUtils.XPCInterfaceRequest(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of XPCUtils.XPCInterfaceRequest(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t lazy protocol witness table accessor for type KDSRegistration.ObtainPhoneAuthenticationInfoError and conformance KDSRegistration.ObtainPhoneAuthenticationInfoError()
{
  result = lazy protocol witness table cache variable for type KDSRegistration.ObtainPhoneAuthenticationInfoError and conformance KDSRegistration.ObtainPhoneAuthenticationInfoError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.ObtainPhoneAuthenticationInfoError and conformance KDSRegistration.ObtainPhoneAuthenticationInfoError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.ObtainPhoneAuthenticationInfoError and conformance KDSRegistration.ObtainPhoneAuthenticationInfoError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.ObtainPhoneAuthenticationInfoError and conformance KDSRegistration.ObtainPhoneAuthenticationInfoError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.ObtainPhoneAuthenticationInfoError and conformance KDSRegistration.ObtainPhoneAuthenticationInfoError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.ObtainPhoneAuthenticationInfoError and conformance KDSRegistration.ObtainPhoneAuthenticationInfoError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.ObtainPhoneAuthenticationInfoError and conformance KDSRegistration.ObtainPhoneAuthenticationInfoError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.ObtainPhoneAuthenticationInfoError and conformance KDSRegistration.ObtainPhoneAuthenticationInfoError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.ObtainPhoneAuthenticationInfoError and conformance KDSRegistration.ObtainPhoneAuthenticationInfoError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.ObtainPhoneAuthenticationInfoError and conformance KDSRegistration.ObtainPhoneAuthenticationInfoError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.ObtainPhoneAuthenticationInfoError and conformance KDSRegistration.ObtainPhoneAuthenticationInfoError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.ObtainPhoneAuthenticationInfoError and conformance KDSRegistration.ObtainPhoneAuthenticationInfoError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.ObtainPhoneAuthenticationInfoError and conformance KDSRegistration.ObtainPhoneAuthenticationInfoError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.ObtainPhoneAuthenticationInfoError and conformance KDSRegistration.ObtainPhoneAuthenticationInfoError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.ObtainPhoneAuthenticationInfoError and conformance KDSRegistration.ObtainPhoneAuthenticationInfoError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.ObtainPhoneAuthenticationInfoError and conformance KDSRegistration.ObtainPhoneAuthenticationInfoError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.ObtainPhoneAuthenticationInfoError and conformance KDSRegistration.ObtainPhoneAuthenticationInfoError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.ObtainPhoneAuthenticationInfoError and conformance KDSRegistration.ObtainPhoneAuthenticationInfoError);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type KDSRegistration.EncryptedRCS.PhoneAuthenticationInfo and conformance KDSRegistration.EncryptedRCS.PhoneAuthenticationInfo()
{
  result = lazy protocol witness table cache variable for type KDSRegistration.EncryptedRCS.PhoneAuthenticationInfo and conformance KDSRegistration.EncryptedRCS.PhoneAuthenticationInfo;
  if (!lazy protocol witness table cache variable for type KDSRegistration.EncryptedRCS.PhoneAuthenticationInfo and conformance KDSRegistration.EncryptedRCS.PhoneAuthenticationInfo)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.EncryptedRCS.PhoneAuthenticationInfo and conformance KDSRegistration.EncryptedRCS.PhoneAuthenticationInfo);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type KDSRegistration.EncryptedRCS.PhoneAuthenticationInfoRequest and conformance KDSRegistration.EncryptedRCS.PhoneAuthenticationInfoRequest()
{
  result = lazy protocol witness table cache variable for type KDSRegistration.EncryptedRCS.PhoneAuthenticationInfoRequest and conformance KDSRegistration.EncryptedRCS.PhoneAuthenticationInfoRequest;
  if (!lazy protocol witness table cache variable for type KDSRegistration.EncryptedRCS.PhoneAuthenticationInfoRequest and conformance KDSRegistration.EncryptedRCS.PhoneAuthenticationInfoRequest)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.EncryptedRCS.PhoneAuthenticationInfoRequest and conformance KDSRegistration.EncryptedRCS.PhoneAuthenticationInfoRequest);
  }

  return result;
}

uint64_t outlined init with copy of TaskPriority?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(a1, v4);
}

unint64_t lazy protocol witness table accessor for type KDSRegistration.IsRegisteredChangedError and conformance KDSRegistration.IsRegisteredChangedError()
{
  result = lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredChangedError and conformance KDSRegistration.IsRegisteredChangedError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredChangedError and conformance KDSRegistration.IsRegisteredChangedError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredChangedError and conformance KDSRegistration.IsRegisteredChangedError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredChangedError and conformance KDSRegistration.IsRegisteredChangedError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredChangedError and conformance KDSRegistration.IsRegisteredChangedError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredChangedError and conformance KDSRegistration.IsRegisteredChangedError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredChangedError and conformance KDSRegistration.IsRegisteredChangedError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredChangedError and conformance KDSRegistration.IsRegisteredChangedError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredChangedError and conformance KDSRegistration.IsRegisteredChangedError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredChangedError and conformance KDSRegistration.IsRegisteredChangedError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredChangedError and conformance KDSRegistration.IsRegisteredChangedError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredChangedError and conformance KDSRegistration.IsRegisteredChangedError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredChangedError and conformance KDSRegistration.IsRegisteredChangedError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredChangedError and conformance KDSRegistration.IsRegisteredChangedError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredChangedError and conformance KDSRegistration.IsRegisteredChangedError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredChangedError and conformance KDSRegistration.IsRegisteredChangedError;
  if (!lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredChangedError and conformance KDSRegistration.IsRegisteredChangedError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredChangedError and conformance KDSRegistration.IsRegisteredChangedError);
  }

  return result;
}

uint64_t partial apply for specialized implicit closure #4 in closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return specialized implicit closure #4 in closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:)(a1, v4, v5, v6);
}

uint64_t outlined destroy of NSObject?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t lazy protocol witness table accessor for type KDSRegistration.RegistrationCompletedContext? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type KDSRegistration.RegistrationCompletedContext? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type KDSRegistration.RegistrationCompletedContext? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s15SecureMessaging15KDSRegistrationO28RegistrationCompletedContextVSgMd, &_s15SecureMessaging15KDSRegistrationO28RegistrationCompletedContextVSgMR);
    lazy protocol witness table accessor for type KDSRegistration.RegistrationCompletedContext and conformance KDSRegistration.RegistrationCompletedContext();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.RegistrationCompletedContext? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type KDSRegistration.RegistrationCompletedContext and conformance KDSRegistration.RegistrationCompletedContext()
{
  result = lazy protocol witness table cache variable for type KDSRegistration.RegistrationCompletedContext and conformance KDSRegistration.RegistrationCompletedContext;
  if (!lazy protocol witness table cache variable for type KDSRegistration.RegistrationCompletedContext and conformance KDSRegistration.RegistrationCompletedContext)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.RegistrationCompletedContext and conformance KDSRegistration.RegistrationCompletedContext);
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type KDSRegistration.SigningInput and conformance KDSRegistration.SigningInput()
{
  result = lazy protocol witness table cache variable for type KDSRegistration.SigningInput and conformance KDSRegistration.SigningInput;
  if (!lazy protocol witness table cache variable for type KDSRegistration.SigningInput and conformance KDSRegistration.SigningInput)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.SigningInput and conformance KDSRegistration.SigningInput);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type KDSRegistration.IsRegisteredContext? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredContext? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredContext? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s15SecureMessaging15KDSRegistrationO19IsRegisteredContextVSgMd, &_s15SecureMessaging15KDSRegistrationO19IsRegisteredContextVSgMR);
    lazy protocol witness table accessor for type KDSRegistration.IsRegisteredContext and conformance KDSRegistration.IsRegisteredContext();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredContext? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type KDSRegistration.IsRegisteredContext and conformance KDSRegistration.IsRegisteredContext()
{
  result = lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredContext and conformance KDSRegistration.IsRegisteredContext;
  if (!lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredContext and conformance KDSRegistration.IsRegisteredContext)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredContext and conformance KDSRegistration.IsRegisteredContext);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type KDSRegistration.URISupportedState and conformance KDSRegistration.URISupportedState()
{
  result = lazy protocol witness table cache variable for type KDSRegistration.URISupportedState and conformance KDSRegistration.URISupportedState;
  if (!lazy protocol witness table cache variable for type KDSRegistration.URISupportedState and conformance KDSRegistration.URISupportedState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.URISupportedState and conformance KDSRegistration.URISupportedState);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.URISupportedState and conformance KDSRegistration.URISupportedState;
  if (!lazy protocol witness table cache variable for type KDSRegistration.URISupportedState and conformance KDSRegistration.URISupportedState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.URISupportedState and conformance KDSRegistration.URISupportedState);
  }

  return result;
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_264F3F65C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_264F3F694()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t partial apply for closure #1 in KDSRegistration.XPCCoordinator.init(clientIdentifier:provider:simUniqueID:simLabelID:supportedState:testPhoneNumberURI:)()
{
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #1 in KDSRegistration.XPCCoordinator.init(clientIdentifier:provider:simUniqueID:simLabelID:supportedState:testPhoneNumberURI:)(v2);
}

uint64_t MLS.QueuedFTDInfo.destination.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = *(v1 + 24);
  return outlined copy of MLS.AllMember(v2, v3);
}

uint64_t MLS.QueuedFTDInfo.messageIdentifier.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t MLS.QueuedFTDInfo.clientContext.getter()
{
  v1 = *(v0 + 48);
  outlined copy of Data?(v1, *(v0 + 56));
  return v1;
}

__n128 MLS.QueuedFTDInfo.init(destination:messageIdentifier:clientContext:)@<Q0>(__n128 *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, __n128 *a6@<X8>)
{
  v6 = a1[1].n128_u64[0];
  v7 = a1[1].n128_u8[8];
  result = *a1;
  *a6 = *a1;
  a6[1].n128_u64[0] = v6;
  a6[1].n128_u8[8] = v7;
  a6[2].n128_u64[0] = a2;
  a6[2].n128_u64[1] = a3;
  a6[3].n128_u64[0] = a4;
  a6[3].n128_u64[1] = a5;
  return result;
}

uint64_t MLS.EventQueue.logger.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_logger;
  v4 = type metadata accessor for Logger();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MLS.EventQueue.groupIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_groupIdentifier);

  return v1;
}

uint64_t MLS.EventQueue.enqueueFTDBlock.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_enqueueFTDBlock);

  return v1;
}

uint64_t MLS.EventQueue.Event.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t MLS.EventQueue.Event.eventState.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  v9 = *(v1 + 48);
  v10 = v2;
  v11 = *(v1 + 80);
  v3 = v11;
  v4 = *(v1 + 32);
  v8[0] = *(v1 + 16);
  v5 = v8[0];
  v8[1] = v4;
  *(a1 + 32) = v9;
  *(a1 + 48) = v2;
  *(a1 + 64) = v3;
  *a1 = v5;
  *(a1 + 16) = v4;
  return outlined init with copy of MLS.OutgoingEventState?(v8, v7, &_s15SecureMessaging3MLSO18OutgoingEventStateVSgMd, &_s15SecureMessaging3MLSO18OutgoingEventStateVSgMR);
}

uint64_t MLS.EventQueue.Event.continuation.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MLS.EventQueue.Event(0) + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MLS.EventQueue.Event.sendBlock.getter()
{
  v1 = *(v0 + *(type metadata accessor for MLS.EventQueue.Event(0) + 28));

  return v1;
}

uint64_t MLS.EventQueue.Event.init(identifier:eventState:continuation:sendBlock:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = a1;
  *(a7 + 8) = a2;
  v11 = *(a3 + 48);
  *(a7 + 48) = *(a3 + 32);
  *(a7 + 64) = v11;
  *(a7 + 80) = *(a3 + 64);
  v12 = *(a3 + 16);
  *(a7 + 16) = *a3;
  *(a7 + 32) = v12;
  v13 = type metadata accessor for MLS.EventQueue.Event(0);
  v14 = *(v13 + 24);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  result = (*(*(v15 - 8) + 32))(a7 + v14, a4, v15);
  v17 = (a7 + *(v13 + 28));
  *v17 = a5;
  v17[1] = a6;
  return result;
}

uint64_t MLS.EventQueue.__allocating_init(groupIdentifier:bag:enqueueFTDBlock:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  MLS.EventQueue.init(groupIdentifier:bag:enqueueFTDBlock:)(a1, a2, a3, a4, a5);
  return v10;
}

uint64_t MLS.EventQueue.init(groupIdentifier:bag:enqueueFTDBlock:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  Logger.init(subsystem:category:)();
  v11 = v5 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_currentVersion;
  *(v11 + 8) = 0;
  *(v11 + 16) = 0;
  *v11 = 0;
  *(v11 + 24) = 1;
  v12 = OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_selfHealEvent;
  v13 = type metadata accessor for MLS.EventQueue.Event(0);
  (*(*(v13 - 8) + 56))(v5 + v12, 1, 1, v13);
  v14 = (v5 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_groupIdentifier);
  *v14 = a1;
  v14[1] = a2;
  outlined init with copy of ServerBag.MLS(a3, v5 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_bag);
  v15 = (v5 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_enqueueFTDBlock);
  *v15 = a4;
  v15[1] = a5;
  v16 = MEMORY[0x277D84F90];
  *(v5 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_queue) = MEMORY[0x277D84F90];
  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  *(v5 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_ftdQueue) = v16;
  v17 = v5 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_state;
  *v17 = 0;
  *(v17 + 8) = 0u;
  *(v17 + 24) = 0u;
  *(v17 + 40) = 0u;
  *(v17 + 56) = 0u;
  *(v17 + 72) = 0u;
  *(v17 + 88) = 0u;
  *(v17 + 104) = 0u;
  *(v17 + 120) = 0;
  *(v17 + 128) = 0;
  return v5;
}

uint64_t MLS.EventQueue.enqueue(identifier:eventState:sendBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 112) = a5;
  *(v6 + 120) = v5;
  *(v6 + 96) = a2;
  *(v6 + 104) = a4;
  v7 = *(a3 + 48);
  *(v6 + 48) = *(a3 + 32);
  *(v6 + 64) = v7;
  *(v6 + 80) = *(a3 + 64);
  *(v6 + 88) = a1;
  v8 = *(a3 + 16);
  *(v6 + 16) = *a3;
  *(v6 + 32) = v8;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v9 = static MLSActor.shared;
  *(v6 + 128) = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.EventQueue.enqueue(identifier:eventState:sendBlock:), v9, 0);
}

uint64_t MLS.EventQueue.enqueue(identifier:eventState:sendBlock:)()
{
  v18 = v0;

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v4 = *(v0 + 88);
    v3 = *(v0 + 96);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v17 = v6;
    *v5 = 136315138;
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v3, &v17);
    _os_log_impl(&dword_264F1F000, v1, v2, "EventQueue enqueue { identifier: %s }", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x266755550](v6, -1, -1);
    MEMORY[0x266755550](v5, -1, -1);
  }

  v8 = *(v0 + 120);
  v7 = *(v0 + 128);
  v10 = *(v0 + 88);
  v9 = *(v0 + 96);
  v11 = lazy protocol witness table accessor for type MLSActor and conformance MLSActor();
  v12 = swift_task_alloc();
  *(v0 + 136) = v12;
  v13 = *(v0 + 104);
  *(v12 + 16) = v8;
  *(v12 + 24) = v10;
  *(v12 + 32) = v9;
  *(v12 + 40) = 0;
  *(v12 + 48) = v0 + 16;
  *(v12 + 56) = v13;
  v14 = swift_task_alloc();
  *(v0 + 144) = v14;
  *v14 = v0;
  v14[1] = MLS.EventQueue.enqueue(identifier:eventState:sendBlock:);
  v15 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v14, v7, v11, 0xD000000000000036, 0x80000002651E82E0, partial apply for closure #1 in MLS.EventQueue.enqueue(identifier:eventState:enqueueFirst:sendBlock:), v12, v15);
}

{
  v2 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = *(v2 + 128);
    v4 = MLS.EventQueue.enqueue(identifier:eventState:sendBlock:);
  }

  else
  {
    v5 = *(v2 + 128);

    v4 = MLS.EventQueue.enqueue(identifier:eventState:sendBlock:);
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t MLS.EventQueue.reenqueueAtFront(identifier:eventState:andBlockOnVersion:sendBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 112) = a5;
  *(v7 + 120) = a6;
  *(v7 + 96) = a1;
  *(v7 + 104) = a2;
  v8 = *(a3 + 48);
  *(v7 + 48) = *(a3 + 32);
  *(v7 + 64) = v8;
  *(v7 + 80) = *(a3 + 64);
  v9 = *(a3 + 16);
  *(v7 + 16) = *a3;
  *(v7 + 32) = v9;
  v10 = *a4;
  *(v7 + 128) = v6;
  *(v7 + 136) = v10;
  *(v7 + 188) = *(a4 + 2);
  *(v7 + 144) = a4[2];
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v11 = static MLSActor.shared;
  *(v7 + 152) = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.EventQueue.reenqueueAtFront(identifier:eventState:andBlockOnVersion:sendBlock:), v11, 0);
}

uint64_t MLS.EventQueue.reenqueueAtFront(identifier:eventState:andBlockOnVersion:sendBlock:)()
{
  v41 = v0;
  v1 = (v0 + 16);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v35 = *(v0 + 144);
    v4 = *(v0 + 188);
    v6 = *(v0 + 96);
    v5 = *(v0 + 104);
    v7 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v8 = v36;
    *v7 = 136315394;
    *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v5, &v36);
    *(v7 + 12) = 2080;
    *(v0 + 184) = v4;
    *&v39[0] = dispatch thunk of CustomStringConvertible.description.getter();
    *(&v39[0] + 1) = v9;
    MEMORY[0x2667545A0](46, 0xE100000000000000);
    *(v0 + 88) = v35;
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2667545A0](v10);

    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*&v39[0], *(&v39[0] + 1), &v36);

    *(v7 + 14) = v11;
    _os_log_impl(&dword_264F1F000, v2, v3, "EventQueue reenqueueAtFront { identifier: %s, blockingVersion: %s }", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v8, -1, -1);
    MEMORY[0x266755550](v7, -1, -1);
  }

  v12 = *(v0 + 144);
  v13 = *(v0 + 188);
  v14 = *(v0 + 96);
  v15 = *(v0 + 104);
  v36 = *(v0 + 136);
  v37 = v13;
  v38 = v12;
  v16 = *(v0 + 64);
  v39[2] = *(v0 + 48);
  v39[3] = v16;
  v40 = *(v0 + 80);
  v17 = *(v0 + 32);
  v39[0] = *v1;
  v39[1] = v17;
  MLS.EventQueue.transitionToWaitingOnGroupVersionState(groupVersion:eventState:identifier:requireReflection:)(&v36, v39, v14, v15, 0);

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v21 = *(v0 + 96);
    v20 = *(v0 + 104);
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *&v39[0] = v23;
    *v22 = 136315138;
    *(v22 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v20, v39);
    _os_log_impl(&dword_264F1F000, v18, v19, "EventQueue transitionStateDueToReceivingAck { identifier: %s }", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    MEMORY[0x266755550](v23, -1, -1);
    MEMORY[0x266755550](v22, -1, -1);
  }

  v24 = *(v0 + 152);
  v25 = *(v0 + 128);
  v27 = *(v0 + 96);
  v26 = *(v0 + 104);
  v28 = OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_state;
  v29 = lazy protocol witness table accessor for type MLSActor and conformance MLSActor();
  v30 = swift_task_alloc();
  v31 = *(v0 + 112);
  *(v25 + v28) = 0;
  *(v0 + 160) = v30;
  *(v30 + 16) = v25;
  *(v30 + 24) = v27;
  *(v30 + 32) = v26;
  *(v30 + 40) = 1;
  *(v30 + 48) = v1;
  *(v30 + 56) = v31;
  v32 = swift_task_alloc();
  *(v0 + 168) = v32;
  *v32 = v0;
  v32[1] = MLS.EventQueue.reenqueueAtFront(identifier:eventState:andBlockOnVersion:sendBlock:);
  v33 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v32, v24, v29, 0xD000000000000036, 0x80000002651E82E0, closure #1 in MLS.EventQueue.enqueue(identifier:eventState:enqueueFirst:sendBlock:)partial apply, v30, v33);
}

{
  v2 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v3 = *(v2 + 152);
    v4 = MLS.EventQueue.reenqueueAtFront(identifier:eventState:andBlockOnVersion:sendBlock:);
  }

  else
  {
    v5 = *(v2 + 152);

    v4 = MLS.EventQueue.reenqueueAtFront(identifier:eventState:andBlockOnVersion:sendBlock:);
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  return (*(v0 + 8))();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t MLS.EventQueue.reenqueueAtFrontBehindSelfHeal(identifier:eventState:selfHealBlock:sendBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 128) = a7;
  *(v8 + 136) = v7;
  *(v8 + 112) = a5;
  *(v8 + 120) = a6;
  *(v8 + 96) = a2;
  *(v8 + 104) = a4;
  v9 = *(a3 + 48);
  *(v8 + 48) = *(a3 + 32);
  *(v8 + 64) = v9;
  *(v8 + 80) = *(a3 + 64);
  *(v8 + 88) = a1;
  v10 = *(a3 + 16);
  *(v8 + 16) = *a3;
  *(v8 + 32) = v10;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v11 = static MLSActor.shared;
  *(v8 + 144) = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.EventQueue.reenqueueAtFrontBehindSelfHeal(identifier:eventState:selfHealBlock:sendBlock:), v11, 0);
}

uint64_t MLS.EventQueue.reenqueueAtFrontBehindSelfHeal(identifier:eventState:selfHealBlock:sendBlock:)()
{
  v19 = v0;

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v4 = *(v0 + 88);
    v3 = *(v0 + 96);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v18 = v6;
    *v5 = 136315138;
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v3, &v18);
    _os_log_impl(&dword_264F1F000, v1, v2, "EventQueue reenqueueAtFrontBehindSelfHeal { identifier: %s }", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x266755550](v6, -1, -1);
    MEMORY[0x266755550](v5, -1, -1);
  }

  v8 = *(v0 + 136);
  v7 = *(v0 + 144);
  v10 = *(v0 + 88);
  v9 = *(v0 + 96);
  v11 = lazy protocol witness table accessor for type MLSActor and conformance MLSActor();
  v12 = swift_task_alloc();
  *(v0 + 152) = v12;
  v13 = *(v0 + 120);
  v14 = *(v0 + 104);
  *(v12 + 16) = v10;
  *(v12 + 24) = v9;
  *(v12 + 32) = v0 + 16;
  *(v12 + 40) = v13;
  *(v12 + 56) = v8;
  *(v12 + 64) = v14;
  v15 = swift_task_alloc();
  *(v0 + 160) = v15;
  *v15 = v0;
  v15[1] = MLS.EventQueue.reenqueueAtFrontBehindSelfHeal(identifier:eventState:selfHealBlock:sendBlock:);
  v16 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v15, v7, v11, 0xD00000000000004ELL, 0x80000002651E8320, partial apply for closure #1 in MLS.EventQueue.reenqueueAtFrontBehindSelfHeal(identifier:eventState:selfHealBlock:sendBlock:), v12, v16);
}

{
  v2 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v3 = *(v2 + 144);
    v4 = MLS.EventQueue.reenqueueAtFrontBehindSelfHeal(identifier:eventState:selfHealBlock:sendBlock:);
  }

  else
  {
    v5 = *(v2 + 144);

    v4 = MLS.EventQueue.enqueue(identifier:eventState:sendBlock:);
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in MLS.EventQueue.reenqueueAtFrontBehindSelfHeal(identifier:eventState:selfHealBlock:sendBlock:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v68 = a8;
  v72 = a3;
  v73 = a7;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v70 = *(v14 - 8);
  v71 = v14;
  v65 = *(v70 + 64);
  MEMORY[0x28223BE20](v14);
  v66 = &v61 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v16 - 8);
  v67 = &v61 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15CollectionOfOneVy15SecureMessaging3MLSO10EventQueueC0G0VGMd, &_ss15CollectionOfOneVy15SecureMessaging3MLSO10EventQueueC0G0VGMR);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v61 - v19;
  v21 = type metadata accessor for MLS.EventQueue.Event(0);
  MEMORY[0x28223BE20](v21);
  v23 = &v61 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v24 = static MLSActor.shared;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v64 = v24;
  v25 = *(v70 + 16);
  v26 = &v23[*(v21 + 24)];
  v27 = a1;
  v63 = v70 + 16;
  v62 = v25;
  v25(v26, a1, v71);
  v28 = v72;
  *v23 = a2;
  *(v23 + 1) = v28;
  v29 = *(a4 + 48);
  *(v23 + 3) = *(a4 + 32);
  *(v23 + 4) = v29;
  *(v23 + 10) = *(a4 + 64);
  v30 = *(a4 + 16);
  *(v23 + 1) = *a4;
  *(v23 + 2) = v30;
  v31 = &v23[*(v21 + 28)];
  *v31 = a5;
  *(v31 + 1) = a6;
  swift_beginAccess();
  outlined init with copy of MLS.EventQueue.Event(v23, v20);

  v32 = a4;
  v33 = v28;
  outlined init with copy of MLS.OutgoingEventState?(v32, v74, &_s15SecureMessaging3MLSO18OutgoingEventStateVSgMd, &_s15SecureMessaging3MLSO18OutgoingEventStateVSgMR);

  specialized Array.replaceSubrange<A>(_:with:)(0, 0, v20);
  swift_endAccess();

  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v74[0] = v37;
    *v36 = 136315138;
    *(v36 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, v72, v74);
    _os_log_impl(&dword_264F1F000, v34, v35, "EventQueue transitionStateDueToReceivingAck { identifier: %s }", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v37);
    MEMORY[0x266755550](v37, -1, -1);
    v38 = v36;
    v33 = v72;
    MEMORY[0x266755550](v38, -1, -1);
  }

  v39 = v73 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_state;
  *(v73 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_state) = 0;
  MLS.EventQueue.clearWaitingOnReflection(identifier:)(a2, v33);

  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.default.getter();

  v42 = os_log_type_enabled(v40, v41);
  v69 = a2;
  v61 = v23;
  if (v42)
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v74[0] = v44;
    *v43 = 136315138;
    *(v43 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, v72, v74);
    _os_log_impl(&dword_264F1F000, v40, v41, "EventQueue transitionToWaitingOnSelfHealSendState { identifier: %s }", v43, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v44);
    MEMORY[0x266755550](v44, -1, -1);
    v45 = v43;
    v33 = v72;
    MEMORY[0x266755550](v45, -1, -1);
  }

  *(v39 + 121) = 1;

  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v74[0] = v49;
    *v48 = 136315138;
    *(v48 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v69, v33, v74);
    _os_log_impl(&dword_264F1F000, v46, v47, "EventQueue reenqueueAtFrontBehindSelfHeal self healing { identifier: %s }", v48, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v49);
    MEMORY[0x266755550](v49, -1, -1);
    MEMORY[0x266755550](v48, -1, -1);
  }

  v50 = v27;
  v51 = type metadata accessor for TaskPriority();
  v52 = v67;
  (*(*(v51 - 8) + 56))(v67, 1, 1, v51);
  v53 = v66;
  v54 = v71;
  v62(v66, v50, v71);
  v55 = lazy protocol witness table accessor for type MLSActor and conformance MLSActor();
  v56 = v70;
  v57 = (*(v70 + 80) + 72) & ~*(v70 + 80);
  v58 = swift_allocObject();
  *(v58 + 2) = v64;
  *(v58 + 3) = v55;
  v59 = v69;
  *(v58 + 4) = v68;
  *(v58 + 5) = a9;
  *(v58 + 6) = v73;
  *(v58 + 7) = v59;
  *(v58 + 8) = v33;
  (*(v56 + 32))(&v58[v57], v53, v54);

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v52, &async function pointer to partial apply for closure #1 in closure #1 in MLS.EventQueue.reenqueueAtFrontBehindSelfHeal(identifier:eventState:selfHealBlock:sendBlock:), v58);

  return outlined destroy of MLS.EventQueue.Event(v61);
}

uint64_t closure #1 in closure #1 in MLS.EventQueue.reenqueueAtFrontBehindSelfHeal(identifier:eventState:selfHealBlock:sendBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[10] = a8;
  v8[11] = v12;
  v8[8] = a6;
  v8[9] = a7;
  v8[6] = a4;
  v8[7] = a5;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v9 = static MLSActor.shared;
  v8[12] = static MLSActor.shared;

  return MEMORY[0x2822009F8](closure #1 in closure #1 in MLS.EventQueue.reenqueueAtFrontBehindSelfHeal(identifier:eventState:selfHealBlock:sendBlock:), v9, 0);
}

uint64_t closure #1 in closure #1 in MLS.EventQueue.reenqueueAtFrontBehindSelfHeal(identifier:eventState:selfHealBlock:sendBlock:)()
{
  v1 = (v0[8] + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_groupIdentifier);
  v3 = *v1;
  v2 = v1[1];
  v6 = (v0[6] + *v0[6]);
  v4 = swift_task_alloc();
  v0[13] = v4;
  *v4 = v0;
  v4[1] = closure #1 in closure #1 in MLS.EventQueue.reenqueueAtFrontBehindSelfHeal(identifier:eventState:selfHealBlock:sendBlock:);

  return v6(v3, v2);
}

{
  v2 = *v1;
  *(*v1 + 112) = v0;

  v3 = *(v2 + 96);
  if (v0)
  {
    v4 = closure #1 in closure #1 in MLS.EventQueue.reenqueueAtFrontBehindSelfHeal(identifier:eventState:selfHealBlock:sendBlock:);
  }

  else
  {
    v4 = closure #1 in closure #1 in MLS.EventQueue.reenqueueAtFrontBehindSelfHeal(identifier:eventState:selfHealBlock:sendBlock:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v16 = v0;

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v4 = v0[9];
    v3 = v0[10];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v15 = v6;
    *v5 = 136315138;
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v3, &v15);
    _os_log_impl(&dword_264F1F000, v1, v2, "EventQueue reenqueueAtFrontBehindSelfHeal self healing finished { identifier: %s }", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x266755550](v6, -1, -1);
    MEMORY[0x266755550](v5, -1, -1);
  }

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v10 = v0[9];
    v9 = v0[10];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v15 = v12;
    *v11 = 136315138;
    *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v9, &v15);
    _os_log_impl(&dword_264F1F000, v7, v8, "EventQueue transitionStateDueToSendingSelfHeal { identifier: %s }", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x266755550](v12, -1, -1);
    MEMORY[0x266755550](v11, -1, -1);
  }

  *(v0[8] + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_state + 121) = 0;
  MLS.EventQueue.dequeueIfNeeded()();
  v13 = v0[1];

  return v13();
}

{
  v34 = v0;
  v1 = v0[14];

  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[14];
    v7 = v0[9];
    v6 = v0[10];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v33 = v10;
    *v8 = 136315394;
    *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v6, &v33);
    *(v8 + 12) = 2112;
    v11 = v5;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v12;
    *v9 = v12;
    _os_log_impl(&dword_264F1F000, v3, v4, "EventQueue reenqueueAtFrontBehindSelfHeal self healing failed { identifier: %s, error: %@ }", v8, 0x16u);
    outlined destroy of NSObject?(v9, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x266755550](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x266755550](v10, -1, -1);
    MEMORY[0x266755550](v8, -1, -1);
  }

  v13 = v0[8];
  v14 = OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_queue;
  result = swift_beginAccess();
  if (*(*(v13 + v14) + 16))
  {
    specialized Array.replaceSubrange<A>(_:with:)(0, 1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
    swift_endAccess();

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v19 = v0[9];
      v18 = v0[10];
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v33 = v21;
      *v20 = 136315138;
      *(v20 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v18, &v33);
      _os_log_impl(&dword_264F1F000, v16, v17, "EventQueue transitionStateDueToSendingSelfHeal { identifier: %s }", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v21);
      MEMORY[0x266755550](v21, -1, -1);
      MEMORY[0x266755550](v20, -1, -1);
    }

    v22 = v0[14];
    v23 = (v0[8] + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_state);
    v23[121] = 0;
    v0[5] = v22;
    v24 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
    CheckedContinuation.resume(throwing:)();

    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v28 = v0[9];
      v27 = v0[10];
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v33 = v30;
      *v29 = 136315138;
      *(v29 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v27, &v33);
      _os_log_impl(&dword_264F1F000, v25, v26, "EventQueue transitionStateDueToReceivingAck { identifier: %s }", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v30);
      MEMORY[0x266755550](v30, -1, -1);
      MEMORY[0x266755550](v29, -1, -1);
    }

    v31 = v0[14];
    *v23 = 0;
    MLS.EventQueue.dequeueIfNeeded()();

    v32 = v0[1];

    return v32();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t MLS.EventQueue.reenqueueMatchingEventBehindSelfHeal(identifierWaitingReflection:selfHealBlock:sendBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[95] = v6;
  v7[94] = a6;
  v7[93] = a5;
  v7[92] = a4;
  v7[91] = a3;
  v7[90] = a2;
  v7[89] = a1;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v8 = static MLSActor.shared;
  v7[96] = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.EventQueue.reenqueueMatchingEventBehindSelfHeal(identifierWaitingReflection:selfHealBlock:sendBlock:), v8, 0);
}

uint64_t MLS.EventQueue.reenqueueMatchingEventBehindSelfHeal(identifierWaitingReflection:selfHealBlock:sendBlock:)()
{
  v61 = v0;

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 720);
    v4 = *(v0 + 712);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v60 = v6;
    *v5 = 136315138;
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v3, &v60);
    _os_log_impl(&dword_264F1F000, v1, v2, "EventQueue reenqueueMatchingEventBehindSelfHeal { identifier: %s }", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x266755550](v6, -1, -1);
    MEMORY[0x266755550](v5, -1, -1);
  }

  v7 = *(v0 + 760) + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_state;
  v8 = *(v7 + 24);
  v9 = *(v7 + 40);
  v10 = *(v7 + 56);
  *(v0 + 136) = *(v7 + 8);
  *(v0 + 184) = v10;
  *(v0 + 168) = v9;
  *(v0 + 152) = v8;
  v11 = *(v7 + 88);
  v12 = *(v7 + 104);
  v13 = *(v7 + 120);
  *(v0 + 200) = *(v7 + 72);
  *(v0 + 248) = v13;
  *(v0 + 232) = v12;
  *(v0 + 216) = v11;
  v14 = *(v7 + 24);
  v15 = *(v7 + 56);
  v16 = *(v7 + 8);
  *(v0 + 48) = *(v7 + 40);
  *(v0 + 64) = v15;
  *(v0 + 16) = v16;
  *(v0 + 32) = v14;
  v17 = *(v7 + 88);
  v18 = *(v7 + 104);
  v19 = *(v7 + 72);
  *(v0 + 128) = *(v7 + 120);
  *(v0 + 96) = v17;
  *(v0 + 112) = v18;
  *(v0 + 80) = v19;
  v20 = *(v0 + 48);
  if (v20)
  {
    v21 = *(v0 + 40);
    if (v21 == *(v0 + 712) && *(v0 + 720) == v20 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      outlined init with copy of MLS.OutgoingEventState?(v0 + 136, v0 + 376, &_s15SecureMessaging3MLSO12GroupVersionV7version_SS10identifierAC18OutgoingEventStateVSg05eventJ0Sb17requireReflectiontSgMd, &_s15SecureMessaging3MLSO12GroupVersionV7version_SS10identifierAC18OutgoingEventStateVSg05eventJ0Sb17requireReflectiontSgMR);
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = *(v0 + 720);
        v25 = *(v0 + 712);
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v60 = v27;
        *v26 = 136315394;
        *(v26 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v24, &v60);
        *(v26 + 12) = 2080;
        v28 = *(v0 + 72);
        v29 = *(v0 + 104);
        *(v0 + 600) = *(v0 + 88);
        *(v0 + 616) = v29;
        *(v0 + 632) = *(v0 + 120);
        *(v0 + 568) = *(v0 + 56);
        *(v0 + 584) = v28;
        outlined init with copy of MLS.OutgoingEventState?(v0 + 56, v0 + 640, &_s15SecureMessaging3MLSO18OutgoingEventStateVSgMd, &_s15SecureMessaging3MLSO18OutgoingEventStateVSgMR);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO18OutgoingEventStateVSgMd, &_s15SecureMessaging3MLSO18OutgoingEventStateVSgMR);
        v30 = String.init<A>(describing:)();
        v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, &v60);

        *(v26 + 14) = v32;
        _os_log_impl(&dword_264F1F000, v22, v23, "EventQueue reenqueueMatchingEventBehindSelfHeal self healing then retrying state { identifier: %s, eventState: %s }", v26, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x266755550](v27, -1, -1);
        MEMORY[0x266755550](v26, -1, -1);
      }

      v33 = *(v0 + 760);
      v34 = *(v0 + 56);
      *(v0 + 560) = *(v0 + 120);
      v35 = *(v0 + 104);
      *(v0 + 528) = *(v0 + 88);
      *(v0 + 544) = v35;
      v36 = *(v0 + 72);
      *(v0 + 496) = v34;
      *(v0 + 512) = v36;
      v59 = (*(*v33 + 296) + **(*v33 + 296));
      v37 = swift_task_alloc();
      *(v0 + 776) = v37;
      *v37 = v0;
      v37[1] = MLS.EventQueue.reenqueueMatchingEventBehindSelfHeal(identifierWaitingReflection:selfHealBlock:sendBlock:);
      v38 = *(v0 + 752);
      v39 = *(v0 + 744);
      v40 = *(v0 + 736);
      v41 = *(v0 + 728);
      v42 = *(v0 + 720);
      v43 = *(v0 + 712);

      return v59(v43, v42, v0 + 496, v41, v40, v39, v38);
    }

    outlined init with copy of MLS.OutgoingEventState?(v0 + 136, v0 + 256, &_s15SecureMessaging3MLSO12GroupVersionV7version_SS10identifierAC18OutgoingEventStateVSg05eventJ0Sb17requireReflectiontSgMd, &_s15SecureMessaging3MLSO12GroupVersionV7version_SS10identifierAC18OutgoingEventStateVSg05eventJ0Sb17requireReflectiontSgMR);
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = *(v0 + 720);
      v54 = *(v0 + 712);
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v60 = v56;
      *v55 = 136315394;
      *(v55 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, v53, &v60);
      *(v55 + 12) = 2080;

      v57 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v20, &v60);

      *(v55 + 14) = v57;
      _os_log_impl(&dword_264F1F000, v51, v52, "EventQueue reenqueueMatchingEventBehindSelfHeal state waiting for reflection has different identifier. Ignoring { identifier: %s, waitingIdentifier: %s }", v55, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266755550](v56, -1, -1);
      MEMORY[0x266755550](v55, -1, -1);
    }

    outlined destroy of NSObject?(v0 + 136, &_s15SecureMessaging3MLSO12GroupVersionV7version_SS10identifierAC18OutgoingEventStateVSg05eventJ0Sb17requireReflectiontSgMd, &_s15SecureMessaging3MLSO12GroupVersionV7version_SS10identifierAC18OutgoingEventStateVSg05eventJ0Sb17requireReflectiontSgMR);
  }

  else
  {

    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = *(v0 + 720);
      v48 = *(v0 + 712);
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v60 = v50;
      *v49 = 136315138;
      *(v49 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v47, &v60);
      _os_log_impl(&dword_264F1F000, v45, v46, "EventQueue reenqueueMatchingEventBehindSelfHeal no state waiting reflection. Ignoring { identifier: %s }", v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v50);
      MEMORY[0x266755550](v50, -1, -1);
      MEMORY[0x266755550](v49, -1, -1);
    }
  }

  v58 = *(v0 + 8);

  return v58();
}

{
  v2 = *v1;
  *(*v1 + 784) = v0;

  v3 = *(v2 + 768);
  if (v0)
  {
    v4 = MLS.EventQueue.reenqueueMatchingEventBehindSelfHeal(identifierWaitingReflection:selfHealBlock:sendBlock:);
  }

  else
  {
    v4 = MLS.EventQueue.reenqueueMatchingEventBehindSelfHeal(identifierWaitingReflection:selfHealBlock:sendBlock:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  outlined destroy of NSObject?(v0 + 136, &_s15SecureMessaging3MLSO12GroupVersionV7version_SS10identifierAC18OutgoingEventStateVSg05eventJ0Sb17requireReflectiontSgMd, &_s15SecureMessaging3MLSO12GroupVersionV7version_SS10identifierAC18OutgoingEventStateVSg05eventJ0Sb17requireReflectiontSgMR);
  v1 = *(v0 + 8);

  return v1();
}

{
  outlined destroy of NSObject?(v0 + 136, &_s15SecureMessaging3MLSO12GroupVersionV7version_SS10identifierAC18OutgoingEventStateVSg05eventJ0Sb17requireReflectiontSgMd, &_s15SecureMessaging3MLSO12GroupVersionV7version_SS10identifierAC18OutgoingEventStateVSg05eventJ0Sb17requireReflectiontSgMR);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t MLS.EventQueue.retryMatchingEvent(identifierWaitingReflection:sendBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[123] = v4;
  v5[122] = a4;
  v5[121] = a3;
  v5[120] = a2;
  v5[119] = a1;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v6 = static MLSActor.shared;
  v5[124] = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.EventQueue.retryMatchingEvent(identifierWaitingReflection:sendBlock:), v6, 0);
}

uint64_t MLS.EventQueue.retryMatchingEvent(identifierWaitingReflection:sendBlock:)()
{
  v66 = v0;

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 960);
    v4 = *(v0 + 952);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v65 = v6;
    *v5 = 136315138;
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v3, &v65);
    _os_log_impl(&dword_264F1F000, v1, v2, "EventQueue retryMatchingEvent { identifier: %s }", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x266755550](v6, -1, -1);
    MEMORY[0x266755550](v5, -1, -1);
  }

  v7 = *(v0 + 984) + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_state;
  v8 = *(v7 + 24);
  v9 = *(v7 + 40);
  v10 = *(v7 + 56);
  *(v0 + 136) = *(v7 + 8);
  *(v0 + 184) = v10;
  *(v0 + 168) = v9;
  *(v0 + 152) = v8;
  v11 = *(v7 + 88);
  v12 = *(v7 + 104);
  v13 = *(v7 + 120);
  *(v0 + 200) = *(v7 + 72);
  *(v0 + 248) = v13;
  *(v0 + 232) = v12;
  *(v0 + 216) = v11;
  v14 = *(v7 + 24);
  v15 = *(v7 + 56);
  v16 = *(v7 + 8);
  *(v0 + 48) = *(v7 + 40);
  *(v0 + 64) = v15;
  *(v0 + 16) = v16;
  *(v0 + 32) = v14;
  v17 = *(v7 + 88);
  v18 = *(v7 + 104);
  v19 = *(v7 + 72);
  *(v0 + 128) = *(v7 + 120);
  *(v0 + 96) = v17;
  *(v0 + 112) = v18;
  *(v0 + 80) = v19;
  v20 = *(v0 + 48);
  v21 = *(v0 + 960);
  if (v20)
  {
    v22 = *(v0 + 952);
    v23 = *(v0 + 40);
    if (v23 == v22 && v21 == v20)
    {
      goto LABEL_8;
    }

    if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
      v21 = *(v0 + 960);
      v22 = *(v0 + 952);
LABEL_8:
      v24 = (v0 + 736);
      *v7 = 0;
      v25 = *(v0 + 216);
      *(v0 + 440) = *(v0 + 200);
      *(v0 + 456) = v25;
      *(v0 + 472) = *(v0 + 232);
      *(v0 + 488) = *(v0 + 248);
      v26 = *(v0 + 152);
      *(v0 + 376) = *(v0 + 136);
      *(v0 + 392) = v26;
      v27 = *(v0 + 184);
      *(v0 + 408) = *(v0 + 168);
      *(v0 + 424) = v27;
      outlined init with copy of MLS.OutgoingEventState?(v0 + 376, v0 + 496, &_s15SecureMessaging3MLSO12GroupVersionV7version_SS10identifierAC18OutgoingEventStateVSg05eventJ0Sb17requireReflectiontMd, &_s15SecureMessaging3MLSO12GroupVersionV7version_SS10identifierAC18OutgoingEventStateVSg05eventJ0Sb17requireReflectiontMR);
      MLS.EventQueue.clearWaitingOnReflection(identifier:)(v22, v21);

      outlined init with copy of MLS.OutgoingEventState?(v0 + 136, v0 + 616, &_s15SecureMessaging3MLSO12GroupVersionV7version_SS10identifierAC18OutgoingEventStateVSg05eventJ0Sb17requireReflectiontSgMd, &_s15SecureMessaging3MLSO12GroupVersionV7version_SS10identifierAC18OutgoingEventStateVSg05eventJ0Sb17requireReflectiontSgMR);
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.default.getter();

      outlined destroy of NSObject?(v0 + 136, &_s15SecureMessaging3MLSO12GroupVersionV7version_SS10identifierAC18OutgoingEventStateVSg05eventJ0Sb17requireReflectiontSgMd, &_s15SecureMessaging3MLSO12GroupVersionV7version_SS10identifierAC18OutgoingEventStateVSg05eventJ0Sb17requireReflectiontSgMR);
      if (os_log_type_enabled(v28, v29))
      {
        v30 = *(v0 + 960);
        v31 = *(v0 + 952);
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v65 = v33;
        *v32 = 136315394;
        *(v32 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v30, &v65);
        *(v32 + 12) = 2080;
        v34 = *(v0 + 72);
        v35 = *(v0 + 104);
        *(v0 + 840) = *(v0 + 88);
        *(v0 + 856) = v35;
        *(v0 + 872) = *(v0 + 120);
        *(v0 + 808) = *(v0 + 56);
        *(v0 + 824) = v34;
        outlined init with copy of MLS.OutgoingEventState?(v0 + 56, v0 + 880, &_s15SecureMessaging3MLSO18OutgoingEventStateVSgMd, &_s15SecureMessaging3MLSO18OutgoingEventStateVSgMR);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO18OutgoingEventStateVSgMd, &_s15SecureMessaging3MLSO18OutgoingEventStateVSgMR);
        v36 = String.init<A>(describing:)();
        v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v37, &v65);

        *(v32 + 14) = v38;
        _os_log_impl(&dword_264F1F000, v28, v29, "EventQueue retryMatchingEvent retrying state { identifier: %s, eventState: %s }", v32, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x266755550](v33, -1, -1);
        MEMORY[0x266755550](v32, -1, -1);
      }

      v39 = *(v0 + 992);
      v40 = *(v0 + 984);
      v41 = *(v0 + 960);
      v42 = *(v0 + 952);
      v43 = *(v0 + 72);
      v44 = *(v0 + 104);
      *(v0 + 768) = *(v0 + 88);
      *(v0 + 784) = v44;
      *(v0 + 800) = *(v0 + 120);
      *v24 = *(v0 + 56);
      *(v0 + 752) = v43;
      v45 = lazy protocol witness table accessor for type MLSActor and conformance MLSActor();
      v46 = swift_task_alloc();
      *(v0 + 1000) = v46;
      v47 = *(v0 + 968);
      *(v46 + 16) = v40;
      *(v46 + 24) = v42;
      *(v46 + 32) = v41;
      *(v46 + 40) = 1;
      *(v46 + 48) = v24;
      *(v46 + 56) = v47;
      v48 = swift_task_alloc();
      *(v0 + 1008) = v48;
      *v48 = v0;
      v48[1] = MLS.EventQueue.retryMatchingEvent(identifierWaitingReflection:sendBlock:);
      v49 = MEMORY[0x277D84F78] + 8;

      return MEMORY[0x2822008A0](v48, v39, v45, 0xD000000000000036, 0x80000002651E82E0, closure #1 in MLS.EventQueue.enqueue(identifier:eventState:enqueueFirst:sendBlock:)partial apply, v46, v49);
    }

    outlined init with copy of MLS.OutgoingEventState?(v0 + 136, v0 + 256, &_s15SecureMessaging3MLSO12GroupVersionV7version_SS10identifierAC18OutgoingEventStateVSg05eventJ0Sb17requireReflectiontSgMd, &_s15SecureMessaging3MLSO12GroupVersionV7version_SS10identifierAC18OutgoingEventStateVSg05eventJ0Sb17requireReflectiontSgMR);
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v56, v57))
    {
      v58 = *(v0 + 960);
      v59 = *(v0 + 952);
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v65 = v61;
      *v60 = 136315394;
      *(v60 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, v58, &v65);
      *(v60 + 12) = 2080;

      v62 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v20, &v65);

      *(v60 + 14) = v62;
      _os_log_impl(&dword_264F1F000, v56, v57, "EventQueue retryMatchingEvent state waiting for reflection has different identifier. Ignoring { identifier: %s, waitingIdentifier: %s }", v60, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266755550](v61, -1, -1);
      MEMORY[0x266755550](v60, -1, -1);
    }

    outlined destroy of NSObject?(v0 + 136, &_s15SecureMessaging3MLSO12GroupVersionV7version_SS10identifierAC18OutgoingEventStateVSg05eventJ0Sb17requireReflectiontSgMd, &_s15SecureMessaging3MLSO12GroupVersionV7version_SS10identifierAC18OutgoingEventStateVSg05eventJ0Sb17requireReflectiontSgMR);
  }

  else
  {

    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = *(v0 + 960);
      v53 = *(v0 + 952);
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v65 = v55;
      *v54 = 136315138;
      *(v54 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v52, &v65);
      _os_log_impl(&dword_264F1F000, v50, v51, "EventQueue retryMatchingEvent no state waiting reflection. Ignoring { identifier: %s }", v54, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v55);
      MEMORY[0x266755550](v55, -1, -1);
      MEMORY[0x266755550](v54, -1, -1);
    }
  }

  v63 = *(v0 + 8);

  return v63();
}

{
  v2 = *v1;
  *(*v1 + 1016) = v0;

  if (v0)
  {
    v3 = *(v2 + 992);
    v4 = MLS.EventQueue.retryMatchingEvent(identifierWaitingReflection:sendBlock:);
  }

  else
  {
    v5 = *(v2 + 992);

    v4 = MLS.EventQueue.reenqueueMatchingEventBehindSelfHeal(identifierWaitingReflection:selfHealBlock:sendBlock:);
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{

  outlined destroy of NSObject?(v0 + 136, &_s15SecureMessaging3MLSO12GroupVersionV7version_SS10identifierAC18OutgoingEventStateVSg05eventJ0Sb17requireReflectiontSgMd, &_s15SecureMessaging3MLSO12GroupVersionV7version_SS10identifierAC18OutgoingEventStateVSg05eventJ0Sb17requireReflectiontSgMR);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t MLS.EventQueue.enqueueSelfHeal(identifier:ftdInfo:sendBlock:)(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 296) = a5;
  *(v6 + 304) = v5;
  *(v6 + 280) = a2;
  *(v6 + 288) = a4;
  *(v6 + 272) = a1;
  v7 = a3[1];
  *(v6 + 16) = *a3;
  *(v6 + 32) = v7;
  v8 = a3[3];
  *(v6 + 48) = a3[2];
  *(v6 + 64) = v8;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v9 = static MLSActor.shared;
  *(v6 + 312) = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.EventQueue.enqueueSelfHeal(identifier:ftdInfo:sendBlock:), v9, 0);
}

uint64_t MLS.EventQueue.enqueueSelfHeal(identifier:ftdInfo:sendBlock:)()
{
  v24 = v0;
  v1 = (v0 + 16);

  outlined init with copy of MLS.OutgoingEventState?(v0 + 16, v0 + 80, &_s15SecureMessaging3MLSO13QueuedFTDInfoVSgMd, &_s15SecureMessaging3MLSO13QueuedFTDInfoVSgMR);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  outlined destroy of NSObject?(v0 + 16, &_s15SecureMessaging3MLSO13QueuedFTDInfoVSgMd, &_s15SecureMessaging3MLSO13QueuedFTDInfoVSgMR);
  if (os_log_type_enabled(v2, v3))
  {
    v5 = *(v0 + 272);
    v4 = *(v0 + 280);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v23 = v7;
    *v6 = 136315394;
    *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v4, &v23);
    *(v6 + 12) = 2080;
    v8 = *(v0 + 32);
    *(v0 + 144) = *v1;
    *(v0 + 160) = v8;
    v9 = *(v0 + 64);
    *(v0 + 176) = *(v0 + 48);
    *(v0 + 192) = v9;
    outlined init with copy of MLS.OutgoingEventState?(v0 + 16, v0 + 208, &_s15SecureMessaging3MLSO13QueuedFTDInfoVSgMd, &_s15SecureMessaging3MLSO13QueuedFTDInfoVSgMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO13QueuedFTDInfoVSgMd, &_s15SecureMessaging3MLSO13QueuedFTDInfoVSgMR);
    v10 = String.init<A>(describing:)();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v23);

    *(v6 + 14) = v12;
    _os_log_impl(&dword_264F1F000, v2, v3, "EventQueue enqueueSelfHeal { identifier: %s, ftdInfo: %s }", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v7, -1, -1);
    MEMORY[0x266755550](v6, -1, -1);
  }

  v14 = *(v0 + 304);
  v13 = *(v0 + 312);
  v15 = *(v0 + 296);
  v16 = *(v0 + 272);
  v17 = lazy protocol witness table accessor for type MLSActor and conformance MLSActor();
  v18 = swift_task_alloc();
  *(v0 + 320) = v18;
  v19 = *(v0 + 280);
  *(v18 + 16) = v1;
  *(v18 + 24) = v14;
  *(v18 + 32) = v16;
  *(v18 + 40) = v19;
  *(v18 + 56) = v15;
  v20 = swift_task_alloc();
  *(v0 + 328) = v20;
  *v20 = v0;
  v20[1] = MLS.EventQueue.enqueueSelfHeal(identifier:ftdInfo:sendBlock:);
  v21 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v20, v13, v17, 0xD00000000000002ELL, 0x80000002651E8370, partial apply for closure #1 in MLS.EventQueue.enqueueSelfHeal(identifier:ftdInfo:sendBlock:), v18, v21);
}

{
  v2 = *v1;
  *(*v1 + 336) = v0;

  if (v0)
  {
    v3 = *(v2 + 312);
    v4 = MLS.EventQueue.enqueueSelfHeal(identifier:ftdInfo:sendBlock:);
  }

  else
  {
    v5 = *(v2 + 312);

    v4 = MLS.EventQueue.reenqueueAtFront(identifier:eventState:andBlockOnVersion:sendBlock:);
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in MLS.EventQueue.enqueueSelfHeal(identifier:ftdInfo:sendBlock:)(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  v67 = a6;
  v68 = a7;
  v69 = a1;
  v11 = a2[1];
  v79 = *a2;
  v80 = v11;
  v12 = a2[3];
  v81 = a2[2];
  v82 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO10EventQueueC0D0VSgMd, &_s15SecureMessaging3MLSO10EventQueueC0D0VSgMR);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v63 - v17;
  v19 = type metadata accessor for MLS.EventQueue.Event(0);
  v72 = *(v19 - 8);
  v20 = MEMORY[0x28223BE20](v19);
  v65 = (&v63 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v20);
  v66 = &v63 - v22;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v70 = a4;
  v71 = v19;
  if (*(a2 + 5))
  {
    v63 = *(a2 + 5);
    v23 = a2[1];
    v76 = *a2;
    v77 = v23;
    v78 = *(a2 + 4);
    v75 = a2[3];
    outlined init with copy of MLS.OutgoingEventState?(a2, v74, &_s15SecureMessaging3MLSO13QueuedFTDInfoVSgMd, &_s15SecureMessaging3MLSO13QueuedFTDInfoVSgMR);

    v24 = Logger.logObject.getter();
    v25 = a5;
    v26 = static os_log_type_t.default.getter();

    v27 = os_log_type_enabled(v24, v26);
    v28 = 0x27FFBF000uLL;
    v64 = v25;
    if (v27)
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *&v74[0] = v30;
      *v29 = 136315394;
      *(v29 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v70, v25, v74);
      *(v29 + 12) = 2048;
      v31 = OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_ftdQueue;
      swift_beginAccess();
      *(v29 + 14) = *(*(a3 + v31) + 16);

      _os_log_impl(&dword_264F1F000, v24, v26, "EventQueue enqueueSelfHeal enqueueing ftdInfo { identifier: %s, ftdQueueCount: %ld }", v29, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v30);
      MEMORY[0x266755550](v30, -1, -1);
      v32 = v29;
      v28 = 0x27FFBF000;
      MEMORY[0x266755550](v32, -1, -1);
    }

    else
    {
    }

    v33 = *(v28 + 960);
    swift_beginAccess();
    v34 = *(a3 + v33);
    v74[0] = v79;
    v74[1] = v80;
    v74[2] = v81;
    v74[3] = v82;
    outlined init with copy of MLS.QueuedFTDInfo(v74, v73);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a3 + v33) = v34;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v34 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v34 + 2) + 1, 1, v34);
      *(a3 + v33) = v34;
    }

    v37 = *(v34 + 2);
    v36 = *(v34 + 3);
    if (v37 >= v36 >> 1)
    {
      v34 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v36 > 1), v37 + 1, 1, v34);
    }

    *(v34 + 2) = v37 + 1;
    v38 = &v34[64 * v37];
    v39 = v78;
    v40 = v77;
    *(v38 + 2) = v76;
    *(v38 + 3) = v40;
    v41 = v63;
    *(v38 + 8) = v39;
    *(v38 + 9) = v41;
    *(v38 + 5) = v75;
    *(a3 + v33) = v34;
    swift_endAccess();
    outlined destroy of NSObject?(a2, &_s15SecureMessaging3MLSO13QueuedFTDInfoVSgMd, &_s15SecureMessaging3MLSO13QueuedFTDInfoVSgMR);
    a5 = v64;
    v19 = v71;
  }

  v42 = OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_selfHealEvent;
  swift_beginAccess();
  outlined init with copy of MLS.OutgoingEventState?(a3 + v42, v18, &_s15SecureMessaging3MLSO10EventQueueC0D0VSgMd, &_s15SecureMessaging3MLSO10EventQueueC0D0VSgMR);
  if ((*(v72 + 48))(v18, 1, v19) == 1)
  {
    outlined destroy of NSObject?(v18, &_s15SecureMessaging3MLSO10EventQueueC0D0VSgMd, &_s15SecureMessaging3MLSO10EventQueueC0D0VSgMR);

    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v73[0] = v46;
      *v45 = 136315138;
      v47 = v70;
      *(v45 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v70, a5, v73);
      _os_log_impl(&dword_264F1F000, v43, v44, "EventQueue enqueueSelfHeal enqueueing selfHealEvent { identifier: %s }", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v46);
      MEMORY[0x266755550](v46, -1, -1);
      MEMORY[0x266755550](v45, -1, -1);
    }

    else
    {

      v47 = v70;
    }

    v57 = v71;
    v58 = *(v71 + 24);
    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
    (*(*(v59 - 8) + 16))(&v16[v58], v69, v59);
    *v16 = v47;
    *(v16 + 1) = a5;
    *(v16 + 1) = 0u;
    *(v16 + 2) = 0u;
    *(v16 + 3) = 0u;
    *(v16 + 4) = 0u;
    *(v16 + 10) = 0;
    v60 = &v16[*(v57 + 28)];
    v61 = v68;
    *v60 = v67;
    v60[1] = v61;
    (*(v72 + 56))(v16, 0, 1, v57);
    swift_beginAccess();

    outlined assign with take of MLS.EventQueue.Event?(v16, a3 + v42);
    swift_endAccess();
    return MLS.EventQueue.dequeueIfNeeded()();
  }

  else
  {
    v48 = v66;
    outlined init with take of MLS.EventQueue.Event(v18, v66);
    v49 = v65;
    outlined init with copy of MLS.EventQueue.Event(v48, v65);

    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v73[0] = v53;
      *v52 = 136315394;
      *(v52 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v70, a5, v73);
      *(v52 + 12) = 2080;
      v54 = *v49;
      v55 = v49[1];

      outlined destroy of MLS.EventQueue.Event(v49);
      v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, v55, v73);

      *(v52 + 14) = v56;
      _os_log_impl(&dword_264F1F000, v50, v51, "EventQueue enqueueSelfHeal reusing selfHealEvent { identifier: %s, selfHealIdentifier: %s }", v52, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266755550](v53, -1, -1);
      MEMORY[0x266755550](v52, -1, -1);
    }

    else
    {

      outlined destroy of MLS.EventQueue.Event(v49);
    }

    MLS.EventQueue.dequeueIfNeeded()();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
    CheckedContinuation.resume(returning:)();
    return outlined destroy of MLS.EventQueue.Event(v48);
  }
}

uint64_t MLS.EventQueue.acknowledge(receivedVersion:identifier:dueToReflection:)(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v22 = a4;
    v12 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v23 = v21;
    *v12 = 136315394;
    *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, a3, &v23);
    *(v12 + 12) = 2080;
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    v25 = v13;
    MEMORY[0x2667545A0](46, 0xE100000000000000);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v8;
    v16 = v7;
    v17 = a2;
    MEMORY[0x2667545A0](v14);

    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, &v23);

    *(v12 + 14) = v18;
    a2 = v17;
    v7 = v16;
    v8 = v15;
    _os_log_impl(&dword_264F1F000, v10, v11, "EventQueue acknowledgeReceivedVersion { identifier: %s, receivedVersion: %s }", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v21, -1, -1);
    v19 = v12;
    a4 = v22;
    MEMORY[0x266755550](v19, -1, -1);
  }

  v24 = v7;
  LODWORD(v25) = v8;
  v26 = v9;
  MLS.EventQueue.transitionStateDueToReceivingGroupVersion(_:identifier:dueToReflection:)(&v24, a2, a3, a4 & 1);
  return MLS.EventQueue.dequeueIfNeeded()();
}

uint64_t MLS.EventQueue.acknowledgeSentAck(identifier:selfHealTimeoutBlock:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v22 = v12;
    *v11 = 136315138;
    *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v22);
    _os_log_impl(&dword_264F1F000, v9, v10, "EventQueue acknowledgeSentAck { identifier: %s }", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x266755550](v12, -1, -1);
    MEMORY[0x266755550](v11, -1, -1);
  }

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v22 = v16;
    *v15 = 136315138;
    *(v15 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v22);
    _os_log_impl(&dword_264F1F000, v13, v14, "EventQueue transitionStateDueToReceivingAck { identifier: %s }", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    MEMORY[0x266755550](v16, -1, -1);
    MEMORY[0x266755550](v15, -1, -1);
  }

  v17 = v5 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_state;
  *v17 = 0;
  if (*(v17 + 40))
  {
    v18 = a3 == 0;
  }

  else
  {
    v18 = 1;
  }

  if (!v18)
  {
    v19 = *(*v5 + 344);

    v19(a1, a2, a3, a4);
    outlined consume of (@escaping @callee_guaranteed @Sendable @async (@guaranteed String) -> (@error @owned Error))?(a3, a4);
  }

  return MLS.EventQueue.dequeueIfNeeded()();
}

uint64_t MLS.EventQueue.kickReflectionTimeoutTask(identifier:selfHealTimeoutBlock:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v25 - v11;

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v26 = v16;
    *v15 = 136315138;
    *(v15 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v26);
    _os_log_impl(&dword_264F1F000, v13, v14, "EventQueue kickReflectionTimeoutTask called { identifier: %s }", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    MEMORY[0x266755550](v16, -1, -1);
    MEMORY[0x266755550](v15, -1, -1);
  }

  v17 = v5 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_state;
  if (*(v5 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_state + 128))
  {

    MEMORY[0x266754760](v18, MEMORY[0x277D84F78] + 8, MEMORY[0x277D84A98], MEMORY[0x277D84AC0]);
  }

  v19 = type metadata accessor for TaskPriority();
  (*(*(v19 - 8) + 56))(v12, 1, 1, v19);
  v20 = one-time initialization token for shared;

  if (v20 != -1)
  {
    swift_once();
  }

  v21 = static MLSActor.shared;
  v22 = lazy protocol witness table accessor for type MLSActor and conformance MLSActor();
  v23 = swift_allocObject();
  v23[2] = v21;
  v23[3] = v22;
  v23[4] = v5;
  v23[5] = a1;
  v23[6] = a2;
  v23[7] = a3;
  v23[8] = a4;

  *(v17 + 128) = _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v12, &async function pointer to partial apply for closure #1 in MLS.EventQueue.kickReflectionTimeoutTask(identifier:selfHealTimeoutBlock:), v23);
}

uint64_t closure #1 in MLS.EventQueue.kickReflectionTimeoutTask(identifier:selfHealTimeoutBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[20] = a7;
  v8[21] = a8;
  v8[18] = a5;
  v8[19] = a6;
  v8[17] = a4;
  v9 = type metadata accessor for ContinuousClock();
  v8[22] = v9;
  v8[23] = *(v9 - 8);
  v8[24] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v10 = static MLSActor.shared;
  v8[25] = static MLSActor.shared;

  return MEMORY[0x2822009F8](closure #1 in MLS.EventQueue.kickReflectionTimeoutTask(identifier:selfHealTimeoutBlock:), v10, 0);
}

uint64_t closure #1 in MLS.EventQueue.kickReflectionTimeoutTask(identifier:selfHealTimeoutBlock:)()
{
  v1 = (*(v0 + 136) + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_bag);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = (*(v3 + 8))(v2, v3);
  v6 = v5;
  static Clock<>.continuous.getter();
  v7 = swift_task_alloc();
  *(v0 + 208) = v7;
  *v7 = v0;
  v7[1] = closure #1 in MLS.EventQueue.kickReflectionTimeoutTask(identifier:selfHealTimeoutBlock:);

  return specialized Clock.sleep(for:tolerance:)(v4, v6, 0, 0, 1);
}

{
  v2 = *v1;
  *(*v1 + 216) = v0;

  v3 = v2[25];
  (*(v2[23] + 8))(v2[24], v2[22]);
  if (v0)
  {
    v4 = closure #1 in MLS.EventQueue.kickReflectionTimeoutTask(identifier:selfHealTimeoutBlock:);
  }

  else
  {
    v4 = closure #1 in MLS.EventQueue.kickReflectionTimeoutTask(identifier:selfHealTimeoutBlock:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v34 = v0;
  v1 = *(v0 + 216);
  static Task<>.checkCancellation()();
  if (v1)
  {

    v2 = v1;
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v6 = *(v0 + 144);
      v5 = *(v0 + 152);
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v33[0] = v9;
      *v7 = 136315394;
      *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v5, v33);
      *(v7 + 12) = 2112;
      v10 = v1;
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 14) = v11;
      *v8 = v11;
      _os_log_impl(&dword_264F1F000, v3, v4, "EventQueue kickReflectionTimeoutTask cancelled { identifier: %s, error: %@ }", v7, 0x16u);
      outlined destroy of NSObject?(v8, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x266755550](v8, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v9);
      MEMORY[0x266755550](v9, -1, -1);
      MEMORY[0x266755550](v7, -1, -1);
    }

    else
    {
    }

    v31 = *(v0 + 8);

    return v31();
  }

  else
  {
    *(v0 + 224) = OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_logger;

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v15 = *(v0 + 144);
      v14 = *(v0 + 152);
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v33[0] = v17;
      *v16 = 136315138;
      *(v16 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v14, v33);
      _os_log_impl(&dword_264F1F000, v12, v13, "EventQueue kickReflectionTimeoutTask kicking self heal { identifier: %s }", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v17);
      MEMORY[0x266755550](v17, -1, -1);
      MEMORY[0x266755550](v16, -1, -1);
    }

    v18 = *(v0 + 160);
    v19 = *(v0 + 136);
    v20 = v19 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_state;
    v21 = *(v19 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_state + 24);
    v22 = *(v19 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_state + 56);
    v23 = *(v19 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_state + 8);
    *(v0 + 48) = *(v19 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_state + 40);
    *(v0 + 64) = v22;
    *(v0 + 16) = v23;
    *(v0 + 32) = v21;
    v24 = *(v20 + 88);
    v25 = *(v20 + 104);
    v26 = *(v20 + 72);
    *(v0 + 128) = *(v20 + 120);
    *(v0 + 96) = v24;
    *(v0 + 112) = v25;
    *(v0 + 80) = v26;
    *(v20 + 8) = 0u;
    *(v20 + 24) = 0u;
    *(v20 + 40) = 0u;
    *(v20 + 56) = 0u;
    *(v20 + 72) = 0u;
    *(v20 + 88) = 0u;
    *(v20 + 104) = 0u;
    *(v20 + 120) = 0;
    *(v20 + 128) = 0;
    outlined destroy of NSObject?(v0 + 16, &_s15SecureMessaging3MLSO12GroupVersionV7version_SS10identifierAC18OutgoingEventStateVSg05eventJ0Sb17requireReflectiontSgMd, &_s15SecureMessaging3MLSO12GroupVersionV7version_SS10identifierAC18OutgoingEventStateVSg05eventJ0Sb17requireReflectiontSgMR);

    v27 = *(v19 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_groupIdentifier);
    v28 = *(v19 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_groupIdentifier + 8);
    v32 = (v18 + *v18);
    v29 = swift_task_alloc();
    *(v0 + 232) = v29;
    *v29 = v0;
    v29[1] = closure #1 in MLS.EventQueue.kickReflectionTimeoutTask(identifier:selfHealTimeoutBlock:);

    return v32(v27, v28);
  }
}

{
  v15 = v0;
  v1 = v0[27];

  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[18];
    v5 = v0[19];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v7 = 136315394;
    *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v5, &v14);
    *(v7 + 12) = 2112;
    v10 = v1;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v11;
    *v8 = v11;
    _os_log_impl(&dword_264F1F000, v3, v4, "EventQueue kickReflectionTimeoutTask cancelled { identifier: %s, error: %@ }", v7, 0x16u);
    outlined destroy of NSObject?(v8, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x266755550](v8, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x266755550](v9, -1, -1);
    MEMORY[0x266755550](v7, -1, -1);
  }

  else
  {
  }

  v12 = v0[1];

  return v12();
}

{
  v2 = *v1;
  v2[30] = v0;

  if (v0)
  {
    v3 = v2[25];

    return MEMORY[0x2822009F8](closure #1 in MLS.EventQueue.kickReflectionTimeoutTask(identifier:selfHealTimeoutBlock:), v3, 0);
  }

  else
  {

    v4 = v2[1];

    return v4();
  }
}

{
  v17 = v0;
  v1 = v0[30];

  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[30];
  if (v5)
  {
    v8 = v0[18];
    v7 = v0[19];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v16 = v11;
    *v9 = 136315394;
    *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v7, &v16);
    *(v9 + 12) = 2112;
    v12 = v6;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v13;
    *v10 = v13;
    _os_log_impl(&dword_264F1F000, v3, v4, "EventQueue kickReflectionTimeoutTask failed self heal { identifier: %s, error: %@ }", v9, 0x16u);
    outlined destroy of NSObject?(v10, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x266755550](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x266755550](v11, -1, -1);
    MEMORY[0x266755550](v9, -1, -1);
  }

  else
  {
  }

  v14 = v0[1];

  return v14();
}

uint64_t closure #1 in MLS.EventQueue.enqueue(identifier:eventState:enqueueFirst:sendBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v47 = a7;
  v49 = a1;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15CollectionOfOneVy15SecureMessaging3MLSO10EventQueueC0G0VGMd, &_ss15CollectionOfOneVy15SecureMessaging3MLSO10EventQueueC0G0VGMR);
  MEMORY[0x28223BE20](v14 - 8);
  v45 = &v43 - v15;
  v48 = type metadata accessor for MLS.EventQueue.Event(0);
  v46 = *(v48 - 8);
  v16 = MEMORY[0x28223BE20](v48);
  v50 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v43 - v18;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v44 = a8;
    v23 = v22;
    v43 = swift_slowAlloc();
    v51[0] = v43;
    *v23 = 136315650;
    *(v23 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a3, a4, v51);
    *(v23 + 12) = 1024;
    *(v23 + 14) = a5 & 1;
    *(v23 + 18) = 2048;
    v24 = a6;
    v25 = a4;
    v26 = OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_queue;
    swift_beginAccess();
    v27 = *(a2 + v26);
    a4 = v25;
    a6 = v24;
    *(v23 + 20) = *(v27 + 16);

    _os_log_impl(&dword_264F1F000, v20, v21, "EventQueue enqueue { identifier: %s, enqueueFirst: %{BOOL}d, queueCount: %ld }", v23, 0x1Cu);
    v28 = v43;
    __swift_destroy_boxed_opaque_existential_1Tm(v43);
    MEMORY[0x266755550](v28, -1, -1);
    v29 = v23;
    a8 = v44;
    MEMORY[0x266755550](v29, -1, -1);
  }

  else
  {
  }

  v30 = v48;
  v31 = *(v48 + 24);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  (*(*(v32 - 8) + 16))(&v19[v31], v49, v32);
  *v19 = a3;
  *(v19 + 1) = a4;
  v33 = *(a6 + 48);
  *(v19 + 3) = *(a6 + 32);
  *(v19 + 4) = v33;
  *(v19 + 10) = *(a6 + 64);
  v34 = *(a6 + 16);
  *(v19 + 1) = *a6;
  *(v19 + 2) = v34;
  v35 = &v19[*(v30 + 28)];
  *v35 = v47;
  v35[1] = a8;
  if (a5)
  {
    swift_beginAccess();
    v36 = v45;
    outlined init with copy of MLS.EventQueue.Event(v19, v45);

    outlined init with copy of MLS.OutgoingEventState?(a6, v51, &_s15SecureMessaging3MLSO18OutgoingEventStateVSgMd, &_s15SecureMessaging3MLSO18OutgoingEventStateVSgMR);

    specialized Array.replaceSubrange<A>(_:with:)(0, 0, v36);
  }

  else
  {
    outlined init with copy of MLS.EventQueue.Event(v19, v50);
    v37 = OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_queue;
    swift_beginAccess();
    v38 = *(a2 + v37);

    outlined init with copy of MLS.OutgoingEventState?(a6, v51, &_s15SecureMessaging3MLSO18OutgoingEventStateVSgMd, &_s15SecureMessaging3MLSO18OutgoingEventStateVSgMR);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a2 + v37) = v38;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v38 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v38[2] + 1, 1, v38);
      *(a2 + v37) = v38;
    }

    v41 = v38[2];
    v40 = v38[3];
    if (v41 >= v40 >> 1)
    {
      v38 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v40 > 1), v41 + 1, 1, v38);
    }

    v38[2] = v41 + 1;
    outlined init with take of MLS.EventQueue.Event(v50, v38 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v41);
    *(a2 + v37) = v38;
  }

  swift_endAccess();
  MLS.EventQueue.dequeueIfNeeded()();
  return outlined destroy of MLS.EventQueue.Event(v19);
}

void MLS.EventQueue.transitionToWaitingOnGroupVersionState(groupVersion:eventState:identifier:requireReflection:)(uint64_t *a1, __int128 *a2, uint64_t a3, unint64_t a4, char a5)
{
  v6 = v5;
  v10 = *a1;
  v11 = *(a1 + 2);
  v12 = a1[2];
  v13 = a2[3];
  v57 = a2[2];
  v58 = v13;
  v59 = *(a2 + 8);
  v14 = a2[1];
  v55 = *a2;
  v56 = v14;

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  v17 = 0x27FFBF000uLL;
  v45 = a3;
  if (os_log_type_enabled(v15, v16))
  {
    v44 = v12;
    v18 = swift_slowAlloc();
    v43 = a5;
    v19 = swift_slowAlloc();
    v46[0] = v19;
    *v18 = 136315906;
    *(v18 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a3, a4, v46);
    *(v18 + 12) = 2080;
    *&v47 = dispatch thunk of CustomStringConvertible.description.getter();
    *(&v47 + 1) = v20;
    MEMORY[0x2667545A0](46, 0xE100000000000000);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v22 = v10;
    v23 = v11;
    MEMORY[0x2667545A0](v21);

    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, *(&v47 + 1), v46);

    *(v18 + 14) = v24;
    *(v18 + 22) = 2080;
    v25 = *(v6 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_currentVersion + 16);
    v26 = *(v6 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_currentVersion + 24);
    v47 = *(v6 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_currentVersion);
    *&v48 = v25;
    BYTE8(v48) = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO12GroupVersionVSgMd, &_s15SecureMessaging3MLSO12GroupVersionVSgMR);
    v27 = String.init<A>(describing:)();
    v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, v46);
    v17 = 0x27FFBF000;

    *(v18 + 24) = v29;
    v11 = v23;
    v10 = v22;
    *(v18 + 32) = 1024;
    *(v18 + 34) = v43 & 1;
    _os_log_impl(&dword_264F1F000, v15, v16, "EventQueue transitionToWaitingOnGroupVersionState { identifier: %s, groupVersion: %s, currentGroupVersion: %s, requireReflection: %{BOOL}d }", v18, 0x26u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v19, -1, -1);
    v30 = v18;
    v12 = v44;
    MEMORY[0x266755550](v30, -1, -1);

    a5 = v43;
  }

  else
  {
  }

  v31 = v6 + *(v17 + 936);
  if (*(v31 + 24))
  {
    goto LABEL_8;
  }

  v32 = *(v31 + 16);
  v33 = *(v31 + 8);
  v34 = v32 < v12;
  v35 = v11 == v33;
  v36 = v11 > v33;
  if (v35)
  {
    v36 = v34;
  }

  if (v36)
  {
LABEL_8:
    MLS.EventQueue.clearWaitingOnReflection(identifier:)(v45, a4);
    v37 = v6 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_state;
    v38 = *(v6 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_state + 88);
    v51 = *(v6 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_state + 72);
    v52 = v38;
    v53 = *(v6 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_state + 104);
    v54 = *(v6 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_state + 120);
    v39 = *(v6 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_state + 24);
    v47 = *(v6 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_state + 8);
    v48 = v39;
    v40 = *(v6 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_state + 56);
    v49 = *(v6 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_state + 40);
    v50 = v40;
    *(v37 + 8) = v10;
    *(v37 + 16) = v11;
    *(v37 + 24) = v12;
    *(v37 + 32) = v45;
    *(v37 + 40) = a4;
    *(v37 + 112) = v59;
    v41 = v58;
    *(v37 + 80) = v57;
    *(v37 + 96) = v41;
    v42 = v56;
    *(v37 + 48) = v55;
    *(v37 + 64) = v42;
    *(v37 + 120) = a5 & 1;

    outlined init with copy of MLS.OutgoingEventState?(&v55, v46, &_s15SecureMessaging3MLSO18OutgoingEventStateVSgMd, &_s15SecureMessaging3MLSO18OutgoingEventStateVSgMR);
    outlined destroy of NSObject?(&v47, &_s15SecureMessaging3MLSO12GroupVersionV7version_SS10identifierAC18OutgoingEventStateVSg05eventJ0Sb17requireReflectiontSgMd, &_s15SecureMessaging3MLSO12GroupVersionV7version_SS10identifierAC18OutgoingEventStateVSg05eventJ0Sb17requireReflectiontSgMR);
  }
}

uint64_t MLS.EventQueue.clearWaitingOnReflection(identifier:)(uint64_t a1, unint64_t a2)
{
  v3 = v2;

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *&v16[0] = v9;
    *v8 = 136315138;
    *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, v16);
    _os_log_impl(&dword_264F1F000, v6, v7, "EventQueue clearWaitingOnReflection { identifier: %s }", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x266755550](v9, -1, -1);
    MEMORY[0x266755550](v8, -1, -1);
  }

  v10 = v3 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_state;
  v11 = *(v3 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_state + 88);
  v16[4] = *(v3 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_state + 72);
  v16[5] = v11;
  v16[6] = *(v3 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_state + 104);
  v17 = *(v3 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_state + 120);
  v12 = *(v3 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_state + 24);
  v16[0] = *(v3 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_state + 8);
  v16[1] = v12;
  v13 = *(v3 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_state + 56);
  v16[2] = *(v3 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_state + 40);
  v16[3] = v13;
  *(v10 + 8) = 0u;
  *(v10 + 24) = 0u;
  *(v10 + 40) = 0u;
  *(v10 + 56) = 0u;
  *(v10 + 72) = 0u;
  *(v10 + 88) = 0u;
  *(v10 + 104) = 0u;
  *(v10 + 120) = 0;
  outlined destroy of NSObject?(v16, &_s15SecureMessaging3MLSO12GroupVersionV7version_SS10identifierAC18OutgoingEventStateVSg05eventJ0Sb17requireReflectiontSgMd, &_s15SecureMessaging3MLSO12GroupVersionV7version_SS10identifierAC18OutgoingEventStateVSg05eventJ0Sb17requireReflectiontSgMR);
  if (*(v10 + 128))
  {

    MEMORY[0x266754760](v14, MEMORY[0x277D84F78] + 8, MEMORY[0x277D84A98], MEMORY[0x277D84AC0]);
  }

  *(v10 + 128) = 0;
}

uint64_t MLS.EventQueue.transitionStateDueToReceivingGroupVersion(_:identifier:dueToReflection:)(uint64_t *a1, uint64_t a2, unint64_t a3, char a4)
{
  v5 = v4;
  v60 = *a1;
  v8 = *(a1 + 2);
  v9 = a1[2];

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  v61 = v9;
  if (os_log_type_enabled(v10, v11))
  {
    v58 = a4;
    v12 = swift_slowAlloc();
    v57 = v8;
    v13 = swift_slowAlloc();
    *&v63 = v13;
    *v12 = 136315906;
    *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, a3, &v63);
    *(v12 + 12) = 2080;
    LODWORD(v77) = v57;
    *&v84 = dispatch thunk of CustomStringConvertible.description.getter();
    *(&v84 + 1) = v14;
    MEMORY[0x2667545A0](46, 0xE100000000000000);
    *&v77 = v9;
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2667545A0](v15);

    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v84, *(&v84 + 1), &v63);

    *(v12 + 14) = v16;
    *(v12 + 22) = 2080;
    v17 = *(v4 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_state + 88);
    v88 = *(v4 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_state + 72);
    v89 = v17;
    v90 = *(v4 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_state + 104);
    LOBYTE(v91) = *(v4 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_state + 120);
    v18 = *(v4 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_state + 24);
    v84 = *(v4 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_state + 8);
    v85 = v18;
    v19 = *(v4 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_state + 56);
    v86 = *(v4 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_state + 40);
    v87 = v19;
    v81 = *(v4 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_state + 72);
    v82 = *(v4 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_state + 88);
    *v83 = *(v4 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_state + 104);
    v83[16] = *(v4 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_state + 120);
    v77 = *(v4 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_state + 8);
    v78 = *(v4 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_state + 24);
    v79 = *(v4 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_state + 40);
    v80 = *(v4 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_state + 56);
    outlined init with copy of MLS.OutgoingEventState?(&v84, v74, &_s15SecureMessaging3MLSO12GroupVersionV7version_SS10identifierAC18OutgoingEventStateVSg05eventJ0Sb17requireReflectiontSgMd, &_s15SecureMessaging3MLSO12GroupVersionV7version_SS10identifierAC18OutgoingEventStateVSg05eventJ0Sb17requireReflectiontSgMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO12GroupVersionV7version_SS10identifierAC18OutgoingEventStateVSg05eventJ0Sb17requireReflectiontSgMd, &_s15SecureMessaging3MLSO12GroupVersionV7version_SS10identifierAC18OutgoingEventStateVSg05eventJ0Sb17requireReflectiontSgMR);
    v20 = String.init<A>(describing:)();
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, &v63);

    *(v12 + 24) = v22;
    *(v12 + 32) = 1024;
    *(v12 + 34) = v58 & 1;
    _os_log_impl(&dword_264F1F000, v10, v11, "EventQueue transitionStateDueToReceivingGroupVersion { identifier: %s, groupVersion: %s, waitingGroupVersion: %s, dueToReflection: %{BOOL}d }", v12, 0x26u);
    swift_arrayDestroy();
    v23 = v13;
    v8 = v57;
    MEMORY[0x266755550](v23, -1, -1);
    v24 = v12;
    a4 = v58;
    MEMORY[0x266755550](v24, -1, -1);
  }

  v25 = v4 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_currentVersion;
  if (*(v4 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_currentVersion + 24))
  {
    goto LABEL_7;
  }

  v26 = *(v25 + 8);
  v27 = *(v25 + 16) < v61;
  v28 = v8 == v26;
  v29 = v8 > v26;
  if (!v28)
  {
    v27 = v29;
  }

  if (v27)
  {
LABEL_7:
    *v25 = v60;
    *(v25 + 8) = v8;
    *(v25 + 16) = v61;
    *(v25 + 24) = 0;
  }

  v30 = (v4 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_state);
  v31 = *(v5 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_state + 112);
  v90 = *(v5 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_state + 96);
  v91 = v31;
  v92 = *(v5 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_state + 128);
  v32 = *(v5 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_state + 48);
  v86 = *(v5 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_state + 32);
  v87 = v32;
  v33 = *(v5 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_state + 80);
  v88 = *(v5 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_state + 64);
  v89 = v33;
  v34 = *(v5 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_state + 16);
  v84 = *(v5 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_state);
  v85 = v34;
  v35 = v34;
  v36 = *(&v34 + 1);
  if (!*(&v86 + 1))
  {
    v50 = v30[3];
    v81 = v30[4];
    v51 = v30[6];
    v82 = v30[5];
    *v83 = v51;
    *&v83[9] = *(v30 + 105);
    v77 = v84;
    v78 = v34;
    v79 = v86;
    v80 = v50;
    v52 = *(v30 + 121);
    *&v83[32] = *(v30 + 16);
    *&v83[25] = v52;
    outlined init with copy of MLS.EventQueue.QueueState(&v84, v74);
    v53 = &v77;
    return outlined destroy of MLS.EventQueue.QueueState(v53);
  }

  v74[0] = v84;
  v74[1] = v34;
  v74[2] = v86;
  v37 = v30[6];
  v74[5] = v30[5];
  *v75 = v37;
  *&v75[9] = *(v30 + 105);
  v38 = v30[3];
  v74[4] = v30[4];
  v74[3] = v38;
  v39 = *(v30 + 121);
  *&v76[7] = *(v30 + 16);
  *v76 = v39;
  outlined init with copy of MLS.EventQueue.QueueState(&v84, &v63);
  outlined destroy of MLS.EventQueue.QueueState(v74);
  v40 = v30[4];
  v82 = v30[5];
  v41 = v30[7];
  *v83 = v30[6];
  *&v83[16] = v41;
  v42 = *v30;
  v78 = v30[1];
  v43 = v30[3];
  v79 = v30[2];
  v80 = v43;
  v81 = v40;
  *&v83[32] = *(v30 + 16);
  v77 = v42;
  v44 = v83[24];
  if (!*(&v79 + 1))
  {
    v54 = v30[1];
    v63 = *v30;
    v64 = v54;
    v65 = *(v30 + 4);
    v66 = 0;
    v55 = v30[6];
    v69 = v30[5];
    v70 = v55;
    v71 = *(v30 + 14);
    v56 = v30[4];
    v67 = v30[3];
    v68 = v56;
    v72 = v83[24];
    *&v73[7] = *(v30 + 16);
    *v73 = *(v30 + 121);
    outlined init with copy of MLS.EventQueue.QueueState(&v77, v62);
    v53 = &v63;
    return outlined destroy of MLS.EventQueue.QueueState(v53);
  }

  v45 = v30[1];
  v63 = *v30;
  v64 = v45;
  v65 = *(v30 + 4);
  v66 = *(&v79 + 1);
  v46 = v30[6];
  v69 = v30[5];
  v70 = v46;
  v71 = *(v30 + 14);
  v47 = v30[4];
  v67 = v30[3];
  v68 = v47;
  v72 = v83[24];
  *v73 = *(v30 + 121);
  *&v73[7] = *(v30 + 16);
  outlined init with copy of MLS.EventQueue.QueueState(&v77, v62);
  result = outlined destroy of MLS.EventQueue.QueueState(&v63);
  v49 = v61 < v36;
  if (v8 != v35)
  {
    v49 = v8 < v35;
  }

  if (!v49 && ((v44 & 1) == 0 || (a4 & 1) != 0))
  {
    return MLS.EventQueue.clearWaitingOnReflection(identifier:)(a2, a3);
  }

  return result;
}

uint64_t MLS.EventQueue.dequeueIfNeeded()()
{
  v1 = v0;
  v2 = type metadata accessor for MLS.EventQueue.Event(0);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v47 = (&v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v4);
  v7 = (&v45 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO10EventQueueC0D0VSgMd, &_s15SecureMessaging3MLSO10EventQueueC0D0VSgMR);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v48 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v45 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v45 - v14;
  swift_retain_n();
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v49 = v2;
    v19 = v18;
    v45 = swift_slowAlloc();
    v61[0] = v45;
    *v19 = 67110402;
    v50 = v3;
    v20 = v1 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_state;
    *(v19 + 4) = *(v1 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_state);
    *(v19 + 8) = 2080;
    v21 = *(v20 + 88);
    v59[4] = *(v20 + 72);
    v59[5] = v21;
    v59[6] = *(v20 + 104);
    v60 = *(v20 + 120);
    v22 = *(v20 + 24);
    v59[0] = *(v20 + 8);
    v59[1] = v22;
    v23 = *(v20 + 56);
    v59[2] = *(v20 + 40);
    v59[3] = v23;
    v24 = *(v20 + 88);
    v55 = *(v20 + 72);
    v56 = v24;
    v57 = *(v20 + 104);
    v58 = *(v20 + 120);
    v25 = *(v20 + 24);
    *&v51[120] = *(v20 + 8);
    v52 = v25;
    v26 = *(v20 + 56);
    v53 = *(v20 + 40);
    v54 = v26;
    v46 = v7;
    outlined init with copy of MLS.OutgoingEventState?(v59, v51, &_s15SecureMessaging3MLSO12GroupVersionV7version_SS10identifierAC18OutgoingEventStateVSg05eventJ0Sb17requireReflectiontSgMd, &_s15SecureMessaging3MLSO12GroupVersionV7version_SS10identifierAC18OutgoingEventStateVSg05eventJ0Sb17requireReflectiontSgMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO12GroupVersionV7version_SS10identifierAC18OutgoingEventStateVSg05eventJ0Sb17requireReflectiontSgMd, &_s15SecureMessaging3MLSO12GroupVersionV7version_SS10identifierAC18OutgoingEventStateVSg05eventJ0Sb17requireReflectiontSgMR);
    v27 = String.init<A>(describing:)();
    v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, v61);

    *(v19 + 10) = v29;
    *(v19 + 18) = 1024;
    LODWORD(v29) = *(v20 + 121);

    *(v19 + 20) = v29;

    *(v19 + 24) = 1024;
    v30 = OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_selfHealEvent;
    swift_beginAccess();
    outlined init with copy of MLS.OutgoingEventState?(v1 + v30, v15, &_s15SecureMessaging3MLSO10EventQueueC0D0VSgMd, &_s15SecureMessaging3MLSO10EventQueueC0D0VSgMR);
    LODWORD(v30) = (*(v50 + 48))(v15, 1, v49) != 1;
    outlined destroy of NSObject?(v15, &_s15SecureMessaging3MLSO10EventQueueC0D0VSgMd, &_s15SecureMessaging3MLSO10EventQueueC0D0VSgMR);

    *(v19 + 26) = v30;
    v3 = v50;

    *(v19 + 30) = 2048;
    v31 = OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_queue;
    swift_beginAccess();
    v32 = *(*(v1 + v31) + 16);

    *(v19 + 32) = v32;

    *(v19 + 40) = 2048;
    v33 = OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_ftdQueue;
    swift_beginAccess();
    v34 = *(*(v1 + v33) + 16);

    *(v19 + 42) = v34;
    v7 = v46;

    _os_log_impl(&dword_264F1F000, v16, v17, "EventQueue dequeueIfNeeded { waitingOnSentAck: %{BOOL}d, waitingOnGroupVersion: %s, waitingOnSelfHealSend: %{BOOL}d, selfHealEvent: %{BOOL}d, queueCount: %ld, ftdQueueCount: %ld }", v19, 0x32u);
    v35 = v45;
    __swift_destroy_boxed_opaque_existential_1Tm(v45);
    MEMORY[0x266755550](v35, -1, -1);
    v36 = v19;
    v2 = v49;
    MEMORY[0x266755550](v36, -1, -1);
  }

  else
  {
  }

  v37 = OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_selfHealEvent;
  swift_beginAccess();
  outlined init with copy of MLS.OutgoingEventState?(v1 + v37, v13, &_s15SecureMessaging3MLSO10EventQueueC0D0VSgMd, &_s15SecureMessaging3MLSO10EventQueueC0D0VSgMR);
  if ((*(v3 + 48))(v13, 1, v2) != 1)
  {
    outlined init with take of MLS.EventQueue.Event(v13, v7);
    if (*(v1 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_state))
    {
      return outlined destroy of MLS.EventQueue.Event(v7);
    }

    v44 = v48;
    (*(v3 + 56))(v48, 1, 1, v2);
    swift_beginAccess();
    outlined assign with take of MLS.EventQueue.Event?(v44, v1 + v37);
LABEL_14:
    swift_endAccess();
    MLS.EventQueue.runEvent(event:)(v7);
    return outlined destroy of MLS.EventQueue.Event(v7);
  }

  result = outlined destroy of NSObject?(v13, &_s15SecureMessaging3MLSO10EventQueueC0D0VSgMd, &_s15SecureMessaging3MLSO10EventQueueC0D0VSgMR);
  v39 = v1 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_state;
  if ((*(v1 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_state) & 1) == 0 && !*(v39 + 40) && (*(v39 + 121) & 1) == 0)
  {
    v40 = OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_ftdQueue;
    swift_beginAccess();
    if (*(*(v1 + v40) + 16))
    {
      MLS.EventQueue.flushFTDQueue()();
    }

    v41 = OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_queue;
    result = swift_beginAccess();
    v42 = *(v1 + v41);
    if (*(v42 + 16))
    {
      swift_beginAccess();
      v43 = v42 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
      v7 = v47;
      outlined init with copy of MLS.EventQueue.Event(v43, v47);
      specialized Array.replaceSubrange<A>(_:with:)(0, 1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
      goto LABEL_14;
    }
  }

  return result;
}

uint64_t MLS.EventQueue.flushFTDQueue()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v33 - v6;

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 134217984;
    v11 = OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_ftdQueue;
    swift_beginAccess();
    *(v10 + 4) = *(*(v1 + v11) + 16);

    _os_log_impl(&dword_264F1F000, v8, v9, "EventQueue flushFTDQueue called { ftdQueueCount: %ld", v10, 0xCu);
    MEMORY[0x266755550](v10, -1, -1);
  }

  else
  {
  }

  v12 = OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_ftdQueue;
  swift_beginAccess();
  v13 = *(v1 + v12);
  v14 = *(v13 + 16);
  if (v14)
  {
    v34 = v12;
    v15 = type metadata accessor for TaskPriority();
    v16 = *(v15 - 8);
    v17 = *(v16 + 56);
    v16 += 56;
    v38 = v17;
    v36 = (v16 - 8);
    v37 = v16;
    v35 = (v16 - 48);

    v18 = 32;
    v40 = v7;
    v39 = v13;
    do
    {
      v19 = *(v13 + v18);
      v20 = *(v13 + v18 + 16);
      v21 = *(v13 + v18 + 48);
      v48 = *(v13 + v18 + 32);
      v49 = v21;
      v46 = v19;
      v47 = v20;
      v38(v7, 1, 1, v15);
      outlined init with copy of MLS.QueuedFTDInfo(&v46, v45);

      outlined init with copy of MLS.QueuedFTDInfo(&v46, v45);
      if (one-time initialization token for shared != -1)
      {
        swift_once();
      }

      v22 = static MLSActor.shared;
      v23 = lazy protocol witness table accessor for type MLSActor and conformance MLSActor();
      v24 = swift_allocObject();
      *(v24 + 16) = v22;
      *(v24 + 24) = v23;
      *(v24 + 32) = v1;
      v25 = v47;
      *(v24 + 40) = v46;
      *(v24 + 56) = v25;
      v26 = v49;
      *(v24 + 72) = v48;
      *(v24 + 88) = v26;
      outlined init with copy of MLS.OutgoingEventState?(v7, v5, &_sScPSgMd, &_sScPSgMR);
      LODWORD(v23) = (*v36)(v5, 1, v15);

      if (v23 == 1)
      {
        outlined destroy of NSObject?(v5, &_sScPSgMd, &_sScPSgMR);
      }

      else
      {
        TaskPriority.rawValue.getter();
        (*v35)(v5, v15);
      }

      v27 = v1;
      v28 = *(v24 + 16);
      swift_unknownObjectRetain();

      if (v28)
      {
        swift_getObjectType();
        v29 = dispatch thunk of Actor.unownedExecutor.getter();
        v31 = v30;
        swift_unknownObjectRelease();
      }

      else
      {
        v29 = 0;
        v31 = 0;
      }

      outlined destroy of NSObject?(v40, &_sScPSgMd, &_sScPSgMR);
      if (v31 | v29)
      {
        v42 = 0;
        v41 = 0;
        v43 = v29;
        v44 = v31;
      }

      v1 = v27;
      swift_task_create();
      outlined destroy of MLS.QueuedFTDInfo(&v46);

      v18 += 64;
      --v14;
      v7 = v40;
      v13 = v39;
    }

    while (v14);

    v12 = v34;
  }

  *(v1 + v12) = MEMORY[0x277D84F90];
}

uint64_t closure #1 in MLS.EventQueue.flushFTDQueue()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[34] = a4;
  v5[35] = a5;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v6 = static MLSActor.shared;
  v5[36] = static MLSActor.shared;

  return MEMORY[0x2822009F8](closure #1 in MLS.EventQueue.flushFTDQueue(), v6, 0);
}

uint64_t closure #1 in MLS.EventQueue.flushFTDQueue()()
{
  v27 = v0;
  v1 = *(v0 + 280);

  outlined init with copy of MLS.QueuedFTDInfo(v1, v0 + 16);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  outlined destroy of MLS.QueuedFTDInfo(v1);
  if (os_log_type_enabled(v2, v3))
  {
    v5 = *(v0 + 272);
    v4 = *(v0 + 280);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v26 = v7;
    *v6 = 136315394;
    *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v5 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_groupIdentifier), *(v5 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_groupIdentifier + 8), &v26);
    *(v6 + 12) = 2080;
    v8 = v4[3];
    v10 = *v4;
    v9 = v4[1];
    *(v0 + 176) = v4[2];
    *(v0 + 192) = v8;
    *(v0 + 144) = v10;
    *(v0 + 160) = v9;
    outlined init with copy of MLS.QueuedFTDInfo(v4, v0 + 208);
    v11 = String.init<A>(describing:)();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v26);

    *(v6 + 14) = v13;
    _os_log_impl(&dword_264F1F000, v2, v3, "EventQueue enqueueFTDBlock called { group: %s ftdInfo: %s }", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v7, -1, -1);
    MEMORY[0x266755550](v6, -1, -1);
  }

  v15 = *(v0 + 272);
  v14 = *(v0 + 280);
  v16 = *(v15 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_enqueueFTDBlock);
  v17 = (v15 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_groupIdentifier);
  v18 = *v17;
  v19 = v17[1];
  v20 = v14[3];
  v22 = *v14;
  v21 = v14[1];
  *(v0 + 112) = v14[2];
  *(v0 + 128) = v20;
  *(v0 + 80) = v22;
  *(v0 + 96) = v21;
  v25 = (v16 + *v16);
  v23 = swift_task_alloc();
  *(v0 + 296) = v23;
  *v23 = v0;
  v23[1] = closure #1 in MLS.EventQueue.flushFTDQueue();

  return v25(v18, v19, v0 + 80);
}

{
  v2 = *v1;
  v2[38] = v0;

  if (v0)
  {
    v3 = v2[36];

    return MEMORY[0x2822009F8](closure #1 in MLS.EventQueue.flushFTDQueue(), v3, 0);
  }

  else
  {
    v4 = v2[1];

    return v4();
  }
}

{
  return (*(v0 + 8))();
}

uint64_t MLS.EventQueue.runEvent(event:)(uint64_t *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v41 - v5;
  v7 = type metadata accessor for MLS.EventQueue.Event(0);
  v43 = *(v7 - 8);
  v8 = *(v43 + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v44 = v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = (v41 - v10);
  v12 = OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_logger;
  outlined init with copy of MLS.EventQueue.Event(a1, v41 - v10);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v42 = v6;
    v17 = v16;
    v45 = v16;
    *v15 = 136315138;
    v41[1] = v12;
    v18 = v2;
    v19 = v8;
    v20 = a1;
    v21 = *v11;
    v22 = v11[1];

    outlined destroy of MLS.EventQueue.Event(v11);
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v45);

    *(v15 + 4) = v23;
    a1 = v20;
    v8 = v19;
    v2 = v18;
    _os_log_impl(&dword_264F1F000, v13, v14, "EventQueue runEvent called { identifier: %s }", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
    v24 = v17;
    v6 = v42;
    MEMORY[0x266755550](v24, -1, -1);
    MEMORY[0x266755550](v15, -1, -1);
  }

  else
  {

    outlined destroy of MLS.EventQueue.Event(v11);
  }

  v25 = *a1;
  v26 = a1[1];

  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = a1;
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v45 = v31;
    *v30 = 136315138;
    *(v30 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, &v45);
    _os_log_impl(&dword_264F1F000, v27, v28, "EventQueue moving to waitingOnSentAck { identifier: %s }", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v31);
    MEMORY[0x266755550](v31, -1, -1);
    v32 = v30;
    a1 = v29;
    MEMORY[0x266755550](v32, -1, -1);
  }

  *(v2 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_state) = 1;
  v33 = type metadata accessor for TaskPriority();
  (*(*(v33 - 8) + 56))(v6, 1, 1, v33);
  v34 = v44;
  outlined init with copy of MLS.EventQueue.Event(a1, v44);
  v35 = one-time initialization token for shared;

  if (v35 != -1)
  {
    swift_once();
  }

  v36 = static MLSActor.shared;
  v37 = lazy protocol witness table accessor for type MLSActor and conformance MLSActor();
  v38 = (*(v43 + 80) + 32) & ~*(v43 + 80);
  v39 = swift_allocObject();
  *(v39 + 16) = v36;
  *(v39 + 24) = v37;
  outlined init with take of MLS.EventQueue.Event(v34, v39 + v38);
  *(v39 + ((v8 + v38 + 7) & 0xFFFFFFFFFFFFFFF8)) = v2;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v6, &async function pointer to partial apply for closure #1 in MLS.EventQueue.runEvent(event:), v39);
}

uint64_t closure #1 in MLS.EventQueue.runEvent(event:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[120] = a5;
  v5[119] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15CollectionOfOneVy15SecureMessaging3MLSO10EventQueueC0G0VGMd, &_ss15CollectionOfOneVy15SecureMessaging3MLSO10EventQueueC0G0VGMR);
  v5[121] = swift_task_alloc();
  v5[122] = type metadata accessor for MLS.EventQueue.Event(0);
  v5[123] = swift_task_alloc();
  v5[124] = swift_task_alloc();
  v5[125] = swift_task_alloc();
  v5[126] = swift_task_alloc();
  v5[127] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v6 = static MLSActor.shared;
  v5[128] = static MLSActor.shared;

  return MEMORY[0x2822009F8](closure #1 in MLS.EventQueue.runEvent(event:), v6, 0);
}

uint64_t closure #1 in MLS.EventQueue.runEvent(event:)()
{
  v1 = *(v0 + 960);
  v2 = *(v0 + 952);
  v3 = *(v2 + *(*(v0 + 976) + 28));
  *(v0 + 536) = *(v2 + 16);
  v5 = *(v2 + 48);
  v4 = *(v2 + 64);
  v6 = *(v2 + 32);
  *(v0 + 600) = *(v2 + 80);
  *(v0 + 568) = v5;
  *(v0 + 584) = v4;
  *(v0 + 552) = v6;
  v8 = *(v2 + 48);
  v7 = *(v2 + 64);
  v9 = *(v2 + 32);
  *(v0 + 672) = *(v2 + 80);
  *(v0 + 640) = v8;
  *(v0 + 656) = v7;
  *(v0 + 624) = v9;
  *(v0 + 608) = *(v2 + 16);
  v10 = *(v1 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_groupIdentifier);
  v11 = *(v1 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_groupIdentifier + 8);
  outlined init with copy of MLS.OutgoingEventState?(v0 + 536, v0 + 680, &_s15SecureMessaging3MLSO18OutgoingEventStateVSgMd, &_s15SecureMessaging3MLSO18OutgoingEventStateVSgMR);
  v14 = (v3 + *v3);
  v12 = swift_task_alloc();
  *(v0 + 1032) = v12;
  *v12 = v0;
  v12[1] = closure #1 in MLS.EventQueue.runEvent(event:);

  return v14(v0 + 16, v0 + 608, v10, v11);
}

{
  v2 = *v1;
  v3 = *v1 + 608;
  *(*v1 + 1040) = v0;

  if (v0)
  {
    v4 = *(v2 + 1024);
    *(v2 + 752) = *v3;
    v6 = *(v3 + 32);
    v5 = *(v3 + 48);
    v7 = *(v3 + 16);
    *(v2 + 816) = *(v3 + 64);
    *(v2 + 784) = v6;
    *(v2 + 800) = v5;
    *(v2 + 768) = v7;
    outlined destroy of NSObject?(v2 + 752, &_s15SecureMessaging3MLSO18OutgoingEventStateVSgMd, &_s15SecureMessaging3MLSO18OutgoingEventStateVSgMR);
    v8 = closure #1 in MLS.EventQueue.runEvent(event:);
  }

  else
  {
    v4 = *(v2 + 1024);
    *(v2 + 824) = *v3;
    v10 = *(v3 + 32);
    v9 = *(v3 + 48);
    v11 = *(v3 + 16);
    *(v2 + 888) = *(v3 + 64);
    *(v2 + 856) = v10;
    *(v2 + 872) = v9;
    *(v2 + 840) = v11;
    outlined destroy of NSObject?(v2 + 824, &_s15SecureMessaging3MLSO18OutgoingEventStateVSgMd, &_s15SecureMessaging3MLSO18OutgoingEventStateVSgMR);
    v8 = closure #1 in MLS.EventQueue.runEvent(event:);
  }

  return MEMORY[0x2822009F8](v8, v4, 0);
}

{
  v85 = v0;
  v1 = *(v0 + 48);
  *(v0 + 168) = *(v0 + 64);
  v2 = *(v0 + 96);
  *(v0 + 184) = *(v0 + 80);
  *(v0 + 200) = v2;
  v3 = *(v0 + 32);
  *(v0 + 120) = *(v0 + 16);
  *(v0 + 136) = v3;
  v4 = *(v0 + 1016);
  v5 = *(v0 + 952);
  *(v0 + 216) = *(v0 + 112);
  *(v0 + 152) = v1;
  *(v0 + 1048) = OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_logger;
  outlined init with copy of MLS.EventQueue.Event(v5, v4);
  outlined init with copy of MLS.EventQueue.Result(v0 + 120, v0 + 224);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  outlined destroy of MLS.EventQueue.Result(v0 + 120);
  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 1016);
    v9 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    *&v77 = v71;
    *v9 = 136315394;
    v10 = *v8;
    v11 = v8[1];

    outlined destroy of MLS.EventQueue.Event(v8);
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v77);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2080;
    v13 = *(v0 + 168);
    v14 = *(v0 + 200);
    *(v0 + 392) = *(v0 + 184);
    *(v0 + 408) = v14;
    *(v0 + 424) = *(v0 + 216);
    v15 = *(v0 + 136);
    *(v0 + 328) = *(v0 + 120);
    *(v0 + 344) = v15;
    *(v0 + 360) = *(v0 + 152);
    *(v0 + 376) = v13;
    outlined init with copy of MLS.EventQueue.Result(v0 + 120, v0 + 432);
    v16 = String.init<A>(describing:)();
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &v77);

    *(v9 + 14) = v18;
    _os_log_impl(&dword_264F1F000, v6, v7, "EventQueue runEvent sendBlock returned { identifier: %s, result: %s }", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v71, -1, -1);
    MEMORY[0x266755550](v9, -1, -1);
  }

  else
  {
    v19 = *(v0 + 1016);

    outlined destroy of MLS.EventQueue.Event(v19);
  }

  v21 = *(v0 + 120);
  v20 = *(v0 + 128);
  v23 = *(v0 + 136);
  v22 = *(v0 + 144);
  v25 = *(v0 + 152);
  v24 = *(v0 + 160);
  v27 = *(v0 + 168);
  v26 = *(v0 + 176);
  v29 = *(v0 + 184);
  v28 = *(v0 + 192);
  v31 = *(v0 + 200);
  v30 = *(v0 + 208);
  v32 = *(v0 + 216);
  if (v32 <= 1)
  {
    v33 = *(v0 + 952);
    v74 = *(v0 + 120);
    v75 = v20;
    v76 = v23;
    *&v77 = v22;
    *(&v77 + 1) = v25;
    v78 = v24;
    v79 = v27;
    v80 = v26;
    v81 = v29;
    v82 = v28;
    v83 = v31;
    v84 = v30;
    MLS.EventQueue.transitionToWaitingOnGroupVersionState(groupVersion:eventState:identifier:requireReflection:)(&v74, &v77, *v33, *(v33 + 8), v32 == 0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
    CheckedContinuation.resume(returning:)();
    outlined destroy of MLS.EventQueue.Result(v0 + 120);
LABEL_22:

    v70 = *(v0 + 8);

    return v70();
  }

  if (v32 != 2)
  {
    v60 = v20 | v21 | v23 | v22 | v25 | v24 | v27 | v26 | v29 | v28 | v31;
    v61 = *(v0 + 952);
    if (v60 | v30)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
      CheckedContinuation.resume(returning:)();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
      CheckedContinuation.resume(returning:)();
      v64 = *v61;
      v65 = v61[1];

      v66 = Logger.logObject.getter();
      v67 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v66, v67))
      {
        v68 = swift_slowAlloc();
        v69 = swift_slowAlloc();
        *&v77 = v69;
        *v68 = 136315138;
        *(v68 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v64, v65, &v77);
        _os_log_impl(&dword_264F1F000, v66, v67, "EventQueue transitionStateDueToReceivingAck { identifier: %s }", v68, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v69);
        MEMORY[0x266755550](v69, -1, -1);
        MEMORY[0x266755550](v68, -1, -1);
      }

      *(*(v0 + 960) + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_state) = 0;
      MLS.EventQueue.dequeueIfNeeded()();
    }

    goto LABEL_22;
  }

  v34 = *(v0 + 968);
  v35 = *(v0 + 952);
  *(v0 + 1056) = OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_queue;
  swift_beginAccess();
  outlined init with copy of MLS.EventQueue.Event(v35, v34);

  specialized Array.replaceSubrange<A>(_:with:)(0, 0, v34);
  swift_endAccess();
  v36 = *v35;
  *(v0 + 1064) = *v35;
  v37 = v35[1];
  *(v0 + 1072) = v37;

  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.default.getter();

  v72 = v36;
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    *&v77 = v41;
    *v40 = 136315138;
    *(v40 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v37, &v77);
    _os_log_impl(&dword_264F1F000, v38, v39, "EventQueue transitionStateDueToReceivingAck { identifier: %s }", v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v41);
    MEMORY[0x266755550](v41, -1, -1);
    MEMORY[0x266755550](v40, -1, -1);
  }

  v42 = *(v0 + 960);
  v43 = OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_state;
  *(v0 + 1080) = OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_state;
  v44 = v42 + v43;
  *(v42 + v43) = 0;

  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    *&v77 = v48;
    *v47 = 136315138;
    *(v47 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v72, v37, &v77);
    _os_log_impl(&dword_264F1F000, v45, v46, "EventQueue transitionToWaitingOnSelfHealSendState { identifier: %s }", v47, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v48);
    MEMORY[0x266755550](v48, -1, -1);
    MEMORY[0x266755550](v47, -1, -1);
  }

  v49 = *(v0 + 1008);
  v50 = *(v0 + 952);
  *(v44 + 121) = 1;
  outlined init with copy of MLS.EventQueue.Event(v50, v49);
  v51 = Logger.logObject.getter();
  v52 = static os_log_type_t.default.getter();
  v53 = os_log_type_enabled(v51, v52);
  v54 = *(v0 + 1008);
  if (v53)
  {
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    *&v77 = v56;
    *v55 = 136315138;
    v57 = *v54;
    v58 = v54[1];

    outlined destroy of MLS.EventQueue.Event(v54);
    v59 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v57, v58, &v77);

    *(v55 + 4) = v59;
    _os_log_impl(&dword_264F1F000, v51, v52, "EventQueue runEvent self healing { identifier: %s }", v55, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v56);
    MEMORY[0x266755550](v56, -1, -1);
    MEMORY[0x266755550](v55, -1, -1);
  }

  else
  {

    outlined destroy of MLS.EventQueue.Event(v54);
  }

  v73 = (v21 + *v21);
  v62 = swift_task_alloc();
  *(v0 + 1088) = v62;
  *v62 = v0;
  v62[1] = closure #1 in MLS.EventQueue.runEvent(event:);

  return v73();
}

{
  v2 = *v1;
  *(*v1 + 1096) = v0;

  v3 = *(v2 + 1024);
  if (v0)
  {
    v4 = closure #1 in MLS.EventQueue.runEvent(event:);
  }

  else
  {
    v4 = closure #1 in MLS.EventQueue.runEvent(event:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v19 = v0;
  outlined init with copy of MLS.EventQueue.Event(v0[119], v0[125]);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[125];
  if (v3)
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v18 = v6;
    *v5 = 136315138;
    v7 = *v4;
    v8 = v4[1];

    outlined destroy of MLS.EventQueue.Event(v4);
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v18);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_264F1F000, v1, v2, "EventQueue runEvent self healing finished { identifier: %s }", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x266755550](v6, -1, -1);
    MEMORY[0x266755550](v5, -1, -1);
  }

  else
  {

    outlined destroy of MLS.EventQueue.Event(v4);
  }

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = v0[134];
    v13 = v0[133];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v18 = v15;
    *v14 = 136315138;
    *(v14 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v12, &v18);
    _os_log_impl(&dword_264F1F000, v10, v11, "EventQueue transitionStateDueToSendingSelfHeal { identifier: %s }", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
    MEMORY[0x266755550](v15, -1, -1);
    MEMORY[0x266755550](v14, -1, -1);
  }

  *(v0[120] + v0[135] + 121) = 0;
  MLS.EventQueue.dequeueIfNeeded()();
  outlined destroy of MLS.EventQueue.Result((v0 + 15));
  outlined destroy of MLS.EventQueue.Result((v0 + 15));

  v16 = v0[1];

  return v16();
}

{
  v27 = v0;
  v1 = v0[130];
  outlined init with copy of MLS.EventQueue.Event(v0[119], v0[124]);
  v2 = v1;
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[124];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v10 = v26;
    *v8 = 136315394;
    v11 = *v7;
    v12 = v7[1];

    outlined destroy of MLS.EventQueue.Event(v7);
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v26);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2112;
    v14 = v1;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v15;
    *v9 = v15;
    _os_log_impl(&dword_264F1F000, v4, v5, "EventQueue runEvent failed { identifier: %s, error: %@ }", v8, 0x16u);
    outlined destroy of NSObject?(v9, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x266755550](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x266755550](v10, -1, -1);
    MEMORY[0x266755550](v8, -1, -1);
  }

  else
  {

    outlined destroy of MLS.EventQueue.Event(v7);
  }

  v16 = v0[119];
  v0[118] = v1;
  v17 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  CheckedContinuation.resume(throwing:)();
  v18 = *v16;
  v19 = v16[1];

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v26 = v23;
    *v22 = 136315138;
    *(v22 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v26);
    _os_log_impl(&dword_264F1F000, v20, v21, "EventQueue transitionStateDueToReceivingAck { identifier: %s }", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    MEMORY[0x266755550](v23, -1, -1);
    MEMORY[0x266755550](v22, -1, -1);
  }

  *(v0[120] + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_state) = 0;
  MLS.EventQueue.dequeueIfNeeded()();

  v24 = v0[1];

  return v24();
}

{
  v52 = v0;
  v1 = v0[137];
  outlined init with copy of MLS.EventQueue.Event(v0[119], v0[123]);
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[137];
    v6 = v0[123];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v51[0] = v9;
    *v7 = 136315394;
    v10 = *v6;
    v11 = v6[1];

    outlined destroy of MLS.EventQueue.Event(v6);
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, v51);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2112;
    v13 = v5;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v14;
    *v8 = v14;
    _os_log_impl(&dword_264F1F000, v3, v4, "EventQueue runEvent self healing failed { identifier: %s, error: %@ }", v7, 0x16u);
    outlined destroy of NSObject?(v8, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x266755550](v8, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x266755550](v9, -1, -1);
    MEMORY[0x266755550](v7, -1, -1);
  }

  else
  {
    v15 = v0[123];

    outlined destroy of MLS.EventQueue.Event(v15);
  }

  v16 = v0[132];
  v17 = v0[120];
  result = swift_beginAccess();
  if (*(*(v17 + v16) + 16))
  {
    specialized Array.replaceSubrange<A>(_:with:)(0, 1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
    swift_endAccess();

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();

    v21 = &protocol conformance descriptor for MLS.Credential;
    if (os_log_type_enabled(v19, v20))
    {
      v22 = v0[134];
      v23 = v0[133];
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v51[0] = v25;
      *v24 = 136315138;
      *(v24 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v22, v51);
      _os_log_impl(&dword_264F1F000, v19, v20, "EventQueue transitionStateDueToSendingSelfHeal { identifier: %s }", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v25);
      MEMORY[0x266755550](v25, -1, -1);
      MEMORY[0x266755550](v24, -1, -1);
    }

    *(v0[120] + v0[135] + 121) = 0;
    swift_willThrow();
    outlined destroy of MLS.EventQueue.Result((v0 + 15));
    outlined destroy of MLS.EventQueue.Result((v0 + 15));
    v26 = v0[137];
    outlined init with copy of MLS.EventQueue.Event(v0[119], v0[124]);
    v27 = v26;
    v28 = v26;
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();

    v31 = os_log_type_enabled(v29, v30);
    v32 = v0[124];
    if (v31)
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v51[0] = swift_slowAlloc();
      v35 = v51[0];
      *v33 = 136315394;
      v36 = *v32;
      v37 = v32[1];

      outlined destroy of MLS.EventQueue.Event(v32);
      v38 = v36;
      v21 = &protocol conformance descriptor for MLS.Credential;
      v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v37, v51);

      *(v33 + 4) = v39;
      *(v33 + 12) = 2112;
      v40 = v26;
      v41 = _swift_stdlib_bridgeErrorToNSError();
      *(v33 + 14) = v41;
      *v34 = v41;
      _os_log_impl(&dword_264F1F000, v29, v30, "EventQueue runEvent failed { identifier: %s, error: %@ }", v33, 0x16u);
      outlined destroy of NSObject?(v34, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x266755550](v34, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v35);
      MEMORY[0x266755550](v35, -1, -1);
      MEMORY[0x266755550](v33, -1, -1);
    }

    else
    {

      outlined destroy of MLS.EventQueue.Event(v32);
    }

    v42 = v0[119];
    v0[118] = v26;
    v43 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
    CheckedContinuation.resume(throwing:)();
    v44 = *v42;
    v45 = v42[1];

    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v51[0] = v49;
      *v48 = v21[20];
      *(v48 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v45, v51);
      _os_log_impl(&dword_264F1F000, v46, v47, "EventQueue transitionStateDueToReceivingAck { identifier: %s }", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v49);
      MEMORY[0x266755550](v49, -1, -1);
      MEMORY[0x266755550](v48, -1, -1);
    }

    *(v0[120] + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_state) = 0;
    MLS.EventQueue.dequeueIfNeeded()();

    v50 = v0[1];

    return v50();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t MLS.EventQueue.deinit()
{
  v1 = OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_bag));

  v3 = *(v0 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_state + 112);
  v8[6] = *(v0 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_state + 96);
  v8[7] = v3;
  v9 = *(v0 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_state + 128);
  v4 = *(v0 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_state + 48);
  v8[2] = *(v0 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_state + 32);
  v8[3] = v4;
  v5 = *(v0 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_state + 80);
  v8[4] = *(v0 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_state + 64);
  v8[5] = v5;
  v6 = *(v0 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_state + 16);
  v8[0] = *(v0 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_state);
  v8[1] = v6;
  outlined destroy of MLS.EventQueue.QueueState(v8);
  outlined destroy of NSObject?(v0 + OBJC_IVAR____TtCO15SecureMessaging3MLS10EventQueue_selfHealEvent, &_s15SecureMessaging3MLSO10EventQueueC0D0VSgMd, &_s15SecureMessaging3MLSO10EventQueueC0D0VSgMR);

  return v0;
}

uint64_t MLS.EventQueue.__deallocating_deinit()
{
  MLS.EventQueue.deinit();

  return swift_deallocClassInstance();
}

unint64_t specialized Array.replaceSubrange<A>(_:with:)(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 16);
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = __OFSUB__(1, v8);
  v10 = 1 - v8;
  if (v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v6 + v10;
  if (__OFADD__(v6, v10))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v11 > v5[3] >> 1)
  {
    if (v6 <= v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = v6;
    }

    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v14, 1, v5);
    *v3 = v5;
  }

  result = specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v7, a2, 1, a3);
  *v3 = v5;
  return result;
}

BOOL specialized static MLS.QueuedFTDInfo.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 56);
  v7 = *a2;
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 32);
  v11 = *(a2 + 40);
  v12 = *(a2 + 56);
  v17 = *(a2 + 48);
  v18 = *(a1 + 48);
  v13 = *(a1 + 24);
  v14 = *(a2 + 24);
  v23 = *a1;
  v24 = v2;
  v25 = v3;
  v26 = v13;
  v19 = v7;
  v20 = v8;
  v21 = v9;
  v22 = v14;
  outlined copy of MLS.AllMember(v23, v2);
  outlined copy of MLS.AllMember(v7, v8);
  LOBYTE(v9) = specialized static MLS.AllMember.== infix(_:_:)(&v23, &v19);
  outlined consume of MLS.AllMember(v19, v20);
  outlined consume of MLS.AllMember(v23, v24);
  if ((v9 & 1) == 0 || (v4 != v10 || v5 != v11) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (v6 >> 60 == 15)
  {
    if (v12 >> 60 == 15)
    {
      outlined copy of Data?(v18, v6);
      outlined copy of Data?(v17, v12);
      outlined consume of Data?(v18, v6);
      return 1;
    }

    goto LABEL_9;
  }

  if (v12 >> 60 == 15)
  {
LABEL_9:
    outlined copy of Data?(v18, v6);
    outlined copy of Data?(v17, v12);
    outlined consume of Data?(v18, v6);
    outlined consume of Data?(v17, v12);
    return 0;
  }

  outlined copy of Data?(v18, v6);
  outlined copy of Data?(v17, v12);
  v16 = specialized static Data.== infix(_:_:)(v18, v6, v17, v12);
  outlined consume of Data?(v17, v12);
  outlined consume of Data?(v18, v6);
  return v16;
}

uint64_t outlined init with copy of ServerBag.MLS(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t lazy protocol witness table accessor for type MLSActor and conformance MLSActor()
{
  result = lazy protocol witness table cache variable for type MLSActor and conformance MLSActor;
  if (!lazy protocol witness table cache variable for type MLSActor and conformance MLSActor)
  {
    type metadata accessor for MLSActor();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLSActor and conformance MLSActor);
  }

  return result;
}

uint64_t outlined consume of (@escaping @callee_guaranteed @Sendable @async (@guaranteed String) -> (@error @owned Error))?(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_264F49554()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t partial apply for closure #1 in MLS.EventQueue.kickReflectionTimeoutTask(identifier:selfHealTimeoutBlock:)(uint64_t a1)
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
  v11[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #1 in MLS.EventQueue.kickReflectionTimeoutTask(identifier:selfHealTimeoutBlock:)(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for MLS.QueuedFTDInfo(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for MLS.QueuedFTDInfo(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata accessor for MLS.EventQueue.Event(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for MLS.EventQueue(uint64_t a1)
{
  type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    type metadata accessor for MLS.EventQueue.Event?(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t dispatch thunk of MLS.EventQueue.enqueue(identifier:eventState:sendBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = (*(*v5 + 280) + **(*v5 + 280));
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v14(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of MLS.EventQueue.reenqueueAtFront(identifier:eventState:andBlockOnVersion:sendBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16 = (*(*v6 + 288) + **(*v6 + 288));
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  *v14 = v7;
  v14[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v16(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of MLS.EventQueue.reenqueueAtFrontBehindSelfHeal(identifier:eventState:selfHealBlock:sendBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v18 = (*(*v7 + 296) + **(*v7 + 296));
  v16 = swift_task_alloc();
  *(v8 + 16) = v16;
  *v16 = v8;
  v16[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v18(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t dispatch thunk of MLS.EventQueue.reenqueueMatchingEventBehindSelfHeal(identifierWaitingReflection:selfHealBlock:sendBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16 = (*(*v6 + 304) + **(*v6 + 304));
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  *v14 = v7;
  v14[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v16(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of MLS.EventQueue.retryMatchingEvent(identifierWaitingReflection:sendBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(*v4 + 312) + **(*v4 + 312));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v12(a1, a2, a3, a4);
}

uint64_t dispatch thunk of MLS.EventQueue.enqueueSelfHeal(identifier:ftdInfo:sendBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = (*(*v5 + 320) + **(*v5 + 320));
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v14(a1, a2, a3, a4, a5);
}

void type metadata accessor for MLS.EventQueue.Event?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for MLS.EventQueue.Event?)
  {
    type metadata accessor for MLS.EventQueue.Event(255);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for MLS.EventQueue.Event?);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_15SecureMessaging3MLSO18OutgoingEventStateVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_15SecureMessaging3MLSO10EventQueueC6ResultO(uint64_t a1)
{
  if ((*(a1 + 96) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 96) & 3;
  }
}

__n128 __swift_memcpy97_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for MLS.EventQueue.Result(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 97))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 96);
  if (v3 >= 4)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MLS.EventQueue.Result(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 96) = 0;
    *(result + 64) = 0u;
    *(result + 80) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 97) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 97) = 0;
    }

    if (a2)
    {
      *(result + 96) = -a2;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for MLS.EventQueue.Result(uint64_t result, unsigned int a2)
{
  if (a2 > 2)
  {
    v2 = a2 - 3;
    *(result + 64) = 0u;
    *(result + 80) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    LOBYTE(a2) = 3;
    *result = v2;
  }

  *(result + 96) = a2;
  return result;
}

uint64_t sub_264F4A3A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_264F4A474(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void type metadata completion function for MLS.EventQueue.Event(uint64_t a1)
{
  type metadata accessor for MLS.OutgoingEventState?();
  if (v1 <= 0x3F)
  {
    type metadata accessor for CheckedContinuation<(), Error>(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for ()();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for MLS.OutgoingEventState?()
{
  if (!lazy cache variable for type metadata for MLS.OutgoingEventState?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for MLS.OutgoingEventState?);
    }
  }
}

void type metadata accessor for CheckedContinuation<(), Error>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for CheckedContinuation<(), Error>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v1 = type metadata accessor for CheckedContinuation();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for CheckedContinuation<(), Error>);
    }
  }
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

uint64_t get_enum_tag_for_layout_string_15SecureMessaging3MLSO12GroupVersionV7version_SS10identifierAC18OutgoingEventStateVSg05eventJ0Sb17requireReflectiontSg(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy136_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for MLS.EventQueue.QueueState(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 136))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 40);
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

uint64_t storeEnumTagSinglePayload for MLS.EventQueue.QueueState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 136) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 136) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2;
    }
  }

  return result;
}

uint64_t outlined init with copy of MLS.EventQueue.Event(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLS.EventQueue.Event(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of MLS.EventQueue.Event(uint64_t a1)
{
  v2 = type metadata accessor for MLS.EventQueue.Event(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_264F4A8D4()
{
  v1 = type metadata accessor for MLS.EventQueue.Event(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  swift_unknownObjectRelease();
  v5 = v0 + v3;

  if (*(v0 + v3 + 24))
  {

    outlined consume of MLS.OutgoingEventState.EventSpecificState(*(v5 + 32), *(v5 + 40), *(v5 + 48));

    v6 = *(v5 + 80);
    if (v6 >> 60 != 15)
    {
      outlined consume of Data._Representation(*(v5 + 72), v6);
    }
  }

  v7 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + 24);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  (*(*(v9 - 8) + 8))(v5 + v8, v9);

  return MEMORY[0x2821FE8E8](v0, v7 + 8, v2 | 7);
}

uint64_t outlined consume of MLS.OutgoingEventState.EventSpecificState(uint64_t result, uint64_t a2, unsigned __int8 a3)
{
  if (a3 > 6u)
  {
    if (a3 != 7)
    {
      if (a3 != 8 && a3 != 9)
      {
        return v3;
      }

      goto LABEL_10;
    }
  }

  else if (a3 >= 2u)
  {
    if (a3 != 2)
    {
      return v3;
    }

    goto LABEL_10;
  }

LABEL_10:
}

uint64_t outlined init with take of MLS.EventQueue.Event(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLS.EventQueue.Event(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in MLS.EventQueue.runEvent(event:)(uint64_t a1)
{
  v4 = *(type metadata accessor for MLS.EventQueue.Event(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #1 in MLS.EventQueue.runEvent(event:)(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_264F4ACD4()
{
  swift_unknownObjectRelease();

  outlined consume of MLS.AllMember(v0[5], v0[6]);

  v1 = v0[12];
  if (v1 >> 60 != 15)
  {
    outlined consume of Data._Representation(v0[11], v1);
  }

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t partial apply for closure #1 in MLS.EventQueue.flushFTDQueue()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #1 in MLS.EventQueue.flushFTDQueue()(a1, v4, v5, v6, (v1 + 5));
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

uint64_t outlined init with copy of MLS.OutgoingEventState?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined assign with take of MLS.EventQueue.Event?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO10EventQueueC0D0VSgMd, &_s15SecureMessaging3MLSO10EventQueueC0D0VSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_264F4B048()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 72) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t partial apply for closure #1 in closure #1 in MLS.EventQueue.reenqueueAtFrontBehindSelfHeal(identifier:eventState:selfHealBlock:sendBlock:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
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
  v11[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #1 in closure #1 in MLS.EventQueue.reenqueueAtFrontBehindSelfHeal(identifier:eventState:selfHealBlock:sendBlock:)(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t secureMessagingLogger(category:)()
{
  LogCategory.rawValue.getter();

  return Logger.init(subsystem:category:)();
}

SecureMessaging::LogCategory_optional __swiftcall LogCategory.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  v5 = 0;
  v6 = 5;
  switch(v3)
  {
    case 0:
      goto LABEL_15;
    case 1:
      v5 = 1;
      goto LABEL_15;
    case 2:
      v5 = 2;
      goto LABEL_15;
    case 3:
      v5 = 3;
      goto LABEL_15;
    case 4:
      v5 = 4;
LABEL_15:
      v6 = v5;
      break;
    case 5:
      break;
    case 6:
      v6 = 6;
      break;
    case 7:
      v6 = 7;
      break;
    case 8:
      v6 = 8;
      break;
    case 9:
      v6 = 9;
      break;
    case 10:
      v6 = 10;
      break;
    case 11:
      v6 = 11;
      break;
    case 12:
      v6 = 12;
      break;
    case 13:
      v6 = 13;
      break;
    case 14:
      v6 = 14;
      break;
    case 15:
      v6 = 15;
      break;
    case 16:
      v6 = 16;
      break;
    case 17:
      v6 = 17;
      break;
    case 18:
      v6 = 18;
      break;
    case 19:
      v6 = 19;
      break;
    case 20:
      v6 = 20;
      break;
    case 21:
      v6 = 21;
      break;
    case 22:
      v6 = 22;
      break;
    default:
      v6 = 23;
      break;
  }

  *v2 = v6;
  return result;
}

unint64_t LogCategory.rawValue.getter()
{
  result = 0x50586E6F6D656144;
  switch(*v0)
  {
    case 1:
      result = 0x5041746E65696C43;
      break;
    case 2:
      result = 0x43505870756F7247;
      break;
    case 3:
      result = 0x6172747369676552;
      break;
    case 4:
      result = 1819242324;
      break;
    case 5:
      result = 0x6574696C7153;
      break;
    case 6:
    case 9:
      result = 0xD000000000000015;
      break;
    case 7:
      result = 0xD000000000000012;
      break;
    case 8:
      result = 0xD000000000000018;
      break;
    case 0xA:
      result = 0xD000000000000012;
      break;
    case 0xB:
    case 0x15:
      result = 0xD000000000000013;
      break;
    case 0xC:
      result = 0x6E65696C43534C4DLL;
      break;
    case 0xD:
      result = 0x435058534C4DLL;
      break;
    case 0xE:
      result = 0xD000000000000017;
      break;
    case 0xF:
      result = 0x6F6D656144534C4DLL;
      break;
    case 0x10:
      result = 0x6144435058534C4DLL;
      break;
    case 0x11:
      result = 0x7466697753534C4DLL;
      break;
    case 0x12:
    case 0x14:
      result = 0x746E657645534C4DLL;
      break;
    case 0x13:
      result = 0xD000000000000012;
      break;
    case 0x16:
      result = 4411480;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance LogCategory()
{
  v0 = LogCategory.rawValue.getter();
  v2 = v1;
  if (v0 == LogCategory.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v5 & 1;
}

unint64_t lazy protocol witness table accessor for type LogCategory and conformance LogCategory()
{
  result = lazy protocol witness table cache variable for type LogCategory and conformance LogCategory;
  if (!lazy protocol witness table cache variable for type LogCategory and conformance LogCategory)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LogCategory and conformance LogCategory);
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance LogCategory()
{
  Hasher.init(_seed:)();
  LogCategory.rawValue.getter();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance LogCategory(uint64_t a1)
{
  LogCategory.rawValue.getter();
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance LogCategory(uint64_t a1)
{
  Hasher.init(_seed:)();
  LogCategory.rawValue.getter();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance LogCategory@<X0>(unint64_t *a1@<X8>)
{
  result = LogCategory.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for LogCategory(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEA)
  {
    goto LABEL_17;
  }

  if (a2 + 22 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 22) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 22;
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

      return (*a1 | (v4 << 8)) - 22;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 22;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x17;
  v8 = v6 - 23;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LogCategory(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 22 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 22) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEA)
  {
    v4 = 0;
  }

  if (a2 > 0xE9)
  {
    v5 = ((a2 - 234) >> 8) + 1;
    *result = a2 + 22;
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
    *result = a2 + 22;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t specialized static BinaryFloatingPoint<>.random<A>(in:using:)(uint64_t result, double a2, double a3)
{
  if (a2 == a3)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = a3 - a2;
  if (COERCE__INT64(fabs(a3 - a2)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v6 = result;
  v7 = 0;
  result = MEMORY[0x266755570](&v7, 8);
  if (v5 * vcvtd_n_f64_u64(v7 & 0x1FFFFFFFFFFFFFLL, 0x35uLL) + a2 == a3)
  {
    return specialized static BinaryFloatingPoint<>.random<A>(in:using:)(v6, a2, a3);
  }

  return result;
}

BOOL specialized MLS.DefaultKeyUpdatePolicy.shouldUpdateKey(eventsSinceLastUpdate:)(uint64_t a1)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a1;
  v7 = *(a1 + 8);
  LODWORD(a1) = *(a1 + 16);
  Date.init()();
  Date.timeIntervalSince1970.getter();
  v9 = v8;
  (*(v3 + 8))(v5, v2);
  if (a1 == 1)
  {
    result = 1;
    if (v6 > 0x1D)
    {
      return result;
    }

    v11 = 86400.0;
    goto LABEL_8;
  }

  if (v9 < v7 + 604800.0)
  {
    return 0;
  }

  result = 1;
  if (v6 <= 0x31)
  {
    v11 = 2592000.0;
LABEL_8:
    if (v7 + v11 > v9)
    {
      specialized static BinaryFloatingPoint<>.random<A>(in:using:)(1, 0.0, 1.0);
      return v12 < 0.1;
    }
  }

  return result;
}

uint64_t MLS.IncomingEventType.identifier.getter(void *a1)
{
  v3 = a1[3];
  v5 = a1[4];
  v4 = a1[5];
  v71 = a1[2];
  v2 = v71;
  v72 = v3;
  v73 = v5;
  v74 = v4;
  v6 = type metadata accessor for MLS.IncomingInternalStateUpdated(0, &v71);
  v68 = *(v6 - 8);
  v69 = v6;
  MEMORY[0x28223BE20](v6);
  v67 = &v48 - v7;
  v71 = v2;
  v72 = v3;
  v73 = v5;
  v74 = v4;
  v8 = type metadata accessor for MLS.IncomingResendApplicationMessage(0, &v71);
  v65 = *(v8 - 8);
  v66 = v8;
  MEMORY[0x28223BE20](v8);
  v64 = &v48 - v9;
  v71 = v2;
  v72 = v3;
  v73 = v5;
  v74 = v4;
  v10 = type metadata accessor for MLS.IncomingApplicationSignatureVerified(0, &v71);
  v62 = *(v10 - 8);
  v63 = v10;
  MEMORY[0x28223BE20](v10);
  v61 = &v48 - v11;
  v71 = v2;
  v72 = v3;
  v73 = v5;
  v74 = v4;
  v12 = type metadata accessor for MLS.IncomingGroupNameChange(0, &v71);
  v59 = *(v12 - 8);
  v60 = v12;
  MEMORY[0x28223BE20](v12);
  v58 = &v48 - v13;
  v71 = v2;
  v72 = v3;
  v73 = v5;
  v74 = v4;
  v14 = type metadata accessor for MLS.IncomingDowngradeRecommended(0, &v71);
  v56 = *(v14 - 8);
  v57 = v14;
  MEMORY[0x28223BE20](v14);
  v55 = &v48 - v15;
  v71 = v2;
  v72 = v3;
  v73 = v5;
  v74 = v4;
  v54 = type metadata accessor for MLS.IncomingSelfKicked(0, &v71);
  v53 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v52 = &v48 - v16;
  v71 = v2;
  v72 = v3;
  v73 = v5;
  v74 = v4;
  v51 = type metadata accessor for MLS.IncomingMemberKicked(0, &v71);
  v50 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v18 = (&v48 - v17);
  v71 = v2;
  v72 = v3;
  v73 = v5;
  v74 = v4;
  v19 = type metadata accessor for MLS.IncomingMemberAdded(0, &v71);
  v49 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v21 = (&v48 - v20);
  v71 = v2;
  v72 = v3;
  v73 = v5;
  v74 = v4;
  v22 = type metadata accessor for MLS.IncomingGroupCreated(0, &v71);
  v48 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v24 = (&v48 - v23);
  v71 = v2;
  v72 = v3;
  v73 = v5;
  v74 = v4;
  v25 = type metadata accessor for MLS.IncomingApplicationMessage(0, &v71);
  v26 = *(v25 - 8);
  v27 = MEMORY[0x28223BE20](v25);
  v29 = (&v48 - v28);
  MEMORY[0x28223BE20](v27);
  v31 = &v48 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v32 + 16))(v31, v70, a1);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 6)
    {
      if (EnumCaseMultiPayload == 5)
      {
        v39 = v55;
        v38 = v56;
        v40 = v57;
        (*(v56 + 32))(v55, v31, v57);
      }

      else
      {
        v39 = v58;
        v38 = v59;
        v40 = v60;
        (*(v59 + 32))(v58, v31, v60);
      }
    }

    else if (EnumCaseMultiPayload == 7)
    {
      v39 = v61;
      v38 = v62;
      v40 = v63;
      (*(v62 + 32))(v61, v31, v63);
    }

    else if (EnumCaseMultiPayload == 8)
    {
      v39 = v64;
      v38 = v65;
      v40 = v66;
      (*(v65 + 32))(v64, v31, v66);
    }

    else
    {
      v39 = v67;
      v38 = v68;
      v40 = v69;
      (*(v68 + 32))(v67, v31, v69);
    }

LABEL_20:
    v36 = *v39;
    v46 = *(v38 + 8);

    v46(v39, v40);
    return v36;
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v42 = v49;
      (*(v49 + 32))(v21, v31, v19);
      v36 = *v21;
      v43 = *(v42 + 8);

      v43(v21, v19);
      return v36;
    }

    if (EnumCaseMultiPayload == 3)
    {
      v34 = v50;
      v35 = v51;
      (*(v50 + 32))(v18, v31, v51);
      v36 = *v18;
      v37 = *(v34 + 8);

      v37(v18, v35);
      return v36;
    }

    v38 = v53;
    v39 = v52;
    v40 = v54;
    (*(v53 + 32))(v52, v31, v54);
    goto LABEL_20;
  }

  if (EnumCaseMultiPayload)
  {
    v44 = v48;
    (*(v48 + 32))(v24, v31, v22);
    v36 = *v24;
    v45 = *(v44 + 8);

    v45(v24, v22);
  }

  else
  {
    (*(v26 + 32))(v29, v31, v25);
    v36 = *v29;
    v41 = *(v26 + 8);

    v41(v29, v25);
  }

  return v36;
}

uint64_t MLS.IncomingEventType.sender.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a2;
  v4 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  v65 = a1[2];
  v3 = v65;
  v66 = v4;
  v67 = v5;
  v68 = v6;
  v7 = type metadata accessor for MLS.IncomingInternalStateUpdated(0, &v65);
  v61 = *(v7 - 8);
  v62 = v7;
  MEMORY[0x28223BE20](v7);
  v60 = &v40 - v8;
  v65 = v3;
  v66 = v4;
  v67 = v5;
  v68 = v6;
  v9 = type metadata accessor for MLS.IncomingResendApplicationMessage(0, &v65);
  v58 = *(v9 - 8);
  v59 = v9;
  MEMORY[0x28223BE20](v9);
  v57 = &v40 - v10;
  v65 = v3;
  v66 = v4;
  v67 = v5;
  v68 = v6;
  v11 = type metadata accessor for MLS.IncomingApplicationSignatureVerified(0, &v65);
  v55 = *(v11 - 8);
  v56 = v11;
  MEMORY[0x28223BE20](v11);
  v54 = &v40 - v12;
  v65 = v3;
  v66 = v4;
  v67 = v5;
  v68 = v6;
  v13 = type metadata accessor for MLS.IncomingGroupNameChange(0, &v65);
  v52 = *(v13 - 8);
  v53 = v13;
  MEMORY[0x28223BE20](v13);
  v51 = &v40 - v14;
  v65 = v3;
  v66 = v4;
  v67 = v5;
  v68 = v6;
  v15 = type metadata accessor for MLS.IncomingDowngradeRecommended(0, &v65);
  v49 = *(v15 - 8);
  v50 = v15;
  MEMORY[0x28223BE20](v15);
  v48 = &v40 - v16;
  v65 = v3;
  v66 = v4;
  v67 = v5;
  v68 = v6;
  v47 = type metadata accessor for MLS.IncomingSelfKicked(0, &v65);
  v46 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v45 = &v40 - v17;
  v65 = v3;
  v66 = v4;
  v67 = v5;
  v68 = v6;
  v44 = type metadata accessor for MLS.IncomingMemberKicked(0, &v65);
  v43 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v42 = &v40 - v18;
  v65 = v3;
  v66 = v4;
  v67 = v5;
  v68 = v6;
  v19 = type metadata accessor for MLS.IncomingMemberAdded(0, &v65);
  v41 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v21 = &v40 - v20;
  v65 = v3;
  v66 = v4;
  v67 = v5;
  v68 = v6;
  v22 = type metadata accessor for MLS.IncomingGroupCreated(0, &v65);
  v40 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v24 = &v40 - v23;
  v65 = v3;
  v66 = v4;
  v67 = v5;
  v68 = v6;
  v25 = type metadata accessor for MLS.IncomingApplicationMessage(0, &v65);
  v26 = *(v25 - 8);
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v40 - v28;
  MEMORY[0x28223BE20](v27);
  v31 = &v40 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v32 + 16))(v31, v63, a1);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 6)
    {
      if (EnumCaseMultiPayload == 5)
      {
        v35 = v48;
        v34 = v49;
        v36 = v50;
        (*(v49 + 32))(v48, v31, v50);
      }

      else
      {
        v35 = v51;
        v34 = v52;
        v36 = v53;
        (*(v52 + 32))(v51, v31, v53);
      }
    }

    else if (EnumCaseMultiPayload == 7)
    {
      v35 = v54;
      v34 = v55;
      v36 = v56;
      (*(v55 + 32))(v54, v31, v56);
    }

    else if (EnumCaseMultiPayload == 8)
    {
      v35 = v57;
      v34 = v58;
      v36 = v59;
      (*(v58 + 32))(v57, v31, v59);
    }

    else
    {
      v35 = v60;
      v34 = v61;
      v36 = v62;
      (*(v61 + 32))(v60, v31, v62);
    }

LABEL_20:
    (*(*(v3 - 8) + 16))(v64, &v35[*(v36 + 52)], v3);
    return (*(v34 + 8))(v35, v36);
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v38 = v41;
      (*(v41 + 32))(v21, v31, v19);
      (*(*(v3 - 8) + 16))(v64, &v21[*(v19 + 52)], v3);
      return (*(v38 + 8))(v21, v19);
    }

    if (EnumCaseMultiPayload == 3)
    {
      v34 = v43;
      v35 = v42;
      v36 = v44;
      (*(v43 + 32))(v42, v31, v44);
    }

    else
    {
      v34 = v46;
      v35 = v45;
      v36 = v47;
      (*(v46 + 32))(v45, v31, v47);
    }

    goto LABEL_20;
  }

  if (EnumCaseMultiPayload)
  {
    v39 = v40;
    (*(v40 + 32))(v24, v31, v22);
    (*(*(v3 - 8) + 16))(v64, &v24[*(v22 + 52)], v3);
    return (*(v39 + 8))(v24, v22);
  }

  else
  {
    (*(v26 + 32))(v29, v31, v25);
    (*(*(v3 - 8) + 16))(v64, &v29[*(v25 + 52)], v3);
    return (*(v26 + 8))(v29, v25);
  }
}

Swift::Int MLS.IncomingEventType.MatchableType.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x266754DE0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MLS.IncomingEventType<A, B>.MatchableType(uint64_t a1)
{
  Hasher.init(_seed:)();
  MLS.IncomingEventType.MatchableType.hash(into:)();
  return Hasher._finalize()();
}

BOOL MLS.IncomingEventType.matches(_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  v5 = MEMORY[0x28223BE20](a1);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v5;
  (*(v4 + 16))(v7, v2, a2);
  v9 = v8 == swift_getEnumCaseMultiPayload();
  (*(v4 + 8))(v7, a2);
  return v9;
}

uint64_t MLS.IncomingEventType.innerEvent.getter@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  MEMORY[0x28223BE20](a1);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v8 = a1[3];
  v10 = a1[4];
  v9 = a1[5];
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 6)
    {
      v14 = a1[2];
      v15 = v8;
      v16 = v10;
      v17 = v9;
      if (EnumCaseMultiPayload == 5)
      {
        v11 = type metadata accessor for MLS.IncomingDowngradeRecommended(0, &v14);
      }

      else
      {
        v11 = type metadata accessor for MLS.IncomingGroupNameChange(0, &v14);
      }
    }

    else if (EnumCaseMultiPayload == 7)
    {
      v14 = a1[2];
      v15 = v8;
      v16 = v10;
      v17 = v9;
      v11 = type metadata accessor for MLS.IncomingApplicationSignatureVerified(0, &v14);
    }

    else
    {
      v14 = a1[2];
      v15 = v8;
      v16 = v10;
      v17 = v9;
      if (EnumCaseMultiPayload == 8)
      {
        v11 = type metadata accessor for MLS.IncomingResendApplicationMessage(0, &v14);
      }

      else
      {
        v11 = type metadata accessor for MLS.IncomingInternalStateUpdated(0, &v14);
      }
    }
  }

  else if (EnumCaseMultiPayload <= 1)
  {
    v14 = a1[2];
    v15 = v8;
    v16 = v10;
    v17 = v9;
    if (EnumCaseMultiPayload)
    {
      v11 = type metadata accessor for MLS.IncomingGroupCreated(0, &v14);
    }

    else
    {
      v11 = type metadata accessor for MLS.IncomingApplicationMessage(0, &v14);
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    v14 = a1[2];
    v15 = v8;
    v16 = v10;
    v17 = v9;
    v11 = type metadata accessor for MLS.IncomingMemberAdded(0, &v14);
  }

  else
  {
    v14 = a1[2];
    v15 = v8;
    v16 = v10;
    v17 = v9;
    if (EnumCaseMultiPayload == 3)
    {
      v11 = type metadata accessor for MLS.IncomingMemberKicked(0, &v14);
    }

    else
    {
      v11 = type metadata accessor for MLS.IncomingSelfKicked(0, &v14);
    }
  }

  a2[3] = v11;
  a2[4] = swift_getWitnessTable();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  return (*(*(v11 - 8) + 32))(boxed_opaque_existential_1, v5, v11);
}

uint64_t MLS.IncomingEventType.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000012 && 0x80000002651E8470 == a2;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65724370756F7267 && a2 == 0xEC00000064657461 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64417265626D656DLL && a2 == 0xEB00000000646564 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x694B7265626D656DLL && a2 == 0xEC00000064656B63 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6B63694B666C6573 && a2 == 0xEA00000000006465 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000014 && 0x80000002651E8490 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6D614E70756F7267 && a2 == 0xEF65676E61684365 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000002651E84B0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000018 && 0x80000002651E84D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000014 && 0x80000002651E84F0 == a2)
  {

    return 9;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t MLS.IncomingEventType.CodingKeys.stringValue.getter(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0xD000000000000018;
    if (a1 != 8)
    {
      v5 = 0xD000000000000014;
    }

    if (a1 == 7)
    {
      v5 = 0xD00000000000001CLL;
    }

    v6 = 0xD000000000000014;
    if (a1 != 5)
    {
      v6 = 0x6D614E70756F7267;
    }

    if (a1 <= 6u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x65724370756F7267;
    v2 = 0x64417265626D656DLL;
    v3 = 0x694B7265626D656DLL;
    if (a1 != 3)
    {
      v3 = 0x6B63694B666C6573;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (!a1)
    {
      v1 = 0xD000000000000012;
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

uint64_t MLS.IncomingEventType.ApplicationMessageCodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.IncomingEventType<A, B>.ApplicationMessageCodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.IncomingEventType<A, B>.ApplicationMessageCodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MLS.IncomingEventType<A, B>.ApplicationMessageCodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = MLS.IncomingEventType.ApplicationMessageCodingKeys.init(stringValue:)(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.IncomingEventType<A, B>.ApplicationSignatureVerifiedCodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.IncomingEventType<A, B>.ApplicationSignatureVerifiedCodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.IncomingEventType<A, B>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.IncomingEventType<A, B>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.IncomingEventType<A, B>.DowngradeRecommendedCodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.IncomingEventType<A, B>.DowngradeRecommendedCodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.IncomingEventType<A, B>.GroupCreatedCodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.IncomingEventType<A, B>.GroupCreatedCodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.IncomingEventType<A, B>.GroupNameChangeCodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.IncomingEventType<A, B>.GroupNameChangeCodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.IncomingEventType<A, B>.InternalStateUpdatedCodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.IncomingEventType<A, B>.InternalStateUpdatedCodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.IncomingEventType<A, B>.MemberAddedCodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.IncomingEventType<A, B>.MemberAddedCodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.IncomingEventType<A, B>.MemberKickedCodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.IncomingEventType<A, B>.MemberKickedCodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.IncomingEventType<A, B>.ResendApplicationMessageCodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.IncomingEventType<A, B>.ResendApplicationMessageCodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance MLS.IncomingEventType<A, B>.ApplicationMessageCodingKeys()
{
  Hasher.init(_seed:)();
  MEMORY[0x266754DE0](0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MLS.IncomingEventType<A, B>.ApplicationMessageCodingKeys(uint64_t a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x266754DE0](0);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance MLS.IncomingEventType<A, B>.ApplicationMessageCodingKeys@<X0>(void *a1@<X1>, uint64_t (*a2)(void, void, void, void)@<X3>, _BYTE *a3@<X8>)
{
  result = a2(a1[2], a1[3], a1[4], a1[5]);
  *a3 = result & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.IncomingEventType<A, B>.SelfKickedCodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.IncomingEventType<A, B>.SelfKickedCodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t MLS.IncomingEventType.encode(to:)(void *a1, void *a2)
{
  v147 = a1;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  v151 = a2[2];
  v3 = v151;
  v152 = v4;
  v153 = v5;
  v154 = v6;
  v7 = type metadata accessor for MLS.IncomingEventType.InternalStateUpdatedCodingKeys(255, &v151);
  WitnessTable = swift_getWitnessTable();
  v141 = v7;
  v8 = type metadata accessor for KeyedEncodingContainer();
  v145 = *(v8 - 8);
  v146 = v8;
  MEMORY[0x28223BE20](v8);
  v143 = v69 - v9;
  v151 = v3;
  v152 = v4;
  v153 = v5;
  v154 = v6;
  v144 = type metadata accessor for MLS.IncomingInternalStateUpdated(0, &v151);
  v142 = *(v144 - 8);
  MEMORY[0x28223BE20](v144);
  v139 = v69 - v10;
  v151 = v3;
  v152 = v4;
  v153 = v5;
  v154 = v6;
  v11 = type metadata accessor for MLS.IncomingEventType.ResendApplicationMessageCodingKeys(255, &v151);
  v12 = swift_getWitnessTable();
  v133 = v11;
  v132 = v12;
  v13 = type metadata accessor for KeyedEncodingContainer();
  v137 = *(v13 - 8);
  v138 = v13;
  MEMORY[0x28223BE20](v13);
  v135 = v69 - v14;
  v151 = v3;
  v152 = v4;
  v153 = v5;
  v154 = v6;
  v136 = type metadata accessor for MLS.IncomingResendApplicationMessage(0, &v151);
  v134 = *(v136 - 8);
  MEMORY[0x28223BE20](v136);
  v131 = v69 - v15;
  v151 = v3;
  v152 = v4;
  v153 = v5;
  v154 = v6;
  v16 = type metadata accessor for MLS.IncomingEventType.ApplicationSignatureVerifiedCodingKeys(255, &v151);
  v17 = swift_getWitnessTable();
  v125 = v16;
  v124 = v17;
  v130 = type metadata accessor for KeyedEncodingContainer();
  v129 = *(v130 - 8);
  MEMORY[0x28223BE20](v130);
  v127 = v69 - v18;
  v151 = v3;
  v152 = v4;
  v153 = v5;
  v154 = v6;
  v128 = type metadata accessor for MLS.IncomingApplicationSignatureVerified(0, &v151);
  v126 = *(v128 - 8);
  MEMORY[0x28223BE20](v128);
  v123 = v69 - v19;
  v151 = v3;
  v152 = v4;
  v153 = v5;
  v154 = v6;
  v20 = type metadata accessor for MLS.IncomingEventType.GroupNameChangeCodingKeys(255, &v151);
  v21 = swift_getWitnessTable();
  v117 = v20;
  v116 = v21;
  v122 = type metadata accessor for KeyedEncodingContainer();
  v121 = *(v122 - 8);
  MEMORY[0x28223BE20](v122);
  v119 = v69 - v22;
  v151 = v3;
  v152 = v4;
  v153 = v5;
  v154 = v6;
  v120 = type metadata accessor for MLS.IncomingGroupNameChange(0, &v151);
  v118 = *(v120 - 8);
  MEMORY[0x28223BE20](v120);
  v115 = v69 - v23;
  v151 = v3;
  v152 = v4;
  v153 = v5;
  v154 = v6;
  v24 = type metadata accessor for MLS.IncomingEventType.DowngradeRecommendedCodingKeys(255, &v151);
  v25 = swift_getWitnessTable();
  v109 = v24;
  v108 = v25;
  v114 = type metadata accessor for KeyedEncodingContainer();
  v113 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v111 = v69 - v26;
  v151 = v3;
  v152 = v4;
  v153 = v5;
  v154 = v6;
  v112 = type metadata accessor for MLS.IncomingDowngradeRecommended(0, &v151);
  v110 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v107 = v69 - v27;
  v151 = v3;
  v152 = v4;
  v153 = v5;
  v154 = v6;
  v28 = type metadata accessor for MLS.IncomingEventType.SelfKickedCodingKeys(255, &v151);
  v29 = swift_getWitnessTable();
  v101 = v28;
  v100 = v29;
  v106 = type metadata accessor for KeyedEncodingContainer();
  v105 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v103 = v69 - v30;
  v151 = v3;
  v152 = v4;
  v153 = v5;
  v154 = v6;
  v104 = type metadata accessor for MLS.IncomingSelfKicked(0, &v151);
  v102 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v99 = v69 - v31;
  v151 = v3;
  v152 = v4;
  v153 = v5;
  v154 = v6;
  v32 = type metadata accessor for MLS.IncomingEventType.MemberKickedCodingKeys(255, &v151);
  v33 = swift_getWitnessTable();
  v93 = v32;
  v92 = v33;
  v98 = type metadata accessor for KeyedEncodingContainer();
  v97 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v95 = v69 - v34;
  v151 = v3;
  v152 = v4;
  v153 = v5;
  v154 = v6;
  v96 = type metadata accessor for MLS.IncomingMemberKicked(0, &v151);
  v94 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v91 = v69 - v35;
  v151 = v3;
  v152 = v4;
  v153 = v5;
  v154 = v6;
  v36 = type metadata accessor for MLS.IncomingEventType.MemberAddedCodingKeys(255, &v151);
  v37 = swift_getWitnessTable();
  v85 = v36;
  v84 = v37;
  v90 = type metadata accessor for KeyedEncodingContainer();
  v89 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v87 = v69 - v38;
  v151 = v3;
  v152 = v4;
  v153 = v5;
  v154 = v6;
  v88 = type metadata accessor for MLS.IncomingMemberAdded(0, &v151);
  v86 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v83 = v69 - v39;
  v151 = v3;
  v152 = v4;
  v153 = v5;
  v154 = v6;
  v40 = type metadata accessor for MLS.IncomingEventType.GroupCreatedCodingKeys(255, &v151);
  v41 = swift_getWitnessTable();
  v77 = v40;
  v76 = v41;
  v82 = type metadata accessor for KeyedEncodingContainer();
  v81 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v79 = v69 - v42;
  v151 = v3;
  v152 = v4;
  v153 = v5;
  v154 = v6;
  v80 = type metadata accessor for MLS.IncomingGroupCreated(0, &v151);
  v78 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v75 = v69 - v43;
  v151 = v3;
  v152 = v4;
  v153 = v5;
  v154 = v6;
  type metadata accessor for MLS.IncomingEventType.ApplicationMessageCodingKeys(255, &v151);
  v69[1] = swift_getWitnessTable();
  v74 = type metadata accessor for KeyedEncodingContainer();
  v73 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v71 = v69 - v44;
  v151 = v3;
  v152 = v4;
  v153 = v5;
  v154 = v6;
  v72 = type metadata accessor for MLS.IncomingApplicationMessage(0, &v151);
  v70 = *(v72 - 8);
  v45 = MEMORY[0x28223BE20](v72);
  v69[0] = v69 - v46;
  v47 = *(a2 - 1);
  MEMORY[0x28223BE20](v45);
  v49 = v69 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = v3;
  v152 = v4;
  v153 = v5;
  v154 = v6;
  type metadata accessor for MLS.IncomingEventType.CodingKeys(255, &v151);
  swift_getWitnessTable();
  v50 = type metadata accessor for KeyedEncodingContainer();
  v149 = *(v50 - 8);
  v150 = v50;
  MEMORY[0x28223BE20](v50);
  v52 = (v69 - v51);
  __swift_project_boxed_opaque_existential_1(v147, v147[3]);
  v147 = v52;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  (*(v47 + 16))(v49, v148, a2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 6)
    {
      v54 = v147;
      if (EnumCaseMultiPayload == 5)
      {
        v55 = v110;
        v56 = v107;
        v57 = v112;
        (*(v110 + 32))(v107, v49, v112);
        LOBYTE(v151) = 5;
        v58 = v111;
        v59 = v150;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        swift_getWitnessTable();
        v60 = v114;
        KeyedEncodingContainer.encode<A>(_:forKey:)();
        v61 = &v145;
      }

      else
      {
        v55 = v118;
        v56 = v115;
        v57 = v120;
        (*(v118 + 32))(v115, v49, v120);
        LOBYTE(v151) = 6;
        v58 = v119;
        v59 = v150;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        swift_getWitnessTable();
        v60 = v122;
        KeyedEncodingContainer.encode<A>(_:forKey:)();
        v61 = &v153;
      }
    }

    else
    {
      v54 = v147;
      if (EnumCaseMultiPayload != 7)
      {
        if (EnumCaseMultiPayload == 8)
        {
          v55 = v134;
          v56 = v131;
          v57 = v136;
          (*(v134 + 32))(v131, v49, v136);
          LOBYTE(v151) = 8;
          v58 = v135;
          v59 = v150;
          KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          swift_getWitnessTable();
          v60 = v138;
          KeyedEncodingContainer.encode<A>(_:forKey:)();
          v62 = v137;
        }

        else
        {
          v55 = v142;
          v56 = v139;
          v57 = v144;
          (*(v142 + 32))(v139, v49, v144);
          LOBYTE(v151) = 9;
          v58 = v143;
          v59 = v150;
          KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          swift_getWitnessTable();
          v60 = v146;
          KeyedEncodingContainer.encode<A>(_:forKey:)();
          v62 = v145;
        }

        goto LABEL_21;
      }

      v55 = v126;
      v56 = v123;
      v57 = v128;
      (*(v126 + 32))(v123, v49, v128);
      LOBYTE(v151) = 7;
      v58 = v127;
      v59 = v150;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      swift_getWitnessTable();
      v60 = v130;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v61 = &v155;
    }

LABEL_20:
    v62 = *(v61 - 32);
LABEL_21:
    (*(v62 + 8))(v58, v60);
    (*(v55 + 8))(v56, v57);
    return (*(v149 + 8))(v54, v59);
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v55 = v86;
      v56 = v83;
      v57 = v88;
      (*(v86 + 32))(v83, v49, v88);
      LOBYTE(v151) = 2;
      v58 = v87;
      v59 = v150;
      v54 = v147;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      swift_getWitnessTable();
      v60 = v90;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v61 = &v121;
    }

    else
    {
      v54 = v147;
      if (EnumCaseMultiPayload == 3)
      {
        v55 = v94;
        v56 = v91;
        v57 = v96;
        (*(v94 + 32))(v91, v49, v96);
        LOBYTE(v151) = 3;
        v58 = v95;
        v59 = v150;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        swift_getWitnessTable();
        v60 = v98;
        KeyedEncodingContainer.encode<A>(_:forKey:)();
        v61 = &v129;
      }

      else
      {
        v55 = v102;
        v56 = v99;
        v57 = v104;
        (*(v102 + 32))(v99, v49, v104);
        LOBYTE(v151) = 4;
        v58 = v103;
        v59 = v150;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        swift_getWitnessTable();
        v60 = v106;
        KeyedEncodingContainer.encode<A>(_:forKey:)();
        v61 = &v137;
      }
    }

    goto LABEL_20;
  }

  if (EnumCaseMultiPayload)
  {
    v55 = v78;
    v56 = v75;
    v57 = v80;
    (*(v78 + 32))(v75, v49, v80);
    LOBYTE(v151) = 1;
    v58 = v79;
    v59 = v150;
    v54 = v147;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    swift_getWitnessTable();
    v60 = v82;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v61 = &v113;
    goto LABEL_20;
  }

  v63 = v70;
  v64 = v69[0];
  v65 = v72;
  (*(v70 + 32))(v69[0], v49, v72);
  LOBYTE(v151) = 0;
  v66 = v71;
  v59 = v150;
  v54 = v147;
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  swift_getWitnessTable();
  v67 = v74;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  (*(v73 + 8))(v66, v67);
  (*(v63 + 8))(v64, v65);
  return (*(v149 + 8))(v54, v59);
}

uint64_t MLS.IncomingEventType.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v179 = a6;
  *&v193 = a2;
  *(&v193 + 1) = a3;
  *&v194 = a4;
  *(&v194 + 1) = a5;
  v168 = type metadata accessor for MLS.IncomingEventType.InternalStateUpdatedCodingKeys(255, &v193);
  WitnessTable = swift_getWitnessTable();
  v147 = type metadata accessor for KeyedDecodingContainer();
  v146 = *(v147 - 8);
  MEMORY[0x28223BE20](v147);
  v177 = &v117 - v11;
  *&v193 = a2;
  *(&v193 + 1) = a3;
  *&v194 = a4;
  *(&v194 + 1) = a5;
  v12 = type metadata accessor for MLS.IncomingEventType.ResendApplicationMessageCodingKeys(255, &v193);
  v13 = swift_getWitnessTable();
  v166 = v12;
  v165 = v13;
  v145 = type metadata accessor for KeyedDecodingContainer();
  v144 = *(v145 - 8);
  MEMORY[0x28223BE20](v145);
  v176 = &v117 - v14;
  *&v193 = a2;
  *(&v193 + 1) = a3;
  *&v194 = a4;
  *(&v194 + 1) = a5;
  v15 = type metadata accessor for MLS.IncomingEventType.ApplicationSignatureVerifiedCodingKeys(255, &v193);
  v16 = swift_getWitnessTable();
  v164 = v15;
  v163 = v16;
  v143 = type metadata accessor for KeyedDecodingContainer();
  v142 = *(v143 - 8);
  MEMORY[0x28223BE20](v143);
  v175 = &v117 - v17;
  *&v193 = a2;
  *(&v193 + 1) = a3;
  *&v194 = a4;
  *(&v194 + 1) = a5;
  v18 = type metadata accessor for MLS.IncomingEventType.GroupNameChangeCodingKeys(255, &v193);
  v19 = swift_getWitnessTable();
  v162 = v18;
  v161 = v19;
  v141 = type metadata accessor for KeyedDecodingContainer();
  v140 = *(v141 - 8);
  MEMORY[0x28223BE20](v141);
  v174 = &v117 - v20;
  *&v193 = a2;
  *(&v193 + 1) = a3;
  *&v194 = a4;
  *(&v194 + 1) = a5;
  v21 = type metadata accessor for MLS.IncomingEventType.DowngradeRecommendedCodingKeys(255, &v193);
  v22 = swift_getWitnessTable();
  v160 = v21;
  v159 = v22;
  v139 = type metadata accessor for KeyedDecodingContainer();
  v138 = *(v139 - 8);
  MEMORY[0x28223BE20](v139);
  v173 = &v117 - v23;
  *&v193 = a2;
  *(&v193 + 1) = a3;
  *&v194 = a4;
  *(&v194 + 1) = a5;
  v24 = type metadata accessor for MLS.IncomingEventType.SelfKickedCodingKeys(255, &v193);
  v25 = swift_getWitnessTable();
  v158 = v24;
  v157 = v25;
  v137 = type metadata accessor for KeyedDecodingContainer();
  v136 = *(v137 - 8);
  MEMORY[0x28223BE20](v137);
  v172 = &v117 - v26;
  *&v193 = a2;
  *(&v193 + 1) = a3;
  *&v194 = a4;
  *(&v194 + 1) = a5;
  v27 = type metadata accessor for MLS.IncomingEventType.MemberKickedCodingKeys(255, &v193);
  v28 = swift_getWitnessTable();
  v156 = v27;
  v155 = v28;
  v135 = type metadata accessor for KeyedDecodingContainer();
  v134 = *(v135 - 8);
  MEMORY[0x28223BE20](v135);
  v171 = &v117 - v29;
  *&v193 = a2;
  *(&v193 + 1) = a3;
  *&v194 = a4;
  *(&v194 + 1) = a5;
  v30 = type metadata accessor for MLS.IncomingEventType.MemberAddedCodingKeys(255, &v193);
  v31 = swift_getWitnessTable();
  v154 = v30;
  v153 = v31;
  v133 = type metadata accessor for KeyedDecodingContainer();
  v132 = *(v133 - 8);
  MEMORY[0x28223BE20](v133);
  v170 = &v117 - v32;
  *&v193 = a2;
  *(&v193 + 1) = a3;
  *&v194 = a4;
  *(&v194 + 1) = a5;
  v33 = type metadata accessor for MLS.IncomingEventType.GroupCreatedCodingKeys(255, &v193);
  v34 = swift_getWitnessTable();
  v152 = v33;
  v151 = v34;
  v131 = type metadata accessor for KeyedDecodingContainer();
  v130 = *(v131 - 8);
  MEMORY[0x28223BE20](v131);
  v169 = &v117 - v35;
  *&v193 = a2;
  *(&v193 + 1) = a3;
  *&v194 = a4;
  *(&v194 + 1) = a5;
  v36 = type metadata accessor for MLS.IncomingEventType.ApplicationMessageCodingKeys(255, &v193);
  v37 = swift_getWitnessTable();
  v149 = v36;
  v148 = v37;
  v129 = type metadata accessor for KeyedDecodingContainer();
  v128 = *(v129 - 8);
  MEMORY[0x28223BE20](v129);
  v150 = &v117 - v38;
  *&v193 = a2;
  *(&v193 + 1) = a3;
  *&v194 = a4;
  *(&v194 + 1) = a5;
  v39 = type metadata accessor for MLS.IncomingEventType.CodingKeys(255, &v193);
  v190 = swift_getWitnessTable();
  v187 = type metadata accessor for KeyedDecodingContainer();
  v182 = *(v187 - 8);
  MEMORY[0x28223BE20](v187);
  v41 = &v117 - v40;
  v184 = a2;
  v185 = a3;
  *&v193 = a2;
  *(&v193 + 1) = a3;
  v186 = a4;
  *&v194 = a4;
  *(&v194 + 1) = a5;
  v178 = a5;
  v181 = type metadata accessor for MLS.IncomingEventType(0, &v193);
  v180 = *(v181 - 8);
  v42 = MEMORY[0x28223BE20](v181);
  v127 = &v117 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = MEMORY[0x28223BE20](v42);
  v126 = &v117 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  v125 = &v117 - v47;
  v48 = MEMORY[0x28223BE20](v46);
  v124 = &v117 - v49;
  v50 = MEMORY[0x28223BE20](v48);
  v123 = &v117 - v51;
  v52 = MEMORY[0x28223BE20](v50);
  v122 = &v117 - v53;
  v54 = MEMORY[0x28223BE20](v52);
  v56 = &v117 - v55;
  v57 = MEMORY[0x28223BE20](v54);
  v59 = &v117 - v58;
  v60 = MEMORY[0x28223BE20](v57);
  v62 = &v117 - v61;
  v63 = MEMORY[0x28223BE20](v60);
  v65 = &v117 - v64;
  MEMORY[0x28223BE20](v63);
  v67 = &v117 - v66;
  v68 = a1;
  v69 = a1[3];
  v189 = v68;
  __swift_project_boxed_opaque_existential_1(v68, v69);
  v188 = v41;
  *&v183 = v39;
  v70 = v195;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v70)
  {
    v118 = v62;
    v119 = v59;
    v120 = v56;
    v121 = v65;
    v72 = v184;
    v71 = v185;
    v73 = v186;
    v190 = v67;
    v195 = 0;
    *&v191 = KeyedDecodingContainer.allKeys.getter();
    type metadata accessor for Array();
    swift_getWitnessTable();
    *&v193 = ArraySlice.init<A>(_:)();
    *(&v193 + 1) = v74;
    *&v194 = v75;
    *(&v194 + 1) = v76;
    type metadata accessor for ArraySlice();
    swift_getWitnessTable();
    Collection<>.popFirst()();
    v77 = v191;
    if (v191 == 10 || (v183 = v193, v191 = v193, v192 = v194, (Collection.isEmpty.getter() & 1) == 0))
    {
      v87 = type metadata accessor for DecodingError();
      swift_allocError();
      v89 = v88;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
      *v89 = v181;
      v91 = v187;
      v90 = v188;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v87 - 8) + 104))(v89, *MEMORY[0x277D84160], v87);
      swift_willThrow();
      (*(v182 + 8))(v90, v91);
    }

    else
    {
      if (v77 > 4)
      {
        v81 = v179;
        v92 = v195;
        v79 = v187;
        v80 = v180;
        if (v77 <= 6)
        {
          if (v77 == 5)
          {
            LOBYTE(v191) = 5;
            v82 = v188;
            KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
            if (!v92)
            {
              *&v191 = v72;
              *(&v191 + 1) = v71;
              *&v192 = v73;
              *(&v192 + 1) = v178;
              type metadata accessor for MLS.IncomingDowngradeRecommended(0, &v191);
              swift_getWitnessTable();
              v83 = v123;
              v98 = v139;
              v99 = v173;
              KeyedDecodingContainer.decode<A>(_:forKey:)();
              (*(v138 + 8))(v99, v98);
              (*(v182 + 8))(v188, v79);
              swift_unknownObjectRelease();
              v86 = v181;
              goto LABEL_38;
            }
          }

          else
          {
            LOBYTE(v191) = 6;
            v82 = v188;
            KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
            if (!v92)
            {
              *&v191 = v72;
              *(&v191 + 1) = v71;
              *&v192 = v73;
              *(&v192 + 1) = v178;
              type metadata accessor for MLS.IncomingGroupNameChange(0, &v191);
              swift_getWitnessTable();
              v83 = v124;
              v110 = v141;
              v111 = v174;
              KeyedDecodingContainer.decode<A>(_:forKey:)();
              (*(v140 + 8))(v111, v110);
              (*(v182 + 8))(v188, v79);
              swift_unknownObjectRelease();
              v86 = v181;
              goto LABEL_38;
            }
          }
        }

        else if (v77 == 7)
        {
          LOBYTE(v191) = 7;
          v82 = v188;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          if (!v92)
          {
            *&v191 = v72;
            *(&v191 + 1) = v71;
            *&v192 = v73;
            *(&v192 + 1) = v178;
            type metadata accessor for MLS.IncomingApplicationSignatureVerified(0, &v191);
            swift_getWitnessTable();
            v83 = v125;
            v102 = v143;
            v103 = v175;
            KeyedDecodingContainer.decode<A>(_:forKey:)();
            (*(v142 + 8))(v103, v102);
            (*(v182 + 8))(v188, v79);
            swift_unknownObjectRelease();
            v86 = v181;
            goto LABEL_38;
          }
        }

        else if (v77 == 8)
        {
          LOBYTE(v191) = 8;
          v82 = v188;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          if (!v92)
          {
            *&v191 = v72;
            *(&v191 + 1) = v71;
            *&v192 = v73;
            *(&v192 + 1) = v178;
            type metadata accessor for MLS.IncomingResendApplicationMessage(0, &v191);
            swift_getWitnessTable();
            v83 = v126;
            v93 = v145;
            v94 = v176;
            KeyedDecodingContainer.decode<A>(_:forKey:)();
            (*(v144 + 8))(v94, v93);
            (*(v182 + 8))(v188, v79);
            swift_unknownObjectRelease();
            v86 = v181;
            goto LABEL_38;
          }
        }

        else
        {
          LOBYTE(v191) = 9;
          v82 = v188;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          if (!v92)
          {
            *&v191 = v72;
            *(&v191 + 1) = v71;
            *&v192 = v73;
            *(&v192 + 1) = v178;
            type metadata accessor for MLS.IncomingInternalStateUpdated(0, &v191);
            swift_getWitnessTable();
            v83 = v127;
            v106 = v147;
            v107 = v177;
            KeyedDecodingContainer.decode<A>(_:forKey:)();
            (*(v146 + 8))(v107, v106);
            (*(v182 + 8))(v188, v79);
            swift_unknownObjectRelease();
            v86 = v181;
            goto LABEL_38;
          }
        }
      }

      else
      {
        v78 = v195;
        v79 = v187;
        v80 = v180;
        if (v77 <= 1)
        {
          if (v77)
          {
            LOBYTE(v191) = 1;
            v82 = v188;
            KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
            v81 = v179;
            if (!v78)
            {
              *&v191 = v72;
              *(&v191 + 1) = v71;
              *&v192 = v73;
              *(&v192 + 1) = v178;
              type metadata accessor for MLS.IncomingGroupCreated(0, &v191);
              swift_getWitnessTable();
              v83 = v118;
              v108 = v131;
              v109 = v169;
              KeyedDecodingContainer.decode<A>(_:forKey:)();
              (*(v130 + 8))(v109, v108);
              (*(v182 + 8))(v188, v79);
              swift_unknownObjectRelease();
              v86 = v181;
              goto LABEL_38;
            }
          }

          else
          {
            LOBYTE(v191) = 0;
            v95 = v150;
            v82 = v188;
            KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
            if (!v78)
            {
              *&v191 = v72;
              *(&v191 + 1) = v71;
              *&v192 = v73;
              *(&v192 + 1) = v178;
              type metadata accessor for MLS.IncomingApplicationMessage(0, &v191);
              swift_getWitnessTable();
              v83 = v121;
              v96 = v129;
              KeyedDecodingContainer.decode<A>(_:forKey:)();
              v97 = v182;
              (*(v128 + 8))(v95, v96);
              (*(v97 + 8))(v188, v79);
              swift_unknownObjectRelease();
              v86 = v181;
              swift_storeEnumTagMultiPayload();
              v114 = v189;
              v81 = v179;
LABEL_39:
              v115 = *(v80 + 32);
              v116 = v190;
              v115(v190, v83, v86);
              v115(v81, v116, v86);
              v112 = v114;
              return __swift_destroy_boxed_opaque_existential_1Tm(v112);
            }
          }
        }

        else if (v77 == 2)
        {
          LOBYTE(v191) = 2;
          v82 = v188;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v81 = v179;
          if (!v78)
          {
            *&v191 = v72;
            *(&v191 + 1) = v71;
            *&v192 = v73;
            *(&v192 + 1) = v178;
            type metadata accessor for MLS.IncomingMemberAdded(0, &v191);
            swift_getWitnessTable();
            v83 = v119;
            v100 = v133;
            v101 = v170;
            KeyedDecodingContainer.decode<A>(_:forKey:)();
            (*(v132 + 8))(v101, v100);
            (*(v182 + 8))(v188, v79);
            swift_unknownObjectRelease();
            v86 = v181;
            goto LABEL_38;
          }
        }

        else
        {
          v81 = v179;
          if (v77 == 3)
          {
            LOBYTE(v191) = 3;
            v82 = v188;
            KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
            if (!v78)
            {
              *&v191 = v72;
              *(&v191 + 1) = v71;
              *&v192 = v73;
              *(&v192 + 1) = v178;
              type metadata accessor for MLS.IncomingMemberKicked(0, &v191);
              swift_getWitnessTable();
              v83 = v120;
              v84 = v135;
              v85 = v171;
              KeyedDecodingContainer.decode<A>(_:forKey:)();
              (*(v134 + 8))(v85, v84);
              (*(v182 + 8))(v188, v79);
              swift_unknownObjectRelease();
              v86 = v181;
LABEL_38:
              swift_storeEnumTagMultiPayload();
              v114 = v189;
              goto LABEL_39;
            }
          }

          else
          {
            LOBYTE(v191) = 4;
            v82 = v188;
            KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
            if (!v78)
            {
              *&v191 = v72;
              *(&v191 + 1) = v71;
              *&v192 = v73;
              *(&v192 + 1) = v178;
              type metadata accessor for MLS.IncomingSelfKicked(0, &v191);
              swift_getWitnessTable();
              v83 = v122;
              v104 = v137;
              v105 = v172;
              KeyedDecodingContainer.decode<A>(_:forKey:)();
              (*(v136 + 8))(v105, v104);
              (*(v182 + 8))(v188, v79);
              swift_unknownObjectRelease();
              v86 = v181;
              goto LABEL_38;
            }
          }
        }
      }

      (*(v182 + 8))(v82, v79);
    }

    swift_unknownObjectRelease();
  }

  v112 = v189;
  return __swift_destroy_boxed_opaque_existential_1Tm(v112);
}

uint64_t MLS.IncomingResendApplicationMessage.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7265646E6573 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F43746E65696C63 && a2 == 0xED0000747865746ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x80000002651E8510 == a2)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

unint64_t MLS.IncomingResendApplicationMessage.CodingKeys.stringValue.getter(unsigned __int8 a1)
{
  v1 = 0x696669746E656469;
  v2 = 0x6F43746E65696C63;
  if (a1 != 2)
  {
    v2 = 0xD000000000000012;
  }

  if (a1)
  {
    v1 = 0x7265646E6573;
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

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MLS.IncomingEventType<A, B>.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t (*a4)(uint64_t, uint64_t, void, void, void, void)@<X4>, _BYTE *a5@<X8>)
{
  result = a4(a1, a2, a3[2], a3[3], a3[4], a3[5]);
  *a5 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.IncomingResendApplicationMessage<A, B>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.IncomingResendApplicationMessage<A, B>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t _s15SecureMessaging3MLSO36IncomingApplicationSignatureVerifiedVy_xq_GAC0D5EventAacGP10identifierSSvgTW_0()
{
  v0 = specialized MLS.IncomingEventType.identifier.getter();

  return v0;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MLS.IncomingInternalStateUpdated<A, B>.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a4@<X8>)
{
  result = MLS.IncomingApplicationSignatureVerified.CodingKeys.init(stringValue:)(a1, a2);
  *a4 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.IncomingApplicationSignatureVerified<A, B>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.IncomingApplicationSignatureVerified<A, B>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t MLS.IncomingApplicationMessage.rawDecryptedData.getter(uint64_t a1)
{
  v2 = v1 + *(a1 + 60);
  v3 = *v2;
  outlined copy of Data._Representation(*v2, *(v2 + 8));
  return v3;
}

uint64_t MLS.IncomingApplicationMessage.messageIdentifier.getter(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 64));

  return v2;
}

uint64_t MLS.IncomingApplicationMessage.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7265646E6573 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F43746E65696C63 && a2 == 0xED0000747865746ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x80000002651E8530 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x80000002651E8550 == a2)
  {

    return 4;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t MLS.IncomingApplicationMessage.CodingKeys.stringValue.getter(unsigned __int8 a1)
{
  v1 = 0x696669746E656469;
  v2 = 0x6F43746E65696C63;
  v3 = 0xD000000000000010;
  if (a1 != 3)
  {
    v3 = 0xD000000000000011;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 0x7265646E6573;
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.IncomingApplicationMessage<A, B>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.IncomingApplicationMessage<A, B>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t MLS.IncomingApplicationMessage.encode(to:)(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *(a2 + 40);
  v18 = *(a2 + 32);
  v19 = v4;
  v22 = v4;
  v23 = v5;
  v17[0] = v6;
  v17[1] = v5;
  v24 = v18;
  v25 = v6;
  type metadata accessor for MLS.IncomingApplicationMessage.CodingKeys(255, &v22);
  swift_getWitnessTable();
  v7 = type metadata accessor for KeyedEncodingContainer();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v17 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = v7;
  v12 = v20;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v22) = 0;
  v13 = v21;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v13)
  {
    LOBYTE(v22) = 1;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v22) = 2;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v15 = (v12 + *(a2 + 60));
    v16 = v15[1];
    v22 = *v15;
    v23 = v16;
    v26 = 3;
    outlined copy of Data._Representation(v22, v16);
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    outlined consume of Data._Representation(v22, v23);
    LOBYTE(v22) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v8 + 8))(v10, v11);
}

uint64_t MLS.IncomingApplicationMessage.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v33 = a6;
  v11 = type metadata accessor for Optional();
  v36 = *(v11 - 8);
  v37 = v11;
  v12 = MEMORY[0x28223BE20](v11);
  v34 = v31 - v13;
  v38 = *(a2 - 8);
  MEMORY[0x28223BE20](v12);
  v39 = v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v46 = a2;
  *(&v46 + 1) = a3;
  v47 = a4;
  v48 = a5;
  type metadata accessor for MLS.IncomingApplicationMessage.CodingKeys(255, &v46);
  swift_getWitnessTable();
  v44 = type metadata accessor for KeyedDecodingContainer();
  v42 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v16 = v31 - v15;
  *&v46 = a2;
  *(&v46 + 1) = a3;
  v35 = a3;
  v40 = a4;
  v41 = a5;
  v47 = a4;
  v48 = a5;
  v17 = type metadata accessor for MLS.IncomingApplicationMessage(0, &v46);
  v32 = *(v17 - 1);
  MEMORY[0x28223BE20](v17);
  v19 = (v31 - v18);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v43 = v16;
  v20 = v45;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v20)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v21 = v39;
  v45 = a2;
  LOBYTE(v46) = 0;
  *v19 = KeyedDecodingContainer.decode(_:forKey:)();
  v19[1] = v22;
  v31[1] = v22;
  LOBYTE(v46) = 1;
  v23 = v45;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v38 + 32))(v19 + v17[13], v21, v23);
  LOBYTE(v46) = 2;
  v24 = v34;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v36 + 32))(v19 + v17[14], v24, v37);
  v49 = 3;
  lazy protocol witness table accessor for type Data and conformance Data();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *(v19 + v17[15]) = v46;
  LOBYTE(v46) = 4;
  v25 = KeyedDecodingContainer.decode(_:forKey:)();
  v27 = v26;
  (*(v42 + 8))(v43, v44);
  v28 = (v19 + v17[16]);
  *v28 = v25;
  v28[1] = v27;
  v29 = v32;
  (*(v32 + 16))(v33, v19, v17);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return (*(v29 + 8))(v19, v17);
}

uint64_t MLS.IncomingApplicationMessage.init(identifier:sender:clientContext:rawDecryptedData:messageIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  *a9 = a1;
  *(a9 + 1) = a2;
  v26[0] = a10;
  v26[1] = a11;
  v26[2] = a12;
  v26[3] = a13;
  v20 = type metadata accessor for MLS.IncomingApplicationMessage(0, v26);
  (*(*(a10 - 8) + 32))(&a9[v20[13]], a3, a10);
  v21 = v20[14];
  v22 = type metadata accessor for Optional();
  result = (*(*(v22 - 8) + 32))(&a9[v21], a4, v22);
  v24 = &a9[v20[15]];
  *v24 = a5;
  *(v24 + 1) = a6;
  v25 = &a9[v20[16]];
  *v25 = a7;
  *(v25 + 1) = a8;
  return result;
}

uint64_t MLS.IncomingGroupCreated.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7265646E6573 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F43746E65696C63 && a2 == 0xED0000747865746ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6D654D726568746FLL && a2 == 0xEC00000073726562)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}