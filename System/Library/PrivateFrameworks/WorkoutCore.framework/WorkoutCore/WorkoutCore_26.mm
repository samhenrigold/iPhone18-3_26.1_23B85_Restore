void closure #1 in DataLinkHealthKitHostConnection.resetSequences(_:)(uint64_t a1, unint64_t a2)
{
  v3 = type metadata accessor for Apple_Workout_Core_PublisherSequence(0);
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3 - 8, v5);
  v8 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = (&v55 - v10);
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  isUniquelyReferenced_nonNull_native = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (one-time initialization token for dataLink != -1)
    {
LABEL_30:
      swift_once();
    }

    v61 = a2;
    v17 = type metadata accessor for Logger();
    v57 = __swift_project_value_buffer(v17, static WOLog.dataLink);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_20AEA4000, v18, v19, "Resetting sequences from client", v20, 2u);
      MEMORY[0x20F2E9420](v20, -1, -1);
    }

    v21 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC11WorkoutCore15KnownPublishersO_s6UInt32VTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    v22 = OBJC_IVAR____TtC11WorkoutCore31DataLinkHealthKitHostConnection_lastAckedSequences;
    v23 = Strong;
    swift_beginAccess();
    v60 = v22;
    *&v23[v22] = v21;

    Date.init()();
    v24 = OBJC_IVAR____TtC11WorkoutCore31DataLinkHealthKitHostConnection_lastResetOfSequences;
    swift_beginAccess();
    v25 = *(v13 + 5);
    v13 = (v13 + 40);
    v25(&v23[v24], isUniquelyReferenced_nonNull_native, v12);
    swift_endAccess();
    v61 = *v61;
    v59 = v61[2];
    if (v59)
    {
      a2 = 0;
      v58 = v61 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
      *&v26 = 136446210;
      v55 = v26;
      do
      {
        if (a2 >= v61[2])
        {
          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
          goto LABEL_30;
        }

        outlined init with copy of Apple_Workout_Core_NotificationUpdate(&v58[*(v4 + 72) * a2], v11, type metadata accessor for Apple_Workout_Core_PublisherSequence);
        v29 = *(v11 + 8);
        v64 = *v11;
        v65 = v29;
        v30 = Apple_Workout_Core_PublisherKey.publisher.getter();
        if (v30 == 18)
        {
          outlined init with copy of Apple_Workout_Core_NotificationUpdate(v11, v8, type metadata accessor for Apple_Workout_Core_PublisherSequence);
          v31 = Logger.logObject.getter();
          v32 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v31, v32))
          {
            v33 = swift_slowAlloc();
            v12 = swift_slowAlloc();
            *v33 = v55;
            v34 = *v8;
            v35 = v8[8];
            v63 = v12;
            v64 = v34;
            v65 = v35;
            v36 = String.init<A>(describing:)();
            v13 = v11;
            v37 = v4;
            v39 = v38;
            v56 = type metadata accessor for Apple_Workout_Core_PublisherSequence;
            _s11WorkoutCore06Apple_a1_B16_DataLinkMessageVWOhTm_0(v8, type metadata accessor for Apple_Workout_Core_PublisherSequence);
            isUniquelyReferenced_nonNull_native = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v39, &v63);
            v4 = v37;
            v11 = v13;

            *(v33 + 4) = isUniquelyReferenced_nonNull_native;
            _os_log_impl(&dword_20AEA4000, v31, v32, "Ignoring unknown publisher from %{public}s", v33, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v12);
            MEMORY[0x20F2E9420](v12, -1, -1);
            MEMORY[0x20F2E9420](v33, -1, -1);

            v27 = v13;
            v28 = v56;
          }

          else
          {

            v13 = type metadata accessor for Apple_Workout_Core_PublisherSequence;
            _s11WorkoutCore06Apple_a1_B16_DataLinkMessageVWOhTm_0(v8, type metadata accessor for Apple_Workout_Core_PublisherSequence);
            v27 = v11;
            v28 = type metadata accessor for Apple_Workout_Core_PublisherSequence;
          }

          goto LABEL_8;
        }

        v40 = v30;
        v13 = *(v11 + 3);
        v41 = Strong;
        v42 = v60;
        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v63 = *&v41[v42];
        v43 = v63;
        *&v41[v42] = 0x8000000000000000;
        v12 = specialized __RawDictionaryStorage.find<A>(_:)(v40);
        v45 = *(v43 + 16);
        v46 = (v44 & 1) == 0;
        v47 = v45 + v46;
        if (__OFADD__(v45, v46))
        {
          goto LABEL_28;
        }

        v48 = v44;
        if (*(v43 + 24) >= v47)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            v51 = v63;
            if ((v44 & 1) == 0)
            {
              goto LABEL_22;
            }
          }

          else
          {
            specialized _NativeDictionary.copy()();
            v51 = v63;
            if ((v48 & 1) == 0)
            {
              goto LABEL_22;
            }
          }
        }

        else
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v47, isUniquelyReferenced_nonNull_native);
          v49 = specialized __RawDictionaryStorage.find<A>(_:)(v40);
          if ((v48 & 1) != (v50 & 1))
          {
            KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            return;
          }

          v12 = v49;
          v51 = v63;
          if ((v48 & 1) == 0)
          {
LABEL_22:
            v51[(v12 >> 6) + 8] |= 1 << v12;
            *(v51[6] + v12) = v40;
            *(v51[7] + 4 * v12) = v13;
            v52 = v51[2];
            v53 = __OFADD__(v52, 1);
            v54 = v52 + 1;
            if (v53)
            {
              goto LABEL_29;
            }

            v51[2] = v54;
            goto LABEL_24;
          }
        }

        *(v51[7] + 4 * v12) = v13;
LABEL_24:
        *&Strong[v60] = v51;
        swift_endAccess();
        v28 = type metadata accessor for Apple_Workout_Core_PublisherSequence;
        v27 = v11;
LABEL_8:
        _s11WorkoutCore06Apple_a1_B16_DataLinkMessageVWOhTm_0(v27, v28);
        ++a2;
      }

      while (v59 != a2);
    }
  }
}

void DataLinkHealthKitHostConnection.handleProtobufCommand(_:)(uint64_t a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *(a1 + 8);
  if (one-time initialization token for dataLink != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static WOLog.dataLink);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v32 = v9;
    *v8 = 136446210;
    v30 = v3;
    LOBYTE(v31) = v4;
    v10 = String.init<A>(describing:)();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v32);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_20AEA4000, v6, v7, "Did receive command %{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x20F2E9420](v9, -1, -1);
    MEMORY[0x20F2E9420](v8, -1, -1);
  }

  if (!v4)
  {
    type metadata accessor for DataLinkError(0);
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_5(&lazy protocol witness table cache variable for type DataLinkError and conformance DataLinkError, type metadata accessor for DataLinkError, &protocol conformance descriptor for DataLinkError);
    v15 = swift_allocError();
    v17 = v16;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore27MirroredHostMessageProtocol_pXmT04hostE4Type_AA08DataLinkC17ClientExpectationV06clientL0tMd, &_s11WorkoutCore27MirroredHostMessageProtocol_pXmT04hostE4Type_AA08DataLinkC17ClientExpectationV06clientL0tMR);
    (*(*(v18 - 8) + 56))(v17, 2, 5, v18);
    v19 = 0;
    goto LABEL_26;
  }

  v13 = *(v2 + OBJC_IVAR____TtC11WorkoutCore31DataLinkHealthKitHostConnection_commandHandler);
  if (v3 > 3)
  {
    if (v3 <= 5)
    {
      if (v3 == 4)
      {
        v14 = 4;
      }

      else
      {
        v14 = 5;
      }
    }

    else if (v3 == 6)
    {
      v14 = 6;
    }

    else if (v3 == 7)
    {
      v14 = 7;
    }

    else
    {
      v14 = 8;
    }

    goto LABEL_24;
  }

  if (v3 > 1)
  {
    if (v3 == 2)
    {
      v14 = 2;
    }

    else
    {
      v14 = 3;
    }

    goto LABEL_24;
  }

  if (v3)
  {
    v14 = 1;
LABEL_24:
    LOBYTE(v30) = v14;
    goto LABEL_25;
  }

  LOBYTE(v30) = 0;
LABEL_25:

  v19 = v13(&v30);
  v15 = v20;

LABEL_26:
  v21 = v15;
  v22 = v15;
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v31 = v15;
    v32 = v26;
    *v25 = 136315138;
    LOBYTE(v30) = v19 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSb_s5Error_pSgtMd, &_sSb_s5Error_pSgtMR);
    v27 = String.init<A>(describing:)();
    v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, &v32);

    *(v25 + 4) = v29;
    _os_log_impl(&dword_20AEA4000, v23, v24, "Handled command: %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v26);
    MEMORY[0x20F2E9420](v26, -1, -1);
    MEMORY[0x20F2E9420](v25, -1, -1);
  }

  else
  {
  }
}

void specialized closure #1 in DataLinkHealthKitHostConnection.sendMessage(_:closure:)(int a1, NSObject *a2)
{
  if (a2)
  {
    v3 = a2;
    if (one-time initialization token for dataLink != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static WOLog.dataLink);
    v5 = a2;
    oslog = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      v9 = a2;
      v10 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 4) = v10;
      *v8 = v10;
      _os_log_impl(&dword_20AEA4000, oslog, v6, "Error sending DataLinkMessage: %@", v7, 0xCu);
      _sSo8NSObjectCSgWOhTm_7(v8, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x20F2E9420](v8, -1, -1);
      MEMORY[0x20F2E9420](v7, -1, -1);

      v11 = oslog;
    }

    else
    {

      v11 = a2;
    }
  }
}

uint64_t closure #1 in DataLinkHealthKitHostConnection.sendMessage(_:closure:)(char a1, id a2, uint64_t (*a3)(void))
{
  if (a2)
  {
    v6 = a2;
    if (one-time initialization token for dataLink != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static WOLog.dataLink);
    v8 = a2;
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      v13 = a2;
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 4) = v14;
      *v12 = v14;
      _os_log_impl(&dword_20AEA4000, v9, v10, "Error sending DataLinkMessage: %@", v11, 0xCu);
      _sSo8NSObjectCSgWOhTm_7(v12, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x20F2E9420](v12, -1, -1);
      MEMORY[0x20F2E9420](v11, -1, -1);
    }

    else
    {
    }
  }

  return a3(a1 & 1);
}

uint64_t DataLinkHealthKitHostConnection.sendDataLinkMessage(_:closure:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  aBlock[6] = *MEMORY[0x277D85DE8];
  type metadata accessor for Apple_Workout_Core_DataLinkMessage(0);
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_5(&lazy protocol witness table cache variable for type Apple_Workout_Core_DataLinkMessage and conformance Apple_Workout_Core_DataLinkMessage, type metadata accessor for Apple_Workout_Core_DataLinkMessage, &protocol conformance descriptor for Apple_Workout_Core_DataLinkMessage);
  result = Message.serializedData(partial:)();
  if (!v4)
  {
    v10 = result;
    v11 = v9;
    v12.super.isa = Data._bridgeToObjectiveC()().super.isa;
    outlined consume of Data._Representation(v10, v11);
    aBlock[0] = 0;
    v13 = [(objc_class *)v12.super.isa compressedDataUsingAlgorithm:0 error:aBlock];
    v14 = aBlock[0];
    if (v13)
    {
      v15 = v13;
      v16 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v17;
    }

    else
    {
      v19 = v14;
      v20 = _convertNSErrorToError(_:)();

      swift_willThrow();
      if (one-time initialization token for dataLink != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for Logger();
      __swift_project_value_buffer(v21, static WOLog.dataLink);
      v22 = v20;
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        *v25 = 138412290;
        v27 = v20;
        v28 = _swift_stdlib_bridgeErrorToNSError();
        *(v25 + 4) = v28;
        *v26 = v28;
        _os_log_impl(&dword_20AEA4000, v23, v24, "Failed to compress data: %@", v25, 0xCu);
        _sSo8NSObjectCSgWOhTm_7(v26, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x20F2E9420](v26, -1, -1);
        MEMORY[0x20F2E9420](v25, -1, -1);
      }

      v15 = v12.super.isa;
      v16 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v29;
    }

    if (one-time initialization token for dataLink != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    __swift_project_value_buffer(v30, static WOLog.dataLink);
    outlined copy of Data._Representation(v16, v18);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v31, v32))
    {
      outlined consume of Data._Representation(v16, v18);
LABEL_24:

      DataLinkHealthMonitor.didTransmitData(_:)(v16, v18);
      v40 = *(v5 + OBJC_IVAR____TtC11WorkoutCore31DataLinkHealthKitHostConnection_session);
      isa = Data._bridgeToObjectiveC()().super.isa;
      v42 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v43 = swift_allocObject();
      v43[2] = v42;
      v43[3] = a2;
      v43[4] = a3;
      aBlock[4] = partial apply for closure #1 in DataLinkHealthKitHostConnection.sendDataLinkMessage(_:closure:);
      aBlock[5] = v43;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
      aBlock[3] = &block_descriptor_71_2;
      v44 = _Block_copy(aBlock);

      [v40 sendDataToRemoteWorkoutSession:isa completion:v44];
      _Block_release(v44);

      return outlined consume of Data._Representation(v16, v18);
    }

    v33 = swift_slowAlloc();
    *v33 = 134217984;
    v34 = v18 >> 62;
    if ((v18 >> 62) > 1)
    {
      if (v34 != 2)
      {
        v35 = 0;
        goto LABEL_23;
      }

      v37 = *(v16 + 16);
      v36 = *(v16 + 24);
      v38 = __OFSUB__(v36, v37);
      v35 = v36 - v37;
      if (!v38)
      {
        goto LABEL_23;
      }

      __break(1u);
    }

    else if (!v34)
    {
      v35 = BYTE6(v18);
LABEL_23:
      *(v33 + 4) = v35;
      v39 = v33;
      outlined consume of Data._Representation(v16, v18);
      _os_log_impl(&dword_20AEA4000, v31, v32, "Sending data of size %ld", v39, 0xCu);
      MEMORY[0x20F2E9420](v39, -1, -1);
      goto LABEL_24;
    }

    LODWORD(v35) = HIDWORD(v16) - v16;
    if (__OFSUB__(HIDWORD(v16), v16))
    {
      __break(1u);
    }

    v35 = v35;
    goto LABEL_23;
  }

  return result;
}

uint64_t DataLinkHealthKitHostConnection.sendMirroredHostMessage(_:closure:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Apple_Workout_Core_MirroredHostMessage(0);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v17[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for Apple_Workout_Core_DataLinkMessage(0);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v17[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message(0);
  v15 = *(*(v14 - 8) + 56);
  v15(v13, 1, 1, v14);
  UnknownStorage.init()();
  outlined init with copy of Apple_Workout_Core_NotificationUpdate(a1, v9, type metadata accessor for Apple_Workout_Core_MirroredHostMessage);
  _sSo8NSObjectCSgWOhTm_7(v13, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  outlined init with take of Apple_Workout_Core_WorkoutNotification(v9, v13, type metadata accessor for Apple_Workout_Core_MirroredHostMessage);
  swift_storeEnumTagMultiPayload();
  v15(v13, 0, 1, v14);
  DataLinkHealthKitHostConnection.sendDataLinkMessage(_:closure:)(v13, a2, a3);
  return _s11WorkoutCore06Apple_a1_B16_DataLinkMessageVWOhTm_0(v13, type metadata accessor for Apple_Workout_Core_DataLinkMessage);
}

void closure #1 in DataLinkHealthKitHostConnection.sendDataLinkMessage(_:closure:)(char a1, id a2, uint64_t a3, void (*a4)(void, id))
{
  if (a2)
  {
    v7 = a2;
    if (one-time initialization token for dataLink != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static WOLog.dataLink);
    v9 = a2;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      v14 = a2;
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 4) = v15;
      *v13 = v15;
      _os_log_impl(&dword_20AEA4000, v10, v11, "Error sending data: %@", v12, 0xCu);
      _sSo8NSObjectCSgWOhTm_7(v13, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x20F2E9420](v13, -1, -1);
      MEMORY[0x20F2E9420](v12, -1, -1);
    }

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v17 = Strong;

      DataLinkHealthMonitor.didReceiveError()();
    }

    v18 = a2;
    a4(a1 & 1, a2);
  }

  else
  {
    swift_beginAccess();
    v19 = swift_unknownObjectWeakLoadStrong();
    if (v19)
    {
      v20 = v19;

      DataLinkHealthMonitor.didReceiveAck()();
    }

    a4(a1 & 1, 0);
  }
}

void protocol witness for DataLinkHostConnection.deactivateLink() in conformance DataLinkHealthKitHostConnection()
{
  v1 = *(*v0 + OBJC_IVAR____TtC11WorkoutCore31DataLinkHealthKitHostConnection_session);
  v3[4] = closure #1 in DataLinkHealthKitHostConnection.deactivateLink();
  v3[5] = 0;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 1107296256;
  v3[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
  v3[3] = &block_descriptor_39;
  v2 = _Block_copy(v3);
  [v1 stopMirroringToCompanionDeviceWithCompletion_];
  _Block_release(v2);
}

double DataLinkHealthKitHostConnection.handleMirroredClientMessage(_:)(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v32 = *(v2 - 8);
  v33 = v2;
  MEMORY[0x28223BE20](v2, v3);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v30 = *(v6 - 8);
  v31 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Apple_Workout_Core_MirroredClientMessage(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v14 = MEMORY[0x28223BE20](v10 - 8, v13);
  v15 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v28 - v17;
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  outlined init with copy of Apple_Workout_Core_NotificationUpdate(a1, v18, type metadata accessor for Apple_Workout_Core_MirroredClientMessage);
  outlined init with copy of Apple_Workout_Core_NotificationUpdate(v18, v15, type metadata accessor for Apple_Workout_Core_MirroredClientMessage);
  v20 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = v19;
  outlined init with take of Apple_Workout_Core_WorkoutNotification(v18, v21 + v20, type metadata accessor for Apple_Workout_Core_MirroredClientMessage);
  v22 = objc_opt_self();

  if ([v22 isMainThread])
  {
    closure #1 in DataLinkHealthKitHostConnection.handleMirroredClientMessage(_:)(v19, v15);
  }

  else
  {
    type metadata accessor for OS_dispatch_queue();
    v29 = static OS_dispatch_queue.main.getter();
    v23 = swift_allocObject();
    *(v23 + 16) = partial apply for closure #1 in DataLinkHealthKitHostConnection.handleMirroredClientMessage(_:);
    *(v23 + 24) = v21;
    aBlock[4] = _s11WorkoutCore17DispatchUtilitiesC22ensureMainQueueOrAsync5blockyyyc_tFZyyScMYccfU_TA_5;
    aBlock[5] = v23;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_61;
    v24 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = MEMORY[0x277D84F90];
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_5(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [KnownPublishers] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x277D83970]);
    v25 = v33;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v26 = v29;
    MEMORY[0x20F2E7580](0, v9, v5, v24);
    _Block_release(v24);

    (*(v32 + 8))(v5, v25);
    (*(v30 + 8))(v9, v31);
  }

  _s11WorkoutCore06Apple_a1_B16_DataLinkMessageVWOhTm_0(v15, type metadata accessor for Apple_Workout_Core_MirroredClientMessage);

  return result;
}

void *closure #1 in DataLinkHealthKitHostConnection.handleMirroredClientMessage(_:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Apple_Workout_Core_MirroredClientAlertStackResponse(0);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Apple_Workout_Core_MirroredClientPrecisionStart(0);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Apple_Workout_Core_MirroredClientMachTimestampResponse(0);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMR);
  MEMORY[0x28223BE20](v15 - 8, v16);
  v18 = &v34 - v17;
  v19 = type metadata accessor for Apple_Workout_Core_MirroredClientMessage.OneOf_Message(0);
  v20 = *(v19 - 8);
  v22 = MEMORY[0x28223BE20](v19, v21);
  v24 = &v34 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v25);
  v27 = &v34 - v26;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v29 = result;
    outlined init with copy of Apple_Workout_Core_DataLinkMessage.OneOf_Message?(a2, v18, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMR);
    if ((*(v20 + 48))(v18, 1, v19) == 1)
    {

      return _sSo8NSObjectCSgWOhTm_7(v18, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMR);
    }

    outlined init with take of Apple_Workout_Core_WorkoutNotification(v18, v27, type metadata accessor for Apple_Workout_Core_MirroredClientMessage.OneOf_Message);
    outlined init with copy of Apple_Workout_Core_NotificationUpdate(v27, v24, type metadata accessor for Apple_Workout_Core_MirroredClientMessage.OneOf_Message);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        outlined init with take of Apple_Workout_Core_WorkoutNotification(v24, v10, type metadata accessor for Apple_Workout_Core_MirroredClientPrecisionStart);
        DataLinkHealthKitHostConnection.handleMirroredClientPrecisionStart(_:)(v10);

        v32 = type metadata accessor for Apple_Workout_Core_MirroredClientPrecisionStart;
        v33 = v10;
      }

      else
      {
        outlined init with take of Apple_Workout_Core_WorkoutNotification(v24, v6, type metadata accessor for Apple_Workout_Core_MirroredClientAlertStackResponse);
        DataLinkHealthKitHostConnection.handleMirroredClientAlertStackResponse(_:)(v6);

        v32 = type metadata accessor for Apple_Workout_Core_MirroredClientAlertStackResponse;
        v33 = v6;
      }
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {
        v31 = v24[8];
        v35 = *v24;
        v36 = v31;
        DataLinkHealthKitHostConnection.handleMirroredClientCommand(_:)(&v35);

        return _s11WorkoutCore06Apple_a1_B16_DataLinkMessageVWOhTm_0(v27, type metadata accessor for Apple_Workout_Core_MirroredClientMessage.OneOf_Message);
      }

      outlined init with take of Apple_Workout_Core_WorkoutNotification(v24, v14, type metadata accessor for Apple_Workout_Core_MirroredClientMachTimestampResponse);
      DataLinkHealthKitHostConnection.handleMirroredClientMachTimestampResponse(_:)(v14);

      v32 = type metadata accessor for Apple_Workout_Core_MirroredClientMachTimestampResponse;
      v33 = v14;
    }

    _s11WorkoutCore06Apple_a1_B16_DataLinkMessageVWOhTm_0(v33, v32);
    return _s11WorkoutCore06Apple_a1_B16_DataLinkMessageVWOhTm_0(v27, type metadata accessor for Apple_Workout_Core_MirroredClientMessage.OneOf_Message);
  }

  return result;
}

void DataLinkHealthKitHostConnection.handleMirroredClientCommand(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = (&v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *a1;
  v10 = *(a1 + 8);
  type metadata accessor for OS_dispatch_queue();
  *v8 = static OS_dispatch_queue.main.getter();
  (*(v5 + 104))(v8, *MEMORY[0x277D85200], v4);
  LOBYTE(a1) = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v8, v4);
  if ((a1 & 1) == 0)
  {
    __break(1u);
LABEL_17:
    swift_once();
    goto LABEL_12;
  }

  v11 = v2 + OBJC_IVAR____TtC11WorkoutCore31DataLinkHealthKitHostConnection_mirroredHostDelegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v12 = *(v11 + 8);
    v26 = v9;
    v27 = v10;
    MirroredClientCommand.init(protobuf:)(&v26, &v28);
    v13 = v28;
    if (v28 == 3)
    {
      if (one-time initialization token for dataLink != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      __swift_project_value_buffer(v14, static WOLog.dataLink);
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 134217984;
        if (v10)
        {
          v9 = qword_20B43B518[v9];
        }

        *(v17 + 4) = v9;
        v18 = v16;
        v19 = v17;
        _os_log_impl(&dword_20AEA4000, v15, v18, "[mirrored] handleMirroredClientCommand cannot convert protobuf: %ld", v17, 0xCu);
        MEMORY[0x20F2E9420](v19, -1, -1);
      }

      swift_unknownObjectRelease();
    }

    else
    {
      ObjectType = swift_getObjectType();
      LOBYTE(v26) = v13;
      (*(v12 + 8))(&v26, closure #1 in DataLinkHealthKitHostConnection.handleMirroredClientCommand(_:), 0, ObjectType, v12);
      swift_unknownObjectRelease();
    }

    return;
  }

  if (one-time initialization token for dataLink != -1)
  {
    goto LABEL_17;
  }

LABEL_12:
  v20 = type metadata accessor for Logger();
  __swift_project_value_buffer(v20, static WOLog.dataLink);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_20AEA4000, v21, v22, "[mirrored] handleMirroredClientCommand mirroredHostDelegate is not set", v23, 2u);
    MEMORY[0x20F2E9420](v23, -1, -1);
  }
}

