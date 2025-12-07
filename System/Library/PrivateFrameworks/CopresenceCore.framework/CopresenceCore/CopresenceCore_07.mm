uint64_t dispatch thunk of ConversationManagerClientProtocol.createActivitySession(with:onConversationWithUUID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 48) + **(a4 + 48));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = dispatch thunk of ConversationManagerClientProtocol.createActivitySession(with:onConversationWithUUID:);

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of ConversationManagerClientProtocol.createActivitySession(with:onConversationWithUUID:)(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t dispatch thunk of ConversationManagerClientProtocol.advertiseGroupActivity(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 72) + **(a3 + 72));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of ConversationManagerClientProtocol.stopAdvertisingGroupActivity(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 80) + **(a3 + 80));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return v9(a1, a2, a3);
}

uint64_t getEnumTagSinglePayload for ConversationManagerClient.Publishers(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for ConversationManagerClient.Publishers(uint64_t result, int a2, int a3)
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

uint64_t specialized Set.subscript.getter(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 48) + 16 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

void specialized ConversationManagerClient.requestEndpoint(with:activitySessionUUID:activity:completion:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v38 = a4;
  v39 = a1;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for client != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static Log.client);
  (*(v11 + 16))(v13, a3, v10);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.info.getter();

  v17 = os_log_type_enabled(v15, v16);
  v37 = a3;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v35 = a5;
    v19 = v18;
    v20 = swift_slowAlloc();
    v36 = a6;
    v21 = v20;
    v40 = v20;
    *v19 = 136315394;
    *(v19 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, a2, &v40);
    *(v19 + 12) = 2080;
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    v24 = v23;
    (*(v11 + 8))(v13, v10);
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v24, &v40);

    *(v19 + 14) = v25;
    _os_log_impl(&dword_1AEB26000, v15, v16, "Requesting endpoint for identifier=%s activitySessionUUID=%s", v19, 0x16u);
    swift_arrayDestroy();
    v26 = v21;
    a6 = v36;
    MEMORY[0x1B27120C0](v26, -1, -1);
    v27 = v19;
    a5 = v35;
    MEMORY[0x1B27120C0](v27, -1, -1);
  }

  else
  {

    v28 = (*(v11 + 8))(v13, v10);
  }

  v29 = (*((*MEMORY[0x1E69E7D40] & *a5) + 0x148))(v28);
  if (*(v29 + 16) && (v30 = specialized __RawDictionaryStorage.find<A>(_:)(v39, a2), (v31 & 1) != 0))
  {
    v32 = *(*(v29 + 56) + 16 * v30 + 8);
    swift_unknownObjectRetain();

    ObjectType = swift_getObjectType();
    v34 = (*(v32 + 16))(v37, v38, ObjectType, v32);
    (*(a6 + 16))(a6, v34);
    swift_unknownObjectRelease();
  }

  else
  {

    (*(a6 + 16))(a6, 0);
  }
}

uint64_t objectdestroy_44Tm()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 16, v3 | 7);
}

uint64_t partial apply for closure #1 in ConversationManagerClient.topicCategory(groupUUID:name:)(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v2 + 16);
  v8 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];

  return closure #1 in ConversationManagerClient.topicCategory(groupUUID:name:)(a1, a2, v7, v2 + v6, v9, v10);
}

void partial apply for closure #1 in closure #1 in ConversationManagerClient.setDownlinkMuted(_:forRemoteParticipantsInConversationWithUUID:)(void **a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  [v3 setDownlinkMuted:v2 forRemoteParticipantsInConversationWithUUID:isa];
}

void partial apply for closure #2 in closure #1 in ConversationManagerClient.setDownlinkMuted(_:forRemoteParticipantsInConversationWithUUID:)(void *a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 17) & ~*(v3 + 80));

  closure #2 in closure #1 in ConversationManagerClient.setDownlinkMuted(_:forRemoteParticipantsInConversationWithUUID:)(a1, v4, v5);
}

void partial apply for closure #1 in closure #1 in ConversationManagerClient.kickMember(_:conversationUUID:)(void **a1, SEL *a2)
{
  v4 = *(v2 + 16);
  v5 = *a1;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  [v5 *a2];
}

uint64_t partial apply for closure #1 in closure #1 in ConversationManagerClient.createActivitySession(with:onConversationWithUUID:)()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5Error_pGMd, &_sScCySbs5Error_pGMR) - 8);
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v7 = v0 + ((v3 + *(v4 + 80)) & ~*(v4 + 80));

  return closure #1 in closure #1 in ConversationManagerClient.createActivitySession(with:onConversationWithUUID:)(v5, v6, v0 + v2, v7);
}

uint64_t partial apply for closure #2 in closure #1 in closure #1 in ConversationManagerClient.createActivitySession(with:onConversationWithUUID:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5Error_pGMd, &_sScCySbs5Error_pGMR);
  v3 = *(v1 + 16);

  return closure #2 in closure #1 in closure #1 in ConversationManagerClient.createActivitySession(with:onConversationWithUUID:)(a1, v3);
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in closure #1 in ConversationManagerClient.createActivitySession(with:onConversationWithUUID:)(char a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5Error_pGMd, &_sScCySbs5Error_pGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5Error_pGMd, &_sScCySbs5Error_pGMR);
  return CheckedContinuation.resume(returning:)();
}

void partial apply for closure #1 in closure #1 in ConversationManagerClient.topicCategory(groupUUID:name:)()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  v6 = (v0 + v3);
  v7 = *v6;
  v8 = v6[1];
  v9 = *(v0 + v4);
  v10 = *(v0 + v4 + 8);

  closure #1 in closure #1 in ConversationManagerClient.topicCategory(groupUUID:name:)(v5, (v0 + v2), v7, v8, v9, v10);
}

uint64_t objectdestroy_198Tm()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x1EEE6BDD0](v0, v9 + v10, v11 | 7);
}

uint64_t partial apply for closure #1 in closure #1 in ConversationManagerClient.stopAdvertisingGroupActivity(_:)(const char *a1, void (*a2)(uint64_t *))
{
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR) - 8);
  return closure #1 in closure #1 in ConversationManagerClient.advertiseGroupActivity(_:)(*(v2 + 16), v2 + v6, v2 + ((v7 + *(v8 + 80)) & ~*(v8 + 80)), a1, a2);
}

uint64_t objectdestroy_171Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x1EEE6BDD0](v2, v6 + v7, v5 | 7);
}

uint64_t outlined init with copy of UUID?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_97Tm(void (*a1)(void))
{
  a1(*(v1 + 24));

  return MEMORY[0x1EEE6BDD0](v1, 32, 7);
}

uint64_t one-time initialization function for latencyLogger()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static SharePlayLatencyLogger.latencyLogger);
  __swift_project_value_buffer(v0, static SharePlayLatencyLogger.latencyLogger);
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for isEnabled()
{
  result = _TUIsInternalInstall();
  static SharePlayLatencyLogger.isEnabled = result;
  return result;
}

uint64_t one-time initialization function for signposter(uint64_t a1, uint64_t (*a2)(void), uint64_t *a3, uint64_t (*a4)(unint64_t, unint64_t, unint64_t, unint64_t))
{
  v6 = a2(0);
  __swift_allocate_value_buffer(v6, a3);
  __swift_project_value_buffer(v6, a3);
  return a4(0xD00000000000001ELL, 0x80000001AEE31D40, 0xD000000000000016, 0x80000001AEE0AD40);
}

unint64_t SharePlayLatencyLogger.Event.description.getter()
{
  v1 = *v0;
  if (v1 > 5)
  {
    v5 = 0xD000000000000014;
    if (v1 == 10)
    {
      v5 = 0xD000000000000021;
    }

    if (v1 == 9)
    {
      v5 = 0xD000000000000023;
    }

    v6 = 0xD000000000000017;
    v7 = 0xD00000000000001CLL;
    if (v1 != 7)
    {
      v7 = 0xD00000000000001ELL;
    }

    if (v1 != 6)
    {
      v6 = v7;
    }

    if (*v0 <= 8u)
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
    v2 = 0x5F6E6F6973736573;
    v3 = 0xD00000000000002DLL;
    if (v1 == 4)
    {
      v3 = 0xD000000000000023;
    }

    if (v1 == 3)
    {
      v3 = 0xD000000000000014;
    }

    if (v1 != 1)
    {
      v2 = 0xD000000000000017;
    }

    if (!*v0)
    {
      v2 = 0xD000000000000017;
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
}

const char *SharePlayLatencyLogger.Event.signpostName.getter()
{
  v1 = *v0;
  if (v1 > 5)
  {
    v7 = "shareplay_latency_activity_authorization_notification";
    v8 = "shareplay_latency_launch_authorization_notification";
    if (v1 != 10)
    {
      v8 = "shareplay_latency_replace_notification";
    }

    if (v1 != 9)
    {
      v7 = v8;
    }

    v9 = "shareplay_latency_fetch_latest_containers";
    v10 = "shareplay_latency_send_containers_to_observers";
    if (v1 != 7)
    {
      v10 = "shareplay_latency_received_notification_response";
    }

    if (v1 != 6)
    {
      v9 = v10;
    }

    if (*v0 <= 8u)
    {
      return v9;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v2 = "shareplay_latency_activity_initialization";
    v3 = "shareplay_latency_app_received_session";
    v4 = "shareplay_latency_observer_requested_container_update";
    if (v1 != 4)
    {
      v4 = "shareplay_latency_container_provider_requested_container_update";
    }

    if (v1 != 3)
    {
      v3 = v4;
    }

    v5 = "shareplay_latency_session_join";
    if (v1 != 1)
    {
      v5 = "shareplay_latency_received_remote_session";
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
}

unint64_t SharePlayLatencyLogger.Event.CodingKeys.stringValue.getter(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    if (a1 > 8u)
    {
      v6 = 0xD000000000000013;
      if (a1 == 10)
      {
        v6 = 0xD00000000000001FLL;
      }

      if (a1 == 9)
      {
        return 0xD000000000000021;
      }

      else
      {
        return v6;
      }
    }

    else
    {
      v5 = 0xD000000000000019;
      if (a1 != 7)
      {
        v5 = 0xD00000000000001CLL;
      }

      if (a1 == 6)
      {
        return 0xD000000000000015;
      }

      else
      {
        return v5;
      }
    }
  }

  else
  {
    v1 = 0x4A6E6F6973736573;
    v2 = 0xD000000000000012;
    v3 = 0xD000000000000020;
    if (a1 != 4)
    {
      v3 = 0xD000000000000029;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    if (a1 != 1)
    {
      v1 = 0xD000000000000015;
    }

    if (!a1)
    {
      v1 = 0xD000000000000016;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SharePlayLatencyLogger.Event.ActivityAuthorizationNotificationCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SharePlayLatencyLogger.Event.ActivityAuthorizationNotificationCodingKeys and conformance SharePlayLatencyLogger.Event.ActivityAuthorizationNotificationCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SharePlayLatencyLogger.Event.ActivityAuthorizationNotificationCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SharePlayLatencyLogger.Event.ActivityAuthorizationNotificationCodingKeys and conformance SharePlayLatencyLogger.Event.ActivityAuthorizationNotificationCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SharePlayLatencyLogger.Event.ActivityInitializationCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SharePlayLatencyLogger.Event.ActivityInitializationCodingKeys and conformance SharePlayLatencyLogger.Event.ActivityInitializationCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SharePlayLatencyLogger.Event.ActivityInitializationCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SharePlayLatencyLogger.Event.ActivityInitializationCodingKeys and conformance SharePlayLatencyLogger.Event.ActivityInitializationCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SharePlayLatencyLogger.Event.AppReceivedSessionCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SharePlayLatencyLogger.Event.AppReceivedSessionCodingKeys and conformance SharePlayLatencyLogger.Event.AppReceivedSessionCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SharePlayLatencyLogger.Event.AppReceivedSessionCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SharePlayLatencyLogger.Event.AppReceivedSessionCodingKeys and conformance SharePlayLatencyLogger.Event.AppReceivedSessionCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance SharePlayLatencyLogger.Event.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized SharePlayLatencyLogger.Event.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SharePlayLatencyLogger.Event.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SharePlayLatencyLogger.Event.CodingKeys and conformance SharePlayLatencyLogger.Event.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SharePlayLatencyLogger.Event.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SharePlayLatencyLogger.Event.CodingKeys and conformance SharePlayLatencyLogger.Event.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SharePlayLatencyLogger.Event.ContainerProviderRequestedContainerUpdateCodingKeys(uint64_t a1)
{
  updated = lazy protocol witness table accessor for type SharePlayLatencyLogger.Event.ContainerProviderRequestedContainerUpdateCodingKeys and conformance SharePlayLatencyLogger.Event.ContainerProviderRequestedContainerUpdateCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, updated);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SharePlayLatencyLogger.Event.ContainerProviderRequestedContainerUpdateCodingKeys(uint64_t a1)
{
  updated = lazy protocol witness table accessor for type SharePlayLatencyLogger.Event.ContainerProviderRequestedContainerUpdateCodingKeys and conformance SharePlayLatencyLogger.Event.ContainerProviderRequestedContainerUpdateCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, updated);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SharePlayLatencyLogger.Event.FetchLatestContainersCodingKeys(uint64_t a1)
{
  LatestContainersCodingKeys = lazy protocol witness table accessor for type SharePlayLatencyLogger.Event.FetchLatestContainersCodingKeys and conformance SharePlayLatencyLogger.Event.FetchLatestContainersCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, LatestContainersCodingKeys);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SharePlayLatencyLogger.Event.FetchLatestContainersCodingKeys(uint64_t a1)
{
  LatestContainersCodingKeys = lazy protocol witness table accessor for type SharePlayLatencyLogger.Event.FetchLatestContainersCodingKeys and conformance SharePlayLatencyLogger.Event.FetchLatestContainersCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, LatestContainersCodingKeys);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SharePlayLatencyLogger.Event.LaunchAuthorizationNotificationCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SharePlayLatencyLogger.Event.LaunchAuthorizationNotificationCodingKeys and conformance SharePlayLatencyLogger.Event.LaunchAuthorizationNotificationCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SharePlayLatencyLogger.Event.LaunchAuthorizationNotificationCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SharePlayLatencyLogger.Event.LaunchAuthorizationNotificationCodingKeys and conformance SharePlayLatencyLogger.Event.LaunchAuthorizationNotificationCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SharePlayLatencyLogger.Event.ObserverRequestedContainerUpdateCodingKeys(uint64_t a1)
{
  updated = lazy protocol witness table accessor for type SharePlayLatencyLogger.Event.ObserverRequestedContainerUpdateCodingKeys and conformance SharePlayLatencyLogger.Event.ObserverRequestedContainerUpdateCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, updated);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SharePlayLatencyLogger.Event.ObserverRequestedContainerUpdateCodingKeys(uint64_t a1)
{
  updated = lazy protocol witness table accessor for type SharePlayLatencyLogger.Event.ObserverRequestedContainerUpdateCodingKeys and conformance SharePlayLatencyLogger.Event.ObserverRequestedContainerUpdateCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, updated);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SharePlayLatencyLogger.Event.ReceivedNotificationResponseCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SharePlayLatencyLogger.Event.ReceivedNotificationResponseCodingKeys and conformance SharePlayLatencyLogger.Event.ReceivedNotificationResponseCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SharePlayLatencyLogger.Event.ReceivedNotificationResponseCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SharePlayLatencyLogger.Event.ReceivedNotificationResponseCodingKeys and conformance SharePlayLatencyLogger.Event.ReceivedNotificationResponseCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SharePlayLatencyLogger.Event.ReceivedRemoteSessionCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SharePlayLatencyLogger.Event.ReceivedRemoteSessionCodingKeys and conformance SharePlayLatencyLogger.Event.ReceivedRemoteSessionCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SharePlayLatencyLogger.Event.ReceivedRemoteSessionCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SharePlayLatencyLogger.Event.ReceivedRemoteSessionCodingKeys and conformance SharePlayLatencyLogger.Event.ReceivedRemoteSessionCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SharePlayLatencyLogger.Event.ReplaceNotificationCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SharePlayLatencyLogger.Event.ReplaceNotificationCodingKeys and conformance SharePlayLatencyLogger.Event.ReplaceNotificationCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SharePlayLatencyLogger.Event.ReplaceNotificationCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SharePlayLatencyLogger.Event.ReplaceNotificationCodingKeys and conformance SharePlayLatencyLogger.Event.ReplaceNotificationCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SharePlayLatencyLogger.Event.SendContainersToObserversCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SharePlayLatencyLogger.Event.SendContainersToObserversCodingKeys and conformance SharePlayLatencyLogger.Event.SendContainersToObserversCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SharePlayLatencyLogger.Event.SendContainersToObserversCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SharePlayLatencyLogger.Event.SendContainersToObserversCodingKeys and conformance SharePlayLatencyLogger.Event.SendContainersToObserversCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SharePlayLatencyLogger.Event.SessionJoinCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SharePlayLatencyLogger.Event.SessionJoinCodingKeys and conformance SharePlayLatencyLogger.Event.SessionJoinCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SharePlayLatencyLogger.Event.SessionJoinCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SharePlayLatencyLogger.Event.SessionJoinCodingKeys and conformance SharePlayLatencyLogger.Event.SessionJoinCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SharePlayLatencyLogger.Event.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14CopresenceCore22SharePlayLatencyLoggerV5EventO29ReplaceNotificationCodingKeys33_0D82DAE90424A913F6E039A729B5EF2CLLOGMd, &_ss22KeyedEncodingContainerVy14CopresenceCore22SharePlayLatencyLoggerV5EventO29ReplaceNotificationCodingKeys33_0D82DAE90424A913F6E039A729B5EF2CLLOGMR);
  v72 = *(v3 - 8);
  v73 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v71 = &v41 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14CopresenceCore22SharePlayLatencyLoggerV5EventO41LaunchAuthorizationNotificationCodingKeys33_0D82DAE90424A913F6E039A729B5EF2CLLOGMd, &_ss22KeyedEncodingContainerVy14CopresenceCore22SharePlayLatencyLoggerV5EventO41LaunchAuthorizationNotificationCodingKeys33_0D82DAE90424A913F6E039A729B5EF2CLLOGMR);
  v69 = *(v5 - 8);
  v70 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v68 = &v41 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14CopresenceCore22SharePlayLatencyLoggerV5EventO43ActivityAuthorizationNotificationCodingKeys33_0D82DAE90424A913F6E039A729B5EF2CLLOGMd, &_ss22KeyedEncodingContainerVy14CopresenceCore22SharePlayLatencyLoggerV5EventO43ActivityAuthorizationNotificationCodingKeys33_0D82DAE90424A913F6E039A729B5EF2CLLOGMR);
  v66 = *(v7 - 8);
  v67 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v65 = &v41 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14CopresenceCore22SharePlayLatencyLoggerV5EventO38ReceivedNotificationResponseCodingKeys33_0D82DAE90424A913F6E039A729B5EF2CLLOGMd, &_ss22KeyedEncodingContainerVy14CopresenceCore22SharePlayLatencyLoggerV5EventO38ReceivedNotificationResponseCodingKeys33_0D82DAE90424A913F6E039A729B5EF2CLLOGMR);
  v63 = *(v9 - 8);
  v64 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v62 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14CopresenceCore22SharePlayLatencyLoggerV5EventO35SendContainersToObserversCodingKeys33_0D82DAE90424A913F6E039A729B5EF2CLLOGMd, &_ss22KeyedEncodingContainerVy14CopresenceCore22SharePlayLatencyLoggerV5EventO35SendContainersToObserversCodingKeys33_0D82DAE90424A913F6E039A729B5EF2CLLOGMR);
  v60 = *(v11 - 8);
  v61 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v59 = &v41 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14CopresenceCore22SharePlayLatencyLoggerV5EventO31FetchLatestContainersCodingKeys33_0D82DAE90424A913F6E039A729B5EF2CLLOGMd, &_ss22KeyedEncodingContainerVy14CopresenceCore22SharePlayLatencyLoggerV5EventO31FetchLatestContainersCodingKeys33_0D82DAE90424A913F6E039A729B5EF2CLLOGMR);
  v57 = *(v13 - 8);
  v58 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v56 = &v41 - v14;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14CopresenceCore22SharePlayLatencyLoggerV5EventO0c17ProviderRequestedC16UpdateCodingKeys33_0D82DAE90424A913F6E039A729B5EF2CLLOGMd, &_ss22KeyedEncodingContainerVy14CopresenceCore22SharePlayLatencyLoggerV5EventO0c17ProviderRequestedC16UpdateCodingKeys33_0D82DAE90424A913F6E039A729B5EF2CLLOGMR);
  v54 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v53 = &v41 - v15;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14CopresenceCore22SharePlayLatencyLoggerV5EventO017ObserverRequestedC16UpdateCodingKeys33_0D82DAE90424A913F6E039A729B5EF2CLLOGMd, &_ss22KeyedEncodingContainerVy14CopresenceCore22SharePlayLatencyLoggerV5EventO017ObserverRequestedC16UpdateCodingKeys33_0D82DAE90424A913F6E039A729B5EF2CLLOGMR);
  v51 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v50 = &v41 - v16;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14CopresenceCore22SharePlayLatencyLoggerV5EventO28AppReceivedSessionCodingKeys33_0D82DAE90424A913F6E039A729B5EF2CLLOGMd, &_ss22KeyedEncodingContainerVy14CopresenceCore22SharePlayLatencyLoggerV5EventO28AppReceivedSessionCodingKeys33_0D82DAE90424A913F6E039A729B5EF2CLLOGMR);
  v48 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v47 = &v41 - v17;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14CopresenceCore22SharePlayLatencyLoggerV5EventO31ReceivedRemoteSessionCodingKeys33_0D82DAE90424A913F6E039A729B5EF2CLLOGMd, &_ss22KeyedEncodingContainerVy14CopresenceCore22SharePlayLatencyLoggerV5EventO31ReceivedRemoteSessionCodingKeys33_0D82DAE90424A913F6E039A729B5EF2CLLOGMR);
  v45 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v44 = &v41 - v18;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14CopresenceCore22SharePlayLatencyLoggerV5EventO21SessionJoinCodingKeys33_0D82DAE90424A913F6E039A729B5EF2CLLOGMd, &_ss22KeyedEncodingContainerVy14CopresenceCore22SharePlayLatencyLoggerV5EventO21SessionJoinCodingKeys33_0D82DAE90424A913F6E039A729B5EF2CLLOGMR);
  v42 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v20 = &v41 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14CopresenceCore22SharePlayLatencyLoggerV5EventO32ActivityInitializationCodingKeys33_0D82DAE90424A913F6E039A729B5EF2CLLOGMd, &_ss22KeyedEncodingContainerVy14CopresenceCore22SharePlayLatencyLoggerV5EventO32ActivityInitializationCodingKeys33_0D82DAE90424A913F6E039A729B5EF2CLLOGMR);
  v41 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v41 - v22;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14CopresenceCore22SharePlayLatencyLoggerV5EventO10CodingKeys33_0D82DAE90424A913F6E039A729B5EF2CLLOGMd, &_ss22KeyedEncodingContainerVy14CopresenceCore22SharePlayLatencyLoggerV5EventO10CodingKeys33_0D82DAE90424A913F6E039A729B5EF2CLLOGMR);
  v24 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v26 = &v41 - v25;
  v27 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SharePlayLatencyLogger.Event.CodingKeys and conformance SharePlayLatencyLogger.Event.CodingKeys();
  v74 = v26;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v28 = (v24 + 8);
  if (v27 > 5)
  {
    if (v27 > 8)
    {
      if (v27 == 9)
      {
        v85 = 9;
        lazy protocol witness table accessor for type SharePlayLatencyLogger.Event.ActivityAuthorizationNotificationCodingKeys and conformance SharePlayLatencyLogger.Event.ActivityAuthorizationNotificationCodingKeys();
        v32 = v65;
        v34 = v74;
        v33 = v75;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v36 = v66;
        v35 = v67;
      }

      else if (v27 == 10)
      {
        v86 = 10;
        lazy protocol witness table accessor for type SharePlayLatencyLogger.Event.LaunchAuthorizationNotificationCodingKeys and conformance SharePlayLatencyLogger.Event.LaunchAuthorizationNotificationCodingKeys();
        v32 = v68;
        v34 = v74;
        v33 = v75;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v36 = v69;
        v35 = v70;
      }

      else
      {
        v87 = 11;
        lazy protocol witness table accessor for type SharePlayLatencyLogger.Event.ReplaceNotificationCodingKeys and conformance SharePlayLatencyLogger.Event.ReplaceNotificationCodingKeys();
        v32 = v71;
        v34 = v74;
        v33 = v75;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v36 = v72;
        v35 = v73;
      }
    }

    else if (v27 == 6)
    {
      v82 = 6;
      lazy protocol witness table accessor for type SharePlayLatencyLogger.Event.FetchLatestContainersCodingKeys and conformance SharePlayLatencyLogger.Event.FetchLatestContainersCodingKeys();
      v32 = v56;
      v34 = v74;
      v33 = v75;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v36 = v57;
      v35 = v58;
    }

    else if (v27 == 7)
    {
      v83 = 7;
      lazy protocol witness table accessor for type SharePlayLatencyLogger.Event.SendContainersToObserversCodingKeys and conformance SharePlayLatencyLogger.Event.SendContainersToObserversCodingKeys();
      v32 = v59;
      v34 = v74;
      v33 = v75;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v36 = v60;
      v35 = v61;
    }

    else
    {
      v84 = 8;
      lazy protocol witness table accessor for type SharePlayLatencyLogger.Event.ReceivedNotificationResponseCodingKeys and conformance SharePlayLatencyLogger.Event.ReceivedNotificationResponseCodingKeys();
      v32 = v62;
      v34 = v74;
      v33 = v75;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v36 = v63;
      v35 = v64;
    }

    (*(v36 + 8))(v32, v35);
  }

  else if (v27 > 2)
  {
    if (v27 == 3)
    {
      v79 = 3;
      lazy protocol witness table accessor for type SharePlayLatencyLogger.Event.AppReceivedSessionCodingKeys and conformance SharePlayLatencyLogger.Event.AppReceivedSessionCodingKeys();
      v38 = v47;
      v34 = v74;
      v33 = v75;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v48 + 8))(v38, v49);
    }

    else if (v27 == 4)
    {
      v80 = 4;
      lazy protocol witness table accessor for type SharePlayLatencyLogger.Event.ObserverRequestedContainerUpdateCodingKeys and conformance SharePlayLatencyLogger.Event.ObserverRequestedContainerUpdateCodingKeys();
      v37 = v50;
      v34 = v74;
      v33 = v75;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v51 + 8))(v37, v52);
    }

    else
    {
      v81 = 5;
      lazy protocol witness table accessor for type SharePlayLatencyLogger.Event.ContainerProviderRequestedContainerUpdateCodingKeys and conformance SharePlayLatencyLogger.Event.ContainerProviderRequestedContainerUpdateCodingKeys();
      v40 = v53;
      v34 = v74;
      v33 = v75;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v54 + 8))(v40, v55);
    }
  }

  else if (v27)
  {
    if (v27 == 1)
    {
      v77 = 1;
      lazy protocol witness table accessor for type SharePlayLatencyLogger.Event.SessionJoinCodingKeys and conformance SharePlayLatencyLogger.Event.SessionJoinCodingKeys();
      v29 = v74;
      v30 = v75;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v42 + 8))(v20, v43);
      return (*v28)(v29, v30);
    }

    v78 = 2;
    lazy protocol witness table accessor for type SharePlayLatencyLogger.Event.ReceivedRemoteSessionCodingKeys and conformance SharePlayLatencyLogger.Event.ReceivedRemoteSessionCodingKeys();
    v39 = v44;
    v34 = v74;
    v33 = v75;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v45 + 8))(v39, v46);
  }

  else
  {
    v76 = 0;
    lazy protocol witness table accessor for type SharePlayLatencyLogger.Event.ActivityInitializationCodingKeys and conformance SharePlayLatencyLogger.Event.ActivityInitializationCodingKeys();
    v34 = v74;
    v33 = v75;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v41 + 8))(v23, v21);
  }

  return (*v28)(v34, v33);
}

