void closure #1 in DataLinkHealthKitClientConnection.sendCurrentKnownSequences()(int a1, NSObject *a2)
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
      _os_log_impl(&dword_20AEA4000, oslog, v6, "Error sending data: %@", v7, 0xCu);
      outlined destroy of Apple_Workout_Core_MirroredClientMessage.OneOf_Message?(v8, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
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

id DataLinkHealthKitClientConnection.init()()
{
  *&v0[OBJC_IVAR____TtC11WorkoutCore33DataLinkHealthKitClientConnection_mirroredClientDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC11WorkoutCore33DataLinkHealthKitClientConnection_store;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  if (one-time initialization token for healthStore != -1)
  {
    swift_once();
  }

  v2 = static WorkoutCoreInjector.healthStore;
  *&v0[v1] = static WorkoutCoreInjector.healthStore;
  *&v0[OBJC_IVAR____TtC11WorkoutCore33DataLinkHealthKitClientConnection_session] = 0;
  v3 = &v0[OBJC_IVAR____TtC11WorkoutCore33DataLinkHealthKitClientConnection_workoutSessionMirroringStartHandler];
  *v3 = 0;
  *(v3 + 1) = 0;
  v4 = &v0[OBJC_IVAR____TtC11WorkoutCore33DataLinkHealthKitClientConnection_metricsUpdater];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = &v0[OBJC_IVAR____TtC11WorkoutCore33DataLinkHealthKitClientConnection_notificationHandler];
  *v5 = 0;
  *(v5 + 1) = 0;
  v6 = &v0[OBJC_IVAR____TtC11WorkoutCore33DataLinkHealthKitClientConnection_presenceHandler];
  *v6 = 0;
  *(v6 + 1) = 0;
  swift_unknownObjectWeakInit();
  v7 = OBJC_IVAR____TtC11WorkoutCore33DataLinkHealthKitClientConnection_knownSequences;
  v8 = v2;
  *&v0[v7] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC11WorkoutCore06Apple_c1_D13_PublisherKeyO_s6UInt32VTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v9 = *MEMORY[0x277D767B0];
  *&v0[OBJC_IVAR____TtC11WorkoutCore33DataLinkHealthKitClientConnection_didDisconnectTaskIdentifier] = *MEMORY[0x277D767B0];
  *&v0[OBJC_IVAR____TtC11WorkoutCore33DataLinkHealthKitClientConnection_didFailTaskIdentifier] = v9;
  v11.receiver = v0;
  v11.super_class = type metadata accessor for DataLinkHealthKitClientConnection();
  return objc_msgSendSuper2(&v11, sel_init);
}

void DataLinkHealthKitClientConnection.workoutSession(_:didFailWithError:)(void *a1, void *a2)
{
  v3 = v2;
  if (one-time initialization token for dataLink != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static WOLog.dataLink);
  v7 = a1;
  v8 = a2;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  v83 = v7;
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v81 = swift_slowAlloc();
    aBlock[0] = v81;
    *v11 = 136315650;
    v13 = v7;
    v14 = [v13 description];
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v17, aBlock);

    *(v11 + 4) = v18;
    *(v11 + 12) = 2080;
    v87 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pSgMd, _ss5Error_pSgMR);
    v19 = Optional.description.getter();
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, aBlock);

    *(v11 + 14) = v21;
    *(v11 + 22) = 2112;
    v22 = [objc_opt_self() currentThread];
    *(v11 + 24) = v22;
    *v12 = v22;
    _os_log_impl(&dword_20AEA4000, v9, v10, "workoutSession (%s) didFailWithError: %s, thread: %@", v11, 0x20u);
    outlined destroy of Apple_Workout_Core_MirroredClientMessage.OneOf_Message?(v12, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F2E9420](v12, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v81, -1, -1);
    MEMORY[0x20F2E9420](v11, -1, -1);
  }

  v23 = *&v3[OBJC_IVAR____TtC11WorkoutCore33DataLinkHealthKitClientConnection_session];
  *&v3[OBJC_IVAR____TtC11WorkoutCore33DataLinkHealthKitClientConnection_session] = 0;

  v24 = &v3[OBJC_IVAR____TtC11WorkoutCore33DataLinkHealthKitClientConnection_workoutSessionMirroringStartHandler];
  v25 = *&v3[OBJC_IVAR____TtC11WorkoutCore33DataLinkHealthKitClientConnection_workoutSessionMirroringStartHandler];
  v26 = *&v3[OBJC_IVAR____TtC11WorkoutCore33DataLinkHealthKitClientConnection_workoutSessionMirroringStartHandler + 8];
  *v24 = 0;
  *(v24 + 1) = 0;
  _s11WorkoutCore16MetricsPublisherCIegg_SgWOe_0(v25, v26);
  v27 = *&v3[OBJC_IVAR____TtC11WorkoutCore33DataLinkHealthKitClientConnection_presenceHandler];
  if (v27)
  {
    v28 = *&v3[OBJC_IVAR____TtC11WorkoutCore33DataLinkHealthKitClientConnection_presenceHandler + 8];
    v29 = objc_opt_self();

    v30 = [v29 sharedApplication];
    v31 = MEMORY[0x20F2E6C00](0xD000000000000020, 0x800000020B469EB0);
    v32 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v33 = swift_allocObject();
    v33[2] = v32;
    v33[3] = v83;
    v33[4] = a2;
    aBlock[4] = partial apply for closure #1 in DataLinkHealthKitClientConnection.workoutSession(_:didFailWithError:);
    aBlock[5] = v33;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_65_0;
    v34 = _Block_copy(aBlock);
    v35 = v83;
    v36 = a2;

    v37 = [v30 beginBackgroundTaskWithName:v31 expirationHandler:v34];
    _Block_release(v34);

    v38 = OBJC_IVAR____TtC11WorkoutCore33DataLinkHealthKitClientConnection_didFailTaskIdentifier;
    *&v3[OBJC_IVAR____TtC11WorkoutCore33DataLinkHealthKitClientConnection_didFailTaskIdentifier] = v37;
    v39 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v40 = swift_allocObject();
    v40[2] = v39;
    v40[3] = v35;
    v40[4] = a2;
    v41 = v35;
    v42 = a2;

    v84 = v28;
    v27(0, partial apply for closure #2 in DataLinkHealthKitClientConnection.workoutSession(_:didFailWithError:), v40);

    v43 = v3;
    v44 = v41;
    v45 = a2;
    v46 = v43;
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v47, v48))
    {
      v80 = v48;
      v49 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      aBlock[0] = v85;
      *v49 = 136315906;
      v50 = v44;
      v51 = [v50 description];
      v82 = v27;
      v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v53 = v38;
      v55 = v54;

      v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v55, aBlock);

      *(v49 + 4) = v56;
      *(v49 + 12) = 2048;
      v57 = *&v3[v53];

      *(v49 + 14) = v57;
      *(v49 + 22) = 2080;
      v87 = a2;
      v58 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v59 = String.init<A>(describing:)();
      v61 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, v60, aBlock);

      *(v49 + 24) = v61;
      *(v49 + 32) = 2112;
      v62 = [objc_opt_self() currentThread];
      *(v49 + 34) = v62;
      *v79 = v62;
      _os_log_impl(&dword_20AEA4000, v47, v80, "workoutSession (%s) started background task (%ld) didFailWithError: %s, thread: %@", v49, 0x2Au);
      outlined destroy of Apple_Workout_Core_MirroredClientMessage.OneOf_Message?(v79, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x20F2E9420](v79, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x20F2E9420](v85, -1, -1);
      MEMORY[0x20F2E9420](v49, -1, -1);
      v63 = v82;
    }

    else
    {

      v63 = v27;
    }

    _s11WorkoutCore16MetricsPublisherCIegg_SgWOe_0(v63, v84);
  }

  else
  {
    v64 = v83;
    v65 = a2;
    v47 = Logger.logObject.getter();
    v66 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v47, v66))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      aBlock[0] = v68;
      *v67 = 136315394;
      v69 = v64;
      v70 = [v69 description];
      v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v73 = v72;

      v74 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v71, v73, aBlock);

      *(v67 + 4) = v74;
      *(v67 + 12) = 2080;
      v87 = a2;
      v75 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v76 = String.init<A>(describing:)();
      v78 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v76, v77, aBlock);

      *(v67 + 14) = v78;
      _os_log_impl(&dword_20AEA4000, v47, v66, "workoutSession (%s) didFailWithError: %s, presenceHandler is not set", v67, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F2E9420](v68, -1, -1);
      MEMORY[0x20F2E9420](v67, -1, -1);
    }
  }
}

void closure #1 in DataLinkHealthKitClientConnection.workoutSession(_:didFailWithError:)(uint64_t a1, void *a2, void *a3, uint64_t (*a4)(void), char *a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    if (one-time initialization token for dataLink != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static WOLog.dataLink);
    v12 = v10;
    v13 = a2;
    v14 = a3;
    v15 = Logger.logObject.getter();
    v16 = a4();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v35 = v34;
      *v17 = 136315906;
      v19 = v13;
      v20 = [v19 description];
      format = a5;
      v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v23 = v22;

      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v23, &v35);

      *(v17 + 4) = v24;
      *(v17 + 12) = 2048;
      v25 = *&v12[OBJC_IVAR____TtC11WorkoutCore33DataLinkHealthKitClientConnection_didFailTaskIdentifier];

      *(v17 + 14) = v25;
      *(v17 + 22) = 2080;
      v26 = a3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v27 = String.init<A>(describing:)();
      v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, &v35);

      *(v17 + 24) = v29;
      *(v17 + 32) = 2112;
      v30 = [objc_opt_self() currentThread];
      *(v17 + 34) = v30;
      *v18 = v30;
      _os_log_impl(&dword_20AEA4000, v15, v16, format, v17, 0x2Au);
      outlined destroy of Apple_Workout_Core_MirroredClientMessage.OneOf_Message?(v18, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x20F2E9420](v18, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x20F2E9420](v34, -1, -1);
      MEMORY[0x20F2E9420](v17, -1, -1);
    }

    else
    {
    }

    v31 = [objc_opt_self() sharedApplication];
    v32 = OBJC_IVAR____TtC11WorkoutCore33DataLinkHealthKitClientConnection_didFailTaskIdentifier;
    [v31 endBackgroundTask_];

    *&v12[v32] = *MEMORY[0x277D767B0];
  }
}

uint64_t DataLinkHealthKitClientConnection.workoutSession(_:didReceiveDataFromRemoteDevice:)(void *a1, uint64_t a2, unint64_t a3)
{
  v105 = *MEMORY[0x277D85DE8];
  v6 = type metadata accessor for Apple_Workout_Core_MirroredHostMessage(0);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Apple_Workout_Core_MetricsDelta(0);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v90 = &v84 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Apple_Workout_Core_NotificationUpdate(0);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v89 = &v84 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Apple_Workout_Core_MetricsPublisher(0);
  MEMORY[0x28223BE20](v16 - 8, v17);
  v91 = &v84 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  MEMORY[0x28223BE20](v19 - 8, v20);
  v96 = &v84 - v21;
  v22 = type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message(0);
  v94 = *(v22 - 8);
  v95 = v22;
  v24 = MEMORY[0x28223BE20](v22, v23);
  v93 = &v84 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24, v26);
  v28 = &v84 - v27;
  v29 = type metadata accessor for BinaryDecodingOptions();
  MEMORY[0x28223BE20](v29 - 8, v30);
  v99 = &v84 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = type metadata accessor for Apple_Workout_Core_DataLinkMessage(0);
  v33 = MEMORY[0x28223BE20](v98, v32);
  v35 = &v84 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33, v36);
  v38 = &v84 - v37;
  if (one-time initialization token for dataLink != -1)
  {
    swift_once();
  }

  v100 = v35;
  v39 = type metadata accessor for Logger();
  v40 = __swift_project_value_buffer(v39, static WOLog.dataLink);
  outlined copy of Data._Representation(a2, a3);
  outlined copy of Data._Representation(a2, a3);
  v41 = a1;
  v97 = v40;
  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.default.getter();

  if (!os_log_type_enabled(v42, v43))
  {
    outlined consume of Data._Representation(a2, a3);
    outlined consume of Data._Representation(a2, a3);

    goto LABEL_17;
  }

  v88 = v9;
  v86 = v28;
  v87 = v38;
  v44 = swift_slowAlloc();
  v45 = swift_slowAlloc();
  *&v101[0] = v45;
  *v44 = 136315394;
  v85 = v41;
  v46 = v41;
  v47 = [v46 description];
  v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v50 = v49;

  v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v50, v101);

  *(v44 + 4) = v51;
  *(v44 + 12) = 2048;
  v52 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v52 != 2)
    {
      outlined consume of Data._Representation(a2, a3);
      v53 = 0;
      goto LABEL_15;
    }

    v55 = *(a2 + 16);
    v54 = *(a2 + 24);
    outlined consume of Data._Representation(a2, a3);
    v53 = v54 - v55;
    v9 = v88;
    if (!__OFSUB__(v54, v55))
    {
      goto LABEL_16;
    }

    __break(1u);
LABEL_12:
    outlined consume of Data._Representation(a2, a3);
    LODWORD(v53) = HIDWORD(a2) - a2;
    v9 = v88;
    if (__OFSUB__(HIDWORD(a2), a2))
    {
      __break(1u);
    }

    v53 = v53;
    goto LABEL_16;
  }

  if (v52)
  {
    goto LABEL_12;
  }

  outlined consume of Data._Representation(a2, a3);
  v53 = BYTE6(a3);
LABEL_15:
  v9 = v88;
LABEL_16:
  v41 = v85;
  *(v44 + 14) = v53;
  outlined consume of Data._Representation(a2, a3);
  _os_log_impl(&dword_20AEA4000, v42, v43, "workoutSession (%s) didReceiveDataFromRemoteDevice: (%ld bytes)", v44, 0x16u);
  __swift_destroy_boxed_opaque_existential_0(v45);
  MEMORY[0x20F2E9420](v45, -1, -1);
  MEMORY[0x20F2E9420](v44, -1, -1);

  v38 = v87;
  v28 = v86;
LABEL_17:
  v56.super.isa = Data._bridgeToObjectiveC()().super.isa;
  *&v101[0] = 0;
  v57 = [(objc_class *)v56.super.isa decompressedDataUsingAlgorithm:0 error:v101];
  v58 = *&v101[0];
  if (v57)
  {
    a2 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v60 = v59;
  }

  else
  {
    v61 = v58;
    v62 = _convertNSErrorToError(_:)();
    v88 = a3;
    v63 = v41;
    v64 = v62;

    swift_willThrow();
    v65 = v64;
    v41 = v63;
    v60 = v88;

    outlined copy of Data._Representation(a2, v60);
  }

  v103 = a2;
  v104 = v60;
  v102 = 0;
  memset(v101, 0, sizeof(v101));
  outlined copy of Data._Representation(a2, v60);
  BinaryDecodingOptions.init()();
  _s11WorkoutCore06Apple_a1_B29_MirroredClientPrecisionStartVAC21InternalSwiftProtobuf7MessageAAWlTm_0(&lazy protocol witness table cache variable for type Apple_Workout_Core_DataLinkMessage and conformance Apple_Workout_Core_DataLinkMessage, type metadata accessor for Apple_Workout_Core_DataLinkMessage, &protocol conformance descriptor for Apple_Workout_Core_DataLinkMessage);
  v66 = v100;
  Message.init<A>(serializedBytes:extensions:partial:options:)();
  outlined init with take of Apple_Workout_Core_MirroredClientPrecisionStart(v66, v38, type metadata accessor for Apple_Workout_Core_DataLinkMessage);
  v67 = v96;
  _s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgWOcTm_0(v38, v96, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  if ((*(v94 + 48))(v67, 1, v95) == 1)
  {
    _s11WorkoutCore06Apple_a1_B16_DataLinkMessageVWOhTm_1(v38, type metadata accessor for Apple_Workout_Core_DataLinkMessage);
    outlined consume of Data._Representation(a2, v60);

    return outlined destroy of Apple_Workout_Core_MirroredClientMessage.OneOf_Message?(v67, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  }

  outlined init with take of Apple_Workout_Core_MirroredClientPrecisionStart(v67, v28, type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message);
  v69 = v93;
  outlined init with copy of Apple_Workout_Core_MirroredClientMessage(v28, v93, type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v71 = v90;
      outlined init with take of Apple_Workout_Core_MirroredClientPrecisionStart(v69, v90, type metadata accessor for Apple_Workout_Core_MetricsDelta);
      DataLinkHealthKitClientConnection.handleDeltaMetricsUpdate(_:workoutSession:)(v71, v41);

      outlined consume of Data._Representation(a2, v60);
      v72 = type metadata accessor for Apple_Workout_Core_MetricsDelta;
      goto LABEL_35;
    }

    if (EnumCaseMultiPayload != 5)
    {
LABEL_29:
      v74 = Logger.logObject.getter();
      v75 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v74, v75))
      {
        v76 = swift_slowAlloc();
        *v76 = 0;
        _os_log_impl(&dword_20AEA4000, v74, v75, "Ignoring unexpected message", v76, 2u);
        MEMORY[0x20F2E9420](v76, -1, -1);
      }

      outlined consume of Data._Representation(a2, v60);
      _s11WorkoutCore06Apple_a1_B16_DataLinkMessageVWOhTm_1(v28, type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message);
      _s11WorkoutCore06Apple_a1_B16_DataLinkMessageVWOhTm_1(v38, type metadata accessor for Apple_Workout_Core_DataLinkMessage);
      v77 = v93;
      v78 = type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message;
      return _s11WorkoutCore06Apple_a1_B16_DataLinkMessageVWOhTm_1(v77, v78);
    }

    outlined init with take of Apple_Workout_Core_MirroredClientPrecisionStart(v69, v9, type metadata accessor for Apple_Workout_Core_MirroredHostMessage);
    DataLinkHealthKitClientConnection.handleMirroredHostMessage(_:)(v9);

    outlined consume of Data._Representation(a2, v60);
    v73 = type metadata accessor for Apple_Workout_Core_MirroredHostMessage;
LABEL_38:
    v82 = v73;
    v83 = v9;
    goto LABEL_39;
  }

  if (!EnumCaseMultiPayload)
  {
    v9 = v91;
    outlined init with take of Apple_Workout_Core_MirroredClientPrecisionStart(v69, v91, type metadata accessor for Apple_Workout_Core_MetricsPublisher);
    v79 = [objc_allocWithZone(type metadata accessor for MetricsPublisher(0)) init];
    Apple_Workout_Core_MetricsPublisher.decodeInto(publisher:)(v79);
    v80 = *(v92 + OBJC_IVAR____TtC11WorkoutCore33DataLinkHealthKitClientConnection_metricsUpdater);
    if (v80)
    {
      v81 = *(v92 + OBJC_IVAR____TtC11WorkoutCore33DataLinkHealthKitClientConnection_metricsUpdater + 8);

      v80(v79);

      _s11WorkoutCore16MetricsPublisherCIegg_SgWOe_0(v80, v81);
    }

    else
    {
    }

    outlined consume of Data._Representation(a2, v60);
    v73 = type metadata accessor for Apple_Workout_Core_MetricsPublisher;
    goto LABEL_38;
  }

  if (EnumCaseMultiPayload != 1)
  {
    goto LABEL_29;
  }

  v71 = v89;
  outlined init with take of Apple_Workout_Core_MirroredClientPrecisionStart(v69, v89, type metadata accessor for Apple_Workout_Core_NotificationUpdate);
  DataLinkHealthKitClientConnection.handleNotificationUpdate(_:)(v71);

  outlined consume of Data._Representation(a2, v60);
  v72 = type metadata accessor for Apple_Workout_Core_NotificationUpdate;
LABEL_35:
  v82 = v72;
  v83 = v71;
LABEL_39:
  _s11WorkoutCore06Apple_a1_B16_DataLinkMessageVWOhTm_1(v83, v82);
  _s11WorkoutCore06Apple_a1_B16_DataLinkMessageVWOhTm_1(v28, type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message);
  v78 = type metadata accessor for Apple_Workout_Core_DataLinkMessage;
  v77 = v38;
  return _s11WorkoutCore06Apple_a1_B16_DataLinkMessageVWOhTm_1(v77, v78);
}

void DataLinkHealthKitClientConnection.handleNotificationUpdate(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_b1_A12NotificationVSgMd, &_s11WorkoutCore06Apple_a1_b1_A12NotificationVSgMR);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v44 = &v38 - v4;
  v5 = type metadata accessor for Apple_Workout_Core_WorkoutNotification(0);
  v42 = *(v5 - 8);
  v43 = v5;
  MEMORY[0x28223BE20](v5, v6);
  v40 = (&v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for Apple_Workout_Core_MetricsPublisher(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v39 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR);
  v14 = MEMORY[0x28223BE20](v12 - 8, v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v38 - v18;
  v41 = type metadata accessor for Apple_Workout_Core_NotificationUpdate(0);
  v20 = *(v41 + 24);
  _s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgWOcTm_0(a1 + v20, v19, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR);
  v21 = *(v9 + 48);
  v22 = v21(v19, 1, v8);
  outlined destroy of Apple_Workout_Core_MirroredClientMessage.OneOf_Message?(v19, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR);
  if (v22 != 1)
  {
    _s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgWOcTm_0(a1 + v20, v16, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR);
    if (v21(v16, 1, v8) == 1)
    {
      v23 = v39;
      UnknownStorage.init()();
      v24 = *(v8 + 20);
      if (one-time initialization token for defaultInstance != -1)
      {
        swift_once();
      }

      *(v23 + v24) = static Apple_Workout_Core_MetricsPublisher._StorageClass.defaultInstance;
      v25 = v21(v16, 1, v8);

      if (v25 != 1)
      {
        outlined destroy of Apple_Workout_Core_MirroredClientMessage.OneOf_Message?(v16, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR);
      }
    }

    else
    {
      v23 = v39;
      outlined init with take of Apple_Workout_Core_MirroredClientPrecisionStart(v16, v39, type metadata accessor for Apple_Workout_Core_MetricsPublisher);
    }

    v26 = [objc_allocWithZone(type metadata accessor for MetricsPublisher(0)) init];
    Apple_Workout_Core_MetricsPublisher.decodeInto(publisher:)(v26);
    v27 = *(v45 + OBJC_IVAR____TtC11WorkoutCore33DataLinkHealthKitClientConnection_metricsUpdater);
    if (v27)
    {
      v28 = *(v45 + OBJC_IVAR____TtC11WorkoutCore33DataLinkHealthKitClientConnection_metricsUpdater + 8);

      v27(v26);

      _s11WorkoutCore16MetricsPublisherCIegg_SgWOe_0(v27, v28);
    }

    else
    {
    }

    _s11WorkoutCore06Apple_a1_B16_DataLinkMessageVWOhTm_1(v23, type metadata accessor for Apple_Workout_Core_MetricsPublisher);
  }

  v29 = a1 + *(v41 + 20);
  v30 = v44;
  _s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgWOcTm_0(v29, v44, &_s11WorkoutCore06Apple_a1_b1_A12NotificationVSgMd, &_s11WorkoutCore06Apple_a1_b1_A12NotificationVSgMR);
  v31 = v43;
  v32 = *(v42 + 48);
  if (v32(v30, 1, v43) == 1)
  {
    v33 = v40;
    *v40 = 0;
    *(v33 + 8) = 1;
    v33[2] = MEMORY[0x277D84F90];
    v33[3] = 0;
    UnknownStorage.init()();
    v34 = v33 + *(v31 + 32);
    *v34 = 0;
    v34[8] = 1;
    if (v32(v30, 1, v31) != 1)
    {
      outlined destroy of Apple_Workout_Core_MirroredClientMessage.OneOf_Message?(v30, &_s11WorkoutCore06Apple_a1_b1_A12NotificationVSgMd, &_s11WorkoutCore06Apple_a1_b1_A12NotificationVSgMR);
    }
  }

  else
  {
    v33 = v40;
    outlined init with take of Apple_Workout_Core_MirroredClientPrecisionStart(v30, v40, type metadata accessor for Apple_Workout_Core_WorkoutNotification);
  }

  v35 = Apple_Workout_Core_WorkoutNotification.decoded.getter();
  _s11WorkoutCore06Apple_a1_B16_DataLinkMessageVWOhTm_1(v33, type metadata accessor for Apple_Workout_Core_WorkoutNotification);
  v36 = *(v45 + OBJC_IVAR____TtC11WorkoutCore33DataLinkHealthKitClientConnection_notificationHandler);
  if (v36)
  {
    v37 = *(v45 + OBJC_IVAR____TtC11WorkoutCore33DataLinkHealthKitClientConnection_notificationHandler + 8);

    v36(v35);
    _s11WorkoutCore16MetricsPublisherCIegg_SgWOe_0(v36, v37);
  }
}

void DataLinkHealthKitClientConnection.handleDeltaMetricsUpdate(_:workoutSession:)(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v28 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for DispatchQoS();
  v8 = *(v27 - 8);
  MEMORY[0x28223BE20](v27, v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Apple_Workout_Core_MetricsDelta(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12 - 8, v15);
  if ([a2 state] == 3)
  {
    if (one-time initialization token for dataLink != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static WOLog.dataLink);
    v28 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v28, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_20AEA4000, v28, v17, "handleDeltaMetricsUpdate: not Handling delta metrics update, workout session state is ended", v18, 2u);
      MEMORY[0x20F2E9420](v18, -1, -1);
    }

    v19 = v28;
  }

  else
  {
    type metadata accessor for OS_dispatch_queue();
    v26 = static OS_dispatch_queue.main.getter();
    v20 = swift_allocObject();
    swift_unknownObjectWeakInit();
    outlined init with copy of Apple_Workout_Core_MirroredClientMessage(a1, &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for Apple_Workout_Core_MetricsDelta);
    v21 = (*(v13 + 80) + 24) & ~*(v13 + 80);
    v22 = swift_allocObject();
    *(v22 + 16) = v20;
    outlined init with take of Apple_Workout_Core_MirroredClientPrecisionStart(&v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21, type metadata accessor for Apple_Workout_Core_MetricsDelta);
    aBlock[4] = partial apply for closure #1 in DataLinkHealthKitClientConnection.handleDeltaMetricsUpdate(_:workoutSession:);
    aBlock[5] = v22;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_48_1;
    v23 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = MEMORY[0x277D84F90];
    _s11WorkoutCore06Apple_a1_B29_MirroredClientPrecisionStartVAC21InternalSwiftProtobuf7MessageAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v24 = v26;
    MEMORY[0x20F2E7580](0, v11, v7, v23);
    _Block_release(v23);

    (v28[1].isa)(v7, v4);
    (*(v8 + 8))(v11, v27);
  }
}