void DataLinkHealthKitHostConnection.handleMirroredClientMachTimestampResponse(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Apple_Workout_Core_MirroredClientMachTimestampResponse(0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = (&v24[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = (&v24[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for OS_dispatch_queue();
  *v12 = static OS_dispatch_queue.main.getter();
  (*(v9 + 104))(v12, *MEMORY[0x277D85200], v8);
  v13 = _dispatchPreconditionTest(_:)();
  (*(v9 + 8))(v12, v8);
  if ((v13 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    swift_once();
    goto LABEL_5;
  }

  v14 = v2 + OBJC_IVAR____TtC11WorkoutCore31DataLinkHealthKitHostConnection_mirroredHostDelegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v15 = *(v14 + 8);
    outlined init with copy of Apple_Workout_Core_NotificationUpdate(a1, v7, type metadata accessor for Apple_Workout_Core_MirroredClientMachTimestampResponse);
    v16 = *v7;
    v17 = v7[1];
    _s11WorkoutCore06Apple_a1_B16_DataLinkMessageVWOhTm_0(v7, type metadata accessor for Apple_Workout_Core_MirroredClientMachTimestampResponse);
    ObjectType = swift_getObjectType();
    v24[0] = v16;
    v24[1] = v17;
    (*(v15 + 16))(v24, closure #1 in DataLinkHealthKitHostConnection.handleMirroredClientMachTimestampResponse(_:), 0, ObjectType, v15);
    swift_unknownObjectRelease();
    return;
  }

  if (one-time initialization token for dataLink != -1)
  {
    goto LABEL_9;
  }

LABEL_5:
  v19 = type metadata accessor for Logger();
  __swift_project_value_buffer(v19, static WOLog.dataLink);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_20AEA4000, v20, v21, "[mirrored] handleMirroredClientMachTimestampResponse mirroredHostDelegate is not set", v22, 2u);
    MEMORY[0x20F2E9420](v22, -1, -1);
  }
}

void DataLinkHealthKitHostConnection.handleMirroredClientPrecisionStart(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Apple_Workout_Core_MirroredClientPrecisionStart(0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MirroredClientPrecisionStart(0);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchPredicate();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = (&v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for OS_dispatch_queue();
  *v16 = static OS_dispatch_queue.main.getter();
  (*(v13 + 104))(v16, *MEMORY[0x277D85200], v12);
  v17 = _dispatchPreconditionTest(_:)();
  (*(v13 + 8))(v16, v12);
  if ((v17 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    swift_once();
    goto LABEL_5;
  }

  v18 = v2 + OBJC_IVAR____TtC11WorkoutCore31DataLinkHealthKitHostConnection_mirroredHostDelegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v19 = *(v18 + 8);
    outlined init with copy of Apple_Workout_Core_NotificationUpdate(a1, v7, type metadata accessor for Apple_Workout_Core_MirroredClientPrecisionStart);
    Date.init(timeIntervalSinceReferenceDate:)();
    _s11WorkoutCore06Apple_a1_B16_DataLinkMessageVWOhTm_0(v7, type metadata accessor for Apple_Workout_Core_MirroredClientPrecisionStart);
    ObjectType = swift_getObjectType();
    (*(v19 + 24))(v11, closure #1 in DataLinkHealthKitHostConnection.handleMirroredClientPrecisionStart(_:), 0, ObjectType, v19);
    swift_unknownObjectRelease();
    _s11WorkoutCore06Apple_a1_B16_DataLinkMessageVWOhTm_0(v11, type metadata accessor for MirroredClientPrecisionStart);
    return;
  }

  if (one-time initialization token for dataLink != -1)
  {
    goto LABEL_9;
  }

LABEL_5:
  v21 = type metadata accessor for Logger();
  __swift_project_value_buffer(v21, static WOLog.dataLink);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_20AEA4000, v22, v23, "[mirrored] handleMirroredClientPrecisionStart mirroredHostDelegate is not set", v24, 2u);
    MEMORY[0x20F2E9420](v24, -1, -1);
  }
}

void DataLinkHealthKitHostConnection.handleMirroredClientAlertStackResponse(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Apple_Workout_Core_MirroredClientAlertStackResponse(0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v26[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = (&v26[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for OS_dispatch_queue();
  *v12 = static OS_dispatch_queue.main.getter();
  (*(v9 + 104))(v12, *MEMORY[0x277D85200], v8);
  v13 = _dispatchPreconditionTest(_:)();
  (*(v9 + 8))(v12, v8);
  if ((v13 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    swift_once();
    goto LABEL_5;
  }

  v14 = v2 + OBJC_IVAR____TtC11WorkoutCore31DataLinkHealthKitHostConnection_mirroredHostDelegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v15 = *(v14 + 8);
    outlined init with copy of Apple_Workout_Core_NotificationUpdate(a1, v7, type metadata accessor for Apple_Workout_Core_MirroredClientAlertStackResponse);
    v17 = *v7;
    v16 = *(v7 + 1);
    v18 = v7[16];
    v19 = *(v7 + 5);

    _s11WorkoutCore06Apple_a1_B16_DataLinkMessageVWOhTm_0(v7, type metadata accessor for Apple_Workout_Core_MirroredClientAlertStackResponse);
    ObjectType = swift_getObjectType();
    v26[0] = v17;
    v26[1] = v16;
    v27 = v18;
    v28 = v19;
    (*(v15 + 32))(v26, closure #1 in DataLinkHealthKitHostConnection.handleMirroredClientAlertStackResponse(_:), 0, ObjectType, v15);

    swift_unknownObjectRelease();
    return;
  }

  if (one-time initialization token for dataLink != -1)
  {
    goto LABEL_9;
  }

LABEL_5:
  v21 = type metadata accessor for Logger();
  __swift_project_value_buffer(v21, static WOLog.dataLink);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_20AEA4000, v22, v23, "[mirrored] handleMirroredClientAlertStackResponse mirroredHostDelegate is not set", v24, 2u);
    MEMORY[0x20F2E9420](v24, -1, -1);
  }
}

void closure #1 in DataLinkHealthKitHostConnection.handleMirroredClientCommand(_:)(char a1, void *a2, const char *a3, ...)
{
  if (one-time initialization token for dataLink != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static WOLog.dataLink);
  v7 = a2;
  oslog = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(oslog, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 67109378;
    *(v9 + 4) = a1 & 1;
    *(v9 + 8) = 2112;
    if (a2)
    {
      v11 = a2;
      v12 = _swift_stdlib_bridgeErrorToNSError();
      v13 = v12;
    }

    else
    {
      v12 = 0;
      v13 = 0;
    }

    *(v9 + 10) = v12;
    *v10 = v13;
    _os_log_impl(&dword_20AEA4000, oslog, v8, a3, v9, 0x12u);
    _sSo8NSObjectCSgWOhTm_7(v10, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F2E9420](v10, -1, -1);
    MEMORY[0x20F2E9420](v9, -1, -1);
  }
}

uint64_t getEnumTagSinglePayload for KnownPublishers(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for KnownPublishers(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t lazy protocol witness table accessor for type KnownPublishers and conformance KnownPublishers()
{
  result = lazy protocol witness table cache variable for type KnownPublishers and conformance KnownPublishers;
  if (!lazy protocol witness table cache variable for type KnownPublishers and conformance KnownPublishers)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KnownPublishers and conformance KnownPublishers);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KnownPublishers and conformance KnownPublishers;
  if (!lazy protocol witness table cache variable for type KnownPublishers and conformance KnownPublishers)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KnownPublishers and conformance KnownPublishers);
  }

  return result;
}

uint64_t protocol witness for DataLinkMirroredHostConnectionProtocol.mirroredHostDelegate.setter in conformance DataLinkHealthKitHostConnection(uint64_t a1, uint64_t a2)
{
  v4 = *v2 + OBJC_IVAR____TtC11WorkoutCore31DataLinkHealthKitHostConnection_mirroredHostDelegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*protocol witness for DataLinkMirroredHostConnectionProtocol.mirroredHostDelegate.modify in conformance DataLinkHealthKitHostConnection(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *v1;
  v6 = OBJC_IVAR____TtC11WorkoutCore31DataLinkHealthKitHostConnection_mirroredHostDelegate;
  *(v3 + 40) = *v1;
  *(v3 + 48) = v6;
  v7 = v5 + v6;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v9 = *(v7 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v9;
  return protocol witness for DataLinkMirroredHostConnectionProtocol.mirroredHostDelegate.modify in conformance DataLinkHealthKitHostConnection;
}

void protocol witness for DataLinkMirroredHostConnectionProtocol.mirroredHostDelegate.modify in conformance DataLinkHealthKitHostConnection(uint64_t a1, char a2)
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

uint64_t specialized Set._Variant.remove(_:)(char a1)
{
  v2 = v1;
  v4 = *v1;
  Hasher.init(_seed:)();
  KnownPublishers.rawValue.getter(a1);
  String.hash(into:)();

  v5 = Hasher._finalize()();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 18;
  }

  v18 = v1;
  v8 = ~v6;
  while (2)
  {
    v9 = 0xED00007265687369;
    v10 = 0x6C6275506C616F67;
    switch(*(*(v4 + 48) + v7))
    {
      case 1:
        v10 = 0xD00000000000001BLL;
        v9 = 0x800000020B4541D0;
        break;
      case 2:
        v10 = 0xD000000000000016;
        v9 = 0x800000020B4541F0;
        break;
      case 3:
        break;
      case 4:
        v10 = 0xD000000000000019;
        v9 = 0x800000020B454220;
        break;
      case 5:
        v10 = 0xD000000000000019;
        v9 = 0x800000020B454240;
        break;
      case 6:
        v10 = 0xD000000000000014;
        v9 = 0x800000020B454260;
        break;
      case 7:
        v10 = 0xD000000000000019;
        v9 = 0x800000020B454280;
        break;
      case 8:
        v10 = 0xD00000000000001ALL;
        v9 = 0x800000020B4542A0;
        break;
      case 9:
        v10 = 0xD000000000000010;
        v9 = 0x800000020B4542C0;
        break;
      case 0xA:
        v10 = 0xD000000000000015;
        v9 = 0x800000020B4542E0;
        break;
      case 0xB:
        v10 = 0xD000000000000020;
        v9 = 0x800000020B454300;
        break;
      case 0xC:
        v10 = 0xD000000000000018;
        v9 = 0x800000020B454330;
        break;
      case 0xD:
        v10 = 0xD00000000000001ALL;
        v9 = 0x800000020B454350;
        break;
      case 0xE:
        v10 = 0xD00000000000001CLL;
        v9 = 0x800000020B454370;
        break;
      case 0xF:
        v9 = 0xE800000000000000;
        v10 = 0x6C6576654C706F54;
        break;
      case 0x10:
        v10 = 0xD000000000000015;
        v9 = 0x800000020B4543A0;
        break;
      case 0x11:
        v10 = 0xD00000000000001ALL;
        v9 = 0x800000020B4543C0;
        break;
      default:
        v10 = 0xD00000000000001FLL;
        v9 = 0x800000020B4541B0;
        break;
    }

    v11 = 0x6C6275506C616F67;
    v12 = 0xED00007265687369;
    switch(a1)
    {
      case 1:
        v12 = 0x800000020B4541D0;
        if (v10 == 0xD00000000000001BLL)
        {
          goto LABEL_54;
        }

        goto LABEL_55;
      case 2:
        v12 = 0x800000020B4541F0;
        if (v10 != 0xD000000000000016)
        {
          goto LABEL_55;
        }

        goto LABEL_54;
      case 3:
        goto LABEL_53;
      case 4:
        v12 = 0x800000020B454220;
        if (v10 != 0xD000000000000019)
        {
          goto LABEL_55;
        }

        goto LABEL_54;
      case 5:
        v12 = 0x800000020B454240;
        if (v10 != 0xD000000000000019)
        {
          goto LABEL_55;
        }

        goto LABEL_54;
      case 6:
        v12 = 0x800000020B454260;
        if (v10 != 0xD000000000000014)
        {
          goto LABEL_55;
        }

        goto LABEL_54;
      case 7:
        v12 = 0x800000020B454280;
        if (v10 != 0xD000000000000019)
        {
          goto LABEL_55;
        }

        goto LABEL_54;
      case 8:
        v12 = 0x800000020B4542A0;
        if (v10 != 0xD00000000000001ALL)
        {
          goto LABEL_55;
        }

        goto LABEL_54;
      case 9:
        v12 = 0x800000020B4542C0;
        if (v10 != 0xD000000000000010)
        {
          goto LABEL_55;
        }

        goto LABEL_54;
      case 10:
        v11 = 0xD000000000000015;
        v12 = 0x800000020B4542E0;
LABEL_53:
        if (v10 == v11)
        {
          goto LABEL_54;
        }

        goto LABEL_55;
      case 11:
        v12 = 0x800000020B454300;
        if (v10 != 0xD000000000000020)
        {
          goto LABEL_55;
        }

        goto LABEL_54;
      case 12:
        v12 = 0x800000020B454330;
        if (v10 != 0xD000000000000018)
        {
          goto LABEL_55;
        }

        goto LABEL_54;
      case 13:
        v12 = 0x800000020B454350;
        if (v10 != 0xD00000000000001ALL)
        {
          goto LABEL_55;
        }

        goto LABEL_54;
      case 14:
        v12 = 0x800000020B454370;
        if (v10 != 0xD00000000000001CLL)
        {
          goto LABEL_55;
        }

        goto LABEL_54;
      case 15:
        v12 = 0xE800000000000000;
        if (v10 != 0x6C6576654C706F54)
        {
          goto LABEL_55;
        }

        goto LABEL_54;
      case 16:
        v12 = 0x800000020B4543A0;
        if (v10 != 0xD000000000000015)
        {
          goto LABEL_55;
        }

        goto LABEL_54;
      case 17:
        v12 = 0x800000020B4543C0;
        if (v10 != 0xD00000000000001ALL)
        {
          goto LABEL_55;
        }

        goto LABEL_54;
      default:
        v12 = 0x800000020B4541B0;
        if (v10 != 0xD00000000000001FLL)
        {
          goto LABEL_55;
        }

LABEL_54:
        if (v9 != v12)
        {
LABEL_55:
          v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v13)
          {
            goto LABEL_62;
          }

          v7 = (v7 + 1) & v8;
          if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
          {
            return 18;
          }

          continue;
        }

LABEL_62:
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v16 = *v2;
        v19 = *v2;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized _NativeSet.copy()();
          v16 = v19;
        }

        v14 = *(*(v16 + 48) + v7);
        specialized _NativeSet._delete(at:)(v7);
        *v18 = v19;
        return v14;
    }
  }
}

uint64_t specialized Set._Variant.remove(_:)(uint64_t a1)
{
  v3 = *v1;
  v4 = MEMORY[0x20F2E7FD0](*(*v1 + 40), a1);
  v5 = -1 << *(v3 + 32);
  v6 = v4 & ~v5;
  if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  while (*(*(v3 + 48) + 8 * v6) != a1)
  {
    v6 = (v6 + 1) & v7;
    if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v1;
  v12 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    specialized _NativeSet.copy()();
    v10 = v12;
  }

  v11 = *(*(v10 + 48) + 8 * v6);
  specialized _NativeSet._delete(at:)(v6);
  result = v11;
  *v1 = v12;
  return result;
}

uint64_t specialized Set._Variant.remove(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    specialized _NativeSet.copy()();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  specialized _NativeSet._delete(at:)(v8);
  *v2 = v16;
  return v12;
}

void specialized _NativeSet._delete(at:)(unint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        Hasher.init(_seed:)();
        String.hash(into:)();

        v10 = Hasher._finalize()() & v7;
        if (v2 >= v9)
        {
          if (v10 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v10 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v10)
        {
LABEL_11:
          v11 = *(v3 + 48);
          v12 = (v11 + v2);
          v13 = (v11 + v6);
          if (v2 != v6 || v12 >= v13 + 1)
          {
            *v12 = *v13;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v14 = *(v3 + 16);
  v15 = __OFSUB__(v14, 1);
  v16 = v14 - 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v16;
    ++*(v3 + 36);
  }
}

{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(v3 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(v3 + 48);
        v11 = (v10 + 8 * v6);
        v12 = MEMORY[0x20F2E7FD0](*(v3 + 40), *v11) & v7;
        if (v2 >= v9)
        {
          if (v12 >= v9 && v2 >= v12)
          {
LABEL_16:
            v15 = (v10 + 8 * v2);
            if (v2 != v6 || v15 >= v11 + 1)
            {
              *v15 = *v11;
              v2 = v6;
            }
          }
        }

        else if (v12 >= v9 || v2 >= v12)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v16 = *(v3 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v18;
    ++*(v3 + 36);
  }
}

{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        Hasher.init(_seed:)();

        String.hash(into:)();
        v10 = Hasher._finalize()();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 16 * v2);
          v14 = (v12 + 16 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }
}

id specialized DataLinkHealthKitHostConnection.init(session:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v17 - v6;
  *&v1[OBJC_IVAR____TtC11WorkoutCore31DataLinkHealthKitHostConnection_mirroredHostDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v8 = OBJC_IVAR____TtC11WorkoutCore31DataLinkHealthKitHostConnection_healthMonitor;
  type metadata accessor for DataLinkHealthMonitor(0);
  swift_allocObject();
  *&v1[v8] = DataLinkHealthMonitor.init()();
  v9 = OBJC_IVAR____TtC11WorkoutCore31DataLinkHealthKitHostConnection_currentSequences;
  v10 = MEMORY[0x277D84F90];
  *&v2[v9] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC11WorkoutCore15KnownPublishersO_s6UInt32VTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v11 = OBJC_IVAR____TtC11WorkoutCore31DataLinkHealthKitHostConnection_lastAckedSequences;
  *&v2[v11] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC11WorkoutCore15KnownPublishersO_s6UInt32VTt0g5Tf4g_n(v10);
  static Date.distantPast.getter();
  *&v2[OBJC_IVAR____TtC11WorkoutCore31DataLinkHealthKitHostConnection_session] = a1;
  v12 = [a1 identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v13 = type metadata accessor for UUID();
  (*(*(v13 - 8) + 56))(v7, 0, 1, v13);
  type metadata accessor for DataLinkRecorder(0);
  swift_allocObject();
  *&v2[OBJC_IVAR____TtC11WorkoutCore31DataLinkHealthKitHostConnection_recorder] = DataLinkRecorder.init(uuid:)(v7);
  v14 = &v2[OBJC_IVAR____TtC11WorkoutCore31DataLinkHealthKitHostConnection_commandHandler];
  *v14 = closure #1 in variable initialization expression of static DataLinkHealthKitHostConnection.defaultCommandHandler;
  v14[1] = 0;
  v15 = type metadata accessor for DataLinkHealthKitHostConnection(0);
  v17.receiver = v2;
  v17.super_class = v15;
  return objc_msgSendSuper2(&v17, sel_init);
}

unint64_t specialized KnownPublishers.init(rawValue:)(uint64_t a1, uint64_t a2)
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

double _sxRi_zRi0_zlys6UInt32VIsegr_SgWOe(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
  }

  return result;
}

void specialized static Apple_Workout_Core_PublisherSequence.entries(sequences:)(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Workout_Core_PublisherSequence(0);
  v23[0] = *(v2 - 8);
  v23[1] = v2;
  v4 = MEMORY[0x28223BE20](v2, v3);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4, v7);
  v9 = v23 - v8;
  v10 = 1 << *(a1 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a1 + 64);
  v13 = (v10 + 63) >> 6;

  v14 = 0;
  v15 = MEMORY[0x277D84F90];
  if (v12)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v16 >= v13)
    {

      return;
    }

    v12 = *(a1 + 64 + 8 * v16);
    ++v14;
    if (v12)
    {
      v14 = v16;
      do
      {
LABEL_8:
        v17 = __clz(__rbit64(v12)) | (v14 << 6);
        v18 = *(*(a1 + 48) + v17);
        v12 &= v12 - 1;
        v19 = *(*(a1 + 56) + 4 * v17);
        *v9 = 0;
        v9[8] = 1;
        UnknownStorage.init()();
        *(v9 + 3) = v19;
        switch(v18)
        {
          case 1:
            v20 = 3;
            break;
          case 2:
            v20 = 4;
            break;
          case 3:
            v20 = 15;
            break;
          case 4:
            v20 = 5;
            break;
          case 5:
            v20 = 6;
            break;
          case 6:
            v20 = 7;
            break;
          case 7:
            v20 = 16;
            break;
          case 8:
            v20 = 8;
            break;
          case 9:
            v20 = 9;
            break;
          case 10:
            v20 = 10;
            break;
          case 11:
            v20 = 17;
            break;
          case 12:
            v20 = 11;
            break;
          case 13:
            v20 = 12;
            break;
          case 14:
            v20 = 13;
            break;
          case 15:
            v20 = 1;
            break;
          case 16:
            v20 = 14;
            break;
          case 17:
            v20 = 18;
            break;
          default:
            v20 = 2;
            break;
        }

        *v9 = v20;
        v9[8] = 1;
        outlined init with copy of Apple_Workout_Core_NotificationUpdate(v9, v6, type metadata accessor for Apple_Workout_Core_PublisherSequence);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v15[2] + 1, 1, v15);
        }

        v22 = v15[2];
        v21 = v15[3];
        if (v22 >= v21 >> 1)
        {
          v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1, v15);
        }

        _s11WorkoutCore06Apple_a1_B16_DataLinkMessageVWOhTm_0(v9, type metadata accessor for Apple_Workout_Core_PublisherSequence);
        v15[2] = v22 + 1;
        outlined init with take of Apple_Workout_Core_WorkoutNotification(v6, v15 + ((*(v23[0] + 80) + 32) & ~*(v23[0] + 80)) + *(v23[0] + 72) * v22, type metadata accessor for Apple_Workout_Core_PublisherSequence);
      }

      while (v12);
    }
  }

  __break(1u);
}

uint64_t partial apply for closure #1 in DataLinkHealthKitHostConnection.sendWorkoutData(_:dirtyPublishers:closure:)(int a1)
{
  v3 = *(type metadata accessor for Date() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + 16);
  v7 = *(v1 + v5);
  v8 = (v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];

  return closure #1 in DataLinkHealthKitHostConnection.sendWorkoutData(_:dirtyPublishers:closure:)(a1, v6, v1 + v4, v7, v9, v10);
}

uint64_t partial apply for closure #1 in closure #1 in DataLinkHealthKitHostConnection.sendWorkoutData(_:dirtyPublishers:closure:)()
{
  v1 = *(type metadata accessor for Date() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = *(v0 + v3);
  v7 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));

  return closure #1 in closure #1 in DataLinkHealthKitHostConnection.sendWorkoutData(_:dirtyPublishers:closure:)(v4, v5, v0 + v2, v6, v7);
}

uint64_t lazy protocol witness table accessor for type [KnownPublishers] and conformance [A](unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t outlined assign with take of Apple_Workout_Core_WorkoutBuddyStatePublisher?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

double specialized DataLinkHealthKitHostConnection.sendMirroredHostMessage(_:closure:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for Apple_Workout_Core_MirroredHostMessage(0);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Apple_Workout_Core_DataLinkMessage(0);
  MEMORY[0x28223BE20](v11, v12);
  v14 = v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  v19[0] = a3;
  *(v15 + 16) = a3;
  *(v15 + 24) = a4;
  v16 = type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message(0);
  v17 = *(*(v16 - 8) + 56);
  v17(v14, 1, 1, v16);

  UnknownStorage.init()();
  outlined init with copy of Apple_Workout_Core_NotificationUpdate(a1, v10, type metadata accessor for Apple_Workout_Core_MirroredHostMessage);
  _sSo8NSObjectCSgWOhTm_7(v14, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  outlined init with take of Apple_Workout_Core_WorkoutNotification(v10, v14, type metadata accessor for Apple_Workout_Core_MirroredHostMessage);
  swift_storeEnumTagMultiPayload();
  v17(v14, 0, 1, v16);
  DataLinkHealthKitHostConnection.sendDataLinkMessage(_:closure:)(v14, partial apply for closure #1 in DataLinkHost.sendMirroredHostSummaryUpdate(_:acknowledged:), v15);
  _s11WorkoutCore06Apple_a1_B16_DataLinkMessageVWOhTm_0(v14, type metadata accessor for Apple_Workout_Core_DataLinkMessage);

  return result;
}

void specialized DataLinkHealthKitHostConnection.workoutSession(_:didChangeTo:from:date:)(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for dataLink != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static WOLog.dataLink);
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v13 = v5;
    *v4 = 136315394;
    type metadata accessor for HKWorkoutSessionState(0);
    v6 = String.init<A>(describing:)();
    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, &v13);

    *(v4 + 4) = v8;
    *(v4 + 12) = 2080;
    v9 = String.init<A>(describing:)();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v13);

    *(v4 + 14) = v11;
    _os_log_impl(&dword_20AEA4000, oslog, v3, "Workout did change to %s from %s", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v5, -1, -1);
    MEMORY[0x20F2E9420](v4, -1, -1);
  }

  else
  {
  }
}

void specialized DataLinkHealthKitHostConnection.workoutSession(_:didFailWithError:)(void *a1)
{
  if (one-time initialization token for dataLink != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static WOLog.dataLink);
  v3 = a1;
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = a1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_20AEA4000, oslog, v4, "Workout did fail with error %@", v5, 0xCu);
    _sSo8NSObjectCSgWOhTm_7(v6, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F2E9420](v6, -1, -1);
    MEMORY[0x20F2E9420](v5, -1, -1);
  }
}

uint64_t specialized DataLinkHealthKitHostConnection.workoutSession(_:didReceiveDataFromRemoteDevice:)(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_MirroredClientMessage(0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v46 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Apple_Workout_Core_SequenceReset(0);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v44 - v13;
  v47 = type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message(0);
  v45 = *(v47 - 8);
  v16 = MEMORY[0x28223BE20](v47, v15);
  v18 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v19);
  v21 = &v44 - v20;
  v22 = type metadata accessor for BinaryDecodingOptions();
  MEMORY[0x28223BE20](v22 - 8, v23);
  v24 = type metadata accessor for Apple_Workout_Core_DataLinkMessage(0);
  v26 = MEMORY[0x28223BE20](v24, v25);
  v28 = &v44 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26, v29);
  v31 = &v44 - v30;
  v50 = a1;
  v51 = a2;
  v49 = 0;
  memset(v48, 0, sizeof(v48));
  outlined copy of Data._Representation(a1, a2);
  BinaryDecodingOptions.init()();
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_5(&lazy protocol witness table cache variable for type Apple_Workout_Core_DataLinkMessage and conformance Apple_Workout_Core_DataLinkMessage, type metadata accessor for Apple_Workout_Core_DataLinkMessage, &protocol conformance descriptor for Apple_Workout_Core_DataLinkMessage);
  Message.init<A>(serializedBytes:extensions:partial:options:)();
  v32 = v46;
  outlined init with take of Apple_Workout_Core_WorkoutNotification(v28, v31, type metadata accessor for Apple_Workout_Core_DataLinkMessage);
  outlined init with copy of Apple_Workout_Core_DataLinkMessage.OneOf_Message?(v31, v14, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  if ((*(v45 + 48))(v14, 1, v47) == 1)
  {
    _s11WorkoutCore06Apple_a1_B16_DataLinkMessageVWOhTm_0(v31, type metadata accessor for Apple_Workout_Core_DataLinkMessage);
    return _sSo8NSObjectCSgWOhTm_7(v14, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  }

  outlined init with take of Apple_Workout_Core_WorkoutNotification(v14, v21, type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message);
  outlined init with copy of Apple_Workout_Core_NotificationUpdate(v21, v18, type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 6)
  {
    outlined init with take of Apple_Workout_Core_WorkoutNotification(v18, v32, type metadata accessor for Apple_Workout_Core_MirroredClientMessage);
    DataLinkHealthKitHostConnection.handleMirroredClientMessage(_:)(v32);
    v36 = type metadata accessor for Apple_Workout_Core_MirroredClientMessage;
    v37 = v32;
    goto LABEL_9;
  }

  if (EnumCaseMultiPayload == 4)
  {
    outlined init with take of Apple_Workout_Core_WorkoutNotification(v18, v10, type metadata accessor for Apple_Workout_Core_SequenceReset);
    DataLinkHealthKitHostConnection.resetSequences(_:)(v10);
    v36 = type metadata accessor for Apple_Workout_Core_SequenceReset;
    v37 = v10;
LABEL_9:
    _s11WorkoutCore06Apple_a1_B16_DataLinkMessageVWOhTm_0(v37, v36);
    goto LABEL_10;
  }

  if (EnumCaseMultiPayload != 2)
  {
    if (one-time initialization token for dataLink != -1)
    {
      swift_once();
    }

    v40 = type metadata accessor for Logger();
    __swift_project_value_buffer(v40, static WOLog.dataLink);
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_20AEA4000, v41, v42, "Ignoring unexpected message", v43, 2u);
      MEMORY[0x20F2E9420](v43, -1, -1);
    }

    _s11WorkoutCore06Apple_a1_B16_DataLinkMessageVWOhTm_0(v21, type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message);
    _s11WorkoutCore06Apple_a1_B16_DataLinkMessageVWOhTm_0(v31, type metadata accessor for Apple_Workout_Core_DataLinkMessage);
    v39 = v18;
    v38 = type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message;
    return _s11WorkoutCore06Apple_a1_B16_DataLinkMessageVWOhTm_0(v39, v38);
  }

  v35 = v18[8];
  *&v48[0] = *v18;
  BYTE8(v48[0]) = v35;
  DataLinkHealthKitHostConnection.handleProtobufCommand(_:)(v48);
LABEL_10:
  _s11WorkoutCore06Apple_a1_B16_DataLinkMessageVWOhTm_0(v21, type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message);
  v38 = type metadata accessor for Apple_Workout_Core_DataLinkMessage;
  v39 = v31;
  return _s11WorkoutCore06Apple_a1_B16_DataLinkMessageVWOhTm_0(v39, v38);
}

void specialized DataLinkHealthKitHostConnection.workoutSession(_:didDisconnectFromRemoteDeviceWithError:)(void *a1)
{
  if (one-time initialization token for dataLink != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static WOLog.dataLink);
  v3 = a1;
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    if (a1)
    {
      v7 = a1;
      v8 = _swift_stdlib_bridgeErrorToNSError();
      v9 = v8;
    }

    else
    {
      v8 = 0;
      v9 = 0;
    }

    *(v5 + 4) = v8;
    *v6 = v9;
    _os_log_impl(&dword_20AEA4000, oslog, v4, "We received a disconnection notice, error: %@", v5, 0xCu);
    _sSo8NSObjectCSgWOhTm_7(v6, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F2E9420](v6, -1, -1);
    MEMORY[0x20F2E9420](v5, -1, -1);
  }
}