unint64_t lazy protocol witness table accessor for type SharePlayLatencyLogger.Event.CodingKeys and conformance SharePlayLatencyLogger.Event.CodingKeys()
{
  result = lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.CodingKeys and conformance SharePlayLatencyLogger.Event.CodingKeys;
  if (!lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.CodingKeys and conformance SharePlayLatencyLogger.Event.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.CodingKeys and conformance SharePlayLatencyLogger.Event.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.CodingKeys and conformance SharePlayLatencyLogger.Event.CodingKeys;
  if (!lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.CodingKeys and conformance SharePlayLatencyLogger.Event.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.CodingKeys and conformance SharePlayLatencyLogger.Event.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.CodingKeys and conformance SharePlayLatencyLogger.Event.CodingKeys;
  if (!lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.CodingKeys and conformance SharePlayLatencyLogger.Event.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.CodingKeys and conformance SharePlayLatencyLogger.Event.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.CodingKeys and conformance SharePlayLatencyLogger.Event.CodingKeys;
  if (!lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.CodingKeys and conformance SharePlayLatencyLogger.Event.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.CodingKeys and conformance SharePlayLatencyLogger.Event.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SharePlayLatencyLogger.Event.ReplaceNotificationCodingKeys and conformance SharePlayLatencyLogger.Event.ReplaceNotificationCodingKeys()
{
  result = lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.ReplaceNotificationCodingKeys and conformance SharePlayLatencyLogger.Event.ReplaceNotificationCodingKeys;
  if (!lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.ReplaceNotificationCodingKeys and conformance SharePlayLatencyLogger.Event.ReplaceNotificationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.ReplaceNotificationCodingKeys and conformance SharePlayLatencyLogger.Event.ReplaceNotificationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.ReplaceNotificationCodingKeys and conformance SharePlayLatencyLogger.Event.ReplaceNotificationCodingKeys;
  if (!lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.ReplaceNotificationCodingKeys and conformance SharePlayLatencyLogger.Event.ReplaceNotificationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.ReplaceNotificationCodingKeys and conformance SharePlayLatencyLogger.Event.ReplaceNotificationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.ReplaceNotificationCodingKeys and conformance SharePlayLatencyLogger.Event.ReplaceNotificationCodingKeys;
  if (!lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.ReplaceNotificationCodingKeys and conformance SharePlayLatencyLogger.Event.ReplaceNotificationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.ReplaceNotificationCodingKeys and conformance SharePlayLatencyLogger.Event.ReplaceNotificationCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SharePlayLatencyLogger.Event.LaunchAuthorizationNotificationCodingKeys and conformance SharePlayLatencyLogger.Event.LaunchAuthorizationNotificationCodingKeys()
{
  result = lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.LaunchAuthorizationNotificationCodingKeys and conformance SharePlayLatencyLogger.Event.LaunchAuthorizationNotificationCodingKeys;
  if (!lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.LaunchAuthorizationNotificationCodingKeys and conformance SharePlayLatencyLogger.Event.LaunchAuthorizationNotificationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.LaunchAuthorizationNotificationCodingKeys and conformance SharePlayLatencyLogger.Event.LaunchAuthorizationNotificationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.LaunchAuthorizationNotificationCodingKeys and conformance SharePlayLatencyLogger.Event.LaunchAuthorizationNotificationCodingKeys;
  if (!lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.LaunchAuthorizationNotificationCodingKeys and conformance SharePlayLatencyLogger.Event.LaunchAuthorizationNotificationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.LaunchAuthorizationNotificationCodingKeys and conformance SharePlayLatencyLogger.Event.LaunchAuthorizationNotificationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.LaunchAuthorizationNotificationCodingKeys and conformance SharePlayLatencyLogger.Event.LaunchAuthorizationNotificationCodingKeys;
  if (!lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.LaunchAuthorizationNotificationCodingKeys and conformance SharePlayLatencyLogger.Event.LaunchAuthorizationNotificationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.LaunchAuthorizationNotificationCodingKeys and conformance SharePlayLatencyLogger.Event.LaunchAuthorizationNotificationCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SharePlayLatencyLogger.Event.ActivityAuthorizationNotificationCodingKeys and conformance SharePlayLatencyLogger.Event.ActivityAuthorizationNotificationCodingKeys()
{
  result = lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.ActivityAuthorizationNotificationCodingKeys and conformance SharePlayLatencyLogger.Event.ActivityAuthorizationNotificationCodingKeys;
  if (!lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.ActivityAuthorizationNotificationCodingKeys and conformance SharePlayLatencyLogger.Event.ActivityAuthorizationNotificationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.ActivityAuthorizationNotificationCodingKeys and conformance SharePlayLatencyLogger.Event.ActivityAuthorizationNotificationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.ActivityAuthorizationNotificationCodingKeys and conformance SharePlayLatencyLogger.Event.ActivityAuthorizationNotificationCodingKeys;
  if (!lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.ActivityAuthorizationNotificationCodingKeys and conformance SharePlayLatencyLogger.Event.ActivityAuthorizationNotificationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.ActivityAuthorizationNotificationCodingKeys and conformance SharePlayLatencyLogger.Event.ActivityAuthorizationNotificationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.ActivityAuthorizationNotificationCodingKeys and conformance SharePlayLatencyLogger.Event.ActivityAuthorizationNotificationCodingKeys;
  if (!lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.ActivityAuthorizationNotificationCodingKeys and conformance SharePlayLatencyLogger.Event.ActivityAuthorizationNotificationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.ActivityAuthorizationNotificationCodingKeys and conformance SharePlayLatencyLogger.Event.ActivityAuthorizationNotificationCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SharePlayLatencyLogger.Event.ReceivedNotificationResponseCodingKeys and conformance SharePlayLatencyLogger.Event.ReceivedNotificationResponseCodingKeys()
{
  result = lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.ReceivedNotificationResponseCodingKeys and conformance SharePlayLatencyLogger.Event.ReceivedNotificationResponseCodingKeys;
  if (!lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.ReceivedNotificationResponseCodingKeys and conformance SharePlayLatencyLogger.Event.ReceivedNotificationResponseCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.ReceivedNotificationResponseCodingKeys and conformance SharePlayLatencyLogger.Event.ReceivedNotificationResponseCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.ReceivedNotificationResponseCodingKeys and conformance SharePlayLatencyLogger.Event.ReceivedNotificationResponseCodingKeys;
  if (!lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.ReceivedNotificationResponseCodingKeys and conformance SharePlayLatencyLogger.Event.ReceivedNotificationResponseCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.ReceivedNotificationResponseCodingKeys and conformance SharePlayLatencyLogger.Event.ReceivedNotificationResponseCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.ReceivedNotificationResponseCodingKeys and conformance SharePlayLatencyLogger.Event.ReceivedNotificationResponseCodingKeys;
  if (!lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.ReceivedNotificationResponseCodingKeys and conformance SharePlayLatencyLogger.Event.ReceivedNotificationResponseCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.ReceivedNotificationResponseCodingKeys and conformance SharePlayLatencyLogger.Event.ReceivedNotificationResponseCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SharePlayLatencyLogger.Event.SendContainersToObserversCodingKeys and conformance SharePlayLatencyLogger.Event.SendContainersToObserversCodingKeys()
{
  result = lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.SendContainersToObserversCodingKeys and conformance SharePlayLatencyLogger.Event.SendContainersToObserversCodingKeys;
  if (!lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.SendContainersToObserversCodingKeys and conformance SharePlayLatencyLogger.Event.SendContainersToObserversCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.SendContainersToObserversCodingKeys and conformance SharePlayLatencyLogger.Event.SendContainersToObserversCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.SendContainersToObserversCodingKeys and conformance SharePlayLatencyLogger.Event.SendContainersToObserversCodingKeys;
  if (!lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.SendContainersToObserversCodingKeys and conformance SharePlayLatencyLogger.Event.SendContainersToObserversCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.SendContainersToObserversCodingKeys and conformance SharePlayLatencyLogger.Event.SendContainersToObserversCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.SendContainersToObserversCodingKeys and conformance SharePlayLatencyLogger.Event.SendContainersToObserversCodingKeys;
  if (!lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.SendContainersToObserversCodingKeys and conformance SharePlayLatencyLogger.Event.SendContainersToObserversCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.SendContainersToObserversCodingKeys and conformance SharePlayLatencyLogger.Event.SendContainersToObserversCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SharePlayLatencyLogger.Event.FetchLatestContainersCodingKeys and conformance SharePlayLatencyLogger.Event.FetchLatestContainersCodingKeys()
{
  result = lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.FetchLatestContainersCodingKeys and conformance SharePlayLatencyLogger.Event.FetchLatestContainersCodingKeys;
  if (!lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.FetchLatestContainersCodingKeys and conformance SharePlayLatencyLogger.Event.FetchLatestContainersCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.FetchLatestContainersCodingKeys and conformance SharePlayLatencyLogger.Event.FetchLatestContainersCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.FetchLatestContainersCodingKeys and conformance SharePlayLatencyLogger.Event.FetchLatestContainersCodingKeys;
  if (!lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.FetchLatestContainersCodingKeys and conformance SharePlayLatencyLogger.Event.FetchLatestContainersCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.FetchLatestContainersCodingKeys and conformance SharePlayLatencyLogger.Event.FetchLatestContainersCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.FetchLatestContainersCodingKeys and conformance SharePlayLatencyLogger.Event.FetchLatestContainersCodingKeys;
  if (!lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.FetchLatestContainersCodingKeys and conformance SharePlayLatencyLogger.Event.FetchLatestContainersCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.FetchLatestContainersCodingKeys and conformance SharePlayLatencyLogger.Event.FetchLatestContainersCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SharePlayLatencyLogger.Event.ContainerProviderRequestedContainerUpdateCodingKeys and conformance SharePlayLatencyLogger.Event.ContainerProviderRequestedContainerUpdateCodingKeys()
{
  result = lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.ContainerProviderRequestedContainerUpdateCodingKeys and conformance SharePlayLatencyLogger.Event.ContainerProviderRequestedContainerUpdateCodingKeys;
  if (!lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.ContainerProviderRequestedContainerUpdateCodingKeys and conformance SharePlayLatencyLogger.Event.ContainerProviderRequestedContainerUpdateCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.ContainerProviderRequestedContainerUpdateCodingKeys and conformance SharePlayLatencyLogger.Event.ContainerProviderRequestedContainerUpdateCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.ContainerProviderRequestedContainerUpdateCodingKeys and conformance SharePlayLatencyLogger.Event.ContainerProviderRequestedContainerUpdateCodingKeys;
  if (!lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.ContainerProviderRequestedContainerUpdateCodingKeys and conformance SharePlayLatencyLogger.Event.ContainerProviderRequestedContainerUpdateCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.ContainerProviderRequestedContainerUpdateCodingKeys and conformance SharePlayLatencyLogger.Event.ContainerProviderRequestedContainerUpdateCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.ContainerProviderRequestedContainerUpdateCodingKeys and conformance SharePlayLatencyLogger.Event.ContainerProviderRequestedContainerUpdateCodingKeys;
  if (!lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.ContainerProviderRequestedContainerUpdateCodingKeys and conformance SharePlayLatencyLogger.Event.ContainerProviderRequestedContainerUpdateCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.ContainerProviderRequestedContainerUpdateCodingKeys and conformance SharePlayLatencyLogger.Event.ContainerProviderRequestedContainerUpdateCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SharePlayLatencyLogger.Event.ObserverRequestedContainerUpdateCodingKeys and conformance SharePlayLatencyLogger.Event.ObserverRequestedContainerUpdateCodingKeys()
{
  result = lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.ObserverRequestedContainerUpdateCodingKeys and conformance SharePlayLatencyLogger.Event.ObserverRequestedContainerUpdateCodingKeys;
  if (!lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.ObserverRequestedContainerUpdateCodingKeys and conformance SharePlayLatencyLogger.Event.ObserverRequestedContainerUpdateCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.ObserverRequestedContainerUpdateCodingKeys and conformance SharePlayLatencyLogger.Event.ObserverRequestedContainerUpdateCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.ObserverRequestedContainerUpdateCodingKeys and conformance SharePlayLatencyLogger.Event.ObserverRequestedContainerUpdateCodingKeys;
  if (!lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.ObserverRequestedContainerUpdateCodingKeys and conformance SharePlayLatencyLogger.Event.ObserverRequestedContainerUpdateCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.ObserverRequestedContainerUpdateCodingKeys and conformance SharePlayLatencyLogger.Event.ObserverRequestedContainerUpdateCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.ObserverRequestedContainerUpdateCodingKeys and conformance SharePlayLatencyLogger.Event.ObserverRequestedContainerUpdateCodingKeys;
  if (!lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.ObserverRequestedContainerUpdateCodingKeys and conformance SharePlayLatencyLogger.Event.ObserverRequestedContainerUpdateCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.ObserverRequestedContainerUpdateCodingKeys and conformance SharePlayLatencyLogger.Event.ObserverRequestedContainerUpdateCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SharePlayLatencyLogger.Event.AppReceivedSessionCodingKeys and conformance SharePlayLatencyLogger.Event.AppReceivedSessionCodingKeys()
{
  result = lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.AppReceivedSessionCodingKeys and conformance SharePlayLatencyLogger.Event.AppReceivedSessionCodingKeys;
  if (!lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.AppReceivedSessionCodingKeys and conformance SharePlayLatencyLogger.Event.AppReceivedSessionCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.AppReceivedSessionCodingKeys and conformance SharePlayLatencyLogger.Event.AppReceivedSessionCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.AppReceivedSessionCodingKeys and conformance SharePlayLatencyLogger.Event.AppReceivedSessionCodingKeys;
  if (!lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.AppReceivedSessionCodingKeys and conformance SharePlayLatencyLogger.Event.AppReceivedSessionCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.AppReceivedSessionCodingKeys and conformance SharePlayLatencyLogger.Event.AppReceivedSessionCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.AppReceivedSessionCodingKeys and conformance SharePlayLatencyLogger.Event.AppReceivedSessionCodingKeys;
  if (!lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.AppReceivedSessionCodingKeys and conformance SharePlayLatencyLogger.Event.AppReceivedSessionCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.AppReceivedSessionCodingKeys and conformance SharePlayLatencyLogger.Event.AppReceivedSessionCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SharePlayLatencyLogger.Event.ReceivedRemoteSessionCodingKeys and conformance SharePlayLatencyLogger.Event.ReceivedRemoteSessionCodingKeys()
{
  result = lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.ReceivedRemoteSessionCodingKeys and conformance SharePlayLatencyLogger.Event.ReceivedRemoteSessionCodingKeys;
  if (!lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.ReceivedRemoteSessionCodingKeys and conformance SharePlayLatencyLogger.Event.ReceivedRemoteSessionCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.ReceivedRemoteSessionCodingKeys and conformance SharePlayLatencyLogger.Event.ReceivedRemoteSessionCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.ReceivedRemoteSessionCodingKeys and conformance SharePlayLatencyLogger.Event.ReceivedRemoteSessionCodingKeys;
  if (!lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.ReceivedRemoteSessionCodingKeys and conformance SharePlayLatencyLogger.Event.ReceivedRemoteSessionCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.ReceivedRemoteSessionCodingKeys and conformance SharePlayLatencyLogger.Event.ReceivedRemoteSessionCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.ReceivedRemoteSessionCodingKeys and conformance SharePlayLatencyLogger.Event.ReceivedRemoteSessionCodingKeys;
  if (!lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.ReceivedRemoteSessionCodingKeys and conformance SharePlayLatencyLogger.Event.ReceivedRemoteSessionCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.ReceivedRemoteSessionCodingKeys and conformance SharePlayLatencyLogger.Event.ReceivedRemoteSessionCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SharePlayLatencyLogger.Event.SessionJoinCodingKeys and conformance SharePlayLatencyLogger.Event.SessionJoinCodingKeys()
{
  result = lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.SessionJoinCodingKeys and conformance SharePlayLatencyLogger.Event.SessionJoinCodingKeys;
  if (!lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.SessionJoinCodingKeys and conformance SharePlayLatencyLogger.Event.SessionJoinCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.SessionJoinCodingKeys and conformance SharePlayLatencyLogger.Event.SessionJoinCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.SessionJoinCodingKeys and conformance SharePlayLatencyLogger.Event.SessionJoinCodingKeys;
  if (!lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.SessionJoinCodingKeys and conformance SharePlayLatencyLogger.Event.SessionJoinCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.SessionJoinCodingKeys and conformance SharePlayLatencyLogger.Event.SessionJoinCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.SessionJoinCodingKeys and conformance SharePlayLatencyLogger.Event.SessionJoinCodingKeys;
  if (!lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.SessionJoinCodingKeys and conformance SharePlayLatencyLogger.Event.SessionJoinCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.SessionJoinCodingKeys and conformance SharePlayLatencyLogger.Event.SessionJoinCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SharePlayLatencyLogger.Event.ActivityInitializationCodingKeys and conformance SharePlayLatencyLogger.Event.ActivityInitializationCodingKeys()
{
  result = lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.ActivityInitializationCodingKeys and conformance SharePlayLatencyLogger.Event.ActivityInitializationCodingKeys;
  if (!lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.ActivityInitializationCodingKeys and conformance SharePlayLatencyLogger.Event.ActivityInitializationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.ActivityInitializationCodingKeys and conformance SharePlayLatencyLogger.Event.ActivityInitializationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.ActivityInitializationCodingKeys and conformance SharePlayLatencyLogger.Event.ActivityInitializationCodingKeys;
  if (!lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.ActivityInitializationCodingKeys and conformance SharePlayLatencyLogger.Event.ActivityInitializationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.ActivityInitializationCodingKeys and conformance SharePlayLatencyLogger.Event.ActivityInitializationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.ActivityInitializationCodingKeys and conformance SharePlayLatencyLogger.Event.ActivityInitializationCodingKeys;
  if (!lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.ActivityInitializationCodingKeys and conformance SharePlayLatencyLogger.Event.ActivityInitializationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.ActivityInitializationCodingKeys and conformance SharePlayLatencyLogger.Event.ActivityInitializationCodingKeys);
  }

  return result;
}

Swift::Int SharePlayLatencyLogger.Event.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1B27111E0](v1);
  return Hasher._finalize()();
}

uint64_t SharePlayLatencyLogger.Event.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v93 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14CopresenceCore22SharePlayLatencyLoggerV5EventO29ReplaceNotificationCodingKeys33_0D82DAE90424A913F6E039A729B5EF2CLLOGMd, &_ss22KeyedDecodingContainerVy14CopresenceCore22SharePlayLatencyLoggerV5EventO29ReplaceNotificationCodingKeys33_0D82DAE90424A913F6E039A729B5EF2CLLOGMR);
  v81 = *(v3 - 8);
  v82 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v89 = &v54[-v4];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14CopresenceCore22SharePlayLatencyLoggerV5EventO41LaunchAuthorizationNotificationCodingKeys33_0D82DAE90424A913F6E039A729B5EF2CLLOGMd, &_ss22KeyedDecodingContainerVy14CopresenceCore22SharePlayLatencyLoggerV5EventO41LaunchAuthorizationNotificationCodingKeys33_0D82DAE90424A913F6E039A729B5EF2CLLOGMR);
  v79 = *(v5 - 8);
  v80 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v88 = &v54[-v6];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14CopresenceCore22SharePlayLatencyLoggerV5EventO43ActivityAuthorizationNotificationCodingKeys33_0D82DAE90424A913F6E039A729B5EF2CLLOGMd, &_ss22KeyedDecodingContainerVy14CopresenceCore22SharePlayLatencyLoggerV5EventO43ActivityAuthorizationNotificationCodingKeys33_0D82DAE90424A913F6E039A729B5EF2CLLOGMR);
  v77 = *(v7 - 8);
  v78 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v85 = &v54[-v8];
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14CopresenceCore22SharePlayLatencyLoggerV5EventO38ReceivedNotificationResponseCodingKeys33_0D82DAE90424A913F6E039A729B5EF2CLLOGMd, &_ss22KeyedDecodingContainerVy14CopresenceCore22SharePlayLatencyLoggerV5EventO38ReceivedNotificationResponseCodingKeys33_0D82DAE90424A913F6E039A729B5EF2CLLOGMR);
  v75 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v87 = &v54[-v9];
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14CopresenceCore22SharePlayLatencyLoggerV5EventO35SendContainersToObserversCodingKeys33_0D82DAE90424A913F6E039A729B5EF2CLLOGMd, &_ss22KeyedDecodingContainerVy14CopresenceCore22SharePlayLatencyLoggerV5EventO35SendContainersToObserversCodingKeys33_0D82DAE90424A913F6E039A729B5EF2CLLOGMR);
  v73 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v86 = &v54[-v10];
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14CopresenceCore22SharePlayLatencyLoggerV5EventO31FetchLatestContainersCodingKeys33_0D82DAE90424A913F6E039A729B5EF2CLLOGMd, &_ss22KeyedDecodingContainerVy14CopresenceCore22SharePlayLatencyLoggerV5EventO31FetchLatestContainersCodingKeys33_0D82DAE90424A913F6E039A729B5EF2CLLOGMR);
  v71 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v92 = &v54[-v11];
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14CopresenceCore22SharePlayLatencyLoggerV5EventO0c17ProviderRequestedC16UpdateCodingKeys33_0D82DAE90424A913F6E039A729B5EF2CLLOGMd, &_ss22KeyedDecodingContainerVy14CopresenceCore22SharePlayLatencyLoggerV5EventO0c17ProviderRequestedC16UpdateCodingKeys33_0D82DAE90424A913F6E039A729B5EF2CLLOGMR);
  v69 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v84 = &v54[-v12];
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14CopresenceCore22SharePlayLatencyLoggerV5EventO017ObserverRequestedC16UpdateCodingKeys33_0D82DAE90424A913F6E039A729B5EF2CLLOGMd, &_ss22KeyedDecodingContainerVy14CopresenceCore22SharePlayLatencyLoggerV5EventO017ObserverRequestedC16UpdateCodingKeys33_0D82DAE90424A913F6E039A729B5EF2CLLOGMR);
  v67 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v83 = &v54[-v13];
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14CopresenceCore22SharePlayLatencyLoggerV5EventO28AppReceivedSessionCodingKeys33_0D82DAE90424A913F6E039A729B5EF2CLLOGMd, &_ss22KeyedDecodingContainerVy14CopresenceCore22SharePlayLatencyLoggerV5EventO28AppReceivedSessionCodingKeys33_0D82DAE90424A913F6E039A729B5EF2CLLOGMR);
  v66 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v91 = &v54[-v14];
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14CopresenceCore22SharePlayLatencyLoggerV5EventO31ReceivedRemoteSessionCodingKeys33_0D82DAE90424A913F6E039A729B5EF2CLLOGMd, &_ss22KeyedDecodingContainerVy14CopresenceCore22SharePlayLatencyLoggerV5EventO31ReceivedRemoteSessionCodingKeys33_0D82DAE90424A913F6E039A729B5EF2CLLOGMR);
  v64 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v90 = &v54[-v15];
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14CopresenceCore22SharePlayLatencyLoggerV5EventO21SessionJoinCodingKeys33_0D82DAE90424A913F6E039A729B5EF2CLLOGMd, &_ss22KeyedDecodingContainerVy14CopresenceCore22SharePlayLatencyLoggerV5EventO21SessionJoinCodingKeys33_0D82DAE90424A913F6E039A729B5EF2CLLOGMR);
  v61 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v17 = &v54[-v16];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14CopresenceCore22SharePlayLatencyLoggerV5EventO32ActivityInitializationCodingKeys33_0D82DAE90424A913F6E039A729B5EF2CLLOGMd, &_ss22KeyedDecodingContainerVy14CopresenceCore22SharePlayLatencyLoggerV5EventO32ActivityInitializationCodingKeys33_0D82DAE90424A913F6E039A729B5EF2CLLOGMR);
  v60 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v54[-v19];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14CopresenceCore22SharePlayLatencyLoggerV5EventO10CodingKeys33_0D82DAE90424A913F6E039A729B5EF2CLLOGMd, &_ss22KeyedDecodingContainerVy14CopresenceCore22SharePlayLatencyLoggerV5EventO10CodingKeys33_0D82DAE90424A913F6E039A729B5EF2CLLOGMR);
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v54[-v23];
  v25 = a1[3];
  v95 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v25);
  lazy protocol witness table accessor for type SharePlayLatencyLogger.Event.CodingKeys and conformance SharePlayLatencyLogger.Event.CodingKeys();
  v26 = v94;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v26)
  {
    v56 = v18;
    v57 = v17;
    v27 = v90;
    v28 = v91;
    v94 = v22;
    v30 = v92;
    v29 = v93;
    v59 = v21;
    v58 = v24;
    v31 = KeyedDecodingContainer.allKeys.getter();
    if (*(v31 + 16) == 1)
    {
      v32 = *(v31 + 32);
      if (v32 != 12)
      {
        v55 = *(v31 + 32);
        if (v32 > 5)
        {
          if (v32 > 8)
          {
            v42 = v94;
            v43 = v59;
            v44 = v58;
            if (v32 == 9)
            {
              v105 = 9;
              lazy protocol witness table accessor for type SharePlayLatencyLogger.Event.ActivityAuthorizationNotificationCodingKeys and conformance SharePlayLatencyLogger.Event.ActivityAuthorizationNotificationCodingKeys();
              v50 = v85;
              KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
              (*(v77 + 8))(v50, v78);
            }

            else if (v32 == 10)
            {
              v106 = 10;
              lazy protocol witness table accessor for type SharePlayLatencyLogger.Event.LaunchAuthorizationNotificationCodingKeys and conformance SharePlayLatencyLogger.Event.LaunchAuthorizationNotificationCodingKeys();
              v47 = v88;
              KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
              (*(v79 + 8))(v47, v80);
            }

            else
            {
              v107 = 11;
              lazy protocol witness table accessor for type SharePlayLatencyLogger.Event.ReplaceNotificationCodingKeys and conformance SharePlayLatencyLogger.Event.ReplaceNotificationCodingKeys();
              v53 = v89;
              KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
              (*(v81 + 8))(v53, v82);
            }
          }

          else
          {
            v42 = v94;
            v43 = v59;
            v44 = v58;
            if (v32 == 6)
            {
              v102 = 6;
              lazy protocol witness table accessor for type SharePlayLatencyLogger.Event.FetchLatestContainersCodingKeys and conformance SharePlayLatencyLogger.Event.FetchLatestContainersCodingKeys();
              KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
              (*(v71 + 8))(v30, v72);
            }

            else if (v32 == 7)
            {
              v103 = 7;
              lazy protocol witness table accessor for type SharePlayLatencyLogger.Event.SendContainersToObserversCodingKeys and conformance SharePlayLatencyLogger.Event.SendContainersToObserversCodingKeys();
              v45 = v86;
              KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
              (*(v73 + 8))(v45, v74);
            }

            else
            {
              v104 = 8;
              lazy protocol witness table accessor for type SharePlayLatencyLogger.Event.ReceivedNotificationResponseCodingKeys and conformance SharePlayLatencyLogger.Event.ReceivedNotificationResponseCodingKeys();
              v51 = v87;
              KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
              (*(v75 + 8))(v51, v76);
            }
          }
        }

        else
        {
          if (v32 <= 2)
          {
            if (v32)
            {
              if (v32 == 1)
              {
                v97 = 1;
                lazy protocol witness table accessor for type SharePlayLatencyLogger.Event.SessionJoinCodingKeys and conformance SharePlayLatencyLogger.Event.SessionJoinCodingKeys();
                v33 = v57;
                v34 = v59;
                v35 = v58;
                KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
                (*(v61 + 8))(v33, v62);
              }

              else
              {
                v98 = 2;
                lazy protocol witness table accessor for type SharePlayLatencyLogger.Event.ReceivedRemoteSessionCodingKeys and conformance SharePlayLatencyLogger.Event.ReceivedRemoteSessionCodingKeys();
                v34 = v59;
                v35 = v58;
                KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
                (*(v64 + 8))(v27, v63);
              }

              (*(v94 + 8))(v35, v34);
            }

            else
            {
              v96 = 0;
              lazy protocol witness table accessor for type SharePlayLatencyLogger.Event.ActivityInitializationCodingKeys and conformance SharePlayLatencyLogger.Event.ActivityInitializationCodingKeys();
              v48 = v59;
              v49 = v58;
              KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
              (*(v60 + 8))(v20, v56);
              (*(v94 + 8))(v49, v48);
            }

            goto LABEL_32;
          }

          v42 = v94;
          if (v32 == 3)
          {
            v99 = 3;
            lazy protocol witness table accessor for type SharePlayLatencyLogger.Event.AppReceivedSessionCodingKeys and conformance SharePlayLatencyLogger.Event.AppReceivedSessionCodingKeys();
            v43 = v59;
            v44 = v58;
            KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
            (*(v66 + 8))(v28, v65);
          }

          else
          {
            v43 = v59;
            v44 = v58;
            if (v32 == 4)
            {
              v100 = 4;
              lazy protocol witness table accessor for type SharePlayLatencyLogger.Event.ObserverRequestedContainerUpdateCodingKeys and conformance SharePlayLatencyLogger.Event.ObserverRequestedContainerUpdateCodingKeys();
              v46 = v83;
              KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
              (*(v67 + 8))(v46, v68);
            }

            else
            {
              v101 = 5;
              lazy protocol witness table accessor for type SharePlayLatencyLogger.Event.ContainerProviderRequestedContainerUpdateCodingKeys and conformance SharePlayLatencyLogger.Event.ContainerProviderRequestedContainerUpdateCodingKeys();
              v52 = v84;
              KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
              (*(v69 + 8))(v52, v70);
            }
          }
        }

        (*(v42 + 8))(v44, v43);
LABEL_32:
        swift_unknownObjectRelease();
        *v29 = v55;
        return __swift_destroy_boxed_opaque_existential_1Tm(v95);
      }
    }

    v36 = type metadata accessor for DecodingError();
    swift_allocError();
    v38 = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
    *v38 = &type metadata for SharePlayLatencyLogger.Event;
    v39 = v59;
    v40 = v58;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v36 - 8) + 104))(v38, *MEMORY[0x1E69E6AF8], v36);
    swift_willThrow();
    (*(v94 + 8))(v40, v39);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v95);
}

uint64_t SharePlayLatencyLogger.Interval.EnabledState.activityIdentifier.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t SharePlayLatencyLogger.Interval.EnabledState.startTime.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SharePlayLatencyLogger.Interval.EnabledState(0) + 24);
  v4 = type metadata accessor for ContinuousClock.Instant();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SharePlayLatencyLogger.Interval.EnabledState.signpostState.getter()
{
  type metadata accessor for SharePlayLatencyLogger.Interval.EnabledState(0);
}

uint64_t SharePlayLatencyLogger.Interval.EnabledState.signpostID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SharePlayLatencyLogger.Interval.EnabledState(0) + 32);
  v4 = type metadata accessor for OSSignpostID();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SharePlayLatencyLogger.Interval.EnabledState.init(event:activityIdentifier:startTime:signpostState:signpostID:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = *a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  v11 = type metadata accessor for SharePlayLatencyLogger.Interval.EnabledState(0);
  v12 = v11[6];
  v13 = type metadata accessor for ContinuousClock.Instant();
  (*(*(v13 - 8) + 32))(a7 + v12, a4, v13);
  *(a7 + v11[7]) = a5;
  v14 = v11[8];
  v15 = type metadata accessor for OSSignpostID();
  v16 = *(*(v15 - 8) + 32);

  return v16(a7 + v14, a6, v15);
}

uint64_t one-time initialization function for disabled()
{
  v0 = type metadata accessor for SharePlayLatencyLogger.Interval(0);
  __swift_allocate_value_buffer(v0, static SharePlayLatencyLogger.Interval.disabled);
  v1 = __swift_project_value_buffer(v0, static SharePlayLatencyLogger.Interval.disabled);
  v2 = type metadata accessor for SharePlayLatencyLogger.Interval.EnabledState(0);
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 1, 1, v2);
}

uint64_t SharePlayLatencyLogger.Interval.disabled.unsafeMutableAddressor()
{
  if (one-time initialization token for disabled != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for SharePlayLatencyLogger.Interval(0);

  return __swift_project_value_buffer(v0, static SharePlayLatencyLogger.Interval.disabled);
}

uint64_t static SharePlayLatencyLogger.Interval.disabled.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for disabled != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for SharePlayLatencyLogger.Interval(0);
  v3 = __swift_project_value_buffer(v2, static SharePlayLatencyLogger.Interval.disabled);
  swift_beginAccess();
  return outlined init with copy of SharePlayLatencyLogger.Interval.State(v3, a1, type metadata accessor for SharePlayLatencyLogger.Interval);
}

uint64_t outlined init with copy of SharePlayLatencyLogger.Interval.State(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t static SharePlayLatencyLogger.Interval.disabled.setter(uint64_t a1)
{
  if (one-time initialization token for disabled != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for SharePlayLatencyLogger.Interval(0);
  v3 = __swift_project_value_buffer(v2, static SharePlayLatencyLogger.Interval.disabled);
  swift_beginAccess();
  outlined assign with copy of SharePlayLatencyLogger.Interval(a1, v3);
  swift_endAccess();
  return outlined destroy of SharePlayLatencyLogger.Interval(a1, type metadata accessor for SharePlayLatencyLogger.Interval);
}

uint64_t outlined assign with copy of SharePlayLatencyLogger.Interval(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SharePlayLatencyLogger.Interval(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t (*static SharePlayLatencyLogger.Interval.disabled.modify(uint64_t a1))(uint64_t a1)
{
  if (one-time initialization token for disabled != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for SharePlayLatencyLogger.Interval(0);
  __swift_project_value_buffer(v1, static SharePlayLatencyLogger.Interval.disabled);
  swift_beginAccess();
  return ActivitySession.audioSessionID.modify;
}

uint64_t key path getter for static SharePlayLatencyLogger.Interval.disabled : SharePlayLatencyLogger.Interval.Type@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for disabled != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for SharePlayLatencyLogger.Interval(0);
  v3 = __swift_project_value_buffer(v2, static SharePlayLatencyLogger.Interval.disabled);
  swift_beginAccess();
  return outlined init with copy of SharePlayLatencyLogger.Interval.State(v3, a1, type metadata accessor for SharePlayLatencyLogger.Interval);
}

uint64_t key path setter for static SharePlayLatencyLogger.Interval.disabled : SharePlayLatencyLogger.Interval.Type(uint64_t a1)
{
  if (one-time initialization token for disabled != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for SharePlayLatencyLogger.Interval(0);
  v3 = __swift_project_value_buffer(v2, static SharePlayLatencyLogger.Interval.disabled);
  swift_beginAccess();
  outlined assign with copy of SharePlayLatencyLogger.Interval(a1, v3);
  return swift_endAccess();
}

uint64_t SharePlayLatencyLogger.Interval.init(for:activityIdentifier:startTime:signpostState:signpostID:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = type metadata accessor for SharePlayLatencyLogger.Interval.EnabledState(0);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v18 = *a1;
  *(v18 + 1) = a2;
  *(v18 + 2) = a3;
  v19 = *(v16 + 24);
  v20 = type metadata accessor for ContinuousClock.Instant();
  (*(*(v20 - 8) + 32))(&v18[v19], a4, v20);
  *&v18[*(v14 + 28)] = a5;
  v21 = *(v14 + 32);
  v22 = type metadata accessor for OSSignpostID();
  (*(*(v22 - 8) + 32))(&v18[v21], a6, v22);
  outlined init with take of SharePlayLatencyLogger.Interval.EnabledState(v18, a7);
  return (*(v15 + 56))(a7, 0, 1, v14);
}

uint64_t outlined init with take of SharePlayLatencyLogger.Interval.EnabledState(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SharePlayLatencyLogger.Interval.EnabledState(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t specialized static SharePlayLatencyLogger.beginInterval(for:activityIdentifier:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v57 = a4;
  v7 = type metadata accessor for SharePlayLatencyLogger.Interval.EnabledState(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for OSSignpostID();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v55 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v46 - v15;
  v17 = type metadata accessor for ContinuousClock.Instant();
  v18 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *a1;
  if (one-time initialization token for isEnabled != -1)
  {
    v53 = v19;
    v54 = v18;
    v52 = v21;
    swift_once();
    v21 = v52;
    v19 = v53;
    v18 = v54;
  }

  if ((static SharePlayLatencyLogger.isEnabled & 1) == 0)
  {
    goto LABEL_10;
  }

  v56 = v22;
  v53 = v19;
  v54 = v18;
  v49 = v12;
  v51 = a2;
  v52 = v21;
  static ContinuousClock.now.getter();
  v23 = one-time initialization token for signposter;

  if (v23 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for OSSignposter();
  __swift_project_value_buffer(v24, static SharePlayLatencyLogger.signposter);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v59 = v56;
  v25 = SharePlayLatencyLogger.Event.signpostName.getter();
  v27 = v26;
  swift_bridgeObjectRetain_n();
  v28 = OSSignposter.logHandle.getter();
  v47 = static os_signpost_type_t.begin.getter();
  result = OS_os_log.signpostsEnabled.getter();
  v50 = v11;
  v48 = v7;
  if ((result & 1) == 0)
  {
    swift_bridgeObjectRelease_n();

    v32 = v51;
    v33 = a3;
    v34 = v57;
LABEL_19:
    v43 = v49;
    v42 = v50;
    (*(v49 + 16))(v55, v16, v50);
    type metadata accessor for OSSignpostIntervalState();
    swift_allocObject();
    v44 = OSSignpostIntervalState.init(id:isOpen:)();
    *v10 = v56;
    *(v10 + 1) = v32;
    *(v10 + 2) = v33;
    v45 = v48;
    (*(v53 + 32))(&v10[*(v48 + 24)], v52, v54);
    *&v10[*(v45 + 28)] = v44;
    (*(v43 + 32))(&v10[*(v45 + 32)], v16, v42);
    outlined init with take of SharePlayLatencyLogger.Interval.EnabledState(v10, v34);
    (*(v8 + 56))(v34, 0, 1, v45);
  }

  v46 = v8;
  if ((v27 & 1) == 0)
  {

    if (!v25)
    {
      __break(1u);
LABEL_10:
      if (one-time initialization token for disabled != -1)
      {
        swift_once();
      }

      v30 = type metadata accessor for SharePlayLatencyLogger.Interval(0);
      v31 = __swift_project_value_buffer(v30, static SharePlayLatencyLogger.Interval.disabled);
      swift_beginAccess();
      outlined init with copy of SharePlayLatencyLogger.Interval.State(v31, v57, type metadata accessor for SharePlayLatencyLogger.Interval);
    }

    goto LABEL_18;
  }

  if (v25 >> 32)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if ((v25 & 0xFFFFF800) != 0xD800)
  {
    if (v25 >> 16 <= 0x10)
    {

      v25 = v60;
LABEL_18:
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v60[0] = v36;
      *v35 = 136315394;
      v58 = v56;
      v37 = SharePlayLatencyLogger.Event.description.getter();
      v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v38, v60);

      *(v35 + 4) = v39;
      *(v35 + 12) = 2080;
      v32 = v51;
      v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, a3, v60);

      *(v35 + 14) = v40;
      v41 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&dword_1AEB26000, v28, v47, v41, v25, "Begin interval %s for %s", v35, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B27120C0](v36, -1, -1);
      MEMORY[0x1B27120C0](v35, -1, -1);

      v33 = a3;
      v34 = v57;
      v8 = v46;
      goto LABEL_19;
    }

    goto LABEL_22;
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t static SharePlayLatencyLogger.beginInterval(for:activityIdentifier:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for SharePlayLatencyLogger.Interval.EnabledState(0);
  v7 = *(v6 - 1);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for OSSignpostID();
  v11 = *(v10 - 8);
  v69 = v10;
  v70 = v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v59 - v15;
  v17 = type metadata accessor for ContinuousClock.Instant();
  v18 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = *a1;
  if (one-time initialization token for isEnabled != -1)
  {
    v66 = v18;
    v58 = v19;
    swift_once();
    v19 = v58;
    v18 = v66;
  }

  if (static SharePlayLatencyLogger.isEnabled == 1)
  {
    v63 = v19;
    v65 = v21;
    v66 = v18;
    v22 = static ContinuousClock.now.getter();
    v67 = a2(v22);
    v24 = v23;
    if (one-time initialization token for signposter != -1)
    {
      swift_once();
    }

    v64 = v7;
    v25 = type metadata accessor for OSSignposter();
    __swift_project_value_buffer(v25, static SharePlayLatencyLogger.signposter);
    OSSignposter.logHandle.getter();
    OSSignpostID.init(log:)();
    v26 = v70;
    v68 = v24;
    if (!v24)
    {
      v74 = v71;
      v35 = SharePlayLatencyLogger.Event.signpostName.getter();
      v37 = v36;
      v38 = OSSignposter.logHandle.getter();
      LODWORD(v62) = static os_signpost_type_t.begin.getter();
      result = OS_os_log.signpostsEnabled.getter();
      if (result)
      {
        v61 = a3;
        if (v37)
        {
          if (v35 >> 32)
          {
LABEL_37:
            __break(1u);
LABEL_38:
            __break(1u);
            goto LABEL_39;
          }

          if ((v35 & 0xFFFFF800) == 0xD800)
          {
LABEL_40:
            __break(1u);
            return result;
          }

          if (v35 >> 16 > 0x10)
          {
            goto LABEL_38;
          }

          v60 = &v73;
        }

        else
        {
          if (!v35)
          {
LABEL_36:
            __break(1u);
            goto LABEL_37;
          }

          v60 = v35;
        }

        v40 = v65;
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v75[0] = v52;
        *v51 = 136315138;
        v72 = v71;
        v53 = SharePlayLatencyLogger.Event.description.getter();
        v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v54, v75);

        *(v51 + 4) = v55;
        v56 = OSSignpostID.rawValue.getter();
        _os_signpost_emit_with_name_impl(&dword_1AEB26000, v38, v62, v56, v60, "Begin interval %s", v51, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v52);
        MEMORY[0x1B27120C0](v52, -1, -1);
        MEMORY[0x1B27120C0](v51, -1, -1);

        a3 = v61;
        v26 = v70;
      }

      else
      {

        v40 = v65;
      }

      v48 = v69;
      (*(v26 + 16))(v14, v16, v69);
      type metadata accessor for OSSignpostIntervalState();
      swift_allocObject();
      v49 = OSSignpostIntervalState.init(id:isOpen:)();
      v50 = v64;
      goto LABEL_32;
    }

    v62 = v14;
    v74 = v71;
    v27 = SharePlayLatencyLogger.Event.signpostName.getter();
    v29 = v28;
    swift_bridgeObjectRetain_n();
    v30 = OSSignposter.logHandle.getter();
    LODWORD(v60) = static os_signpost_type_t.begin.getter();
    result = OS_os_log.signpostsEnabled.getter();
    if ((result & 1) == 0)
    {
      swift_bridgeObjectRelease_n();

      v39 = v62;
LABEL_25:
      v48 = v69;
      (*(v26 + 16))(v39, v16, v69);
      type metadata accessor for OSSignpostIntervalState();
      swift_allocObject();
      v49 = OSSignpostIntervalState.init(id:isOpen:)();
      v50 = v64;
      v40 = v65;
LABEL_32:
      *v9 = v71;
      v57 = v68;
      *(v9 + 1) = v67;
      *(v9 + 2) = v57;
      (*(v63 + 32))(&v9[v6[6]], v40, v66);
      *&v9[v6[7]] = v49;
      (*(v26 + 32))(&v9[v6[8]], v16, v48);
      outlined init with take of SharePlayLatencyLogger.Interval.EnabledState(v9, a3);
      return (*(v50 + 56))(a3, 0, 1, v6);
    }

    v61 = a3;
    if (v29)
    {
      if (!(v27 >> 32))
      {
        if ((v27 & 0xFFFFF800) == 0xD800)
        {
LABEL_39:
          __break(1u);
          goto LABEL_40;
        }

        if (v27 >> 16 <= 0x10)
        {
          v32 = v68;

          v59 = v75;
          goto LABEL_24;
        }

        goto LABEL_35;
      }
    }

    else
    {
      v32 = v68;

      if (v27)
      {
        v59 = v27;
LABEL_24:
        v39 = v62;
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v75[0] = v42;
        *v41 = 136315394;
        v72 = v71;
        v43 = SharePlayLatencyLogger.Event.description.getter();
        v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v44, v75);

        *(v41 + 4) = v45;
        *(v41 + 12) = 2080;
        v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v67, v32, v75);

        *(v41 + 14) = v46;
        v47 = OSSignpostID.rawValue.getter();
        _os_signpost_emit_with_name_impl(&dword_1AEB26000, v30, v60, v47, v59, "Begin interval %s for %s", v41, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1B27120C0](v42, -1, -1);
        MEMORY[0x1B27120C0](v41, -1, -1);

        a3 = v61;
        v26 = v70;
        goto LABEL_25;
      }

      __break(1u);
    }

    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (one-time initialization token for disabled != -1)
  {
    swift_once();
  }

  v33 = type metadata accessor for SharePlayLatencyLogger.Interval(0);
  v34 = __swift_project_value_buffer(v33, static SharePlayLatencyLogger.Interval.disabled);
  swift_beginAccess();
  return outlined init with copy of SharePlayLatencyLogger.Interval.State(v34, a3, type metadata accessor for SharePlayLatencyLogger.Interval);
}

uint64_t static SharePlayLatencyLogger.emitEvent(_:)(char *a1)
{
  v2 = type metadata accessor for OSSignpostID();
  v3 = *(v2 - 8);
  result = MEMORY[0x1EEE9AC00](v2);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *a1;
  if (one-time initialization token for isEnabled != -1)
  {
    result = swift_once();
  }

  if (static SharePlayLatencyLogger.isEnabled == 1)
  {
    if (one-time initialization token for signposter != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for OSSignposter();
    __swift_project_value_buffer(v8, static SharePlayLatencyLogger.signposter);
    v16[15] = v7;
    v9 = SharePlayLatencyLogger.Event.signpostName.getter();
    v11 = v10;
    static OSSignpostID.exclusive.getter();
    v12 = OSSignposter.logHandle.getter();
    v13 = static os_signpost_type_t.event.getter();
    result = OS_os_log.signpostsEnabled.getter();
    if ((result & 1) == 0)
    {
      goto LABEL_15;
    }

    if ((v11 & 1) == 0)
    {
      if (v9)
      {
LABEL_14:
        v14 = swift_slowAlloc();
        *v14 = 0;
        v15 = OSSignpostID.rawValue.getter();
        _os_signpost_emit_with_name_impl(&dword_1AEB26000, v12, v13, v15, v9, "", v14, 2u);
        MEMORY[0x1B27120C0](v14, -1, -1);
LABEL_15:

        return (*(v3 + 8))(v6, v2);
      }

      __break(1u);
    }

    if (v9 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v9 & 0xFFFFF800) == 0xD800)
      {
LABEL_19:
        __break(1u);
        return result;
      }

      if (v9 >> 16 <= 0x10)
      {
        v9 = v16;
        goto LABEL_14;
      }
    }

    __break(1u);
    goto LABEL_19;
  }

  return result;
}

void static SharePlayLatencyLogger.logInterval(for:activityIdentifier:serverStartTime:)(char *a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v33 - v11;
  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a1;
  if (one-time initialization token for isEnabled != -1)
  {
    swift_once();
  }

  if (static SharePlayLatencyLogger.isEnabled == 1)
  {
    v18 = [objc_opt_self() sharedInstance];
    if (v18)
    {
      v34 = a2;
      v19 = a4;
      v20 = v18;
      v21 = [v18 currentServerTimeDate];

      if (v21)
      {
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        (*(v14 + 56))(v10, 0, 1, v13);
      }

      else
      {
        (*(v14 + 56))(v10, 1, 1, v13);
      }

      outlined init with take of Date?(v10, v12);
      if ((*(v14 + 48))(v12, 1, v13) != 1)
      {
        v30 = (*(v14 + 32))(v16, v12, v13);
        v35[0] = v17;
        v31 = v34(v30);
        specialized static SharePlayLatencyLogger.logInterval(for:activityIdentifier:startTime:endTime:)(v35, v31, v32, v19, v16);

        (*(v14 + 8))(v16, v13);
        return;
      }
    }

    else
    {
      (*(v14 + 56))(v12, 1, 1, v13);
    }

    outlined destroy of Date?(v12);
    if (one-time initialization token for internalLogger != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static SharePlayLatencyLogger.internalLogger);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v36 = v26;
      *v25 = 136315138;
      v35[1] = v17;
      v27 = SharePlayLatencyLogger.Event.description.getter();
      v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, &v36);

      *(v25 + 4) = v29;
      _os_log_impl(&dword_1AEB26000, v23, v24, "Failed to get current server time when logging %s.", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v26);
      MEMORY[0x1B27120C0](v26, -1, -1);
      MEMORY[0x1B27120C0](v25, -1, -1);
    }
  }
}

uint64_t static SharePlayLatencyLogger.logInterval(for:activityIdentifier:localStartTime:)(char *a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  result = MEMORY[0x1EEE9AC00](v7);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  if (one-time initialization token for isEnabled != -1)
  {
    result = swift_once();
  }

  if (static SharePlayLatencyLogger.isEnabled == 1)
  {
    v13 = Date.init()();
    v17 = v12;
    v14 = a2(v13);
    specialized static SharePlayLatencyLogger.logInterval(for:activityIdentifier:startTime:endTime:)(&v17, v14, v15, a4, v11);

    return (*(v8 + 8))(v11, v7);
  }

  return result;
}

uint64_t specialized SharePlayLatencyLogger.Event.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000016 && 0x80000001AEE31B90 == a2;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4A6E6F6973736573 && a2 == 0xEB000000006E696FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001AEE31BB0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001AEE31BD0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000020 && 0x80000001AEE31BF0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000029 && 0x80000001AEE31C20 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001AEE31C50 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001AEE31C70 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001AEE31C90 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000021 && 0x80000001AEE31CB0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD00000000000001FLL && 0x80000001AEE31CE0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001AEE31D00 == a2)
  {

    return 11;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 11;
    }

    else
    {
      return 12;
    }
  }
}

uint64_t specialized static SharePlayLatencyLogger.endInterval(_:)(uint64_t a1)
{
  v139 = type metadata accessor for CharacterSet();
  v138 = *(v139 - 8);
  MEMORY[0x1EEE9AC00](v139);
  v137 = &v129 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = type metadata accessor for OSSignpostError();
  v133 = *(v134 - 8);
  v3 = MEMORY[0x1EEE9AC00](v134);
  v5 = (&v129 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v129 - v6;
  v8 = type metadata accessor for OSSignpostID();
  v144 = *(v8 - 8);
  v145 = v8;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v131 = &v129 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v141 = &v129 - v11;
  v12 = type metadata accessor for ContinuousClock.Instant();
  v146 = *(v12 - 8);
  v147 = v12;
  v13 = MEMORY[0x1EEE9AC00](v12);
  v130 = &v129 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v142 = &v129 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v129 - v17;
  v19 = type metadata accessor for SharePlayLatencyLogger.Interval.State(0);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v129 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for SharePlayLatencyLogger.Interval.EnabledState(0);
  v23 = *(v22 - 8);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v135 = &v129 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v129 = &v129 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v140 = &v129 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v136 = &v129 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v34 = &v129 - v33;
  v35 = MEMORY[0x1EEE9AC00](v32);
  v37 = &v129 - v36;
  MEMORY[0x1EEE9AC00](v35);
  v39 = &v129 - v38;
  outlined init with copy of SharePlayLatencyLogger.Interval.State(a1, v21, type metadata accessor for SharePlayLatencyLogger.Interval.State);
  v40 = *(v23 + 48);
  v148 = v22;
  result = v40(v21, 1, v22);
  if (result != 1)
  {
    outlined init with take of SharePlayLatencyLogger.Interval.EnabledState(v21, v39);
    v132 = v18;
    static ContinuousClock.now.getter();
    v42 = *(v39 + 2);
    v143 = v39;
    if (!v42)
    {
      goto LABEL_9;
    }

    v43 = *(v39 + 1);
    if (one-time initialization token for signposter != -1)
    {
      swift_once();
    }

    v44 = type metadata accessor for OSSignposter();
    __swift_project_value_buffer(v44, static SharePlayLatencyLogger.signposter);
    LOBYTE(v154) = *v39;
    v135 = SharePlayLatencyLogger.Event.signpostName.getter();
    v34 = v45;
    outlined init with copy of SharePlayLatencyLogger.Interval.State(v39, v37, type metadata accessor for SharePlayLatencyLogger.Interval.EnabledState);

    v5 = OSSignposter.logHandle.getter();
    v46 = v141;
    OSSignpostIntervalState.signpostID.getter();
    v47 = static os_signpost_type_t.end.getter();
    result = OS_os_log.signpostsEnabled.getter();
    if ((result & 1) == 0)
    {
      goto LABEL_15;
    }

    LODWORD(v131) = v47;
    if ((v34 & 1) == 0)
    {

      v48 = v134;
      v39 = v133;
      if (!v135)
      {
        __break(1u);
LABEL_9:
        if (one-time initialization token for signposter != -1)
        {
          swift_once();
        }

        v49 = type metadata accessor for OSSignposter();
        __swift_project_value_buffer(v49, static SharePlayLatencyLogger.signposter);
        LOBYTE(v154) = *v39;
        v37 = SharePlayLatencyLogger.Event.signpostName.getter();
        v46 = v50;
        outlined init with copy of SharePlayLatencyLogger.Interval.State(v39, v34, type metadata accessor for SharePlayLatencyLogger.Interval.EnabledState);
        v42 = OSSignposter.logHandle.getter();
        v51 = v131;
        OSSignpostIntervalState.signpostID.getter();
        v43 = static os_signpost_type_t.end.getter();
        result = OS_os_log.signpostsEnabled.getter();
        if ((result & 1) == 0)
        {

          (*(v144 + 8))(v51, v145);
          outlined destroy of SharePlayLatencyLogger.Interval(v34, type metadata accessor for SharePlayLatencyLogger.Interval.EnabledState);
LABEL_38:
          v105 = v146;
          v104 = v147;
          v106 = v132;
          v107 = v130;
          v108 = v129;
          if (one-time initialization token for latencyLogger != -1)
          {
            swift_once();
          }

          v109 = type metadata accessor for Logger();
          __swift_project_value_buffer(v109, static SharePlayLatencyLogger.latencyLogger);
          v110 = v143;
          outlined init with copy of SharePlayLatencyLogger.Interval.State(v143, v108, type metadata accessor for SharePlayLatencyLogger.Interval.EnabledState);
          (*(v105 + 16))(v107, v106, v104);
          v111 = v110;
          v112 = v135;
          outlined init with copy of SharePlayLatencyLogger.Interval.State(v111, v135, type metadata accessor for SharePlayLatencyLogger.Interval.EnabledState);
          getEnumTag for RTCReporterCategory();
          getEnumTag for RTCReporterCategory();
          v113 = Logger.logObject.getter();
          v114 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v113, v114))
          {
            v115 = swift_slowAlloc();
            v116 = swift_slowAlloc();
            v156[0] = v116;
            *v115 = 136315650;
            LOBYTE(v154) = *v108;
            v117 = SharePlayLatencyLogger.Event.description.getter();
            v118 = v108;
            v120 = v119;
            outlined destroy of SharePlayLatencyLogger.Interval(v118, type metadata accessor for SharePlayLatencyLogger.Interval.EnabledState);
            v121 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v117, v120, v156);

            *(v115 + 4) = v121;
            *(v115 + 12) = 1040;
            *(v115 + 14) = 0;
            *(v115 + 18) = 2048;
            v122 = v135;
            ContinuousClock.Instant.duration(to:)();
            v123 = Duration.components.getter() * 1000.0;
            Duration.components.getter();
            v125 = v124;
            outlined destroy of SharePlayLatencyLogger.Interval(v122, type metadata accessor for SharePlayLatencyLogger.Interval.EnabledState);
            v126 = *(v105 + 8);
            v127 = v147;
            v126(v107, v147);
            *(v115 + 20) = v123 + v125 / 1.0e15;
            _os_log_impl(&dword_1AEB26000, v113, v114, "shareplay_%s=%.*f", v115, 0x1Cu);
            __swift_destroy_boxed_opaque_existential_1Tm(v116);
            MEMORY[0x1B27120C0](v116, -1, -1);
            MEMORY[0x1B27120C0](v115, -1, -1);

            v126(v132, v127);
          }

          else
          {

            outlined destroy of SharePlayLatencyLogger.Interval(v112, type metadata accessor for SharePlayLatencyLogger.Interval.EnabledState);
            v128 = *(v105 + 8);
            v128(v107, v104);
            outlined destroy of SharePlayLatencyLogger.Interval(v108, type metadata accessor for SharePlayLatencyLogger.Interval.EnabledState);
            v128(v106, v104);
          }

          return outlined destroy of SharePlayLatencyLogger.Interval(v143, type metadata accessor for SharePlayLatencyLogger.Interval.EnabledState);
        }

        if ((v46 & 1) == 0)
        {
          v52 = v134;
          v53 = v133;
          if (!v37)
          {
            __break(1u);
LABEL_15:

            (*(v144 + 8))(v46, v145);
            outlined destroy of SharePlayLatencyLogger.Interval(v37, type metadata accessor for SharePlayLatencyLogger.Interval.EnabledState);
            goto LABEL_25;
          }

          goto LABEL_34;
        }

        v52 = v134;
        v53 = v133;
        if (!HIDWORD(v37))
        {
          if ((v37 & 0xFFFFF800) == 0xD800)
          {
LABEL_50:
            __break(1u);
            return result;
          }

          if (v37 >> 16 <= 0x10)
          {
            v37 = &v149;
LABEL_34:

            checkForErrorAndConsumeState(state:)();

            if ((v53[11])(v5, v52) == *MEMORY[0x1E69E93E8])
            {
              v94 = 0;
              v95 = 0;
              v96 = "[Error] Interval already ended";
            }

            else
            {
              v53[1](v5, v52);
              v96 = "End interval %s";
              v95 = 2;
              v94 = 1;
            }

            v97 = swift_slowAlloc();
            v98 = swift_slowAlloc();
            v156[0] = v98;
            *v97 = v95;
            *(v97 + 1) = v94;
            *(v97 + 2) = 2080;
            LOBYTE(v152) = *v34;
            v99 = SharePlayLatencyLogger.Event.description.getter();
            v101 = v100;
            outlined destroy of SharePlayLatencyLogger.Interval(v34, type metadata accessor for SharePlayLatencyLogger.Interval.EnabledState);
            v102 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v99, v101, v156);

            *(v97 + 4) = v102;
            v103 = OSSignpostID.rawValue.getter();
            _os_signpost_emit_with_name_impl(&dword_1AEB26000, v42, v43, v103, v37, v96, v97, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v98);
            MEMORY[0x1B27120C0](v98, -1, -1);
            MEMORY[0x1B27120C0](v97, -1, -1);

            (*(v144 + 8))(v51, v145);
            goto LABEL_38;
          }

          goto LABEL_48;
        }

LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
        goto LABEL_49;
      }

LABEL_21:

      checkForErrorAndConsumeState(state:)();

      v54 = (*(v39 + 11))(v7, v48) == *MEMORY[0x1E69E93E8];
      v130 = v43;
      if (v54)
      {
        v56 = 0;
        v55 = "[Error] Interval already ended";
      }

      else
      {
        (*(v39 + 1))(v7, v48);
        v55 = "End interval %s for %s";
        v56 = 2;
      }

      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v156[0] = v58;
      *v57 = v56;
      *(v57 + 1) = v56;
      *(v57 + 2) = 2080;
      LOBYTE(v152) = *v37;
      v59 = SharePlayLatencyLogger.Event.description.getter();
      v61 = v60;
      outlined destroy of SharePlayLatencyLogger.Interval(v37, type metadata accessor for SharePlayLatencyLogger.Interval.EnabledState);
      v62 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, v61, v156);

      *(v57 + 4) = v62;
      *(v57 + 12) = 2080;
      v43 = v130;
      *(v57 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v130, v42, v156);
      v63 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&dword_1AEB26000, v5, v131, v63, v135, v55, v57, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B27120C0](v58, -1, -1);
      MEMORY[0x1B27120C0](v57, -1, -1);

      (*(v144 + 8))(v46, v145);
LABEL_25:
      v154 = v43;
      v155 = v42;
      v152 = 45;
      v153 = 0xE100000000000000;
      v150 = 95;
      v151 = 0xE100000000000000;
      lazy protocol witness table accessor for type String and conformance String();
      lazy protocol witness table accessor for type String and conformance String();
      RangeReplaceableCollection<>.replacing<A, B>(_:with:maxReplacements:)();
      v154 = v156[0];
      v155 = v156[1];
      v64 = v137;
      static CharacterSet.whitespacesAndNewlines.getter();
      lazy protocol witness table accessor for type String and conformance String();
      v145 = StringProtocol.trimmingCharacters(in:)();
      v66 = v65;
      (*(v138 + 8))(v64, v139);

      v68 = v146;
      v67 = v147;
      v69 = v132;
      v70 = v142;
      v71 = v136;
      if (one-time initialization token for latencyLogger != -1)
      {
        swift_once();
      }

      v72 = type metadata accessor for Logger();
      __swift_project_value_buffer(v72, static SharePlayLatencyLogger.latencyLogger);
      v73 = v143;
      outlined init with copy of SharePlayLatencyLogger.Interval.State(v143, v71, type metadata accessor for SharePlayLatencyLogger.Interval.EnabledState);
      (*(v68 + 16))(v70, v69, v67);
      v74 = v73;
      v75 = v140;
      outlined init with copy of SharePlayLatencyLogger.Interval.State(v74, v140, type metadata accessor for SharePlayLatencyLogger.Interval.EnabledState);

      getEnumTag for RTCReporterCategory();
      getEnumTag for RTCReporterCategory();
      v76 = Logger.logObject.getter();
      v77 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v76, v77))
      {
        v78 = swift_slowAlloc();
        v144 = swift_slowAlloc();
        v156[0] = v144;
        *v78 = 136315906;
        LOBYTE(v154) = *v71;
        v79 = SharePlayLatencyLogger.Event.description.getter();
        v80 = v75;
        v81 = v68;
        v83 = v82;
        outlined destroy of SharePlayLatencyLogger.Interval(v71, type metadata accessor for SharePlayLatencyLogger.Interval.EnabledState);
        v84 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v79, v83, v156);

        *(v78 + 4) = v84;
        *(v78 + 12) = 2080;
        v85 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v145, v66, v156);

        *(v78 + 14) = v85;
        *(v78 + 22) = 1040;
        *(v78 + 24) = 0;
        *(v78 + 28) = 2048;
        v86 = v142;
        ContinuousClock.Instant.duration(to:)();
        v87 = Duration.components.getter() * 1000.0;
        Duration.components.getter();
        v89 = v88;
        outlined destroy of SharePlayLatencyLogger.Interval(v80, type metadata accessor for SharePlayLatencyLogger.Interval.EnabledState);
        v90 = *(v81 + 8);
        v91 = v147;
        v90(v86, v147);
        *(v78 + 30) = v87 + v89 / 1.0e15;
        _os_log_impl(&dword_1AEB26000, v76, v77, "shareplay_%s_%s=%.*f", v78, 0x26u);
        v92 = v144;
        swift_arrayDestroy();
        MEMORY[0x1B27120C0](v92, -1, -1);
        MEMORY[0x1B27120C0](v78, -1, -1);

        v90(v132, v91);
      }

      else
      {

        outlined destroy of SharePlayLatencyLogger.Interval(v75, type metadata accessor for SharePlayLatencyLogger.Interval.EnabledState);
        v93 = *(v68 + 8);
        v93(v70, v67);
        outlined destroy of SharePlayLatencyLogger.Interval(v71, type metadata accessor for SharePlayLatencyLogger.Interval.EnabledState);
        v93(v69, v67);
      }

      return outlined destroy of SharePlayLatencyLogger.Interval(v143, type metadata accessor for SharePlayLatencyLogger.Interval.EnabledState);
    }

    v48 = v134;
    v39 = v133;
    if (HIDWORD(v135))
    {
      __break(1u);
    }

    else
    {
      if ((v135 & 0xFFFFF800) == 0xD800)
      {
LABEL_49:
        __break(1u);
        goto LABEL_50;
      }

      if (v135 >> 16 <= 0x10)
      {

        v135 = v156;
        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_47;
  }

  return result;
}

uint64_t specialized static SharePlayLatencyLogger.emitEvent(_:in:message:)(const char *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v38 = a3;
  v6 = type metadata accessor for OSSignpostID();
  v39 = *(v6 - 8);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v36[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v36[-v10];
  v12 = type metadata accessor for SharePlayLatencyLogger.Interval.State(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v36[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = type metadata accessor for SharePlayLatencyLogger.Interval.EnabledState(0);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v36[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  LOBYTE(a1) = *a1;
  outlined init with copy of SharePlayLatencyLogger.Interval.State(a2, v14, type metadata accessor for SharePlayLatencyLogger.Interval.State);
  result = (*(v16 + 48))(v14, 1, v15);
  if (result != 1)
  {
    outlined init with take of SharePlayLatencyLogger.Interval.EnabledState(v14, v18);
    v21 = 0x1EB5F5000uLL;
    if (!a4)
    {
      goto LABEL_9;
    }

    v22 = v6;
    if (one-time initialization token for signposter != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for OSSignposter();
    __swift_project_value_buffer(v23, static SharePlayLatencyLogger.signposter);
    v41 = a1;
    a1 = SharePlayLatencyLogger.Event.signpostName.getter();
    v25 = v24;
    v6 = v39;
    (*(v39 + 16))(v11, &v18[*(v15 + 32)], v22);

    v9 = OSSignposter.logHandle.getter();
    v15 = static os_signpost_type_t.event.getter();
    result = OS_os_log.signpostsEnabled.getter();
    if ((result & 1) == 0)
    {
      goto LABEL_15;
    }

    v37 = v15;
    if ((v25 & 1) == 0)
    {

      if (!a1)
      {
        __break(1u);
LABEL_9:
        v22 = v6;
        if (*(v21 + 4016) != -1)
        {
          swift_once();
        }

        v26 = type metadata accessor for OSSignposter();
        __swift_project_value_buffer(v26, static SharePlayLatencyLogger.signposter);
        LOBYTE(v40) = a1;
        v27 = SharePlayLatencyLogger.Event.signpostName.getter();
        v29 = v28;
        v6 = v39;
        (*(v39 + 16))(v9, &v18[*(v15 + 32)], v22);
        v11 = OSSignposter.logHandle.getter();
        v30 = static os_signpost_type_t.event.getter();
        result = OS_os_log.signpostsEnabled.getter();
        if ((result & 1) == 0)
        {
          goto LABEL_27;
        }

        if ((v29 & 1) == 0)
        {
          if (!v27)
          {
            __break(1u);
LABEL_15:

LABEL_21:

            (*(v6 + 8))(v11, v22);
            return outlined destroy of SharePlayLatencyLogger.Interval(v18, type metadata accessor for SharePlayLatencyLogger.Interval.EnabledState);
          }

          goto LABEL_26;
        }

        if (!(v27 >> 32))
        {
          if ((v27 & 0xFFFFF800) == 0xD800)
          {
LABEL_35:
            __break(1u);
            return result;
          }

          if (v27 >> 16 <= 0x10)
          {
            v27 = &v42;
LABEL_26:
            v34 = swift_slowAlloc();
            *v34 = 0;
            v35 = OSSignpostID.rawValue.getter();
            _os_signpost_emit_with_name_impl(&dword_1AEB26000, v11, v30, v35, v27, "", v34, 2u);
            MEMORY[0x1B27120C0](v34, -1, -1);
LABEL_27:

            (*(v6 + 8))(v9, v22);
            return outlined destroy of SharePlayLatencyLogger.Interval(v18, type metadata accessor for SharePlayLatencyLogger.Interval.EnabledState);
          }

          goto LABEL_33;
        }

LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

LABEL_20:
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v40 = v32;
      *v31 = 136315138;
      *(v31 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, a4, &v40);
      v33 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&dword_1AEB26000, v9, v37, v33, a1, "%s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v32);
      MEMORY[0x1B27120C0](v32, -1, -1);
      MEMORY[0x1B27120C0](v31, -1, -1);
      goto LABEL_21;
    }

    if (a1 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((a1 & 0xFFFFF800) == 0xD800)
      {
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      if (a1 >> 16 <= 0x10)
      {

        a1 = &v40;
        goto LABEL_20;
      }
    }

    __break(1u);
    goto LABEL_32;
  }

  return result;
}

uint64_t outlined destroy of Date?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with take of Date?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void specialized static SharePlayLatencyLogger.logInterval(for:activityIdentifier:startTime:endTime:)(unsigned __int8 *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v63 = a5;
  v60 = a2;
  v8 = type metadata accessor for Date();
  v66 = *(v8 - 8);
  v67 = v8;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v64 = &v55[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v65 = &v55[-v11];
  v12 = type metadata accessor for CharacterSet();
  v61 = *(v12 - 8);
  v62 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v55[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v59 = type metadata accessor for OSSignpostID();
  v15 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v17 = &v55[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = *a1;
  if (one-time initialization token for signposter != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for OSSignposter();
  __swift_project_value_buffer(v19, static SharePlayLatencyLogger.signposter);
  v58 = v18;
  LOBYTE(v72) = v18;
  v20 = SharePlayLatencyLogger.Event.signpostName.getter();
  v22 = v21;

  static OSSignpostID.exclusive.getter();
  v23 = OSSignposter.logHandle.getter();
  v24 = static os_signpost_type_t.event.getter();
  if ((OS_os_log.signpostsEnabled.getter() & 1) == 0)
  {
    goto LABEL_7;
  }

  v57 = a4;
  v56 = v24;
  if (v22)
  {
    if (v20 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v20 & 0xFFFFF800) == 0xD800)
      {
LABEL_20:
        __break(1u);
        return;
      }

      if (v20 >> 16 <= 0x10)
      {

        v20 = v74;
        goto LABEL_12;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

  if (v20)
  {
LABEL_12:
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v74[0] = v27;
    *v26 = 136315394;
    LOBYTE(v70) = v58;
    v28 = SharePlayLatencyLogger.Event.description.getter();
    v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, v74);

    *(v26 + 4) = v30;
    *(v26 + 12) = 2080;
    v25 = v60;
    *(v26 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v60, a3, v74);
    v31 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_1AEB26000, v23, v56, v31, v20, "Event %s for %s", v26, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v27, -1, -1);
    MEMORY[0x1B27120C0](v26, -1, -1);

    (*(v15 + 8))(v17, v59);
    a4 = v57;
    goto LABEL_13;
  }

  __break(1u);
LABEL_7:

  (*(v15 + 8))(v17, v59);
  v25 = v60;
LABEL_13:
  v72 = v25;
  v73 = a3;
  v70 = 45;
  v71 = 0xE100000000000000;
  v68 = 95;
  v69 = 0xE100000000000000;
  lazy protocol witness table accessor for type String and conformance String();
  lazy protocol witness table accessor for type String and conformance String();
  RangeReplaceableCollection<>.replacing<A, B>(_:with:maxReplacements:)();
  v72 = v74[0];
  v73 = v74[1];
  static CharacterSet.whitespacesAndNewlines.getter();
  lazy protocol witness table accessor for type String and conformance String();
  v60 = StringProtocol.trimmingCharacters(in:)();
  v33 = v32;
  (*(v61 + 8))(v14, v62);

  v34 = v66;
  if (one-time initialization token for latencyLogger != -1)
  {
    swift_once();
  }

  v35 = type metadata accessor for Logger();
  __swift_project_value_buffer(v35, static SharePlayLatencyLogger.latencyLogger);
  v36 = *(v34 + 16);
  v37 = v65;
  v38 = a4;
  v39 = v67;
  v36(v65, v38, v67);
  v40 = v64;
  v36(v64, v63, v39);

  getEnumTag for RTCReporterCategory();
  getEnumTag for RTCReporterCategory();
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v74[0] = v44;
    *v43 = 136315906;
    LOBYTE(v72) = v58;
    v45 = SharePlayLatencyLogger.Event.description.getter();
    v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v46, v74);

    *(v43 + 4) = v47;
    *(v43 + 12) = 2080;
    v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v60, v33, v74);

    *(v43 + 14) = v48;
    *(v43 + 22) = 1040;
    *(v43 + 24) = 0;
    *(v43 + 28) = 2048;
    Date.distance(to:)();
    v50 = v49;
    v51 = *(v34 + 8);
    v52 = v67;
    v51(v40, v67);
    v51(v37, v52);
    *(v43 + 30) = v50 * 1000.0;
    _os_log_impl(&dword_1AEB26000, v41, v42, "shareplay_%s_%s=%.*f", v43, 0x26u);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v44, -1, -1);
    MEMORY[0x1B27120C0](v43, -1, -1);
  }

  else
  {

    v53 = *(v34 + 8);
    v54 = v67;
    v53(v40, v67);
    v53(v37, v54);
  }
}

unint64_t lazy protocol witness table accessor for type SharePlayLatencyLogger.Event and conformance SharePlayLatencyLogger.Event()
{
  result = lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event and conformance SharePlayLatencyLogger.Event;
  if (!lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event and conformance SharePlayLatencyLogger.Event)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event and conformance SharePlayLatencyLogger.Event);
  }

  return result;
}

void type metadata accessor for String?()
{
  if (!lazy cache variable for type metadata for String?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for String?);
    }
  }
}

uint64_t getEnumTagSinglePayload for SharePlayLatencyLogger.Event(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SharePlayLatencyLogger.Event(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void specialized static SharePlayLatencyLogger.logInterval(for:activityIdentifier:serverStartTime:)(unsigned __int8 *a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v34[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v34[-v10];
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v34[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = *a1;
  if (one-time initialization token for isEnabled != -1)
  {
    swift_once();
  }

  if (static SharePlayLatencyLogger.isEnabled == 1)
  {
    v17 = [objc_opt_self() sharedInstance];
    if (v17)
    {
      v18 = v17;
      v19 = [v17 currentServerTimeDate];

      if (v19)
      {
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        (*(v13 + 56))(v9, 0, 1, v12);
      }

      else
      {
        (*(v13 + 56))(v9, 1, 1, v12);
      }

      outlined init with take of Date?(v9, v11);
      if ((*(v13 + 48))(v11, 1, v12) != 1)
      {
        v28 = (*(v13 + 32))(v15, v11, v12);
        v35[0] = v16;
        v29 = (*((*MEMORY[0x1E69E7D40] & *a3) + 0x328))(v28);
        v30 = [v29 activityIdentifier];

        v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v33 = v32;

        specialized static SharePlayLatencyLogger.logInterval(for:activityIdentifier:startTime:endTime:)(v35, v31, v33, a2, v15);

        (*(v13 + 8))(v15, v12);
        return;
      }
    }

    else
    {
      (*(v13 + 56))(v11, 1, 1, v12);
    }

    outlined destroy of Date?(v11);
    if (one-time initialization token for internalLogger != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, static SharePlayLatencyLogger.internalLogger);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v36 = v24;
      *v23 = 136315138;
      v35[1] = v16;
      v25 = SharePlayLatencyLogger.Event.description.getter();
      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, &v36);

      *(v23 + 4) = v27;
      _os_log_impl(&dword_1AEB26000, v21, v22, "Failed to get current server time when logging %s.", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v24);
      MEMORY[0x1B27120C0](v24, -1, -1);
      MEMORY[0x1B27120C0](v23, -1, -1);
    }
  }
}

uint64_t outlined destroy of SharePlayLatencyLogger.Interval(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t PowerLogReporter.streamPayload.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
}

uint64_t outlined init with copy of Any?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t PowerLogReporter.streamID.setter(uint64_t a1)
{
  swift_beginAccess();
  outlined assign with take of Any?(a1, v1 + 24);
  return swift_endAccess();
}

uint64_t outlined assign with take of Any?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t PowerLogReporter.category.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 56);

  return v1;
}

uint64_t PowerLogReporter.category.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
}

uint64_t PowerLogReporter.subsystem.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 72);

  return v1;
}

uint64_t PowerLogReporter.subsystem.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
}

uint64_t PowerLogReporter.__allocating_init(subsystem:category:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  PowerLogReporter.init(subsystem:category:)(a1, a2, a3, a4);
  return v8;
}

uint64_t PowerLogReporter.init(subsystem:category:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v4 + 56) = a3;
  *(v4 + 16) = v9;
  *(v4 + 24) = 0u;
  *(v4 + 40) = 0u;
  *(v4 + 72) = a1;
  *(v4 + 80) = a2;
  *(v4 + 64) = a4;

  v10 = MEMORY[0x1B270FF70](a1, a2);

  swift_beginAccess();
  v11 = *(v4 + 56);
  v12 = *(v4 + 64);

  v13 = MEMORY[0x1B270FF70](v11, v12);

  v14 = PPSCreateTelemetryIdentifier();

  if (v14)
  {
    v15 = MEMORY[0x1E69E6B70];
  }

  else
  {
    v15 = 0;
    v17[1] = 0;
    v17[2] = 0;
  }

  v17[0] = v14;
  v17[3] = v15;
  swift_beginAccess();
  outlined assign with take of Any?(v17, v4 + 24);
  swift_endAccess();
  return v4;
}

Swift::OpaquePointer_optional __swiftcall PowerLogReporter.report(withStreamPayload:)(Swift::OpaquePointer withStreamPayload)
{
  (*(*v1 + 136))(&v13, withStreamPayload._rawValue);
  if (v14)
  {
    outlined init with take of Any(&v13, v15);
    outlined init with copy of Any(v15, &v13);
    v2 = swift_dynamicCast();
    v3 = *(*v1 + 112);
    v4 = (v3)(v2);
    specialized _dictionaryUpCast<A, B, C, D>(_:)(v4);

    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    PPSSendTelemetry();

    v6 = v3();
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
  }

  else
  {
    outlined destroy of Any?(&v13);
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static Log.default);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1AEB26000, v9, v10, "Could not unwrap streamID of current activity", v11, 2u);
      MEMORY[0x1B27120C0](v11, -1, -1);
    }

    v6 = 0;
  }

  v12 = v6;
  result.value._rawValue = v12;
  result.is_nil = v7;
  return result;
}

void *PowerLogReporter.deinit()
{

  outlined destroy of Any?(v0 + 24);

  return v0;
}

uint64_t PowerLogReporter.__deallocating_deinit()
{

  outlined destroy of Any?(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t (*protocol witness for PowerReportingProcotol.streamID.modify in conformance PowerLogReporter(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(**v1 + 152))();
  return protocol witness for PresenceDataSource.members.modify in conformance PersonalPresenceDataSource;
}

uint64_t (*protocol witness for PowerReportingProcotol.category.modify in conformance PowerLogReporter(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(**v1 + 176))();
  return protocol witness for PresenceDataSource.members.modify in conformance PersonalPresenceDataSource;
}

uint64_t (*protocol witness for PowerReportingProcotol.subsystem.modify in conformance PowerLogReporter(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(**v1 + 200))();
  return protocol witness for PresenceDataSource.members.modify in conformance PersonalPresenceDataSource;
}

uint64_t (*protocol witness for PowerReportingProcotol.streamPayload.modify in conformance PowerLogReporter(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(**v1 + 128))();
  return protocol witness for PresenceDataSource.members.modify in conformance SKPresenceDataSource<A>;
}

uint64_t protocol witness for PowerReportingProcotol.init(subsystem:category:) in conformance PowerLogReporter@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 208))();
  *a1 = result;
  return result;
}

uint64_t DatagramClient.doCreateChannelGroup(topic:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  if (*(v2 + 48))
  {
    v6 = *(v2 + 40);
    v27 = destructiveProjectEnumData for ActivitySession.Errors;
    v28 = 0;
    aBlock = MEMORY[0x1E69E9820];
    v24 = 1107296256;
    v25 = thunk for @escaping @callee_guaranteed (@guaranteed OS_nw_protocol_options) -> ();
    v26 = &block_descriptor_13_0;
    v9 = _Block_copy(&aBlock);
    v27 = destructiveProjectEnumData for ActivitySession.Errors;
    v28 = 0;
    aBlock = MEMORY[0x1E69E9820];
    v24 = 1107296256;
    v25 = thunk for @escaping @callee_guaranteed (@guaranteed OS_nw_protocol_options) -> ();
    v26 = &block_descriptor_16_0;
    v10 = _Block_copy(&aBlock);

    outlined copy of Data?(v5, v6);
    secure_udp = nw_parameters_create_secure_udp(v9, v10);
    _Block_release(v10);
    _Block_release(v9);
    v12 = nw_parameters_copy_default_protocol_stack(secure_udp);
    nw_protocol_stack_clear_application_protocols(v12);
    v13 = objc_opt_self();
    [v13 augmentConnectionGroupNetworkParameters_];
    v14 = MEMORY[0x1B270FF70](v3, v4);

    v15 = MEMORY[0x1B270FF70](a1, a2);
    if (v6 >> 60 == 15)
    {
      v16 = 0;
    }

    else
    {
      v16 = v5;
    }

    if (v6 >> 60 == 15)
    {
      v17 = 0xC000000000000000;
    }

    else
    {
      v17 = v6;
    }

    outlined copy of Data?(v5, v6);
    isa = Data._bridgeToObjectiveC()().super.isa;
    outlined consume of Data._Representation(v16, v17);
    v19 = [v13 createGroupDescriptorForSessionIDAlias:v14 topic:v15 salt:isa];

    nw_connection_group_create(v19, secure_udp);
    v27 = closure #3 in DatagramClient.doCreateChannelGroup(topic:);
    v28 = 0;
    aBlock = MEMORY[0x1E69E9820];
    v24 = 1107296256;
    v25 = thunk for @escaping @callee_guaranteed (@guaranteed OS_nw_endpoint, @unowned nw_group_membership_changed_type_t, @unowned Bool) -> (@unowned Bool);
    v26 = &block_descriptor_19_0;
    v20 = _Block_copy(&aBlock);
    nw_connection_group_set_membership_changed_handler();
    _Block_release(v20);
    type metadata accessor for NWConnectionGroup();
    v21 = NWConnectionGroup.__allocating_init(_:)();
    outlined consume of Data?(v5, v6);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return v21;
  }

  else
  {
    type metadata accessor for NWConnectionGroup();
    swift_allocObject();
    swift_unknownObjectRetain();

    return NWConnectionGroup.init(with:using:)();
  }
}

uint64_t closure #3 in DatagramClient.doCreateChannelGroup(topic:)(uint64_t a1, int a2, char a3)
{
  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, log);
  swift_unknownObjectRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v18 = v7;
    *v6 = 136315650;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo14OS_nw_endpoint_pMd, &_sSo14OS_nw_endpoint_pMR);
    v8 = String.init<A>(reflecting:)();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v18);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2080;
    type metadata accessor for nw_group_membership_changed_type_t(0);
    v11 = String.init<A>(reflecting:)();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v18);

    *(v6 + 14) = v13;
    *(v6 + 22) = 2080;
    v14 = String.init<A>(reflecting:)();
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v18);

    *(v6 + 24) = v16;
    _os_log_impl(&dword_1AEB26000, v4, v5, "Set the membership change handler %s %s %s", v6, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v7, -1, -1);
    MEMORY[0x1B27120C0](v6, -1, -1);
  }

  return 0;
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed OS_nw_endpoint, @unowned nw_group_membership_changed_type_t, @unowned Bool) -> (@unowned Bool)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 32);

  v7 = swift_unknownObjectRetain();
  LOBYTE(a4) = v6(v7, a3, a4);

  swift_unknownObjectRelease();
  return a4 & 1;
}

uint64_t closure #1 in DatagramClient.handleChannelConnectError(error:channelStream:attempt:promise:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a4 + 1;
  if (__OFADD__(a4, 1))
  {
    __break(1u);
  }

  else
  {
    v11 = result;
    ObjectType = swift_getObjectType();

    return specialized DatagramClient.createChannelGroup(channelStream:attempt:promise:)(a2, v6, a5, a6, v11, ObjectType, a3);
  }

  return result;
}

uint64_t DatagramClient.createChannelGroup(channelStream:attempt:promise:)(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(uint64_t), uint64_t a5)
{
  ObjectType = swift_getObjectType();

  return specialized DatagramClient.createChannelGroup(channelStream:attempt:promise:)(a1, a3, a4, a5, v5, ObjectType, a2);
}

uint64_t closure #1 in DatagramClient.createChannelGroup(channelStream:attempt:promise:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, unint64_t a7, void (*a8)(uint64_t), uint64_t a9, uint64_t a10)
{
  v175 = a8;
  v174 = a7;
  v185 = a1;
  v186 = a6;
  v176 = a5;
  v183 = a3;
  v184 = a4;
  v10 = type metadata accessor for DatagramChannelConnectError(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v173 = (&v152 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Network7NWErrorOSgMd, &_s7Network7NWErrorOSgMR);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v167 = &v152 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v168 = (&v152 - v16);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v161 = &v152 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v166 = &v152 - v19;
  v180 = type metadata accessor for NWError();
  v178 = *(v180 - 8);
  v20 = MEMORY[0x1EEE9AC00](v180);
  v181 = (&v152 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = MEMORY[0x1EEE9AC00](v20);
  v177 = &v152 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v162 = (&v152 - v25);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v163 = &v152 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v169 = &v152 - v29;
  MEMORY[0x1EEE9AC00](v28);
  v171 = &v152 - v30;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy7Network17NWConnectionGroupC14CopresenceCore27DatagramChannelConnectErrorOGMd, &_ss6ResultOy7Network17NWConnectionGroupC14CopresenceCore27DatagramChannelConnectErrorOGMR);
  MEMORY[0x1EEE9AC00](v159);
  v160 = (&v152 - v31);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Network17NWConnectionGroupC5StateOSgMd, &_s7Network17NWConnectionGroupC5StateOSgMR);
  v33 = MEMORY[0x1EEE9AC00](v32 - 8);
  v35 = &v152 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v37 = &v152 - v36;
  v38 = type metadata accessor for NWConnectionGroup.State();
  v182 = *(v38 - 8);
  v39 = MEMORY[0x1EEE9AC00](v38);
  v179 = &v152 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x1EEE9AC00](v39);
  v43 = &v152 - v42;
  v44 = MEMORY[0x1EEE9AC00](v41);
  v46 = &v152 - v45;
  MEMORY[0x1EEE9AC00](v44);
  v48 = &v152 - v47;
  v49 = type metadata accessor for DispatchPredicate();
  v50 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v52 = (&v152 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v172 = result;
  v54 = *(result + 80);
  *v52 = v54;
  (*(v50 + 104))(v52, *MEMORY[0x1E69E8020], v49);
  v55 = v54;
  LOBYTE(v54) = _dispatchPreconditionTest(_:)();
  (*(v50 + 8))(v52, v49);
  if (v54)
  {
    v155 = v46;
    v156 = v43;
    ObjectType = swift_getObjectType();
    v57 = *(v184 + 16);
    v164 = ObjectType;
    v157 = v57();
    if (one-time initialization token for log == -1)
    {
      goto LABEL_4;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_4:
  v165 = a9;
  v58 = type metadata accessor for Logger();
  v59 = __swift_project_value_buffer(v58, log);
  v60 = v182;
  v61 = *(v182 + 16);
  v61(v48, v185, v38);

  v170 = v59;
  v62 = Logger.logObject.getter();
  LODWORD(v59) = static os_log_type_t.default.getter();

  v158 = v59;
  v63 = v59;
  v64 = v62;
  if (!os_log_type_enabled(v62, v63))
  {

    v69 = *(v60 + 8);
    v69(v48, v38);
    goto LABEL_18;
  }

  v65 = swift_slowAlloc();
  v153 = swift_slowAlloc();
  v187 = v153;
  *v65 = 136315650;
  v61(v37, v48, v38);
  (*(v60 + 56))(v37, 0, 1, v38);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v37, v35, &_s7Network17NWConnectionGroupC5StateOSgMd, &_s7Network17NWConnectionGroupC5StateOSgMR);
  v66 = (*(v60 + 48))(v35, 1, v38);
  v154 = v61;
  if (v66 == 1)
  {
    v67 = 7104878;
    v68 = 0xE300000000000000;
  }

  else
  {
    v70 = v155;
    (*(v60 + 32))(v155, v35, v38);
    v61(v156, v70, v38);
    v67 = String.init<A>(reflecting:)();
    v68 = v71;
    (*(v60 + 8))(v70, v38);
  }

  outlined destroy of NSObject?(v37, &_s7Network17NWConnectionGroupC5StateOSgMd, &_s7Network17NWConnectionGroupC5StateOSgMR);
  v69 = *(v60 + 8);
  v69(v48, v38);
  v72 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v67, v68, &v187);

  *(v65 + 4) = v72;
  *(v65 + 12) = 2080;
  if (v157 > 1u)
  {
    v61 = v154;
    if (v157 != 2)
    {
      v73 = 0xE600000000000000;
      v74 = 0x6465736F6C63;
      goto LABEL_17;
    }

    v73 = 0xEB00000000646568;
LABEL_16:
    v74 = 0x73696C6261747365;
    goto LABEL_17;
  }

  v61 = v154;
  if (v157)
  {
    v73 = 0xEC000000676E6968;
    goto LABEL_16;
  }

  v73 = 0xE700000000000000;
  v74 = 0x6C616974696E69;
LABEL_17:
  v75 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v74, v73, &v187);

  *(v65 + 14) = v75;
  *(v65 + 22) = 2080;
  *(v65 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v176, v186, &v187);
  _os_log_impl(&dword_1AEB26000, v64, v158, "NWConnectionGroup changed state, state=%s channel-state=%s, topic=%s", v65, 0x20u);
  v76 = v153;
  swift_arrayDestroy();
  MEMORY[0x1B27120C0](v76, -1, -1);
  MEMORY[0x1B27120C0](v65, -1, -1);

  v60 = v182;
LABEL_18:
  v77 = v179;
  v61(v179, v185, v38);
  v78 = (*(v60 + 88))(v77, v38);
  v80 = v180;
  v79 = v181;
  if (v78 == *MEMORY[0x1E6977CE8])
  {
    v185 = a10;
    (*(v60 + 96))(v77, v38);
    v81 = v177;
    v82 = v178;
    v83 = *(v178 + 32);
    v83(v177, v77, v80);
    v84 = *(v82 + 16);
    v84(v79, v81, v80);

    v85 = Logger.logObject.getter();
    v86 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v85, v86))
    {
      LODWORD(v182) = v86;
      v87 = swift_slowAlloc();
      v179 = swift_slowAlloc();
      v187 = v179;
      *v87 = 136315394;
      v88 = v168;
      v84(v168, v79, v80);
      (*(v82 + 56))(v88, 0, 1, v80);
      v89 = v167;
      outlined init with copy of ActivitySession.DomainAssertionWrapper?(v88, v167, &_s7Network7NWErrorOSgMd, &_s7Network7NWErrorOSgMR);
      if ((*(v82 + 48))(v89, 1, v80) == 1)
      {
        v90 = 7104878;
        v91 = 0xE300000000000000;
      }

      else
      {
        v121 = v89;
        v122 = v163;
        v83(v163, v121, v80);
        v84(v162, v122, v80);
        v90 = String.init<A>(reflecting:)();
        v91 = v123;
        (*(v82 + 8))(v122, v80);
      }

      outlined destroy of NSObject?(v88, &_s7Network7NWErrorOSgMd, &_s7Network7NWErrorOSgMR);
      v115 = *(v82 + 8);
      v115(v181, v80);
      v124 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v90, v91, &v187);

      *(v87 + 4) = v124;
      *(v87 + 12) = 2080;
      *(v87 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v176, v186, &v187);
      _os_log_impl(&dword_1AEB26000, v85, v182, "NWConnectionGroup in waiting state, error: %s, topic=%s", v87, 0x16u);
      v125 = v179;
      swift_arrayDestroy();
      MEMORY[0x1B27120C0](v125, -1, -1);
      MEMORY[0x1B27120C0](v87, -1, -1);
    }

    else
    {

      v115 = *(v82 + 8);
      v115(v79, v80);
    }

    v126 = v173;
    v127 = v177;
    v84(v173, v177, v80);
    (*(v82 + 56))(v126, 0, 2, v80);
    specialized DatagramClient.handleChannelConnectError(error:channelStream:attempt:promise:)(v126, v183, v174, v175, v165, v172, v164, v184);
    outlined destroy of DatagramChannelConnectError(v126, type metadata accessor for DatagramChannelConnectError);
    NWConnectionGroup.cancel()();

    return (v115)(v127, v80);
  }

  v92 = v178;
  if (v78 == *MEMORY[0x1E6977CE0])
  {
    v185 = a10;
    (*(v60 + 96))(v77, v38);
    v93 = v171;
    v182 = *(v92 + 32);
    (v182)(v171, v77, v80);
    v94 = *(v92 + 16);
    v95 = v169;
    v94(v169, v93, v80);

    v96 = v172;

    v97 = Logger.logObject.getter();
    v98 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v97, v98))
    {
      LODWORD(v179) = v98;
      v181 = v97;
      v99 = v80;
      v100 = swift_slowAlloc();
      v177 = swift_slowAlloc();
      v192 = v177;
      *v100 = 136315650;
      v101 = *(v96 + 24);
      v102 = *(v96 + 32);
      v103 = *(v96 + 40);
      v104 = *(v96 + 48);
      v187 = *(v96 + 16);
      v188 = v101;
      v189 = v102;
      v190 = v103;
      v191 = v104;
      outlined copy of DatagramEndpoint(v187, v101, v102, v103, v104);
      v105 = DatagramEndpoint.description.getter();
      v107 = v106;
      outlined consume of DatagramEndpoint(v187, v188, v189, v190, v191);
      v108 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v105, v107, &v192);

      *(v100 + 4) = v108;
      *(v100 + 12) = 2080;
      v109 = v166;
      v94(v166, v95, v99);
      (*(v92 + 56))(v109, 0, 1, v99);
      v110 = v109;
      v111 = v161;
      outlined init with copy of ActivitySession.DomainAssertionWrapper?(v110, v161, &_s7Network7NWErrorOSgMd, &_s7Network7NWErrorOSgMR);
      if ((*(v92 + 48))(v111, 1, v99) == 1)
      {
        v112 = v94;
        v113 = 7104878;
        v114 = 0xE300000000000000;
      }

      else
      {
        v135 = v163;
        (v182)(v163, v111, v99);
        v112 = v94;
        v94(v162, v135, v99);
        v113 = String.init<A>(reflecting:)();
        v114 = v136;
        v137 = v135;
        v95 = v169;
        (*(v92 + 8))(v137, v99);
      }

      outlined destroy of NSObject?(v166, &_s7Network7NWErrorOSgMd, &_s7Network7NWErrorOSgMR);
      v128 = *(v92 + 8);
      v128(v95, v99);
      v138 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v113, v114, &v192);

      *(v100 + 14) = v138;
      *(v100 + 22) = 2080;
      *(v100 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v176, v186, &v192);
      v139 = v181;
      _os_log_impl(&dword_1AEB26000, v181, v179, "NWConnectionGroup to %s failed, error: %s, topic=%s", v100, 0x20u);
      v140 = v177;
      swift_arrayDestroy();
      MEMORY[0x1B27120C0](v140, -1, -1);
      MEMORY[0x1B27120C0](v100, -1, -1);

      v80 = v99;
    }

    else
    {
      v112 = v94;

      v128 = *(v92 + 8);
      v128(v95, v80);
    }

    v141 = v173;
    v142 = v171;
    v112(v173, v171, v80);
    (*(v92 + 56))(v141, 0, 2, v80);
    specialized DatagramClient.handleChannelConnectError(error:channelStream:attempt:promise:)(v141, v183, v174, v175, v165, v172, v164, v184);
    outlined destroy of DatagramChannelConnectError(v141, type metadata accessor for DatagramChannelConnectError);
    NWConnectionGroup.cancel()();

    return (v128)(v142, v80);
  }

  if (v78 == *MEMORY[0x1E6977CD8])
  {
    v116 = v186;

    v117 = Logger.logObject.getter();
    v118 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v117, v118))
    {
      v119 = swift_slowAlloc();
      v120 = swift_slowAlloc();
      v187 = v120;
      *v119 = 136315138;
      *(v119 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v176, v116, &v187);
      _os_log_impl(&dword_1AEB26000, v117, v118, "NWConnectionGroup waiting to be started, topic=%s", v119, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v120);
      MEMORY[0x1B27120C0](v120, -1, -1);
      MEMORY[0x1B27120C0](v119, -1, -1);
    }
  }

  v129 = v186;
  if (v78 == *MEMORY[0x1E6977CD0])
  {

    v130 = Logger.logObject.getter();
    v131 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v130, v131))
    {
      v132 = swift_slowAlloc();
      v133 = swift_slowAlloc();
      v187 = v133;
      *v132 = 134218242;
      *(v132 + 4) = v174;
      *(v132 + 12) = 2080;
      *(v132 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v176, v129, &v187);
      _os_log_impl(&dword_1AEB26000, v130, v131, "NWConnectionGroup in ready state, channel attempt #%ld succeeded, topic=%s", v132, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v133);
      MEMORY[0x1B27120C0](v133, -1, -1);
      MEMORY[0x1B27120C0](v132, -1, -1);
    }

    (*(v184 + 24))(2, v164);
    v134 = v160;
    *v160 = a10;
    swift_storeEnumTagMultiPayload();

