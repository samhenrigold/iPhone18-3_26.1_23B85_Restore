void closure #1 in static SiriKitExecutorRunUtils.makeParse(aceParse:peerInfo:endpointInfo:confirmationState:aceParameterMetadata:appSelectionState:)(void *a1@<X8>)
{
  v18[4] = *MEMORY[0x1E69E9840];
  v2 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v18[0] = 0;
  v4 = [v2 propertyListWithData:isa options:0 format:0 error:v18];

  if (!v4)
  {
    v6 = v18[0];
    v7 = _convertNSErrorToError(_:)();

    swift_willThrow();
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static Logger.executor);
    v9 = v7;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v18[0] = v13;
      *v12 = 136315138;
      v14 = v7;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v15 = String.init<A>(describing:)();
      v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, v18);

      *(v12 + 4) = v17;
      _os_log_impl(&dword_1DC659000, v10, v11, "Could not decode directInvocation data: %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      MEMORY[0x1E12A2F50](v13, -1, -1);
      MEMORY[0x1E12A2F50](v12, -1, -1);
    }

    else
    {
    }

    goto LABEL_9;
  }

  v5 = v18[0];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    *a1 = 0;
  }
}

uint64_t EndpointInfoProvider.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void specialized static SiriKitExecutorRunUtils.makeAlternatives(from:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology8NLIntentVSgMd, &_s12SiriOntology8NLIntentVSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v50 - v3;
  v5 = type metadata accessor for NLIntent();
  v6 = *(v5 - 1);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for Parse();
  v9 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v60 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v61 = &v50 - v13;
  v14 = &selRef_setMitigationSource_;
  v15 = [a1 parse];
  if (!v15 || (v16 = v15, v17 = [v15 type], v16, !v17))
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    goto LABEL_8;
  }

  v59 = v9;
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!v20)
  {
LABEL_8:

    static String._unconditionallyBridgeFromObjectiveC(_:)();

    static String._unconditionallyBridgeFromObjectiveC(_:)();
LABEL_9:

    return;
  }

  if (v21 == v18 && v20 == v22)
  {
    goto LABEL_26;
  }

  v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v23 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_12:

LABEL_13:
  v24 = [a1 v14[348]];
  if (v24)
  {
    v25 = v24;
    v26 = [v24 nlv3ParseWithAlternatives];

    if (v26)
    {
      v18 = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SAIntentGroupProtobufMessage, 0x1E69C7878);
      v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v14 = (v20 >> 62);
      if (v20 >> 62)
      {
        while (1)
        {
          a1 = __CocoaSet.count.getter();
          if (!a1)
          {
            break;
          }

LABEL_17:
          if (a1 < 1)
          {
            __break(1u);
LABEL_60:
            __break(1u);
LABEL_61:
            __break(1u);
            return;
          }

          if (v14)
          {
            if (__CocoaSet.count.getter() < 1)
            {
              goto LABEL_61;
            }

            v27 = __CocoaSet.count.getter();
          }

          else
          {
            v27 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (!v27)
            {
              __break(1u);
LABEL_21:
              if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v18 && v20 == v28)
              {
                goto LABEL_26;
              }

              v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v29)
              {
                goto LABEL_12;
              }

              if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v18 && v20 == v30)
              {
LABEL_26:

                goto LABEL_12;
              }

              v49 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if ((v49 & 1) == 0)
              {
                return;
              }

              goto LABEL_13;
            }
          }

          if (v27 < a1)
          {
            goto LABEL_60;
          }

          if ((v20 & 0xC000000000000001) != 0)
          {

            if (a1 != 1)
            {
              v31 = 1;
              do
              {
                v32 = v31 + 1;
                _ArrayBuffer._typeCheckSlowPath(_:)(v31);
                v31 = v32;
              }

              while (a1 != v32);
            }
          }

          else
          {
          }

          if (v14)
          {

            v33 = _CocoaArrayWrapper.subscript.getter();
            v34 = v35;
            v18 = v36;
            a1 = v37 >> 1;
          }

          else
          {
            v33 = v20 & 0xFFFFFFFFFFFFFF8;
            v34 = (v20 & 0xFFFFFFFFFFFFFF8) + 32;
            v18 = 1;
          }

          v50 = v33;
          swift_unknownObjectRetain();

          if (a1 == v18)
          {
LABEL_40:
            swift_unknownObjectRelease_n();
            return;
          }

          v20 = 0;
          v57 = (v6 + 56);
          v58 = v5;
          v54 = (v6 + 32);
          v55 = v8;
          v52 = *MEMORY[0x1E69D0120];
          v51 = (v59 + 104);
          v56 = (v59 + 32);
          v8 = (a1 - v18);
          if (a1 <= v18)
          {
            v38 = v18;
          }

          else
          {
            v38 = a1;
          }

          v14 = (v38 - v18);
          v39 = MEMORY[0x1E69E7CC0];
          v5 = (v34 + 8 * v18);
          v53 = v4;
          while (v14)
          {
            v18 = *v5;
            v40 = [v18 data];
            if (v40)
            {
              v41 = v40;
              static Data._unconditionallyBridgeFromObjectiveC(_:)();

              NLIntent.init(protobufData:)();
              v42 = v58;
              (*v57)(v4, 0, 1, v58);
              v43 = v55;
              v44 = *v54;
              (*v54)(v55, v4, v42);
              v45 = v60;
              v44(v60, v43, v42);
              v46 = v62;
              (*v51)(v45, v52, v62);
              v47 = *v56;
              (*v56)(v61, v45, v46);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v39 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v39 + 2) + 1, 1, v39);
              }

              v6 = *(v39 + 2);
              v48 = *(v39 + 3);
              v18 = v6 + 1;
              v4 = v53;
              if (v6 >= v48 >> 1)
              {
                v39 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v48 > 1), v6 + 1, 1, v39);
              }

              *(v39 + 2) = v18;
              v47(&v39[((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * v6], v61, v62);
            }

            else
            {
            }

            v14 = (v14 - 1);
            ++v5;
            if (!--v8)
            {
              goto LABEL_40;
            }
          }

          __break(1u);
        }
      }

      else
      {
        a1 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (a1)
        {
          goto LABEL_17;
        }
      }

      goto LABEL_9;
    }
  }
}

uint64_t specialized OSSignposter.withIntervalSignpostAsync<A>(_:id:around:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 88) = a6;
  *(v7 + 96) = a7;
  *(v7 + 72) = a4;
  *(v7 + 80) = a5;
  *(v7 + 168) = a3;
  *(v7 + 56) = a1;
  *(v7 + 64) = a2;
  v8 = type metadata accessor for OSSignpostID();
  *(v7 + 104) = v8;
  *(v7 + 112) = *(v8 - 8);
  *(v7 + 120) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](specialized OSSignposter.withIntervalSignpostAsync<A>(_:id:around:), 0, 0);
}

uint64_t specialized OSSignposter.withIntervalSignpostAsync<A>(_:id:around:)(uint64_t a1)
{
  v2 = OSSignposter.logHandle.getter();
  v3 = static os_signpost_type_t.begin.getter();
  v4 = OS_os_log.signpostsEnabled.getter();
  if ((v4 & 1) == 0)
  {
    goto LABEL_10;
  }

  v7 = *(v1 + 56);
  if (*(v1 + 168))
  {
LABEL_5:
    if (v7 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v7 & 0xFFFFF800) == 0xD800)
      {
LABEL_17:
        __break(1u);
        return MEMORY[0x1EEE6DFA0](v4, v5, v6);
      }

      if (v7 >> 16 <= 0x10)
      {
        v7 = (v1 + 48);
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

  if (!v7)
  {
    __break(1u);
    goto LABEL_5;
  }

LABEL_9:
  v8 = swift_slowAlloc();
  *v8 = 0;
  v9 = OSSignpostID.rawValue.getter();
  _os_signpost_emit_with_name_impl(&dword_1DC659000, v2, v3, v9, v7, "", v8, 2u);
  MEMORY[0x1E12A2F50](v8, -1, -1);
LABEL_10:

  (*(*(v1 + 112) + 16))(*(v1 + 120), *(v1 + 72), *(v1 + 104));
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  *(v1 + 128) = OSSignpostIntervalState.init(id:isOpen:)();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v10 = static MessageBusActor.shared;
  *(v1 + 136) = static MessageBusActor.shared;

  v4 = specialized OSSignposter.withIntervalSignpostAsync<A>(_:id:around:);
  v5 = v10;
  v6 = 0;

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t specialized OSSignposter.withIntervalSignpostAsync<A>(_:id:around:)()
{
  v1 = swift_allocObject();
  *(v0 + 144) = v1;
  *(v1 + 16) = *(v0 + 88);
  swift_unknownObjectRetain();
  v2 = swift_task_alloc();
  *(v0 + 152) = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo15AFSpeechPackageCSgMd, &_sSo15AFSpeechPackageCSgMR);
  *v2 = v0;
  v2[1] = specialized OSSignposter.withIntervalSignpostAsync<A>(_:id:around:);
  v4.n128_u64[0] = 0x3FB999999999999ALL;

  return MEMORY[0x1EEE40F70](v0 + 40, &async function pointer to partial apply for closure #1 in closure #2 in ConversationService.bridge(didReceiveRSKE:sessionConfiguration:withRequestContextData:withRecognizedUser:withUserMeetingSessionThreshold:withRemoteRequestWasMadeInSession:from:), v1, v3, v4);
}

{
  v2 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v3 = *(v2 + 136);
    v4 = specialized OSSignposter.withIntervalSignpostAsync<A>(_:id:around:);
  }

  else
  {
    v5 = *(v2 + 136);

    v4 = specialized OSSignposter.withIntervalSignpostAsync<A>(_:id:around:);
    v3 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

{

  return MEMORY[0x1EEE6DFA0](specialized OSSignposter.withIntervalSignpostAsync<A>(_:id:around:), 0, 0);
}

{
  $defer #1 <A>() in OSSignposter.withIntervalSignpostAsync<A>(_:id:around:)(*(v0 + 80), *(v0 + 56), *(v0 + 64), *(v0 + 168));

  v1 = *(v0 + 40);

  v2 = *(v0 + 8);

  return v2(v1);
}

{

  return MEMORY[0x1EEE6DFA0](specialized OSSignposter.withIntervalSignpostAsync<A>(_:id:around:), 0, 0);
}

{
  $defer #1 <A>() in OSSignposter.withIntervalSignpostAsync<A>(_:id:around:)(*(v0 + 80), *(v0 + 56), *(v0 + 64), *(v0 + 168));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DC6D1108()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t partial apply for closure #1 in closure #2 in ConversationService.bridge(didReceiveRSKE:sessionConfiguration:withRequestContextData:withRecognizedUser:withUserMeetingSessionThreshold:withRemoteRequestWasMadeInSession:from:)(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return closure #1 in closure #2 in ConversationService.bridge(didReceiveRSKE:sessionConfiguration:withRequestContextData:withRecognizedUser:withUserMeetingSessionThreshold:withRemoteRequestWasMadeInSession:from:)(a1, v5, v4);
}

uint64_t closure #1 in closure #2 in ConversationService.bridge(didReceiveRSKE:sessionConfiguration:withRequestContextData:withRecognizedUser:withUserMeetingSessionThreshold:withRemoteRequestWasMadeInSession:from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v3[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #2 in ConversationService.bridge(didReceiveRSKE:sessionConfiguration:withRequestContextData:withRecognizedUser:withUserMeetingSessionThreshold:withRemoteRequestWasMadeInSession:from:), 0, 0);
}

uint64_t closure #1 in closure #2 in ConversationService.bridge(didReceiveRSKE:sessionConfiguration:withRequestContextData:withRecognizedUser:withUserMeetingSessionThreshold:withRemoteRequestWasMadeInSession:from:)()
{
  v1 = *(v0 + 64);
  v2 = type metadata accessor for TaskPriority();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = one-time initialization token for shared;
  swift_unknownObjectRetain();
  if (v3 != -1)
  {
    swift_once();
  }

  v4 = *(v0 + 64);
  v14 = *(v0 + 48);
  swift_beginAccess();
  v5 = static MessageBusActor.shared;
  v7 = _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MessageBusActor and conformance MessageBusActor, v6, type metadata accessor for MessageBusActor, &protocol conformance descriptor for MessageBusActor);
  v8 = swift_allocObject();
  *(v8 + 16) = v5;
  *(v8 + 24) = v7;
  *(v8 + 32) = v14;

  v9 = _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCSo15AFSpeechPackageCSg_Tt2g5(0, 0, v4, &async function pointer to partial apply for closure #1 in closure #1 in closure #2 in ConversationService.bridge(didReceiveRSKE:sessionConfiguration:withRequestContextData:withRecognizedUser:withUserMeetingSessionThreshold:withRemoteRequestWasMadeInSession:from:), v8);
  *(v0 + 72) = v9;
  v10 = swift_task_alloc();
  *(v0 + 80) = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo15AFSpeechPackageCSgMd, &_sSo15AFSpeechPackageCSgMR);
  *v10 = v0;
  v10[1] = closure #1 in closure #2 in ConversationService.bridge(didReceiveRSKE:sessionConfiguration:withRequestContextData:withRecognizedUser:withUserMeetingSessionThreshold:withRemoteRequestWasMadeInSession:from:);
  v12 = *(v0 + 40);

  return MEMORY[0x1EEE6DA40](v12, v9, v11);
}

{

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #2 in ConversationService.bridge(didReceiveRSKE:sessionConfiguration:withRequestContextData:withRecognizedUser:withUserMeetingSessionThreshold:withRemoteRequestWasMadeInSession:from:), 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRSo15AFSpeechPackageCSg_TG5TA(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRSo15AFSpeechPackageCSg_TG5(a1, v4);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRSo15AFSpeechPackageCSg_TG5(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 32) = v3;
  *v3 = v2;
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRSo15AFSpeechPackageCSg_TG5TQ0_;

  return v5(v2 + 16);
}

uint64_t partial apply for closure #1 in closure #1 in closure #2 in ConversationService.bridge(didReceiveRSKE:sessionConfiguration:withRequestContextData:withRecognizedUser:withUserMeetingSessionThreshold:withRemoteRequestWasMadeInSession:from:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in closure #1 in closure #2 in ConversationService.bridge(didReceiveRSKE:sessionConfiguration:withRequestContextData:withRecognizedUser:withUserMeetingSessionThreshold:withRemoteRequestWasMadeInSession:from:)(a1, v4, v5, v7, v6);
}

uint64_t closure #1 in closure #1 in closure #2 in ConversationService.bridge(didReceiveRSKE:sessionConfiguration:withRequestContextData:withRecognizedUser:withUserMeetingSessionThreshold:withRemoteRequestWasMadeInSession:from:)(uint64_t a1, uint64_t a2)
{
  v3 = static MessageBusActor.shared;
  *(v2 + 72) = static MessageBusActor.shared;
  v4 = _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MessageBusActor and conformance MessageBusActor, a2, type metadata accessor for MessageBusActor, &protocol conformance descriptor for MessageBusActor);
  v5 = swift_task_alloc();
  *(v2 + 80) = v5;
  *(v5 + 16) = *(v2 + 48);

  v6 = swift_task_alloc();
  *(v2 + 88) = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo15AFSpeechPackageCSgMd, &_sSo15AFSpeechPackageCSgMR);
  *v6 = v2;
  v6[1] = closure #1 in closure #1 in closure #2 in ConversationService.bridge(didReceiveRSKE:sessionConfiguration:withRequestContextData:withRecognizedUser:withUserMeetingSessionThreshold:withRemoteRequestWasMadeInSession:from:);
  v8 = *(v2 + 40);

  return MEMORY[0x1EEE6DDE0](v8, v3, v4, 0xD00000000000009DLL, 0x80000001DCA80CA0, partial apply for closure #1 in closure #1 in closure #1 in closure #2 in ConversationService.bridge(didReceiveRSKE:sessionConfiguration:withRequestContextData:withRecognizedUser:withUserMeetingSessionThreshold:withRemoteRequestWasMadeInSession:from:), v5, v7);
}

uint64_t closure #1 in closure #1 in closure #2 in ConversationService.bridge(didReceiveRSKE:sessionConfiguration:withRequestContextData:withRecognizedUser:withUserMeetingSessionThreshold:withRemoteRequestWasMadeInSession:from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v6 = static MessageBusActor.shared;
  v5[8] = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in closure #2 in ConversationService.bridge(didReceiveRSKE:sessionConfiguration:withRequestContextData:withRecognizedUser:withUserMeetingSessionThreshold:withRemoteRequestWasMadeInSession:from:), v6, 0);
}

uint64_t closure #1 in closure #1 in closure #1 in closure #2 in ConversationService.bridge(didReceiveRSKE:sessionConfiguration:withRequestContextData:withRecognizedUser:withUserMeetingSessionThreshold:withRemoteRequestWasMadeInSession:from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo15AFSpeechPackageCSgs5NeverOGMd, &_sScCySo15AFSpeechPackageCSgs5NeverOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  ObjectType = swift_getObjectType();
  (*(v6 + 16))(v8, a1, v5);
  v10 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v11 = swift_allocObject();
  (*(v6 + 32))(v11 + v10, v8, v5);
  (*(a3 + 128))(partial apply for closure #1 in closure #1 in closure #1 in closure #1 in closure #2 in ConversationService.bridge(didReceiveRSKE:sessionConfiguration:withRequestContextData:withRecognizedUser:withUserMeetingSessionThreshold:withRemoteRequestWasMadeInSession:from:), v11, ObjectType, a3);
}

uint64_t RunSiriKitExecutorProcessorExecutionDelegate.fetchSpeechInfo(reply:)(uint64_t (*a1)(void), uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(*Strong + 616))(a1, a2);
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
      _os_log_impl(&dword_1DC659000, v7, v8, "RunSiriKitExecutorProcessor already released, ignoring fetchSpeechInfo", v9, 2u);
      MEMORY[0x1E12A2F50](v9, -1, -1);
    }

    return a1(0);
  }
}

void RunSiriKitExecutorProcessor.fetchSpeechInfo(reply:)(void (*a1)(void))
{
  v3 = [*(v1 + 24) speechInfo];
  a1();
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in closure #2 in ConversationService.bridge(didReceiveRSKE:sessionConfiguration:withRequestContextData:withRecognizedUser:withUserMeetingSessionThreshold:withRemoteRequestWasMadeInSession:from:)(uint64_t a1)
{
  if (a1)
  {
    AFSpeechInfo.toAFSpeechPackage()();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo15AFSpeechPackageCSgs5NeverOGMd, &_sScCySo15AFSpeechPackageCSgs5NeverOGMR);
  return CheckedContinuation.resume(returning:)();
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in closure #1 in closure #2 in ConversationService.bridge(didReceiveRSKE:sessionConfiguration:withRequestContextData:withRecognizedUser:withUserMeetingSessionThreshold:withRemoteRequestWasMadeInSession:from:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo15AFSpeechPackageCSgs5NeverOGMd, &_sScCySo15AFSpeechPackageCSgs5NeverOGMR);

  return closure #1 in closure #1 in closure #1 in closure #1 in closure #2 in ConversationService.bridge(didReceiveRSKE:sessionConfiguration:withRequestContextData:withRecognizedUser:withUserMeetingSessionThreshold:withRemoteRequestWasMadeInSession:from:)(a1);
}

uint64_t closure #1 in closure #1 in closure #2 in ConversationService.bridge(didReceiveRSKE:sessionConfiguration:withRequestContextData:withRecognizedUser:withUserMeetingSessionThreshold:withRemoteRequestWasMadeInSession:from:)()
{
  v1 = *(*v0 + 64);

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in closure #2 in ConversationService.bridge(didReceiveRSKE:sessionConfiguration:withRequestContextData:withRecognizedUser:withUserMeetingSessionThreshold:withRemoteRequestWasMadeInSession:from:), v1, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTR14SiriKitRuntime20LinkExpansionContextV07SessionI0C_TG5TQ0_()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v5 = *v0;

  *v2 = *(v1 + 16);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t specialized ConversationService.bridge(didReceiveRSKE:sessionConfiguration:withRequestContextData:withRecognizedUser:withUserMeetingSessionThreshold:withRemoteRequestWasMadeInSession:from:)(uint64_t a1)
{
  v4 = *(*v2 + 488);
  v5 = *v2;
  v5[89] = v1;

  v6 = (v4 + 8);
  if (v1)
  {
    v7 = v5[76];
    v8 = v5[62];
    v9 = v5[60];
    swift_unknownObjectRelease();
    (*v6)(v8, v9);

    return MEMORY[0x1EEE6DFA0](specialized ConversationService.bridge(didReceiveRSKE:sessionConfiguration:withRequestContextData:withRecognizedUser:withUserMeetingSessionThreshold:withRemoteRequestWasMadeInSession:from:), v7, 0);
  }

  else
  {
    v10 = v5[62];
    v11 = v5[60];
    swift_unknownObjectRelease();
    (*v6)(v10, v11);
    v5[90] = a1;
    v12 = v5[24];
    v13 = swift_task_alloc();
    v5[91] = v13;
    *v13 = v5;
    v13[1] = specialized ConversationService.bridge(didReceiveRSKE:sessionConfiguration:withRequestContextData:withRecognizedUser:withUserMeetingSessionThreshold:withRemoteRequestWasMadeInSession:from:);
    v14 = v5[83];
    v15 = v5[82];
    v16 = v5[80];
    v17 = v5[79];
    v18 = v5[75];
    v19 = v5[25];
    v20 = v5[81];

    return ConversationService.setupNewTurn(executionRequestId:rootRequestId:sessionId:sessionConfiguration:contextData:runSiriKitExecutor:scopedRRData:bridge:)(v20, v15, v17, v16, v18, v19, v14, v12);
  }
}

{
  v3 = *v2;
  v3[92] = a1;
  v3[93] = v1;

  if (v1)
  {
    v4 = v3[76];

    v5 = specialized ConversationService.bridge(didReceiveRSKE:sessionConfiguration:withRequestContextData:withRecognizedUser:withUserMeetingSessionThreshold:withRemoteRequestWasMadeInSession:from:);
    v6 = v4;
  }

  else
  {
    v7 = v3[76];

    v5 = specialized ConversationService.bridge(didReceiveRSKE:sessionConfiguration:withRequestContextData:withRecognizedUser:withUserMeetingSessionThreshold:withRemoteRequestWasMadeInSession:from:);
    v6 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v5, v6, 0);
}

id specialized ProxiedRequestContext.__allocating_init(rske:executionRequestId:resultCandidateId:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v93 = a4;
  v94 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities14BargeInContextVSgMd, &_s13SiriUtilities14BargeInContextVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v91 = &v72 - v9;
  v10 = type metadata accessor for InputOrigin();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for InteractionType();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = [a1 aceId];
  if (v19)
  {
    v20 = v19;
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v87 = v22;
    v88 = v21;
  }

  else
  {
    v87 = 0;
    v88 = 0;
  }

  v23 = [a1 refId];
  if (v23)
  {
    v24 = v23;
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v85 = v26;
    v86 = v25;
  }

  else
  {
    v85 = 0;
    v86 = 0;
  }

  v73 = a2;
  v27 = [a1 interactionType];
  v89 = v14;
  v90 = v15;
  if (v27)
  {
    v28 = v27;
    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v30;

    static SiriKitExecutorRunUtils.interactionTypeFrom(aceValue:)(v29, v31, v18);
  }

  else
  {
    (*(v15 + 104))(v18, *MEMORY[0x1E69D35A8], v14);
  }

  v32 = [a1 inputOrigin];
  if (v32)
  {
    v33 = v32;
    v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v36 = v35;

    static SiriKitExecutorRunUtils.inputOriginFrom(aceValue:)(v34, v36, v13);
  }

  else
  {
    (*(v11 + 104))(v13, *MEMORY[0x1E69D34D0], v10);
  }

  v37 = v18;
  v84 = [a1 identifiedUserMeCard];
  v38 = [a1 sessionHandOffContinuityID];
  v92 = v10;
  v39 = v13;
  if (v38)
  {
    v40 = v38;
    v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v82 = v42;
    v83 = v41;
  }

  else
  {
    v82 = 0;
    v83 = 0;
  }

  v43 = v11;
  v81 = [a1 multiUser];
  v80 = [a1 userSessionState];
  v79 = [a1 requiresConditionalMultiUserGrounding];
  v78 = [a1 eyesFree];
  v77 = [a1 voiceTriggerEnabled];
  v76 = [a1 textToSpeechEnabled];
  v75 = [a1 directAction];
  v44 = [a1 siriKitMetrics];
  if (v44 && (v45 = v44, v46 = [v44 interactionId], v45, v46))
  {
    v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v49 = v48;
  }

  else
  {
    v47 = v73;
    v49 = a3;
  }

  v50 = v91;
  static SiriKitExecutorRunUtils.bargeInContextFrom(command:)(a1, v91);
  v73 = [a1 remoteExecution];
  v51 = type metadata accessor for ProxiedRequestContext(0);
  v52 = objc_allocWithZone(v51);
  v53 = &v52[OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_aceId];
  v54 = v87;
  *v53 = v88;
  v53[1] = v54;
  v55 = &v52[OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_refId];
  v56 = v85;
  *v55 = v86;
  v55[1] = v56;
  v57 = v90;
  v58 = *(v90 + 16);
  v74 = v37;
  v59 = v37;
  v60 = v89;
  v58(&v52[OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_interactionType], v59, v89);
  v61 = v39;
  v62 = v39;
  v63 = v92;
  (*(v43 + 16))(&v52[OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_inputOrigin], v62, v92);
  v64 = v83;
  *&v52[OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_aceMeCard] = v84;
  v65 = &v52[OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_sessionHandoffContinuityId];
  v66 = v82;
  *v65 = v64;
  v65[1] = v66;
  v52[OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_isMultiUserEnabled] = v81;
  *&v52[OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_userSessionState] = v80;
  LOBYTE(v66) = v78;
  v52[OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_requiresConditionalMultiUserGrounding] = v79;
  v52[OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_isEyesFree] = v66;
  LOBYTE(v66) = v76;
  v52[OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_isVoiceTriggerEnabled] = v77;
  v52[OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_isTextToSpeechEnabled] = v66;
  v52[OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_isDirectAction] = v75;
  v67 = &v52[OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_interactionId];
  *v67 = v47;
  v67[1] = v49;
  outlined init with copy of ReferenceResolutionClientProtocol?(v50, &v52[OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_bargeInContext], &_s13SiriUtilities14BargeInContextVSgMd, &_s13SiriUtilities14BargeInContextVSgMR);
  *&v52[OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_aceRemoteExecution] = v73;
  v68 = &v52[OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_resultCandidateId];
  v69 = v94;
  *v68 = v93;
  v68[1] = v69;
  v95.receiver = v52;
  v95.super_class = v51;
  v70 = objc_msgSendSuper2(&v95, sel_init);
  outlined destroy of ReferenceResolutionClientProtocol?(v50, &_s13SiriUtilities14BargeInContextVSgMd, &_s13SiriUtilities14BargeInContextVSgMR);
  (*(v43 + 8))(v61, v63);
  (*(v57 + 8))(v74, v60);
  return v70;
}

uint64_t static SiriKitExecutorRunUtils.interactionTypeFrom(aceValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities15InteractionTypeOSgMd, &_s13SiriUtilities15InteractionTypeOSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v15 - v7;

  InteractionType.init(aceValue:)();
  v9 = type metadata accessor for InteractionType();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v8, 1, v9) != 1)
  {
    return (*(v10 + 32))(a3, v8, v9);
  }

  outlined destroy of ReferenceResolutionClientProtocol?(v8, &_s13SiriUtilities15InteractionTypeOSgMd, &_s13SiriUtilities15InteractionTypeOSgMR);
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v11 = static Log.executor;
  v12 = static os_log_type_t.error.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1DCA66060;
  *(v13 + 56) = MEMORY[0x1E69E6158];
  *(v13 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v13 + 32) = a1;
  *(v13 + 40) = a2;

  os_log(_:dso:log:type:_:)("Unexpected unknown interaction type. Will default to .displayDriven: '%@'", 73, 2, &dword_1DC659000, v11, v12, v13);

  return (*(v10 + 104))(a3, *MEMORY[0x1E69D35B0], v9);
}