uint64_t partial apply for closure #1 in DataLinkHealthKitHostConnection.resetSequences(_:)(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t, uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = *(v2 + 16);
  v5 = v2 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return a2(v4, v5);
}

uint64_t outlined init with copy of Apple_Workout_Core_DataLinkMessage.OneOf_Message?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined init with copy of Apple_Workout_Core_NotificationUpdate(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s11WorkoutCore06Apple_a1_B16_DataLinkMessageVWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void _s11WorkoutCore30MirroredHostStartConfigurationV8protobufAA06Apple_a1_b1_cdeF0VvgyAFzXEfU_TA_1(uint64_t a1)
{
  if (*(v1 + 17))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  closure #1 in MirroredHostStartConfiguration.protobuf.getter(a1, v2 | *(v1 + 16), *(v1 + 24));
}

uint64_t outlined init with take of Apple_Workout_Core_WorkoutNotification(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

BOOL static DataLinkMirroredClientExpected.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = a2[1];
  v6 = v4 < 0 && v2 == v3;
  v7 = (v3 ^ v2) == 0;
  if (v4 < 0)
  {
    v7 = 0;
  }

  if (a1[1] >= 0)
  {
    return v7;
  }

  else
  {
    return v6;
  }
}

double DataLinkMirroredClientExpected.hash(into:)(uint64_t a1)
{
  if ((*(v1 + 8) & 0x8000000000000000) != 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore27MirroredHostMessageProtocol_pXpMd, &_s11WorkoutCore27MirroredHostMessageProtocol_pXpMR);
    String.init<A>(describing:)();
  }

  String.hash(into:)();

  return result;
}

uint64_t DataLinkMirroredClientExpected.description.getter()
{
  if ((v0[1] & 0x8000000000000000) != 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore27MirroredHostMessageProtocol_pXpMd, &_s11WorkoutCore27MirroredHostMessageProtocol_pXpMR);
    return String.init<A>(describing:)();
  }

  else if (*v0)
  {
    if (*v0 == 1)
    {
      return 0xD000000000000020;
    }

    else
    {
      return 0x75716552676E6970;
    }
  }

  else
  {
    return 0xD000000000000019;
  }
}

double protocol witness for Hashable.hash(into:) in conformance DataLinkMirroredClientExpected(uint64_t a1)
{
  if ((*(v1 + 8) & 0x8000000000000000) != 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore27MirroredHostMessageProtocol_pXpMd, &_s11WorkoutCore27MirroredHostMessageProtocol_pXpMR);
    String.init<A>(describing:)();
  }

  String.hash(into:)();

  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DataLinkMirroredClientExpected(uint64_t a1)
{
  v2 = *(v1 + 8);
  Hasher.init(_seed:)();
  if (v2 < 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore27MirroredHostMessageProtocol_pXpMd, &_s11WorkoutCore27MirroredHostMessageProtocol_pXpMR);
    String.init<A>(describing:)();
  }

  String.hash(into:)();

  return Hasher._finalize()();
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance DataLinkMirroredClientExpected(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = a2[1];
  v6 = v4 < 0 && v2 == v3;
  v7 = (v3 ^ v2) == 0;
  if (v4 < 0)
  {
    v7 = 0;
  }

  if (a1[1] >= 0)
  {
    return v7;
  }

  else
  {
    return v6;
  }
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance DataLinkMirroredClientExpected()
{
  if ((v0[1] & 0x8000000000000000) != 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore27MirroredHostMessageProtocol_pXpMd, &_s11WorkoutCore27MirroredHostMessageProtocol_pXpMR);
    return String.init<A>(describing:)();
  }

  else if (*v0)
  {
    if (*v0 == 1)
    {
      return 0xD000000000000020;
    }

    else
    {
      return 0x75716552676E6970;
    }
  }

  else
  {
    return 0xD000000000000019;
  }
}

__n128 DataLinkMirroredClientExpectation.expected.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t DataLinkMirroredClientExpectation.created.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DataLinkMirroredClientExpectation(0) + 24);
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for DataLinkMirroredClientExpectation(uint64_t a1)
{
  result = type metadata singleton initialization cache for DataLinkMirroredClientExpectation;
  if (!type metadata singleton initialization cache for DataLinkMirroredClientExpectation)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DataLinkMirroredClientExpectation.init(expected:timeout:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v5 = *a1;
  v6 = a1[1];
  type metadata accessor for DataLinkMirroredClientExpectation(0);
  result = static Date.now.getter();
  *a2 = v5;
  *(a2 + 8) = v6;
  *(a2 + 16) = a3;
  return result;
}

uint64_t DataLinkMirroredClientExpectation.description.getter()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Date.now.getter();
  Date.timeIntervalSinceReferenceDate.getter();
  (*(v3 + 8))(v6, v2);
  type metadata accessor for DataLinkMirroredClientExpectation(0);
  Date.timeIntervalSinceReferenceDate.getter();
  v16 = 0;
  v17 = 0xE000000000000000;
  _StringGuts.grow(_:)(57);
  MEMORY[0x20F2E6D80](0x6465746365707865, 0xEA0000000000203ALL);
  v15 = *v1;
  lazy protocol witness table accessor for type DataLinkMirroredClientExpected and conformance DataLinkMirroredClientExpected();
  v7 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x20F2E6D80](v7);

  MEMORY[0x20F2E6D80](0x756F656D6974202CLL, 0xEB00000000203A74);
  Double.write<A>(to:)();
  MEMORY[0x20F2E6D80](0x657461657263202CLL, 0xEB00000000203A64);
  if (one-time initialization token for logDateFormatter != -1)
  {
    swift_once();
  }

  v8 = static WOLog.logDateFormatter;
  isa = Date._bridgeToObjectiveC()().super.isa;
  v10 = [v8 stringFromDate_];

  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  MEMORY[0x20F2E6D80](v11, v13);

  MEMORY[0x20F2E6D80](0xD000000000000011, 0x800000020B45EEA0);
  Double.write<A>(to:)();
  return v16;
}

uint64_t getEnumTagSinglePayload for DataLinkMirroredClientExpected(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFFF && *(a1 + 16))
  {
    return (*a1 + 4095);
  }

  v3 = (((*(a1 + 8) >> 52) >> 11) | (2 * ((*(a1 + 8) >> 52) & 0x700 | (32 * (*(a1 + 8) & 7)) | (*a1 >> 59) & 0x1E | (*a1 >> 2) & 1))) ^ 0xFFF;
  if (v3 >= 0xFFE)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for DataLinkMirroredClientExpected(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFFE)
  {
    *result = a2 - 4095;
    *(result + 8) = 0;
    if (a3 >= 0xFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x7FF | ((-a2 & 0xFFF) << 11);
      *result = ((v3 << 59) | (4 * v3)) & 0xF000000000000007;
      *(result + 8) = ((v3 >> 5) | (v3 << 52)) & 0xF000000000000007;
    }
  }

  return result;
}

void *destructiveInjectEnumTag for DataLinkMirroredClientExpected(void *result, uint64_t a2)
{
  v2 = result[1] & 0xFFFFFFFFFFFFFF8 | (a2 << 63);
  *result &= 0xFFFFFFFFFFFFFFBuLL;
  result[1] = v2;
  return result;
}

uint64_t type metadata completion function for DataLinkMirroredClientExpectation(uint64_t a1)
{
  result = type metadata accessor for Date();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance MultisportTransitions.CodingKeys(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000017;
  }

  else
  {
    v3 = 0xD000000000000016;
  }

  if (v2)
  {
    v4 = "";
  }

  else
  {
    v4 = "shouldTrackTransitions";
  }

  if (*a2)
  {
    v5 = 0xD000000000000017;
  }

  else
  {
    v5 = 0xD000000000000016;
  }

  if (*a2)
  {
    v6 = "shouldTrackTransitions";
  }

  else
  {
    v6 = "";
  }

  if (v3 == v5 && (v4 | 0x8000000000000000) == (v6 | 0x8000000000000000))
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance MultisportTransitions.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

double protocol witness for Hashable.hash(into:) in conformance MultisportTransitions.CodingKeys(uint64_t a1)
{
  String.hash(into:)();

  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MultisportTransitions.CodingKeys(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void protocol witness for RawRepresentable.init(rawValue:) in conformance MultisportTransitions.CodingKeys(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of MultisportTransitions.CodingKeys.init(rawValue:), *a1);

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v3)
  {
    v4 = 0;
  }

  *a2 = v4;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance MultisportTransitions.CodingKeys(unint64_t *a1@<X8>)
{
  v2 = "shouldTrackTransitions";
  v3 = 0xD000000000000016;
  if (*v1)
  {
    v3 = 0xD000000000000017;
  }

  else
  {
    v2 = "";
  }

  *a1 = v3;
  a1[1] = v2 | 0x8000000000000000;
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance MultisportTransitions.CodingKeys()
{
  if (*v0)
  {
    return 0xD000000000000017;
  }

  else
  {
    return 0xD000000000000016;
  }
}

void protocol witness for CodingKey.init(stringValue:) in conformance MultisportTransitions.CodingKeys(Swift::String string@<0:X0, 8:X1>, char *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of MultisportTransitions.CodingKeys.init(rawValue:), v3);

  if (v5 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v5)
  {
    v6 = 0;
  }

  *a2 = v6;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MultisportTransitions.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MultisportTransitions.CodingKeys and conformance MultisportTransitions.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MultisportTransitions.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MultisportTransitions.CodingKeys and conformance MultisportTransitions.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

Swift::Int MultisportTransitions.hash.getter(uint64_t a1, uint64_t a2)
{
  Hasher.init()();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v3);

  Hasher._combine(_:)(v3[0]);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v3);

  Hasher._combine(_:)(v3[0]);
  return Hasher.finalize()();
}

uint64_t MultisportTransitions.isEqual(_:)(uint64_t a1)
{
  outlined init with copy of Any?(a1, v6);
  if (v6[3])
  {
    type metadata accessor for MultisportTransitions(0);
    if (swift_dynamicCast())
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter(v6);

      v1 = LOBYTE(v6[0]);
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter(v6);

      if (v1 == LOBYTE(v6[0]))
      {
        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter(v6);

        v4 = v6[0];
        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter(v6);

        v2 = v4 ^ LOBYTE(v6[0]) ^ 1;
        return v2 & 1;
      }
    }
  }

  else
  {
    outlined destroy of Any?(v6);
  }

  v2 = 0;
  return v2 & 1;
}

uint64_t MultisportTransitions.description.getter()
{
  v6 = 0;
  v7 = 0xE000000000000000;
  _StringGuts.grow(_:)(112);
  MEMORY[0x20F2E6D80](0xD000000000000035, 0x800000020B45FF70);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v5);

  if (v5)
  {
    v0 = 1702195828;
  }

  else
  {
    v0 = 0x65736C6166;
  }

  if (v5)
  {
    v1 = 0xE400000000000000;
  }

  else
  {
    v1 = 0xE500000000000000;
  }

  MEMORY[0x20F2E6D80](v0, v1);

  MEMORY[0x20F2E6D80](0xD000000000000036, 0x800000020B45FFB0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v5);

  if (v5)
  {
    v2 = 1702195828;
  }

  else
  {
    v2 = 0x65736C6166;
  }

  if (v5)
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  MEMORY[0x20F2E6D80](v2, v3);

  MEMORY[0x20F2E6D80](62, 0xE100000000000000);
  return v6;
}

uint64_t (*MultisportTransitions.shouldTrackTransitions.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return MultisportTransitions.shouldTrackTransitions.modify;
}

uint64_t (*MultisportTransitions.$shouldTrackTransitions.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC11WorkoutCore21MultisportTransitions__shouldTrackTransitions;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return MultisportTransitions.$shouldTrackTransitions.modify;
}

uint64_t MultisportTransitions.shouldTrackTransitions.getter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v3);

  return v3;
}

uint64_t type metadata accessor for MultisportTransitions(uint64_t a1)
{
  result = type metadata singleton initialization cache for MultisportTransitions;
  if (!type metadata singleton initialization cache for MultisportTransitions)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double MultisportTransitions.shouldTrackTransitions.setter(char a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  static Published.subscript.setter();
  return result;
}

uint64_t (*MultisportTransitions.automaticallySwitchLegs.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return MultisportTransitions.automaticallySwitchLegs.modify;
}

void MultisportTransitions.shouldTrackTransitions.modify(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t key path getter for MultisportTransitions.$shouldTrackTransitions : MultisportTransitions(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path setter for MultisportTransitions.$shouldTrackTransitions : MultisportTransitions(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v7 = *(v6 - 8);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v17 - v13;
  v15 = *(v7 + 16);
  v15(&v17 - v13, a1, v6);
  v15(v11, v14, v6);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v7 + 8))(v14, v6);
}

uint64_t MultisportTransitions.$shouldTrackTransitions.getter(void *a1)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t MultisportTransitions.$shouldTrackTransitions.setter(uint64_t a1, void *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  (*(v4 + 16))(&v8 - v6, a1, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(a1, v3);
}

uint64_t (*MultisportTransitions.$automaticallySwitchLegs.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC11WorkoutCore21MultisportTransitions__automaticallySwitchLegs;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return MultisportTransitions.$automaticallySwitchLegs.modify;
}

void MultisportTransitions.$shouldTrackTransitions.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[13];
  v11 = v3[14];
  v7 = v3[11];
  v6 = v3[12];
  v8 = v3[10];
  if (a2)
  {
    v4(v3[12], v5, v3[10]);
    swift_beginAccess();
    Published.projectedValue.setter();
    swift_endAccess();
    v9 = *(v7 + 8);
    v9(v5, v8);
    v10 = v11;
    v9(v11, v8);
  }

  else
  {
    swift_beginAccess();
    Published.projectedValue.setter();
    swift_endAccess();
    v10 = v11;
    (*(v7 + 8))(v11, v8);
  }

  free(v10);
  free(v5);
  free(v6);

  free(v3);
}

id MultisportTransitions.__allocating_init(automaticallySwitchLegs:shouldTrackTransitions:)(char a1, char a2)
{
  v4 = objc_allocWithZone(v2);
  swift_beginAccess();
  Published.init(initialValue:)();
  swift_endAccess();
  swift_beginAccess();
  v7 = a2;
  Published.init(initialValue:)();
  swift_endAccess();
  v6.receiver = v4;
  v6.super_class = v2;
  return objc_msgSendSuper2(&v6, sel_init);
}

id MultisportTransitions.init(automaticallySwitchLegs:shouldTrackTransitions:)(char a1, char a2)
{
  swift_beginAccess();
  Published.init(initialValue:)();
  swift_endAccess();
  swift_beginAccess();
  v6 = a2;
  Published.init(initialValue:)();
  swift_endAccess();
  v5.receiver = v2;
  v5.super_class = type metadata accessor for MultisportTransitions(0);
  return objc_msgSendSuper2(&v5, sel_init);
}

char *MultisportTransitions.init(from:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy11WorkoutCore21MultisportTransitionsC10CodingKeys33_CEBB1972F1FE54FE64D57FCD4E7CFF20LLOGMd, &_ss22KeyedDecodingContainerVy11WorkoutCore21MultisportTransitionsC10CodingKeys33_CEBB1972F1FE54FE64D57FCD4E7CFF20LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v14 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MultisportTransitions.CodingKeys and conformance MultisportTransitions.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for MultisportTransitions(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v16 = 1;
    v11 = KeyedDecodingContainer.decode(_:forKey:)();
    swift_beginAccess();
    v17 = v11 & 1;
    Published.init(initialValue:)();
    swift_endAccess();
    v16 = 0;
    v12 = KeyedDecodingContainer.decode(_:forKey:)();
    swift_beginAccess();
    v17 = v12 & 1;
    Published.init(initialValue:)();
    swift_endAccess();
    (*(v6 + 8))(v9, v5);
    v13 = type metadata accessor for MultisportTransitions(0);
    v15.receiver = v3;
    v15.super_class = v13;
    v3 = objc_msgSendSuper2(&v15, sel_init);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v3;
}

unint64_t lazy protocol witness table accessor for type MultisportTransitions.CodingKeys and conformance MultisportTransitions.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MultisportTransitions.CodingKeys and conformance MultisportTransitions.CodingKeys;
  if (!lazy protocol witness table cache variable for type MultisportTransitions.CodingKeys and conformance MultisportTransitions.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MultisportTransitions.CodingKeys and conformance MultisportTransitions.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MultisportTransitions.CodingKeys and conformance MultisportTransitions.CodingKeys;
  if (!lazy protocol witness table cache variable for type MultisportTransitions.CodingKeys and conformance MultisportTransitions.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MultisportTransitions.CodingKeys and conformance MultisportTransitions.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MultisportTransitions.CodingKeys and conformance MultisportTransitions.CodingKeys;
  if (!lazy protocol witness table cache variable for type MultisportTransitions.CodingKeys and conformance MultisportTransitions.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MultisportTransitions.CodingKeys and conformance MultisportTransitions.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MultisportTransitions.CodingKeys and conformance MultisportTransitions.CodingKeys;
  if (!lazy protocol witness table cache variable for type MultisportTransitions.CodingKeys and conformance MultisportTransitions.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MultisportTransitions.CodingKeys and conformance MultisportTransitions.CodingKeys);
  }

  return result;
}

uint64_t MultisportTransitions.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy11WorkoutCore21MultisportTransitionsC10CodingKeys33_CEBB1972F1FE54FE64D57FCD4E7CFF20LLOGMd, &_ss22KeyedEncodingContainerVy11WorkoutCore21MultisportTransitionsC10CodingKeys33_CEBB1972F1FE54FE64D57FCD4E7CFF20LLOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v9[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MultisportTransitions.CodingKeys and conformance MultisportTransitions.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter((&v10 + 2));

  BYTE1(v10) = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(&v10);

    v9[12] = 0;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v4 + 8))(v7, v3);
}

id static MultisportTransitions.defaultMultisportTransitions()()
{
  v0 = type metadata accessor for MultisportTransitions(0);
  v1 = objc_allocWithZone(v0);
  swift_beginAccess();
  Published.init(initialValue:)();
  swift_endAccess();
  swift_beginAccess();
  v4 = 1;
  Published.init(initialValue:)();
  swift_endAccess();
  v3.receiver = v1;
  v3.super_class = v0;
  return objc_msgSendSuper2(&v3, sel_init);
}

id MultisportTransitions.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MultisportTransitions.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MultisportTransitions(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *protocol witness for Decodable.init(from:) in conformance MultisportTransitions@<X0>(void *a1@<X0>, char **a2@<X8>)
{
  v5 = objc_allocWithZone(type metadata accessor for MultisportTransitions(0));
  result = MultisportTransitions.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance MultisportTransitions@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for MultisportTransitions(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

void type metadata completion function for MultisportTransitions(uint64_t a1)
{
  type metadata accessor for Published<Bool>();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t getEnumTagSinglePayload for MultisportTransitions.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for MultisportTransitions.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t NLSessionActivityGoal.displayString(formattingManager:distanceType:localizedOpenString:)(void *a1, uint64_t a2, char a3, uint64_t a4, id a5)
{
  v7 = v5;
  v13 = [v7 goalTypeIdentifier];
  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = [v7 requiredDistance];
      if (v14)
      {
        v15 = v14;
        v16 = [objc_allocWithZone(MEMORY[0x277D0A838]) initWithGoalTypeIdentifier:1 value:v14];
        v48 = NLSessionActivityGoal.displayString(formattingManager:distanceType:localizedOpenString:)(a1, a2, a3 & 1, 0, 0);
        v18 = v17;

        [v7 doubleValue];
        v19 = [a1 stringWithDuration:3 durationFormat:?];
        if (v19)
        {
          v20 = v19;
          v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v23 = v22;
        }

        else
        {
          v21 = 0;
          v23 = 0;
        }

        type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v36 = [objc_opt_self() bundleForClass_];
        v37 = MEMORY[0x20F2E6C00](0xD00000000000001DLL, 0x800000020B45B910);
        v38 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
        v39 = [v36 localizedStringForKey:v37 value:0 table:v38];

        static String._unconditionallyBridgeFromObjectiveC(_:)();
        if (v23)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
          v40 = swift_allocObject();
          *(v40 + 16) = xmmword_20B4282E0;
          v41 = MEMORY[0x277D837D0];
          *(v40 + 56) = MEMORY[0x277D837D0];
          v42 = lazy protocol witness table accessor for type String and conformance String();
          *(v40 + 32) = v48;
          *(v40 + 40) = v18;
          *(v40 + 96) = v41;
          *(v40 + 104) = v42;
          *(v40 + 64) = v42;
          *(v40 + 72) = v21;
          *(v40 + 80) = v23;
          a4 = String.init(format:_:)();

          goto LABEL_25;
        }
      }

      [v7 doubleValue];
      v27 = [a1 stringWithDuration:7 durationFormat:?];
      if (!v27)
      {
        __break(1u);
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }
    }

    else
    {
      if (v13 != 3)
      {
        goto LABEL_33;
      }

      [v7 doubleValue];
      v27 = [a1 localizedStringWithEnergyInCalories:1 energyType:1 unitStyle:?];
      if (!v27)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v30 = v27;
    countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
    goto LABEL_29;
  }

  if (!v13)
  {
    if (a5)
    {

      return a4;
    }

    v29 = MEMORY[0x20F2E82D0]();
    if (v29)
    {
      v30 = v29;
      v49._object = 0xE000000000000000;
      v31.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v31.value._object = 0xEB00000000656C62;
      v32._object = 0x800000020B460130;
      v32._countAndFlagsBits = 0xD000000000000011;
      v33._countAndFlagsBits = 0;
      v33._object = 0xE000000000000000;
      v49._countAndFlagsBits = 0;
      countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v32, v31, v30, v33, v49)._countAndFlagsBits;
LABEL_29:
      a4 = countAndFlagsBits;

      return a4;
    }

    goto LABEL_32;
  }

  if (v13 == 1)
  {
    v24 = [v7 value];
    if (!v24)
    {
      result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000035, 0x800000020B4600F0, "WorkoutCore/NLSessionActivityGoalDisplaying.swift", 49, 2, 61, 0);
      goto LABEL_35;
    }

    v6 = v24;
    v25 = [v24 _unit];
    a4 = MEMORY[0x20F2E8310]();

    a5 = [objc_opt_self() defaultPrecisionForDistanceUnit_];
    [v7 doubleValue];
    if ((a3 & 1) == 0 && a2 == 3)
    {
      v26 = [a1 localizedStringWithDistanceInMeters:3 distanceType:a4 distanceUnit:2 unitStyle:6 roundingMode:?];
      if (!v26)
      {
LABEL_14:

        return 0;
      }

      goto LABEL_19;
    }

LABEL_18:
    v26 = [a1 localizedStringWithDistanceInMeters:a4 distanceUnit:2 unitStyle:a5 decimalPrecision:6 roundingMode:2 decimalTrimmingMode:?];
    if (!v26)
    {
      goto LABEL_14;
    }

LABEL_19:
    v28 = v26;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    lazy protocol witness table accessor for type String and conformance String();
    a4 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

LABEL_25:

    return a4;
  }

LABEL_33:
  _StringGuts.grow(_:)(20);

  v44 = [v7 description];
  v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v47 = v46;

  MEMORY[0x20F2E6D80](v45, v47);

  result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000012, 0x800000020B4600D0, "WorkoutCore/NLSessionActivityGoalDisplaying.swift", 49, 2, 92, 0);
LABEL_35:
  __break(1u);
  return result;
}

uint64_t NLSessionActivityGoal.intervalDisplayString(formattingManager:distanceType:)(void *a1, uint64_t a2, char a3)
{
  if ([v3 goalTypeIdentifier] != 2)
  {
    goto LABEL_4;
  }

  v7 = [v3 requiredDistance];
  if (v7)
  {

LABEL_4:
    type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v9 = [objc_opt_self() bundleForClass_];
    v10 = MEMORY[0x20F2E6C00](0xD000000000000013, 0x800000020B460150);
    v11 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
    v12 = [v9 localizedStringForKey:v10 value:0 table:v11];

    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v16 = NLSessionActivityGoal.displayString(formattingManager:distanceType:localizedOpenString:)(a1, a2, a3 & 1, v13, v15);

    return v16;
  }

  [v3 doubleValue];

  return specialized static ElapsedTimeFormatter.stringFromElapsedTime(_:trimDoubleLeadingZero:compactHours:)(0, 0, v18);
}

uint64_t NLSessionActivityGoal.intervalAXSpokenString(formattingManager:distanceType:)(void *a1, uint64_t a2, char a3)
{
  if ([v3 goalTypeIdentifier] != 2)
  {
    goto LABEL_4;
  }

  v7 = [v3 requiredDistance];
  if (v7)
  {

LABEL_4:
    type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v9 = [objc_opt_self() bundleForClass_];
    v10 = MEMORY[0x20F2E6C00](0xD000000000000013, 0x800000020B460150);
    v11 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
    v12 = [v9 localizedStringForKey:v10 value:0 table:v11];

    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v16 = NLSessionActivityGoal.accessibilitySpokenString(formattingManager:distanceType:localizedOpenString:)(a1, a2, a3 & 1, v13, v15);

    return v16;
  }

  [v3 doubleValue];
  if (one-time initialization token for accessibilityDateFormatter != -1)
  {
    swift_once();
  }

  v18 = [static ElapsedTimeFormatter.accessibilityDateFormatter stringFromTimeInterval_];
  if (!v18)
  {
    return 0;
  }

  v19 = v18;
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v16;
}

uint64_t NLSessionActivityGoal.accessibilitySpokenString(formattingManager:distanceType:localizedOpenString:)(void *a1, uint64_t a2, char a3, uint64_t a4, void *a5)
{
  v6 = v5;
  if ([v6 goalTypeIdentifier] != 2)
  {
    return NLSessionActivityGoal.displayString(formattingManager:distanceType:localizedOpenString:)(a1, a2, a3 & 1, a4, a5);
  }

  [v6 doubleValue];
  if (one-time initialization token for accessibilityDateFormatter != -1)
  {
    swift_once();
  }

  v12 = [static ElapsedTimeFormatter.accessibilityDateFormatter stringFromTimeInterval_];
  if (v12)
  {
    v13 = v12;
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0xE000000000000000;
  }

  v17 = [v6 requiredDistance];
  if (v17)
  {
    v18 = v17;
    v19 = [objc_allocWithZone(MEMORY[0x277D0A838]) initWithGoalTypeIdentifier:1 value:v17];
    v20 = NLSessionActivityGoal.displayString(formattingManager:distanceType:localizedOpenString:)(a1, a2, a3 & 1, 0, 0);
    v22 = v21;

    type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v24 = [objc_opt_self() bundleForClass_];
    v25 = MEMORY[0x20F2E6C00](0xD00000000000001DLL, 0x800000020B45B910);
    v26 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
    v27 = [v24 localizedStringForKey:v25 value:0 table:v26];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_20B4282E0;
    v29 = MEMORY[0x277D837D0];
    *(v28 + 56) = MEMORY[0x277D837D0];
    v30 = lazy protocol witness table accessor for type String and conformance String();
    *(v28 + 32) = v20;
    *(v28 + 40) = v22;
    *(v28 + 96) = v29;
    *(v28 + 104) = v30;
    *(v28 + 64) = v30;
    *(v28 + 72) = v14;
    *(v28 + 80) = v16;
    v14 = String.init(format:_:)();
  }

  return v14;
}

