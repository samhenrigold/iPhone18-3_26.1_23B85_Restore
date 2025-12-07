void ContextUpdater.valueFromSessionState(forKey:)(_OWORD *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v16 - v5;
  v7 = type metadata accessor for UserID();
  v8 = *(v7 - 8);
  v9.n128_f64[0] = MEMORY[0x1EEE9AC00](v7);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*v2 + 360))(v9);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v6, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Logger.conversationBridge);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1DC659000, v13, v14, "UserId is nil. Cannot get value from SessionState. Returning nil", v15, 2u);
      MEMORY[0x1E12A2F50](v15, -1, -1);
    }

    *a2 = 0u;
    a2[1] = 0u;
  }

  else
  {
    (*(v8 + 32))(v11, v6, v7);
    __swift_project_boxed_opaque_existential_1(v2 + 2, v2[5]);
    dispatch thunk of ConversationSessionState.value(forKey:userId:)();
    (*(v8 + 8))(v11, v7);
  }
}

void closure #1 in ContextUpdater.close()(char a1)
{
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.conversationBridge);
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 67109120;
    *(v4 + 4) = a1 & 1;
    _os_log_impl(&dword_1DC659000, oslog, v3, "Synced=%{BOOL}d the context to context collector", v4, 8u);
    MEMORY[0x1E12A2F50](v4, -1, -1);
  }
}

Swift::Void __swiftcall ContextUpdater.applyResponseText(_:)(Swift::OpaquePointer a1)
{
  v3 = type metadata accessor for ConversationSessionKey();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A29_Nlu_External_LegacyNLContextVSgMd, &_s12SiriNLUTypes0A29_Nlu_External_LegacyNLContextVSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v25 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = v25 - v12;
  if (*(a1._rawValue + 2))
  {
    (*(*v1 + 360))(v11);
    v14 = type metadata accessor for UserID();
    v15 = (*(*(v14 - 8) + 48))(v13, 1, v14);
    outlined destroy of ReferenceResolutionClientProtocol?(v13, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
    if (v15 == 1)
    {
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
        v20 = swift_slowAlloc();
        v25[0] = v20;
        *v19 = 136315138;
        *(v19 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, 0x80000001DCA7E240, v25);
        _os_log_impl(&dword_1DC659000, v17, v18, "Cannot use this instance of SingleUserContextUpdater to call %s since userId is nil", v19, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v20);
        MEMORY[0x1E12A2F50](v20, -1, -1);
        MEMORY[0x1E12A2F50](v19, -1, -1);
      }
    }

    else
    {
      swift_beginAccess();

      specialized Array.append<A>(contentsOf:)(v21);
      swift_endAccess();
      (*(v4 + 104))(v6, *MEMORY[0x1E69D07E8], v3);
      ContextUpdater.valueFromSessionState(forKey:)(v25);
      (*(v4 + 8))(v6, v3);
      if (v26)
      {
        v22 = type metadata accessor for Siri_Nlu_External_LegacyNLContext();
        v23 = swift_dynamicCast();
        (*(*(v22 - 8) + 56))(v9, v23 ^ 1u, 1, v22);
      }

      else
      {
        outlined destroy of ReferenceResolutionClientProtocol?(v25, &_sypSgMd, &_sypSgMR);
        v24 = type metadata accessor for Siri_Nlu_External_LegacyNLContext();
        (*(*(v24 - 8) + 56))(v9, 1, 1, v24);
      }

      ContextUpdater.flushResponseText(legacyNLContext:)(v9);
      outlined destroy of ReferenceResolutionClientProtocol?(v9, &_s12SiriNLUTypes0A29_Nlu_External_LegacyNLContextVSgMd, &_s12SiriNLUTypes0A29_Nlu_External_LegacyNLContextVSgMR);
    }
  }
}

void ContextUpdater.flushResponseText(legacyNLContext:)(uint64_t a1)
{
  v3 = type metadata accessor for Google_Protobuf_StringValue();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ConversationSessionKey();
  v41 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v40 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A29_Nlu_External_LegacyNLContextVSgMd, &_s12SiriNLUTypes0A29_Nlu_External_LegacyNLContextVSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v35 - v10;
  v12 = type metadata accessor for Siri_Nlu_External_LegacyNLContext();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1;
  v17 = v16;
  v19 = v18;
  outlined init with copy of ReferenceResolutionClientProtocol?(v15, v11, &_s12SiriNLUTypes0A29_Nlu_External_LegacyNLContextVSgMd, &_s12SiriNLUTypes0A29_Nlu_External_LegacyNLContextVSgMR);
  if ((*(v17 + 48))(v11, 1, v19) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v11, &_s12SiriNLUTypes0A29_Nlu_External_LegacyNLContextVSgMd, &_s12SiriNLUTypes0A29_Nlu_External_LegacyNLContextVSgMR);
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, static Logger.conversationBridge);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_1DC659000, v21, v22, "No LegacyNLContext to apply responseText to", v23, 2u);
      MEMORY[0x1E12A2F50](v23, -1, -1);
    }
  }

  else
  {
    v38 = v17;
    (*(v17 + 32))(v14, v11, v19);
    swift_beginAccess();
    v39 = v1;
    v24 = *(v1 + 240);
    v25 = *(v24 + 16);
    v26 = MEMORY[0x1E69E7CC0];
    if (v25)
    {
      v35 = v14;
      v36 = v19;
      v37 = v7;
      v42[0] = MEMORY[0x1E69E7CC0];

      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v25, 0);
      v26 = v42[0];
      v27 = v24 + 40;
      do
      {

        String.toProtobufStringValue()();

        v42[0] = v26;
        v29 = *(v26 + 16);
        v28 = *(v26 + 24);
        if (v29 >= v28 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1);
          v26 = v42[0];
        }

        *(v26 + 16) = v29 + 1;
        (*(v4 + 32))(v26 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v29, v6, v3);
        v27 += 16;
        --v25;
      }

      while (v25);

      v19 = v36;
      v7 = v37;
      v14 = v35;
    }

    MEMORY[0x1E129C340](v26);
    v42[3] = v19;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v42);
    v31 = v38;
    (*(v38 + 16))(boxed_opaque_existential_0, v14, v19);
    v32 = v19;
    v34 = v40;
    v33 = v41;
    (*(v41 + 104))(v40, *MEMORY[0x1E69D07E8], v7);
    ContextUpdater.updateSessionState(withValue:forKey:)(v42, v34);
    (*(v33 + 8))(v34, v7);
    (*(v31 + 8))(v14, v32);
    outlined destroy of ReferenceResolutionClientProtocol?(v42, &_sypSgMd, &_sypSgMR);
  }
}

id ContextUpdater.applyMappedDomainEntities(_:)(unint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s32SiriReferenceResolutionDataModel15GroupIdentifierVSgMd, &_s32SiriReferenceResolutionDataModel15GroupIdentifierVSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v76 = v63 - v3;
  v83 = type metadata accessor for RREntity();
  v81 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83);
  v80 = v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v79 = v63 - v6;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 1);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for conversationBridge != -1)
  {
LABEL_28:
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  v12 = __swift_project_value_buffer(v11, static Logger.conversationBridge);

  v78 = v12;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v85[0] = v16;
    *v15 = 136315138;
    v17 = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SAMappedDomainEntity, 0x1E69C7908);
    v18 = MEMORY[0x1E12A16D0](a1, v17);
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, v85);

    *(v15 + 4) = v20;
    _os_log_impl(&dword_1DC659000, v13, v14, "Received MappedDomainEntities=%s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    MEMORY[0x1E12A2F50](v16, -1, -1);
    MEMORY[0x1E12A2F50](v15, -1, -1);
  }

  UUID.init()();
  v75 = UUID.uuidString.getter();
  v82 = v21;
  (*(v8 + 8))(v10, v7);
  v22 = a1 & 0xFFFFFFFFFFFFFF8;
  if (!(a1 >> 62))
  {
    v23 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v23)
    {
      goto LABEL_6;
    }

LABEL_30:
    v84 = MEMORY[0x1E69E7CC0];
LABEL_31:

    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v85[0] = v56;
      *v55 = 136315138;

      v58 = MEMORY[0x1E12A16D0](v57, v83);
      v60 = v59;

      v61 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v58, v60, v85);

      *(v55 + 4) = v61;
      _os_log_impl(&dword_1DC659000, v53, v54, "#ContextUpdater: Created RRaaS entities=%s from MappedDomainEntities", v55, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v56);
      MEMORY[0x1E12A2F50](v56, -1, -1);
      MEMORY[0x1E12A2F50](v55, -1, -1);
    }

    ContextUpdater.applyRREntities(_:)(v62);
    swift_bridgeObjectRelease_n();
    return 0;
  }

  v23 = __CocoaSet.count.getter();
  if (!v23)
  {
    goto LABEL_30;
  }

LABEL_6:
  v24 = 0;
  v8 = a1 & 0xC000000000000001;
  v73 = v81 + 8;
  v74 = (v81 + 16);
  v10 = (v81 + 32);
  v84 = MEMORY[0x1E69E7CC0];
  v7 = off_1E8646000;
  while (1)
  {
    v25 = v24;
    while (1)
    {
      if (v8)
      {
        v26 = MEMORY[0x1E12A1FE0](v25, a1);
      }

      else
      {
        if (v25 >= *(v22 + 16))
        {
          goto LABEL_27;
        }

        v26 = *(a1 + 8 * v25 + 32);
      }

      v27 = v26;
      v24 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v28 = [v26 v7[475]];
      if (v28)
      {
        break;
      }

      ++v25;
      if (v24 == v23)
      {
        goto LABEL_31;
      }
    }

    v70 = a1;
    v29 = v10;
    v30 = v28;
    v31 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = v32;

    v71 = v31;
    v72 = v33;
    v34 = specialized ContextUpdater.convertPayloadToUsoEntity(payload:)(v31, v33);
    if (!v34)
    {

      lazy protocol witness table accessor for type ConversationOutputError and conformance ConversationOutputError();
      v51 = swift_allocError();
      *v52 = 9;
      outlined consume of Data._Representation(v71, v72);

      return v51;
    }

    v35 = v34;
    v69 = v29;
    result = [v27 identifier];
    if (!result)
    {
      break;
    }

    v37 = result;
    v77 = v35;
    v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v67 = v39;
    v68 = v38;

    result = [v27 appBundleId];
    a1 = v70;
    if (!result)
    {
      __break(1u);
      break;
    }

    v40 = result;
    v63[1] = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v63[0] = v41;

    v65 = type metadata accessor for GroupIdentifier();
    v42 = *(v65 - 8);
    v64 = *(v42 + 56);
    v66 = v42 + 56;
    v43 = v76;
    v64(v76, 1, 1, v65);

    v44 = v79;
    RREntity.init(id:appBundleId:usoEntity:dataType:data:group:)();

    GroupIdentifier.init(id:seq:)();
    v64(v43, 0, 1, v65);
    RREntity.group.setter();
    (*v74)(v80, v44, v83);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v84 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v84[2] + 1, 1, v84);
    }

    v46 = v84[2];
    v45 = v84[3];
    if (v46 >= v45 >> 1)
    {
      v84 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v45 > 1), v46 + 1, 1, v84);
    }

    outlined consume of Data._Representation(v71, v72);

    v47 = v81;
    v48 = v83;
    (*(v81 + 8))(v79, v83);
    v49 = v84;
    v84[2] = v46 + 1;
    v50 = v48;
    v10 = v69;
    (*(v47 + 32))(v49 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v46, v80, v50);
    v7 = off_1E8646000;
    if (v24 == v23)
    {
      goto LABEL_31;
    }
  }

  __break(1u);
  return result;
}

uint64_t ContextUpdater.applyCorrectionsDonation(_:)(uint64_t a1)
{
  v23 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SiriCorrections0B7ContextVSgMd, &_s15SiriCorrections0B7ContextVSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v24 = &v23 - v3;
  v4 = type metadata accessor for CorrectionsDirectInvocation();
  v25 = *(v4 - 8);
  v26 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UserID();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v23 - v12;
  v14 = type metadata accessor for CorrectionsContext();
  v15 = *(v14 - 8);
  v16.n128_f64[0] = MEMORY[0x1EEE9AC00](v14);
  v18 = &v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*v1 + 360))(v16);
  if ((*(v8 + 48))(v13, 1, v7))
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v13, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  }

  else
  {
    (*(v8 + 16))(v10, v13, v7);
    outlined destroy of ReferenceResolutionClientProtocol?(v13, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
    UserID.sharedUserId.getter();
    (*(v8 + 8))(v10, v7);
  }

  CorrectionsContext.init(userId:assistantId:)();
  v19 = v1[15];
  v20 = v1[16];
  __swift_project_boxed_opaque_existential_1(v1 + 12, v19);
  Parse.DirectInvocation.identifier.getter();
  Parse.DirectInvocation.userData.getter();
  CorrectionsDirectInvocation.init(identifier:userData:)();
  v21 = v24;
  (*(v15 + 16))(v24, v18, v14);
  (*(v15 + 56))(v21, 0, 1, v14);
  (*(v20 + 40))(v6, v21, v19, v20);
  outlined destroy of ReferenceResolutionClientProtocol?(v21, &_s15SiriCorrections0B7ContextVSgMd, &_s15SiriCorrections0B7ContextVSgMR);
  (*(v25 + 8))(v6, v26);
  return (*(v15 + 8))(v18, v14);
}

uint64_t ContextUpdater.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 192));

  outlined destroy of ReferenceResolutionClientProtocol?(v0 + OBJC_IVAR____TtC14SiriKitRuntime14ContextUpdater_userId, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);

  return v0;
}

uint64_t ContextUpdater.__deallocating_deinit()
{
  ContextUpdater.deinit();

  return swift_deallocClassInstance();
}

unint64_t specialized _dictionaryUpCast<A, B, C, D>(_:)(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = (*(a1 + 48) + ((v12 << 10) | (16 * v13)));
        v16 = *v14;
        v15 = v14[1];

        swift_dynamicCast();
        outlined init with take of Any(&v22, v24);
        outlined init with take of Any(v24, v25);
        outlined init with take of Any(v25, &v23);
        result = specialized __RawDictionaryStorage.find<A>(_:)(v16, v15);
        if (v17)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v16;
          v9[1] = v15;
          v10 = result;

          v11 = (v2[7] + 32 * v10);
          __swift_destroy_boxed_opaque_existential_1Tm(v11);
          result = outlined init with take of Any(&v23, v11);
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v18 = (v2[6] + 16 * result);
          *v18 = v16;
          v18[1] = v15;
          result = outlined init with take of Any(&v23, (v2[7] + 32 * result));
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t closure #1 in SessionStateContextKeysManager.provideKeysToFlushForServerFallbackRequest()@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v15 = a2;
  v3 = type metadata accessor for ConversationSessionKey();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - v8;
  swift_beginAccess();

  v11 = specialized _dictionaryUpCast<A, B, C, D>(_:)(v10);

  v17 = v11;
  swift_beginAccess();
  v16 = *(a1 + 32);
  v12 = *(v4 + 104);
  v12(v6, *MEMORY[0x1E69D07F0], v3);

  specialized Set._Variant.insert(_:)(v9, v6);
  v13 = *(v4 + 8);
  v13(v9, v3);
  v12(v6, *MEMORY[0x1E69D07B8], v3);
  specialized Set._Variant.insert(_:)(v9, v6);
  v13(v9, v3);
  v12(v6, *MEMORY[0x1E69D07C8], v3);
  specialized Set._Variant.insert(_:)(v9, v6);
  v13(v9, v3);
  specialized Sequence.forEach(_:)(v16, &v17);

  *v15 = v17;
  return result;
}

uint64_t SessionStateContextKeysManager.deinit()
{

  return v0;
}

uint64_t SessionStateContextKeysManager.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void *SessionStateContextKeysManager.init()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  v0[2] = v1;
  v2 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC16SiriMessageTypes22ConversationSessionKeyO_s8Sendable_pTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v3 = MEMORY[0x1E69E7CD0];
  v0[3] = v2;
  v0[4] = v3;
  return v0;
}

uint64_t specialized Dictionary._Variant.updateValue(_:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v4;
  v13 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_9;
  }

  v5 = v14;
  if (v12[3] < v18)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, isUniquelyReferenced_nonNull_native);
    v13 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4);
    if ((v5 & 1) == (v19 & 1))
    {
      goto LABEL_6;
    }

    v13 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_9:
    v22 = v13;
    specialized _NativeDictionary.copy()();
    v13 = v22;
    if (v5)
    {
      goto LABEL_7;
    }

LABEL_10:
    specialized _NativeDictionary._insert(at:key:value:)(v13, a3, a4, a1, a2, v12);

    result = 0;
    goto LABEL_11;
  }

LABEL_6:
  if ((v5 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v20 = (v12[7] + 16 * v13);
  result = *v20;
  *v20 = a1;
  v20[1] = a2;
LABEL_11:
  *v6 = v12;
  return result;
}

uint64_t specialized ContextUpdater.convertPayloadToUsoEntity(payload:)(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for BinaryDecodingOptions();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = 0;
  memset(&v12[16], 0, 32);
  outlined copy of Data._Representation(a1, a2);
  BinaryDecodingOptions.init()();
  lazy protocol witness table accessor for type RequestType and conformance RequestType(&lazy protocol witness table cache variable for type Siri_Nl_Core_Protocol_UsoGraph and conformance Siri_Nl_Core_Protocol_UsoGraph, MEMORY[0x1E69D1568], MEMORY[0x1E69D1560]);
  Message.init(serializedData:extensions:partial:options:)();
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for USOSerializedGraph, 0x1E69D25D8);
  v9 = MEMORY[0x1E12A1BA0](v8);
  if (USOSerializedGraph.usoSerializedGraphToUsoGraphSiriNl()())
  {
    v10 = static UsoConversionUtils.extractFirstEntityFromGraph(graph:)();

    (*(v6 + 8))(v8, v5);
    return v10;
  }

  else
  {
    (*(v6 + 8))(v8, v5);

    return 0;
  }
}

unint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v8 = *a4;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, a3 & 1);
      result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
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

  v19 = *a4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * result) = a1;

  return swift_unknownObjectRelease();
}

void type metadata completion function for ContextUpdater(uint64_t a1)
{
  type metadata accessor for UserID?(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for UserID?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for UserID?)
  {
    type metadata accessor for UserID();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for UserID?);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ConversationOutputError and conformance ConversationOutputError()
{
  result = lazy protocol witness table cache variable for type ConversationOutputError and conformance ConversationOutputError;
  if (!lazy protocol witness table cache variable for type ConversationOutputError and conformance ConversationOutputError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConversationOutputError and conformance ConversationOutputError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ConversationOutputError and conformance ConversationOutputError;
  if (!lazy protocol witness table cache variable for type ConversationOutputError and conformance ConversationOutputError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConversationOutputError and conformance ConversationOutputError);
  }

  return result;
}

uint64_t ExecutionContextUpdateScope.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0x6C61626F6C67;
  }

  if (a1 == 1)
  {
    return 0x55746E6572727563;
  }

  return 0x72657355656D6F68;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance ExecutionContextUpdateScope(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x55746E6572727563;
  v4 = 0xEB00000000726573;
  if (v2 != 1)
  {
    v3 = 0x72657355656D6F68;
    v4 = 0xE900000000000073;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x6C61626F6C67;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  v7 = 0x55746E6572727563;
  v8 = 0xEB00000000726573;
  if (*a2 != 1)
  {
    v7 = 0x72657355656D6F68;
    v8 = 0xE900000000000073;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x6C61626F6C67;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ExecutionContextUpdateScope()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ExecutionContextUpdateScope(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ExecutionContextUpdateScope(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance ExecutionContextUpdateScope@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized ExecutionContextUpdateScope.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance ExecutionContextUpdateScope(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0xEB00000000726573;
  v5 = 0x55746E6572727563;
  if (v2 != 1)
  {
    v5 = 0x72657355656D6F68;
    v4 = 0xE900000000000073;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6C61626F6C67;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t specialized ExecutionContextUpdateScope.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ExecutionContextUpdateScope.init(rawValue:), v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t lazy protocol witness table accessor for type ExecutionContextUpdateScope and conformance ExecutionContextUpdateScope()
{
  result = lazy protocol witness table cache variable for type ExecutionContextUpdateScope and conformance ExecutionContextUpdateScope;
  if (!lazy protocol witness table cache variable for type ExecutionContextUpdateScope and conformance ExecutionContextUpdateScope)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ExecutionContextUpdateScope and conformance ExecutionContextUpdateScope);
  }

  return result;
}

uint64_t Conversation.taskObserver.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_taskObserver;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*Conversation.taskObserver.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC14SiriKitRuntime12Conversation_taskObserver;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return Conversation.taskObserver.modify;
}

void Conversation.taskObserver.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
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

uint64_t key path setter for Conversation.rcId : Conversation(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_rcId);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;
}

uint64_t Conversation.rcId.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_rcId);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t Conversation.rcId.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_rcId);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t key path setter for Conversation.hypothesisId : Conversation(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - v5;
  outlined init with copy of ReferenceResolutionClientProtocol?(a1, &v10 - v5, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v7 = *a2;
  v8 = OBJC_IVAR____TtC14SiriKitRuntime12Conversation_hypothesisId;
  swift_beginAccess();
  outlined assign with take of (Input, AnyFlow, SiriEnvironment)(v6, v7 + v8, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  return swift_endAccess();
}

uint64_t Conversation.hypothesisId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC14SiriKitRuntime12Conversation_hypothesisId;
  swift_beginAccess();
  return outlined init with copy of ReferenceResolutionClientProtocol?(v1 + v3, a1, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
}

uint64_t Conversation.hypothesisId.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14SiriKitRuntime12Conversation_hypothesisId;
  swift_beginAccess();
  outlined assign with take of (Input, AnyFlow, SiriEnvironment)(a1, v1 + v3, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  return swift_endAccess();
}

uint64_t Conversation.isPaused.getter()
{
  v1 = OBJC_IVAR____TtC14SiriKitRuntime12Conversation_isPaused;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t Conversation.isPaused.setter(char a1)
{
  v3 = OBJC_IVAR____TtC14SiriKitRuntime12Conversation_isPaused;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t Conversation.correctionsFlow.getter()
{
  v1 = OBJC_IVAR____TtC14SiriKitRuntime12Conversation____lazy_storage___correctionsFlow;
  if (*(v0 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation____lazy_storage___correctionsFlow))
  {
    v2 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation____lazy_storage___correctionsFlow);
  }

  else
  {
    v2 = closure #1 in Conversation.correctionsFlow.getter(v0);
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t closure #1 in Conversation.correctionsFlow.getter(uint64_t a1)
{
  v3 = *(a1 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_pluginId);
  v2 = *(a1 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_pluginId + 8);
  type metadata accessor for ResponseFactory();
  swift_allocObject();

  v4 = ResponseFactory.init()();
  static OutputPublisherFactory.makeOutputPublisherAsync()();
  outlined init with copy of ReferenceResolutionClientProtocol(a1 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_correctionsEngine, v14);
  static SiriKitEventSender.current.getter();
  type metadata accessor for SiriCorrectionsFlow(0);
  v5 = swift_allocObject();
  v6 = OBJC_IVAR____TtC14SiriKitRuntime19SiriCorrectionsFlow_followupPluginAction;
  v7 = type metadata accessor for PluginAction();
  (*(*(v7 - 8) + 56))(&v5[v6], 1, 1, v7);
  v8 = OBJC_IVAR____TtC14SiriKitRuntime19SiriCorrectionsFlow_steeringInput;
  v9 = type metadata accessor for Input();
  (*(*(v9 - 8) + 56))(&v5[v8], 1, 1, v9);
  v10 = &v5[OBJC_IVAR____TtC14SiriKitRuntime19SiriCorrectionsFlow_state];
  *v10 = 0u;
  *(v10 + 1) = 0u;
  *(v10 + 4) = 0;
  *(v5 + 2) = v3;
  *(v5 + 3) = v2;
  *(v5 + 4) = v4;
  outlined init with take of ReferenceResolutionClientProtocol(&v15, (v5 + 40));
  outlined init with take of ReferenceResolutionClientProtocol(v14, (v5 + 80));
  outlined init with take of ReferenceResolutionClientProtocol(&v13, &v5[OBJC_IVAR____TtC14SiriKitRuntime19SiriCorrectionsFlow_siriKitEventSender]);
  *&v15 = v5;
  _s14SiriKitRuntime22CorrectionsUndoManagerCAcA0D6EngineAAWlTm_0(&lazy protocol witness table cache variable for type SiriCorrectionsFlow and conformance SiriCorrectionsFlow, type metadata accessor for SiriCorrectionsFlow, &protocol conformance descriptor for SiriCorrectionsFlow);
  v11 = Flow.eraseToAnyFlow()();

  return v11;
}

uint64_t (*Conversation.correctionsFlow.modify(uint64_t *a1))()
{
  a1[1] = v1;
  *a1 = Conversation.correctionsFlow.getter();
  return Conversation.correctionsFlow.modify;
}

uint64_t Conversation.__allocating_init(initialFlow:taskService:pluginId:taskObserver:jetsamTransactionTimeout:rootEnvironment:serverFallbackDisablingUtils:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char *a7, uint64_t a8, void *a9)
{
  v55 = a8;
  v56 = a6;
  v62 = a5;
  v58 = a4;
  v57 = a3;
  v63 = a2;
  v11 = type metadata accessor for DispatchTimeInterval();
  v50 = v11;
  v51 = *(v11 - 8);
  v12 = v51;
  MEMORY[0x1EEE9AC00](v11);
  v54 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v49 - v15;
  v61 = &v49 - v15;
  v17 = type metadata accessor for CorrectionsUndoManager();
  v18 = swift_allocObject();
  *(v18 + 40) = 0u;
  *(v18 + 56) = 0;
  *(v18 + 24) = 0u;
  *(v18 + 16) = MEMORY[0x1E69E7CC0];
  v70 = 0;
  memset(v69, 0, sizeof(v69));
  swift_beginAccess();
  outlined assign with take of (Input, AnyFlow, SiriEnvironment)(v69, v18 + 24, &_s11SiriKitFlow010CorrectingC0_pSgMd, &_s11SiriKitFlow010CorrectingC0_pSgMR);
  swift_endAccess();
  v19 = *(v12 + 16);
  v52 = v12 + 16;
  v53 = v19;
  v60 = a7;
  v19(v16, a7, v11);
  v59 = a9;
  outlined init with copy of ReferenceResolutionClientProtocol(a9, v69);
  v67 = v17;
  v68 = _s14SiriKitRuntime22CorrectionsUndoManagerCAcA0D6EngineAAWlTm_0(&lazy protocol witness table cache variable for type CorrectionsUndoManager and conformance CorrectionsUndoManager, type metadata accessor for CorrectionsUndoManager, &protocol conformance descriptor for CorrectionsUndoManager);
  v66[0] = v18;
  type metadata accessor for Conversation(0);
  v20 = swift_allocObject();
  swift_defaultActor_initialize();
  type metadata accessor for Conversation.State(0);
  swift_storeEnumTagMultiPayload();
  v21 = v20 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_taskObserver;
  *(v20 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_taskObserver + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v20 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_idleTrackerActivity) = 0;
  v22 = (v20 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_rcId);
  *v22 = 12589;
  v22[1] = 0xE200000000000000;
  v23 = OBJC_IVAR____TtC14SiriKitRuntime12Conversation_hypothesisId;
  v24 = type metadata accessor for UUID();
  (*(*(v24 - 8) + 56))(v20 + v23, 1, 1, v24);
  *(v20 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_isPaused) = 0;
  *(v20 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation____lazy_storage___correctionsFlow) = 0;
  type metadata accessor for InstrumentedStack(0);
  v25 = swift_allocObject();
  v25[5] = MEMORY[0x1E69E7CC8];
  v25[3] = 0;
  v25[4] = 0;
  v25[2] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime4NodeCyAA9FlowAgentCGMd, &_s14SiriKitRuntime4NodeCyAA9FlowAgentCGMR);
  swift_allocObject();
  swift_retain_n();

  v26 = specialized Node.init(value:parent:)(a1, 0);
  specialized OrderedForest._push(_:)(v26);
  v27 = v26[2];
  type metadata accessor for InstrumentedStack.TrackedFlowAgent(0);
  swift_allocObject();

  v29 = specialized InstrumentedStack.TrackedFlowAgent.init(agent:parent:)(v28, 0);

  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v65[0] = v25[5];
  v25[5] = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v29, v27, isUniquelyReferenced_nonNull_native);
  v25[5] = v65[0];
  v31 = v50;
  swift_endAccess();

  *(v20 + 112) = v25;
  v32 = v51;
  v33 = v54;
  v53(v54, v61, v31);
  type metadata accessor for OS_dispatch_queue();
  v34 = static OS_dispatch_queue.main.getter();
  type metadata accessor for JetsamHelper(0);
  v35 = swift_allocObject();
  v36 = (v35 + OBJC_IVAR____TtC14SiriKitRuntime12JetsamHelper_transaction);
  *v36 = 0;
  v36[1] = 0;
  v35[2] = 0xD000000000000023;
  v35[3] = 0x80000001DCA7E400;
  v35[4] = dispatch_semaphore_create(1);
  v35[5] = v34;
  (*(v32 + 32))(v35 + OBJC_IVAR____TtC14SiriKitRuntime12JetsamHelper_timeout, v33, v31);
  *(v20 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_jetsamHelper) = v35;
  v37 = v55;
  swift_beginAccess();
  *(v21 + 8) = v56;
  swift_unknownObjectWeakAssign();
  *(v20 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_taskService) = v63;
  v38 = (v20 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_pluginId);
  v39 = v58;
  *v38 = v57;
  v38[1] = v39;
  v40 = *(a1 + 160);
  *(v20 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_pluginInfo) = v40;
  outlined init with copy of ReferenceResolutionClientProtocol(v66, v20 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_correctionsEngine);
  outlined init with copy of ReferenceResolutionClientProtocol(v69, v20 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_serverFallbackDisablingUtils);
  if (v37)
  {

    v41 = v40;
  }

  else
  {
    type metadata accessor for SiriEnvironment();

    v42 = v40;
    static SiriEnvironment.default.getter();
  }

  type metadata accessor for SiriEnvironment();
  swift_allocObject();

  *(v20 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_rootEnvironment) = SiriEnvironment.init(parent:)();
  type metadata accessor for SiriCorrectionsClientProvider();
  swift_allocObject();

  SiriCorrectionsClientProvider.init()();
  SiriEnvironment.correctionsClientProvider.setter();

  SiriEnvironment.correctionsClientProvider.getter();
  v43 = v67;
  v44 = v68;
  v45 = __swift_project_boxed_opaque_existential_1(v66, v67);
  v64[3] = v43;
  v64[4] = *(v44 + 8);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v64);
  (*(*(v43 - 8) + 16))(boxed_opaque_existential_0, v45, v43);
  dispatch thunk of SiriCorrectionsClientProvider.correctionsClient.setter();

  type metadata accessor for UserIdentityProvider();
  _s14SiriKitRuntime22CorrectionsUndoManagerCAcA0D6EngineAAWlTm_0(&lazy protocol witness table cache variable for type UserIdentityProvider and conformance UserIdentityProvider, MEMORY[0x1E69D0010], MEMORY[0x1E69D0008]);

  dispatch thunk of SiriEnvironment.requireProvider<A>(of:)();

  type metadata accessor for FlowTaskProvider();
  _s14SiriKitRuntime22CorrectionsUndoManagerCAcA0D6EngineAAWlTm_0(&lazy protocol witness table cache variable for type FlowTaskProvider and conformance FlowTaskProvider, MEMORY[0x1E69CFB28], MEMORY[0x1E69CFB20]);

  dispatch thunk of SiriEnvironment.requireProvider<A>(of:)();

  type metadata accessor for CallStateEnvironmentProvider();
  _s14SiriKitRuntime22CorrectionsUndoManagerCAcA0D6EngineAAWlTm_0(&lazy protocol witness table cache variable for type CallStateEnvironmentProvider and conformance CallStateEnvironmentProvider, MEMORY[0x1E69D0098], MEMORY[0x1E69D0090]);

  dispatch thunk of SiriEnvironment.requireProvider<A>(of:)();

  type metadata accessor for ScopedReferenceResolutionDataProvider();
  _s14SiriKitRuntime22CorrectionsUndoManagerCAcA0D6EngineAAWlTm_0(&lazy protocol witness table cache variable for type ScopedReferenceResolutionDataProvider and conformance ScopedReferenceResolutionDataProvider, MEMORY[0x1E69D27E0], MEMORY[0x1E69D27D8]);

  dispatch thunk of SiriEnvironment.requireProvider<A>(of:)();

  type metadata accessor for AceServiceContextProvider();
  _s14SiriKitRuntime22CorrectionsUndoManagerCAcA0D6EngineAAWlTm_0(&lazy protocol witness table cache variable for type AceServiceContextProvider and conformance AceServiceContextProvider, MEMORY[0x1E69D0068], MEMORY[0x1E69D0060]);

  dispatch thunk of SiriEnvironment.requireProvider<A>(of:)();

  dispatch thunk of AnyFlow.siriEnvironment.setter();

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v59);
  v47 = *(v32 + 8);
  v47(v60, v31);
  __swift_destroy_boxed_opaque_existential_1Tm(v69);
  v47(v61, v31);

  __swift_destroy_boxed_opaque_existential_1Tm(v66);
  return v20;
}

uint64_t Conversation.__allocating_init(initialFlow:taskService:pluginId:correctionsEngine:taskObserver:jetsamTransactionTimeout:rootEnvironment:serverFallbackDisablingUtils:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v25 = a4;
  v26 = a7;
  v27 = a8;
  v15 = a5[3];
  v16 = a5[4];
  v17 = __swift_mutable_project_boxed_opaque_existential_1(a5, v15);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20, v18);
  v22 = specialized Conversation.__allocating_init(initialFlow:taskService:pluginId:correctionsEngine:taskObserver:jetsamTransactionTimeout:rootEnvironment:serverFallbackDisablingUtils:)(a1, a2, a3, v25, v20, a6, v26, v27, a9, a10, v24, v15, v16);

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(a5);
  return v22;
}

uint64_t Conversation.init(initialFlow:taskService:pluginId:correctionsEngine:taskObserver:jetsamTransactionTimeout:rootEnvironment:serverFallbackDisablingUtils:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v11 = v10;
  v52 = a7;
  v53 = a8;
  v50 = a3;
  v51 = a4;
  v49 = a2;
  v56 = a10;
  v47 = a5;
  v48 = a9;
  v14 = type metadata accessor for DispatchTimeInterval();
  v54 = *(v14 - 8);
  v55 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v46 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  type metadata accessor for Conversation.State(0);
  swift_storeEnumTagMultiPayload();
  v16 = v10 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_taskObserver;
  *(v16 + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v10 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_idleTrackerActivity) = 0;
  v17 = (v10 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_rcId);
  *v17 = 12589;
  v17[1] = 0xE200000000000000;
  v18 = OBJC_IVAR____TtC14SiriKitRuntime12Conversation_hypothesisId;
  v19 = type metadata accessor for UUID();
  (*(*(v19 - 8) + 56))(v11 + v18, 1, 1, v19);
  *(v11 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_isPaused) = 0;
  *(v11 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation____lazy_storage___correctionsFlow) = 0;
  type metadata accessor for InstrumentedStack(0);
  v20 = swift_allocObject();
  v20[5] = MEMORY[0x1E69E7CC8];
  v20[3] = 0;
  v20[4] = 0;
  v20[2] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime4NodeCyAA9FlowAgentCGMd, &_s14SiriKitRuntime4NodeCyAA9FlowAgentCGMR);
  swift_allocObject();
  swift_retain_n();

  v21 = specialized Node.init(value:parent:)(a1, 0);
  specialized OrderedForest._push(_:)(v21);
  v22 = v21[2];
  type metadata accessor for InstrumentedStack.TrackedFlowAgent(0);
  swift_allocObject();

  v24 = specialized InstrumentedStack.TrackedFlowAgent.init(agent:parent:)(v23, 0);

  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v58[0] = v20[5];
  v20[5] = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v24, v22, isUniquelyReferenced_nonNull_native);
  v20[5] = v58[0];
  swift_endAccess();

  v26 = a6;

  *(v11 + 112) = v20;
  v27 = v54;
  v28 = v46;
  v29 = v55;
  (*(v54 + 16))(v46, v53, v55);
  type metadata accessor for OS_dispatch_queue();
  v30 = static OS_dispatch_queue.main.getter();
  type metadata accessor for JetsamHelper(0);
  v31 = swift_allocObject();
  v32 = &v31[OBJC_IVAR____TtC14SiriKitRuntime12JetsamHelper_transaction];
  *v32 = 0;
  *(v32 + 1) = 0;
  *(v31 + 2) = 0xD000000000000023;
  *(v31 + 3) = 0x80000001DCA7E400;
  *(v31 + 4) = dispatch_semaphore_create(1);
  *(v31 + 5) = v30;
  v33 = *(v27 + 32);
  v34 = v48;
  v33(&v31[OBJC_IVAR____TtC14SiriKitRuntime12JetsamHelper_timeout], v28, v29);
  *(v11 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_jetsamHelper) = v31;
  swift_beginAccess();
  *(v16 + 8) = v52;
  v52 = v26;
  swift_unknownObjectWeakAssign();
  *(v11 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_taskService) = v49;
  v35 = (v11 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_pluginId);
  v36 = v51;
  *v35 = v50;
  v35[1] = v36;
  v51 = a1;
  v37 = *(a1 + 160);
  *(v11 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_pluginInfo) = v37;
  v38 = v47;
  outlined init with copy of ReferenceResolutionClientProtocol(v47, v11 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_correctionsEngine);
  outlined init with copy of ReferenceResolutionClientProtocol(v56, v11 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_serverFallbackDisablingUtils);
  if (v34)
  {

    v39 = v37;
  }

  else
  {
    type metadata accessor for SiriEnvironment();

    v40 = v37;
    static SiriEnvironment.default.getter();
  }

  type metadata accessor for SiriEnvironment();
  swift_allocObject();

  *(v11 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_rootEnvironment) = SiriEnvironment.init(parent:)();
  type metadata accessor for SiriCorrectionsClientProvider();
  swift_allocObject();

  SiriCorrectionsClientProvider.init()();
  SiriEnvironment.correctionsClientProvider.setter();

  SiriEnvironment.correctionsClientProvider.getter();
  v41 = v38[3];
  v42 = v38[4];
  v43 = __swift_project_boxed_opaque_existential_1(v38, v41);
  v57[3] = v41;
  v57[4] = *(v42 + 8);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v57);
  (*(*(v41 - 8) + 16))(boxed_opaque_existential_0, v43, v41);
  dispatch thunk of SiriCorrectionsClientProvider.correctionsClient.setter();

  type metadata accessor for UserIdentityProvider();
  _s14SiriKitRuntime22CorrectionsUndoManagerCAcA0D6EngineAAWlTm_0(&lazy protocol witness table cache variable for type UserIdentityProvider and conformance UserIdentityProvider, MEMORY[0x1E69D0010], MEMORY[0x1E69D0008]);

  dispatch thunk of SiriEnvironment.requireProvider<A>(of:)();

  type metadata accessor for FlowTaskProvider();
  _s14SiriKitRuntime22CorrectionsUndoManagerCAcA0D6EngineAAWlTm_0(&lazy protocol witness table cache variable for type FlowTaskProvider and conformance FlowTaskProvider, MEMORY[0x1E69CFB28], MEMORY[0x1E69CFB20]);

  dispatch thunk of SiriEnvironment.requireProvider<A>(of:)();

  type metadata accessor for CallStateEnvironmentProvider();
  _s14SiriKitRuntime22CorrectionsUndoManagerCAcA0D6EngineAAWlTm_0(&lazy protocol witness table cache variable for type CallStateEnvironmentProvider and conformance CallStateEnvironmentProvider, MEMORY[0x1E69D0098], MEMORY[0x1E69D0090]);

  dispatch thunk of SiriEnvironment.requireProvider<A>(of:)();

  type metadata accessor for ScopedReferenceResolutionDataProvider();
  _s14SiriKitRuntime22CorrectionsUndoManagerCAcA0D6EngineAAWlTm_0(&lazy protocol witness table cache variable for type ScopedReferenceResolutionDataProvider and conformance ScopedReferenceResolutionDataProvider, MEMORY[0x1E69D27E0], MEMORY[0x1E69D27D8]);

  dispatch thunk of SiriEnvironment.requireProvider<A>(of:)();

  type metadata accessor for AceServiceContextProvider();
  _s14SiriKitRuntime22CorrectionsUndoManagerCAcA0D6EngineAAWlTm_0(&lazy protocol witness table cache variable for type AceServiceContextProvider and conformance AceServiceContextProvider, MEMORY[0x1E69D0068], MEMORY[0x1E69D0060]);

  dispatch thunk of SiriEnvironment.requireProvider<A>(of:)();

  dispatch thunk of AnyFlow.siriEnvironment.setter();

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v56);
  (*(v54 + 8))(v53, v55);

  __swift_destroy_boxed_opaque_existential_1Tm(v38);
  return v11;
}