LABEL_46:
    v175(v134);

    return outlined destroy of NSObject?(v134, &_ss6ResultOy7Network17NWConnectionGroupC14CopresenceCore27DatagramChannelConnectErrorOGMd, &_ss6ResultOy7Network17NWConnectionGroupC14CopresenceCore27DatagramChannelConnectErrorOGMR);
  }

  v143 = *MEMORY[0x1E6977CF0];
  v144 = v78;

  v145 = Logger.logObject.getter();
  if (v144 == v143)
  {
    v146 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v145, v146))
    {
      v147 = swift_slowAlloc();
      v148 = swift_slowAlloc();
      v187 = v148;
      *v147 = 136315138;
      *(v147 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v176, v129, &v187);
      _os_log_impl(&dword_1AEB26000, v145, v146, "NWConnectionGroup in cancelled state, topic=%s", v147, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v148);
      MEMORY[0x1B27120C0](v148, -1, -1);
      MEMORY[0x1B27120C0](v147, -1, -1);
    }

    v134 = v160;
    (*(v92 + 56))(v160, 2, 2, v180);
    swift_storeEnumTagMultiPayload();
    goto LABEL_46;
  }

  v149 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v145, v149))
  {
    v150 = swift_slowAlloc();
    v151 = swift_slowAlloc();
    v187 = v151;
    *v150 = 136315138;
    *(v150 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v176, v129, &v187);
    _os_log_impl(&dword_1AEB26000, v145, v149, "NWConnectionGroup in unknown state, topic=%s", v150, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v151);
    MEMORY[0x1B27120C0](v151, -1, -1);
    MEMORY[0x1B27120C0](v150, -1, -1);
  }

  return (v69)(v179, v38);
}