uint64_t WorkoutAppInstallationState.description.getter()
{
  v1 = 0x656C6C6174736E69;
  if (*v0 != 1)
  {
    v1 = 0x6174736E49746F6ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E776F6E6B6E75;
  }
}

Swift::Int WorkoutAppInstallationState.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance WorkoutAppInstallationState()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance WorkoutAppInstallationState(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WorkoutAppInstallationState()
{
  v1 = 0x656C6C6174736E69;
  if (*v0 != 1)
  {
    v1 = 0x6174736E49746F6ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E776F6E6B6E75;
  }
}

double WorkoutAppInstallationUtility.installationState.getter@<D0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(a1);

  return result;
}

uint64_t key path getter for WorkoutAppInstallationUtility.$installationState : WorkoutAppInstallationUtility(void *a1)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore0C20AppInstallationStateOGMd, &_s7Combine9PublishedVy11WorkoutCore0C20AppInstallationStateOGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path setter for WorkoutAppInstallationUtility.$installationState : WorkoutAppInstallationUtility(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy11WorkoutCore0D20AppInstallationStateO_GMd, &_s7Combine9PublishedV9PublisherVy11WorkoutCore0D20AppInstallationStateO_GMR);
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v14 - v10;
  v12 = *(v4 + 16);
  v12(&v14 - v10, a1, v3);
  v12(v8, v11, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore0C20AppInstallationStateOGMd, &_s7Combine9PublishedVy11WorkoutCore0C20AppInstallationStateOGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v11, v3);
}

uint64_t WorkoutAppInstallationUtility.$installationState.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore0C20AppInstallationStateOGMd, &_s7Combine9PublishedVy11WorkoutCore0C20AppInstallationStateOGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

id WorkoutAppInstallationUtility.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

NSObject *WorkoutAppInstallationUtility.init()()
{
  v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = v1;
  v3 = objc_allocWithZone(type metadata accessor for WorkoutAppInstallationUtility(0));
  v4 = specialized WorkoutAppInstallationUtility.init(dependencies:)(v0, v2, v3);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v4;
}

WorkoutCore::DefaultWorkoutAppDependencies __swiftcall DefaultWorkoutAppDependencies.init()()
{
  v1 = v0;
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *v1 = v2;
  v1[1] = v3;
  result.workoutBundleIdentifier._object = v3;
  result.workoutBundleIdentifier._countAndFlagsBits = v2;
  return result;
}

NSObject *WorkoutAppInstallationUtility.__allocating_init(dependencies:)(void *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  v6 = specialized WorkoutAppInstallationUtility.__allocating_init(dependencies:)(v5, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_1Tm_8(a1);
  return v6;
}

uint64_t type metadata accessor for WorkoutAppInstallationUtility(uint64_t a1)
{
  result = type metadata singleton initialization cache for WorkoutAppInstallationUtility;
  if (!type metadata singleton initialization cache for WorkoutAppInstallationUtility)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

NSObject *WorkoutAppInstallationUtility.init(dependencies:)(void *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  MEMORY[0x28223BE20](v5, v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7);
  v9 = specialized WorkoutAppInstallationUtility.init(dependencies:)(v7, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_1Tm_8(a1);
  return v9;
}

uint64_t closure #1 in WorkoutAppInstallationUtility.init(dependencies:)()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = closure #1 in WorkoutAppInstallationUtility.init(dependencies:);

  return WorkoutAppInstallationUtility.fetchInitialInstallationStatus()();
}

{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

id WorkoutAppInstallationUtility.__deallocating_deinit()
{
  result = [objc_opt_self() sharedDeviceConnection];
  if (result)
  {
    v2 = result;
    [result removeObserver_];

    v3.receiver = v0;
    v3.super_class = type metadata accessor for WorkoutAppInstallationUtility(0);
    return objc_msgSendSuper2(&v3, sel_dealloc);
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall WorkoutAppInstallationUtility.updateInstallationState(_:)(WorkoutCore::WorkoutAppInstallationState a1)
{
  v2 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v23);

  if (v2 != v23)
  {
    if (one-time initialization token for xpcService != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static WOLog.xpcService);
    v4 = v1;
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v21 = v8;
      *v7 = 136315394;
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter(&v20);

      v9 = 0x656C6C6174736E69;
      v10 = 0xE900000000000064;
      if (v20 != 1)
      {
        v9 = 0x6174736E49746F6ELL;
        v10 = 0xEC00000064656C6CLL;
      }

      if (v20)
      {
        v11 = v9;
      }

      else
      {
        v11 = 0x6E776F6E6B6E75;
      }

      if (v20)
      {
        v12 = v10;
      }

      else
      {
        v12 = 0xE700000000000000;
      }

      v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v21);

      *(v7 + 4) = v13;
      *(v7 + 12) = 2080;
      v14 = 0x656C6C6174736E69;
      v15 = 0xE900000000000064;
      if (v2 != 1)
      {
        v14 = 0x6174736E49746F6ELL;
        v15 = 0xEC00000064656C6CLL;
      }

      if (v2)
      {
        v16 = v14;
      }

      else
      {
        v16 = 0x6E776F6E6B6E75;
      }

      if (v2)
      {
        v17 = v15;
      }

      else
      {
        v17 = 0xE700000000000000;
      }

      v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &v21);

      *(v7 + 14) = v18;
      _os_log_impl(&dword_20AEA4000, v5, v6, "WorkoutAppInstallationUtility: workout app installation state changed from %s to %s", v7, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F2E9420](v8, -1, -1);
      MEMORY[0x20F2E9420](v7, -1, -1);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v22 = v2;
    v19 = v4;
    static Published.subscript.setter();
  }
}

uint64_t WorkoutAppInstallationUtility.fetchInitialInstallationStatus()()
{
  *(v1 + 48) = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  *(v1 + 56) = swift_task_alloc();

  return MEMORY[0x2822009F8](WorkoutAppInstallationUtility.fetchInitialInstallationStatus(), 0, 0);
}

{
  v1 = v0[7];
  v2 = (v0[6] + OBJC_IVAR____TtC11WorkoutCore29WorkoutAppInstallationUtility_dependencies);
  v3 = v2[3];
  v4 = v2[4];
  __swift_project_boxed_opaque_existential_1Tm_0(v2, v3);
  (*(v4 + 16))(v3, v4);
  v5 = type metadata accessor for UUID();
  v6 = (*(*(v5 - 8) + 48))(v1, 1, v5);
  _sSS_yptWOhTm_1(v1, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  if (v6 == 1)
  {
    if (one-time initialization token for xpcService != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static WOLog.xpcService);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_20AEA4000, v8, v9, "WorkoutAppInstallationUtility: no active paired device found", v10, 2u);
      MEMORY[0x20F2E9420](v10, -1, -1);
    }

    v11 = v0[1];

    return v11();
  }

  else
  {
    v13 = v2[3];
    v14 = v2[4];
    __swift_project_boxed_opaque_existential_1Tm_0(v2, v13);
    v15 = v2[3];
    v16 = v2[4];
    __swift_project_boxed_opaque_existential_1Tm_0(v2, v15);
    v17 = (*(v16 + 8))(v15, v16);
    v19 = v18;
    v0[8] = v18;
    v21 = (*(v14 + 24) + **(v14 + 24));
    v20 = swift_task_alloc();
    v0[9] = v20;
    *v20 = v0;
    v20[1] = WorkoutAppInstallationUtility.fetchInitialInstallationStatus();

    return v21(v17, v19, v13, v14);
  }
}

{
  v16 = v0;
  v1 = *(v0 + 97);
  if (one-time initialization token for xpcService != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static WOLog.xpcService);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 97);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15 = v7;
    *v6 = 136315138;
    if (v5)
    {
      v8 = 0x656C6C6174736E69;
    }

    else
    {
      v8 = 0x6174736E49746F6ELL;
    }

    if (v5)
    {
      v9 = 0xE900000000000064;
    }

    else
    {
      v9 = 0xEC00000064656C6CLL;
    }

    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v15);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_20AEA4000, v3, v4, "WorkoutAppInstallationUtility: initial fetch completed, workout app state: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm_8(v7);
    MEMORY[0x20F2E9420](v7, -1, -1);
    MEMORY[0x20F2E9420](v6, -1, -1);
  }

  if (v1)
  {
    v11 = 1;
  }

  else
  {
    v11 = 2;
  }

  *(v0 + 96) = v11;
  type metadata accessor for MainActor();
  *(v0 + 88) = static MainActor.shared.getter();
  v13 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](WorkoutAppInstallationUtility.fetchInitialInstallationStatus(), v13, v12);
}

{

  WorkoutAppInstallationUtility.updateInstallationState(_:)((v0 + 96));

  v1 = *(v0 + 8);

  return v1();
}

{
  v16 = v0;

  if (one-time initialization token for xpcService != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 80);
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static WOLog.xpcService);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 80);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v10 = Error.localizedDescription.getter();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v15);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_20AEA4000, v4, v5, "WorkoutAppInstallationUtility: failed to check workout app installation status: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm_8(v9);
    MEMORY[0x20F2E9420](v9, -1, -1);
    MEMORY[0x20F2E9420](v8, -1, -1);
  }

  else
  {
  }

  v13 = *(v0 + 8);

  return v13();
}

uint64_t WorkoutAppInstallationUtility.fetchInitialInstallationStatus()(char a1)
{
  v3 = *v2;
  *(v3 + 97) = a1;
  *(v3 + 80) = v1;

  if (v1)
  {
    v4 = WorkoutAppInstallationUtility.fetchInitialInstallationStatus();
  }

  else
  {

    v4 = WorkoutAppInstallationUtility.fetchInitialInstallationStatus();
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t DefaultWorkoutAppDependencies.workoutBundleIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t DefaultWorkoutAppDependencies.getActivePairedDeviceID()@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v14 - v4;
  v6 = FIGetActivePairedDevice();
  if (v6)
  {
    v7 = v6;
    v8 = [v6 pairingID];

    if (v8)
    {
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v9 = type metadata accessor for UUID();
      (*(*(v9 - 8) + 56))(v5, 0, 1, v9);
    }

    else
    {
      v13 = type metadata accessor for UUID();
      (*(*(v13 - 8) + 56))(v5, 1, 1, v13);
    }

    return outlined init with take of UUID?(v5, a1);
  }

  else
  {
    v10 = type metadata accessor for UUID();
    v11 = *(*(v10 - 8) + 56);

    return v11(a1, 1, 1, v10);
  }
}

uint64_t DefaultWorkoutAppDependencies.checkAppInstallation(bundleID:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 224) = a1;
  *(v2 + 232) = a2;
  return MEMORY[0x2822009F8](DefaultWorkoutAppDependencies.checkAppInstallation(bundleID:), 0, 0);
}

uint64_t DefaultWorkoutAppDependencies.checkAppInstallation(bundleID:)(uint64_t a1)
{
  v2 = FIGetActivePairedDevice();
  v1[30] = v2;
  if (v2)
  {
    v3 = v2;
    v4 = [objc_opt_self() sharedDeviceConnection];
    v1[31] = v4;
    if (v4)
    {
      v5 = v4;
      v7 = v1[28];
      v6 = v1[29];
      v8 = v3;
      v9 = MEMORY[0x20F2E6C00](v7, v6);
      v1[32] = v9;
      v1[2] = v1;
      v1[7] = v1 + 34;
      v1[3] = DefaultWorkoutAppDependencies.checkAppInstallation(bundleID:);
      v10 = swift_continuation_init();
      v1[27] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySbs5Error_pGMd, &_sSccySbs5Error_pGMR);
      v1[20] = MEMORY[0x277D85DD0];
      v1[21] = 1107296256;
      v1[22] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned Bool, @unowned NSError?) -> () with result type Bool;
      v1[23] = &block_descriptor_40;
      v1[24] = v10;
      [v5 applicationIsInstalledOnPairedDevice:v8 withBundleID:v9 completion:v1 + 20];
      v4 = v1 + 2;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x282200938](v4);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_20B423A90;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 40) = v12;
    *(inited + 48) = 0xD000000000000016;
    *(inited + 56) = 0x800000020B460170;
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    _sSS_yptWOhTm_1(inited + 32, &_sSS_yptMd, &_sSS_yptMR);
    v13 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v14 = MEMORY[0x20F2E6C00](0xD00000000000001DLL, 0x800000020B43B970);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v13 initWithDomain:v14 code:1 userInfo:isa];

    swift_willThrow();
    v16 = v1[1];

    return v16(0);
  }
}

{
  v2 = v1[32];
  v4 = v1[30];
  v3 = v1[31];
  swift_willThrow();

  v5 = v1[1];

  return v5(0);
}

uint64_t DefaultWorkoutAppDependencies.checkAppInstallation(bundleID:)()
{
  v1 = *(*v0 + 48);
  *(*v0 + 264) = v1;
  if (v1)
  {
    v2 = DefaultWorkoutAppDependencies.checkAppInstallation(bundleID:);
  }

  else
  {
    v2 = DefaultWorkoutAppDependencies.checkAppInstallation(bundleID:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v2 = *(v0 + 248);
  v1 = *(v0 + 256);
  v3 = *(v0 + 240);

  v4 = *(v0 + 272);
  v5 = *(v0 + 8);

  return v5(v4);
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned Bool, @unowned NSError?) -> () with result type Bool(uint64_t a1, char a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1Tm_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return MEMORY[0x282200950](v5);
  }
}

uint64_t protocol witness for WorkoutAppInstallationDependencies.workoutBundleIdentifier.getter in conformance DefaultWorkoutAppDependencies()
{
  v1 = *v0;

  return v1;
}

uint64_t protocol witness for WorkoutAppInstallationDependencies.checkAppInstallation(bundleID:) in conformance DefaultWorkoutAppDependencies(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for WorkoutAppInstallationDependencies.checkAppInstallation(bundleID:) in conformance DefaultWorkoutAppDependencies;

  return DefaultWorkoutAppDependencies.checkAppInstallation(bundleID:)(a1, a2);
}

uint64_t protocol witness for WorkoutAppInstallationDependencies.checkAppInstallation(bundleID:) in conformance DefaultWorkoutAppDependencies(char a1)
{
  v7 = *v2;

  v4 = *(v7 + 8);
  if (v1)
  {
    v5 = 0;
  }

  else
  {
    v5 = a1 & 1;
  }

  return v4(v5);
}

uint64_t WorkoutAppInstallationUtility.WorkoutAppInstallationDelegate.applicationsInstalled(_:onDeviceWithPairingID:)(unint64_t a1, uint64_t a2)
{
  v69 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v68 = &v66 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v71 = &v66 - v8;
  v9 = type metadata accessor for UUID();
  v72 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9, v10);
  v13 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v14);
  v70 = &v66 - v15;
  if (one-time initialization token for xpcService != -1)
  {
LABEL_31:
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  v17 = __swift_project_value_buffer(v16, static WOLog.xpcService);

  v66 = v17;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();

  v20 = os_log_type_enabled(v18, v19);
  v67 = v13;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v77 = v22;
    *v21 = 136315138;
    v23 = type metadata accessor for ACXRemoteApplication();
    v24 = MEMORY[0x20F2E6F70](a1, v23);
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, &v77);

    *(v21 + 4) = v26;
    _os_log_impl(&dword_20AEA4000, v18, v19, "WorkoutAppInstallationUtility: applicationsInstalled: %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm_8(v22);
    MEMORY[0x20F2E9420](v22, -1, -1);
    MEMORY[0x20F2E9420](v21, -1, -1);
  }

  v73 = v9;
  v75 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
    v76 = __CocoaSet.count.getter();
  }

  else
  {
    v76 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v27 = 0;
  v28 = (v74 + OBJC_IVAR____TtCC11WorkoutCore29WorkoutAppInstallationUtility30WorkoutAppInstallationDelegate_dependencies);
  v13 = (a1 & 0xC000000000000001);
  do
  {
    v29 = v27;
    if (v76 == v27)
    {
      break;
    }

    if (v13)
    {
      v30 = MEMORY[0x20F2E7A20](v27, a1);
    }

    else
    {
      if (v27 >= *(v75 + 16))
      {
        goto LABEL_30;
      }

      v30 = *(a1 + 8 * v27 + 32);
    }

    v31 = v30;
    if (__OFADD__(v29, 1))
    {
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v32 = [v30 bundleIdentifier];
    v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = v34;

    v36 = v28[3];
    v37 = v28[4];
    __swift_project_boxed_opaque_existential_1Tm_0(v28, v36);
    if (v33 == (*(v37 + 8))(v36, v37) && v35 == v38)
    {

      break;
    }

    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v27 = v29 + 1;
  }

  while ((v9 & 1) == 0);
  v40 = v28[3];
  v41 = v28[4];
  __swift_project_boxed_opaque_existential_1Tm_0(v28, v40);
  v42 = v71;
  (*(v41 + 16))(v40, v41);
  v43 = v72;
  v44 = v73;
  if ((*(v72 + 48))(v42, 1, v73) == 1)
  {
    return _sSS_yptWOhTm_1(v42, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  }

  v46 = v70;
  (*(v43 + 32))(v70, v42, v44);
  v47 = v69;
  v48 = static UUID.== infix(_:_:)();
  if (v76 == v29 || (v48 & 1) == 0)
  {
    return (*(v43 + 8))(v46, v44);
  }

  v49 = v67;
  (*(v43 + 16))(v67, v47, v44);
  v50 = Logger.logObject.getter();
  v51 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v77 = v53;
    *v52 = 136315138;
    lazy protocol witness table accessor for type UUID and conformance UUID();
    v54 = dispatch thunk of CustomStringConvertible.description.getter();
    v55 = v43;
    v57 = v56;
    v58 = *(v55 + 8);
    v58(v49, v44);
    v59 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, v57, &v77);

    *(v52 + 4) = v59;
    _os_log_impl(&dword_20AEA4000, v50, v51, "WorkoutAppInstallationUtility: workout app installed on device %s", v52, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm_8(v53);
    MEMORY[0x20F2E9420](v53, -1, -1);
    MEMORY[0x20F2E9420](v52, -1, -1);
  }

  else
  {

    v58 = *(v43 + 8);
    v58(v49, v44);
  }

  v60 = type metadata accessor for TaskPriority();
  v61 = v68;
  (*(*(v60 - 8) + 56))(v68, 1, 1, v60);
  v62 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for MainActor();

  v63 = static MainActor.shared.getter();
  v64 = swift_allocObject();
  v65 = MEMORY[0x277D85700];
  v64[2] = v63;
  v64[3] = v65;
  v64[4] = v62;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v61, &async function pointer to partial apply for closure #2 in WorkoutAppInstallationUtility.WorkoutAppInstallationDelegate.applicationsInstalled(_:onDeviceWithPairingID:), v64);

  return (v58)(v70, v44);
}

uint64_t closure #2 in WorkoutAppInstallationUtility.WorkoutAppInstallationDelegate.applicationsInstalled(_:onDeviceWithPairingID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v4[6] = type metadata accessor for MainActor();
  v4[7] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[8] = v6;
  v4[9] = v5;

  return MEMORY[0x2822009F8](closure #2 in WorkoutAppInstallationUtility.WorkoutAppInstallationDelegate.applicationsInstalled(_:onDeviceWithPairingID:), v6, v5);
}

uint64_t closure #2 in WorkoutAppInstallationUtility.WorkoutAppInstallationDelegate.applicationsInstalled(_:onDeviceWithPairingID:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 80) = Strong;
  if (Strong)
  {
    v2 = Strong;
    v3 = swift_unknownObjectWeakLoadStrong();
    *(v0 + 88) = v3;
    if (v3)
    {
      *(v0 + 104) = 1;
      *(v0 + 96) = static MainActor.shared.getter();
      v5 = dispatch thunk of Actor.unownedExecutor.getter();

      return MEMORY[0x2822009F8](closure #2 in WorkoutAppInstallationUtility.WorkoutAppInstallationDelegate.applicationsInstalled(_:onDeviceWithPairingID:), v5, v4);
    }
  }

  else
  {
  }

  v6 = *(v0 + 8);

  return v6();
}

{

  WorkoutAppInstallationUtility.updateInstallationState(_:)((v0 + 104));
  swift_unknownObjectRelease();
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return MEMORY[0x2822009F8](closure #2 in WorkoutAppInstallationUtility.WorkoutAppInstallationDelegate.applicationsInstalled(_:onDeviceWithPairingID:), v1, v2);
}

{
  v1 = *(v0 + 80);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t WorkoutAppInstallationUtility.WorkoutAppInstallationDelegate.applicationsUninstalled(_:onDeviceWithPairingID:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v70 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v69 = v66 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = v66 - v10;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v15 = MEMORY[0x28223BE20](v12, v14);
  v17 = v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v18);
  v20 = v66 - v19;
  if (one-time initialization token for xpcService != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  v22 = __swift_project_value_buffer(v21, static WOLog.xpcService);

  v66[1] = v22;
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();

  v25 = os_log_type_enabled(v23, v24);
  v67 = v17;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v71 = v20;
    v68 = v3;
    v28 = v12;
    v29 = v27;
    v72[0] = v27;
    *v26 = 136315138;
    v30 = MEMORY[0x20F2E6F70](a1, MEMORY[0x277D837D0]);
    v32 = v13;
    v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, v72);

    *(v26 + 4) = v33;
    v13 = v32;
    _os_log_impl(&dword_20AEA4000, v23, v24, "WorkoutAppInstallationUtility: applicationsUninstalled: %s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm_8(v29);
    v34 = v29;
    v12 = v28;
    v3 = v68;
    v20 = v71;
    MEMORY[0x20F2E9420](v34, -1, -1);
    MEMORY[0x20F2E9420](v26, -1, -1);
  }

  v35 = (v3 + OBJC_IVAR____TtCC11WorkoutCore29WorkoutAppInstallationUtility30WorkoutAppInstallationDelegate_dependencies);
  v36 = *(v3 + OBJC_IVAR____TtCC11WorkoutCore29WorkoutAppInstallationUtility30WorkoutAppInstallationDelegate_dependencies + 24);
  v37 = *(v3 + OBJC_IVAR____TtCC11WorkoutCore29WorkoutAppInstallationUtility30WorkoutAppInstallationDelegate_dependencies + 32);
  __swift_project_boxed_opaque_existential_1Tm_0((v3 + OBJC_IVAR____TtCC11WorkoutCore29WorkoutAppInstallationUtility30WorkoutAppInstallationDelegate_dependencies), v36);
  v72[0] = (*(v37 + 8))(v36, v37);
  v72[1] = v38;
  MEMORY[0x28223BE20](v72[0], v38);
  v66[-2] = v72;
  v39 = specialized Sequence.contains(where:)(_sSTsSQ7ElementRpzrlE8containsySbABFSbABXEfU_SaySSG_TG5TA_0, &v66[-4], a1);

  v40 = v35[3];
  v41 = v35[4];
  __swift_project_boxed_opaque_existential_1Tm_0(v35, v40);
  (*(v41 + 16))(v40, v41);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    return _sSS_yptWOhTm_1(v11, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  }

  (*(v13 + 32))(v20, v11, v12);
  v43 = v70;
  if ((v39 & static UUID.== infix(_:_:)() & 1) == 0)
  {
    return (*(v13 + 8))(v20, v12);
  }

  v44 = v67;
  (*(v13 + 16))(v67, v43, v12);
  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.default.getter();
  v47 = os_log_type_enabled(v45, v46);
  v71 = v20;
  if (v47)
  {
    v48 = swift_slowAlloc();
    v68 = v3;
    v49 = v12;
    v50 = v48;
    v51 = swift_slowAlloc();
    v72[0] = v51;
    *v50 = 136315138;
    lazy protocol witness table accessor for type UUID and conformance UUID();
    v52 = dispatch thunk of CustomStringConvertible.description.getter();
    v53 = v44;
    v54 = v52;
    v56 = v55;
    v57 = *(v13 + 8);
    v57(v53, v49);
    v58 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, v56, v72);

    *(v50 + 4) = v58;
    _os_log_impl(&dword_20AEA4000, v45, v46, "WorkoutAppInstallationUtility: workout app uninstalled from device %s", v50, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm_8(v51);
    MEMORY[0x20F2E9420](v51, -1, -1);
    v59 = v50;
    v12 = v49;
    MEMORY[0x20F2E9420](v59, -1, -1);
  }

  else
  {

    v57 = *(v13 + 8);
    v57(v44, v12);
  }

  v60 = type metadata accessor for TaskPriority();
  v61 = v69;
  (*(*(v60 - 8) + 56))(v69, 1, 1, v60);
  v62 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for MainActor();

  v63 = static MainActor.shared.getter();
  v64 = swift_allocObject();
  v65 = MEMORY[0x277D85700];
  v64[2] = v63;
  v64[3] = v65;
  v64[4] = v62;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v61, &async function pointer to partial apply for closure #1 in WorkoutAppInstallationUtility.WorkoutAppInstallationDelegate.applicationsUninstalled(_:onDeviceWithPairingID:), v64);

  return (v57)(v71, v12);
}

uint64_t closure #1 in WorkoutAppInstallationUtility.WorkoutAppInstallationDelegate.applicationsUninstalled(_:onDeviceWithPairingID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v4[6] = type metadata accessor for MainActor();
  v4[7] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[8] = v6;
  v4[9] = v5;

  return MEMORY[0x2822009F8](closure #1 in WorkoutAppInstallationUtility.WorkoutAppInstallationDelegate.applicationsUninstalled(_:onDeviceWithPairingID:), v6, v5);
}

uint64_t closure #1 in WorkoutAppInstallationUtility.WorkoutAppInstallationDelegate.applicationsUninstalled(_:onDeviceWithPairingID:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 80) = Strong;
  if (Strong)
  {
    v2 = Strong;
    v3 = swift_unknownObjectWeakLoadStrong();
    *(v0 + 88) = v3;
    if (v3)
    {
      *(v0 + 104) = 2;
      *(v0 + 96) = static MainActor.shared.getter();
      v5 = dispatch thunk of Actor.unownedExecutor.getter();

      return MEMORY[0x2822009F8](closure #1 in WorkoutAppInstallationUtility.WorkoutAppInstallationDelegate.applicationsUninstalled(_:onDeviceWithPairingID:), v5, v4);
    }
  }

  else
  {
  }

  v6 = *(v0 + 8);

  return v6();
}

{

  WorkoutAppInstallationUtility.updateInstallationState(_:)((v0 + 104));
  swift_unknownObjectRelease();
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return MEMORY[0x2822009F8](closure #1 in WorkoutAppInstallationUtility.WorkoutAppInstallationDelegate.applicationsUninstalled(_:onDeviceWithPairingID:), v1, v2);
}

id WorkoutAppInstallationUtility.WorkoutAppInstallationDelegate.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WorkoutAppInstallationUtility.WorkoutAppInstallationDelegate();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

NSObject *specialized WorkoutAppInstallationUtility.init(dependencies:)(uint64_t a1, uint64_t a2, char *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v34 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore0C20AppInstallationStateOGMd, &_s7Combine9PublishedVy11WorkoutCore0C20AppInstallationStateOGMR);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v34 - v13;
  v37[3] = &type metadata for DefaultWorkoutAppDependencies;
  v37[4] = &protocol witness table for DefaultWorkoutAppDependencies;
  v37[0] = a1;
  v37[1] = a2;
  v15 = OBJC_IVAR____TtC11WorkoutCore29WorkoutAppInstallationUtility__installationState;
  LOBYTE(v36[0]) = 0;
  Published.init(initialValue:)();
  (*(v11 + 32))(&a3[v15], v14, v10);
  outlined init with copy of WorkoutAppInstallationDependencies(v37, &a3[OBJC_IVAR____TtC11WorkoutCore29WorkoutAppInstallationUtility_dependencies]);
  outlined init with copy of WorkoutAppInstallationDependencies(v37, v36);
  v16 = type metadata accessor for WorkoutAppInstallationUtility.WorkoutAppInstallationDelegate();
  v17 = objc_allocWithZone(v16);
  *&v17[OBJC_IVAR____TtCC11WorkoutCore29WorkoutAppInstallationUtility30WorkoutAppInstallationDelegate_stateUpdater + 8] = 0;
  swift_unknownObjectWeakInit();
  outlined init with copy of WorkoutAppInstallationDependencies(v36, &v17[OBJC_IVAR____TtCC11WorkoutCore29WorkoutAppInstallationUtility30WorkoutAppInstallationDelegate_dependencies]);
  v35.receiver = v17;
  v35.super_class = v16;
  v18 = objc_msgSendSuper2(&v35, sel_init);
  __swift_destroy_boxed_opaque_existential_1Tm_8(v36);
  *&a3[OBJC_IVAR____TtC11WorkoutCore29WorkoutAppInstallationUtility_deviceConnectionDelegate] = v18;
  v19 = type metadata accessor for WorkoutAppInstallationUtility(0);
  v34.receiver = a3;
  v34.super_class = v19;
  v20 = objc_msgSendSuper2(&v34, sel_init);
  v21 = OBJC_IVAR____TtC11WorkoutCore29WorkoutAppInstallationUtility_deviceConnectionDelegate;
  *(*&v20[OBJC_IVAR____TtC11WorkoutCore29WorkoutAppInstallationUtility_deviceConnectionDelegate] + OBJC_IVAR____TtCC11WorkoutCore29WorkoutAppInstallationUtility30WorkoutAppInstallationDelegate_stateUpdater + 8) = &protocol witness table for WorkoutAppInstallationUtility;
  swift_unknownObjectWeakAssign();
  v22 = objc_opt_self();
  v23 = v20;
  result = [v22 sharedDeviceConnection];
  if (result)
  {
    v25 = result;
    [result addObserver:*&v20[v21]];

    v26 = type metadata accessor for TaskPriority();
    (*(*(v26 - 8) + 56))(v9, 1, 1, v26);
    v27 = swift_allocObject();
    v27[2] = 0;
    v27[3] = 0;
    v27[4] = v23;
    v28 = v23;
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v9, &closure #1 in WorkoutAppInstallationUtility.init(dependencies:)partial apply, v27);

    if (one-time initialization token for xpcService != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    __swift_project_value_buffer(v29, static WOLog.xpcService);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_20AEA4000, v30, v31, "WorkoutAppInstallationUtility: initialized, fetching initial installation status...", v32, 2u);
      MEMORY[0x20F2E9420](v32, -1, -1);
      v33 = v28;
    }

    else
    {
      v33 = v30;
      v30 = v28;
    }

    __swift_destroy_boxed_opaque_existential_1Tm_8(v37);
    return v28;
  }

  else
  {
    __break(1u);
  }

  return result;
}

NSObject *specialized WorkoutAppInstallationUtility.init(dependencies:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v37 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore0C20AppInstallationStateOGMd, &_s7Combine9PublishedVy11WorkoutCore0C20AppInstallationStateOGMR);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v37 - v15;
  v40[3] = a3;
  v40[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v40);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a1, a3);
  v18 = OBJC_IVAR____TtC11WorkoutCore29WorkoutAppInstallationUtility__installationState;
  LOBYTE(v39[0]) = 0;
  Published.init(initialValue:)();
  (*(v13 + 32))(&a2[v18], v16, v12);
  outlined init with copy of WorkoutAppInstallationDependencies(v40, &a2[OBJC_IVAR____TtC11WorkoutCore29WorkoutAppInstallationUtility_dependencies]);
  outlined init with copy of WorkoutAppInstallationDependencies(v40, v39);
  v19 = type metadata accessor for WorkoutAppInstallationUtility.WorkoutAppInstallationDelegate();
  v20 = objc_allocWithZone(v19);
  *&v20[OBJC_IVAR____TtCC11WorkoutCore29WorkoutAppInstallationUtility30WorkoutAppInstallationDelegate_stateUpdater + 8] = 0;
  swift_unknownObjectWeakInit();
  outlined init with copy of WorkoutAppInstallationDependencies(v39, &v20[OBJC_IVAR____TtCC11WorkoutCore29WorkoutAppInstallationUtility30WorkoutAppInstallationDelegate_dependencies]);
  v38.receiver = v20;
  v38.super_class = v19;
  v21 = objc_msgSendSuper2(&v38, sel_init);
  __swift_destroy_boxed_opaque_existential_1Tm_8(v39);
  *&a2[OBJC_IVAR____TtC11WorkoutCore29WorkoutAppInstallationUtility_deviceConnectionDelegate] = v21;
  v22 = type metadata accessor for WorkoutAppInstallationUtility(0);
  v37.receiver = a2;
  v37.super_class = v22;
  v23 = objc_msgSendSuper2(&v37, sel_init);
  v24 = OBJC_IVAR____TtC11WorkoutCore29WorkoutAppInstallationUtility_deviceConnectionDelegate;
  *(*&v23[OBJC_IVAR____TtC11WorkoutCore29WorkoutAppInstallationUtility_deviceConnectionDelegate] + OBJC_IVAR____TtCC11WorkoutCore29WorkoutAppInstallationUtility30WorkoutAppInstallationDelegate_stateUpdater + 8) = &protocol witness table for WorkoutAppInstallationUtility;
  swift_unknownObjectWeakAssign();
  v25 = objc_opt_self();
  v26 = v23;
  result = [v25 sharedDeviceConnection];
  if (result)
  {
    v28 = result;
    [result addObserver:*&v23[v24]];

    v29 = type metadata accessor for TaskPriority();
    (*(*(v29 - 8) + 56))(v11, 1, 1, v29);
    v30 = swift_allocObject();
    v30[2] = 0;
    v30[3] = 0;
    v30[4] = v26;
    v31 = v26;
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v11, &async function pointer to partial apply for closure #1 in WorkoutAppInstallationUtility.init(dependencies:), v30);

    if (one-time initialization token for xpcService != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    __swift_project_value_buffer(v32, static WOLog.xpcService);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_20AEA4000, v33, v34, "WorkoutAppInstallationUtility: initialized, fetching initial installation status...", v35, 2u);
      MEMORY[0x20F2E9420](v35, -1, -1);
      v36 = v31;
    }

    else
    {
      v36 = v33;
      v33 = v31;
    }

    __swift_destroy_boxed_opaque_existential_1Tm_8(v40);
    return v31;
  }

  else
  {
    __break(1u);
  }

  return result;
}