BOOL Conversation.isCancelled.getter()
{
  v1 = type metadata accessor for Conversation.State(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v10 - v5;
  v7 = OBJC_IVAR____TtC14SiriKitRuntime12Conversation_state;
  swift_beginAccess();
  outlined init with copy of Conversation.State(v0 + v7, v6, type metadata accessor for Conversation.State);
  outlined init with take of Conversation.State(v6, v3, type metadata accessor for Conversation.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 5)
  {
    outlined destroy of Conversation.State(v3, type metadata accessor for Conversation.State);
  }

  return EnumCaseMultiPayload == 5;
}

BOOL Conversation.State.isCancelled.getter()
{
  v1 = type metadata accessor for Conversation.State(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Conversation.State(v0, v3, type metadata accessor for Conversation.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 5)
  {
    outlined destroy of Conversation.State(v3, type metadata accessor for Conversation.State);
  }

  return EnumCaseMultiPayload == 5;
}

uint64_t Conversation.State.description.getter()
{
  v1 = type metadata accessor for Conversation.State(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Conversation.State(v0, v3, type metadata accessor for Conversation.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      outlined destroy of Conversation.State(v3, type metadata accessor for Conversation.State);
      return 0x6E69747563657865;
    }

    else if (EnumCaseMultiPayload == 4)
    {
      return 0x7964616572;
    }

    else
    {
      return 0x656C6C65636E6163;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      outlined destroy of Conversation.State(v3, type metadata accessor for Conversation.State);
      return 0x74616C7563657073;
    }

    else
    {
      outlined destroy of Conversation.State(v3, type metadata accessor for Conversation.State);
      return 0x456F547964616572;
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A7RequestV7request_AA4NodeCyAA9FlowAgentCG08selectedG0tMd, &_s14SiriKitRuntime0A7RequestV7request_AA4NodeCyAA9FlowAgentCG08selectedG0tMR);

    outlined destroy of Conversation.State(v3, type metadata accessor for SiriRequest);
    return 0x6465747065636361;
  }
}

uint64_t closure #1 in Conversation.ensureReady(timeout:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for ConversationCommitResult(0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  *v5 = v2;
  v5[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;
  v8 = MEMORY[0x1E69E7288];

  return MEMORY[0x1EEE6DA10](a1, a2, v6, v7, v8);
}

uint64_t Conversation.paraphrase()(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = type metadata accessor for OSSignpostID();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v2[10] = swift_task_alloc();
  type metadata accessor for Conversation.State(0);
  v2[11] = swift_task_alloc();
  type metadata accessor for SiriRequest(0);
  v2[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](Conversation.paraphrase(), v1, 0);
}

uint64_t Conversation.paraphrase()()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[6];
  v4 = OBJC_IVAR____TtC14SiriKitRuntime12Conversation_state;
  swift_beginAccess();
  outlined init with copy of Conversation.State(v3 + v4, v1, type metadata accessor for Conversation.State);
  v5 = Conversation.State.assertAcceptedInput(function:)(v2, "paraphrase()", 12, 2u);
  v0[13] = v5;
  v6 = v0[12];
  v7 = v0[10];
  v8 = v5;
  outlined destroy of Conversation.State(v0[11], type metadata accessor for Conversation.State);
  outlined destroy of Conversation.State(v6, type metadata accessor for SiriRequest);
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v8;

  v0[14] = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfC14SiriKitRuntime28ConversationParaphraseResultO_Tt2g5(0, 0, v7, &async function pointer to partial apply for closure #1 in Conversation.paraphrase(), v10);
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for OSSignposter();
  v0[15] = __swift_project_value_buffer(v11, static Signposter.executor);
  static OSSignpostID.exclusive.getter();

  return MEMORY[0x1EEE6DFA0](Conversation.paraphrase(), 0, 0);
}

{
  v0[16] = OSSignposter.beginIntervalTelemetryEnabled(_:id:)("ParaphraseTime", 14, 2, v0[9]);
  v1 = swift_task_alloc();
  v0[17] = v1;
  v2 = type metadata accessor for ConversationParaphraseResult(0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  *v1 = v0;
  v1[1] = Conversation.paraphrase();
  v4 = v0[14];
  v5 = v0[5];
  v6 = MEMORY[0x1E69E7288];

  return MEMORY[0x1EEE6DA10](v5, v4, v2, v3, v6);
}

{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = Conversation.paraphrase();
  }

  else
  {
    v2 = Conversation.paraphrase();
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v2 = v0[8];
  v1 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
  $defer #1 <A>() in OSSignposter.withIntervalSignpostTelemetryEnabledAsync<A>(_:id:around:)(v0[15], "ParaphraseTime", 14, 2);

  (*(v2 + 8))(v1, v3);

  return MEMORY[0x1EEE6DFA0](Conversation.paraphrase(), v4, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  v2 = v0[8];
  v1 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
  $defer #1 <A>() in OSSignposter.withIntervalSignpostTelemetryEnabledAsync<A>(_:id:around:)(v0[15], "ParaphraseTime", 14, 2);

  (*(v2 + 8))(v1, v3);

  return MEMORY[0x1EEE6DFA0](Conversation.paraphrase(), v4, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in Conversation.paraphrase()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v5 = type metadata accessor for ActionParaphrase();
  v4[4] = v5;
  v4[5] = *(v5 - 8);
  v4[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in Conversation.paraphrase(), 0, 0);
}

uint64_t closure #1 in Conversation.paraphrase()()
{
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = closure #1 in Conversation.paraphrase();
  v2 = *(v0 + 48);

  return FlowAgent.paraphrase()(v2);
}

{

  return MEMORY[0x1EEE6DFA0](closure #1 in Conversation.paraphrase(), 0, 0);
}

{
  (*(v0[5] + 32))(v0[2], v0[6], v0[4]);
  type metadata accessor for ConversationParaphraseResult(0);
  swift_storeEnumTagMultiPayload();

  v1 = v0[1];

  return v1();
}

uint64_t Conversation.flexibleExecutionSupport()(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for FlexibleExecutionSupportOptions();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow31FlexibleExecutionSupportOptionsVSgMd, &_s11SiriKitFlow31FlexibleExecutionSupportOptionsVSgMR);
  v2[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](Conversation.flexibleExecutionSupport(), v1, 0);
}

uint64_t Conversation.flexibleExecutionSupport()()
{
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = type metadata accessor for Logger();
  v0[9] = __swift_project_value_buffer(v2, static Logger.executor);
  Logger.debugF(file:function:)("SiriKitRuntime/Conversation.swift", 33, 2, "flexibleExecutionSupport()", 26, 2);
  v3 = (*(**(v1 + 112) + 216))();
  if (v3)
  {
    v4 = *(v3 + 16);
    v0[10] = v4;

    return MEMORY[0x1EEE6DFA0](Conversation.flexibleExecutionSupport(), v4, 0);
  }

  else
  {
    specialized Logger.debugF(_:_:_:_:)("SiriKitRuntime/Conversation.swift", 33, 2, "flexibleExecutionSupport()", 26, 2);
    if (one-time initialization token for none != -1)
    {
      swift_once();
    }

    v5 = v0[4];
    v6 = v0[5];
    v7 = v0[2];
    v8 = __swift_project_value_buffer(v5, static FlexibleExecutionSupportOptions.none);
    (*(v6 + 16))(v7, v8, v5);

    v9 = v0[1];

    return v9();
  }
}

{
  v1 = v0[3];
  v0[11] = *(v0[10] + 112);

  return MEMORY[0x1EEE6DFA0](Conversation.flexibleExecutionSupport(), v1, 0);
}

{
  v33 = v0;
  v1 = v0[8];
  v2 = v0[4];
  v3 = v0[5];
  dispatch thunk of AnyFlow.flexibleExecutionSupport.getter();
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v0[8], &_s11SiriKitFlow31FlexibleExecutionSupportOptionsVSgMd, &_s11SiriKitFlow31FlexibleExecutionSupportOptionsVSgMR);
    specialized Logger.debugF(_:_:_:_:)("SiriKitRuntime/Conversation.swift", 33, 2, "flexibleExecutionSupport()", 26, 2);
    if (one-time initialization token for none != -1)
    {
      swift_once();
    }

    v4 = v0[4];
    v5 = v0[5];
    v6 = v0[2];
    v7 = __swift_project_value_buffer(v4, static FlexibleExecutionSupportOptions.none);
    (*(v5 + 16))(v6, v7, v4);
  }

  else
  {
    v8 = v0[7];
    v9 = v0[4];
    v10 = v0[5];
    v11 = v0[2];
    (*(v10 + 32))(v11, v0[8], v9);
    v12 = *(v10 + 16);
    v12(v8, v11, v9);
    v13 = static os_log_type_t.debug.getter();
    v14 = Logger.logObject.getter();
    if (os_log_type_enabled(v14, v13))
    {
      v27 = v0[6];
      v28 = v0[4];
      v29 = v0[7];
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v30 = v16;
      *v15 = 136315650;
      v17 = StaticString.description.getter();
      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v30);

      *(v15 + 4) = v19;
      *(v15 + 12) = 2080;
      v20 = StaticString.description.getter();
      v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, &v30);

      *(v15 + 14) = v22;
      *(v15 + 22) = 2080;
      v31 = 0;
      v32 = 0xE000000000000000;
      _StringGuts.grow(_:)(70);
      MEMORY[0x1E12A1580](0xD000000000000044, 0x80000001DCA7E690);
      v12(v27, v29, v28);
      v23 = String.init<A>(describing:)();
      MEMORY[0x1E12A1580](v23);

      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v32, &v30);

      *(v15 + 24) = v24;
      _os_log_impl(&dword_1DC659000, v14, v13, "%s:%s: %s", v15, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v16, -1, -1);
      MEMORY[0x1E12A2F50](v15, -1, -1);
    }

    else
    {
    }

    (*(v0[5] + 8))(v0[7], v0[4]);
  }

  v25 = v0[1];

  return v25();
}

Swift::Bool __swiftcall Conversation.isCorrectable()()
{
  v1 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_correctionsEngine + 24);
  v2 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_correctionsEngine + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_correctionsEngine), v1);
  return (*(v2 + 16))(v1, v2) & 1;
}

uint64_t Conversation.topFlowAgent.getter()
{
  v1 = (*(**(v0 + 112) + 216))();
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 16);

  return v2;
}

BOOL Conversation.isReady.getter()
{
  v1 = type metadata accessor for Conversation.State(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v10 - v5;
  v7 = OBJC_IVAR____TtC14SiriKitRuntime12Conversation_state;
  swift_beginAccess();
  outlined init with copy of Conversation.State(v0 + v7, v6, type metadata accessor for Conversation.State);
  outlined init with take of Conversation.State(v6, v3, type metadata accessor for Conversation.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 4)
  {
    outlined destroy of Conversation.State(v3, type metadata accessor for Conversation.State);
  }

  return EnumCaseMultiPayload == 4;
}

BOOL Conversation.State.isReady.getter()
{
  v1 = type metadata accessor for Conversation.State(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Conversation.State(v0, v3, type metadata accessor for Conversation.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 4)
  {
    outlined destroy of Conversation.State(v3, type metadata accessor for Conversation.State);
  }

  return EnumCaseMultiPayload == 4;
}

BOOL Conversation.State.shouldContinueSpeculating.getter()
{
  v1 = type metadata accessor for Conversation.State(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Conversation.State(v0, v3, type metadata accessor for Conversation.State);
  v4 = ((swift_getEnumCaseMultiPayload() - 1) & 0xFFFFFFFD) == 0;
  outlined destroy of Conversation.State(v3, type metadata accessor for Conversation.State);
  return v4;
}

uint64_t Conversation.State.prepareComplete(selectedFlow:)(uint64_t a1)
{
  v3 = type metadata accessor for Conversation.State(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Conversation.State(v1, v5, type metadata accessor for Conversation.State);
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    outlined destroy of Conversation.State(v1, type metadata accessor for Conversation.State);
    *v1 = a1;
    swift_storeEnumTagMultiPayload();
  }

  return outlined destroy of Conversation.State(v5, type metadata accessor for Conversation.State);
}

BOOL Conversation.State.shouldContinueExecuting.getter()
{
  v1 = type metadata accessor for Conversation.State(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Conversation.State(v0, v3, type metadata accessor for Conversation.State);
  v4 = (swift_getEnumCaseMultiPayload() & 0xFFFFFFFE) == 2;
  outlined destroy of Conversation.State(v3, type metadata accessor for Conversation.State);
  return v4;
}

uint64_t Conversation.updateFlowEnvironment(flowAgent:request:)(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriFlowEnvironment0B12TaskMetadataVSgMd, &_s19SiriFlowEnvironment0B12TaskMetadataVSgMR);
  v3[8] = swift_task_alloc();
  v5 = type metadata accessor for Date();
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](Conversation.updateFlowEnvironment(flowAgent:request:), a1, 0);
}

uint64_t Conversation.updateFlowEnvironment(flowAgent:request:)()
{
  v1 = v0[7];
  v0[12] = *(v0[5] + 112);
  return MEMORY[0x1EEE6DFA0](Conversation.updateFlowEnvironment(flowAgent:request:), v1, 0);
}

{
  v1 = v0[14];
  swift_beginAccess();
  v4 = *(v1 + 32);
  if (v4 >> 62)
  {
    v5 = __CocoaSet.count.getter();
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_8:
    v2 = v0[7];
    v7 = Conversation.updateFlowEnvironment(flowAgent:request:);
    goto LABEL_9;
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v5)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v4 & 0xC000000000000001) != 0)
  {

    v6 = MEMORY[0x1E12A1FE0](0, v4);
  }

  else
  {
    if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return MEMORY[0x1EEE6DFA0](v5, v2, v3);
    }

    v6 = *(v4 + 32);
  }

  v0[15] = v6;
  v2 = v0[7];
  v7 = Conversation.updateFlowEnvironment(flowAgent:request:);
LABEL_9:
  v5 = v7;
  v3 = 0;

  return MEMORY[0x1EEE6DFA0](v5, v2, v3);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = v0[15];
  v2 = v0[10];
  v3 = v0[11];
  v4 = v0[9];
  v10 = v0[8];
  type metadata accessor for FlowTaskProvider();
  v5 = OBJC_IVAR____TtC14SiriKitRuntime8FlowTask_creationTime;
  v6 = *(v2 + 16);
  v6(v3, v1 + OBJC_IVAR____TtC14SiriKitRuntime8FlowTask_creationTime, v4);

  dispatch thunk of FlowTaskProvider.__allocating_init(id:isClientInitiated:creationTime:)();
  SiriEnvironment.flowTask.setter();
  SiriEnvironment.currentRequest.getter();
  v6(v3, v1 + v5, v4);

  FlowTaskMetadata.init(id:isClientInitiated:creationTime:)();
  v7 = type metadata accessor for FlowTaskMetadata();
  (*(*(v7 - 8) + 56))(v10, 0, 1, v7);
  CurrentRequest.flowTaskMetadata.setter();

  v8 = v0[1];

  return v8();
}

uint64_t Conversation.updateFlowEnvironment(flowAgent:request:)(uint64_t a1)
{
  v2 = v1[6];
  v3 = v1[7];
  v1[13] = dispatch thunk of AnyFlow.siriEnvironment.getter();
  SiriEnvironment.update(forRequest:)(v2);
  v1[14] = *(v3 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_taskService);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v4 = static ConversationActor.shared;

  return MEMORY[0x1EEE6DFA0](Conversation.updateFlowEnvironment(flowAgent:request:), v4, 0);
}

uint64_t Conversation.attemptCorrectionsOn(request:)(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return MEMORY[0x1EEE6DFA0](Conversation.attemptCorrectionsOn(request:), v1, 0);
}

uint64_t Conversation.attemptCorrectionsOn(request:)()
{
  v1 = (v0[8] + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_correctionsEngine);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  if ((*(v3 + 16))(v2, v3))
  {
    v4 = v0[8];
    v5 = Conversation.correctionsFlow.getter();
    v6 = *(v4 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_pluginInfo);
    type metadata accessor for FlowAgent();
    v7 = swift_allocObject();
    v0[9] = v7;
    v8 = v6;
    swift_defaultActor_initialize();
    *(v7 + 130) = 0;
    *(v7 + 136) = 0;
    *(v7 + 144) = 0;
    *(v7 + 112) = v5;
    *(v7 + 120) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow010PreparableC0_pMd, &_s11SiriKitFlow010PreparableC0_pMR);

    dispatch thunk of AnyFlow.unbox<A>(as:)();

    LOBYTE(v6) = v0[5] != 0;
    outlined destroy of ReferenceResolutionClientProtocol?((v0 + 2), &_s11SiriKitFlow010PreparableC0_pSgMd, &_s11SiriKitFlow010PreparableC0_pSgMR);
    *(v7 + 128) = v6;
    *(v7 + 129) = v6;
    *(v7 + 152) = MEMORY[0x1E69E7CC0];
    *(v7 + 160) = v8;
    v9 = swift_task_alloc();
    v0[10] = v9;
    *v9 = v0;
    v9[1] = Conversation.attemptCorrectionsOn(request:);
    v10 = v0[7];

    return Conversation.updateFlowEnvironment(flowAgent:request:)(v7, v10);
  }

  else
  {
    v12 = v0[1];

    return v12(0);
  }
}

{
  v1 = *v0;
  v2 = *(*v0 + 56);
  v3 = *v0;

  v4 = *(type metadata accessor for SiriRequest(0) + 20);
  v5 = swift_task_alloc();
  *(v1 + 88) = v5;
  *v5 = v3;
  v5[1] = Conversation.attemptCorrectionsOn(request:);

  return FlowAgent.on(input:)(v2 + v4);
}

{
  v1 = *(v0 + 72);
  if (*(v0 + 96) != 1)
  {

    v1 = 0;
  }

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t Conversation.attemptCorrectionsOn(request:)(char a1)
{
  v2 = *(*v1 + 64);
  *(*v1 + 96) = a1;

  return MEMORY[0x1EEE6DFA0](Conversation.attemptCorrectionsOn(request:), v2, 0);
}

uint64_t Conversation.State.assertNotCancelled(function:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for Conversation.State(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Conversation.State(v3, v6, type metadata accessor for Conversation.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = outlined destroy of Conversation.State(v6, type metadata accessor for Conversation.State);
  if (EnumCaseMultiPayload == 5)
  {
    v13[0] = 0;
    v13[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(41);

    strcpy(v13, "Cannot call ");
    BYTE5(v13[1]) = 0;
    HIWORD(v13[1]) = -5120;
    v9 = StaticString.description.getter();
    MEMORY[0x1E12A1580](v9);

    MEMORY[0x1E12A1580](0xD00000000000001BLL, 0x80000001DCA7E5A0);
    v10 = v13[0];
    v11 = v13[1];
    lazy protocol witness table accessor for type CancelledError and conformance CancelledError();
    swift_allocError();
    *v12 = v10;
    v12[1] = v11;
    return swift_willThrow();
  }

  return result;
}

uint64_t protocol witness for Conversational.paraphrase() in conformance Conversation(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return Conversation.paraphrase()(a1);
}

uint64_t protocol witness for Conversational.isCorrectable() in conformance Conversation()
{
  v2 = *v0;
  *(v1 + 16) = *v0;
  return MEMORY[0x1EEE6DFA0](protocol witness for Conversational.isCorrectable() in conformance Conversation, v2, 0);
}

{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_correctionsEngine);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = (*(v3 + 16))(v2, v3);
  v5 = *(v0 + 8);
  v6 = v4 & 1;

  return v5(v6);
}

uint64_t protocol witness for Conversational.flexibleExecutionSupport() in conformance Conversation(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return Conversation.flexibleExecutionSupport()(a1);
}

uint64_t SiriRequest.requestId.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SiriRequest.input.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SiriRequest(0) + 20);
  v4 = type metadata accessor for Input();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SiriRequest.environmentData.getter()
{
  type metadata accessor for SiriRequest(0);
}

uint64_t SiriRequest.sessionConfigurationProvider.getter()
{
  type metadata accessor for SiriRequest(0);
}

uint64_t SiriRequest.scopedRRData.getter()
{
  v1 = v0 + *(type metadata accessor for SiriRequest(0) + 32);
  v2 = *v1;
  outlined copy of Data?(*v1, *(v1 + 8));
  return v2;
}

uint64_t SiriRequest.currentTCUProvider.getter()
{
  type metadata accessor for SiriRequest(0);
}

uint64_t SiriRequest.nlRoutingDecisionProvider.getter()
{
  type metadata accessor for SiriRequest(0);
}

uint64_t SiriRequest.flowRedirectContextProvider.getter()
{
  type metadata accessor for SiriRequest(0);
}

uint64_t SiriRequest.init(requestId:input:environmentData:sessionConfigurationProvider:scopedRRData:currentTCUProvider:nlRoutingDecisionProvider:flowRedirectContextProvider:identities:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  *a9 = a1;
  *(a9 + 1) = a2;
  v17 = type metadata accessor for SiriRequest(0);
  v18 = v17[5];
  v19 = type metadata accessor for Input();
  (*(*(v19 - 8) + 32))(&a9[v18], a3, v19);
  *&a9[v17[6]] = a4;
  *&a9[v17[7]] = a5;
  result = outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(a12, &a9[v17[12]], &_s14SiriKitRuntime0A17RequestIdentitiesVSgMd, &_s14SiriKitRuntime0A17RequestIdentitiesVSgMR);
  v21 = &a9[v17[8]];
  *v21 = a6;
  *(v21 + 1) = a7;
  *&a9[v17[9]] = a8;
  *&a9[v17[10]] = a10;
  *&a9[v17[11]] = a11;
  return result;
}

uint64_t SiriRequestIdentities.otherHomeMembers.getter()
{
  type metadata accessor for SiriRequestIdentities(0);
}

uint64_t SiriRequestIdentities.init(proposedIdentity:identityMeetingUserSessionThreshold:otherHomeMembers:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(a1, a4, &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
  v7 = type metadata accessor for SiriRequestIdentities(0);
  result = outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(a2, a4 + *(v7 + 20), &_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
  *(a4 + *(v7 + 24)) = a3;
  return result;
}

unint64_t type metadata accessor for OS_dispatch_queue()
{
  result = lazy cache variable for type metadata for OS_dispatch_queue;
  if (!lazy cache variable for type metadata for OS_dispatch_queue)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for OS_dispatch_queue);
  }

  return result;
}

uint64_t specialized Conversation.__allocating_init(initialFlow:taskService:pluginId:correctionsEngine:taskObserver:jetsamTransactionTimeout:rootEnvironment:serverFallbackDisablingUtils:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v57 = a8;
  v52 = a7;
  v53 = a6;
  v54 = a3;
  v55 = a4;
  v51 = a10;
  v50 = a9;
  v58 = type metadata accessor for DispatchTimeInterval();
  v56 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v49 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = a12;
  v63 = a13;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v61);
  (*(*(a12 - 8) + 32))(boxed_opaque_existential_0, a5, a12);
  type metadata accessor for Conversation(0);
  v18 = swift_allocObject();
  swift_defaultActor_initialize();
  type metadata accessor for Conversation.State(0);
  swift_storeEnumTagMultiPayload();
  v19 = v18 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_taskObserver;
  *(v18 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_taskObserver + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v18 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_idleTrackerActivity) = 0;
  v20 = (v18 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_rcId);
  *v20 = 12589;
  v20[1] = 0xE200000000000000;
  v21 = OBJC_IVAR____TtC14SiriKitRuntime12Conversation_hypothesisId;
  v22 = type metadata accessor for UUID();
  (*(*(v22 - 8) + 56))(v18 + v21, 1, 1, v22);
  *(v18 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_isPaused) = 0;
  *(v18 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation____lazy_storage___correctionsFlow) = 0;
  type metadata accessor for InstrumentedStack(0);
  v23 = swift_allocObject();
  v23[5] = MEMORY[0x1E69E7CC8];
  v23[3] = 0;
  v23[4] = 0;
  v23[2] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime4NodeCyAA9FlowAgentCGMd, &_s14SiriKitRuntime4NodeCyAA9FlowAgentCGMR);
  swift_allocObject();
  swift_retain_n();

  v24 = specialized Node.init(value:parent:)(a1, 0);
  specialized OrderedForest._push(_:)(v24);
  v25 = v24[2];
  type metadata accessor for InstrumentedStack.TrackedFlowAgent(0);
  swift_allocObject();

  v27 = specialized InstrumentedStack.TrackedFlowAgent.init(agent:parent:)(v26, 0);

  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v60[0] = v23[5];
  v23[5] = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v27, v25, isUniquelyReferenced_nonNull_native);
  v23[5] = v60[0];
  swift_endAccess();

  v29 = a2;

  *(v18 + 112) = v23;
  v30 = v56;
  v31 = v49;
  v32 = v58;
  (*(v56 + 16))(v49, v57, v58);
  type metadata accessor for OS_dispatch_queue();
  v33 = static OS_dispatch_queue.main.getter();
  type metadata accessor for JetsamHelper(0);
  v34 = swift_allocObject();
  v35 = &v34[OBJC_IVAR____TtC14SiriKitRuntime12JetsamHelper_transaction];
  *v35 = 0;
  *(v35 + 1) = 0;
  *(v34 + 2) = 0xD000000000000023;
  *(v34 + 3) = 0x80000001DCA7E400;
  v36 = v50;
  *(v34 + 4) = dispatch_semaphore_create(1);
  *(v34 + 5) = v33;
  v37 = *(v30 + 32);
  v38 = v51;
  v37(&v34[OBJC_IVAR____TtC14SiriKitRuntime12JetsamHelper_timeout], v31, v32);
  *(v18 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_jetsamHelper) = v34;
  swift_beginAccess();
  *(v19 + 8) = v52;
  swift_unknownObjectWeakAssign();
  *(v18 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_taskService) = v29;
  v39 = (v18 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_pluginId);
  v40 = v55;
  *v39 = v54;
  v39[1] = v40;
  v41 = *(a1 + 160);
  *(v18 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_pluginInfo) = v41;
  outlined init with copy of ReferenceResolutionClientProtocol(v61, v18 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_correctionsEngine);
  outlined init with copy of ReferenceResolutionClientProtocol(v38, v18 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_serverFallbackDisablingUtils);
  if (v36)
  {

    v42 = v41;
  }

  else
  {
    type metadata accessor for SiriEnvironment();

    v43 = v41;
    static SiriEnvironment.default.getter();
  }

  type metadata accessor for SiriEnvironment();
  swift_allocObject();

  *(v18 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_rootEnvironment) = SiriEnvironment.init(parent:)();
  type metadata accessor for SiriCorrectionsClientProvider();
  swift_allocObject();

  SiriCorrectionsClientProvider.init()();
  SiriEnvironment.correctionsClientProvider.setter();

  SiriEnvironment.correctionsClientProvider.getter();
  v44 = v62;
  v45 = v63;
  v46 = __swift_project_boxed_opaque_existential_1(v61, v62);
  v59[3] = v44;
  v59[4] = *(v45 + 8);
  v47 = __swift_allocate_boxed_opaque_existential_0(v59);
  (*(*(v44 - 8) + 16))(v47, v46, v44);
  dispatch thunk of SiriCorrectionsClientProvider.correctionsClient.setter();

  type metadata accessor for UserIdentityProvider();
  _s14SiriKitRuntime22CorrectionsUndoManagerCAcA0D6EngineAAWlTm_0(&lazy protocol witness table cache variable for type UserIdentityProvider and conformance UserIdentityProvider, MEMORY[0x1E69D0010], MEMORY[0x1E69D0008]);

  dispatch thunk of SiriEnvironment.requireProvider<A>(of:)();

  type metadata accessor for FlowTaskProvider();
  _s14SiriKitRuntime22CorrectionsUndoManagerCAcA0D6EngineAAWlTm_0(&lazy protocol witness table cache variable for type FlowTaskProvider and conformance FlowTaskProvider, MEMORY[0x1E69CFB28], MEMORY[0x1E69CFB20]);

  dispatch thunk of SiriEnvironment.requireProvider<A>(of:)();

  type metadata accessor for CallStateEnvironmentProvider();
  _s14SiriKitRuntime22CorrectionsUndoManagerCAcA0D6EngineAAWlTm_0(&lazy protocol witness table cache variable for type CallStateEnvironmentProvider and conformance CallStateEnvironmentProvider, MEMORY[0x1E69D0098], MEMORY[0x1E69D0090]);

  dispatch thunk of SiriEnvironment.requireProvider<A>(of:)();

  type metadata accessor for ScopedReferenceResolutionDataProvider();
  _s14SiriKitRuntime22CorrectionsUndoManagerCAcA0D6EngineAAWlTm_0(&lazy protocol witness table cache variable for type ScopedReferenceResolutionDataProvider and conformance ScopedReferenceResolutionDataProvider, MEMORY[0x1E69D27E0], MEMORY[0x1E69D27D8]);

  dispatch thunk of SiriEnvironment.requireProvider<A>(of:)();

  type metadata accessor for AceServiceContextProvider();
  _s14SiriKitRuntime22CorrectionsUndoManagerCAcA0D6EngineAAWlTm_0(&lazy protocol witness table cache variable for type AceServiceContextProvider and conformance AceServiceContextProvider, MEMORY[0x1E69D0068], MEMORY[0x1E69D0060]);

  dispatch thunk of SiriEnvironment.requireProvider<A>(of:)();

  dispatch thunk of AnyFlow.siriEnvironment.setter();
  __swift_destroy_boxed_opaque_existential_1Tm(v38);
  (*(v56 + 8))(v57, v58);
  __swift_destroy_boxed_opaque_existential_1Tm(v61);
  return v18;
}