double DataLinkHealthKitClientConnection.handleMirroredHostMessage(_:)(uint64_t a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v41 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v4);
  v39 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for DispatchQoS();
  v38 = *(v40 - 8);
  MEMORY[0x28223BE20](v40, v6);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Apple_Workout_Core_MirroredHostMessage(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v13 = MEMORY[0x28223BE20](v9 - 8, v12);
  v14 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v37 - v16;
  v18 = v1 + OBJC_IVAR____TtC11WorkoutCore33DataLinkHealthKitClientConnection_mirroredClientDelegate;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    v37 = v3;
    v21 = *(v18 + 8);
    v22 = swift_allocObject();
    swift_unknownObjectWeakInit();
    outlined init with copy of Apple_Workout_Core_MirroredClientMessage(a1, v17, type metadata accessor for Apple_Workout_Core_MirroredHostMessage);
    outlined init with copy of Apple_Workout_Core_MirroredClientMessage(v17, v14, type metadata accessor for Apple_Workout_Core_MirroredHostMessage);
    v23 = (*(v10 + 80) + 24) & ~*(v10 + 80);
    v24 = swift_allocObject();
    *(v24 + 16) = v22;
    outlined init with take of Apple_Workout_Core_MirroredClientPrecisionStart(v17, v24 + v23, type metadata accessor for Apple_Workout_Core_MirroredHostMessage);
    v25 = (v24 + ((v11 + v23 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v25 = v20;
    v25[1] = v21;
    v26 = objc_opt_self();
    swift_unknownObjectRetain();

    if ([v26 isMainThread])
    {
      closure #1 in DataLinkHealthKitClientConnection.handleMirroredHostMessage(_:)(v22, v14, v20, v21);
      swift_unknownObjectRelease();

      _s11WorkoutCore06Apple_a1_B16_DataLinkMessageVWOhTm_1(v14, type metadata accessor for Apple_Workout_Core_MirroredHostMessage);
    }

    else
    {
      _s11WorkoutCore06Apple_a1_B16_DataLinkMessageVWOhTm_1(v14, type metadata accessor for Apple_Workout_Core_MirroredHostMessage);
      type metadata accessor for OS_dispatch_queue();
      v32 = static OS_dispatch_queue.main.getter();
      v33 = swift_allocObject();
      *(v33 + 16) = partial apply for closure #1 in DataLinkHealthKitClientConnection.handleMirroredHostMessage(_:);
      *(v33 + 24) = v24;
      aBlock[4] = _s11WorkoutCore17DispatchUtilitiesC22ensureMainQueueOrAsync5blockyyyc_tFZyyScMYccfU_TA_10;
      aBlock[5] = v33;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
      aBlock[3] = &block_descriptor_58_1;
      v34 = _Block_copy(aBlock);

      static DispatchQoS.unspecified.getter();
      aBlock[0] = MEMORY[0x277D84F90];
      _s11WorkoutCore06Apple_a1_B29_MirroredClientPrecisionStartVAC21InternalSwiftProtobuf7MessageAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
      v35 = v39;
      v36 = v37;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      MEMORY[0x20F2E7580](0, v8, v35, v34);
      _Block_release(v34);
      swift_unknownObjectRelease();

      (*(v41 + 8))(v35, v36);
      (*(v38 + 8))(v8, v40);
    }
  }

  else
  {
    if (one-time initialization token for dataLink != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    __swift_project_value_buffer(v27, static WOLog.dataLink);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_20AEA4000, v28, v29, "[mirrored] handleMirroredHostMessage mirroredClientDelegate is not set", v30, 2u);
      MEMORY[0x20F2E9420](v30, -1, -1);
    }
  }

  return result;
}

Swift::Void __swiftcall DataLinkHealthKitClientConnection.workoutSession(_:didReceiveDataFromRemoteWorkoutSession:)(HKWorkoutSession _, Swift::OpaquePointer didReceiveDataFromRemoteWorkoutSession)
{
  v3 = v2;
  if (one-time initialization token for dataLink != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static WOLog.dataLink);
  swift_bridgeObjectRetain_n();
  v7 = _.super.isa;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v24 = v23;
    *v10 = 136315394;
    v11 = v7;
    v12 = [(objc_class *)v11 description];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v15, &v24);

    *(v10 + 4) = v16;
    *(v10 + 12) = 2048;
    v17 = *(didReceiveDataFromRemoteWorkoutSession._rawValue + 2);

    *(v10 + 14) = v17;

    _os_log_impl(&dword_20AEA4000, v8, v9, "workoutSession (%s) didReceiveDataFromRemoteWorkoutSession: (array with %ld data elements)", v10, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v23);
    MEMORY[0x20F2E9420](v23, -1, -1);
    MEMORY[0x20F2E9420](v10, -1, -1);

    v18 = *(didReceiveDataFromRemoteWorkoutSession._rawValue + 2);
    if (!v18)
    {
      return;
    }
  }

  else
  {

    swift_bridgeObjectRelease_n();
    v18 = *(didReceiveDataFromRemoteWorkoutSession._rawValue + 2);
    if (!v18)
    {
      return;
    }
  }

  v19 = (didReceiveDataFromRemoteWorkoutSession._rawValue + 40);
  do
  {
    v20 = *(v19 - 1);
    v21 = *v19;
    outlined copy of Data._Representation(v20, *v19);
    isa = Data._bridgeToObjectiveC()().super.isa;
    [v3 workoutSession:v7 didReceiveDataFromRemoteDevice:isa];

    outlined consume of Data._Representation(v20, v21);
    v19 += 2;
    --v18;
  }

  while (v18);
}

uint64_t DataLinkHealthKitClientConnection.workoutSession(_:didDisconnectFromRemoteDeviceWithError:)(void *a1, void *a2)
{
  v3 = v2;
  if (one-time initialization token for dataLink != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static WOLog.dataLink);
  v7 = a1;
  v8 = a2;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  v88 = v7;
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v86 = swift_slowAlloc();
    aBlock[0] = v86;
    *v11 = 136315650;
    v13 = v7;
    v14 = v3;
    v15 = a2;
    v16 = [v13 description];
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    a2 = v15;
    v3 = v14;
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v19, aBlock);

    *(v11 + 4) = v20;
    *(v11 + 12) = 2080;
    v92 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pSgMd, _ss5Error_pSgMR);
    v21 = Optional.description.getter();
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, aBlock);

    *(v11 + 14) = v23;
    *(v11 + 22) = 2112;
    v24 = [objc_opt_self() currentThread];
    *(v11 + 24) = v24;
    *v12 = v24;
    _os_log_impl(&dword_20AEA4000, v9, v10, "workoutSession (%s) didDisconnectFromRemoteDeviceWithError: %s, thread: %@", v11, 0x20u);
    outlined destroy of Apple_Workout_Core_MirroredClientMessage.OneOf_Message?(v12, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F2E9420](v12, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v86, -1, -1);
    MEMORY[0x20F2E9420](v11, -1, -1);
  }

  v25 = *&v3[OBJC_IVAR____TtC11WorkoutCore33DataLinkHealthKitClientConnection_presenceHandler];
  if (v25)
  {
    v26 = *&v3[OBJC_IVAR____TtC11WorkoutCore33DataLinkHealthKitClientConnection_presenceHandler + 8];
    v27 = objc_opt_self();
    v87 = v26;

    v28 = [v27 sharedApplication];
    v29 = MEMORY[0x20F2E6C00](0xD000000000000036, 0x800000020B469E70);
    v30 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v31 = swift_allocObject();
    v31[2] = v30;
    v31[3] = v88;
    v31[4] = a2;
    aBlock[4] = partial apply for closure #1 in DataLinkHealthKitClientConnection.workoutSession(_:didDisconnectFromRemoteDeviceWithError:);
    aBlock[5] = v31;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_76;
    v32 = _Block_copy(aBlock);
    v33 = a2;
    v34 = v88;
    v35 = v33;

    v36 = [v28 beginBackgroundTaskWithName:v29 expirationHandler:v32];
    _Block_release(v32);

    v37 = OBJC_IVAR____TtC11WorkoutCore33DataLinkHealthKitClientConnection_didDisconnectTaskIdentifier;
    *&v3[OBJC_IVAR____TtC11WorkoutCore33DataLinkHealthKitClientConnection_didDisconnectTaskIdentifier] = v36;
    v38 = v3;
    v39 = v34;
    v40 = v33;
    v41 = v38;
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v42, v43))
    {
      v83 = v3;
      v44 = swift_slowAlloc();
      v89 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      aBlock[0] = v90;
      *v44 = 136315906;
      log = v42;
      v45 = v39;
      v84 = v43;
      v46 = [v45 description];
      v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v48 = v25;
      v50 = v49;

      v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v50, aBlock);
      v25 = v48;

      *(v44 + 4) = v51;
      *(v44 + 12) = 2048;
      v52 = *&v83[v37];

      *(v44 + 14) = v52;
      *(v44 + 22) = 2080;
      v92 = v33;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pSgMd, _ss5Error_pSgMR);
      v53 = Optional.description.getter();
      v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v54, aBlock);

      *(v44 + 24) = v55;
      *(v44 + 32) = 2112;
      v56 = [objc_opt_self() currentThread];
      *(v44 + 34) = v56;
      *v89 = v56;
      _os_log_impl(&dword_20AEA4000, log, v84, "workoutSession (%s) started background task (%ld) didDisconnectFromRemoteDeviceWithError: %s, thread: %@", v44, 0x2Au);
      outlined destroy of Apple_Workout_Core_MirroredClientMessage.OneOf_Message?(v89, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x20F2E9420](v89, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x20F2E9420](v90, -1, -1);
      MEMORY[0x20F2E9420](v44, -1, -1);
    }

    else
    {
    }

    v78 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v79 = swift_allocObject();
    v79[2] = v78;
    v79[3] = v39;
    v79[4] = v33;
    v80 = v39;
    v81 = v33;

    v25(0, partial apply for closure #2 in DataLinkHealthKitClientConnection.workoutSession(_:didDisconnectFromRemoteDeviceWithError:), v79);

    v76 = v25;
    v77 = v87;
  }

  else
  {
    v57 = v88;
    v58 = a2;
    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v59, v60))
    {
      v61 = v3;
      v62 = a2;
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      aBlock[0] = v64;
      *v63 = 136315394;
      v65 = v57;
      v66 = [v65 description];
      v67 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v69 = v68;

      v70 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v67, v69, aBlock);

      *(v63 + 4) = v70;
      *(v63 + 12) = 2080;
      v92 = v62;
      v3 = v61;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pSgMd, _ss5Error_pSgMR);
      v71 = Optional.description.getter();
      v73 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v71, v72, aBlock);

      *(v63 + 14) = v73;
      _os_log_impl(&dword_20AEA4000, v59, v60, "workoutSession (%s) didDisconnectFromRemoteDeviceWithError: %s, presenceHandler is not set", v63, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F2E9420](v64, -1, -1);
      MEMORY[0x20F2E9420](v63, -1, -1);
    }

    v74 = *&v3[OBJC_IVAR____TtC11WorkoutCore33DataLinkHealthKitClientConnection_session];
    *&v3[OBJC_IVAR____TtC11WorkoutCore33DataLinkHealthKitClientConnection_session] = 0;

    v75 = &v3[OBJC_IVAR____TtC11WorkoutCore33DataLinkHealthKitClientConnection_workoutSessionMirroringStartHandler];
    v76 = *&v3[OBJC_IVAR____TtC11WorkoutCore33DataLinkHealthKitClientConnection_workoutSessionMirroringStartHandler];
    v77 = *&v3[OBJC_IVAR____TtC11WorkoutCore33DataLinkHealthKitClientConnection_workoutSessionMirroringStartHandler + 8];
    *v75 = 0;
    *(v75 + 1) = 0;
  }

  return _s11WorkoutCore16MetricsPublisherCIegg_SgWOe_0(v76, v77);
}

void closure #1 in DataLinkHealthKitClientConnection.workoutSession(_:didDisconnectFromRemoteDeviceWithError:)(uint64_t a1, void *a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (one-time initialization token for dataLink != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static WOLog.dataLink);
    v8 = v6;
    v9 = a2;
    v10 = a3;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v29 = v28;
      *v13 = 136315906;
      v15 = v9;
      v16 = [v15 description];
      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;

      v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v19, &v29);

      *(v13 + 4) = v20;
      *(v13 + 12) = 2048;
      v21 = *&v8[OBJC_IVAR____TtC11WorkoutCore33DataLinkHealthKitClientConnection_didDisconnectTaskIdentifier];

      *(v13 + 14) = v21;
      *(v13 + 22) = 2080;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pSgMd, _ss5Error_pSgMR);
      v22 = Optional.description.getter();
      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, &v29);

      *(v13 + 24) = v24;
      *(v13 + 32) = 2112;
      v25 = [objc_opt_self() currentThread];
      *(v13 + 34) = v25;
      *v14 = v25;
      _os_log_impl(&dword_20AEA4000, v11, v12, "workoutSession (%s) expired background task (%ld) didDisconnectFromRemoteDeviceWithError: %s, thread: %@", v13, 0x2Au);
      outlined destroy of Apple_Workout_Core_MirroredClientMessage.OneOf_Message?(v14, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x20F2E9420](v14, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x20F2E9420](v28, -1, -1);
      MEMORY[0x20F2E9420](v13, -1, -1);
    }

    else
    {
    }

    v26 = [objc_opt_self() sharedApplication];
    v27 = OBJC_IVAR____TtC11WorkoutCore33DataLinkHealthKitClientConnection_didDisconnectTaskIdentifier;
    [v26 endBackgroundTask_];

    *&v8[v27] = *MEMORY[0x277D767B0];
  }
}

void closure #2 in DataLinkHealthKitClientConnection.workoutSession(_:didDisconnectFromRemoteDeviceWithError:)(uint64_t a1, void *a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = *(Strong + OBJC_IVAR____TtC11WorkoutCore33DataLinkHealthKitClientConnection_session);
    *(Strong + OBJC_IVAR____TtC11WorkoutCore33DataLinkHealthKitClientConnection_session) = 0;

    v8 = &v6[OBJC_IVAR____TtC11WorkoutCore33DataLinkHealthKitClientConnection_workoutSessionMirroringStartHandler];
    v9 = *&v6[OBJC_IVAR____TtC11WorkoutCore33DataLinkHealthKitClientConnection_workoutSessionMirroringStartHandler];
    v10 = *&v6[OBJC_IVAR____TtC11WorkoutCore33DataLinkHealthKitClientConnection_workoutSessionMirroringStartHandler + 8];
    *v8 = 0;
    *(v8 + 1) = 0;
    _s11WorkoutCore16MetricsPublisherCIegg_SgWOe_0(v9, v10);
    if (one-time initialization token for dataLink != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static WOLog.dataLink);
    v12 = v6;
    v13 = a2;
    v14 = a3;
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v33 = v32;
      *v17 = 136315906;
      v19 = v13;
      v20 = [v19 description];
      v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v23 = v22;

      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v23, &v33);

      *(v17 + 4) = v24;
      *(v17 + 12) = 2048;
      v25 = *&v12[OBJC_IVAR____TtC11WorkoutCore33DataLinkHealthKitClientConnection_didDisconnectTaskIdentifier];

      *(v17 + 14) = v25;
      *(v17 + 22) = 2080;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pSgMd, _ss5Error_pSgMR);
      v26 = Optional.description.getter();
      v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, &v33);

      *(v17 + 24) = v28;
      *(v17 + 32) = 2112;
      v29 = [objc_opt_self() currentThread];
      *(v17 + 34) = v29;
      *v18 = v29;
      _os_log_impl(&dword_20AEA4000, v15, v16, "workoutSession (%s) end background task (%ld) didDisconnectFromRemoteDeviceWithError: %s, thread: %@", v17, 0x2Au);
      outlined destroy of Apple_Workout_Core_MirroredClientMessage.OneOf_Message?(v18, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x20F2E9420](v18, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x20F2E9420](v32, -1, -1);
      MEMORY[0x20F2E9420](v17, -1, -1);
    }

    else
    {
    }

    v30 = [objc_opt_self() sharedApplication];
    v31 = OBJC_IVAR____TtC11WorkoutCore33DataLinkHealthKitClientConnection_didDisconnectTaskIdentifier;
    [v30 endBackgroundTask_];

    *&v12[v31] = *MEMORY[0x277D767B0];
  }
}

void closure #1 in DataLinkHealthKitClientConnection.handleMirroredHostMessage(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a3;
  v51 = a4;
  v52 = a2;
  v4 = type metadata accessor for Apple_Workout_Core_MirroredHostSummaryUpdate(0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v49 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Apple_Workout_Core_MirroredHostAlertStackRequest(0);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Apple_Workout_Core_MirroredHostCountdownStart(0);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Apple_Workout_Core_MirroredHostMachTimestampRequest(0);
  MEMORY[0x28223BE20](v15 - 8, v16);
  v18 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  started = type metadata accessor for Apple_Workout_Core_MirroredHostStartConfiguration(0);
  MEMORY[0x28223BE20](started - 8, v20);
  v22 = &v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
  MEMORY[0x28223BE20](v23 - 8, v24);
  v26 = &v48 - v25;
  v27 = type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message(0);
  v28 = *(v27 - 8);
  v30 = MEMORY[0x28223BE20](v27, v29);
  v32 = &v48 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30, v33);
  v35 = &v48 - v34;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v37 = Strong;
    _s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgWOcTm_0(v52, v26, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
    if ((*(v28 + 48))(v26, 1, v27) == 1)
    {

      outlined destroy of Apple_Workout_Core_MirroredClientMessage.OneOf_Message?(v26, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
      return;
    }

    outlined init with take of Apple_Workout_Core_MirroredClientPrecisionStart(v26, v35, type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message);
    outlined init with copy of Apple_Workout_Core_MirroredClientMessage(v35, v32, type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 2)
    {
      if (EnumCaseMultiPayload == 3)
      {
        outlined init with take of Apple_Workout_Core_MirroredClientPrecisionStart(v32, v14, type metadata accessor for Apple_Workout_Core_MirroredHostCountdownStart);
        specialized DataLinkHealthKitClientConnection.handleMirroredHostCountdownStart(_:with:)(v14, v50, v51);

        v43 = type metadata accessor for Apple_Workout_Core_MirroredHostCountdownStart;
        v44 = v14;
      }

      else if (EnumCaseMultiPayload == 4)
      {
        outlined init with take of Apple_Workout_Core_MirroredClientPrecisionStart(v32, v10, type metadata accessor for Apple_Workout_Core_MirroredHostAlertStackRequest);
        specialized DataLinkHealthKitClientConnection.handleMirroredHostAlertStackRequest(_:with:)(v10, v50, v51);

        v43 = type metadata accessor for Apple_Workout_Core_MirroredHostAlertStackRequest;
        v44 = v10;
      }

      else
      {
        v46 = v32;
        v47 = v49;
        outlined init with take of Apple_Workout_Core_MirroredClientPrecisionStart(v46, v49, type metadata accessor for Apple_Workout_Core_MirroredHostSummaryUpdate);
        specialized DataLinkHealthKitClientConnection.handleMirroredHostSummaryUpdate(_:with:)(v47, v50, v51);

        v43 = type metadata accessor for Apple_Workout_Core_MirroredHostSummaryUpdate;
        v44 = v47;
      }
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {
        v45 = v32[8];
        v53 = *v32;
        v54 = v45;
        specialized DataLinkHealthKitClientConnection.handleMirroredHostCommand(_:with:)(&v53, v50, v51);

LABEL_21:
        _s11WorkoutCore06Apple_a1_B16_DataLinkMessageVWOhTm_1(v35, type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message);
        return;
      }

      if (EnumCaseMultiPayload == 1)
      {
        outlined init with take of Apple_Workout_Core_MirroredClientPrecisionStart(v32, v22, type metadata accessor for Apple_Workout_Core_MirroredHostStartConfiguration);
        specialized DataLinkHealthKitClientConnection.handleMirroredHostStartConfiguration(_:with:)(v22, v50, v51);

        v43 = type metadata accessor for Apple_Workout_Core_MirroredHostStartConfiguration;
        v44 = v22;
      }

      else
      {
        outlined init with take of Apple_Workout_Core_MirroredClientPrecisionStart(v32, v18, type metadata accessor for Apple_Workout_Core_MirroredHostMachTimestampRequest);
        specialized DataLinkHealthKitClientConnection.handleMirroredHostMachTimestampRequest(_:with:)(v18, v50, v51);

        v43 = type metadata accessor for Apple_Workout_Core_MirroredHostMachTimestampRequest;
        v44 = v18;
      }
    }

    _s11WorkoutCore06Apple_a1_B16_DataLinkMessageVWOhTm_1(v44, v43);
    goto LABEL_21;
  }

  if (one-time initialization token for dataLink != -1)
  {
    swift_once();
  }

  v38 = type metadata accessor for Logger();
  __swift_project_value_buffer(v38, static WOLog.dataLink);
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 0;
    _os_log_impl(&dword_20AEA4000, v39, v40, "[mirrored] handleMirroredHostMessage weak self is nil", v41, 2u);
    MEMORY[0x20F2E9420](v41, -1, -1);
  }
}

void closure #1 in DataLinkHealthKitClientConnection.handleMirroredHostCommand(_:with:)(char a1, void *a2, const char *a3, ...)
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
    outlined destroy of Apple_Workout_Core_MirroredClientMessage.OneOf_Message?(v10, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F2E9420](v10, -1, -1);
    MEMORY[0x20F2E9420](v9, -1, -1);
  }
}