uint64_t static SiriKitExecutorRunUtils.bargeInContextFrom(command:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [a1 dictionary];
  if (v3 && (v8[0] = v3, v4 = v3, closure #1 in static SiriKitExecutorRunUtils.bargeInContextFrom(command:)(v8, &v9), v4, v9))
  {
    closure #2 in static SiriKitExecutorRunUtils.bargeInContextFrom(command:)(&v9, a2);
  }

  else
  {
    v6 = type metadata accessor for BargeInContext();
    v7 = *(*(v6 - 8) + 56);

    return v7(a2, 1, 1, v6);
  }
}

uint64_t closure #1 in static SiriKitExecutorRunUtils.bargeInContextFrom(command:)@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  strcpy(&v6, "bargeInState");
  BYTE13(v6) = 0;
  HIWORD(v6) = -5120;
  v4 = [v3 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v4)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (!*(&v7 + 1))
  {
    result = outlined destroy of ReferenceResolutionClientProtocol?(v8, &_sypSgMd, &_sypSgMR);
    goto LABEL_8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_8:
    *a2 = 0;
  }

  return result;
}

Swift::Void __swiftcall ProxiedRequestContext.encode(with:)(NSCoder with)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v71 = &v67 - v5;
  v73 = type metadata accessor for DateInterval();
  v6 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v67 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for BargeInMode();
  v69 = *(v8 - 8);
  v70 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v68 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities14BargeInContextVSgMd, &_s13SiriUtilities14BargeInContextVSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v67 - v11;
  v74 = type metadata accessor for BargeInContext();
  v13 = *(v74 - 8);
  v14.n128_f64[0] = MEMORY[0x1EEE9AC00](v74);
  v16 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_aceId + 8))
  {
    v17 = MEMORY[0x1E12A1410](*(v1 + OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_aceId), v14.n128_f64[0]);
    v18 = MEMORY[0x1E12A1410](0x6449656361, 0xE500000000000000);
    [(objc_class *)with.super.isa encodeObject:v17 forKey:v18];
  }

  if (*(v2 + OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_refId + 8))
  {
    v19 = MEMORY[0x1E12A1410](*(v2 + OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_refId), v14);
    v20 = MEMORY[0x1E12A1410](0x6449666572, 0xE500000000000000);
    [(objc_class *)with.super.isa encodeObject:v19 forKey:v20];
  }

  v21 = MEMORY[0x1E129E0D0](v14);
  v22 = MEMORY[0x1E12A1410](v21);

  v23 = MEMORY[0x1E12A1410](0x7463617265746E69, 0xEF657079546E6F69);
  [(objc_class *)with.super.isa encodeObject:v22 forKey:v23];

  v24 = InputOrigin.rawValue.getter();
  v25 = MEMORY[0x1E12A1410](v24);

  v26 = MEMORY[0x1E12A1410](0x69724F7475706E69, 0xEB000000006E6967);
  [(objc_class *)with.super.isa encodeObject:v25 forKey:v26];

  v27 = *(v2 + OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_aceMeCard);
  if (v27)
  {
    v28 = v27;
    v29 = MEMORY[0x1E12A1410](0x726143654D656361, 0xE900000000000064);
    [(objc_class *)with.super.isa encodeObject:v28 forKey:v29];
  }

  v72 = v6;
  if (*(v2 + OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_sessionHandoffContinuityId + 8))
  {
    v30 = MEMORY[0x1E12A1410](*(v2 + OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_sessionHandoffContinuityId));
    v31 = MEMORY[0x1E12A1410](0xD00000000000001ALL, 0x80000001DCA7B340);
    [(objc_class *)with.super.isa encodeObject:v30 forKey:v31];
  }

  v32 = *(v2 + OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_isMultiUserEnabled);
  v33 = MEMORY[0x1E12A1410](0xD000000000000012, 0x80000001DCA7B360);
  [(objc_class *)with.super.isa encodeBool:v32 forKey:v33];

  v34 = *(v2 + OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_userSessionState);
  if (v34)
  {
    v35 = v34;
    v36 = MEMORY[0x1E12A1410](0xD000000000000010, 0x80000001DCA7B380);
    [(objc_class *)with.super.isa encodeObject:v35 forKey:v36];
  }

  v37 = *(v2 + OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_requiresConditionalMultiUserGrounding);
  v38 = MEMORY[0x1E12A1410](0xD000000000000025, 0x80000001DCA7B3A0);
  [(objc_class *)with.super.isa encodeBool:v37 forKey:v38];

  v39 = *(v2 + OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_isEyesFree);
  v40 = MEMORY[0x1E12A1410](0x7246736579457369, 0xEA00000000006565);
  [(objc_class *)with.super.isa encodeBool:v39 forKey:v40];

  v41 = *(v2 + OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_isVoiceTriggerEnabled);
  v42 = MEMORY[0x1E12A1410](0xD000000000000015, 0x80000001DCA7B3D0);
  [(objc_class *)with.super.isa encodeBool:v41 forKey:v42];

  v43 = *(v2 + OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_isTextToSpeechEnabled);
  v44 = MEMORY[0x1E12A1410](0xD000000000000015, 0x80000001DCA7B3F0);
  [(objc_class *)with.super.isa encodeBool:v43 forKey:v44];

  v45 = *(v2 + OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_isDirectAction);
  v46 = MEMORY[0x1E12A1410](0x7463657269447369, 0xEE006E6F69746341);
  [(objc_class *)with.super.isa encodeBool:v45 forKey:v46];

  v47 = MEMORY[0x1E12A1410](*(v2 + OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_interactionId), *(v2 + OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_interactionId + 8));
  v48 = MEMORY[0x1E12A1410](0x7463617265746E69, 0xED000064496E6F69);
  [(objc_class *)with.super.isa encodeObject:v47 forKey:v48];

  outlined init with copy of ReferenceResolutionClientProtocol?(v2 + OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_bargeInContext, v12, &_s13SiriUtilities14BargeInContextVSgMd, &_s13SiriUtilities14BargeInContextVSgMR);
  v49 = v13;
  v50 = *(v13 + 48);
  v51 = v74;
  if (v50(v12, 1, v74) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v12, &_s13SiriUtilities14BargeInContextVSgMd, &_s13SiriUtilities14BargeInContextVSgMR);
  }

  else
  {
    (*(v49 + 32))(v16, v12, v51);
    v52 = v68;
    v53 = v49;
    BargeInContext.mode.getter();
    v54 = BargeInMode.rawValue.getter();
    (*(v69 + 8))(v52, v70);
    v55 = MEMORY[0x1E12A1410](0x4D6E496567726162, 0xEB0000000065646FLL);
    [(objc_class *)with.super.isa encodeInteger:v54 forKey:v55];

    v56 = v71;
    BargeInContext.approximatePreviousTTSInterval.getter();
    v58 = v72;
    v57 = v73;
    if ((*(v72 + 48))(v56, 1, v73) == 1)
    {
      (*(v53 + 8))(v16, v51);
      outlined destroy of ReferenceResolutionClientProtocol?(v56, &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
    }

    else
    {
      v59 = v67;
      (*(v58 + 32))(v67, v56, v57);
      isa = DateInterval._bridgeToObjectiveC()().super.isa;
      v61 = MEMORY[0x1E12A1410](0xD000000000000012, 0x80000001DCA7B430);
      [(objc_class *)with.super.isa encodeObject:isa forKey:v61];

      (*(v58 + 8))(v59, v57);
      (*(v53 + 8))(v16, v51);
    }
  }

  v62 = *(v2 + OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_aceRemoteExecution);
  if (v62)
  {
    v63 = v62;
    v64 = MEMORY[0x1E12A1410](0xD000000000000012, 0x80000001DCA7B450);
    [(objc_class *)with.super.isa encodeObject:v63 forKey:v64];
  }

  v65 = MEMORY[0x1E12A1410](*(v2 + OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_resultCandidateId), *(v2 + OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_resultCandidateId + 8));
  v66 = MEMORY[0x1E12A1410](0xD000000000000011, 0x80000001DCA7AB40);
  [(objc_class *)with.super.isa encodeObject:v65 forKey:v66];
}

id ProxiedRequestContext.init(coder:)(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v102 = &v100 - v5;
  v6 = type metadata accessor for BargeInMode();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v100 = &v100 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities14BargeInContextVSgMd, &_s13SiriUtilities14BargeInContextVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v101 = &v100 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v100 - v11;
  v13 = type metadata accessor for InputOrigin();
  v104 = *(v13 - 8);
  v105 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v103 = &v100 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities15InteractionTypeOSgMd, &_s13SiriUtilities15InteractionTypeOSgMR);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v100 - v16;
  v18 = type metadata accessor for InteractionType();
  v109 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v100 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSString, 0x1E696AEC0);
  v21 = a1;
  v22 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v22)
  {
    v23 = v22;
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;
  }

  else
  {
    v24 = 0;
    v26 = 0;
  }

  v27 = &v2[OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_aceId];
  *v27 = v24;
  v27[1] = v26;
  v107 = v27;
  v28 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v28)
  {
    v29 = v28;
    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v31;
  }

  else
  {
    v30 = 0;
    v32 = 0;
  }

  v33 = &v2[OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_refId];
  *v33 = v30;
  v33[1] = v32;
  v106 = v33;
  v34 = NSCoder.decodeObject<A>(of:forKey:)();
  if (!v34)
  {
LABEL_10:
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    __swift_project_value_buffer(v38, static Logger.executor);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();
    v37 = v18;
    if (!os_log_type_enabled(v39, v40))
    {
      v42 = 0;
      v43 = 0;
      v44 = 0;
      goto LABEL_23;
    }

    v41 = swift_slowAlloc();
    *v41 = 0;
    _os_log_impl(&dword_1DC659000, v39, v40, "Unknown interactionType when decoding ProxiedRequestContext, returning nil", v41, 2u);
    v42 = 0;
    v43 = 0;
    v44 = 0;
    goto LABEL_22;
  }

  v35 = v34;
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  InteractionType.init(rawValue:)();
  v36 = v109;
  v37 = v18;
  if ((*(v109 + 48))(v17, 1, v18) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v17, &_s13SiriUtilities15InteractionTypeOSgMd, &_s13SiriUtilities15InteractionTypeOSgMR);
    goto LABEL_10;
  }

  v45 = *(v36 + 32);
  v45(v20, v17, v18);
  v45(&v2[OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_interactionType], v20, v18);
  v46 = NSCoder.decodeObject<A>(of:forKey:)();
  if (!v46)
  {
    goto LABEL_18;
  }

  v47 = v46;
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  InputOrigin.init(rawValue:)();
  v48 = v104;
  v49 = v105;
  if ((*(v104 + 48))(v12, 1, v105) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v12, &_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
LABEL_18:
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v50 = type metadata accessor for Logger();
    __swift_project_value_buffer(v50, static Logger.executor);
    v39 = Logger.logObject.getter();
    v51 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v39, v51))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_1DC659000, v39, v51, "Unknown input origin when decoding ProxiedRequestContext, returning nil", v41, 2u);
      v43 = 0;
      v44 = 0;
      v42 = 1;
LABEL_22:
      MEMORY[0x1E12A2F50](v41, -1, -1);
      goto LABEL_23;
    }

    v43 = 0;
    v44 = 0;
    v42 = 1;
    goto LABEL_23;
  }

  v53 = *(v48 + 32);
  v54 = v103;
  v53(v103, v12, v49);
  v53(&v2[OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_inputOrigin], v54, v49);
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SAPerson, 0x1E69C7930);
  *&v2[OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_aceMeCard] = NSCoder.decodeObject<A>(of:forKey:)();
  v55 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v55)
  {
    v56 = v55;
    v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v59 = v58;
  }

  else
  {
    v57 = 0;
    v59 = 0;
  }

  v60 = &v2[OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_sessionHandoffContinuityId];
  *v60 = v57;
  v60[1] = v59;
  v61 = MEMORY[0x1E12A1410](0xD000000000000012, 0x80000001DCA7B360);
  v62 = [v21 decodeBoolForKey_];

  v2[OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_isMultiUserEnabled] = v62;
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SAUserSessionState, 0x1E69C7C08);
  *&v2[OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_userSessionState] = NSCoder.decodeObject<A>(of:forKey:)();
  v63 = MEMORY[0x1E12A1410](0xD000000000000025, 0x80000001DCA7B3A0);
  v64 = [v21 decodeBoolForKey_];

  v2[OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_requiresConditionalMultiUserGrounding] = v64;
  v65 = MEMORY[0x1E12A1410](0x7246736579457369, 0xEA00000000006565);
  v66 = [v21 decodeBoolForKey_];

  v2[OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_isEyesFree] = v66;
  v67 = MEMORY[0x1E12A1410](0xD000000000000015, 0x80000001DCA7B3D0);
  v68 = [v21 decodeBoolForKey_];

  v2[OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_isVoiceTriggerEnabled] = v68;
  v69 = MEMORY[0x1E12A1410](0xD000000000000015, 0x80000001DCA7B3F0);
  v70 = [v21 decodeBoolForKey_];

  v2[OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_isTextToSpeechEnabled] = v70;
  v71 = MEMORY[0x1E12A1410](0x7463657269447369, 0xEE006E6F69746341);
  v72 = [v21 decodeBoolForKey_];

  v2[OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_isDirectAction] = v72;
  v73 = NSCoder.decodeObject<A>(of:forKey:)();
  if (!v73)
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v84 = type metadata accessor for Logger();
    __swift_project_value_buffer(v84, static Logger.executor);
    v39 = Logger.logObject.getter();
    v85 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v39, v85))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_1DC659000, v39, v85, "Unknown interactionId when decoding ProxiedRequestContext, returning nil", v41, 2u);
      v44 = 0;
      v42 = 1;
      v43 = 1;
      goto LABEL_22;
    }

    v44 = 0;
    v42 = 1;
    v43 = 1;
LABEL_23:

    if (v42)
    {
      (*(v109 + 8))(&v2[OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_interactionType], v37);
      if (!v43)
      {
LABEL_25:
        if (!v44)
        {
LABEL_27:
          swift_deallocPartialClassInstance();
          return 0;
        }

LABEL_26:

        outlined destroy of ReferenceResolutionClientProtocol?(&v2[OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_bargeInContext], &_s13SiriUtilities14BargeInContextVSgMd, &_s13SiriUtilities14BargeInContextVSgMR);

        goto LABEL_27;
      }
    }

    else if (!v43)
    {
      goto LABEL_25;
    }

    (*(v104 + 8))(&v2[OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_inputOrigin], v105);

    if (!v44)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  v74 = v73;
  v75 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v77 = v76;

  v78 = &v2[OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_interactionId];
  *v78 = v75;
  v78[1] = v77;
  v79 = MEMORY[0x1E12A1410](0x4D6E496567726162, 0xEB0000000065646FLL);
  LODWORD(v75) = [v21 containsValueForKey_];

  if (v75)
  {
    v80 = MEMORY[0x1E12A1410](0x4D6E496567726162, 0xEB0000000065646FLL);
    [v21 decodeIntegerForKey_];

    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSDateInterval, 0x1E696AB80);
    v81 = NSCoder.decodeObject<A>(of:forKey:)();
    BargeInMode.init(rawValue:)();
    if (v81)
    {
      v82 = v102;
      static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();
      v83 = 0;
    }

    else
    {
      v83 = 1;
      v82 = v102;
    }

    v88 = type metadata accessor for DateInterval();
    (*(*(v88 - 8) + 56))(v82, v83, 1, v88);
    v89 = v101;
    BargeInContext.init(mode:approximatePreviousTTSInterval:)();

    v90 = type metadata accessor for BargeInContext();
    (*(*(v90 - 8) + 56))(v89, 0, 1, v90);
    outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v89, &v2[OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_bargeInContext], &_s13SiriUtilities14BargeInContextVSgMd, &_s13SiriUtilities14BargeInContextVSgMR);
  }

  else
  {
    v86 = OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_bargeInContext;
    v87 = type metadata accessor for BargeInContext();
    (*(*(v87 - 8) + 56))(&v2[v86], 1, 1, v87);
  }

  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SAIntentGroupSiriKitRemoteExecution, 0x1E69C78B8);
  *&v2[OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_aceRemoteExecution] = NSCoder.decodeObject<A>(of:forKey:)();
  v91 = NSCoder.decodeObject<A>(of:forKey:)();
  if (!v91)
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v98 = type metadata accessor for Logger();
    __swift_project_value_buffer(v98, static Logger.executor);
    v39 = Logger.logObject.getter();
    v99 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v39, v99))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_1DC659000, v39, v99, "Unknown resultCandidateId when decoding ProxiedRequestContext, returning nil", v41, 2u);
      v42 = 1;
      v43 = 1;
      v44 = 1;
      goto LABEL_22;
    }

    v42 = 1;
    v43 = 1;
    v44 = 1;
    goto LABEL_23;
  }

  v92 = v91;
  v93 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v95 = v94;

  v96 = &v2[OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_resultCandidateId];
  *v96 = v93;
  v96[1] = v95;
  v110.receiver = v2;
  v110.super_class = ObjectType;
  v97 = objc_msgSendSuper2(&v110, sel_init);

  return v97;
}

uint64_t InvocationStateImpl.init(proxiedRequestContext:localRequestContextData:executionRequestId:)@<X0>(_BYTE *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, char *a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities33PersonalDomainsAuthenticationModeOSgMd, &_s13SiriUtilities33PersonalDomainsAuthenticationModeOSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v109 = &v88 - v11;
  v115 = type metadata accessor for ResponseMode();
  v12 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115);
  v114 = &v88 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v113 = &v88 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v112 = &v88 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities8HomeInfoVSgMd, &_s13SiriUtilities8HomeInfoVSgMR);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v88 - v19;
  v21 = type metadata accessor for Restrictions();
  v22 = MEMORY[0x1EEE9AC00](v21);
  v104 = &v88 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = v24;
  v25 = *(v24 + 16);
  v106 = v26;
  v25(v22);
  v27 = *&a2[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_originatingHome];
  v110 = a3;
  v111 = a4;
  if (v27)
  {
    v28 = v27;
    AFHomeInfo.asInternalHomeInfo.getter();

    v29 = 0;
  }

  else
  {
    v29 = 1;
  }

  v30 = type metadata accessor for HomeInfo();
  v31 = *(*(v30 - 8) + 56);
  v31(v20, v29, 1, v30);
  outlined init with copy of ReferenceResolutionClientProtocol?(&a2[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_audioSource], v112, &_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
  outlined init with copy of ReferenceResolutionClientProtocol?(&a2[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_audioDestination], v113, &_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
  v108 = v12;
  v32 = *(v12 + 16);
  v92 = v12 + 16;
  v91 = v32;
  v32(v114, &a2[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_responseMode], v115);
  v33 = *&a2[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_voiceTriggerEventInfo];
  v102 = *&a2[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_voiceAudioSessionId];
  v93 = a2[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isRecognizeMyVoiceEnabled];
  v101 = a2[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isSystemApertureEnabled];
  v100 = a2[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isLiveActivitiesSupported];
  v98 = *&a2[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_currentDeviceAssistantId];
  v107 = v20;
  v34 = *&a2[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_currentDeviceAssistantId + 8];
  v99 = a2[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isInAmbient];
  v35 = type metadata accessor for InvocationStateImpl(0);
  v36 = v35[8];
  v37 = type metadata accessor for AudioSource();
  v38 = *(*(v37 - 8) + 56);
  v90 = v36;
  v38(&a5[v36], 1, 1, v37);
  v39 = v35[9];
  v40 = type metadata accessor for AudioDestination();
  v41 = *(*(v40 - 8) + 56);
  v89 = v39;
  v41(&a5[v39], 1, 1, v40);
  v42 = v35[24];
  v43 = type metadata accessor for PersonalDomainsAuthenticationMode();
  v44 = *(*(v43 - 8) + 56);
  v96 = v42;
  v44(&a5[v42], 1, 1, v43);
  v45 = v35[25];
  v46 = type metadata accessor for BargeInContext();
  v47 = *(*(v46 - 8) + 56);
  v94 = v45;
  v47(&a5[v45], 1, 1, v46);
  v95 = v35[27];
  v31(&a5[v95], 1, 1, v30);
  v48 = *&a1[OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_aceId + 8];
  *a5 = *&a1[OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_aceId];
  *(a5 + 1) = v48;
  v49 = *&a1[OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_refId + 8];
  v103 = v33;
  v97 = v34;
  if (v49)
  {
    *(a5 + 2) = *&a1[OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_refId];
    *(a5 + 3) = v49;
  }

  else
  {
    v50 = one-time initialization token for executor;

    if (v50 != -1)
    {
      swift_once();
    }

    v51 = type metadata accessor for Logger();
    __swift_project_value_buffer(v51, static Logger.executor);
    v52 = v111;

    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v116 = v56;
      *v55 = 136315138;
      v57 = v110;
      *(v55 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v110, v52, &v116);
      _os_log_impl(&dword_1DC659000, v53, v54, "[InvocationState] RSKE has a nil refId? Setting refId to executionRequestId=%s", v55, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v56);
      MEMORY[0x1E12A2F50](v56, -1, -1);
      MEMORY[0x1E12A2F50](v55, -1, -1);
    }

    else
    {

      v57 = v110;
    }

    *(a5 + 2) = v57;
    *(a5 + 3) = v52;
  }

  v58 = &a5[v35[12]];
  v88 = v35[20];
  v59 = &a5[v35[23]];
  v60 = OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_inputOrigin;
  v61 = v35[6];
  v62 = type metadata accessor for InputOrigin();
  (*(*(v62 - 8) + 16))(&a5[v61], &a1[v60], v62);
  v63 = OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_interactionType;
  v64 = v35[7];
  v65 = type metadata accessor for InteractionType();
  (*(*(v65 - 8) + 16))(&a5[v64], &a1[v63], v65);

  outlined assign with copy of ReferenceResolutionClientProtocol?(v112, &a5[v90], &_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
  outlined assign with copy of ReferenceResolutionClientProtocol?(v113, &a5[v89], &_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
  v91(&a5[v35[10]], v114, v115);
  ProxiedRequestContext.multiUserState.getter(&a5[v35[11]]);
  v66 = *&a1[OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_sessionHandoffContinuityId + 8];
  *v58 = *&a1[OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_sessionHandoffContinuityId];
  *(v58 + 1) = v66;
  a5[v35[13]] = a1[OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_isEyesFree];
  a5[v35[14]] = a1[OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_isVoiceTriggerEnabled];
  a5[v35[15]] = a1[OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_isTextToSpeechEnabled];
  a5[v35[16]] = v93;
  a5[v35[17]] = a1[OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_isDirectAction];
  type metadata accessor for DeviceEnvironmentHelper();

  MEMORY[0x1E129BAA0](v67);

  type metadata accessor for SiriEnvironment();
  static SiriEnvironment.default.getter();
  SiriEnvironment.currentDevice.getter();

  dispatch thunk of CurrentDevice.siriLocale.getter();

  MEMORY[0x1E129BAA0](v68);

  static SiriEnvironment.default.getter();
  SiriEnvironment.currentDevice.getter();

  dispatch thunk of CurrentDevice.siriVoiceGender.getter();

  v69 = *&a1[OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_aceRemoteExecution];
  *&a5[v88] = v69;
  v70 = &a5[v35[21]];
  v71 = v111;
  *v70 = v110;
  *(v70 + 1) = v71;
  v72 = *&a1[OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_interactionId + 8];
  v73 = &a5[v35[22]];
  *v73 = *&a1[OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_interactionId];
  *(v73 + 1) = v72;
  v74 = v69;

  MEMORY[0x1E129BAA0](v75);

  static SiriEnvironment.default.getter();
  SiriEnvironment.currentDevice.getter();

  v76 = dispatch thunk of CurrentDevice.preferencesLanguageCode.getter();
  v78 = v77;

  *v59 = v76;
  *(v59 + 1) = v78;
  if (v69)
  {
    v79 = [v74 personalDomainAuthenticationMode];
    v80 = v107;
    if (v79)
    {
      v81 = v79;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v82 = v108;
  }

  else
  {
    v80 = v107;
    v82 = v108;
  }

  v83 = v35[29];
  v84 = v109;
  PersonalDomainsAuthenticationMode.init(aceValue:)();

  (*(v82 + 8))(v114, v115);
  outlined destroy of ReferenceResolutionClientProtocol?(v113, &_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v112, &_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
  outlined assign with take of (Input, AnyFlow, SiriEnvironment)(v84, &a5[v96], &_s13SiriUtilities33PersonalDomainsAuthenticationModeOSgMd, &_s13SiriUtilities33PersonalDomainsAuthenticationModeOSgMR);
  outlined assign with copy of ReferenceResolutionClientProtocol?(&a1[OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_bargeInContext], &a5[v94], &_s13SiriUtilities14BargeInContextVSgMd, &_s13SiriUtilities14BargeInContextVSgMR);

  (*(v105 + 32))(&a5[v35[26]], v104, v106);
  result = outlined assign with take of (Input, AnyFlow, SiriEnvironment)(v80, &a5[v95], &_s13SiriUtilities8HomeInfoVSgMd, &_s13SiriUtilities8HomeInfoVSgMR);
  v86 = &a5[v35[28]];
  v87 = v97;
  *v86 = v98;
  *(v86 + 1) = v87;
  *&a5[v83] = v103;
  LOBYTE(v87) = v101;
  *&a5[v35[30]] = v102;
  a5[v35[31]] = v87;
  LOBYTE(v87) = v99;
  a5[v35[32]] = v100;
  a5[v35[33]] = v87;
  return result;
}

uint64_t ProxiedRequestContext.multiUserState.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriFlowEnvironment16UserSessionStateVSgMd, _s19SiriFlowEnvironment16UserSessionStateVSgMR);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = v18 - v5;
  if (*(v1 + OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_isMultiUserEnabled) == 1)
  {
    v7 = *(v1 + OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_aceRemoteExecution);
    if (v7)
    {
      v8 = [v7 executionDeviceAssistantId];
      if (v8)
      {
        v9 = v8;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }
    }

    if (*(v1 + OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_aceMeCard))
    {
      v13 = SAPerson.contact.getter();
    }

    else
    {
      v13 = 0;
    }

    v14 = type metadata accessor for DefaultMeCardProxy();
    v15 = swift_allocObject();
    *(v15 + 16) = v13;
    v18[4] = v14;
    v18[5] = lazy protocol witness table accessor for type DefaultMeCardProxy and conformance DefaultMeCardProxy();
    v18[1] = v15;
    if (*(v1 + OBJC_IVAR____TtC14SiriKitRuntime21ProxiedRequestContext_userSessionState))
    {

      SAUserSessionState.sfeUserSessionState.getter(v6);
    }

    else
    {
      v16 = type metadata accessor for UserSessionState();
      (*(*(v16 - 8) + 56))(v6, 1, 1, v16);
    }

    MultiUserContext.init(requiresUserGrounding:meCardProxy:handoffTargetDeviceID:userSessionState:)();

    v17 = type metadata accessor for MultiUserContext();
    return (*(*(v17 - 8) + 56))(a1, 0, 1, v17);
  }

  else
  {
    v10 = type metadata accessor for MultiUserContext();
    v11 = *(*(v10 - 8) + 56);

    return v11(a1, 1, 1, v10);
  }
}

uint64_t specialized ConversationService.bridge(didReceiveRSKE:sessionConfiguration:withRequestContextData:withRecognizedUser:withUserMeetingSessionThreshold:withRemoteRequestWasMadeInSession:from:)()
{
  v1 = v0[30];
  v2 = *(v1 + 112);
  *(v1 + 112) = v0[92];
  v3 = *(v1 + 120);
  *(v1 + 120) = 0x80;

  outlined consume of ConversationService.State(v2, v3);
  Input.parse.getter();
  v4 = swift_task_alloc();
  v0[94] = v4;
  *v4 = v0;
  v4[1] = specialized ConversationService.bridge(didReceiveRSKE:sessionConfiguration:withRequestContextData:withRecognizedUser:withUserMeetingSessionThreshold:withRemoteRequestWasMadeInSession:from:);
  v5 = v0[92];
  v6 = v0[56];

  return specialized ConversationService.updateRequestHandlingExecutionSystem(activeTurn:rcId:parse:)(v5, 12589, 0xE200000000000000, v6);
}

{
  v1 = *v0;
  v2 = *(*v0 + 448);
  v3 = *(*v0 + 440);
  v4 = *(*v0 + 432);
  v5 = *v0;

  v6 = *(v3 + 8);
  v1[95] = v6;
  v1[96] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v2, v4);
  v7 = swift_task_alloc();
  v1[97] = v7;
  *v7 = v5;
  v7[1] = specialized ConversationService.bridge(didReceiveRSKE:sessionConfiguration:withRequestContextData:withRecognizedUser:withUserMeetingSessionThreshold:withRemoteRequestWasMadeInSession:from:);
  v8 = v1[92];

  return specialized ConversationService.maybeSubmitRequestHandlingUpdate(activeTurn:rcId:bridge:)(v8, 12589, 0xE200000000000000);
}

{
  v1 = *v0;
  v2 = *(*v0 + 736);
  v3 = *v0;

  v4 = OBJC_IVAR____TtCC14SiriKitRuntime19ConversationService10ActiveTurn_eventSender;
  v1[98] = OBJC_IVAR____TtCC14SiriKitRuntime19ConversationService10ActiveTurn_eventSender;
  v5 = swift_task_alloc();
  v1[99] = v5;
  *v5 = v3;
  v5[1] = specialized ConversationService.bridge(didReceiveRSKE:sessionConfiguration:withRequestContextData:withRecognizedUser:withUserMeetingSessionThreshold:withRemoteRequestWasMadeInSession:from:);
  v6 = v1[67];

  return specialized static SiriKitMetricsUtils.emitSessionStarted(input:eventSender:resultCandidateId:)(v6, v2 + v4, 12589, 0xE200000000000000);
}

{
  v2 = *v1;
  *(*v1 + 880) = v0;

  v3 = *(v2 + 608);
  outlined destroy of ReferenceResolutionClientProtocol?(*(v2 + 560), &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);

  if (v0)
  {
    v4 = specialized ConversationService.bridge(didReceiveRSKE:sessionConfiguration:withRequestContextData:withRecognizedUser:withUserMeetingSessionThreshold:withRemoteRequestWasMadeInSession:from:);
  }

  else
  {
    v4 = specialized ConversationService.bridge(didReceiveRSKE:sessionConfiguration:withRequestContextData:withRecognizedUser:withUserMeetingSessionThreshold:withRemoteRequestWasMadeInSession:from:);
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

{
  v1 = v0[100];
  v2 = v0[90];
  v3 = v0[67];
  v4 = v0[65];
  v5 = v0[64];
  v6 = v0[47];
  v12 = v0[41];
  v13 = v0[30];
  v14 = v0[83];
  outlined consume of Data?(v0[84], v0[85]);

  outlined destroy of ConversationService.EagerResult(v6, type metadata accessor for DecisionEngineResponse);
  (*(v4 + 8))(v3, v5);
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v12, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v13;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v12, &closure #1 in ConversationService.markNotBusyAsync()partial apply, v8);

  v9 = v0[75];
  outlined destroy of ReferenceResolutionClientProtocol?(v0[69], &_s19SiriFlowEnvironment24RequestPositionInSessionOSgMd, &_s19SiriFlowEnvironment24RequestPositionInSessionOSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v9, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);

  v10 = v0[1];

  return v10();
}

{
  v1 = *(*v0 + 608);

  return MEMORY[0x1EEE6DFA0](specialized ConversationService.bridge(didReceiveRSKE:sessionConfiguration:withRequestContextData:withRecognizedUser:withUserMeetingSessionThreshold:withRemoteRequestWasMadeInSession:from:), v1, 0);
}

{
  v2 = *v1;
  *(*v1 + 824) = v0;

  if (v0)
  {
    v3 = *(v2 + 608);

    v4 = specialized ConversationService.bridge(didReceiveRSKE:sessionConfiguration:withRequestContextData:withRecognizedUser:withUserMeetingSessionThreshold:withRemoteRequestWasMadeInSession:from:);
    v5 = v3;
  }

  else
  {
    v6 = *(v2 + 608);

    v4 = specialized ConversationService.bridge(didReceiveRSKE:sessionConfiguration:withRequestContextData:withRecognizedUser:withUserMeetingSessionThreshold:withRemoteRequestWasMadeInSession:from:);
    v5 = v6;
  }

  return MEMORY[0x1EEE6DFA0](v4, v5, 0);
}

{
  v74 = v0;
  v1 = *(v0 + 376);
  v2 = *v1;
  *(v0 + 832) = *v1;
  if (!v2)
  {
    v6 = *(v0 + 656);
    if (*(v1 + *(*(v0 + 368) + 28)) == 1)
    {

      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&dword_1DC659000, v7, v8, "[ConversationService] Decision engine suggested falling back to peer", v9, 2u);
        MEMORY[0x1E12A2F50](v9, -1, -1);
      }

      v10 = swift_task_alloc();
      *(v0 + 888) = v10;
      *v10 = v0;
      v10[1] = specialized ConversationService.bridge(didReceiveRSKE:sessionConfiguration:withRequestContextData:withRecognizedUser:withUserMeetingSessionThreshold:withRemoteRequestWasMadeInSession:from:);

      return ConversationService.cleanupPeerTriggeredConversations()();
    }

    else
    {
      v25 = *(v0 + 648);
      v27 = *(v0 + 312);
      v26 = *(v0 + 320);
      v29 = *(v0 + 280);
      v28 = *(v0 + 288);
      v30 = *(v0 + 248);
      v31 = *(v0 + 256);

      v32 = type metadata accessor for FlowOutputMessage.InAppResponse();
      (*(*(v32 - 8) + 56))(v26, 1, 1, v32);
      (*(v31 + 104))(v28, *MEMORY[0x1E69D0678], v30);
      v33 = *(v31 + 16);
      v33(v29, v28, v30);
      outlined init with copy of ReferenceResolutionClientProtocol?(v26, v27, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
      v72 = type metadata accessor for ExecutionOutput(0);
      v34 = objc_allocWithZone(v72);
      v35 = &v34[OBJC_IVAR___SKRExecutionOutput_executionRequestId];
      *v35 = v25;
      *(v35 + 1) = v6;
      v36 = &v34[OBJC_IVAR___SKRExecutionOutput_fullPrint];
      *v36 = 0;
      *(v36 + 1) = 0;
      v37 = &v34[OBJC_IVAR___SKRExecutionOutput_fullSpeak];
      *v37 = 0;
      *(v37 + 1) = 0;
      v38 = &v34[OBJC_IVAR___SKRExecutionOutput_redactedFullPrint];
      *v38 = 0;
      *(v38 + 1) = 0;
      v39 = &v34[OBJC_IVAR___SKRExecutionOutput_redactedFullSpeak];
      *v39 = 0;
      *(v39 + 1) = 0;
      v33(&v34[OBJC_IVAR___SKRExecutionOutput_executionSource], v29, v30);
      outlined init with copy of ReferenceResolutionClientProtocol?(v27, &v34[OBJC_IVAR___SKRExecutionOutput_inAppResponse], &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v73 = v44;
        *v42 = 136315394;
        *(v42 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000085, 0x80000001DCA7C240, &v73);
        *(v42 + 12) = 2112;
        *(v42 + 14) = 0;
        *v43 = 0;
        _os_log_impl(&dword_1DC659000, v40, v41, "ExecutionOutput: %s: converting non-context ACE command=%@ to ExecutionOutput", v42, 0x16u);
        outlined destroy of ReferenceResolutionClientProtocol?(v43, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x1E12A2F50](v43, -1, -1);
        __swift_destroy_boxed_opaque_existential_1Tm(v44);
        MEMORY[0x1E12A2F50](v44, -1, -1);
        MEMORY[0x1E12A2F50](v42, -1, -1);
      }

      v61 = *(v0 + 800);
      v62 = *(v0 + 720);
      v59 = *(v0 + 672);
      v60 = *(v0 + 680);
      v70 = *(v0 + 664);
      v64 = *(v0 + 520);
      v65 = *(v0 + 512);
      v66 = *(v0 + 536);
      v63 = *(v0 + 376);
      v67 = *(v0 + 328);
      v45 = *(v0 + 312);
      v46 = *(v0 + 280);
      v56 = *(v0 + 288);
      v57 = *(v0 + 320);
      v48 = *(v0 + 248);
      v47 = *(v0 + 256);
      v49 = *(v0 + 232);
      v68 = *(v0 + 240);
      ObjectType = swift_getObjectType();
      *&v34[OBJC_IVAR___SKRExecutionOutput_command] = 0;
      *&v34[OBJC_IVAR___SKRExecutionOutput_contextUpdate] = 0;
      *(v0 + 144) = v34;
      *(v0 + 152) = v72;
      v50 = objc_msgSendSuper2((v0 + 144), sel_init);
      outlined destroy of ReferenceResolutionClientProtocol?(v45, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
      v51 = *(v47 + 8);
      v51(v46, v48);
      v51(v56, v48);
      outlined destroy of ReferenceResolutionClientProtocol?(v57, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
      (*(v49 + 32))(v50, 0xD00000000000001DLL, 0x80000001DCA81800, ObjectType, v49);
      outlined consume of Data?(v59, v60);

      outlined destroy of ConversationService.EagerResult(v63, type metadata accessor for DecisionEngineResponse);
      (*(v64 + 8))(v66, v65);
      v52 = type metadata accessor for TaskPriority();
      (*(*(v52 - 8) + 56))(v67, 1, 1, v52);
      v53 = swift_allocObject();
      v53[2] = 0;
      v53[3] = 0;
      v53[4] = v68;

      _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v67, &closure #1 in ConversationService.markNotBusyAsync()partial apply, v53);

      v54 = *(v0 + 600);
      outlined destroy of ReferenceResolutionClientProtocol?(*(v0 + 552), &_s19SiriFlowEnvironment24RequestPositionInSessionOSgMd, &_s19SiriFlowEnvironment24RequestPositionInSessionOSgMR);
      outlined destroy of ReferenceResolutionClientProtocol?(v54, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);

      v55 = *(v0 + 8);

      return v55();
    }
  }

  v3 = *(v0 + 240);

  v4 = *(v3 + 104);
  if ((v4 & 0xC000000000000001) != 0)
  {

    v5 = __CocoaSet.count.getter();

    if (!v5)
    {
      goto LABEL_15;
    }
  }

  else if (!*(v4 + 16))
  {
LABEL_15:
    v16 = *(v0 + 832);
    v17 = *(v0 + 800);
    v18 = *(v0 + 736);
    v19 = *(v0 + 560);
    v20 = *(v0 + 240);
    v71 = *(v0 + 224);
    static ConversationSELFHelper.shared.getter();
    dispatch thunk of ConversationSELFHelper.emitExecutionPrepareTimeEnd(rcId:)();

    *(v0 + 856) = static ConversationSELFHelper.shared.getter();
    Input.identifier.getter();
    v21 = type metadata accessor for UUID();
    (*(*(v21 - 8) + 56))(v19, 0, 1, v21);
    v22 = swift_allocObject();
    *(v0 + 864) = v22;
    *(v22 + 16) = v20;
    *(v22 + 24) = v16;
    *(v22 + 32) = v17;
    *(v22 + 40) = v18;
    *(v22 + 48) = v71;
    v69 = (*MEMORY[0x1E69D0038] + MEMORY[0x1E69D0038]);

    swift_unknownObjectRetain();

    v23 = v17;
    v24 = swift_task_alloc();
    *(v0 + 872) = v24;
    *v24 = v0;
    v24[1] = specialized ConversationService.bridge(didReceiveRSKE:sessionConfiguration:withRequestContextData:withRecognizedUser:withUserMeetingSessionThreshold:withRemoteRequestWasMadeInSession:from:);

    return v69();
  }

  v12 = *(v0 + 376);
  if (*(v12 + 8))
  {
    goto LABEL_15;
  }

  v13 = *(v0 + 520);
  v14 = *(v0 + 512);
  v15 = *(v0 + 360);
  outlined init with copy of ReferenceResolutionClientProtocol?(v12 + *(*(v0 + 368) + 24), v15, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  if ((*(v13 + 48))(v15, 1, v14) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(*(v0 + 360), &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
    goto LABEL_15;
  }

  (*(v0 + 688))(*(v0 + 528), *(v0 + 360), *(v0 + 512));

  return MEMORY[0x1EEE6DFA0](specialized ConversationService.bridge(didReceiveRSKE:sessionConfiguration:withRequestContextData:withRecognizedUser:withUserMeetingSessionThreshold:withRemoteRequestWasMadeInSession:from:), 0, 0);
}

{
  v33 = v0;
  v1 = *(v0 + 712);
  *(v0 + 176) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {
    (*(*(v0 + 464) + 8))(*(v0 + 472), *(v0 + 456));
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    v5 = os_log_type_enabled(v3, v4);
    v6 = *(v0 + 712);
    if (!v5)
    {
LABEL_7:

      goto LABEL_9;
    }

    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1DC659000, v3, v4, "bridge.fetchSpeechInfo timed out, current request will have a nil speechPackage", v7, 2u);
    v8 = v7;
LABEL_6:
    MEMORY[0x1E12A2F50](v8, -1, -1);
    goto LABEL_7;
  }

  v9 = *(v0 + 712);
  v10 = v9;
  v3 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();

  v12 = os_log_type_enabled(v3, v11);
  v6 = *(v0 + 712);
  if (v12)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v32 = v14;
    *v13 = 136446210;
    swift_getErrorValue();
    DynamicType = swift_getDynamicType();
    v16 = *(v0 + 104);
    *(v0 + 160) = DynamicType;
    *(v0 + 168) = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pXpMd, &_ss5Error_pXpMR);
    v17 = String.init<A>(describing:)();
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v32);

    *(v13 + 4) = v19;
    _os_log_impl(&dword_1DC659000, v3, v11, "bridge.fetchSpeechInfo got an unknown error %{public}s, current request will have a nil speechPackage", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    MEMORY[0x1E12A2F50](v14, -1, -1);
    v8 = v13;
    goto LABEL_6;
  }

LABEL_9:
  *(v0 + 720) = 0;
  v20 = *(v0 + 192);
  v21 = swift_task_alloc();
  *(v0 + 728) = v21;
  *v21 = v0;
  v21[1] = specialized ConversationService.bridge(didReceiveRSKE:sessionConfiguration:withRequestContextData:withRecognizedUser:withUserMeetingSessionThreshold:withRemoteRequestWasMadeInSession:from:);
  v22 = *(v0 + 672);
  v23 = *(v0 + 664);
  v24 = *(v0 + 656);
  v25 = *(v0 + 648);
  v26 = *(v0 + 640);
  v27 = *(v0 + 632);
  v28 = *(v0 + 600);
  v29 = *(v0 + 232);
  v30 = *(v0 + 200);
  v36 = *(v0 + 224);
  v37 = v29;
  v35 = v22;

  return ConversationService.setupNewTurn(executionRequestId:rootRequestId:sessionId:sessionConfiguration:contextData:runSiriKitExecutor:scopedRRData:bridge:)(v25, v24, v27, v26, v28, v30, v23, v20);
}

{
  v2 = v0[43];
  v1 = v0[44];
  v3 = v0[42];
  v4 = (v0[92] + v0[98]);
  v5 = v4[3];
  v6 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v5);
  type metadata accessor for SiriKitEvent();
  *v1 = specialized static SiriKitMetricsUtils.extractIntentTypeName(input:)();
  v1[1] = v7;
  (*(v2 + 104))(v1, *MEMORY[0x1E69CFBC8], v3);
  v8 = SiriKitEvent.__allocating_init(_:builder:)();
  v0[105] = v8;
  v9 = swift_task_alloc();
  v0[106] = v9;
  *v9 = v0;
  v9[1] = specialized ConversationService.bridge(didReceiveRSKE:sessionConfiguration:withRequestContextData:withRecognizedUser:withUserMeetingSessionThreshold:withRemoteRequestWasMadeInSession:from:);

  return MEMORY[0x1EEE39338](v8, v5, v6);
}

{
  v1 = *(*v0 + 608);

  return MEMORY[0x1EEE6DFA0](specialized ConversationService.bridge(didReceiveRSKE:sessionConfiguration:withRequestContextData:withRecognizedUser:withUserMeetingSessionThreshold:withRemoteRequestWasMadeInSession:from:), v1, 0);
}

{
  (*(*(v0 + 520) + 8))(*(v0 + 528), *(v0 + 512));
  v1 = *(v0 + 832);
  v2 = *(v0 + 800);
  v3 = *(v0 + 736);
  v4 = *(v0 + 560);
  v5 = *(v0 + 240);
  v12 = *(v0 + 224);
  static ConversationSELFHelper.shared.getter();
  dispatch thunk of ConversationSELFHelper.emitExecutionPrepareTimeEnd(rcId:)();

  *(v0 + 856) = static ConversationSELFHelper.shared.getter();
  Input.identifier.getter();
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 56))(v4, 0, 1, v6);
  v7 = swift_allocObject();
  *(v0 + 864) = v7;
  *(v7 + 16) = v5;
  *(v7 + 24) = v1;
  *(v7 + 32) = v2;
  *(v7 + 40) = v3;
  *(v7 + 48) = v12;
  v11 = (*MEMORY[0x1E69D0038] + MEMORY[0x1E69D0038]);

  swift_unknownObjectRetain();

  v8 = v2;
  v9 = swift_task_alloc();
  *(v0 + 872) = v9;
  *v9 = v0;
  v9[1] = specialized ConversationService.bridge(didReceiveRSKE:sessionConfiguration:withRequestContextData:withRecognizedUser:withUserMeetingSessionThreshold:withRemoteRequestWasMadeInSession:from:);

  return v11();
}