uint64_t partial apply for closure #1 in Conversation.ensureReady(timeout:)(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in Conversation.ensureReady(timeout:)(a1, v1);
}

unint64_t lazy protocol witness table accessor for type TimedOutError and conformance TimedOutError()
{
  result = lazy protocol witness table cache variable for type TimedOutError and conformance TimedOutError;
  if (!lazy protocol witness table cache variable for type TimedOutError and conformance TimedOutError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TimedOutError and conformance TimedOutError);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type IllegalStateError and conformance IllegalStateError()
{
  result = lazy protocol witness table cache variable for type IllegalStateError and conformance IllegalStateError;
  if (!lazy protocol witness table cache variable for type IllegalStateError and conformance IllegalStateError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IllegalStateError and conformance IllegalStateError);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CancelledError and conformance CancelledError()
{
  result = lazy protocol witness table cache variable for type CancelledError and conformance CancelledError;
  if (!lazy protocol witness table cache variable for type CancelledError and conformance CancelledError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CancelledError and conformance CancelledError);
  }

  return result;
}

uint64_t partial apply for closure #1 in Conversation.paraphrase()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return closure #1 in Conversation.paraphrase()(a1, v4, v5, v6);
}

uint64_t dispatch thunk of Conversational.cancel()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return v7(a1, a2);
}

uint64_t dispatch thunk of Conversational.ensureReady(timeout:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 16) + **(a3 + 16));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of Conversational.accept(request:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 24) + **(a4 + 24));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of Conversational.paraphrase()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 32) + **(a3 + 32));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of Conversational.prepare()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 40) + **(a2 + 40));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return v7(a1, a2);
}

uint64_t dispatch thunk of Conversational.commit()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 48) + **(a3 + 48));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of Conversational.isEmpty()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 56) + **(a2 + 56));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for AppShortcutStateProviding.intentsStates(appShortcutTargets:conditionalIntentMetadata:) in conformance AppShortcutStateProvider;

  return v7(a1, a2);
}

uint64_t dispatch thunk of Conversational.isCorrectable()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 64) + **(a2 + 64));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = AppShortcutStateProvider.intentsStates(appShortcutTargets:conditionalIntentMetadata:);

  return v7(a1, a2);
}

uint64_t dispatch thunk of Conversational.flexibleExecutionSupport()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 72) + **(a3 + 72));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return v9(a1, a2, a3);
}

void type metadata completion function for Conversation(uint64_t a1)
{
  type metadata accessor for Conversation.State(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UUID?(319, &lazy cache variable for type metadata for UUID?, MEMORY[0x1E69695A8]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t dispatch thunk of Conversation.cancel()()
{
  v4 = (*(*v0 + 384) + **(*v0 + 384));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return v4();
}

uint64_t dispatch thunk of Conversation.ensureReady(timeout:)(uint64_t a1)
{
  v6 = (*(*v1 + 400) + **(*v1 + 400));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return v6(a1);
}

uint64_t dispatch thunk of Conversation.accept(request:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 408) + **(*v2 + 408));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return v8(a1, a2);
}

uint64_t dispatch thunk of Conversation.paraphrase()(uint64_t a1)
{
  v6 = (*(*v1 + 416) + **(*v1 + 416));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return v6(a1);
}

uint64_t dispatch thunk of Conversation.prepare()()
{
  v4 = (*(*v0 + 424) + **(*v0 + 424));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return v4();
}

uint64_t dispatch thunk of Conversation.flexibleExecutionSupport()(uint64_t a1)
{
  v6 = (*(*v1 + 432) + **(*v1 + 432));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return v6(a1);
}

uint64_t dispatch thunk of Conversation.commit()(uint64_t a1)
{
  v6 = (*(*v1 + 440) + **(*v1 + 440));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return v6(a1);
}

char *initializeBufferWithCopyOfBuffer for Conversation.State(char *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v10 = *a2;
    *a1 = *a2;
    a1 = (v10 + ((v5 + 16) & ~v5));

    return a1;
  }

  v6 = *(a3 - 8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2 || EnumCaseMultiPayload == 3)
    {
      *a1 = *a2;

      goto LABEL_27;
    }
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      v13 = a2[1];
      *a1 = *a2;
      *(a1 + 1) = v13;
      v14 = type metadata accessor for SiriRequest(0);
      v15 = v14[5];
      v16 = type metadata accessor for Input();
      v17 = *(*(v16 - 8) + 16);

      v17(&a1[v15], a2 + v15, v16);
      *&a1[v14[6]] = *(a2 + v14[6]);
      *&a1[v14[7]] = *(a2 + v14[7]);
      v18 = v14[8];
      v19 = &a1[v18];
      v20 = (a2 + v18);
      v21 = *(a2 + v18 + 8);

      if (v21 >> 60 == 15)
      {
        *v19 = *v20;
      }

      else
      {
        v22 = *v20;
        outlined copy of Data._Representation(*v20, v21);
        *v19 = v22;
        *(v19 + 1) = v21;
      }

      *&a1[v14[9]] = *(a2 + v14[9]);
      *&a1[v14[10]] = *(a2 + v14[10]);
      *&a1[v14[11]] = *(a2 + v14[11]);
      v23 = v14[12];
      __dst = &a1[v23];
      v24 = a2 + v23;
      v25 = type metadata accessor for SiriRequestIdentities(0);
      v40 = *(v25 - 8);
      v26 = *(v40 + 48);

      v27 = v24;
      if (v26(v24, 1, v25))
      {
        v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A17RequestIdentitiesVSgMd, &_s14SiriKitRuntime0A17RequestIdentitiesVSgMR);
        memcpy(__dst, v24, *(*(v28 - 8) + 64));
      }

      else
      {
        v29 = type metadata accessor for IdentifiedUser();
        v30 = *(v29 - 8);
        v31 = v27;
        v32 = v27;
        v33 = *(v30 + 48);
        v39 = v30;
        if (v33(v32, 1, v29))
        {
          v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
          memcpy(__dst, v31, *(*(v34 - 8) + 64));
        }

        else
        {
          (*(v30 + 16))(__dst, v31, v29);
          (*(v30 + 56))(__dst, 0, 1, v29);
        }

        v35 = *(v25 + 20);
        if (v33(&v31[v35], 1, v29))
        {
          v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
          memcpy(&__dst[v35], &v31[v35], *(*(v36 - 8) + 64));
        }

        else
        {
          (*(v39 + 16))(&__dst[v35], &v31[v35], v29);
          (*(v39 + 56))(&__dst[v35], 0, 1, v29);
        }

        *&__dst[*(v25 + 24)] = *&v31[*(v25 + 24)];
        v37 = *(v40 + 56);

        v37(__dst, 0, 1, v25);
      }

      v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A7RequestV7request_AA4NodeCyAA9FlowAgentCG08selectedG0tMd, &_s14SiriKitRuntime0A7RequestV7request_AA4NodeCyAA9FlowAgentCG08selectedG0tMR);
      *&a1[*(v38 + 48)] = *(a2 + *(v38 + 48));

      goto LABEL_27;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v8 = *a2;
      v9 = a2[1];
      *a1 = v8;
      *(a1 + 1) = v9;

LABEL_27:
      swift_storeEnumTagMultiPayload();
      return a1;
    }
  }

  v11 = *(v6 + 64);

  return memcpy(a1, a2, v11);
}

char *assignWithCopy for Conversation.State(char *a1, char *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  outlined destroy of Conversation.State(a1, type metadata accessor for Conversation.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2 || EnumCaseMultiPayload == 3)
    {
      *a1 = *a2;

      goto LABEL_26;
    }
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      *a1 = *a2;
      *(a1 + 1) = *(a2 + 1);
      v9 = type metadata accessor for SiriRequest(0);
      v10 = v9[5];
      v11 = type metadata accessor for Input();
      v12 = *(*(v11 - 8) + 16);

      v12(&a1[v10], &a2[v10], v11);
      *&a1[v9[6]] = *&a2[v9[6]];
      *&a1[v9[7]] = *&a2[v9[7]];
      v13 = v9[8];
      v14 = &a1[v13];
      v15 = &a2[v13];
      v16 = *&a2[v13 + 8];

      if (v16 >> 60 == 15)
      {
        *v14 = *v15;
      }

      else
      {
        v17 = *v15;
        outlined copy of Data._Representation(*v15, v16);
        *v14 = v17;
        *(v14 + 1) = v16;
      }

      *&a1[v9[9]] = *&a2[v9[9]];
      *&a1[v9[10]] = *&a2[v9[10]];
      *&a1[v9[11]] = *&a2[v9[11]];
      v18 = v9[12];
      __dst = &a1[v18];
      v19 = &a2[v18];
      v20 = type metadata accessor for SiriRequestIdentities(0);
      v35 = *(v20 - 8);
      v21 = *(v35 + 48);

      v22 = v19;
      if (v21(v19, 1, v20))
      {
        v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A17RequestIdentitiesVSgMd, &_s14SiriKitRuntime0A17RequestIdentitiesVSgMR);
        memcpy(__dst, v19, *(*(v23 - 8) + 64));
      }

      else
      {
        v24 = type metadata accessor for IdentifiedUser();
        v25 = *(v24 - 8);
        v26 = v22;
        v27 = v22;
        v28 = *(v25 + 48);
        v34 = v25;
        if (v28(v27, 1, v24))
        {
          v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
          memcpy(__dst, v26, *(*(v29 - 8) + 64));
        }

        else
        {
          (*(v25 + 16))(__dst, v26, v24);
          (*(v25 + 56))(__dst, 0, 1, v24);
        }

        v30 = *(v20 + 20);
        if (v28(&v26[v30], 1, v24))
        {
          v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
          memcpy(&__dst[v30], &v26[v30], *(*(v31 - 8) + 64));
        }

        else
        {
          (*(v34 + 16))(&__dst[v30], &v26[v30], v24);
          (*(v34 + 56))(&__dst[v30], 0, 1, v24);
        }

        *&__dst[*(v20 + 24)] = *&v26[*(v20 + 24)];
        v32 = *(v35 + 56);

        v32(__dst, 0, 1, v20);
      }

      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A7RequestV7request_AA4NodeCyAA9FlowAgentCG08selectedG0tMd, &_s14SiriKitRuntime0A7RequestV7request_AA4NodeCyAA9FlowAgentCG08selectedG0tMR);
      *&a1[*(v33 + 48)] = *&a2[*(v33 + 48)];

      goto LABEL_26;
    }

    if (EnumCaseMultiPayload == 1)
    {
      *a1 = *a2;
      *(a1 + 1) = *(a2 + 1);

LABEL_26:
      swift_storeEnumTagMultiPayload();
      return a1;
    }
  }

  v7 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v7);
}

_OWORD *initializeWithTake for Conversation.State(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload())
  {
    v6 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v6);
  }

  else
  {
    *a1 = *a2;
    v8 = type metadata accessor for SiriRequest(0);
    v9 = v8[5];
    v10 = type metadata accessor for Input();
    (*(*(v10 - 8) + 32))(a1 + v9, a2 + v9, v10);
    *(a1 + v8[6]) = *(a2 + v8[6]);
    *(a1 + v8[7]) = *(a2 + v8[7]);
    *(a1 + v8[8]) = *(a2 + v8[8]);
    *(a1 + v8[9]) = *(a2 + v8[9]);
    *(a1 + v8[10]) = *(a2 + v8[10]);
    *(a1 + v8[11]) = *(a2 + v8[11]);
    v11 = v8[12];
    v12 = a1 + v11;
    v13 = a2 + v11;
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
    *(a1 + *(v22 + 48)) = *(a2 + *(v22 + 48));
    swift_storeEnumTagMultiPayload();
    return a1;
  }
}

uint64_t type metadata completion function for Conversation.State(uint64_t a1)
{
  result = type metadata accessor for SiriRequest(319);
  if (v2 <= 0x3F)
  {
    v3 = MEMORY[0x1E69E5D20] + 64;
    swift_getTupleTypeLayout2();
    v4[4] = v4;
    v4[5] = &unk_1DCA69550;
    v4[6] = &unk_1DCA69580;
    v4[7] = v3;
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

uint64_t dispatch thunk of ConversationTaskObservationDelegate.conversationWillExecute(flowPluginInfo:activeTasks:rcId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 8) + **(a6 + 8));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of ConversationTaskObservationDelegate.executionDidComplete()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 16) + **(a2 + 16));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return v7(a1, a2);
}

uint64_t dispatch thunk of ConversationTaskObservationDelegate.activeTasksDidChange(activeTasks:rcId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 24) + **(a5 + 24));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return v13(a1, a2, a3, a4, a5);
}

char *initializeBufferWithCopyOfBuffer for SiriRequest(uint64_t *a1, uint64_t *a2, int *a3)
{
  v4 = a1;
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v16 = *a2;
    *v4 = *a2;
    v4 = (v16 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = a2[1];
    *a1 = *a2;
    a1[1] = v7;
    v8 = a3[5];
    v9 = type metadata accessor for Input();
    v10 = *(*(v9 - 8) + 16);

    v10(v4 + v8, a2 + v8, v9);
    v11 = a3[7];
    *(v4 + a3[6]) = *(a2 + a3[6]);
    *(v4 + v11) = *(a2 + v11);
    v12 = a3[8];
    v13 = v4 + v12;
    v14 = (a2 + v12);
    v15 = *(a2 + v12 + 8);

    if (v15 >> 60 == 15)
    {
      *v13 = *v14;
    }

    else
    {
      v17 = *v14;
      outlined copy of Data._Representation(*v14, v15);
      *v13 = v17;
      *(v13 + 1) = v15;
    }

    v18 = a3[10];
    *(v4 + a3[9]) = *(a2 + a3[9]);
    *(v4 + v18) = *(a2 + v18);
    v19 = a3[12];
    *(v4 + a3[11]) = *(a2 + a3[11]);
    v20 = v4 + v19;
    v21 = a2 + v19;
    v22 = type metadata accessor for SiriRequestIdentities(0);
    v23 = *(v22 - 8);
    v24 = *(v23 + 48);

    if (v24(v21, 1, v22))
    {
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A17RequestIdentitiesVSgMd, &_s14SiriKitRuntime0A17RequestIdentitiesVSgMR);
      memcpy(v20, v21, *(*(v25 - 8) + 64));
    }

    else
    {
      v26 = type metadata accessor for IdentifiedUser();
      v27 = *(v26 - 8);
      v28 = *(v27 + 48);
      if (v28(v21, 1, v26))
      {
        v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
        memcpy(v20, v21, *(*(v29 - 8) + 64));
      }

      else
      {
        (*(v27 + 16))(v20, v21, v26);
        (*(v27 + 56))(v20, 0, 1, v26);
      }

      v30 = *(v22 + 20);
      if (v28(&v21[v30], 1, v26))
      {
        v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
        memcpy(&v20[v30], &v21[v30], *(*(v31 - 8) + 64));
      }

      else
      {
        (*(v27 + 16))(&v20[v30], &v21[v30], v26);
        (*(v27 + 56))(&v20[v30], 0, 1, v26);
      }

      *&v20[*(v22 + 24)] = *&v21[*(v22 + 24)];
      v32 = *(v23 + 56);

      v32(v20, 0, 1, v22);
    }
  }

  return v4;
}

char *assignWithCopy for SiriRequest(char *a1, char *a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);

  v6 = a3[5];
  v7 = type metadata accessor for Input();
  (*(*(v7 - 8) + 24))(&a1[v6], &a2[v6], v7);
  *&a1[a3[6]] = *&a2[a3[6]];

  *&a1[a3[7]] = *&a2[a3[7]];

  v8 = a3[8];
  v9 = &a1[v8];
  v10 = &a2[v8];
  v11 = *&a2[v8 + 8];
  if (*&a1[v8 + 8] >> 60 == 15)
  {
    if (v11 >> 60 != 15)
    {
      v12 = *v10;
      outlined copy of Data._Representation(v12, v11);
      *v9 = v12;
      *(v9 + 1) = v11;
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  if (v11 >> 60 == 15)
  {
    outlined destroy of Data(v9);
LABEL_6:
    *v9 = *v10;
    goto LABEL_8;
  }

  v13 = *v10;
  outlined copy of Data._Representation(v13, v11);
  v14 = *v9;
  v15 = *(v9 + 1);
  *v9 = v13;
  *(v9 + 1) = v11;
  outlined consume of Data._Representation(v14, v15);
LABEL_8:
  *&a1[a3[9]] = *&a2[a3[9]];

  *&a1[a3[10]] = *&a2[a3[10]];

  *&a1[a3[11]] = *&a2[a3[11]];

  v16 = a3[12];
  v17 = &a1[v16];
  v18 = &a2[v16];
  v19 = type metadata accessor for SiriRequestIdentities(0);
  v20 = *(v19 - 8);
  v21 = *(v20 + 48);
  v22 = v21(v17, 1, v19);
  v23 = v21(v18, 1, v19);
  if (!v22)
  {
    if (v23)
    {
      outlined destroy of Conversation.State(v17, type metadata accessor for SiriRequestIdentities);
      goto LABEL_14;
    }

    v29 = type metadata accessor for IdentifiedUser();
    v30 = *(v29 - 8);
    v31 = *(v30 + 48);
    v32 = v31(v17, 1, v29);
    v33 = v31(v18, 1, v29);
    if (v32)
    {
      if (!v33)
      {
        (*(v30 + 16))(v17, v18, v29);
        (*(v30 + 56))(v17, 0, 1, v29);
        goto LABEL_26;
      }
    }

    else
    {
      if (!v33)
      {
        (*(v30 + 24))(v17, v18, v29);
LABEL_26:
        v38 = *(v19 + 20);
        v39 = v31(&v17[v38], 1, v29);
        v40 = v31(&v18[v38], 1, v29);
        if (v39)
        {
          if (!v40)
          {
            (*(v30 + 16))(&v17[v38], &v18[v38], v29);
            (*(v30 + 56))(&v17[v38], 0, 1, v29);
LABEL_32:
            *&v17[*(v19 + 24)] = *&v18[*(v19 + 24)];

            return a1;
          }
        }

        else
        {
          if (!v40)
          {
            (*(v30 + 24))(&v17[v38], &v18[v38], v29);
            goto LABEL_32;
          }

          (*(v30 + 8))(&v17[v38], v29);
        }

        v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
        memcpy(&v17[v38], &v18[v38], *(*(v41 - 8) + 64));
        goto LABEL_32;
      }

      (*(v30 + 8))(v17, v29);
    }

    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
    memcpy(v17, v18, *(*(v37 - 8) + 64));
    goto LABEL_26;
  }

  if (v23)
  {
LABEL_14:
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A17RequestIdentitiesVSgMd, &_s14SiriKitRuntime0A17RequestIdentitiesVSgMR);
    memcpy(v17, v18, *(*(v28 - 8) + 64));
    return a1;
  }

  v24 = type metadata accessor for IdentifiedUser();
  v25 = *(v24 - 8);
  v26 = *(v25 + 48);
  if (v26(v18, 1, v24))
  {
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
    memcpy(v17, v18, *(*(v27 - 8) + 64));
  }

  else
  {
    (*(v25 + 16))(v17, v18, v24);
    (*(v25 + 56))(v17, 0, 1, v24);
  }

  v34 = *(v19 + 20);
  if (v26(&v18[v34], 1, v24))
  {
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
    memcpy(&v17[v34], &v18[v34], *(*(v35 - 8) + 64));
  }

  else
  {
    (*(v25 + 16))(&v17[v34], &v18[v34], v24);
    (*(v25 + 56))(&v17[v34], 0, 1, v24);
  }

  *&v17[*(v19 + 24)] = *&v18[*(v19 + 24)];
  v36 = *(v20 + 56);

  v36(v17, 0, 1, v19);
  return a1;
}

char *initializeWithTake for SiriRequest(char *a1, char *a2, int *a3)
{
  *a1 = *a2;
  v6 = a3[5];
  v7 = type metadata accessor for Input();
  (*(*(v7 - 8) + 32))(&a1[v6], &a2[v6], v7);
  v8 = a3[7];
  *&a1[a3[6]] = *&a2[a3[6]];
  *&a1[v8] = *&a2[v8];
  v9 = a3[9];
  *&a1[a3[8]] = *&a2[a3[8]];
  *&a1[v9] = *&a2[v9];
  v10 = a3[11];
  *&a1[a3[10]] = *&a2[a3[10]];
  *&a1[v10] = *&a2[v10];
  v11 = a3[12];
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
    v19 = *(v18 + 48);
    if (v19(v13, 1, v17))
    {
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
      memcpy(v12, v13, *(*(v20 - 8) + 64));
    }

    else
    {
      (*(v18 + 32))(v12, v13, v17);
      (*(v18 + 56))(v12, 0, 1, v17);
    }

    v21 = *(v14 + 20);
    if (v19(&v13[v21], 1, v17))
    {
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
      memcpy(&v12[v21], &v13[v21], *(*(v22 - 8) + 64));
    }

    else
    {
      (*(v18 + 32))(&v12[v21], &v13[v21], v17);
      (*(v18 + 56))(&v12[v21], 0, 1, v17);
    }

    *&v12[*(v14 + 24)] = *&v13[*(v14 + 24)];
    (*(v15 + 56))(v12, 0, 1, v14);
  }

  return a1;
}

char *assignWithTake for SiriRequest(char *a1, char *a2, int *a3)
{
  v6 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;

  v7 = a3[5];
  v8 = type metadata accessor for Input();
  (*(*(v8 - 8) + 40))(&a1[v7], &a2[v7], v8);
  *&a1[a3[6]] = *&a2[a3[6]];

  *&a1[a3[7]] = *&a2[a3[7]];

  v9 = a3[8];
  v10 = &a1[v9];
  v11 = &a2[v9];
  v12 = *&a1[v9 + 8];
  if (v12 >> 60 == 15)
  {
    goto LABEL_4;
  }

  v13 = *(v11 + 1);
  if (v13 >> 60 == 15)
  {
    outlined destroy of Data(v10);
LABEL_4:
    *v10 = *v11;
    goto LABEL_6;
  }

  v14 = *v10;
  *v10 = *v11;
  *(v10 + 1) = v13;
  outlined consume of Data._Representation(v14, v12);
LABEL_6:
  *&a1[a3[9]] = *&a2[a3[9]];

  *&a1[a3[10]] = *&a2[a3[10]];

  *&a1[a3[11]] = *&a2[a3[11]];

  v15 = a3[12];
  v16 = &a1[v15];
  v17 = &a2[v15];
  v18 = type metadata accessor for SiriRequestIdentities(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 48);
  v21 = v20(v16, 1, v18);
  v22 = v20(v17, 1, v18);
  if (!v21)
  {
    if (v22)
    {
      outlined destroy of Conversation.State(v16, type metadata accessor for SiriRequestIdentities);
      goto LABEL_12;
    }

    v28 = type metadata accessor for IdentifiedUser();
    v29 = *(v28 - 8);
    v30 = *(v29 + 48);
    v31 = v30(v16, 1, v28);
    v32 = v30(v17, 1, v28);
    if (v31)
    {
      if (!v32)
      {
        (*(v29 + 32))(v16, v17, v28);
        (*(v29 + 56))(v16, 0, 1, v28);
        goto LABEL_24;
      }
    }

    else
    {
      if (!v32)
      {
        (*(v29 + 40))(v16, v17, v28);
LABEL_24:
        v36 = *(v18 + 20);
        v37 = v30(&v16[v36], 1, v28);
        v38 = v30(&v17[v36], 1, v28);
        if (v37)
        {
          if (!v38)
          {
            (*(v29 + 32))(&v16[v36], &v17[v36], v28);
            (*(v29 + 56))(&v16[v36], 0, 1, v28);
LABEL_30:
            *&v16[*(v18 + 24)] = *&v17[*(v18 + 24)];

            return a1;
          }
        }

        else
        {
          if (!v38)
          {
            (*(v29 + 40))(&v16[v36], &v17[v36], v28);
            goto LABEL_30;
          }

          (*(v29 + 8))(&v16[v36], v28);
        }

        v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
        memcpy(&v16[v36], &v17[v36], *(*(v39 - 8) + 64));
        goto LABEL_30;
      }

      (*(v29 + 8))(v16, v28);
    }

    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
    memcpy(v16, v17, *(*(v35 - 8) + 64));
    goto LABEL_24;
  }

  if (v22)
  {
LABEL_12:
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A17RequestIdentitiesVSgMd, &_s14SiriKitRuntime0A17RequestIdentitiesVSgMR);
    memcpy(v16, v17, *(*(v27 - 8) + 64));
    return a1;
  }

  v23 = type metadata accessor for IdentifiedUser();
  v24 = *(v23 - 8);
  v25 = *(v24 + 48);
  if (v25(v17, 1, v23))
  {
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
    memcpy(v16, v17, *(*(v26 - 8) + 64));
  }

  else
  {
    (*(v24 + 32))(v16, v17, v23);
    (*(v24 + 56))(v16, 0, 1, v23);
  }

  v33 = *(v18 + 20);
  if (v25(&v17[v33], 1, v23))
  {
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
    memcpy(&v16[v33], &v17[v33], *(*(v34 - 8) + 64));
  }

  else
  {
    (*(v24 + 32))(&v16[v33], &v17[v33], v23);
    (*(v24 + 56))(&v16[v33], 0, 1, v23);
  }

  *&v16[*(v18 + 24)] = *&v17[*(v18 + 24)];
  (*(v19 + 56))(v16, 0, 1, v18);
  return a1;
}

void type metadata completion function for SiriRequest(uint64_t a1)
{
  type metadata accessor for Input();
  if (v1 <= 0x3F)
  {
    type metadata accessor for UUID?(319, &lazy cache variable for type metadata for SiriRequestIdentities?, type metadata accessor for SiriRequestIdentities);
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
    }
  }
}

void type metadata accessor for UUID?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t *initializeBufferWithCopyOfBuffer for SiriRequestIdentities(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v11 = *a2;
    *a1 = *a2;
    a1 = (v11 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = type metadata accessor for IdentifiedUser();
    v8 = *(v7 - 8);
    v9 = *(v8 + 48);
    if (v9(a2, 1, v7))
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
      memcpy(a1, a2, *(*(v10 - 8) + 64));
    }

    else
    {
      (*(v8 + 16))(a1, a2, v7);
      (*(v8 + 56))(a1, 0, 1, v7);
    }

    v12 = *(a3 + 20);
    if (v9((a2 + v12), 1, v7))
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
      memcpy(a1 + v12, a2 + v12, *(*(v13 - 8) + 64));
    }

    else
    {
      (*(v8 + 16))(a1 + v12, a2 + v12, v7);
      (*(v8 + 56))(a1 + v12, 0, 1, v7);
    }

    *(a1 + *(a3 + 24)) = *(a2 + *(a3 + 24));
  }

  return a1;
}

char *assignWithCopy for SiriRequestIdentities(char *a1, char *a2, uint64_t a3)
{
  v6 = type metadata accessor for IdentifiedUser();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (v9)
  {
    if (!v10)
    {
      (*(v7 + 16))(a1, a2, v6);
      (*(v7 + 56))(a1, 0, 1, v6);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v10)
  {
    (*(v7 + 8))(a1, v6);
LABEL_6:
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
    memcpy(a1, a2, *(*(v11 - 8) + 64));
    goto LABEL_7;
  }

  (*(v7 + 24))(a1, a2, v6);
LABEL_7:
  v12 = *(a3 + 20);
  v13 = v8(&a1[v12], 1, v6);
  v14 = v8(&a2[v12], 1, v6);
  if (!v13)
  {
    if (!v14)
    {
      (*(v7 + 24))(&a1[v12], &a2[v12], v6);
      goto LABEL_13;
    }

    (*(v7 + 8))(&a1[v12], v6);
    goto LABEL_12;
  }

  if (v14)
  {
LABEL_12:
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
    memcpy(&a1[v12], &a2[v12], *(*(v15 - 8) + 64));
    goto LABEL_13;
  }

  (*(v7 + 16))(&a1[v12], &a2[v12], v6);
  (*(v7 + 56))(&a1[v12], 0, 1, v6);
LABEL_13:
  *&a1[*(a3 + 24)] = *&a2[*(a3 + 24)];

  return a1;
}

char *initializeWithTake for SiriRequestIdentities(char *a1, char *a2, uint64_t a3)
{
  v6 = type metadata accessor for IdentifiedUser();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  if (v8(a2, 1, v6))
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
    memcpy(a1, a2, *(*(v9 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a1, a2, v6);
    (*(v7 + 56))(a1, 0, 1, v6);
  }

  v10 = *(a3 + 20);
  if (v8(&a2[v10], 1, v6))
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
    memcpy(&a1[v10], &a2[v10], *(*(v11 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(&a1[v10], &a2[v10], v6);
    (*(v7 + 56))(&a1[v10], 0, 1, v6);
  }

  *&a1[*(a3 + 24)] = *&a2[*(a3 + 24)];
  return a1;
}

char *assignWithTake for SiriRequestIdentities(char *a1, char *a2, uint64_t a3)
{
  v6 = type metadata accessor for IdentifiedUser();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (v9)
  {
    if (!v10)
    {
      (*(v7 + 32))(a1, a2, v6);
      (*(v7 + 56))(a1, 0, 1, v6);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v10)
  {
    (*(v7 + 8))(a1, v6);
LABEL_6:
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
    memcpy(a1, a2, *(*(v11 - 8) + 64));
    goto LABEL_7;
  }

  (*(v7 + 40))(a1, a2, v6);
LABEL_7:
  v12 = *(a3 + 20);
  v13 = v8(&a1[v12], 1, v6);
  v14 = v8(&a2[v12], 1, v6);
  if (!v13)
  {
    if (!v14)
    {
      (*(v7 + 40))(&a1[v12], &a2[v12], v6);
      goto LABEL_13;
    }

    (*(v7 + 8))(&a1[v12], v6);
    goto LABEL_12;
  }

  if (v14)
  {
LABEL_12:
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
    memcpy(&a1[v12], &a2[v12], *(*(v15 - 8) + 64));
    goto LABEL_13;
  }

  (*(v7 + 32))(&a1[v12], &a2[v12], v6);
  (*(v7 + 56))(&a1[v12], 0, 1, v6);
LABEL_13:
  *&a1[*(a3 + 24)] = *&a2[*(a3 + 24)];

  return a1;
}

void type metadata completion function for SiriRequestIdentities(uint64_t a1)
{
  type metadata accessor for UUID?(319, &lazy cache variable for type metadata for IdentifiedUser?, MEMORY[0x1E69CFE58]);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

id ConversationalContextContainer.__allocating_init(dialogActs:activeTasks:executedTasks:entities:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  *&v9[OBJC_IVAR____TtC14SiriKitRuntime30ConversationalContextContainer_systemDialogActs] = a1;
  *&v9[OBJC_IVAR____TtC14SiriKitRuntime30ConversationalContextContainer_activeTasks] = a2;
  *&v9[OBJC_IVAR____TtC14SiriKitRuntime30ConversationalContextContainer_executedTasks] = a3;
  *&v9[OBJC_IVAR____TtC14SiriKitRuntime30ConversationalContextContainer_entities] = a4;
  v11.receiver = v9;
  v11.super_class = v4;
  return objc_msgSendSuper2(&v11, sel_init);
}

id ConversationalContextContainer.init(dialogActs:activeTasks:executedTasks:entities:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *&v4[OBJC_IVAR____TtC14SiriKitRuntime30ConversationalContextContainer_systemDialogActs] = a1;
  *&v4[OBJC_IVAR____TtC14SiriKitRuntime30ConversationalContextContainer_activeTasks] = a2;
  *&v4[OBJC_IVAR____TtC14SiriKitRuntime30ConversationalContextContainer_executedTasks] = a3;
  *&v4[OBJC_IVAR____TtC14SiriKitRuntime30ConversationalContextContainer_entities] = a4;
  v6.receiver = v4;
  v6.super_class = type metadata accessor for ConversationalContextContainer();
  return objc_msgSendSuper2(&v6, sel_init);
}

Swift::Void __swiftcall ConversationalContextContainer.encode(with:)(NSCoder with)
{
  v3 = type metadata accessor for RREntity();
  v4 = *(v3 - 8);
  v5.n128_f64[0] = MEMORY[0x1EEE9AC00](v3);
  v45 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  isa = *(v1 + OBJC_IVAR____TtC14SiriKitRuntime30ConversationalContextContainer_systemDialogActs);
  if (isa)
  {

    _sSa14SiriKitRuntime21InternalSwiftProtobuf7MessageRzlE09serializeF14ElementsAsData9swiftType7objectsSay10Foundation0K0VGqd__m_Sayqd__GtAbCRd__lF0A8NLUTypes0A29_Nlu_External_SystemDialogActV_ANTtg5Tf4dn_nTm(v8, MEMORY[0x1E69D0B48], &lazy protocol witness table cache variable for type Siri_Nlu_External_SystemDialogAct and conformance Siri_Nlu_External_SystemDialogAct, MEMORY[0x1E69D0B48], MEMORY[0x1E69D0B40]);

    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  v9 = MEMORY[0x1E12A1410](0xD000000000000010, 0x80000001DCA7AD90, v5);
  [(objc_class *)with.super.isa encodeObject:isa forKey:v9];
  swift_unknownObjectRelease();

  v10 = *(v1 + OBJC_IVAR____TtC14SiriKitRuntime30ConversationalContextContainer_activeTasks);
  if (v10)
  {

    _sSa14SiriKitRuntime21InternalSwiftProtobuf7MessageRzlE09serializeF14ElementsAsData9swiftType7objectsSay10Foundation0K0VGqd__m_Sayqd__GtAbCRd__lF0A8NLUTypes0A29_Nlu_External_SystemDialogActV_ANTtg5Tf4dn_nTm(v11, MEMORY[0x1E69D0948], &lazy protocol witness table cache variable for type Siri_Nlu_External_Task and conformance Siri_Nlu_External_Task, MEMORY[0x1E69D0948], MEMORY[0x1E69D0940]);

    v10 = Array._bridgeToObjectiveC()().super.isa;
  }

  v12 = MEMORY[0x1E12A1410](0x6154657669746361, 0xEB00000000736B73);
  [(objc_class *)with.super.isa encodeObject:v10 forKey:v12];
  swift_unknownObjectRelease();

  v13 = *(v1 + OBJC_IVAR____TtC14SiriKitRuntime30ConversationalContextContainer_executedTasks);
  if (v13)
  {

    _sSa14SiriKitRuntime21InternalSwiftProtobuf7MessageRzlE09serializeF14ElementsAsData9swiftType7objectsSay10Foundation0K0VGqd__m_Sayqd__GtAbCRd__lF0A8NLUTypes0A29_Nlu_External_SystemDialogActV_ANTtg5Tf4dn_nTm(v14, MEMORY[0x1E69D0948], &lazy protocol witness table cache variable for type Siri_Nlu_External_Task and conformance Siri_Nlu_External_Task, MEMORY[0x1E69D0948], MEMORY[0x1E69D0940]);

    v13 = Array._bridgeToObjectiveC()().super.isa;
  }

  v15 = MEMORY[0x1E12A1410](0x6465747563657865, 0xED0000736B736154);
  [(objc_class *)with.super.isa encodeObject:v13 forKey:v15];
  swift_unknownObjectRelease();

  v17 = *(v1 + OBJC_IVAR____TtC14SiriKitRuntime30ConversationalContextContainer_entities);
  if (!v17)
  {
    v36 = 0;
LABEL_21:
    v37 = MEMORY[0x1E12A1410](0x7365697469746E65, 0xE800000000000000);
    [(objc_class *)with.super.isa encodeObject:v36 forKey:v37];
    swift_unknownObjectRelease();

    return;
  }

  v40 = with.super.isa;
  v18 = *(v17 + 16);
  if (!v18)
  {
    v41 = MEMORY[0x1E69E7CC0];
LABEL_20:
    v36 = Array._bridgeToObjectiveC()().super.isa;

    with.super.isa = v40;
    goto LABEL_21;
  }

  v19 = 0;
  v47 = v4 + 16;
  v20 = (v4 + 8);
  v41 = MEMORY[0x1E69E7CC0];
  v46 = v18;
  v39 = v18 - 1;
  *&v16 = 136315138;
  v42 = v16;
  v43 = v4;
  v44 = v3;
  while (1)
  {
    v21 = v19;
    v22 = v45;
    if (v19 >= *(v17 + 16))
    {
      break;
    }

    (*(v4 + 16))(v45, v17 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v19++, v3);
    type metadata accessor for JSONEncoder();
    swift_allocObject();
    JSONEncoder.init()();
    lazy protocol witness table accessor for type RREntity and conformance RREntity(&lazy protocol witness table cache variable for type RREntity and conformance RREntity, MEMORY[0x1E69D2948], MEMORY[0x1E69D2950]);
    v23 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v25 = v24;
    v26 = v22;
    v27 = v3;
    v28 = v23;

    (*v20)(v26, v27);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v41 + 2) + 1, 1, v41);
    }

    v30 = *(v41 + 2);
    v29 = *(v41 + 3);
    if (v30 >= v29 >> 1)
    {
      v35 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v30 + 1, 1, v41);
      v32 = v25;
      v41 = v35;
      v31 = v28;
    }

    else
    {
      v31 = v28;
      v32 = v25;
    }

    v4 = v43;
    v3 = v44;
    v33 = v41;
    *(v41 + 2) = v30 + 1;
    v34 = &v33[16 * v30];
    *(v34 + 4) = v31;
    *(v34 + 5) = v32;
    if (v39 == v21)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
}

unint64_t *ConversationalContextContainer.init(coder:)(unint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s32SiriReferenceResolutionDataModel8RREntityVSgMd, &_s32SiriReferenceResolutionDataModel8RREntityVSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v61 - v3;
  v5 = type metadata accessor for RREntity();
  v68 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v73 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v61 - v8;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v65 = &v61 - v12;
  v13 = MEMORY[0x1E12A1410](0xD000000000000010, 0x80000001DCA7AD90, v11);
  v14 = [a1 decodeObjectForKey_];

  if (v14)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v78 = 0u;
    v79 = 0u;
  }

  v80 = v78;
  v81 = v79;
  v71 = v9;
  if (*(&v79 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation4DataVGMd, &_sSay10Foundation4DataVGMR);
    if ((swift_dynamicCast() & 1) == 0)
    {
      if (one-time initialization token for conversationBridge == -1)
      {
LABEL_11:
        v19 = type metadata accessor for Logger();
        __swift_project_value_buffer(v19, static Logger.conversationBridge);
        v20 = Logger.logObject.getter();
        v21 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v20, v21))
        {
          v22 = swift_slowAlloc();
          *v22 = 0;
          _os_log_impl(&dword_1DC659000, v20, v21, "Failed to decode the SystemDialogAct", v22, 2u);
          MEMORY[0x1E12A2F50](v22, -1, -1);
        }

        goto LABEL_59;
      }

LABEL_64:
      swift_once();
      goto LABEL_11;
    }

    v16 = _sSa14SiriKitRuntime10Foundation4DataVRszlE011deserializeE18ElementsAsProtobuf9swiftTypeSayqd__Gqd__m_t013InternalSwiftI07MessageRd__lF0A8NLUTypes0A29_Nlu_External_SystemDialogActV_Ttg5(v76, v15);
  }

  else
  {
    outlined destroy of ReferenceResolutionClientProtocol?(&v80, &_sypSgMd, &_sypSgMR);
    v16 = 0;
  }

  *&v74[OBJC_IVAR____TtC14SiriKitRuntime30ConversationalContextContainer_systemDialogActs] = v16;
  v17 = MEMORY[0x1E12A1410](0x6154657669746361, 0xEB00000000736B73);
  v18 = [a1 decodeObjectForKey_];

  if (v18)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v78 = 0u;
    v79 = 0u;
  }

  v80 = v78;
  v81 = v79;
  if (*(&v79 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation4DataVGMd, &_sSay10Foundation4DataVGMR);
    if ((swift_dynamicCast() & 1) == 0)
    {
      if (one-time initialization token for conversationBridge != -1)
      {
        swift_once();
      }

      v27 = type metadata accessor for Logger();
      __swift_project_value_buffer(v27, static Logger.conversationBridge);
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&dword_1DC659000, v28, v29, "Failed to decode the Active Tasks", v30, 2u);
        MEMORY[0x1E12A2F50](v30, -1, -1);
      }

      goto LABEL_58;
    }

    v24 = _sSa14SiriKitRuntime10Foundation4DataVRszlE011deserializeE18ElementsAsProtobuf9swiftTypeSayqd__Gqd__m_t013InternalSwiftI07MessageRd__lF0A8NLUTypes0A18_Nlu_External_TaskV_Ttg5(v76, v23);
  }

  else
  {
    outlined destroy of ReferenceResolutionClientProtocol?(&v80, &_sypSgMd, &_sypSgMR);
    v24 = 0;
  }

  *&v74[OBJC_IVAR____TtC14SiriKitRuntime30ConversationalContextContainer_activeTasks] = v24;
  v25 = MEMORY[0x1E12A1410](0x6465747563657865, 0xED0000736B736154);
  v26 = [a1 decodeObjectForKey_];

  if (v26)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v78 = 0u;
    v79 = 0u;
  }

  v80 = v78;
  v81 = v79;
  if (*(&v79 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation4DataVGMd, &_sSay10Foundation4DataVGMR);
    if ((swift_dynamicCast() & 1) == 0)
    {
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
        _os_log_impl(&dword_1DC659000, v36, v37, "Failed to decode the Executed Tasks", v38, 2u);
        MEMORY[0x1E12A2F50](v38, -1, -1);
      }

      goto LABEL_58;
    }

    v62 = a1;
    v32 = _sSa14SiriKitRuntime10Foundation4DataVRszlE011deserializeE18ElementsAsProtobuf9swiftTypeSayqd__Gqd__m_t013InternalSwiftI07MessageRd__lF0A8NLUTypes0A18_Nlu_External_TaskV_Ttg5(v76, v31);
  }

  else
  {
    v62 = a1;
    outlined destroy of ReferenceResolutionClientProtocol?(&v80, &_sypSgMd, &_sypSgMR);
    v32 = 0;
  }

  *&v74[OBJC_IVAR____TtC14SiriKitRuntime30ConversationalContextContainer_executedTasks] = v32;
  v33 = MEMORY[0x1E12A1410](0x7365697469746E65, 0xE800000000000000);
  v34 = [v62 decodeObjectForKey_];

  if (v34)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v78 = 0u;
    v79 = 0u;
  }

  v80 = v78;
  v81 = v79;
  if (!*(&v79 + 1))
  {
    outlined destroy of ReferenceResolutionClientProtocol?(&v80, &_sypSgMd, &_sypSgMR);
    v52 = 0;
    goto LABEL_62;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation4DataVGMd, &_sSay10Foundation4DataVGMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v53 = type metadata accessor for Logger();
    __swift_project_value_buffer(v53, static Logger.conversationBridge);
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&dword_1DC659000, v54, v55, "Failed to decode the entities", v56, 2u);
      MEMORY[0x1E12A2F50](v56, -1, -1);
    }