void closure #1 in DataLinkHealthKitClientConnection.handleDeltaMetricsUpdate(_:workoutSession:)(uint64_t a1, uint64_t *a2)
{
  v488 = type metadata accessor for Apple_Workout_Core_MetricsDelta(0);
  MEMORY[0x28223BE20](v488, v3);
  v5 = (&v421 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSgMR);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v421 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B33_WaterTemperatureMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B33_WaterTemperatureMetricsPublisherVSgMR);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = &v421 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSgMR);
  MEMORY[0x28223BE20](v14 - 8, v15);
  v461 = &v421 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSgMR);
  MEMORY[0x28223BE20](v17 - 8, v18);
  v427 = &v421 - v19;
  v430 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x28223BE20](v430, v20);
  v431 = (&v421 - v21);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B27_RacePositionStatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_B27_RacePositionStatePublisherVSgMR);
  MEMORY[0x28223BE20](v22 - 8, v23);
  v460 = &v421 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B25_RaceInformationPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B25_RaceInformationPublisherVSgMR);
  MEMORY[0x28223BE20](v25 - 8, v26);
  v459 = &v421 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B22_PowerMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B22_PowerMetricsPublisherVSgMR);
  MEMORY[0x28223BE20](v28 - 8, v29);
  v458 = &v421 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMR);
  MEMORY[0x28223BE20](v31 - 8, v32);
  v457 = &v421 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSgMR);
  MEMORY[0x28223BE20](v34 - 8, v35);
  v456 = &v421 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSgMR);
  MEMORY[0x28223BE20](v37 - 8, v38);
  v455 = &v421 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMR);
  MEMORY[0x28223BE20](v40 - 8, v41);
  v454 = &v421 - v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B26_IntervalsMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_IntervalsMetricsPublisherVSgMR);
  MEMORY[0x28223BE20](v43 - 8, v44);
  v453 = &v421 - v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B26_HeartRateMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_HeartRateMetricsPublisherVSgMR);
  MEMORY[0x28223BE20](v46 - 8, v47);
  v452 = &v421 - v48;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSgMR);
  MEMORY[0x28223BE20](v49 - 8, v50);
  v451 = &v421 - v51;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMR);
  MEMORY[0x28223BE20](v52 - 8, v53);
  v450 = &v421 - v54;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMR);
  MEMORY[0x28223BE20](v55 - 8, v56);
  v449 = &v421 - v57;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSgMR);
  MEMORY[0x28223BE20](v58 - 8, v59);
  v448 = &v421 - v60;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR);
  v63 = MEMORY[0x28223BE20](v61 - 8, v62);
  v480 = &v421 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = MEMORY[0x28223BE20](v63, v65);
  v478 = &v421 - v67;
  v69 = MEMORY[0x28223BE20](v66, v68);
  v477 = &v421 - v70;
  v72 = MEMORY[0x28223BE20](v69, v71);
  v476 = &v421 - v73;
  v75 = MEMORY[0x28223BE20](v72, v74);
  v428 = &v421 - v76;
  v78 = MEMORY[0x28223BE20](v75, v77);
  v475 = &v421 - v79;
  v81 = MEMORY[0x28223BE20](v78, v80);
  v474 = &v421 - v82;
  v84 = MEMORY[0x28223BE20](v81, v83);
  v473 = &v421 - v85;
  v87 = MEMORY[0x28223BE20](v84, v86);
  v472 = &v421 - v88;
  v90 = MEMORY[0x28223BE20](v87, v89);
  v471 = &v421 - v91;
  v93 = MEMORY[0x28223BE20](v90, v92);
  v470 = &v421 - v94;
  v96 = MEMORY[0x28223BE20](v93, v95);
  v469 = &v421 - v97;
  v99 = MEMORY[0x28223BE20](v96, v98);
  v468 = &v421 - v100;
  v102 = MEMORY[0x28223BE20](v99, v101);
  v467 = &v421 - v103;
  v105 = MEMORY[0x28223BE20](v102, v104);
  v466 = &v421 - v106;
  v108 = MEMORY[0x28223BE20](v105, v107);
  v465 = &v421 - v109;
  v111 = MEMORY[0x28223BE20](v108, v110);
  v464 = &v421 - v112;
  MEMORY[0x28223BE20](v111, v113);
  v463 = &v421 - v114;
  v115 = type metadata accessor for Apple_Workout_Core_MetricsPublisher(0);
  v481 = *(v115 - 8);
  v117 = MEMORY[0x28223BE20](v115, v116);
  v479 = &v421 - ((v118 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = MEMORY[0x28223BE20](v117, v119);
  v447 = (&v421 - v121);
  v123 = MEMORY[0x28223BE20](v120, v122);
  v446 = (&v421 - v124);
  v126 = MEMORY[0x28223BE20](v123, v125);
  v445 = (&v421 - v127);
  v129 = MEMORY[0x28223BE20](v126, v128);
  v426 = (&v421 - v130);
  v132 = MEMORY[0x28223BE20](v129, v131);
  v444 = (&v421 - v133);
  v135 = MEMORY[0x28223BE20](v132, v134);
  v443 = (&v421 - v136);
  v138 = MEMORY[0x28223BE20](v135, v137);
  v442 = (&v421 - v139);
  v141 = MEMORY[0x28223BE20](v138, v140);
  v441 = (&v421 - v142);
  v144 = MEMORY[0x28223BE20](v141, v143);
  v440 = (&v421 - v145);
  v147 = MEMORY[0x28223BE20](v144, v146);
  v439 = (&v421 - v148);
  v150 = MEMORY[0x28223BE20](v147, v149);
  v438 = (&v421 - v151);
  v153 = MEMORY[0x28223BE20](v150, v152);
  v437 = (&v421 - v154);
  v156 = MEMORY[0x28223BE20](v153, v155);
  v436 = (&v421 - v157);
  v159 = MEMORY[0x28223BE20](v156, v158);
  v435 = (&v421 - v160);
  v162 = MEMORY[0x28223BE20](v159, v161);
  v434 = (&v421 - v163);
  v165 = MEMORY[0x28223BE20](v162, v164);
  v433 = (&v421 - v166);
  MEMORY[0x28223BE20](v165, v167);
  v432 = (&v421 - v168);
  v429 = type metadata accessor for Apple_Workout_Core_PublisherSequence(0);
  v493 = *(v429 - 8);
  v170 = MEMORY[0x28223BE20](v429, v169);
  v490 = &v421 - ((v171 + 15) & 0xFFFFFFFFFFFFFFF0);
  v173 = MEMORY[0x28223BE20](v170, v172);
  v462 = &v421 - v174;
  v176 = MEMORY[0x28223BE20](v173, v175);
  v484 = &v421 - v177;
  v179 = MEMORY[0x28223BE20](v176, v178);
  v483 = &v421 - v180;
  MEMORY[0x28223BE20](v179, v181);
  v183 = &v421 - v182;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v185 = Strong;
  v424 = v9;
  if (one-time initialization token for dataLink != -1)
  {
    goto LABEL_200;
  }

LABEL_3:
  v186 = type metadata accessor for Logger();
  v482 = __swift_project_value_buffer(v186, static WOLog.dataLink);
  v187 = Logger.logObject.getter();
  v188 = static os_log_type_t.default.getter();
  v189 = os_log_type_enabled(v187, v188);
  v486 = v183;
  if (v189)
  {
    v190 = v13;
    v191 = swift_slowAlloc();
    *v191 = 0;
    _os_log_impl(&dword_20AEA4000, v187, v188, "Handling delta metrics update", v191, 2u);
    v192 = v191;
    v13 = v190;
    v183 = v486;
    MEMORY[0x20F2E9420](v192, -1, -1);
  }

  swift_beginAccess();
  v425 = swift_unknownObjectWeakLoadStrong();
  if (!v425)
  {
    a2 = v185;
    goto LABEL_194;
  }

  v485 = a2;
  v496 = *a2;
  v492 = *(v496 + 16);
  if (!v492)
  {
    goto LABEL_177;
  }

  v421 = v13;
  v422 = v5;
  v498 = v496 + ((*(v493 + 80) + 32) & ~*(v493 + 80));
  v494 = OBJC_IVAR____TtC11WorkoutCore33DataLinkHealthKitClientConnection_knownSequences;
  swift_beginAccess();
  v193 = 0;
  v487 = (v481 + 48);
  *&v194 = 67109634;
  v423 = v194;
  v5 = v485;
  v491 = v185;
  v489 = v115;
  while (1)
  {
    if (v193 >= *(v496 + 16))
    {
      __break(1u);
LABEL_197:
      __break(1u);
LABEL_198:
      __break(1u);
LABEL_199:
      __break(1u);
LABEL_200:
      swift_once();
      goto LABEL_3;
    }

    v495 = *(v493 + 72);
    v497 = v193;
    outlined init with copy of Apple_Workout_Core_MirroredClientMessage(v498 + v495 * v193, v183, type metadata accessor for Apple_Workout_Core_PublisherSequence);
    v202 = *(v185 + v494);
    if (!*(v202 + 16))
    {
      goto LABEL_20;
    }

    v203 = *(v183 + 8);
    v13 = *v183;

    v204 = specialized __RawDictionaryStorage.find<A>(_:)(v13, v203);
    if (v205)
    {
      break;
    }

LABEL_20:
    v206 = 0;
    a2 = *(v183 + 12);
LABEL_21:
    if (a2 != v206)
    {
      goto LABEL_22;
    }

LABEL_12:
    v193 = v497 + 1;
    _s11WorkoutCore06Apple_a1_B16_DataLinkMessageVWOhTm_1(v183, type metadata accessor for Apple_Workout_Core_PublisherSequence);
    if (v492 == v193)
    {
      v13 = *(v496 + 16);
      if (v13)
      {
        a2 = 0;
        v5 = OBJC_IVAR____TtC11WorkoutCore33DataLinkHealthKitClientConnection_knownSequences;
        while (1)
        {
          if (a2 >= *(v496 + 16))
          {
            goto LABEL_197;
          }

          v372 = v490;
          outlined init with copy of Apple_Workout_Core_MirroredClientMessage(v498, v490, type metadata accessor for Apple_Workout_Core_PublisherSequence);
          v373 = *v372;
          v183 = *(v372 + 8);
          v115 = *(v372 + 12);
          _s11WorkoutCore06Apple_a1_B16_DataLinkMessageVWOhTm_1(v372, type metadata accessor for Apple_Workout_Core_PublisherSequence);
          swift_beginAccess();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v501 = *(v5 + v185);
          v375 = v501;
          *(v5 + v185) = 0x8000000000000000;
          v376 = specialized __RawDictionaryStorage.find<A>(_:)(v373, v183);
          v378 = *(v375 + 16);
          v379 = (v377 & 1) == 0;
          v370 = __OFADD__(v378, v379);
          v380 = v378 + v379;
          if (v370)
          {
            goto LABEL_198;
          }

          v185 = v377;
          if (*(v375 + 24) < v380)
          {
            break;
          }

          if (isUniquelyReferenced_nonNull_native)
          {
            goto LABEL_172;
          }

          v386 = v376;
          specialized _NativeDictionary.copy()();
          v376 = v386;
          v382 = v501;
          if (v185)
          {
LABEL_164:
            *(v382[7] + 4 * v376) = v115;
            goto LABEL_165;
          }

LABEL_173:
          v382[(v376 >> 6) + 8] |= 1 << v376;
          v383 = v382[6] + 16 * v376;
          *v383 = v373;
          *(v383 + 8) = v183;
          *(v382[7] + 4 * v376) = v115;
          v384 = v382[2];
          v370 = __OFADD__(v384, 1);
          v385 = v384 + 1;
          if (v370)
          {
            goto LABEL_199;
          }

          v382[2] = v385;
LABEL_165:
          a2 = (a2 + 1);
          v185 = v491;
          *(v5 + v491) = v382;
          swift_endAccess();
          v498 += v495;
          v115 = v489;
          if (v13 == a2)
          {
            goto LABEL_177;
          }
        }

        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v380, isUniquelyReferenced_nonNull_native);
        v376 = specialized __RawDictionaryStorage.find<A>(_:)(v373, v183);
        if ((v185 & 1) != (v381 & 1))
        {
          goto LABEL_205;
        }

LABEL_172:
        v382 = v501;
        if (v185)
        {
          goto LABEL_164;
        }

        goto LABEL_173;
      }

LABEL_177:
      v223 = v480;
      _s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgWOcTm_0(v485 + *(v488 + 24), v480, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR);
      v209 = *(v481 + 48);
      if ((v209)(v223, 1, v115) != 1)
      {
        v388 = v479;
        outlined init with take of Apple_Workout_Core_MirroredClientPrecisionStart(v223, v479, type metadata accessor for Apple_Workout_Core_MetricsPublisher);
        a2 = v425;
LABEL_182:
        Apple_Workout_Core_MetricsPublisher.decodeInto(publisher:)(a2);
        _s11WorkoutCore06Apple_a1_B16_DataLinkMessageVWOhTm_1(v388, type metadata accessor for Apple_Workout_Core_MetricsPublisher);
        v389 = *(v185 + OBJC_IVAR____TtC11WorkoutCore33DataLinkHealthKitClientConnection_metricsUpdater);
        if (v389)
        {
          v390 = *(v185 + OBJC_IVAR____TtC11WorkoutCore33DataLinkHealthKitClientConnection_metricsUpdater + 8);

          v389(a2);
          _s11WorkoutCore16MetricsPublisherCIegg_SgWOe_0(v389, v390);
        }

        goto LABEL_193;
      }

      v208 = v479;
      UnknownStorage.init()();
      v13 = *(v115 + 20);
      a2 = v425;
      if (one-time initialization token for defaultInstance == -1)
      {
LABEL_179:
        *(v208 + v13) = static Apple_Workout_Core_MetricsPublisher._StorageClass.defaultInstance;
        v387 = (v209)(v223, 1, v115);

        v388 = v208;
        if (v387 != 1)
        {
          outlined destroy of Apple_Workout_Core_MirroredClientMessage.OneOf_Message?(v223, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR);
        }

        goto LABEL_182;
      }

LABEL_204:
      swift_once();
      goto LABEL_179;
    }
  }

  v206 = *(*(v202 + 56) + 4 * v204);

  a2 = *(v183 + 12);
  if (a2 >= v206)
  {
    goto LABEL_21;
  }

  v13 = v483;
  outlined init with copy of Apple_Workout_Core_MirroredClientMessage(v183, v483, type metadata accessor for Apple_Workout_Core_PublisherSequence);
  v115 = v484;
  outlined init with copy of Apple_Workout_Core_MirroredClientMessage(v183, v484, type metadata accessor for Apple_Workout_Core_PublisherSequence);
  v207 = Logger.logObject.getter();
  v208 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v207, v208))
  {
    v209 = swift_slowAlloc();
    v210 = swift_slowAlloc();
    v501 = v210;
    *v209 = v423;
    v211 = *(v13 + 12);
    _s11WorkoutCore06Apple_a1_B16_DataLinkMessageVWOhTm_1(v13, type metadata accessor for Apple_Workout_Core_PublisherSequence);
    *(v209 + 4) = v211;
    *(v209 + 8) = 1024;
    *(v209 + 10) = v206;
    *(v209 + 14) = 2080;
    v212 = *(v115 + 8);
    v499 = *v115;
    v500 = v212;
    v213 = String.init<A>(describing:)();
    v214 = v115;
    v115 = v213;
    v216 = v215;
    _s11WorkoutCore06Apple_a1_B16_DataLinkMessageVWOhTm_1(v214, type metadata accessor for Apple_Workout_Core_PublisherSequence);
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v115, v216, &v501);

    *(v209 + 16) = v13;
    _os_log_impl(&dword_20AEA4000, v207, v208, "Received an earlier sequence %u than our known %u for publisher %s", v209, 0x18u);
    __swift_destroy_boxed_opaque_existential_0(v210);
    v217 = v210;
    v185 = v491;
    MEMORY[0x20F2E9420](v217, -1, -1);
    MEMORY[0x20F2E9420](v209, -1, -1);
  }

  else
  {
    v209 = type metadata accessor for Apple_Workout_Core_PublisherSequence;
    _s11WorkoutCore06Apple_a1_B16_DataLinkMessageVWOhTm_1(v13, type metadata accessor for Apple_Workout_Core_PublisherSequence);

    _s11WorkoutCore06Apple_a1_B16_DataLinkMessageVWOhTm_1(v115, type metadata accessor for Apple_Workout_Core_PublisherSequence);
  }

  v223 = (a2 - 1);
  if (!a2)
  {
    __break(1u);
LABEL_202:
    __break(1u);
LABEL_203:
    __break(1u);
    goto LABEL_204;
  }

  v208 = *v486;
  v209 = *(v486 + 8);
  v115 = v494;
  swift_beginAccess();
  v13 = swift_isUniquelyReferenced_nonNull_native();
  v501 = *(v185 + v115);
  v224 = v501;
  *(v185 + v115) = 0x8000000000000000;
  v185 = specialized __RawDictionaryStorage.find<A>(_:)(v208, v209);
  v226 = *(v224 + 16);
  v227 = (v225 & 1) == 0;
  v228 = v226 + v227;
  if (__OFADD__(v226, v227))
  {
    goto LABEL_202;
  }

  v115 = v225;
  if (*(v224 + 24) >= v228)
  {
    if (v13)
    {
      v231 = v501;
      if ((v225 & 1) == 0)
      {
        goto LABEL_158;
      }
    }

    else
    {
      specialized _NativeDictionary.copy()();
      v231 = v501;
      if ((v115 & 1) == 0)
      {
        goto LABEL_158;
      }
    }

    goto LABEL_38;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v228, v13);
  v229 = specialized __RawDictionaryStorage.find<A>(_:)(v208, v209);
  if ((v115 & 1) != (v230 & 1))
  {
LABEL_205:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v185 = v229;
  v231 = v501;
  if (v115)
  {
LABEL_38:
    *(v231[7] + 4 * v185) = v223;
    goto LABEL_160;
  }

LABEL_158:
  v231[(v185 >> 6) + 8] |= 1 << v185;
  v368 = v231[6] + 16 * v185;
  *v368 = v208;
  *(v368 + 8) = v209;
  *(v231[7] + 4 * v185) = v223;
  v369 = v231[2];
  v370 = __OFADD__(v369, 1);
  v371 = v369 + 1;
  if (v370)
  {
    goto LABEL_203;
  }

  v231[2] = v371;
LABEL_160:
  v185 = v491;
  *(v491 + v494) = v231;
  swift_endAccess();
  v5 = v485;
  v115 = v489;
  v183 = v486;
  if (a2 == v206)
  {
    goto LABEL_12;
  }

LABEL_22:
  if (*(v183 + 8) == 1)
  {
    switch(*v183)
    {
      case 1:
        goto LABEL_12;
      case 2:
        v218 = v463;
        _s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgWOcTm_0(v5 + *(v488 + 24), v463, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR);
        v219 = *v487;
        if ((*v487)(v218, 1, v115) == 1)
        {
          a2 = v432;
          UnknownStorage.init()();
          v220 = *(v115 + 20);
          if (one-time initialization token for defaultInstance != -1)
          {
            swift_once();
          }

          *(a2 + v220) = static Apple_Workout_Core_MetricsPublisher._StorageClass.defaultInstance;
          v221 = v463;
          v222 = v219(v463, 1, v115);

          if (v222 != 1)
          {
            outlined destroy of Apple_Workout_Core_MirroredClientMessage.OneOf_Message?(v221, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR);
          }
        }

        else
        {
          a2 = v432;
          outlined init with take of Apple_Workout_Core_MirroredClientPrecisionStart(v218, v432, type metadata accessor for Apple_Workout_Core_MetricsPublisher);
        }

        v341 = *(a2 + *(v115 + 20));
        v342 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__activitySummaryMetricsPublisher;
        swift_beginAccess();
        v343 = v341 + v342;
        v198 = v448;
        v13 = &_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSgMd;
        v199 = &_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSgMR;
        _s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgWOcTm_0(v343, v448, &_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSgMR);
        v200 = type metadata accessor for Apple_Workout_Core_ActivitySummaryMetricsPublisher(0);
        break;
      case 3:
        v252 = v464;
        _s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgWOcTm_0(v5 + *(v488 + 24), v464, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR);
        v253 = *v487;
        if ((*v487)(v252, 1, v115) == 1)
        {
          a2 = v433;
          UnknownStorage.init()();
          v254 = *(v115 + 20);
          if (one-time initialization token for defaultInstance != -1)
          {
            swift_once();
          }

          *(a2 + v254) = static Apple_Workout_Core_MetricsPublisher._StorageClass.defaultInstance;
          v255 = v464;
          v256 = v253(v464, 1, v115);

          if (v256 != 1)
          {
            outlined destroy of Apple_Workout_Core_MirroredClientMessage.OneOf_Message?(v255, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR);
          }
        }

        else
        {
          a2 = v433;
          outlined init with take of Apple_Workout_Core_MirroredClientPrecisionStart(v252, v433, type metadata accessor for Apple_Workout_Core_MetricsPublisher);
        }

        v329 = *(a2 + *(v115 + 20));
        v330 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__elapsedTimeMetricsPublisher;
        swift_beginAccess();
        v331 = v329 + v330;
        v198 = v449;
        v13 = &_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMd;
        v199 = &_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMR;
        _s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgWOcTm_0(v331, v449, &_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMR);
        v200 = type metadata accessor for Apple_Workout_Core_ElapsedTimeMetricsPublisher(0);
        break;
      case 4:
        v257 = v465;
        _s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgWOcTm_0(v5 + *(v488 + 24), v465, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR);
        v258 = *v487;
        if ((*v487)(v257, 1, v115) == 1)
        {
          a2 = v434;
          UnknownStorage.init()();
          v259 = *(v115 + 20);
          if (one-time initialization token for defaultInstance != -1)
          {
            swift_once();
          }

          *(a2 + v259) = static Apple_Workout_Core_MetricsPublisher._StorageClass.defaultInstance;
          v260 = v465;
          v261 = v258(v465, 1, v115);

          if (v261 != 1)
          {
            outlined destroy of Apple_Workout_Core_MirroredClientMessage.OneOf_Message?(v260, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR);
          }
        }

        else
        {
          a2 = v434;
          outlined init with take of Apple_Workout_Core_MirroredClientPrecisionStart(v257, v434, type metadata accessor for Apple_Workout_Core_MetricsPublisher);
        }

        v332 = *(a2 + *(v115 + 20));
        v333 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__energyMetricsPublisher;
        swift_beginAccess();
        v334 = v332 + v333;
        v198 = v450;
        v13 = &_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMd;
        v199 = &_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMR;
        _s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgWOcTm_0(v334, v450, &_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMR);
        v200 = type metadata accessor for Apple_Workout_Core_EnergyMetricsPublisher(0);
        break;
      case 5:
        v247 = v467;
        _s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgWOcTm_0(v5 + *(v488 + 24), v467, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR);
        v248 = *v487;
        if ((*v487)(v247, 1, v115) == 1)
        {
          a2 = v436;
          UnknownStorage.init()();
          v249 = *(v115 + 20);
          if (one-time initialization token for defaultInstance != -1)
          {
            swift_once();
          }

          *(a2 + v249) = static Apple_Workout_Core_MetricsPublisher._StorageClass.defaultInstance;
          v250 = v467;
          v251 = v248(v467, 1, v115);

          if (v251 != 1)
          {
            outlined destroy of Apple_Workout_Core_MirroredClientMessage.OneOf_Message?(v250, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR);
          }
        }

        else
        {
          a2 = v436;
          outlined init with take of Apple_Workout_Core_MirroredClientPrecisionStart(v247, v436, type metadata accessor for Apple_Workout_Core_MetricsPublisher);
        }

        v326 = *(a2 + *(v115 + 20));
        v327 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__heartRateMetricsPublisher;
        swift_beginAccess();
        v328 = v326 + v327;
        v198 = v452;
        v13 = &_s11WorkoutCore06Apple_a1_B26_HeartRateMetricsPublisherVSgMd;
        v199 = &_s11WorkoutCore06Apple_a1_B26_HeartRateMetricsPublisherVSgMR;
        _s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgWOcTm_0(v328, v452, &_s11WorkoutCore06Apple_a1_B26_HeartRateMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_HeartRateMetricsPublisherVSgMR);
        v200 = type metadata accessor for Apple_Workout_Core_HeartRateMetricsPublisher(0);
        break;
      case 6:
        v272 = v468;
        _s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgWOcTm_0(v5 + *(v488 + 24), v468, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR);
        v273 = *v487;
        if ((*v487)(v272, 1, v115) == 1)
        {
          a2 = v437;
          UnknownStorage.init()();
          v274 = *(v115 + 20);
          if (one-time initialization token for defaultInstance != -1)
          {
            swift_once();
          }

          *(a2 + v274) = static Apple_Workout_Core_MetricsPublisher._StorageClass.defaultInstance;
          v275 = v468;
          v276 = v273(v468, 1, v115);

          if (v276 != 1)
          {
            outlined destroy of Apple_Workout_Core_MirroredClientMessage.OneOf_Message?(v275, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR);
          }
        }

        else
        {
          a2 = v437;
          outlined init with take of Apple_Workout_Core_MirroredClientPrecisionStart(v272, v437, type metadata accessor for Apple_Workout_Core_MetricsPublisher);
        }

        v344 = *(a2 + *(v115 + 20));
        v345 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__intervalsMetricsPublisher;
        swift_beginAccess();
        v346 = v344 + v345;
        v198 = v453;
        v13 = &_s11WorkoutCore06Apple_a1_B26_IntervalsMetricsPublisherVSgMd;
        v199 = &_s11WorkoutCore06Apple_a1_B26_IntervalsMetricsPublisherVSgMR;
        _s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgWOcTm_0(v346, v453, &_s11WorkoutCore06Apple_a1_B26_IntervalsMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_IntervalsMetricsPublisherVSgMR);
        v200 = type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher(0);
        break;
      case 7:
        v277 = v469;
        _s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgWOcTm_0(v5 + *(v488 + 24), v469, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR);
        v278 = *v487;
        if ((*v487)(v277, 1, v115) == 1)
        {
          a2 = v438;
          UnknownStorage.init()();
          v279 = *(v115 + 20);
          if (one-time initialization token for defaultInstance != -1)
          {
            swift_once();
          }

          *(a2 + v279) = static Apple_Workout_Core_MetricsPublisher._StorageClass.defaultInstance;
          v280 = v469;
          v281 = v278(v469, 1, v115);

          if (v281 != 1)
          {
            outlined destroy of Apple_Workout_Core_MirroredClientMessage.OneOf_Message?(v280, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR);
          }
        }

        else
        {
          a2 = v438;
          outlined init with take of Apple_Workout_Core_MirroredClientPrecisionStart(v277, v438, type metadata accessor for Apple_Workout_Core_MetricsPublisher);
        }

        v347 = *(a2 + *(v115 + 20));
        v348 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__lapsMetricsPublisher;
        swift_beginAccess();
        v349 = v347 + v348;
        v198 = v454;
        v13 = &_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMd;
        v199 = &_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMR;
        _s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgWOcTm_0(v349, v454, &_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMR);
        v200 = type metadata accessor for Apple_Workout_Core_LapsMetricsPublisher(0);
        break;
      case 8:
        v267 = v471;
        _s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgWOcTm_0(v5 + *(v488 + 24), v471, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR);
        v268 = *v487;
        if ((*v487)(v267, 1, v115) == 1)
        {
          a2 = v440;
          UnknownStorage.init()();
          v269 = *(v115 + 20);
          if (one-time initialization token for defaultInstance != -1)
          {
            swift_once();
          }

          *(a2 + v269) = static Apple_Workout_Core_MetricsPublisher._StorageClass.defaultInstance;
          v270 = v471;
          v271 = v268(v471, 1, v115);

          if (v271 != 1)
          {
            outlined destroy of Apple_Workout_Core_MirroredClientMessage.OneOf_Message?(v270, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR);
          }
        }

        else
        {
          a2 = v440;
          outlined init with take of Apple_Workout_Core_MirroredClientPrecisionStart(v267, v440, type metadata accessor for Apple_Workout_Core_MetricsPublisher);
        }

        v338 = *(a2 + *(v115 + 20));
        v339 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__multisportMetricsPublisher;
        swift_beginAccess();
        v340 = v338 + v339;
        v198 = v456;
        v13 = &_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSgMd;
        v199 = &_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSgMR;
        _s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgWOcTm_0(v340, v456, &_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSgMR);
        v200 = type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher(0);
        break;
      case 9:
        v295 = v472;
        _s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgWOcTm_0(v5 + *(v488 + 24), v472, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR);
        v296 = *v487;
        if ((*v487)(v295, 1, v115) == 1)
        {
          a2 = v441;
          UnknownStorage.init()();
          v297 = *(v115 + 20);
          if (one-time initialization token for defaultInstance != -1)
          {
            swift_once();
          }

          *(a2 + v297) = static Apple_Workout_Core_MetricsPublisher._StorageClass.defaultInstance;
          v298 = v472;
          v299 = v296(v472, 1, v115);

          if (v299 != 1)
          {
            outlined destroy of Apple_Workout_Core_MirroredClientMessage.OneOf_Message?(v298, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR);
          }
        }

        else
        {
          a2 = v441;
          outlined init with take of Apple_Workout_Core_MirroredClientPrecisionStart(v295, v441, type metadata accessor for Apple_Workout_Core_MetricsPublisher);
        }

        v350 = *(a2 + *(v115 + 20));
        v351 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__platterPublisher;
        swift_beginAccess();
        v352 = v350 + v351;
        v198 = v457;
        v13 = &_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMd;
        v199 = &_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMR;
        _s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgWOcTm_0(v352, v457, &_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMR);
        v200 = type metadata accessor for Apple_Workout_Core_PlatterPublisher(0);
        break;
      case 0xALL:
        v242 = v473;
        _s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgWOcTm_0(v5 + *(v488 + 24), v473, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR);
        v243 = *v487;
        if ((*v487)(v242, 1, v115) == 1)
        {
          a2 = v442;
          UnknownStorage.init()();
          v244 = *(v115 + 20);
          if (one-time initialization token for defaultInstance != -1)
          {
            swift_once();
          }

          *(a2 + v244) = static Apple_Workout_Core_MetricsPublisher._StorageClass.defaultInstance;
          v245 = v473;
          v246 = v243(v473, 1, v115);

          if (v246 != 1)
          {
            outlined destroy of Apple_Workout_Core_MirroredClientMessage.OneOf_Message?(v245, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR);
          }
        }

        else
        {
          a2 = v442;
          outlined init with take of Apple_Workout_Core_MirroredClientPrecisionStart(v242, v442, type metadata accessor for Apple_Workout_Core_MetricsPublisher);
        }

        v323 = *(a2 + *(v115 + 20));
        v324 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__powerMetricsPublisher;
        swift_beginAccess();
        v325 = v323 + v324;
        v198 = v458;
        v13 = &_s11WorkoutCore06Apple_a1_B22_PowerMetricsPublisherVSgMd;
        v199 = &_s11WorkoutCore06Apple_a1_B22_PowerMetricsPublisherVSgMR;
        _s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgWOcTm_0(v325, v458, &_s11WorkoutCore06Apple_a1_B22_PowerMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B22_PowerMetricsPublisherVSgMR);
        v200 = type metadata accessor for Apple_Workout_Core_PowerMetricsPublisher(0);
        break;
      case 0xBLL:
        v237 = v474;
        _s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgWOcTm_0(v5 + *(v488 + 24), v474, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR);
        v238 = *v487;
        if ((*v487)(v237, 1, v115) == 1)
        {
          a2 = v443;
          UnknownStorage.init()();
          v239 = *(v115 + 20);
          if (one-time initialization token for defaultInstance != -1)
          {
            swift_once();
          }

          *(a2 + v239) = static Apple_Workout_Core_MetricsPublisher._StorageClass.defaultInstance;
          v240 = v474;
          v241 = v238(v474, 1, v115);

          if (v241 != 1)
          {
            outlined destroy of Apple_Workout_Core_MirroredClientMessage.OneOf_Message?(v240, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR);
          }
        }

        else
        {
          a2 = v443;
          outlined init with take of Apple_Workout_Core_MirroredClientPrecisionStart(v237, v443, type metadata accessor for Apple_Workout_Core_MetricsPublisher);
        }

        v320 = *(a2 + *(v115 + 20));
        v321 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__raceInformationPublisher;
        swift_beginAccess();
        v322 = v320 + v321;
        v198 = v459;
        v13 = &_s11WorkoutCore06Apple_a1_B25_RaceInformationPublisherVSgMd;
        v199 = &_s11WorkoutCore06Apple_a1_B25_RaceInformationPublisherVSgMR;
        _s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgWOcTm_0(v322, v459, &_s11WorkoutCore06Apple_a1_B25_RaceInformationPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B25_RaceInformationPublisherVSgMR);
        v200 = type metadata accessor for Apple_Workout_Core_RaceInformationPublisher(0);
        break;
      case 0xCLL:
        v300 = v475;
        _s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgWOcTm_0(v5 + *(v488 + 24), v475, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR);
        v301 = *v487;
        if ((*v487)(v300, 1, v115) == 1)
        {
          a2 = v444;
          UnknownStorage.init()();
          v302 = *(v115 + 20);
          if (one-time initialization token for defaultInstance != -1)
          {
            swift_once();
          }

          *(a2 + v302) = static Apple_Workout_Core_MetricsPublisher._StorageClass.defaultInstance;
          v303 = v475;
          v304 = v301(v475, 1, v115);

          if (v304 != 1)
          {
            outlined destroy of Apple_Workout_Core_MirroredClientMessage.OneOf_Message?(v303, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR);
          }
        }

        else
        {
          a2 = v444;
          outlined init with take of Apple_Workout_Core_MirroredClientPrecisionStart(v300, v444, type metadata accessor for Apple_Workout_Core_MetricsPublisher);
        }

        v353 = *(a2 + *(v115 + 20));
        v354 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__racePositionStatePublisher;
        swift_beginAccess();
        v355 = v353 + v354;
        v198 = v460;
        v13 = &_s11WorkoutCore06Apple_a1_B27_RacePositionStatePublisherVSgMd;
        v199 = &_s11WorkoutCore06Apple_a1_B27_RacePositionStatePublisherVSgMR;
        _s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgWOcTm_0(v355, v460, &_s11WorkoutCore06Apple_a1_B27_RacePositionStatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_B27_RacePositionStatePublisherVSgMR);
        v200 = type metadata accessor for Apple_Workout_Core_RacePositionStatePublisher(0);
        break;
      case 0xDLL:
        v282 = FIGetActivePairedDevice();
        if (!v282)
        {
          goto LABEL_12;
        }

        v283 = v282;
        if (one-time initialization token for NAPILI_ALIGNED_UUID != -1)
        {
          swift_once();
        }

        v284 = __swift_project_value_buffer(v430, static DataLinkBackwardCompatibilityUtility.NAPILI_ALIGNED_UUID);
        v285 = v431;
        _s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgWOcTm_0(v284, v431, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        v286 = type metadata accessor for UUID();
        v287 = *(v286 - 8);
        v288 = (*(v287 + 48))(v285, 1, v286);
        isa = 0;
        if (v288 != 1)
        {
          a2 = v431;
          isa = UUID._bridgeToObjectiveC()().super.isa;
          (*(v287 + 8))(a2, v286);
        }

        v13 = [v283 supportsCapability_];

        v183 = v486;
        if (!v13)
        {
          goto LABEL_12;
        }

        v290 = v428;
        _s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgWOcTm_0(v5 + *(v488 + 24), v428, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR);
        v291 = *v487;
        if ((*v487)(v290, 1, v115) == 1)
        {
          a2 = v426;
          UnknownStorage.init()();
          v292 = *(v115 + 20);
          if (one-time initialization token for defaultInstance != -1)
          {
            swift_once();
          }

          *(a2 + v292) = static Apple_Workout_Core_MetricsPublisher._StorageClass.defaultInstance;
          v293 = v428;
          v294 = v291(v428, 1, v115);

          if (v294 != 1)
          {
            outlined destroy of Apple_Workout_Core_MirroredClientMessage.OneOf_Message?(v293, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR);
          }
        }

        else
        {
          a2 = v426;
          outlined init with take of Apple_Workout_Core_MirroredClientPrecisionStart(v290, v426, type metadata accessor for Apple_Workout_Core_MetricsPublisher);
        }

        v365 = *(a2 + *(v115 + 20));
        v366 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__trackRunningMetricsPublisher;
        swift_beginAccess();
        v367 = v365 + v366;
        v198 = v427;
        v13 = &_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSgMd;
        v199 = &_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSgMR;
        _s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgWOcTm_0(v367, v427, &_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSgMR);
        v200 = type metadata accessor for Apple_Workout_Core_TrackRunningMetricsPublisher(0);
        break;
      case 0xELL:
        v232 = v476;
        _s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgWOcTm_0(v5 + *(v488 + 24), v476, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR);
        v233 = *v487;
        if ((*v487)(v232, 1, v115) == 1)
        {
          a2 = v445;
          UnknownStorage.init()();
          v234 = *(v115 + 20);
          if (one-time initialization token for defaultInstance != -1)
          {
            swift_once();
          }

          *(a2 + v234) = static Apple_Workout_Core_MetricsPublisher._StorageClass.defaultInstance;
          v235 = v476;
          v236 = v233(v476, 1, v115);

          if (v236 != 1)
          {
            outlined destroy of Apple_Workout_Core_MirroredClientMessage.OneOf_Message?(v235, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR);
          }
        }

        else
        {
          a2 = v445;
          outlined init with take of Apple_Workout_Core_MirroredClientPrecisionStart(v232, v445, type metadata accessor for Apple_Workout_Core_MetricsPublisher);
        }

        v195 = *(a2 + *(v115 + 20));
        v196 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__workoutStatePublisher;
        swift_beginAccess();
        v197 = v195 + v196;
        v198 = v461;
        v13 = &_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSgMd;
        v199 = &_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSgMR;
        _s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgWOcTm_0(v197, v461, &_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSgMR);
        v200 = type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0);
        break;
      case 0xFLL:
        v310 = v466;
        _s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgWOcTm_0(v5 + *(v488 + 24), v466, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR);
        v311 = *v487;
        if ((*v487)(v310, 1, v115) == 1)
        {
          a2 = v435;
          UnknownStorage.init()();
          v312 = *(v115 + 20);
          if (one-time initialization token for defaultInstance != -1)
          {
            swift_once();
          }

          *(a2 + v312) = static Apple_Workout_Core_MetricsPublisher._StorageClass.defaultInstance;
          v313 = v466;
          v314 = v311(v466, 1, v115);

          if (v314 != 1)
          {
            outlined destroy of Apple_Workout_Core_MirroredClientMessage.OneOf_Message?(v313, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR);
          }
        }

        else
        {
          a2 = v435;
          outlined init with take of Apple_Workout_Core_MirroredClientPrecisionStart(v310, v435, type metadata accessor for Apple_Workout_Core_MetricsPublisher);
        }

        v359 = *(a2 + *(v115 + 20));
        v360 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__goalPublisher;
        swift_beginAccess();
        v361 = v359 + v360;
        v198 = v451;
        v13 = &_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSgMd;
        v199 = &_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSgMR;
        _s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgWOcTm_0(v361, v451, &_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSgMR);
        v200 = type metadata accessor for Apple_Workout_Core_GoalPublisher(0);
        break;
      case 0x10:
        v305 = v470;
        _s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgWOcTm_0(v5 + *(v488 + 24), v470, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR);
        v306 = *v487;
        if ((*v487)(v305, 1, v115) == 1)
        {
          a2 = v439;
          UnknownStorage.init()();
          v307 = *(v115 + 20);
          if (one-time initialization token for defaultInstance != -1)
          {
            swift_once();
          }

          *(a2 + v307) = static Apple_Workout_Core_MetricsPublisher._StorageClass.defaultInstance;
          v308 = v470;
          v309 = v306(v470, 1, v115);

          if (v309 != 1)
          {
            outlined destroy of Apple_Workout_Core_MirroredClientMessage.OneOf_Message?(v308, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR);
          }
        }

        else
        {
          a2 = v439;
          outlined init with take of Apple_Workout_Core_MirroredClientPrecisionStart(v305, v439, type metadata accessor for Apple_Workout_Core_MetricsPublisher);
        }

        v356 = *(a2 + *(v115 + 20));
        v357 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__locationPositionPublisher;
        swift_beginAccess();
        v358 = v356 + v357;
        v198 = v455;
        v13 = &_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSgMd;
        v199 = &_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSgMR;
        _s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgWOcTm_0(v358, v455, &_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSgMR);
        v200 = type metadata accessor for Apple_Workout_Core_LocationPositionPublisher(0);
        break;
      case 0x11:
        v315 = v477;
        _s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgWOcTm_0(v5 + *(v488 + 24), v477, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR);
        v316 = *v487;
        if ((*v487)(v315, 1, v115) == 1)
        {
          a2 = v446;
          UnknownStorage.init()();
          v317 = *(v115 + 20);
          if (one-time initialization token for defaultInstance != -1)
          {
            swift_once();
          }

          *(a2 + v317) = static Apple_Workout_Core_MetricsPublisher._StorageClass.defaultInstance;
          v318 = v477;
          v319 = v316(v477, 1, v115);

          if (v319 != 1)
          {
            outlined destroy of Apple_Workout_Core_MirroredClientMessage.OneOf_Message?(v318, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR);
          }
        }

        else
        {
          a2 = v446;
          outlined init with take of Apple_Workout_Core_MirroredClientPrecisionStart(v315, v446, type metadata accessor for Apple_Workout_Core_MetricsPublisher);
        }

        v362 = *(a2 + *(v115 + 20));
        v363 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__waterTemperatureMetricsPublisher;
        swift_beginAccess();
        v364 = v362 + v363;
        v198 = v421;
        v13 = &_s11WorkoutCore06Apple_a1_B33_WaterTemperatureMetricsPublisherVSgMd;
        v199 = &_s11WorkoutCore06Apple_a1_B33_WaterTemperatureMetricsPublisherVSgMR;
        _s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgWOcTm_0(v364, v421, &_s11WorkoutCore06Apple_a1_B33_WaterTemperatureMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B33_WaterTemperatureMetricsPublisherVSgMR);
        v200 = type metadata accessor for Apple_Workout_Core_WaterTemperatureMetricsPublisher(0);
        break;
      case 0x12:
        v262 = v478;
        _s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgWOcTm_0(v5 + *(v488 + 24), v478, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR);
        v263 = *v487;
        if ((*v487)(v262, 1, v115) == 1)
        {
          a2 = v447;
          UnknownStorage.init()();
          v264 = *(v115 + 20);
          if (one-time initialization token for defaultInstance != -1)
          {
            swift_once();
          }

          *(a2 + v264) = static Apple_Workout_Core_MetricsPublisher._StorageClass.defaultInstance;
          v265 = v478;
          v266 = v263(v478, 1, v115);

          if (v266 != 1)
          {
            outlined destroy of Apple_Workout_Core_MirroredClientMessage.OneOf_Message?(v265, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR);
          }
        }

        else
        {
          a2 = v447;
          outlined init with take of Apple_Workout_Core_MirroredClientPrecisionStart(v262, v447, type metadata accessor for Apple_Workout_Core_MetricsPublisher);
        }

        v335 = *(a2 + *(v115 + 20));
        v336 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__workoutBuddyStatePublisher;
        swift_beginAccess();
        v337 = v335 + v336;
        v198 = v424;
        v13 = &_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSgMd;
        v199 = &_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSgMR;
        _s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgWOcTm_0(v337, v424, &_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSgMR);
        v200 = type metadata accessor for Apple_Workout_Core_WorkoutBuddyStatePublisher(0);
        break;
      default:
        goto LABEL_184;
    }

    v201 = (*(*(v200 - 8) + 48))(v198, 1, v200);
    outlined destroy of Apple_Workout_Core_MirroredClientMessage.OneOf_Message?(v198, v13, v199);
    _s11WorkoutCore06Apple_a1_B16_DataLinkMessageVWOhTm_1(a2, type metadata accessor for Apple_Workout_Core_MetricsPublisher);
    if (v201 != 1)
    {
      goto LABEL_12;
    }
  }

LABEL_184:
  v391 = v462;
  outlined init with copy of Apple_Workout_Core_MirroredClientMessage(v183, v462, type metadata accessor for Apple_Workout_Core_PublisherSequence);
  v392 = Logger.logObject.getter();
  v393 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v392, v393))
  {
    v394 = swift_slowAlloc();
    v395 = swift_slowAlloc();
    v501 = v395;
    *v394 = 136315138;
    v396 = *(v391 + 8);
    v499 = *v391;
    v500 = v396;
    v397 = String.init<A>(describing:)();
    v399 = v398;
    _s11WorkoutCore06Apple_a1_B16_DataLinkMessageVWOhTm_1(v391, type metadata accessor for Apple_Workout_Core_PublisherSequence);
    v400 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v397, v399, &v501);

    *(v394 + 4) = v400;
    _os_log_impl(&dword_20AEA4000, v392, v393, "Marking delta update as invalid when checking %s", v394, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v395);
    MEMORY[0x20F2E9420](v395, -1, -1);
    MEMORY[0x20F2E9420](v394, -1, -1);
  }

  else
  {

    _s11WorkoutCore06Apple_a1_B16_DataLinkMessageVWOhTm_1(v391, type metadata accessor for Apple_Workout_Core_PublisherSequence);
  }

  v401 = v185;
  v402 = Logger.logObject.getter();
  v403 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v402, v403))
  {
    v404 = swift_slowAlloc();
    v405 = swift_slowAlloc();
    v499 = v405;
    *v404 = 136315138;
    lazy protocol witness table accessor for type Apple_Workout_Core_PublisherKey and conformance Apple_Workout_Core_PublisherKey();

    v406 = Dictionary.description.getter();
    v408 = v407;

    v409 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v406, v408, &v499);

    *(v404 + 4) = v409;
    _os_log_impl(&dword_20AEA4000, v402, v403, "Known sequences: %s", v404, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v405);
    MEMORY[0x20F2E9420](v405, -1, -1);
    MEMORY[0x20F2E9420](v404, -1, -1);
  }

  v410 = v422;
  outlined init with copy of Apple_Workout_Core_MirroredClientMessage(v485, v422, type metadata accessor for Apple_Workout_Core_MetricsDelta);
  v411 = Logger.logObject.getter();
  v412 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v411, v412))
  {
    v413 = swift_slowAlloc();
    v414 = swift_slowAlloc();
    v499 = v414;
    *v413 = 136315138;
    v415 = MEMORY[0x20F2E6F70](*v410, v429);
    v417 = v416;
    _s11WorkoutCore06Apple_a1_B16_DataLinkMessageVWOhTm_1(v410, type metadata accessor for Apple_Workout_Core_MetricsDelta);
    v418 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v415, v417, &v499);

    *(v413 + 4) = v418;
    _os_log_impl(&dword_20AEA4000, v411, v412, "Incoming sequences: %s", v413, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v414);
    MEMORY[0x20F2E9420](v414, -1, -1);
    MEMORY[0x20F2E9420](v413, -1, -1);

    v419 = type metadata accessor for Apple_Workout_Core_PublisherSequence;
    v420 = v486;
  }

  else
  {

    _s11WorkoutCore06Apple_a1_B16_DataLinkMessageVWOhTm_1(v486, type metadata accessor for Apple_Workout_Core_PublisherSequence);
    v419 = type metadata accessor for Apple_Workout_Core_MetricsDelta;
    v420 = v410;
  }

  _s11WorkoutCore06Apple_a1_B16_DataLinkMessageVWOhTm_1(v420, v419);
  v185 = v491;
  a2 = v425;
  DataLinkHealthKitClientConnection.sendCurrentKnownSequences()();