uint64_t specialized DatagramClient.createChannelGroup(channelStream:attempt:promise:)(uint64_t a1, unint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v80 = a2;
  v13 = type metadata accessor for DatagramChannelConnectError(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v75 = (&v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = type metadata accessor for DispatchPredicate();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = (&v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = *(a5 + 80);
  *v18 = v19;
  (*(v16 + 104))(v18, *MEMORY[0x1E69E8020], v15);
  v77 = v19;
  LOBYTE(v19) = _dispatchPreconditionTest(_:)();
  v21 = *(v16 + 8);
  v20 = v16 + 8;
  v21(v18, v15);
  if (v19)
  {
    v78 = a3;
    v79 = a4;
    v20 = (*(a7 + 8))(a6, a7);
    a3 = v22;
    v76 = (*(a7 + 16))(a6, a7);
    if (one-time initialization token for log == -1)
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
  v23 = type metadata accessor for Logger();
  v24 = __swift_project_value_buffer(v23, log);

  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v25, v26))
  {
    v71 = v24;
    v72 = v20;
    v73 = a1;
    v74 = a6;
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v86 = v28;
    *v27 = 136315906;
    v29 = *(a5 + 24);
    v30 = *(a5 + 32);
    v31 = *(a5 + 40);
    v32 = *(a5 + 48);
    v81 = *(a5 + 16);
    v82 = v29;
    v83 = v30;
    v84 = v31;
    v85 = v32;
    outlined copy of DatagramEndpoint(v81, v29, v30, v31, v32);
    v33 = DatagramEndpoint.description.getter();
    v35 = v34;
    outlined consume of DatagramEndpoint(v81, v82, v83, v84, v85);
    v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v35, &v86);

    *(v27 + 4) = v36;
    v37 = v76;
    v38 = 0xE700000000000000;
    *(v27 + 12) = 2048;
    *(v27 + 14) = v80;
    *(v27 + 22) = 2080;
    v39 = 0x6C616974696E69;
    v40 = 0xEB00000000646568;
    v41 = 0x73696C6261747365;
    if (v37 != 2)
    {
      v41 = 0x6465736F6C63;
      v40 = 0xE600000000000000;
    }

    if (v37)
    {
      v39 = 0x73696C6261747365;
      v38 = 0xEC000000676E6968;
    }

    if (v37 <= 1)
    {
      v42 = v39;
    }

    else
    {
      v42 = v41;
    }

    if (v37 <= 1)
    {
      v43 = v38;
    }

    else
    {
      v43 = v40;
    }

    v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v43, &v86);

    *(v27 + 24) = v44;
    *(v27 + 32) = 2080;
    v20 = v72;
    *(v27 + 34) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v72, a3, &v86);
    _os_log_impl(&dword_1AEB26000, v25, v26, "Creating datagram-channel to endpoint=%s, attempt=%ld channel-state=%s, topic=%s", v27, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v28, -1, -1);
    MEMORY[0x1B27120C0](v27, -1, -1);

    a1 = v73;
    a6 = v74;
  }

  else
  {
  }

  v45 = DatagramClient.doCreateChannelGroup(topic:)(v20, a3);
  if (v45)
  {
    v46 = v45;
    v47 = swift_allocObject();
    swift_weakInit();
    v48 = swift_allocObject();
    v48[2] = v47;
    v48[3] = a1;
    v48[4] = a7;
    v48[5] = v20;
    v50 = v79;
    v49 = v80;
    v48[6] = a3;
    v48[7] = v49;
    v48[8] = v78;
    v48[9] = v50;
    v48[10] = v46;

    swift_unknownObjectRetain();

    outlined copy of (@escaping @callee_guaranteed @Sendable (@in_guaranteed NWConnection.State) -> ())?(partial apply for closure #1 in DatagramClient.createChannelGroup(channelStream:attempt:promise:), v48);
    NWConnectionGroup.stateUpdateHandler.setter();

    v51 = swift_allocObject();
    *(v51 + 16) = a1;
    *(v51 + 24) = a7;
    swift_unknownObjectRetain();
    NWConnectionGroup.setReceiveHandler(maximumMessageSize:rejectOversizedMessages:handler:)();

    (*(a7 + 24))(1, a6, a7);
    NWConnectionGroup.start(queue:)();
  }

  else
  {

    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v74 = a6;
      v77 = v56;
      v86 = v56;
      *v55 = 136315394;
      v57 = *(a5 + 24);
      v58 = *(a5 + 32);
      v59 = *(a5 + 40);
      v60 = *(a5 + 48);
      v81 = *(a5 + 16);
      v82 = v57;
      v83 = v58;
      v84 = v59;
      v85 = v60;
      outlined copy of DatagramEndpoint(v81, v57, v58, v59, v60);
      v61 = DatagramEndpoint.description.getter();
      v62 = v20;
      v63 = a1;
      v65 = v64;
      outlined consume of DatagramEndpoint(v81, v82, v83, v84, v85);
      v66 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v61, v65, &v86);
      a1 = v63;

      *(v55 + 4) = v66;
      *(v55 + 12) = 2080;
      v67 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, a3, &v86);

      *(v55 + 14) = v67;
      _os_log_impl(&dword_1AEB26000, v53, v54, "Failed to create NWConnectionGroup for datagram-channel to %s, topic=%s", v55, 0x16u);
      v68 = v77;
      swift_arrayDestroy();
      a6 = v74;
      MEMORY[0x1B27120C0](v68, -1, -1);
      MEMORY[0x1B27120C0](v55, -1, -1);
    }

    else
    {
    }

    v69 = type metadata accessor for NWError();
    v70 = v75;
    (*(*(v69 - 8) + 56))(v75, 1, 2, v69);
    specialized DatagramClient.handleChannelConnectError(error:channelStream:attempt:promise:)(v70, a1, v80, v78, v79, a5, a6, a7);
    return outlined destroy of DatagramChannelConnectError(v70, type metadata accessor for DatagramChannelConnectError);
  }
}