LABEL_58:

LABEL_59:
    type metadata accessor for ConversationalContextContainer();
    swift_deallocPartialClassInstance();
    return 0;
  }

  v40 = v76;
  v69 = *(v76 + 16);
  if (v69)
  {
    v41 = 0;
    v67 = (v68 + 56);
    v72 = (v68 + 32);
    v66 = (v68 + 48);
    v70 = MEMORY[0x1E69E7CC0];
    a1 = (v76 + 40);
    *&v39 = 136315138;
    v61 = v39;
    v42 = v4;
    v43 = v71;
    v64 = v76;
    v63 = v5;
    while (v41 < *(v40 + 16))
    {
      v45 = *(a1 - 1);
      v44 = *a1;
      type metadata accessor for JSONDecoder();
      swift_allocObject();
      outlined copy of Data._Representation(v45, v44);
      JSONDecoder.init()();
      lazy protocol witness table accessor for type RREntity and conformance RREntity(&lazy protocol witness table cache variable for type RREntity and conformance RREntity, MEMORY[0x1E69D2948], MEMORY[0x1E69D2960]);
      v75 = v45;
      dispatch thunk of JSONDecoder.decode<A>(_:from:)();

      (*v72)(v42, v43, v5);
      (*v67)(v42, 0, 1, v5);
      outlined consume of Data._Representation(v75, v44);
      if ((*v66)(v42, 1, v5) == 1)
      {
        outlined destroy of ReferenceResolutionClientProtocol?(v42, &_s32SiriReferenceResolutionDataModel8RREntityVSgMd, &_s32SiriReferenceResolutionDataModel8RREntityVSgMR);
      }

      else
      {
        v46 = *v72;
        v47 = v65;
        (*v72)(v65, v42, v5);
        v46(v73, v47, v5);
        v48 = v70;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v48 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v48[2] + 1, 1, v48);
        }

        v50 = v48[2];
        v49 = v48[3];
        if (v50 >= v49 >> 1)
        {
          v48 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v49 > 1), v50 + 1, 1, v48);
        }

        v48[2] = v50 + 1;
        v51 = (*(v68 + 80) + 32) & ~*(v68 + 80);
        v70 = v48;
        v46(v48 + v51 + *(v68 + 72) * v50, v73, v5);
        v43 = v71;
        v40 = v64;
      }

      ++v41;
      a1 += 2;
      if (v69 == v41)
      {
        goto LABEL_61;
      }
    }

    __break(1u);
    goto LABEL_64;
  }

  v70 = MEMORY[0x1E69E7CC0];
LABEL_61:

  v52 = v70;
LABEL_62:
  v58 = v74;
  *&v74[OBJC_IVAR____TtC14SiriKitRuntime30ConversationalContextContainer_entities] = v52;
  v59 = type metadata accessor for ConversationalContextContainer();
  v77.receiver = v58;
  v77.super_class = v59;
  v60 = objc_msgSendSuper2(&v77, sel_init);

  return v60;
}

char *_sSa14SiriKitRuntime10Foundation4DataVRszlE011deserializeE18ElementsAsProtobuf9swiftTypeSayqd__Gqd__m_t013InternalSwiftI07MessageRd__lF0A8NLUTypes0A29_Nlu_External_SystemDialogActV_Ttg5(uint64_t a1, double a2)
{
  v3 = type metadata accessor for BinaryDecodingOptions();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A29_Nlu_External_SystemDialogActVSgMd, &_s12SiriNLUTypes0A29_Nlu_External_SystemDialogActVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v22 - v7;
  v9 = type metadata accessor for Siri_Nlu_External_SystemDialogAct();
  MEMORY[0x1EEE9AC00](v9);
  v26 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 16);
  if (!v12)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v13 = (v10 + 56);
  v23 = v10;
  v25 = (v10 + 32);
  v14 = (a1 + 40);
  v15 = MEMORY[0x1E69E7CC0];
  v24 = v5;
  do
  {
    v17 = *(v14 - 1);
    v16 = *v14;
    v29 = 0;
    v27 = 0u;
    v28 = 0u;
    outlined copy of Data._Representation(v17, v16);
    BinaryDecodingOptions.init()();
    lazy protocol witness table accessor for type RREntity and conformance RREntity(&lazy protocol witness table cache variable for type Siri_Nlu_External_SystemDialogAct and conformance Siri_Nlu_External_SystemDialogAct, MEMORY[0x1E69D0B48], MEMORY[0x1E69D0B40]);
    Message.init(serializedData:extensions:partial:options:)();
    (*v13)(v8, 0, 1, v9);
    v18 = *v25;
    (*v25)(v26, v8, v9);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v15 + 2) + 1, 1, v15);
    }

    v20 = *(v15 + 2);
    v19 = *(v15 + 3);
    if (v20 >= v19 >> 1)
    {
      v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1, v15);
    }

    *(v15 + 2) = v20 + 1;
    v18(&v15[((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v20], v26, v9);
    v14 += 2;
    --v12;
  }

  while (v12);
  return v15;
}

char *_sSa14SiriKitRuntime10Foundation4DataVRszlE011deserializeE18ElementsAsProtobuf9swiftTypeSayqd__Gqd__m_t013InternalSwiftI07MessageRd__lF0A8NLUTypes0A18_Nlu_External_TaskV_Ttg5(uint64_t a1, double a2)
{
  v3 = type metadata accessor for BinaryDecodingOptions();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A18_Nlu_External_TaskVSgMd, &_s12SiriNLUTypes0A18_Nlu_External_TaskVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v22 - v7;
  v9 = type metadata accessor for Siri_Nlu_External_Task();
  MEMORY[0x1EEE9AC00](v9);
  v26 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 16);
  if (!v12)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v13 = (v10 + 56);
  v23 = v10;
  v25 = (v10 + 32);
  v14 = (a1 + 40);
  v15 = MEMORY[0x1E69E7CC0];
  v24 = v5;
  do
  {
    v17 = *(v14 - 1);
    v16 = *v14;
    v29 = 0;
    v27 = 0u;
    v28 = 0u;
    outlined copy of Data._Representation(v17, v16);
    BinaryDecodingOptions.init()();
    lazy protocol witness table accessor for type RREntity and conformance RREntity(&lazy protocol witness table cache variable for type Siri_Nlu_External_Task and conformance Siri_Nlu_External_Task, MEMORY[0x1E69D0948], MEMORY[0x1E69D0940]);
    Message.init(serializedData:extensions:partial:options:)();
    (*v13)(v8, 0, 1, v9);
    v18 = *v25;
    (*v25)(v26, v8, v9);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v15 + 2) + 1, 1, v15);
    }

    v20 = *(v15 + 2);
    v19 = *(v15 + 3);
    if (v20 >= v19 >> 1)
    {
      v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1, v15);
    }

    *(v15 + 2) = v20 + 1;
    v18(&v15[((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v20], v26, v9);
    v14 += 2;
    --v12;
  }

  while (v12);
  return v15;
}

void *ConversationalContextContainer.init(serializedBackingStore:)(void *a1)
{
  v2 = v1;
  outlined init with copy of Any(a1, v31);
  v4 = &_ss18_DictionaryStorageCy10Foundation4UUIDVSiGMd;
  v5 = &_ss18_DictionaryStorageCy10Foundation4UUIDVSiGMd;
  if (swift_dynamicCast())
  {
    v6 = v29;
    type metadata accessor for NSKeyedUnarchiver();
    static NSKeyedUnarchiver.unarchiveTopLevelObjectWithData(_:)();
    if (v31[3])
    {
      type metadata accessor for ConversationalContextContainer();
      if (swift_dynamicCast())
      {
        v27 = v30;
        v15 = v29;
        v14 = *&v29[OBJC_IVAR____TtC14SiriKitRuntime30ConversationalContextContainer_systemDialogActs];
        v13 = *&v29[OBJC_IVAR____TtC14SiriKitRuntime30ConversationalContextContainer_activeTasks];
        v12 = *&v29[OBJC_IVAR____TtC14SiriKitRuntime30ConversationalContextContainer_executedTasks];
        v11 = *&v29[OBJC_IVAR____TtC14SiriKitRuntime30ConversationalContextContainer_entities];
        v16 = one-time initialization token for conversationBridge;

        if (v16 != -1)
        {
          swift_once();
        }

        v17 = type metadata accessor for Logger();
        __swift_project_value_buffer(v17, static Logger.conversationBridge);
        v18 = Logger.logObject.getter();
        v19 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v18, v19))
        {
          v20 = swift_slowAlloc();
          v21 = v18;
          v22 = v20;
          *v20 = 0;
          v23 = v19;
          v24 = v21;
          _os_log_impl(&dword_1DC659000, v21, v23, "Decoded the ConversationalContextContainer", v20, 2u);
          MEMORY[0x1E12A2F50](v22, -1, -1);
          outlined consume of Data._Representation(v6, v27);
        }

        else
        {
          outlined consume of Data._Representation(v29, v30);
        }

        v5 = &_ss18_DictionaryStorageCy10Foundation4UUIDVSiGMd;
        goto LABEL_17;
      }

      outlined consume of Data._Representation(v29, v30);
    }

    else
    {
      outlined consume of Data._Representation(v29, v30);
      outlined destroy of ReferenceResolutionClientProtocol?(v31, &_sypSgMd, &_sypSgMR);
    }

    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
LABEL_17:
    v4 = &_ss18_DictionaryStorageCy10Foundation4UUIDVSiGMd;
    goto LABEL_18;
  }

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
    _os_log_impl(&dword_1DC659000, v8, v9, "The backing store for conversational context is not of type Data", v10, 2u);
    MEMORY[0x1E12A2F50](v10, -1, -1);
  }

  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
LABEL_18:
  *&v2[OBJC_IVAR____TtC14SiriKitRuntime30ConversationalContextContainer_systemDialogActs] = v14;
  *&v2[OBJC_IVAR____TtC14SiriKitRuntime30ConversationalContextContainer_activeTasks] = v13;
  *&v2[v4[186]] = v12;
  *&v2[v5[187]] = v11;
  v28.receiver = v2;
  v28.super_class = type metadata accessor for ConversationalContextContainer();
  v25 = objc_msgSendSuper2(&v28, sel_init);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v25;
}

void ConversationalContextContainer.serializedBackingStore()(uint64_t *a1@<X8>)
{
  v20[1] = *MEMORY[0x1E69E9840];
  v20[0] = 0;
  v3 = [objc_opt_self() archivedDataWithRootObject:v1 requiringSecureCoding:1 error:v20];
  v4 = v20[0];
  if (v3)
  {
    v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v8 = v4;
    v9 = _convertNSErrorToError(_:)();

    swift_willThrow();
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static Logger.conversationBridge);
    v11 = v9;
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v20[0] = v15;
      *v14 = 136315138;
      v16 = v9;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v17 = String.init<A>(describing:)();
      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, v20);

      *(v14 + 4) = v19;
      _os_log_impl(&dword_1DC659000, v12, v13, "Failed to encode the context: %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v15);
      MEMORY[0x1E12A2F50](v15, -1, -1);
      MEMORY[0x1E12A2F50](v14, -1, -1);
    }

    else
    {
    }

    v5 = 0;
    v7 = 0xC000000000000000;
  }

  a1[3] = MEMORY[0x1E6969080];
  *a1 = v5;
  a1[1] = v7;
}

id ConversationalContextContainer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ConversationalContextContainer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ConversationalContextContainer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *_sSa14SiriKitRuntime21InternalSwiftProtobuf7MessageRzlE09serializeF14ElementsAsData9swiftType7objectsSay10Foundation0K0VGqd__m_Sayqd__GtAbCRd__lF0A8NLUTypes0A29_Nlu_External_SystemDialogActV_ANTtg5Tf4dn_nTm(uint64_t a1, uint64_t (*a2)(void), unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  v31 = a3;
  v8 = a2(0);
  v10.n128_f64[0] = MEMORY[0x1EEE9AC00](v8);
  v12 = &v26 - v11;
  v13 = *(a1 + 16);
  if (!v13)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v15 = *(v9 + 16);
  v14 = v9 + 16;
  v16 = a1 + ((*(v14 + 64) + 32) & ~*(v14 + 64));
  v29 = *(v14 + 56);
  v30 = v15;
  v28 = (v14 - 8);
  v32 = MEMORY[0x1E69E7CC0];
  v26 = a4;
  v27 = a5;
  do
  {
    v17 = v14;
    v30(v12, v16, v8, v10);
    lazy protocol witness table accessor for type RREntity and conformance RREntity(v31, a4, a5);
    v18 = Message.serializedData(partial:)();
    v20 = v19;
    (*v28)(v12, v8);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v32 + 2) + 1, 1, v32);
    }

    v22 = *(v32 + 2);
    v21 = *(v32 + 3);
    if (v22 >= v21 >> 1)
    {
      v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1, v32);
    }

    v23 = v32;
    *(v32 + 2) = v22 + 1;
    v24 = &v23[16 * v22];
    *(v24 + 4) = v18;
    *(v24 + 5) = v20;
    a4 = v26;
    a5 = v27;
    v16 += v29;
    --v13;
    v14 = v17;
  }

  while (v13);
  return v32;
}

unint64_t type metadata accessor for NSKeyedUnarchiver()
{
  result = lazy cache variable for type metadata for NSKeyedUnarchiver;
  if (!lazy cache variable for type metadata for NSKeyedUnarchiver)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSKeyedUnarchiver);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type RREntity and conformance RREntity(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void specialized ConversationRequestAwareBridgeBase.registerMessageHandler<A>(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v38 = a1;
  v39 = a2;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v36 - v9;
  v41[0] = type metadata accessor for StartRequestMessageBase();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes012StartRequestB4BaseCmMd, &_s16SiriMessageTypes012StartRequestB4BaseCmMR);
  v11 = String.init<A>(describing:)();
  v13 = v12;
  v14 = *(*v2 + 176);

  v16 = v14(v15);
  v17 = v11;
  if (*(v16 + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(v11, v13), (v18 & 1) != 0))
  {

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v41[0] = v22;
      *v21 = 136315138;
      v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v13, v41);

      *(v21 + 4) = v23;
      _os_log_impl(&dword_1DC659000, v19, v20, "Message type: %s is already registered. Ignoring this request", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      MEMORY[0x1E12A2F50](v22, -1, -1);
      MEMORY[0x1E12A2F50](v21, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    v37 = v11;

    v24 = type metadata accessor for TaskPriority();
    (*(*(v24 - 8) + 56))(v10, 1, 1, v24);
    v25 = one-time initialization token for shared;

    if (v25 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v26 = static MessageBusActor.shared;
    v27 = lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type MessageBusActor and conformance MessageBusActor, 255, type metadata accessor for MessageBusActor, &protocol conformance descriptor for MessageBusActor);
    v28 = swift_allocObject();
    v28[2] = v26;
    v28[3] = v27;
    v28[4] = v3;

    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v10, &async function pointer to partial apply for specialized closure #1 in ConversationRequestAwareBridgeBase.registerMessageHandler<A>(_:), v28);

    (*(v5 + 16))(v7, v3 + direct field offset for ConversationMessageDispatchingBridgeBase.logger, v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime40ConversationMessageDispatchingBridgeBaseC0E7HandlerCyAA0dG0C_AA37ServerFallbackCapableRequestProcessorC0aE5Types05StartmeH0CGMd, &_s14SiriKitRuntime40ConversationMessageDispatchingBridgeBaseC0E7HandlerCyAA0dG0C_AA37ServerFallbackCapableRequestProcessorC0aE5Types05StartmeH0CGMR);
    v29 = swift_allocObject();
    v30 = v39;
    *(v29 + 16) = v38;
    *(v29 + 24) = v30;
    (*(v5 + 32))(v29 + direct field offset for ConversationMessageDispatchingBridgeBase.MessageHandler.logger, v7, v4);
    v31 = *(*v3 + 192);

    v32 = v31(v41);
    v34 = v33;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v40 = *v34;
    *v34 = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v29, v37, v13, isUniquelyReferenced_nonNull_native);

    *v34 = v40;
    v32(v41, 0);
  }
}

{
  v25 = a1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27[0] = type metadata accessor for EndRequestMessageBase();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes010EndRequestB4BaseCmMd, &_s16SiriMessageTypes010EndRequestB4BaseCmMR);
  v8 = String.init<A>(describing:)();
  v10 = v9;
  v11 = *(*v2 + 176);

  if (*(v11(v12) + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(v8, v10), (v13 & 1) != 0))
  {

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v27[0] = v17;
      *v16 = 136315138;
      v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v10, v27);

      *(v16 + 4) = v18;
      _os_log_impl(&dword_1DC659000, v14, v15, "Message type: %s is already registered. Ignoring this request", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v17);
      MEMORY[0x1E12A2F50](v17, -1, -1);
      MEMORY[0x1E12A2F50](v16, -1, -1);
    }

    else
    {
    }
  }

  else
  {

    (*(v5 + 16))(v7, v2 + direct field offset for ConversationMessageDispatchingBridgeBase.logger, v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime40ConversationMessageDispatchingBridgeBaseC0E7HandlerCyAA0dG0C_AA37ServerFallbackCapableRequestProcessorC0aE5Types03EndmeH0CGMd, &_s14SiriKitRuntime40ConversationMessageDispatchingBridgeBaseC0E7HandlerCyAA0dG0C_AA37ServerFallbackCapableRequestProcessorC0aE5Types03EndmeH0CGMR);
    v19 = swift_allocObject();
    *(v19 + 16) = v25;
    *(v19 + 24) = a2;
    (*(v5 + 32))(v19 + direct field offset for ConversationMessageDispatchingBridgeBase.MessageHandler.logger, v7, v4);
    v20 = *(*v2 + 192);

    v21 = v20(v27);
    v23 = v22;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v23;
    *v23 = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v19, v8, v10, isUniquelyReferenced_nonNull_native);

    *v23 = v26;
    v21(v27, 0);
  }
}

char *specialized ConversationMessageDispatchingBridgeBase.deinit()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 80));

  v1 = direct field offset for ConversationMessageDispatchingBridgeBase.logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t static ConversationBridgeSPI.isEnabled.getter()
{
  if (one-time initialization token for forceEnabled != -1)
  {
    swift_once();
  }

  v0 = static ConversationBridgeFeatureFlag.forceEnabled;
  os_unfair_lock_lock((static ConversationBridgeFeatureFlag.forceEnabled + 20));
  v1 = *(v0 + 16);
  if (v1 == 2)
  {
    v3[3] = &type metadata for ConversationBridgeFeatureFlag;
    v3[4] = lazy protocol witness table accessor for type ConversationBridgeFeatureFlag and conformance ConversationBridgeFeatureFlag();
    LOBYTE(v1) = isFeatureEnabled(_:)();
    __swift_destroy_boxed_opaque_existential_1Tm(v3);
  }

  os_unfair_lock_unlock((v0 + 20));
  return v1 & 1;
}

void *ConversationBridgeSPI.__allocating_init(_:_:_:_:_:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void *a6)
{
  v27 = a6;
  v26 = a4;
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v10, static Logger.conversationBridge);
  (*(v11 + 16))(v13, v15, v10);
  type metadata accessor for AsyncSerialQueue(0);
  v16 = swift_allocObject();
  v16[2] = MEMORY[0x1E69E7CC0];
  v16[3] = 0;
  v16[4] = 0;
  v16[5] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  v16[6] = v17;
  v16[7] = 0xD000000000000012;
  v16[8] = 0x80000001DCA696E0;
  (*(v11 + 32))(v16 + OBJC_IVAR____TtC14SiriKitRuntime16AsyncSerialQueue_logger, v13, v10);
  v14[2] = v16;
  v14[4] = a5;
  v14[5] = a1;
  v14[6] = a2;
  outlined init with copy of ReferenceResolutionClientProtocol(a3, v32);
  v18 = v27;
  outlined init with copy of ReferenceResolutionClientProtocol(v27, v31);
  type metadata accessor for FeatureChecker();
  memset(v29, 0, sizeof(v29));
  v30 = 0;
  v19 = swift_allocObject();
  v20 = a5;

  *(v19 + 16) = AFDeviceSupportsSAEByDeviceCapabilityAndFeatureFlags();
  v28[3] = &type metadata for IntelligenceFlowFeatureFlag;
  v28[4] = lazy protocol witness table accessor for type IntelligenceFlowFeatureFlag and conformance IntelligenceFlowFeatureFlag();
  v21 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_1Tm(v28);
  *(v19 + 17) = v21 & 1;
  type metadata accessor for ConversationBridge(0);
  v22 = swift_allocObject();
  v23 = specialized ConversationBridge.init(name:messagePublisher:serviceHelper:conversationSessionsManaging:rrClient:featureChecker:)(a1, a2, v32, v26, v31, v29, v19, v22);

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v18);
  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  v14[3] = v23;
  return v14;
}

void *ConversationBridgeSPI.init(_:_:_:_:_:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void *a6)
{
  v27 = a6;
  v26 = a4;
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v11, static Logger.conversationBridge);
  (*(v12 + 16))(v14, v15, v11);
  type metadata accessor for AsyncSerialQueue(0);
  v16 = swift_allocObject();
  v16[2] = MEMORY[0x1E69E7CC0];
  v16[3] = 0;
  v16[4] = 0;
  v16[5] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  v16[6] = v17;
  v16[7] = 0xD000000000000012;
  v16[8] = 0x80000001DCA696E0;
  (*(v12 + 32))(v16 + OBJC_IVAR____TtC14SiriKitRuntime16AsyncSerialQueue_logger, v14, v11);
  v6[2] = v16;
  v6[4] = a5;
  v6[5] = a1;
  v6[6] = a2;
  outlined init with copy of ReferenceResolutionClientProtocol(a3, v32);
  v18 = v27;
  outlined init with copy of ReferenceResolutionClientProtocol(v27, v31);
  type metadata accessor for FeatureChecker();
  memset(v29, 0, sizeof(v29));
  v30 = 0;
  v19 = swift_allocObject();
  v20 = a5;

  *(v19 + 16) = AFDeviceSupportsSAEByDeviceCapabilityAndFeatureFlags();
  v28[3] = &type metadata for IntelligenceFlowFeatureFlag;
  v28[4] = lazy protocol witness table accessor for type IntelligenceFlowFeatureFlag and conformance IntelligenceFlowFeatureFlag();
  v21 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_1Tm(v28);
  *(v19 + 17) = v21 & 1;
  type metadata accessor for ConversationBridge(0);
  v22 = swift_allocObject();
  v23 = specialized ConversationBridge.init(name:messagePublisher:serviceHelper:conversationSessionsManaging:rrClient:featureChecker:)(a1, a2, v32, v26, v31, v29, v19, v22);

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v18);
  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  v6[3] = v23;
  return v6;
}

void *ConversationBridge.__allocating_init(name:messagePublisher:serviceHelper:conversationSessionsManaging:rrClient:featureChecker:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6, void *a7)
{
  v15 = a7[3];
  v16 = a7[4];
  v17 = __swift_mutable_project_boxed_opaque_existential_1(a7, v15);
  v18 = specialized ConversationBridge.__allocating_init(name:messagePublisher:serviceHelper:conversationSessionsManaging:rrClient:featureChecker:)(a1, a2, a3, a4, a5, a6, v17, v7, v15, v16);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(a7);
  return v18;
}

uint64_t ConversationBridgeSPI.name.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t ConversationBridgeSPI.handle(_:executionContextInfo:reply:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 16);
  _StringGuts.grow(_:)(28);

  v10 = [a1 aceId];
  if (v10)
  {
    v11 = v10;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  v12 = String.init<A>(describing:)();
  MEMORY[0x1E12A1580](v12);

  v13 = swift_allocObject();
  v13[2] = v4;
  v13[3] = a1;
  v13[4] = a2;
  v13[5] = a3;
  v13[6] = a4;
  v14 = *(*v9 + 208);

  v15 = a1;
  v16 = a2;
  sub_1DC680C50(a3);
  v14(0xD00000000000001ALL, 0x80000001DCA7EAE0, &async function pointer to partial apply for closure #1 in ConversationBridgeSPI.handle(_:executionContextInfo:reply:), v13);
}

uint64_t closure #1 in ConversationBridgeSPI.handle(_:executionContextInfo:reply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v6 = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in ConversationBridgeSPI.handle(_:executionContextInfo:reply:), v6, 0);
}

uint64_t closure #1 in ConversationBridgeSPI.handle(_:executionContextInfo:reply:)()
{
  (*(**(v0[5] + 24) + 272))(v0[6], v0[7]);
  v1 = v0[1];

  return v1();
}

uint64_t ConversationBridgeSPI.deinit()
{

  return v0;
}

uint64_t ConversationBridgeSPI.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t key path setter for ConversationBridge.runSiriKitExecutorProcessor : ConversationBridge(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = direct field offset for ConversationBridge.runSiriKitExecutorProcessor;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

uint64_t closure #1 in ConversationBridge.executionClient.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  outlined init with copy of ReferenceResolutionClientProtocol?(a1 + direct field offset for ConversationBridge.overrideExecutionClient, &v7, &_s14SiriKitRuntime012ConversationC14ClientProtocol_pSgMd, &_s14SiriKitRuntime012ConversationC14ClientProtocol_pSgMR);
  if (v8)
  {
    outlined init with take of ReferenceResolutionClientProtocol(&v7, v9);
    return outlined init with take of ReferenceResolutionClientProtocol(v9, a2);
  }

  else
  {
    outlined destroy of ReferenceResolutionClientProtocol?(&v7, &_s14SiriKitRuntime012ConversationC14ClientProtocol_pSgMd, &_s14SiriKitRuntime012ConversationC14ClientProtocol_pSgMR);
    v4 = swift_allocObject();
    swift_weakInit();
    v5 = type metadata accessor for ConversationRuntimeClient();
    swift_allocObject();
    v6 = specialized ConversationRuntimeClient.init(onConnectionInterrupted:)(partial apply for closure #1 in closure #1 in ConversationBridge.executionClient.getter, v4);

    a2[3] = v5;
    a2[4] = &protocol witness table for ConversationRuntimeClient;
    *a2 = v6;
  }

  return result;
}

uint64_t closure #1 in closure #1 in ConversationBridge.executionClient.getter(void *a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v13[-v4];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    v8 = type metadata accessor for TaskPriority();
    (*(*(v8 - 8) + 56))(v5, 1, 1, v8);

    v9 = a1;
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v10 = static MessageBusActor.shared;
    v11 = lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type MessageBusActor and conformance MessageBusActor, 255, type metadata accessor for MessageBusActor, &protocol conformance descriptor for MessageBusActor);
    v12 = swift_allocObject();
    v12[2] = v10;
    v12[3] = v11;
    v12[4] = v7;
    v12[5] = a1;

    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v5, &async function pointer to partial apply for closure #1 in closure #1 in closure #1 in ConversationBridge.executionClient.getter, v12);
  }

  return result;
}

uint64_t closure #1 in closure #1 in closure #1 in ConversationBridge.executionClient.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v6 = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in closure #1 in ConversationBridge.executionClient.getter, v6, 0);
}

uint64_t closure #1 in closure #1 in closure #1 in ConversationBridge.executionClient.getter()
{
  (*(**(v0 + 40) + 1248))(*(v0 + 48));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t ConversationBridge.executionClient.setter(__int128 *a1)
{
  outlined init with take of ReferenceResolutionClientProtocol(a1, v4);
  v2 = direct field offset for ConversationBridge.$__lazy_storage_$_executionClient;
  swift_beginAccess();
  outlined assign with take of (Input, AnyFlow, SiriEnvironment)(v4, v1 + v2, &_s14SiriKitRuntime012ConversationC14ClientProtocol_pSgMd, &_s14SiriKitRuntime012ConversationC14ClientProtocol_pSgMR);
  return swift_endAccess();
}

void (*ConversationBridge.executionClient.modify(uint64_t **a1))(uint64_t *a1, char a2)
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
  ConversationBridge.executionClient.getter(v3);
  return ConversationBridge.executionClient.modify;
}