LABEL_193:

LABEL_194:
}

uint64_t DataLinkHealthKitClientConnection.sendMirroredClientCommand(_:sequence:closure:)(unsigned __int8 *a1, uint64_t a2, void (*a3)(void, void *), uint64_t a4)
{
  v25 = a4;
  v24 = a3;
  v5 = type metadata accessor for Apple_Workout_Core_DataLinkMessage(0);
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Apple_Workout_Core_MirroredClientMessage(0);
  v11 = MEMORY[0x28223BE20](v9, v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v23 - v15;
  v17 = *a1;
  v18 = type metadata accessor for Apple_Workout_Core_MirroredClientMessage.OneOf_Message(0);
  v19 = *(*(v18 - 8) + 56);
  v19(v16, 1, 1, v18);
  UnknownStorage.init()();
  outlined destroy of Apple_Workout_Core_MirroredClientMessage.OneOf_Message?(v16, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMR);
  *v16 = v17;
  v16[8] = 1;
  swift_storeEnumTagMultiPayload();
  v19(v16, 0, 1, v18);
  v20 = type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message(0);
  v21 = *(*(v20 - 8) + 56);
  v21(v8, 1, 1, v20);
  UnknownStorage.init()();
  outlined init with copy of Apple_Workout_Core_MirroredClientMessage(v16, v13, type metadata accessor for Apple_Workout_Core_MirroredClientMessage);
  outlined destroy of Apple_Workout_Core_MirroredClientMessage.OneOf_Message?(v8, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  outlined init with take of Apple_Workout_Core_MirroredClientPrecisionStart(v13, v8, type metadata accessor for Apple_Workout_Core_MirroredClientMessage);
  swift_storeEnumTagMultiPayload();
  v21(v8, 0, 1, v20);
  DataLinkHealthKitClientConnection.sendDataLinkMessage(_:closure:)(v8, v24, v25);
  _s11WorkoutCore06Apple_a1_B16_DataLinkMessageVWOhTm_1(v8, type metadata accessor for Apple_Workout_Core_DataLinkMessage);
  return _s11WorkoutCore06Apple_a1_B16_DataLinkMessageVWOhTm_1(v16, type metadata accessor for Apple_Workout_Core_MirroredClientMessage);
}

uint64_t DataLinkHealthKitClientConnection.sendMirroredClientMachTimestampResponse(_:sequence:closure:)(uint64_t *a1, uint64_t a2, void (*a3)(void, void *), uint64_t a4)
{
  v30 = a4;
  v29 = a3;
  v5 = type metadata accessor for Apple_Workout_Core_DataLinkMessage(0);
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Apple_Workout_Core_MirroredClientMachTimestampResponse(0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Apple_Workout_Core_MirroredClientMessage(0);
  v15 = MEMORY[0x28223BE20](v13, v14);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v18);
  v20 = &v28 - v19;
  v21 = *a1;
  v22 = a1[1];
  v23 = type metadata accessor for Apple_Workout_Core_MirroredClientMessage.OneOf_Message(0);
  v24 = *(*(v23 - 8) + 56);
  v24(v20, 1, 1, v23);
  UnknownStorage.init()();
  v31 = v21;
  v32 = v22;
  _s11WorkoutCore06Apple_a1_B29_MirroredClientPrecisionStartVAC21InternalSwiftProtobuf7MessageAAWlTm_0(&lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredClientMachTimestampResponse and conformance Apple_Workout_Core_MirroredClientMachTimestampResponse, type metadata accessor for Apple_Workout_Core_MirroredClientMachTimestampResponse, &protocol conformance descriptor for Apple_Workout_Core_MirroredClientMachTimestampResponse);
  static Message.with(_:)();
  outlined destroy of Apple_Workout_Core_MirroredClientMessage.OneOf_Message?(v20, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMR);
  outlined init with take of Apple_Workout_Core_MirroredClientPrecisionStart(v12, v20, type metadata accessor for Apple_Workout_Core_MirroredClientMachTimestampResponse);
  swift_storeEnumTagMultiPayload();
  v24(v20, 0, 1, v23);
  v25 = type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message(0);
  v26 = *(*(v25 - 8) + 56);
  v26(v8, 1, 1, v25);
  UnknownStorage.init()();
  outlined init with copy of Apple_Workout_Core_MirroredClientMessage(v20, v17, type metadata accessor for Apple_Workout_Core_MirroredClientMessage);
  outlined destroy of Apple_Workout_Core_MirroredClientMessage.OneOf_Message?(v8, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  outlined init with take of Apple_Workout_Core_MirroredClientPrecisionStart(v17, v8, type metadata accessor for Apple_Workout_Core_MirroredClientMessage);
  swift_storeEnumTagMultiPayload();
  v26(v8, 0, 1, v25);
  DataLinkHealthKitClientConnection.sendDataLinkMessage(_:closure:)(v8, v29, v30);
  _s11WorkoutCore06Apple_a1_B16_DataLinkMessageVWOhTm_1(v8, type metadata accessor for Apple_Workout_Core_DataLinkMessage);
  return _s11WorkoutCore06Apple_a1_B16_DataLinkMessageVWOhTm_1(v20, type metadata accessor for Apple_Workout_Core_MirroredClientMessage);
}

uint64_t DataLinkHealthKitClientConnection.sendMirroredClientAlertStackResponse(_:sequence:closure:)(uint64_t *a1, uint64_t a2, void (*a3)(void, void *), uint64_t a4)
{
  v35 = a4;
  v34 = a3;
  v33 = type metadata accessor for Apple_Workout_Core_DataLinkMessage(0) - 8;
  MEMORY[0x28223BE20](v33, v5);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for Apple_Workout_Core_MirroredClientAlertStackResponse(0);
  MEMORY[0x28223BE20](v30, v8);
  v31 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Apple_Workout_Core_MirroredClientMessage(0);
  v12 = MEMORY[0x28223BE20](v10, v11);
  v32 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v29 - v15;
  v18 = *a1;
  v17 = a1[1];
  v19 = *(a1 + 16);
  v20 = a1[3];
  v21 = type metadata accessor for Apple_Workout_Core_MirroredClientMessage.OneOf_Message(0);
  v22 = *(v21 - 8);
  v23 = *(v22 + 56);
  v29 = v22 + 56;
  v23(v16, 1, 1, v21);
  UnknownStorage.init()();
  v36 = v18;
  v37 = v17;
  v38 = v19;
  v39 = v20;
  _s11WorkoutCore06Apple_a1_B29_MirroredClientPrecisionStartVAC21InternalSwiftProtobuf7MessageAAWlTm_0(&lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredClientAlertStackResponse and conformance Apple_Workout_Core_MirroredClientAlertStackResponse, type metadata accessor for Apple_Workout_Core_MirroredClientAlertStackResponse, &protocol conformance descriptor for Apple_Workout_Core_MirroredClientAlertStackResponse);
  v24 = v31;
  static Message.with(_:)();
  outlined destroy of Apple_Workout_Core_MirroredClientMessage.OneOf_Message?(v16, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMR);
  outlined init with take of Apple_Workout_Core_MirroredClientPrecisionStart(v24, v16, type metadata accessor for Apple_Workout_Core_MirroredClientAlertStackResponse);
  swift_storeEnumTagMultiPayload();
  v23(v16, 0, 1, v21);
  v25 = type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message(0);
  v26 = *(*(v25 - 8) + 56);
  v26(v7, 1, 1, v25);
  UnknownStorage.init()();
  v27 = v32;
  outlined init with copy of Apple_Workout_Core_MirroredClientMessage(v16, v32, type metadata accessor for Apple_Workout_Core_MirroredClientMessage);
  outlined destroy of Apple_Workout_Core_MirroredClientMessage.OneOf_Message?(v7, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  outlined init with take of Apple_Workout_Core_MirroredClientPrecisionStart(v27, v7, type metadata accessor for Apple_Workout_Core_MirroredClientMessage);
  swift_storeEnumTagMultiPayload();
  v26(v7, 0, 1, v25);
  DataLinkHealthKitClientConnection.sendDataLinkMessage(_:closure:)(v7, v34, v35);
  _s11WorkoutCore06Apple_a1_B16_DataLinkMessageVWOhTm_1(v7, type metadata accessor for Apple_Workout_Core_DataLinkMessage);
  return _s11WorkoutCore06Apple_a1_B16_DataLinkMessageVWOhTm_1(v16, type metadata accessor for Apple_Workout_Core_MirroredClientMessage);
}

uint64_t DataLinkHealthKitClientConnection.sendMirroredClientPrecisionStart(_:sequence:closure:)(uint64_t a1, uint64_t a2, void (*a3)(void, void *), uint64_t a4)
{
  v28 = a4;
  v27 = a3;
  v5 = type metadata accessor for Apple_Workout_Core_DataLinkMessage(0);
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Apple_Workout_Core_MirroredClientPrecisionStart(0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Apple_Workout_Core_MirroredClientMessage(0);
  v15 = MEMORY[0x28223BE20](v13, v14);
  v26 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v26 - v18;
  v20 = type metadata accessor for Apple_Workout_Core_MirroredClientMessage.OneOf_Message(0);
  v21 = *(*(v20 - 8) + 56);
  v21(v19, 1, 1, v20);
  UnknownStorage.init()();
  v29 = a1;
  _s11WorkoutCore06Apple_a1_B29_MirroredClientPrecisionStartVAC21InternalSwiftProtobuf7MessageAAWlTm_0(&lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredClientPrecisionStart and conformance Apple_Workout_Core_MirroredClientPrecisionStart, type metadata accessor for Apple_Workout_Core_MirroredClientPrecisionStart, &protocol conformance descriptor for Apple_Workout_Core_MirroredClientPrecisionStart);
  static Message.with(_:)();
  outlined destroy of Apple_Workout_Core_MirroredClientMessage.OneOf_Message?(v19, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMR);
  outlined init with take of Apple_Workout_Core_MirroredClientPrecisionStart(v12, v19, type metadata accessor for Apple_Workout_Core_MirroredClientPrecisionStart);
  swift_storeEnumTagMultiPayload();
  v21(v19, 0, 1, v20);
  v22 = type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message(0);
  v23 = *(*(v22 - 8) + 56);
  v23(v8, 1, 1, v22);
  UnknownStorage.init()();
  v24 = v26;
  outlined init with copy of Apple_Workout_Core_MirroredClientMessage(v19, v26, type metadata accessor for Apple_Workout_Core_MirroredClientMessage);
  outlined destroy of Apple_Workout_Core_MirroredClientMessage.OneOf_Message?(v8, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  outlined init with take of Apple_Workout_Core_MirroredClientPrecisionStart(v24, v8, type metadata accessor for Apple_Workout_Core_MirroredClientMessage);
  swift_storeEnumTagMultiPayload();
  v23(v8, 0, 1, v22);
  DataLinkHealthKitClientConnection.sendDataLinkMessage(_:closure:)(v8, v27, v28);
  _s11WorkoutCore06Apple_a1_B16_DataLinkMessageVWOhTm_1(v8, type metadata accessor for Apple_Workout_Core_DataLinkMessage);
  return _s11WorkoutCore06Apple_a1_B16_DataLinkMessageVWOhTm_1(v19, type metadata accessor for Apple_Workout_Core_MirroredClientMessage);
}

void DataLinkHealthKitClientConnection.endSession(closure:)(void (*a1)(uint64_t, uint64_t))
{
  v3 = *(v1 + OBJC_IVAR____TtC11WorkoutCore33DataLinkHealthKitClientConnection_session);
  if (v3)
  {
    v11 = v3;
    [v11 end];
    a1(1, 0);
    v4 = v11;
  }

  else
  {
    if (one-time initialization token for dataLink != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static WOLog.dataLink);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_20AEA4000, v6, v7, "Cannot end mirroring session, no mirroring session found", v8, 2u);
      MEMORY[0x20F2E9420](v8, -1, -1);
    }

    lazy protocol witness table accessor for type DataLinkConnectionCommandError and conformance DataLinkConnectionCommandError();
    v9 = swift_allocError();
    *v10 = 0;
    a1(0, v9);
    v4 = v9;
  }
}

double protocol witness for DataLinkMirroredClientConnectionProtocol.mirroredClientDelegate.setter in conformance DataLinkHealthKitClientConnection(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC11WorkoutCore33DataLinkHealthKitClientConnection_mirroredClientDelegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return result;
}

void (*protocol witness for DataLinkMirroredClientConnectionProtocol.mirroredClientDelegate.modify in conformance DataLinkHealthKitClientConnection(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC11WorkoutCore33DataLinkHealthKitClientConnection_mirroredClientDelegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return protocol witness for DataLinkMirroredClientConnectionProtocol.mirroredClientDelegate.modify in conformance DataLinkHealthKitClientConnection;
}

void protocol witness for DataLinkMirroredClientConnectionProtocol.mirroredClientDelegate.modify in conformance DataLinkHealthKitClientConnection(uint64_t a1, char a2)
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

uint64_t protocol witness for DataLinkMirroredClientConnectionProtocol.workoutSessionMirroringStartHandler.getter in conformance DataLinkHealthKitClientConnection(__n128 a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC11WorkoutCore33DataLinkHealthKitClientConnection_workoutSessionMirroringStartHandler);
  outlined copy of (@escaping @callee_guaranteed @Sendable (@guaranteed HKWorkoutSession) -> ())?(v2);
  return v2;
}

uint64_t protocol witness for DataLinkClientConnection.registerMetricsUpdater(closure:) in conformance DataLinkHealthKitClientConnection(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t (*a6)(uint64_t, uint64_t))
{
  v7 = (v6 + *a5);
  v8 = *v7;
  v9 = v7[1];
  *v7 = a1;
  v7[1] = a2;

  return a6(v8, v9);
}

void protocol witness for DataLinkClientConnection.deltaMetricsPublisher.setter in conformance DataLinkHealthKitClientConnection(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*protocol witness for DataLinkClientConnection.deltaMetricsPublisher.modify in conformance DataLinkHealthKitClientConnection(uint64_t *a1))(id **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC11WorkoutCore33DataLinkHealthKitClientConnection_deltaMetricsPublisher;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return protocol witness for DataLinkClientConnection.deltaMetricsPublisher.modify in conformance DataLinkHealthKitClientConnection;
}

void protocol witness for DataLinkClientConnection.deltaMetricsPublisher.modify in conformance DataLinkHealthKitClientConnection(id **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

uint64_t protocol witness for DataLinkClientConnection.sessionUUID.getter in conformance DataLinkHealthKitClientConnection@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC11WorkoutCore33DataLinkHealthKitClientConnection_session);
  if (v3)
  {
    v4 = [v3 identifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = type metadata accessor for UUID();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, 1, v6);
}

uint64_t outlined copy of (@escaping @callee_guaranteed @Sendable (@guaranteed HKWorkoutSession) -> ())?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DataLinkConnectionCommandError and conformance DataLinkConnectionCommandError()
{
  result = lazy protocol witness table cache variable for type DataLinkConnectionCommandError and conformance DataLinkConnectionCommandError;
  if (!lazy protocol witness table cache variable for type DataLinkConnectionCommandError and conformance DataLinkConnectionCommandError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DataLinkConnectionCommandError and conformance DataLinkConnectionCommandError);
  }

  return result;
}

void partial apply for closure #1 in DataLinkHealthKitClientConnection.handleDeltaMetricsUpdate(_:workoutSession:)()
{
  v1 = *(type metadata accessor for Apple_Workout_Core_MetricsDelta(0) - 8);
  v2 = *(v0 + 16);
  v3 = (v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80)));

  closure #1 in DataLinkHealthKitClientConnection.handleDeltaMetricsUpdate(_:workoutSession:)(v2, v3);
}

uint64_t _s11WorkoutCore06Apple_a1_B29_MirroredClientPrecisionStartVAC21InternalSwiftProtobuf7MessageAAWlTm_0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void partial apply for closure #1 in DataLinkHealthKitClientConnection.handleMirroredHostMessage(_:)()
{
  v1 = *(type metadata accessor for Apple_Workout_Core_MirroredHostMessage(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = *v4;
  v6 = v4[1];

  closure #1 in DataLinkHealthKitClientConnection.handleMirroredHostMessage(_:)(v3, v0 + v2, v5, v6);
}

uint64_t _s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgWOcTm_0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined destroy of Apple_Workout_Core_MirroredClientMessage.OneOf_Message?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void specialized DataLinkHealthKitClientConnection.workoutSession(_:didChangeTo:from:date:)(void *a1, uint64_t a2, uint64_t a3)
{
  if (one-time initialization token for dataLink != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static WOLog.dataLink);
  v5 = a1;
  oslog = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v26 = v8;
    *v7 = 136315650;
    v9 = v5;
    v10 = [v9 description];
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v13, &v26);

    *(v7 + 4) = v14;
    *(v7 + 12) = 2080;
    v15 = HKWorkoutSessionStateToString();
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, &v26);

    *(v7 + 14) = v19;
    *(v7 + 22) = 2080;
    v20 = HKWorkoutSessionStateToString();
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v23, &v26);

    *(v7 + 24) = v24;
    _os_log_impl(&dword_20AEA4000, oslog, v6, "workoutSession (%s) did change state from (%s) to (%s)", v7, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v8, -1, -1);
    MEMORY[0x20F2E9420](v7, -1, -1);
  }
}

void specialized DataLinkHealthKitClientConnection.handleMirroredHostCommand(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = (&v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *a1;
  v11 = *(a1 + 8);
  type metadata accessor for OS_dispatch_queue();
  *v9 = static OS_dispatch_queue.main.getter();
  (*(v6 + 104))(v9, *MEMORY[0x277D85200], v5);
  LOBYTE(a1) = _dispatchPreconditionTest(_:)();
  (*(v6 + 8))(v9, v5);
  if ((a1 & 1) == 0)
  {
    __break(1u);
LABEL_11:
    swift_once();
    goto LABEL_4;
  }

  v22 = v10;
  v23 = v11;
  MirroredHostCommand.init(protobuf:)(&v22, &v24);
  v12 = v24;
  if (v24 != 3)
  {
    ObjectType = swift_getObjectType();
    v21 = v12;
    (*(a3 + 8))(&v21, closure #1 in DataLinkHealthKitClientConnection.handleMirroredHostCommand(_:with:), 0, ObjectType, a3);
    return;
  }

  if (one-time initialization token for dataLink != -1)
  {
    goto LABEL_11;
  }

LABEL_4:
  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static WOLog.dataLink);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 134217984;
    if (v11)
    {
      v10 = qword_20B449728[v10];
    }

    *(v16 + 4) = v10;
    v17 = v15;
    v18 = v16;
    _os_log_impl(&dword_20AEA4000, v14, v17, "[mirrored] handleMirroredHostCommand cannot convert protobuf: %ld", v16, 0xCu);
    MEMORY[0x20F2E9420](v18, -1, -1);
  }
}