void specialized DatagramClient.handleChannelConnectError(error:channelStream:attempt:promise:)(void (*a1)(char *, uint64_t), uint64_t a2, unint64_t a3, void (*a4)(uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v172 = a4;
  v173 = a5;
  v177 = a3;
  v178 = a1;
  v159 = type metadata accessor for DatagramChannelError(0);
  MEMORY[0x1EEE9AC00](v159);
  v160 = &v143 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = type metadata accessor for NWError();
  v157 = *(v158 - 8);
  MEMORY[0x1EEE9AC00](v158);
  v144 = &v143 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchWorkItemFlags();
  v168 = *(v14 - 8);
  v169 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v166 = &v143 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v167 = type metadata accessor for DispatchQoS();
  v165 = *(v167 - 8);
  MEMORY[0x1EEE9AC00](v167);
  v164 = &v143 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = type metadata accessor for DispatchTime();
  v162 = *(v163 - 8);
  v17 = MEMORY[0x1EEE9AC00](v163);
  v156 = &v143 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v161 = &v143 - v19;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy7Network17NWConnectionGroupC14CopresenceCore27DatagramChannelConnectErrorOGMd, &_ss6ResultOy7Network17NWConnectionGroupC14CopresenceCore27DatagramChannelConnectErrorOGMR);
  MEMORY[0x1EEE9AC00](v151);
  v152 = &v143 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore27DatagramChannelConnectErrorOSgMd, _s14CopresenceCore27DatagramChannelConnectErrorOSgMR);
  v22 = MEMORY[0x1EEE9AC00](v21 - 8);
  v145 = &v143 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v148 = &v143 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v146 = &v143 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v149 = &v143 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v32 = &v143 - v31;
  MEMORY[0x1EEE9AC00](v30);
  v34 = &v143 - v33;
  v175 = type metadata accessor for DatagramChannelConnectError(0);
  v171 = *(v175 - 8);
  v35 = MEMORY[0x1EEE9AC00](v175);
  v150 = &v143 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x1EEE9AC00](v35);
  v154 = &v143 - v38;
  v39 = MEMORY[0x1EEE9AC00](v37);
  v155 = &v143 - v40;
  v41 = MEMORY[0x1EEE9AC00](v39);
  v43 = &v143 - v42;
  v44 = MEMORY[0x1EEE9AC00](v41);
  v147 = &v143 - v45;
  MEMORY[0x1EEE9AC00](v44);
  v170 = &v143 - v46;
  v47 = type metadata accessor for DispatchPredicate();
  v48 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v50 = (&v143 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0));
  v176 = a6;
  v51 = *(a6 + 80);
  *v50 = v51;
  (*(v48 + 104))(v50, *MEMORY[0x1E69E8020], v47);
  v153 = v51;
  v52 = _dispatchPreconditionTest(_:)();
  v54 = *(v48 + 8);
  v53 = v48 + 8;
  v54(v50, v47);
  if ((v52 & 1) == 0)
  {
    __break(1u);
    goto LABEL_37;
  }

  v174 = (*(a8 + 8))(a7, a8);
  v53 = v55;
  v56 = (*(a8 + 16))(a7, a8);
  v52 = a2;
  if (v56 < 2)
  {
    v148 = a8;
    if (one-time initialization token for log == -1)
    {
LABEL_4:
      v57 = type metadata accessor for Logger();
      v58 = __swift_project_value_buffer(v57, log);
      outlined init with copy of DatagramChannelConnectError(v178, v43);

      v170 = v58;
      v59 = Logger.logObject.getter();
      v60 = static os_log_type_t.error.getter();

      v61 = v53;
      if (os_log_type_enabled(v59, v60))
      {
        v160 = v52;
        v62 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        aBlock = v63;
        *v62 = 134218498;
        *(v62 + 4) = v177;
        *(v62 + 12) = 2080;
        outlined init with copy of DatagramChannelConnectError(v43, v34);
        v64 = v171;
        v65 = v175;
        (*(v171 + 56))(v34, 0, 1, v175);
        outlined init with copy of ActivitySession.DomainAssertionWrapper?(v34, v32, &_s14CopresenceCore27DatagramChannelConnectErrorOSgMd, _s14CopresenceCore27DatagramChannelConnectErrorOSgMR);
        if ((*(v64 + 48))(v32, 1, v65) == 1)
        {
          v66 = 7104878;
          v67 = 0xE300000000000000;
        }

        else
        {
          v108 = v155;
          outlined init with take of DatagramChannelConnectError(v32, v155);
          outlined init with copy of DatagramChannelConnectError(v108, v154);
          v66 = String.init<A>(reflecting:)();
          v67 = v109;
          outlined destroy of DatagramChannelConnectError(v108, type metadata accessor for DatagramChannelConnectError);
        }

        outlined destroy of NSObject?(v34, &_s14CopresenceCore27DatagramChannelConnectErrorOSgMd, _s14CopresenceCore27DatagramChannelConnectErrorOSgMR);
        outlined destroy of DatagramChannelConnectError(v43, type metadata accessor for DatagramChannelConnectError);
        v110 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v66, v67, &aBlock);

        *(v62 + 14) = v110;
        *(v62 + 22) = 2080;
        *(v62 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v174, v61, &aBlock);
        _os_log_impl(&dword_1AEB26000, v59, v60, "Establishing channel attempt #%ld failed: %s, topic=%s", v62, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1B27120C0](v63, -1, -1);
        MEMORY[0x1B27120C0](v62, -1, -1);

        v52 = v160;
      }

      else
      {

        outlined destroy of DatagramChannelConnectError(v43, type metadata accessor for DatagramChannelConnectError);
      }

      v111 = v176;
      if (*(v176 + 64) == v177)
      {

        v112 = v152;
        outlined init with copy of DatagramChannelConnectError(v178, v152);
        swift_storeEnumTagMultiPayload();
        v172(v112);
        outlined destroy of NSObject?(v112, &_ss6ResultOy7Network17NWConnectionGroupC14CopresenceCore27DatagramChannelConnectErrorOGMd, &_ss6ResultOy7Network17NWConnectionGroupC14CopresenceCore27DatagramChannelConnectErrorOGMR);
      }

      else
      {

        v113 = v61;

        v114 = Logger.logObject.getter();
        v115 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v114, v115))
        {
          v116 = swift_slowAlloc();
          v117 = swift_slowAlloc();
          aBlock = v117;
          *v116 = 134218242;
          *(v116 + 4) = *(v111 + 72);
          *(v116 + 12) = 2080;
          v118 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v174, v113, &aBlock);

          *(v116 + 14) = v118;
          _os_log_impl(&dword_1AEB26000, v114, v115, "Will retry establishing channel in %f seconds, topic=%s", v116, 0x16u);
          __swift_destroy_boxed_opaque_existential_1Tm(v117);
          MEMORY[0x1B27120C0](v117, -1, -1);
          MEMORY[0x1B27120C0](v116, -1, -1);
        }

        else
        {
        }

        v119 = v156;
        static DispatchTime.now()();
        v120 = v161;
        + infix(_:_:)();
        v178 = *(v162 + 8);
        v121 = v163;
        v178(v119, v163);
        v122 = swift_allocObject();
        v122[2] = v111;
        v122[3] = v52;
        v123 = v177;
        v122[4] = v148;
        v122[5] = v123;
        v124 = v173;
        v122[6] = v172;
        v122[7] = v124;
        v183 = partial apply for closure #1 in DatagramClient.handleChannelConnectError(error:channelStream:attempt:promise:);
        v184 = v122;
        aBlock = MEMORY[0x1E69E9820];
        v180 = 1107296256;
        v181 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
        v182 = &block_descriptor_4;
        v125 = _Block_copy(&aBlock);

        swift_unknownObjectRetain();

        v126 = v164;
        static DispatchQoS.unspecified.getter();
        v185 = MEMORY[0x1E69E7CC0];
        lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
        lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
        v127 = v166;
        v128 = v169;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        MEMORY[0x1B2710670](v120, v126, v127, v125);
        _Block_release(v125);
        (*(v168 + 8))(v127, v128);
        (*(v165 + 8))(v126, v167);
        v178(v120, v121);
      }

      return;
    }

LABEL_37:
    swift_once();
    goto LABEL_4;
  }

  if (v56 == 2)
  {
    v68 = a7;
    if (one-time initialization token for log != -1)
    {
      swift_once();
    }

    v69 = type metadata accessor for Logger();
    __swift_project_value_buffer(v69, log);
    v70 = v170;
    outlined init with copy of DatagramChannelConnectError(v178, v170);
    v71 = v176;

    v72 = v53;
    v73 = Logger.logObject.getter();
    v74 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v73, v74))
    {
      v177 = v72;
      v148 = a8;
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v185 = v76;
      *v75 = 136315650;
      v77 = *(v71 + 24);
      v78 = *(v71 + 32);
      v79 = *(v71 + 40);
      v80 = *(v71 + 48);
      aBlock = *(v71 + 16);
      v180 = v77;
      v181 = v78;
      v182 = v79;
      LOBYTE(v183) = v80;
      outlined copy of DatagramEndpoint(aBlock, v77, v78, v79, v80);
      v81 = DatagramEndpoint.description.getter();
      v83 = v82;
      outlined consume of DatagramEndpoint(aBlock, v180, v181, v182, v183);
      v84 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v81, v83, &v185);

      *(v75 + 4) = v84;
      *(v75 + 12) = 2080;
      v85 = v70;
      v86 = v149;
      outlined init with copy of DatagramChannelConnectError(v85, v149);
      v87 = v171;
      v88 = v175;
      (*(v171 + 56))(v86, 0, 1, v175);
      v89 = v86;
      v90 = v146;
      outlined init with copy of ActivitySession.DomainAssertionWrapper?(v89, v146, &_s14CopresenceCore27DatagramChannelConnectErrorOSgMd, _s14CopresenceCore27DatagramChannelConnectErrorOSgMR);
      if ((*(v87 + 48))(v90, 1, v88) == 1)
      {
        v91 = 7104878;
        v92 = 0xE300000000000000;
      }

      else
      {
        v129 = v155;
        outlined init with take of DatagramChannelConnectError(v90, v155);
        outlined init with copy of DatagramChannelConnectError(v129, v154);
        v91 = String.init<A>(reflecting:)();
        v92 = v130;
        outlined destroy of DatagramChannelConnectError(v129, type metadata accessor for DatagramChannelConnectError);
      }

      outlined destroy of NSObject?(v149, &_s14CopresenceCore27DatagramChannelConnectErrorOSgMd, _s14CopresenceCore27DatagramChannelConnectErrorOSgMR);
      outlined destroy of DatagramChannelConnectError(v170, type metadata accessor for DatagramChannelConnectError);
      v131 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v91, v92, &v185);

      *(v75 + 14) = v131;
      *(v75 + 22) = 2080;
      v132 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v174, v177, &v185);

      *(v75 + 24) = v132;
      _os_log_impl(&dword_1AEB26000, v73, v74, "DatagramClient %s disconnected due to network failure: %s, topic=%s", v75, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1B27120C0](v76, -1, -1);
      MEMORY[0x1B27120C0](v75, -1, -1);

      a8 = v148;
    }

    else
    {

      outlined destroy of DatagramChannelConnectError(v70, type metadata accessor for DatagramChannelConnectError);
    }

    v133 = v157;
    v134 = v150;
    outlined init with copy of DatagramChannelConnectError(v178, v150);
    v135 = v158;
    if ((*(v133 + 48))(v134, 2, v158))
    {
      outlined destroy of DatagramChannelConnectError(v134, type metadata accessor for DatagramChannelConnectError);
      v136 = v160;
      swift_storeEnumTagMultiPayload();
      (*(a8 + 64))(v136, v68, a8);
      outlined destroy of DatagramChannelConnectError(v136, type metadata accessor for DatagramChannelError);
    }

    else
    {
      v137 = v144;
      (*(v133 + 32))(v144, v134, v135);
      v138 = v160;
      (*(v133 + 16))(v160, v137, v135);
      swift_storeEnumTagMultiPayload();
      (*(a8 + 64))(v138, v68, a8);
      outlined destroy of DatagramChannelConnectError(v138, type metadata accessor for DatagramChannelError);
      (*(v133 + 8))(v137, v135);
    }
  }

  else
  {
    if (one-time initialization token for log != -1)
    {
      swift_once();
    }

    v93 = type metadata accessor for Logger();
    __swift_project_value_buffer(v93, log);
    v94 = v147;
    outlined init with copy of DatagramChannelConnectError(v178, v147);

    v95 = Logger.logObject.getter();
    v96 = static os_log_type_t.error.getter();

    v97 = os_log_type_enabled(v95, v96);
    v98 = v175;
    if (v97)
    {
      v99 = swift_slowAlloc();
      v100 = swift_slowAlloc();
      aBlock = v100;
      *v99 = 136315394;
      v101 = v148;
      outlined init with copy of DatagramChannelConnectError(v94, v148);
      v102 = v171;
      (*(v171 + 56))(v101, 0, 1, v98);
      v103 = v101;
      v104 = v145;
      outlined init with copy of ActivitySession.DomainAssertionWrapper?(v103, v145, &_s14CopresenceCore27DatagramChannelConnectErrorOSgMd, _s14CopresenceCore27DatagramChannelConnectErrorOSgMR);
      v105 = v53;
      if ((*(v102 + 48))(v104, 1, v98) == 1)
      {
        v106 = 7104878;
        v107 = 0xE300000000000000;
      }

      else
      {
        v139 = v155;
        outlined init with take of DatagramChannelConnectError(v104, v155);
        outlined init with copy of DatagramChannelConnectError(v139, v154);
        v106 = String.init<A>(reflecting:)();
        v107 = v140;
        outlined destroy of DatagramChannelConnectError(v139, type metadata accessor for DatagramChannelConnectError);
      }

      outlined destroy of NSObject?(v148, &_s14CopresenceCore27DatagramChannelConnectErrorOSgMd, _s14CopresenceCore27DatagramChannelConnectErrorOSgMR);
      outlined destroy of DatagramChannelConnectError(v94, type metadata accessor for DatagramChannelConnectError);
      v141 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v106, v107, &aBlock);

      *(v99 + 4) = v141;
      *(v99 + 12) = 2080;
      v142 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v174, v105, &aBlock);

      *(v99 + 14) = v142;
      _os_log_impl(&dword_1AEB26000, v95, v96, "DatagramClient channel is in closed state, but channel-group got an unexpected failure: %s, topic=%s", v99, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B27120C0](v100, -1, -1);
      MEMORY[0x1B27120C0](v99, -1, -1);
    }

    else
    {

      outlined destroy of DatagramChannelConnectError(v94, type metadata accessor for DatagramChannelConnectError);
    }
  }
}

uint64_t specialized static DatagramChannelConnectError.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NWError();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DatagramChannelConnectError(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore27DatagramChannelConnectErrorO_ACtMd, &_s14CopresenceCore27DatagramChannelConnectErrorO_ACtMR);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v21 - v13;
  v15 = *(v12 + 56);
  outlined init with copy of DatagramChannelConnectError(a1, &v21 - v13);
  outlined init with copy of DatagramChannelConnectError(a2, &v14[v15]);
  v16 = *(v5 + 48);
  v17 = v16(v14, 2, v4);
  if (!v17)
  {
    outlined init with copy of DatagramChannelConnectError(v14, v10);
    if (!v16(&v14[v15], 2, v4))
    {
      (*(v5 + 32))(v7, &v14[v15], v4);
      v18 = MEMORY[0x1B270FAF0](v10, v7);
      v20 = *(v5 + 8);
      v20(v7, v4);
      v20(v10, v4);
      outlined destroy of DatagramChannelConnectError(v14, type metadata accessor for DatagramChannelConnectError);
      return v18 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_9;
  }

  if (v17 == 1)
  {
    if (v16(&v14[v15], 2, v4) != 1)
    {
      goto LABEL_9;
    }
  }

  else if (v16(&v14[v15], 2, v4) != 2)
  {
LABEL_9:
    outlined destroy of NSObject?(v14, &_s14CopresenceCore27DatagramChannelConnectErrorO_ACtMd, &_s14CopresenceCore27DatagramChannelConnectErrorO_ACtMR);
    v18 = 0;
    return v18 & 1;
  }

  outlined destroy of DatagramChannelConnectError(v14, type metadata accessor for DatagramChannelConnectError);
  v18 = 1;
  return v18 & 1;
}