void ConversationBridge.executionClient.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 104);
  if (a2)
  {
    outlined init with copy of ReferenceResolutionClientProtocol(*a1, (v2 + 5));
    v4 = direct field offset for ConversationBridge.$__lazy_storage_$_executionClient;
    swift_beginAccess();
    outlined assign with take of (Input, AnyFlow, SiriEnvironment)((v2 + 5), v3 + v4, &_s14SiriKitRuntime012ConversationC14ClientProtocol_pSgMd, &_s14SiriKitRuntime012ConversationC14ClientProtocol_pSgMR);
    swift_endAccess();
    __swift_destroy_boxed_opaque_existential_1Tm(v2);
  }

  else
  {
    outlined init with take of ReferenceResolutionClientProtocol(*a1, (v2 + 5));
    v5 = direct field offset for ConversationBridge.$__lazy_storage_$_executionClient;
    swift_beginAccess();
    outlined assign with take of (Input, AnyFlow, SiriEnvironment)((v2 + 5), v3 + v5, &_s14SiriKitRuntime012ConversationC14ClientProtocol_pSgMd, &_s14SiriKitRuntime012ConversationC14ClientProtocol_pSgMR);
    swift_endAccess();
  }

  free(v2);
}

uint64_t NonRequestExecutionBridgeDelegate.__allocating_init(executionOutputSubmitter:userId:serviceHelper:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  outlined init with take of UserID?(a2, v6 + OBJC_IVAR____TtC14SiriKitRuntime33NonRequestExecutionBridgeDelegate_userId);
  *(v6 + OBJC_IVAR____TtC14SiriKitRuntime33NonRequestExecutionBridgeDelegate_serviceHelper) = a3;
  return v6;
}

uint64_t (*ConversationBridge.nonRequestBridgePublisher.modify(uint64_t *a1))()
{
  a1[1] = v1;
  *a1 = ConversationBridge.nonRequestBridgePublisher.getter();
  return ConversationBridge.nonRequestBridgePublisher.modify;
}

uint64_t ConversationBridge.networkAvailabilityProvider.setter(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  *(v2 + v4) = a1;
}