void specialized DataLinkHealthKitClientConnection.handleMirroredHostStartConfiguration(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  started = type metadata accessor for Apple_Workout_Core_MirroredHostStartConfiguration(0);
  MEMORY[0x28223BE20](started - 8, v6);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OS_dispatch_queue();
  *v13 = static OS_dispatch_queue.main.getter();
  (*(v10 + 104))(v13, *MEMORY[0x277D85200], v9);
  v14 = _dispatchPreconditionTest(_:)();
  (*(v10 + 8))(v13, v9);
  if (v14)
  {
    outlined init with copy of Apple_Workout_Core_MirroredClientMessage(a1, v8, type metadata accessor for Apple_Workout_Core_MirroredHostStartConfiguration);
    MirroredHostStartConfiguration.init(protobuf:)(v8, &v19);
    v15 = v19;
    v16 = v20;
    v17 = v21;
    ObjectType = swift_getObjectType();
    v19 = v15;
    v20 = v16;
    v21 = v17;
    (*(a3 + 16))(&v19, closure #1 in DataLinkHealthKitClientConnection.handleMirroredHostStartConfiguration(_:with:), 0, ObjectType, a3);
  }

  else
  {
    __break(1u);
  }
}

uint64_t specialized DataLinkHealthKitClientConnection.handleMirroredHostMachTimestampRequest(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for Apple_Workout_Core_MirroredHostMachTimestampRequest(0);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = (&v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = (&v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for OS_dispatch_queue();
  *v13 = static OS_dispatch_queue.main.getter();
  (*(v10 + 104))(v13, *MEMORY[0x277D85200], v9);
  v14 = _dispatchPreconditionTest(_:)();
  result = (*(v10 + 8))(v13, v9);
  if (v14)
  {
    outlined init with copy of Apple_Workout_Core_MirroredClientMessage(a1, v8, type metadata accessor for Apple_Workout_Core_MirroredHostMachTimestampRequest);
    v16 = *v8;
    _s11WorkoutCore06Apple_a1_B16_DataLinkMessageVWOhTm_1(v8, type metadata accessor for Apple_Workout_Core_MirroredHostMachTimestampRequest);
    ObjectType = swift_getObjectType();
    v19 = v16;
    return (*(a3 + 32))(&v19, closure #1 in DataLinkHealthKitClientConnection.handleMirroredHostMachTimestampRequest(_:with:), 0, ObjectType, a3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t specialized DataLinkHealthKitClientConnection.handleMirroredHostCountdownStart(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for Apple_Workout_Core_MirroredHostCountdownStart(0);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = (v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = (v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for OS_dispatch_queue();
  *v13 = static OS_dispatch_queue.main.getter();
  (*(v10 + 104))(v13, *MEMORY[0x277D85200], v9);
  v14 = _dispatchPreconditionTest(_:)();
  result = (*(v10 + 8))(v13, v9);
  if (v14)
  {
    outlined init with copy of Apple_Workout_Core_MirroredClientMessage(a1, v8, type metadata accessor for Apple_Workout_Core_MirroredHostCountdownStart);
    v16 = *v8;
    v17 = v8[1];
    _s11WorkoutCore06Apple_a1_B16_DataLinkMessageVWOhTm_1(v8, type metadata accessor for Apple_Workout_Core_MirroredHostCountdownStart);
    ObjectType = swift_getObjectType();
    v19[0] = v16;
    v19[1] = v17;
    return (*(a3 + 40))(v19, closure #1 in DataLinkHealthKitClientConnection.handleMirroredHostCountdownStart(_:with:), 0, ObjectType, a3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void specialized DataLinkHealthKitClientConnection.handleMirroredHostAlertStackRequest(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for Apple_Workout_Core_MirroredHostAlertStackRequest(0);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = (&v24[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = (&v24[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for OS_dispatch_queue();
  *v13 = static OS_dispatch_queue.main.getter();
  (*(v10 + 104))(v13, *MEMORY[0x277D85200], v9);
  v14 = _dispatchPreconditionTest(_:)();
  (*(v10 + 8))(v13, v9);
  if (v14)
  {
    outlined init with copy of Apple_Workout_Core_MirroredClientMessage(a1, v8, type metadata accessor for Apple_Workout_Core_MirroredHostAlertStackRequest);
    v15 = *v8;
    v16 = v8[1];
    v18 = v8[2];
    v17 = v8[3];
    v20 = v8[4];
    v19 = v8[5];
    v21 = v8[6];

    _s11WorkoutCore06Apple_a1_B16_DataLinkMessageVWOhTm_1(v8, type metadata accessor for Apple_Workout_Core_MirroredHostAlertStackRequest);
    ObjectType = swift_getObjectType();
    v24[0] = v15;
    v24[1] = v16;
    v24[2] = v18;
    v24[3] = v17;
    v24[4] = v20;
    v24[5] = v19;
    v24[6] = v21;
    (*(a3 + 24))(v24, closure #1 in DataLinkHealthKitClientConnection.handleMirroredHostAlertStackRequest(_:with:), 0, ObjectType, a3);
  }

  else
  {
    __break(1u);
  }
}

void specialized DataLinkHealthKitClientConnection.handleMirroredHostSummaryUpdate(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for Apple_Workout_Core_MirroredHostSummaryUpdate(0);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = (&v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for OS_dispatch_queue();
  *v13 = static OS_dispatch_queue.main.getter();
  (*(v10 + 104))(v13, *MEMORY[0x277D85200], v9);
  v14 = _dispatchPreconditionTest(_:)();
  (*(v10 + 8))(v13, v9);
  if (v14)
  {
    outlined init with copy of Apple_Workout_Core_MirroredClientMessage(a1, v8, type metadata accessor for Apple_Workout_Core_MirroredHostSummaryUpdate);
    MirroredHostSummaryUpdate.init(protobuf:)(v8, &v18);
    v15 = v18;
    ObjectType = swift_getObjectType();
    v18 = v15;
    (*(a3 + 48))(&v18, closure #1 in DataLinkHealthKitClientConnection.handleMirroredHostSummaryUpdate(_:with:), 0, ObjectType, a3);
  }

  else
  {
    __break(1u);
  }
}

uint64_t objectdestroy_36Tm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t outlined init with copy of Apple_Workout_Core_MirroredClientMessage(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of Apple_Workout_Core_MirroredClientPrecisionStart(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _s11WorkoutCore06Apple_a1_B16_DataLinkMessageVWOhTm_1(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t get_enum_tag_for_layout_string_11WorkoutCore30DataLinkConnectionCommandErrorO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t getEnumTagSinglePayload for DataLinkConnectionCommandError(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for DataLinkConnectionCommandError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *destructiveInjectEnumTag for DataLinkConnectionCommandError(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

Swift::Bool __swiftcall ZonesAlertTrackingProtocol.alertPreconditionSatified(_:)(Swift::Double a1)
{
  v3 = v2;
  v4 = v1;
  v6 = *(v2 + 56);
  if (v6() >= a1)
  {
    if (one-time initialization token for zones != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static WOLog.zones);
    swift_unknownObjectRetain();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v24 = v23;
      *v11 = 136315650;
      v12 = _typeName(_:qualified:)();
      v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v24);

      *(v11 + 4) = v14;
      *(v11 + 12) = 2048;
      *(v11 + 14) = a1;
      *(v11 + 22) = 2048;
      *(v11 + 24) = (v6)(v4, v3);
      _os_log_impl(&dword_20AEA4000, v9, v10, "%s Not alerting. Elapsed time: %f < %f", v11, 0x20u);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x20F2E9420](v23, -1, -1);
      MEMORY[0x20F2E9420](v11, -1, -1);
    }
  }

  else
  {
    if (ZonesAlertTrackingProtocol.enoughTimePassedBetweenAlerts()())
    {
      return 1;
    }

    if (one-time initialization token for zones != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static WOLog.zones);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v24 = v19;
      *v18 = 136315138;
      v20 = _typeName(_:qualified:)();
      v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, &v24);

      *(v18 + 4) = v22;
      _os_log_impl(&dword_20AEA4000, v16, v17, "%s Not alerting. Enough time not passed between two heart rate alerts", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x20F2E9420](v19, -1, -1);
      MEMORY[0x20F2E9420](v18, -1, -1);
    }
  }

  return 0;
}

Swift::Bool __swiftcall ZonesAlertTrackingProtocol.enoughTimePassedBetweenAlerts()()
{
  v2 = v1;
  v3 = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v21 - v6;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v11 = MEMORY[0x28223BE20](v8, v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v21 - v15;
  (*(v2 + 8))(v3, v2);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    outlined destroy of Date?(v7);
  }

  else
  {
    (*(v9 + 32))(v16, v7, v8);
    static Date.now.getter();
    Date.timeIntervalSince(_:)();
    v18 = v17;
    v19 = *(v9 + 8);
    v19(v13, v8);
    v19(v16, v8);
    if (v18 < 15.0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t WindowedAccumulator.__allocating_init(timeWindow:strict:)(char a1, double a2)
{
  result = swift_allocObject();
  *(result + 48) = MEMORY[0x277D84F90];
  *(result + 56) = 0;
  *(result + 16) = a2;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 40) = 1;
  *(result + 41) = a1;
  return result;
}

uint64_t WindowedAccumulator.init(positionWindow:strict:)(char a1, double a2)
{
  *(v2 + 48) = MEMORY[0x277D84F90];
  *(v2 + 56) = 0;
  *(v2 + 16) = a2;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 40) = 1;
  *(v2 + 41) = a1;
  return v2;
}

uint64_t WindowedAccumulator.__allocating_init(countWindow:)(uint64_t a1)
{
  v2 = swift_allocObject();
  WindowedAccumulator.init(countWindow:)(a1);
  return v2;
}

uint64_t WindowedAccumulator.init(countWindow:)(uint64_t result)
{
  *(v1 + 48) = MEMORY[0x277D84F90];
  *(v1 + 56) = 0;
  *(v1 + 32) = result;
  *(v1 + 40) = 0;
  if (__OFADD__(result, 2))
  {
    __break(1u);
  }

  else
  {
    *(v1 + 48) = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, (result + 2) & ~((result + 2) >> 63), 0, MEMORY[0x277D84F90]);
    *(v1 + 16) = 0;
    *(v1 + 24) = 1;
    *(v1 + 41) = 0;
    return v1;
  }

  return result;
}

uint64_t WindowedAccumulator.trimOldSamples()()
{
  if ((*(v0 + 24) & 1) != 0 || (v1 = *(v0 + 48), (v2 = *(v1 + 16)) == 0))
  {
    if (*(v0 + 40))
    {
      return result;
    }

    v7 = *(v0 + 32);
    v8 = *(*(v0 + 48) + 16);
    if (v7 >= v8)
    {
      return result;
    }

    v9 = __OFSUB__(v8, v7);
    v10 = v8 - v7;
    if (v9)
    {
      __break(1u);
    }

    else if ((v10 & 0x8000000000000000) == 0)
    {
      if (!__OFADD__(v10, 1))
      {
        return specialized Array.replaceSubrange<A>(_:with:)(0, v10 + 1);
      }

      goto LABEL_18;
    }

    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  v3 = 0;
  v4 = *(v1 + 16 * v2 + 24);
  v5 = (v1 + 40);
  v6 = 0.0;
  while (*(v0 + 16) < v4 - *v5)
  {
    ++v3;
    v6 = v6 + *(v5 - 1);
    v5 += 2;
    if (v2 == v3)
    {
      v3 = v2;
      goto LABEL_14;
    }
  }

  if (!v3)
  {
    return result;
  }

LABEL_14:
  result = specialized Array.replaceSubrange<A>(_:with:)(0, v3);
  *(v0 + 56) = *(v0 + 56) - v6;
  return result;
}

uint64_t WindowedAccumulator.calculateRate()()
{
  v1 = *(v0 + 48);
  v2 = *(v1 + 16);
  if (v2 < 3 || (v3 = (v1 + 32), v4 = *(v1 + 40), v5 = v1 + 32 + 16 * v2, v6 = *(v5 - 8) - v4, v6 <= 0.0))
  {
    *&result = 0.0;
  }

  else
  {
    *&result = (*(v5 - 16) - *v3) / v6;
  }

  return result;
}

void WindowedAccumulator.add(_:date:)(uint64_t a1, Swift::Double a2)
{
  Date.timeIntervalSinceReferenceDate.getter();

  WindowedAccumulator.add(_:position:)(a2, v3);
}

Swift::Void __swiftcall WindowedAccumulator.add(_:position:)(Swift::Double _, Swift::Double position)
{
  v4 = (v2 + 48);
  v5 = *(v2 + 48);
  v6 = *(v5 + 2);
  if (v6)
  {
    v7 = (v6 + 1);
    v8 = &v5[16 * v6 + 24];
    while (1)
    {
      v7 = (v7 - 1);
      if (!v7)
      {
        break;
      }

      v9 = *v8;
      v8 -= 2;
      if (v9 <= position)
      {
        v10 = v7;
        goto LABEL_12;
      }
    }

    v10 = 0;
LABEL_12:
    specialized Array.replaceSubrange<A>(_:with:)(v7, v10, _, position);
  }

  else
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v4 = v5;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, v5);
      *v4 = v5;
    }

    v14 = *(v5 + 2);
    v13 = *(v5 + 3);
    if (v14 >= v13 >> 1)
    {
      v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1, v5);
      v15 = position;
      v5 = v17;
    }

    else
    {
      v15 = position;
    }

    *(v5 + 2) = v14 + 1;
    v16 = &v5[16 * v14];
    *(v16 + 4) = _;
    *(v16 + 5) = v15;
    *v4 = v5;
  }

  *(v2 + 56) = *(v2 + 56) + _;

  WindowedAccumulator.trimOldSamples()();
}

double WindowedAccumulator.value(for:)(uint64_t a1)
{
  Date.timeIntervalSinceReferenceDate.getter();
  *&result = WindowedAccumulator.value(for:)(v1);
  return result;
}

Swift::Double_optional __swiftcall WindowedAccumulator.value(for:)(Swift::Double a1)
{
  v2 = *(v1 + 48);
  v3 = *(v2 + 16);
  if (v3)
  {
    v13 = v2;
    v4 = 16 * v3 + 24;
    do
    {
      v5 = v3;
      if (!v3)
      {
        break;
      }

      --v3;
      v6 = *(v2 + v4);
      v4 -= 16;
    }

    while (v6 > a1);
    v7 = v5 == 0;
    (MEMORY[0x28223BE20])();
    v12[2] = &v13;

    v8 = _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lFxq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxs5NeverOqd_0_Isgnrzr_xSgAb2ERsd__Ri_d_0_r_0_lIetMgnrzo_Tpq5Si_11WorkoutCore19WindowedAccumulatorC6Sample33_F335A3D6900FCBD2DC08458B4BDD2C84LLVTg5(partial apply for specialized closure #1 in BidirectionalCollection.last(where:), v12, v3, v7);
    v10 = v9;

    if (v10)
    {
      v11 = 0;
    }

    else
    {
      v11 = v8;
    }
  }

  else
  {
    v11 = 0;
  }

  result.value = a1;
  result.is_nil = v11;
  return result;
}

uint64_t WindowedAccumulator.latestValue.getter()
{
  v1 = *(v0 + 48);
  v4 = *(v1 + 16);
  v3 = v1 + 16;
  v2 = v4;
  if (v4)
  {
    return *(v3 + 16 * v2);
  }

  else
  {
    return 0;
  }
}

double WindowedAccumulator.positionWindowMean()(double result)
{
  if ((*(v1 + 24) & 1) == 0)
  {
    v2 = *(v1 + 48);
    v3 = *(v2 + 16);
    if (v3)
    {
      result = *(v1 + 16);
      v4 = *(v2 + 32 + 16 * (v3 - 1) + 8) - *(v2 + 40);
      if (*(v1 + 41) != 1 || result < 10.0)
      {
        if (v3 == 1)
        {
          return result;
        }
      }

      else if (v3 == 1 || v4 < v4 / (v3 - 1) * (result / (v4 / (v3 - 1)) + -2.0))
      {
        return result;
      }

      return (*(v2 + 32) * (result - v4) + v4 * (*(v1 + 56) / v3)) / result;
    }
  }

  return result;
}

Swift::Double_optional __swiftcall WindowedAccumulator.mean()()
{
  if (*(v0 + 24))
  {
    v2 = *(*(v0 + 48) + 16);
    if (v2)
    {
      v1 = *(v0 + 56) / v2;
      *&v3 = v1;
    }

    else
    {
      LOBYTE(v3) = 0;
    }
  }

  else
  {
    v1 = WindowedAccumulator.positionWindowMean()(v1);
  }

  result.value = v1;
  result.is_nil = v3;
  return result;
}

Swift::Double_optional __swiftcall WindowedAccumulator.estimatedCompletionPosition(targetValue:)(Swift::Double targetValue)
{
  v2 = *(v1 + 48);
  v3 = *(v2 + 16);
  if (v3 < 3)
  {
    goto LABEL_10;
  }

  v4 = (v2 + 32);
  v5 = *(v2 + 40);
  v6 = v2 + 32 + 16 * v3;
  v7 = *(v6 - 8);
  v8 = v7 - v5;
  if (v7 - v5 <= 0.0)
  {
    goto LABEL_10;
  }

  v9 = targetValue;
  v10 = *(v6 - 16);
  v11 = v10 - *v4;
  if (one-time initialization token for core != -1)
  {
    v19 = v10 - *v4;
    swift_once();
    v11 = v19;
  }

  v12 = v11 / v8;
  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static WOLog.core);
  v14 = v1;

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 134218240;
    *(v17 + 4) = v12;
    *(v17 + 12) = 2048;
    *(v17 + 14) = *(*(v14 + 48) + 16);

    _os_log_impl(&dword_20AEA4000, v15, v16, "rps %f samples: %ld", v17, 0x16u);
    MEMORY[0x20F2E9420](v17, -1, -1);
  }

  else
  {
  }

  targetValue = (v9 - v10) / v12;
  if (targetValue <= 0.0)
  {
LABEL_10:
    v18 = 0;
  }

  else
  {
    targetValue = v7 + targetValue;
    v18 = LOBYTE(targetValue);
  }

  result.value = targetValue;
  result.is_nil = v18;
  return result;
}

uint64_t WindowedAccumulator.trimSamples(upTo:)(uint64_t a1)
{
  Date.timeIntervalSinceReferenceDate.getter();
  v5 = (v1 + 48);
  v4 = *v5;
  v6 = *(*v5 + 2);
  if (v6)
  {
    v7 = 0;
    v8 = 40;
    do
    {
      if (*&v4[v8] <= v3)
      {
        v10 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_22;
        }

        v2 = v3;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v5 = v4;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          goto LABEL_23;
        }

        while (1)
        {
          v12 = *(v4 + 2);
          if (v10 == v12)
          {
LABEL_9:
            *v5 = v4;
            v9 = *(v4 + 2);
            v6 = v7;
            if (v9 >= v7)
            {
              return specialized Array.replaceSubrange<A>(_:with:)(v6, v9);
            }
          }

          else
          {
            v14 = &v4[v8 + 8];
            while (v10 < v12)
            {
              v17 = *(v14 + 8);
              if (v17 > v2)
              {
                if (v10 != v7)
                {
                  if (v7 >= v12)
                  {
                    __break(1u);
                    break;
                  }

                  v15 = &v4[16 * v7 + 32];
                  v16 = *v15;
                  *v15 = *v14;
                  *(v15 + 8) = v17;
                  *v14 = v16;
                  v12 = *(v4 + 2);
                }

                ++v7;
              }

              ++v10;
              v14 += 16;
              if (v10 == v12)
              {
                goto LABEL_9;
              }
            }

            __break(1u);
          }

          __break(1u);
LABEL_22:
          __break(1u);
LABEL_23:
          v4 = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
        }
      }

      ++v7;
      v8 += 16;
    }

    while (v6 != v7);
  }

  v9 = *(v4 + 2);
  return specialized Array.replaceSubrange<A>(_:with:)(v6, v9);
}

Swift::Void __swiftcall WindowedAccumulator.trimSamples(upTo:)(Swift::Double upTo)
{
  v5 = *(v1 + 48);
  v4 = (v1 + 48);
  v3 = v5;
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = 0;
    v8 = 40;
    do
    {
      if (*&v3[v8] <= upTo)
      {
        v10 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_22;
        }

        v2 = upTo;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v4 = v3;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          goto LABEL_23;
        }

        while (1)
        {
          v12 = *(v3 + 2);
          if (v10 == v12)
          {
LABEL_9:
            *v4 = v3;
            v9 = *(v3 + 2);
            v6 = v7;
            if (v9 >= v7)
            {
              goto LABEL_10;
            }
          }

          else
          {
            v13 = &v3[v8 + 8];
            while (v10 < v12)
            {
              v16 = *(v13 + 8);
              if (v16 > v2)
              {
                if (v10 != v7)
                {
                  if (v7 >= v12)
                  {
                    __break(1u);
                    break;
                  }

                  v14 = &v3[16 * v7 + 32];
                  v15 = *v14;
                  *v14 = *v13;
                  *(v14 + 8) = v16;
                  *v13 = v15;
                  v12 = *(v3 + 2);
                }

                ++v7;
              }

              ++v10;
              v13 += 16;
              if (v10 == v12)
              {
                goto LABEL_9;
              }
            }

            __break(1u);
          }

          __break(1u);
LABEL_22:
          __break(1u);
LABEL_23:
          v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
        }
      }

      ++v7;
      v8 += 16;
    }

    while (v6 != v7);
  }

  v9 = v6;
LABEL_10:
  specialized Array.replaceSubrange<A>(_:with:)(v6, v9);
}

uint64_t WindowedAccumulator.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void *_sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lFxq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxs5NeverOqd_0_Isgnrzr_xSgAb2ERsd__Ri_d_0_r_0_lIetMgnrzo_Tpq5Si_11WorkoutCore19WindowedAccumulatorC6Sample33_F335A3D6900FCBD2DC08458B4BDD2C84LLVTg5(void *(*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    return 0;
  }

  v6 = a3;
  result = a1(&v7, &v6);
  if (!v4)
  {
    return v7;
  }

  __break(1u);
  return result;
}

unint64_t *partial apply for specialized closure #1 in BidirectionalCollection.last(where:)@<X0>(unint64_t *result@<X0>, _OWORD *a2@<X8>)
{
  v3 = *result;
  if ((*result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v4 = **(v2 + 16);
    if (v3 < *(v4 + 16))
    {
      *a2 = *(v4 + 16 * v3 + 32);
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t dispatch thunk of WindowedAccumulator.value(for:)()
{
  return (*(*v0 + 224))();
}

{
  return (*(*v0 + 232))();
}

uint64_t dispatch thunk of WindowedAccumulator.trimSamples(upTo:)()
{
  return (*(*v0 + 288))();
}

{
  return (*(*v0 + 296))();
}

uint64_t getEnumTagSinglePayload for WindowedAccumulator.Sample(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for WindowedAccumulator.Sample(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

unint64_t NLPlaybackError.description.getter()
{
  v1 = 0xD000000000000010;
  v2 = *v0;
  if (v2 <= 3)
  {
    v5 = 0xD00000000000001CLL;
    if (v2 != 2)
    {
      v5 = 0xD000000000000017;
    }

    if (*v0)
    {
      v1 = 0xD000000000000013;
    }

    if (*v0 <= 1u)
    {
      return v1;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v3 = 0xD00000000000001DLL;
    if (v2 != 7)
    {
      v3 = 0xD000000000000017;
    }

    if (v2 == 6)
    {
      v3 = 0xD000000000000011;
    }

    if (v2 != 4)
    {
      v1 = 0xD000000000000011;
    }

    if (*v0 <= 5u)
    {
      return v1;
    }

    else
    {
      return v3;
    }
  }
}

Swift::Int NLPlaybackError.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance NLPlaybackError()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance NLPlaybackError(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v2);
  return Hasher._finalize()();
}

uint64_t getEnumTagSinglePayload for NLPlaybackError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NLPlaybackError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t static ZonesMetadata.unpackedLastProcessedDate(from:key:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (a1)
  {
    if (*(a1 + 16))
    {
      v6 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
      if (v7)
      {
        outlined init with copy of Any(*(a1 + 56) + 32 * v6, v15);
        if (swift_dynamicCast())
        {
          type metadata accessor for PropertyListDecoder();
          swift_allocObject();
          PropertyListDecoder.init()();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation4DateVGMd, &_sSay10Foundation4DateVGMR);
          lazy protocol witness table accessor for type [Date] and conformance <A> [A](&lazy protocol witness table cache variable for type [Date] and conformance <A> [A], &lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC95A0], MEMORY[0x277D83978]);
          dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

          v10 = v15[0];
          if (*(v15[0] + 16))
          {
            v11 = type metadata accessor for Date();
            v12 = *(v11 - 8);
            (*(v12 + 16))(a4, v10 + ((*(v12 + 80) + 32) & ~*(v12 + 80)), v11);
            outlined consume of Data._Representation(v13, v14);

            return (*(v12 + 56))(a4, 0, 1, v11);
          }

          outlined consume of Data._Representation(v13, v14);
        }
      }
    }
  }

  v8 = type metadata accessor for Date();
  return (*(*(v8 - 8) + 56))(a4, 1, 1, v8);
}

uint64_t specialized static ZonesMetadata.packedLastProcessedDate(_:)(uint64_t a1)
{
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4DateVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4DateVGMR);
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_20B423A90;
  (*(v3 + 16))(v5 + v4, a1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation4DateVGMd, &_sSay10Foundation4DateVGMR);
  lazy protocol witness table accessor for type [Date] and conformance <A> [A](&lazy protocol witness table cache variable for type [Date] and conformance <A> [A], &lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9580], MEMORY[0x277D83948]);
  v6 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();

  return v6;
}

uint64_t specialized static ZonesMetadata.packedCurrentZoneIndex(_:)(uint64_t a1)
{
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_20B423A90;
  *(v2 + 32) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySiGMd, &_sSaySiGMR);
  lazy protocol witness table accessor for type [Int] and conformance <A> [A](&lazy protocol witness table cache variable for type [Int] and conformance <A> [A], MEMORY[0x277D83B90], MEMORY[0x277D83948]);
  v3 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();

  return v3;
}

uint64_t specialized static ZonesMetadata.unpackedTimeInZones(from:key:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    return 0;
  }

  if (!*(a1 + 16))
  {
    return 0;
  }

  v4 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  outlined init with copy of Any(*(a1 + 56) + 32 * v4, v9);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySiSdGMd, &_sSDySiSdGMR);
  lazy protocol witness table accessor for type [Int : Double] and conformance <> [A : B]();
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  outlined consume of Data._Representation(v7, v8);

  return v9[0];
}

uint64_t specialized static ZonesMetadata.unpackedCurrentZoneIndex(from:key:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    if (*(a1 + 16))
    {
      v4 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
      if (v5)
      {
        outlined init with copy of Any(*(a1 + 56) + 32 * v4, v10);
        if (swift_dynamicCast())
        {
          type metadata accessor for PropertyListDecoder();
          swift_allocObject();
          PropertyListDecoder.init()();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySiGMd, &_sSaySiGMR);
          lazy protocol witness table accessor for type [Int] and conformance <A> [A](&lazy protocol witness table cache variable for type [Int] and conformance <A> [A], MEMORY[0x277D83BB8], MEMORY[0x277D83978]);
          dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

          if (*(v10[0] + 16))
          {
            v7 = *(v10[0] + 32);
            outlined consume of Data._Representation(v8, v9);

            return v7;
          }

          outlined consume of Data._Representation(v8, v9);
        }
      }
    }
  }

  return 0;
}

uint64_t lazy protocol witness table accessor for type [Int] and conformance <A> [A](unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySiGMd, &_sSaySiGMR);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [Date] and conformance <A> [A](unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10Foundation4DateVGMd, &_sSay10Foundation4DateVGMR);
    _s10Foundation4DateVACSEAAWlTm_1(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _s10Foundation4DateVACSEAAWlTm_1(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Date();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t RunningTrackInfo.protobuf.getter()
{
  type metadata accessor for Apple_Workout_Core_RunningTrackInfo(0);
  lazy protocol witness table accessor for type Apple_Workout_Core_RunningTrackInfo and conformance Apple_Workout_Core_RunningTrackInfo(&lazy protocol witness table cache variable for type Apple_Workout_Core_RunningTrackInfo and conformance Apple_Workout_Core_RunningTrackInfo, type metadata accessor for Apple_Workout_Core_RunningTrackInfo, &protocol conformance descriptor for Apple_Workout_Core_RunningTrackInfo);
  return static Message.with(_:)();
}

uint64_t Apple_Workout_Core_RunningTrackInfo.decoded.getter()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v38 = *(v2 - 8);
  v39 = v2;
  MEMORY[0x28223BE20](v2, v3);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Apple_Workout_Core_CLLocation(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B11_CLLocationVSgMd, &_s11WorkoutCore06Apple_a1_B11_CLLocationVSgMR);
  v13 = MEMORY[0x28223BE20](v11 - 8, v12);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v37 - v17;
  v19 = *(type metadata accessor for Apple_Workout_Core_RunningTrackInfo(0) + 40);
  outlined init with copy of Apple_Workout_Core_CLLocation?(v1 + v19, v18);
  v20 = *(v7 + 48);
  v21 = v20(v18, 1, v6);
  outlined destroy of Apple_Workout_Core_CLLocation?(v18);
  v22 = 0;
  if (v21 != 1)
  {
    outlined init with copy of Apple_Workout_Core_CLLocation?(v1 + v19, v15);
    if (v20(v15, 1, v6) == 1)
    {
      *(v10 + 1) = 0u;
      *(v10 + 2) = 0u;
      *v10 = 0u;
      UnknownStorage.init()();
      if (v20(v15, 1, v6) != 1)
      {
        outlined destroy of Apple_Workout_Core_CLLocation?(v15);
      }
    }

    else
    {
      outlined init with take of Apple_Workout_Core_CLLocation(v15, v10);
    }

    v23 = *v10;
    v24 = *(v10 + 1);
    v25 = *(v10 + 2);
    v26 = *(v10 + 3);
    v27 = *(v10 + 4);
    Date.init(timeIntervalSinceReferenceDate:)();
    v28 = objc_allocWithZone(MEMORY[0x277CE41F8]);
    isa = Date._bridgeToObjectiveC()().super.isa;
    v22 = [v28 initWithCoordinate:isa altitude:v23 horizontalAccuracy:v24 verticalAccuracy:v25 timestamp:{v26, v27}];

    (*(v38 + 8))(v5, v39);
    outlined destroy of Apple_Workout_Core_CLLocation(v10);
  }

  v30 = *(v1 + 8);
  v41 = *v1;
  v42 = v30;
  Apple_Workout_Core_RunningTrackProximity.decoded.getter(&v40);
  v31 = v40;
  v32 = *(v1 + 3);
  v33 = *(v1 + 4);
  v34 = *(v1 + 5);
  v35 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithLongLong_];
  type metadata accessor for RunningTrackInfo();
  result = swift_allocObject();
  *(result + 16) = v22;
  *(result + 24) = v31;
  *(result + 32) = v32;
  *(result + 40) = v33;
  *(result + 48) = v34;
  *(result + 56) = v35;
  return result;
}