{
  v1 = *(*v0 + 608);

  return MEMORY[0x1EEE6DFA0](specialized ConversationService.bridge(didReceiveRSKE:sessionConfiguration:withRequestContextData:withRecognizedUser:withUserMeetingSessionThreshold:withRemoteRequestWasMadeInSession:from:), v1, 0);
}

{
  v1 = v0[100];
  v2 = v0[90];
  v3 = v0[85];
  v4 = v0[84];
  v5 = v0[65];
  v14 = v0[64];
  v15 = v0[67];
  v6 = v0[47];
  v16 = v0[41];
  v7 = v0[29];
  v17 = v0[30];
  v18 = v0[83];

  ObjectType = swift_getObjectType();
  (*(v7 + 72))(ObjectType, v7);
  outlined consume of Data?(v4, v3);

  outlined destroy of ConversationService.EagerResult(v6, type metadata accessor for DecisionEngineResponse);
  (*(v5 + 8))(v15, v14);
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v16, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v17;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v16, &closure #1 in ConversationService.markNotBusyAsync()partial apply, v10);

  v11 = v0[75];
  outlined destroy of ReferenceResolutionClientProtocol?(v0[69], &_s19SiriFlowEnvironment24RequestPositionInSessionOSgMd, &_s19SiriFlowEnvironment24RequestPositionInSessionOSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v11, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);

  v12 = v0[1];

  return v12();
}

{
  v1 = v0[90];
  v2 = v0[65];
  outlined consume of Data?(v0[84], v0[85]);

  v3 = v0[83];
  v4 = v0[75];
  v5 = v0[69];
  v6 = v0[41];
  v7 = v0[30];
  (*(v2 + 8))(v0[67], v0[64]);
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v7;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v6, &closure #1 in ConversationService.markNotBusyAsync()partial apply, v9);

  outlined destroy of ReferenceResolutionClientProtocol?(v5, &_s19SiriFlowEnvironment24RequestPositionInSessionOSgMd, &_s19SiriFlowEnvironment24RequestPositionInSessionOSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v4, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);

  v10 = v0[1];

  return v10();
}

{
  v1 = v0[100];
  v2 = v0[90];
  v3 = v0[65];
  outlined consume of Data?(v0[84], v0[85]);

  v4 = v0[83];
  v5 = v0[75];
  v6 = v0[69];
  v7 = v0[41];
  v8 = v0[30];
  (*(v3 + 8))(v0[67], v0[64]);
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v8;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v7, &closure #1 in ConversationService.markNotBusyAsync()partial apply, v10);

  outlined destroy of ReferenceResolutionClientProtocol?(v6, &_s19SiriFlowEnvironment24RequestPositionInSessionOSgMd, &_s19SiriFlowEnvironment24RequestPositionInSessionOSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v5, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);

  v11 = v0[1];

  return v11();
}

{
  v1 = v0[100];
  v2 = v0[90];
  v3 = v0[47];
  outlined consume of Data?(v0[84], v0[85]);

  outlined destroy of ConversationService.EagerResult(v3, type metadata accessor for DecisionEngineResponse);
  v4 = v0[83];
  v5 = v0[75];
  v6 = v0[69];
  v7 = v0[41];
  v8 = v0[30];
  (*(v0[65] + 8))(v0[67], v0[64]);
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v8;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v7, &closure #1 in ConversationService.markNotBusyAsync()partial apply, v10);

  outlined destroy of ReferenceResolutionClientProtocol?(v6, &_s19SiriFlowEnvironment24RequestPositionInSessionOSgMd, &_s19SiriFlowEnvironment24RequestPositionInSessionOSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v5, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);

  v11 = v0[1];

  return v11();
}

uint64_t specialized ConversationService.updateRequestHandlingExecutionSystem(activeTurn:rcId:parse:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[5] = a1;
  v4[6] = a2;
  v5 = type metadata accessor for ExecutionLocation();
  v4[9] = v5;
  v4[10] = *(v5 - 8);
  v4[11] = swift_task_alloc();
  v6 = type metadata accessor for Parse();
  v4[12] = v6;
  v4[13] = *(v6 - 8);
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v7 = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](specialized ConversationService.updateRequestHandlingExecutionSystem(activeTurn:rcId:parse:), v7, 0);
}

uint64_t specialized ConversationService.updateRequestHandlingExecutionSystem(activeTurn:rcId:parse:)()
{
  v53 = v0;
  v1 = *(v0 + 128);
  v2 = *(v0 + 96);
  v3 = *(v0 + 104);
  v4 = *(v3 + 16);
  v4(v1, *(v0 + 64), v2);
  v5 = (*(v3 + 88))(v1, v2);
  if (v5 == *MEMORY[0x1E69D0120])
  {
LABEL_2:
    (*(*(v0 + 104) + 8))(*(v0 + 128), *(v0 + 96));
LABEL_5:
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;
    goto LABEL_6;
  }

  if (v5 == *MEMORY[0x1E69D0160])
  {
    v6 = *(v0 + 128);
    (*(*(v0 + 104) + 96))(v6, *(v0 + 96));
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology8NLIntentV_0A7KitFlow5ParseO16ServerConversionCtMd, &_s12SiriOntology8NLIntentV_0A7KitFlow5ParseO16ServerConversionCtMR);

    v7 = type metadata accessor for NLIntent();
    (*(*(v7 - 8) + 8))(v6, v7);
    goto LABEL_5;
  }

  if (v5 == *MEMORY[0x1E69D0130])
  {
    v13 = *(v0 + 128);
    v15 = *(v0 + 96);
    v14 = *(v0 + 104);
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v16;
    (*(v14 + 8))(v13, v15);
  }

  else
  {
    if (v5 == *MEMORY[0x1E69D0138])
    {
      goto LABEL_2;
    }

    if (v5 == *MEMORY[0x1E69D0168] || v5 == *MEMORY[0x1E69D0170])
    {
      goto LABEL_2;
    }

    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v18 = *(v0 + 112);
    v19 = *(v0 + 120);
    v20 = *(v0 + 96);
    v21 = *(v0 + 64);
    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static Logger.executor);
    v4(v19, v21, v20);
    v4(v18, v21, v20);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    v25 = os_log_type_enabled(v23, v24);
    v27 = *(v0 + 112);
    v26 = *(v0 + 120);
    v28 = *(v0 + 96);
    v29 = *(v0 + 104);
    if (v25)
    {
      log = v23;
      v47 = *(v0 + 88);
      v48 = *(v0 + 80);
      v30 = *(v0 + 72);
      v49 = v24;
      v31 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v52 = v50;
      *v31 = 136315394;
      v32 = Parse.parseType.getter();
      v33 = v28;
      v46 = v28;
      v34 = v27;
      v36 = v35;
      v37 = *(v29 + 8);
      v37(v26, v33);
      v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v36, &v52);

      *(v31 + 4) = v38;
      *(v31 + 12) = 2080;
      Parse.nlLocation.getter();
      _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type ExecutionLocation and conformance ExecutionLocation, 255, MEMORY[0x1E69D35D8], MEMORY[0x1E69D35F0]);
      v39 = dispatch thunk of CustomStringConvertible.description.getter();
      v41 = v40;
      (*(v48 + 8))(v47, v30);
      v37(v34, v46);
      v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v41, &v52);

      *(v31 + 14) = v42;
      _os_log_impl(&dword_1DC659000, log, v49, "[ConversationService] updateRequestHandlingExecutionSystem unknown input system for parse type=%s location=%s", v31, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v50, -1, -1);
      MEMORY[0x1E12A2F50](v31, -1, -1);
    }

    else
    {

      v37 = *(v29 + 8);
      v37(v27, v28);
      v37(v26, v28);
    }

    v43 = *(v0 + 128);
    v44 = *(v0 + 96);
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v45;
    v37(v43, v44);
  }

LABEL_6:
  (*(**(v0 + 40) + 384))(*(v0 + 48), *(v0 + 56), v8, v10);

  v11 = *(v0 + 8);

  return v11();
}

Swift::Void __swiftcall ConversationService.ActiveTurn.registerExecutionInputSystem(rcId:system:)(Swift::String rcId, Swift::String system)
{
  object = system._object;
  countAndFlagsBits = system._countAndFlagsBits;
  v5 = rcId._object;
  v6 = rcId._countAndFlagsBits;
  v7 = OBJC_IVAR____TtCC14SiriKitRuntime19ConversationService10ActiveTurn_executionInputSystem;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v2 + v7);
  *(v2 + v7) = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(countAndFlagsBits, object, v6, v5, isUniquelyReferenced_nonNull_native);

  *(v2 + v7) = v9;
  swift_endAccess();
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, a5 & 1);
      v13 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      specialized _NativeDictionary.copy()();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v26 = (v23[6] + 16 * v13);
  *v26 = a3;
  v26[1] = a4;
  v27 = (v23[7] + 16 * v13);
  *v27 = a1;
  v27[1] = a2;
  v28 = v23[2];
  v17 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v29;
}

{
  v6 = v5;
  v12 = *v5;
  v13 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, a5 & 1);
      v13 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      specialized _NativeDictionary.copy()();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v26 = (v23[6] + 16 * v13);
  *v26 = a3;
  v26[1] = a4;
  v27 = (v23[7] + 16 * v13);
  *v27 = a1;
  v27[1] = a2;
  v28 = v23[2];
  v17 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v29;
}

Swift::Int specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd, &_ss18_DictionaryStorageCyS2SGMR);
  v37 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS14SiriKitRuntime12AnyEncodableVGMd, &_ss18_DictionaryStorageCySS14SiriKitRuntime12AnyEncodableVGMR);
  v33 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = 16 * (v18 | (v8 << 6));
      v22 = (*(v5 + 48) + v21);
      v23 = *v22;
      v24 = v22[1];
      v34 = *(*(v5 + 56) + v21);
      if ((v33 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v7 + 56) + v16) = v34;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSbGMd, &_ss18_DictionaryStorageCySSSbGMR);
  v34 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + v20);
      if ((v34 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCySSSDySSSbGGMd, &_ss18_DictionaryStorageCySSSDySSSbGGMR);
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCySSSDySSSo8NSNumberCGGMd, &_ss18_DictionaryStorageCySSSDySSSo8NSNumberCGGMR);
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCySSSaySSGGMd, &_ss18_DictionaryStorageCySSSaySSGGMR);
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys6UInt32VSgSay12SiriOntology13UsoIdentifierVGGMd, &_ss18_DictionaryStorageCys6UInt32VSgSay12SiriOntology13UsoIdentifierVGGMR);
  v36 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v35 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = 8 * (v18 | (v8 << 6));
      v22 = *(v5 + 56);
      v23 = *(v5 + 48) + v21;
      v24 = *v23;
      v25 = *(v23 + 4);
      v26 = *(v22 + v21);
      if ((v36 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      if (v25)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        Hasher._combine(_:)(1u);
        Hasher._combine(_:)(v24);
      }

      result = Hasher._finalize()();
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 8 * v15;
      v17 = *(v7 + 48) + v16;
      *v17 = v24;
      *(v17 + 4) = v25;
      *(*(v7 + 56) + v16) = v26;
      ++*(v7 + 16);
      v5 = v35;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
    if (v34 >= 64)
    {
      bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v7;
  return result;
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCySSSay32SiriReferenceResolutionDataModel11RRCandidateVGGMd, &_ss18_DictionaryStorageCySSSay32SiriReferenceResolutionDataModel11RRCandidateVGGMR);
}

{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for StringKeyedValue(0);
  v39 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v41 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS14SiriKitRuntime16StringKeyedValueVGMd, &_ss18_DictionaryStorageCySS14SiriKitRuntime16StringKeyedValueVGMR);
  v40 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = result;
  if (*(v7 + 16))
  {
    v37 = v2;
    v38 = v7;
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
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v39 + 72);
      v28 = v23 + v27 * v22;
      if (v40)
      {
        outlined init with take of StringKeyedValue(v28, v41, type metadata accessor for StringKeyedValue);
      }

      else
      {
        outlined init with copy of StringKeyedValue(v28, v41);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v25;
      v18[1] = v26;
      result = outlined init with take of StringKeyedValue(v41, *(v9 + 56) + v27 * v17, type metadata accessor for StringKeyedValue);
      ++*(v9 + 16);
      v7 = v38;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if ((v40 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCySS14SiriKitRuntime15AffinityScoring_pGMd, &_ss18_DictionaryStorageCySS14SiriKitRuntime15AffinityScoring_pGMR, outlined init with take of NSExtensionProtocol);
}

{
  v3 = v2;
  v4 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestMd, &_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestMR);
  v39 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v41 = &v37 - v6;
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS7SiriCam12RankedActionV03topF0_SayAC0D5ParseOG17alternativeParsestGMd, &_ss18_DictionaryStorageCySS7SiriCam12RankedActionV03topF0_SayAC0D5ParseOG17alternativeParsestGMR);
  v40 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = result;
  if (*(v7 + 16))
  {
    v37 = v2;
    v38 = v7;
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
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v39 + 72);
      v28 = v23 + v27 * v22;
      if (v40)
      {
        outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v28, v41, &_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestMd, &_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestMR);
      }

      else
      {
        outlined init with copy of ReferenceResolutionClientProtocol?(v28, v41, &_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestMd, &_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestMR);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v25;
      v18[1] = v26;
      result = outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v41, *(v9 + 56) + v27 * v17, &_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestMd, &_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestMR);
      ++*(v9 + 16);
      v7 = v38;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if ((v40 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS14SiriKitRuntime18ConversationActionOGMd, &_ss18_DictionaryStorageCySS14SiriKitRuntime18ConversationActionOGMR);
  v34 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + v20);
      if ((v34 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCySSSay11SiriKitFlow11IntentTopicVGGMd, &_ss18_DictionaryStorageCySSSay11SiriKitFlow11IntentTopicVGGMR);
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCySS14SiriKitRuntime23RemoteFlowPluginPackageCGMd, &_ss18_DictionaryStorageCySS14SiriKitRuntime23RemoteFlowPluginPackageCGMR);
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy14SiriKitRuntime14ContextTypeKeyOSo17AFContextSnapshot_pGMd, &_ss18_DictionaryStorageCy14SiriKitRuntime14ContextTypeKeyOSo17AFContextSnapshot_pGMR);
  v30 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v30 & 1) == 0)
      {
        swift_unknownObjectRetain();
      }

      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCySSSo8NSNumberCGMd, &_ss18_DictionaryStorageCySSSo8NSNumberCGMR);
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSScTy14SiriKitRuntime19ConversationServiceC11EagerResultOs5Error_pGGMd, &_ss18_DictionaryStorageCySSScTy14SiriKitRuntime19ConversationServiceC11EagerResultOs5Error_pGGMR);
  v34 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy14SiriKitRuntime14ContextTypeKeyOSo17AFContextSnapshot_pSgGMd, &_ss18_DictionaryStorageCy14SiriKitRuntime14ContextTypeKeyOSo17AFContextSnapshot_pSgGMR);
  v30 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v30 & 1) == 0)
      {
        swift_unknownObjectRetain();
      }

      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCySS14SiriKitRuntime19NSExtensionProtocol_pGMd, &_ss18_DictionaryStorageCySS14SiriKitRuntime19NSExtensionProtocol_pGMR, outlined init with take of NSExtensionProtocol);
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo16LNSystemProtocolCSay14SiriKitRuntime18LinkActionMetadataVGGMd, &_ss18_DictionaryStorageCySo16LNSystemProtocolCSay14SiriKitRuntime18LinkActionMetadataVGGMR);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
        v22 = v20;
      }

      result = NSObject._rawHashValue(seed:)(*(v7 + 40));
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v31;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v31;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCySSShySSGGMd, &_ss18_DictionaryStorageCySSShySSGGMR);
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCySSSay12SiriOntology13UsoIdentifierVGGMd, &_ss18_DictionaryStorageCySSSay12SiriOntology13UsoIdentifierVGGMR);
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS14SiriKitRuntime19FlowPluginAndBundleVGMd, &_ss18_DictionaryStorageCySS14SiriKitRuntime19FlowPluginAndBundleVGMR);
  v40 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v21 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v24 = v21 | (v8 << 6);
      v25 = (*(v5 + 48) + 16 * v24);
      v26 = *v25;
      v27 = v25[1];
      v28 = (*(v5 + 56) + 80 * v24);
      if (v40)
      {
        v41 = *v28;
        v29 = v28[1];
        v30 = v28[2];
        v31 = v28[3];
        v45 = v28[4];
        v43 = v30;
        v44 = v31;
        v42 = v29;
      }

      else
      {
        outlined init with copy of FlowPluginAndBundle(v28, &v41);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v32 = -1 << *(v7 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v14 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v14 + 8 * v34);
          if (v38 != -1)
          {
            v15 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v33) & ~*(v14 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v26;
      v16[1] = v27;
      v17 = (*(v7 + 56) + 80 * v15);
      *v17 = v41;
      v18 = v42;
      v19 = v43;
      v20 = v45;
      v17[3] = v44;
      v17[4] = v20;
      v17[1] = v18;
      v17[2] = v19;
      ++*(v7 + 16);
    }

    v22 = v8;
    while (1)
    {
      v8 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v23 = v9[v8];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v12 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v39 = 1 << *(v5 + 32);
    v3 = v2;
    if (v39 >= 64)
    {
      bzero((v5 + 64), ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v39;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t specialized ConversationService.maybeSubmitRequestHandlingUpdate(activeTurn:rcId:bridge:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](specialized ConversationService.maybeSubmitRequestHandlingUpdate(activeTurn:rcId:bridge:), v4, 0);
}

uint64_t specialized ConversationService.maybeSubmitRequestHandlingUpdate(activeTurn:rcId:bridge:)()
{
  v16 = v0;
  v1 = (*(**(v0 + 40) + 392))(*(v0 + 48), *(v0 + 56));
  if (v2)
  {
    v3 = v1;
    v4 = v2;
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Logger.executor);

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v15 = v9;
      *v8 = 136315138;
      *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v3, v4, &v15);
      _os_log_impl(&dword_1DC659000, v6, v7, "Sending ACE command to update request handling indicator with value: %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v9);
      MEMORY[0x1E12A2F50](v9, -1, -1);
      MEMORY[0x1E12A2F50](v8, -1, -1);
    }

    v10 = *(v0 + 40);
    v11 = [objc_allocWithZone(MEMORY[0x1E69C7BB8]) init];
    v12 = MEMORY[0x1E12A1410](v3, v4);

    [v11 setExecutionInputSystem_];

    __swift_project_boxed_opaque_existential_1((v10 + OBJC_IVAR____TtCC14SiriKitRuntime19ConversationService10ActiveTurn_aceServiceInvoker), *(v10 + OBJC_IVAR____TtCC14SiriKitRuntime19ConversationService10ActiveTurn_aceServiceInvoker + 24));
    AceServiceInvokerAsync.submitAndForget(_:)();
  }

  v13 = *(v0 + 8);

  return v13();
}

Swift::String_optional __swiftcall ConversationService.ActiveTurn.getExecutionInputSystem(rcId:)(Swift::String rcId)
{
  object = rcId._object;
  countAndFlagsBits = rcId._countAndFlagsBits;
  v4 = OBJC_IVAR____TtCC14SiriKitRuntime19ConversationService10ActiveTurn_executionInputSystem;
  swift_beginAccess();
  v5 = *(v1 + v4);
  if (*(v5 + 16))
  {

    v6 = specialized __RawDictionaryStorage.find<A>(_:)(countAndFlagsBits, object);
    if (v7)
    {
      v8 = (*(v5 + 56) + 16 * v6);
      v9 = *v8;
      v10 = v8[1];
    }

    else
    {
      v9 = 0;
      v10 = 0;
    }
  }

  else
  {
    v9 = 0;
    v10 = 0;
  }

  v11 = v9;
  v12 = v10;
  result.value._object = v12;
  result.value._countAndFlagsBits = v11;
  return result;
}

uint64_t protocol witness for AceServiceInvokerAsync.submitAndForget(_:setRefId:) in conformance AceServiceInvokerImpl(NSObject *a1, uint64_t a2)
{
  v2 = a2;
  v4 = type metadata accessor for RequestSummary.ExecutionSource();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v8, *MEMORY[0x1E69D0678], v4, v6);
  AceServiceInvokerImpl.submitAndForget(_:setRefId:executionSource:)(a1, v2, v8);
  return (*(v5 + 8))(v8, v4);
}