uint64_t key path setter for ConversationBridge.currentSessionId : ConversationBridge(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v8 - v5;
  outlined init with copy of ReferenceResolutionClientProtocol?(a1, &v8 - v5, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  return (*(**a2 + 920))(v6);
}

uint64_t key path setter for ConversationBridge.sessionConfiguration : ConversationBridge(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v8 - v5;
  outlined init with copy of ReferenceResolutionClientProtocol?(a1, &v8 - v5, &_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR);
  return (*(**a2 + 944))(v6);
}

uint64_t key path setter for ConversationBridge.sessionUserId : ConversationBridge(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v8 - v5;
  outlined init with copy of ReferenceResolutionClientProtocol?(a1, &v8 - v5, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  return (*(**a2 + 992))(v6);
}

uint64_t ConversationBridge.isMUXEnabled.setter(char a1)
{
  v3 = direct field offset for ConversationBridge.isMUXEnabled;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void ConversationBridge.muxContextMessage.setter(uint64_t a1)
{
  v3 = direct field offset for ConversationBridge.muxContextMessage;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t key path setter for ConversationBridge.userSessionState : ConversationBridge(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UserSessionState();
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, a1, v5);
  return (*(**a2 + 1088))(v7);
}

void *ConversationBridge.init(name:messagePublisher:serviceHelper:conversationSessionsManaging:rrClient:featureChecker:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6, void *a7)
{
  v15 = a7[3];
  v14 = a7[4];
  v16 = __swift_mutable_project_boxed_opaque_existential_1(a7, v15);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v19, v17);
  v21 = specialized ConversationBridge.init(name:messagePublisher:serviceHelper:conversationSessionsManaging:rrClient:featureChecker:)(a1, a2, a3, a4, a5, a6, v19, v23[1], v15, v14);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(a7);
  return v21;
}

void *ConversationBridge.__allocating_init(name:messagePublisher:serviceHelper:conversationSessionsManaging:conversationClient:rrClient:correctionsPlatformClient:networkAvailabilityProvider:coreTelephonyServiceProvider:recentDialogTracker:featureChecker:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  v110 = a8;
  v111 = a7;
  v112 = a5;
  v117 = a4;
  v104 = a1;
  v105 = a2;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8Dispatch0A12TimeIntervalOSgMd, &_s8Dispatch0A12TimeIntervalOSgMR);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = (&v93 - v15);
  v102 = type metadata accessor for DispatchTimeInterval();
  v17 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102);
  v19 = &v93 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for Logger();
  v115 = *(v20 - 8);
  v116 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v103 = &v93 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v114 = &v93 - v23;
  v24 = swift_allocObject();
  v25 = (v24 + direct field offset for ConversationBridge.contextDonator);
  if (one-time initialization token for sharedInstance != -1)
  {
    swift_once();
  }

  v99 = v19;
  v100 = v16;
  v101 = v17;
  v113 = a12;
  v109 = a11;
  v108 = a10;
  v107 = a9;
  v26 = static DeviceContextHelper.sharedInstance;
  v25[3] = type metadata accessor for DeviceContextHelper();
  v25[4] = &protocol witness table for DeviceContextHelper;
  *v25 = v26;
  *(v24 + direct field offset for ConversationBridge.runSiriKitExecutorProcessor) = 0;
  *(v24 + direct field offset for ConversationBridge.isFirstRequestInSession) = 1;
  v27 = v24 + direct field offset for ConversationBridge.$__lazy_storage_$_executionClient;
  *v27 = 0u;
  *(v27 + 1) = 0u;
  *(v27 + 4) = 0;
  *(v24 + direct field offset for ConversationBridge.$__lazy_storage_$_nonRequestBridgePublisher) = 0;
  v28 = v24 + direct field offset for ConversationBridge.rraasClient;
  *v28 = 0u;
  *(v28 + 1) = 0u;
  v94 = v28;
  *(v28 + 4) = 0;
  v29 = v24 + direct field offset for ConversationBridge.correctionsPlatformClient;
  *v29 = 0u;
  *(v29 + 1) = 0u;
  v95 = v29;
  *(v29 + 4) = 0;
  v96 = direct field offset for ConversationBridge.networkAvailabilityProvider;
  *(v24 + direct field offset for ConversationBridge.networkAvailabilityProvider) = 0;
  v98 = direct field offset for ConversationBridge.coreTelephonyServiceProvider;
  *(v24 + direct field offset for ConversationBridge.coreTelephonyServiceProvider) = 0;
  v30 = direct field offset for ConversationBridge.currentSessionId;
  v31 = type metadata accessor for UUID();
  (*(*(v31 - 8) + 56))(v24 + v30, 1, 1, v31);
  v32 = direct field offset for ConversationBridge.sessionConfiguration;
  v33 = type metadata accessor for SessionConfiguration();
  (*(*(v33 - 8) + 56))(v24 + v32, 1, 1, v33);
  v34 = v24 + direct field offset for ConversationBridge.sessionState;
  *v34 = 0u;
  *(v34 + 1) = 0u;
  *(v34 + 4) = 0;
  v35 = direct field offset for ConversationBridge.sessionUserId;
  v36 = type metadata accessor for UserID();
  (*(*(v36 - 8) + 56))(v24 + v35, 1, 1, v36);
  v37 = direct field offset for ConversationBridge.isMUXEnabled;

  *(v24 + v37) = AFDeviceSupportsSiriMUX();
  *(v24 + direct field offset for ConversationBridge.isSystemAssistantExperienceEnabled) = 2;
  *(v24 + direct field offset for ConversationBridge.muxContextMessage) = 0;
  v38 = direct field offset for ConversationBridge.userSessionState;
  v39 = *MEMORY[0x1E69D06E8];
  v40 = type metadata accessor for UserSessionState();
  (*(*(v40 - 8) + 104))(v24 + v38, v39, v40);
  if (one-time initialization token for sharedInstance != -1)
  {
    swift_once();
  }

  v41 = direct field offset for ConversationBridge.instrumentationUtil;
  *(v24 + direct field offset for ConversationBridge.instrumentationUtil) = static ConversationBridgeInstrumentationUtil.sharedInstance;
  v106 = a6;
  outlined init with copy of ReferenceResolutionClientProtocol(a6, v24 + direct field offset for ConversationBridge.overrideExecutionClient);
  swift_beginAccess();
  v42 = *(v24 + v37);
  outlined init with copy of ReferenceResolutionClientProtocol(a3, v123);
  v43 = type metadata accessor for FeatureChecker();
  v44 = swift_allocObject();

  v45 = v117;
  swift_unknownObjectRetain();
  *(v44 + 16) = AFDeviceSupportsSAEByDeviceCapabilityAndFeatureFlags();
  v121 = &type metadata for IntelligenceFlowFeatureFlag;
  v122 = lazy protocol witness table accessor for type IntelligenceFlowFeatureFlag and conformance IntelligenceFlowFeatureFlag();
  v46 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_1Tm(&v120);
  *(v44 + 17) = v46 & 1;
  type metadata accessor for ConversationOutputSubmitter();
  v47 = swift_allocObject();
  v121 = v43;
  v122 = &protocol witness table for FeatureChecker;
  *&v120 = v44;
  type metadata accessor for ConcurrentTaskPool();
  v48 = swift_allocObject();
  v49 = MEMORY[0x1E69E7CC0];
  *(v48 + 16) = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v50 = swift_allocObject();
  *(v50 + 16) = 0;
  *(v48 + 24) = v50;
  *(v47 + 16) = v48;
  *(v47 + 88) = 0;
  *(v47 + 80) = 0;
  *(v47 + 96) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_ySo13SABaseCommandCSg_s5Error_pSgt14SiriKitRuntime15MessageBusActorCYccTt0g5Tf4g_n(v49);
  *(v47 + 104) = 30000000000;
  *(v47 + 24) = v45;
  *(v47 + 72) = v42;
  swift_beginAccess();
  v51 = *(v47 + 80);
  *(v47 + 80) = 0;

  outlined init with take of ReferenceResolutionClientProtocol(v123, v47 + 32);
  outlined init with take of ReferenceResolutionClientProtocol(&v120, v47 + 112);
  v52 = direct field offset for ConversationBridge.executionOutputSubmitter;
  *(v24 + direct field offset for ConversationBridge.executionOutputSubmitter) = v47;
  type metadata accessor for PreExecutionDecisionMaker();
  *(v24 + direct field offset for ConversationBridge.decisionMaker) = swift_allocObject();
  v53 = [objc_opt_self() sharedPreferences];
  v54 = type metadata accessor for PreExecutionActionHandler();
  ObjectType = swift_getObjectType();
  v56 = *(v24 + v41);
  v57 = *(v24 + v52);
  type metadata accessor for PreExecutionDialogHandler();
  v58 = a3;
  v59 = swift_allocObject();
  *(v59 + 16) = v57;
  *(v59 + 24) = v53;
  swift_retain_n();
  v60 = v53;
  swift_unknownObjectRetain();
  v61 = v60;

  v62 = v56;
  v97 = v61;
  v63 = v58;
  *(v24 + direct field offset for ConversationBridge.preExecutionActionHandler) = specialized PreExecutionActionHandler.__allocating_init(serviceHelper:instrumentationUtil:executionOutputSubmitter:preferences:dialogHandler:)(v45, v62, v57, v61, v59, v54, ObjectType);
  v64 = v94;
  swift_beginAccess();
  outlined assign with copy of ReferenceResolutionClientProtocol?(v111, v64, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMd, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMR);
  swift_endAccess();
  v65 = v95;
  swift_beginAccess();
  outlined assign with copy of ReferenceResolutionClientProtocol?(v110, v65, &_s14SiriKitRuntime19CorrectionsHandling_pSgMd, &_s14SiriKitRuntime19CorrectionsHandling_pSgMR);
  swift_endAccess();
  v66 = v96;
  swift_beginAccess();
  *(v24 + v66) = v107;

  v67 = v98;
  swift_beginAccess();
  *(v67 + v24) = v108;

  *(v24 + direct field offset for ConversationBridge.recentDialogTracker) = v109;
  outlined init with copy of ReferenceResolutionClientProtocol(v113, v24 + direct field offset for ConversationBridge.featureChecker);
  v98 = v63;
  outlined init with copy of ReferenceResolutionClientProtocol(v63, v123);
  outlined init with copy of ReferenceResolutionClientProtocol(v112, &v120);
  v68 = one-time initialization token for conversationBridge;
  swift_unknownObjectRetain();

  if (v68 != -1)
  {
    swift_once();
  }

  v69 = v116;
  v70 = __swift_project_value_buffer(v116, static Logger.conversationBridge);
  v71 = *(v115 + 16);
  v71(v114, v70, v69);
  *(v24 + direct field offset for ConversationRequestAwareBridgeBase.currentRequestProcessor) = 0;
  *(v24 + direct field offset for ConversationRequestAwareBridgeBase.candidateRequestProcessors) = MEMORY[0x1E69E7CC8];
  v72 = direct field offset for ConversationRequestAwareBridgeBase.requestMessagesHandledByBridgeBase;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCySay16SiriMessageTypes07RequestD4BaseCmGSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCySay16SiriMessageTypes07RequestD4BaseCmGSo16os_unfair_lock_sVGMR);
  v73 = swift_allocObject();
  *(v73 + 24) = 0;
  *(v73 + 16) = MEMORY[0x1E69E7CC0];
  *(v24 + v72) = v73;
  v74 = direct field offset for ConversationRequestAwareBridgeBase.hasRegisteredToAnyStartRequest;
  *(v24 + direct field offset for ConversationRequestAwareBridgeBase.hasAutoRegisteredStartRequestMessageBase) = 1;
  *(v24 + v74) = 1;
  v75 = v100;
  static ConversationRequestAwareBridgeBase.readPreviousProcessorTimeoutFromDefault()(v100);
  v76 = v101;
  v77 = v102;
  v78 = *(v101 + 48);
  if (v78(v75, 1, v102) == 1)
  {
    v79 = v99;
    *v99 = 500;
    (*(v76 + 104))(v79, *MEMORY[0x1E69E7F38], v77);
    v80 = v78(v75, 1, v77);
    v81 = v106;
    if (v80 != 1)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(v75, &_s8Dispatch0A12TimeIntervalOSgMd, &_s8Dispatch0A12TimeIntervalOSgMR);
    }
  }

  else
  {
    v79 = v99;
    (*(v76 + 32))(v99, v75, v77);
    v81 = v106;
  }

  (*(v76 + 32))(v24 + direct field offset for ConversationRequestAwareBridgeBase.previousProcessorTimeout, v79, v77);
  outlined init with copy of ReferenceResolutionClientProtocol(v123, v119);
  outlined init with copy of ReferenceResolutionClientProtocol(&v120, v118);
  v82 = v103;
  v83 = v116;
  v71(v103, v114, v116);
  v84 = v117;
  swift_unknownObjectRetain();
  v85 = MEMORY[0x1E69E7CC0];
  v24[15] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_14SiriKitRuntime40ConversationMessageDispatchingBridgeBaseC0g7HandlerJ0CyAC0fI0C_GTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v24[16] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_14SiriKitRuntime40ConversationMessageDispatchingBridgeBaseC0g7HandlerJ0CyAC0fI0C_GTt0g5Tf4g_n(v85);
  v24[17] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SDySS14SiriKitRuntime40ConversationMessageDispatchingBridgeBaseC014CommandHandlerJ0CyAC0fI0C_GGTt0g5Tf4g_n(v85);
  v86 = v105;
  v24[2] = v104;
  v24[3] = v86;
  outlined init with take of ReferenceResolutionClientProtocol(v119, (v24 + 4));
  v24[9] = v84;
  outlined init with take of ReferenceResolutionClientProtocol(v118, (v24 + 10));
  (*(v115 + 32))(v24 + direct field offset for ConversationMessageDispatchingBridgeBase.logger, v82, v83);
  LODWORD(v85) = *(v24 + direct field offset for ConversationRequestAwareBridgeBase.hasAutoRegisteredStartRequestMessageBase);

  if (v85 == 1)
  {
    specialized ConversationRequestAwareBridgeBase.registerMessageHandler<A>(_:)(specialized closure #1 in ConversationRequestAwareBridgeBase.registerMessages(), 0);
  }

  specialized ConversationRequestAwareBridgeBase.registerMessageHandler<A>(_:)(specialized closure #2 in ConversationRequestAwareBridgeBase.registerMessages(), 0);
  swift_unknownObjectRelease();

  (*(v115 + 8))(v114, v116);
  __swift_destroy_boxed_opaque_existential_1Tm(&v120);
  __swift_destroy_boxed_opaque_existential_1Tm(v123);

  ConversationBridge.executionClient.getter(v123);
  outlined init with take of ReferenceResolutionClientProtocol(v123, &v120);
  v87 = direct field offset for ConversationBridge.$__lazy_storage_$_executionClient;
  swift_beginAccess();
  outlined assign with take of (Input, AnyFlow, SiriEnvironment)(&v120, v24 + v87, &_s14SiriKitRuntime012ConversationC14ClientProtocol_pSgMd, &_s14SiriKitRuntime012ConversationC14ClientProtocol_pSgMR);
  swift_endAccess();
  v88 = v113;
  v89 = v113[3];
  v90 = v113[4];
  __swift_project_boxed_opaque_existential_1(v113, v89);
  v91 = (*(v90 + 8))(v89, v90);
  ConversationBridge.registerAllHandlers(isSystemAssistantExperienceSupported:)(v91 & 1);
  swift_unknownObjectRelease();

  outlined destroy of ReferenceResolutionClientProtocol?(v110, &_s14SiriKitRuntime19CorrectionsHandling_pSgMd, &_s14SiriKitRuntime19CorrectionsHandling_pSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v111, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMd, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMR);
  __swift_destroy_boxed_opaque_existential_1Tm(v81);
  __swift_destroy_boxed_opaque_existential_1Tm(v112);
  __swift_destroy_boxed_opaque_existential_1Tm(v98);
  __swift_destroy_boxed_opaque_existential_1Tm(v88);
  return v24;
}

void *ConversationBridge.init(name:messagePublisher:serviceHelper:conversationSessionsManaging:conversationClient:rrClient:correctionsPlatformClient:networkAvailabilityProvider:coreTelephonyServiceProvider:recentDialogTracker:featureChecker:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  v13 = v12;
  v116 = a8;
  v117 = a7;
  v118 = a5;
  v123 = a4;
  v110 = a1;
  v111 = a2;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8Dispatch0A12TimeIntervalOSgMd, &_s8Dispatch0A12TimeIntervalOSgMR);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = (&v99 - v17);
  v19 = type metadata accessor for DispatchTimeInterval();
  v107 = *(v19 - 8);
  v108 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v105 = (&v99 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = type metadata accessor for Logger();
  v121 = *(v21 - 8);
  v122 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v109 = &v99 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v120 = &v99 - v24;
  v25 = (v12 + direct field offset for ConversationBridge.contextDonator);
  if (one-time initialization token for sharedInstance != -1)
  {
    swift_once();
  }

  v106 = v18;
  v119 = a12;
  v114 = a11;
  v113 = a10;
  v115 = a9;
  v26 = static DeviceContextHelper.sharedInstance;
  v25[3] = type metadata accessor for DeviceContextHelper();
  v25[4] = &protocol witness table for DeviceContextHelper;
  *v25 = v26;
  *(v13 + direct field offset for ConversationBridge.runSiriKitExecutorProcessor) = 0;
  *(v13 + direct field offset for ConversationBridge.isFirstRequestInSession) = 1;
  v27 = v13 + direct field offset for ConversationBridge.$__lazy_storage_$_executionClient;
  *v27 = 0u;
  *(v27 + 1) = 0u;
  *(v27 + 4) = 0;
  *(v13 + direct field offset for ConversationBridge.$__lazy_storage_$_nonRequestBridgePublisher) = 0;
  v28 = v13 + direct field offset for ConversationBridge.rraasClient;
  *v28 = 0u;
  *(v28 + 1) = 0u;
  v100 = v28;
  *(v28 + 4) = 0;
  v29 = v13 + direct field offset for ConversationBridge.correctionsPlatformClient;
  *v29 = 0u;
  *(v29 + 1) = 0u;
  v101 = v29;
  *(v29 + 4) = 0;
  v102 = direct field offset for ConversationBridge.networkAvailabilityProvider;
  *(v13 + direct field offset for ConversationBridge.networkAvailabilityProvider) = 0;
  v103 = direct field offset for ConversationBridge.coreTelephonyServiceProvider;
  *(v13 + direct field offset for ConversationBridge.coreTelephonyServiceProvider) = 0;
  v30 = direct field offset for ConversationBridge.currentSessionId;
  v31 = type metadata accessor for UUID();
  (*(*(v31 - 8) + 56))(v13 + v30, 1, 1, v31);
  v32 = direct field offset for ConversationBridge.sessionConfiguration;
  v33 = type metadata accessor for SessionConfiguration();
  (*(*(v33 - 8) + 56))(v13 + v32, 1, 1, v33);
  v34 = v13 + direct field offset for ConversationBridge.sessionState;
  *v34 = 0u;
  *(v34 + 1) = 0u;
  *(v34 + 4) = 0;
  v35 = direct field offset for ConversationBridge.sessionUserId;
  v36 = type metadata accessor for UserID();
  (*(*(v36 - 8) + 56))(v13 + v35, 1, 1, v36);
  v37 = direct field offset for ConversationBridge.isMUXEnabled;

  *(v13 + v37) = AFDeviceSupportsSiriMUX();
  *(v13 + direct field offset for ConversationBridge.isSystemAssistantExperienceEnabled) = 2;
  *(v13 + direct field offset for ConversationBridge.muxContextMessage) = 0;
  v38 = direct field offset for ConversationBridge.userSessionState;
  v39 = *MEMORY[0x1E69D06E8];
  v40 = type metadata accessor for UserSessionState();
  (*(*(v40 - 8) + 104))(v13 + v38, v39, v40);
  if (one-time initialization token for sharedInstance != -1)
  {
    swift_once();
  }

  v41 = direct field offset for ConversationBridge.instrumentationUtil;
  *(v13 + direct field offset for ConversationBridge.instrumentationUtil) = static ConversationBridgeInstrumentationUtil.sharedInstance;
  v112 = a6;
  outlined init with copy of ReferenceResolutionClientProtocol(a6, v13 + direct field offset for ConversationBridge.overrideExecutionClient);
  swift_beginAccess();
  v42 = *(v13 + v37);
  outlined init with copy of ReferenceResolutionClientProtocol(a3, v129);
  v43 = type metadata accessor for FeatureChecker();
  v44 = swift_allocObject();

  v45 = v123;
  swift_unknownObjectRetain();
  *(v44 + 16) = AFDeviceSupportsSAEByDeviceCapabilityAndFeatureFlags();
  v127 = &type metadata for IntelligenceFlowFeatureFlag;
  v128 = lazy protocol witness table accessor for type IntelligenceFlowFeatureFlag and conformance IntelligenceFlowFeatureFlag();
  v46 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_1Tm(&v126);
  *(v44 + 17) = v46 & 1;
  type metadata accessor for ConversationOutputSubmitter();
  v47 = swift_allocObject();
  v127 = v43;
  v128 = &protocol witness table for FeatureChecker;
  *&v126 = v44;
  type metadata accessor for ConcurrentTaskPool();
  v48 = swift_allocObject();
  v49 = MEMORY[0x1E69E7CC0];
  *(v48 + 16) = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v50 = swift_allocObject();
  *(v50 + 16) = 0;
  *(v48 + 24) = v50;
  *(v47 + 16) = v48;
  *(v47 + 88) = 0;
  *(v47 + 80) = 0;
  *(v47 + 96) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_ySo13SABaseCommandCSg_s5Error_pSgt14SiriKitRuntime15MessageBusActorCYccTt0g5Tf4g_n(v49);
  *(v47 + 104) = 30000000000;
  *(v47 + 24) = v45;
  *(v47 + 72) = v42;
  swift_beginAccess();
  v51 = *(v47 + 80);
  *(v47 + 80) = 0;

  outlined init with take of ReferenceResolutionClientProtocol(v129, v47 + 32);
  outlined init with take of ReferenceResolutionClientProtocol(&v126, v47 + 112);
  v52 = direct field offset for ConversationBridge.executionOutputSubmitter;
  *(v13 + direct field offset for ConversationBridge.executionOutputSubmitter) = v47;
  type metadata accessor for PreExecutionDecisionMaker();
  *(v13 + direct field offset for ConversationBridge.decisionMaker) = swift_allocObject();
  v53 = [objc_opt_self() sharedPreferences];
  v54 = type metadata accessor for PreExecutionActionHandler();
  ObjectType = swift_getObjectType();
  v56 = *(v13 + v41);
  v57 = *(v13 + v52);
  type metadata accessor for PreExecutionDialogHandler();
  v58 = a3;
  v59 = swift_allocObject();
  *(v59 + 16) = v57;
  *(v59 + 24) = v53;
  swift_retain_n();
  v60 = v53;
  swift_unknownObjectRetain();
  v61 = v60;

  v62 = v57;
  v104 = v61;
  v63 = v58;
  *(v13 + direct field offset for ConversationBridge.preExecutionActionHandler) = specialized PreExecutionActionHandler.__allocating_init(serviceHelper:instrumentationUtil:executionOutputSubmitter:preferences:dialogHandler:)(v45, v56, v62, v61, v59, v54, ObjectType);
  v64 = v100;
  swift_beginAccess();
  outlined assign with copy of ReferenceResolutionClientProtocol?(v117, v64, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMd, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMR);
  swift_endAccess();
  v65 = v101;
  swift_beginAccess();
  outlined assign with copy of ReferenceResolutionClientProtocol?(v116, v65, &_s14SiriKitRuntime19CorrectionsHandling_pSgMd, &_s14SiriKitRuntime19CorrectionsHandling_pSgMR);
  swift_endAccess();
  v66 = v102;
  swift_beginAccess();
  *(v13 + v66) = v115;

  v67 = v103;
  swift_beginAccess();
  *(v13 + v67) = v113;

  *(v13 + direct field offset for ConversationBridge.recentDialogTracker) = v114;
  outlined init with copy of ReferenceResolutionClientProtocol(v119, v13 + direct field offset for ConversationBridge.featureChecker);
  outlined init with copy of ReferenceResolutionClientProtocol(v63, v129);
  outlined init with copy of ReferenceResolutionClientProtocol(v118, &v126);
  v68 = one-time initialization token for conversationBridge;
  swift_unknownObjectRetain();

  if (v68 != -1)
  {
    swift_once();
  }

  v69 = v122;
  v70 = __swift_project_value_buffer(v122, static Logger.conversationBridge);
  v71 = *(v121 + 16);
  v71(v120, v70, v69);
  *(v13 + direct field offset for ConversationRequestAwareBridgeBase.currentRequestProcessor) = 0;
  *(v13 + direct field offset for ConversationRequestAwareBridgeBase.candidateRequestProcessors) = MEMORY[0x1E69E7CC8];
  v72 = direct field offset for ConversationRequestAwareBridgeBase.requestMessagesHandledByBridgeBase;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCySay16SiriMessageTypes07RequestD4BaseCmGSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCySay16SiriMessageTypes07RequestD4BaseCmGSo16os_unfair_lock_sVGMR);
  v73 = swift_allocObject();
  *(v73 + 24) = 0;
  *(v73 + 16) = MEMORY[0x1E69E7CC0];
  *(v13 + v72) = v73;
  v74 = direct field offset for ConversationRequestAwareBridgeBase.hasRegisteredToAnyStartRequest;
  *(v13 + direct field offset for ConversationRequestAwareBridgeBase.hasRegisteredToAnyStartRequest) = 0;
  *(v13 + direct field offset for ConversationRequestAwareBridgeBase.hasAutoRegisteredStartRequestMessageBase) = 1;
  *(v13 + v74) = 1;
  v75 = v106;
  static ConversationRequestAwareBridgeBase.readPreviousProcessorTimeoutFromDefault()(v106);
  v76 = v107;
  v77 = v108;
  v78 = *(v107 + 48);
  if (v78(v75, 1, v108) == 1)
  {
    v103 = v71;
    v79 = v63;
    v80 = v105;
    *v105 = 500;
    (*(v76 + 104))(v80, *MEMORY[0x1E69E7F38], v77);
    v81 = v78(v75, 1, v77);
    v82 = v80;
    v63 = v79;
    v71 = v103;
    if (v81 != 1)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(v75, &_s8Dispatch0A12TimeIntervalOSgMd, &_s8Dispatch0A12TimeIntervalOSgMR);
    }
  }

  else
  {
    v82 = v105;
    (*(v76 + 32))(v105, v75, v77);
  }

  (*(v76 + 32))(v13 + direct field offset for ConversationRequestAwareBridgeBase.previousProcessorTimeout, v82, v77);
  outlined init with copy of ReferenceResolutionClientProtocol(v129, v125);
  outlined init with copy of ReferenceResolutionClientProtocol(&v126, v124);
  v83 = v109;
  v84 = v122;
  v71(v109, v120, v122);
  v85 = v123;
  swift_unknownObjectRetain();
  v86 = MEMORY[0x1E69E7CC0];
  v13[15] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_14SiriKitRuntime40ConversationMessageDispatchingBridgeBaseC0g7HandlerJ0CyAC0fI0C_GTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v13[16] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_14SiriKitRuntime40ConversationMessageDispatchingBridgeBaseC0g7HandlerJ0CyAC0fI0C_GTt0g5Tf4g_n(v86);
  v13[17] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SDySS14SiriKitRuntime40ConversationMessageDispatchingBridgeBaseC014CommandHandlerJ0CyAC0fI0C_GGTt0g5Tf4g_n(v86);
  v87 = v111;
  v13[2] = v110;
  v13[3] = v87;
  outlined init with take of ReferenceResolutionClientProtocol(v125, (v13 + 4));
  v13[9] = v85;
  outlined init with take of ReferenceResolutionClientProtocol(v124, (v13 + 10));
  (*(v121 + 32))(v13 + direct field offset for ConversationMessageDispatchingBridgeBase.logger, v83, v84);
  if (*(v13 + direct field offset for ConversationRequestAwareBridgeBase.hasAutoRegisteredStartRequestMessageBase) == 1)
  {
    v88 = *(*v13 + 464);
    started = type metadata accessor for StartRequestMessageBase();

    v88(specialized closure #1 in ConversationRequestAwareBridgeBase.registerMessages(), 0, started);
  }

  else
  {
  }

  v90 = *(*v13 + 464);
  v91 = type metadata accessor for EndRequestMessageBase();
  v90(specialized closure #2 in ConversationRequestAwareBridgeBase.registerMessages(), 0, v91);
  swift_unknownObjectRelease();

  (*(v121 + 8))(v120, v122);
  __swift_destroy_boxed_opaque_existential_1Tm(&v126);
  __swift_destroy_boxed_opaque_existential_1Tm(v129);
  v92 = *(*v13 + 768);

  v92(v129, v93);
  (*(*v13 + 776))(v129);
  v94 = v119;
  v95 = v119[3];
  v96 = v119[4];
  __swift_project_boxed_opaque_existential_1(v119, v95);
  v97 = (*(v96 + 8))(v95, v96);
  ConversationBridge.registerAllHandlers(isSystemAssistantExperienceSupported:)(v97 & 1);
  swift_unknownObjectRelease();

  outlined destroy of ReferenceResolutionClientProtocol?(v116, &_s14SiriKitRuntime19CorrectionsHandling_pSgMd, &_s14SiriKitRuntime19CorrectionsHandling_pSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v117, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMd, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMR);
  __swift_destroy_boxed_opaque_existential_1Tm(v112);
  __swift_destroy_boxed_opaque_existential_1Tm(v118);
  __swift_destroy_boxed_opaque_existential_1Tm(v63);
  __swift_destroy_boxed_opaque_existential_1Tm(v94);
  return v13;
}

uint64_t ConversationBridge.registerAllHandlers(isSystemAssistantExperienceSupported:)(char a1)
{
  v2 = v1;
  v4 = *(*v1 + 288);
  v5 = type metadata accessor for SessionStartedMessage();
  v4(closure #1 in ConversationBridge.registerAllHandlers(isSystemAssistantExperienceSupported:), 0, v5);
  v6 = type metadata accessor for SessionEndedMessage();
  v4(closure #2 in ConversationBridge.registerAllHandlers(isSystemAssistantExperienceSupported:), 0, v6);
  v7 = type metadata accessor for MUXContextMessage();
  v4(closure #3 in ConversationBridge.registerAllHandlers(isSystemAssistantExperienceSupported:), 0, v7);
  v8 = type metadata accessor for ExecutionSystemSwitchedMessage();
  v4(closure #4 in ConversationBridge.registerAllHandlers(isSystemAssistantExperienceSupported:), 0, v8);
  v9 = *(*v1 + 464);
  v10 = type metadata accessor for FlowOutputResponseMessage();
  v9(closure #5 in ConversationBridge.registerAllHandlers(isSystemAssistantExperienceSupported:), 0, v10);
  v11 = type metadata accessor for RequestContextMessage();
  v9(closure #6 in ConversationBridge.registerAllHandlers(isSystemAssistantExperienceSupported:), 0, v11);
  v12 = type metadata accessor for AsrResultCandidateMessage();
  v9(closure #7 in ConversationBridge.registerAllHandlers(isSystemAssistantExperienceSupported:), 0, v12);
  v13 = type metadata accessor for MUXAsrResultCandidateMessage();
  v9(closure #8 in ConversationBridge.registerAllHandlers(isSystemAssistantExperienceSupported:), 0, v13);
  v14 = type metadata accessor for NLResultCandidateMessage();
  v9(closure #9 in ConversationBridge.registerAllHandlers(isSystemAssistantExperienceSupported:), 0, v14);
  v15 = type metadata accessor for PommesResultCandidateMessage();
  v9(closure #10 in ConversationBridge.registerAllHandlers(isSystemAssistantExperienceSupported:), 0, v15);
  v16 = type metadata accessor for ResultSelectedMessage();
  v9(closure #11 in ConversationBridge.registerAllHandlers(isSystemAssistantExperienceSupported:), 0, v16);
  v17 = type metadata accessor for CancelRequestMessage();
  v9(closure #12 in ConversationBridge.registerAllHandlers(isSystemAssistantExperienceSupported:), 0, v17);
  v18 = type metadata accessor for ExecuteNLOnServerMessage();
  v9(closure #13 in ConversationBridge.registerAllHandlers(isSystemAssistantExperienceSupported:), 0, v18);
  started = type metadata accessor for StartTextRequestMessage();
  v9(closure #14 in ConversationBridge.registerAllHandlers(isSystemAssistantExperienceSupported:), 0, started);
  v20 = type metadata accessor for StartDirectActionRequestMessage();
  v9(closure #15 in ConversationBridge.registerAllHandlers(isSystemAssistantExperienceSupported:), 0, v20);
  v21 = type metadata accessor for StartLocalRequestMessage();
  v9(closure #16 in ConversationBridge.registerAllHandlers(isSystemAssistantExperienceSupported:), 0, v21);
  v22 = type metadata accessor for StartUnderstandingOnServerRequestMessage();
  v9(closure #17 in ConversationBridge.registerAllHandlers(isSystemAssistantExperienceSupported:), 0, v22);
  v23 = type metadata accessor for StartUnderstandingOnServerTextRequestMessage();
  v9(closure #18 in ConversationBridge.registerAllHandlers(isSystemAssistantExperienceSupported:), 0, v23);
  v24 = type metadata accessor for StartCandidateRequestMessage();
  v9(closure #19 in ConversationBridge.registerAllHandlers(isSystemAssistantExperienceSupported:), 0, v24);
  v25 = type metadata accessor for TextBasedResultCandidateMessage();
  v9(closure #20 in ConversationBridge.registerAllHandlers(isSystemAssistantExperienceSupported:), 0, v25);
  v26 = type metadata accessor for GestureBasedResultCandidateMessage();
  v9(closure #21 in ConversationBridge.registerAllHandlers(isSystemAssistantExperienceSupported:), 0, v26);
  v27 = type metadata accessor for DirectActionResultCandidateMessage();
  v9(closure #22 in ConversationBridge.registerAllHandlers(isSystemAssistantExperienceSupported:), 0, v27);
  v28 = type metadata accessor for NLRepetitionMessage();
  v9(closure #23 in ConversationBridge.registerAllHandlers(isSystemAssistantExperienceSupported:), 0, v28);
  v29 = type metadata accessor for StartCorrectedSpeechRequestMessage();
  v9(closure #24 in ConversationBridge.registerAllHandlers(isSystemAssistantExperienceSupported:), 0, v29);
  v30 = type metadata accessor for StartSpeechRequestMessage();
  v9(closure #25 in ConversationBridge.registerAllHandlers(isSystemAssistantExperienceSupported:), 0, v30);
  v31 = type metadata accessor for StartChildTextRequestMessage();
  v9(closure #26 in ConversationBridge.registerAllHandlers(isSystemAssistantExperienceSupported:), 0, v31);
  v32 = type metadata accessor for StartChildSpeechRequestMessage();
  v9(closure #27 in ConversationBridge.registerAllHandlers(isSystemAssistantExperienceSupported:), 0, v32);
  v33 = type metadata accessor for StartIFRequestMessage();
  v9(closure #28 in ConversationBridge.registerAllHandlers(isSystemAssistantExperienceSupported:), 0, v33);
  v34 = type metadata accessor for TRPCandidateRequestMessage();
  v9(closure #29 in ConversationBridge.registerAllHandlers(isSystemAssistantExperienceSupported:), 0, v34);
  v35 = type metadata accessor for TextBasedTRPCandidateMessage();
  v9(closure #30 in ConversationBridge.registerAllHandlers(isSystemAssistantExperienceSupported:), 0, v35);
  v36 = type metadata accessor for TTResponseMessage();
  v9(closure #31 in ConversationBridge.registerAllHandlers(isSystemAssistantExperienceSupported:), 0, v36);
  v37 = type metadata accessor for RewrittenUtteranceCandidateMessage();
  v9(closure #32 in ConversationBridge.registerAllHandlers(isSystemAssistantExperienceSupported:), 0, v37);
  v38 = type metadata accessor for NLRoutingDecisionMessage();
  v9(closure #33 in ConversationBridge.registerAllHandlers(isSystemAssistantExperienceSupported:), 0, v38);
  v39 = type metadata accessor for SpeechStopDetectedMessage();
  v9(closure #34 in ConversationBridge.registerAllHandlers(isSystemAssistantExperienceSupported:), 0, v39);
  v40 = type metadata accessor for MultiUserStoppedListeningForSpeechContinuationMessage();
  v9(closure #35 in ConversationBridge.registerAllHandlers(isSystemAssistantExperienceSupported:), 0, v40);
  v41 = type metadata accessor for StoppedListeningForSpeechContinuationMessage();
  v9(closure #36 in ConversationBridge.registerAllHandlers(isSystemAssistantExperienceSupported:), 0, v41);
  v42 = type metadata accessor for StoppedListeningForTextContinuationMessage();
  v9(closure #37 in ConversationBridge.registerAllHandlers(isSystemAssistantExperienceSupported:), 0, v42);
  v43 = type metadata accessor for RunPommesResponseMessage();
  v9(closure #38 in ConversationBridge.registerAllHandlers(isSystemAssistantExperienceSupported:), 0, v43);
  v44 = type metadata accessor for PommesTRPCandidateMessage();
  v9(closure #39 in ConversationBridge.registerAllHandlers(isSystemAssistantExperienceSupported:), 0, v44);
  active = type metadata accessor for ActiveUserSessionDetectedMessage();
  v4(closure #40 in ConversationBridge.registerAllHandlers(isSystemAssistantExperienceSupported:), 0, active);
  if (a1)
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v46 = type metadata accessor for Logger();
    __swift_project_value_buffer(v46, static Logger.conversationBridge);
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_1DC659000, v47, v48, "AssistantEngine feature flag is enabled, listening for RunSiriKitExecutorMessage on message bus instead of RunSiriKitExecutor ACE command", v49, 2u);
      MEMORY[0x1E12A2F50](v49, -1, -1);
    }

    v50 = type metadata accessor for RunSiriKitExecutorMessage();
    v4(closure #41 in ConversationBridge.registerAllHandlers(isSystemAssistantExperienceSupported:), 0, v50);
  }

  else
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v51 = type metadata accessor for Logger();
    __swift_project_value_buffer(v51, static Logger.conversationBridge);
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&dword_1DC659000, v52, v53, "AssistantEngine feature flag is disabled, listening for RunSiriKitExecutor ACE command instead of RunSiriKitExecutorMessage from message bus", v54, 2u);
      MEMORY[0x1E12A2F50](v54, -1, -1);
    }

    v55 = *(*v2 + 296);
    v56 = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SAIntentGroupRunSiriKitExecutor, 0x1E69C7880);
    v55(closure #42 in ConversationBridge.registerAllHandlers(isSystemAssistantExperienceSupported:), 0, v56);
  }

  v63 = *(*v2 + 296);
  v57 = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SARDServerContextUpdateCandidate, 0x1E69C79A8);
  v63(closure #43 in ConversationBridge.registerAllHandlers(isSystemAssistantExperienceSupported:), 0, v57);
  v58 = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SARDFlowOutputCandidate, 0x1E69C7980);
  v63(closure #44 in ConversationBridge.registerAllHandlers(isSystemAssistantExperienceSupported:), 0, v58);
  v59 = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SAIntentGroupSiriKitPluginSignal, 0x1E69C78B0);
  v63(closure #45 in ConversationBridge.registerAllHandlers(isSystemAssistantExperienceSupported:), 0, v59);
  v60 = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SAIntentGroupSiriKitClearContext, 0x1E69C7898);
  v63(closure #46 in ConversationBridge.registerAllHandlers(isSystemAssistantExperienceSupported:), 0, v60);
  v61 = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SARDRemoteExecutionContextUpdate, 0x1E69C7998);

  return (v63)(closure #47 in ConversationBridge.registerAllHandlers(isSystemAssistantExperienceSupported:), 0, v61);
}

uint64_t closure #1 in ConversationBridge.asyncInit()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a4;
  v5 = type metadata accessor for OSSignpostID();
  v4[11] = v5;
  v4[12] = *(v5 - 8);
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v6 = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in ConversationBridge.asyncInit(), v6, 0);
}

uint64_t closure #1 in ConversationBridge.asyncInit()()
{
  v31 = v0;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = v0[15];
  v2 = v0[10];
  v3 = static Log.executor;
  OSSignpostID.init(log:)();
  v4 = static os_signpost_type_t.begin.getter();
  v5 = MEMORY[0x1E69E7CC0];
  v6 = os_signpost(_:dso:log:name:signpostID:_:_:)(v4, &dword_1DC659000, v3, "ReferenceResolutionInitTime", 27, 2, v1, "enableTelemetry=YES", 19, 2, MEMORY[0x1E69E7CC0]);
  (*(*v2 + 816))(v6);
  v7 = v0[5];
  outlined destroy of ReferenceResolutionClientProtocol?((v0 + 2), &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMd, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMR);
  if (!v7)
  {
    v8 = v0[10];
    v9 = type metadata accessor for ReferenceResolutionClient();
    v10 = ReferenceResolutionClient.__allocating_init()();
    v29 = v9;
    v30 = MEMORY[0x1E69D01B0];
    v28[0] = v10;
    (*(*v8 + 824))(v28);
  }

  v11 = v0[14];
  v13 = v0[12];
  v12 = v0[13];
  v14 = v0[10];
  v26 = v0[15];
  v27 = v0[11];
  static os_signpost_type_t.end.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  v15 = v3;
  OSSignpostID.init(log:)();
  v16 = static os_signpost_type_t.begin.getter();
  LOBYTE(v24) = 2;
  os_signpost(_:dso:log:name:signpostID:_:_:)(v16, &dword_1DC659000, v15, "CorrectionsPlatformClientInitTime", 33, 2, v11, "enableTelemetry=YES", 19, v24, v5);
  v17 = type metadata accessor for CorrectionsPlatformClient();
  swift_allocObject();
  v18 = CorrectionsPlatformClient.init()();
  v29 = v17;
  v30 = &protocol witness table for CorrectionsPlatformClient;
  v28[0] = v18;
  (*(*v14 + 848))(v28);
  static os_signpost_type_t.end.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  OSSignpostID.init(log:)();
  v19 = static os_signpost_type_t.begin.getter();
  LOBYTE(v25) = 2;
  os_signpost(_:dso:log:name:signpostID:_:_:)(v19, &dword_1DC659000, v15, "NetworkAvailabilityProviderInitTime", 35, 2, v12, "enableTelemetry=YES", 19, v25, MEMORY[0x1E69E7CC0]);
  type metadata accessor for SiriEnvironment();
  static SiriEnvironment.default.getter();
  v20 = SiriEnvironment.networkAvailability.getter();

  (*(*v14 + 872))(v20);
  static os_signpost_type_t.end.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  v21 = *(v13 + 8);
  v21(v12, v27);
  v21(v11, v27);
  v21(v26, v27);

  v22 = v0[1];

  return v22();
}

void ConversationBridge.handleMUXContextMessage(_:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v25 - v8;
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Logger.conversationBridge);
  v11 = a1;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    *(v14 + 4) = v11;
    *v15 = v11;
    v16 = v11;
    _os_log_impl(&dword_1DC659000, v12, v13, "ExecutionBridge received message: %@", v14, 0xCu);
    outlined destroy of ReferenceResolutionClientProtocol?(v15, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1E12A2F50](v15, -1, -1);
    MEMORY[0x1E12A2F50](v14, -1, -1);
  }

  if ((*(*v2 + 1008))())
  {
    v17 = *(*v2 + 1064);
    v18 = v11;
    v17(v11);
    (*(**(v2 + direct field offset for ConversationBridge.executionOutputSubmitter) + 184))(v11);
    MUXContextMessage.userIdOfPrimaryUser()(v6);
    v19 = type metadata accessor for UserID();
    v20 = *(v19 - 8);
    v21 = *(v20 + 48);
    if (v21(v6, 1, v19) == 1)
    {
      (*(*v2 + 984))();
      if (v21(v6, 1, v19) != 1)
      {
        outlined destroy of ReferenceResolutionClientProtocol?(v6, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
      }
    }

    else
    {
      (*(v20 + 32))(v9, v6, v19);
      (*(v20 + 56))(v9, 0, 1, v19);
    }

    (*(*v2 + 992))(v9);
  }

  else
  {
    v26 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v26, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_1DC659000, v26, v22, "Ignoring MUXContextMessage since MUX is not enabled", v23, 2u);
      MEMORY[0x1E12A2F50](v23, -1, -1);
    }

    v24 = v26;
  }
}

void ConversationBridge.handleActiveUserSessionDetectedMessage(_:)(void *a1)
{
  v2 = type metadata accessor for UserSessionState();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v66 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v64 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v65 = &v61 - v8;
  v9 = type metadata accessor for UserID();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v61 - v14;
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  v17 = __swift_project_value_buffer(v16, static Logger.conversationBridge);
  v18 = a1;
  v67 = v17;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v63 = v3;
    v23 = v2;
    v24 = v12;
    v25 = v10;
    v26 = v9;
    v27 = v22;
    *v21 = 138412290;
    *(v21 + 4) = v18;
    *v22 = v18;
    v28 = v18;
    _os_log_impl(&dword_1DC659000, v19, v20, "#user-session: received message: %@", v21, 0xCu);
    outlined destroy of ReferenceResolutionClientProtocol?(v27, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v29 = v27;
    v9 = v26;
    v10 = v25;
    v12 = v24;
    v2 = v23;
    v3 = v63;
    MEMORY[0x1E12A2F50](v29, -1, -1);
    MEMORY[0x1E12A2F50](v21, -1, -1);
  }

  v30 = v68;
  (*(*v68 + 912))();
  v31 = type metadata accessor for UUID();
  v32 = (*(*(v31 - 8) + 48))(v15, 1, v31);
  v33 = outlined destroy of ReferenceResolutionClientProtocol?(v15, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  if (v32 == 1)
  {
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      v37 = "#user-session: cannot handle ActiveUserSessionDetectedMessage. currentSessionId is nil";
LABEL_14:
      _os_log_impl(&dword_1DC659000, v34, v35, v37, v36, 2u);
      MEMORY[0x1E12A2F50](v36, -1, -1);
      goto LABEL_15;
    }

    goto LABEL_15;
  }

  v38 = (*(*v30 + 1056))(v33);
  if (!v38)
  {
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      v37 = "#user-session: cannot handle ActiveUserSessionDetectedMessage. muxcontext hasn't arrived";
      goto LABEL_14;
    }

LABEL_15:

    return;
  }

  v39 = v38;
  v40 = v66;
  ActiveUserSessionDetectedMessage.userSessionState.getter();
  v41 = v65;
  UserSessionState.getActiveUserSharedUserId(fromMuxContextMessage:)();
  v42 = v3[1];
  v42(v40, v2);
  if ((*(v10 + 48))(v41, 1, v9) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v41, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = v39;
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_1DC659000, v43, v44, "#user-session: cannot handle ActiveUserSessionDetectedMessage. No shared user id found.", v46, 2u);
      MEMORY[0x1E12A2F50](v46, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    v62 = v42;
    v63 = v39;
    (*(v10 + 32))(v12, v41, v9);
    ActiveUserSessionDetectedMessage.userSessionState.getter();
    v47 = v68;
    (*(*v68 + 1088))(v40);
    v48 = v64;
    (*(v10 + 16))(v64, v12, v9);
    (*(v10 + 56))(v48, 0, 1, v9);
    v49 = (*(*v47 + 1096))(v69);
    UserSessionState.activeUserSharedUserId.setter();
    v49(v69, 0);

    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v67 = v12;
      v65 = v9;
      v53 = v52;
      v54 = swift_slowAlloc();
      v69[0] = v54;
      *v53 = 136315138;
      v55 = v66;
      (*(*v47 + 1080))();
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UserSessionState and conformance UserSessionState, 255, MEMORY[0x1E69D06F8], MEMORY[0x1E69D0710]);
      v56 = v51;
      v57 = dispatch thunk of CustomStringConvertible.description.getter();
      v59 = v58;
      v62(v55, v2);
      v60 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v57, v59, v69);

      *(v53 + 4) = v60;
      _os_log_impl(&dword_1DC659000, v50, v56, "#user-session: final user session state: %s.", v53, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v54);
      MEMORY[0x1E12A2F50](v54, -1, -1);
      MEMORY[0x1E12A2F50](v53, -1, -1);

      (*(v10 + 8))(v67, v65);
    }

    else
    {

      (*(v10 + 8))(v12, v9);
    }
  }
}

void ConversationBridge.handleExecutionSystemSwitchedMessage(_:)(void *a1)
{
  v2 = v1;
  v119 = a1;
  v3 = type metadata accessor for UserID();
  v108 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v107 = &v104[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for ExecutionSystemSwitchedMessage.SwitchType();
  v113 = *(v5 - 8);
  v114 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v112 = &v104[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for UUID();
  v118 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v115 = &v104[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v104[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v111 = &v104[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v104[-v15];
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v104[-v18];
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v104[-v21];
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  v117 = __swift_project_value_buffer(v23, static Logger.conversationBridge);
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.debug.getter();
  v26 = os_log_type_enabled(v24, v25);
  v120 = v7;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v116 = v9;
    v29 = v3;
    v30 = v16;
    v31 = v2;
    v32 = v28;
    v123[0] = v28;
    *v27 = 136315138;
    *(v27 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000028, 0x80000001DCA7EB00, v123);
    _os_log_impl(&dword_1DC659000, v24, v25, "%s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v32);
    v33 = v32;
    v2 = v31;
    v16 = v30;
    v3 = v29;
    v9 = v116;
    MEMORY[0x1E12A2F50](v33, -1, -1);
    v34 = v27;
    v7 = v120;
    MEMORY[0x1E12A2F50](v34, -1, -1);
  }

  v35 = (*v2 + 912);
  v36 = *v35;
  v116 = v2;
  v110 = v36;
  v109 = v35;
  v36();
  SessionMessageBase.sessionId.getter();
  v37 = v118;
  (*(v118 + 56))(v19, 0, 1, v7);
  v38 = *(v9 + 48);
  outlined init with copy of ReferenceResolutionClientProtocol?(v22, v11, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v39 = v120;
  outlined init with copy of ReferenceResolutionClientProtocol?(v19, &v11[v38], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v40 = *(v37 + 48);
  if (v40(v11, 1, v39) == 1)
  {
    v106 = v3;
    outlined destroy of ReferenceResolutionClientProtocol?(v19, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    outlined destroy of ReferenceResolutionClientProtocol?(v22, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    if (v40(&v11[v38], 1, v39) == 1)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(v11, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v41 = v116;
      goto LABEL_15;
    }

    goto LABEL_10;
  }

  outlined init with copy of ReferenceResolutionClientProtocol?(v11, v16, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  if (v40(&v11[v38], 1, v39) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v19, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    outlined destroy of ReferenceResolutionClientProtocol?(v22, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    (*(v118 + 8))(v16, v120);
LABEL_10:
    outlined destroy of ReferenceResolutionClientProtocol?(v11, &_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
    goto LABEL_11;
  }

  v106 = v3;
  v53 = v118;
  v54 = &v11[v38];
  v55 = v115;
  (*(v118 + 32))(v115, v54, v39);
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
  v105 = dispatch thunk of static Equatable.== infix(_:_:)();
  v56 = *(v53 + 8);
  v56(v55, v39);
  outlined destroy of ReferenceResolutionClientProtocol?(v19, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v22, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v56(v16, v120);
  outlined destroy of ReferenceResolutionClientProtocol?(v11, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v41 = v116;
  if (v105)
  {
LABEL_15:
    v57 = v112;
    ExecutionSystemSwitchedMessage.switchType.getter();
    v59 = v113;
    v58 = v114;
    v60 = (*(v113 + 88))(v57, v114);
    v61 = *MEMORY[0x1E69D03D8];
    (*(v59 + 8))(v57, v58);
    if (v60 == v61)
    {
      v62 = Logger.logObject.getter();
      v63 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        *v64 = 0;
        _os_log_impl(&dword_1DC659000, v62, v63, "Sending ClearExecutionContext to Conversation", v64, 2u);
        MEMORY[0x1E12A2F50](v64, -1, -1);
      }

      type metadata accessor for ClearExecutionContext();
      v65 = swift_allocObject();
      (*(*v41 + 768))(v123);
      v66 = v124;
      v67 = v125;
      __swift_project_boxed_opaque_existential_1(v123, v124);
      v68 = (*(*v41 + 792))();
      (*(v67 + 32))(v65, v68, &protocol witness table for NonRequestExecutionBridgeDelegate, v66, v67);

      __swift_destroy_boxed_opaque_existential_1Tm(v123);
      __swift_project_boxed_opaque_existential_1(v41 + 10, v41[13]);
      v69 = v115;
      SessionMessageBase.sessionId.getter();
      dispatch thunk of ConversationSessionsManaging.conversationSessionState(forConversationSessionId:)();
      (*(v118 + 8))(v69, v120);
      if (v122)
      {
        outlined init with take of ReferenceResolutionClientProtocol(&v121, v123);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy16SiriMessageTypes22ConversationSessionKeyO_ypSgtGMd, &_ss23_ContiguousArrayStorageCy16SiriMessageTypes22ConversationSessionKeyO_ypSgtGMR);
        v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes22ConversationSessionKeyO_ypSgtMd, &_s16SiriMessageTypes22ConversationSessionKeyO_ypSgtMR);
        v71 = *(*(v70 - 8) + 72);
        v72 = (*(*(v70 - 8) + 80) + 32) & ~*(*(v70 - 8) + 80);
        v73 = swift_allocObject();
        *(v73 + 16) = xmmword_1DCA696F0;
        v74 = v73 + v72;
        v75 = (v73 + v72 + *(v70 + 48));
        v76 = *MEMORY[0x1E69D07B8];
        v77 = type metadata accessor for ConversationSessionKey();
        v78 = *(*(v77 - 8) + 104);
        (v78)(v74, v76, v77);
        *v75 = 0u;
        v75[1] = 0u;
        v79 = (v74 + v71 + *(v70 + 48));
        v78();
        *v79 = 0u;
        v79[1] = 0u;
        v80 = (v74 + 2 * v71 + *(v70 + 48));
        v78();
        *v80 = 0u;
        v80[1] = 0u;
        v81 = (v74 + 3 * v71 + *(v70 + 48));
        v78();
        *v81 = 0u;
        v81[1] = 0u;
        v82 = (v74 + 4 * v71 + *(v70 + 48));
        v78();
        *v82 = 0u;
        v82[1] = 0u;
        v83 = (v74 + 5 * v71 + *(v70 + 48));
        v78();
        *v83 = 0u;
        v83[1] = 0u;
        v84 = (v74 + 6 * v71 + *(v70 + 48));
        v78();
        *v84 = 0u;
        v84[1] = 0u;
        _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC16SiriMessageTypes22ConversationSessionKeyO_ypSgTt0g5Tf4g_n(v73);
        swift_setDeallocating();
        swift_arrayDestroy();
        swift_deallocClassInstance();
        __swift_project_boxed_opaque_existential_1(v123, v124);
        v85 = v107;
        ExecutionSystemSwitchedMessage.userId.getter();
        dispatch thunk of ConversationSessionState.updateValues(data:userId:)();
        (*(v108 + 8))(v85, v106);

        v86 = Logger.logObject.getter();
        v87 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v86, v87))
        {
          v88 = swift_slowAlloc();
          v89 = swift_slowAlloc();
          *&v121 = v89;
          *v88 = 136315138;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
          lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type ConversationSessionKey and conformance ConversationSessionKey, 255, MEMORY[0x1E69D0820], MEMORY[0x1E69D0828]);
          v90 = Dictionary.Keys.description.getter();
          v92 = v91;

          v93 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v90, v92, &v121);

          *(v88 + 4) = v93;
          _os_log_impl(&dword_1DC659000, v86, v87, "Cleared following keys from ConversationSessionState: %s", v88, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v89);
          MEMORY[0x1E12A2F50](v89, -1, -1);
          MEMORY[0x1E12A2F50](v88, -1, -1);
        }

        else
        {
        }

        __swift_destroy_boxed_opaque_existential_1Tm(v123);
      }

      else
      {
        outlined destroy of ReferenceResolutionClientProtocol?(&v121, &_s16SiriMessageTypes24ConversationSessionState_pSgMd, &_s16SiriMessageTypes24ConversationSessionState_pSgMR);
        v101 = Logger.logObject.getter();
        v102 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v101, v102))
        {
          v103 = swift_slowAlloc();
          *v103 = 0;
          _os_log_impl(&dword_1DC659000, v101, v102, "Could not find a ConversationSessionState for given sessionId", v103, 2u);
          MEMORY[0x1E12A2F50](v103, -1, -1);
        }
      }
    }

    return;
  }

LABEL_11:

  v42 = v119;
  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v123[0] = v46;
    *v45 = 136315394;
    v47 = v111;
    v110();
    v48 = v120;
    if (v40(v47, 1, v120))
    {
      outlined destroy of ReferenceResolutionClientProtocol?(v47, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v49 = 0xE500000000000000;
      v50 = 0x3E6C696E3CLL;
      v51 = v118;
      v52 = v115;
    }

    else
    {
      v51 = v118;
      v52 = v115;
      (*(v118 + 16))(v115, v47, v48);
      outlined destroy of ReferenceResolutionClientProtocol?(v47, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v94 = UUID.uuidString.getter();
      v49 = v95;
      (*(v51 + 8))(v52, v48);
      v50 = v94;
    }

    v96 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v49, v123);

    *(v45 + 4) = v96;
    *(v45 + 12) = 2080;
    SessionMessageBase.sessionId.getter();
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v97 = dispatch thunk of CustomStringConvertible.description.getter();
    v99 = v98;
    (*(v51 + 8))(v52, v48);
    v100 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v97, v99, v123);

    *(v45 + 14) = v100;
    _os_log_impl(&dword_1DC659000, v43, v44, "SessionId mismatch. CurrentSessionId: %s, executionSystemSwitchedMessage.sessionId: %s", v45, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v46, -1, -1);
    MEMORY[0x1E12A2F50](v45, -1, -1);
  }
}

uint64_t ConversationBridge.createRunSiriKitExecutorProcessor(command:executionContext:reply:source:userId:sessionId:plannerInvocationId:)(void *a1, void *a2, uint64_t a3, uint64_t a4, int a5, char *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v101 = a6;
  v98 = a3;
  v97 = a2;
  v96 = a1;
  v88 = type metadata accessor for ConversationSessionKey();
  v85 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v16 = &v83 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for UserSessionState();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v83 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = &v83 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v110 = &v83 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v106 = &v83 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v108 = &v83 - v29;
  v109 = type metadata accessor for RequestType();
  v105 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109);
  v107 = &v83 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v104 = &v83 - v32;
  v95 = a5;
  v103 = v17;
  v102 = v18;
  v100 = a8;
  v99 = a4;
  if (a5 == 1)
  {

    v33 = MEMORY[0x1E69D0540];
    v34 = v101;
  }

  else
  {
    v34 = v101;
    v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v33 = MEMORY[0x1E69D0528];
    if (v35)
    {
      v33 = MEMORY[0x1E69D0540];
    }
  }

  v36 = v105;
  v37 = v104;
  v38 = v109;
  v39 = (*(v105 + 104))(v104, *v33, v109);
  v91 = *(v10 + direct field offset for ConversationBridge.executionOutputSubmitter);
  (*(*v10 + 768))(&v120, v39);
  v119 = 0;
  memset(v118, 0, sizeof(v118));
  v89 = *(v10 + direct field offset for ConversationBridge.instrumentationUtil);
  v94 = v10[9];
  v40 = *(v36 + 16);
  v87 = v36 + 16;
  v86 = v40;
  v40(v107, v37, v38);
  outlined init with copy of ReferenceResolutionClientProtocol?(v34, v108, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  v41 = outlined init with copy of ReferenceResolutionClientProtocol?(a7, v110, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v42 = *(*v10 + 936);
  v93 = v23;
  v42(v41);
  v43 = outlined init with copy of ReferenceResolutionClientProtocol((v10 + 4), &v117);
  v90 = (*(*v10 + 1008))(v43);
  v44 = *(*v10 + 1080);
  v101 = v20;
  v45 = v44();
  v92 = (*(*v10 + 1056))(v45);
  v46 = *(*v10 + 960);
  v46(&v113);
  if (v114)
  {
    outlined init with copy of ReferenceResolutionClientProtocol(&v113, v111);
    outlined destroy of ReferenceResolutionClientProtocol?(&v113, &_s16SiriMessageTypes24ConversationSessionState_pSgMd, &_s16SiriMessageTypes24ConversationSessionState_pSgMR);
    __swift_project_boxed_opaque_existential_1(v111, v112);
    v47 = v85;
    v48 = v88;
    (*(v85 + 104))(v16, *MEMORY[0x1E69D07D8], v88);
    dispatch thunk of ConversationSessionState.sharedValue(forKey:)();
    (*(v47 + 8))(v16, v48);
    __swift_destroy_boxed_opaque_existential_1Tm(v111);
    if (*(&v116 + 1))
    {
      v49 = type metadata accessor for UserID();
      v50 = v106;
      v51 = swift_dynamicCast();
      v52 = (*(*(v49 - 8) + 56))(v50, v51 ^ 1u, 1, v49);
      goto LABEL_10;
    }
  }

  else
  {
    outlined destroy of ReferenceResolutionClientProtocol?(&v113, &_s16SiriMessageTypes24ConversationSessionState_pSgMd, &_s16SiriMessageTypes24ConversationSessionState_pSgMR);
    v115 = 0u;
    v116 = 0u;
    v48 = v88;
    v47 = v85;
  }

  outlined destroy of ReferenceResolutionClientProtocol?(&v115, &_sypSgMd, &_sypSgMR);
  v53 = type metadata accessor for UserID();
  v52 = (*(*(v53 - 8) + 56))(v106, 1, 1, v53);
LABEL_10:
  v88 = a9;
  (v46)(&v113, v52);
  if (!v114)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(&v113, &_s16SiriMessageTypes24ConversationSessionState_pSgMd, &_s16SiriMessageTypes24ConversationSessionState_pSgMR);
    v115 = 0u;
    v116 = 0u;
    goto LABEL_15;
  }

  outlined init with copy of ReferenceResolutionClientProtocol(&v113, v111);
  outlined destroy of ReferenceResolutionClientProtocol?(&v113, &_s16SiriMessageTypes24ConversationSessionState_pSgMd, &_s16SiriMessageTypes24ConversationSessionState_pSgMR);
  __swift_project_boxed_opaque_existential_1(v111, v112);
  (*(v47 + 104))(v16, *MEMORY[0x1E69D0808], v48);
  dispatch thunk of ConversationSessionState.sharedValue(forKey:)();
  (*(v47 + 8))(v16, v48);
  __swift_destroy_boxed_opaque_existential_1Tm(v111);
  if (!*(&v116 + 1))
  {
LABEL_15:
    outlined destroy of ReferenceResolutionClientProtocol?(&v115, &_sypSgMd, &_sypSgMR);
    goto LABEL_16;
  }

  if (!swift_dynamicCast())
  {
LABEL_16:
    LODWORD(v85) = 0;
    goto LABEL_17;
  }

  LODWORD(v85) = v113;
LABEL_17:
  type metadata accessor for RunSiriKitExecutorProcessor(0);
  v54 = swift_allocObject();
  v55 = OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_userId;
  v84 = OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_userId;
  v56 = type metadata accessor for UserID();
  (*(*(v56 - 8) + 56))(v54 + v55, 1, 1, v56);
  *(v54 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_loggedStartOfCall) = 0;
  v57 = (v54 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_resultCandidateId);
  *v57 = 0;
  v57[1] = 0;
  *(v54 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_requestFinished) = 0;
  v58 = OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_flowPluginInfo;
  *(v54 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_flowPluginInfo) = 0;
  v59 = OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_asyncWork;
  type metadata accessor for ConcurrentTaskPool();
  v60 = swift_allocObject();
  *(v60 + 16) = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v61 = swift_allocObject();
  *(v61 + 16) = 0;
  *(v54 + v59) = v60;
  *(v60 + 24) = v61;
  v62 = v96;
  v63 = v97;
  *(v54 + 16) = v96;
  *(v54 + 24) = v63;
  v64 = v98;
  v65 = v99;
  *(v54 + 32) = v98;
  *(v54 + 40) = v65;
  *(v54 + 48) = v91;
  outlined init with copy of ReferenceResolutionClientProtocol(&v120, v54 + 56);
  outlined init with copy of ReferenceResolutionClientProtocol?(v118, v54 + 96, &_s14SiriKitRuntime15ContextUpdating_pSgMd, &_s14SiriKitRuntime15ContextUpdating_pSgMR);
  *(v54 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_source) = v95;
  *(v54 + 152) = 0u;
  *(v54 + 136) = 0u;
  *(v54 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_outputCounter) = 0;
  *(v54 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_instrumentationUtil) = v89;
  v66 = v94;
  *(v54 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_requestDispatcherServiceHelper) = v94;
  swift_beginAccess();
  *v57 = 0;
  v57[1] = 0;
  swift_beginAccess();
  *(v54 + v58) = 0;
  v86(v54 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_requestType, v107, v109);
  v67 = v84;
  swift_beginAccess();
  v68 = v62;
  v69 = v63;
  sub_1DC680C50(v64);

  swift_unknownObjectRetain();
  outlined assign with copy of ReferenceResolutionClientProtocol?(v108, v54 + v67, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  swift_endAccess();
  *(v54 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_meetsUserSessionThreshold) = 0;
  *(v54 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_meetsPersonalRequestThreshold) = 0;
  outlined init with copy of ReferenceResolutionClientProtocol?(v110, v54 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_sessionId, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v70 = v93;
  outlined init with copy of ReferenceResolutionClientProtocol?(v93, v54 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_sessionConfiguration, &_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR);
  v71 = (v54 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_plannerInvocationId);
  v72 = v88;
  *v71 = v100;
  v71[1] = v72;
  outlined init with copy of ReferenceResolutionClientProtocol(&v117, v54 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_messagePublisher);
  *(v54 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_isMuxEnabled) = v90 & 1;
  v73 = v92;
  *(v54 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_muxContextMessage) = v92;
  v74 = v106;
  outlined init with copy of ReferenceResolutionClientProtocol?(v106, v54 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_previousUserId, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  v75 = v102;
  v76 = v101;
  v77 = v103;
  (*(v102 + 16))(v54 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_userSessionState, v101, v103);
  *(v54 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_remoteRequestWasMadeInSession) = v85;
  type metadata accessor for RunSiriKitExecutorProcessorExecutionDelegate();
  v78 = swift_allocObject();
  swift_weakInit();
  *(v78 + 24) = v66;
  *(v54 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_rskeProcessorExecutionDelegate) = v78;
  v79 = v73;
  swift_unknownObjectRetain();

  RunSiriKitExecutorProcessorExecutionDelegate.setRSKEProcessor(rskeProcessor:)(v54);

  (*(v75 + 8))(v76, v77);
  __swift_destroy_boxed_opaque_existential_1Tm(&v117);
  outlined destroy of ReferenceResolutionClientProtocol?(v70, &_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v110, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v108, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  v80 = *(v105 + 8);
  v81 = v109;
  v80(v107, v109);
  outlined destroy of ReferenceResolutionClientProtocol?(v118, &_s14SiriKitRuntime15ContextUpdating_pSgMd, &_s14SiriKitRuntime15ContextUpdating_pSgMR);
  __swift_destroy_boxed_opaque_existential_1Tm(&v120);
  v80(v104, v81);
  outlined destroy of ReferenceResolutionClientProtocol?(v74, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  return v54;
}

uint64_t ConversationBridge.handleFlowOutputCandidate(_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, void *a6, uint64_t a7)
{
  v15 = *(*v7 + 488);
  v13 = type metadata accessor for OS_dispatch_queue(0, a5, a6);

  return v15(a1, a2, a3, a4, a7, 0, v13);
}

void ConversationBridge.handleSiriKitPluginSignal(_:_:_:)(void *a1, uint64_t a2, void (*a3)(void, void), uint64_t a4)
{
  v5 = v4;
  v78 = a4;
  v8 = type metadata accessor for UUID();
  v76 = *(v8 - 8);
  v77 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v75 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  v11 = __swift_project_value_buffer(v10, static Logger.conversationBridge);
  v12 = a1;
  v74 = v11;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v73 = a3;
    v15 = 0x3E6C696E3CLL;
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v79 = v17;
    *v16 = 136315394;
    v18 = [v12 bundleIdentifier];
    if (v18)
    {
      v19 = v18;
      v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = v21;
    }

    else
    {
      v22 = 0xE500000000000000;
      v20 = 0x3E6C696E3CLL;
    }

    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, &v79);

    *(v16 + 4) = v23;
    *(v16 + 12) = 2080;
    v24 = [v12 refId];
    a3 = v73;
    if (v24)
    {
      v25 = v24;
      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v27 = v26;
    }

    else
    {
      v27 = 0xE500000000000000;
    }

    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v27, &v79);

    *(v16 + 14) = v28;
    _os_log_impl(&dword_1DC659000, v13, v14, "SiriKitPluginSignal received with bundleIdentifier: %s and refId: %s", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v17, -1, -1);
    MEMORY[0x1E12A2F50](v16, -1, -1);
  }

  [v12 copy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SAIntentGroupSiriKitPluginSignal, 0x1E69C78B0);
  if (swift_dynamicCast())
  {
    v29 = v83;
    (*(*v5 + 768))(&v79);
    v30 = v81;
    v31 = v82;
    __swift_project_boxed_opaque_existential_1(&v79, v81);
    v32 = (*(*v5 + 792))();
    (*(v31 + 72))(v29, v32, &protocol witness table for NonRequestExecutionBridgeDelegate, v30, v31);

    __swift_destroy_boxed_opaque_existential_1Tm(&v79);
    v33 = v12;
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *v36 = 138412290;
      *(v36 + 4) = v33;
      *v37 = v33;
      v38 = v33;
      _os_log_impl(&dword_1DC659000, v34, v35, "Successfully sent: %@", v36, 0xCu);
      outlined destroy of ReferenceResolutionClientProtocol?(v37, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1E12A2F50](v37, -1, -1);
      MEMORY[0x1E12A2F50](v36, -1, -1);
    }

    if (a3)
    {
      v39 = objc_allocWithZone(MEMORY[0x1E69C7788]);
      v40 = v78;

      v41 = [v39 init];
      v42 = v75;
      UUID.init()();
      v43 = UUID.uuidString.getter();
      v45 = v44;
      (*(v76 + 8))(v42, v77);
      v46 = MEMORY[0x1E12A1410](v43, v45);

      [v41 setAceId_];

      v47 = v41;
      v48 = [v33 aceId];
      [v47 setRefId_];

      a3(v47, 0);
      _sxRi_zRi0_zlySDySSSbGIsegr_SgWOe(a3, v40);
    }
  }

  else
  {
    v79 = 0;
    v80 = 0xE000000000000000;
    _StringGuts.grow(_:)(17);

    v79 = 0x6F6E20646C756F43;
    v80 = 0xEF2079706F632074;
    v49 = [v12 debugDescription];
    v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v52 = v51;

    MEMORY[0x1E12A1580](v50, v52);

    v53 = v80;
    if (a3)
    {
      v54 = a3;
      v55 = v79;
      v56 = objc_allocWithZone(MEMORY[0x1E69C7778]);
      v57 = v78;

      v58 = [v56 init];
      v59 = v75;
      UUID.init()();
      v60 = UUID.uuidString.getter();
      v62 = v61;
      (*(v76 + 8))(v59, v77);
      v63 = MEMORY[0x1E12A1410](v60, v62);

      [v58 setAceId_];

      v64 = v58;
      v65 = [v12 aceId];
      [v64 setRefId_];

      [v64 setErrorCode_];
      v66 = MEMORY[0x1E12A1410](v55, v53);
      [v64 setReason_];

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1DCA66060;
      *(inited + 32) = 0x6567617373654DLL;
      *(inited + 72) = MEMORY[0x1E69E6158];
      *(inited + 40) = 0xE700000000000000;
      *(inited + 48) = v55;
      *(inited + 56) = v53;

      _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
      swift_setDeallocating();
      outlined destroy of ReferenceResolutionClientProtocol?(inited + 32, &_sSS_yptMd, &_sSS_yptMR);
      v68 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
      v69 = MEMORY[0x1E12A1410](0x6F69747563657845, 0xEF6567646972426ELL);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v71 = [v68 initWithDomain:v69 code:-1 userInfo:isa];

      v54(v64, v71);

      _sxRi_zRi0_zlySDySSSbGIsegr_SgWOe(v54, v57);
    }

    else
    {
    }
  }
}

void ConversationBridge.handleSiriKitClearContext(_:_:_:)(void *a1, uint64_t a2, void (*a3)(id, id), uint64_t a4)
{
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v29[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Logger.conversationBridge);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_1DC659000, v12, v13, "Received SiriKitClearContext. Ignoring since this command is deprecated in Siri X", v14, 2u);
    MEMORY[0x1E12A2F50](v14, -1, -1);
  }

  if (a3)
  {
    v15 = objc_allocWithZone(MEMORY[0x1E69C7780]);

    v16 = [v15 init];
    UUID.init()();
    v17 = UUID.uuidString.getter();
    v19 = v18;
    (*(v8 + 8))(v10, v7);
    v20 = MEMORY[0x1E12A1410](v17, v19);

    [v16 setAceId_];

    v21 = v16;
    v22 = [a1 aceId];
    [v21 setRefId_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DCA66060;
    *(inited + 32) = 0x6567617373654DLL;
    v24 = inited + 32;
    *(inited + 72) = MEMORY[0x1E69E6158];
    *(inited + 40) = 0xE700000000000000;
    *(inited + 48) = 0xD00000000000002BLL;
    *(inited + 56) = 0x80000001DCA7EB30;
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    outlined destroy of ReferenceResolutionClientProtocol?(v24, &_sSS_yptMd, &_sSS_yptMR);
    v25 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v26 = MEMORY[0x1E12A1410](0x6F69747563657845, 0xEF6567646972426ELL);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v28 = [v25 initWithDomain:v26 code:-1 userInfo:isa];

    a3(v21, v28);
    _sxRi_zRi0_zlySDySSSbGIsegr_SgWOe(a3, a4);
  }
}

void ConversationBridge.handleRemoteExecutionContextUpdate(_:_:_:)(void *a1, uint64_t a2, void (*a3)(void, void), uint64_t a4)
{
  v5 = v4;
  v58 = a2;
  v9 = type metadata accessor for UUID();
  v57 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v56 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Logger.conversationBridge);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_1DC659000, v12, v13, "Received RemoteExecutionContextUpdate command", v14, 2u);
    MEMORY[0x1E12A2F50](v14, -1, -1);
  }

  v15 = [a1 refId];
  if (v15)
  {
  }

  else
  {
    v55 = a3;
    v16 = (*(*v5 + 376))();
    if (v16)
    {
      v54 = v9;
      v18 = *(v16 + 80);
      v17 = *(v16 + 88);

      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v53 = v18;
        v22 = v21;
        v23 = swift_slowAlloc();
        v52 = a4;
        v24 = v23;
        v59 = v23;
        *v22 = 136315138;
        *(v22 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v17, &v59);
        _os_log_impl(&dword_1DC659000, v19, v20, "RemoteExecutionContextUpdate refId is nil. Setting to current rootRequestId: %s", v22, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v24);
        v25 = v24;
        a4 = v52;
        MEMORY[0x1E12A2F50](v25, -1, -1);
        v26 = v22;
        v18 = v53;
        MEMORY[0x1E12A2F50](v26, -1, -1);
      }

      v9 = v54;
      v27 = MEMORY[0x1E12A1410](v18, v17);

      [a1 setRefId_];

      a3 = v55;
    }

    else
    {
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.error.getter();
      v30 = os_log_type_enabled(v28, v29);
      a3 = v55;
      if (v30)
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_1DC659000, v28, v29, "RemoteExecutionContextUpdate refId is nil, and there is no currentRequestProcessor, so we don't know the current refId.", v31, 2u);
        MEMORY[0x1E12A2F50](v31, -1, -1);
      }
    }
  }

  v32 = *(*v5 + 480);
  v33 = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SARDRemoteExecutionContextUpdate, 0x1E69C7998);
  if ((v32(a1, v58, a3, a4, _s14SiriKitRuntime37ServerFallbackCapableRequestProcessorCSo32SARDRemoteExecutionContextUpdateCSo09AFCommandJ4InfoCSo13SABaseCommandCSgs5Error_pSgIeghgg_SgIegggg_Iggo_ACxAgMRlzCRi_zRi0_zlyAEIsegggg_Ieggo_TR04_s14ab42Runtime18ConversationBridgeC34handleRemotejk33UpdateyySo010SARDRemotehiJ0C_So09m2H4n6CySo13op6CSg_s5q47_pSgtYbcSgtFyAF_AhNtAA15MessageBusActorCYccAA37defgH6Ccfu0_Tf3npf_n, 0, v33) & 1) == 0)
  {
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_1DC659000, v34, v35, "Could not handle RemoteExecutionContextUpdate", v36, 2u);
      MEMORY[0x1E12A2F50](v36, -1, -1);
    }

    if (a3)
    {
      v37 = objc_allocWithZone(MEMORY[0x1E69C7780]);

      v38 = [v37 init];
      v39 = v56;
      UUID.init()();
      v40 = UUID.uuidString.getter();
      v42 = v41;
      (*(v57 + 8))(v39, v9);
      v43 = MEMORY[0x1E12A1410](v40, v42);

      [v38 setAceId_];

      v44 = v38;
      v45 = [a1 aceId];
      [v44 setRefId_];

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1DCA66060;
      *(inited + 32) = 0x6567617373654DLL;
      v47 = inited + 32;
      *(inited + 72) = MEMORY[0x1E69E6158];
      *(inited + 40) = 0xE700000000000000;
      *(inited + 48) = 0xD00000000000002DLL;
      *(inited + 56) = 0x80000001DCA7EB60;
      _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
      swift_setDeallocating();
      outlined destroy of ReferenceResolutionClientProtocol?(v47, &_sSS_yptMd, &_sSS_yptMR);
      v48 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
      v49 = MEMORY[0x1E12A1410](0x6F69747563657845, 0xEF6567646972426ELL);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v51 = [v48 initWithDomain:v49 code:-1 userInfo:isa];

      a3(v44, v51);
      _sxRi_zRi0_zlySDySSSbGIsegr_SgWOe(a3, a4);
    }
  }
}

void ConversationBridge.handleExecutionServiceRuntimeError(error:)(void *a1)
{
  v2 = v1;
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.conversationBridge);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v32 = v9;
    *v8 = 136315138;
    v10 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v11 = String.init<A>(describing:)();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v32);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_1DC659000, v6, v7, "Runtime error occurred in Execution service: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x1E12A2F50](v9, -1, -1);
    MEMORY[0x1E12A2F50](v8, -1, -1);
  }

  v16 = (*(*v2 + 376))(v14, v15);
  if (v16)
  {
    v18 = v16;
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_1DC659000, v19, v20, "Dispatching runtime error to the request processor", v21, 2u);
      MEMORY[0x1E12A2F50](v21, -1, -1);
    }

    v22 = _convertErrorToNSError(_:)();
    (*(*v18 + 1168))(v22, v23);
  }

  else
  {
    v24 = (*(*v2 + 720))(0, v17);
    if (v24)
    {
      v25 = v24;
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&dword_1DC659000, v26, v27, "Dispatching runtime error to RSKE processor", v28, 2u);
        MEMORY[0x1E12A2F50](v28, -1, -1);
      }

      v22 = _convertErrorToNSError(_:)();
      (*(*v25 + 528))(v22, v29);
    }

    else
    {
      v22 = Logger.logObject.getter();
      v30 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v22, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_1DC659000, v22, v30, "There is no request processor to send the runtime error to", v31, 2u);
        MEMORY[0x1E12A2F50](v31, -1, -1);
      }
    }
  }
}

void closure #1 in static ConversationBridge.sendShowRequestHandlingStatus(withStatus:serviceHelper:requestId:completion:)(uint64_t a1, void *a2, void *a3, void (*a4)(uint64_t, void *))
{
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logger.conversationBridge);
  v9 = a3;
  v10 = a2;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v23 = v14;
    *v13 = 136315394;
    v15 = [v9 debugDescription];
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, &v23);

    *(v13 + 4) = v19;
    *(v13 + 12) = 2080;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pSgMd, &_ss5Error_pSgMR);
    v20 = Optional.debugDescription.getter();
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, &v23);

    *(v13 + 14) = v22;
    _os_log_impl(&dword_1DC659000, v11, v12, "Sent %s with error: %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v14, -1, -1);
    MEMORY[0x1E12A2F50](v13, -1, -1);
  }

  if (a4)
  {
    a4(a1, a2);
  }
}

uint64_t ConversationBridge.__ivar_destroyer()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + direct field offset for ConversationBridge.featureChecker));

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + direct field offset for ConversationBridge.contextDonator));

  outlined destroy of ReferenceResolutionClientProtocol?(v0 + direct field offset for ConversationBridge.overrideExecutionClient, &_s14SiriKitRuntime012ConversationC14ClientProtocol_pSgMd, &_s14SiriKitRuntime012ConversationC14ClientProtocol_pSgMR);

  outlined destroy of ReferenceResolutionClientProtocol?(v0 + direct field offset for ConversationBridge.$__lazy_storage_$_executionClient, &_s14SiriKitRuntime012ConversationC14ClientProtocol_pSgMd, &_s14SiriKitRuntime012ConversationC14ClientProtocol_pSgMR);

  outlined destroy of ReferenceResolutionClientProtocol?(v0 + direct field offset for ConversationBridge.rraasClient, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMd, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v0 + direct field offset for ConversationBridge.correctionsPlatformClient, &_s14SiriKitRuntime19CorrectionsHandling_pSgMd, &_s14SiriKitRuntime19CorrectionsHandling_pSgMR);

  outlined destroy of ReferenceResolutionClientProtocol?(v0 + direct field offset for ConversationBridge.currentSessionId, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v0 + direct field offset for ConversationBridge.sessionConfiguration, &_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v0 + direct field offset for ConversationBridge.sessionState, &_s16SiriMessageTypes24ConversationSessionState_pSgMd, &_s16SiriMessageTypes24ConversationSessionState_pSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v0 + direct field offset for ConversationBridge.sessionUserId, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);

  v1 = direct field offset for ConversationBridge.userSessionState;
  v2 = type metadata accessor for UserSessionState();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
}

char *ConversationBridge.deinit()
{
  v0 = specialized ConversationMessageDispatchingBridgeBase.deinit();

  v1 = direct field offset for ConversationRequestAwareBridgeBase.previousProcessorTimeout;
  v2 = type metadata accessor for DispatchTimeInterval();
  (*(*(v2 - 8) + 8))(&v0[v1], v2);
  __swift_destroy_boxed_opaque_existential_1Tm(&v0[direct field offset for ConversationBridge.featureChecker]);

  __swift_destroy_boxed_opaque_existential_1Tm(&v0[direct field offset for ConversationBridge.contextDonator]);

  outlined destroy of ReferenceResolutionClientProtocol?(&v0[direct field offset for ConversationBridge.overrideExecutionClient], &_s14SiriKitRuntime012ConversationC14ClientProtocol_pSgMd, &_s14SiriKitRuntime012ConversationC14ClientProtocol_pSgMR);

  outlined destroy of ReferenceResolutionClientProtocol?(&v0[direct field offset for ConversationBridge.$__lazy_storage_$_executionClient], &_s14SiriKitRuntime012ConversationC14ClientProtocol_pSgMd, &_s14SiriKitRuntime012ConversationC14ClientProtocol_pSgMR);

  outlined destroy of ReferenceResolutionClientProtocol?(&v0[direct field offset for ConversationBridge.rraasClient], &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMd, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(&v0[direct field offset for ConversationBridge.correctionsPlatformClient], &_s14SiriKitRuntime19CorrectionsHandling_pSgMd, &_s14SiriKitRuntime19CorrectionsHandling_pSgMR);

  outlined destroy of ReferenceResolutionClientProtocol?(&v0[direct field offset for ConversationBridge.currentSessionId], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(&v0[direct field offset for ConversationBridge.sessionConfiguration], &_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(&v0[direct field offset for ConversationBridge.sessionState], &_s16SiriMessageTypes24ConversationSessionState_pSgMd, &_s16SiriMessageTypes24ConversationSessionState_pSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(&v0[direct field offset for ConversationBridge.sessionUserId], &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);

  v3 = direct field offset for ConversationBridge.userSessionState;
  v4 = type metadata accessor for UserSessionState();
  (*(*(v4 - 8) + 8))(&v0[v3], v4);

  return v0;
}

uint64_t ConversationBridge.__deallocating_deinit()
{
  ConversationBridge.deinit();

  return swift_deallocClassInstance();
}

uint64_t NonRequestExecutionBridgeDelegate.init(executionOutputSubmitter:userId:serviceHelper:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  outlined init with take of UserID?(a2, v3 + OBJC_IVAR____TtC14SiriKitRuntime33NonRequestExecutionBridgeDelegate_userId);
  *(v3 + OBJC_IVAR____TtC14SiriKitRuntime33NonRequestExecutionBridgeDelegate_serviceHelper) = a3;
  return v3;
}

void NonRequestExecutionBridgeDelegate.submit(executionOutput:completion:)(void *a1, void (*a2)(void, id), uint64_t a3)
{
  v42 = a3;
  v43 = a2;
  v41 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v40 = &v35[-v5];
  v38 = type metadata accessor for RequestType();
  v6 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v8 = &v35[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v35[-v10];
  v12 = type metadata accessor for UserID();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v35[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v35[-v17];
  v39 = v3;
  outlined init with copy of ReferenceResolutionClientProtocol?(v3 + OBJC_IVAR____TtC14SiriKitRuntime33NonRequestExecutionBridgeDelegate_userId, v11, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    v19 = v43;
    outlined destroy of ReferenceResolutionClientProtocol?(v11, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, static Logger.conversationBridge);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_1DC659000, v21, v22, "UserID is nil. Cannot process ExecutionOutput", v23, 2u);
      MEMORY[0x1E12A2F50](v23, -1, -1);
    }

    v24 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v25 = MEMORY[0x1E12A1410](0x6920444972657355, 0xED00006C696E2073);
    v26 = [v24 initWithDomain:v25 code:-1 userInfo:0];

    v19(0, v26);
  }

  else
  {
    v37 = *(v13 + 32);
    v37(v18, v11, v12);
    v27 = v38;
    (*(v6 + 104))(v8, *MEMORY[0x1E69D0538], v38);
    v28 = (*(v13 + 16))(v15, v18, v12);
    v29 = v41;
    v36 = (*((*MEMORY[0x1E69E7D40] & *v41) + 0xB8))(v28);
    type metadata accessor for ConversationContextUpdateMetadata(0);
    v30 = swift_allocObject();
    *(v30 + 16) = 0;
    (*(v6 + 32))(v30 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_requestType, v8, v27);
    *(v30 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_flowPluginInfo) = 0;
    v37((v30 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_currentUserId), v15, v12);
    *(v30 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_emptyServerContext) = v36 & 1;
    *(v30 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_meetsUserSessionThreshold) = 0;
    *(v30 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_meetsPersonalRequestThreshold) = 0;
    v31 = *(v39 + 16);
    v32 = type metadata accessor for UUID();
    memset(v44, 0, sizeof(v44));
    v45 = 0;
    v33 = v40;
    (*(*(v32 - 8) + 56))(v40, 1, 1, v32);
    v34 = *(*v31 + 296);

    v34(v29, 0, 0, 0, 0, v44, 0, v30, 0, 0, v33, 0, 0, v43, v42);

    outlined destroy of ReferenceResolutionClientProtocol?(v33, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    outlined destroy of ReferenceResolutionClientProtocol?(v44, &_s14SiriKitRuntime15ContextUpdating_pSgMd, &_s14SiriKitRuntime15ContextUpdating_pSgMR);
    (*(v13 + 8))(v18, v12);
  }
}

uint64_t NonRequestExecutionBridgeDelegate.close(withExecutionOutput:errorString:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logger.conversationBridge);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v15 = v12;
    *v11 = 136315138;
    *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, a3, &v15);
    _os_log_impl(&dword_1DC659000, v9, v10, "There was an error while running execution: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x1E12A2F50](v12, -1, -1);
    MEMORY[0x1E12A2F50](v11, -1, -1);
  }

  v13 = *(*v4 + 112);

  return v13(a1, destructiveProjectEnumData for AceServiceInvokerImpl.AceSubmitOptions, 0);
}

void NonRequestExecutionBridgeDelegate.close(withExecutionOutput:errorString:shouldFailRequest:)()
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
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000039, 0x80000001DCA7EC40, &v5);
    _os_log_impl(&dword_1DC659000, oslog, v1, "Ignoring %s outside of a request", v2, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v3);
    MEMORY[0x1E12A2F50](v3, -1, -1);
    MEMORY[0x1E12A2F50](v2, -1, -1);
  }
}

void NonRequestExecutionBridgeDelegate.fallbackToServer(forResultCandidateId:serverFallbackReason:)()
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
    _os_log_impl(&dword_1DC659000, oslog, v1, "Server-fallback not supported outside of a request", v2, 2u);
    MEMORY[0x1E12A2F50](v2, -1, -1);
  }
}

Swift::Void __swiftcall NonRequestExecutionBridgeDelegate.fallbackToInfoDomainResults(forResultCandidateId:)(Swift::String_optional forResultCandidateId)
{
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.conversationBridge);
  oslog = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1DC659000, oslog, v2, "Fallback to info domain not yet supported: Incomplete feature work", v3, 2u);
    MEMORY[0x1E12A2F50](v3, -1, -1);
  }
}