uint64_t RunningTrackInfo.__allocating_init(location:proximity:laneNumber:lapNumber:laneCount:trackId:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = swift_allocObject();
  v13 = *a2;
  *(result + 16) = a1;
  *(result + 24) = v13;
  *(result + 32) = a3;
  *(result + 40) = a4;
  *(result + 48) = a5;
  *(result + 56) = a6;
  return result;
}

uint64_t RunningTrackInfo.__allocating_init(location:)(void *a1)
{
  v2 = swift_allocObject();
  RunningTrackInfo.init(location:)(a1);
  return v2;
}

uint64_t static RunningTrackInfo.defaultTrackInfo.getter()
{
  if (one-time initialization token for defaultTrackInfo != -1)
  {
    swift_once();
  }
}

void *RunningTrackInfo.location.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

void RunningTrackInfo.proximity.setter(char *a1)
{
  v2 = *a1;
  swift_beginAccess();
  *(v1 + 24) = v2;
}

uint64_t RunningTrackInfo.estimatedLaneNumber.getter()
{
  if (*(v0 + 48) <= 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = *(v0 + 48);
  }

  swift_beginAccess();
  v2 = *(v0 + 32);
  if (v1 >= v2)
  {
    v4 = __OFSUB__(v2, 1);
    v3 = v2 - 1 < 0;
  }

  else
  {
    v4 = 0;
    v3 = 1;
  }

  if (v3 != v4)
  {
    return 1;
  }

  else
  {
    return *(v0 + 32);
  }
}

void key path setter for RunningTrackInfo.trackId : RunningTrackInfo(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 56);
  *(v3 + 56) = v2;
  v5 = v2;
}

id RunningTrackInfo.trackId.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 56);

  return v1;
}

void RunningTrackInfo.trackId.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 56);
  *(v1 + 56) = a1;
}

uint64_t RunningTrackInfo.init(location:proximity:laneNumber:lapNumber:laneCount:trackId:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *a2;
  *(v6 + 16) = a1;
  *(v6 + 24) = v7;
  *(v6 + 32) = a3;
  *(v6 + 40) = a4;
  *(v6 + 48) = a5;
  *(v6 + 56) = a6;
  return v6;
}

uint64_t RunningTrackInfo.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void RunningTrackInfo.copy(with:)(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for RunningTrackInfo();
  v5 = swift_allocObject();
  RunningTrackInfo.init(location:)(0);
  swift_beginAccess();
  v6 = *(v2 + 24);
  swift_beginAccess();
  *(v5 + 24) = v6;
  swift_beginAccess();
  v7 = *(v2 + 32);
  swift_beginAccess();
  *(v5 + 32) = v7;
  swift_beginAccess();
  v8 = *(v2 + 40);
  swift_beginAccess();
  *(v5 + 40) = v8;
  a1[3] = v4;
  *a1 = v5;
}

uint64_t RunningTrackInfo.description.getter()
{
  _StringGuts.grow(_:)(57);
  MEMORY[0x20F2E6D80](0x74696D69786F7250, 0xEB00000000203A79);
  swift_beginAccess();
  v1 = 0xEA00000000006B63;
  v2 = 0x6172742061206E4FLL;
  v3 = 0xEC0000006B636172;
  v4 = 0x742061207261654ELL;
  if (*(v0 + 24) != 2)
  {
    v4 = 0x61206E6F20746F4ELL;
    v3 = 0xEE006B6361727420;
  }

  if (*(v0 + 24))
  {
    v2 = 0xD000000000000013;
    v1 = 0x800000020B45CD90;
  }

  if (*(v0 + 24) <= 1u)
  {
    v5 = v2;
  }

  else
  {
    v5 = v4;
  }

  if (*(v0 + 24) <= 1u)
  {
    v6 = v1;
  }

  else
  {
    v6 = v3;
  }

  MEMORY[0x20F2E6D80](v5, v6);

  MEMORY[0x20F2E6D80](0x754E656E616C202CLL, 0xEE00203A7265626DLL);
  swift_beginAccess();
  v7 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x20F2E6D80](v7);

  MEMORY[0x20F2E6D80](0x6D754E70616C202CLL, 0xED0000203A726562);
  swift_beginAccess();
  v15 = *(v0 + 40);
  v8 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x20F2E6D80](v8);

  MEMORY[0x20F2E6D80](0x496B63617274202CLL, 0xEB00000000203A64);
  swift_beginAccess();
  v9 = *(v0 + 56);
  v10 = [v9 description];
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  MEMORY[0x20F2E6D80](v11, v13);

  return 0;
}

void closure #1 in RunningTrackInfo.protobuf.getter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_CLLocation(0);
  v5 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 16);
  if (v11)
  {
    v17[13] = v17;
    MEMORY[0x28223BE20](v7, v8);
    v17[-2] = v11;
    lazy protocol witness table accessor for type Apple_Workout_Core_RunningTrackInfo and conformance Apple_Workout_Core_RunningTrackInfo(&lazy protocol witness table cache variable for type Apple_Workout_Core_CLLocation and conformance Apple_Workout_Core_CLLocation, type metadata accessor for Apple_Workout_Core_CLLocation, &protocol conformance descriptor for Apple_Workout_Core_CLLocation);
    v12 = v11;
    static Message.with(_:)();

    v13 = *(type metadata accessor for Apple_Workout_Core_RunningTrackInfo(0) + 40);
    outlined destroy of Apple_Workout_Core_CLLocation?(a1 + v13);
    outlined init with take of Apple_Workout_Core_CLLocation(v10, a1 + v13);
    (*(v5 + 56))(a1 + v13, 0, 1, v4);
  }

  swift_beginAccess();
  *a1 = *(a2 + 24);
  *(a1 + 8) = 1;
  swift_beginAccess();
  v14 = *(a2 + 32);
  if (v14 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v14 > 0x7FFFFFFF)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  *(a1 + 12) = v14;
  swift_beginAccess();
  v15 = *(a2 + 40);
  if (v15 < 0xFFFFFFFF80000000)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v15 > 0x7FFFFFFF)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  *(a1 + 16) = v15;
  v16 = *(a2 + 48);
  if (v16 < 0xFFFFFFFF80000000)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v16 <= 0x7FFFFFFF)
  {
    *(a1 + 20) = v16;
    swift_beginAccess();
    *(a1 + 24) = [*(a2 + 56) longLongValue];
    return;
  }

LABEL_15:
  __break(1u);
}

uint64_t outlined destroy of Apple_Workout_Core_CLLocation?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B11_CLLocationVSgMd, &_s11WorkoutCore06Apple_a1_B11_CLLocationVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t CLLocation.protobuf.getter()
{
  type metadata accessor for Apple_Workout_Core_CLLocation(0);
  lazy protocol witness table accessor for type Apple_Workout_Core_RunningTrackInfo and conformance Apple_Workout_Core_RunningTrackInfo(&lazy protocol witness table cache variable for type Apple_Workout_Core_CLLocation and conformance Apple_Workout_Core_CLLocation, type metadata accessor for Apple_Workout_Core_CLLocation, &protocol conformance descriptor for Apple_Workout_Core_CLLocation);
  return static Message.with(_:)();
}

uint64_t closure #1 in CLLocation.protobuf.getter(double *a1, void *a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a2 coordinate];
  *a1 = v9;
  [a2 coordinate];
  *(a1 + 1) = v10;
  [a2 altitude];
  *(a1 + 2) = v11;
  [a2 horizontalAccuracy];
  *(a1 + 3) = v12;
  [a2 verticalAccuracy];
  *(a1 + 4) = v13;
  v14 = [a2 timestamp];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  Date.timeIntervalSinceReferenceDate.getter();
  v16 = v15;
  result = (*(v5 + 8))(v8, v4);
  *(a1 + 5) = v16;
  return result;
}

BOOL specialized static RunningTrackInfo.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 24);
  swift_beginAccess();
  if (v4 != *(a2 + 24))
  {
    return 0;
  }

  swift_beginAccess();
  v5 = *(a1 + 32);
  swift_beginAccess();
  if (v5 != *(a2 + 32))
  {
    return 0;
  }

  swift_beginAccess();
  v6 = *(a1 + 40);
  swift_beginAccess();
  return v6 == *(a2 + 40);
}

id @objc NSDictionary.logString.getter(void *a1)
{
  v1 = a1;
  v2 = NSDictionary.logString.getter();
  v4 = v3;

  v5 = MEMORY[0x20F2E6C00](v2, v4);

  return v5;
}

uint64_t NSDictionary.logString.getter()
{
  v14[1] = *MEMORY[0x277D85DE8];
  v1 = type metadata accessor for String.Encoding();
  MEMORY[0x28223BE20](v1 - 8, v2);
  v14[0] = 0;
  v3 = [objc_opt_self() dataWithJSONObject:v0 options:2 error:v14];
  v4 = v14[0];
  if (v3)
  {
    v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    static String.Encoding.utf8.getter();
    v8 = String.init(data:encoding:)();
    v10 = v9;
    outlined consume of Data._Representation(v5, v7);
    if (v10)
    {
      return v8;
    }
  }

  else
  {
    v12 = v4;
    v13 = _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return 0;
}

uint64_t protocol witness for CustomLogStringConvertible.logString.getter in conformance NSDictionary()
{
  v1 = [*v0 logString];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t type metadata instantiation function for NestedDictionary(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

id NLWorkoutAlert.isFirstMilestone(with:activityType:)(void *a1, void *a2)
{
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = v2;
  result = [a1 unitManager];
  if (result)
  {
    v9 = result;
    v10 = [result userDistanceHKUnitForActivityType_];

    [v6 distanceValue];
    v12 = NLMilestoneForDistance(a2, v10, v11);

    return (v12 == 1);
  }

  __break(1u);
  return result;
}

id NLWorkoutAlert.isCustomSplitMultipleOfFirstMileStone(with:activityType:)(void *a1, uint64_t a2)
{
  v3 = v2;
  type metadata accessor for WorkoutAlertSegment();
  v6 = swift_dynamicCastClass();
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = v3;
  if ([v7 type] != 6)
  {

    return 0;
  }

  v9 = OBJC_IVAR___WOSegmentAlert_segmentMarker;
  v10 = [*&v7[OBJC_IVAR___WOSegmentAlert_segmentMarker] segmentIndex];
  result = [*&v7[v9] distance];
  if (result)
  {
    v12 = result;
    v13 = objc_opt_self();
    v14 = [v13 meterUnit];
    [v12 doubleValueForUnit_];
    v16 = v15;

    result = [a1 unitManager];
    if (result)
    {
      v17 = result;
      v18 = v16 * v10;
      v19 = [result userDistanceHKUnitForActivityType_];

      v20 = FIUIDistanceTypeForActivityType();
      v21 = NLDistanceNotificationIntervalForDistanceType(v20);
      v22 = [objc_opt_self() quantityWithUnit:v19 doubleValue:v21];
      v23 = [v13 meterUnit];
      [v22 doubleValueForUnit_];
      v25 = v24;

      return (vabdd_f64(v18, v25) <= 1.0);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t NLWorkoutAlert.isPowerAlert.getter()
{
  type metadata accessor for WorkoutAlertZone();
  result = swift_dynamicCastClass();
  if (result)
  {
    v1 = OBJC_IVAR____TtC11WorkoutCore16WorkoutAlertZone_targetZone;
    v2 = result;
    swift_beginAccess();
    return [*(v2 + v1) primaryType] == 3;
  }

  return result;
}

uint64_t type metadata accessor for Apple_Workout_Core_MetricsPublisher(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Apple_Workout_Core_MetricsPublisher.clearActivitySummaryMetricsPublisher()(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t *a4)
{
  v9 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = &v20 - v12;
  v14 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(v4 + v14);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    swift_allocObject();
    v16 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v16);
    *(v9 + v14) = v16;
  }

  v17 = a3(0);
  (*(*(v17 - 8) + 56))(v13, 1, 1, v17);
  v18 = *a4;
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v13, v16 + v18, a1, a2);
  return swift_endAccess();
}

uint64_t Apple_Workout_Core_MetricsPublisher.init()@<X0>(uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v3 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  if (one-time initialization token for defaultInstance != -1)
  {
    swift_once();
  }

  *(a2 + v3) = static Apple_Workout_Core_MetricsPublisher._StorageClass.defaultInstance;
}

BOOL Apple_Workout_Core_MetricsPublisher.hasActivitySummaryMetricsPublisher.getter(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v18 - v11;
  v13 = *(v4 + *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20));
  v14 = *a3;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v13 + v14, v12, a1, a2);
  v15 = a4(0);
  v16 = (*(*(v15 - 8) + 48))(v12, 1, v15) != 1;
  outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v12, a1, a2);
  return v16;
}

unint64_t Apple_Workout_Core_ConfigurationType.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 5;
  *(a2 + 9) = 0;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Apple_Workout_Core_ConfigurationType(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_Core_ConfigurationType(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_Core_ConfigurationType and conformance Apple_Workout_Core_ConfigurationType();

  return MEMORY[0x28217E238](a1, a2, v4);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Apple_Workout_Core_ConfigurationType(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t Apple_Workout_Core_MetricsPublisher.isFaked.getter()
{
  v1 = *(v0 + *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20));
  swift_beginAccess();
  return *(v1 + 16);
}

void key path setter for Apple_Workout_Core_MetricsPublisher.isFaked : Apple_Workout_Core_MetricsPublisher(char *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(a2 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    swift_allocObject();
    v6 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v6);
    *(a2 + v4) = v6;
  }

  swift_beginAccess();
  *(v6 + 16) = v3;
}

void Apple_Workout_Core_MetricsPublisher.isFaked.setter(char a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    swift_allocObject();
    v6 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v6);
    *(v2 + v4) = v6;
  }

  swift_beginAccess();
  *(v6 + 16) = a1 & 1;
}

void (*Apple_Workout_Core_MetricsPublisher.isFaked.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  *(v4 + 84) = *(v6 + 16);
  return Apple_Workout_Core_MetricsPublisher.isFaked.modify;
}

void Apple_Workout_Core_MetricsPublisher.isFaked.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 80);
  v4 = *(*a1 + 72);
  v5 = *(*a1 + 84);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v2 + 80);
    v9 = *(v2 + 72);
    type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    swift_allocObject();
    v7 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v7);
    *(v9 + v8) = v7;
  }

  swift_beginAccess();
  *(v7 + 16) = v5;

  free(v2);
}

uint64_t Apple_Workout_Core_MetricsPublisher.workoutIdentifierDeprecated.getter()
{
  v1 = *(v0 + *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20));
  swift_beginAccess();
  v2 = *(v1 + 24);

  return v2;
}

double key path getter for Apple_Workout_Core_MetricsPublisher.workoutIdentifierDeprecated : Apple_Workout_Core_MetricsPublisher@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20));
  swift_beginAccess();
  v4 = *(v3 + 32);
  *a2 = *(v3 + 24);
  a2[1] = v4;

  return result;
}

double key path setter for Apple_Workout_Core_MetricsPublisher.workoutIdentifierDeprecated : Apple_Workout_Core_MetricsPublisher(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(a2 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    swift_allocObject();
    v7 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v7);
    *(a2 + v5) = v7;
  }

  swift_beginAccess();
  *(v7 + 24) = v4;
  *(v7 + 32) = v3;

  return result;
}

double Apple_Workout_Core_MetricsPublisher.workoutIdentifierDeprecated.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    swift_allocObject();
    v8 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v8);
    *(v3 + v6) = v8;
  }

  swift_beginAccess();
  *(v8 + 24) = a1;
  *(v8 + 32) = a2;

  return result;
}

void (*Apple_Workout_Core_MetricsPublisher.workoutIdentifierDeprecated.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  *(v4 + 96) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 32);
  *(v4 + 72) = *(v6 + 24);
  *(v4 + 80) = v7;

  return Apple_Workout_Core_MetricsPublisher.workoutIdentifierDeprecated.modify;
}

void Apple_Workout_Core_MetricsPublisher.workoutIdentifierDeprecated.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 96);
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 88);
  if (a2)
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *(v6 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = *(v2 + 96);
      v10 = *(v2 + 88);
      type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
      swift_allocObject();
      v8 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v8);
      *(v10 + v9) = v8;
    }

    swift_beginAccess();
    *(v8 + 24) = v3;
    *(v8 + 32) = v5;
  }

  else
  {
    v11 = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(v6 + v4);
    if ((v11 & 1) == 0)
    {
      v13 = *(v2 + 96);
      v14 = *(v2 + 88);
      type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
      swift_allocObject();
      v12 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v12);
      *(v14 + v13) = v12;
    }

    swift_beginAccess();
    *(v12 + 24) = v3;
    *(v12 + 32) = v5;
  }

  free(v2);
}

void Apple_Workout_Core_MetricsPublisher.workoutConfigurationType.getter(uint64_t a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20));
  swift_beginAccess();
  v4 = *(v3 + 48);
  *a1 = *(v3 + 40);
  *(a1 + 8) = v4;
}

void key path setter for Apple_Workout_Core_MetricsPublisher.workoutConfigurationType : Apple_Workout_Core_MetricsPublisher(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(a2 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    swift_allocObject();
    v7 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v7);
    *(a2 + v5) = v7;
  }

  swift_beginAccess();
  *(v7 + 40) = v3;
  *(v7 + 48) = v4;
}

void Apple_Workout_Core_MetricsPublisher.workoutConfigurationType.setter(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    swift_allocObject();
    v7 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v7);
    *(v2 + v5) = v7;
  }

  swift_beginAccess();
  *(v7 + 40) = v3;
  *(v7 + 48) = v4;
}

void (*Apple_Workout_Core_MetricsPublisher.workoutConfigurationType.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 48);
  *(v4 + 72) = *(v6 + 40);
  *(v4 + 80) = v7;
  return Apple_Workout_Core_MetricsPublisher.workoutConfigurationType.modify;
}

void Apple_Workout_Core_MetricsPublisher.workoutConfigurationType.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 84);
  v5 = *(*a1 + 88);
  v6 = *(*a1 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = *(v2 + 84);
    v10 = *(v2 + 88);
    type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    swift_allocObject();
    v8 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v8);
    *(v10 + v9) = v8;
  }

  swift_beginAccess();
  *(v8 + 40) = v3;
  *(v8 + 48) = v6;

  free(v2);
}

uint64_t Apple_Workout_Core_MetricsPublisher.multisportWorkoutInAutoMode.getter()
{
  v1 = *(v0 + *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20));
  swift_beginAccess();
  return *(v1 + 49);
}

void key path setter for Apple_Workout_Core_MetricsPublisher.multisportWorkoutInAutoMode : Apple_Workout_Core_MetricsPublisher(char *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(a2 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    swift_allocObject();
    v6 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v6);
    *(a2 + v4) = v6;
  }

  swift_beginAccess();
  *(v6 + 49) = v3;
}

void Apple_Workout_Core_MetricsPublisher.multisportWorkoutInAutoMode.setter(char a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    swift_allocObject();
    v6 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v6);
    *(v2 + v4) = v6;
  }

  swift_beginAccess();
  *(v6 + 49) = a1 & 1;
}

void (*Apple_Workout_Core_MetricsPublisher.multisportWorkoutInAutoMode.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  *(v4 + 84) = *(v6 + 49);
  return Apple_Workout_Core_MetricsPublisher.multisportWorkoutInAutoMode.modify;
}

void Apple_Workout_Core_MetricsPublisher.multisportWorkoutInAutoMode.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 80);
  v4 = *(*a1 + 72);
  v5 = *(*a1 + 84);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v2 + 80);
    v9 = *(v2 + 72);
    type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    swift_allocObject();
    v7 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v7);
    *(v9 + v8) = v7;
  }

  swift_beginAccess();
  *(v7 + 49) = v5;

  free(v2);
}

uint64_t Apple_Workout_Core_MetricsPublisher.elapsedTimeMetricsPublisher.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMR);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v12 - v5;
  v7 = *(v1 + *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20));
  v8 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__elapsedTimeMetricsPublisher;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v7 + v8, v6, &_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMR);
  v9 = type metadata accessor for Apple_Workout_Core_ElapsedTimeMetricsPublisher(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v6, a1, type metadata accessor for Apple_Workout_Core_ElapsedTimeMetricsPublisher);
  }

  *a1 = 0;
  UnknownStorage.init()();
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v6, &_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMR);
  }

  return result;
}

uint64_t key path getter for Apple_Workout_Core_MetricsPublisher.elapsedTimeMetricsPublisher : Apple_Workout_Core_MetricsPublisher@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v13 - v6;
  v8 = *(a1 + *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20));
  v9 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__elapsedTimeMetricsPublisher;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v8 + v9, v7, &_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMR);
  v10 = type metadata accessor for Apple_Workout_Core_ElapsedTimeMetricsPublisher(0);
  v11 = *(*(v10 - 8) + 48);
  if (v11(v7, 1, v10) != 1)
  {
    return outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v7, a2, type metadata accessor for Apple_Workout_Core_ElapsedTimeMetricsPublisher);
  }

  *a2 = 0;
  UnknownStorage.init()();
  result = (v11)(v7, 1, v10);
  if (result != 1)
  {
    return outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v7, &_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMR);
  }

  return result;
}

uint64_t key path setter for Apple_Workout_Core_MetricsPublisher.elapsedTimeMetricsPublisher : Apple_Workout_Core_MetricsPublisher(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v18 - v6;
  v8 = type metadata accessor for Apple_Workout_Core_ElapsedTimeMetricsPublisher(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(a1, v12, type metadata accessor for Apple_Workout_Core_ElapsedTimeMetricsPublisher);
  v13 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *(a2 + v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    swift_allocObject();
    v15 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v15);
    *(a2 + v13) = v15;
  }

  outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v12, v7, type metadata accessor for Apple_Workout_Core_ElapsedTimeMetricsPublisher);
  (*(v9 + 56))(v7, 0, 1, v8);
  v16 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__elapsedTimeMetricsPublisher;
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v7, v15 + v16, &_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMR);
  return swift_endAccess();
}

uint64_t Apple_Workout_Core_MetricsPublisher.elapsedTimeMetricsPublisher.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v14 - v6;
  v8 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    swift_allocObject();
    v10 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v10);
    *(v2 + v8) = v10;
  }

  outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(a1, v7, type metadata accessor for Apple_Workout_Core_ElapsedTimeMetricsPublisher);
  v11 = type metadata accessor for Apple_Workout_Core_ElapsedTimeMetricsPublisher(0);
  (*(*(v11 - 8) + 56))(v7, 0, 1, v11);
  v12 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__elapsedTimeMetricsPublisher;
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v7, v10 + v12, &_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMR);
  return swift_endAccess();
}

void (*Apple_Workout_Core_MetricsPublisher.elapsedTimeMetricsPublisher.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMR) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for Apple_Workout_Core_ElapsedTimeMetricsPublisher(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__elapsedTimeMetricsPublisher;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v16 + v17, v8, &_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    *v14 = 0;
    UnknownStorage.init()();
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v8, &_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMR);
    }
  }

  else
  {
    outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v8, v14, type metadata accessor for Apple_Workout_Core_ElapsedTimeMetricsPublisher);
  }

  return Apple_Workout_Core_MetricsPublisher.elapsedTimeMetricsPublisher.modify;
}

uint64_t Apple_Workout_Core_MetricsPublisher.activitySummaryMetricsPublisher.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSgMR);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v14 - v5;
  v7 = *(v1 + *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20));
  v8 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__activitySummaryMetricsPublisher;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v7 + v8, v6, &_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSgMR);
  v9 = type metadata accessor for Apple_Workout_Core_ActivitySummaryMetricsPublisher(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v6, a1, type metadata accessor for Apple_Workout_Core_ActivitySummaryMetricsPublisher);
  }

  *a1 = 0;
  UnknownStorage.init()();
  v11 = *(v9 + 24);
  v12 = type metadata accessor for Apple_Workout_Core_HKActivitySummary(0);
  (*(*(v12 - 8) + 56))(&a1[v11], 1, 1, v12);
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v6, &_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSgMR);
  }

  return result;
}

uint64_t key path getter for Apple_Workout_Core_MetricsPublisher.activitySummaryMetricsPublisher : Apple_Workout_Core_MetricsPublisher@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v15 - v6;
  v8 = *(a1 + *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20));
  v9 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__activitySummaryMetricsPublisher;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v8 + v9, v7, &_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSgMR);
  v10 = type metadata accessor for Apple_Workout_Core_ActivitySummaryMetricsPublisher(0);
  v11 = *(*(v10 - 8) + 48);
  if (v11(v7, 1, v10) != 1)
  {
    return outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v7, a2, type metadata accessor for Apple_Workout_Core_ActivitySummaryMetricsPublisher);
  }

  *a2 = 0;
  UnknownStorage.init()();
  v12 = *(v10 + 24);
  v13 = type metadata accessor for Apple_Workout_Core_HKActivitySummary(0);
  (*(*(v13 - 8) + 56))(&a2[v12], 1, 1, v13);
  result = (v11)(v7, 1, v10);
  if (result != 1)
  {
    return outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v7, &_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSgMR);
  }

  return result;
}

uint64_t key path setter for Apple_Workout_Core_MetricsPublisher.activitySummaryMetricsPublisher : Apple_Workout_Core_MetricsPublisher(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v18 - v6;
  v8 = type metadata accessor for Apple_Workout_Core_ActivitySummaryMetricsPublisher(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(a1, v12, type metadata accessor for Apple_Workout_Core_ActivitySummaryMetricsPublisher);
  v13 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *(a2 + v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    swift_allocObject();
    v15 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v15);
    *(a2 + v13) = v15;
  }

  outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v12, v7, type metadata accessor for Apple_Workout_Core_ActivitySummaryMetricsPublisher);
  (*(v9 + 56))(v7, 0, 1, v8);
  v16 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__activitySummaryMetricsPublisher;
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v7, v15 + v16, &_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSgMR);
  return swift_endAccess();
}

uint64_t Apple_Workout_Core_MetricsPublisher.activitySummaryMetricsPublisher.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v14 - v6;
  v8 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    swift_allocObject();
    v10 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v10);
    *(v2 + v8) = v10;
  }

  outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(a1, v7, type metadata accessor for Apple_Workout_Core_ActivitySummaryMetricsPublisher);
  v11 = type metadata accessor for Apple_Workout_Core_ActivitySummaryMetricsPublisher(0);
  (*(*(v11 - 8) + 56))(v7, 0, 1, v11);
  v12 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__activitySummaryMetricsPublisher;
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v7, v10 + v12, &_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSgMR);
  return swift_endAccess();
}

void (*Apple_Workout_Core_MetricsPublisher.activitySummaryMetricsPublisher.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSgMR) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for Apple_Workout_Core_ActivitySummaryMetricsPublisher(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__activitySummaryMetricsPublisher;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v16 + v17, v8, &_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    *v14 = 0;
    UnknownStorage.init()();
    v19 = *(v9 + 24);
    v20 = type metadata accessor for Apple_Workout_Core_HKActivitySummary(0);
    (*(*(v20 - 8) + 56))(&v14[v19], 1, 1, v20);
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v8, &_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSgMR);
    }
  }

  else
  {
    outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v8, v14, type metadata accessor for Apple_Workout_Core_ActivitySummaryMetricsPublisher);
  }

  return Apple_Workout_Core_MetricsPublisher.activitySummaryMetricsPublisher.modify;
}