NSObject *specialized WorkoutAppInstallationUtility.__allocating_init(dependencies:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  MEMORY[0x28223BE20](a1, a2);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = objc_allocWithZone(type metadata accessor for WorkoutAppInstallationUtility(0));
  (*(v7 + 16))(v9, a1, a3);
  return specialized WorkoutAppInstallationUtility.init(dependencies:)(v9, v10, a3, a4);
}

unint64_t lazy protocol witness table accessor for type WorkoutAppInstallationState and conformance WorkoutAppInstallationState()
{
  result = lazy protocol witness table cache variable for type WorkoutAppInstallationState and conformance WorkoutAppInstallationState;
  if (!lazy protocol witness table cache variable for type WorkoutAppInstallationState and conformance WorkoutAppInstallationState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutAppInstallationState and conformance WorkoutAppInstallationState);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WorkoutAppInstallationState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WorkoutAppInstallationState(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void type metadata completion function for WorkoutAppInstallationUtility(uint64_t a1)
{
  type metadata accessor for Published<WorkoutAppInstallationState>();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for Published<WorkoutAppInstallationState>()
{
  if (!lazy cache variable for type metadata for Published<WorkoutAppInstallationState>)
  {
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Published<WorkoutAppInstallationState>);
    }
  }
}

uint64_t dispatch thunk of WorkoutAppInstallationDependencies.checkAppInstallation(bundleID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 24) + **(a4 + 24));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = dispatch thunk of WorkoutAppInstallationDependencies.checkAppInstallation(bundleID:);

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of WorkoutAppInstallationDependencies.checkAppInstallation(bundleID:)(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t getEnumTagSinglePayload for DefaultWorkoutAppDependencies(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for DefaultWorkoutAppDependencies(uint64_t result, int a2, int a3)
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

uint64_t _sSS_yptWOhTm_1(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t partial apply for closure #1 in WorkoutAppInstallationUtility.WorkoutAppInstallationDelegate.applicationsUninstalled(_:onDeviceWithPairingID:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in WorkoutAppInstallationUtility.WorkoutAppInstallationDelegate.applicationsUninstalled(_:onDeviceWithPairingID:);

  return closure #1 in WorkoutAppInstallationUtility.WorkoutAppInstallationDelegate.applicationsUninstalled(_:onDeviceWithPairingID:)(a1, v4, v5, v6);
}

unint64_t lazy protocol witness table accessor for type UUID and conformance UUID()
{
  result = lazy protocol witness table cache variable for type UUID and conformance UUID;
  if (!lazy protocol witness table cache variable for type UUID and conformance UUID)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UUID and conformance UUID);
  }

  return result;
}

uint64_t objectdestroy_30Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t partial apply for closure #2 in WorkoutAppInstallationUtility.WorkoutAppInstallationDelegate.applicationsInstalled(_:onDeviceWithPairingID:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #2 in WorkoutAppInstallationUtility.WorkoutAppInstallationDelegate.applicationsInstalled(_:onDeviceWithPairingID:);

  return closure #2 in WorkoutAppInstallationUtility.WorkoutAppInstallationDelegate.applicationsInstalled(_:onDeviceWithPairingID:)(a1, v4, v5, v6);
}

uint64_t partial apply for closure #2 in WorkoutAppInstallationUtility.WorkoutAppInstallationDelegate.applicationsInstalled(_:onDeviceWithPairingID:)()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t type metadata accessor for ACXRemoteApplication()
{
  result = lazy cache variable for type metadata for ACXRemoteApplication;
  if (!lazy cache variable for type metadata for ACXRemoteApplication)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for ACXRemoteApplication);
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1Tm_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t outlined init with copy of WorkoutAppInstallationDependencies(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t partial apply for closure #1 in WorkoutAppInstallationUtility.init(dependencies:)()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = partial apply for closure #1 in WorkoutAppInstallationUtility.init(dependencies:);

  return closure #1 in WorkoutAppInstallationUtility.init(dependencies:)();
}

uint64_t objectdestroy_42Tm_0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t closure #1 in WorkoutAppInstallationUtility.init(dependencies:)partial apply()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = closure #1 in WorkoutAppInstallationUtility.init(dependencies:)partial apply;

  return closure #1 in WorkoutAppInstallationUtility.init(dependencies:)();
}

uint64_t key path setter for SeymourElapsedTimeAccumulator.playback : SeymourElapsedTimeAccumulator(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore8PlaybackVSgMd, &_s11SeymourCore8PlaybackVSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v11 - v6;
  outlined init with copy of Playback?(a1, &v11 - v6);
  v8 = *a2;
  v9 = OBJC_IVAR___SMSeymourElapsedTimeAccumulator_playback;
  swift_beginAccess();
  outlined assign with copy of Playback?(v7, v8 + v9);
  swift_endAccess();
  SeymourElapsedTimeAccumulator.playback.didset();
  return outlined destroy of Playback?(v7, &_s11SeymourCore8PlaybackVSgMd, &_s11SeymourCore8PlaybackVSgMR);
}

uint64_t SeymourElapsedTimeAccumulator.playback.didset()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v73 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2, v3);
  v72 = &v61[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = MEMORY[0x28223BE20](v4, v6);
  v74 = &v61[-v8];
  MEMORY[0x28223BE20](v7, v9);
  v71 = &v61[-v10];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore8PlaybackVSgMd, &_s11SeymourCore8PlaybackVSgMR);
  v13 = MEMORY[0x28223BE20](v11 - 8, v12);
  v70 = &v61[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v61[-v16];
  v18 = type metadata accessor for Playback();
  v19 = *(v18 - 8);
  v21 = MEMORY[0x28223BE20](v18, v20);
  v69 = &v61[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = MEMORY[0x28223BE20](v21, v23);
  v26 = &v61[-v25];
  MEMORY[0x28223BE20](v24, v27);
  v29 = &v61[-v28];
  v30 = OBJC_IVAR___SMSeymourElapsedTimeAccumulator_playback;
  swift_beginAccess();
  outlined init with copy of Playback?(v1 + v30, v17);
  v31 = *(v19 + 48);
  if (v31(v17, 1, v18) == 1)
  {
    return outlined destroy of Playback?(v17, &_s11SeymourCore8PlaybackVSgMd, &_s11SeymourCore8PlaybackVSgMR);
  }

  v68 = v1;
  v66 = *(v19 + 32);
  v66(v29, v17, v18);
  v33 = Playback.state.getter();
  LODWORD(v75) = v33;
  BYTE4(v75) = BYTE4(v33) & 1;
  v76 = 0;
  lazy protocol witness table accessor for type Playback.State and conformance Playback.State();
  lazy protocol witness table accessor for type Playback.State and conformance Playback.State();
  if ((static PortableEnum<>.== infix(_:_:)() & 1) == 0)
  {
    return (*(v19 + 8))(v29, v18);
  }

  v67 = v29;
  if (one-time initialization token for time != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for Logger();
  __swift_project_value_buffer(v34, static WOLog.time);
  (*(v19 + 16))(v26, v67, v18);
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.default.getter();
  v37 = os_log_type_enabled(v35, v36);
  v65 = v2;
  if (v37)
  {
    v38 = swift_slowAlloc();
    v63 = v38;
    v64 = swift_slowAlloc();
    v75 = v64;
    *v38 = 136315138;
    lazy protocol witness table accessor for type SeymourElapsedTimeAccumulator and conformance SeymourElapsedTimeAccumulator(&lazy protocol witness table cache variable for type Playback and conformance Playback, MEMORY[0x277D53C58], MEMORY[0x277D53C60]);
    v62 = v36;
    v39 = dispatch thunk of CustomStringConvertible.description.getter();
    v41 = v40;
    v42 = v26;
    v43 = *(v19 + 8);
    (v43)(v42, v18);
    v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v41, &v75);

    v45 = v63;
    *(v63 + 1) = v44;
    v46 = v45;
    _os_log_impl(&dword_20AEA4000, v35, v62, "Video playback received. playback=%s", v45, 0xCu);
    v47 = v64;
    __swift_destroy_boxed_opaque_existential_0(v64);
    MEMORY[0x20F2E9420](v47, -1, -1);
    MEMORY[0x20F2E9420](v46, -1, -1);
  }

  else
  {

    v48 = v26;
    v43 = *(v19 + 8);
    (v43)(v48, v18);
  }

  v49 = v68;
  Date.init()();
  v50 = v49 + v30;
  v51 = v70;
  outlined init with copy of Playback?(v50, v70);
  v52 = v31(v51, 1, v18);
  v64 = v43;
  if (v52 == 1)
  {
    outlined destroy of Playback?(v51, &_s11SeymourCore8PlaybackVSgMd, &_s11SeymourCore8PlaybackVSgMR);
  }

  else
  {
    v53 = v69;
    v66(v69, v51, v18);
    static Double.currentMachTimestamp()();
    Playback.playbackTime(at:)(v54);
    (v43)(v53, v18);
  }

  v55 = v71;
  v56 = v74;
  Date.addingTimeInterval(_:)();
  v57 = v73;
  v58 = *(v73 + 8);
  v59 = v65;
  v58(v56, v65);
  swift_getKeyPath();
  swift_getKeyPath();
  (*(v57 + 16))(v72, v55, v59);
  v60 = v68;
  static Published.subscript.setter();
  v58(v55, v59);
  return (v64)(v67, v18);
}

uint64_t SeymourElapsedTimeAccumulator.playback.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___SMSeymourElapsedTimeAccumulator_playback;
  swift_beginAccess();
  return outlined init with copy of Playback?(v1 + v3, a1);
}

uint64_t outlined init with copy of Playback?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore8PlaybackVSgMd, &_s11SeymourCore8PlaybackVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t SeymourElapsedTimeAccumulator.playback.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___SMSeymourElapsedTimeAccumulator_playback;
  swift_beginAccess();
  outlined assign with copy of Playback?(a1, v1 + v3);
  swift_endAccess();
  SeymourElapsedTimeAccumulator.playback.didset();
  return outlined destroy of Playback?(a1, &_s11SeymourCore8PlaybackVSgMd, &_s11SeymourCore8PlaybackVSgMR);
}

uint64_t outlined assign with copy of Playback?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore8PlaybackVSgMd, &_s11SeymourCore8PlaybackVSgMR);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t (*SeymourElapsedTimeAccumulator.playback.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return SeymourElapsedTimeAccumulator.playback.modify;
}

uint64_t SeymourElapsedTimeAccumulator.playback.modify(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return SeymourElapsedTimeAccumulator.playback.didset();
  }

  return result;
}

double key path getter for SeymourElapsedTimeAccumulator.timelineStartDate : SeymourElapsedTimeAccumulator@<D0>(void *a4@<X8>)
{
  return key path getter for SeymourElapsedTimeAccumulator.timelineStartDate : SeymourElapsedTimeAccumulator(a4);
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(a4);

  return result;
}

double SeymourElapsedTimeAccumulator.timelineStartDate.getter@<D0>(void *a3@<X8>)
{
  return SeymourElapsedTimeAccumulator.timelineStartDate.getter(a3);
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(a3);

  return result;
}

uint64_t (*SeymourElapsedTimeAccumulator.timelineStartDate.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return SeymourElapsedTimeAccumulator.timelineStartDate.modify;
}

uint64_t key path setter for SeymourElapsedTimeAccumulator.$timelineStartDate : SeymourElapsedTimeAccumulator(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy10Foundation4DateV_GMd, &_s7Combine9PublishedV9PublisherVy10Foundation4DateV_GMR);
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v14 - v10;
  v12 = *(v4 + 16);
  v12(&v14 - v10, a1, v3);
  v12(v8, v11, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy10Foundation4DateVGMd, &_s7Combine9PublishedVy10Foundation4DateVGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v11, v3);
}

uint64_t SeymourElapsedTimeAccumulator.$timelineStartDate.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy10Foundation4DateV_GMd, &_s7Combine9PublishedV9PublisherVy10Foundation4DateV_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy10Foundation4DateVGMd, &_s7Combine9PublishedVy10Foundation4DateVGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*SeymourElapsedTimeAccumulator.$timelineStartDate.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy10Foundation4DateV_GMd, &_s7Combine9PublishedV9PublisherVy10Foundation4DateV_GMR);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR___SMSeymourElapsedTimeAccumulator__timelineStartDate;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy10Foundation4DateVGMd, &_s7Combine9PublishedVy10Foundation4DateVGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return SeymourElapsedTimeAccumulator.$timelineStartDate.modify;
}

uint64_t key path setter for SeymourElapsedTimeAccumulator.timelineStartDate : SeymourElapsedTimeAccumulator(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t a7)
{
  v9 = (a5)(0, a2, a3, a4);
  v10 = *(v9 - 8);
  v12 = MEMORY[0x28223BE20](v9, v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v22 - v16;
  v18 = *(v10 + 16);
  v18(&v22 - v16, a1, v9);
  v19 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v18(v14, v17, v9);
  v20 = v19;
  static Published.subscript.setter();
  return (*(v10 + 8))(v17, v9);
}

uint64_t SeymourElapsedTimeAccumulator.timelineStartDate.setter(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4)
{
  v6 = a2(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v13 - v9;
  swift_getKeyPath();
  swift_getKeyPath();
  (*(v7 + 16))(v10, a1, v6);
  v11 = v4;
  static Published.subscript.setter();
  return (*(v7 + 8))(a1, v6);
}

uint64_t (*SeymourElapsedTimeAccumulator.progressDisplayPreference.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return SeymourElapsedTimeAccumulator.progressDisplayPreference.modify;
}

void SeymourElapsedTimeAccumulator.timelineStartDate.modify(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t key path getter for SeymourElapsedTimeAccumulator.$timelineStartDate : SeymourElapsedTimeAccumulator(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path setter for SeymourElapsedTimeAccumulator.$progressDisplayPreference : SeymourElapsedTimeAccumulator(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy11SeymourCore25ProgressDisplayPreferenceV_GMd, &_s7Combine9PublishedV9PublisherVy11SeymourCore25ProgressDisplayPreferenceV_GMR);
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v14 - v10;
  v12 = *(v4 + 16);
  v12(&v14 - v10, a1, v3);
  v12(v8, v11, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11SeymourCore25ProgressDisplayPreferenceVGMd, &_s7Combine9PublishedVy11SeymourCore25ProgressDisplayPreferenceVGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v11, v3);
}

uint64_t SeymourElapsedTimeAccumulator.$timelineStartDate.getter(void *a1, uint64_t *a2, uint64_t *a3)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t SeymourElapsedTimeAccumulator.$progressDisplayPreference.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy11SeymourCore25ProgressDisplayPreferenceV_GMd, &_s7Combine9PublishedV9PublisherVy11SeymourCore25ProgressDisplayPreferenceV_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11SeymourCore25ProgressDisplayPreferenceVGMd, &_s7Combine9PublishedVy11SeymourCore25ProgressDisplayPreferenceVGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*SeymourElapsedTimeAccumulator.$progressDisplayPreference.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy11SeymourCore25ProgressDisplayPreferenceV_GMd, &_s7Combine9PublishedV9PublisherVy11SeymourCore25ProgressDisplayPreferenceV_GMR);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR___SMSeymourElapsedTimeAccumulator__progressDisplayPreference;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11SeymourCore25ProgressDisplayPreferenceVGMd, &_s7Combine9PublishedVy11SeymourCore25ProgressDisplayPreferenceVGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return SeymourElapsedTimeAccumulator.$progressDisplayPreference.modify;
}

void SeymourElapsedTimeAccumulator.$timelineStartDate.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[13];
  v11 = v3[14];
  v7 = v3[11];
  v6 = v3[12];
  v8 = v3[10];
  if (a2)
  {
    v4(v3[12], v5, v3[10]);
    swift_beginAccess();
    Published.projectedValue.setter();
    swift_endAccess();
    v9 = *(v7 + 8);
    v9(v5, v8);
    v10 = v11;
    v9(v11, v8);
  }

  else
  {
    swift_beginAccess();
    Published.projectedValue.setter();
    swift_endAccess();
    v10 = v11;
    (*(v7 + 8))(v11, v8);
  }

  free(v10);
  free(v5);
  free(v6);

  free(v3);
}

char *SeymourElapsedTimeAccumulator.init(duration:progressDisplayPreference:)(char *a1, double a2)
{
  v38 = a1;
  v4 = type metadata accessor for ProgressDisplayPreference();
  v36 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4, v5);
  v37 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v34 - v9;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy10Foundation4DateVGMd, &_s7Combine9PublishedVy10Foundation4DateVGMR);
  v11 = *(v35 - 8);
  MEMORY[0x28223BE20](v35, v12);
  v14 = &v34 - v13;
  v15 = type metadata accessor for Date();
  v16 = *(v15 - 8);
  v18 = MEMORY[0x28223BE20](v15, v17);
  v20 = &v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v21);
  v23 = &v34 - v22;
  v24 = OBJC_IVAR___SMSeymourElapsedTimeAccumulator_playback;
  v25 = type metadata accessor for Playback();
  (*(*(v25 - 8) + 56))(&v2[v24], 1, 1, v25);
  v26 = OBJC_IVAR___SMSeymourElapsedTimeAccumulator__timelineStartDate;
  Date.init()();
  (*(v16 + 16))(v20, v23, v15);
  Published.init(initialValue:)();
  (*(v16 + 8))(v23, v15);
  (*(v11 + 32))(&v2[v26], v14, v35);
  *&v2[OBJC_IVAR___SMSeymourElapsedTimeAccumulator_timer] = 0;
  *&v2[OBJC_IVAR___SMSeymourElapsedTimeAccumulator_timerLeeway] = 0x3F9EB851EB851EB8;
  *&v2[OBJC_IVAR___SMSeymourElapsedTimeAccumulator_recalibrationThreshold] = 0x3F9EB851EB851EB8;
  *&v2[OBJC_IVAR___SMSeymourElapsedTimeAccumulator_duration] = a2;
  v27 = v36;
  v28 = *(v36 + 16);
  v29 = v38;
  v28(v10, v38, v4);
  swift_beginAccess();
  v28(v37, v10, v4);
  Published.init(initialValue:)();
  v30 = *(v27 + 8);
  v30(v10, v4);
  swift_endAccess();
  v31 = type metadata accessor for SeymourElapsedTimeAccumulator(0);
  v39.receiver = v2;
  v39.super_class = v31;
  v32 = objc_msgSendSuper2(&v39, sel_init);
  v30(v29, v4);
  return v32;
}

uint64_t type metadata accessor for SeymourElapsedTimeAccumulator(uint64_t a1)
{
  result = type metadata singleton initialization cache for SeymourElapsedTimeAccumulator;
  if (!type metadata singleton initialization cache for SeymourElapsedTimeAccumulator)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SeymourElapsedTimeAccumulator.videoPlaybackCurrentTime.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore8PlaybackVSgMd, &_s11SeymourCore8PlaybackVSgMR);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v13 - v3;
  v5 = type metadata accessor for Playback();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR___SMSeymourElapsedTimeAccumulator_playback;
  swift_beginAccess();
  outlined init with copy of Playback?(v0 + v10, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return outlined destroy of Playback?(v4, &_s11SeymourCore8PlaybackVSgMd, &_s11SeymourCore8PlaybackVSgMR);
  }

  (*(v6 + 32))(v9, v4, v5);
  static Double.currentMachTimestamp()();
  Playback.playbackTime(at:)(v12);
  return (*(v6 + 8))(v9, v5);
}

double SeymourElapsedTimeAccumulator.videoPlaybackTime(at:)()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore8PlaybackVSgMd, &_s11SeymourCore8PlaybackVSgMR);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v23 - v4;
  v6 = type metadata accessor for Playback();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  Date.init()();
  Date.timeIntervalSince(_:)();
  v17 = v16;
  v18 = OBJC_IVAR___SMSeymourElapsedTimeAccumulator_playback;
  swift_beginAccess();
  outlined init with copy of Playback?(v1 + v18, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    (*(v12 + 8))(v15, v11);
    outlined destroy of Playback?(v5, &_s11SeymourCore8PlaybackVSgMd, &_s11SeymourCore8PlaybackVSgMR);
    v19 = 0.0;
  }

  else
  {
    (*(v7 + 32))(v10, v5, v6);
    static Double.currentMachTimestamp()();
    v19 = Playback.playbackTime(at:)(v20);
    (*(v7 + 8))(v10, v6);
    (*(v12 + 8))(v15, v11);
  }

  v21 = 0.0;
  if (v17 > 0.0)
  {
    v21 = v17;
  }

  return v21 + v19;
}

double SeymourElapsedTimeAccumulator.elapsedTime.getter()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  Date.init()();
  SeymourElapsedTimeAccumulator.elapsedTime(at:)(v4);
  v6 = v5;
  (*(v1 + 8))(v4, v0);
  return v6;
}