void NonRequestExecutionBridgeDelegate.fallbackToIntelligenceFlow(prescribedTool:)()
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
    _os_log_impl(&dword_1DC659000, oslog, v1, "Fallback to IntelligenceFlow not yet supported: Incomplete feature work", v2, 2u);
    MEMORY[0x1E12A2F50](v2, -1, -1);
  }
}

Swift::Void __swiftcall NonRequestExecutionBridgeDelegate.fallbackToPeer()()
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
    _os_log_impl(&dword_1DC659000, oslog, v1, "Fallback to Peer not yet supported: Incomplete feature work", v2, 2u);
    MEMORY[0x1E12A2F50](v2, -1, -1);
  }
}

void NonRequestExecutionBridgeDelegate.willRedirectToSiriX(rcId:context:)()
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
    _os_log_impl(&dword_1DC659000, oslog, v1, "Fallback to SiriX not supported outside of a request", v2, 2u);
    MEMORY[0x1E12A2F50](v2, -1, -1);
  }
}

uint64_t NonRequestExecutionBridgeDelegate.prepareForAudioHandoff(completion:)(uint64_t (*a1)(void))
{
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.conversationBridge);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1DC659000, v3, v4, "prepareForAudioHandoff not supported outside of a request", v5, 2u);
    MEMORY[0x1E12A2F50](v5, -1, -1);
  }

  return a1(0);
}

uint64_t NonRequestExecutionBridgeDelegate.prepareForAudioHandoffFailed(completion:)(uint64_t (*a1)(void))
{
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.conversationBridge);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1DC659000, v3, v4, "prepareForAudioHandoffFailed not supported outside of a request", v5, 2u);
    MEMORY[0x1E12A2F50](v5, -1, -1);
  }

  return a1();
}

uint64_t NonRequestExecutionBridgeDelegate.fetchContexts(for:includesNearByDevices:completion:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
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
    _os_log_impl(&dword_1DC659000, v5, v6, "fetchContext() not supported outside of a request", v7, 2u);
    MEMORY[0x1E12A2F50](v7, -1, -1);
  }

  return a3(0);
}

uint64_t NonRequestExecutionBridgeDelegate.fetchSpeechInfo(reply:)(uint64_t (*a1)(void))
{
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.conversationBridge);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v8 = v6;
    *v5 = 136315138;
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000017, 0x80000001DCA7EC80, &v8);
    _os_log_impl(&dword_1DC659000, v3, v4, "%s: There is no SpeechInfo outside of a request", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x1E12A2F50](v6, -1, -1);
    MEMORY[0x1E12A2F50](v5, -1, -1);
  }

  return a1(0);
}

void NonRequestExecutionBridgeDelegate.flowPluginWillExecute(flowPluginInfo:)()
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
    _os_log_impl(&dword_1DC659000, oslog, v1, "Ignoring FlowPluginInfo outside of a request", v2, 2u);
    MEMORY[0x1E12A2F50](v2, -1, -1);
  }
}

uint64_t NonRequestExecutionBridgeDelegate.acquireConversationUserInput(forUserId:requestId:reply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
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
    v10 = swift_slowAlloc();
    v12 = v10;
    *v9 = 136315138;
    *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000038, 0x80000001DCA7ECA0, &v12);
    _os_log_impl(&dword_1DC659000, v7, v8, "Ignoring %s outside of a request", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x1E12A2F50](v10, -1, -1);
    MEMORY[0x1E12A2F50](v9, -1, -1);
  }

  return a5(0);
}

uint64_t NonRequestExecutionBridgeDelegate.retriggerOriginalRequest(withExecutionRequestId:forUserId:givenCurrentExecutionRequestId:reply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void))
{
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logger.conversationBridge);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v14 = v12;
    *v11 = 136315138;
    *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000060, 0x80000001DCA7ECE0, &v14);
    _os_log_impl(&dword_1DC659000, v9, v10, "Ignoring %s outside of a request", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x1E12A2F50](v12, -1, -1);
    MEMORY[0x1E12A2F50](v11, -1, -1);
  }

  return a7(0);
}

Swift::Void __swiftcall NonRequestExecutionBridgeDelegate.closeServerRequest(forExecutionRequestId:)(Swift::String forExecutionRequestId)
{
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.conversationBridge);
  oslog = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v6 = v4;
    *v3 = 136315138;
    *(v3 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002ALL, 0x80000001DCA7ED50, &v6);
    _os_log_impl(&dword_1DC659000, oslog, v2, "Ignoring %s outside of a request", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v4);
    MEMORY[0x1E12A2F50](v4, -1, -1);
    MEMORY[0x1E12A2F50](v3, -1, -1);
  }
}

uint64_t NonRequestExecutionBridgeDelegate.fetchRecentDialogs(reply:)(uint64_t (*a1)(void))
{
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.conversationBridge);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v8 = v6;
    *v5 = 136315138;
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001ALL, 0x80000001DCA7ED80, &v8);
    _os_log_impl(&dword_1DC659000, v3, v4, "Ignoring %s outside of a request", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x1E12A2F50](v6, -1, -1);
    MEMORY[0x1E12A2F50](v5, -1, -1);
  }

  return a1(MEMORY[0x1E69E7CC0]);
}

Swift::Void __swiftcall NonRequestExecutionBridgeDelegate.actionCandidatesGenerated(_:rcId:)(Swift::OpaquePointer _, Swift::String rcId)
{
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.conversationBridge);
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v7 = v5;
    *v4 = 136315138;
    *(v4 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000022, 0x80000001DCA7EDA0, &v7);
    _os_log_impl(&dword_1DC659000, oslog, v3, "Ignoring %s outside of a request", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x1E12A2F50](v5, -1, -1);
    MEMORY[0x1E12A2F50](v4, -1, -1);
  }
}

void NonRequestExecutionBridgeDelegate.willExecute(executionInputInfo:)()
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
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000020, 0x80000001DCA7EDD0, &v5);
    _os_log_impl(&dword_1DC659000, oslog, v1, "Ignoring %s outside of a request", v2, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v3);
    MEMORY[0x1E12A2F50](v3, -1, -1);
    MEMORY[0x1E12A2F50](v2, -1, -1);
  }
}

uint64_t NonRequestExecutionBridgeDelegate.fetchSelfReflectionDecision(reply:)(uint64_t (*a1)(char *))
{
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.conversationBridge);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v8 = v6;
    *v5 = 136315138;
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000023, 0x80000001DCA7EE00, &v8);
    _os_log_impl(&dword_1DC659000, v3, v4, "Ignoring %s outside of a request", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x1E12A2F50](v6, -1, -1);
    MEMORY[0x1E12A2F50](v5, -1, -1);
  }

  v9 = 2;
  return a1(&v9);
}

void NonRequestExecutionBridgeDelegate.postToMessageBus(message:completion:)()
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
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000025, 0x80000001DCA7EE30, &v5);
    _os_log_impl(&dword_1DC659000, oslog, v1, "Ignoring %s outside of a request", v2, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v3);
    MEMORY[0x1E12A2F50](v3, -1, -1);
    MEMORY[0x1E12A2F50](v2, -1, -1);
  }
}