uint64_t type metadata accessor for DatagramChannelConnectError(uint64_t a1)
{
  result = type metadata singleton initialization cache for DatagramChannelConnectError;
  if (!type metadata singleton initialization cache for DatagramChannelConnectError)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for DatagramChannelConnectError(uint64_t a1)
{
  v1 = type metadata accessor for NWError();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t outlined copy of DatagramEndpoint(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, char a5)
{
  if (a5)
  {

    return outlined copy of Data?(a3, a4);
  }

  else
  {
    swift_unknownObjectRetain();
  }
}

uint64_t outlined consume of DatagramEndpoint(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, char a5)
{
  if (a5)
  {

    return outlined consume of Data?(a3, a4);
  }

  else
  {
    swift_unknownObjectRelease();
  }
}

uint64_t partial apply for closure #2 in DatagramClient.createChannelGroup(channelStream:attempt:promise:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 24);
  ObjectType = swift_getObjectType();
  return (*(v9 + 56))(a1, a2, a3, a4, ObjectType, v9);
}

uint64_t outlined init with copy of DatagramChannelConnectError(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DatagramChannelConnectError(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of DatagramChannelConnectError(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DatagramChannelConnectError(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of DatagramChannelConnectError(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void static NSUserDefaults.classProtectedStorage(suiteName:)(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Log.default);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v9 = 136315138;
    *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v18);
    _os_log_impl(&dword_1AEB26000, v7, v8, "Enabling file protection class for conversation persistence storage %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x1B27120C0](v10, -1, -1);
    MEMORY[0x1B27120C0](v9, -1, -1);
  }

  v11 = MEMORY[0x1B270FF70](a1, a2);
  _CFPreferencesSetFileProtectionClass();
  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == a1 && v12 == a2)
  {
  }

  else
  {
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v14 & 1) == 0)
    {
      _CFPreferencesSetBackupDisabled();
    }
  }

  v15 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v16 = MEMORY[0x1B270FF70](a1, a2);
  v17 = [v15 initWithSuiteName_];

  a3[3] = type metadata accessor for NSUserDefaults();
  a3[4] = &protocol witness table for NSUserDefaults;
  if (!v17)
  {
    v17 = [objc_allocWithZone(MEMORY[0x1E695E000]) init];
  }

  *a3 = v17;
}

uint64_t NSUserDefaults.setCodable<A>(_:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = specialized tryLog<A>(_:_:function:line:)(partial apply for implicit closure #1 in NSUserDefaults.setCodable<A>(_:forKey:));
  if (v10 >> 60 != 15)
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    v8 = MEMORY[0x1B270FF70](a2, a3);
    [v3 setObject:isa forKey:v8];

    return outlined consume of Data?(v9, v10);
  }

  return result;
}

uint64_t implicit closure #1 in NSUserDefaults.setCodable<A>(_:forKey:)@<X0>(uint64_t *a4@<X8>)
{
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  v6 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v8 = v7;

  if (!v4)
  {
    *a4 = v6;
    a4[1] = v8;
  }

  return result;
}

uint64_t NSUserDefaults.get<A>(_:forKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v7 = v6;
  v56 = a5;
  v13 = type metadata accessor for Optional();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v64 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v60 = &v52 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v52 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v52 - v22;
  v24 = MEMORY[0x1B270FF70](a2, a3);
  v25 = [v7 valueForKey_];

  if (v25)
  {
    v54 = a1;
    v59 = a6;
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    outlined init with copy of Any(&v72, &v71);
    v26 = swift_dynamicCast();
    v27 = *(a4 - 8);
    v28 = *(v27 + 56);
    v62 = v27 + 56;
    v61 = v28;
    v28(v23, v26 ^ 1u, 1, a4);
    v57 = *(v14 + 16);
    v57(v21, v23, v13);
    v29 = *(v27 + 48);
    v30 = v29(v21, 1, a4);
    v53 = v14;
    v31 = *(v14 + 8);
    v58 = v14 + 8;
    v63 = v31;
    v31(v21, v13);
    v32 = v64;
    if (v30 == 1)
    {
      v52 = v23;
      outlined init with copy of Any(&v72, &v71);
      if (swift_dynamicCast())
      {
        v55 = v13;
        v33 = v69[0];
        v34 = v69[1];
        type metadata accessor for JSONDecoder();
        swift_allocObject();
        JSONDecoder.init()();
        dispatch thunk of JSONDecoder.decode<A>(_:from:)();
        outlined consume of Data._Representation(v33, v34);

        v35 = v60;
        v61(v60, 0, 1, a4);
        v23 = v52;
        v13 = v55;
        (*(v53 + 40))(v52, v35, v55);
      }

      else
      {
        v23 = v52;
      }
    }

    v57(v32, v23, v13);
    if (v29(v32, 1, a4) == 1)
    {
      v55 = v13;
      v63(v32, v13);
      if (one-time initialization token for default != -1)
      {
        swift_once();
      }

      v38 = type metadata accessor for Logger();
      __swift_project_value_buffer(v38, static Log.default);
      outlined init with copy of Any(&v72, &v71);
      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v70 = v42;
        *v41 = 136315394;
        outlined init with copy of Any(&v71, v69);
        outlined init with copy of Any?(v69, &v67);
        if (v68)
        {
          outlined init with take of Any(&v67, v66);
          outlined init with copy of Any(v66, v65);
          v43 = String.init<A>(reflecting:)();
          v45 = v44;
          __swift_destroy_boxed_opaque_existential_1Tm(v66);
        }

        else
        {
          v45 = 0xE300000000000000;
          v43 = 7104878;
        }

        outlined destroy of Any?(v69);
        __swift_destroy_boxed_opaque_existential_1Tm(&v71);
        v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v45, &v70);

        *(v41 + 4) = v47;
        *(v41 + 12) = 2080;
        v69[0] = v54;
        MetatypeMetadata = swift_getMetatypeMetadata();
        v49 = >> prefix<A>(_:)(v69, MetatypeMetadata);
        v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v50, &v70);

        *(v41 + 14) = v51;
        _os_log_impl(&dword_1AEB26000, v39, v40, "Failed to cast value: %s to type: %s", v41, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1B27120C0](v42, -1, -1);
        MEMORY[0x1B27120C0](v41, -1, -1);
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_1Tm(&v71);
      }

      __swift_destroy_boxed_opaque_existential_1Tm(&v72);
      v61(v59, 1, 1, a4);
      return (v63)(v23, v55);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1Tm(&v72);
      v46 = v59;
      (*(v27 + 32))(v59, v32, a4);
      v61(v46, 0, 1, a4);
      return (v63)(v23, v13);
    }
  }

  else
  {
    v36 = *(*(a4 - 8) + 56);

    return v36(a6, 1, 1, a4);
  }
}

uint64_t NSUserDefaults.getGenericType<A>(_:forKey:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v5 = v4;
  v10 = type metadata accessor for Optional();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v21 - v12;
  v14 = MEMORY[0x1B270FF70](a1, a2);
  v15 = [v5 valueForKey_];

  if (v15)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    outlined init with take of Any(v21, v22);
  }

  else
  {
    memset(v22, 0, sizeof(v22));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v16 = swift_dynamicCast();
  v17 = *(*(a3 - 8) + 56);
  if (v16)
  {
    v18 = *(a3 - 8);
    v17(v13, 0, 1, a3);
    (*(v18 + 32))(a4, v13, a3);
    v19 = 0;
  }

  else
  {
    v19 = 1;
    v17(v13, 1, 1, a3);
    (*(v11 + 8))(v13, v10);
  }

  return (v17)(a4, v19, 1, a3);
}

uint64_t NSUserDefaults.getAll<A>(of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  v5 = [v4 dictionaryRepresentation];
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v6 = Dictionary.compactMapValues<A>(_:)();

  return v6;
}

uint64_t closure #1 in NSUserDefaults.getAll<A>(of:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v34[3] = a2;
  v34[4] = a5;
  v34[2] = a3;
  v45 = a1;
  v38 = type metadata accessor for Optional();
  v8 = *(v38 - 8);
  v9 = MEMORY[0x1EEE9AC00](v38);
  v36 = v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v40 = v34 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v14 = v34 - v13;
  v15 = *(a4 - 8);
  v16 = *(v15 + 56);
  v34[1] = v15 + 56;
  v16(a6, 1, 1, a4);
  v39 = v8[1];
  v17 = v38;
  v39(a6, v38);
  outlined init with copy of Any(v45, v44);
  v18 = swift_dynamicCast();
  v35 = v16;
  v16(v14, v18 ^ 1u, 1, a4);
  v19 = (v8 + 4);
  v20 = v8[4];
  v20(a6, v14, v17);
  v21 = v8[2];
  v22 = v40;
  v37 = a6;
  v21(v40, a6, v17);
  v23 = v22;
  v24 = (*(v15 + 48))(v22, 1, a4);
  v25 = v17;
  v26 = v39;
  LODWORD(v22) = v24;
  result = (v39)(v23, v25);
  if (v22 == 1)
  {
    outlined init with copy of Any(v45, v44);
    result = swift_dynamicCast();
    if (result)
    {
      v45 = v19;
      v28 = v42;
      v29 = v43;
      v30 = v36;
      v31 = v41;
      dispatch thunk of JSONDecoder.decode<A>(_:from:)();
      if (v31)
      {

        outlined consume of Data._Representation(v28, v29);
        v32 = v37;
        v26(v37, v25);
        v33 = 1;
      }

      else
      {
        v41 = v28;
        v32 = v37;
        v26(v37, v25);
        outlined consume of Data._Representation(v41, v29);
        v33 = 0;
      }

      v35(v30, v33, 1, a4);
      return (v20)(v32, v30, v25);
    }
  }

  return result;
}

uint64_t NSUserDefaults.getAllOfGenericType<A>(of:)(uint64_t a1, uint64_t a2)
{
  v3 = [v2 dictionaryRepresentation];
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v4 = Dictionary.compactMapValues<A>(_:)();

  return v4;
}

uint64_t closure #1 in NSUserDefaults.getAllOfGenericType<A>(of:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v15[-v8];
  outlined init with copy of Any(a1, v15);
  v10 = swift_dynamicCast();
  v11 = *(*(a2 - 8) + 56);
  if (v10)
  {
    v12 = *(a2 - 8);
    v11(v9, 0, 1, a2);
    (*(v12 + 32))(a3, v9, a2);
    v13 = 0;
  }

  else
  {
    v13 = 1;
    v11(v9, 1, 1, a2);
    (*(v7 + 8))(v9, v6);
  }

  return v11(a3, v13, 1, a2);
}

Swift::Void __swiftcall NSUserDefaults.remove(key:)(Swift::String key)
{
  v2 = MEMORY[0x1B270FF70](key._countAndFlagsBits, key._object);
  [v1 removeObjectForKey_];
}

void @nonobjc NSUserDefaults.set(_:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  outlined init with copy of Any?(a1, v13);
  v6 = v14;
  if (v14)
  {
    v7 = __swift_project_boxed_opaque_existential_1(v13, v14);
    v8 = *(v6 - 8);
    MEMORY[0x1EEE9AC00](v7);
    v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v8 + 16))(v10);
    v11 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v8 + 8))(v10, v6);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
  }

  else
  {
    v11 = 0;
  }

  v12 = MEMORY[0x1B270FF70](a2, a3);
  [v3 setObject:v11 forKey:v12];
  swift_unknownObjectRelease();
}

void protocol witness for ProtectedStorage.remove(key:) in conformance NSUserDefaults()
{
  v1 = *v0;
  v2 = MEMORY[0x1B270FF70]();
  [v1 removeObjectForKey_];
}

unint64_t type metadata accessor for NSUserDefaults()
{
  result = lazy cache variable for type metadata for NSUserDefaults;
  if (!lazy cache variable for type metadata for NSUserDefaults)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSUserDefaults);
  }

  return result;
}

uint64_t PresenceSessionCreationRequest.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___CPPresenceSessionCreationRequest_id;
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

id PresenceSessionCreationRequest.__allocating_init(id:isCrossAccount:)(uint64_t a1, char a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = OBJC_IVAR___CPPresenceSessionCreationRequest_id;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  (*(v8 + 16))(&v5[v6], a1, v7);
  v5[OBJC_IVAR___CPPresenceSessionCreationRequest_isCrossAccount] = a2;
  v11.receiver = v5;
  v11.super_class = v2;
  v9 = objc_msgSendSuper2(&v11, sel_init);
  (*(v8 + 8))(a1, v7);
  return v9;
}

id PresenceSessionCreationRequest.init(id:isCrossAccount:)(uint64_t a1, char a2)
{
  v5 = OBJC_IVAR___CPPresenceSessionCreationRequest_id;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  (*(v7 + 16))(&v2[v5], a1, v6);
  v2[OBJC_IVAR___CPPresenceSessionCreationRequest_isCrossAccount] = a2;
  v10.receiver = v2;
  v10.super_class = type metadata accessor for PresenceSessionCreationRequest(0);
  v8 = objc_msgSendSuper2(&v10, sel_init);
  (*(v7 + 8))(a1, v6);
  return v8;
}

uint64_t type metadata accessor for PresenceSessionCreationRequest(uint64_t a1)
{
  result = type metadata singleton initialization cache for PresenceSessionCreationRequest;
  if (!type metadata singleton initialization cache for PresenceSessionCreationRequest)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PresenceSessionCreationRequest.isEqual(_:)(uint64_t a1)
{
  outlined init with copy of Any?(a1, v7);
  if (!v8)
  {
    outlined destroy of Any?(v7);
    goto LABEL_7;
  }

  type metadata accessor for PresenceSessionCreationRequest(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    v4 = 0;
    return v4 & 1;
  }

  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {

    goto LABEL_7;
  }

  v2 = *(v1 + OBJC_IVAR___CPPresenceSessionCreationRequest_isCrossAccount);
  v3 = *(v6 + OBJC_IVAR___CPPresenceSessionCreationRequest_isCrossAccount);

  v4 = v2 ^ v3 ^ 1;
  return v4 & 1;
}

id PresenceSessionCreationRequest.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v22 - v5;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v22 - v12;
  type metadata accessor for NSUUID();
  v14 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v14 && (v15 = v14, (*(v8 + 56))(v6, 1, 1, v7), lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695D8]), dispatch thunk of static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:)(), v15, (*(v8 + 48))(v6, 1, v7) != 1))
  {
    v17 = *(v8 + 32);
    v17(v11, v6, v7);
    v17(v13, v11, v7);
    (*(v8 + 16))(&v1[OBJC_IVAR___CPPresenceSessionCreationRequest_id], v13, v7);
    v18 = MEMORY[0x1B270FF70](0x4173736F72437369, 0xEE00746E756F6363);
    v19 = [a1 decodeBoolForKey_];

    (*(v8 + 8))(v13, v7);
    v2[OBJC_IVAR___CPPresenceSessionCreationRequest_isCrossAccount] = v19;
    v20 = type metadata accessor for PresenceSessionCreationRequest(0);
    v22.receiver = v2;
    v22.super_class = v20;
    v21 = objc_msgSendSuper2(&v22, sel_init);

    return v21;
  }

  else
  {

    type metadata accessor for PresenceSessionCreationRequest(0);
    swift_deallocPartialClassInstance();
    return 0;
  }
}

unint64_t type metadata accessor for NSUUID()
{
  result = lazy cache variable for type metadata for NSUUID;
  if (!lazy cache variable for type metadata for NSUUID)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSUUID);
  }

  return result;
}

Swift::Void __swiftcall PresenceSessionCreationRequest.encode(with:)(NSCoder with)
{
  v2 = v1;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v5 = MEMORY[0x1B270FF70](25705, 0xE200000000000000);
  [(objc_class *)with.super.isa encodeObject:isa forKey:v5];

  v6 = *(v2 + OBJC_IVAR___CPPresenceSessionCreationRequest_isCrossAccount);
  v7 = MEMORY[0x1B270FF70](0x4173736F72437369, 0xEE00746E756F6363);
  [(objc_class *)with.super.isa encodeBool:v6 forKey:v7];
}

uint64_t PresenceSessionCreationRequest.description.getter()
{
  swift_getObjectType();
  MEMORY[0x1B2710020](60, 0xE100000000000000);
  v0 = _typeName(_:qualified:)();
  MEMORY[0x1B2710020](v0);

  MEMORY[0x1B2710020](0x203A666C657320, 0xE700000000000000);
  _print_unlocked<A, B>(_:_:)();
  type metadata accessor for UUID();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695E0]);
  v1 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1B2710020](v1);

  MEMORY[0x1B2710020](1029990688, 0xE400000000000000);

  _StringGuts.grow(_:)(18);

  v2 = String.init<A>(reflecting:)();
  MEMORY[0x1B2710020](v2);

  MEMORY[0x1B2710020](0xD000000000000010, 0x80000001AEE32110);

  MEMORY[0x1B2710020](62, 0xE100000000000000);
  return 0;
}

uint64_t lazy protocol witness table accessor for type UUID and conformance UUID(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id PresenceSessionCreationRequest.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PresenceSessionCreationRequest.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PresenceSessionCreationRequest(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata completion function for PresenceSessionCreationRequest(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t specialized BinaryInteger.bit(at:)(uint64_t a1, unsigned int a2)
{
  if (a1 < -32)
  {
    return 0;
  }

  if (a1 > 32)
  {
    return 0;
  }

  if (a1 < 0)
  {
    v3 = a2 << -a1;
    if (a1 == -32)
    {
      LOBYTE(v3) = 0;
    }

    return v3 & 1;
  }

  else
  {
    if (a1 == 32)
    {
      return 0;
    }

    return (a2 >> a1) & 1;
  }
}

Swift::Bool __swiftcall BinaryInteger.bit(at:)(Swift::Int at)
{
  v3 = v1;
  v5 = *(*(v2 + 24) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = v29 - v8;
  v10 = *(v3 - 8);
  v11 = MEMORY[0x1EEE9AC00](v7);
  v13 = v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = v29 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = v29 - v17;
  v32 = at;
  v29[4] = lazy protocol witness table accessor for type Int and conformance Int();
  dispatch thunk of static BinaryInteger.>> infix<A>(_:_:)();
  v29[1] = swift_getAssociatedConformanceWitness();
  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
  v29[2] = v9;
  v29[3] = v5;
  dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
  dispatch thunk of static BinaryInteger.& infix(_:_:)();
  v19 = *(v10 + 8);
  v19(v13, v3);
  v30 = v19;
  v31 = v10 + 8;
  v19(v16, v3);
  if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
  {
    v21 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v22 = dispatch thunk of BinaryInteger.bitWidth.getter();
    v23 = v18;
    if (v21)
    {
      v24 = v30;
      if (v22 <= 64)
      {
        dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
        dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
        v25 = dispatch thunk of static Comparable.>= infix(_:_:)();
        v24(v16, v3);
        if ((v25 & 1) == 0)
        {
          v24(v23, v3);
          v26 = 0;
          return v26 & 1;
        }

        goto LABEL_10;
      }
    }

    else
    {
      v24 = v30;
      if (v22 < 64)
      {
LABEL_10:
        v20 = dispatch thunk of BinaryInteger._lowWord.getter();
        v24(v23, v3);
        goto LABEL_11;
      }
    }

    v32 = 1;
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v26 = dispatch thunk of static Equatable.== infix(_:_:)();
    v24(v16, v3);
    v24(v23, v3);
    return v26 & 1;
  }

  if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
  {
    v20 = dispatch thunk of BinaryInteger._lowWord.getter();
    v30(v18, v3);
LABEL_11:
    v26 = v20 == 1;
    return v26 & 1;
  }

  v32 = 1;
  dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
  v26 = dispatch thunk of static Equatable.== infix(_:_:)();
  v27 = v30;
  v30(v16, v3);
  v27(v18, v3);
  return v26 & 1;
}

unint64_t lazy protocol witness table accessor for type Int and conformance Int()
{
  result = lazy protocol witness table cache variable for type Int and conformance Int;
  if (!lazy protocol witness table cache variable for type Int and conformance Int)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Int and conformance Int);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Int and conformance Int;
  if (!lazy protocol witness table cache variable for type Int and conformance Int)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Int and conformance Int);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Int and conformance Int;
  if (!lazy protocol witness table cache variable for type Int and conformance Int)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Int and conformance Int);
  }

  return result;
}

unint64_t specialized BinaryInteger.setBit(at:to:)(unint64_t result, char a2)
{
  v3 = 1 << result;
  if (a2)
  {
    if (result >= 0x20)
    {
      v3 = 0;
    }

    *v2 |= v3;
  }

  else
  {
    if (result < 0x20)
    {
      v4 = ~v3;
    }

    else
    {
      v4 = -1;
    }

    *v2 &= v4;
  }

  return result;
}

Swift::Void __swiftcall BinaryInteger.setBit(at:to:)(Swift::Int at, Swift::Bool to)
{
  v20 = at;
  v3 = v2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v7 = *(v3 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v19 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v19 - v14;
  swift_getAssociatedConformanceWitness();
  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
  v16 = (v7 + 8);
  if (to)
  {
    dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
    v21 = v20;
    lazy protocol witness table accessor for type Int and conformance Int();
    dispatch thunk of static BinaryInteger.<< infix<A>(_:_:)();
    v17 = *v16;
    (*v16)(v13, v3);
    dispatch thunk of static BinaryInteger.|= infix(_:_:)();
    v17(v15, v3);
  }

  else
  {
    dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
    v21 = v20;
    lazy protocol witness table accessor for type Int and conformance Int();
    dispatch thunk of static BinaryInteger.<< infix<A>(_:_:)();
    v18 = *v16;
    (*v16)(v10, v3);
    dispatch thunk of static BinaryInteger.~ prefix(_:)();
    v18(v13, v3);
    dispatch thunk of static BinaryInteger.&= infix(_:_:)();
    v18(v15, v3);
  }
}

uint64_t FixedBitArray.words.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

unint64_t FixedBitArray.init(bitCapacity:)(unint64_t result)
{
  v1 = ceil(vcvtd_n_f64_s64(result, 5uLL));
  if ((*&v1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v1 <= -9.22337204e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v1 >= 9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v2 = v1;
  if (v1 < 0)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(v3 + 16) = v2;
  bzero((v3 + 32), 4 * v2);
  return v3;
}

uint64_t FixedBitArray.subscript.getter(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  v3 = v2 >> 62;
  if (v2 >> 62)
  {
    __break(1u);
    goto LABEL_11;
  }

  v3 = v2 >> 59;
  if (v2 >> 59)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v2 = (16 * v2) & 0x7FFFFFFFFFFFFFE0;
  if (v2 <= a1)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v2 = a1 + 31;
  if (a1 >= 0)
  {
    v2 = a1;
  }

  if (a1 < -31)
  {
    goto LABEL_13;
  }

  v3 = v2 >> 5;
  v2 = *(a2 + 16);
  if (v3 >= v2)
  {
LABEL_14:
    __break(1u);
    return (v3 << -v2) & 1;
  }

  LOBYTE(v2) = a1 - 32 * v3;
  v4 = a1 - 32 * v3 < 0;
  LODWORD(v3) = *(a2 + 4 * v3 + 32);
  if (!v4)
  {
    return (v3 >> v2) & 1;
  }

  return (v3 << -v2) & 1;
}

uint64_t key path getter for FixedBitArray.subscript(_:) : FixedBitArray@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = *result;
  v5 = *(*result + 24);
  if (v5 >> 62)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v5 >> 59)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v6 = *a2;
  if (*a2 >= ((16 * v5) & 0x7FFFFFFFFFFFFFE0))
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v7 = v6 + 31;
  if (v6 >= 0)
  {
    v7 = *a2;
  }

  if (v6 < -31)
  {
    goto LABEL_12;
  }

  v8 = v7 >> 5;
  if (v8 < *(v4 + 16))
  {
    result = specialized BinaryInteger.bit(at:)(v6 - 32 * v8, *(v4 + 4 * v8 + 32));
    *a3 = result & 1;
    return result;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t FixedBitArray.subscript.setter(char a1, uint64_t a2)
{
  v6 = *v2;
  v7 = *(*v2 + 24);
  if (v7 >> 62)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (v7 >> 59)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v4 = a2;
  if (((16 * v7) & 0x7FFFFFFFFFFFFFE0) <= a2)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v3 = a1;
  if (a2 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = a2 + 31;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    if (v4 >= -31)
    {
      goto LABEL_9;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_23:
  result = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
  v6 = result;
  if (v4 < -31)
  {
    goto LABEL_24;
  }

LABEL_9:
  v9 = v5 >> 5;
  if (v5 >> 5 >= *(v6 + 16))
  {
LABEL_25:
    __break(1u);
    return result;
  }

  v10 = v4 - 32 * v9;
  v11 = v6 + 32;
  if (v3)
  {
    if (v10 >= 0x20)
    {
      v12 = 0;
    }

    else
    {
      v12 = 1 << v10;
    }

    v13 = *(v11 + 4 * v9) | v12;
  }

  else
  {
    if (v10 < 0x20)
    {
      v14 = ~(1 << v10);
    }

    else
    {
      v14 = -1;
    }

    v13 = *(v11 + 4 * v9) & v14;
  }

  *(v11 + 4 * v9) = v13;
  *v2 = v6;
  return result;
}

Swift::tuple_word_Int_bit_Int __swiftcall FixedBitArray.index(for:)(Swift::Int a1)
{
  v2 = *(v1 + 24);
  if (v2 >> 62)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 >> 59)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (((16 * v2) & 0x7FFFFFFFFFFFFFE0) <= a1)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (a1 >= 0)
  {
    v3 = a1;
  }

  else
  {
    v3 = a1 + 31;
  }

  v1 = a1 - (v3 & 0xFFFFFFFFFFFFFFE0);
  a1 = v3 >> 5;
LABEL_11:
  result.bit = v1;
  result.word = a1;
  return result;
}

uint64_t (*FixedBitArray.subscript.modify(uint64_t (*result)(uint64_t *a1, char a2), uint64_t a2))(uint64_t *a1, char a2)
{
  *result = a2;
  *(result + 1) = v2;
  v3 = *v2;
  *(result + 2) = *v2;
  v4 = *(v3 + 24);
  if (v4 >> 62)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v4 >> 59)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (((16 * v4) & 0x7FFFFFFFFFFFFFE0) <= a2)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v5 = a2 + 31;
  if (a2 >= 0)
  {
    v5 = a2;
  }

  if (a2 < -31)
  {
    goto LABEL_14;
  }

  v6 = v5 >> 5;
  if (v5 >> 5 >= *(v3 + 16))
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v7 = a2 - (v5 & 0xFFFFFFFFFFFFFFE0);
  v8 = *(v3 + 4 * v6 + 32);
  v9 = v8 >> v7;
  v10 = v8 << -v7;
  if (v7 >= 0)
  {
    LOBYTE(v10) = v9;
  }

  *(result + 24) = v10 & 1;
  return FixedBitArray.subscript.modify;
}

uint64_t FixedBitArray.subscript.modify(uint64_t *a1, char a2)
{
  v4 = a1[2];
  v5 = *(a1 + 24);
  v6 = *(v4 + 24);
  v7 = v6 >> 62;
  if ((a2 & 1) == 0)
  {
    goto LABEL_8;
  }

  if (v7)
  {
    __break(1u);
    goto LABEL_25;
  }

  if (v6 >> 59)
  {
    goto LABEL_26;
  }

  v2 = *a1;
  if (((16 * v6) & 0x7FFFFFFFFFFFFFE0) <= *a1)
  {
    goto LABEL_28;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_30;
  }

  while (1)
  {
    v6 = v2 / 32;
    v7 = *(v4 + 16);
    if (v2 / 32 < v7)
    {
      break;
    }

    __break(1u);
LABEL_8:
    if (v7)
    {
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    if (v6 >> 59)
    {
      goto LABEL_27;
    }

    v2 = *a1;
    if (((16 * v6) & 0x7FFFFFFFFFFFFFE0) > *a1)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
        v4 = result;
      }

      v6 = v2 / 32;
      if (v2 / 32 >= *(v4 + 16))
      {
        __break(1u);
        return result;
      }

      break;
    }

LABEL_29:
    __break(1u);
LABEL_30:
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
    v4 = result;
  }

  v9 = v2 - 32 * v6;
  v10 = v4 + 32;
  if (v5)
  {
    if (v9 >= 0x20)
    {
      v11 = 0;
    }

    else
    {
      v11 = 1 << v9;
    }

    v12 = *(v10 + 4 * v6) | v11;
  }

  else
  {
    if (v9 < 0x20)
    {
      v13 = ~(1 << v9);
    }

    else
    {
      v13 = -1;
    }

    v12 = *(v10 + 4 * v6) & v13;
  }

  v14 = a1[1];
  *(v10 + 4 * v6) = v12;
  *v14 = v4;
  return result;
}

unint64_t FixedBitArray.endIndex.getter(unint64_t result)
{
  v1 = *(result + 24);
  if (v1 >> 62)
  {
    __break(1u);
  }

  else if (!(v1 >> 59))
  {
    return (16 * v1) & 0x7FFFFFFFFFFFFFE0;
  }

  __break(1u);
  return result;
}

unint64_t (*protocol witness for MutableCollection.subscript.modify in conformance FixedBitArray(unint64_t (*result)(uint64_t a1, char a2), uint64_t *a2))(uint64_t a1, char a2)
{
  v3 = *a2;
  *result = v2;
  *(result + 1) = v3;
  v4 = *v2;
  *(result + 2) = *v2;
  v5 = *(v4 + 24);
  if (v5 >> 62)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v5 >> 59)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v3 >= ((16 * v5) & 0x7FFFFFFFFFFFFFE0))
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v6 = v3 + 31;
  if (v3 >= 0)
  {
    v6 = v3;
  }

  if (v3 < -31)
  {
    goto LABEL_12;
  }

  v7 = v6 >> 5;
  if (v7 < *(v4 + 16))
  {
    *(result + 24) = specialized BinaryInteger.bit(at:)(v3 - 32 * v7, *(v4 + 4 * v7 + 32)) & 1;
    return protocol witness for MutableCollection.subscript.modify in conformance FixedBitArray;
  }

LABEL_13:
  __break(1u);
  return result;
}