void AceServiceInvokerImpl.submitAndForget(_:setRefId:executionSource:)(NSObject *a1, char a2, char *a3)
{
  v156 = a3;
  v157 = a1;
  updated = type metadata accessor for ContextUpdateScope();
  v154 = *(updated - 8);
  v155 = updated;
  MEMORY[0x1EEE9AC00](updated);
  v153 = &v135 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v152 = &v135 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v151 = &v135 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5ParseO16DirectInvocationVSgMd, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v150 = &v135 - v12;
  v13 = type metadata accessor for BinaryDecodingOptions();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v145 = &v135 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMd, &_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMR);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v147 = &v135 - v16;
  v149 = type metadata accessor for Com_Apple_Siri_Product_Proto_PromptContext();
  v146 = *(v149 - 8);
  MEMORY[0x1EEE9AC00](v149);
  v144 = &v135 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v148 = &v135 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v135 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v135 - v24;
  v26 = type metadata accessor for RequestSummary.ExecutionSource();
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v135 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v135 - v31;
  v33 = v3[19];
  os_unfair_lock_lock((v33 + 20));
  v34 = *(v33 + 16);
  os_unfair_lock_unlock((v33 + 20));
  if (v34)
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    __swift_project_value_buffer(v35, static Logger.executor);
    v157 = Logger.logObject.getter();
    v36 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v157, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_1DC659000, v157, v36, "Attempting to submitAndForget a command on an invalidated AceServiceInvoker. Ignoring.", v37, 2u);
      MEMORY[0x1E12A2F50](v37, -1, -1);
    }

    v38 = v157;
  }

  else
  {
    if (a2)
    {
      v39 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v39 = &outlined read-only object #0 of AceServiceInvokerImpl.submitAndForget(_:setRefId:executionSource:);
    }

    v40 = AceServiceInvokerImpl.preparedCommand(_:options:)(v157, v39);
    v157 = v40;

    AceServiceInvokerImpl.closeServerRequestIfRequired(givenCommand:)(v40);
    v143 = v3;
    v41 = v3[5];
    v42 = v3[6];
    v141 = v27;
    v43 = *(v27 + 16);
    v43(v32, v156, v26);
    v44 = type metadata accessor for FlowOutputMessage.InAppResponse();
    (*(*(v44 - 8) + 56))(v25, 1, 1, v44);
    v140 = v32;
    v43(v29, v32, v26);
    v156 = v25;
    outlined init with copy of ReferenceResolutionClientProtocol?(v25, v22, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
    v138 = type metadata accessor for ExecutionOutput(0);
    v45 = objc_allocWithZone(v138);
    v46 = &v45[OBJC_IVAR___SKRExecutionOutput_executionRequestId];
    *v46 = v41;
    *(v46 + 1) = v42;
    v47 = &v45[OBJC_IVAR___SKRExecutionOutput_fullPrint];
    *v47 = 0;
    *(v47 + 1) = 0;
    v48 = &v45[OBJC_IVAR___SKRExecutionOutput_fullSpeak];
    *v48 = 0;
    *(v48 + 1) = 0;
    v49 = &v45[OBJC_IVAR___SKRExecutionOutput_redactedFullPrint];
    *v49 = 0;
    *(v49 + 1) = 0;
    v50 = &v45[OBJC_IVAR___SKRExecutionOutput_redactedFullSpeak];
    *v50 = 0;
    *(v50 + 1) = 0;
    v139 = v29;
    v142 = v26;
    v43(&v45[OBJC_IVAR___SKRExecutionOutput_executionSource], v29, v26);
    v137 = v45;
    v51 = v157;
    outlined init with copy of ReferenceResolutionClientProtocol?(v22, &v45[OBJC_IVAR___SKRExecutionOutput_inAppResponse], &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
    objc_opt_self();
    v52 = swift_dynamicCastObjCClass();
    v53 = one-time initialization token for executor;
    v54 = v51;
    v55 = v54;
    v136 = v22;
    if (v52)
    {
      v56 = v54;

      if (v53 != -1)
      {
        swift_once();
      }

      v57 = type metadata accessor for Logger();
      __swift_project_value_buffer(v57, static Logger.executor);
      v58 = v56;
      v59 = Logger.logObject.getter();
      v60 = static os_log_type_t.debug.getter();

      v61 = os_log_type_enabled(v59, v60);
      v135 = v55;
      if (v61)
      {
        v62 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        *&aBlock = v64;
        *v62 = 136315394;
        *(v62 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000085, 0x80000001DCA7C240, &aBlock);
        *(v62 + 12) = 2112;
        *(v62 + 14) = v52;
        *v63 = v52;
        v65 = v58;
        _os_log_impl(&dword_1DC659000, v59, v60, "ExecutionOutput: %s: converting SARDNativeFlowContextUpdate=%@ to ExecutionOutput", v62, 0x16u);
        outlined destroy of ReferenceResolutionClientProtocol?(v63, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x1E12A2F50](v63, -1, -1);
        __swift_destroy_boxed_opaque_existential_1Tm(v64);
        MEMORY[0x1E12A2F50](v64, -1, -1);
        MEMORY[0x1E12A2F50](v62, -1, -1);
      }

      v66 = v149;
      v67 = v148;
      v68 = v147;
      v157 = v52;
      v69 = [v52 promptContextProto];
      if (v69)
      {
        v70 = v69;
        v71 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v73 = v72;

        v161 = 0;
        aBlock = 0u;
        v160 = 0u;
        outlined copy of Data._Representation(v71, v73);
        BinaryDecodingOptions.init()();
        lazy protocol witness table accessor for type PeerInfoProvider and conformance PeerInfoProvider(&lazy protocol witness table cache variable for type Com_Apple_Siri_Product_Proto_PromptContext and conformance Com_Apple_Siri_Product_Proto_PromptContext, 255, MEMORY[0x1E69D1500], MEMORY[0x1E69D14F8]);
        Message.init(serializedData:extensions:partial:options:)();
        v149 = v71;
        v123 = v146;
        (*(v146 + 56))(v68, 0, 1, v66);
        v124 = v67;
        (*(v123 + 32))(v67, v68, v66);
        v125 = v144;
        (*(v123 + 16))(v144, v124, v66);
        v126 = Logger.logObject.getter();
        v127 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v126, v127))
        {
          v128 = swift_slowAlloc();
          v148 = swift_slowAlloc();
          *&aBlock = v148;
          *v128 = 136315394;
          *(v128 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000085, 0x80000001DCA7C240, &aBlock);
          *(v128 + 12) = 2080;
          v129 = v127;
          v130 = Message.textFormatString()();
          v131 = *(v123 + 8);
          v131(v125, v66);
          v132 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v130._countAndFlagsBits, v130._object, &aBlock);

          *(v128 + 14) = v132;
          _os_log_impl(&dword_1DC659000, v126, v129, "ExecutionOutput: %s: NFCU has prompt context %s", v128, 0x16u);
          v133 = v148;
          swift_arrayDestroy();
          MEMORY[0x1E12A2F50](v133, -1, -1);
          MEMORY[0x1E12A2F50](v128, -1, -1);

          outlined consume of Data._Representation(v149, v73);
          v131(v124, v66);
        }

        else
        {

          outlined consume of Data._Representation(v149, v73);
          v134 = *(v123 + 8);
          v134(v125, v66);
          v134(v124, v66);
        }
      }

      else
      {
        v74 = Logger.logObject.getter();
        v75 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v74, v75))
        {
          v76 = swift_slowAlloc();
          v77 = swift_slowAlloc();
          *&aBlock = v77;
          *v76 = 136315138;
          *(v76 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000085, 0x80000001DCA7C240, &aBlock);
          _os_log_impl(&dword_1DC659000, v74, v75, "ExecutionOutput: %s: NFCU has no (or invalid) prompt context", v76, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v77);
          MEMORY[0x1E12A2F50](v77, -1, -1);
          MEMORY[0x1E12A2F50](v76, -1, -1);
        }
      }

      v78 = type metadata accessor for Parse.DirectInvocation();
      v79 = v150;
      (*(*(v78 - 8) + 56))(v150, 1, 1, v78);
      v80 = type metadata accessor for PommesContext();
      v81 = v151;
      (*(*(v80 - 8) + 56))(v151, 1, 1, v80);
      v83 = v153;
      v82 = v154;
      v84 = v155;
      (*(v154 + 104))(v153, *MEMORY[0x1E69CFF08], v155);
      v85 = type metadata accessor for ExecutionContextUpdate(0);
      v86 = objc_allocWithZone(v85);
      v87 = v152;
      outlined init with copy of ReferenceResolutionClientProtocol?(v81, v152, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
      v88 = v157;
      specialized static ExecutionContextUpdate.synchronizePromptContexts(pommesContext:nativeFlowContextCommand:)(v87, v157);
      *&v86[OBJC_IVAR___SKRExecutionContextUpdate_provideContextCommand] = 0;
      *&v86[OBJC_IVAR___SKRExecutionContextUpdate_nativeFlowContextCommand] = v88;
      *&v86[OBJC_IVAR___SKRExecutionContextUpdate_nluSystemDialogActs] = 0;
      *&v86[OBJC_IVAR___SKRExecutionContextUpdate_nluActiveTasks] = 0;
      *&v86[OBJC_IVAR___SKRExecutionContextUpdate_nluCompletedTasks] = 0;
      outlined init with copy of ReferenceResolutionClientProtocol?(v79, &v86[OBJC_IVAR___SKRExecutionContextUpdate_undoDirectInvocation], &_s11SiriKitFlow5ParseO16DirectInvocationVSgMd, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMR);
      *&v86[OBJC_IVAR___SKRExecutionContextUpdate_rrEntities] = 0;
      outlined init with copy of ReferenceResolutionClientProtocol?(v87, &v86[OBJC_IVAR___SKRExecutionContextUpdate_pommesContext], &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
      (*(v82 + 16))(&v86[OBJC_IVAR___SKRExecutionContextUpdate_contextUpdateScope], v83, v84);
      v89 = &v86[OBJC_IVAR___SKRExecutionContextUpdate_restoreSessionForRequestId];
      *v89 = 0;
      v89[1] = 0;
      v86[OBJC_IVAR___SKRExecutionContextUpdate_executedOnRemoteDevice] = 0;
      v158.receiver = v86;
      v158.super_class = v85;
      v90 = off_1E8646000;
      v91 = [&v158 init];
      (*(v82 + 8))(v83, v84);
      outlined destroy of ReferenceResolutionClientProtocol?(v81, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
      outlined destroy of ReferenceResolutionClientProtocol?(v79, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMd, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMR);
      outlined destroy of ReferenceResolutionClientProtocol?(v87, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
      v92 = v137;
      *&v137[OBJC_IVAR___SKRExecutionOutput_contextUpdate] = v91;
      *&v92[OBJC_IVAR___SKRExecutionOutput_command] = 0;
      v93 = v140;
      v94 = v139;
      v55 = v135;
      v95 = v138;
      v96 = v142;
    }

    else
    {

      if (v53 != -1)
      {
        swift_once();
      }

      v97 = type metadata accessor for Logger();
      __swift_project_value_buffer(v97, static Logger.executor);
      v98 = v55;
      v99 = Logger.logObject.getter();
      v100 = static os_log_type_t.debug.getter();

      v101 = os_log_type_enabled(v99, v100);
      v96 = v142;
      if (v101)
      {
        v102 = swift_slowAlloc();
        v103 = swift_slowAlloc();
        v104 = swift_slowAlloc();
        *&aBlock = v104;
        *v102 = 136315394;
        *(v102 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000085, 0x80000001DCA7C240, &aBlock);
        *(v102 + 12) = 2112;
        *(v102 + 14) = v98;
        v105 = v157;
        *v103 = v157;
        v106 = v98;
        _os_log_impl(&dword_1DC659000, v99, v100, "ExecutionOutput: %s: converting non-context ACE command=%@ to ExecutionOutput", v102, 0x16u);
        outlined destroy of ReferenceResolutionClientProtocol?(v103, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x1E12A2F50](v103, -1, -1);
        __swift_destroy_boxed_opaque_existential_1Tm(v104);
        MEMORY[0x1E12A2F50](v104, -1, -1);
        MEMORY[0x1E12A2F50](v102, -1, -1);

        v93 = v140;
        v94 = v139;
        v90 = 0x1FB2FA000;
      }

      else
      {

        v93 = v140;
        v94 = v139;
        v90 = 0x1FB2FA000;
        v105 = v157;
      }

      v92 = v137;
      *&v137[OBJC_IVAR___SKRExecutionOutput_command] = v105;
      *&v92[OBJC_IVAR___SKRExecutionOutput_contextUpdate] = 0;
      v107 = v98;
      v95 = v138;
    }

    v163.receiver = v92;
    v163.super_class = v95;
    v108 = objc_msgSendSuper2(&v163, v90[390], v135);
    outlined destroy of ReferenceResolutionClientProtocol?(v136, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
    v109 = *(v141 + 8);
    v109(v94, v96);

    outlined destroy of ReferenceResolutionClientProtocol?(v156, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
    v109(v93, v96);
    if (one-time initialization token for ace != -1)
    {
      swift_once();
    }

    v110 = type metadata accessor for Logger();
    __swift_project_value_buffer(v110, static Logger.ace);
    v111 = v55;
    v112 = Logger.logObject.getter();
    v113 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v112, v113))
    {
      v114 = swift_slowAlloc();
      v115 = swift_slowAlloc();
      *&aBlock = v115;
      *v114 = 136315138;
      v116 = [v111 description];
      v117 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v119 = v118;

      v120 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v117, v119, &aBlock);

      *(v114 + 4) = v120;
      _os_log_impl(&dword_1DC659000, v112, v113, "Submitting command via submitAndForget: %s", v114, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v115);
      MEMORY[0x1E12A2F50](v115, -1, -1);
      MEMORY[0x1E12A2F50](v114, -1, -1);
    }

    v121 = v143[2];
    v161 = closure #2 in AceServiceInvokerImpl.submitAndForget(_:setRefId:executionSource:);
    v162 = 0;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v160 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed SABaseCommand?, @guaranteed Error?) -> ();
    *(&v160 + 1) = &block_descriptor_319;
    v122 = _Block_copy(&aBlock);
    [v121 submitWithExecutionOutput:v108 completion:v122];
    _Block_release(v122);
  }
}

uint64_t specialized static SiriKitMetricsUtils.emitSessionStarted(input:eventSender:resultCandidateId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for SiriKitEventPayload();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](specialized static SiriKitMetricsUtils.emitSessionStarted(input:eventSender:resultCandidateId:), 0, 0);
}

uint64_t specialized static SiriKitMetricsUtils.emitSessionStarted(input:eventSender:resultCandidateId:)()
{
  v2 = v0[7];
  v1 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  v6 = v0[3];
  v5 = v0[4];
  v7 = specialized static SiriKitMetricsUtils.extractIntentTypeName(input:)();
  v9 = v8;
  v0[9] = v7;
  v0[10] = v8;
  v13 = v6[3];
  v14 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v13);
  type metadata accessor for SiriKitEvent();
  *v1 = v7;
  v1[1] = v9;
  v1[2] = v5;
  v1[3] = v4;
  (*(v2 + 104))(v1, *MEMORY[0x1E69CFBF0], v3);

  v10 = SiriKitEvent.__allocating_init(_:builder:)();
  v0[11] = v10;
  v11 = swift_task_alloc();
  v0[12] = v11;
  *v11 = v0;
  v11[1] = specialized static SiriKitMetricsUtils.emitSessionStarted(input:eventSender:resultCandidateId:);

  return MEMORY[0x1EEE39338](v10, v13, v14);
}

{

  return MEMORY[0x1EEE6DFA0](specialized static SiriKitMetricsUtils.emitSessionStarted(input:eventSender:resultCandidateId:), 0, 0);
}

{
  v2 = v0[9];
  v1 = v0[10];
  type metadata accessor for CoreAnalyticsService();
  static CoreAnalyticsService.instance.getter();
  v3._countAndFlagsBits = v2;
  v3._object = v1;
  CoreAnalyticsService.sendHandleRequestEvent(intentTypeName:)(v3);

  v4 = v0[1];

  return v4();
}

uint64_t specialized static SiriKitMetricsUtils.extractIntentTypeName(input:)()
{
  v0 = type metadata accessor for Parse.DirectInvocation();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Parse();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  Input.parse.getter();
  v8 = (*(v5 + 88))(v7, v4);
  if (v8 == *MEMORY[0x1E69D0120])
  {
    goto LABEL_2;
  }

  if (v8 == *MEMORY[0x1E69D0160])
  {
    (*(v5 + 96))(v7, v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology8NLIntentV_0A7KitFlow5ParseO16ServerConversionCtMd, &_s12SiriOntology8NLIntentV_0A7KitFlow5ParseO16ServerConversionCtMR);
    v10 = Parse.ServerConversion.siriKitIntent.getter();
    v11 = [v10 typeName];

    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    v13 = type metadata accessor for NLIntent();
    (*(*(v13 - 8) + 8))(v7, v13);
    return v12;
  }

  else if (v8 == *MEMORY[0x1E69D0158])
  {
    (*(v5 + 96))(v7, v4);
    (*(v1 + 32))(v3, v7, v0);
    v17 = Parse.DirectInvocation.identifier.getter();
    v18 = v14;
    v15 = String.init<A>(_:)();
    v17 = 0x203A746365726944;
    v18 = 0xE800000000000000;
    MEMORY[0x1E12A1580](v15);

    v16 = v17;
    (*(v1 + 8))(v3, v0);
    return v16;
  }

  else
  {
    if (v8 == *MEMORY[0x1E69D0128])
    {
LABEL_2:
      (*(v5 + 8))(v7, v4);
      return 0x6573726170204C4ELL;
    }

    (*(v5 + 8))(v7, v4);
    return 0x206E776F6E6B6E55;
  }
}

NSObject *RemoteConversationSpeechData.init(coder:)(NSObject *a1)
{
  ObjectType = swift_getObjectType();
  v131 = type metadata accessor for ExecutionLocation();
  v3 = *(v131 - 8);
  MEMORY[0x1EEE9AC00](v131);
  v5 = &v106 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v106 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v122 = &v106 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v124 = &v106 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v106 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v106 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0C15RedirectContextOSgMd, &_s11SiriKitFlow0C15RedirectContextOSgMR);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v133 = &v106 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v123 = &v106 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v134 = &v106 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes017NLRoutingDecisionB0C27GenAIFallbackSuppressReasonOSgMd, &_s16SiriMessageTypes017NLRoutingDecisionB0C27GenAIFallbackSuppressReasonOSgMR);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v130 = &v106 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v106 - v28;
  MEMORY[0x1EEE9AC00](v30);
  v132 = &v106 - v31;
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSString, 0x1E696AEC0);
  v32 = NSCoder.decodeObject<A>(of:forKey:)();
  if (!v32)
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v45 = type metadata accessor for Logger();
    __swift_project_value_buffer(v45, static Logger.executor);
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_1DC659000, v46, v47, "Could not decode UserInputRequestXPC: Missing rcId", v48, 2u);
      MEMORY[0x1E12A2F50](v48, -1, -1);
    }

    goto LABEL_14;
  }

  v126 = v32;
  v127 = v18;
  v128 = v15;
  v129 = v8;
  v33 = MEMORY[0x1E12A1410](0x7665446E4F727361, 0xEB00000000656369);
  v34 = a1;
  v35 = [a1 containsValueForKey:v33];

  v135 = v34;
  if ((v35 & 1) == 0)
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v49 = type metadata accessor for Logger();
    __swift_project_value_buffer(v49, static Logger.executor);
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.error.getter();
    v52 = os_log_type_enabled(v50, v51);
    v53 = v135;
    if (v52)
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&dword_1DC659000, v50, v51, "Could not decode UserInputRequestXPC: Missing asrOnDevice", v54, 2u);
      MEMORY[0x1E12A2F50](v54, -1, -1);
    }

    v46 = v53;
    a1 = v126;
LABEL_14:

    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return 0;
  }

  v117 = v3;
  v115 = v1;
  v36 = MEMORY[0x1E12A1410](0x7665446E4F727361, 0xEB00000000656369);
  v111 = [v34 decodeBoolForKey:v36];

  type metadata accessor for UserSpecificInfo(0);
  v114 = NSCoder.decodeObject<A>(of:forKey:)();
  v113 = NSCoder.decodeObject<A>(of:forKey:)();
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for AFSpeechPackage, 0x1E698D228);
  v112 = NSCoder.decodeObject<A>(of:forKey:)();
  v121 = NSCoder.decodeObject<A>(of:forKey:)();
  v120 = NSCoder.decodeObject<A>(of:forKey:)();
  v119 = NSCoder.decodeObject<A>(of:forKey:)();
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  v37 = JSONDecoder.init()();
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSData, 0x1E695DEF0);
  v38 = NSCoder.decodeObject<A>(of:forKey:)();
  v39 = type metadata accessor for NLRoutingDecisionMessage.GenAIFallbackSuppressReason();
  v40 = v39;
  v116 = v37;
  if (v38)
  {
    v41 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v43 = v42;
    lazy protocol witness table accessor for type ExecutionLocation and conformance ExecutionLocation(&lazy protocol witness table cache variable for type NLRoutingDecisionMessage.GenAIFallbackSuppressReason and conformance NLRoutingDecisionMessage.GenAIFallbackSuppressReason, MEMORY[0x1E69D0390], MEMORY[0x1E69D03A0]);
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    v44 = v123;

    outlined consume of Data._Representation(v41, v43);
    (*(*(v40 - 8) + 56))(v29, 0, 1, v40);
    outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v29, v132, &_s16SiriMessageTypes017NLRoutingDecisionB0C27GenAIFallbackSuppressReasonOSgMd, &_s16SiriMessageTypes017NLRoutingDecisionB0C27GenAIFallbackSuppressReasonOSgMR);
    v56 = v135;
  }

  else
  {
    (*(*(v39 - 8) + 56))(v132, 1, 1, v39);
    v56 = v135;
    v44 = v123;
  }

  v57 = NSCoder.decodeObject<A>(of:forKey:)();
  v58 = type metadata accessor for FlowRedirectContext();
  v59 = v58;
  if (v57)
  {
    v60 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v62 = v61;
    lazy protocol witness table accessor for type ExecutionLocation and conformance ExecutionLocation(&lazy protocol witness table cache variable for type FlowRedirectContext and conformance FlowRedirectContext, MEMORY[0x1E69CFB38], MEMORY[0x1E69CFB48]);
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();

    outlined consume of Data._Representation(v60, v62);
    (*(*(v59 - 8) + 56))(v44, 0, 1, v59);
    outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v44, v134, &_s11SiriKitFlow0C15RedirectContextOSgMd, &_s11SiriKitFlow0C15RedirectContextOSgMR);
  }

  else
  {
    (*(*(v58 - 8) + 56))(v134, 1, 1, v58);
  }

  v63 = v131;
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  v64 = PropertyListDecoder.init()();
  v65 = NSCoder.decodeObject<A>(of:forKey:)();
  v66 = v124;
  if (v65)
  {
    v67 = v65;
    v68 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v70 = v69;

    lazy protocol witness table accessor for type ExecutionLocation and conformance ExecutionLocation(&lazy protocol witness table cache variable for type ExecutionLocation and conformance ExecutionLocation, MEMORY[0x1E69D35D8], MEMORY[0x1E69D35E8]);
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

    outlined consume of Data._Representation(v68, v70);
    (*(v117 + 32))(v127, v66, v63);
    v56 = v135;
  }

  else
  {
    static ExecutionLocation.unknown.getter();
  }

  v71 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v71)
  {
    v72 = v71;
    v73 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v75 = v74;

    lazy protocol witness table accessor for type ExecutionLocation and conformance ExecutionLocation(&lazy protocol witness table cache variable for type ExecutionLocation and conformance ExecutionLocation, MEMORY[0x1E69D35D8], MEMORY[0x1E69D35E8]);
    v76 = v64;
    v77 = v122;
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
    v78 = v117;

    outlined consume of Data._Representation(v73, v75);
    (*(v78 + 32))(v128, v77, v63);
    v56 = v135;
    v64 = v76;
  }

  else
  {
    static ExecutionLocation.unknown.getter();
    v78 = v117;
  }

  v79 = MEMORY[0x1E12A1410](0xD00000000000001DLL, 0x80000001DCA81AC0);
  LODWORD(v124) = [v56 decodeBoolForKey:v79];

  v80 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v110 = v81;
  if (!v121)
  {
    v122 = 0;
    v117 = 0;
    if (v120)
    {
      goto LABEL_27;
    }

LABEL_29:
    v109 = 0;
    v108 = 0;
    goto LABEL_30;
  }

  v122 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v117 = v82;
  if (!v120)
  {
    goto LABEL_29;
  }

LABEL_27:
  v109 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v108 = v83;
LABEL_30:
  v123 = v64;
  if (v119)
  {
    v107 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v106 = v84;
  }

  else
  {
    v107 = 0;
    v106 = 0;
  }

  v85 = v130;
  outlined init with copy of ReferenceResolutionClientProtocol?(v132, v130, &_s16SiriMessageTypes017NLRoutingDecisionB0C27GenAIFallbackSuppressReasonOSgMd, &_s16SiriMessageTypes017NLRoutingDecisionB0C27GenAIFallbackSuppressReasonOSgMR);
  outlined init with copy of ReferenceResolutionClientProtocol?(v134, v133, &_s11SiriKitFlow0C15RedirectContextOSgMd, &_s11SiriKitFlow0C15RedirectContextOSgMR);
  v86 = *(v78 + 16);
  v87 = v131;
  v86(v129, v127, v131);
  v118 = v5;
  v86(v5, v128, v87);
  v88 = ObjectType;
  v89 = objc_allocWithZone(ObjectType);
  v90 = &v89[OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_rcId];
  v91 = v110;
  *v90 = v80;
  v90[1] = v91;
  v89[OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_asrOnDevice] = v111;
  v92 = v114;
  *&v89[OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_userSpecificInfoForRecognizedUser] = v114;
  v93 = v113;
  *&v89[OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_userSpecificInfoForUserMeetingSessionThreshold] = v113;
  v89[OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_remoteRequestWasMadeInSession] = v124;
  v94 = v112;
  *&v89[OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_speechPackage] = v112;
  v95 = &v89[OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_utterance];
  v96 = v117;
  *v95 = v122;
  v95[1] = v96;
  v97 = &v89[OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_responseLanguageVariant];
  v98 = v108;
  *v97 = v109;
  v97[1] = v98;
  v99 = &v89[OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_requestLanguageVariant];
  v100 = v106;
  *v99 = v107;
  v99[1] = v100;
  outlined init with copy of ReferenceResolutionClientProtocol?(v85, &v89[OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_genAIFallbackSuppressReason], &_s16SiriMessageTypes017NLRoutingDecisionB0C27GenAIFallbackSuppressReasonOSgMd, &_s16SiriMessageTypes017NLRoutingDecisionB0C27GenAIFallbackSuppressReasonOSgMR);
  outlined init with copy of ReferenceResolutionClientProtocol?(v133, &v89[OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_flowRedirectContext], &_s11SiriKitFlow0C15RedirectContextOSgMd, &_s11SiriKitFlow0C15RedirectContextOSgMR);
  v86(&v89[OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_asrLocation], v129, v87);
  v86(&v89[OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_nlLocation], v118, v87);
  v136.receiver = v89;
  v136.super_class = v88;
  v101 = v92;
  v102 = v93;
  v103 = v94;
  v104 = [&v136 init];

  v105 = *(v78 + 8);
  v105(v118, v87);
  v105(v129, v87);
  outlined destroy of ReferenceResolutionClientProtocol?(v133, &_s11SiriKitFlow0C15RedirectContextOSgMd, &_s11SiriKitFlow0C15RedirectContextOSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v130, &_s16SiriMessageTypes017NLRoutingDecisionB0C27GenAIFallbackSuppressReasonOSgMd, &_s16SiriMessageTypes017NLRoutingDecisionB0C27GenAIFallbackSuppressReasonOSgMR);
  v105(v128, v87);
  v105(v127, v87);
  outlined destroy of ReferenceResolutionClientProtocol?(v134, &_s11SiriKitFlow0C15RedirectContextOSgMd, &_s11SiriKitFlow0C15RedirectContextOSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v132, &_s16SiriMessageTypes017NLRoutingDecisionB0C27GenAIFallbackSuppressReasonOSgMd, &_s16SiriMessageTypes017NLRoutingDecisionB0C27GenAIFallbackSuppressReasonOSgMR);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v104;
}

uint64_t lazy protocol witness table accessor for type ExecutionLocation and conformance ExecutionLocation(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t specialized ServiceBridgeErrorHandlingProxy.withErrorHandler(onError:)(uint64_t a1, void (**a2)(void, void))
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  v5 = swift_allocObject();
  *(v5 + 16) = thunk for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSArray?) -> ()partial apply;
  *(v5 + 24) = v4;
  v6 = *(a1 + 16);
  v7 = swift_allocObject();
  *(v7 + 16) = partial apply for closure #1 in ServiceBridgeErrorHandlingProxy.fetchContexts(for:includesNearByDevices:completion:);
  *(v7 + 24) = v5;
  aBlock[4] = closure #1 in ServiceBridgeErrorHandlingProxy.withErrorHandler(onError:)partial apply;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed Error) -> ();
  aBlock[3] = &block_descriptor_155;
  v8 = _Block_copy(aBlock);
  _Block_copy(a2);

  v9 = [v6 remoteObjectProxyWithErrorHandler_];
  _Block_release(v8);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  outlined init with copy of Any(aBlock, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime13ServiceBridge_pMd, &_s14SiriKitRuntime13ServiceBridge_pMR);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1Tm(aBlock);
    v10 = v16;
  }

  else
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
      *v14 = 0;
      _os_log_impl(&dword_1DC659000, v12, v13, "ServiceBridgeXPC proxy is not of type ServiceBridgeXPC. The connection may have been invalidated due to there being no current Siri turn.", v14, 2u);
      MEMORY[0x1E12A2F50](v14, -1, -1);
    }

    a2[2](a2, 0);
    __swift_destroy_boxed_opaque_existential_1Tm(aBlock);

    return 0;
  }

  return v10;
}

{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  v5 = swift_allocObject();
  *(v5 + 16) = thunk for @escaping @callee_unowned @convention(block) @Sendable (@unowned ObjCBool) -> ()partial apply;
  *(v5 + 24) = v4;
  v6 = *(a1 + 16);
  v7 = swift_allocObject();
  *(v7 + 16) = partial apply for closure #1 in ServiceBridgeErrorHandlingProxy.prepareForAudioHandoff(completion:);
  *(v7 + 24) = v5;
  aBlock[4] = closure #1 in ServiceBridgeErrorHandlingProxy.withErrorHandler(onError:)partial apply;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed Error) -> ();
  aBlock[3] = &block_descriptor_195;
  v8 = _Block_copy(aBlock);
  _Block_copy(a2);

  v9 = [v6 remoteObjectProxyWithErrorHandler_];
  _Block_release(v8);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  outlined init with copy of Any(aBlock, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime13ServiceBridge_pMd, &_s14SiriKitRuntime13ServiceBridge_pMR);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1Tm(aBlock);
    v10 = v16;
  }

  else
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
      *v14 = 0;
      _os_log_impl(&dword_1DC659000, v12, v13, "ServiceBridgeXPC proxy is not of type ServiceBridgeXPC. The connection may have been invalidated due to there being no current Siri turn.", v14, 2u);
      MEMORY[0x1E12A2F50](v14, -1, -1);
    }

    a2[2](a2, 0);
    __swift_destroy_boxed_opaque_existential_1Tm(aBlock);

    return 0;
  }

  return v10;
}