uint64_t NonRequestExecutionBridgeDelegate.deinit()
{

  outlined destroy of ReferenceResolutionClientProtocol?(v0 + OBJC_IVAR____TtC14SiriKitRuntime33NonRequestExecutionBridgeDelegate_userId, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t NonRequestExecutionBridgeDelegate.__deallocating_deinit()
{

  outlined destroy of ReferenceResolutionClientProtocol?(v0 + OBJC_IVAR____TtC14SiriKitRuntime33NonRequestExecutionBridgeDelegate_userId, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

unint64_t lazy protocol witness table accessor for type ConversationBridgeFeatureFlag and conformance ConversationBridgeFeatureFlag()
{
  result = lazy protocol witness table cache variable for type ConversationBridgeFeatureFlag and conformance ConversationBridgeFeatureFlag;
  if (!lazy protocol witness table cache variable for type ConversationBridgeFeatureFlag and conformance ConversationBridgeFeatureFlag)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConversationBridgeFeatureFlag and conformance ConversationBridgeFeatureFlag);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ConversationBridgeFeatureFlag and conformance ConversationBridgeFeatureFlag;
  if (!lazy protocol witness table cache variable for type ConversationBridgeFeatureFlag and conformance ConversationBridgeFeatureFlag)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConversationBridgeFeatureFlag and conformance ConversationBridgeFeatureFlag);
  }

  return result;
}

void specialized static ConversationBridge.sendShowRequestHandlingStatus(withStatus:serviceHelper:requestId:completion:)(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v34 = a6;
  v35 = a7;
  v36 = a3;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [objc_allocWithZone(MEMORY[0x1E69C7BB8]) init];
  UUID.init()();
  v16 = UUID.uuidString.getter();
  v18 = v17;
  (*(v12 + 8))(v14, v11);
  v19 = MEMORY[0x1E12A1410](v16, v18);

  [v15 setAceId_];

  v20 = v15;
  if (a5)
  {
    v21 = MEMORY[0x1E12A1410](a4, a5);
  }

  else
  {
    v21 = 0;
  }

  [v15 setRefId_];

  v22 = MEMORY[0x1E12A1410](a1, a2);
  [v15 setRequestHandlingStatus_];

  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  __swift_project_value_buffer(v23, static Logger.conversationBridge);

  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    aBlock[0] = v27;
    *v26 = 136315138;
    *(v26 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, aBlock);
    _os_log_impl(&dword_1DC659000, v24, v25, "Sending ShowRequestHandlingStatus with status: %s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v27);
    MEMORY[0x1E12A2F50](v27, -1, -1);
    MEMORY[0x1E12A2F50](v26, -1, -1);
  }

  v28 = swift_allocObject();
  v30 = v34;
  v29 = v35;
  v28[2] = v15;
  v28[3] = v30;
  v28[4] = v29;
  aBlock[4] = partial apply for closure #1 in static ConversationBridge.sendShowRequestHandlingStatus(withStatus:serviceHelper:requestId:completion:);
  aBlock[5] = v28;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed SABaseCommand?, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_2;
  v31 = _Block_copy(aBlock);
  v32 = v15;
  sub_1DC680C50(v30);

  [v36 handleCommand:v32 completion:v31];
  _Block_release(v31);
}

Swift::Int _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

void *specialized ConversationBridge.init(name:messagePublisher:serviceHelper:conversationSessionsManaging:rrClient:featureChecker:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, void *a8)
{
  v109 = a6;
  v112 = a4;
  v111 = a3;
  v102 = a2;
  v101 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v107 = &v93 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8Dispatch0A12TimeIntervalOSgMd, &_s8Dispatch0A12TimeIntervalOSgMR);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = (&v93 - v14);
  v99 = type metadata accessor for DispatchTimeInterval();
  v98 = *(v99 - 8);
  MEMORY[0x1EEE9AC00](v99);
  v96 = (&v93 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v103 = type metadata accessor for Logger();
  v114 = *(v103 - 8);
  MEMORY[0x1EEE9AC00](v103);
  v100 = &v93 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v113 = &v93 - v19;
  v106 = type metadata accessor for OSSignpostID();
  v105 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106);
  v108 = &v93 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for FeatureChecker();
  v121[3] = v21;
  v121[4] = &protocol witness table for FeatureChecker;
  v104 = a7;
  v121[0] = a7;
  v22 = (a8 + direct field offset for ConversationBridge.contextDonator);
  if (one-time initialization token for sharedInstance != -1)
  {
    swift_once();
  }

  v97 = v15;
  v110 = a5;
  v23 = static DeviceContextHelper.sharedInstance;
  v22[3] = type metadata accessor for DeviceContextHelper();
  v22[4] = &protocol witness table for DeviceContextHelper;
  *v22 = v23;
  *(a8 + direct field offset for ConversationBridge.runSiriKitExecutorProcessor) = 0;
  *(a8 + direct field offset for ConversationBridge.isFirstRequestInSession) = 1;
  v24 = a8 + direct field offset for ConversationBridge.$__lazy_storage_$_executionClient;
  *v24 = 0u;
  *(v24 + 1) = 0u;
  *(v24 + 4) = 0;
  *(a8 + direct field offset for ConversationBridge.$__lazy_storage_$_nonRequestBridgePublisher) = 0;
  v25 = a8 + direct field offset for ConversationBridge.rraasClient;
  *v25 = 0u;
  *(v25 + 1) = 0u;
  *(v25 + 4) = 0;
  v26 = a8 + direct field offset for ConversationBridge.correctionsPlatformClient;
  *v26 = 0u;
  *(v26 + 1) = 0u;
  *(v26 + 4) = 0;
  *(a8 + direct field offset for ConversationBridge.networkAvailabilityProvider) = 0;
  *(a8 + direct field offset for ConversationBridge.coreTelephonyServiceProvider) = 0;
  v27 = direct field offset for ConversationBridge.currentSessionId;
  v28 = type metadata accessor for UUID();
  (*(*(v28 - 8) + 56))(a8 + v27, 1, 1, v28);
  v29 = direct field offset for ConversationBridge.sessionConfiguration;
  v30 = type metadata accessor for SessionConfiguration();
  (*(*(v30 - 8) + 56))(a8 + v29, 1, 1, v30);
  v31 = a8 + direct field offset for ConversationBridge.sessionState;
  *v31 = 0u;
  *(v31 + 1) = 0u;
  *(v31 + 4) = 0;
  v32 = direct field offset for ConversationBridge.sessionUserId;
  v33 = type metadata accessor for UserID();
  (*(*(v33 - 8) + 56))(a8 + v32, 1, 1, v33);
  v34 = direct field offset for ConversationBridge.isMUXEnabled;

  *(a8 + v34) = AFDeviceSupportsSiriMUX();
  *(a8 + direct field offset for ConversationBridge.isSystemAssistantExperienceEnabled) = 2;
  *(a8 + direct field offset for ConversationBridge.muxContextMessage) = 0;
  v35 = direct field offset for ConversationBridge.userSessionState;
  v36 = *MEMORY[0x1E69D06E8];
  v37 = type metadata accessor for UserSessionState();
  (*(*(v37 - 8) + 104))(a8 + v35, v36, v37);
  if (one-time initialization token for sharedInstance != -1)
  {
    swift_once();
  }

  v38 = direct field offset for ConversationBridge.instrumentationUtil;
  *(a8 + direct field offset for ConversationBridge.instrumentationUtil) = static ConversationBridgeInstrumentationUtil.sharedInstance;
  outlined init with copy of ReferenceResolutionClientProtocol(v121, a8 + direct field offset for ConversationBridge.featureChecker);
  v39 = one-time initialization token for executor;

  if (v39 != -1)
  {
    swift_once();
  }

  v40 = static Log.executor;
  v41 = v108;
  OSSignpostID.init(log:)();
  v42 = static os_signpost_type_t.begin.getter();
  v43 = MEMORY[0x1E69E7CC0];
  v95 = v40;
  os_signpost(_:dso:log:name:signpostID:_:_:)(v42, &dword_1DC659000, v40, "ExecutionBridgeInit", 19, 2, v41, "enableTelemetry=YES", 19, 2, MEMORY[0x1E69E7CC0]);
  swift_beginAccess();
  LOBYTE(v40) = *(a8 + v34);
  v44 = v111;
  outlined init with copy of ReferenceResolutionClientProtocol(v111, &v120);
  v45 = swift_allocObject();
  v46 = v112;
  swift_unknownObjectRetain();
  *(v45 + 16) = AFDeviceSupportsSAEByDeviceCapabilityAndFeatureFlags();
  v118 = &type metadata for IntelligenceFlowFeatureFlag;
  v119 = lazy protocol witness table accessor for type IntelligenceFlowFeatureFlag and conformance IntelligenceFlowFeatureFlag();
  v47 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_1Tm(&v117);
  *(v45 + 17) = v47 & 1;
  type metadata accessor for ConversationOutputSubmitter();
  v48 = swift_allocObject();
  v118 = v21;
  v119 = &protocol witness table for FeatureChecker;
  *&v117 = v45;
  type metadata accessor for ConcurrentTaskPool();
  v49 = swift_allocObject();
  *(v49 + 16) = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v50 = swift_allocObject();
  *(v50 + 16) = 0;
  *(v49 + 24) = v50;
  *(v48 + 16) = v49;
  *(v48 + 88) = 0;
  *(v48 + 80) = 0;
  *(v48 + 96) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_ySo13SABaseCommandCSg_s5Error_pSgt14SiriKitRuntime15MessageBusActorCYccTt0g5Tf4g_n(v43);
  *(v48 + 104) = 30000000000;
  *(v48 + 24) = v46;
  *(v48 + 72) = v40;
  swift_beginAccess();
  v51 = *(v48 + 80);
  *(v48 + 80) = 0;

  outlined init with take of ReferenceResolutionClientProtocol(&v120, v48 + 32);
  outlined init with take of ReferenceResolutionClientProtocol(&v117, v48 + 112);
  v52 = direct field offset for ConversationBridge.executionOutputSubmitter;
  *(a8 + direct field offset for ConversationBridge.executionOutputSubmitter) = v48;
  type metadata accessor for PreExecutionDecisionMaker();
  *(a8 + direct field offset for ConversationBridge.decisionMaker) = swift_allocObject();
  v53 = [objc_opt_self() sharedPreferences];
  v54 = type metadata accessor for PreExecutionActionHandler();
  ObjectType = swift_getObjectType();
  v56 = *(a8 + v38);
  v57 = *(a8 + v52);
  type metadata accessor for PreExecutionDialogHandler();
  v58 = swift_allocObject();
  *(v58 + 16) = v57;
  *(v58 + 24) = v53;
  swift_retain_n();
  v59 = v53;
  swift_unknownObjectRetain();
  v60 = v59;

  v94 = v60;
  *(a8 + direct field offset for ConversationBridge.preExecutionActionHandler) = specialized PreExecutionActionHandler.__allocating_init(serviceHelper:instrumentationUtil:executionOutputSubmitter:preferences:dialogHandler:)(v46, v56, v57, v60, v58, v54, ObjectType);
  v61 = a8 + direct field offset for ConversationBridge.overrideExecutionClient;
  *v61 = 0u;
  *(v61 + 1) = 0u;
  *(v61 + 4) = 0;
  swift_beginAccess();
  outlined assign with copy of ReferenceResolutionClientProtocol?(v109, v25, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMd, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMR);
  swift_endAccess();
  type metadata accessor for RecentDialogTracker(0);
  swift_allocObject();
  *(a8 + direct field offset for ConversationBridge.recentDialogTracker) = RecentDialogTracker.init(timeProvider:)(closure #1 in RecentDialogTracker.init(), 0);
  outlined init with copy of ReferenceResolutionClientProtocol(v44, &v120);
  outlined init with copy of ReferenceResolutionClientProtocol(v110, &v117);
  v62 = one-time initialization token for conversationBridge;
  swift_unknownObjectRetain();
  if (v62 != -1)
  {
    swift_once();
  }

  v63 = v103;
  v64 = __swift_project_value_buffer(v103, static Logger.conversationBridge);
  v65 = *(v114 + 16);
  v65(v113, v64, v63);
  *(a8 + direct field offset for ConversationRequestAwareBridgeBase.currentRequestProcessor) = 0;
  *(a8 + direct field offset for ConversationRequestAwareBridgeBase.candidateRequestProcessors) = MEMORY[0x1E69E7CC8];
  v66 = direct field offset for ConversationRequestAwareBridgeBase.requestMessagesHandledByBridgeBase;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCySay16SiriMessageTypes07RequestD4BaseCmGSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCySay16SiriMessageTypes07RequestD4BaseCmGSo16os_unfair_lock_sVGMR);
  v67 = swift_allocObject();
  *(v67 + 24) = 0;
  *(v67 + 16) = MEMORY[0x1E69E7CC0];
  *(a8 + v66) = v67;
  v68 = direct field offset for ConversationRequestAwareBridgeBase.hasRegisteredToAnyStartRequest;
  *(a8 + direct field offset for ConversationRequestAwareBridgeBase.hasRegisteredToAnyStartRequest) = 0;
  v69 = &unk_1EE14F000;
  *(a8 + direct field offset for ConversationRequestAwareBridgeBase.hasAutoRegisteredStartRequestMessageBase) = 1;
  *(a8 + v68) = 1;
  v70 = v97;
  static ConversationRequestAwareBridgeBase.readPreviousProcessorTimeoutFromDefault()(v97);
  v71 = v98;
  v72 = *(v98 + 48);
  v73 = v99;
  if (v72(v70, 1, v99) == 1)
  {
    v74 = v96;
    *v96 = 500;
    (*(v71 + 104))(v74, *MEMORY[0x1E69E7F38], v73);
    v75 = v74;
    v69 = &unk_1EE14F000;
    if (v72(v70, 1, v73) != 1)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(v70, &_s8Dispatch0A12TimeIntervalOSgMd, &_s8Dispatch0A12TimeIntervalOSgMR);
    }
  }

  else
  {
    v75 = v96;
    (*(v71 + 32))(v96, v70, v73);
  }

  (*(v71 + 32))(a8 + direct field offset for ConversationRequestAwareBridgeBase.previousProcessorTimeout, v75, v73);
  outlined init with copy of ReferenceResolutionClientProtocol(&v120, v116);
  outlined init with copy of ReferenceResolutionClientProtocol(&v117, v115);
  v76 = v100;
  v65(v100, v113, v63);
  v77 = v112;
  swift_unknownObjectRetain();
  v78 = MEMORY[0x1E69E7CC0];
  a8[15] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_14SiriKitRuntime40ConversationMessageDispatchingBridgeBaseC0g7HandlerJ0CyAC0fI0C_GTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  a8[16] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_14SiriKitRuntime40ConversationMessageDispatchingBridgeBaseC0g7HandlerJ0CyAC0fI0C_GTt0g5Tf4g_n(v78);
  a8[17] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SDySS14SiriKitRuntime40ConversationMessageDispatchingBridgeBaseC014CommandHandlerJ0CyAC0fI0C_GGTt0g5Tf4g_n(v78);
  v79 = v102;
  a8[2] = v101;
  a8[3] = v79;
  outlined init with take of ReferenceResolutionClientProtocol(v116, (a8 + 4));
  a8[9] = v77;
  outlined init with take of ReferenceResolutionClientProtocol(v115, (a8 + 10));
  (*(v114 + 32))(a8 + direct field offset for ConversationMessageDispatchingBridgeBase.logger, v76, v63);
  if (*(a8 + v69[341]) == 1)
  {
    v80 = *(*a8 + 464);
    started = type metadata accessor for StartRequestMessageBase();

    v80(specialized closure #1 in ConversationRequestAwareBridgeBase.registerMessages(), 0, started);
  }

  else
  {
  }

  v82 = *(*a8 + 464);
  v83 = type metadata accessor for EndRequestMessageBase();
  v82(specialized closure #2 in ConversationRequestAwareBridgeBase.registerMessages(), 0, v83);
  swift_unknownObjectRelease();

  (*(v114 + 8))(v113, v63);
  __swift_destroy_boxed_opaque_existential_1Tm(&v117);
  __swift_destroy_boxed_opaque_existential_1Tm(&v120);
  v84 = *(v104 + 16);

  ConversationBridge.registerAllHandlers(isSystemAssistantExperienceSupported:)(v84);
  v85 = type metadata accessor for TaskPriority();
  v86 = v107;
  (*(*(v85 - 8) + 56))(v107, 1, 1, v85);
  v87 = one-time initialization token for shared;

  if (v87 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v88 = static MessageBusActor.shared;
  v89 = lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type MessageBusActor and conformance MessageBusActor, 255, type metadata accessor for MessageBusActor, &protocol conformance descriptor for MessageBusActor);
  v90 = swift_allocObject();
  v90[2] = v88;
  v90[3] = v89;
  v90[4] = a8;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v86, &closure #1 in ConversationBridge.asyncInit()partial apply, v90);

  static os_signpost_type_t.end.getter();
  v91 = v108;
  os_signpost(_:dso:log:name:signpostID:)();

  outlined destroy of ReferenceResolutionClientProtocol?(v109, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMd, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMR);
  __swift_destroy_boxed_opaque_existential_1Tm(v110);
  __swift_destroy_boxed_opaque_existential_1Tm(v111);
  (*(v105 + 8))(v91, v106);
  __swift_destroy_boxed_opaque_existential_1Tm(v121);
  return a8;
}

void *specialized ConversationBridge.init(name:messagePublisher:serviceHelper:conversationSessionsManaging:rrClient:featureChecker:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10)
{
  v120 = a6;
  v121 = a5;
  v122 = a4;
  v119 = a3;
  v111 = a2;
  v110 = a1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v118 = &v101 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8Dispatch0A12TimeIntervalOSgMd, &_s8Dispatch0A12TimeIntervalOSgMR);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = (&v101 - v15);
  v17 = type metadata accessor for DispatchTimeInterval();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v104 = (&v101 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v112 = type metadata accessor for Logger();
  v124 = *(v112 - 8);
  MEMORY[0x1EEE9AC00](v112);
  v108 = &v101 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v123 = &v101 - v22;
  v117 = type metadata accessor for OSSignpostID();
  v116 = *(v117 - 8);
  MEMORY[0x1EEE9AC00](v117);
  v24 = &v101 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131[3] = a9;
  v131[4] = a10;
  v114 = a10;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v131);
  v26 = *(*(a9 - 8) + 32);
  v109 = boxed_opaque_existential_0;
  v113 = a9;
  v26(boxed_opaque_existential_0, a7, a9);
  v27 = (a8 + direct field offset for ConversationBridge.contextDonator);
  if (one-time initialization token for sharedInstance != -1)
  {
    swift_once();
  }

  v106 = v18;
  v107 = v17;
  v28 = static DeviceContextHelper.sharedInstance;
  v27[3] = type metadata accessor for DeviceContextHelper();
  v27[4] = &protocol witness table for DeviceContextHelper;
  *v27 = v28;
  *(a8 + direct field offset for ConversationBridge.runSiriKitExecutorProcessor) = 0;
  *(a8 + direct field offset for ConversationBridge.isFirstRequestInSession) = 1;
  v29 = a8 + direct field offset for ConversationBridge.$__lazy_storage_$_executionClient;
  *v29 = 0u;
  *(v29 + 1) = 0u;
  *(v29 + 4) = 0;
  *(a8 + direct field offset for ConversationBridge.$__lazy_storage_$_nonRequestBridgePublisher) = 0;
  v30 = a8 + direct field offset for ConversationBridge.rraasClient;
  *v30 = 0u;
  *(v30 + 1) = 0u;
  *(v30 + 4) = 0;
  v31 = a8 + direct field offset for ConversationBridge.correctionsPlatformClient;
  *v31 = 0u;
  *(v31 + 1) = 0u;
  *(v31 + 4) = 0;
  *(a8 + direct field offset for ConversationBridge.networkAvailabilityProvider) = 0;
  *(a8 + direct field offset for ConversationBridge.coreTelephonyServiceProvider) = 0;
  v32 = direct field offset for ConversationBridge.currentSessionId;
  v33 = type metadata accessor for UUID();
  (*(*(v33 - 8) + 56))(a8 + v32, 1, 1, v33);
  v34 = direct field offset for ConversationBridge.sessionConfiguration;
  v35 = type metadata accessor for SessionConfiguration();
  (*(*(v35 - 8) + 56))(a8 + v34, 1, 1, v35);
  v36 = a8 + direct field offset for ConversationBridge.sessionState;
  *v36 = 0u;
  *(v36 + 1) = 0u;
  *(v36 + 4) = 0;
  v37 = direct field offset for ConversationBridge.sessionUserId;
  v38 = type metadata accessor for UserID();
  (*(*(v38 - 8) + 56))(a8 + v37, 1, 1, v38);
  v39 = direct field offset for ConversationBridge.isMUXEnabled;

  *(a8 + v39) = AFDeviceSupportsSiriMUX();
  *(a8 + direct field offset for ConversationBridge.isSystemAssistantExperienceEnabled) = 2;
  *(a8 + direct field offset for ConversationBridge.muxContextMessage) = 0;
  v40 = direct field offset for ConversationBridge.userSessionState;
  v41 = *MEMORY[0x1E69D06E8];
  v42 = type metadata accessor for UserSessionState();
  (*(*(v42 - 8) + 104))(a8 + v40, v41, v42);
  if (one-time initialization token for sharedInstance != -1)
  {
    swift_once();
  }

  v105 = v16;
  v43 = direct field offset for ConversationBridge.instrumentationUtil;
  *(a8 + direct field offset for ConversationBridge.instrumentationUtil) = static ConversationBridgeInstrumentationUtil.sharedInstance;
  outlined init with copy of ReferenceResolutionClientProtocol(v131, a8 + direct field offset for ConversationBridge.featureChecker);
  v44 = one-time initialization token for executor;

  if (v44 != -1)
  {
    swift_once();
  }

  v45 = static Log.executor;
  OSSignpostID.init(log:)();
  v46 = static os_signpost_type_t.begin.getter();
  v47 = MEMORY[0x1E69E7CC0];
  v103 = v45;
  v115 = v24;
  os_signpost(_:dso:log:name:signpostID:_:_:)(v46, &dword_1DC659000, v45, "ExecutionBridgeInit", 19, 2, v24, "enableTelemetry=YES", 19, 2, MEMORY[0x1E69E7CC0]);
  swift_beginAccess();
  v48 = *(a8 + v39);
  v49 = v119;
  outlined init with copy of ReferenceResolutionClientProtocol(v119, &v130);
  v50 = type metadata accessor for FeatureChecker();
  v51 = swift_allocObject();
  v52 = v122;
  swift_unknownObjectRetain();
  *(v51 + 16) = AFDeviceSupportsSAEByDeviceCapabilityAndFeatureFlags();
  v128 = &type metadata for IntelligenceFlowFeatureFlag;
  v129 = lazy protocol witness table accessor for type IntelligenceFlowFeatureFlag and conformance IntelligenceFlowFeatureFlag();
  v53 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_1Tm(&v127);
  *(v51 + 17) = v53 & 1;
  type metadata accessor for ConversationOutputSubmitter();
  v54 = swift_allocObject();
  v128 = v50;
  v129 = &protocol witness table for FeatureChecker;
  *&v127 = v51;
  type metadata accessor for ConcurrentTaskPool();
  v55 = swift_allocObject();
  *(v55 + 16) = v47;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v56 = swift_allocObject();
  *(v56 + 16) = 0;
  *(v55 + 24) = v56;
  *(v54 + 16) = v55;
  *(v54 + 88) = 0;
  *(v54 + 80) = 0;
  *(v54 + 96) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_ySo13SABaseCommandCSg_s5Error_pSgt14SiriKitRuntime15MessageBusActorCYccTt0g5Tf4g_n(v47);
  *(v54 + 104) = 30000000000;
  *(v54 + 24) = v52;
  *(v54 + 72) = v48;
  swift_beginAccess();
  v57 = *(v54 + 80);
  *(v54 + 80) = 0;

  outlined init with take of ReferenceResolutionClientProtocol(&v130, v54 + 32);
  outlined init with take of ReferenceResolutionClientProtocol(&v127, v54 + 112);
  v58 = direct field offset for ConversationBridge.executionOutputSubmitter;
  *(a8 + direct field offset for ConversationBridge.executionOutputSubmitter) = v54;
  type metadata accessor for PreExecutionDecisionMaker();
  *(a8 + direct field offset for ConversationBridge.decisionMaker) = swift_allocObject();
  v59 = [objc_opt_self() sharedPreferences];
  v60 = type metadata accessor for PreExecutionActionHandler();
  ObjectType = swift_getObjectType();
  v62 = *(a8 + v43);
  v63 = *(a8 + v58);
  type metadata accessor for PreExecutionDialogHandler();
  v64 = swift_allocObject();
  *(v64 + 16) = v63;
  *(v64 + 24) = v59;
  swift_retain_n();
  v65 = v59;
  swift_unknownObjectRetain();
  v66 = v65;

  v102 = v66;
  *(a8 + direct field offset for ConversationBridge.preExecutionActionHandler) = specialized PreExecutionActionHandler.__allocating_init(serviceHelper:instrumentationUtil:executionOutputSubmitter:preferences:dialogHandler:)(v52, v62, v63, v66, v64, v60, ObjectType);
  v67 = a8 + direct field offset for ConversationBridge.overrideExecutionClient;
  *v67 = 0u;
  *(v67 + 1) = 0u;
  *(v67 + 4) = 0;
  swift_beginAccess();
  outlined assign with copy of ReferenceResolutionClientProtocol?(v120, v30, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMd, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMR);
  swift_endAccess();
  type metadata accessor for RecentDialogTracker(0);
  swift_allocObject();
  *(a8 + direct field offset for ConversationBridge.recentDialogTracker) = RecentDialogTracker.init(timeProvider:)(closure #1 in RecentDialogTracker.init(), 0);
  outlined init with copy of ReferenceResolutionClientProtocol(v49, &v130);
  outlined init with copy of ReferenceResolutionClientProtocol(v121, &v127);
  v68 = one-time initialization token for conversationBridge;
  swift_unknownObjectRetain();
  if (v68 != -1)
  {
    swift_once();
  }

  v69 = v112;
  v70 = __swift_project_value_buffer(v112, static Logger.conversationBridge);
  v71 = *(v124 + 16);
  v71(v123, v70, v69);
  *(a8 + direct field offset for ConversationRequestAwareBridgeBase.currentRequestProcessor) = 0;
  *(a8 + direct field offset for ConversationRequestAwareBridgeBase.candidateRequestProcessors) = MEMORY[0x1E69E7CC8];
  v72 = direct field offset for ConversationRequestAwareBridgeBase.requestMessagesHandledByBridgeBase;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCySay16SiriMessageTypes07RequestD4BaseCmGSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCySay16SiriMessageTypes07RequestD4BaseCmGSo16os_unfair_lock_sVGMR);
  v73 = swift_allocObject();
  *(v73 + 24) = 0;
  *(v73 + 16) = MEMORY[0x1E69E7CC0];
  *(a8 + v72) = v73;
  v74 = direct field offset for ConversationRequestAwareBridgeBase.hasRegisteredToAnyStartRequest;
  *(a8 + direct field offset for ConversationRequestAwareBridgeBase.hasRegisteredToAnyStartRequest) = 0;
  v75 = &unk_1EE14F000;
  *(a8 + direct field offset for ConversationRequestAwareBridgeBase.hasAutoRegisteredStartRequestMessageBase) = 1;
  *(a8 + v74) = 1;
  v76 = v105;
  static ConversationRequestAwareBridgeBase.readPreviousProcessorTimeoutFromDefault()(v105);
  v77 = v106;
  v78 = *(v106 + 48);
  v79 = v107;
  if (v78(v76, 1, v107) == 1)
  {
    v80 = v104;
    *v104 = 500;
    (*(v77 + 104))(v80, *MEMORY[0x1E69E7F38], v79);
    v81 = v80;
    v75 = &unk_1EE14F000;
    if (v78(v76, 1, v79) != 1)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(v76, &_s8Dispatch0A12TimeIntervalOSgMd, &_s8Dispatch0A12TimeIntervalOSgMR);
    }
  }

  else
  {
    v81 = v104;
    (*(v77 + 32))(v104, v76, v79);
  }

  (*(v77 + 32))(a8 + direct field offset for ConversationRequestAwareBridgeBase.previousProcessorTimeout, v81, v79);
  outlined init with copy of ReferenceResolutionClientProtocol(&v130, v126);
  outlined init with copy of ReferenceResolutionClientProtocol(&v127, v125);
  v82 = v108;
  v71(v108, v123, v69);
  v83 = v122;
  swift_unknownObjectRetain();
  v84 = MEMORY[0x1E69E7CC0];
  a8[15] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_14SiriKitRuntime40ConversationMessageDispatchingBridgeBaseC0g7HandlerJ0CyAC0fI0C_GTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  a8[16] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_14SiriKitRuntime40ConversationMessageDispatchingBridgeBaseC0g7HandlerJ0CyAC0fI0C_GTt0g5Tf4g_n(v84);
  a8[17] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SDySS14SiriKitRuntime40ConversationMessageDispatchingBridgeBaseC014CommandHandlerJ0CyAC0fI0C_GGTt0g5Tf4g_n(v84);
  v85 = v111;
  a8[2] = v110;
  a8[3] = v85;
  outlined init with take of ReferenceResolutionClientProtocol(v126, (a8 + 4));
  a8[9] = v83;
  outlined init with take of ReferenceResolutionClientProtocol(v125, (a8 + 10));
  (*(v124 + 32))(a8 + direct field offset for ConversationMessageDispatchingBridgeBase.logger, v82, v69);
  if (*(a8 + v75[341]) == 1)
  {
    v86 = *(*a8 + 464);
    started = type metadata accessor for StartRequestMessageBase();

    v86(specialized closure #1 in ConversationRequestAwareBridgeBase.registerMessages(), 0, started);
  }

  else
  {
  }

  v88 = *(*a8 + 464);
  v89 = type metadata accessor for EndRequestMessageBase();
  v88(specialized closure #2 in ConversationRequestAwareBridgeBase.registerMessages(), 0, v89);
  swift_unknownObjectRelease();

  (*(v124 + 8))(v123, v69);
  __swift_destroy_boxed_opaque_existential_1Tm(&v127);
  __swift_destroy_boxed_opaque_existential_1Tm(&v130);
  v90 = v114;
  v91 = *(v114 + 8);

  v92 = v91(v113, v90);
  ConversationBridge.registerAllHandlers(isSystemAssistantExperienceSupported:)(v92 & 1);
  v93 = type metadata accessor for TaskPriority();
  v94 = v118;
  (*(*(v93 - 8) + 56))(v118, 1, 1, v93);
  v95 = one-time initialization token for shared;

  if (v95 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v96 = static MessageBusActor.shared;
  v97 = lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type MessageBusActor and conformance MessageBusActor, 255, type metadata accessor for MessageBusActor, &protocol conformance descriptor for MessageBusActor);
  v98 = swift_allocObject();
  v98[2] = v96;
  v98[3] = v97;
  v98[4] = a8;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v94, &async function pointer to partial apply for closure #1 in ConversationBridge.asyncInit(), v98);

  static os_signpost_type_t.end.getter();
  v99 = v115;
  os_signpost(_:dso:log:name:signpostID:)();

  outlined destroy of ReferenceResolutionClientProtocol?(v120, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMd, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMR);
  __swift_destroy_boxed_opaque_existential_1Tm(v121);
  __swift_destroy_boxed_opaque_existential_1Tm(v119);
  (*(v116 + 8))(v99, v117);
  __swift_destroy_boxed_opaque_existential_1Tm(v131);
  return a8;
}

void *specialized ConversationBridge.__allocating_init(name:messagePublisher:serviceHelper:conversationSessionsManaging:rrClient:featureChecker:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v20 = a5;
  v21 = a6;
  v15 = *(a9 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v17 = &v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ConversationBridge(0);
  v18 = swift_allocObject();
  (*(v15 + 16))(v17, a7, a9);
  return specialized ConversationBridge.init(name:messagePublisher:serviceHelper:conversationSessionsManaging:rrClient:featureChecker:)(a1, a2, a3, a4, v20, v21, v17, v18, a9, a10);
}

uint64_t partial apply for closure #1 in ConversationBridgeSPI.handle(_:executionContextInfo:reply:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in ConversationBridgeSPI.handle(_:executionContextInfo:reply:)(v2, v3, v4, v5, v6);
}

uint64_t outlined init with take of UserID?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void type metadata completion function for ConversationBridge(uint64_t a1)
{
  _s10Foundation4UUIDVSgMaTm_0(319, &lazy cache variable for type metadata for UUID?, MEMORY[0x1E69695A8]);
  if (v1 <= 0x3F)
  {
    _s10Foundation4UUIDVSgMaTm_0(319, &lazy cache variable for type metadata for SessionConfiguration?, MEMORY[0x1E69D07A0]);
    if (v2 <= 0x3F)
    {
      _s10Foundation4UUIDVSgMaTm_0(319, &lazy cache variable for type metadata for UserID?, MEMORY[0x1E69D08C8]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for UserSessionState();
        if (v4 <= 0x3F)
        {
          swift_initClassMetadata2();
        }
      }
    }
  }
}

void _s10Foundation4UUIDVSgMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

void type metadata completion function for NonRequestExecutionBridgeDelegate(uint64_t a1)
{
  _s10Foundation4UUIDVSgMaTm_0(319, &lazy cache variable for type metadata for UserID?, MEMORY[0x1E69D08C8]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

unint64_t _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC14SiriKitRuntime24RemoteConversationClientC_Tt0g5Tf4g_n(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    result = __CocoaSet.count.getter();
    if (result)
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy14SiriKitRuntime24RemoteConversationClientCGMd, &_ss11_SetStorageCy14SiriKitRuntime24RemoteConversationClientCGMR);
      result = static _SetStorage.allocate(capacity:)();
      v3 = result;
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x1E69E7CD0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (!v2)
  {
LABEL_4:
    v5 = *(v4 + 16);
    if (!v5)
    {
      return v3;
    }

    goto LABEL_9;
  }

LABEL_8:
  result = __CocoaSet.count.getter();
  v5 = result;
  if (!result)
  {
    return v3;
  }

LABEL_9:
  v6 = v3 + 56;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
LABEL_12:
    while (1)
    {
      result = MEMORY[0x1E12A1FE0](v7, v1);
      v8 = __OFADD__(v7++, 1);
      if (v8)
      {
        break;
      }

      v9 = result;
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v10 = ~(-1 << *(v3 + 32));
      for (i = result & v10; ; i = (i + 1) & v10)
      {
        v12 = *(v6 + 8 * (i >> 6));
        if (((1 << i) & v12) == 0)
        {
          break;
        }

        v13 = *(*(v3 + 48) + 8 * i);
        if (*(v13 + 112) != *(v9 + 112) || *(v13 + 120) != *(v9 + 120))
        {
          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        swift_unknownObjectRelease();
        if (v7 == v5)
        {
          return v3;
        }

        goto LABEL_12;
      }

      *(v6 + 8 * (i >> 6)) = (1 << i) | v12;
      *(*(v3 + 48) + 8 * i) = v9;
      v15 = *(v3 + 16);
      v8 = __OFADD__(v15, 1);
      v16 = v15 + 1;
      if (v8)
      {
        goto LABEL_40;
      }

      *(v3 + 16) = v16;
      if (v7 == v5)
      {
        return v3;
      }
    }

    __break(1u);
  }

  else
  {
    v17 = 0;
    v18 = v1 + 32;
    v19 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v17 != v19)
    {
      v20 = *(v18 + 8 * v17);
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v21 = ~(-1 << *(v3 + 32));
      for (j = result & v21; ; j = (j + 1) & v21)
      {
        v23 = *(v6 + 8 * (j >> 6));
        if (((1 << j) & v23) == 0)
        {
          break;
        }

        v24 = *(*(v3 + 48) + 8 * j);
        if (*(v24 + 112) != *(v20 + 112) || *(v24 + 120) != *(v20 + 120))
        {
          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_26;
      }

      *(v6 + 8 * (j >> 6)) = (1 << j) | v23;
      *(*(v3 + 48) + 8 * j) = v20;
      v26 = *(v3 + 16);
      v8 = __OFADD__(v26, 1);
      v27 = v26 + 1;
      if (v8)
      {
        goto LABEL_41;
      }

      *(v3 + 16) = v27;
LABEL_26:
      if (++v17 == v5)
      {
        return v3;
      }
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
  return result;
}

uint64_t _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC12SiriNLUTypes0E20_Nlu_External_ParserV0I10IdentifierO_Tt0g5Tf4g_n(uint64_t a1)
{
  v2 = type metadata accessor for Siri_Nlu_External_Parser.ParserIdentifier();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy12SiriNLUTypes0C20_Nlu_External_ParserV0G10IdentifierOGMd, &_ss11_SetStorageCy12SiriNLUTypes0C20_Nlu_External_ParserV0G10IdentifierOGMR);
    v9 = static _SetStorage.allocate(capacity:)();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type Siri_Nlu_External_Parser.ParserIdentifier and conformance Siri_Nlu_External_Parser.ParserIdentifier, 255, MEMORY[0x1E69D0990], MEMORY[0x1E69D0998]);
      v16 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v5, *(v9 + 48) + v18 * v14, v2);
          lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type Siri_Nlu_External_Parser.ParserIdentifier and conformance Siri_Nlu_External_Parser.ParserIdentifier, 255, MEMORY[0x1E69D0990], MEMORY[0x1E69D09A0]);
          v23 = dispatch thunk of static Equatable.== infix(_:_:)();
          v24 = *v15;
          (*v15)(v5, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t partial apply for specialized closure #1 in ConversationRequestAwareBridgeBase.registerMessageHandler<A>(_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in ConversationRequestAwareBridgeBase.registerMessageHandler<A>(_:)(a1, v4, v5, v6);
}

uint64_t partial apply for closure #1 in ConversationBridge.asyncInit()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in ConversationBridge.asyncInit()(a1, v4, v5, v6);
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in ConversationBridge.executionClient.getter(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in closure #1 in closure #1 in ConversationBridge.executionClient.getter(a1, v4, v5, v7, v6);
}

unint64_t ConversationOutputError.rawValue.getter(char a1)
{
  result = 0x5464696C61766E69;
  switch(a1)
  {
    case 1:
      result = 0x636E61436E727574;
      break;
    case 2:
      result = 0xD000000000000024;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
      result = 0xD000000000000015;
      break;
    case 5:
    case 10:
      result = 0xD00000000000001BLL;
      break;
    case 6:
    case 8:
      result = 0xD00000000000001ALL;
      break;
    case 7:
    case 9:
      result = 0xD000000000000021;
      break;
    case 11:
      result = 0xD000000000000023;
      break;
    case 12:
      result = 0xD000000000000014;
      break;
    case 13:
      result = 0x426567617373656DLL;
      break;
    case 14:
      result = 0x7553746F4E697061;
      break;
    case 15:
      result = 0xD000000000000014;
      break;
    case 16:
      result = 0xD000000000000019;
      break;
    case 17:
      result = 0xD000000000000014;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance ConversationOutputError(char *a1, char *a2)
{
  v2 = *a2;
  v3 = ConversationOutputError.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == ConversationOutputError.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ConversationOutputError()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  ConversationOutputError.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ConversationOutputError(uint64_t a1)
{
  ConversationOutputError.rawValue.getter(*v1);
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ConversationOutputError(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  ConversationOutputError.rawValue.getter(v2);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance ConversationOutputError@<X0>(Swift::String *a1@<X0>, SiriKitRuntime::ConversationOutputError_optional *a2@<X8>)
{
  result = specialized ConversationOutputError.init(rawValue:)(a1->_countAndFlagsBits, a1->_object);
  a2->value = result;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance ConversationOutputError@<X0>(unint64_t *a1@<X8>)
{
  result = ConversationOutputError.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t specialized ConversationOutputError.init(rawValue:)(uint64_t a1, uint64_t a2)
{
  v2 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v2 >= 0x12)
  {
    return 18;
  }

  else
  {
    return v2;
  }
}

uint64_t getEnumTagSinglePayload for ConversationOutputError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEF)
  {
    goto LABEL_17;
  }

  if (a2 + 17 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 17) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 17;
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

      return (*a1 | (v4 << 8)) - 17;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 17;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x12;
  v8 = v6 - 18;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ConversationOutputError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 17 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 17) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEF)
  {
    v4 = 0;
  }

  if (a2 > 0xEE)
  {
    v5 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
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
    *result = a2 + 17;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t ConversationBridgeFeatureFlag.isEnabled.getter()
{
  if (one-time initialization token for forceEnabled != -1)
  {
    swift_once();
  }

  v0 = static ConversationBridgeFeatureFlag.forceEnabled;
  os_unfair_lock_lock((static ConversationBridgeFeatureFlag.forceEnabled + 20));
  v1 = *(v0 + 16);
  if (v1 == 2)
  {
    v3[3] = &type metadata for ConversationBridgeFeatureFlag;
    v3[4] = lazy protocol witness table accessor for type ConversationBridgeFeatureFlag and conformance ConversationBridgeFeatureFlag();
    LOBYTE(v1) = isFeatureEnabled(_:)();
    __swift_destroy_boxed_opaque_existential_1Tm(v3);
  }

  os_unfair_lock_unlock((v0 + 20));
  return v1 & 1;
}

uint64_t *ConversationBridgeFeatureFlag.forceEnabled.unsafeMutableAddressor()
{
  if (one-time initialization token for forceEnabled != -1)
  {
    swift_once();
  }

  return &static ConversationBridgeFeatureFlag.forceEnabled;
}