void SeymourElapsedTimeAccumulator.setupTimer(initialFireInterval:)(double a1)
{
  v2 = v1;
  v4 = OBJC_IVAR___SMSeymourElapsedTimeAccumulator_timer;
  [*(v1 + OBJC_IVAR___SMSeymourElapsedTimeAccumulator_timer) invalidate];
  v5 = objc_allocWithZone(MEMORY[0x277CF0B50]);
  v6 = MEMORY[0x20F2E6C00](0xD000000000000023, 0x800000020B4603F0);
  v7 = [v5 initWithIdentifier_];

  v8 = *(v2 + v4);
  *(v2 + v4) = v7;
  v9 = v7;

  if (v9)
  {
    type metadata accessor for OS_dispatch_queue();
    v10 = static OS_dispatch_queue.main.getter();
    v11 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v13[4] = partial apply for closure #1 in SeymourElapsedTimeAccumulator.setupTimer(initialFireInterval:);
    v13[5] = v11;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 1107296256;
    v13[2] = thunk for @escaping @callee_guaranteed (@guaranteed BSAbsoluteMachTimer) -> ();
    v13[3] = &block_descriptor_41;
    v12 = _Block_copy(v13);

    [v9 scheduleRepeatingWithFireInterval:v10 repeatInterval:v12 leewayInterval:a1 queue:1.0 handler:0.03];
    _Block_release(v12);
  }
}

void closure #1 in SeymourElapsedTimeAccumulator.setupTimer(initialFireInterval:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    SeymourElapsedTimeAccumulator.fireTimer()();
  }
}

void thunk for @escaping @callee_guaranteed (@guaranteed BSAbsoluteMachTimer) -> ()(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

Swift::Void __swiftcall SeymourElapsedTimeAccumulator.fireTimer()()
{
  v1 = v0;
  if (SeymourElapsedTimeAccumulator.shouldRecalibrate()())
  {
    SeymourElapsedTimeAccumulator.timeUntilNextSecond.getter();
    SeymourElapsedTimeAccumulator.setupTimer(initialFireInterval:)(v2);
    if (one-time initialization token for app != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static WOLog.app);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_20AEA4000, v4, v5, "[ElapsedTimeDebugging] SeymourElapsedTimeAccumulator timer recalibrating", v6, 2u);
      MEMORY[0x20F2E9420](v6, -1, -1);
    }
  }

  v7 = [v1 updateHandler];
  if (v7)
  {
    v8 = v7;
    (*(v7 + 2))();

    _Block_release(v8);
  }
}

BOOL SeymourElapsedTimeAccumulator.shouldRecalibrate()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore8PlaybackVSgMd, &_s11SeymourCore8PlaybackVSgMR);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v15[-v3];
  v5 = type metadata accessor for Playback();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = OBJC_IVAR___SMSeymourElapsedTimeAccumulator_playback;
  swift_beginAccess();
  outlined init with copy of Playback?(v0 + v10, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    outlined destroy of Playback?(v4, &_s11SeymourCore8PlaybackVSgMd, &_s11SeymourCore8PlaybackVSgMR);
  }

  else
  {
    (*(v6 + 32))(v9, v4, v5);
    v11 = Playback.state.getter();
    v16 = v11;
    v17 = BYTE4(v11) & 1;
    v15[15] = 0;
    lazy protocol witness table accessor for type Playback.State and conformance Playback.State();
    lazy protocol witness table accessor for type Playback.State and conformance Playback.State();
    if (static PortableEnum<>.== infix(_:_:)())
    {
      SeymourElapsedTimeAccumulator.timeUntilNextSecond.getter();
      v13 = v12;
      (*(v6 + 8))(v9, v5);
      return 1.0 - v13 > 0.03;
    }

    (*(v6 + 8))(v9, v5);
  }

  return 0;
}

uint64_t SeymourElapsedTimeAccumulator.elapsedTime(at:)(uint64_t a1)
{
  v2 = v1;
  v44 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore8PlaybackVSgMd, &_s11SeymourCore8PlaybackVSgMR);
  v5 = MEMORY[0x28223BE20](v3 - 8, v4);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v42 - v9;
  v11 = type metadata accessor for Playback();
  v47 = *(v11 - 8);
  v48 = v11;
  v13 = MEMORY[0x28223BE20](v11, v12);
  v42 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v15);
  v43 = &v42 - v16;
  v17 = type metadata accessor for Date();
  v45 = *(v17 - 8);
  v46 = v17;
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for ProgressDisplayPreference();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21, v23);
  v25 = (&v42 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v25);

  v26 = ProgressDisplayPreference.behavior.getter();
  v28 = v27;
  v30 = v29;
  (*(v22 + 8))(v25, v21);
  if (v30)
  {
    Date.init()();
    Date.timeIntervalSince(_:)();
    v31 = OBJC_IVAR___SMSeymourElapsedTimeAccumulator_playback;
    swift_beginAccess();
    outlined init with copy of Playback?(v2 + v31, v10);
    v33 = v47;
    v32 = v48;
    if ((*(v47 + 48))(v10, 1, v48) == 1)
    {
      (*(v45 + 8))(v20, v46);
      return outlined destroy of Playback?(v10, &_s11SeymourCore8PlaybackVSgMd, &_s11SeymourCore8PlaybackVSgMR);
    }

    else
    {
      v38 = v43;
      (*(v33 + 32))(v43, v10, v32);
      static Double.currentMachTimestamp()();
      Playback.playbackTime(at:)(v39);
      (*(v33 + 8))(v38, v32);
      return (*(v45 + 8))(v20, v46);
    }
  }

  else
  {
    outlined consume of PortableEnum<ProgressDisplayPreference.Behavior>(v26, v28, 0);
    v35 = OBJC_IVAR___SMSeymourElapsedTimeAccumulator_playback;
    swift_beginAccess();
    outlined init with copy of Playback?(v2 + v35, v7);
    v37 = v47;
    v36 = v48;
    if ((*(v47 + 48))(v7, 1, v48) == 1)
    {
      return outlined destroy of Playback?(v7, &_s11SeymourCore8PlaybackVSgMd, &_s11SeymourCore8PlaybackVSgMR);
    }

    else
    {
      v40 = v42;
      (*(v37 + 32))(v42, v7, v36);
      static Double.currentMachTimestamp()();
      Playback.playbackTime(at:)(v41);
      return (*(v37 + 8))(v40, v36);
    }
  }
}

double outlined consume of PortableEnum<ProgressDisplayPreference.Behavior>(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

double @objc SeymourElapsedTimeAccumulator.videoPlaybackTime(at:)(void *a1, uint64_t a2, uint64_t a3, double (*a4)(char *))
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = a1;
  v12 = a4(v10);

  (*(v7 + 8))(v10, v6);
  return v12;
}

uint64_t SeymourElapsedTimeAccumulator.timeUntilNextSecond.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore8PlaybackVSgMd, &_s11SeymourCore8PlaybackVSgMR);
  v4 = MEMORY[0x28223BE20](v2 - 8, v3);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v35 - v8;
  v37 = type metadata accessor for Playback();
  v10 = *(v37 - 8);
  v12 = MEMORY[0x28223BE20](v37, v11);
  v36 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v14);
  v35 = &v35 - v15;
  v16 = type metadata accessor for ProgressDisplayPreference();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v18);
  v20 = (&v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v20);

  v21 = ProgressDisplayPreference.behavior.getter();
  v23 = v22;
  v25 = v24;
  (*(v17 + 8))(v20, v16);
  v38 = v21;
  v39 = v23;
  v40 = v25 & 1;
  lazy protocol witness table accessor for type ProgressDisplayPreference.Behavior and conformance ProgressDisplayPreference.Behavior();
  static PortableEnum.?? infix(_:_:)();
  outlined consume of PortableEnum<ProgressDisplayPreference.Behavior>(v21, v23, v25 & 1);
  if (v41 > 1u)
  {
    v29 = OBJC_IVAR___SMSeymourElapsedTimeAccumulator_playback;
    swift_beginAccess();
    outlined init with copy of Playback?(v1 + v29, v6);
    v30 = v37;
    if ((*(v10 + 48))(v6, 1, v37) == 1)
    {
      return outlined destroy of Playback?(v6, &_s11SeymourCore8PlaybackVSgMd, &_s11SeymourCore8PlaybackVSgMR);
    }

    else
    {
      v33 = v36;
      (*(v10 + 32))(v36, v6, v30);
      static Double.currentMachTimestamp()();
      Playback.playbackTime(at:)(v34);
      return (*(v10 + 8))(v33, v30);
    }
  }

  else
  {
    v26 = OBJC_IVAR___SMSeymourElapsedTimeAccumulator_playback;
    swift_beginAccess();
    outlined init with copy of Playback?(v1 + v26, v9);
    v27 = v37;
    if ((*(v10 + 48))(v9, 1, v37) == 1)
    {
      return outlined destroy of Playback?(v9, &_s11SeymourCore8PlaybackVSgMd, &_s11SeymourCore8PlaybackVSgMR);
    }

    else
    {
      v31 = v35;
      (*(v10 + 32))(v35, v9, v27);
      static Double.currentMachTimestamp()();
      Playback.playbackTime(at:)(v32);
      return (*(v10 + 8))(v31, v27);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ProgressDisplayPreference.Behavior and conformance ProgressDisplayPreference.Behavior()
{
  result = lazy protocol witness table cache variable for type ProgressDisplayPreference.Behavior and conformance ProgressDisplayPreference.Behavior;
  if (!lazy protocol witness table cache variable for type ProgressDisplayPreference.Behavior and conformance ProgressDisplayPreference.Behavior)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ProgressDisplayPreference.Behavior and conformance ProgressDisplayPreference.Behavior);
  }

  return result;
}

double SeymourElapsedTimeAccumulator.timelineFrequency.getter()
{
  v0 = type metadata accessor for ProgressDisplayPreference();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = (v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v4);

  v5 = ProgressDisplayPreference.behavior.getter();
  v7 = v6;
  v9 = v8;
  (*(v1 + 8))(v4, v0);
  v11[1] = v5;
  v11[2] = v7;
  v12 = v9 & 1;
  lazy protocol witness table accessor for type ProgressDisplayPreference.Behavior and conformance ProgressDisplayPreference.Behavior();
  static PortableEnum.?? infix(_:_:)();
  outlined consume of PortableEnum<ProgressDisplayPreference.Behavior>(v5, v7, v9 & 1);
  result = 0.5;
  if (v13 < 2u)
  {
    return 1.0;
  }

  return result;
}

id SeymourElapsedTimeAccumulator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SeymourElapsedTimeAccumulator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SeymourElapsedTimeAccumulator(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double protocol witness for TimeProviding.timelineStartDate.getter in conformance SeymourElapsedTimeAccumulator@<D0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(a1);

  return result;
}

uint64_t instantiation function for generic protocol witness table for SeymourElapsedTimeAccumulator(uint64_t a1)
{
  result = lazy protocol witness table accessor for type SeymourElapsedTimeAccumulator and conformance SeymourElapsedTimeAccumulator(&lazy protocol witness table cache variable for type SeymourElapsedTimeAccumulator and conformance SeymourElapsedTimeAccumulator, type metadata accessor for SeymourElapsedTimeAccumulator, &protocol conformance descriptor for SeymourElapsedTimeAccumulator);
  *(a1 + 8) = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance SeymourElapsedTimeAccumulator@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SeymourElapsedTimeAccumulator(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

void type metadata completion function for SeymourElapsedTimeAccumulator(uint64_t a1)
{
  type metadata accessor for Playback?(319, &lazy cache variable for type metadata for Playback?, MEMORY[0x277D53C58], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Playback?(319, &lazy cache variable for type metadata for Published<Date>, MEMORY[0x277CC9578], MEMORY[0x277CBCED0]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Playback?(319, &lazy cache variable for type metadata for Published<ProgressDisplayPreference>, MEMORY[0x277D52EC0], MEMORY[0x277CBCED0]);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void type metadata accessor for Playback?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type Playback.State and conformance Playback.State()
{
  result = lazy protocol witness table cache variable for type Playback.State and conformance Playback.State;
  if (!lazy protocol witness table cache variable for type Playback.State and conformance Playback.State)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Playback.State and conformance Playback.State);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Playback.State and conformance Playback.State;
  if (!lazy protocol witness table cache variable for type Playback.State and conformance Playback.State)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Playback.State and conformance Playback.State);
  }

  return result;
}

uint64_t outlined destroy of Playback?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t lazy protocol witness table accessor for type SeymourElapsedTimeAccumulator and conformance SeymourElapsedTimeAccumulator(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void GoalWorkoutConfiguration.workoutKitRepresentation.getter(uint64_t a1@<X8>)
{
  v3 = v1;
  v17 = a1;
  v4 = type metadata accessor for WorkoutGoal();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v17 - v11;
  v13 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
  swift_beginAccess();
  v14 = *(v3 + v13);
  v15 = FIUIWorkoutActivityType.healthKitRepresentation.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v18);

  v16 = v18;
  _sSo21NLSessionActivityGoalC11WorkoutCoreE24workoutKitRepresentation3for8location16swimmingLocation4kind0dG00dC0OSo09HKWorkoutB4TypeV_So0n7SessionlO0VSo0n8SwimminglO0VxmtKlFAI06SinglecD0V_Tt3g5([v15 activityType], objc_msgSend(v15, sel_locationType), objc_msgSend(v15, sel_swimmingLocationType), v12);

  if (v2)
  {
  }

  else
  {
    (*(v5 + 16))(v9, v12, v4);
    SingleGoalWorkout.init(configuration:goal:)();
    (*(v5 + 8))(v12, v4);
  }
}

void *specialized static GoalWorkoutConfiguration.workoutCoreRepresentation(_:id:occurrence:validator:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v46 = a2;
  v47 = a3;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v50 = v6;
  v51 = v7;
  v9 = MEMORY[0x28223BE20](v6, v8);
  v49 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v11);
  v48 = &v43 - v12;
  v13 = type metadata accessor for WorkoutGoal();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = [objc_allocWithZone(MEMORY[0x277CCDC38]) init];
  [v18 setActivityType_];
  [v18 setLocationType_];
  [v18 setSwimmingLocationType_];
  v19 = HKWorkoutConfiguration.fiuiWorkoutActivityType(isPartOfMultisport:)(0);
  SingleGoalWorkout.goal.getter();
  v53[0] = 0;
  v20 = WorkoutGoal.workoutCoreRepresentation(activityType:configurationType:validator:)(v19, v53, a4);
  if (v4)
  {
    (*(v14 + 8))(v17, v13);
  }

  else
  {
    v21 = v20;
    (*(v14 + 8))(v17, v13);
    v22 = *(v51 + 16);
    v23 = v48;
    v24 = v46;
    v46 = 0;
    v44 = v19;
    v25 = v50;
    v22(v48, v24);
    v26 = objc_allocWithZone(type metadata accessor for GoalWorkoutConfiguration(0));
    swift_beginAccess();
    v54 = v21;
    type metadata accessor for NLSessionActivityGoal();
    v45 = v21;
    Published.init(initialValue:)();
    swift_endAccess();
    (v22)(v49, v23, v25);
    v27 = v22;
    *&v26[OBJC_IVAR___WOCoreWorkoutConfiguration_externalProvider] = 0;
    v28 = OBJC_IVAR___WOCoreWorkoutConfiguration_scheduledDate;
    v29 = type metadata accessor for Date();
    v30 = *(*(v29 - 8) + 56);
    v30(&v26[v28], 1, 1, v29);
    v30(&v26[OBJC_IVAR___WOCoreWorkoutConfiguration_lastCompletedDate], 1, 1, v29);
    v31 = OBJC_IVAR___WOCoreWorkoutConfiguration_route;
    v32 = type metadata accessor for WorkoutPlan.Route();
    (*(*(v32 - 8) + 56))(&v26[v31], 1, 1, v32);
    v33 = v50;
    (*(v51 + 56))(&v26[OBJC_IVAR___WOCoreWorkoutConfiguration_originalConfigurationReferenceUUID], 1, 1, v50);
    v34 = OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs;
    *&v26[OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs] = 0;
    v35 = v49;
    (v27)(&v26[OBJC_IVAR___WOCoreWorkoutConfiguration_uuid], v49, v33);
    v36 = v44;
    *&v26[OBJC_IVAR___WOCoreWorkoutConfiguration_activityType] = v44;
    v26[OBJC_IVAR___WOCoreWorkoutConfiguration_type] = 0;
    v37 = v47;
    *&v26[OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence] = v47;
    swift_beginAccess();
    *&v26[v34] = 0;
    v26[OBJC_IVAR___WOCoreWorkoutConfiguration_usedProtobuf] = 0;
    v38 = type metadata accessor for WorkoutConfiguration(0);
    v52.receiver = v26;
    v52.super_class = v38;
    v39 = v36;
    v40 = v37;
    v13 = objc_msgSendSuper2(&v52, sel_init);

    v41 = *(v51 + 8);
    v41(v35, v33);
    v41(v48, v33);
  }

  return v13;
}

uint64_t (*ElapsedTimeMetricsPublisher.elapsedTime.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return ElapsedTimeMetricsPublisher.elapsedTime.modify;
}

void ElapsedTimeMetricsPublisher.elapsedTime.modify(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

double ElapsedTimeMetricsPublisher.elapsedTime.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v1);

  return v1;
}

void ElapsedTimeMetricsPublisher.elapsedTime.setter(double a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
}

double key path getter for ElapsedTimeMetricsPublisher.elapsedTime : ElapsedTimeMetricsPublisher@<D0>(double *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v4);

  result = v4;
  *a2 = v4;
  return result;
}

void key path setter for ElapsedTimeMetricsPublisher.elapsedTime : ElapsedTimeMetricsPublisher(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
}

uint64_t ElapsedTimeMetricsPublisher.$elapsedTime.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path getter for ElapsedTimeMetricsPublisher.$elapsedTime : ElapsedTimeMetricsPublisher(void *a1)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path setter for ElapsedTimeMetricsPublisher.$elapsedTime : ElapsedTimeMetricsPublisher(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySd_GMd, &_s7Combine9PublishedV9PublisherVySd_GMR);
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v14 - v10;
  v12 = *(v4 + 16);
  v12(&v14 - v10, a1, v3);
  v12(v8, v11, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v11, v3);
}

uint64_t ElapsedTimeMetricsPublisher.$elapsedTime.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySd_GMd, &_s7Combine9PublishedV9PublisherVySd_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*ElapsedTimeMetricsPublisher.$elapsedTime.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySd_GMd, &_s7Combine9PublishedV9PublisherVySd_GMR);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC11WorkoutCore27ElapsedTimeMetricsPublisher__elapsedTime;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return ElapsedTimeMetricsPublisher.$elapsedTime.modify;
}

void ElapsedTimeMetricsPublisher.$elapsedTime.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[13];
  v11 = v3[14];
  v7 = v3[11];
  v6 = v3[12];
  v8 = v3[10];
  if (a2)
  {
    v4(v3[12], v5, v3[10]);
    swift_beginAccess();
    Published.projectedValue.setter();
    swift_endAccess();
    v9 = *(v7 + 8);
    v9(v5, v8);
    v10 = v11;
    v9(v11, v8);
  }

  else
  {
    swift_beginAccess();
    Published.projectedValue.setter();
    swift_endAccess();
    v10 = v11;
    (*(v7 + 8))(v11, v8);
  }

  free(v10);
  free(v5);
  free(v6);

  free(v3);
}

uint64_t ElapsedTimeMetricsPublisher.__allocating_init()()
{
  v0 = swift_allocObject();
  Published.init(initialValue:)();
  *(v0 + OBJC_IVAR____TtC11WorkoutCore27ElapsedTimeMetricsPublisher_adjustedTime) = 0;
  return v0;
}

uint64_t ElapsedTimeMetricsPublisher.init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = v8 - v4;
  v6 = OBJC_IVAR____TtC11WorkoutCore27ElapsedTimeMetricsPublisher__elapsedTime;
  v8[1] = 0;
  Published.init(initialValue:)();
  (*(v2 + 32))(v0 + v6, v5, v1);
  *(v0 + OBJC_IVAR____TtC11WorkoutCore27ElapsedTimeMetricsPublisher_adjustedTime) = 0;
  return v0;
}

uint64_t ElapsedTimeMetricsPublisher.deinit()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore27ElapsedTimeMetricsPublisher__elapsedTime;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t ElapsedTimeMetricsPublisher.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore27ElapsedTimeMetricsPublisher__elapsedTime;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance ElapsedTimeMetricsPublisher@<X0>(uint64_t *a1@<X8>)
{
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

double ElapsedTimeMetricsPublisher.protobuf.getter@<D0>(double *a1@<X8>)
{
  type metadata accessor for Apple_Workout_Core_ElapsedTimeMetricsPublisher(0);
  UnknownStorage.init()();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v3);

  result = v3;
  *a1 = v3;
  return result;
}

uint64_t ElapsedTimeMetricsPublisher.wireData()()
{
  v0 = type metadata accessor for Apple_Workout_Core_ElapsedTimeMetricsPublisher(0);
  MEMORY[0x28223BE20](v0, v1);
  v3 = (&v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  UnknownStorage.init()();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v7);

  *v3 = v7;
  lazy protocol witness table accessor for type Apple_Workout_Core_ElapsedTimeMetricsPublisher and conformance Apple_Workout_Core_ElapsedTimeMetricsPublisher();
  v4 = Message.serializedData(partial:)();
  outlined destroy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v3);
  return v4;
}

unint64_t lazy protocol witness table accessor for type Apple_Workout_Core_ElapsedTimeMetricsPublisher and conformance Apple_Workout_Core_ElapsedTimeMetricsPublisher()
{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_ElapsedTimeMetricsPublisher and conformance Apple_Workout_Core_ElapsedTimeMetricsPublisher;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_ElapsedTimeMetricsPublisher and conformance Apple_Workout_Core_ElapsedTimeMetricsPublisher)
  {
    type metadata accessor for Apple_Workout_Core_ElapsedTimeMetricsPublisher(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_ElapsedTimeMetricsPublisher and conformance Apple_Workout_Core_ElapsedTimeMetricsPublisher);
  }

  return result;
}

uint64_t outlined destroy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Workout_Core_ElapsedTimeMetricsPublisher(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ElapsedTimeMetricsPublisher.__allocating_init(serializedData:)(uint64_t a1, unint64_t a2)
{
  v4 = specialized ElapsedTimeMetricsPublisher.__allocating_init(serializedData:)(a1, a2);
  outlined consume of Data._Representation(a1, a2);
  return v4;
}

double protocol witness for Protable.protobuf.getter in conformance ElapsedTimeMetricsPublisher@<D0>(double *a1@<X8>)
{
  type metadata accessor for Apple_Workout_Core_ElapsedTimeMetricsPublisher(0);
  UnknownStorage.init()();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v3);

  result = v3;
  *a1 = v3;
  return result;
}

uint64_t protocol witness for ProDatable.wireData() in conformance ElapsedTimeMetricsPublisher()
{
  v0 = type metadata accessor for Apple_Workout_Core_ElapsedTimeMetricsPublisher(0);
  MEMORY[0x28223BE20](v0, v1);
  v3 = (&v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  UnknownStorage.init()();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v7);

  *v3 = v7;
  lazy protocol witness table accessor for type Apple_Workout_Core_ElapsedTimeMetricsPublisher and conformance Apple_Workout_Core_ElapsedTimeMetricsPublisher();
  v4 = Message.serializedData(partial:)();
  outlined destroy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v3);
  return v4;
}

uint64_t protocol witness for static ProDatable.decodeProto(serializedData:) in conformance ElapsedTimeMetricsPublisher@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>, unint64_t a3@<X1>)
{
  result = specialized static ElapsedTimeMetricsPublisher.decodeProto(serializedData:)(a2, a3);
  if (!v3)
  {
    *a1 = result;
  }

  return result;
}