unint64_t protocol witness for MutableCollection.subscript.modify in conformance FixedBitArray(uint64_t a1, char a2)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(v4 + 3);
  v7 = v6 >> 62;
  if ((a2 & 1) == 0)
  {
    goto LABEL_8;
  }

  if (v7)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (v6 >> 59)
  {
    goto LABEL_20;
  }

  v2 = *(a1 + 8);
  if (v2 >= ((16 * v6) & 0x7FFFFFFFFFFFFFE0))
  {
    goto LABEL_22;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_24;
  }

  while (1)
  {
    v6 = v2 / 32;
    v7 = *(v4 + 2);
    if (v2 / 32 < v7)
    {
      break;
    }

    __break(1u);
LABEL_8:
    if (v7)
    {
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    if (v6 >> 59)
    {
      goto LABEL_21;
    }

    v2 = *(a1 + 8);
    if (v2 < ((16 * v6) & 0x7FFFFFFFFFFFFFE0))
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
        v4 = result;
      }

      if (v2 / 32 >= *(v4 + 2))
      {
        __break(1u);
        return result;
      }

      break;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    v4 = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
  }

  v9 = *a1;
  if (v2 <= 0)
  {
    v10 = -(-v2 & 0x1F);
  }

  else
  {
    v10 = v2 & 0x1F;
  }

  result = specialized BinaryInteger.setBit(at:to:)(v10, v5);
  *v9 = v4;
  return result;
}

uint64_t protocol witness for MutableCollection.subscript.setter in conformance FixedBitArray(uint64_t *a1, uint64_t *a2)
{
  specialized _writeBackMutableSlice<A, B>(_:bounds:slice:)(v2, *a2, a2[1], *a1, a1[1], a1[2]);
}

void (*protocol witness for MutableCollection.subscript.modify in conformance FixedBitArray(void *a1, uint64_t *a2))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = specialized MutableCollection<>.subscript.modify(v4, *a2, a2[1]);
  return protocol witness for PresenceDataSource.members.modify in conformance SKPresenceDataSource<A>;
}

void (*specialized MutableCollection<>.subscript.modify(void *a1, uint64_t a2, int64_t a3))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x30uLL);
  }

  v8 = v7;
  *a1 = v7;
  v7[4] = a3;
  v7[5] = v3;
  v7[3] = a2;
  result = *v3;
  v10 = *(*v3 + 3);
  if (v10 >> 62)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v10 >> 59)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (a2 < 0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (((16 * v10) & 0xFFFFFFFFFFFFFFE0) >= a3)
  {
    *v8 = a2;
    v8[1] = a3;
    v8[2] = result;

    return MutableCollection<>.subscript.modifyspecialized ;
  }

LABEL_12:
  __break(1u);
  return result;
}

void MutableCollection<>.subscript.modifyspecialized (uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1)[1];
  v5 = (*a1)[4];
  v6 = (*a1)[5];
  v7 = (*a1)[2];
  v8 = (*a1)[3];
  if (a2)
  {

    specialized _writeBackMutableSlice<A, B>(_:bounds:slice:)(v6, v8, v5, v3, v4, v7);
  }

  else
  {
    specialized _writeBackMutableSlice<A, B>(_:bounds:slice:)((*a1)[5], v8, v5, v3, v4, v7);
  }

  free(v2);
}

uint64_t protocol witness for MutableCollection.partition(by:) in conformance FixedBitArray@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = specialized MutableCollection<>._partitionImpl(by:)(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t *protocol witness for MutableCollection.swapAt(_:_:) in conformance FixedBitArray(uint64_t *result, uint64_t *a2)
{
  v3 = *result;
  v4 = *a2;
  if (*result != *a2)
  {
    v5 = *v2;
    v6 = FixedBitArray.subscript.getter(*result, *v2);
    v7 = FixedBitArray.subscript.getter(v4, v5);
    FixedBitArray.subscript.setter(v7 & 1, v3);

    return FixedBitArray.subscript.setter(v6 & 1, v4);
  }

  return result;
}

unint64_t specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(unint64_t result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 24);
  if (v4 >> 62)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (v4 >> 59)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v5 = (16 * v4) & 0xFFFFFFFFFFFFFFE0;
  if (v5 < result || v5 < a3)
  {
    goto LABEL_20;
  }

  v7 = a3 - result;
  if (a2 >= 1)
  {
    if (v7 < 0 || v7 >= a2)
    {
      goto LABEL_15;
    }

    return 0;
  }

  if (v7 <= 0 && v7 > a2)
  {
    return 0;
  }

LABEL_15:
  v8 = __OFADD__(result, a2);
  result += a2;
  if (v8)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (result > v5)
  {
LABEL_22:
    __break(1u);
  }

  return result;
}

void protocol witness for Collection.endIndex.getter in conformance FixedBitArray(unint64_t *a1@<X8>)
{
  v2 = *(*v1 + 24);
  if (v2 >> 62)
  {
    __break(1u);
  }

  else if (!(v2 >> 59))
  {
    *a1 = (16 * v2) & 0x7FFFFFFFFFFFFFE0;
    return;
  }

  __break(1u);
}

uint64_t protocol witness for Collection.subscript.getter in conformance FixedBitArray@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = *v2;
  v5 = *(*v2 + 24);
  if (v5 >> 62)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v5 >> 59)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v6 = *a1;
  if (*a1 < 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v7 = a1[1];
  if (((16 * v5) & 0xFFFFFFFFFFFFFFE0) >= v7)
  {
    *a2 = v6;
    a2[1] = v7;
    a2[2] = result;
  }

LABEL_9:
  __break(1u);
  return result;
}

void protocol witness for Collection.indices.getter in conformance FixedBitArray(void *a1@<X8>)
{
  v2 = *(*v1 + 24);
  if (v2 >> 62)
  {
    __break(1u);
  }

  else if (!(v2 >> 59))
  {
    *a1 = 0;
    a1[1] = (16 * v2) & 0x7FFFFFFFFFFFFFE0;
    return;
  }

  __break(1u);
}

BOOL protocol witness for Collection.isEmpty.getter in conformance FixedBitArray()
{
  v1 = *(*v0 + 24);
  if (v1 >> 62)
  {
    __break(1u);
  }

  else if (!(v1 >> 59))
  {
    return v1 < 2;
  }

  __break(1u);
  return result;
}

uint64_t *protocol witness for Collection._failEarlyRangeCheck(_:bounds:) in conformance FixedBitArray(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  v3 = a2[1];
  if (*result >= *a2)
  {
    v5 = __OFSUB__(v2, v3);
    v4 = v2 - v3 < 0;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  if (v4 == v5)
  {
    __break(1u);
  }

  return result;
}

void *protocol witness for Collection._failEarlyRangeCheck(_:bounds:) in conformance FixedBitArray(void *result, void *a2)
{
  if (*result < *a2 || a2[1] < *result)
  {
    __break(1u);
  }

  return result;
}

{
  if (*result < *a2 || a2[1] < result[1])
  {
    __break(1u);
  }

  return result;
}

unint64_t *protocol witness for Collection.index(after:) in conformance FixedBitArray@<X0>(unint64_t *result@<X0>, void *a2@<X8>)
{
  v3 = *(*v2 + 24);
  if (v3 >> 62)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v3 >> 59)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (*result < ((16 * v3) & 0x7FFFFFFFFFFFFFE0))
  {
    *a2 = *result + 1;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

unint64_t *protocol witness for Collection.formIndex(after:) in conformance FixedBitArray(unint64_t *result)
{
  v2 = *(*v1 + 24);
  if (v2 >> 62)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v2 >> 59)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (*result < ((16 * v2) & 0x7FFFFFFFFFFFFFE0))
  {
    ++*result;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

void *protocol witness for BidirectionalCollection.index(before:) in conformance FixedBitArray@<X0>(void *result@<X0>, unint64_t *a2@<X8>)
{
  v3 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = *(*v2 + 24);
  if (v4 >> 62)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 >> 59)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v3 < ((16 * v4) & 0x7FFFFFFFFFFFFFE0))
  {
    *a2 = v3;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

unint64_t *protocol witness for BidirectionalCollection.formIndex(before:) in conformance FixedBitArray(unint64_t *result)
{
  v2 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = *(*v1 + 24);
  if (v3 >> 62)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v3 >> 59)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v2 < ((16 * v3) & 0x7FFFFFFFFFFFFFE0))
  {
    *result = v2;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

void *protocol witness for RandomAccessCollection.index(_:offsetBy:) in conformance FixedBitArray@<X0>(void *result@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v4 = *result + a2;
  if (__OFADD__(*result, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = *(*v3 + 24);
  if (v5 >> 62)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v5 >> 59)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v4 <= ((16 * v5) & 0x7FFFFFFFFFFFFFE0))
  {
    *a3 = v4;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

unint64_t protocol witness for RandomAccessCollection.index(_:offsetBy:limitedBy:) in conformance FixedBitArray@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(*a1, a2, *a3, *v4);
  *a4 = result;
  *(a4 + 8) = v7 & 1;
  return result;
}

unint64_t *protocol witness for RandomAccessCollection.distance(from:to:) in conformance FixedBitArray(unint64_t *result, unint64_t *a2)
{
  v3 = *(*v2 + 24);
  if (v3 >> 62)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v3 >> 59)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v4 = *a2;
  v5 = (16 * v3) & 0x7FFFFFFFFFFFFFE0;
  if (*result <= v5 && v4 <= v5)
  {
    return (v4 - *result);
  }

LABEL_10:
  __break(1u);
  return result;
}

unint64_t protocol witness for Collection.count.getter in conformance FixedBitArray()
{
  v1 = *(*v0 + 24);
  if (v1 >> 62)
  {
    __break(1u);
  }

  else if (!(v1 >> 59))
  {
    return (16 * v1) & 0x7FFFFFFFFFFFFFE0;
  }

  __break(1u);
  return result;
}

void *protocol witness for Sequence._copyToContiguousArray() in conformance FixedBitArray()
{
  v1 = specialized _copyCollectionToContiguousArray<A>(_:)(*v0);

  return v1;
}

uint64_t SeqNumReceivedBuffer.parityFlag.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t SeqNumReceivedBuffer.processedFlag.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

void SeqNumReceivedBuffer.init(seqNumCapacity:)(unint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  a2[2] = 0;
  v3 = ceil(vcvtd_n_f64_s64(a1, 5uLL));
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v3 <= -9.22337204e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v3 >= 9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v4 = v3;
  if (v3 < 0)
  {
LABEL_12:
    __break(1u);
    return;
  }

  if (v4)
  {
    v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(v5 + 16) = v4;
    bzero((v5 + 32), 4 * v4);
    *a2 = v5;
    v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(v6 + 16) = v4;
    bzero((v6 + 32), 4 * v4);
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
    *a2 = MEMORY[0x1E69E7CC0];
  }

  a2[1] = v6;
}

unint64_t SeqNumReceivedBuffer.capacity.getter()
{
  v1 = *(*(v0 + 8) + 24);
  if (v1 >> 62)
  {
    __break(1u);
  }

  else if (!(v1 >> 59))
  {
    return (16 * v1) & 0x7FFFFFFFFFFFFFE0;
  }

  __break(1u);
  return result;
}

Swift::Bool __swiftcall SeqNumReceivedBuffer.process(seqNum:)(Swift::UInt64 seqNum)
{
  v8 = v2[1];
  v7 = v2[2];
  if (v7 <= seqNum)
  {
    v7 = seqNum;
  }

  v2[2] = v7;
  v9 = *(v8 + 3);
  if (v9 >> 62)
  {
    __break(1u);
    goto LABEL_31;
  }

  if (v9 >> 59)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v10 = (16 * v9) & 0xFFFFFFFFFFFFFFE0;
  if (!v10)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v1 = *v2;
  v11 = *(*v2 + 3);
  if (v11 >> 62)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (v11 >> 59)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v5 = seqNum / v10;
  v6 = seqNum % v10;
  if ((seqNum % v10) >= ((16 * v11) & 0x7FFFFFFFFFFFFFE0))
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v3 = v6 >> 5;
  if (v6 >> 5 >= *(v1 + 2))
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v4 = 1 << v6;
  if (((v5 ^ ((*&v1[4 * v3 + 32] & (1 << v6)) != 0)) & 1) == 0)
  {
    if (v3 < *(v8 + 2))
    {
      if ((*&v8[4 * v3 + 32] & v4) == 0)
      {
        LOBYTE(v15) = swift_isUniquelyReferenced_nonNull_native();
        if (v15)
        {
LABEL_25:
          if (v3 >= *(v8 + 2))
          {
            __break(1u);
            return v15;
          }

          *&v8[4 * v3 + 32] |= v4;
          v2[1] = v8;
          goto LABEL_29;
        }

LABEL_45:
        v15 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
        v8 = v15;
        goto LABEL_25;
      }

      goto LABEL_23;
    }

LABEL_37:
    __break(1u);
LABEL_38:
    v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
LABEL_13:
    if (v3 >= *(v8 + 2))
    {
      __break(1u);
    }

    else
    {
      *&v8[4 * v3 + 32] |= v4;
      v2[1] = v8;
      v12 = *(v1 + 3);
      if (!(v12 >> 62))
      {
        if (!(v12 >> 59))
        {
          if (v6 < ((16 * v12) & 0x7FFFFFFFFFFFFFE0))
          {
            if (swift_isUniquelyReferenced_nonNull_native())
            {
LABEL_18:
              if (v3 < *(v1 + 2))
              {
                v13 = v1 + 32;
                if (v5)
                {
                  v14 = *&v13[4 * v3] | v4;
                }

                else
                {
                  v14 = *&v13[4 * v3] & ~v4;
                }

                *&v13[4 * v3] = v14;
                *v2 = v1;
LABEL_29:
                LOBYTE(v15) = 1;
                return v15;
              }

              __break(1u);
              goto LABEL_45;
            }

LABEL_43:
            v1 = specialized _ArrayBuffer._consumeAndCreateNew()(v1);
            goto LABEL_18;
          }

LABEL_42:
          __break(1u);
          goto LABEL_43;
        }

LABEL_41:
        __break(1u);
        goto LABEL_42;
      }
    }

    __break(1u);
    goto LABEL_41;
  }

  if ((v5 & 1) != (((v7 / v10) & 1) == 0))
  {
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_13;
    }

    goto LABEL_38;
  }

LABEL_23:
  LOBYTE(v15) = 0;
  return v15;
}

uint64_t specialized _writeBackMutableSlice<A, B>(_:bounds:slice:)(uint64_t result, uint64_t a2, int64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v32 = result;
  v6 = *result;
  v7 = *(*result + 24);
  if (v7 >> 62)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  if (v7 >> 59)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  if (a2 < 0)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  if (((16 * v7) & 0xFFFFFFFFFFFFFFE0) < a3)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v10 = a4 == a5;
  v11 = a2 == a3;
  if (a2 != a3 && a4 != a5)
  {
    v13 = 0;
    v30 = a2 - a3 + 1;
    v31 = a6 + 32;
    v14 = -a4;
    v15 = a4 - a5 + 1;
    v16 = a5;
    while (1)
    {
      v17 = a4 + v13;
      if (a4 + v13 >= a5)
      {
        break;
      }

      v18 = *(a6 + 24);
      if (v18 >> 62)
      {
        goto LABEL_37;
      }

      if (v18 >> 59)
      {
        goto LABEL_38;
      }

      if (v17 >= ((16 * v18) & 0x7FFFFFFFFFFFFFE0))
      {
        goto LABEL_39;
      }

      v19 = v17 + 31;
      if (v17 >= 0)
      {
        v19 = a4 + v13;
      }

      if (a4 < -31)
      {
        goto LABEL_40;
      }

      v20 = v19 >> 5;
      if (v19 >> 5 >= *(a6 + 16))
      {
        goto LABEL_41;
      }

      v21 = a4 + v13 - (v19 & 0xFFFFFFFFFFFFFFE0);
      v22 = *(v31 + 4 * v20);
      if ((v21 & 0x8000000000000000) != 0)
      {
        v23 = v22 << (v14 + 32 * v20);
      }

      else
      {
        v23 = v22 >> (a4 + v13 - 32 * v20);
      }

      v24 = a2 + v13;
      if (a2 + v13 >= ((16 * v7) & 0x7FFFFFFFFFFFFFE0))
      {
        goto LABEL_42;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
        v6 = result;
      }

      v25 = v24 >> 5;
      if (v24 >> 5 >= *(v6 + 16))
      {
        goto LABEL_43;
      }

      v26 = v6 + 32;
      v27 = 1 << (a2 + v13);
      if (v23)
      {
        v28 = *(v26 + 4 * v25) | v27;
      }

      else
      {
        v28 = *(v26 + 4 * v25) & ~v27;
      }

      *(v26 + 4 * v25) = v28;
      *v32 = v6;
      v7 = *(v6 + 24);
      if (v7 >> 62)
      {
        goto LABEL_44;
      }

      if (v7 >> 59)
      {
        goto LABEL_45;
      }

      if (a4 < 0 || v24 >= ((16 * v7) & 0x7FFFFFFFFFFFFFE0))
      {
        goto LABEL_46;
      }

      v29 = v15 + v13;
      v11 = v30 + v13 == 0;
      v10 = v15 + v13 == 0;
      if (v30 + v13)
      {
        ++v13;
        LOBYTE(v14) = v14 - 1;
        a5 = v16;
        if (v29)
        {
          continue;
        }
      }

      goto LABEL_33;
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

LABEL_33:
  if (!v11)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  if (!v10)
  {
LABEL_52:
    __break(1u);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type FixedBitArray and conformance FixedBitArray()
{
  result = lazy protocol witness table cache variable for type FixedBitArray and conformance FixedBitArray;
  if (!lazy protocol witness table cache variable for type FixedBitArray and conformance FixedBitArray)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FixedBitArray and conformance FixedBitArray);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FixedBitArray and conformance FixedBitArray;
  if (!lazy protocol witness table cache variable for type FixedBitArray and conformance FixedBitArray)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FixedBitArray and conformance FixedBitArray);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FixedBitArray and conformance FixedBitArray;
  if (!lazy protocol witness table cache variable for type FixedBitArray and conformance FixedBitArray)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FixedBitArray and conformance FixedBitArray);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FixedBitArray and conformance FixedBitArray;
  if (!lazy protocol witness table cache variable for type FixedBitArray and conformance FixedBitArray)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FixedBitArray and conformance FixedBitArray);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FixedBitArray and conformance FixedBitArray;
  if (!lazy protocol witness table cache variable for type FixedBitArray and conformance FixedBitArray)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FixedBitArray and conformance FixedBitArray);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSnySiGMd, &_sSnySiGMR);
    lazy protocol witness table accessor for type Int and conformance Int();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Slice<FixedBitArray> and conformance <> Slice<A>(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5SliceVy14CopresenceCore13FixedBitArrayVGMd, &_ss5SliceVy14CopresenceCore13FixedBitArrayVGMR);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *specialized _ArrayBuffer._consumeAndCreateNew()(void *a1)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

uint64_t specialized _ArrayBuffer._consumeAndCreateNew()(unint64_t a1)
{
  if (a1 >> 62)
  {
    __CocoaSet.count.getter();
  }

  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

uint64_t specialized MutableCollection<>._partitionImpl(by:)(uint64_t result)
{
  v3 = *v1;
  v4 = *(*v1 + 24);
  if (v4 >> 62)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if (v4 >> 59)
  {
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    return result;
  }

  v5 = (16 * v4) & 0x7FFFFFFFFFFFFFE0;
  if (v5)
  {
    v6 = result;
    v7 = 0;
LABEL_5:
    v8 = v3 + 32;
    while (1)
    {
      if (v7 >= ((16 * v4) & 0x7FFFFFFFFFFFFFE0))
      {
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      if (v7 >> 5 >= *(v3 + 16))
      {
        goto LABEL_31;
      }

      v14 = (*(v8 + 4 * (v7 >> 5)) >> v7) & 1;
      result = v6(&v14);
      if (v2)
      {
        return v7;
      }

      if (result)
      {
        break;
      }

      v4 = *(v3 + 24);
      if (v4 >> 62)
      {
        goto LABEL_32;
      }

      if (v4 >> 59)
      {
        goto LABEL_33;
      }

      if (v7 >= ((16 * v4) & 0x7FFFFFFFFFFFFFE0))
      {
        goto LABEL_34;
      }

      if (++v7 >= v5)
      {
        return v7;
      }
    }

    while (!__OFSUB__(v5--, 1))
    {
      v10 = *(v3 + 24);
      if (v10 >> 62)
      {
        goto LABEL_36;
      }

      if (v10 >> 59)
      {
        goto LABEL_37;
      }

      if (v5 >= ((16 * v10) & 0x7FFFFFFFFFFFFFE0))
      {
        goto LABEL_38;
      }

      if (v7 >= v5)
      {
        return v7;
      }

      if (v5 >> 5 >= *(v3 + 16))
      {
        goto LABEL_39;
      }

      v13 = (*(v8 + 4 * (v5 >> 5)) >> v5) & 1;
      result = v6(&v13);
      if ((result & 1) == 0)
      {
        v11 = FixedBitArray.subscript.getter(v7, v3);
        v12 = FixedBitArray.subscript.getter(v5, v3);
        FixedBitArray.subscript.setter(v12 & 1, v7);
        result = FixedBitArray.subscript.setter(v11 & 1, v5);
        v3 = *v1;
        v4 = *(*v1 + 24);
        if (v4 >> 62)
        {
          goto LABEL_42;
        }

        if (v4 >> 59)
        {
          goto LABEL_43;
        }

        if (v7 >= ((16 * v4) & 0x7FFFFFFFFFFFFFE0))
        {
          goto LABEL_44;
        }

        if (++v7 < v5)
        {
          goto LABEL_5;
        }

        return v7;
      }
    }

LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  return 0;
}

uint64_t ApplicationLauncher.placementSceneIdentifier.getter()
{
  v1 = (v0 + OBJC_IVAR___CPApplicationLauncherSwift_placementSceneIdentifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t ApplicationLauncher.placementSceneIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOySS__GMd, &_sScS12ContinuationV11YieldResultOySS__GMR);
  v18 = *(v5 - 8);
  v19 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v17 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySS_GSgMd, &_sScS12ContinuationVySS_GSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v17 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySS_GMd, &_sScS12ContinuationVySS_GMR);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v17 - v13;
  v15 = (v2 + OBJC_IVAR___CPApplicationLauncherSwift_placementSceneIdentifier);
  swift_beginAccess();
  *v15 = a1;
  v15[1] = a2;

  if (a2)
  {
    (*((*MEMORY[0x1E69E7D40] & *v2) + 0xA0))(result);
    if ((*(v12 + 48))(v10, 1, v11) == 1)
    {

      return outlined destroy of NSObject?(v10, &_sScS12ContinuationVySS_GSgMd, &_sScS12ContinuationVySS_GSgMR);
    }

    else
    {
      (*(v12 + 32))(v14, v10, v11);
      v20 = a1;
      v21 = a2;
      AsyncStream.Continuation.yield(_:)();
      (*(v18 + 8))(v7, v19);
      return (*(v12 + 8))(v14, v11);
    }
  }

  return result;
}

void (*ApplicationLauncher.placementSceneIdentifier.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x70uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 40) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOySS__GMd, &_sScS12ContinuationV11YieldResultOySS__GMR);
  v5[6] = v6;
  v7 = *(v6 - 8);
  v5[7] = v7;
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v7 + 64));
  }

  v5[8] = v8;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySS_GSgMd, &_sScS12ContinuationVySS_GSgMR) - 8) + 64);
  if (v3)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(v9);
  }

  v5[9] = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySS_GMd, &_sScS12ContinuationVySS_GMR);
  v5[10] = v11;
  v12 = *(v11 - 8);
  v5[11] = v12;
  if (v3)
  {
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v13 = malloc(*(v12 + 64));
  }

  v14 = OBJC_IVAR___CPApplicationLauncherSwift_placementSceneIdentifier;
  v5[12] = v13;
  v5[13] = v14;
  swift_beginAccess();
  return ApplicationLauncher.placementSceneIdentifier.modify;
}

void ApplicationLauncher.placementSceneIdentifier.modify(uint64_t *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(v3 + 40);
    v5 = (v4 + *(v3 + 104));
    v6 = v5[1];
    if (v6)
    {
      v7 = *v5;
      v8 = *(v3 + 80);
      v9 = *(v3 + 88);
      v10 = *(v3 + 72);
      v11 = *((*MEMORY[0x1E69E7D40] & *v4) + 0xA0);

      v11(v12);
      if ((*(v9 + 48))(v10, 1, v8) == 1)
      {
        v13 = *(v3 + 72);

        outlined destroy of NSObject?(v13, &_sScS12ContinuationVySS_GSgMd, &_sScS12ContinuationVySS_GSgMR);
      }

      else
      {
        v15 = *(v3 + 88);
        v14 = *(v3 + 96);
        v16 = *(v3 + 80);
        v18 = *(v3 + 56);
        v17 = *(v3 + 64);
        v19 = *(v3 + 48);
        (*(v15 + 32))(v14, *(v3 + 72), v16);
        *(v3 + 24) = v7;
        *(v3 + 32) = v6;
        AsyncStream.Continuation.yield(_:)();
        (*(v18 + 8))(v17, v19);
        (*(v15 + 8))(v14, v16);
      }
    }
  }

  v21 = *(v3 + 64);
  v20 = *(v3 + 72);
  free(*(v3 + 96));
  free(v20);
  free(v21);

  free(v3);
}

uint64_t key path setter for ApplicationLauncher.placementSceneIdentifierContinuation : ApplicationLauncher(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySS_GSgMd, &_sScS12ContinuationVySS_GSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v8 - v5;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, &v8 - v5, &_sScS12ContinuationVySS_GSgMd, &_sScS12ContinuationVySS_GSgMR);
  return (*((*MEMORY[0x1E69E7D40] & **a2) + 0xA8))(v6);
}

uint64_t ApplicationLauncher.placementSceneIdentifierContinuation.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___CPApplicationLauncherSwift_placementSceneIdentifierContinuation;
  swift_beginAccess();
  return outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + v3, a1, &_sScS12ContinuationVySS_GSgMd, &_sScS12ContinuationVySS_GSgMR);
}

uint64_t ApplicationLauncher.placementSceneIdentifierContinuation.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___CPApplicationLauncherSwift_placementSceneIdentifierContinuation;
  swift_beginAccess();
  outlined assign with take of AsyncStream<String>.Continuation?(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t outlined assign with take of AsyncStream<String>.Continuation?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySS_GSgMd, &_sScS12ContinuationVySS_GSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id ApplicationLauncher.init(behaviors:featureFlags:spatialApplicationManager:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = &v3[OBJC_IVAR___CPApplicationLauncherSwift_pendingApplicationLaunches];
  *v7 = 0;
  *(v7 + 1) = MEMORY[0x1E69E7CC8];
  v8 = &v3[OBJC_IVAR___CPApplicationLauncherSwift_placementSceneIdentifier];
  *v8 = 0;
  *(v8 + 1) = 0;
  v9 = OBJC_IVAR___CPApplicationLauncherSwift_placementSceneIdentifierContinuation;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySS_GMd, &_sScS12ContinuationVySS_GMR);
  (*(*(v10 - 8) + 56))(&v3[v9], 1, 1, v10);
  *&v3[OBJC_IVAR___CPApplicationLauncherSwift_behaviors] = a1;
  *&v3[OBJC_IVAR___CPApplicationLauncherSwift_featureFlags] = a2;
  v11 = a1 + 32;
  v12 = *(a1 + 16) + 1;
  while (--v12)
  {
    v13 = v11 + 16;
    type metadata accessor for PegasusApplicationLaunchBehavior();
    v14 = swift_dynamicCastClass();
    v11 = v13;
    if (v14)
    {
      v15 = v14;
      swift_unknownObjectRetain();
      v16 = v15;
      goto LABEL_6;
    }
  }

  v16 = 0;
LABEL_6:
  *&v3[OBJC_IVAR___CPApplicationLauncherSwift_pegasusLaunchBehavior] = v16;
  *&v3[OBJC_IVAR___CPApplicationLauncherSwift_spatialApplicationManager] = a3;
  v18.receiver = v3;
  v18.super_class = type metadata accessor for ApplicationLauncher(0);
  return objc_msgSendSuper2(&v18, sel_init);
}

uint64_t type metadata accessor for ApplicationLauncher(uint64_t a1)
{
  result = type metadata singleton initialization cache for ApplicationLauncher;
  if (!type metadata singleton initialization cache for ApplicationLauncher)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ApplicationLauncher.init(spatialApplicationManager:)(uint64_t a1)
{
  type metadata accessor for PegasusApplicationLaunchBehavior();
  v2 = swift_allocObject();
  type metadata accessor for PegasusApplicationLaunchBehavior.AuthorizationManager();
  v3 = swift_allocObject();
  swift_defaultActor_initialize();
  v4 = MEMORY[0x1E69E7CC8];
  *(v3 + 112) = MEMORY[0x1E69E7CC8];
  *(v2 + 24) = v3;
  type metadata accessor for BackgroundApplicationLaunchBehavior.AssertionStore();
  v5 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v5 + 112) = v4;
  *(v2 + 16) = v5;
  v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v8 = v6[2];
  v7 = v6[3];
  if (v8 >= v7 >> 1)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1, v6);
  }

  v6[2] = v8 + 1;
  v9 = &v6[2 * v8];
  v9[4] = v2;
  v9[5] = &protocol witness table for BackgroundApplicationLaunchBehavior;
  type metadata accessor for BackgroundApplicationLaunchBehavior();
  v10 = swift_allocObject();
  v11 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v11 + 112) = v4;
  *(v10 + 16) = v11;
  v13 = v6[2];
  v12 = v6[3];
  v14 = v13 + 1;
  if (v13 >= v12 >> 1)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v6);
  }

  v6[2] = v14;
  v15 = &v6[2 * v13];
  v15[4] = v10;
  v15[5] = &protocol witness table for BackgroundApplicationLaunchBehavior;
  type metadata accessor for ForegroundApplicationLaunchBehavior();
  v16 = swift_allocObject();
  v17 = v6[3];
  v18 = v13 + 2;
  if (v18 > (v17 >> 1))
  {
    v23 = v16;
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18, 1, v6);
    v16 = v23;
  }

  v6[2] = v18;
  v19 = &v6[2 * v14];
  v19[4] = v16;
  v19[5] = &protocol witness table for ForegroundApplicationLaunchBehavior;
  ObjectType = swift_getObjectType();
  v21 = (*(ObjectType + 184))(v6, [objc_allocWithZone(CPFeatureFlags) init], a1);
  swift_deallocPartialClassInstance();
  return v21;
}