void Apple_Workout_Core_MetricsPublisher.elapsedTimeMetricsPublisher.modify(uint64_t *a1, char a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v8 = *a1;
  v9 = *(*a1 + 128);
  if (a2)
  {
    v10 = *(v8 + 72);
    outlined init with copy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(*(v8 + 120), *(v8 + 112), a3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(v10 + v9);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v13 = *(v8 + 128);
      v14 = *(v8 + 72);
      type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
      swift_allocObject();
      v12 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v12);
      *(v14 + v13) = v12;
    }

    v16 = *(v8 + 112);
    v15 = *(v8 + 120);
    v17 = *(v8 + 96);
    v18 = *(v8 + 104);
    v20 = *(v8 + 80);
    v19 = *(v8 + 88);
    outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v16, v20, a3);
    (*(v18 + 56))(v20, 0, 1, v17);
    v21 = *a4;
    swift_beginAccess();
    outlined assign with take of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v20, v12 + v21, a5, a6);
    swift_endAccess();
    outlined destroy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v15, a3);
  }

  else
  {
    v22 = *(v8 + 72);
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v24 = *(v22 + v9);
    if ((v23 & 1) == 0)
    {
      v25 = *(v8 + 128);
      v26 = *(v8 + 72);
      type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
      swift_allocObject();
      v24 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v24);
      *(v26 + v25) = v24;
    }

    v16 = *(v8 + 112);
    v15 = *(v8 + 120);
    v27 = *(v8 + 96);
    v28 = *(v8 + 104);
    v20 = *(v8 + 80);
    v19 = *(v8 + 88);
    outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v15, v20, a3);
    (*(v28 + 56))(v20, 0, 1, v27);
    v29 = *a4;
    swift_beginAccess();
    outlined assign with take of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v20, v24 + v29, a5, a6);
    swift_endAccess();
  }

  free(v15);
  free(v16);
  free(v19);
  free(v20);

  free(v8);
}

uint64_t Apple_Workout_Core_MetricsPublisher.heartRateMetricsPublisher.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B26_HeartRateMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_HeartRateMetricsPublisherVSgMR);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v17 - v5;
  v7 = *(v1 + *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20));
  v8 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__heartRateMetricsPublisher;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v7 + v8, v6, &_s11WorkoutCore06Apple_a1_B26_HeartRateMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_HeartRateMetricsPublisherVSgMR);
  v9 = type metadata accessor for Apple_Workout_Core_HeartRateMetricsPublisher(0);
  v10 = *(*(v9 - 1) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v6, a1, type metadata accessor for Apple_Workout_Core_HeartRateMetricsPublisher);
  }

  *a1 = 0;
  *(a1 + 8) = 1;
  UnknownStorage.init()();
  v11 = a1 + v9[7];
  *v11 = 0;
  *(v11 + 8) = 1;
  v12 = a1 + v9[8];
  *v12 = 0;
  *(v12 + 8) = 1;
  v13 = a1 + v9[9];
  *v13 = 0;
  *(v13 + 8) = 1;
  v14 = v9[10];
  v15 = type metadata accessor for Apple_Workout_Core_LiveZones(0);
  (*(*(v15 - 8) + 56))(a1 + v14, 1, 1, v15);
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v6, &_s11WorkoutCore06Apple_a1_B26_HeartRateMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_HeartRateMetricsPublisherVSgMR);
  }

  return result;
}

uint64_t key path setter for Apple_Workout_Core_MetricsPublisher.heartRateMetricsPublisher : Apple_Workout_Core_MetricsPublisher(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B26_HeartRateMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_HeartRateMetricsPublisherVSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v18 - v6;
  v8 = type metadata accessor for Apple_Workout_Core_HeartRateMetricsPublisher(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(a1, v12, type metadata accessor for Apple_Workout_Core_HeartRateMetricsPublisher);
  v13 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *(a2 + v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    swift_allocObject();
    v15 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v15);
    *(a2 + v13) = v15;
  }

  outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v12, v7, type metadata accessor for Apple_Workout_Core_HeartRateMetricsPublisher);
  (*(v9 + 56))(v7, 0, 1, v8);
  v16 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__heartRateMetricsPublisher;
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v7, v15 + v16, &_s11WorkoutCore06Apple_a1_B26_HeartRateMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_HeartRateMetricsPublisherVSgMR);
  return swift_endAccess();
}

uint64_t Apple_Workout_Core_MetricsPublisher.heartRateMetricsPublisher.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B26_HeartRateMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_HeartRateMetricsPublisherVSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v14 - v6;
  v8 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    swift_allocObject();
    v10 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v10);
    *(v2 + v8) = v10;
  }

  outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(a1, v7, type metadata accessor for Apple_Workout_Core_HeartRateMetricsPublisher);
  v11 = type metadata accessor for Apple_Workout_Core_HeartRateMetricsPublisher(0);
  (*(*(v11 - 8) + 56))(v7, 0, 1, v11);
  v12 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__heartRateMetricsPublisher;
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v7, v10 + v12, &_s11WorkoutCore06Apple_a1_B26_HeartRateMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_HeartRateMetricsPublisherVSgMR);
  return swift_endAccess();
}

void (*Apple_Workout_Core_MetricsPublisher.heartRateMetricsPublisher.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B26_HeartRateMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_HeartRateMetricsPublisherVSgMR) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for Apple_Workout_Core_HeartRateMetricsPublisher(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__heartRateMetricsPublisher;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v16 + v17, v8, &_s11WorkoutCore06Apple_a1_B26_HeartRateMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_HeartRateMetricsPublisherVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 1;
    UnknownStorage.init()();
    v19 = v14 + v9[7];
    *v19 = 0;
    *(v19 + 8) = 1;
    v20 = v14 + v9[8];
    *v20 = 0;
    *(v20 + 8) = 1;
    v21 = v14 + v9[9];
    *v21 = 0;
    *(v21 + 8) = 1;
    v22 = v9[10];
    v23 = type metadata accessor for Apple_Workout_Core_LiveZones(0);
    (*(*(v23 - 8) + 56))(v14 + v22, 1, 1, v23);
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v8, &_s11WorkoutCore06Apple_a1_B26_HeartRateMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_HeartRateMetricsPublisherVSgMR);
    }
  }

  else
  {
    outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v8, v14, type metadata accessor for Apple_Workout_Core_HeartRateMetricsPublisher);
  }

  return Apple_Workout_Core_MetricsPublisher.heartRateMetricsPublisher.modify;
}

uint64_t Apple_Workout_Core_MetricsPublisher.energyMetricsPublisher.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMR);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v12 - v5;
  v7 = *(v1 + *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20));
  v8 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__energyMetricsPublisher;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v7 + v8, v6, &_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMR);
  v9 = type metadata accessor for Apple_Workout_Core_EnergyMetricsPublisher(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v6, a1, type metadata accessor for Apple_Workout_Core_EnergyMetricsPublisher);
  }

  *a1 = 0;
  a1[1] = 0;
  UnknownStorage.init()();
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v6, &_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMR);
  }

  return result;
}

uint64_t key path getter for Apple_Workout_Core_MetricsPublisher.energyMetricsPublisher : Apple_Workout_Core_MetricsPublisher@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v13 - v6;
  v8 = *(a1 + *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20));
  v9 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__energyMetricsPublisher;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v8 + v9, v7, &_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMR);
  v10 = type metadata accessor for Apple_Workout_Core_EnergyMetricsPublisher(0);
  v11 = *(*(v10 - 8) + 48);
  if (v11(v7, 1, v10) != 1)
  {
    return outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v7, a2, type metadata accessor for Apple_Workout_Core_EnergyMetricsPublisher);
  }

  *a2 = 0;
  a2[1] = 0;
  UnknownStorage.init()();
  result = (v11)(v7, 1, v10);
  if (result != 1)
  {
    return outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v7, &_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMR);
  }

  return result;
}

uint64_t key path setter for Apple_Workout_Core_MetricsPublisher.energyMetricsPublisher : Apple_Workout_Core_MetricsPublisher(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v18 - v6;
  v8 = type metadata accessor for Apple_Workout_Core_EnergyMetricsPublisher(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(a1, v12, type metadata accessor for Apple_Workout_Core_EnergyMetricsPublisher);
  v13 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *(a2 + v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    swift_allocObject();
    v15 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v15);
    *(a2 + v13) = v15;
  }

  outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v12, v7, type metadata accessor for Apple_Workout_Core_EnergyMetricsPublisher);
  (*(v9 + 56))(v7, 0, 1, v8);
  v16 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__energyMetricsPublisher;
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v7, v15 + v16, &_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMR);
  return swift_endAccess();
}

uint64_t Apple_Workout_Core_MetricsPublisher.energyMetricsPublisher.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v14 - v6;
  v8 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    swift_allocObject();
    v10 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v10);
    *(v2 + v8) = v10;
  }

  outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(a1, v7, type metadata accessor for Apple_Workout_Core_EnergyMetricsPublisher);
  v11 = type metadata accessor for Apple_Workout_Core_EnergyMetricsPublisher(0);
  (*(*(v11 - 8) + 56))(v7, 0, 1, v11);
  v12 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__energyMetricsPublisher;
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v7, v10 + v12, &_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMR);
  return swift_endAccess();
}

void (*Apple_Workout_Core_MetricsPublisher.energyMetricsPublisher.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMR) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for Apple_Workout_Core_EnergyMetricsPublisher(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__energyMetricsPublisher;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v16 + v17, v8, &_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    *v14 = 0;
    v14[1] = 0;
    UnknownStorage.init()();
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v8, &_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMR);
    }
  }

  else
  {
    outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v8, v14, type metadata accessor for Apple_Workout_Core_EnergyMetricsPublisher);
  }

  return Apple_Workout_Core_MetricsPublisher.energyMetricsPublisher.modify;
}

void (*Apple_Workout_Core_MetricsPublisher.distance.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__distance;
  swift_beginAccess();
  *(v4 + 72) = *(v6 + v7);
  return Apple_Workout_Core_MetricsPublisher.distance.modify;
}

double Apple_Workout_Core_MetricsPublisher.distance.getter(uint64_t *a1)
{
  v3 = *(v1 + *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20));
  v4 = *a1;
  swift_beginAccess();
  return *(v3 + v4);
}

void key path setter for Apple_Workout_Core_MetricsPublisher.distance : Apple_Workout_Core_MetricsPublisher(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v7 = *a1;
  v8 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(a2 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    swift_allocObject();
    v10 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v10);
    *(a2 + v8) = v10;
  }

  v11 = *a5;
  swift_beginAccess();
  *(v10 + v11) = v7;
}

void Apple_Workout_Core_MetricsPublisher.distance.setter(uint64_t *a1, double a2)
{
  v4 = v2;
  v6 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    swift_allocObject();
    v8 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v8);
    *(v4 + v6) = v8;
  }

  v9 = *a1;
  swift_beginAccess();
  *(v8 + v9) = a2;
}

void (*Apple_Workout_Core_MetricsPublisher.secondsAheadOfPacer.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__secondsAheadOfPacer;
  swift_beginAccess();
  *(v4 + 72) = *(v6 + v7);
  return Apple_Workout_Core_MetricsPublisher.secondsAheadOfPacer.modify;
}

void Apple_Workout_Core_MetricsPublisher.distance.modify(uint64_t *a1, char a2, uint64_t *a3)
{
  v4 = *a1;
  v5 = *(*a1 + 72);
  v6 = *(*a1 + 88);
  v7 = *(*a1 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v7 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = *(v4 + 88);
    v11 = *(v4 + 80);
    type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    swift_allocObject();
    v9 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v9);
    *(v11 + v10) = v9;
  }

  v12 = *a3;
  swift_beginAccess();
  *(v9 + v12) = v5;

  free(v4);
}

void (*Apple_Workout_Core_MetricsPublisher.currentPace.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__currentPace;
  swift_beginAccess();
  *(v4 + 72) = *(v6 + v7);
  return Apple_Workout_Core_MetricsPublisher.currentPace.modify;
}

void (*Apple_Workout_Core_MetricsPublisher.averagePace.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__averagePace;
  swift_beginAccess();
  *(v4 + 72) = *(v6 + v7);
  return Apple_Workout_Core_MetricsPublisher.averagePace.modify;
}

void (*Apple_Workout_Core_MetricsPublisher.rollingPace.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__rollingPace;
  swift_beginAccess();
  *(v4 + 72) = *(v6 + v7);
  return Apple_Workout_Core_MetricsPublisher.rollingPace.modify;
}

void (*Apple_Workout_Core_MetricsPublisher.requiredPace.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__requiredPace;
  swift_beginAccess();
  *(v4 + 72) = *(v6 + v7);
  return Apple_Workout_Core_MetricsPublisher.requiredPace.modify;
}

void (*Apple_Workout_Core_MetricsPublisher.fastestPace.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__fastestPace;
  swift_beginAccess();
  *(v4 + 72) = *(v6 + v7);
  return Apple_Workout_Core_MetricsPublisher.fastestPace.modify;
}

uint64_t Apple_Workout_Core_MetricsPublisher.lapsMetricsPublisher.getter@<X0>(_DWORD *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMR);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v12 - v5;
  v7 = *(v1 + *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20));
  v8 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__lapsMetricsPublisher;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v7 + v8, v6, &_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMR);
  v9 = type metadata accessor for Apple_Workout_Core_LapsMetricsPublisher(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v6, a1, type metadata accessor for Apple_Workout_Core_LapsMetricsPublisher);
  }

  *a1 = 0;
  UnknownStorage.init()();
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v6, &_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMR);
  }

  return result;
}

uint64_t key path getter for Apple_Workout_Core_MetricsPublisher.lapsMetricsPublisher : Apple_Workout_Core_MetricsPublisher@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v13 - v6;
  v8 = *(a1 + *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20));
  v9 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__lapsMetricsPublisher;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v8 + v9, v7, &_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMR);
  v10 = type metadata accessor for Apple_Workout_Core_LapsMetricsPublisher(0);
  v11 = *(*(v10 - 8) + 48);
  if (v11(v7, 1, v10) != 1)
  {
    return outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v7, a2, type metadata accessor for Apple_Workout_Core_LapsMetricsPublisher);
  }

  *a2 = 0;
  UnknownStorage.init()();
  result = (v11)(v7, 1, v10);
  if (result != 1)
  {
    return outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v7, &_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMR);
  }

  return result;
}

uint64_t key path setter for Apple_Workout_Core_MetricsPublisher.lapsMetricsPublisher : Apple_Workout_Core_MetricsPublisher(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v18 - v6;
  v8 = type metadata accessor for Apple_Workout_Core_LapsMetricsPublisher(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(a1, v12, type metadata accessor for Apple_Workout_Core_LapsMetricsPublisher);
  v13 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *(a2 + v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    swift_allocObject();
    v15 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v15);
    *(a2 + v13) = v15;
  }

  outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v12, v7, type metadata accessor for Apple_Workout_Core_LapsMetricsPublisher);
  (*(v9 + 56))(v7, 0, 1, v8);
  v16 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__lapsMetricsPublisher;
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v7, v15 + v16, &_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMR);
  return swift_endAccess();
}

uint64_t Apple_Workout_Core_MetricsPublisher.lapsMetricsPublisher.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v14 - v6;
  v8 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    swift_allocObject();
    v10 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v10);
    *(v2 + v8) = v10;
  }

  outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(a1, v7, type metadata accessor for Apple_Workout_Core_LapsMetricsPublisher);
  v11 = type metadata accessor for Apple_Workout_Core_LapsMetricsPublisher(0);
  (*(*(v11 - 8) + 56))(v7, 0, 1, v11);
  v12 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__lapsMetricsPublisher;
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v7, v10 + v12, &_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMR);
  return swift_endAccess();
}

void (*Apple_Workout_Core_MetricsPublisher.lapsMetricsPublisher.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMR) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for Apple_Workout_Core_LapsMetricsPublisher(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__lapsMetricsPublisher;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v16 + v17, v8, &_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    *v14 = 0;
    UnknownStorage.init()();
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v8, &_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMR);
    }
  }

  else
  {
    outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v8, v14, type metadata accessor for Apple_Workout_Core_LapsMetricsPublisher);
  }

  return Apple_Workout_Core_MetricsPublisher.lapsMetricsPublisher.modify;
}

void (*Apple_Workout_Core_MetricsPublisher.elevationGain.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__elevationGain;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return Apple_Workout_Core_MetricsPublisher.elevationGain.modify;
}

double Apple_Workout_Core_MetricsPublisher.elevationGain.getter(void *a1)
{
  v2 = *(v1 + *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20)) + *a1;
  swift_beginAccess();
  result = *v2;
  if (*(v2 + 8))
  {
    return 0.0;
  }

  return result;
}

void key path getter for Apple_Workout_Core_MetricsPublisher.elevationGain : Apple_Workout_Core_MetricsPublisher(uint64_t a1@<X0>, void *a2@<X3>, double *a3@<X8>)
{
  v4 = *(a1 + *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20)) + *a2;
  swift_beginAccess();
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a3 = v5;
}

void key path setter for Apple_Workout_Core_MetricsPublisher.elevationGain : Apple_Workout_Core_MetricsPublisher(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = *a1;
  v8 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(a2 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    swift_allocObject();
    v10 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v10);
    *(a2 + v8) = v10;
  }

  v11 = v10 + *a5;
  swift_beginAccess();
  *v11 = v7;
  *(v11 + 8) = 0;
}

void Apple_Workout_Core_MetricsPublisher.elevationGain.setter(void *a1, double a2)
{
  v4 = v2;
  v6 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    swift_allocObject();
    v8 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v8);
    *(v4 + v6) = v8;
  }

  v9 = v8 + *a1;
  swift_beginAccess();
  *v9 = a2;
  *(v9 + 8) = 0;
}

void (*Apple_Workout_Core_MetricsPublisher.currentElevation.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__currentElevation;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return Apple_Workout_Core_MetricsPublisher.currentElevation.modify;
}

void Apple_Workout_Core_MetricsPublisher.elevationGain.modify(uint64_t *a1, char a2, void *a3)
{
  v4 = *a1;
  v5 = *(*a1 + 72);
  v6 = *(*a1 + 88);
  v7 = *(*a1 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v7 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = *(v4 + 88);
    v11 = *(v4 + 80);
    type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    swift_allocObject();
    v9 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v9);
    *(v11 + v10) = v9;
  }

  v12 = v9 + *a3;
  swift_beginAccess();
  *v12 = v5;
  *(v12 + 8) = 0;

  free(v4);
}

BOOL Apple_Workout_Core_MetricsPublisher.hasElevationGain.getter(void *a1)
{
  v2 = *(v1 + *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20)) + *a1;
  swift_beginAccess();
  return (*(v2 + 8) & 1) == 0;
}

void Apple_Workout_Core_MetricsPublisher.clearElevationGain()(void *a1)
{
  v3 = v1;
  v4 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    swift_allocObject();
    v6 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v6);
    *(v3 + v4) = v6;
  }

  v7 = v6 + *a1;
  swift_beginAccess();
  *v7 = 0;
  *(v7 + 8) = 1;
}

double Apple_Workout_Core_MetricsPublisher.elevationChartData.getter()
{
  type metadata accessor for Apple_Workout_Core_MetricsPublisher(0);
  swift_beginAccess();

  return result;
}

double key path getter for Apple_Workout_Core_MetricsPublisher.elevationChartData : Apple_Workout_Core_MetricsPublisher@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20));
  v4 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__elevationChartData;
  swift_beginAccess();
  *a2 = *(v3 + v4);

  return result;
}

double key path setter for Apple_Workout_Core_MetricsPublisher.elevationChartData : Apple_Workout_Core_MetricsPublisher(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(a2 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    swift_allocObject();
    v6 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v6);
    *(a2 + v4) = v6;
  }

  v7 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__elevationChartData;
  swift_beginAccess();
  *(v6 + v7) = v3;

  return result;
}

double Apple_Workout_Core_MetricsPublisher.elevationChartData.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    swift_allocObject();
    v6 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v6);
    *(v2 + v4) = v6;
  }

  v7 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__elevationChartData;
  swift_beginAccess();
  *(v6 + v7) = a1;

  return result;
}

void (*Apple_Workout_Core_MetricsPublisher.elevationChartData.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__elevationChartData;
  swift_beginAccess();
  *(v4 + 72) = *(v6 + v7);

  return Apple_Workout_Core_MetricsPublisher.elevationChartData.modify;
}

void Apple_Workout_Core_MetricsPublisher.elevationChartData.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 88);
  v5 = *(*a1 + 80);
  if (a2)
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v5 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 88);
      v9 = *(v2 + 80);
      type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
      swift_allocObject();
      v7 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v7);
      *(v9 + v8) = v7;
    }

    v10 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__elevationChartData;
    swift_beginAccess();
    *(v7 + v10) = v3;
  }

  else
  {
    v11 = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(v5 + v4);
    if ((v11 & 1) == 0)
    {
      v13 = *(v2 + 88);
      v14 = *(v2 + 80);
      type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
      swift_allocObject();
      v12 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v12);
      *(v14 + v13) = v12;
    }

    v15 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__elevationChartData;
    swift_beginAccess();
    *(v12 + v15) = v3;
  }

  free(v2);
}

uint64_t Apple_Workout_Core_MetricsPublisher.elevationChartUnit.getter()
{
  v1 = (*(v0 + *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20)) + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__elevationChartUnit);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

double key path getter for Apple_Workout_Core_MetricsPublisher.elevationChartUnit : Apple_Workout_Core_MetricsPublisher@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (*(a1 + *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20)) + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__elevationChartUnit);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;

  return result;
}

double key path setter for Apple_Workout_Core_MetricsPublisher.elevationChartUnit : Apple_Workout_Core_MetricsPublisher(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(a2 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    swift_allocObject();
    v7 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v7);
    *(a2 + v5) = v7;
  }

  v8 = (v7 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__elevationChartUnit);
  swift_beginAccess();
  *v8 = v4;
  v8[1] = v3;

  return result;
}

double Apple_Workout_Core_MetricsPublisher.elevationChartUnit.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    swift_allocObject();
    v8 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v8);
    *(v3 + v6) = v8;
  }

  v9 = (v8 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__elevationChartUnit);
  swift_beginAccess();
  *v9 = a1;
  v9[1] = a2;

  return result;
}

void (*Apple_Workout_Core_MetricsPublisher.elevationChartUnit.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  *(v4 + 96) = v5;
  v6 = (*(v1 + v5) + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__elevationChartUnit);
  swift_beginAccess();
  v7 = v6[1];
  *(v4 + 72) = *v6;
  *(v4 + 80) = v7;

  return Apple_Workout_Core_MetricsPublisher.elevationChartUnit.modify;
}

void Apple_Workout_Core_MetricsPublisher.elevationChartUnit.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 96);
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 88);
  if (a2)
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *(v6 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = *(v2 + 96);
      v10 = *(v2 + 88);
      type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
      swift_allocObject();
      v8 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v8);
      *(v10 + v9) = v8;
    }

    v11 = (v8 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__elevationChartUnit);
    swift_beginAccess();
    *v11 = v3;
    v11[1] = v5;
  }

  else
  {
    v12 = swift_isUniquelyReferenced_nonNull_native();
    v13 = *(v6 + v4);
    if ((v12 & 1) == 0)
    {
      v14 = *(v2 + 96);
      v15 = *(v2 + 88);
      type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
      swift_allocObject();
      v13 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v13);
      *(v15 + v14) = v13;
    }

    v16 = (v13 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__elevationChartUnit);
    swift_beginAccess();
    *v16 = v3;
    v16[1] = v5;
  }

  free(v2);
}

void (*Apple_Workout_Core_MetricsPublisher.currentCadence.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__currentCadence;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return Apple_Workout_Core_MetricsPublisher.currentCadence.modify;
}

void (*Apple_Workout_Core_MetricsPublisher.averageCadence.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__averageCadence;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return Apple_Workout_Core_MetricsPublisher.averageCadence.modify;
}

uint64_t Apple_Workout_Core_MetricsPublisher.powerMetricsPublisher.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B22_PowerMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B22_PowerMetricsPublisherVSgMR);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v18 - v5;
  v7 = *(v1 + *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20));
  v8 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__powerMetricsPublisher;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v7 + v8, v6, &_s11WorkoutCore06Apple_a1_B22_PowerMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B22_PowerMetricsPublisherVSgMR);
  v9 = type metadata accessor for Apple_Workout_Core_PowerMetricsPublisher(0);
  v10 = *(*(v9 - 1) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v6, a1, type metadata accessor for Apple_Workout_Core_PowerMetricsPublisher);
  }

  *a1 = 0;
  v11 = MEMORY[0x277D84F90];
  *(a1 + 8) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs5Int32V_SdTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  *(a1 + 16) = v11;
  UnknownStorage.init()();
  v12 = a1 + v9[8];
  *v12 = 0;
  *(v12 + 8) = 1;
  v13 = a1 + v9[9];
  *v13 = 0;
  *(v13 + 8) = 1;
  v14 = a1 + v9[10];
  *v14 = 0;
  *(v14 + 8) = 1;
  v15 = v9[11];
  v16 = type metadata accessor for Apple_Workout_Core_LiveZones(0);
  (*(*(v16 - 8) + 56))(a1 + v15, 1, 1, v16);
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v6, &_s11WorkoutCore06Apple_a1_B22_PowerMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B22_PowerMetricsPublisherVSgMR);
  }

  return result;
}

uint64_t key path setter for Apple_Workout_Core_MetricsPublisher.powerMetricsPublisher : Apple_Workout_Core_MetricsPublisher(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B22_PowerMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B22_PowerMetricsPublisherVSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v18 - v6;
  v8 = type metadata accessor for Apple_Workout_Core_PowerMetricsPublisher(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(a1, v12, type metadata accessor for Apple_Workout_Core_PowerMetricsPublisher);
  v13 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *(a2 + v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    swift_allocObject();
    v15 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v15);
    *(a2 + v13) = v15;
  }

  outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v12, v7, type metadata accessor for Apple_Workout_Core_PowerMetricsPublisher);
  (*(v9 + 56))(v7, 0, 1, v8);
  v16 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__powerMetricsPublisher;
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v7, v15 + v16, &_s11WorkoutCore06Apple_a1_B22_PowerMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B22_PowerMetricsPublisherVSgMR);
  return swift_endAccess();
}

uint64_t Apple_Workout_Core_MetricsPublisher.powerMetricsPublisher.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B22_PowerMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B22_PowerMetricsPublisherVSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v14 - v6;
  v8 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    swift_allocObject();
    v10 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v10);
    *(v2 + v8) = v10;
  }

  outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(a1, v7, type metadata accessor for Apple_Workout_Core_PowerMetricsPublisher);
  v11 = type metadata accessor for Apple_Workout_Core_PowerMetricsPublisher(0);
  (*(*(v11 - 8) + 56))(v7, 0, 1, v11);
  v12 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__powerMetricsPublisher;
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v7, v10 + v12, &_s11WorkoutCore06Apple_a1_B22_PowerMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B22_PowerMetricsPublisherVSgMR);
  return swift_endAccess();
}

void (*Apple_Workout_Core_MetricsPublisher.powerMetricsPublisher.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B22_PowerMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B22_PowerMetricsPublisherVSgMR) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for Apple_Workout_Core_PowerMetricsPublisher(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__powerMetricsPublisher;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v16 + v17, v8, &_s11WorkoutCore06Apple_a1_B22_PowerMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B22_PowerMetricsPublisherVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    *v14 = 0;
    v19 = MEMORY[0x277D84F90];
    *(v14 + 8) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs5Int32V_SdTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    *(v14 + 16) = v19;
    UnknownStorage.init()();
    v20 = v14 + v9[8];
    *v20 = 0;
    *(v20 + 8) = 1;
    v21 = v14 + v9[9];
    *v21 = 0;
    *(v21 + 8) = 1;
    v22 = v14 + v9[10];
    *v22 = 0;
    *(v22 + 8) = 1;
    v23 = v9[11];
    v24 = type metadata accessor for Apple_Workout_Core_LiveZones(0);
    (*(*(v24 - 8) + 56))(v14 + v23, 1, 1, v24);
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v8, &_s11WorkoutCore06Apple_a1_B22_PowerMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B22_PowerMetricsPublisherVSgMR);
    }
  }

  else
  {
    outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v8, v14, type metadata accessor for Apple_Workout_Core_PowerMetricsPublisher);
  }

  return Apple_Workout_Core_MetricsPublisher.powerMetricsPublisher.modify;
}

void (*Apple_Workout_Core_MetricsPublisher.flightsClimbed.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__flightsClimbed;
  swift_beginAccess();
  *(v4 + 72) = *(v6 + v7);
  return Apple_Workout_Core_MetricsPublisher.flightsClimbed.modify;
}