{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  v5 = swift_allocObject();
  *(v5 + 16) = _s14SiriKitRuntime39ConversationFlexibleExecutionSupportXPCCIeyBhy_ACIeghg_TRTA_0;
  *(v5 + 24) = v4;
  v6 = *(a1 + 16);
  v7 = swift_allocObject();
  *(v7 + 16) = partial apply for closure #1 in ServiceBridgeErrorHandlingProxy.fetchSpeechInfo(reply:);
  *(v7 + 24) = v5;
  aBlock[4] = closure #1 in ServiceBridgeErrorHandlingProxy.withErrorHandler(onError:)partial apply;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed Error) -> ();
  aBlock[3] = &block_descriptor_135;
  v8 = _Block_copy(aBlock);
  _Block_copy(a2);

  v9 = [v6 remoteObjectProxyWithErrorHandler_];
  _Block_release(v8);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  outlined init with copy of Any(aBlock, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime13ServiceBridge_pMd, &_s14SiriKitRuntime13ServiceBridge_pMR);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1Tm(aBlock);
    v10 = v16;
  }

  else
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
      *v14 = 0;
      _os_log_impl(&dword_1DC659000, v12, v13, "ServiceBridgeXPC proxy is not of type ServiceBridgeXPC. The connection may have been invalidated due to there being no current Siri turn.", v14, 2u);
      MEMORY[0x1E12A2F50](v14, -1, -1);
    }

    a2[2](a2, 0);
    __swift_destroy_boxed_opaque_existential_1Tm(aBlock);

    return 0;
  }

  return v10;
}

{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  v5 = swift_allocObject();
  *(v5 + 16) = thunk for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> ()partial apply;
  *(v5 + 24) = v4;
  v6 = *(a1 + 16);
  v7 = swift_allocObject();
  *(v7 + 16) = partial apply for closure #1 in ServiceBridgeErrorHandlingProxy.retriggerOriginalRequest(withExecutionRequestId:forUserId:givenCurrentExecutionRequestId:reply:);
  *(v7 + 24) = v5;
  aBlock[4] = closure #1 in ServiceBridgeErrorHandlingProxy.withErrorHandler(onError:)partial apply;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed Error) -> ();
  aBlock[3] = &block_descriptor_115;
  v8 = _Block_copy(aBlock);
  _Block_copy(a2);

  v9 = [v6 remoteObjectProxyWithErrorHandler_];
  _Block_release(v8);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  outlined init with copy of Any(aBlock, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime13ServiceBridge_pMd, &_s14SiriKitRuntime13ServiceBridge_pMR);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1Tm(aBlock);
    v10 = v16;
  }

  else
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
      *v14 = 0;
      _os_log_impl(&dword_1DC659000, v12, v13, "ServiceBridgeXPC proxy is not of type ServiceBridgeXPC. The connection may have been invalidated due to there being no current Siri turn.", v14, 2u);
      MEMORY[0x1E12A2F50](v14, -1, -1);
    }

    a2[2](a2, 0);
    __swift_destroy_boxed_opaque_existential_1Tm(aBlock);

    return 0;
  }

  return v10;
}

{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  v5 = swift_allocObject();
  *(v5 + 16) = thunk for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSArray) -> ()partial apply;
  *(v5 + 24) = v4;
  v6 = *(a1 + 16);
  v7 = swift_allocObject();
  *(v7 + 16) = partial apply for closure #1 in ServiceBridgeErrorHandlingProxy.fetchRecentDialogs(reply:);
  *(v7 + 24) = v5;
  aBlock[4] = closure #1 in ServiceBridgeErrorHandlingProxy.withErrorHandler(onError:)partial apply;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed Error) -> ();
  aBlock[3] = &block_descriptor_95;
  v8 = _Block_copy(aBlock);
  _Block_copy(a2);

  v9 = [v6 remoteObjectProxyWithErrorHandler_];
  _Block_release(v8);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  outlined init with copy of Any(aBlock, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime13ServiceBridge_pMd, &_s14SiriKitRuntime13ServiceBridge_pMR);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1Tm(aBlock);
    v10 = v17;
  }

  else
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
      *v14 = 0;
      _os_log_impl(&dword_1DC659000, v12, v13, "ServiceBridgeXPC proxy is not of type ServiceBridgeXPC. The connection may have been invalidated due to there being no current Siri turn.", v14, 2u);
      MEMORY[0x1E12A2F50](v14, -1, -1);
    }

    _Block_copy(a2);
    type metadata accessor for RecentDialog();
    isa = Array._bridgeToObjectiveC()().super.isa;
    (a2)[2](a2, isa);

    _Block_release(a2);
    __swift_destroy_boxed_opaque_existential_1Tm(aBlock);

    return 0;
  }

  return v10;
}

void specialized ServiceBridgeErrorHandlingProxy.fetchContexts(for:includesNearByDevices:completion:)(uint64_t a1, char a2, uint64_t a3, void *a4)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a4;
  _Block_copy(a4);
  v8 = specialized ServiceBridgeErrorHandlingProxy.withErrorHandler(onError:)(a3, a4);
  _Block_release(a4);
  if (v8)
  {
    isa = Set._bridgeToObjectiveC()().super.isa;
    v11[4] = partial apply for thunk for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSArray?) -> ();
    v11[5] = v7;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 1107296256;
    v11[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [AFServiceDeviceContext]?) -> ();
    v11[3] = &block_descriptor_141;
    v10 = _Block_copy(v11);

    [v8 fetchContextsFor:isa includesNearByDevices:a2 & 1 completion:v10];
    swift_unknownObjectRelease();
    _Block_release(v10);
  }

  else
  {
  }
}

uint64_t closure #1 in RemoteConversationService.startTurn(turnData:bridge:reply:)()
{
  v46 = v0;
  v1 = *(v0 + 160);
  *(v0 + 264) = SiriKitRuntimeState.taskService.getter();
  v2 = *(v1 + OBJC_IVAR___SKRConversationTurnDataXPC_flowTask);
  if (v2)
  {
    v3 = v2;
    TaskService.onExistingXPCTask(_:)(v3);
    TaskService.onNewTurn()();
  }

  (*((*MEMORY[0x1E69E7D40] & **(v0 + 160)) + 0xA8))();
  v4 = *(v0 + 232);
  v5 = *(v0 + 152);
  v6 = OBJC_IVAR____TtC14SiriKitRuntime25RemoteConversationService_state;
  swift_beginAccess();
  outlined init with copy of RemoteConversationService.State(v5 + v6, v4, type metadata accessor for RemoteConversationService.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v15 = *(v0 + 232);
    v42 = *(v15 + 40);
    v43 = *(v15 + 56);
    v16 = *(v15 + 80);
    v44 = *(v15 + 72);
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v17 = *(v0 + 240);
    v18 = *(v0 + 248);
    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, static Logger.executor);
    outlined init with copy of RemoteConversationService.State(v18, v17, type metadata accessor for RemoteConversationTurnData);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.debug.getter();
    v22 = os_log_type_enabled(v20, v21);
    v23 = *(v0 + 240);
    if (v22)
    {
      v24 = swift_slowAlloc();
      v40 = v16;
      v25 = swift_slowAlloc();
      v45 = v25;
      *v24 = 136380675;
      v26 = *v23;
      v27 = v23[1];

      outlined destroy of RemoteConversationService.State(v23, type metadata accessor for RemoteConversationTurnData);
      v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, &v45);

      *(v24 + 4) = v28;
      _os_log_impl(&dword_1DC659000, v20, v21, "Multiple StartTurns while awaiting input. New executionRequestId=%{private}s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v25);
      v29 = v25;
      v16 = v40;
      MEMORY[0x1E12A2F50](v29, -1, -1);
      MEMORY[0x1E12A2F50](v24, -1, -1);
    }

    else
    {

      outlined destroy of RemoteConversationService.State(v23, type metadata accessor for RemoteConversationTurnData);
    }

    v37 = *(v0 + 224);
    v9 = *(v0 + 232);
    RemoteConversationService.makeTurn(turnData:bridge:)(*(v0 + 248), *(v0 + 168), v37);
    *(v37 + 40) = v42;
    *(v37 + 56) = v43;
    *(v37 + 72) = v44;
    *(v37 + 80) = v16;
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    outlined assign with take of RemoteConversationService.State(v37, v5 + v6);
    swift_endAccess();
    goto LABEL_17;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v8 = *(v0 + 248);
    v10 = *(v0 + 224);
    v9 = *(v0 + 232);
    v11 = *(v0 + 168);
    v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime21ConversationTurnState_p04turnF0_AA14Conversational_p12conversationAA0A7RequestV7requesttMd, &_s14SiriKitRuntime21ConversationTurnState_p04turnF0_AA14Conversational_p12conversationAA0A7RequestV7requesttMR) + 64);
    outlined init with take of ReferenceResolutionClientProtocol((v9 + 40), v0 + 16);
    RemoteConversationService.makeTurn(turnData:bridge:)(v8, v11, v10);
    outlined init with take of ReferenceResolutionClientProtocol((v0 + 16), (v10 + 5));
    type metadata accessor for RemoteConversationService.FlowAndInputRegistry();
    v13 = swift_allocObject();
    v14 = MEMORY[0x1E69E7CC8];
    *(v13 + 16) = MEMORY[0x1E69E7CC8];
    *(v13 + 24) = v14;
    v10[10] = v13;
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    outlined assign with take of RemoteConversationService.State(v10, v5 + v6);
    swift_endAccess();
    outlined destroy of RemoteConversationService.State(v9 + v12, type metadata accessor for SiriRequest);
LABEL_17:
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    goto LABEL_18;
  }

  v30 = *(v0 + 224);
  RemoteConversationService.makeTurn(turnData:bridge:)(*(v0 + 248), *(v0 + 168), v30);
  type metadata accessor for RemoteConversationService.FlowAndInputRegistry();
  *(v30 + 40) = 0u;
  *(v30 + 56) = 0u;
  *(v30 + 72) = 0;
  v31 = swift_allocObject();
  v32 = MEMORY[0x1E69E7CC8];
  *(v31 + 16) = MEMORY[0x1E69E7CC8];
  *(v31 + 24) = v32;
  *(v30 + 80) = v31;
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  outlined assign with take of RemoteConversationService.State(v30, v5 + v6);
  swift_endAccess();
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
    _os_log_impl(&dword_1DC659000, v34, v35, "Turn Started.", v36, 2u);
    MEMORY[0x1E12A2F50](v36, -1, -1);
  }

LABEL_18:
  type metadata accessor for SiriEnvironment();
  static SiriEnvironment.root.getter();
  *(v0 + 272) = SiriEnvironment.callState.getter();

  v41 = (*MEMORY[0x1E69D0088] + MEMORY[0x1E69D0088]);
  v38 = swift_task_alloc();
  *(v0 + 280) = v38;
  *v38 = v0;
  v38[1] = closure #1 in RemoteConversationService.startTurn(turnData:bridge:reply:);

  return v41();
}

{
  v1 = v0[31];
  v3 = v0[25];
  v2 = v0[26];
  v8 = v0[24];
  v4 = v0[22];
  v5 = v0[19];
  type metadata accessor for ConversationSELFHelper();
  static ConversationSELFHelper.makeUUID(fromExecutionRequestId:)();
  __swift_project_boxed_opaque_existential_1((v5 + 120), *(v5 + 144));
  dispatch thunk of ReferenceResolutionClientProtocol.inRequest(requestId:)();
  v4(0);

  (*(v3 + 8))(v2, v8);
  outlined destroy of RemoteConversationService.State(v1, type metadata accessor for RemoteConversationTurnData);

  v6 = v0[1];

  return v6();
}

{
  v1 = *(*v0 + 256);

  return MEMORY[0x1EEE6DFA0](closure #1 in RemoteConversationService.startTurn(turnData:bridge:reply:), v1, 0);
}

uint64_t RemoteConversationService.makeTurn(turnData:bridge:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v64 = a2;
  v65 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v68 = &v50 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v67 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v66 = &v50 - v10;
  v11 = type metadata accessor for InvocationStateImpl(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v63 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v50 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v50 - v17;
  v19 = type metadata accessor for RemoteConversationTurnData(0);
  v20 = v19;
  v21 = *(a1 + *(v19 + 48));
  if (v21)
  {
    v22 = *(a1 + *(v19 + 32));
    v23 = *a1;
    v24 = a1[1];
    v25 = v21;
    v26 = v22;

    v59 = v26;
    v61 = v24;
    v62 = v23;
    InvocationStateImpl.init(proxiedRequestContext:localRequestContextData:executionRequestId:)(v25, v26, v23, v24, v18);
  }

  else
  {
    v27 = *a1;
    v28 = a1[1];
    v29 = *(a1 + *(v19 + 32));
    v72 = 0;
    v70 = 0u;
    v71 = 0u;

    v30 = v29;
    v61 = v28;
    v62 = v27;
    v59 = v30;
    InvocationStateImpl.init(executionRequestId:requestContextData:previousInvocationState:)(v27, v28, v30, &v70, v18);
  }

  v31 = *(v3 + 72);
  v32 = a1[3];
  v58 = a1[2];
  v53 = v32;
  v34 = v20[6];
  v33 = v20[7];
  outlined init with copy of RemoteConversationService.State(v18, v15, type metadata accessor for InvocationStateImpl);
  v35 = v20[9];
  v36 = (a1 + v20[13]);
  v38 = *v36;
  v37 = v36[1];
  v55 = v38;
  v57 = v15;
  v54 = v37;
  v56 = *(a1 + v20[11]);
  SiriKitRuntimeState.invalidateCurrentTurn()();
  SiriKitRuntimeState.taskService.getter();
  TaskService.onNewTurn()();

  v60 = v18;
  outlined init with copy of ReferenceResolutionClientProtocol?(a1 + v34, v66, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined init with copy of ReferenceResolutionClientProtocol?(a1 + v33, v68, &_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR);
  v51 = *(v31 + 136);
  outlined init with copy of ReferenceResolutionClientProtocol?(a1 + v35, v67, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined init with copy of ReferenceResolutionClientProtocol?(v31 + 56, &v70, &_s11SiriKitFlow0aB12EventSending_pSgMd, &_s11SiriKitFlow0aB12EventSending_pSgMR);
  outlined init with copy of ReferenceResolutionClientProtocol(v31 + 96, v69);
  v39 = type metadata accessor for ConversationTurnStateImpl(0);
  v52 = swift_allocObject();
  v40 = v63;
  outlined init with copy of RemoteConversationService.State(v15, v63, type metadata accessor for InvocationStateImpl);
  swift_getObjectType();
  v41 = v53;

  v42 = v59;
  v43 = v61;

  v44 = v55;
  v45 = v54;
  outlined copy of Data?(v55, v54);
  v46 = swift_unknownObjectRetain();
  v47 = specialized ConversationTurnStateImpl.init(bridge:executionRequestId:rootRequestId:sessionId:sessionConfiguration:taskService:conversationLoggingId:invocationState:customEventSender:requestContextData:invokedByPeerToPeerEORR:rrClient:scopedRRData:)(v46, v62, v43, v58, v41, v66, v68, v51, v67, v40, &v70, v42, v56, v69, v44, v45, v52);
  outlined consume of Data?(v44, v45);
  swift_unknownObjectRelease();

  ConversationTurnStateImpl.setSiriKitFlowGlobals()();
  *(&v71 + 1) = v39;
  v72 = &protocol witness table for ConversationTurnStateImpl;
  *&v70 = v47;
  swift_beginAccess();

  outlined assign with take of (Input, AnyFlow, SiriEnvironment)(&v70, v31 + 16, &_s14SiriKitRuntime21ConversationTurnState_pSgMd, &_s14SiriKitRuntime21ConversationTurnState_pSgMR);
  swift_endAccess();
  v48 = v65;
  v65[3] = v39;
  v48[4] = &protocol witness table for ConversationTurnStateImpl;
  *v48 = v47;
  outlined destroy of RemoteConversationService.State(v60, type metadata accessor for InvocationStateImpl);
  return outlined destroy of RemoteConversationService.State(v57, type metadata accessor for InvocationStateImpl);
}

void DirectFlowPluginLoaderImpl.loadFlowPlugin(path:)(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  swift_beginAccess();
  v7 = *(v3 + 16);
  if (*(v7 + 16))
  {
    v8 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
    if (v9)
    {
      outlined init with copy of FlowPluginAndBundle(*(v7 + 56) + 80 * v8, &v42);
      swift_endAccess();
      v10 = v45;
      *(a3 + 32) = v44;
      *(a3 + 48) = v10;
      *(a3 + 64) = v46;
      v11 = v43;
      *a3 = v42;
      *(a3 + 16) = v11;
      *(a3 + 80) = 1;
      return;
    }
  }

  swift_endAccess();
  v12 = objc_allocWithZone(MEMORY[0x1E696AAE8]);
  v13 = MEMORY[0x1E12A1410](a1, a2);
  v14 = [v12 initWithPath_];

  if (!v14)
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    __swift_project_value_buffer(v27, static Logger.executor);

    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *&v42 = v31;
      *v30 = 136315138;
      *(v30 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v42);
      _os_log_impl(&dword_1DC659000, v28, v29, "Failed to load bundle at path %s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v31);
      MEMORY[0x1E12A2F50](v31, -1, -1);
      MEMORY[0x1E12A2F50](v30, -1, -1);
    }

    goto LABEL_26;
  }

  if (![v14 principalClass])
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    __swift_project_value_buffer(v32, static Logger.executor);

    v19 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v19, v33))
    {
      goto LABEL_25;
    }

    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *&v42 = v35;
    *v34 = 136315138;
    *(v34 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v42);
    _os_log_impl(&dword_1DC659000, v19, v33, "Failed bundle at path %s has no principal class", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v35);
    MEMORY[0x1E12A2F50](v35, -1, -1);
    v26 = v34;
    goto LABEL_24;
  }

  ObjCClassMetadata = swift_getObjCClassMetadata();
  v16 = swift_conformsToProtocol2();
  if (v16)
  {
    v17 = ObjCClassMetadata == 0;
  }

  else
  {
    v17 = 1;
  }

  if (v17)
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static Logger.executor);

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v19, v20))
    {
      goto LABEL_25;
    }

    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *&v42 = v22;
    *v21 = 136315394;
    *(v21 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v42);
    *(v21 + 12) = 2080;
    v40[0] = ObjCClassMetadata;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_syXlXpMd, &_syXlXpMR);
    v23 = String.init<A>(describing:)();
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, &v42);

    *(v21 + 14) = v25;
    _os_log_impl(&dword_1DC659000, v19, v20, "Principal class for plugin bundle at %s is not a FlowPlugin: %s", v21, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v22, -1, -1);
    v26 = v21;
LABEL_24:
    MEMORY[0x1E12A2F50](v26, -1, -1);
LABEL_25:

LABEL_26:
    *(a3 + 80) = 0;
    *(a3 + 48) = 0u;
    *(a3 + 64) = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
    return;
  }

  v41[3] = ObjCClassMetadata;
  v41[4] = v16;
  __swift_allocate_boxed_opaque_existential_0(v41);
  dispatch thunk of FlowPlugin.init()();
  v36 = [v14 infoDictionary];
  if (v36)
  {
    v37 = v36;
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  }

  static IntentTopic.makeFromBundleInfoPlist(dictionary:)();

  outlined init with copy of ReferenceResolutionClientProtocol(v41, &v42);
  *&v46 = type metadata accessor for FlowPluginBundleImpl();
  *(&v46 + 1) = MEMORY[0x1E69CFB90];
  __swift_allocate_boxed_opaque_existential_0(&v44 + 1);

  FlowPluginBundleImpl.init(bundlePath:supportedTopics:)();
  outlined init with copy of FlowPluginAndBundle(&v42, v40);
  swift_beginAccess();

  specialized Dictionary.subscript.setter(v40, a1, a2);
  swift_endAccess();

  v38 = v45;
  *(a3 + 32) = v44;
  *(a3 + 48) = v38;
  *(a3 + 64) = v46;
  v39 = v43;
  *a3 = v42;
  *(a3 + 16) = v39;
  *(a3 + 80) = 0;
  __swift_destroy_boxed_opaque_existential_1Tm(v41);
}

uint64_t closure #1 in SharedFlowPluginService.loadFlowPlugin(bundleId:bundlePath:rcId:hypothesisId:reply:)()
{
  v62 = v0;
  v1 = &unk_1EE159000;
  if (*(v0 + 440))
  {
    v2 = *(v0 + 520);
    v4 = *(v0 + 504);
    v3 = *(v0 + 512);
    outlined init with copy of ReferenceResolutionClientProtocol?(*(v0 + 448), v4, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    if ((*(v2 + 48))(v4, 1, v3) != 1)
    {
      v20 = *(v0 + 528);
      v21 = *(v0 + 520);
      v22 = *(v0 + 512);
      v24 = *(v0 + 472);
      v23 = *(v0 + 480);
      v25 = *(v0 + 424);
      (*(v21 + 32))(v20, *(v0 + 504), v22);
      type metadata accessor for ConversationSELFHelper();
      static ConversationSELFHelper.shared.getter();
      v26 = swift_task_alloc();
      v26[2] = v25;
      v26[3] = v24;
      v1 = &unk_1EE159000;
      v26[4] = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime19FlowPluginAndBundleVSgMd, &_s14SiriKitRuntime19FlowPluginAndBundleVSgMR);
      dispatch thunk of ConversationSELFHelper.withExecutionFlowPluginLoadTime<A>(rcId:pluginId:hypothesisId:_:)();

      (*(v21 + 8))(v20, v22);
      goto LABEL_13;
    }

    outlined destroy of ReferenceResolutionClientProtocol?(*(v0 + 504), &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  }

  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.executor);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_1DC659000, v6, v7, "SharedFlowPluginService: Got loadFlowPlugin call without an rcId or hypothesisId. Likely a plugin signal, not associated with an RC.", v8, 2u);
    MEMORY[0x1E12A2F50](v8, -1, -1);
  }

  v10 = *(v0 + 472);
  v9 = *(v0 + 480);
  v11 = *(v0 + 424);

  v12 = v11[5];
  v13 = v11[6];
  __swift_project_boxed_opaque_existential_1(v11 + 2, v12);
  (*(v13 + 8))(v10, v9, v12, v13);
  v14 = *(v0 + 40);
  if (v14)
  {
    v15 = *(v0 + 16);
    v16 = *(v0 + 32);
    v17 = *(v0 + 48);
    v18 = *(v0 + 64);
    v19 = *(v0 + 80);
  }

  else
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v0 + 16, &_s14SiriKitRuntime19FlowPluginAndBundleV06pluginfG0_Sb10wasInCachetSgMd, &_s14SiriKitRuntime19FlowPluginAndBundleV06pluginfG0_Sb10wasInCachetSgMR);
    v16 = 0;
    v15 = 0uLL;
    v17 = 0uLL;
    v18 = 0uLL;
    v19 = 0uLL;
  }

  *(v0 + 104) = v15;
  *(v0 + 120) = v16;
  *(v0 + 128) = v14;
  *(v0 + 136) = v17;
  *(v0 + 152) = v18;
  *(v0 + 168) = v19;
LABEL_13:
  outlined init with copy of ReferenceResolutionClientProtocol?(v0 + 104, v0 + 264, &_s14SiriKitRuntime19FlowPluginAndBundleVSgMd, &_s14SiriKitRuntime19FlowPluginAndBundleVSgMR);
  if (*(v0 + 288))
  {
    v27 = *(v0 + 464);
    v28 = *(v0 + 424);
    v59 = *(v0 + 456);
    v29 = *(v0 + 264);
    *(v0 + 200) = *(v0 + 280);
    v30 = *(v0 + 312);
    *(v0 + 216) = *(v0 + 296);
    *(v0 + 232) = v30;
    *(v0 + 248) = *(v0 + 328);
    *(v0 + 184) = v29;
    v58 = type metadata accessor for RemoteConversationService(0);
    outlined init with copy of ReferenceResolutionClientProtocol(v0 + 184, v0 + 344);
    outlined init with copy of ReferenceResolutionClientProtocol(v0 + 224, v0 + 384);
    v31 = *(v28 + 64);
    v32 = swift_allocObject();
    swift_weakInit();
    type metadata accessor for SnippetManager();
    memset(v60, 0, sizeof(v60));
    v61 = 0;

    v33 = static SnippetManager.sharedInstance.getter();
    v35 = *(v0 + 368);
    v34 = *(v0 + 376);
    v36 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 344, v35);
    v38 = *(v0 + 408);
    v37 = *(v0 + 416);
    v39 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 384, v38);
    specialized RemoteConversationService.__allocating_init(flowPlugin:pluginId:flowPluginBundle:siriKitRuntime:turnDataProvider:snippetManager:overrideRRClient:)(v36, v59, v27, v39, v31, partial apply for closure #2 in closure #1 in SharedFlowPluginService.loadFlowPlugin(bundleId:bundlePath:rcId:hypothesisId:reply:), v32, v33, v60, v58, v35, v38, v34, v37);

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 384));
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 344));

    SharedFlowPluginService.postSelectedFlowPlugin(bundleId:)(v59, v27);
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
      v44 = *(v0 + 456);
      v43 = *(v0 + 464);
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      *&v60[0] = v46;
      *v45 = 136315138;
      *(v45 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v43, v60);
      _os_log_impl(&dword_1DC659000, v41, v42, "SharedFlowPluginService: Found flow for bundleId=%s", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v46);
      MEMORY[0x1E12A2F50](v46, -1, -1);
      MEMORY[0x1E12A2F50](v45, -1, -1);
    }

    v47 = *(v0 + 488);

    v47(v48);

    outlined destroy of FlowPluginAndBundle(v0 + 184);
  }

  else
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v0 + 264, &_s14SiriKitRuntime19FlowPluginAndBundleVSgMd, &_s14SiriKitRuntime19FlowPluginAndBundleVSgMR);
    if (v1[389] != -1)
    {
      swift_once();
    }

    v49 = type metadata accessor for Logger();
    __swift_project_value_buffer(v49, static Logger.executor);

    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v50, v51))
    {
      v53 = *(v0 + 456);
      v52 = *(v0 + 464);
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      *&v60[0] = v55;
      *v54 = 136315138;
      *(v54 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v52, v60);
      _os_log_impl(&dword_1DC659000, v50, v51, "SharedFlowPluginService: No flow found for bundleId=%s", v54, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v55);
      MEMORY[0x1E12A2F50](v55, -1, -1);
      MEMORY[0x1E12A2F50](v54, -1, -1);
    }

    (*(v0 + 488))(0);
  }

  outlined destroy of ReferenceResolutionClientProtocol?(v0 + 104, &_s14SiriKitRuntime19FlowPluginAndBundleVSgMd, &_s14SiriKitRuntime19FlowPluginAndBundleVSgMR);

  v56 = *(v0 + 8);

  return v56();
}

{
  v1 = *(*(v0 + 424) + 72);
  *(v0 + 544) = v1;
  return MEMORY[0x1EEE6DFA0](closure #1 in SharedFlowPluginService.loadFlowPlugin(bundleId:bundlePath:rcId:hypothesisId:reply:), v1, 0);
}

{
  v1 = SharedFlowPluginService.WarmupTracker.warmupTask.getter();
  *(v0 + 552) = v1;
  v2 = swift_task_alloc();
  *(v0 + 560) = v2;
  *v2 = v0;
  v2[1] = closure #1 in SharedFlowPluginService.loadFlowPlugin(bundleId:bundlePath:rcId:hypothesisId:reply:);
  v3 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DA40](v2, v1, v3);
}

{
  v1 = *(*v0 + 544);

  return MEMORY[0x1EEE6DFA0](closure #1 in SharedFlowPluginService.loadFlowPlugin(bundleId:bundlePath:rcId:hypothesisId:reply:), v1, 0);
}

{
  return MEMORY[0x1EEE6DFA0](closure #1 in SharedFlowPluginService.loadFlowPlugin(bundleId:bundlePath:rcId:hypothesisId:reply:), *(v0 + 536), 0);
}

uint64_t sub_1DC6DBA28()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t storeEnumTagSinglePayload for SiriRequestContext(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *specialized RemoteConversationService.__allocating_init(flowPlugin:pluginId:flowPluginBundle:siriKitRuntime:turnDataProvider:snippetManager:overrideRRClient:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v31 = a7;
  v32 = a8;
  v29 = a5;
  v30 = a6;
  v27 = a2;
  v28 = a3;
  v25 = a14;
  v26 = a13;
  v16 = *(a12 - 8);
  MEMORY[0x1EEE9AC00](a10);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a11 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v25 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = swift_allocObject();
  (*(v19 + 16))(v22, a1, a11);
  (*(v16 + 16))(v18, a4, a12);
  return specialized RemoteConversationService.init(flowPlugin:pluginId:flowPluginBundle:siriKitRuntime:turnDataProvider:snippetManager:overrideRRClient:)(v22, v27, v28, v18, v29, v30, v31, v32, a9, v23, a11, a12, v26, v25);
}

uint64_t type metadata accessor for AsyncSerialQueue(uint64_t a1)
{
  result = type metadata singleton initialization cache for AsyncSerialQueue;
  if (!type metadata singleton initialization cache for AsyncSerialQueue)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t closure #1 in RemoteConversationService.init(flowPlugin:pluginId:flowPluginBundle:siriKitRuntime:turnDataProvider:snippetManager:overrideRRClient:)()
{
  ReactiveUIEventActor.run()();
  v1 = *(v0 + 8);

  return v1();
}

{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = static ReactiveUIEventActor.shared;
  *(v0 + 16) = static ReactiveUIEventActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in RemoteConversationService.init(flowPlugin:pluginId:flowPluginBundle:siriKitRuntime:turnDataProvider:snippetManager:overrideRRClient:), v1, 0);
}

{
  return MEMORY[0x1EEE6DFA0](closure #1 in RemoteConversationService.init(flowPlugin:pluginId:flowPluginBundle:siriKitRuntime:turnDataProvider:snippetManager:overrideRRClient:), 0, 0);
}

uint64_t closure #1 in FlowExtensionConnection.withRemoteConversationConnection<A>(execute:)(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = (a2 + *a2);
  v9 = swift_task_alloc();
  *(v5 + 16) = v9;
  *v9 = v5;
  v9[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return v11(a1, a4, a5);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed @Sendable @async (@guaranteed RemoteConversationXPC) -> (@error @owned Error)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 16);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return thunk for @escaping @callee_guaranteed @Sendable @async (@guaranteed RemoteConversationXPC) -> (@error @owned Error)(a1, a2, a3, v8);
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable @async (@guaranteed RemoteConversationXPC) -> (@error @owned Error)(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return v8(a2);
}

uint64_t closure #1 in RemoteConversationClient.startTurn(turnData:bridge:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = *(type metadata accessor for RemoteConversationTurnData(0) - 8);
  v4[6] = v5;
  v4[7] = *(v5 + 64);
  v4[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in RemoteConversationClient.startTurn(turnData:bridge:), 0, 0);
}

uint64_t closure #1 in closure #1 in RemoteConversationClient.startTurn(turnData:bridge:)(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v29 = a5;
  v30 = a1;
  v34 = a2;
  v8 = type metadata accessor for RemoteConversationTurnData(0);
  v31 = *(v8 - 8);
  v9 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v27 - v14;
  v33 = MEMORY[0x1E12A1410](*a3, a3[1], v13);
  v28 = a4;
  ObjectType = swift_getObjectType();
  v32 = ServiceBridgeDelegate.xpcWrapper.getter(ObjectType, a5);
  (*(v11 + 16))(v15, v30, v10);
  _s14SiriKitRuntime26RemoteConversationTurnDataVWOcTm_2(a3, &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for RemoteConversationTurnData);
  v17 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v18 = (v12 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = (*(v31 + 80) + v18 + 8) & ~*(v31 + 80);
  v20 = swift_allocObject();
  (*(v11 + 32))(v20 + v17, v15, v10);
  v21 = v34;
  *(v20 + v18) = v34;
  outlined init with take of RemoteConversationTurnData(&v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19);
  v22 = (v20 + ((v9 + v19 + 7) & 0xFFFFFFFFFFFFFFF8));
  v23 = v29;
  *v22 = v28;
  v22[1] = v23;
  aBlock[4] = partial apply for closure #1 in closure #1 in closure #1 in RemoteConversationClient.startTurn(turnData:bridge:);
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_175;
  v24 = _Block_copy(aBlock);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();

  v25 = v33;
  [v21 startTurnFromCacheWithExecutionRequestId:v33 bridge:v32 reply:v24];
  _Block_release(v24);

  return swift_unknownObjectRelease();
}

uint64_t sub_1DC6DC43C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v2 = *(v1 - 8);
  v21 = *(v2 + 80);
  v3 = (v21 + 16) & ~v21;
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = type metadata accessor for RemoteConversationTurnData(0);
  v20 = *(*(v5 - 1) + 80);
  v18 = *(*(v5 - 1) + 64);
  (*(v2 + 8))(v0 + v3, v1);
  swift_unknownObjectRelease();
  v19 = (v4 + v20 + 8) & ~v20;
  v6 = v0 + v19;

  v7 = v5[6];
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (!v10(v0 + v19 + v7, 1, v8))
  {
    (*(v9 + 8))(v6 + v7, v8);
  }

  v11 = v5[7];
  v12 = type metadata accessor for SessionConfiguration();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v6 + v11, 1, v12))
  {
    (*(v13 + 8))(v6 + v11, v12);
  }

  v14 = v5[9];
  if (!v10(v6 + v14, 1, v8))
  {
    (*(v9 + 8))(v6 + v14, v8);
  }

  v15 = (v6 + v5[13]);
  v16 = v15[1];
  if (v16 >> 60 != 15)
  {
    outlined consume of Data._Representation(*v15, v16);
  }

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, ((v18 + v19 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v21 | v20 | 7);
}

uint64_t partial apply for specialized closure #1 in static AsyncTaskUtils.withCheckedRethrowingContinuation<A>(body:)(uint64_t a1)
{
  return specialized closure #1 in static AsyncTaskUtils.withCheckedRethrowingContinuation<A>(body:)(a1, *(v1 + 16));
}

{
  return specialized closure #1 in static AsyncTaskUtils.withCheckedRethrowingContinuation<A>(body:)(a1, *(v1 + 16));
}

{
  return specialized closure #1 in static AsyncTaskUtils.withCheckedRethrowingContinuation<A>(body:)(a1, *(v1 + 16));
}

{
  return specialized closure #1 in static AsyncTaskUtils.withCheckedRethrowingContinuation<A>(body:)(a1, *(v1 + 16));
}

{
  return specialized closure #1 in static AsyncTaskUtils.withCheckedRethrowingContinuation<A>(body:)(a1, *(v1 + 16));
}

{
  return specialized closure #1 in static AsyncTaskUtils.withCheckedRethrowingContinuation<A>(body:)(a1, *(v1 + 16));
}

uint64_t partial apply for closure #1 in ReactiveUIEventActor.run()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return closure #1 in ReactiveUIEventActor.run()(a1, v4, v5, v6);
}