void ApplicationLauncher.launchApplication(for:options:completion:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v16 - v10;
  v12 = &v4[OBJC_IVAR___CPApplicationLauncherSwift_pendingApplicationLaunches];
  os_unfair_lock_lock(&v4[OBJC_IVAR___CPApplicationLauncherSwift_pendingApplicationLaunches]);
  _s14CopresenceCore19ApplicationLauncherC06launchC03for7options10completionySo27CPLaunchableActivitySession_p_So013CPApplicationD7OptionsVySb_s5Error_pSgtcSgtFSbSDy10Foundation4UUIDVSayySb_ALtcGGzYuYTXEfU_(v12 + 1, a1, a3, a4, &v17);
  os_unfair_lock_unlock(v12);
  if (v17 == 1)
  {
    static TaskPriority.userInitiated.getter();
    v13 = type metadata accessor for TaskPriority();
    (*(*(v13 - 8) + 56))(v11, 0, 1, v13);
    v14 = swift_allocObject();
    v14[2] = 0;
    v14[3] = 0;
    v14[4] = v4;
    v14[5] = a1;
    v14[6] = a2;
    v15 = v4;
    swift_unknownObjectRetain();
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v11, &async function pointer to partial apply for closure #2 in ApplicationLauncher.launchApplication(for:options:completion:), v14);
  }
}

uint64_t _s14CopresenceCore19ApplicationLauncherC06launchC03for7options10completionySo27CPLaunchableActivitySession_p_So013CPApplicationD7OptionsVySb_s5Error_pSgtcSgtFSbSDy10Foundation4UUIDVSayySb_ALtcGGzYuYTXEfU_@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v42 = a4;
  v44 = a3;
  v41 = a5;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v40 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v40 - v15;
  v17 = [a2 UUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  if (*(*a1 + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(v16), (v18 & 1) != 0))
  {
    v19 = *(v8 + 8);

    v19(v16, v7);

    v21 = v44;
    if (v44)
    {
      v40 = v19;
      v22 = v42;

      v23 = [a2 UUID];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v25 = specialized Dictionary.subscript.modify(v43);
      if (*v24)
      {
        v26 = v24;
        v27 = swift_allocObject();
        *(v27 + 16) = v44;
        *(v27 + 24) = v22;
        v28 = *v26;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v26 = v28;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v28[2] + 1, 1, v28);
          *v26 = v28;
        }

        v31 = v28[2];
        v30 = v28[3];
        if (v31 >= v30 >> 1)
        {
          v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v31 + 1, 1, v28);
          *v26 = v28;
        }

        v28[2] = v31 + 1;
        v32 = &v28[2 * v31];
        v32[4] = thunk for @escaping @callee_guaranteed (@unowned Bool, @guaranteed Error?) -> ()partial apply;
        v32[5] = v27;
        (v25)(v43, 0);
        v33 = v44;
        v34 = v42;
      }

      else
      {
        (v25)(v43, 0);
        v33 = v44;
        v34 = v22;
      }

      _sxRi_zRi0_zlyytIseghHr_SgWOe(v33, v34);
      result = v40(v11, v7);
      v21 = 0;
    }
  }

  else
  {
    (*(v8 + 8))(v16, v7);
    v35 = [a2 UUID];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v36 = v44;
    if (v44)
    {
      v37 = swift_allocObject();
      v38 = v42;
      *(v37 + 16) = v36;
      *(v37 + 24) = v38;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyySb_s5Error_pSgtcGMd, &_ss23_ContiguousArrayStorageCyySb_s5Error_pSgtcGMR);
      v39 = swift_allocObject();
      *(v39 + 16) = xmmword_1AEE07B20;
      *(v39 + 32) = partial apply for thunk for @escaping @callee_guaranteed (@unowned Bool, @guaranteed Error?) -> ();
      *(v39 + 40) = v37;
    }

    else
    {
      v39 = MEMORY[0x1E69E7CC0];
      v38 = v42;
    }

    outlined copy of (@escaping @callee_guaranteed @Sendable (@in_guaranteed NWConnection.State) -> ())?(v36, v38);
    result = specialized Dictionary.subscript.setter(v39, v14);
    v21 = 1;
  }

  *v41 = v21;
  return result;
}

uint64_t (*specialized Dictionary.subscript.modify(uint64_t *a1))()
{
  v2 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = type metadata accessor for UUID();
  v4[4] = v5;
  v6 = *(v5 - 8);
  v7 = v6;
  v4[5] = v6;
  if (v2)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v6 + 64));
  }

  v9 = v8;
  v4[6] = v8;
  (*(v7 + 16))();
  v4[7] = specialized Dictionary._Variant.subscript.modify(v4, v9);
  return Dictionary.subscript.modifyspecialized ;
}

void Dictionary.subscript.modifyspecialized (void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  (*(*a1 + 56))(*a1, 0);
  (*(v4 + 8))(v2, v3);
  free(v2);

  free(v1);
}

uint64_t closure #2 in ApplicationLauncher.launchApplication(for:options:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a4;
  v6[3] = a5;
  v9 = type metadata accessor for UUID();
  v6[4] = v9;
  v6[5] = *(v9 - 8);
  v6[6] = swift_task_alloc();
  v10 = swift_task_alloc();
  v6[7] = v10;
  *v10 = v6;
  v10[1] = closure #2 in ApplicationLauncher.launchApplication(for:options:completion:);

  return ApplicationLauncher.launchApplication(for:options:)(a5, a6);
}

uint64_t closure #2 in ApplicationLauncher.launchApplication(for:options:completion:)()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = closure #2 in ApplicationLauncher.launchApplication(for:options:completion:);
  }

  else
  {
    v2 = closure #2 in ApplicationLauncher.launchApplication(for:options:completion:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v16 = v0;
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[3];
  v4 = v0[4];
  v5 = (v0[2] + OBJC_IVAR___CPApplicationLauncherSwift_pendingApplicationLaunches);
  os_unfair_lock_lock(v5);
  v6 = [v3 UUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v7 = specialized Dictionary.removeValue(forKey:)(v1);
  (*(v2 + 8))(v1, v4);
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

  os_unfair_lock_unlock(v5);
  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = v8 + 40;
    do
    {
      v11 = *(v10 - 8);
      v14 = 1;
      v15 = 0;

      v11(&v14, &v15);

      v10 += 16;
      --v9;
    }

    while (v9);
  }

  v12 = v0[1];

  return v12();
}

{
  v17 = v0;
  v1 = v0[8];
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[3];
  v5 = v0[4];
  v6 = (v0[2] + OBJC_IVAR___CPApplicationLauncherSwift_pendingApplicationLaunches);
  os_unfair_lock_lock(v6);
  v7 = [v4 UUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v8 = specialized Dictionary.removeValue(forKey:)(v2);
  (*(v3 + 8))(v2, v5);
  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  os_unfair_lock_unlock(v6);
  v10 = *(v9 + 16);
  if (v10)
  {
    v11 = v9 + 40;
    do
    {
      v12 = *(v11 - 8);
      v15 = v1 == 0;
      v16 = v1;

      v12(&v15, &v16);

      v11 += 16;
      --v10;
    }

    while (v10);
  }

  v13 = v0[1];

  return v13();
}

uint64_t ApplicationLauncher.launchApplication(for:options:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = swift_getObjectType();

  return MEMORY[0x1EEE6DFA0](ApplicationLauncher.launchApplication(for:options:), 0, 0);
}

uint64_t ApplicationLauncher.launchApplication(for:options:)()
{
  v1 = *(*(v0 + 32) + OBJC_IVAR___CPApplicationLauncherSwift_behaviors);
  v25 = *(v1 + 16);
  if (v25)
  {
    v2 = 0;
    v3 = (v1 + 40);
    while (1)
    {
      if (v2 >= *(v1 + 16))
      {
        __break(1u);
        goto LABEL_19;
      }

      v5 = v26[2];
      v4 = v26[3];
      v6 = *(v3 - 1);
      v26[6] = v6;
      v7 = *v3;
      ObjectType = swift_getObjectType();
      v9 = *(v7 + 8);
      swift_unknownObjectRetain();
      if (v9(v5, v4, ObjectType, v7))
      {
        break;
      }

      swift_unknownObjectRelease();
      ++v2;
      v3 += 2;
      if (v25 == v2)
      {
        goto LABEL_6;
      }
    }

    v17 = v26[4];
    v18 = *(v17 + OBJC_IVAR___CPApplicationLauncherSwift_spatialApplicationManager);
    v19 = v26[2];
    if (v18)
    {
      type metadata accessor for ActivitySession(0);
      v20 = swift_dynamicCastClass();
      if (v20)
      {
        [v18 willLaunchAppWithActivitySession_];
        v17 = v26[4];
        v19 = v26[2];
      }
    }

    v21 = v26[5];
    v22 = v26[3];
    v23 = swift_task_alloc();
    v26[7] = v23;
    v23[2] = v6;
    v23[3] = v7;
    v23[4] = v19;
    v23[5] = v22;
    v23[6] = v17;
    v23[7] = v21;
    v24 = swift_task_alloc();
    v26[8] = v24;
    *v24 = v26;
    v24[1] = ApplicationLauncher.launchApplication(for:options:);

    return MEMORY[0x1EEE6DD58]();
  }

  else
  {
LABEL_6:
    if (one-time initialization token for default != -1)
    {
LABEL_19:
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static Log.default);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1AEB26000, v11, v12, "Unable to launch application due to missing launch behavior", v13, 2u);
      MEMORY[0x1B27120C0](v13, -1, -1);
    }

    lazy protocol witness table accessor for type ApplicationLauncher.LaunchError and conformance ApplicationLauncher.LaunchError();
    swift_allocError();
    *v14 = 0;
    swift_willThrow();
    v15 = v26[1];

    return v15();
  }
}

{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = ApplicationLauncher.launchApplication(for:options:);
  }

  else
  {

    v2 = ApplicationLauncher.launchApplication(for:options:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #2 in ApplicationLauncher.launchApplication(for:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = a7;
  v8[8] = a8;
  v8[5] = a5;
  v8[6] = a6;
  v8[3] = a3;
  v8[4] = a4;
  v8[2] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v8[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #2 in ApplicationLauncher.launchApplication(for:options:), 0, 0);
}

uint64_t closure #2 in ApplicationLauncher.launchApplication(for:options:)()
{
  v1 = v0[9];
  v2 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  v14 = v0[6];
  v5 = v0[3];
  v15 = v0[8];
  v6 = type metadata accessor for TaskPriority();
  v7 = *(*(v6 - 8) + 56);
  v7(v1, 1, 1, v6);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v5;
  v8[5] = v3;
  v8[6] = v4;
  v8[7] = v14;
  v8[8] = v2;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v9 = v2;
  _sScg7addTask8priority9operationyScPSg_xyYaKYAcntFyt_s5Error_pTg5(v1, &async function pointer to partial apply for closure #1 in closure #2 in ApplicationLauncher.launchApplication(for:options:), v8);
  outlined destroy of NSObject?(v1, &_sScPSgMd, &_sScPSgMR);
  v7(v1, 1, 1, v6);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v4;
  v10[5] = v5;
  v10[6] = v3;
  v10[7] = v15;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  _sScg7addTask8priority9operationyScPSg_xyYaKYAcntFyt_s5Error_pTg5(v1, &async function pointer to partial apply for closure #2 in closure #2 in ApplicationLauncher.launchApplication(for:options:), v10);
  outlined destroy of NSObject?(v1, &_sScPSgMd, &_sScPSgMR);
  v11 = swift_task_alloc();
  v0[10] = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScgyyts5Error_pGMd, &_sScgyyts5Error_pGMR);
  *v11 = v0;
  v11[1] = closure #2 in ApplicationLauncher.launchApplication(for:options:);

  return MEMORY[0x1EEE6DAC8](v0 + 12, 0, 0, v12);
}

{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = closure #2 in ApplicationLauncher.launchApplication(for:options:);
  }

  else
  {
    v2 = closure #2 in ApplicationLauncher.launchApplication(for:options:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v1 = **(v0 + 16);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  MEMORY[0x1B2710450](v1, MEMORY[0x1E69E7CA8] + 8, v2, MEMORY[0x1E69E7288]);

  v3 = *(v0 + 8);

  return v3();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in closure #2 in ApplicationLauncher.launchApplication(for:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[10] = a7;
  v8[11] = a8;
  v8[8] = a5;
  v8[9] = a6;
  v8[7] = a4;
  return MEMORY[0x1EEE6DFA0](closure #1 in closure #2 in ApplicationLauncher.launchApplication(for:options:), 0, 0);
}

uint64_t closure #1 in closure #2 in ApplicationLauncher.launchApplication(for:options:)()
{
  v1 = v0[11];
  v11 = v0[8];
  ObjectType = swift_getObjectType();
  v0[5] = type metadata accessor for ApplicationLauncher(0);
  v0[6] = &protocol witness table for ApplicationLauncher;
  v0[2] = v1;
  v3 = *(v11 + 16);
  v4 = v1;
  v10 = (v3 + *v3);
  v5 = swift_task_alloc();
  v0[12] = v5;
  *v5 = v0;
  v5[1] = closure #1 in closure #2 in ApplicationLauncher.launchApplication(for:options:);
  v7 = v0[9];
  v6 = v0[10];
  v8 = v0[8];

  return (v10)(v7, v6, v0 + 2, ObjectType, v8);
}

{
  v2 = *v1;
  v2[13] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](closure #1 in closure #2 in ApplicationLauncher.launchApplication(for:options:), 0, 0);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v2 + 2);
    v3 = v2[1];

    return v3();
  }
}

{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t _sScg7addTask8priority9operationyScPSg_xyYaKYAcntFyt_s5Error_pTg5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v18 - v8;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, v18 - v8, &_sScPSgMd, &_sScPSgMR);
  v10 = type metadata accessor for TaskPriority();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    outlined destroy of NSObject?(v9, &_sScPSgMd, &_sScPSgMR);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v12 = dispatch thunk of Actor.unownedExecutor.getter();
      v14 = v13;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v11 + 8))(v9, v10);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v12 = 0;
  v14 = 0;
LABEL_6:
  v15 = *v4;
  v16 = (v14 | v12);
  if (v14 | v12)
  {
    v19[0] = 0;
    v19[1] = 0;
    v16 = v19;
    v19[2] = v12;
    v19[3] = v14;
  }

  v18[1] = 1;
  v18[2] = v16;
  v18[3] = v15;
  swift_task_create();
}

uint64_t closure #2 in closure #2 in ApplicationLauncher.launchApplication(for:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[6] = a4;
  return MEMORY[0x1EEE6DFA0](closure #2 in closure #2 in ApplicationLauncher.launchApplication(for:options:), 0, 0);
}

uint64_t closure #2 in closure #2 in ApplicationLauncher.launchApplication(for:options:)()
{
  v1 = swift_beginAccess();
  if (is_mul_ok(static ApplicationLauncher._applicationLaunchTimeout, 0x3B9ACA00uLL))
  {
    v2 = 1000000000 * static ApplicationLauncher._applicationLaunchTimeout;
    v3 = swift_task_alloc();
    *(v0 + 72) = v3;
    *v3 = v0;
    v3[1] = closure #2 in closure #2 in ApplicationLauncher.launchApplication(for:options:);
    v1 = v2;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE6DA60](v1);
}

{
  v2 = *v1;
  *(v2 + 80) = v0;

  if (v0)
  {
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](closure #2 in closure #2 in ApplicationLauncher.launchApplication(for:options:), 0, 0);
  }
}

uint64_t closure #2 in closure #2 in ApplicationLauncher.launchApplication(for:options:)(uint64_t a1)
{
  v18 = v1;
  v2 = v1[10];
  static Task<>.checkCancellation()();
  if (v2)
  {
    goto LABEL_8;
  }

  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Log.default);
  swift_unknownObjectRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = v1[6];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v7 = 136315138;
    v1[5] = v6;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo27CPLaunchableActivitySession_pMd, &_sSo27CPLaunchableActivitySession_pMR);
    v9 = String.init<A>(reflecting:)();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v17);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_1AEB26000, v4, v5, "Timed out launching app for activity session %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x1B27120C0](v8, -1, -1);
    MEMORY[0x1B27120C0](v7, -1, -1);
  }

  v12 = v1[8];
  ObjectType = swift_getObjectType();
  if ((*(v12 + 32))(ObjectType, v12))
  {
    lazy protocol witness table accessor for type ApplicationLauncher.LaunchError and conformance ApplicationLauncher.LaunchError();
    swift_allocError();
    *v14 = 4;
    swift_willThrow();
LABEL_8:
    v15 = v1[1];
    goto LABEL_9;
  }

  v15 = v1[1];
LABEL_9:

  return v15();
}

Swift::Void __swiftcall ApplicationLauncher.revokeBackgroundAuthorization(for:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - v5;
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v1;
  v8[5] = countAndFlagsBits;
  v8[6] = object;
  v9 = v1;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v6, &async function pointer to partial apply for closure #1 in ApplicationLauncher.revokeBackgroundAuthorization(for:), v8);
}

uint64_t closure #1 in ApplicationLauncher.revokeBackgroundAuthorization(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x1EEE6DFA0](closure #1 in ApplicationLauncher.revokeBackgroundAuthorization(for:), 0, 0);
}

uint64_t closure #1 in ApplicationLauncher.revokeBackgroundAuthorization(for:)()
{
  v1 = *(v0[2] + OBJC_IVAR___CPApplicationLauncherSwift_behaviors);
  v0[5] = v1;
  v2 = v1[2];
  v0[6] = v2;
  if (v2)
  {
    v0[7] = 0;
    v0[8] = v1[4];
    v3 = v1[5];
    ObjectType = swift_getObjectType();
    v5 = *(v3 + 24);
    swift_unknownObjectRetain();
    v11 = (v5 + *v5);
    v6 = swift_task_alloc();
    v0[9] = v6;
    *v6 = v0;
    v6[1] = closure #1 in ApplicationLauncher.revokeBackgroundAuthorization(for:);
    v8 = v0[3];
    v7 = v0[4];

    return v11(v8, v7, ObjectType, v3);
  }

  else
  {
    v10 = v0[1];

    return v10();
  }
}

{

  return MEMORY[0x1EEE6DFA0](closure #1 in ApplicationLauncher.revokeBackgroundAuthorization(for:), 0, 0);
}

{
  v1 = v0[7];
  v2 = v0[6];
  swift_unknownObjectRelease();
  if (v1 + 1 == v2)
  {
    v3 = v0[1];

    return v3();
  }

  else
  {
    v5 = v0[7] + 1;
    v0[7] = v5;
    v6 = v0[5] + 16 * v5;
    v0[8] = *(v6 + 32);
    v7 = *(v6 + 40);
    ObjectType = swift_getObjectType();
    v9 = *(v7 + 24);
    swift_unknownObjectRetain();
    v13 = (v9 + *v9);
    v10 = swift_task_alloc();
    v0[9] = v10;
    *v10 = v0;
    v10[1] = closure #1 in ApplicationLauncher.revokeBackgroundAuthorization(for:);
    v12 = v0[3];
    v11 = v0[4];

    return v13(v12, v11, ObjectType, v7);
  }
}

void ApplicationLauncher.revokeBackgroundAuthorization(for:)(void *a1)
{
  v2 = [a1 activity];
  v3 = [v2 bundleIdentifier];

  if (v3)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;

    (*((*MEMORY[0x1E69E7D40] & *v1) + 0xD0))(v4, v6);
  }
}

uint64_t ApplicationLauncher.authorizePiP(for:completion:)(uint64_t a1, uint64_t (*a2)(void, void), uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v14 - v8;
  v10 = *(v3 + OBJC_IVAR___CPApplicationLauncherSwift_pegasusLaunchBehavior);
  if (!v10)
  {
    return a2(0, 0);
  }

  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v10;
  v12[5] = a1;
  v12[6] = a2;
  v12[7] = a3;

  swift_unknownObjectRetain();

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v9, &async function pointer to partial apply for closure #1 in ApplicationLauncher.authorizePiP(for:completion:), v12);
}

uint64_t closure #1 in ApplicationLauncher.authorizePiP(for:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a6;
  v7[3] = a7;
  v11 = (*(*a4 + 216) + **(*a4 + 216));
  v9 = swift_task_alloc();
  v7[4] = v9;
  *v9 = v7;
  v9[1] = closure #1 in ApplicationLauncher.authorizePiP(for:completion:);

  return v11(a5);
}

uint64_t closure #1 in ApplicationLauncher.authorizePiP(for:completion:)()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = closure #1 in ApplicationLauncher.authorizePiP(for:completion:);
  }

  else
  {
    v2 = closure #1 in ApplicationLauncher.authorizePiP(for:completion:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  (*(v0 + 16))(1, 0);
  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = v0[5];
  v2 = v0[2];
  v3 = v1;
  v2(0, v1);

  v4 = v0[1];

  return v4();
}

Swift::Int ApplicationLauncher.LaunchError.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1B27111E0](a1);
  return Hasher._finalize()();
}

void ApplicationLauncher.openApplicationOptions(for:options:)()
{
  v13 = v0;
  if (*(v0 + 120))
  {
    *(v0 + 56) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v0 + 64) = v6;
    AnyHashable.init<A>(_:)();
    *(v0 + 80) = MEMORY[0x1E69E6370];
    *(v0 + 56) = 1;
    outlined init with take of Any((v0 + 56), (v0 + 88));
    v7 = MEMORY[0x1E69E7CC8];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = v7;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)((v0 + 88), v0 + 16, isUniquelyReferenced_nonNull_native);
    outlined destroy of AnyHashable(v0 + 16);
  }

  else
  {
    v1 = TUUnlockDeviceWithPromptFrontBoardOptionsDictionary();
    v2 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v3 = specialized _dictionaryUpCast<A, B, C, D>(_:)(v2);

    v4 = MEMORY[0x1E69E7CC8];
    v5 = swift_isUniquelyReferenced_nonNull_native();
    v12 = v4;
    specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v3, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, v5, &v12);
  }

  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v10 = [objc_opt_self() optionsWithDictionary_];

  if (v10)
  {

    v11 = *(v0 + 8);

    v11(v10);
  }

  else
  {
    __break(1u);
  }
}

void key path setter for static ApplicationLauncher.applicationLaunchTimeout : ApplicationLauncher.Type(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  v2 = MEMORY[0x1B270FF70](0x50747365546E6553, 0xEC00000065626F72);
  v3 = NSClassFromString(v2);

  if (v3 || (v4 = MEMORY[0x1B270FF70](0x7250747365544358, 0xEB0000000065626FLL), v5 = NSClassFromString(v4), v4, v5))
  {
    static ApplicationLauncher._applicationLaunchTimeout = v1;
    swift_endAccess();
  }

  else
  {
    __break(1u);
  }
}

void static ApplicationLauncher.applicationLaunchTimeout.setter(uint64_t a1)
{
  swift_beginAccess();
  v2 = MEMORY[0x1B270FF70](0x50747365546E6553, 0xEC00000065626F72);
  v3 = NSClassFromString(v2);

  if (v3 || (v4 = MEMORY[0x1B270FF70](0x7250747365544358, 0xEB0000000065626FLL), v5 = NSClassFromString(v4), v4, v5))
  {
    static ApplicationLauncher._applicationLaunchTimeout = a1;
    swift_endAccess();
  }

  else
  {
    __break(1u);
  }
}

void (*static ApplicationLauncher.applicationLaunchTimeout.modify(uint64_t a1))(uint64_t a1, char a2)
{
  swift_beginAccess();
  *(a1 + 24) = static ApplicationLauncher._applicationLaunchTimeout;
  return static ApplicationLauncher.applicationLaunchTimeout.modify;
}

void static ApplicationLauncher.applicationLaunchTimeout.modify(uint64_t a1, char a2)
{
  v3 = *(a1 + 24);
  v4 = MEMORY[0x1B270FF70](0x50747365546E6553, 0xEC00000065626F72);
  v5 = NSClassFromString(v4);

  if (a2)
  {
    if (v5)
    {
      goto LABEL_7;
    }

    v5 = MEMORY[0x1B270FF70](0x7250747365544358, 0xEB0000000065626FLL);
    v6 = NSClassFromString(v5);

    if (v6)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  if (!v5)
  {
    v7 = MEMORY[0x1B270FF70](0x7250747365544358, 0xEB0000000065626FLL);
    v8 = NSClassFromString(v7);

    if (!v8)
    {
      __break(1u);
      return;
    }
  }

LABEL_7:
  static ApplicationLauncher._applicationLaunchTimeout = v3;

  swift_endAccess();
}

id ApplicationLauncher.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ApplicationLauncher.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ApplicationLauncher(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t ApplicationLauncher.launchApp(for:options:)(uint64_t a1, uint64_t a2)
{
  v3[20] = a2;
  v3[21] = v2;
  v3[19] = a1;
  return MEMORY[0x1EEE6DFA0](ApplicationLauncher.launchApp(for:options:), 0, 0);
}

uint64_t ApplicationLauncher.launchApp(for:options:)()
{
  v1 = [*(v0 + 152) activity];
  v2 = [v1 representativeBundleIdentifier];
  *(v0 + 176) = v2;

  if (v2)
  {
    v9 = (*((*MEMORY[0x1E69E7D40] & **(v0 + 168)) + 0xE8) + **((*MEMORY[0x1E69E7D40] & **(v0 + 168)) + 0xE8));
    v3 = swift_task_alloc();
    *(v0 + 184) = v3;
    *v3 = v0;
    v3[1] = ApplicationLauncher.launchApp(for:options:);
    v4 = *(v0 + 160);
    v5 = *(v0 + 152);

    return v9(v5, v4);
  }

  else
  {
    lazy protocol witness table accessor for type ApplicationLauncher.LaunchError and conformance ApplicationLauncher.LaunchError();
    swift_allocError();
    *v7 = 3;
    swift_willThrow();
    v8 = *(v0 + 8);

    return v8();
  }
}

{
  v1 = [objc_opt_self() serviceWithDefaultShellEndpoint];
  *(v0 + 200) = v1;
  if (v1)
  {
    v2 = v1;
    v3 = *(v0 + 192);
    v4 = *(v0 + 176);
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 144;
    *(v0 + 24) = ApplicationLauncher.launchApp(for:options:);
    v5 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo15BSProcessHandleCs5Error_pGMd, &_sSccySo15BSProcessHandleCs5Error_pGMR);
    *(v0 + 80) = MEMORY[0x1E69E9820];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned BSProcessHandle?, @unowned NSError?) -> () with result type BSProcessHandle;
    *(v0 + 104) = &block_descriptor_5;
    *(v0 + 112) = v5;
    [v2 openApplication:v4 withOptions:v3 completion:v0 + 80];

    return MEMORY[0x1EEE6DEC8](v0 + 16);
  }

  else
  {
    v6 = *(v0 + 192);

    v7 = *(v0 + 8);

    return v7();
  }
}

{
  v1 = *(*v0 + 48);
  *(*v0 + 208) = v1;
  if (v1)
  {
    v2 = ApplicationLauncher.launchApp(for:options:);
  }

  else
  {
    v2 = ApplicationLauncher.launchApp(for:options:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v1 = *(v0 + 192);
  v2 = *(v0 + 200);
  v3 = *(v0 + 176);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t ApplicationLauncher.launchApp(for:options:)(uint64_t a1)
{
  *(*v1 + 192) = a1;

  return MEMORY[0x1EEE6DFA0](ApplicationLauncher.launchApp(for:options:), 0, 0);
}

{
  v2 = v1[25];
  v3 = v1[24];
  v4 = v1[22];
  swift_willThrow();

  v5 = v1[1];

  return v5();
}

uint64_t *@objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned BSProcessHandle?, @unowned NSError?) -> () with result type BSProcessHandle(uint64_t a1, void *a2, void *a3)
{
  result = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    swift_allocError();
    *v6 = a3;
    v7 = a3;

    return swift_continuation_throwingResumeWithError();
  }

  else if (a2)
  {
    **(*(*result + 64) + 40) = a2;
    v8 = a2;

    return swift_continuation_throwingResume();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t protocol witness for ApplicationLaunchProviding.launchApp(for:options:) in conformance ApplicationLauncher(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return ApplicationLauncher.launchApp(for:options:)(a1, a2);
}

uint64_t partial apply for closure #2 in ApplicationLauncher.launchApplication(for:options:completion:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #2 in ApplicationLauncher.launchApplication(for:options:completion:)(a1, v4, v5, v6, v7, v8);
}

uint64_t partial apply for closure #1 in ApplicationLauncher.revokeBackgroundAuthorization(for:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #1 in ApplicationLauncher.revokeBackgroundAuthorization(for:)(a1, v4, v5, v6, v7, v8);
}

uint64_t partial apply for closure #1 in ApplicationLauncher.authorizePiP(for:completion:)(uint64_t a1)
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
  v10[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #1 in ApplicationLauncher.authorizePiP(for:completion:)(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  outlined init with copy of AnyHashable(a1, a2);

  return outlined init with copy of Any(a1 + 40, a2 + 40);
}

void (*specialized Dictionary._Variant.subscript.modify(uint64_t *a1, uint64_t a2))(uint64_t a1)
{
  v4 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x68uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = type metadata accessor for UUID();
  v6[8] = v7;
  v8 = *(v7 - 8);
  v9 = v8;
  v6[9] = v8;
  if (v4)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(*(v8 + 64));
  }

  v11 = v10;
  v6[10] = v10;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  (*(v9 + 16))(v11, a2, v7);
  v6[11] = specialized Dictionary._Variant.asNative.modify(v6);
  v6[12] = specialized _NativeDictionary.subscript.modify(v6 + 4, v11, isUniquelyReferenced_nonNull_native);
  return Dictionary._Variant.subscript.modifyspecialized ;
}

void Dictionary._Variant.subscript.modifyspecialized (uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 88);
  v4 = *(*a1 + 72);
  v3 = *(*a1 + 80);
  v5 = *(*a1 + 64);
  (*(*a1 + 96))();
  (*(v4 + 8))(v3, v5);
  v2(v1, 0);
  free(v3);

  free(v1);
}