uint64_t Apple_Workout_Core_MetricsPublisher.workoutStatePublisher.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSgMR);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v14 - v5;
  v7 = *(v1 + *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20));
  v8 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__workoutStatePublisher;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v7 + v8, v6, &_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSgMR);
  v9 = type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v6, a1, type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher);
  }

  UnknownStorage.init()();
  v11 = *(v9 + 20);
  if (one-time initialization token for defaultInstance != -1)
  {
    swift_once();
  }

  *(a1 + v11) = static Apple_Workout_Core_WorkoutStatePublisher._StorageClass.defaultInstance;
  v12 = v10(v6, 1, v9);

  if (v12 != 1)
  {
    return outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v6, &_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSgMR);
  }

  return result;
}

uint64_t key path getter for Apple_Workout_Core_MetricsPublisher.workoutStatePublisher : Apple_Workout_Core_MetricsPublisher@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v15 - v6;
  v8 = *(a1 + *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20));
  v9 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__workoutStatePublisher;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v8 + v9, v7, &_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSgMR);
  v10 = type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0);
  v11 = *(*(v10 - 8) + 48);
  if (v11(v7, 1, v10) != 1)
  {
    return outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v7, a2, type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher);
  }

  UnknownStorage.init()();
  v12 = *(v10 + 20);
  if (one-time initialization token for defaultInstance != -1)
  {
    swift_once();
  }

  *(a2 + v12) = static Apple_Workout_Core_WorkoutStatePublisher._StorageClass.defaultInstance;
  v13 = v11(v7, 1, v10);

  if (v13 != 1)
  {
    return outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v7, &_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSgMR);
  }

  return result;
}

uint64_t key path setter for Apple_Workout_Core_MetricsPublisher.workoutStatePublisher : Apple_Workout_Core_MetricsPublisher(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v18 - v6;
  v8 = type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(a1, v12, type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher);
  v13 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *(a2 + v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    swift_allocObject();
    v15 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v15);
    *(a2 + v13) = v15;
  }

  outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v12, v7, type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher);
  (*(v9 + 56))(v7, 0, 1, v8);
  v16 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__workoutStatePublisher;
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v7, v15 + v16, &_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSgMR);
  return swift_endAccess();
}

uint64_t Apple_Workout_Core_MetricsPublisher.workoutStatePublisher.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v14 - v6;
  v8 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    swift_allocObject();
    v10 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v10);
    *(v2 + v8) = v10;
  }

  outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(a1, v7, type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher);
  v11 = type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0);
  (*(*(v11 - 8) + 56))(v7, 0, 1, v11);
  v12 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__workoutStatePublisher;
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v7, v10 + v12, &_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSgMR);
  return swift_endAccess();
}

void (*Apple_Workout_Core_MetricsPublisher.workoutStatePublisher.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSgMR) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__workoutStatePublisher;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v16 + v17, v8, &_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v19 = *(v9 + 20);
    if (one-time initialization token for defaultInstance != -1)
    {
      swift_once();
    }

    *(v14 + v19) = static Apple_Workout_Core_WorkoutStatePublisher._StorageClass.defaultInstance;
    v20 = v18(v8, 1, v9);

    if (v20 != 1)
    {
      outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v8, &_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSgMR);
    }
  }

  else
  {
    outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v8, v14, type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher);
  }

  return Apple_Workout_Core_MetricsPublisher.workoutStatePublisher.modify;
}

uint64_t Apple_Workout_Core_MetricsPublisher.intervalsMetricsPublisher.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B26_IntervalsMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_IntervalsMetricsPublisherVSgMR);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v19 - v5;
  v7 = *(v1 + *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20));
  v8 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__intervalsMetricsPublisher;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v7 + v8, v6, &_s11WorkoutCore06Apple_a1_B26_IntervalsMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_IntervalsMetricsPublisherVSgMR);
  v9 = type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher(0);
  v10 = *(*(v9 - 1) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v6, a1, type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher);
  }

  *(a1 + 60) = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  UnknownStorage.init()();
  v11 = v9[15];
  v12 = type metadata accessor for Apple_Workout_Core_WorkoutStep(0);
  v13 = *(*(v12 - 8) + 56);
  v13(a1 + v11, 1, 1, v12);
  v13(a1 + v9[16], 1, 1, v12);
  v14 = a1 + v9[17];
  *v14 = 0;
  v14[8] = 1;
  v15 = a1 + v9[18];
  *v15 = 0;
  v15[8] = 1;
  v16 = a1 + v9[19];
  *v16 = 0;
  v16[4] = 1;
  v17 = a1 + v9[20];
  *v17 = 0;
  v17[8] = 1;
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v6, &_s11WorkoutCore06Apple_a1_B26_IntervalsMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_IntervalsMetricsPublisherVSgMR);
  }

  return result;
}

uint64_t key path setter for Apple_Workout_Core_MetricsPublisher.intervalsMetricsPublisher : Apple_Workout_Core_MetricsPublisher(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B26_IntervalsMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_IntervalsMetricsPublisherVSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v18 - v6;
  v8 = type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(a1, v12, type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher);
  v13 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *(a2 + v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    swift_allocObject();
    v15 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v15);
    *(a2 + v13) = v15;
  }

  outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v12, v7, type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher);
  (*(v9 + 56))(v7, 0, 1, v8);
  v16 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__intervalsMetricsPublisher;
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v7, v15 + v16, &_s11WorkoutCore06Apple_a1_B26_IntervalsMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_IntervalsMetricsPublisherVSgMR);
  return swift_endAccess();
}

uint64_t Apple_Workout_Core_MetricsPublisher.intervalsMetricsPublisher.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B26_IntervalsMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_IntervalsMetricsPublisherVSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v14 - v6;
  v8 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    swift_allocObject();
    v10 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v10);
    *(v2 + v8) = v10;
  }

  outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(a1, v7, type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher);
  v11 = type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher(0);
  (*(*(v11 - 8) + 56))(v7, 0, 1, v11);
  v12 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__intervalsMetricsPublisher;
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v7, v10 + v12, &_s11WorkoutCore06Apple_a1_B26_IntervalsMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_IntervalsMetricsPublisherVSgMR);
  return swift_endAccess();
}

uint64_t (*Apple_Workout_Core_MetricsPublisher.intervalsMetricsPublisher.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x60uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 48) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B26_IntervalsMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_IntervalsMetricsPublisherVSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v5[7] = v7;
  v8 = type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher(0);
  v5[8] = v8;
  v9 = *(v8 - 8);
  v5[9] = v9;
  v10 = *(v9 + 64);
  if (v3)
  {
    v5[10] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v5[10] = malloc(*(v9 + 64));
    v11 = malloc(v10);
  }

  v5[11] = v11;
  Apple_Workout_Core_MetricsPublisher.intervalsMetricsPublisher.getter(v11);
  return Apple_Workout_Core_MetricsPublisher.intervalsMetricsPublisher.modify;
}

void Apple_Workout_Core_MetricsPublisher.intervalsMetricsPublisher.modify(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2[6];
    outlined init with copy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v2[11], v2[10], type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher);
    v4 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v3 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
      swift_allocObject();
      v6 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v6);
      *(v3 + v4) = v6;
    }

    v8 = v2[10];
    v7 = v2[11];
    v9 = v2[8];
    v10 = v2[9];
    v11 = v2[7];
    outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v8, v11, type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher);
    (*(v10 + 56))(v11, 0, 1, v9);
    v12 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__intervalsMetricsPublisher;
    swift_beginAccess();
    outlined assign with take of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v11, v6 + v12, &_s11WorkoutCore06Apple_a1_B26_IntervalsMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_IntervalsMetricsPublisherVSgMR);
    swift_endAccess();
    outlined destroy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v7, type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher);
  }

  else
  {
    v13 = v2[6];
    v14 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
    v15 = swift_isUniquelyReferenced_nonNull_native();
    v16 = *(v13 + v14);
    if ((v15 & 1) == 0)
    {
      type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
      swift_allocObject();
      v16 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v16);
      *(v13 + v14) = v16;
    }

    v8 = v2[10];
    v7 = v2[11];
    v17 = v2[8];
    v18 = v2[9];
    v11 = v2[7];
    outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v7, v11, type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher);
    (*(v18 + 56))(v11, 0, 1, v17);
    v19 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__intervalsMetricsPublisher;
    swift_beginAccess();
    outlined assign with take of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v11, v16 + v19, &_s11WorkoutCore06Apple_a1_B26_IntervalsMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_IntervalsMetricsPublisherVSgMR);
    swift_endAccess();
  }

  free(v7);
  free(v8);
  free(v11);

  free(v2);
}

uint64_t Apple_Workout_Core_MetricsPublisher.multisportMetricsPublisher.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSgMR);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v14 - v5;
  v7 = *(v1 + *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20));
  v8 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__multisportMetricsPublisher;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v7 + v8, v6, &_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSgMR);
  v9 = type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v6, a1, type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher);
  }

  UnknownStorage.init()();
  v11 = *(v9 + 20);
  if (one-time initialization token for defaultInstance != -1)
  {
    swift_once();
  }

  *(a1 + v11) = static Apple_Workout_Core_MultiSportMetricsPublisher._StorageClass.defaultInstance;
  v12 = v10(v6, 1, v9);

  if (v12 != 1)
  {
    return outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v6, &_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSgMR);
  }

  return result;
}

uint64_t key path getter for Apple_Workout_Core_MetricsPublisher.multisportMetricsPublisher : Apple_Workout_Core_MetricsPublisher@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v15 - v6;
  v8 = *(a1 + *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20));
  v9 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__multisportMetricsPublisher;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v8 + v9, v7, &_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSgMR);
  v10 = type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher(0);
  v11 = *(*(v10 - 8) + 48);
  if (v11(v7, 1, v10) != 1)
  {
    return outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v7, a2, type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher);
  }

  UnknownStorage.init()();
  v12 = *(v10 + 20);
  if (one-time initialization token for defaultInstance != -1)
  {
    swift_once();
  }

  *(a2 + v12) = static Apple_Workout_Core_MultiSportMetricsPublisher._StorageClass.defaultInstance;
  v13 = v11(v7, 1, v10);

  if (v13 != 1)
  {
    return outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v7, &_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSgMR);
  }

  return result;
}

uint64_t key path setter for Apple_Workout_Core_MetricsPublisher.multisportMetricsPublisher : Apple_Workout_Core_MetricsPublisher(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v18 - v6;
  v8 = type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(a1, v12, type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher);
  v13 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *(a2 + v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    swift_allocObject();
    v15 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v15);
    *(a2 + v13) = v15;
  }

  outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v12, v7, type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher);
  (*(v9 + 56))(v7, 0, 1, v8);
  v16 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__multisportMetricsPublisher;
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v7, v15 + v16, &_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSgMR);
  return swift_endAccess();
}

uint64_t Apple_Workout_Core_MetricsPublisher.multisportMetricsPublisher.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v14 - v6;
  v8 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    swift_allocObject();
    v10 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v10);
    *(v2 + v8) = v10;
  }

  outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(a1, v7, type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher);
  v11 = type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher(0);
  (*(*(v11 - 8) + 56))(v7, 0, 1, v11);
  v12 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__multisportMetricsPublisher;
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v7, v10 + v12, &_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSgMR);
  return swift_endAccess();
}

void (*Apple_Workout_Core_MetricsPublisher.multisportMetricsPublisher.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSgMR) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__multisportMetricsPublisher;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v16 + v17, v8, &_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v19 = *(v9 + 20);
    if (one-time initialization token for defaultInstance != -1)
    {
      swift_once();
    }

    *(v14 + v19) = static Apple_Workout_Core_MultiSportMetricsPublisher._StorageClass.defaultInstance;
    v20 = v18(v8, 1, v9);

    if (v20 != 1)
    {
      outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v8, &_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSgMR);
    }
  }

  else
  {
    outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v8, v14, type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher);
  }

  return Apple_Workout_Core_MetricsPublisher.multisportMetricsPublisher.modify;
}

void (*Apple_Workout_Core_MetricsPublisher.distanceGoalFinishTime.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__distanceGoalFinishTime;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return Apple_Workout_Core_MetricsPublisher.distanceGoalFinishTime.modify;
}

void (*Apple_Workout_Core_MetricsPublisher.segmentIndex.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__segmentIndex;
  swift_beginAccess();
  *(v4 + 80) = *(v6 + v7);
  return Apple_Workout_Core_MetricsPublisher.segmentIndex.modify;
}

void (*Apple_Workout_Core_MetricsPublisher.segmentDuration.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__segmentDuration;
  swift_beginAccess();
  *(v4 + 72) = *(v6 + v7);
  return Apple_Workout_Core_MetricsPublisher.segmentDuration.modify;
}

void (*Apple_Workout_Core_MetricsPublisher.segmentDistance.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__segmentDistance;
  swift_beginAccess();
  *(v4 + 72) = *(v6 + v7);
  return Apple_Workout_Core_MetricsPublisher.segmentDistance.modify;
}

void (*Apple_Workout_Core_MetricsPublisher.segmentPace.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__segmentPace;
  swift_beginAccess();
  *(v4 + 72) = *(v6 + v7);
  return Apple_Workout_Core_MetricsPublisher.segmentPace.modify;
}

void (*Apple_Workout_Core_MetricsPublisher.segmentActiveEnergy.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__segmentActiveEnergy;
  swift_beginAccess();
  *(v4 + 72) = *(v6 + v7);
  return Apple_Workout_Core_MetricsPublisher.segmentActiveEnergy.modify;
}

void (*Apple_Workout_Core_MetricsPublisher.segmentTotalEnergy.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__segmentTotalEnergy;
  swift_beginAccess();
  *(v4 + 72) = *(v6 + v7);
  return Apple_Workout_Core_MetricsPublisher.segmentTotalEnergy.modify;
}

void (*Apple_Workout_Core_MetricsPublisher.segmentAveragePower.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__segmentAveragePower;
  swift_beginAccess();
  *(v4 + 72) = *(v6 + v7);
  return Apple_Workout_Core_MetricsPublisher.segmentAveragePower.modify;
}

uint64_t Apple_Workout_Core_MetricsPublisher.segmentIndex.getter(uint64_t *a1)
{
  v3 = *(v1 + *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20));
  v4 = *a1;
  swift_beginAccess();
  return *(v3 + v4);
}

void key path setter for Apple_Workout_Core_MetricsPublisher.segmentIndex : Apple_Workout_Core_MetricsPublisher(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v7 = *a1;
  v8 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(a2 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    swift_allocObject();
    v10 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v10);
    *(a2 + v8) = v10;
  }

  v11 = *a5;
  swift_beginAccess();
  *(v10 + v11) = v7;
}

void Apple_Workout_Core_MetricsPublisher.segmentIndex.setter(int a1, uint64_t *a2)
{
  v4 = v2;
  v6 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    swift_allocObject();
    v8 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v8);
    *(v4 + v6) = v8;
  }

  v9 = *a2;
  swift_beginAccess();
  *(v8 + v9) = a1;
}

void (*Apple_Workout_Core_MetricsPublisher.splitIndex.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__splitIndex;
  swift_beginAccess();
  *(v4 + 80) = *(v6 + v7);
  return Apple_Workout_Core_MetricsPublisher.splitIndex.modify;
}

void Apple_Workout_Core_MetricsPublisher.segmentIndex.modify(uint64_t *a1, char a2, uint64_t *a3)
{
  v4 = *a1;
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 84);
  v7 = *(*a1 + 72);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v7 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = *(v4 + 84);
    v11 = *(v4 + 72);
    type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    swift_allocObject();
    v9 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v9);
    *(v11 + v10) = v9;
  }

  v12 = *a3;
  swift_beginAccess();
  *(v9 + v12) = v5;

  free(v4);
}

void (*Apple_Workout_Core_MetricsPublisher.splitStartDate.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__splitStartDate;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return Apple_Workout_Core_MetricsPublisher.splitStartDate.modify;
}

void (*Apple_Workout_Core_MetricsPublisher.splitDuration.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__splitDuration;
  swift_beginAccess();
  *(v4 + 72) = *(v6 + v7);
  return Apple_Workout_Core_MetricsPublisher.splitDuration.modify;
}

void (*Apple_Workout_Core_MetricsPublisher.splitDistance.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__splitDistance;
  swift_beginAccess();
  *(v4 + 72) = *(v6 + v7);
  return Apple_Workout_Core_MetricsPublisher.splitDistance.modify;
}

void (*Apple_Workout_Core_MetricsPublisher.splitPace.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__splitPace;
  swift_beginAccess();
  *(v4 + 72) = *(v6 + v7);
  return Apple_Workout_Core_MetricsPublisher.splitPace.modify;
}

void (*Apple_Workout_Core_MetricsPublisher.splitAveragePower.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__splitAveragePower;
  swift_beginAccess();
  *(v4 + 72) = *(v6 + v7);
  return Apple_Workout_Core_MetricsPublisher.splitAveragePower.modify;
}

void (*Apple_Workout_Core_MetricsPublisher.timerRemainingTime.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__timerRemainingTime;
  swift_beginAccess();
  *(v4 + 72) = *(v6 + v7);
  return Apple_Workout_Core_MetricsPublisher.timerRemainingTime.modify;
}

void (*Apple_Workout_Core_MetricsPublisher.timerRemainingTimeWithOffset.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__timerRemainingTimeWithOffset;
  swift_beginAccess();
  *(v4 + 72) = *(v6 + v7);
  return Apple_Workout_Core_MetricsPublisher.timerRemainingTimeWithOffset.modify;
}

void (*Apple_Workout_Core_MetricsPublisher.timerDuration.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__timerDuration;
  swift_beginAccess();
  *(v4 + 72) = *(v6 + v7);
  return Apple_Workout_Core_MetricsPublisher.timerDuration.modify;
}

void (*Apple_Workout_Core_MetricsPublisher.currentStrideLength.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__currentStrideLength;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return Apple_Workout_Core_MetricsPublisher.currentStrideLength.modify;
}

void (*Apple_Workout_Core_MetricsPublisher.averageStrideLength.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__averageStrideLength;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return Apple_Workout_Core_MetricsPublisher.averageStrideLength.modify;
}

void (*Apple_Workout_Core_MetricsPublisher.currentVerticalOscillation.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__currentVerticalOscillation;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return Apple_Workout_Core_MetricsPublisher.currentVerticalOscillation.modify;
}

void (*Apple_Workout_Core_MetricsPublisher.averageVerticalOscillation.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__averageVerticalOscillation;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return Apple_Workout_Core_MetricsPublisher.averageVerticalOscillation.modify;
}

void (*Apple_Workout_Core_MetricsPublisher.currentGroundContactTime.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__currentGroundContactTime;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return Apple_Workout_Core_MetricsPublisher.currentGroundContactTime.modify;
}

void (*Apple_Workout_Core_MetricsPublisher.averageGroundContactTime.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__averageGroundContactTime;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return Apple_Workout_Core_MetricsPublisher.averageGroundContactTime.modify;
}

uint64_t Apple_Workout_Core_MetricsPublisher.platterPublisher.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMR);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v12 - v5;
  v7 = *(v1 + *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20));
  v8 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__platterPublisher;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v7 + v8, v6, &_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMR);
  v9 = type metadata accessor for Apple_Workout_Core_PlatterPublisher(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v6, a1, type metadata accessor for Apple_Workout_Core_PlatterPublisher);
  }

  *a1 = MEMORY[0x277D84F90];
  UnknownStorage.init()();
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v6, &_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMR);
  }

  return result;
}

uint64_t key path getter for Apple_Workout_Core_MetricsPublisher.platterPublisher : Apple_Workout_Core_MetricsPublisher@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v13 - v6;
  v8 = *(a1 + *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20));
  v9 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__platterPublisher;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v8 + v9, v7, &_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMR);
  v10 = type metadata accessor for Apple_Workout_Core_PlatterPublisher(0);
  v11 = *(*(v10 - 8) + 48);
  if (v11(v7, 1, v10) != 1)
  {
    return outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v7, a2, type metadata accessor for Apple_Workout_Core_PlatterPublisher);
  }

  *a2 = MEMORY[0x277D84F90];
  UnknownStorage.init()();
  result = (v11)(v7, 1, v10);
  if (result != 1)
  {
    return outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v7, &_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMR);
  }

  return result;
}

uint64_t key path setter for Apple_Workout_Core_MetricsPublisher.platterPublisher : Apple_Workout_Core_MetricsPublisher(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v18 - v6;
  v8 = type metadata accessor for Apple_Workout_Core_PlatterPublisher(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(a1, v12, type metadata accessor for Apple_Workout_Core_PlatterPublisher);
  v13 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *(a2 + v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    swift_allocObject();
    v15 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v15);
    *(a2 + v13) = v15;
  }

  outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v12, v7, type metadata accessor for Apple_Workout_Core_PlatterPublisher);
  (*(v9 + 56))(v7, 0, 1, v8);
  v16 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__platterPublisher;
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v7, v15 + v16, &_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMR);
  return swift_endAccess();
}

uint64_t Apple_Workout_Core_MetricsPublisher.platterPublisher.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v14 - v6;
  v8 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    swift_allocObject();
    v10 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v10);
    *(v2 + v8) = v10;
  }

  outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(a1, v7, type metadata accessor for Apple_Workout_Core_PlatterPublisher);
  v11 = type metadata accessor for Apple_Workout_Core_PlatterPublisher(0);
  (*(*(v11 - 8) + 56))(v7, 0, 1, v11);
  v12 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__platterPublisher;
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v7, v10 + v12, &_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMR);
  return swift_endAccess();
}

void (*Apple_Workout_Core_MetricsPublisher.platterPublisher.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMR) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for Apple_Workout_Core_PlatterPublisher(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__platterPublisher;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v16 + v17, v8, &_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    *v14 = MEMORY[0x277D84F90];
    UnknownStorage.init()();
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v8, &_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMR);
    }
  }

  else
  {
    outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v8, v14, type metadata accessor for Apple_Workout_Core_PlatterPublisher);
  }

  return Apple_Workout_Core_MetricsPublisher.platterPublisher.modify;
}

uint64_t Apple_Workout_Core_MetricsPublisher.goalPublisher.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSgMR);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v12 - v5;
  v7 = *(v1 + *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20));
  v8 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__goalPublisher;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v7 + v8, v6, &_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSgMR);
  v9 = type metadata accessor for Apple_Workout_Core_GoalPublisher(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v6, a1, type metadata accessor for Apple_Workout_Core_GoalPublisher);
  }

  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 12) = 0;
  UnknownStorage.init()();
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v6, &_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSgMR);
  }

  return result;
}

uint64_t key path getter for Apple_Workout_Core_MetricsPublisher.goalPublisher : Apple_Workout_Core_MetricsPublisher@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v13 - v6;
  v8 = *(a1 + *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20));
  v9 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__goalPublisher;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v8 + v9, v7, &_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSgMR);
  v10 = type metadata accessor for Apple_Workout_Core_GoalPublisher(0);
  v11 = *(*(v10 - 8) + 48);
  if (v11(v7, 1, v10) != 1)
  {
    return outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v7, a2, type metadata accessor for Apple_Workout_Core_GoalPublisher);
  }

  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 12) = 0;
  UnknownStorage.init()();
  result = (v11)(v7, 1, v10);
  if (result != 1)
  {
    return outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v7, &_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSgMR);
  }

  return result;
}

uint64_t key path setter for Apple_Workout_Core_MetricsPublisher.goalPublisher : Apple_Workout_Core_MetricsPublisher(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v18 - v6;
  v8 = type metadata accessor for Apple_Workout_Core_GoalPublisher(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(a1, v12, type metadata accessor for Apple_Workout_Core_GoalPublisher);
  v13 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *(a2 + v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    swift_allocObject();
    v15 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v15);
    *(a2 + v13) = v15;
  }

  outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v12, v7, type metadata accessor for Apple_Workout_Core_GoalPublisher);
  (*(v9 + 56))(v7, 0, 1, v8);
  v16 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__goalPublisher;
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v7, v15 + v16, &_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSgMR);
  return swift_endAccess();
}

uint64_t Apple_Workout_Core_MetricsPublisher.goalPublisher.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v14 - v6;
  v8 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    swift_allocObject();
    v10 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v10);
    *(v2 + v8) = v10;
  }

  outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(a1, v7, type metadata accessor for Apple_Workout_Core_GoalPublisher);
  v11 = type metadata accessor for Apple_Workout_Core_GoalPublisher(0);
  (*(*(v11 - 8) + 56))(v7, 0, 1, v11);
  v12 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__goalPublisher;
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v7, v10 + v12, &_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSgMR);
  return swift_endAccess();
}

void (*Apple_Workout_Core_MetricsPublisher.goalPublisher.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSgMR) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for Apple_Workout_Core_GoalPublisher(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__goalPublisher;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v16 + v17, v8, &_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 1;
    *(v14 + 12) = 0;
    UnknownStorage.init()();
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v8, &_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSgMR);
    }
  }

  else
  {
    outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v8, v14, type metadata accessor for Apple_Workout_Core_GoalPublisher);
  }

  return Apple_Workout_Core_MetricsPublisher.goalPublisher.modify;
}

uint64_t Apple_Workout_Core_MetricsPublisher.workoutIdentifierBytes.getter()
{
  v1 = (*(v0 + *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20)) + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__workoutIdentifierBytes);
  swift_beginAccess();
  v2 = *v1;
  v3 = v1[1];
  if (v3 >> 60 == 15)
  {
    v4 = 0;
  }

  else
  {
    v4 = *v1;
  }

  outlined copy of Data?(v2, v3);
  return v4;
}

uint64_t key path getter for Apple_Workout_Core_MetricsPublisher.workoutIdentifierBytes : Apple_Workout_Core_MetricsPublisher@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (*(a1 + *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20)) + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__workoutIdentifierBytes);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v5 >> 60 == 15)
  {
    v6 = 0;
  }

  else
  {
    v6 = *v3;
  }

  v7 = 0xC000000000000000;
  if (v5 >> 60 != 15)
  {
    v7 = v3[1];
  }

  *a2 = v6;
  a2[1] = v7;
  return outlined copy of Data?(v4, v5);
}

uint64_t key path setter for Apple_Workout_Core_MetricsPublisher.workoutIdentifierBytes : Apple_Workout_Core_MetricsPublisher(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  outlined copy of Data._Representation(v3, v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(a2 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    swift_allocObject();
    v7 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v7);
    *(a2 + v5) = v7;
  }

  v8 = (v7 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__workoutIdentifierBytes);
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[1];
  *v8 = v3;
  v8[1] = v4;
  return outlined consume of Data?(v9, v10);
}

uint64_t Apple_Workout_Core_MetricsPublisher.workoutIdentifierBytes.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    swift_allocObject();
    v8 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v8);
    *(v3 + v6) = v8;
  }

  v9 = (v8 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__workoutIdentifierBytes);
  swift_beginAccess();
  v10 = *v9;
  v11 = v9[1];
  *v9 = a1;
  v9[1] = a2;
  return outlined consume of Data?(v10, v11);
}

void (*Apple_Workout_Core_MetricsPublisher.workoutIdentifierBytes.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  *(v4 + 96) = v5;
  v6 = (*(v1 + v5) + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__workoutIdentifierBytes);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  if (v8 >> 60 == 15)
  {
    v9 = 0;
  }

  else
  {
    v9 = *v6;
  }

  v10 = 0xC000000000000000;
  if (v8 >> 60 != 15)
  {
    v10 = v6[1];
  }

  *(v4 + 72) = v9;
  *(v4 + 80) = v10;
  outlined copy of Data?(v7, v8);
  return Apple_Workout_Core_MetricsPublisher.workoutIdentifierBytes.modify;
}

void Apple_Workout_Core_MetricsPublisher.workoutIdentifierBytes.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 96);
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 88);
  if (a2)
  {
    outlined copy of Data._Representation(*(*a1 + 72), v5);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *(v6 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = *(v2 + 96);
      v10 = *(v2 + 88);
      type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
      swift_allocObject();
      v8 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v8);
      *(v10 + v9) = v8;
    }

    v11 = (v8 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__workoutIdentifierBytes);
    swift_beginAccess();
    v12 = *v11;
    v13 = v11[1];
    *v11 = v3;
    v11[1] = v5;
    outlined consume of Data?(v12, v13);
    outlined consume of Data._Representation(*(v2 + 72), *(v2 + 80));
  }

  else
  {
    v14 = swift_isUniquelyReferenced_nonNull_native();
    v15 = *(v6 + v4);
    if ((v14 & 1) == 0)
    {
      v16 = *(v2 + 96);
      v17 = *(v2 + 88);
      type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
      swift_allocObject();
      v15 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v15);
      *(v17 + v16) = v15;
    }

    v18 = (v15 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__workoutIdentifierBytes);
    swift_beginAccess();
    v19 = *v18;
    v20 = v18[1];
    *v18 = v3;
    v18[1] = v5;
    outlined consume of Data?(v19, v20);
  }

  free(v2);
}