uint64_t closure #1 in ReactiveUIEventActor.run()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy16EncoreXPCService0A5EventCGMd, &_sScSy16EncoreXPCService0A5EventCGMR);
  v4[4] = v6;
  v4[5] = *(v6 - 8);
  v4[6] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy16EncoreXPCService0B5EventC_GMd, &_sScS8IteratorVy16EncoreXPCService0B5EventC_GMR);
  v4[7] = v7;
  v4[8] = *(v7 - 8);
  v4[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in ReactiveUIEventActor.run(), a4, 0);
}

uint64_t closure #1 in ReactiveUIEventActor.run()()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  type metadata accessor for EncoreService();
  v4 = dispatch thunk of static EncoreService.service.getter();
  dispatch thunk of AsyncService.events.getter();

  AsyncStream.makeAsyncIterator()();
  v5 = (*(v2 + 8))(v1, v3);
  v7 = lazy protocol witness table accessor for type ReactiveUIEventActor and conformance ReactiveUIEventActor(v5, v6);
  v0[10] = v7;
  v8 = v0[3];
  v9 = swift_task_alloc();
  v0[11] = v9;
  *v9 = v0;
  v9[1] = closure #1 in ReactiveUIEventActor.run();
  v10 = v0[7];

  return MEMORY[0x1EEE6D9C8](v0 + 2, v8, v7, v10);
}

{
  v1 = *(*v0 + 24);

  return MEMORY[0x1EEE6DFA0](closure #1 in ReactiveUIEventActor.run(), v1, 0);
}

{
  v1 = v0[2];
  if (v1)
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static Logger.executor);
    v3 = v1;
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 138412290;
      *(v6 + 4) = v3;
      *v7 = v1;
      v8 = v3;
      _os_log_impl(&dword_1DC659000, v4, v5, "[ReactiveEventActor] Got Event %@", v6, 0xCu);
      outlined destroy of NSObject?(v7);
      MEMORY[0x1E12A2F50](v7, -1, -1);
      MEMORY[0x1E12A2F50](v6, -1, -1);
    }

    ReactiveUIEventActor.deliver(event:)(v3);
    v9 = v0[10];
    v10 = v0[3];
    v11 = swift_task_alloc();
    v0[11] = v11;
    *v11 = v0;
    v11[1] = closure #1 in ReactiveUIEventActor.run();
    v12 = v0[7];

    return MEMORY[0x1EEE6D9C8](v0 + 2, v10, v9, v12);
  }

  else
  {
    (*(v0[8] + 8))(v0[9], v0[7]);

    v13 = v0[1];

    return v13();
  }
}

unint64_t type metadata accessor for FLOWSchemaFLOWDomainContext()
{
  result = lazy cache variable for type metadata for FLOWSchemaFLOWDomainContext;
  if (!lazy cache variable for type metadata for FLOWSchemaFLOWDomainContext)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for FLOWSchemaFLOWDomainContext);
  }

  return result;
}

double closure #1 in closure #1 in SharedFlowPluginService.loadFlowPlugin(bundleId:bundlePath:rcId:hypothesisId:reply:)@<D0>(void (*a1)(char *)@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _OWORD *a6@<X8>)
{
  v20[1] = a2;
  v21 = a1;
  v10 = type metadata accessor for FlowPluginLoadResult();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a3[5];
  v15 = a3[6];
  __swift_project_boxed_opaque_existential_1(a3 + 2, v14);
  (*(v15 + 8))(&v22, a4, a5, v14, v15);
  if (*(&v23 + 1))
  {
    v30 = v25;
    v31 = v26;
    v28 = v23;
    v29 = v24;
    v27 = v22;
    FlowPluginLoadResult.init(success:wasInCache:)();
    v21(v13);
    (*(v11 + 8))(v13, v10);
    v16 = v28;
    v17 = v30;
    v18 = v31;
    a6[2] = v29;
    a6[3] = v17;
    a6[4] = v18;
    *a6 = v27;
    a6[1] = v16;
  }

  else
  {
    outlined destroy of ReferenceResolutionClientProtocol?(&v22, &_s14SiriKitRuntime19FlowPluginAndBundleV06pluginfG0_Sb10wasInCachetSgMd, &_s14SiriKitRuntime19FlowPluginAndBundleV06pluginfG0_Sb10wasInCachetSgMR);
    FlowPluginLoadResult.init(success:wasInCache:)();
    v21(v13);
    (*(v11 + 8))(v13, v10);
    *&v16 = 0;
    a6[3] = 0u;
    a6[4] = 0u;
    a6[1] = 0u;
    a6[2] = 0u;
    *a6 = 0u;
  }

  return *&v16;
}

uint64_t initializeWithCopy for SiriRequestContext(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  *(a1 + 24) = v4;
  (**(v4 - 8))();
  v5 = *(a2 + 64);
  *(a1 + 64) = v5;
  (**(v5 - 8))(a1 + 40, a2 + 40);
  return a1;
}

uint64_t getEnumTagSinglePayload for SiriRequestContext(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

void *specialized RemoteConversationService.init(flowPlugin:pluginId:flowPluginBundle:siriKitRuntime:turnDataProvider:snippetManager:overrideRRClient:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v43 = a8;
  v46 = a7;
  v44 = a6;
  v42 = a5;
  v40 = a3;
  v39 = a2;
  v41 = a9;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v45 = &v38 - v17;
  v18 = type metadata accessor for Logger();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51[3] = a11;
  v51[4] = a13;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v51);
  (*(*(a11 - 8) + 32))(boxed_opaque_existential_0, a1, a11);
  v50[3] = a12;
  v50[4] = a14;
  v23 = __swift_allocate_boxed_opaque_existential_0(v50);
  (*(*(a12 - 8) + 32))(v23, a4, a12);
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v24 = __swift_project_value_buffer(v18, static Logger.executor);
  (*(v19 + 16))(v21, v24, v18);
  type metadata accessor for AsyncSerialQueue(0);
  v25 = swift_allocObject();
  v25[2] = MEMORY[0x1E69E7CC0];
  v25[3] = 0;
  v25[4] = 0;
  v25[5] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v26 = swift_allocObject();
  *(v26 + 16) = 0;
  v25[6] = v26;
  v25[7] = 0xD00000000000002ALL;
  v25[8] = 0x80000001DCA85CB0;
  (*(v19 + 32))(v25 + OBJC_IVAR____TtC14SiriKitRuntime16AsyncSerialQueue_logger, v21, v18);
  a10[21] = v25;
  type metadata accessor for RemoteConversationService.State(0);
  swift_storeEnumTagMultiPayload();
  outlined init with copy of ReferenceResolutionClientProtocol(v51, (a10 + 2));
  v27 = v40;
  a10[7] = v39;
  a10[8] = v27;
  a10[9] = v42;
  outlined init with copy of ReferenceResolutionClientProtocol(v50, (a10 + 10));
  a10[20] = v43;
  v28 = v41;
  outlined init with copy of ReferenceResolutionClientProtocol?(v41, &v47, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMd, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMR);
  if (v48)
  {
    outlined init with take of ReferenceResolutionClientProtocol(&v47, v49);
    outlined init with take of ReferenceResolutionClientProtocol(v49, (a10 + 15));
  }

  else
  {

    outlined destroy of ReferenceResolutionClientProtocol?(&v47, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMd, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMR);
    v29 = type metadata accessor for ReferenceResolutionClient();
    v30 = ReferenceResolutionClient.__allocating_init()();
    v31 = MEMORY[0x1E69D01B0];
    a10[18] = v29;
    a10[19] = v31;
    a10[15] = v30;
  }

  v32 = (a10 + OBJC_IVAR____TtC14SiriKitRuntime25RemoteConversationService_turnDataProvider);
  v33 = v46;
  *v32 = v44;
  v32[1] = v33;
  v34 = type metadata accessor for TaskPriority();
  v35 = v45;
  (*(*(v34 - 8) + 56))(v45, 1, 1, v34);
  v36 = swift_allocObject();
  *(v36 + 16) = 0;
  *(v36 + 24) = 0;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v35, &async function pointer to partial apply for closure #1 in RemoteConversationService.init(flowPlugin:pluginId:flowPluginBundle:siriKitRuntime:turnDataProvider:snippetManager:overrideRRClient:), v36);

  outlined destroy of ReferenceResolutionClientProtocol?(v28, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMd, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMR);
  __swift_destroy_boxed_opaque_existential_1Tm(v50);
  __swift_destroy_boxed_opaque_existential_1Tm(v51);
  return a10;
}

uint64_t sub_1DC6DD3D0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

Swift::Void __swiftcall ReactiveUIEventActor.run()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v18 - v3;
  if (*(v0 + 128) == 1)
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Logger.executor);
    v19 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v19, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1DC659000, v19, v6, "[ReactiveEventActor] already running.", v7, 2u);
      MEMORY[0x1E12A2F50](v7, -1, -1);
    }

    v8 = v19;
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
    v11 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1DC659000, v10, v11, "[ReactiveEventActor] Starting EncoreEvent Loop.", v12, 2u);
      MEMORY[0x1E12A2F50](v12, -1, -1);
    }

    v13 = type metadata accessor for TaskPriority();
    v14 = (*(*(v13 - 8) + 56))(v4, 1, 1, v13);
    v16 = lazy protocol witness table accessor for type ReactiveUIEventActor and conformance ReactiveUIEventActor(v14, v15);
    v17 = swift_allocObject();
    v17[2] = v1;
    v17[3] = v16;
    v17[4] = v1;
    swift_retain_n();
    _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v4, &async function pointer to partial apply for closure #1 in ReactiveUIEventActor.run(), v17);
  }
}

uint64_t sub_1DC6DD758()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t partial apply for closure #1 in RemoteConversationClient.startTurn(turnData:bridge:)(uint64_t a1)
{
  v4 = *(type metadata accessor for RemoteConversationTurnData(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in RemoteConversationClient.startTurn(turnData:bridge:)(a1, v1 + v5, v7, v8);
}

uint64_t closure #1 in RemoteConversationClient.startTurn(turnData:bridge:)()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = *(v0 + 48);
  v4 = *(v0 + 16);
  v12 = *(v0 + 32);
  _s14SiriKitRuntime26RemoteConversationTurnDataVWOcTm_2(*(v0 + 24), v1, type metadata accessor for RemoteConversationTurnData);
  v5 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v6 = (v2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = swift_allocObject();
  *(v0 + 72) = v7;
  *(v7 + 16) = v4;
  outlined init with take of RemoteConversationTurnData(v1, v7 + v5);
  *(v7 + v6) = v12;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v8 = swift_task_alloc();
  *(v0 + 80) = v8;
  *(v8 + 16) = partial apply for closure #1 in closure #1 in RemoteConversationClient.startTurn(turnData:bridge:);
  *(v8 + 24) = v7;
  v9 = swift_task_alloc();
  *(v0 + 88) = v9;
  *v9 = v0;
  v9[1] = closure #1 in RemoteConversationClient.startTurn(turnData:bridge:);
  v10 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v9, 0, 0, 0xD000000000000028, 0x80000001DCA7D5A0, closure #1 in static AsyncTaskUtils.withCheckedRethrowingContinuation<A>(body:)specialized partial apply, v8, v10);
}

{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = closure #1 in RemoteConversationClient.startTurn(turnData:bridge:);
  }

  else
  {

    v2 = closure #1 in RemoteConversationClient.startTurn(turnData:bridge:);
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

uint64_t sub_1DC6DDA48()
{
  v1 = type metadata accessor for RemoteConversationTurnData(0);
  v16 = *(*(v1 - 1) + 80);
  v14 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();
  v15 = (v16 + 24) & ~v16;
  v2 = v0 + v15;

  v3 = v1[6];
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 48);
  if (!v6(v0 + v15 + v3, 1, v4))
  {
    (*(v5 + 8))(v2 + v3, v4);
  }

  v7 = v1[7];
  v8 = type metadata accessor for SessionConfiguration();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v2 + v7, 1, v8))
  {
    (*(v9 + 8))(v2 + v7, v8);
  }

  v10 = v1[9];
  if (!v6(v2 + v10, 1, v4))
  {
    (*(v5 + 8))(v2 + v10, v4);
  }

  v11 = (v2 + v1[13]);
  v12 = v11[1];
  if (v12 >> 60 != 15)
  {
    outlined consume of Data._Representation(*v11, v12);
  }

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, ((v14 + v15 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v16 | 7);
}

uint64_t outlined init with take of RemoteConversationTurnData(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoteConversationTurnData(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in closure #1 in RemoteConversationClient.startTurn(turnData:bridge:)(uint64_t a1)
{
  v3 = *(type metadata accessor for RemoteConversationTurnData(0) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  return closure #1 in closure #1 in RemoteConversationClient.startTurn(turnData:bridge:)(a1, *(v1 + 16), (v1 + v4), *v5, v5[1]);
}

unint64_t lazy protocol witness table accessor for type ReactiveUIEventActor and conformance ReactiveUIEventActor(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table cache variable for type ReactiveUIEventActor and conformance ReactiveUIEventActor;
  if (!lazy protocol witness table cache variable for type ReactiveUIEventActor and conformance ReactiveUIEventActor)
  {
    type metadata accessor for ReactiveUIEventActor();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ReactiveUIEventActor and conformance ReactiveUIEventActor);
  }

  return result;
}

BOOL AceServiceInvokerImpl.isExecutingOnBehalfOfInvocationDevice.getter()
{
  if (*(v0 + 24))
  {
    v1 = 0xEF6563697665446ELL;
  }

  else
  {
    v1 = 0x80000001DCA7AA10;
  }

  if (*(v0 + 24) == 1 && v1 == 0xEF6563697665446ELL)
  {

    return *(v0 + 80) != 0;
  }

  v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

  result = 0;
  if (v3)
  {
    return *(v0 + 80) != 0;
  }

  return result;
}

uint64_t protocol witness for FlowContextPublishing.publish(nlContext:) in conformance AceServiceInvokerImpl(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v2[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](protocol witness for FlowContextPublishing.publish(nlContext:) in conformance AceServiceInvokerImpl, 0, 0);
}

uint64_t protocol witness for FlowContextPublishing.publish(nlContext:) in conformance AceServiceInvokerImpl()
{
  v1 = v0[4];
  v2 = v0[2];
  v3 = type metadata accessor for NLContextUpdate();
  v4 = *(v3 - 8);
  (*(v4 + 16))(v1, v2, v3);
  (*(v4 + 56))(v1, 0, 1, v3);
  v5 = AceServiceInvokerImpl.needsLegacyProvideContextForInvocationDevice.getter();
  v6 = specialized static ExecutionContextUpdate.convertFromFlowContextUpdate(_:nluActiveTasks:nluCompletedTasks:populateLegacyProvideContext:)(v1, 0, 0, v5 & 1);
  v0[5] = v6;
  outlined destroy of ReferenceResolutionClientProtocol?(v1, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v7 = swift_task_alloc();
  v0[6] = v7;
  *v7 = v0;
  v7[1] = protocol witness for FlowContextPublishing.publish(nlContext:) in conformance AceServiceInvokerImpl;

  return AceServiceInvokerImpl.publish(executionContextUpdate:)(v6);
}

{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = protocol witness for FlowContextPublishing.publish(nlContext:) in conformance AceServiceInvokerImpl;
  }

  else
  {
    v2 = protocol witness for FlowContextPublishing.publish(nlContext:) in conformance AceServiceInvokerImpl;
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

uint64_t AceServiceInvokerImpl.needsLegacyProvideContextForInvocationDevice.getter()
{
  if (*(v0 + 24))
  {
    v1 = 0xEF6563697665446ELL;
  }

  else
  {
    v1 = 0x80000001DCA7AA10;
  }

  if (*(v0 + 24) == 1 && v1 == 0xEF6563697665446ELL)
  {
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v3 & 1) == 0)
    {
      LOBYTE(v4) = 0;
      return v4 & 1;
    }
  }

  v4 = *(v0 + 80);
  if (v4)
  {
    LOBYTE(v4) = *(v0 + 104) ^ 1;
  }

  return v4 & 1;
}

id specialized static ExecutionContextUpdate.convertFromFlowContextUpdate(_:nluActiveTasks:nluCompletedTasks:populateLegacyProvideContext:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  LODWORD(v82) = a4;
  v92 = a2;
  v93 = a3;
  updated = type metadata accessor for ContextUpdateScope();
  v97 = *(updated - 8);
  v98 = updated;
  MEMORY[0x1EEE9AC00](updated);
  v83 = &v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v96 = &v78 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v94 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v99 = &v78 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5ParseO16DirectInvocationVSgMd, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMR);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v95 = &v78 - v14;
  v81 = type metadata accessor for NLContextUpdateSerializationOptions();
  v80 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v79 = &v78 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for NLContextUpdate();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v90 = &v78 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v91 = &v78 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v89 = &v78 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v86 = &v78 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v85 = &v78 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v84 = &v78 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v78 - v30;
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v78 - v33;
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v78 - v36;
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v78 - v39;
  outlined init with copy of ReferenceResolutionClientProtocol?(a1, &v78 - v39, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v87 = *(v17 + 48);
  v41 = v87(v40, 1, v16);
  v88 = v17;
  if (v41 == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v40, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  }

  else
  {
    v42 = NLContextUpdate.isClientOnly.getter();
    (*(v17 + 8))(v40, v16);
    if (v42 != 2 && (v42 & 1) != 0)
    {
      v43 = 0;
      v45 = v87;
      v44 = v88;
      v46 = v90;
      goto LABEL_10;
    }
  }

  outlined init with copy of ReferenceResolutionClientProtocol?(a1, v37, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v45 = v87;
  if (v87(v37, 1, v16) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v37, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
    v43 = 0;
    v44 = v88;
  }

  else
  {
    v43 = NLContextUpdate.doConvertToServerContextUpdate()();
    v44 = v88;
    (*(v88 + 8))(v37, v16);
  }

  v46 = v90;
  v47 = v43;
LABEL_10:
  outlined init with copy of ReferenceResolutionClientProtocol?(a1, v34, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v48 = v45(v34, 1, v16);
  v90 = v43;
  if (v48 == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v34, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  }

  else
  {
    (*(v44 + 32))(v46, v34, v16);
    if (v82)
    {
      v100 = MEMORY[0x1E69E7CC0];
      lazy protocol witness table accessor for type Parse.DirectInvocation and conformance Parse.DirectInvocation(&lazy protocol witness table cache variable for type NLContextUpdateSerializationOptions and conformance NLContextUpdateSerializationOptions, MEMORY[0x1E69D00F0], MEMORY[0x1E69D00F8]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11SiriKitFlow35NLContextUpdateSerializationOptionsVGMd, &_sSay11SiriKitFlow35NLContextUpdateSerializationOptionsVGMR);
      lazy protocol witness table accessor for type [NLContextUpdateSerializationOptions] and conformance [A]();
      v82 = v31;
      v49 = v79;
      v50 = v81;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v51 = NLContextUpdate.doConvertToAceContextUpdate(options:)();
      v52 = v49;
      v31 = v82;
      (*(v80 + 8))(v52, v50);
      (*(v44 + 8))(v46, v16);
      v87 = v51;
      v53 = v51;
      goto LABEL_16;
    }

    (*(v44 + 8))(v46, v16);
  }

  v87 = 0;
LABEL_16:
  v54 = v89;
  outlined init with copy of ReferenceResolutionClientProtocol?(a1, v31, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  if (v45(v31, 1, v16) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v31, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
    v89 = 0;
  }

  else
  {
    v89 = NLContextUpdate.nluSystemDialogActs.getter();
    (*(v44 + 8))(v31, v16);
  }

  v55 = v84;
  outlined init with copy of ReferenceResolutionClientProtocol?(a1, v84, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  if (v45(v55, 1, v16) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v55, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
    v56 = type metadata accessor for Parse.DirectInvocation();
    (*(*(v56 - 8) + 56))(v95, 1, 1, v56);
  }

  else
  {
    NLContextUpdate.undoDirectInvocation.getter();
    (*(v44 + 8))(v55, v16);
  }

  v57 = v85;
  outlined init with copy of ReferenceResolutionClientProtocol?(a1, v85, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  if (v45(v57, 1, v16) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v57, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
    v85 = 0;
  }

  else
  {
    v85 = NLContextUpdate.rrEntities.getter();
    (*(v44 + 8))(v57, v16);
  }

  v58 = v86;
  outlined init with copy of ReferenceResolutionClientProtocol?(a1, v86, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  if (v45(v58, 1, v16) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v58, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
    v59 = type metadata accessor for PommesContext();
    (*(*(v59 - 8) + 56))(v99, 1, 1, v59);
  }

  else
  {
    NLContextUpdate.pommesContext.getter();
    (*(v44 + 8))(v58, v16);
  }

  outlined init with copy of ReferenceResolutionClientProtocol?(a1, v54, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  if (v45(v54, 1, v16) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v54, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
    (v97)[13](v96, *MEMORY[0x1E69CFF08], v98);
  }

  else
  {
    v60 = v83;
    NLContextUpdate.contextUpdateScope.getter();
    (*(v44 + 8))(v54, v16);
    (v97)[4](v96, v60, v98);
  }

  v61 = v91;
  outlined init with copy of ReferenceResolutionClientProtocol?(a1, v91, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  if (v45(v61, 1, v16) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v61, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
    v91 = 0;
    v86 = 0;
  }

  else
  {
    v91 = NLContextUpdate.restoreSessionForRequestId.getter();
    v86 = v62;
    (*(v44 + 8))(v61, v16);
  }

  v63 = type metadata accessor for ExecutionContextUpdate(0);
  v64 = objc_allocWithZone(v63);
  v65 = v94;
  outlined init with copy of ReferenceResolutionClientProtocol?(v99, v94, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  v66 = v92;

  v67 = v93;

  v68 = v90;
  specialized static ExecutionContextUpdate.synchronizePromptContexts(pommesContext:nativeFlowContextCommand:)(v65, v90);
  v69 = v87;
  *&v64[OBJC_IVAR___SKRExecutionContextUpdate_provideContextCommand] = v87;
  *&v64[OBJC_IVAR___SKRExecutionContextUpdate_nativeFlowContextCommand] = v68;
  *&v64[OBJC_IVAR___SKRExecutionContextUpdate_nluSystemDialogActs] = v89;
  *&v64[OBJC_IVAR___SKRExecutionContextUpdate_nluActiveTasks] = v66;
  *&v64[OBJC_IVAR___SKRExecutionContextUpdate_nluCompletedTasks] = v67;
  v70 = v95;
  outlined init with copy of ReferenceResolutionClientProtocol?(v95, &v64[OBJC_IVAR___SKRExecutionContextUpdate_undoDirectInvocation], &_s11SiriKitFlow5ParseO16DirectInvocationVSgMd, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMR);
  *&v64[OBJC_IVAR___SKRExecutionContextUpdate_rrEntities] = v85;
  outlined init with copy of ReferenceResolutionClientProtocol?(v65, &v64[OBJC_IVAR___SKRExecutionContextUpdate_pommesContext], &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  v72 = v96;
  v71 = v97;
  v73 = v98;
  (v97)[2](&v64[OBJC_IVAR___SKRExecutionContextUpdate_contextUpdateScope], v96, v98);
  v74 = &v64[OBJC_IVAR___SKRExecutionContextUpdate_restoreSessionForRequestId];
  v75 = v86;
  *v74 = v91;
  v74[1] = v75;
  v64[OBJC_IVAR___SKRExecutionContextUpdate_executedOnRemoteDevice] = 0;
  v101.receiver = v64;
  v101.super_class = v63;
  v76 = objc_msgSendSuper2(&v101, sel_init);
  (v71[1])(v72, v73);
  outlined destroy of ReferenceResolutionClientProtocol?(v99, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v70, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMd, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v65, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);

  return v76;
}

uint64_t InvocationScopedSiriKitEventSender.send(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v50 = &v46 - v5;
  v6 = type metadata accessor for SiriKitEventOverrides();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0aB14EventOverridesVSgMd, &_s11SiriKitFlow0aB14EventOverridesVSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v46 - v14;
  v16 = type metadata accessor for OSSignpostID();
  v48 = *(v16 - 8);
  v49 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v46 - v20;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v22 = static Log.executor;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  v47 = v21;
  os_signpost(_:dso:log:name:signpostID:)();
  SiriKitEvent.overrides.getter();
  v23 = *(v2 + 16);
  outlined init with copy of SiriKitEventOverrides?(v15, v12);
  if ((*(v7 + 48))(v12, 1, v6) == 1)
  {
    outlined destroy of SiriKitEventOverrides?(v15);
  }

  else
  {
    (*(v7 + 32))(v9, v12, v6);

    v24 = SiriKitEventContext.withOverrides(_:)();
    (*(v7 + 8))(v9, v6);
    outlined destroy of SiriKitEventOverrides?(v15);

    v23 = v24;
  }

  if (one-time initialization token for instrumentation != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  __swift_project_value_buffer(v25, static Logger.instrumentation);

  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v51 = v29;
    *v28 = 136315394;
    v30 = SiriKitEvent.debugDescription.getter();
    v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, &v51);

    *(v28 + 4) = v32;
    *(v28 + 12) = 2080;

    v33 = SiriKitEventContext.description.getter();
    v35 = v34;

    v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v35, &v51);

    *(v28 + 14) = v36;
    _os_log_impl(&dword_1DC659000, v26, v27, "Dispatching event to sinks: %s with context: %s", v28, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v29, -1, -1);
    MEMORY[0x1E12A2F50](v28, -1, -1);
  }

  v37 = v48;
  type metadata accessor for IntentLoggingEventSink();
  swift_initStaticObject();
  specialized IntentLoggingEventSink.receive(_:_:)();
  static os_signpost_type_t.event.getter();
  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  v38 = *(v37 + 8);
  v39 = v49;
  v38(v18, v49);
  if (one-time initialization token for instance != -1)
  {
    swift_once();
  }

  v40 = static TaskLoggingEventSink.instance;
  v41 = type metadata accessor for TaskPriority();
  v42 = v50;
  (*(*(v41 - 8) + 56))(v50, 1, 1, v41);
  v43 = swift_allocObject();
  v43[2] = 0;
  v43[3] = 0;
  v43[4] = v40;
  v43[5] = a1;
  v43[6] = v23;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v42, &async function pointer to partial apply for closure #1 in TaskLoggingEventSink.receive(_:_:), v43);

  static os_signpost_type_t.event.getter();
  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:)();

  v38(v18, v39);
  static os_signpost_type_t.end.getter();
  v44 = v47;
  os_signpost(_:dso:log:name:signpostID:)();
  return (v38)(v44, v39);
}

uint64_t sub_1DC6DF6F4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t lazy protocol witness table accessor for type Parse.DirectInvocation and conformance Parse.DirectInvocation(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

Swift::Void __swiftcall ExecutionContextUpdate.encode(with:)(NSCoder with)
{
  v2 = v1;
  v91 = type metadata accessor for Siri_Nlu_External_Task();
  v89 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91 - 8);
  v90 = &v84 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v88 = &v84 - v6;
  v7 = type metadata accessor for Siri_Nlu_External_SystemDialogAct();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v2 + OBJC_IVAR___SKRExecutionContextUpdate_provideContextCommand);
  v13 = MEMORY[0x1E12A1410](0xD000000000000015, 0x80000001DCA7AD70, v9);
  [(objc_class *)with.super.isa encodeObject:v12 forKey:v13];

  v14 = *(v2 + OBJC_IVAR___SKRExecutionContextUpdate_nluSystemDialogActs);
  v84 = v2;
  isa = with.super.isa;
  if (v14)
  {
    v15 = *(v14 + 16);
    if (v15)
    {
      v16 = *(v8 + 16);
      v17 = v14 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
      v92 = *(v8 + 72);
      v18 = (v8 + 8);
      v93 = MEMORY[0x1E69E7CC0];
      v86 = v16;
      v87 = v8 + 16;
      v16(v11, v17, v7);
      while (1)
      {
        lazy protocol witness table accessor for type Parse.DirectInvocation and conformance Parse.DirectInvocation(&lazy protocol witness table cache variable for type Siri_Nlu_External_SystemDialogAct and conformance Siri_Nlu_External_SystemDialogAct, MEMORY[0x1E69D0B48], MEMORY[0x1E69D0B40]);
        v19 = Message.serializedData(partial:)();
        v21 = v20;
        (*v18)(v11, v7);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v93 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v93 + 2) + 1, 1, v93);
        }

        v23 = *(v93 + 2);
        v22 = *(v93 + 3);
        if (v23 >= v22 >> 1)
        {
          v93 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1, v93);
        }

        v24 = v93;
        *(v93 + 2) = v23 + 1;
        v25 = &v24[16 * v23];
        *(v25 + 4) = v19;
        *(v25 + 5) = v21;
        v17 += v92;
        if (!--v15)
        {
          break;
        }

        v86(v11, v17, v7);
      }
    }

    else
    {
      v93 = MEMORY[0x1E69E7CC0];
    }

    v26 = Array._bridgeToObjectiveC()().super.isa;

    v27 = MEMORY[0x1E12A1410](0xD000000000000013, 0x80000001DCA7ADF0);
    with.super.isa = isa;
    [(objc_class *)isa encodeObject:v26 forKey:v27];

    v2 = v84;
  }

  v28 = *(v2 + OBJC_IVAR___SKRExecutionContextUpdate_nativeFlowContextCommand);
  v29 = MEMORY[0x1E12A1410](0xD000000000000018, 0x80000001DCA7ADB0);
  [(objc_class *)with.super.isa encodeObject:v28 forKey:v29];

  type metadata accessor for JSONEncoder();
  swift_allocObject();
  v30 = JSONEncoder.init()();
  v94 = *(v2 + OBJC_IVAR___SKRExecutionContextUpdate_rrEntities);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay32SiriReferenceResolutionDataModel8RREntityVGSgMd, &_sSay32SiriReferenceResolutionDataModel8RREntityVGSgMR);
  lazy protocol witness table accessor for type [RREntity]? and conformance <A> A?();
  v31 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v33 = v32;

  v34 = Data._bridgeToObjectiveC()().super.isa;
  v35 = MEMORY[0x1E12A1410](0x697469746E457272, 0xEA00000000007365);
  [(objc_class *)with.super.isa encodeObject:v34 forKey:v35];

  outlined consume of Data._Representation(v31, v33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  lazy protocol witness table accessor for type PommesContext? and conformance <A> A?();
  v36 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v38 = v37;
  v39 = Data._bridgeToObjectiveC()().super.isa;
  v40 = MEMORY[0x1E12A1410](0x6F4373656D6D6F70, 0xED0000747865746ELL);
  [(objc_class *)with.super.isa encodeObject:v39 forKey:v40];

  outlined consume of Data._Representation(v36, v38);
  v41 = v91;
  v42 = v90;
  v43 = *(v2 + OBJC_IVAR___SKRExecutionContextUpdate_nluActiveTasks);
  v44 = v88;
  v87 = v30;
  if (v43)
  {
    v45 = *(v43 + 16);
    if (v45)
    {
      v46 = *(v89 + 16);
      v47 = v43 + ((*(v89 + 80) + 32) & ~*(v89 + 80));
      v92 = *(v89 + 72);
      v93 = v46;
      v48 = (v89 + 8);
      v49 = MEMORY[0x1E69E7CC0];
      (v46)(v88, v47, v91);
      while (1)
      {
        lazy protocol witness table accessor for type Parse.DirectInvocation and conformance Parse.DirectInvocation(&lazy protocol witness table cache variable for type Siri_Nlu_External_Task and conformance Siri_Nlu_External_Task, MEMORY[0x1E69D0948], MEMORY[0x1E69D0940]);
        v50 = Message.serializedData(partial:)();
        v52 = v51;
        (*v48)(v44, v41);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v49 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v49 + 2) + 1, 1, v49);
        }

        v54 = *(v49 + 2);
        v53 = *(v49 + 3);
        if (v54 >= v53 >> 1)
        {
          v49 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v53 > 1), v54 + 1, 1, v49);
        }

        *(v49 + 2) = v54 + 1;
        v55 = &v49[16 * v54];
        *(v55 + 4) = v50;
        *(v55 + 5) = v52;
        v41 = v91;
        v44 = v88;
        v47 += v92;
        if (!--v45)
        {
          break;
        }

        (v93)(v88, v47, v91);
      }
    }

    v56 = Array._bridgeToObjectiveC()().super.isa;

    v57 = MEMORY[0x1E12A1410](0x7669746341756C6ELL, 0xEE00736B73615465);
    with.super.isa = isa;
    [(objc_class *)isa encodeObject:v56 forKey:v57];

    v2 = v84;
    v42 = v90;
  }

  v58 = *(v2 + OBJC_IVAR___SKRExecutionContextUpdate_nluCompletedTasks);
  if (v58)
  {
    v59 = *(v58 + 16);
    if (v59)
    {
      v60 = *(v89 + 16);
      v61 = v58 + ((*(v89 + 80) + 32) & ~*(v89 + 80));
      v92 = *(v89 + 72);
      v93 = v60;
      v62 = (v89 + 8);
      v63 = MEMORY[0x1E69E7CC0];
      v89 += 16;
      (v60)(v42, v61, v41);
      while (1)
      {
        lazy protocol witness table accessor for type Parse.DirectInvocation and conformance Parse.DirectInvocation(&lazy protocol witness table cache variable for type Siri_Nlu_External_Task and conformance Siri_Nlu_External_Task, MEMORY[0x1E69D0948], MEMORY[0x1E69D0940]);
        v64 = Message.serializedData(partial:)();
        v66 = v65;
        (*v62)(v42, v41);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v63 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v63 + 2) + 1, 1, v63);
        }

        v68 = *(v63 + 2);
        v67 = *(v63 + 3);
        if (v68 >= v67 >> 1)
        {
          v63 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v67 > 1), v68 + 1, 1, v63);
        }

        *(v63 + 2) = v68 + 1;
        v69 = &v63[16 * v68];
        *(v69 + 4) = v64;
        *(v69 + 5) = v66;
        v42 = v90;
        v41 = v91;
        v61 += v92;
        if (!--v59)
        {
          break;
        }

        (v93)(v90, v61, v91);
      }
    }

    v70 = Array._bridgeToObjectiveC()().super.isa;

    v71 = MEMORY[0x1E12A1410](0xD000000000000011, 0x80000001DCA7AE20);
    with.super.isa = isa;
    [(objc_class *)isa encodeObject:v70 forKey:v71];

    v2 = v84;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5ParseO16DirectInvocationVSgMd, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMR);
  lazy protocol witness table accessor for type Parse.DirectInvocation? and conformance <A> A?();
  v72 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v74 = v73;
  v75 = Data._bridgeToObjectiveC()().super.isa;
  v76 = MEMORY[0x1E12A1410](0xD000000000000014, 0x80000001DCA7AE40);
  [(objc_class *)with.super.isa encodeObject:v75 forKey:v76];

  outlined consume of Data._Representation(v72, v74);
  updated = ContextUpdateScope.rawValue.getter();
  v78 = MEMORY[0x1E12A1410](updated);

  v79 = MEMORY[0x1E12A1410](0xD000000000000012, 0x80000001DCA7AE60);
  [(objc_class *)with.super.isa encodeObject:v78 forKey:v79];

  if (*(v2 + OBJC_IVAR___SKRExecutionContextUpdate_restoreSessionForRequestId + 8))
  {
    v80 = MEMORY[0x1E12A1410](*(v2 + OBJC_IVAR___SKRExecutionContextUpdate_restoreSessionForRequestId));
  }

  else
  {
    v80 = 0;
  }

  v81 = MEMORY[0x1E12A1410](0xD00000000000001ALL, 0x80000001DCA7AE80);
  [(objc_class *)with.super.isa encodeObject:v80 forKey:v81];

  v82 = *(v2 + OBJC_IVAR___SKRExecutionContextUpdate_executedOnRemoteDevice);
  v83 = MEMORY[0x1E12A1410](0xD000000000000016, 0x80000001DCA7AEA0);
  [(objc_class *)with.super.isa encodeBool:v82 forKey:v83];
}