uint64_t protocol witness for ProDatable.init(serializedData:) in conformance ElapsedTimeMetricsPublisher@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = specialized ElapsedTimeMetricsPublisher.__allocating_init(serializedData:)(a1, a2);
  result = outlined consume of Data._Representation(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t specialized static ElapsedTimeMetricsPublisher.decodeProto(serializedData:)(uint64_t a1, unint64_t a2)
{
  v19[0] = a2;
  v3 = type metadata accessor for BinaryDecodingOptions();
  MEMORY[0x28223BE20](v3 - 8, v4);
  v5 = type metadata accessor for Apple_Workout_Core_ElapsedTimeMetricsPublisher(0);
  MEMORY[0x28223BE20](v5, v6);
  v8 = (v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = v19 - v12;
  type metadata accessor for ElapsedTimeMetricsPublisher(0);
  v14 = swift_allocObject();
  v15 = OBJC_IVAR____TtC11WorkoutCore27ElapsedTimeMetricsPublisher__elapsedTime;
  *&v20 = 0;
  Published.init(initialValue:)();
  (*(v10 + 32))(v14 + v15, v13, v9);
  *(v14 + OBJC_IVAR____TtC11WorkoutCore27ElapsedTimeMetricsPublisher_adjustedTime) = 0;
  v23 = a1;
  v24 = v19[0];
  v22 = 0;
  v20 = 0u;
  v21 = 0u;
  outlined copy of Data._Representation(a1, v19[0]);
  BinaryDecodingOptions.init()();
  lazy protocol witness table accessor for type Apple_Workout_Core_ElapsedTimeMetricsPublisher and conformance Apple_Workout_Core_ElapsedTimeMetricsPublisher();
  v16 = v19[1];
  Message.init<A>(serializedBytes:extensions:partial:options:)();
  if (v16)
  {
  }

  else
  {
    v17 = *v8;
    swift_getKeyPath();
    swift_getKeyPath();
    *&v20 = v17;

    static Published.subscript.setter();
    outlined destroy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v8);
  }

  return v14;
}

uint64_t specialized ElapsedTimeMetricsPublisher.__allocating_init(serializedData:)(uint64_t a1, unint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = v20 - v8;
  v10 = type metadata accessor for BinaryDecodingOptions();
  MEMORY[0x28223BE20](v10 - 8, v11);
  v12 = type metadata accessor for Apple_Workout_Core_ElapsedTimeMetricsPublisher(0);
  MEMORY[0x28223BE20](v12, v13);
  v15 = (v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = a1;
  v23 = a2;
  v21 = 0;
  memset(v20, 0, sizeof(v20));
  outlined copy of Data._Representation(a1, a2);
  BinaryDecodingOptions.init()();
  lazy protocol witness table accessor for type Apple_Workout_Core_ElapsedTimeMetricsPublisher and conformance Apple_Workout_Core_ElapsedTimeMetricsPublisher();
  v16 = v12;
  Message.init<A>(serializedBytes:extensions:partial:options:)();
  if (!v2)
  {
    type metadata accessor for ElapsedTimeMetricsPublisher(0);
    v16 = swift_allocObject();
    v17 = OBJC_IVAR____TtC11WorkoutCore27ElapsedTimeMetricsPublisher__elapsedTime;
    *&v20[0] = 0;
    Published.init(initialValue:)();
    (*(v6 + 32))(v16 + v17, v9, v5);
    *(v16 + OBJC_IVAR____TtC11WorkoutCore27ElapsedTimeMetricsPublisher_adjustedTime) = 0;
    v18 = *v15;
    swift_getKeyPath();
    swift_getKeyPath();
    *&v20[0] = v18;

    static Published.subscript.setter();
    outlined destroy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v15);
  }

  return v16;
}

uint64_t type metadata accessor for ElapsedTimeMetricsPublisher(uint64_t a1)
{
  result = type metadata singleton initialization cache for ElapsedTimeMetricsPublisher;
  if (!type metadata singleton initialization cache for ElapsedTimeMetricsPublisher)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for ElapsedTimeMetricsPublisher(uint64_t a1)
{
  type metadata accessor for Published<Double>();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t MockWorkoutDomainAccessor.__allocating_init(powerSavingModeEnabled:workoutExtendedModeSupported:workoutExtendedModeEnabled:precisionStartEnabled:workoutPickerWheelchairMode:workoutPickerFitnessJrMode:)(char a1, char a2, char a3, char a4, char a5, char a6)
{
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D84F90];
  *(v12 + 24) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10Foundation4DataVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  *(v12 + 32) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SbTt0g5Tf4g_n(v13);
  *(v12 + 16) = a1;
  *(v12 + 17) = a2;
  *(v12 + 18) = a3;
  *(v12 + 19) = a4;
  *(v12 + 40) = a5;
  *(v12 + 41) = a6;
  return v12;
}

uint64_t MockWorkoutDomainAccessor.init(powerSavingModeEnabled:workoutExtendedModeSupported:workoutExtendedModeEnabled:precisionStartEnabled:workoutPickerWheelchairMode:workoutPickerFitnessJrMode:)(char a1, char a2, char a3, char a4, char a5, char a6)
{
  v13 = MEMORY[0x277D84F90];
  *(v6 + 24) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10Foundation4DataVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  *(v6 + 32) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SbTt0g5Tf4g_n(v13);
  *(v6 + 16) = a1;
  *(v6 + 17) = a2;
  *(v6 + 18) = a3;
  *(v6 + 19) = a4;
  *(v6 + 40) = a5;
  *(v6 + 41) = a6;
  return v6;
}

double MockWorkoutDomainAccessor.value(forKey:)@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

Swift::Bool __swiftcall MockWorkoutDomainAccessor.BOOL(forKey:)(Swift::String forKey)
{
  object = forKey._object;
  countAndFlagsBits = forKey._countAndFlagsBits;
  swift_beginAccess();
  v4 = *(v1 + 32);
  if (!*(v4 + 16))
  {
    return 0;
  }

  v5 = specialized __RawDictionaryStorage.find<A>(_:)(countAndFlagsBits, object);
  if (v6)
  {
    v7 = *(*(v4 + 56) + v5);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t MockWorkoutDomainAccessor.data(forPerGizmoDomainAndKey:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 24);
  if (!*(v5 + 16))
  {
    return 0;
  }

  v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if (v7)
  {
    v8 = *(v5 + 56) + 16 * v6;
    v9 = *v8;
    outlined copy of Data._Representation(*v8, *(v8 + 8));
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t MockWorkoutDomainAccessor.writeDataPerGizmoDomainAndKey(_:data:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  swift_beginAccess();

  outlined copy of Data._Representation(a3, a4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v4 + 24);
  *(v4 + 24) = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a3, a4, a1, a2, isUniquelyReferenced_nonNull_native);

  *(v4 + 24) = v11;
  return swift_endAccess();
}

Swift::Void __swiftcall MockWorkoutDomainAccessor.writeBoolPerGizmoDomainAndKey(_:value:)(Swift::String _, Swift::Bool value)
{
  object = _._object;
  countAndFlagsBits = _._countAndFlagsBits;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v2 + 32);
  *(v2 + 32) = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(value, countAndFlagsBits, object, isUniquelyReferenced_nonNull_native);
  *(v2 + 32) = v7;
  swift_endAccess();
}

uint64_t MockWorkoutDomainAccessor.deinit()
{

  return v0;
}

uint64_t MockWorkoutDomainAccessor.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

Swift::Int __swiftcall AppleExertionScale.analyticsBucketDifference(from:)(WorkoutCore::AppleExertionScale_optional from)
{
  v2 = *from.value;
  v3 = *v1;
  if (v2 == 11)
  {
    LOBYTE(v2) = 10;
  }

  v7[15] = v2;
  AppleExertionScale.rawValue.getter(v7);
  v4 = v7[8];
  v6[15] = v3;
  AppleExertionScale.rawValue.getter(v6);
  return v4 - v6[8];
}

Swift::Int __swiftcall AppleExertionScale.analyticsEffortDifference(from:)(WorkoutCore::AppleExertionScale_optional from)
{
  v2 = *from.value;
  v3 = *v1;
  if (v2 == 11)
  {
    LOBYTE(v2) = 10;
  }

  v9 = v2;
  AppleExertionScale.rawValue.getter(&v8);
  v4 = v8;
  v7 = v3;
  AppleExertionScale.rawValue.getter(&v6);
  result = v4 - v6;
  if (__OFSUB__(v4, v6))
  {
    __break(1u);
  }

  return result;
}

uint64_t one-time initialization function for downhillSnowSports()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static WOLog.downhillSnowSports);
  __swift_project_value_buffer(v0, static WOLog.downhillSnowSports);
  return Logger.init(subsystem:category:)();
}

void one-time initialization function for logDateFormatter()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v1 = MEMORY[0x20F2E6C00](0xD00000000000001DLL, 0x800000020B4605E0);
  [v0 setDateFormat_];

  static WOLog.logDateFormatter = v0;
}

id static WOLog.logDateFormatter.getter()
{
  if (one-time initialization token for logDateFormatter != -1)
  {
    swift_once();
  }

  v1 = static WOLog.logDateFormatter;

  return v1;
}

Swift::Void __swiftcall Logger.woTrace(file:function:)(Swift::String file, Swift::String function)
{
  object = function._object;
  countAndFlagsBits = function._countAndFlagsBits;
  v4 = file._object;
  v5 = file._countAndFlagsBits;
  v29 = file;
  lazy protocol witness table accessor for type String and conformance String();
  v6 = (StringProtocol.components<A>(separatedBy:)() + 16);
  if (*v6)
  {
    v7 = &v6[2 * *v6];
    v5 = *v7;
    v4 = v7[1];
  }

  else
  {
  }

  specialized Collection<>.firstIndex(of:)(46, 0xE100000000000000, v5, v4);
  v8 = String.subscript.getter();
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = MEMORY[0x20F2E6D00](v8, v10, v12, v14);
  v17 = v16;

  specialized Collection<>.firstIndex(of:)(40, 0xE100000000000000, countAndFlagsBits, object);
  v18 = String.subscript.getter();
  v19 = MEMORY[0x20F2E6D00](v18);
  v21 = v20;

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v29._countAndFlagsBits = v25;
    *v24 = 67109634;
    v26 = pthread_self();
    *(v24 + 4) = pthread_mach_thread_np(v26);
    *(v24 + 8) = 2080;
    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v17, &v29._countAndFlagsBits);

    *(v24 + 10) = v27;
    *(v24 + 18) = 2080;
    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, &v29._countAndFlagsBits);

    *(v24 + 20) = v28;
    _os_log_impl(&dword_20AEA4000, v22, v23, "[%u] %s::%s", v24, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v25, -1, -1);
    MEMORY[0x20F2E9420](v24, -1, -1);
  }

  else
  {
  }
}

uint64_t ClassNameConvertible.className.getter(uint64_t a1)
{
  swift_getDynamicType();
  swift_getMetatypeMetadata();
  return String.init<A>(describing:)();
}

uint64_t getEnumTagSinglePayload for WOLog(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for WOLog(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

id static NLSessionActivityGoal.makeOpenGoal()()
{
  v0 = objc_allocWithZone(MEMORY[0x277D0A838]);

  return [v0 initWithGoalTypeIdentifier:0 value:0];
}

id static NLSessionActivityGoal.makeTimeGoal(minutes:)(SEL *a1, uint64_t a2, double a3)
{
  v5 = [objc_opt_self() *a1];
  v6 = [objc_opt_self() quantityWithUnit:v5 doubleValue:a3];

  v7 = [objc_allocWithZone(MEMORY[0x277D0A838]) initWithGoalTypeIdentifier:a2 value:v6];
  return v7;
}

id static NLSessionActivityGoal.makeTimeAndDistanceGoal()()
{
  v0 = objc_opt_self();
  v1 = [v0 minuteUnit];
  v2 = objc_opt_self();
  v3 = [v2 quantityWithUnit:v1 doubleValue:1.0];

  v4 = [v0 yardUnit];
  v5 = [v2 quantityWithUnit:v4 doubleValue:50.0];

  v6 = [objc_allocWithZone(MEMORY[0x277D0A838]) initWithGoalTypeIdentifier:2 value:v3 requiredDistance:v5];
  return v6;
}

id static NLSessionActivityGoal.make(goalType:)(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      v3 = [objc_opt_self() minuteUnit];
      v4 = [objc_opt_self() quantityWithUnit:v3 doubleValue:30.0];

      v5 = [objc_allocWithZone(MEMORY[0x277D0A838]) initWithGoalTypeIdentifier:2 value:v4];
LABEL_12:
      v8 = v5;

      return v8;
    }

    if (a1 == 3)
    {
      v7 = [objc_opt_self() kilocalorieUnit];
      v4 = [objc_opt_self() quantityWithUnit:v7 doubleValue:200.0];

      v5 = [objc_allocWithZone(MEMORY[0x277D0A838]) initWithGoalTypeIdentifier:3 value:v4];
      goto LABEL_12;
    }

LABEL_13:
    _StringGuts.grow(_:)(37);

    MEMORY[0x20F2E6D80](0x6E776F6E6B6E55, 0xE700000000000000);

    result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000023, 0x800000020B460600, "WorkoutCore/NLSessionActivityGoalFactory.swift", 46, 2, 53, 0);
    __break(1u);
    return result;
  }

  if (a1)
  {
    if (a1 == 1)
    {
      v6 = [objc_opt_self() mileUnit];
      v4 = [objc_opt_self() quantityWithUnit:v6 doubleValue:2.0];

      v5 = [objc_allocWithZone(MEMORY[0x277D0A838]) initWithGoalTypeIdentifier:1 value:v4];
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  v1 = objc_allocWithZone(MEMORY[0x277D0A838]);

  return [v1 initWithGoalTypeIdentifier:0 value:0];
}

id static NLSessionActivityGoal.makeDefault(goalType:unitManager:activityType:)(uint64_t a1, id a2)
{
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      v4 = [objc_opt_self() minuteUnit];
      v5 = [objc_opt_self() quantityWithUnit:v4 doubleValue:0.0];

      v6 = [objc_allocWithZone(MEMORY[0x277D0A838]) initWithGoalTypeIdentifier:2 value:v5];
      return v6;
    }

    if (a1 == 3)
    {
      v7 = [a2 userActiveEnergyBurnedUnit];
      v8 = [objc_opt_self() quantityWithUnit:v7 doubleValue:0.0];
      v9 = [objc_allocWithZone(MEMORY[0x277D0A838]) initWithGoalTypeIdentifier:3 value:v8];
      goto LABEL_12;
    }

LABEL_14:
    _StringGuts.grow(_:)(37);

    MEMORY[0x20F2E6D80](0x6E776F6E6B6E55, 0xE700000000000000);

    result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000023, 0x800000020B460600, "WorkoutCore/NLSessionActivityGoalFactory.swift", 46, 2, 72, 0);
    __break(1u);
    return result;
  }

  if (a1)
  {
    if (a1 == 1)
    {
      v7 = [a2 userDistanceHKUnitForActivityType_];
      v8 = [objc_opt_self() quantityWithUnit:v7 doubleValue:0.0];
      v9 = [objc_allocWithZone(MEMORY[0x277D0A838]) initWithGoalTypeIdentifier:1 value:v8];
LABEL_12:
      v10 = v9;

      return v10;
    }

    goto LABEL_14;
  }

  v2 = objc_allocWithZone(MEMORY[0x277D0A838]);

  return [v2 initWithGoalTypeIdentifier:0 value:0];
}

id static NLSessionActivityGoal.makeDefaultDistanceGoal(activityType:unitManager:)(uint64_t a1, id a2)
{
  v2 = [a2 userDistanceHKUnitForActivityType_];
  v3 = [objc_opt_self() quantityWithUnit:v2 doubleValue:0.0];
  v4 = [objc_allocWithZone(MEMORY[0x277D0A838]) initWithGoalTypeIdentifier:1 value:v3];

  return v4;
}

id static NLSessionActivityGoal.makeDefaultEnergyGoal(unitManager:)(void *a1)
{
  v1 = [a1 userActiveEnergyBurnedUnit];
  v2 = [objc_opt_self() quantityWithUnit:v1 doubleValue:0.0];
  v3 = [objc_allocWithZone(MEMORY[0x277D0A838]) initWithGoalTypeIdentifier:3 value:v2];

  return v3;
}

id static NLSessionActivityGoal.makeEnergyGoal()(SEL *a1, uint64_t a2, double a3)
{
  v5 = [objc_opt_self() *a1];
  v6 = [objc_opt_self() quantityWithUnit:v5 doubleValue:a3];

  v7 = [objc_allocWithZone(MEMORY[0x277D0A838]) initWithGoalTypeIdentifier:a2 value:v6];
  return v7;
}

id static NLSessionActivityGoal.makeDefaultTimeAndDistanceGoal(activityType:unitManager:)(uint64_t a1, id a2)
{
  v2 = [a2 userDistanceHKUnitForActivityType_];
  v3 = [objc_opt_self() minuteUnit];
  v4 = objc_opt_self();
  v5 = [v4 quantityWithUnit:v3 doubleValue:3.0];

  v6 = [objc_allocWithZone(MEMORY[0x277D0A838]) initWithGoalTypeIdentifier:2 value:v5];
  v7 = [v4 quantityWithUnit:v2 doubleValue:100.0];
  [v6 setRequiredDistance_];

  return v6;
}

id static NLSessionActivityGoal.makeDefaultDistanceGoalWithPresets(activityType:unitManager:)(void *a1, id a2)
{
  v3 = [a2 userDistanceHKUnitForActivityType_];
  v4 = [objc_opt_self() meterUnit];
  v5 = [v3 _isCompatibleWithUnit_];

  if (v5)
  {
    v6 = [v3 _isMetricDistance];
  }

  else
  {
    v6 = 0;
  }

  v7 = specialized static NLSessionActivityGoal.defaultDistanceValue(for:isMetric:)(a1, v6);
  v8 = [objc_allocWithZone(MEMORY[0x277D0A838]) initWithGoalTypeIdentifier:1 value:v7];

  return v8;
}

id static NLSessionActivityGoal.makeDefaultGoalForIntervals(goalType:activityType:stepType:unitManager:)(uint64_t a1, id a2, unsigned __int8 *a3, id a4)
{
  v5 = *a3;
  if (a1 <= 1)
  {
    if (a1)
    {
      if (a1 == 1)
      {
        v6 = [a4 userDistanceHKUnitForActivityType_];
        v7 = objc_opt_self();
        v8 = [v7 meterUnit];
        v9 = [v6 _isCompatibleWithUnit_];

        if (v9 && [v6 _isMetricDistance])
        {
          if ([a2 effectiveTypeIdentifier] != 46 || objc_msgSend(a2, sel_swimmingLocationType) != 1)
          {
            v10 = [v7 meterUnit];
            v29 = objc_opt_self();
            if ((v5 & 0xFE) == 2)
            {
              v12 = [v29 quantityWithUnit:v10 doubleValue:1000.0];
            }

            else
            {
              v12 = [v29 quantityWithUnit:v10 doubleValue:400.0];
            }

            goto LABEL_40;
          }

          v10 = [v7 meterUnit];
          v11 = objc_opt_self();
          if (v5 == 2)
          {
            goto LABEL_9;
          }
        }

        else
        {
          if ([a2 effectiveTypeIdentifier] != 46 || objc_msgSend(a2, sel_swimmingLocationType) != 1)
          {
            v10 = [v7 mileUnit];
            v28 = objc_opt_self();
            if ((v5 & 0xFE) == 2)
            {
              v12 = [v28 quantityWithUnit:v10 doubleValue:1.0];
            }

            else
            {
              v12 = [v28 quantityWithUnit:v10 doubleValue:0.25];
            }

            goto LABEL_40;
          }

          v10 = [v7 yardUnit];
          v11 = objc_opt_self();
          if (v5 == 2)
          {
LABEL_9:
            v12 = [v11 quantityWithUnit:v10 doubleValue:200.0];
LABEL_40:
            v30 = v12;

            v31 = [objc_allocWithZone(MEMORY[0x277D0A838]) initWithGoalTypeIdentifier:1 value:v30];
            return v31;
          }
        }

        v12 = [v11 quantityWithUnit:v10 doubleValue:100.0];
        goto LABEL_40;
      }

      goto LABEL_12;
    }

    goto LABEL_17;
  }

  if (a1 != 2)
  {
    if (a1 != 3)
    {
LABEL_12:
      if (one-time initialization token for core != -1)
      {
        swift_once();
      }

      v13 = type metadata accessor for Logger();
      __swift_project_value_buffer(v13, static WOLog.core);
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v32 = v17;
        *v16 = 136315138;
        v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6E776F6E6B6E55, 0xE700000000000000, &v32);

        *(v16 + 4) = v18;
        _os_log_impl(&dword_20AEA4000, v14, v15, "Unsupported goal type for intervals: %s", v16, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v17);
        MEMORY[0x20F2E9420](v17, -1, -1);
        MEMORY[0x20F2E9420](v16, -1, -1);
      }
    }

LABEL_17:
    v19 = objc_allocWithZone(MEMORY[0x277D0A838]);

    return [v19 initWithGoalTypeIdentifier:0 value:0];
  }

  if ([a2 effectiveTypeIdentifier] == 46 && objc_msgSend(a2, sel_swimmingLocationType) == 1)
  {
    v21 = v5 == 2;
    v22 = 1.0;
    v23 = 5.0;
  }

  else
  {
    v21 = (v5 & 0xFE) == 2;
    v22 = 5.0;
    v23 = 10.0;
  }

  if (v21)
  {
    v24 = v23;
  }

  else
  {
    v24 = v22;
  }

  v25 = [objc_opt_self() minuteUnit];
  v26 = [objc_opt_self() quantityWithUnit:v25 doubleValue:v24];

  v27 = [objc_allocWithZone(MEMORY[0x277D0A838]) initWithGoalTypeIdentifier:2 value:v26];
  return v27;
}

id specialized static NLSessionActivityGoal.defaultDistanceValue(for:isMetric:)(void *a1, char a2)
{
  switch([a1 effectiveTypeIdentifier])
  {
    case 0xDuLL:
      v11 = objc_opt_self();
      if (a2)
      {
        v5 = [v11 meterUnitWithMetricPrefix_];
        v6 = 10.0;
      }

      else
      {
        v5 = [v11 mileUnit];
        v6 = 7.0;
      }

      break;
    case 0x15uLL:
      v10 = objc_opt_self();
      if (a2)
      {
        v5 = [v10 meterUnitWithMetricPrefix_];
        v6 = 1.0;
      }

      else
      {
        v5 = [v10 mileUnit];
        v6 = 0.5;
      }

      break;
    case 0x18uLL:
    case 0x34uLL:
      v8 = objc_opt_self();
      if (a2)
      {
        v5 = [v8 meterUnitWithMetricPrefix_];
        v6 = 2.5;
      }

      else
      {
        v5 = [v8 mileUnit];
        v6 = 1.5;
      }

      break;
    case 0x1FuLL:
      v12 = objc_opt_self();
      if ((a2 & 1) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_18;
    case 0x23uLL:
    case 0x25uLL:
    case 0x27uLL:
    case 0x3CuLL:
    case 0x47uLL:
      v7 = objc_opt_self();
      if (a2)
      {
        v5 = [v7 meterUnitWithMetricPrefix_];
        v6 = 5.0;
      }

      else
      {
        v5 = [v7 mileUnit];
        v6 = 3.0;
      }

      break;
    case 0x2EuLL:
      v13 = [a1 isPoolSwimming];
      v12 = objc_opt_self();
      if (v13)
      {
        if (a2)
        {
          v5 = [v12 meterUnit];
        }

        else
        {
          v5 = [v12 yardUnit];
        }

        v6 = 1500.0;
      }

      else if (a2)
      {
LABEL_18:
        v5 = [v12 meterUnitWithMetricPrefix_];
        v6 = 1.5;
      }

      else
      {
LABEL_26:
        v5 = [v12 mileUnit];
        v6 = 1.0;
      }

      break;
    case 0x3DuLL:
    case 0x43uLL:
      v9 = objc_opt_self();
      if (a2)
      {
        v5 = [v9 meterUnitWithMetricPrefix_];
        v6 = 6.0;
      }

      else
      {
        v5 = [v9 mileUnit];
        v6 = 4.0;
      }

      break;
    default:
      v4 = objc_opt_self();
      if (a2)
      {
        v5 = [v4 meterUnitWithMetricPrefix_];
        v6 = 3.0;
      }

      else
      {
        v5 = [v4 mileUnit];
        v6 = 2.0;
      }

      break;
  }

  v14 = v5;
  v15 = [objc_opt_self() quantityWithUnit:v14 doubleValue:v6];

  return v15;
}

void PacerWorkoutConfiguration.workoutKitRepresentation.getter(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for WorkoutGoal();
  v38 = *(v4 - 8);
  v39 = v4;
  v6 = MEMORY[0x28223BE20](v4, v5);
  v37 = (v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6, v8);
  v10 = (v35 - v9);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14NSUnitDurationCGMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGMR);
  v36 = *(v41 - 8);
  MEMORY[0x28223BE20](v41, v11);
  v13 = v35 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGMR);
  v40 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v15);
  v17 = v35 - v16;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v43);

  v18 = v43[0];
  v19 = [v43[0] value];

  if (!v19)
  {
    goto LABEL_6;
  }

  v35[1] = a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v43);

  v20 = v43[0];
  v21 = [v43[0] value];

  if (!v21)
  {

LABEL_6:
    v23 = type metadata accessor for ImportError();
    lazy protocol witness table accessor for type ImportError and conformance ImportError();
    swift_allocError();
    (*(*(v23 - 8) + 104))(v24, *MEMORY[0x277CE4008], v23);
    swift_willThrow();
    return;
  }

  v22 = v42;
  HKQuantity.lengthMeasurement.getter();
  if (v22)
  {
  }

  else
  {
    HKQuantity.durationMeasurement.getter();
    v25 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
    swift_beginAccess();
    v26 = *(v2 + v25);
    v42 = FIUIWorkoutActivityType.healthKitRepresentation.getter();

    Measurement.value.getter();
    v28 = v27;
    v29 = Measurement.unit.getter();
    *v10 = v28;
    v10[1] = v29;
    v30 = *MEMORY[0x277CE3F78];
    v38 = *(v38 + 104);
    (v38)(v10, v30, v39);
    Measurement.value.getter();
    v32 = v31;
    v33 = Measurement.unit.getter();
    v34 = v37;
    *v37 = v32;
    v34[1] = v33;
    (v38)(v34, *MEMORY[0x277CE3F68], v39);
    PacerWorkout.init(configuration:distanceGoal:timeGoal:)();

    (*(v36 + 8))(v13, v41);
    (*(v40 + 8))(v17, v14);
  }
}

id specialized static PacerWorkoutConfiguration.workoutCoreRepresentation(_:id:occurrence:validator:)(uint64_t a1, char *a2, void *a3, char *a4)
{
  v62 = a4;
  v55 = a2;
  v56 = a3;
  v58 = type metadata accessor for UUID();
  v60 = *(v58 - 8);
  v5 = MEMORY[0x28223BE20](v58, v4);
  v57 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v61 = &v52 - v9;
  MEMORY[0x28223BE20](v8, v10);
  v59 = &v52 - v11;
  v64 = type metadata accessor for WorkoutGoal();
  v12 = *(v64 - 8);
  v14 = MEMORY[0x28223BE20](v64, v13);
  v16 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v52 - v18;
  v20 = [objc_allocWithZone(MEMORY[0x277CCDC38]) init];
  [v20 setActivityType_];
  [v20 setLocationType_];
  v21 = HKWorkoutConfiguration.fiuiWorkoutActivityType(isPartOfMultisport:)(0);
  PacerWorkout.distanceGoal.getter();
  v66[0] = 3;
  v22 = v21;
  v23 = v21;
  v24 = v63;
  v25 = v62;
  v26 = WorkoutGoal.workoutCoreRepresentation(activityType:configurationType:validator:)(v23, v66, v62);
  if (v24)
  {
    v28 = *(v12 + 8);
    v27 = (v12 + 8);
    v28(v19, v64);
  }

  else
  {
    v54 = v26;
    v63 = v20;
    v29 = *(v12 + 8);
    v29(v19, v64);
    PacerWorkout.timeGoal.getter();
    v66[0] = 3;
    v31 = WorkoutGoal.workoutCoreRepresentation(activityType:configurationType:validator:)(v22, v66, v25);
    v29(v16, v64);
    v32 = v59;
    v33 = *(v60 + 16);
    v34 = v58;
    v33(v59, v55, v58);
    v33(v61, v32, v34);
    v53 = v33;
    v35 = objc_allocWithZone(type metadata accessor for PacerWorkoutConfiguration(0));
    v64 = 0;
    v36 = v35;
    swift_beginAccess();
    v37 = v54;
    v67 = v54;
    type metadata accessor for NLSessionActivityGoal();
    v62 = v37;
    Published.init(initialValue:)();
    swift_endAccess();
    swift_beginAccess();
    v67 = v31;
    v55 = v31;
    Published.init(initialValue:)();
    swift_endAccess();
    v38 = v57;
    v33(v57, v61, v34);
    *&v36[OBJC_IVAR___WOCoreWorkoutConfiguration_externalProvider] = 0;
    v39 = OBJC_IVAR___WOCoreWorkoutConfiguration_scheduledDate;
    v40 = type metadata accessor for Date();
    v41 = *(*(v40 - 8) + 56);
    v42 = v22;
    v41(&v36[v39], 1, 1, v40);
    v41(&v36[OBJC_IVAR___WOCoreWorkoutConfiguration_lastCompletedDate], 1, 1, v40);
    v43 = OBJC_IVAR___WOCoreWorkoutConfiguration_route;
    v44 = type metadata accessor for WorkoutPlan.Route();
    (*(*(v44 - 8) + 56))(&v36[v43], 1, 1, v44);
    v45 = v60;
    (*(v60 + 56))(&v36[OBJC_IVAR___WOCoreWorkoutConfiguration_originalConfigurationReferenceUUID], 1, 1, v34);
    v46 = OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs;
    *&v36[OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs] = 0;
    v53(&v36[OBJC_IVAR___WOCoreWorkoutConfiguration_uuid], v38, v34);
    *&v36[OBJC_IVAR___WOCoreWorkoutConfiguration_activityType] = v42;
    v36[OBJC_IVAR___WOCoreWorkoutConfiguration_type] = 3;
    v47 = v56;
    *&v36[OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence] = v56;
    swift_beginAccess();
    *&v36[v46] = 0;
    v36[OBJC_IVAR___WOCoreWorkoutConfiguration_usedProtobuf] = 0;
    v48 = type metadata accessor for WorkoutConfiguration(0);
    v65.receiver = v36;
    v65.super_class = v48;
    v49 = v42;
    v50 = v47;
    v27 = objc_msgSendSuper2(&v65, sel_init);

    v51 = *(v45 + 8);
    v51(v38, v34);
    v51(v61, v34);
    v51(v59, v34);
  }

  return v27;
}

unint64_t lazy protocol witness table accessor for type ImportError and conformance ImportError()
{
  result = lazy protocol witness table cache variable for type ImportError and conformance ImportError;
  if (!lazy protocol witness table cache variable for type ImportError and conformance ImportError)
  {
    type metadata accessor for ImportError();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ImportError and conformance ImportError);
  }

  return result;
}