unint64_t lazy protocol witness table accessor for type [RREntity]? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type [RREntity]? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type [RREntity]? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay32SiriReferenceResolutionDataModel8RREntityVGSgMd, &_sSay32SiriReferenceResolutionDataModel8RREntityVGSgMR);
    lazy protocol witness table accessor for type [RREntity] and conformance <A> [A]();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [RREntity]? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PommesContext? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type PommesContext? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type PommesContext? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
    lazy protocol witness table accessor for type Parse.DirectInvocation and conformance Parse.DirectInvocation(&lazy protocol witness table cache variable for type PommesContext and conformance PommesContext, MEMORY[0x1E69CE670], MEMORY[0x1E69CE678]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PommesContext? and conformance <A> A?);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PommesContext? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type PommesContext? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
    lazy protocol witness table accessor for type Parse.DirectInvocation and conformance Parse.DirectInvocation(&lazy protocol witness table cache variable for type PommesContext and conformance PommesContext, MEMORY[0x1E69CE670], MEMORY[0x1E69CE688]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PommesContext? and conformance <A> A?);
  }

  return result;
}

uint64_t partial apply for closure #1 in TaskLoggingEventSink.receive(_:_:)(uint64_t a1)
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

  return closure #1 in TaskLoggingEventSink.receive(_:_:)(a1, v4, v5, v6, v7, v8);
}

uint64_t closure #1 in TaskLoggingEventSink.receive(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = swift_task_alloc();
  *(v6 + 16) = v9;
  *v9 = v6;
  v9[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return TaskLoggingEventSink.receiveAsync(_:_:)(a5, a6);
}

uint64_t partial apply for closure #1 in SiriKitCurareDonator.donateSiriExecutionTaskStep(activityType:eventContext:eventTime:requestContent:taskContent:taskId:taskName:app:attribute:parameterName:responseId:statusDescription:statusReason:)(uint64_t a1)
{
  v2 = *(type metadata accessor for ActivityType() - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(type metadata accessor for Date() - 8);
  v14 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v6 = (*(v5 + 64) + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
  v12 = v1[3];
  v13 = v1[2];
  v11 = v1[4];
  v10 = *(v1 + v6);
  v9 = *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));
  v7 = swift_task_alloc();
  *(v15 + 16) = v7;
  *v7 = v15;
  v7[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return closure #1 in SiriKitCurareDonator.donateSiriExecutionTaskStep(activityType:eventContext:eventTime:requestContent:taskContent:taskId:taskName:app:attribute:parameterName:responseId:statusDescription:statusReason:)(a1, v13, v12, v11, v1 + v3, v1 + v14, v10, v9);
}

uint64_t closure #1 in SiriKitCurareDonator.donateSiriExecutionTaskStep(activityType:eventContext:eventTime:requestContent:taskContent:taskId:taskName:app:attribute:parameterName:responseId:statusDescription:statusReason:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 880) = v20;
  *(v8 + 848) = v18;
  *(v8 + 864) = v19;
  *(v8 + 816) = v16;
  *(v8 + 832) = v17;
  *(v8 + 784) = v14;
  *(v8 + 800) = v15;
  *(v8 + 752) = v12;
  *(v8 + 768) = v13;
  *(v8 + 744) = a8;
  *(v8 + 736) = a7;
  *(v8 + 728) = a6;
  *(v8 + 720) = a5;
  *(v8 + 712) = a4;
  v9 = type metadata accessor for ActivityType();
  *(v8 + 888) = v9;
  *(v8 + 896) = *(v9 - 8);
  *(v8 + 904) = swift_task_alloc();
  *(v8 + 912) = swift_task_alloc();
  *(v8 + 920) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
  *(v8 + 928) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in SiriKitCurareDonator.donateSiriExecutionTaskStep(activityType:eventContext:eventTime:requestContent:taskContent:taskId:taskName:app:attribute:parameterName:responseId:statusDescription:statusReason:), 0, 0);
}

uint64_t closure #1 in SiriKitCurareDonator.donateSiriExecutionTaskStep(activityType:eventContext:eventTime:requestContent:taskContent:taskId:taskName:app:attribute:parameterName:responseId:statusDescription:statusReason:)()
{
  v136 = v0;
  v135[1] = *MEMORY[0x1E69E9840];
  v1 = v0[89];
  v3 = v1[12];
  v2 = v1[13];
  v4 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v4 = v3 & 0xFFFFFFFFFFFFLL;
  }

  v133 = v1[12];
  v134 = v1[13];
  if (!v4)
  {
    v3 = v1[10];
    v2 = v1[11];
  }

  v5 = one-time initialization token for instrumentation;

  if (v5 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.instrumentation);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();

  v126 = v2;
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v135[0] = v10;
    *v9 = 136315138;
    *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v3, v2, v135);
    _os_log_impl(&dword_1DC659000, v7, v8, "Create SiriKit execution task step donation to Curare for interactionId: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x1E12A2F50](v10, -1, -1);
    MEMORY[0x1E12A2F50](v9, -1, -1);
  }

  v11 = v0[92];
  v12 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DCA75F30;
  strcpy((inited + 32), "activityType");
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  v14 = ActivityType.rawValue.getter();
  v15 = MEMORY[0x1E69E6158];
  *(inited + 48) = v14;
  *(inited + 56) = v16;
  *(inited + 72) = v15;
  *(inited + 80) = 0x6D6954746E657665;
  *(inited + 88) = 0xE900000000000065;
  isa = Date._bridgeToObjectiveC()().super.isa;
  v132 = v12;
  v18 = [v12 stringFromDate_];

  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  *(inited + 96) = v19;
  *(inited + 104) = v21;
  *(inited + 120) = v15;
  *(inited + 128) = 7368801;
  *(inited + 136) = 0xE300000000000000;
  v123 = v3;
  if (v11)
  {
    v22 = App.appIdentifier.getter();
    v24 = (inited + 144);
    *(inited + 168) = v15;
    if (v23)
    {
      *v24 = v22;
      goto LABEL_14;
    }
  }

  else
  {
    v24 = (inited + 144);
    *(inited + 168) = v15;
  }

  *v24 = 0x6C7070615F746F6ELL;
  v23 = 0xEE00656C62616369;
LABEL_14:
  v25 = v0[116];
  v26 = v0[102];
  v119 = v0[101];
  v120 = v0[103];
  v27 = v0[100];
  v28 = v0[99];
  v29 = v0[98];
  v30 = v0[97];
  v31 = v0[96];
  v32 = v0[95];
  v33 = v0[94];
  v34 = v0[93];
  *(inited + 152) = v23;
  *(inited + 176) = 0x7475626972747461;
  *(inited + 184) = 0xE900000000000065;
  if (v33)
  {
    v35 = v33;
  }

  else
  {
    v34 = 7104878;
    v35 = 0xE300000000000000;
  }

  *(inited + 192) = v34;
  *(inited + 200) = v35;
  *(inited + 216) = v15;
  strcpy((inited + 224), "intentTypeName");
  *(inited + 239) = -18;
  *(inited + 240) = v32;
  *(inited + 248) = v31;
  *(inited + 264) = v15;
  *(inited + 272) = 0x6574656D61726170;
  if (v29)
  {
    v36 = v29;
  }

  else
  {
    v30 = 7104878;
    v36 = 0xE300000000000000;
  }

  *(inited + 280) = 0xED0000656D614E72;
  *(inited + 288) = v30;
  *(inited + 296) = v36;
  *(inited + 312) = v15;
  *(inited + 320) = 0x65736E6F70736572;
  if (v27)
  {
    v37 = v27;
  }

  else
  {
    v28 = 7104878;
    v37 = 0xE300000000000000;
  }

  *(inited + 328) = 0xEA00000000006449;
  *(inited + 336) = v28;
  *(inited + 344) = v37;
  *(inited + 360) = v15;
  *(inited + 368) = 0xD000000000000011;
  *(inited + 376) = 0x80000001DCA7AB40;

  v38 = SiriKitEventContext.resultCandidateId.getter();
  if (v39)
  {
    v40 = v38;
  }

  else
  {
    v40 = 0;
  }

  v41 = 0xE000000000000000;
  if (v39)
  {
    v41 = v39;
  }

  *(inited + 384) = v40;
  *(inited + 392) = v41;
  *(inited + 408) = v15;
  *(inited + 416) = 0xD000000000000011;
  v42 = v119;
  if (!v26)
  {
    v42 = 7104878;
  }

  *(inited + 424) = 0x80000001DCA88F60;
  *(inited + 432) = v42;
  if (v26)
  {
    v43 = v26;
  }

  else
  {
    v43 = 0xE300000000000000;
  }

  *(inited + 440) = v43;
  *(inited + 456) = v15;
  strcpy((inited + 464), "statusReason");
  *(inited + 477) = 0;
  *(inited + 478) = -5120;
  outlined init with copy of SiriKitReliabilityCodes?(v120, v25);
  v44 = type metadata accessor for SiriKitReliabilityCodes();
  v45 = *(v44 - 8);
  v46 = (*(v45 + 48))(v25, 1, v44);

  v47 = v0[116];
  if (v46 == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v0[116], &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
    v48 = (inited + 480);
    *(inited + 504) = v15;
  }

  else
  {
    v49 = SiriKitReliabilityCodes.rawValue.getter();
    v51 = v50;
    (*(v45 + 8))(v47, v44);
    v48 = (inited + 480);
    *(inited + 504) = v15;
    if (v51)
    {
      *v48 = v49;
      v52 = v123;
      goto LABEL_38;
    }
  }

  v52 = v123;
  *v48 = 7104878;
  v51 = 0xE300000000000000;
LABEL_38:
  v53 = v0[107];
  v54 = v0[106];
  v55 = v0[105];
  v56 = v0[104];
  *(inited + 488) = v51;
  *(inited + 512) = 0xD000000000000010;
  *(inited + 520) = 0x80000001DCA88F80;
  *(inited + 552) = v15;
  *(inited + 528) = v56;
  *(inited + 536) = v55;
  *(inited + 560) = 0xD000000000000013;
  *(inited + 568) = 0x80000001DCA88FA0;
  *(inited + 600) = v15;
  *(inited + 576) = v54;
  *(inited + 584) = v53;
  strcpy((inited + 608), "interactionId");
  *(inited + 622) = -4864;
  *(inited + 648) = v15;
  *(inited + 624) = v52;
  *(inited + 632) = v126;

  v57 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
  swift_arrayDestroy();
  specialized _dictionaryUpCast<A, B, C, D>(_:)(v57);

  v58 = objc_allocWithZone(MEMORY[0x1E699C0C8]);
  v59 = Dictionary._bridgeToObjectiveC()().super.isa;

  v60 = MEMORY[0x1E12A1410](v133, v134);
  v61 = [v58 initWithContent:v59 interactionId:v60 dataVersion:0];

  if (v61)
  {
    v62 = v0[110];
    v0[87] = 0;
    v127 = v61;
    v63 = [v62 insert:v61 error:v0 + 87];
    v64 = v0[87];
    v65 = v0[112];
    v66 = v0[111];
    v67 = v0[90];
    if (v63)
    {
      (*(v65 + 16))(v0[115], v0[90], v0[111]);

      v68 = v64;

      v69 = Logger.logObject.getter();
      v70 = static os_log_type_t.debug.getter();

      v71 = os_log_type_enabled(v69, v70);
      v72 = v0[115];
      v73 = v0[112];
      v74 = v0[111];
      if (v71)
      {
        v75 = v0[109];
        v76 = v0[108];
        v121 = v0[95];
        v124 = v0[96];
        v77 = swift_slowAlloc();
        log = swift_slowAlloc();
        v135[0] = log;
        *v77 = 136315906;
        *(v77 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v76, v75, v135);
        *(v77 + 12) = 2080;
        *(v77 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v121, v124, v135);
        *(v77 + 22) = 2080;
        v78 = ActivityType.rawValue.getter();
        v80 = v79;
        (*(v73 + 8))(v72, v74);
        v81 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v78, v80, v135);

        *(v77 + 24) = v81;
        *(v77 + 32) = 2080;
        *(v77 + 34) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v133, v134, v135);
        _os_log_impl(&dword_1DC659000, v69, v70, "Donated SiriKit execution task step to Curare for taskId: %s, taskType: %s, stepType: %s for interactionId:%s", v77, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x1E12A2F50](log, -1, -1);
        MEMORY[0x1E12A2F50](v77, -1, -1);

LABEL_44:
        goto LABEL_50;
      }

      (*(v73 + 8))(v72, v74);
    }

    else
    {
      v95 = v0[113];
      v96 = v64;
      v97 = _convertNSErrorToError(_:)();

      swift_willThrow();
      (*(v65 + 16))(v95, v67, v66);

      v98 = v97;
      v99 = Logger.logObject.getter();
      v100 = static os_log_type_t.error.getter();

      v101 = os_log_type_enabled(v99, v100);
      v102 = v0[113];
      v103 = v0[112];
      v104 = v0[111];
      if (v101)
      {
        logb = v99;
        v105 = v0[109];
        v106 = v0[108];
        v107 = v0[96];
        v108 = v0[95];
        v122 = v97;
        v109 = swift_slowAlloc();
        v125 = swift_slowAlloc();
        v135[0] = v125;
        *v109 = 136316162;
        *(v109 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v106, v105, v135);
        *(v109 + 12) = 2080;
        *(v109 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v108, v107, v135);
        *(v109 + 22) = 2080;
        v110 = ActivityType.rawValue.getter();
        v112 = v111;
        (*(v103 + 8))(v102, v104);
        v113 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v110, v112, v135);

        *(v109 + 24) = v113;
        *(v109 + 32) = 2080;
        *(v109 + 34) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v133, v134, v135);
        *(v109 + 42) = 2080;
        swift_getErrorValue();
        v114 = Error.localizedDescription.getter();
        v116 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v114, v115, v135);

        *(v109 + 44) = v116;
        _os_log_impl(&dword_1DC659000, logb, v100, "Failed to donate SiriKit execution task step to Curare for taskId: %s, taskType: %s, stepType: %s for interactionId:%s: %s", v109, 0x34u);
        swift_arrayDestroy();
        MEMORY[0x1E12A2F50](v125, -1, -1);
        MEMORY[0x1E12A2F50](v109, -1, -1);
      }

      else
      {

        (*(v103 + 8))(v102, v104);
      }
    }
  }

  else
  {
    (*(v0[112] + 16))(v0[114], v0[90], v0[111]);

    v69 = Logger.logObject.getter();
    v82 = static os_log_type_t.error.getter();

    v83 = os_log_type_enabled(v69, v82);
    v84 = v0[114];
    v85 = v0[112];
    v86 = v0[111];
    if (v83)
    {
      v87 = v0[109];
      v88 = v0[108];
      v128 = v0[95];
      loga = v0[96];
      v89 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      v135[0] = v90;
      *v89 = 136315906;
      *(v89 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v88, v87, v135);
      *(v89 + 12) = 2080;
      *(v89 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v128, loga, v135);
      *(v89 + 22) = 2080;
      v91 = ActivityType.rawValue.getter();
      v93 = v92;
      (*(v85 + 8))(v84, v86);
      v94 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v91, v93, v135);

      *(v89 + 24) = v94;
      *(v89 + 32) = 2080;
      *(v89 + 34) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v133, v134, v135);
      _os_log_impl(&dword_1DC659000, v69, v82, "Failed to create SiriKit execution task step donation to Curare for taskId: %s, taskType: %s, stepType: %s for interactionId:%s", v89, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v90, -1, -1);
      MEMORY[0x1E12A2F50](v89, -1, -1);
      goto LABEL_44;
    }

    (*(v85 + 8))(v84, v86);
  }

LABEL_50:

  v117 = v0[1];

  return v117();
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of ReferenceResolutionClientProtocol?(v4, &v13, &_sSS_yptMd, &_sSS_yptMR);
      v5 = v13;
      v6 = v14;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = outlined init with take of Any(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

uint64_t type metadata accessor for ExecutionContextUpdate(uint64_t a1)
{
  result = type metadata singleton initialization cache for ExecutionContextUpdate;
  if (!type metadata singleton initialization cache for ExecutionContextUpdate)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t specialized _NativeSet.update(with:isUnique:)(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = *v2;
  Hasher.init(_seed:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13SABaseCommandCSgMd, &_sSo13SABaseCommandCSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  Task.hash(into:)();
  v7 = Hasher._finalize()();
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v28 = a2;
    v10 = ~v8;
    while (1)
    {

      v11 = static Task.== infix(_:_:)();

      if (v11)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        v12 = 1;
        goto LABEL_8;
      }
    }

    v12 = 0;
LABEL_8:
    v13 = v11 ^ 1;
    v3 = v2;
    a2 = v28;
  }

  else
  {
    v13 = 1;
    v12 = 1;
  }

  v14 = *(v6 + 16);
  v15 = v14 + v12;
  if (__OFADD__(v14, v12))
  {
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v16 = *(v6 + 24);
  if (v16 < v15 || (a2 & 1) == 0)
  {
    if (a2)
    {
      v29 = v13;
      specialized _NativeSet.resize(capacity:)(v15);
    }

    else
    {
      if (v16 >= v15)
      {
        specialized _NativeSet.copy()();
        if ((v13 & 1) == 0)
        {
          goto LABEL_28;
        }

        goto LABEL_25;
      }

      v29 = v13;
      specialized _NativeSet.copyAndResize(capacity:)(v15);
    }

    v17 = *v3;
    Hasher.init(_seed:)();
    Task.hash(into:)();
    v18 = Hasher._finalize()();
    v19 = -1 << *(v17 + 32);
    v9 = v18 & ~v19;
    if ((*(v17 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
    {
      v20 = ~v19;
      while (1)
      {

        v21 = static Task.== infix(_:_:)();

        if (v21)
        {
          break;
        }

        v9 = (v9 + 1) & v20;
        if (((*(v17 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
        {
          goto LABEL_24;
        }
      }

      v3 = v2;
      if ((v29 & 1) == 0)
      {
        goto LABEL_28;
      }
    }

    else
    {
LABEL_24:
      v3 = v2;
      if (v29)
      {
LABEL_25:
        v22 = *v3;
        *(*v3 + 8 * (v9 >> 6) + 56) |= 1 << v9;
        *(*(v22 + 48) + 8 * v9) = a1;
        v23 = *(v22 + 16);
        v24 = __OFADD__(v23, 1);
        v25 = v23 + 1;
        if (!v24)
        {
          result = 0;
          *(v22 + 16) = v25;
          return result;
        }

        goto LABEL_31;
      }
    }

LABEL_32:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScTySo13SABaseCommandCSgs5Error_pGMd, &_sScTySo13SABaseCommandCSgs5Error_pGMR);
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  if (v13)
  {
    goto LABEL_25;
  }

LABEL_28:
  v27 = *(*v3 + 48);
  result = *(v27 + 8 * v9);
  *(v27 + 8 * v9) = a1;
  return result;
}

uint64_t outlined assign with take of Conversation.State(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Conversation.State(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

char *assignWithTake for Conversation.State(char *a1, char *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  outlined destroy of Conversation.State(a1, type metadata accessor for Conversation.State);
  if (!swift_getEnumCaseMultiPayload())
  {
    *a1 = *a2;
    v8 = type metadata accessor for SiriRequest(0);
    v9 = v8[5];
    v10 = type metadata accessor for Input();
    (*(*(v10 - 8) + 32))(&a1[v9], &a2[v9], v10);
    *&a1[v8[6]] = *&a2[v8[6]];
    *&a1[v8[7]] = *&a2[v8[7]];
    *&a1[v8[8]] = *&a2[v8[8]];
    *&a1[v8[9]] = *&a2[v8[9]];
    *&a1[v8[10]] = *&a2[v8[10]];
    *&a1[v8[11]] = *&a2[v8[11]];
    v11 = v8[12];
    v12 = &a1[v11];
    v13 = &a2[v11];
    v14 = type metadata accessor for SiriRequestIdentities(0);
    v15 = *(v14 - 8);
    if ((*(v15 + 48))(v13, 1, v14))
    {
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A17RequestIdentitiesVSgMd, &_s14SiriKitRuntime0A17RequestIdentitiesVSgMR);
      memcpy(v12, v13, *(*(v16 - 8) + 64));
    }

    else
    {
      v17 = type metadata accessor for IdentifiedUser();
      v18 = *(v17 - 8);
      v24 = *(v18 + 48);
      v23 = v18;
      if (v24(v13, 1, v17))
      {
        v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
        memcpy(v12, v13, *(*(v19 - 8) + 64));
      }

      else
      {
        (*(v18 + 32))(v12, v13, v17);
        (*(v18 + 56))(v12, 0, 1, v17);
      }

      v20 = *(v14 + 20);
      if (v24(&v13[v20], 1, v17))
      {
        v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
        memcpy(&v12[v20], &v13[v20], *(*(v21 - 8) + 64));
      }

      else
      {
        (*(v23 + 32))(&v12[v20], &v13[v20], v17);
        (*(v23 + 56))(&v12[v20], 0, 1, v17);
      }

      *&v12[*(v14 + 24)] = *&v13[*(v14 + 24)];
      (*(v15 + 56))(v12, 0, 1, v14);
    }

    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A7RequestV7request_AA4NodeCyAA9FlowAgentCG08selectedG0tMd, &_s14SiriKitRuntime0A7RequestV7request_AA4NodeCyAA9FlowAgentCG08selectedG0tMR);
    *&a1[*(v22 + 48)] = *&a2[*(v22 + 48)];
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v6 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v6);
}

uint64_t type metadata accessor for ConversationCommitResult(uint64_t a1)
{
  result = type metadata singleton initialization cache for ConversationCommitResult;
  if (!type metadata singleton initialization cache for ConversationCommitResult)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t FlowPluginInfo.description.getter()
{
  _StringGuts.grow(_:)(79);
  MEMORY[0x1E12A1580](0xD000000000000022, 0x80000001DCA83C50);
  if (*(v0 + OBJC_IVAR____TtC14SiriKitRuntime14FlowPluginInfo_supportsOnDeviceNL))
  {
    v1 = 1702195828;
  }

  else
  {
    v1 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR____TtC14SiriKitRuntime14FlowPluginInfo_supportsOnDeviceNL))
  {
    v2 = 0xE400000000000000;
  }

  else
  {
    v2 = 0xE500000000000000;
  }

  MEMORY[0x1E12A1580](v1, v2);

  MEMORY[0x1E12A1580](0xD000000000000013, 0x80000001DCA83C80);
  if (*(v0 + OBJC_IVAR____TtC14SiriKitRuntime14FlowPluginInfo_isPersonalRequest))
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR____TtC14SiriKitRuntime14FlowPluginInfo_isPersonalRequest))
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  MEMORY[0x1E12A1580](v3, v4);

  MEMORY[0x1E12A1580](0xD000000000000014, 0x80000001DCA83CA0);
  type metadata accessor for AFSiriDataSharingSensitivityPolicy(0);
  _print_unlocked<A, B>(_:_:)();
  return 0;
}

void type metadata accessor for AFAnalyticsEventType(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t AceServiceInvokerImpl.publish(executionContextUpdate:)(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = type metadata accessor for RequestSummary.ExecutionSource();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](AceServiceInvokerImpl.publish(executionContextUpdate:), 0, 0);
}

uint64_t AceServiceInvokerImpl.publish(executionContextUpdate:)()
{
  v39 = v0;
  receiver = v0[5].receiver;
  super_class = v0[5].super_class;
  v4 = v0[4].receiver;
  v3 = v0[4].super_class;
  v5 = v0[3].receiver;
  v6 = v0[3].super_class;
  v7 = v0[2].super_class;
  v37 = v0[2].receiver;
  v9 = *(v7 + 5);
  v8 = *(v7 + 6);
  v10 = type metadata accessor for FlowOutputMessage.InAppResponse();
  (*(*(v10 - 8) + 56))(super_class, 1, 1, v10);
  (*(v6 + 13))(v3, *MEMORY[0x1E69D0678], v5);
  v11 = *(v6 + 2);
  v11(v4, v3, v5);
  outlined init with copy of ReferenceResolutionClientProtocol?(super_class, receiver, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
  v36 = type metadata accessor for ExecutionOutput(0);
  v12 = objc_allocWithZone(v36);
  v13 = &v12[OBJC_IVAR___SKRExecutionOutput_executionRequestId];
  *v13 = v9;
  *(v13 + 1) = v8;
  v14 = &v12[OBJC_IVAR___SKRExecutionOutput_fullPrint];
  *v14 = 0;
  *(v14 + 1) = 0;
  v15 = &v12[OBJC_IVAR___SKRExecutionOutput_fullSpeak];
  *v15 = 0;
  *(v15 + 1) = 0;
  v16 = &v12[OBJC_IVAR___SKRExecutionOutput_redactedFullPrint];
  *v16 = 0;
  *(v16 + 1) = 0;
  v17 = &v12[OBJC_IVAR___SKRExecutionOutput_redactedFullSpeak];
  *v17 = 0;
  *(v17 + 1) = 0;
  v11(&v12[OBJC_IVAR___SKRExecutionOutput_executionSource], v4, v5);
  outlined init with copy of ReferenceResolutionClientProtocol?(receiver, &v12[OBJC_IVAR___SKRExecutionOutput_inAppResponse], &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
  v18 = one-time initialization token for executor;

  v19 = v37;
  if (v18 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  __swift_project_value_buffer(v20, static Logger.executor);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v38 = v25;
    *v23 = 136315394;
    *(v23 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000085, 0x80000001DCA7C240, &v38);
    *(v23 + 12) = 2112;
    *(v23 + 14) = 0;
    *v24 = 0;
    _os_log_impl(&dword_1DC659000, v21, v22, "ExecutionOutput: %s: converting non-context ACE command=%@ to ExecutionOutput", v23, 0x16u);
    outlined destroy of ReferenceResolutionClientProtocol?(v24, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1E12A2F50](v24, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
    MEMORY[0x1E12A2F50](v25, -1, -1);
    MEMORY[0x1E12A2F50](v23, -1, -1);
  }

  v27 = v0[5].receiver;
  v26 = v0[5].super_class;
  v29 = v0[4].receiver;
  v28 = v0[4].super_class;
  v30 = v0[3].receiver;
  v31 = v0[3].super_class;
  *&v12[OBJC_IVAR___SKRExecutionOutput_command] = 0;
  *&v12[OBJC_IVAR___SKRExecutionOutput_contextUpdate] = v19;
  v0[1].receiver = v12;
  v0[1].super_class = v36;
  v32 = objc_msgSendSuper2(v0 + 1, sel_init);
  v0[6].receiver = v32;
  outlined destroy of ReferenceResolutionClientProtocol?(v27, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
  v33 = *(v31 + 1);
  v33(v29, v30);
  v33(v28, v30);
  outlined destroy of ReferenceResolutionClientProtocol?(v26, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
  v34 = swift_task_alloc();
  v0[6].super_class = v34;
  *v34 = v0;
  *(v34 + 1) = AceServiceInvokerImpl.publish(executionContextUpdate:);

  return AceServiceInvokerImpl.publish(executionOutput:)(v32);
}

{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = AceServiceInvokerImpl.publish(executionContextUpdate:);
  }

  else
  {
    v2 = AceServiceInvokerImpl.publish(executionContextUpdate:);
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

uint64_t outlined init with take of SiriKitReliabilityCodes?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t closure #1 in RemoteConversationService.doAccept(conversationTurnState:conversation:input:speechData:wasConversationAlreadyActive:reply:)()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = closure #1 in RemoteConversationService.doAccept(conversationTurnState:conversation:input:speechData:wasConversationAlreadyActive:reply:);
  }

  else
  {
    v2 = closure #1 in RemoteConversationService.doAccept(conversationTurnState:conversation:input:speechData:wasConversationAlreadyActive:reply:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  outlined init with copy of RemoteConversationService.State(*(v0 + 56), *(v0 + 48), type metadata accessor for UserInputResult);
  v2 = 0;
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    v1 = *(v0 + 80);
    outlined destroy of RemoteConversationService.State(*(v0 + 48), type metadata accessor for UserInputResult);
    if (v1)
    {
      v2 = 1;
    }
  }

  outlined init with take of SiriRequest(*(v0 + 56), *(v0 + 16), type metadata accessor for UserInputResult);

  v3 = *(v0 + 8);

  return v3(v2);
}

{
  v1 = v0[3];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v8 = (*(v3 + 24) + **(v3 + 24));
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = closure #1 in RemoteConversationService.doAccept(conversationTurnState:conversation:input:speechData:wasConversationAlreadyActive:reply:);
  v5 = v0[7];
  v6 = v0[4];

  return v8(v5, v6, v2, v3);
}

{

  v1 = *(v0 + 8);

  return v1(0);
}

unint64_t UserInputResult.description.getter()
{
  v1 = v0;
  v2 = type metadata accessor for Input();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UserInputResult(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of UserInputResult(v1, v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(v3 + 32))(v5, v8, v2);
      v17 = 0;
      v18 = 0xE000000000000000;
      _StringGuts.grow(_:)(18);

      v17 = 0x656D726F6665722ELL;
      v18 = 0xEF287475706E4964;
      v10 = Input.description.getter();
      MEMORY[0x1E12A1580](v10);

      MEMORY[0x1E12A1580](41, 0xE100000000000000);
      v12 = v17;
      v11 = v18;
      (*(v3 + 8))(v5, v2);
    }

    else
    {
      v11 = 0xEF7475706E496465;
      v12 = 0x74726F707075732ELL;
    }
  }

  else
  {
    v13 = *v8;
    v17 = 0;
    v18 = 0xE000000000000000;
    _StringGuts.grow(_:)(30);

    v17 = 0xD00000000000001BLL;
    v18 = 0x80000001DCA8BCE0;
    if (v13)
    {
      v14 = 1702195828;
    }

    else
    {
      v14 = 0x65736C6166;
    }

    if (v13)
    {
      v15 = 0xE400000000000000;
    }

    else
    {
      v15 = 0xE500000000000000;
    }

    MEMORY[0x1E12A1580](v14, v15);

    MEMORY[0x1E12A1580](41, 0xE100000000000000);
    v12 = v17;
    v11 = v18;
  }

  v17 = 0;
  v18 = 0xE000000000000000;
  _StringGuts.grow(_:)(19);

  v17 = 0xD000000000000010;
  v18 = 0x80000001DCA8BCC0;
  MEMORY[0x1E12A1580](v12, v11);

  MEMORY[0x1E12A1580](41, 0xE100000000000000);
  return v17;
}

uint64_t closure #1 in RemoteConversationService.prepare(bridge:reply:)()
{
  v25 = v0;
  v1 = *(v0 + 112);
  v2 = *(v0 + 80);
  v3 = OBJC_IVAR____TtC14SiriKitRuntime25RemoteConversationService_state;
  swift_beginAccess();
  outlined init with copy of RemoteConversationService.State(v2 + v3, v1, type metadata accessor for RemoteConversationService.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v5 = *(v0 + 112);
      *(v0 + 144) = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime21ConversationTurnState_p04turnF0_AA14Conversational_p12conversationAA0A7RequestV7requesttMd, &_s14SiriKitRuntime21ConversationTurnState_p04turnF0_AA14Conversational_p12conversationAA0A7RequestV7requesttMR) + 64);
      outlined init with take of ReferenceResolutionClientProtocol((v5 + 40), v0 + 16);
      v6 = *(v0 + 40);
      v7 = *(v0 + 48);
      __swift_project_boxed_opaque_existential_1((v0 + 16), v6);
      v23 = (*(v7 + 40) + **(v7 + 40));
      v8 = swift_task_alloc();
      *(v0 + 128) = v8;
      *v8 = v0;
      v8[1] = closure #1 in RemoteConversationService.prepare(bridge:reply:);

      return v23(v6, v7);
    }

    v11 = 0x80000001DCA85D50;
    v12 = 0xD00000000000003FLL;
  }

  else
  {
    v10 = *(v0 + 112);

    v24[0] = 0;
    v24[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(52);
    MEMORY[0x1E12A1580](0x74784520776F6C46, 0xEF206E6F69736E65);
    MEMORY[0x1E12A1580](0xD000000000000016, 0x80000001DCA837C0);
    MEMORY[0x1E12A1580](0xD000000000000023, 0x80000001DCA85D20);
    v12 = 0;
    v11 = 0xE000000000000000;

    outlined destroy of ReferenceResolutionClientProtocol?((v10 + 5), &_s14SiriKitRuntime14Conversational_pSgMd, &_s14SiriKitRuntime14Conversational_pSgMR);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
  }

  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static Logger.executor);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v24[0] = v17;
    *v16 = 136315138;
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v11, v24);

    *(v16 + 4) = v18;
    _os_log_impl(&dword_1DC659000, v14, v15, "%s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
    MEMORY[0x1E12A2F50](v17, -1, -1);
    MEMORY[0x1E12A2F50](v16, -1, -1);
  }

  else
  {
  }

  v19 = *(v0 + 88);
  lazy protocol witness table accessor for type IllegalStateError and conformance IllegalStateError();
  v20 = swift_allocError();
  *v21 = v12;
  v21[1] = v11;
  v19();

  v22 = *(v0 + 8);

  return v22();
}

{
  v1 = *(v0 + 144);
  v2 = *(v0 + 112);
  (*(v0 + 88))(0);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  outlined destroy of RemoteConversationService.State(v2 + v1, type metadata accessor for SiriRequest);
  __swift_destroy_boxed_opaque_existential_1Tm(v2);

  v3 = *(v0 + 8);

  return v3();
}

{
  v2 = *v1;
  *(*v1 + 136) = v0;

  v3 = *(v2 + 120);
  if (v0)
  {
    v4 = closure #1 in RemoteConversationService.prepare(bridge:reply:);
  }

  else
  {
    v4 = closure #1 in RemoteConversationService.prepare(bridge:reply:);
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

{
  v1 = *(v0 + 136);
  v2 = *(v0 + 144);
  v3 = *(v0 + 112);
  v4 = *(v0 + 88);
  v5 = v1;
  v4(v1);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  outlined destroy of RemoteConversationService.State(v3 + v2, type metadata accessor for SiriRequest);
  __swift_destroy_boxed_opaque_existential_1Tm(v3);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t Conversation.prepare()()
{
  v45 = v0;
  v1 = v0[21];
  v2 = v0[15];
  v3 = v0[8];
  v4 = OBJC_IVAR____TtC14SiriKitRuntime12Conversation_state;
  swift_beginAccess();
  outlined init with copy of Conversation.State(v3 + v4, v2, type metadata accessor for Conversation.State);
  v41 = Conversation.State.assertAcceptedInput(function:)(v1, "prepare()", 9, 2u);
  v42 = v4;
  v43 = v3;
  outlined destroy of Conversation.State(v0[15], type metadata accessor for Conversation.State);
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v6 = v0[20];
  v5 = v0[21];
  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Logger.executor);
  outlined init with copy of Conversation.State(v5, v6, type metadata accessor for SiriRequest);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();

  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[20];
  if (v10)
  {
    v12 = v0[11];
    v13 = v0[12];
    v14 = v0[10];
    v15 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v44[0] = v40;
    *v15 = 136315394;
    Input.identifier.getter();
    _s14SiriKitRuntime22CorrectionsUndoManagerCAcA0D6EngineAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    (*(v12 + 8))(v13, v14);
    outlined destroy of Conversation.State(v11, type metadata accessor for SiriRequest);
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, v44);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2080;
    v20 = ObjectIdentifier.debugDescription.getter();
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, v44);

    *(v15 + 14) = v22;
    _os_log_impl(&dword_1DC659000, v8, v9, "[Conversation] Submits speculation task %s. %s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v40, -1, -1);
    MEMORY[0x1E12A2F50](v15, -1, -1);
  }

  else
  {

    outlined destroy of Conversation.State(v11, type metadata accessor for SiriRequest);
  }

  v23 = v0[21];
  v24 = v0[18];
  v25 = v0[19];
  v26 = v0[17];
  v27 = v0[14];
  v29 = v0[8];
  v28 = v0[9];
  v38 = v23;
  v39 = v28;
  v30 = type metadata accessor for TaskPriority();
  (*(*(v30 - 8) + 56))(v28, 1, 1, v30);
  outlined init with copy of Conversation.State(v23, v25, type metadata accessor for SiriRequest);
  v31 = _s14SiriKitRuntime22CorrectionsUndoManagerCAcA0D6EngineAAWlTm_0(&lazy protocol witness table cache variable for type Conversation and conformance Conversation, type metadata accessor for Conversation, &protocol conformance descriptor for Conversation);
  v32 = (*(v26 + 80) + 32) & ~*(v26 + 80);
  v33 = (v24 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = swift_allocObject();
  *(v34 + 16) = v29;
  *(v34 + 24) = v31;
  outlined init with take of Conversation.State(v25, v34 + v32, type metadata accessor for SiriRequest);
  *(v34 + v33) = v29;
  *(v34 + ((v33 + 15) & 0xFFFFFFFFFFFFFFF8)) = v41;
  swift_retain_n();

  v35 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfC14SiriKitRuntime4NodeCyAH9FlowAgentCGSg_Tt2g5(0, 0, v39, &async function pointer to partial apply for closure #1 in Conversation.prepare(), v34);
  outlined destroy of Conversation.State(v38, type metadata accessor for SiriRequest);
  *v27 = v35;
  v27[1] = v41;
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  outlined assign with take of Conversation.State(v27, v43 + v42);
  swift_endAccess();

  v36 = v0[1];

  return v36();
}

{
  v1[8] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v1[9] = swift_task_alloc();
  v2 = type metadata accessor for UUID();
  v1[10] = v2;
  v1[11] = *(v2 - 8);
  v1[12] = swift_task_alloc();
  v1[13] = type metadata accessor for Conversation.State(0);
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v3 = type metadata accessor for SiriRequest(0);
  v1[16] = v3;
  v4 = *(v3 - 8);
  v1[17] = v4;
  v1[18] = *(v4 + 64);
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](Conversation.prepare(), v0, 0);
}

uint64_t sub_1DC6E3B88()
{
  v1 = type metadata accessor for SiriRequest(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();

  v5 = v1[5];
  v6 = type metadata accessor for Input();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  v7 = (v0 + v3 + v1[8]);
  v8 = v7[1];
  if (v8 >> 60 != 15)
  {
    outlined consume of Data._Representation(*v7, v8);
  }

  v9 = v0 + v3 + v1[12];
  v10 = type metadata accessor for SiriRequestIdentities(0);
  if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
  {
    v16 = v4;
    v11 = type metadata accessor for IdentifiedUser();
    v12 = *(v11 - 8);
    v13 = *(v12 + 48);
    if (!v13(v9, 1, v11))
    {
      (*(v12 + 8))(v9, v11);
    }

    v14 = *(v10 + 20);
    if (!v13(v9 + v14, 1, v11))
    {
      (*(v12 + 8))(v9 + v14, v11);
    }

    v4 = v16;
  }

  return MEMORY[0x1EEE6BDD0](v0, ((((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t closure #1 in Conversation.prepare()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[5] = a1;
  v6[6] = a4;
  v8 = type metadata accessor for UUID();
  v6[9] = v8;
  v6[10] = *(v8 - 8);
  v6[11] = swift_task_alloc();
  v6[12] = type metadata accessor for SiriRequest(0);
  v6[13] = swift_task_alloc();
  v6[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in Conversation.prepare(), a5, 0);
}

uint64_t closure #1 in Conversation.prepare()()
{
  v24 = v0;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = v0[14];
  v2 = v0[6];
  v3 = type metadata accessor for Logger();
  v0[15] = __swift_project_value_buffer(v3, static Logger.executor);
  outlined init with copy of Conversation.State(v2, v1, type metadata accessor for SiriRequest);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[14];
  if (v6)
  {
    v8 = v0[11];
    v10 = v0[9];
    v9 = v0[10];
    v11 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v23 = v22;
    *v11 = 136315394;
    Input.identifier.getter();
    _s14SiriKitRuntime22CorrectionsUndoManagerCAcA0D6EngineAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v13;
    (*(v9 + 8))(v8, v10);
    outlined destroy of Conversation.State(v7, type metadata accessor for SiriRequest);
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v14, &v23);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2080;
    v16 = ObjectIdentifier.debugDescription.getter();
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &v23);

    *(v11 + 14) = v18;
    _os_log_impl(&dword_1DC659000, v4, v5, "[Conversation] Running queued speculation task %s. %s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v22, -1, -1);
    MEMORY[0x1E12A2F50](v11, -1, -1);
  }

  else
  {

    outlined destroy of Conversation.State(v7, type metadata accessor for SiriRequest);
  }

  v19 = swift_task_alloc();
  v0[16] = v19;
  *v19 = v0;
  v19[1] = closure #1 in Conversation.prepare();
  v20 = v0[8];

  return Conversation.speculativelyExecute(from:)(v20);
}

{
  v20 = v0;
  outlined init with copy of Conversation.State(*(v0 + 48), *(v0 + 104), type metadata accessor for SiriRequest);

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();

  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 104);
  if (v3)
  {
    v5 = *(v0 + 88);
    v7 = *(v0 + 72);
    v6 = *(v0 + 80);
    v8 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v19 = v18;
    *v8 = 136315394;
    Input.identifier.getter();
    _s14SiriKitRuntime22CorrectionsUndoManagerCAcA0D6EngineAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    v11 = v10;
    (*(v6 + 8))(v5, v7);
    outlined destroy of Conversation.State(v4, type metadata accessor for SiriRequest);
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v11, &v19);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    v13 = ObjectIdentifier.debugDescription.getter();
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v19);

    *(v8 + 14) = v15;
    _os_log_impl(&dword_1DC659000, v1, v2, "[Conversation] Done running queued speculation task %s. %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v18, -1, -1);
    MEMORY[0x1E12A2F50](v8, -1, -1);
  }

  else
  {

    outlined destroy of Conversation.State(v4, type metadata accessor for SiriRequest);
  }

  **(v0 + 40) = *(v0 + 24);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t Conversation.speculativelyExecute(from:)()
{
  v1 = *(*v0 + 280);

  return MEMORY[0x1EEE6DFA0](Conversation.speculativelyExecute(from:), v1, 0);
}

{
  v1 = *(v0 + 600);
  v2 = *(v0 + 336);
  v3 = *(v0 + 312);
  v4 = *(v0 + 320);
  PrepareResponse.type.getter();
  v5 = (*(v4 + 88))(v2, v3);
  if (v5 == v1)
  {
    v6 = (*(v0 + 280) + *(v0 + 440));
    v7 = *v6;
    v8 = v6[1];
    *(v0 + 496) = v8;

    v9 = PrepareResponse.next.getter();
    *(v0 + 504) = v9;
    v10 = PrepareResponse.onChildFlowCompletion.getter();
    *(v0 + 512) = v10;
    v11 = swift_task_alloc();
    *(v0 + 520) = v11;
    *v11 = v0;
    v11[1] = Conversation.speculativelyExecute(from:);
    v12 = *(v0 + 472);

    return Conversation.push(rcId:parentNode:flow:continuedTasks:parentEnvironment:completion:)(v7, v8, v12, v9, 0, 0, v10);
  }

  else if (v5 == *(v0 + 604))
  {
    v14 = *(v0 + 480);

    return MEMORY[0x1EEE6DFA0](Conversation.speculativelyExecute(from:), v14, 0);
  }

  else
  {
    v16 = *(v0 + 320);
    v15 = *(v0 + 328);
    v17 = *(v0 + 312);
    static ConversationSELFHelper.shared.getter();

    dispatch thunk of ConversationSELFHelper.emitEagerExecutionContextFailed(rcId:reason:)();

    _StringGuts.grow(_:)(33);
    *(v0 + 248) = 0;
    *(v0 + 256) = 0xE000000000000000;
    v18 = (v0 + 248);
    MEMORY[0x1E12A1580](0xD00000000000001FLL, 0x80000001DCA7E890);
    PrepareResponse.type.getter();
    _print_unlocked<A, B>(_:_:)();
    (*(v16 + 8))(v15, v17);
    v19 = *v18;
    v20 = v18[1];

    return specialized static SiriKitRuntimeCrashHelper.logAndCrash(_:file:line:)(v19, v20, "/Library/Caches/com.apple.xbs/Sources/SiriKitExecutor/SiriKitRuntime/Runtime/Conversation.swift", 95, 2, 438);
  }
}

{
  v1 = *(*v0 + 280);

  return MEMORY[0x1EEE6DFA0](Conversation.speculativelyExecute(from:), v1, 0);
}

{
  v36 = v0;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.executor);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 280);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v35[0] = v6;
    *v5 = 136315394;
    v7 = (v4 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_rcId);
    swift_beginAccess();
    v9 = *v7;
    v8 = v7[1];

    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v8, v35);

    *(v5 + 4) = v10;
    *(v5 + 12) = 2080;
    *(v5 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v4 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_pluginId), *(v4 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_pluginId + 8), v35);
    _os_log_impl(&dword_1DC659000, v2, v3, "[Conversation] Speculatively executing rcId: %s, plugin: %s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v6, -1, -1);
    MEMORY[0x1E12A2F50](v5, -1, -1);
  }

  v11 = *(v0 + 416);
  v12 = *(v0 + 424);
  v14 = *(v0 + 272);
  v13 = *(v0 + 280);
  *(v0 + 432) = type metadata accessor for ConversationSELFHelper();
  static ConversationSELFHelper.shared.getter();
  *(v0 + 440) = OBJC_IVAR____TtC14SiriKitRuntime12Conversation_rcId;
  swift_beginAccess();

  v15 = v14;
  dispatch thunk of ConversationSELFHelper.emitEagerExecutionContextStarted(rcId:fromPlugin:)();

  v16 = OBJC_IVAR____TtC14SiriKitRuntime12Conversation_state;
  v17 = OBJC_IVAR____TtC14SiriKitRuntime12Conversation_isPaused;
  *(v0 + 448) = OBJC_IVAR____TtC14SiriKitRuntime12Conversation_state;
  *(v0 + 456) = v17;

  swift_beginAccess();
  swift_beginAccess();
  outlined init with copy of Conversation.State(v13 + v16, v12, type metadata accessor for Conversation.State);
  outlined init with take of Conversation.State(v12, v11, type metadata accessor for Conversation.State);
  LODWORD(v17) = (swift_getEnumCaseMultiPayload() - 1) & 0xFFFFFFFD;
  outlined destroy of Conversation.State(v11, type metadata accessor for Conversation.State);
  if (v17 || (v18 = MEMORY[0x1E69CFFE0], *(v0 + 600) = *MEMORY[0x1E69CFFD8], *(v0 + 604) = *v18, *(v0 + 608) = *MEMORY[0x1E69CFB18], *(v0 + 464) = 0, v19 = *(v0 + 280), (*(v19 + *(v0 + 456)) & 1) != 0) || (v21 = *(v0 + 400), v20 = *(v0 + 408), outlined init with copy of Conversation.State(v19 + *(v0 + 448), v20, type metadata accessor for Conversation.State), outlined init with take of Conversation.State(v20, v21, type metadata accessor for Conversation.State), swift_getEnumCaseMultiPayload() == 5) || (outlined destroy of Conversation.State(*(v0 + 400), type metadata accessor for Conversation.State), (static Task<>.isCancelled.getter() & 1) != 0))
  {
    outlined init with copy of Conversation.State(*(v0 + 280) + *(v0 + 448), *(v0 + 376), type metadata accessor for Conversation.State);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v22 = *(v0 + 456);
      v23 = *(v0 + 280);
      outlined destroy of Conversation.State(*(v0 + 376), type metadata accessor for Conversation.State);
      if (*(v23 + v22) == 1)
      {
        v24 = *(v0 + 448);
        v25 = *(v0 + 384);
        v26 = *(v0 + 280);
        *v25 = v14;
        swift_storeEnumTagMultiPayload();
        swift_beginAccess();

        outlined assign with take of Conversation.State(v25, v26 + v24);
        swift_endAccess();
        v34 = v14;
LABEL_15:

        v28 = *(v0 + 8);

        return v28(v34);
      }
    }

    else
    {
      v27 = *(v0 + 376);

      outlined destroy of Conversation.State(v27, type metadata accessor for Conversation.State);
    }

    v34 = 0;
    goto LABEL_15;
  }

  if (v14 || (v15 = (*(**(*(v0 + 280) + 112) + 216))()) != 0)
  {
    *(v0 + 472) = v15;
    *(v0 + 480) = *(v15 + 16);

    v30 = swift_task_alloc();
    *(v0 + 488) = v30;
    *v30 = v0;
    v30[1] = Conversation.speculativelyExecute(from:);
    v31 = *(v0 + 360);

    return FlowAgent.prepare()(v31);
  }

  else
  {
    static ConversationSELFHelper.shared.getter();

    dispatch thunk of ConversationSELFHelper.emitEagerExecutionContextFailed(rcId:reason:)();

    lazy protocol witness table accessor for type IllegalStateError and conformance IllegalStateError();
    swift_allocError();
    *v32 = 0xD00000000000002FLL;
    v32[1] = 0x80000001DCA7E9D0;
    swift_willThrow();

    v33 = *(v0 + 8);

    return v33();
  }
}

{
  v1 = v0[35];
  v0[66] = *(v0[60] + 112);
  return MEMORY[0x1EEE6DFA0](Conversation.speculativelyExecute(from:), v1, 0);
}

{
  v1 = *(v0 + 480);
  v2 = *(v0 + 464);
  type metadata accessor for SiriEnvironment();
  v3 = *(v1 + 112);
  *(v0 + 264) = v3;
  type metadata accessor for AnyFlow();
  _s14SiriKitRuntime22CorrectionsUndoManagerCAcA0D6EngineAAWlTm_0(&lazy protocol witness table cache variable for type AnyFlow and conformance AnyFlow, MEMORY[0x1E69CF990], MEMORY[0x1E69CF978]);
  swift_retain_n();
  static SiriEnvironment.withTaskLocalEnvironment<A, B>(for:_:)();
  *(v0 + 544) = v2;

  if (*(v1 + 120))
  {
    outlined init with copy of Any(v0 + 16, v0 + 48);

    dispatch thunk of AnyChildCompletion.completion(exitValue:)();

    outlined destroy of ReferenceResolutionClientProtocol?(v0 + 48, &_sypSgMd, &_sypSgMR);
  }

  v4 = *(v0 + 608);
  v6 = *(v0 + 296);
  v5 = *(v0 + 304);
  v8 = *(v0 + 280);
  v7 = *(v0 + 288);
  *v5 = v3;
  outlined init with copy of Any(v0 + 16, (v5 + 1));
  (*(v6 + 104))(v5, v4, v7);
  static FlowTrace.trace(event:)();
  (*(v6 + 8))(v5, v7);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return MEMORY[0x1EEE6DFA0](Conversation.speculativelyExecute(from:), v8, 0);
}

{
  v1 = *(*v0 + 280);

  return MEMORY[0x1EEE6DFA0](Conversation.speculativelyExecute(from:), v1, 0);
}

{
  v1 = v0[67];
  v2 = v0[60];
  v3 = (v0[35] + v0[55]);
  v4 = *v3;
  v5 = v3[1];
  v0[71] = v5;
  v6 = *(v2 + 152);
  v0[72] = v6;

  v7 = PrepareResponse.onChildFlowCompletion.getter();
  v0[73] = v7;
  v8 = swift_task_alloc();
  v0[74] = v8;
  *v8 = v0;
  v8[1] = Conversation.speculativelyExecute(from:);
  v9 = v0[69];

  return Conversation.push(rcId:parentNode:flow:continuedTasks:parentEnvironment:completion:)(v4, v5, 0, v9, v6, v1, v7);
}

{
  v1 = *(*v0 + 280);

  return MEMORY[0x1EEE6DFA0](Conversation.speculativelyExecute(from:), v1, 0);
}

{

  static ConversationSELFHelper.shared.getter();

  dispatch thunk of ConversationSELFHelper.emitEagerExecutionContextEnded(rcId:)();

  v1 = v0[68];
  v2 = v0[56];
  v3 = v0[52];
  v4 = v0[53];
  v5 = v0[35];
  (*(v0[44] + 8))(v0[45], v0[43]);
  outlined init with copy of Conversation.State(v5 + v2, v4, type metadata accessor for Conversation.State);
  outlined init with take of Conversation.State(v4, v3, type metadata accessor for Conversation.State);
  LODWORD(v4) = (swift_getEnumCaseMultiPayload() - 1) & 0xFFFFFFFD;
  outlined destroy of Conversation.State(v3, type metadata accessor for Conversation.State);
  v6 = v0[35];
  if (v4)
  {
    goto LABEL_6;
  }

  v0[58] = v1;
  if (*(v6 + v0[57]))
  {
    goto LABEL_6;
  }

  v7 = v0[50];
  v8 = v0[51];
  outlined init with copy of Conversation.State(v6 + v0[56], v8, type metadata accessor for Conversation.State);
  outlined init with take of Conversation.State(v8, v7, type metadata accessor for Conversation.State);
  if (swift_getEnumCaseMultiPayload() == 5)
  {
    v6 = v0[35];
LABEL_6:
    outlined init with copy of Conversation.State(v6 + v0[56], v0[47], type metadata accessor for Conversation.State);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v10 = v0[57];
      v11 = v0[35];
      outlined destroy of Conversation.State(v0[47], type metadata accessor for Conversation.State);
      if (*(v11 + v10) == 1)
      {
        v12 = v0[56];
        v13 = v0[48];
        v14 = v0[35];
        *v13 = 0;
        swift_storeEnumTagMultiPayload();
        swift_beginAccess();
        outlined assign with take of Conversation.State(v13, v14 + v12);
        swift_endAccess();
      }
    }

    else
    {
      outlined destroy of Conversation.State(v0[47], type metadata accessor for Conversation.State);
    }

    v15 = v0[1];

    return v15(0);
  }

  outlined destroy of Conversation.State(v0[50], type metadata accessor for Conversation.State);
  v9 = static Task<>.isCancelled.getter();
  v6 = v0[35];
  if (v9)
  {
    goto LABEL_6;
  }

  v17 = (*(**(v6 + 112) + 216))();
  if (v17)
  {
    v0[59] = v17;
    v0[60] = *(v17 + 16);

    v18 = swift_task_alloc();
    v0[61] = v18;
    *v18 = v0;
    v18[1] = Conversation.speculativelyExecute(from:);
    v19 = v0[45];

    return FlowAgent.prepare()(v19);
  }

  else
  {
    static ConversationSELFHelper.shared.getter();

    dispatch thunk of ConversationSELFHelper.emitEagerExecutionContextFailed(rcId:reason:)();

    lazy protocol witness table accessor for type IllegalStateError and conformance IllegalStateError();
    swift_allocError();
    *v20 = 0xD00000000000002FLL;
    v20[1] = 0x80000001DCA7E9D0;
    swift_willThrow();

    v21 = v0[1];

    return v21();
  }
}