uint64_t BackgroundAssertionType.description.getter()
{
  v1 = 0x6E6F6973736553;
  if (*v0 == 1)
  {
    v1 = 0x797265766F636552;
  }

  if (!*v0)
  {
    v1 = 1702256979;
  }

  if (*v0 <= 2u)
  {
    return v1;
  }

  else
  {
    return 1702256979;
  }
}

WorkoutCore::BackgroundAssertionType_optional __swiftcall BackgroundAssertionType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 6;
  if (rawValue < 6)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance BackgroundAssertionType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance BackgroundAssertionType(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance BackgroundAssertionType()
{
  v1 = 0x6E6F6973736553;
  if (*v0 == 1)
  {
    v1 = 0x797265766F636552;
  }

  if (!*v0)
  {
    v1 = 1702256979;
  }

  if (*v0 <= 2u)
  {
    return v1;
  }

  else
  {
    return 1702256979;
  }
}

unint64_t BackgroundAssertionAcquireResult.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance BackgroundAssertionAcquireResult()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance BackgroundAssertionAcquireResult(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v2);
  return Hasher._finalize()();
}

unint64_t *protocol witness for RawRepresentable.init(rawValue:) in conformance BackgroundAssertionAcquireResult@<X0>(unint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 2;
  if (*result > 2)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

uint64_t BackgroundAssertionAcquireResult.description.getter(uint64_t a1)
{
  v1 = 0x7243746F6E6E6163;
  v2 = 0x4579646165726C61;
  if (a1 != 1)
  {
    v2 = 0;
  }

  if (a1 != 2)
  {
    v1 = v2;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return 0x73736563637573;
  }
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance BackgroundAssertionAcquireResult()
{
  v1 = *v0;
  v2 = 0x7243746F6E6E6163;
  v3 = 0x4579646165726C61;
  if (*v0 != 1)
  {
    v3 = 0;
  }

  if (v1 != 2)
  {
    v2 = v3;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 0x73736563637573;
  }
}

id BackgroundAssertionManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BackgroundAssertionManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BackgroundAssertionManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t closure #1 in closure #1 in BackgroundAssertionManager.acquire(type:uuid:explanation:timeout:)(int a1, uint64_t a2, uint64_t a3)
{
  v23 = a3;
  v22 = a1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v26 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v21[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for DispatchQoS();
  v24 = *(v8 - 8);
  v25 = v8;
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v21[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12, v15);
  type metadata accessor for OS_dispatch_queue();
  v16 = static OS_dispatch_queue.main.getter();
  (*(v13 + 16))(&v21[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)], a2, v12);
  v17 = (*(v13 + 80) + 17) & ~*(v13 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v22;
  (*(v13 + 32))(v18 + v17, &v21[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)], v12);
  *(v18 + ((v14 + v17 + 7) & 0xFFFFFFFFFFFFFFF8)) = v23;
  aBlock[4] = partial apply for closure #1 in closure #1 in closure #1 in BackgroundAssertionManager.acquire(type:uuid:explanation:timeout:);
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_43;
  v19 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_2(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  _sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGSayxGSTsWlTm_1(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F2E7580](0, v11, v7, v19);
  _Block_release(v19);

  (*(v26 + 8))(v7, v4);
  return (*(v24 + 8))(v11, v25);
}

void closure #1 in closure #1 in closure #1 in BackgroundAssertionManager.acquire(type:uuid:explanation:timeout:)(int a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static WOLog.default);
  (*(v7 + 16))(v10, a2, v6);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();
  v14 = os_log_type_enabled(v12, v13);
  v34 = a1;
  if (v14)
  {
    v32 = a3;
    v33 = a2;
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v35[0] = v17;
    v18 = 0xE700000000000000;
    v19 = 0x6E6F6973736553;
    *v15 = 136315650;
    if (a1 == 1)
    {
      v19 = 0x797265766F636552;
      v18 = 0xE800000000000000;
    }

    if (!a1)
    {
      v19 = 1702256979;
      v18 = 0xE400000000000000;
    }

    if (a1 <= 2u)
    {
      v20 = v19;
    }

    else
    {
      v20 = 1702256979;
    }

    if (a1 <= 2u)
    {
      v21 = v18;
    }

    else
    {
      v21 = 0xE400000000000000;
    }

    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, v35);

    *(v15 + 4) = v22;
    *(v15 + 12) = 2080;
    v23 = UUID.uuidString.getter();
    v25 = v24;
    (*(v7 + 8))(v10, v6);
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v25, v35);

    *(v15 + 14) = v26;
    *(v15 + 22) = 2112;
    v27 = [objc_opt_self() currentThread];
    *(v15 + 24) = v27;
    *v16 = v27;
    _os_log_impl(&dword_20AEA4000, v12, v13, "Releasing background assertion (type: %s, uuid: %s) due timeout of %%f seconds, thread: %@", v15, 0x20u);
    outlined destroy of NSObject?(v16);
    MEMORY[0x20F2E9420](v16, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v17, -1, -1);
    MEMORY[0x20F2E9420](v15, -1, -1);

    a2 = v33;
  }

  else
  {

    (*(v7 + 8))(v10, v6);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v30 = MEMORY[0x28223BE20](Strong, v29);
    *(&v32 - 4) = v30;
    *(&v32 - 24) = v34;
    *(&v32 - 2) = a2;
    v31 = v30;
    OS_dispatch_queue.sync<A>(execute:)();
  }
}

void closure #1 in BackgroundAssertionManager.release(type:uuid:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v60 = a4;
  v62 = type metadata accessor for UUID();
  v7 = *(v62 - 8);
  v9 = MEMORY[0x28223BE20](v62, v8);
  v11 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v58 - v13;
  v15 = OBJC_IVAR___WOBackgroundAssertionManager_assertions;
  swift_beginAccess();
  v16 = *(a1 + v15);

  v17 = specialized NestedDictionary.get(_:_:)(a2, a3, v16);

  if (v17)
  {
    [v17 invalidate];
    swift_beginAccess();
    specialized NestedDictionary.remove(_:_:)(a2, a3);
    swift_endAccess();
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static WOLog.default);
    v19 = v62;
    (*(v7 + 16))(v14, a3, v62);
    v20 = v17;
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v59 = v22;
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v61[0] = v58;
      v25 = a2;
      v26 = 0xE700000000000000;
      *v23 = 138413058;
      *(v23 + 4) = v20;
      *v24 = v17;
      *(v23 + 12) = 2080;
      v27 = 1702256979;
      v28 = 0x797265766F636552;
      if (a2 == 1)
      {
        v26 = 0xE800000000000000;
      }

      else
      {
        v28 = 0x6E6F6973736553;
      }

      if (a2)
      {
        v27 = v28;
      }

      else
      {
        v26 = 0xE400000000000000;
      }

      if (a2 <= 2u)
      {
        v29 = v27;
      }

      else
      {
        v29 = 1702256979;
      }

      if (v25 <= 2)
      {
        v30 = v26;
      }

      else
      {
        v30 = 0xE400000000000000;
      }

      v31 = v20;
      v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, v61);

      *(v23 + 14) = v32;
      *(v23 + 22) = 2080;
      v33 = UUID.uuidString.getter();
      v35 = v34;
      (*(v7 + 8))(v14, v62);
      v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v35, v61);

      *(v23 + 24) = v36;
      *(v23 + 32) = 2112;
      v37 = [objc_opt_self() currentThread];
      *(v23 + 34) = v37;
      v24[1] = v37;
      _os_log_impl(&dword_20AEA4000, v21, v59, "Released background assertion %@ (type: %s, uuid: %s), thread: %@", v23, 0x2Au);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      swift_arrayDestroy();
      MEMORY[0x20F2E9420](v24, -1, -1);
      v38 = v58;
      swift_arrayDestroy();
      MEMORY[0x20F2E9420](v38, -1, -1);
      MEMORY[0x20F2E9420](v23, -1, -1);

      v39 = 1;
    }

    else
    {

      (*(v7 + 8))(v14, v19);
      v39 = 1;
    }
  }

  else
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v40 = type metadata accessor for Logger();
    __swift_project_value_buffer(v40, static WOLog.default);
    v41 = v62;
    (*(v7 + 16))(v11, a3, v62);
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v61[0] = v46;
      v47 = 0xE700000000000000;
      *v44 = 136315650;
      v48 = 1702256979;
      v49 = 0x797265766F636552;
      if (a2 == 1)
      {
        v47 = 0xE800000000000000;
      }

      else
      {
        v49 = 0x6E6F6973736553;
      }

      if (a2)
      {
        v48 = v49;
      }

      else
      {
        v47 = 0xE400000000000000;
      }

      if (a2 <= 2u)
      {
        v50 = v48;
      }

      else
      {
        v50 = 1702256979;
      }

      if (a2 <= 2u)
      {
        v51 = v47;
      }

      else
      {
        v51 = 0xE400000000000000;
      }

      v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v51, v61);

      *(v44 + 4) = v52;
      *(v44 + 12) = 2080;
      v53 = UUID.uuidString.getter();
      v55 = v54;
      (*(v7 + 8))(v11, v62);
      v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v55, v61);

      *(v44 + 14) = v56;
      *(v44 + 22) = 2112;
      v57 = [objc_opt_self() currentThread];
      *(v44 + 24) = v57;
      *v45 = v57;
      _os_log_impl(&dword_20AEA4000, v42, v43, "No background assertion found to release for (type: %s, uuid: %s), thread: %@", v44, 0x20u);
      outlined destroy of NSObject?(v45);
      MEMORY[0x20F2E9420](v45, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x20F2E9420](v46, -1, -1);
      MEMORY[0x20F2E9420](v44, -1, -1);
    }

    else
    {

      (*(v7 + 8))(v11, v41);
    }

    v39 = 0;
  }

  *v60 = v39;
}

double specialized NestedDictionary.remove(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = specialized Dictionary.subscript.modify(v12, a1);
  if (*v7)
  {
  }

  (v6)(v12, 0);
  v9 = *v2;
  if (*(*v3 + 16))
  {
    v10 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
    if ((v11 & 1) != 0 && !*(*(*(v9 + 56) + 8 * v10) + 16))
    {
      specialized Dictionary._Variant.removeValue(forKey:)(a1);
    }
  }

  return result;
}

void closure #1 in BackgroundAssertionManager.isValid(type:uuid:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned __int8 *a4@<X8>)
{
  v8 = OBJC_IVAR___WOBackgroundAssertionManager_assertions;
  swift_beginAccess();
  v9 = *(a1 + v8);
  if (!*(v9 + 16))
  {
    goto LABEL_7;
  }

  v10 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  if ((v11 & 1) == 0)
  {
    goto LABEL_7;
  }

  v12 = *(*(v9 + 56) + 8 * v10);
  if (!*(v12 + 16))
  {
    goto LABEL_7;
  }

  v13 = specialized __RawDictionaryStorage.find<A>(_:)(a3);
  if ((v14 & 1) == 0)
  {

LABEL_7:
    v16 = 0;
    goto LABEL_8;
  }

  v15 = *(*(v12 + 56) + 8 * v13);

  v16 = [v15 isValid];

LABEL_8:
  *a4 = v16;
}

void BackgroundAssertionManager.timeBomb(type:uuid:timeout:)(char *a1, uint64_t a2, double a3)
{
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v11 = *a1;
  v12 = *&v3[OBJC_IVAR___WOBackgroundAssertionManager_serialQueue];
  (*(v8 + 16))(aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v7);
  v13 = (*(v8 + 80) + 25) & ~*(v8 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v3;
  *(v14 + 24) = v11;
  (*(v8 + 32))(v14 + v13, aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  *(v14 + ((v9 + v13 + 7) & 0xFFFFFFFFFFFFFFF8)) = a3;
  v15 = swift_allocObject();
  *(v15 + 16) = partial apply for closure #1 in BackgroundAssertionManager.timeBomb(type:uuid:timeout:);
  *(v15 + 24) = v14;
  aBlock[4] = _sIg_Ieg_TRTA_3;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_42;
  v16 = _Block_copy(aBlock);
  v17 = v3;

  dispatch_sync(v12, v16);
  _Block_release(v16);
  LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

  if (v12)
  {
    __break(1u);
  }
}

void closure #1 in BackgroundAssertionManager.timeBomb(type:uuid:timeout:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v12 = MEMORY[0x28223BE20](v8, v11);
  v13 = &aBlock[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &aBlock[-1] - v15;
  v17 = OBJC_IVAR___WOBackgroundAssertionManager_assertions;
  swift_beginAccess();
  v18 = *(a1 + v17);

  v19 = specialized NestedDictionary.get(_:_:)(a2, a3, v18);

  if (v19)
  {
    v20 = objc_opt_self();
    v21 = swift_allocObject();
    swift_unknownObjectWeakInit();
    (*(v9 + 16))(v16, a3, v8);
    v22 = (*(v9 + 80) + 33) & ~*(v9 + 80);
    v23 = swift_allocObject();
    *(v23 + 16) = v19;
    *(v23 + 24) = v21;
    *(v23 + 32) = a2;
    (*(v9 + 32))(v23 + v22, v16, v8);
    aBlock[4] = partial apply for closure #1 in closure #1 in BackgroundAssertionManager.timeBomb(type:uuid:timeout:);
    aBlock[5] = v23;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed NSTimer) -> ();
    aBlock[3] = &block_descriptor_23_1;
    v24 = _Block_copy(aBlock);
    v25 = v19;

    v26 = [v20 scheduledTimerWithTimeInterval:0 repeats:v24 block:a4];
    _Block_release(v24);
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    __swift_project_value_buffer(v27, static WOLog.default);
    v28 = v25;
    v29 = v26;
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      aBlock[0] = v34;
      *v32 = 138413058;
      *(v32 + 4) = v29;
      *(v32 + 12) = 2112;
      *(v32 + 14) = v28;
      *v33 = v29;
      v33[1] = v19;
      *(v32 + 22) = 2080;
      v35 = v28;
      v36 = v29;
      v37 = Double.description.getter();
      v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v38, aBlock);

      *(v32 + 24) = v39;
      *(v32 + 32) = 2112;
      v40 = [objc_opt_self() currentThread];
      *(v32 + 34) = v40;
      v33[2] = v40;
      _os_log_impl(&dword_20AEA4000, v30, v31, "Scheduled time bomb timer %@ to nuke background assertion %@ in %s seconds, thread: %@", v32, 0x2Au);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      swift_arrayDestroy();
      MEMORY[0x20F2E9420](v33, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v34);
      MEMORY[0x20F2E9420](v34, -1, -1);
      MEMORY[0x20F2E9420](v32, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    __swift_project_value_buffer(v41, static WOLog.default);
    (*(v9 + 16))(v13, a3, v8);
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      aBlock[0] = v46;
      v47 = 0xE700000000000000;
      v48 = 0x6E6F6973736553;
      *v44 = 136315650;
      if (a2 == 1)
      {
        v48 = 0x797265766F636552;
        v47 = 0xE800000000000000;
      }

      if (!a2)
      {
        v48 = 1702256979;
        v47 = 0xE400000000000000;
      }

      if (a2 <= 2u)
      {
        v49 = v48;
      }

      else
      {
        v49 = 1702256979;
      }

      if (a2 <= 2u)
      {
        v50 = v47;
      }

      else
      {
        v50 = 0xE400000000000000;
      }

      v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v50, aBlock);

      *(v44 + 4) = v51;
      *(v44 + 12) = 2080;
      v52 = UUID.uuidString.getter();
      v54 = v53;
      (*(v9 + 8))(v13, v8);
      v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v54, aBlock);

      *(v44 + 14) = v55;
      *(v44 + 22) = 2112;
      v56 = [objc_opt_self() currentThread];
      *(v44 + 24) = v56;
      *v45 = v56;
      _os_log_impl(&dword_20AEA4000, v42, v43, "No background assertion found to time bomb for (type: %s, uuid: %s, thread: %@", v44, 0x20u);
      outlined destroy of NSObject?(v45);
      MEMORY[0x20F2E9420](v45, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x20F2E9420](v46, -1, -1);
      MEMORY[0x20F2E9420](v44, -1, -1);
    }

    else
    {

      (*(v9 + 8))(v13, v8);
    }
  }
}

void partial apply for closure #1 in BackgroundAssertionManager.timeBomb(type:uuid:timeout:)()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = (*(v1 + 80) + 25) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);

  closure #1 in BackgroundAssertionManager.timeBomb(type:uuid:timeout:)(v4, v5, v0 + v2, v3);
}

unint64_t lazy protocol witness table accessor for type BackgroundAssertionAcquireResult and conformance BackgroundAssertionAcquireResult()
{
  result = lazy protocol witness table cache variable for type BackgroundAssertionAcquireResult and conformance BackgroundAssertionAcquireResult;
  if (!lazy protocol witness table cache variable for type BackgroundAssertionAcquireResult and conformance BackgroundAssertionAcquireResult)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BackgroundAssertionAcquireResult and conformance BackgroundAssertionAcquireResult);
  }

  return result;
}

uint64_t closure #1 in closure #1 in BackgroundAssertionManager.timeBomb(type:uuid:timeout:)(void *a1, void *a2, uint64_t a3, int a4, uint64_t a5)
{
  v32 = a4;
  v30 = a2;
  v31 = a3;
  v34 = type metadata accessor for DispatchWorkItemFlags();
  v37 = *(v34 - 8);
  MEMORY[0x28223BE20](v34, v7);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v35 = *(v10 - 8);
  v36 = v10;
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14, v17);
  v18 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OS_dispatch_queue();
  v33 = static OS_dispatch_queue.main.getter();
  (*(v15 + 16))(v18, a5, v14);
  v19 = (*(v15 + 80) + 41) & ~*(v15 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = a1;
  v21 = a1;
  v23 = v30;
  v22 = v31;
  *(v20 + 24) = v30;
  *(v20 + 32) = v22;
  *(v20 + 40) = v32;
  (*(v15 + 32))(v20 + v19, v18, v14);
  aBlock[4] = partial apply for closure #1 in closure #1 in closure #1 in BackgroundAssertionManager.timeBomb(type:uuid:timeout:);
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_29_0;
  v24 = _Block_copy(aBlock);
  v25 = v21;
  v26 = v23;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_2(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  _sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGSayxGSTsWlTm_1(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  v27 = v34;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v28 = v33;
  MEMORY[0x20F2E7580](0, v13, v9, v24);
  _Block_release(v24);

  (*(v37 + 8))(v9, v27);
  return (*(v35 + 8))(v13, v36);
}

void closure #1 in closure #1 in closure #1 in BackgroundAssertionManager.timeBomb(type:uuid:timeout:)(void *a1, void *a2, uint64_t a3, char a4, uint64_t a5)
{
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static WOLog.default);
  v8 = a1;
  v9 = a2;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412802;
    *(v12 + 4) = v8;
    *(v12 + 12) = 2112;
    *(v12 + 14) = v9;
    *v13 = v8;
    v13[1] = v9;
    *(v12 + 22) = 2112;
    v14 = objc_opt_self();
    v15 = v8;
    v16 = v9;
    v17 = [v14 currentThread];
    *(v12 + 24) = v17;
    v13[2] = v17;
    _os_log_impl(&dword_20AEA4000, v10, v11, "Fired time bomb timer %@ to nuke background assertion %@, thread: %@", v12, 0x20u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v13, -1, -1);
    MEMORY[0x20F2E9420](v12, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v20 = MEMORY[0x28223BE20](Strong, v19);
    OS_dispatch_queue.sync<A>(execute:)();
  }
}

uint64_t getEnumTagSinglePayload for BackgroundAssertionType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for BackgroundAssertionType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #1 in BackgroundAssertionManager.timeBomb(type:uuid:timeout:)(void *a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = v1 + ((*(v3 + 80) + 33) & ~*(v3 + 80));

  return closure #1 in closure #1 in BackgroundAssertionManager.timeBomb(type:uuid:timeout:)(a1, v4, v5, v6, v7);
}

void partial apply for closure #1 in closure #1 in closure #1 in BackgroundAssertionManager.timeBomb(type:uuid:timeout:)()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = v0 + ((*(v1 + 80) + 41) & ~*(v1 + 80));

  closure #1 in closure #1 in closure #1 in BackgroundAssertionManager.timeBomb(type:uuid:timeout:)(v2, v3, v4, v5, v6);
}

uint64_t objectdestroy_33Tm()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 17) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t partial apply for closure #1 in closure #1 in BackgroundAssertionManager.acquire(type:uuid:explanation:timeout:)(uint64_t (*a1)(uint64_t, unint64_t, uint64_t))
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = (*(v2 + 80) + 17) & ~*(v2 + 80);
  v4 = *(v1 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = *(v1 + 16);

  return a1(v5, v1 + v3, v4);
}

void closure #1 in BackgroundAssertionManager.release(type:uuid:)partial apply(char *a1@<X8>)
{
  partial apply for closure #1 in BackgroundAssertionManager.release(type:uuid:)(a1);
}

{
  partial apply for closure #1 in BackgroundAssertionManager.release(type:uuid:)(a1);
}

{
  partial apply for closure #1 in BackgroundAssertionManager.release(type:uuid:)(a1);
}

void static MultisportTransitionsStore.save(multisportTransitions:)(void *a1)
{
  v34[4] = *MEMORY[0x277D85DE8];
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  v34[0] = a1;
  type metadata accessor for MultisportTransitions(0);
  lazy protocol witness table accessor for type MultisportTransitions and conformance MultisportTransitions(&lazy protocol witness table cache variable for type MultisportTransitions and conformance MultisportTransitions, &protocol conformance descriptor for MultisportTransitions);
  v12 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v14 = v13;

  v15 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v33[0] = 0;
  v17 = [v15 propertyListWithData:isa options:0 format:0 error:v33];

  v18 = v33[0];
  if (v17)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    v19 = objc_opt_self();
    v20 = [v19 standardUserDefaults];
    __swift_project_boxed_opaque_existential_0(v34, v34[3]);
    v21 = _bridgeAnythingToObjectiveC<A>(_:)();
    v22 = MEMORY[0x20F2E6C00](0xD000000000000015, 0x800000020B4606E0);
    [v20 setObject:v21 forKey:v22];

    swift_unknownObjectRelease();
    v23 = MEMORY[0x20F2E6C00](0xD000000000000015, 0x800000020B4606E0);
    [v19 fu:v23 backupStandardUserDefaultsKey:?];

    if (one-time initialization token for multisport != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    __swift_project_value_buffer(v24, static WOLog.multisport);
    v25 = a1;
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *v28 = 138412290;
      *(v28 + 4) = v25;
      *v29 = v25;
      v30 = v25;
      _os_log_impl(&dword_20AEA4000, v26, v27, "Saved MultisportTransitions to user defaults multisportTransitions=%@", v28, 0xCu);
      outlined destroy of NSObject?(v29);
      MEMORY[0x20F2E9420](v29, -1, -1);
      MEMORY[0x20F2E9420](v28, -1, -1);
    }

    outlined consume of Data._Representation(v12, v14);

    __swift_destroy_boxed_opaque_existential_0(v34);
  }

  else
  {
    v31 = v18;
    v32 = _convertNSErrorToError(_:)();

    swift_willThrow();
    outlined consume of Data._Representation(v12, v14);
    if (one-time initialization token for multisport != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static WOLog.multisport);
    v3 = v32;
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v34[0] = v7;
      *v6 = 136315138;
      v33[0] = v32;
      v8 = v32;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v9 = String.init<A>(describing:)();
      v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, v34);

      *(v6 + 4) = v11;
      _os_log_impl(&dword_20AEA4000, v4, v5, "Failed to encode and save MultisportTransitions. error=%s", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v7);
      MEMORY[0x20F2E9420](v7, -1, -1);
      MEMORY[0x20F2E9420](v6, -1, -1);
    }

    else
    {
    }
  }
}

id specialized static MultisportTransitionsStore.read()()
{
  v44 = *MEMORY[0x277D85DE8];
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = MEMORY[0x20F2E6C00](0xD000000000000015, 0x800000020B4606E0);
  v2 = [v0 objectForKey_];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    outlined init with take of Any(v41, &v42);
    v3 = objc_opt_self();
    __swift_project_boxed_opaque_existential_0(&v42, v43);
    v4 = _bridgeAnythingToObjectiveC<A>(_:)();
    *&v41[0] = 0;
    v5 = [v3 dataWithPropertyList:v4 format:100 options:0 error:v41];
    swift_unknownObjectRelease();
    v6 = *&v41[0];
    if (v5)
    {
      v7 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v8;

      type metadata accessor for PropertyListDecoder();
      swift_allocObject();
      PropertyListDecoder.init()();
      type metadata accessor for MultisportTransitions(0);
      lazy protocol witness table accessor for type MultisportTransitions and conformance MultisportTransitions(&lazy protocol witness table cache variable for type MultisportTransitions and conformance MultisportTransitions, &protocol conformance descriptor for MultisportTransitions);
      dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

      v31 = *&v41[0];
      if (one-time initialization token for multisport != -1)
      {
        swift_once();
      }

      v32 = type metadata accessor for Logger();
      __swift_project_value_buffer(v32, static WOLog.multisport);
      v16 = v31;
      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        *v35 = 138412290;
        *(v35 + 4) = v16;
        *v36 = v16;
        v37 = v16;
        _os_log_impl(&dword_20AEA4000, v33, v34, "Successfully read user multisportTransitions=%@", v35, 0xCu);
        outlined destroy of NSObject?(v36);
        MEMORY[0x20F2E9420](v36, -1, -1);
        MEMORY[0x20F2E9420](v35, -1, -1);
      }

      outlined consume of Data._Representation(v7, v9);
    }

    else
    {
      v17 = v6;
      v18 = _convertNSErrorToError(_:)();

      swift_willThrow();
      if (one-time initialization token for multisport != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      __swift_project_value_buffer(v19, static WOLog.multisport);
      v20 = v18;
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        *&v41[0] = v24;
        *v23 = 136315138;
        v25 = v18;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
        v26 = String.init<A>(describing:)();
        v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, v41);

        *(v23 + 4) = v28;
        _os_log_impl(&dword_20AEA4000, v21, v22, "Failed to decode MultisportTransitions. error=%s", v23, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v24);
        MEMORY[0x20F2E9420](v24, -1, -1);
        MEMORY[0x20F2E9420](v23, -1, -1);
      }

      v29 = type metadata accessor for MultisportTransitions(0);
      v30 = objc_allocWithZone(v29);
      swift_beginAccess();
      Published.init(initialValue:)();
      swift_endAccess();
      swift_beginAccess();
      Published.init(initialValue:)();
      swift_endAccess();
      v39.receiver = v30;
      v39.super_class = v29;
      v16 = objc_msgSendSuper2(&v39, sel_init);
    }

    __swift_destroy_boxed_opaque_existential_0(&v42);
  }

  else
  {
    if (one-time initialization token for multisport != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static WOLog.multisport);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_20AEA4000, v11, v12, "MultisportTransitions not present in user defaults.", v13, 2u);
      MEMORY[0x20F2E9420](v13, -1, -1);
    }

    v14 = type metadata accessor for MultisportTransitions(0);
    v15 = objc_allocWithZone(v14);
    swift_beginAccess();
    Published.init(initialValue:)();
    swift_endAccess();
    swift_beginAccess();
    LOBYTE(v41[0]) = 1;
    Published.init(initialValue:)();
    swift_endAccess();
    v40.receiver = v15;
    v40.super_class = v14;
    return objc_msgSendSuper2(&v40, sel_init);
  }

  return v16;
}