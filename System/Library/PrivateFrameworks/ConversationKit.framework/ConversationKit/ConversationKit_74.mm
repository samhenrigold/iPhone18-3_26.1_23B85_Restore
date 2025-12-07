Swift::Void __swiftcall ConversationController.addContactToCurrentConversation(_:)(CNContact a1)
{
  OUTLINED_FUNCTION_50_2();
  v2 = v1;
  ConversationController.lookupActiveConversation()();
  if (v23[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A0_pMd, &_s15ConversationKit0A0_pMR);
    v3 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversation, 0x1E69D8B20);
    if (OUTLINED_FUNCTION_287_1(v3))
    {
      OUTLINED_FUNCTION_3_0();
      swift_beginAccess();
      v4 = OUTLINED_FUNCTION_209();
      OUTLINED_FUNCTION_202_3(v4, v5);
      OUTLINED_FUNCTION_2_7();
      OUTLINED_FUNCTION_21();
      MEMORY[0x1EEE9AC00](v6);
      OUTLINED_FUNCTION_58_9();
      v7 = OUTLINED_FUNCTION_153_4();
      v8(v7);
      v9 = OUTLINED_FUNCTION_33_0();
      v11 = v10(v9);
      v12 = OUTLINED_FUNCTION_209();
      v13(v12);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1BC4BAC30;
      *(inited + 32) = [objc_allocWithZone(MEMORY[0x1E69D8B80]) initWithContact_];
      if (specialized Array.count.getter())
      {
        _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo20TUConversationMemberC_Tt0g5(inited);
      }

      else
      {
        swift_setDeallocating();
        specialized _ContiguousArrayStorage.__deallocating_deinit();
      }

      OUTLINED_FUNCTION_172_1();
      type metadata accessor for NSObject(v16, v17, v18);
      OUTLINED_FUNCTION_1_65();
      OUTLINED_FUNCTION_172_1();
      lazy protocol witness table accessor for type TUConversationInvitationPreference and conformance NSObject(v19, v20, v21);
      OUTLINED_FUNCTION_139();
      Set._bridgeToObjectiveC()();
      OUTLINED_FUNCTION_173();

      [v11 addRemoteMembers:&lazy cache variable for type metadata for TUConversationMember toConversation:v22];

      goto LABEL_11;
    }
  }

  else
  {
    outlined destroy of CallControlsService?(v23, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
  }

  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
  }

  static os_log_type_t.error.getter();
  OUTLINED_FUNCTION_41_0();
  os_log(_:dso:log:type:_:)(v15);
LABEL_11:
  OUTLINED_FUNCTION_49();
}

void ConversationController.resetRecordingVideoMessage(completion:)()
{
  OUTLINED_FUNCTION_55();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  OUTLINED_FUNCTION_22(v3);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_140_0();
  v5 = v1[OBJC_IVAR____TtC15ConversationKit22ConversationController_mode];
  if (v5 == 1)
  {
    type metadata accessor for TaskPriority();
    OUTLINED_FUNCTION_10_0();
    __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
    OUTLINED_FUNCTION_20();
    v10 = swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for MainActor();
    OUTLINED_FUNCTION_182();

    v11 = OUTLINED_FUNCTION_45_1();
    outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v11, v12);
    v13 = static MainActor.shared.getter();
    OUTLINED_FUNCTION_45_26();
    v14 = swift_allocObject();
    v15 = MEMORY[0x1E69E85E0];
    v14[2] = v13;
    v14[3] = v15;
    v14[4] = v10;
    v14[5] = v2;
    v14[6] = v0;

    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();
  }

  else
  {
    if (one-time initialization token for videoMessaging != -1)
    {
      OUTLINED_FUNCTION_0_8(&one-time initialization token for videoMessaging);
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, &static Logger.videoMessaging);
    v17 = v1;
    v23 = Logger.logObject.getter();
    v18 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v23, v18))
    {
      v19 = OUTLINED_FUNCTION_42();
      v20 = OUTLINED_FUNCTION_23();
      v24 = v20;
      *v19 = 136315138;
      v21 = String.init<A>(reflecting:)();
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v24);
      OUTLINED_FUNCTION_366();

      *(v19 + 4) = v5;
      _os_log_impl(&dword_1BBC58000, v23, v18, "Invalid request to stop video message recording for mode %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);
      OUTLINED_FUNCTION_26();
      OUTLINED_FUNCTION_3_83();
    }

    else
    {
    }
  }
}

void ConversationController.discardRecordedVideoMessage()(uint64_t a1, uint64_t a2, const char *a3, ...)
{
  OUTLINED_FUNCTION_15_25();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  OUTLINED_FUNCTION_22(v5);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_101();
  v7 = v3[OBJC_IVAR____TtC15ConversationKit22ConversationController_mode];
  if (v7 == 1)
  {
    type metadata accessor for TaskPriority();
    OUTLINED_FUNCTION_10_0();
    __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
    type metadata accessor for MainActor();
    v12 = v3;
    v13 = static MainActor.shared.getter();
    OUTLINED_FUNCTION_37_0();
    v14 = swift_allocObject();
    v15 = MEMORY[0x1E69E85E0];
    v14[2] = v13;
    v14[3] = v15;
    v14[4] = v12;
    OUTLINED_FUNCTION_504();
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();
  }

  else
  {
    if (one-time initialization token for videoMessaging != -1)
    {
      OUTLINED_FUNCTION_0_8(&one-time initialization token for videoMessaging);
    }

    v16 = type metadata accessor for Logger();
    v17 = __swift_project_value_buffer(v16, &static Logger.videoMessaging);
    v18 = v3;
    OUTLINED_FUNCTION_413_0();
    v23 = Logger.logObject.getter();
    v19 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v23, v19))
    {
      OUTLINED_FUNCTION_42();
      v20 = OUTLINED_FUNCTION_21_4();
      v24 = v20;
      *v17 = 136315138;
      v21 = String.init<A>(reflecting:)();
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v24);
      OUTLINED_FUNCTION_412_0();

      *(v17 + 4) = v7;
      OUTLINED_FUNCTION_436(&dword_1BBC58000);
      __swift_destroy_boxed_opaque_existential_1(v20);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_26();
    }

    else
    {
    }
  }
}

void ConversationController.saveRecordedVideoMessage()(uint64_t a1, uint64_t a2, const char *a3, ...)
{
  OUTLINED_FUNCTION_15_25();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  OUTLINED_FUNCTION_22(v6);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_101();
  v8 = v3[OBJC_IVAR____TtC15ConversationKit22ConversationController_mode];
  if (v8 == 1)
  {
    type metadata accessor for TaskPriority();
    OUTLINED_FUNCTION_10_0();
    __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
    OUTLINED_FUNCTION_20();
    v13 = swift_allocObject();
    OUTLINED_FUNCTION_247_0(v13);
    swift_unknownObjectWeakInit();
    type metadata accessor for MainActor();
    OUTLINED_FUNCTION_28_0();

    static MainActor.shared.getter();
    OUTLINED_FUNCTION_246();
    OUTLINED_FUNCTION_37_0();
    v14 = swift_allocObject();
    v15 = MEMORY[0x1E69E85E0];
    v14[2] = v3;
    v14[3] = v15;
    v14[4] = a3;

    OUTLINED_FUNCTION_504();
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();
  }

  else
  {
    if (one-time initialization token for videoMessaging != -1)
    {
      OUTLINED_FUNCTION_0_8(&one-time initialization token for videoMessaging);
    }

    v16 = type metadata accessor for Logger();
    v17 = __swift_project_value_buffer(v16, &static Logger.videoMessaging);
    v18 = v3;
    OUTLINED_FUNCTION_413_0();
    v23 = Logger.logObject.getter();
    v19 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v23, v19))
    {
      OUTLINED_FUNCTION_42();
      v20 = OUTLINED_FUNCTION_21_4();
      v24 = v20;
      *v17 = 136315138;
      v21 = String.init<A>(reflecting:)();
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v24);
      OUTLINED_FUNCTION_412_0();

      *(v17 + 4) = v8;
      OUTLINED_FUNCTION_436(&dword_1BBC58000);
      __swift_destroy_boxed_opaque_existential_1(v20);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_26();
    }

    else
    {
    }
  }
}

void ConversationController.startCountdownToRecordVideoMessage(withDuration:countdownTicker:countdownStopped:)()
{
  OUTLINED_FUNCTION_29();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  OUTLINED_FUNCTION_22(v11);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_174();
  if (*(v0 + OBJC_IVAR____TtC15ConversationKit22ConversationController_mode) == 1)
  {
    type metadata accessor for TaskPriority();
    OUTLINED_FUNCTION_10_0();
    __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
    type metadata accessor for MainActor();
    v17 = v0;

    v18 = static MainActor.shared.getter();
    v19 = swift_allocObject();
    v20 = MEMORY[0x1E69E85E0];
    v19[2] = v18;
    v19[3] = v20;
    v19[4] = v17;
    v19[5] = v10;
    v19[6] = v8;
    v19[7] = v6;
    v19[8] = v4;
    v19[9] = v2;
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();

LABEL_7:
    OUTLINED_FUNCTION_30_0();
    return;
  }

  if (one-time initialization token for videoMessaging != -1)
  {
    OUTLINED_FUNCTION_0_8(&one-time initialization token for videoMessaging);
  }

  v21 = type metadata accessor for Logger();
  __swift_project_value_buffer(v21, &static Logger.videoMessaging);
  v22 = v0;
  v30 = Logger.logObject.getter();
  v23 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v30, v23))
  {
    v24 = OUTLINED_FUNCTION_42();
    v25 = OUTLINED_FUNCTION_23();
    v31 = v25;
    *v24 = 136315138;
    v26 = String.init<A>(reflecting:)();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, &v31);
    OUTLINED_FUNCTION_366();

    *(v24 + 4) = v8;
    _os_log_impl(&dword_1BBC58000, v30, v23, "Invalid request to prep for video message recording for mode %s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v25);
    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_3_83();

    goto LABEL_7;
  }

  OUTLINED_FUNCTION_30_0();
}

uint64_t one-time initialization function for DidChangeIsWaitingOnFirstFrameNotification()
{
  result = MEMORY[0x1BFB209B0](0xD00000000000002ALL, 0x80000001BC522E20);
  static ConversationController.DidChangeIsWaitingOnFirstFrameNotification = result;
  return result;
}

id static ConversationController.DidChangeIsWaitingOnFirstFrameNotification.getter()
{
  if (one-time initialization token for DidChangeIsWaitingOnFirstFrameNotification != -1)
  {
    OUTLINED_FUNCTION_293_1(&one-time initialization token for DidChangeIsWaitingOnFirstFrameNotification);
  }

  v1 = static ConversationController.DidChangeIsWaitingOnFirstFrameNotification;

  return v1;
}

Swift::Int ConversationController.ControlsMode.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1BFB22640](a1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ConversationController.ControlsMode(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  ConversationController.ControlsMode.hash(into:)(v4, v2);
  return Hasher._finalize()();
}

uint64_t ConversationController.localParticipant.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15ConversationKit22ConversationController_localParticipant;
  OUTLINED_FUNCTION_112_1();
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_1_186();
  return _s15ConversationKit11ParticipantVWOcTm_17(v1 + v3, a1);
}

double key path getter for ConversationController.remoteParticipants : ConversationController@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  OUTLINED_FUNCTION_112_1();
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  *a3 = *(v4 + v5);

  return result;
}

double ConversationController.remoteParticipants.setter(uint64_t a1, void *a2, uint64_t a3)
{
  OUTLINED_FUNCTION_296_0(a1, a2, a3);
  v6 = *(v3 + v4);
  *(v3 + v4) = a1;
  ConversationController.remoteParticipants.didset(v6);

  return result;
}

void ConversationController.remoteParticipants.didset(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit22ConversationController_remoteParticipants;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  if (*(*(v1 + v3) + 16) != *(a1 + 16))
  {
    v4 = (v1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationVisibleRemoteParticipantCountDidChange);
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    v5 = *v4;
    if (*v4)
    {

      v6 = *(ConversationController.visibleParticipants.getter() + 16);

      v5(v6);
      v7 = OUTLINED_FUNCTION_44_0();
      outlined consume of (@escaping @callee_guaranteed () -> ())?(v7, v8);
    }
  }
}

uint64_t ConversationController.carPlayDisconnectRequiresLocalVideoEnable.getter(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC15ConversationKit22ConversationController_carPlayDisconnectRequiresLocalVideoEnable;
  OUTLINED_FUNCTION_19_1(a1);
  return *(v1 + v2);
}

uint64_t ConversationController.screenSharingEndingRequiresLocalVideoEnable.getter(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC15ConversationKit22ConversationController_screenSharingEndingRequiresLocalVideoEnable;
  OUTLINED_FUNCTION_19_1(a1);
  return *(v1 + v2);
}

uint64_t ConversationController.showingInMiniWindowRequiresLocalVideoEnable.getter(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC15ConversationKit22ConversationController_showingInMiniWindowRequiresLocalVideoEnable;
  OUTLINED_FUNCTION_19_1(a1);
  return *(v1 + v2);
}

void ConversationController.momentsController.setter(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15ConversationKit22ConversationController____lazy_storage___momentsController);
  *(v1 + OBJC_IVAR____TtC15ConversationKit22ConversationController____lazy_storage___momentsController) = a1;
}

void (*ConversationController.momentsController.modify(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = ConversationController.momentsController.getter();
  return ConversationController.momentsController.modify;
}

void ConversationController.momentsController.modify(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC15ConversationKit22ConversationController____lazy_storage___momentsController);
  *(v1 + OBJC_IVAR____TtC15ConversationKit22ConversationController____lazy_storage___momentsController) = v2;
}

uint64_t ConversationController.conversationState.getter(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationState;
  OUTLINED_FUNCTION_19_1(a1);
  return *(v1 + v2);
}

void key path getter for ConversationController.conversationState : ConversationController(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationState;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t ConversationController.conversationState.modify()
{
  v1 = OUTLINED_FUNCTION_39_0();
  v2 = __swift_coroFrameAllocStub(v1);
  *(OUTLINED_FUNCTION_47(v2) + 32) = v0;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_501();
  return OUTLINED_FUNCTION_28_3();
}

uint64_t ConversationController.conversationLetMeInRequestState.getter(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationLetMeInRequestState;
  OUTLINED_FUNCTION_19_1(a1);
  return *(v1 + v2);
}

void key path getter for ConversationController.conversationLetMeInRequestState : ConversationController(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationLetMeInRequestState;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t ConversationController.conversationLetMeInRequestState.modify()
{
  v1 = OUTLINED_FUNCTION_39_0();
  v2 = __swift_coroFrameAllocStub(v1);
  *(OUTLINED_FUNCTION_47(v2) + 32) = v0;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_501();
  return OUTLINED_FUNCTION_28_3();
}

void ConversationController.conversationState.modify(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v3 = *a1;
  (a3)(*(*a1 + 24), a2);

  free(v3);
}

uint64_t ConversationController.ignoreLetMeInRequests.getter(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC15ConversationKit22ConversationController_ignoreLetMeInRequests;
  OUTLINED_FUNCTION_19_1(a1);
  return *(v1 + v2);
}

void key path getter for ConversationController.ignoreLetMeInRequests : ConversationController(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15ConversationKit22ConversationController_ignoreLetMeInRequests;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

void ConversationController.ignoreLetMeInRequests.didset(char a1)
{
  v2 = a1 & 1;
  v3 = OBJC_IVAR____TtC15ConversationKit22ConversationController_ignoreLetMeInRequests;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (v4 != v2)
  {
    v5 = v1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationIgnoreLetMeInRequestsDidChange;
    swift_beginAccess();
    v6 = *v5;
    if (*v5)
    {
      v7 = *(v5 + 8);

      v6(v4);
      outlined consume of (@escaping @callee_guaranteed () -> ())?(v6, v7);
    }
  }
}

uint64_t ConversationController.ignoreLetMeInRequests.modify()
{
  v0 = OUTLINED_FUNCTION_39_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_18_7(v1);
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_36_4();
  return OUTLINED_FUNCTION_28_3();
}

void ConversationController.shouldShowRTTUpgrade.getter()
{
  OUTLINED_FUNCTION_443();
  v2 = objc_opt_self();
  if ([v2 isRTTSupported])
  {
    v3 = [v2 sharedUtilityProvider];
    if (!v3)
    {
      __break(1u);
      return;
    }

    v4 = v3;
    [v3 currentPreferredTransportMethod];
  }

  v5 = v0 + OBJC_IVAR____TtC15ConversationKit22ConversationController_call;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v6 = *(v5 + 8);
  swift_getObjectType();
  OUTLINED_FUNCTION_490();
  v7 = *(v1 + 208);
  swift_unknownObjectRetain();
  v8 = OUTLINED_FUNCTION_33_0();
  v7(v8);
  OUTLINED_FUNCTION_448();
  if (v6 == 1)
  {
    v9 = *(v5 + 8);
    swift_getObjectType();
    v10 = *(v9 + 176);
    swift_unknownObjectRetain();
    v11 = OUTLINED_FUNCTION_1_5();
    v10(v11);
    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_7_17();
}

uint64_t ConversationController.rejectedParticipantsCount.getter(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC15ConversationKit22ConversationController_rejectedParticipantsCount;
  OUTLINED_FUNCTION_19_1(a1);
  return *(v1 + v2);
}

void key path getter for ConversationController.rejectedParticipantsCount : ConversationController(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15ConversationKit22ConversationController_rejectedParticipantsCount;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

void ConversationController.rejectedParticipantsCount.didset(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit22ConversationController_rejectedParticipantsCount;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (v4 != a1)
  {
    v5 = v1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationRejectedParticipantsCountDidChange;
    swift_beginAccess();
    v6 = *v5;
    if (*v5)
    {
      v7 = *(v5 + 8);

      v6(v4);
      outlined consume of (@escaping @callee_guaranteed () -> ())?(v6, v7);
    }
  }
}

uint64_t ConversationController.rejectedParticipantsCount.modify()
{
  v1 = OUTLINED_FUNCTION_39_0();
  v2 = __swift_coroFrameAllocStub(v1);
  *(OUTLINED_FUNCTION_47(v2) + 32) = v0;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_501();
  return OUTLINED_FUNCTION_28_3();
}

uint64_t ConversationController.deviceOrientation.getter(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC15ConversationKit22ConversationController_deviceOrientation;
  OUTLINED_FUNCTION_19_1(a1);
  return *(v1 + v2);
}

void key path getter for ConversationController.deviceOrientation : ConversationController(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15ConversationKit22ConversationController_deviceOrientation;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

void ConversationController.deviceOrientation.didset(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC15ConversationKit22ConversationController_deviceOrientation;
  swift_beginAccess();
  if (*(v1 + v4) != a1)
  {
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    v5 = static OS_os_log.conversationKit;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1BC4BAA20;
    v33[0] = a1;
    type metadata accessor for CNKDeviceOrientation(0);
    v7 = String.init<A>(reflecting:)();
    v9 = v8;
    v10 = MEMORY[0x1E69E6158];
    *(v6 + 56) = MEMORY[0x1E69E6158];
    v11 = lazy protocol witness table accessor for type String and conformance String();
    *(v6 + 64) = v11;
    *(v6 + 32) = v7;
    *(v6 + 40) = v9;
    v33[0] = *(v2 + v4);
    v12 = String.init<A>(reflecting:)();
    *(v6 + 96) = v10;
    *(v6 + 104) = v11;
    *(v6 + 72) = v12;
    *(v6 + 80) = v13;
    v14 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("deviceOrientation state changed from %@ to %@", 45, 2, &dword_1BBC58000, v5, v14, v6);

    v15 = v2 + OBJC_IVAR____TtC15ConversationKit22ConversationController_broadcastingState;
    swift_beginAccess();
    v21 = *(v15 + 16);
    if (v21 < 0)
    {
      ConversationController.broadcastingState.setter(*v15 & 0xFF01, *(v2 + v4), v21 & 0xFFFFFF81, v16, v17, v18, v19, v20, v32, v33[0], v33[1], v33[2], v34, v35, v36, v37[0], v37[1], v37[2], v38[0], v38[1]);
    }

    v22 = (v2 + OBJC_IVAR____TtC15ConversationKit22ConversationController_callCenter);
    swift_beginAccess();
    v23 = v22[3];
    v24 = v22[4];
    v25 = __swift_project_boxed_opaque_existential_1(v22, v23);
    v26 = *(v23 - 8);
    v27 = MEMORY[0x1EEE9AC00](v25);
    v29 = &v33[-1] - v28;
    (*(v26 + 16))(&v33[-1] - v28, v27);
    (*(v24 + 32))(v33, v23, v24);
    (*(v26 + 8))(v29, v23);
    v30 = v34;
    v31 = v35;
    __swift_project_boxed_opaque_existential_1(v33, v34);
    (*(v31 + 48))(*(v2 + v4), v30, v31);
    __swift_destroy_boxed_opaque_existential_1(v33);
  }
}

uint64_t ConversationController.deviceOrientation.modify()
{
  v1 = OUTLINED_FUNCTION_39_0();
  v2 = __swift_coroFrameAllocStub(v1);
  *(OUTLINED_FUNCTION_47(v2) + 32) = v0;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_501();
  return OUTLINED_FUNCTION_28_3();
}

void key path getter for ConversationController.localFullBleedVideoOrientation : ConversationController(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_localFullBleedVideoOrientation;
  swift_beginAccess();
  v4 = *(v3 + 8);
  *a2 = *v3;
  *(a2 + 8) = v4;
}

uint64_t ConversationController.localFullBleedVideoOrientation.setter(uint64_t a1, char a2)
{
  v5 = OUTLINED_FUNCTION_3_37(OBJC_IVAR____TtC15ConversationKit22ConversationController_localFullBleedVideoOrientation);
  result = OUTLINED_FUNCTION_3_5(v5, v6);
  *v2 = a1;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t ConversationController.localFullBleedVideoOrientation.modify()
{
  v2 = __swift_coroFrameAllocStub(0x38uLL);
  v3 = OUTLINED_FUNCTION_47(v2);
  v4 = OBJC_IVAR____TtC15ConversationKit22ConversationController_localFullBleedVideoOrientation;
  *(v3 + 40) = v0;
  *(v3 + 48) = v4;
  v5 = v0 + v4;
  v6 = OUTLINED_FUNCTION_15_14();
  OUTLINED_FUNCTION_3_5(v6, v7);
  v8 = *(v5 + 8);
  *(v1 + 24) = *v5;
  *(v1 + 32) = v8;
  return OUTLINED_FUNCTION_28_3();
}

void ConversationController.localFullBleedVideoOrientation.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(v1 + 40) + *(v1 + 48);
  v3 = *(v1 + 32);
  *v2 = *(v1 + 24);
  *(v2 + 8) = v3;
  free(v1);
}

uint64_t ConversationController.didDeferStartCameraAction.getter(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC15ConversationKit22ConversationController_didDeferStartCameraAction;
  OUTLINED_FUNCTION_19_1(a1);
  return *(v1 + v2);
}

void key path getter for ConversationController.didDeferStartCameraAction : ConversationController(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15ConversationKit22ConversationController_didDeferStartCameraAction;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

void ConversationController.didDeferStartCameraAction.didset(char a1)
{
  v2 = a1 & 1;
  v3 = OBJC_IVAR____TtC15ConversationKit22ConversationController_didDeferStartCameraAction;
  swift_beginAccess();
  if (*(v1 + v3) != v2)
  {
    if (*(v1 + v3))
    {
      if (one-time initialization token for conversationController != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for Logger();
      __swift_project_value_buffer(v4, static Logger.conversationController);
      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v5, v6))
      {
        goto LABEL_12;
      }

      v7 = swift_slowAlloc();
      *v7 = 0;
      v8 = "Deferring start camera action until systemPreferredCamera is initialized";
    }

    else
    {
      if (one-time initialization token for conversationController != -1)
      {
        swift_once();
      }

      v9 = type metadata accessor for Logger();
      __swift_project_value_buffer(v9, static Logger.conversationController);
      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v5, v6))
      {
        goto LABEL_12;
      }

      v7 = swift_slowAlloc();
      *v7 = 0;
      v8 = "Start camera action no longer deferred for systemPreferredCamera initialization";
    }

    _os_log_impl(&dword_1BBC58000, v5, v6, v8, v7, 2u);
    MEMORY[0x1BFB23DF0](v7, -1, -1);
LABEL_12:
  }
}

uint64_t ConversationController.didDeferStartCameraAction.modify()
{
  v0 = OUTLINED_FUNCTION_39_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_18_7(v1);
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_36_4();
  return OUTLINED_FUNCTION_28_3();
}

void ConversationController.ignoreLetMeInRequests.modify(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v3 = *a1;
  (a3)(*(*a1 + 32), a2);

  free(v3);
}

uint64_t ConversationController.isUsingIPadExternalCamera.getter(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC15ConversationKit22ConversationController_isUsingIPadExternalCamera;
  OUTLINED_FUNCTION_19_1(a1);
  return *(v1 + v2);
}

void key path getter for ConversationController.isUsingIPadExternalCamera : ConversationController(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15ConversationKit22ConversationController_isUsingIPadExternalCamera;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

void ConversationController.isUsingIPadExternalCamera.didset(char a1)
{
  v2 = v1;
  v4 = a1 & 1;
  v5 = OBJC_IVAR____TtC15ConversationKit22ConversationController_isUsingIPadExternalCamera;
  swift_beginAccess();
  if (v1[v5] != v4)
  {
    if (one-time initialization token for conversationController != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Logger.conversationController);
    v7 = v1;
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v36[0] = v11;
      *v10 = 136315650;
      LOBYTE(v35[0]) = v7[OBJC_IVAR____TtC15ConversationKit22ConversationController_mode];
      v12 = String.init<A>(reflecting:)();
      v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, v36);

      *(v10 + 4) = v14;
      *(v10 + 12) = 1024;
      *(v10 + 14) = a1 & 1;
      *(v10 + 18) = 1024;
      v15 = v2[v5];

      *(v10 + 20) = v15;
      _os_log_impl(&dword_1BBC58000, v8, v9, "[%s] isUsingIPadExternalCamera changed from %{BOOL}d to %{BOOL}d", v10, 0x18u);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x1BFB23DF0](v11, -1, -1);
      MEMORY[0x1BFB23DF0](v10, -1, -1);
    }

    else
    {
    }

    if ((v2[v5] & 1) == 0)
    {
      v16 = &v7[OBJC_IVAR____TtC15ConversationKit22ConversationController_fetchUISceneOrientation];
      swift_beginAccess();
      v17 = *v16;
      if (*v16)
      {
        v18 = *(v16 + 1);

        v20 = v17(v19);
        v22 = v21;
        outlined consume of (@escaping @callee_guaranteed () -> ())?(v17, v18);
        if ((v22 & 1) == 0)
        {
          v23 = v7;
          v24 = Logger.logObject.getter();
          v25 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v24, v25))
          {
            v26 = swift_slowAlloc();
            v27 = swift_slowAlloc();
            v35[0] = v27;
            *v26 = 136315394;
            v28 = String.init<A>(reflecting:)();
            v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, v35);

            *(v26 + 4) = v30;
            *(v26 + 12) = 2080;
            type metadata accessor for CNKDeviceOrientation(0);
            v31 = String.init<A>(reflecting:)();
            v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v32, v35);

            *(v26 + 14) = v33;
            _os_log_impl(&dword_1BBC58000, v24, v25, "[%s] Returning deviceOrientation to be UI layer orientation now that no longer using external camera %s", v26, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x1BFB23DF0](v27, -1, -1);
            MEMORY[0x1BFB23DF0](v26, -1, -1);
          }

          ConversationController.deviceOrientation.setter(v20);
        }
      }
    }

    ConversationController.selectFrontLocalParticipantCamera()();
    v34 = &v7[OBJC_IVAR____TtC15ConversationKit22ConversationController_broadcastingState];
    swift_beginAccess();
    ConversationController.updateLocalParticipant(with:isChangingExternalCameraUsageOnIPad:)(*v34, *(v34 + 1), v34[16], 1);
  }
}

Swift::Void __swiftcall ConversationController.selectFrontLocalParticipantCamera()()
{
  OUTLINED_FUNCTION_50_2();
  v2 = v0;
  v3 = (v0 + OBJC_IVAR____TtC15ConversationKit22ConversationController_broadcastingState);
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v4 = *(v3 + 16);
  if (v4 < 0)
  {
    v8 = *v3;
    v9 = OBJC_IVAR____TtC15ConversationKit22ConversationController_deviceOrientation;
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    ConversationController.broadcastingState.setter(v8 & 1, *(v2 + v9), v4 & 0xFFFFFF81, v10, v11, v12, v13, v14, v28, *(&v28 + 1), v29, v30, v31, v32, v33, v34, v35, v36, v37, v38);
    v15 = (v2 + OBJC_IVAR____TtC15ConversationKit22ConversationController_callCenter);
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    OUTLINED_FUNCTION_103_5(v15);
    OUTLINED_FUNCTION_31_1();
    OUTLINED_FUNCTION_21();
    MEMORY[0x1EEE9AC00](v16);
    v18 = OUTLINED_FUNCTION_26_53(v17, v28);
    v19(v18);
    OUTLINED_FUNCTION_260_4();
    v20 = OUTLINED_FUNCTION_62_0();
    v21(v20);
    v22 = OUTLINED_FUNCTION_15_14();
    v23(v22);
    v24 = v30;
    v25 = v31;
    __swift_project_boxed_opaque_existential_1(&v28, v30);
    v26 = *(v2 + v9);
    v27 = ConversationController.isOneToOneModeEnabled.getter();
    (*(v25 + 32))(0, v26, (v27 & 1) == 0, v24, v25);
    __swift_destroy_boxed_opaque_existential_1(&v28);
  }

  else
  {
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
    }

    static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    OUTLINED_FUNCTION_37_22();
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1BC4BA940;
    v6 = *(v3 + 16);
    v28 = *v3;
    LOBYTE(v29) = v6;
    String.init<A>(reflecting:)();
    OUTLINED_FUNCTION_87();
    *(v5 + 56) = MEMORY[0x1E69E6158];
    *(v5 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v5 + 32) = v3;
    *(v5 + 40) = v1;
    OUTLINED_FUNCTION_41_0();
    os_log(_:dso:log:type:_:)(v7, v28, v29);
  }

  OUTLINED_FUNCTION_49();
}

uint64_t ConversationController.isUsingIPadExternalCamera.modify()
{
  v0 = OUTLINED_FUNCTION_39_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_18_7(v1);
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_36_4();
  return OUTLINED_FUNCTION_28_3();
}

uint64_t ConversationController._captionsRecognizerShouldBeRunning.setter(char a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit22ConversationController__captionsRecognizerShouldBeRunning;
  v4 = OUTLINED_FUNCTION_112_1();
  result = OUTLINED_FUNCTION_3_5(v4, v5);
  *(v1 + v3) = a1;
  return result;
}

uint64_t ConversationController.captionsRecognizerShouldBeRunning.modify()
{
  v0 = OUTLINED_FUNCTION_39_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_18_7(v1);
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_36_4();
  return OUTLINED_FUNCTION_28_3();
}

void ConversationController.isLocallySharingScreen.getter()
{
  OUTLINED_FUNCTION_11_97();
  OUTLINED_FUNCTION_6_11(v1);
  OUTLINED_FUNCTION_382_0();
  OUTLINED_FUNCTION_517();
  v2 = OUTLINED_FUNCTION_45_1();
  v0(v2);
  OUTLINED_FUNCTION_524();
  OUTLINED_FUNCTION_10_84();
}

uint64_t ConversationController.isOneToOneModeEnabledByCallCenter.didset()
{
  if ((*(v0 + OBJC_IVAR____TtC15ConversationKit22ConversationController_isOneToOneModeEnabledByCallCenter) & 1) == 0)
  {
    return ConversationController.isOneToOneCallCenterUpdateWaitingForNonSquareVideo.setter(0);
  }

  return result;
}

void ConversationController.isOneToOneCallCenterUpdateWaitingForNonSquareVideo.didset(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, os_log_t oslog, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  OUTLINED_FUNCTION_443();
  a24 = v26;
  a25 = v28;
  if (v25[*v30] == (v29 & 1))
  {
    goto LABEL_6;
  }

  v31 = v27;
  if (one-time initialization token for conversationController != -1)
  {
    OUTLINED_FUNCTION_8_106(&one-time initialization token for conversationController);
  }

  v32 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v32, static Logger.conversationController);
  v33 = v25;
  osloga = Logger.logObject.getter();
  v34 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(osloga, v34))
  {
    v35 = OUTLINED_FUNCTION_30_1();
    a15 = OUTLINED_FUNCTION_29_7();
    *v35 = 136315394;
    v36 = String.init<A>(reflecting:)();
    v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v37, &a15);

    *(v35 + 4) = v38;
    *(v35 + 12) = 2080;
    v39 = String.init<A>(reflecting:)();
    v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v40, &a15);

    *(v35 + 14) = v41;
    _os_log_impl(&dword_1BBC58000, osloga, v34, v31, v35, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_4_4();
    OUTLINED_FUNCTION_3_83();

LABEL_6:
    OUTLINED_FUNCTION_7_17();
    return;
  }

  OUTLINED_FUNCTION_7_17();
}

Swift::Void __swiftcall ConversationController.updateShouldShowLastFrameDuringUPlusOneHandoff()()
{
  OUTLINED_FUNCTION_29();
  type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_2_12();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_1_7();
  type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4_2();
  type metadata accessor for DispatchTime();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_32_31();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_83_1();
  if ([*&v0[OBJC_IVAR____TtC15ConversationKit22ConversationController_featureFlags] uPlusOneFullBleedHandoffEnabled])
  {
    OUTLINED_FUNCTION_287();
    if (v7)
    {
      if ((ConversationController.isOneToOneModeEnabled.getter() & 1) != 0 && (v0[OBJC_IVAR____TtC15ConversationKit22ConversationController_shouldShowLastFrameDuringUPlusOneHandoff] & 1) == 0 && ((ConversationController.conversationHandoffInProgress.getter() & 1) != 0 || ConversationController.conversationMergedRemoteMembersCount.getter() == 1 && ConversationController.conversationActiveRemoteParticipantsCount.getter() == 2))
      {
        v37 = v4;
        if (one-time initialization token for conversationController != -1)
        {
          OUTLINED_FUNCTION_8_106(&one-time initialization token for conversationController);
        }

        v8 = type metadata accessor for Logger();
        __swift_project_value_buffer(v8, static Logger.conversationController);
        v9 = v0;
        v10 = Logger.logObject.getter();
        v11 = static os_log_type_t.default.getter();

        v12 = v10;
        if (os_log_type_enabled(v10, v11))
        {
          v13 = OUTLINED_FUNCTION_42();
          v34 = OUTLINED_FUNCTION_23();
          v38[0] = v34;
          *v13 = 136315138;
          v14 = String.init<A>(reflecting:)();
          v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, v38);

          *(v13 + 4) = v33;
          _os_log_impl(&dword_1BBC58000, v12, v11, "[%s] U+1 Handoff detected, enabling show last/paused frame", v13, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v34);
          OUTLINED_FUNCTION_3_83();
          OUTLINED_FUNCTION_27();
        }

        ConversationController.shouldShowLastFrameDuringUPlusOneHandoff.setter(1);
        v16 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
        v35 = static OS_dispatch_queue.main.getter();
        static DispatchTime.now()();
        + infix(_:_:)(10.0);
        v36 = *(v37 + 8);
        v17 = OUTLINED_FUNCTION_2_100();
        v18(v17);
        OUTLINED_FUNCTION_20();
        v19 = swift_allocObject();
        OUTLINED_FUNCTION_278(v19);
        swift_unknownObjectWeakInit();
        v38[4] = partial apply for closure #1 in ConversationController.updateShouldShowLastFrameDuringUPlusOneHandoff();
        v38[5] = v16;
        OUTLINED_FUNCTION_5_73();
        v38[1] = 1107296256;
        OUTLINED_FUNCTION_6_5();
        v38[2] = v20;
        v38[3] = &block_descriptor_54_1;
        v21 = _Block_copy(v38);

        static DispatchQoS.unspecified.getter();
        v38[0] = MEMORY[0x1E69E7CC0];
        OUTLINED_FUNCTION_3_164();
        lazy protocol witness table accessor for type ConversationController and conformance ConversationController(v22, v23);
        v24 = OUTLINED_FUNCTION_334();
        __swift_instantiateConcreteTypeFromMangledNameV2(v24, v25);
        OUTLINED_FUNCTION_9_8();
        lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(v26, v27, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
        OUTLINED_FUNCTION_337();
        OUTLINED_FUNCTION_260();
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OUTLINED_FUNCTION_142();
        MEMORY[0x1BFB21510]();
        _Block_release(v21);

        v28 = OUTLINED_FUNCTION_15_44();
        v29(v28);
        OUTLINED_FUNCTION_392();
        v30 = OUTLINED_FUNCTION_206();
        v31(v30);
        v32 = OUTLINED_FUNCTION_157();
        v36(v32);
      }
    }
  }

  OUTLINED_FUNCTION_30_0();
}

uint64_t ConversationController.conversationMergedRemoteMembersCount.getter()
{
  ConversationController.lookupActiveConversation()();
  if (v5)
  {
    outlined init with take of TapInteractionHandler(&v4, v6);
    v0 = v7;
    v1 = v8;
    __swift_project_boxed_opaque_existential_1(v6, v7);
    (*(v1 + 96))(v0, v1);
    v2 = specialized Set.count.getter();

    __swift_destroy_boxed_opaque_existential_1(v6);
  }

  else
  {
    outlined destroy of CallControlsService?(&v4, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
    return 0;
  }

  return v2;
}

uint64_t closure #2 in ConversationController.remoteOneToOneParticipant.getter(uint64_t a1, uint64_t a2)
{
  v28[1] = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v29 = v28 - v5;
  v6 = type metadata accessor for Participant.State(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v28 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = v28 - v17;
  _s15ConversationKit11ParticipantVWOcTm_17(a1, v8);
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    v28[0] = v2;
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd, &_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMR);
    v20 = *(v19 + 48);
    v21 = &v8[*(v19 + 64)];
    v22 = outlined consume of Participant.CopresenceInfo?(*v21, v21[1], v21[2], v21[3], v21[4], v21[5], v21[6], v21[7]);
    v23 = *(v10 + 32);
    v23(v15, v8, v9, v22);
    outlined destroy of Participant.MediaInfo(&v8[v20]);
    (v23)(v18, v15, v9);
    v24 = v29;
    Participant.broadcastStartDate.getter();
    if (__swift_getEnumTagSinglePayload(v24, 1, v9) == 1)
    {
      (*(v10 + 8))(v18, v9);
      outlined destroy of CallControlsService?(v24, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      v25 = 0;
    }

    else
    {
      (v23)(v12, v24, v9);
      v25 = static Date.< infix(_:_:)();
      v26 = *(v10 + 8);
      v26(v12, v9);
      v26(v18, v9);
    }
  }

  else
  {
    _s15ConversationKit11ParticipantVWOhTm_18(v8, type metadata accessor for Participant.State);
    v25 = 0;
  }

  return v25 & 1;
}

void ConversationController.isConnecting.getter()
{
  OUTLINED_FUNCTION_443();
  OUTLINED_FUNCTION_3_37(OBJC_IVAR____TtC15ConversationKit22ConversationController_call);
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_447();
  OUTLINED_FUNCTION_490();
  v2 = *(v1 + 104);
  swift_unknownObjectRetain();
  v3 = OUTLINED_FUNCTION_33_0();
  v2(v3);
  OUTLINED_FUNCTION_530();
  if (v0)
  {
    ConversationController.isWaitingOnFirstRemoteFrame.getter();
  }

  OUTLINED_FUNCTION_7_17();
}

BOOL ConversationController.momentsLocallyAvailable.getter()
{
  OUTLINED_FUNCTION_287();
  if (!v0)
  {
    return 0;
  }

  ConversationController.lookupActiveConversation()();
  if (!v21)
  {
    outlined destroy of CallControlsService?(v20, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A0_pMd, &_s15ConversationKit0A0_pMR);
  v1 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversation, 0x1E69D8B20);
  if ((OUTLINED_FUNCTION_434(v1, v2, v3, v4, v5, v6, v7, v8, v18, v20[0]) & 1) == 0)
  {
LABEL_9:
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
    }

    static os_log_type_t.default.getter();
    OUTLINED_FUNCTION_41_0();
    os_log(_:dso:log:type:_:)(v16);
    return 0;
  }

  if ([v19 state] == 3)
  {
    v9 = [v19 mergedActiveRemoteParticipants];
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationParticipant, 0x1E69D8B90);
    OUTLINED_FUNCTION_1_65();
    lazy protocol witness table accessor for type TUConversationInvitationPreference and conformance NSObject(v10, &lazy cache variable for type metadata for TUConversationParticipant, 0x1E69D8B90);
    OUTLINED_FUNCTION_211();
    static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v11 = specialized Set.count.getter();

    if (v11 >= 1)
    {
      v12 = [objc_allocWithZone(MEMORY[0x1E69D8C68]) initWithConversation_];
      v13 = ConversationController.momentsController.getter();
      v14 = [v13 capabilitiesForProvider_];

      LODWORD(v13) = [v14 availability];
      return v13 == 3;
    }
  }

  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
  }

  static os_log_type_t.default.getter();
  OUTLINED_FUNCTION_156();
  os_log(_:dso:log:type:_:)(v17);

  return 0;
}

uint64_t ConversationController.shouldShowDeskViewCameras.getter()
{
  ConversationController.lookupActiveConversation()();
  if (!v22)
  {
    outlined destroy of CallControlsService?(v21, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
    goto LABEL_6;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A0_pMd, &_s15ConversationKit0A0_pMR);
  v0 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversation, 0x1E69D8B20);
  if ((OUTLINED_FUNCTION_434(v0, v1, v2, v3, v4, v5, v6, v7, v19, v21[0]) & 1) == 0)
  {
LABEL_6:
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_2_9(&one-time initialization token for conversationKit);
    }

    v10 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v10, static Logger.conversationKit);
    v8 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_25(v11))
    {
      v12 = OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_50_0(v12);
      OUTLINED_FUNCTION_132();
      _os_log_impl(v13, v14, v15, v16, v17, 2u);
      OUTLINED_FUNCTION_26();
    }

    goto LABEL_10;
  }

  v8 = v20;
  if ([v20 state] != 3)
  {
LABEL_10:
    v9 = 0;
    goto LABEL_11;
  }

  v9 = ConversationController.hasAvailableDeskViewCameras.getter();
LABEL_11:

  return v9 & 1;
}

__n128 key path getter for ConversationController.broadcastingState : ConversationController@<Q0>(void *a1@<X0>, __n128 *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_broadcastingState);
  swift_beginAccess();
  v4 = v3[1].n128_u8[0];
  result = *v3;
  *a2 = *v3;
  a2[1].n128_u8[0] = v4;
  return result;
}

void ConversationController.broadcastingState.didset(unint64_t a1, uint64_t a2, int a3)
{
  v7 = type metadata accessor for Participant(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v37 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (v3 + OBJC_IVAR____TtC15ConversationKit22ConversationController_broadcastingState);
  swift_beginAccess();
  v10 = *v9;
  v11 = *(v9 + 16);
  if ((a3 & 0x80) != 0)
  {
    if (v11 < 0)
    {
      v34 = v10 ^ a1;
      if ((v34 & 0xFF00) == 0 && (v34 & 1) == 0 && *(v9 + 1) == a2 && ((v11 ^ a3) & 1) == 0)
      {
        return;
      }
    }
  }

  else if ((v11 & 0x80000000) == 0 && ((v10 ^ a1) & 1) == 0 && ((a1 >> 8) & 1) != ((*v9 & 0x100) == 0))
  {
    return;
  }

  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  v12 = static OS_os_log.conversationKit;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1BC4BAA20;
  v36 = a1;
  *&v38 = a1;
  *(&v38 + 1) = a2;
  v39 = a3;
  v14 = String.init<A>(reflecting:)();
  v16 = v15;
  v17 = MEMORY[0x1E69E6158];
  *(v13 + 56) = MEMORY[0x1E69E6158];
  v18 = lazy protocol witness table accessor for type String and conformance String();
  *(v13 + 64) = v18;
  *(v13 + 32) = v14;
  *(v13 + 40) = v16;
  v19 = *(v9 + 16);
  v38 = *v9;
  v39 = v19;
  v20 = String.init<A>(reflecting:)();
  *(v13 + 96) = v17;
  *(v13 + 104) = v18;
  *(v13 + 72) = v20;
  *(v13 + 80) = v21;
  v22 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Broadcasting state changed from %@ to %@", 40, 2, &dword_1BBC58000, v12, v22, v13);

  v23 = *v9;
  v24 = *(v9 + 1);
  v25 = *(v9 + 16);
  if ((v25 & 0x80000000) != 0 && (a3 & 0x80) != 0 && ((v23 ^ v36) & 0xFF00) != 0)
  {
    *(v3 + OBJC_IVAR____TtC15ConversationKit22ConversationController_expectingNewLocalCameraPositionFirstFrame) = 1;
  }

  ConversationController.updateLocalParticipant(with:isChangingExternalCameraUsageOnIPad:)(v23, v24, v25, 2);
  v26 = v3 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateLocalParticipant;
  swift_beginAccess();
  v27 = *v26;
  if (*v26)
  {
    v28 = *(v26 + 8);
    v29 = OBJC_IVAR____TtC15ConversationKit22ConversationController_localParticipant;
    swift_beginAccess();
    v30 = v37;
    _s15ConversationKit11ParticipantVWOcTm_17(v3 + v29, v37);
    v31 = *v9;
    v32 = *(v9 + 1);
    v33 = *(v9 + 16);

    v27(v30, v31, v32, v33);
    outlined consume of (@escaping @callee_guaranteed () -> ())?(v27, v28);
    _s15ConversationKit11ParticipantVWOhTm_18(v30, type metadata accessor for Participant);
  }
}

uint64_t ConversationController.broadcastingState.modify()
{
  v2 = __swift_coroFrameAllocStub(0x38uLL);
  *(OUTLINED_FUNCTION_47(v2) + 48) = v0;
  v3 = v0 + OBJC_IVAR____TtC15ConversationKit22ConversationController_broadcastingState;
  OUTLINED_FUNCTION_15_14();
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v4 = *(v3 + 16);
  *(v1 + 24) = *v3;
  *(v1 + 40) = v4;
  return OUTLINED_FUNCTION_28_3();
}

uint64_t ConversationController.isCameraMixedWithScreen.getter()
{
  ConversationController.lookupActiveConversation()();
  v0 = v4;
  if (v4)
  {
    v1 = v5;
    __swift_project_boxed_opaque_existential_1(v3, v4);
    LOBYTE(v0) = (*(v1 + 336))(v0, v1);
    __swift_destroy_boxed_opaque_existential_1(v3);
  }

  else
  {
    outlined destroy of CallControlsService?(v3, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
  }

  return v0 & 1;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ConversationController.OneToOneModeChangeSource(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  Hasher.init(_seed:)();
  a4(v8, v6);
  return Hasher._finalize()();
}

uint64_t key path getter for ConversationController.didAddVisibleParticipant : ConversationController@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didAddVisibleParticipant);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = thunk for @escaping @callee_guaranteed (@in_guaranteed Participant, @unowned Int) -> ()partial apply;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v4, v5);
}

uint64_t key path setter for ConversationController.didAddVisibleParticipant : ConversationController(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = thunk for @escaping @callee_guaranteed (@in_guaranteed Participant, @in_guaranteed Int) -> (@out ())partial apply;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didAddVisibleParticipant);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v3, v4);
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v8, v9);
}

uint64_t key path getter for ConversationController.didRemoveVisibleParticipant : ConversationController@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didRemoveVisibleParticipant);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = thunk for @escaping @callee_guaranteed (@in_guaranteed Participant, @unowned Int) -> ()partial apply;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v4, v5);
}

uint64_t key path setter for ConversationController.didRemoveVisibleParticipant : ConversationController(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = thunk for @escaping @callee_guaranteed (@in_guaranteed Participant, @in_guaranteed Int) -> (@out ())partial apply;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didRemoveVisibleParticipant);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v3, v4);
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v8, v9);
}

uint64_t key path getter for ConversationController.didRemoveAllVisibleParticipants : ConversationController@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didRemoveAllVisibleParticipants);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v4, v5);
}

uint64_t key path setter for ConversationController.didRemoveAllVisibleParticipants : ConversationController(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = thunk for @escaping @callee_guaranteed () -> (@out ())partial apply;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didRemoveAllVisibleParticipants);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v3, v4);
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v8, v9);
}

uint64_t key path getter for ConversationController.didFinishMigratingConversations : ConversationController@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didFinishMigratingConversations);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v4, v5);
}

uint64_t key path setter for ConversationController.didFinishMigratingConversations : ConversationController(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = thunk for @escaping @callee_guaranteed () -> (@out ())partial apply;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didFinishMigratingConversations);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v3, v4);
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v8, v9);
}

uint64_t key path getter for ConversationController.didUpdateVisibleParticipant : ConversationController@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateVisibleParticipant);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = thunk for @escaping @callee_guaranteed (@in_guaranteed Participant, @unowned Int) -> ()partial apply;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v4, v5);
}

uint64_t key path setter for ConversationController.didUpdateVisibleParticipant : ConversationController(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = thunk for @escaping @callee_guaranteed (@in_guaranteed Participant, @in_guaranteed Int) -> (@out ())partial apply;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateVisibleParticipant);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v3, v4);
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v8, v9);
}

uint64_t key path getter for ConversationController.visibleParticipantDidBecomeActive : ConversationController@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_visibleParticipantDidBecomeActive);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = thunk for @escaping @callee_guaranteed (@in_guaranteed Participant, @unowned Int) -> ()partial apply;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v4, v5);
}

uint64_t key path setter for ConversationController.visibleParticipantDidBecomeActive : ConversationController(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = thunk for @escaping @callee_guaranteed (@in_guaranteed Participant, @in_guaranteed Int) -> (@out ())partial apply;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC15ConversationKit22ConversationController_visibleParticipantDidBecomeActive);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v3, v4);
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v8, v9);
}

uint64_t key path getter for ConversationController.visibleParticipantDidBecomeInactive : ConversationController@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_visibleParticipantDidBecomeInactive);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = thunk for @escaping @callee_guaranteed (@in_guaranteed Participant, @unowned Int) -> ()partial apply;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v4, v5);
}

uint64_t key path setter for ConversationController.visibleParticipantDidBecomeInactive : ConversationController(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = thunk for @escaping @callee_guaranteed (@in_guaranteed Participant, @in_guaranteed Int) -> (@out ())partial apply;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC15ConversationKit22ConversationController_visibleParticipantDidBecomeInactive);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v3, v4);
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v8, v9);
}

uint64_t key path getter for ConversationController.visibleParticipantKickableStatusDidChange : ConversationController@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_visibleParticipantKickableStatusDidChange);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = thunk for @escaping @callee_guaranteed (@in_guaranteed Participant, @unowned Int) -> ()partial apply;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v4, v5);
}

uint64_t key path setter for ConversationController.visibleParticipantKickableStatusDidChange : ConversationController(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = thunk for @escaping @callee_guaranteed (@in_guaranteed Participant, @in_guaranteed Int) -> (@out ())partial apply;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC15ConversationKit22ConversationController_visibleParticipantKickableStatusDidChange);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v3, v4);
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v8, v9);
}

uint64_t key path getter for ConversationController.didStartVideoForVisibleParticipant : ConversationController@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didStartVideoForVisibleParticipant);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = thunk for @escaping @callee_guaranteed (@in_guaranteed Participant, @unowned Int) -> ()partial apply;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v4, v5);
}

uint64_t key path setter for ConversationController.didStartVideoForVisibleParticipant : ConversationController(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = thunk for @escaping @callee_guaranteed (@in_guaranteed Participant, @in_guaranteed Int) -> (@out ())partial apply;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didStartVideoForVisibleParticipant);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v3, v4);
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v8, v9);
}

uint64_t key path getter for ConversationController.didUpdateVisibleParticipantScreenInfo : ConversationController@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateVisibleParticipantScreenInfo);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Participant, @unowned Int) -> ();
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v4, v5);
}

uint64_t key path setter for ConversationController.didUpdateVisibleParticipantScreenInfo : ConversationController(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Participant, @in_guaranteed SCSensitivityAnalysis?) -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateVisibleParticipantScreenInfo);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v3, v4);
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v8, v9);
}

uint64_t key path getter for ConversationController.participantsMediaPrioritiesDidChange : ConversationController@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_participantsMediaPrioritiesDidChange);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed [ParticipantMediaPriorities]) -> ();
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v4, v5);
}

uint64_t key path setter for ConversationController.participantsMediaPrioritiesDidChange : ConversationController(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed [Participant]) -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC15ConversationKit22ConversationController_participantsMediaPrioritiesDidChange);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v3, v4);
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v8, v9);
}

uint64_t key path getter for ConversationController.participantDidReact : ConversationController@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_participantDidReact);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Participant, @guaranteed String) -> ();
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v4, v5);
}

uint64_t key path setter for ConversationController.participantDidReact : ConversationController(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Conversation, @in_guaranteed Data?) -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC15ConversationKit22ConversationController_participantDidReact);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v3, v4);
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v8, v9);
}

uint64_t key path getter for ConversationController.participantDidStopReacting : ConversationController@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_participantDidStopReacting);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = thunk for @escaping @callee_guaranteed (@in_guaranteed ScreenShareAttributes?) -> ()partial apply;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v4, v5);
}

uint64_t key path setter for ConversationController.participantDidStopReacting : ConversationController(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = thunk for @escaping @callee_guaranteed (@in_guaranteed ScreenShareAttributes?) -> (@out ())partial apply;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC15ConversationKit22ConversationController_participantDidStopReacting);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v3, v4);
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v8, v9);
}

uint64_t key path getter for ConversationController.participantAudioPowerDidChange : ConversationController@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_participantAudioPowerDidChange);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Participant, @unowned Float) -> ();
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v4, v5);
}

uint64_t key path setter for ConversationController.participantAudioPowerDidChange : ConversationController(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Participant, @in_guaranteed Float) -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC15ConversationKit22ConversationController_participantAudioPowerDidChange);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v3, v4);
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v8, v9);
}

uint64_t key path getter for ConversationController.mutedTalkerDidChange : ConversationController@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_mutedTalkerDidChange);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ()partial apply;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v4, v5);
}

uint64_t key path setter for ConversationController.mutedTalkerDidChange : ConversationController(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = thunk for @escaping @callee_guaranteed (@in_guaranteed Bool) -> (@out ())partial apply;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC15ConversationKit22ConversationController_mutedTalkerDidChange);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v3, v4);
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v8, v9);
}

uint64_t key path getter for ConversationController.audioRouteDidChange : ConversationController@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_audioRouteDidChange);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed TURoute?) -> ();
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v4, v5);
}

uint64_t key path setter for ConversationController.audioRouteDidChange : ConversationController(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed [Participant]) -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC15ConversationKit22ConversationController_audioRouteDidChange);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v3, v4);
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v8, v9);
}

uint64_t key path getter for ConversationController.cameraBlurEnabledDidChange : ConversationController@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_cameraBlurEnabledDidChange);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ()partial apply;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v4, v5);
}

uint64_t key path setter for ConversationController.cameraBlurEnabledDidChange : ConversationController(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = thunk for @escaping @callee_guaranteed (@in_guaranteed Bool) -> (@out ())partial apply;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC15ConversationKit22ConversationController_cameraBlurEnabledDidChange);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v3, v4);
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v8, v9);
}

uint64_t key path getter for ConversationController.cameraBackgroundReplacementEnabledDidChange : ConversationController@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_cameraBackgroundReplacementEnabledDidChange);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ()partial apply;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v4, v5);
}

uint64_t key path setter for ConversationController.cameraBackgroundReplacementEnabledDidChange : ConversationController(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = thunk for @escaping @callee_guaranteed (@in_guaranteed Bool) -> (@out ())partial apply;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC15ConversationKit22ConversationController_cameraBackgroundReplacementEnabledDidChange);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v3, v4);
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v8, v9);
}

uint64_t key path getter for ConversationController.cameraZoomAvailabiltyDidChange : ConversationController@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_cameraZoomAvailabiltyDidChange);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ()partial apply;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v4, v5);
}

uint64_t key path setter for ConversationController.cameraZoomAvailabiltyDidChange : ConversationController(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = thunk for @escaping @callee_guaranteed (@in_guaranteed Bool) -> (@out ())partial apply;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC15ConversationKit22ConversationController_cameraZoomAvailabiltyDidChange);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v3, v4);
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v8, v9);
}

uint64_t key path getter for ConversationController.localCameraUIDDidChange : ConversationController@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_localCameraUIDDidChange);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = _sSSIegg_SSytIegnr_TRTA_0;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v4, v5);
}

uint64_t key path setter for ConversationController.localCameraUIDDidChange : ConversationController(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Call) -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC15ConversationKit22ConversationController_localCameraUIDDidChange);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v3, v4);
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v8, v9);
}

uint64_t key path getter for ConversationController.cameraListDidChange : ConversationController@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_cameraListDidChange);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v4, v5);
}

uint64_t key path setter for ConversationController.cameraListDidChange : ConversationController(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = thunk for @escaping @callee_guaranteed () -> (@out ())partial apply;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC15ConversationKit22ConversationController_cameraListDidChange);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v3, v4);
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v8, v9);
}

uint64_t key path getter for ConversationController.cameraOrientationUpdateDidGetSnapshot : ConversationController@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_cameraOrientationUpdateDidGetSnapshot);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v4, v5);
}

uint64_t key path setter for ConversationController.cameraOrientationUpdateDidGetSnapshot : ConversationController(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = thunk for @escaping @callee_guaranteed () -> (@out ())partial apply;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC15ConversationKit22ConversationController_cameraOrientationUpdateDidGetSnapshot);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v3, v4);
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v8, v9);
}

uint64_t key path getter for ConversationController.cameraCinematicFramingAvailabilityDidChange : ConversationController@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_cameraCinematicFramingAvailabilityDidChange);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ()partial apply;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v4, v5);
}

uint64_t key path setter for ConversationController.cameraCinematicFramingAvailabilityDidChange : ConversationController(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = thunk for @escaping @callee_guaranteed (@in_guaranteed Bool) -> (@out ())partial apply;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC15ConversationKit22ConversationController_cameraCinematicFramingAvailabilityDidChange);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v3, v4);
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v8, v9);
}

uint64_t key path getter for ConversationController.cameraCinematicFramingEnabledDidChange : ConversationController@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_cameraCinematicFramingEnabledDidChange);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ()partial apply;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v4, v5);
}

uint64_t key path setter for ConversationController.cameraCinematicFramingEnabledDidChange : ConversationController(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = thunk for @escaping @callee_guaranteed (@in_guaranteed Bool) -> (@out ())partial apply;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC15ConversationKit22ConversationController_cameraCinematicFramingEnabledDidChange);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v3, v4);
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v8, v9);
}

uint64_t key path getter for ConversationController.cameraReactionEffectsEnabledDidChange : ConversationController@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_cameraReactionEffectsEnabledDidChange);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ()partial apply;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v4, v5);
}

uint64_t key path setter for ConversationController.cameraReactionEffectsEnabledDidChange : ConversationController(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = thunk for @escaping @callee_guaranteed (@in_guaranteed Bool) -> (@out ())partial apply;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC15ConversationKit22ConversationController_cameraReactionEffectsEnabledDidChange);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v3, v4);
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v8, v9);
}

uint64_t key path getter for ConversationController.cameraStudioLightEnabledDidChange : ConversationController@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_cameraStudioLightEnabledDidChange);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ()partial apply;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v4, v5);
}

uint64_t key path setter for ConversationController.cameraStudioLightEnabledDidChange : ConversationController(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = thunk for @escaping @callee_guaranteed (@in_guaranteed Bool) -> (@out ())partial apply;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC15ConversationKit22ConversationController_cameraStudioLightEnabledDidChange);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v3, v4);
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v8, v9);
}

uint64_t key path getter for ConversationController.carPlayConnectedDidChange : ConversationController@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_carPlayConnectedDidChange);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ()partial apply;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v4, v5);
}

uint64_t key path setter for ConversationController.carPlayConnectedDidChange : ConversationController(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = thunk for @escaping @callee_guaranteed (@in_guaranteed Bool) -> (@out ())partial apply;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC15ConversationKit22ConversationController_carPlayConnectedDidChange);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v3, v4);
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v8, v9);
}

uint64_t key path getter for ConversationController.oneToOneModeDidChange : ConversationController@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_oneToOneModeDidChange);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = partial apply for thunk for @escaping @callee_guaranteed (@unowned Bool, @unowned ConversationController.OneToOneModeChangeSource) -> ();
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v4, v5);
}

uint64_t key path setter for ConversationController.oneToOneModeDidChange : ConversationController(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Bool, @in_guaranteed ConversationController.OneToOneModeChangeSource) -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC15ConversationKit22ConversationController_oneToOneModeDidChange);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v3, v4);
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v8, v9);
}

uint64_t thunk for @escaping @callee_guaranteed (@in_guaranteed Bool, @in_guaranteed ConversationController.OneToOneModeChangeSource) -> (@out ())(char a1, char a2, uint64_t (*a3)(char *, char *))
{
  v5 = a1;
  v4 = a2 & 1;
  return a3(&v5, &v4);
}

uint64_t key path getter for ConversationController.isTrackingActiveConversationDidChange : ConversationController@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_isTrackingActiveConversationDidChange);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ()partial apply;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v4, v5);
}

uint64_t key path setter for ConversationController.isTrackingActiveConversationDidChange : ConversationController(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = thunk for @escaping @callee_guaranteed (@in_guaranteed Bool) -> (@out ())partial apply;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC15ConversationKit22ConversationController_isTrackingActiveConversationDidChange);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v3, v4);
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v8, v9);
}

uint64_t key path getter for ConversationController.avModeDidChange : ConversationController@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_avModeDidChange);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = thunk for @escaping @callee_guaranteed (@unowned TUConversationAVMode) -> ()partial apply;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v4, v5);
}

uint64_t key path setter for ConversationController.avModeDidChange : ConversationController(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed [Participant]) -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC15ConversationKit22ConversationController_avModeDidChange);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v3, v4);
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v8, v9);
}

uint64_t key path getter for ConversationController.resolvedAudioVideoModeDidChange : ConversationController@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_resolvedAudioVideoModeDidChange);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = partial apply for thunk for @escaping @callee_guaranteed (@unowned TUConversationAVMode) -> ();
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v4, v5);
}

uint64_t key path setter for ConversationController.resolvedAudioVideoModeDidChange : ConversationController(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed [UUID : IDSCapabilitiesChecker.Capabilities]) -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC15ConversationKit22ConversationController_resolvedAudioVideoModeDidChange);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v3, v4);
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v8, v9);
}

uint64_t key path getter for ConversationController.isWaitingOnFirstRemoteFrameDidChange : ConversationController@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_isWaitingOnFirstRemoteFrameDidChange);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ()partial apply;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v4, v5);
}

uint64_t key path setter for ConversationController.isWaitingOnFirstRemoteFrameDidChange : ConversationController(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = thunk for @escaping @callee_guaranteed (@in_guaranteed Bool) -> (@out ())partial apply;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC15ConversationKit22ConversationController_isWaitingOnFirstRemoteFrameDidChange);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v3, v4);
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v8, v9);
}

uint64_t key path getter for ConversationController.activitiesDidChange : ConversationController@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_activitiesDidChange);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed [TUConversationActivitySession]?) -> ();
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v4, v5);
}

uint64_t key path setter for ConversationController.activitiesDidChange : ConversationController(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed [UUID : IDSCapabilitiesChecker.Capabilities]) -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC15ConversationKit22ConversationController_activitiesDidChange);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v3, v4);
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v8, v9);
}

uint64_t key path getter for ConversationController.collaborationNoticePosted : ConversationController@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_collaborationNoticePosted);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed TUCollaborationNotice, @in_guaranteed Participant, @in_guaranteed Conversation) -> ();
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v4, v5);
}

uint64_t key path setter for ConversationController.collaborationNoticePosted : ConversationController(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed TUCollaborationNotice, @in_guaranteed Participant, @in_guaranteed Conversation) -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC15ConversationKit22ConversationController_collaborationNoticePosted);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v3, v4);
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v8, v9);
}

uint64_t key path getter for ConversationController.screenSharingRequestsChanged : ConversationController@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_screenSharingRequestsChanged);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed Set<TUScreenSharingRequest>?) -> ();
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v4, v5);
}

uint64_t key path setter for ConversationController.screenSharingRequestsChanged : ConversationController(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed [Participant]) -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC15ConversationKit22ConversationController_screenSharingRequestsChanged);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v3, v4);
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v8, v9);
}

uint64_t key path getter for ConversationController.podcastRecordingRequestsChanged : ConversationController@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_podcastRecordingRequestsChanged);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed TUPodcastRecordingSession) -> ();
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v4, v5);
}

uint64_t key path setter for ConversationController.podcastRecordingRequestsChanged : ConversationController(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed [UUID : IDSCapabilitiesChecker.Capabilities]) -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC15ConversationKit22ConversationController_podcastRecordingRequestsChanged);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v3, v4);
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v8, v9);
}

uint64_t key path getter for ConversationController.audioPausedDidChange : ConversationController@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_audioPausedDidChange);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Participant, @unowned Bool) -> ();
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v4, v5);
}

uint64_t key path setter for ConversationController.audioPausedDidChange : ConversationController(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Participant, @in_guaranteed CameraPosition) -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC15ConversationKit22ConversationController_audioPausedDidChange);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v3, v4);
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v8, v9);
}

uint64_t key path getter for ConversationController.bluetoothAudioFormatChanged : ConversationController@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_bluetoothAudioFormatChanged);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = partial apply for thunk for @escaping @callee_guaranteed (@unowned TUCallBluetoothAudioFormat) -> ();
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v4, v5);
}

uint64_t key path setter for ConversationController.bluetoothAudioFormatChanged : ConversationController(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed [Participant]) -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC15ConversationKit22ConversationController_bluetoothAudioFormatChanged);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v3, v4);
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v8, v9);
}

uint64_t key path getter for ConversationController.callConversationChanged : ConversationController@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_callConversationChanged);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ()partial apply;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v4, v5);
}

uint64_t key path setter for ConversationController.callConversationChanged : ConversationController(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = thunk for @escaping @callee_guaranteed (@in_guaranteed Bool) -> (@out ())partial apply;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC15ConversationKit22ConversationController_callConversationChanged);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v3, v4);
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v8, v9);
}

uint64_t key path getter for ConversationController.didUpdateLocalParticipant : ConversationController@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateLocalParticipant);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = thunk for @escaping @callee_guaranteed (@in_guaranteed Participant, @unowned BroadcastingState) -> ()partial apply;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v4, v5);
}

uint64_t key path setter for ConversationController.didUpdateLocalParticipant : ConversationController(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = thunk for @escaping @callee_guaranteed (@in_guaranteed Participant, @in_guaranteed BroadcastingState) -> (@out ())partial apply;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateLocalParticipant);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v3, v4);
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v8, v9);
}

uint64_t key path getter for ConversationController.didUpdateSensitivityAnalysis : ConversationController@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateSensitivityAnalysis);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Participant, @guaranteed SCSensitivityAnalysis?) -> ();
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v4, v5);
}

uint64_t key path setter for ConversationController.didUpdateSensitivityAnalysis : ConversationController(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Participant, @in_guaranteed SCSensitivityAnalysis?) -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateSensitivityAnalysis);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v3, v4);
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v8, v9);
}

uint64_t key path getter for ConversationController.didUpdateLocalMemberAuthorizedToChangeGroupMembership : ConversationController@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateLocalMemberAuthorizedToChangeGroupMembership);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ()partial apply;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v4, v5);
}

uint64_t key path setter for ConversationController.didUpdateLocalMemberAuthorizedToChangeGroupMembership : ConversationController(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = thunk for @escaping @callee_guaranteed (@in_guaranteed Bool) -> (@out ())partial apply;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateLocalMemberAuthorizedToChangeGroupMembership);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v3, v4);
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v8, v9);
}

uint64_t key path getter for ConversationController.didUpdateLocalParticipantCameraPosition : ConversationController@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateLocalParticipantCameraPosition);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = partial apply for thunk for @escaping @callee_guaranteed (@unowned CameraPosition) -> ();
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v4, v5);
}

uint64_t key path setter for ConversationController.didUpdateLocalParticipantCameraPosition : ConversationController(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed CameraPosition) -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateLocalParticipantCameraPosition);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v3, v4);
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v8, v9);
}

uint64_t key path getter for ConversationController.didUpdateRecordingLocalVideo : ConversationController@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateRecordingLocalVideo);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ()partial apply;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v4, v5);
}

uint64_t key path setter for ConversationController.didUpdateRecordingLocalVideo : ConversationController(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = thunk for @escaping @callee_guaranteed (@in_guaranteed Bool) -> (@out ())partial apply;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateRecordingLocalVideo);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v3, v4);
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v8, v9);
}

uint64_t key path getter for ConversationController.didFinishWindowResize : ConversationController@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didFinishWindowResize);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v4, v5);
}

uint64_t key path setter for ConversationController.didFinishWindowResize : ConversationController(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = thunk for @escaping @callee_guaranteed () -> (@out ())partial apply;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didFinishWindowResize);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v3, v4);
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v8, v9);
}

uint64_t key path getter for ConversationController.didUpdateLocalScreenSharing : ConversationController@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateLocalScreenSharing);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ()partial apply;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v4, v5);
}

uint64_t key path setter for ConversationController.didUpdateLocalScreenSharing : ConversationController(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = thunk for @escaping @callee_guaranteed (@in_guaranteed Bool) -> (@out ())partial apply;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateLocalScreenSharing);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v3, v4);
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v8, v9);
}

uint64_t key path getter for ConversationController.didUpdateHasRingingCalls : ConversationController@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateHasRingingCalls);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ()partial apply;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v4, v5);
}

uint64_t key path setter for ConversationController.didUpdateHasRingingCalls : ConversationController(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = thunk for @escaping @callee_guaranteed (@in_guaranteed Bool) -> (@out ())partial apply;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateHasRingingCalls);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v3, v4);
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v8, v9);
}

uint64_t key path getter for ConversationController.didUpdateWantsHoldMusic : ConversationController@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateWantsHoldMusic);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ()partial apply;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v4, v5);
}

uint64_t key path setter for ConversationController.didUpdateWantsHoldMusic : ConversationController(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = thunk for @escaping @callee_guaranteed (@in_guaranteed Bool) -> (@out ())partial apply;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateWantsHoldMusic);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v3, v4);
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v8, v9);
}

uint64_t key path getter for ConversationController.didStartVideoForLocalParticipant : ConversationController@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didStartVideoForLocalParticipant);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Participant, @unowned BroadcastingState) -> ();
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v4, v5);
}

uint64_t key path setter for ConversationController.didStartVideoForLocalParticipant : ConversationController(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Participant, @in_guaranteed BroadcastingState) -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didStartVideoForLocalParticipant);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v3, v4);
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v8, v9);
}

uint64_t key path getter for ConversationController.conversationStateDidChange : ConversationController@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationStateDidChange);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = partial apply for thunk for @escaping @callee_guaranteed (@unowned TUConversationState, @unowned TUConversationState) -> ();
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v4, v5);
}

uint64_t key path setter for ConversationController.conversationStateDidChange : ConversationController(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed TUConversationState, @in_guaranteed TUConversationState) -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationStateDidChange);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v3, v4);
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v8, v9);
}

uint64_t key path getter for ConversationController.conversationVisibleRemoteParticipantCountDidChange : ConversationController@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationVisibleRemoteParticipantCountDidChange);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = thunk for @escaping @callee_guaranteed (@unowned Int) -> ()partial apply;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v4, v5);
}

uint64_t key path setter for ConversationController.conversationVisibleRemoteParticipantCountDidChange : ConversationController(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed [Participant]) -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationVisibleRemoteParticipantCountDidChange);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v3, v4);
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v8, v9);
}

uint64_t key path getter for ConversationController.conversationLetMeInRequestStateDidChange : ConversationController@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationLetMeInRequestStateDidChange);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = partial apply for thunk for @escaping @callee_guaranteed (@unowned TUConversationLetMeInRequestState) -> ();
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v4, v5);
}

uint64_t key path setter for ConversationController.conversationLetMeInRequestStateDidChange : ConversationController(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed [Participant]) -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationLetMeInRequestStateDidChange);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v3, v4);
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v8, v9);
}

uint64_t key path getter for ConversationController.conversationIgnoreLetMeInRequestsDidChange : ConversationController@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationIgnoreLetMeInRequestsDidChange);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ()partial apply;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v4, v5);
}

uint64_t key path setter for ConversationController.conversationIgnoreLetMeInRequestsDidChange : ConversationController(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = thunk for @escaping @callee_guaranteed (@in_guaranteed Bool) -> (@out ())partial apply;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationIgnoreLetMeInRequestsDidChange);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v3, v4);
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v8, v9);
}

uint64_t key path getter for ConversationController.conversationRejectedParticipantsCountDidChange : ConversationController@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationRejectedParticipantsCountDidChange);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = partial apply for thunk for @escaping @callee_guaranteed (@unowned Int) -> ();
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v4, v5);
}

uint64_t key path setter for ConversationController.conversationRejectedParticipantsCountDidChange : ConversationController(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed [UUID : IDSCapabilitiesChecker.Capabilities]) -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationRejectedParticipantsCountDidChange);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v3, v4);
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v8, v9);
}

uint64_t key path getter for ConversationController.didAddPendingParticipant : ConversationController@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didAddPendingParticipant);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = thunk for @escaping @callee_guaranteed (@in_guaranteed ScreenShareAttributes?) -> ()partial apply;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v4, v5);
}

uint64_t key path setter for ConversationController.didAddPendingParticipant : ConversationController(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = thunk for @escaping @callee_guaranteed (@in_guaranteed ScreenShareAttributes?) -> (@out ())partial apply;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didAddPendingParticipant);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v3, v4);
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v8, v9);
}

uint64_t key path getter for ConversationController.didRemovePendingParticipant : ConversationController@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didRemovePendingParticipant);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = thunk for @escaping @callee_guaranteed (@in_guaranteed ScreenShareAttributes?) -> ()partial apply;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v4, v5);
}

uint64_t key path setter for ConversationController.didRemovePendingParticipant : ConversationController(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = thunk for @escaping @callee_guaranteed (@in_guaranteed ScreenShareAttributes?) -> (@out ())partial apply;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didRemovePendingParticipant);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v3, v4);
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v8, v9);
}

uint64_t key path getter for ConversationController.didApprovePendingParticipant : ConversationController@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didApprovePendingParticipant);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = thunk for @escaping @callee_guaranteed (@in_guaranteed ScreenShareAttributes?) -> ()partial apply;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v4, v5);
}

uint64_t key path setter for ConversationController.didApprovePendingParticipant : ConversationController(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = thunk for @escaping @callee_guaranteed (@in_guaranteed ScreenShareAttributes?) -> (@out ())partial apply;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didApprovePendingParticipant);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v3, v4);
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v8, v9);
}

uint64_t key path getter for ConversationController.didUpdateParticipantAVMode : ConversationController@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateParticipantAVMode);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = thunk for @escaping @callee_guaranteed (@in_guaranteed ScreenShareAttributes?) -> ()partial apply;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v4, v5);
}

uint64_t key path setter for ConversationController.didUpdateParticipantAVMode : ConversationController(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = thunk for @escaping @callee_guaranteed (@in_guaranteed ScreenShareAttributes?) -> (@out ())partial apply;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateParticipantAVMode);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v3, v4);
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v8, v9);
}

uint64_t key path getter for ConversationController.didInviteOtherParticipants : ConversationController@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didInviteOtherParticipants);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed [Participant]) -> ();
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v4, v5);
}

uint64_t key path setter for ConversationController.didInviteOtherParticipants : ConversationController(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed [Participant]) -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didInviteOtherParticipants);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v3, v4);
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v8, v9);
}

uint64_t key path getter for ConversationController.cameraPositionDidChange : ConversationController@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_cameraPositionDidChange);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Participant, @unowned CameraPosition) -> ();
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v4, v5);
}

uint64_t key path setter for ConversationController.cameraPositionDidChange : ConversationController(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Participant, @in_guaranteed CameraPosition) -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC15ConversationKit22ConversationController_cameraPositionDidChange);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v3, v4);
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v8, v9);
}

uint64_t key path getter for ConversationController.groupNameAndPhotoDidChange : ConversationController@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_groupNameAndPhotoDidChange);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Conversation, @guaranteed Data?) -> ();
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v4, v5);
}

uint64_t key path setter for ConversationController.groupNameAndPhotoDidChange : ConversationController(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Conversation, @in_guaranteed Data?) -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC15ConversationKit22ConversationController_groupNameAndPhotoDidChange);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v3, v4);
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v8, v9);
}

uint64_t key path getter for ConversationController.sessionActionNoticePosted : ConversationController@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_sessionActionNoticePosted);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Conversation, @in_guaranteed Participant, @guaranteed TUConversationNotice, @unowned TUScreenShareDeviceFamily?) -> ();
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v4, v5);
}

uint64_t key path setter for ConversationController.sessionActionNoticePosted : ConversationController(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Conversation, @in_guaranteed Participant, @in_guaranteed TUConversationNotice, @in_guaranteed TUScreenShareDeviceFamily?) -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC15ConversationKit22ConversationController_sessionActionNoticePosted);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v3, v4);
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v8, v9);
}

uint64_t key path getter for ConversationController.secondaryPillStateChanged : ConversationController@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_secondaryPillStateChanged);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = thunk for @escaping @callee_guaranteed (@in_guaranteed Conversation, @in_guaranteed Activity, @unowned TUConversationActivitySessionApplicationState) -> ()partial apply;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v4, v5);
}

uint64_t key path setter for ConversationController.secondaryPillStateChanged : ConversationController(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Conversation, @in_guaranteed Activity, @in_guaranteed TUConversationActivitySessionApplicationState) -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC15ConversationKit22ConversationController_secondaryPillStateChanged);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v3, v4);
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v8, v9);
}

uint64_t key path getter for ConversationController.willTakeMoment : ConversationController@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_willTakeMoment);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v4, v5);
}

uint64_t key path setter for ConversationController.willTakeMoment : ConversationController(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = thunk for @escaping @callee_guaranteed () -> (@out ())partial apply;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC15ConversationKit22ConversationController_willTakeMoment);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v3, v4);
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v8, v9);
}

uint64_t key path getter for ConversationController.shouldPauseOnFirstLocalVideoFrame : ConversationController@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_shouldPauseOnFirstLocalVideoFrame);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = thunk for @escaping @callee_guaranteed () -> (@unowned Bool)partial apply;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v4, v5);
}

uint64_t key path setter for ConversationController.shouldPauseOnFirstLocalVideoFrame : ConversationController(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = thunk for @escaping @callee_guaranteed () -> (@out Bool)partial apply;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC15ConversationKit22ConversationController_shouldPauseOnFirstLocalVideoFrame);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v3, v4);
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v8, v9);
}

uint64_t key path getter for ConversationController.conversationLinkDidChange : ConversationController@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationLinkDidChange);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed URL) -> ();
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v4, v5);
}

uint64_t key path setter for ConversationController.conversationLinkDidChange : ConversationController(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed URL) -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationLinkDidChange);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v3, v4);
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v8, v9);
}

uint64_t key path getter for ConversationController.didFailToStartCamera : ConversationController@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didFailToStartCamera);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = partial apply for thunk for @escaping @callee_guaranteed () -> ();
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v4, v5);
}

uint64_t key path setter for ConversationController.didFailToStartCamera : ConversationController(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed () -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didFailToStartCamera);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v3, v4);
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v8, v9);
}

uint64_t key path getter for ConversationController.callStatusDidChange : ConversationController@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_callStatusDidChange);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = thunk for @escaping @callee_guaranteed (@guaranteed Call) -> ()partial apply;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v4, v5);
}

uint64_t key path setter for ConversationController.callStatusDidChange : ConversationController(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = thunk for @escaping @callee_guaranteed (@in_guaranteed Call) -> (@out ())partial apply;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC15ConversationKit22ConversationController_callStatusDidChange);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v3, v4);
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v8, v9);
}

uint64_t key path getter for ConversationController.callSharePlayCapabilityDidChange : ConversationController@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_callSharePlayCapabilityDidChange);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = thunk for @escaping @callee_guaranteed (@guaranteed Call) -> ()partial apply;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v4, v5);
}

uint64_t key path setter for ConversationController.callSharePlayCapabilityDidChange : ConversationController(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = thunk for @escaping @callee_guaranteed (@in_guaranteed Call) -> (@out ())partial apply;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC15ConversationKit22ConversationController_callSharePlayCapabilityDidChange);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v3, v4);
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v8, v9);
}

uint64_t key path getter for ConversationController.callAnyRemoteSupportsRequestToScreenShareDidChange : ConversationController@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_callAnyRemoteSupportsRequestToScreenShareDidChange);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = thunk for @escaping @callee_guaranteed (@guaranteed Call) -> ()partial apply;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v4, v5);
}

uint64_t key path setter for ConversationController.callAnyRemoteSupportsRequestToScreenShareDidChange : ConversationController(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = thunk for @escaping @callee_guaranteed (@in_guaranteed Call) -> (@out ())partial apply;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC15ConversationKit22ConversationController_callAnyRemoteSupportsRequestToScreenShareDidChange);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v3, v4);
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v8, v9);
}

uint64_t key path getter for ConversationController.greenTea3PCallStatusChanged : ConversationController@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_greenTea3PCallStatusChanged);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = thunk for @escaping @callee_guaranteed (@guaranteed Call) -> ()partial apply;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v4, v5);
}

uint64_t key path setter for ConversationController.greenTea3PCallStatusChanged : ConversationController(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = thunk for @escaping @callee_guaranteed (@in_guaranteed Call) -> (@out ())partial apply;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC15ConversationKit22ConversationController_greenTea3PCallStatusChanged);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v3, v4);
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v8, v9);
}

uint64_t key path getter for ConversationController.pttCallStatusDidChange : ConversationController@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_pttCallStatusDidChange);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = thunk for @escaping @callee_guaranteed (@guaranteed Call) -> ()partial apply;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v4, v5);
}

uint64_t key path setter for ConversationController.pttCallStatusDidChange : ConversationController(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = thunk for @escaping @callee_guaranteed (@in_guaranteed Call) -> (@out ())partial apply;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC15ConversationKit22ConversationController_pttCallStatusDidChange);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v3, v4);
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v8, v9);
}

uint64_t key path getter for ConversationController.localParticipantRequestedVideoUpgrade : ConversationController@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_localParticipantRequestedVideoUpgrade);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed Call) -> ();
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v4, v5);
}

uint64_t key path setter for ConversationController.localParticipantRequestedVideoUpgrade : ConversationController(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Call) -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC15ConversationKit22ConversationController_localParticipantRequestedVideoUpgrade);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v3, v4);
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v8, v9);
}

uint64_t key path getter for ConversationController.didUpdateCaptions : ConversationController@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateCaptions);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed URL) -> ();
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v4, v5);
}

uint64_t key path setter for ConversationController.didUpdateCaptions : ConversationController(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed URL) -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateCaptions);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v3, v4);
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v8, v9);
}

uint64_t key path getter for ConversationController.didToggleCaptions : ConversationController@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didToggleCaptions);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ()partial apply;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v4, v5);
}

uint64_t key path setter for ConversationController.didToggleCaptions : ConversationController(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = thunk for @escaping @callee_guaranteed (@in_guaranteed Bool) -> (@out ())partial apply;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didToggleCaptions);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v3, v4);
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v8, v9);
}

uint64_t key path getter for ConversationController.didUpdateIDSCapabilities : ConversationController@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateIDSCapabilities);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed [UUID : IDSCapabilitiesChecker.Capabilities]) -> ();
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v4, v5);
}

uint64_t key path setter for ConversationController.didUpdateIDSCapabilities : ConversationController(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed [UUID : IDSCapabilitiesChecker.Capabilities]) -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateIDSCapabilities);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v3, v4);
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v8, v9);
}

uint64_t key path getter for ConversationController.videoMessageErrorOccured : ConversationController@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_videoMessageErrorOccured);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = partial apply for thunk for @escaping @callee_guaranteed (@unowned VideoMessageController.UnrecoverableErrors) -> ();
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v4, v5);
}

uint64_t key path setter for ConversationController.videoMessageErrorOccured : ConversationController(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = _sSbytIegnr_SbIegy_TRTA_0;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC15ConversationKit22ConversationController_videoMessageErrorOccured);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v3, v4);
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v8, v9);
}

uint64_t key path getter for ConversationController.screenSharingAvailabilityDidChange : ConversationController@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_screenSharingAvailabilityDidChange);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = _sSbIegy_SbytIegnr_TRTA_0;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v4, v5);
}

uint64_t key path setter for ConversationController.screenSharingAvailabilityDidChange : ConversationController(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = _sSbytIegnr_SbIegy_TRTA_0;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC15ConversationKit22ConversationController_screenSharingAvailabilityDidChange);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v3, v4);
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v8, v9);
}

uint64_t key path getter for ConversationController.isRemoteParticipantEligibleForVideoMessagingBlock : ConversationController@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_isRemoteParticipantEligibleForVideoMessagingBlock);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = _sSbIegd_SbIegr_TRTA_0;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v4, v5);
}

uint64_t key path setter for ConversationController.isRemoteParticipantEligibleForVideoMessagingBlock : ConversationController(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = _sSbIegr_SbIegd_TRTA_0;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC15ConversationKit22ConversationController_isRemoteParticipantEligibleForVideoMessagingBlock);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v3, v4);
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v8, v9);
}

char *closure #1 in ConversationController.updateLayoutStyle(_:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = result;
    v21 = a2;
    v22 = v4;
    v23 = v3;
    v9 = OBJC_IVAR____TtC15ConversationKit22ConversationController_callCenter;
    swift_beginAccess();
    outlined init with copy of CallCenterProvider(&v8[v9], v26);
    v11 = v27;
    v10 = v28;
    __swift_project_boxed_opaque_existential_1(v26, v27);
    v12 = &v8[OBJC_IVAR____TtC15ConversationKit22ConversationController_call];
    swift_beginAccess();
    v13 = *(v12 + 1);
    v14 = *(v10 + 104);
    v15 = swift_unknownObjectRetain();
    v14(&v24, v15, v13, v11, v10);
    swift_unknownObjectRelease();
    if (v25)
    {
      outlined init with take of TapInteractionHandler(&v24, v29);
      __swift_destroy_boxed_opaque_existential_1(v26);
      outlined init with copy of CallCenterProvider(&v8[v9], v26);
      v16 = v27;
      v17 = v28;
      __swift_project_boxed_opaque_existential_1(v26, v27);
      v18 = v30;
      v19 = v31;
      __swift_project_boxed_opaque_existential_1(v29, v30);
      (*(v19 + 8))(v18, v19);
      (*(v17 + 136))(v21 & 1, v6, v16, v17);

      (*(v22 + 8))(v6, v23);
      __swift_destroy_boxed_opaque_existential_1(v26);
      v20 = v29;
    }

    else
    {

      outlined destroy of CallControlsService?(&v24, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
      v20 = v26;
    }

    return __swift_destroy_boxed_opaque_existential_1(v20);
  }

  return result;
}

uint64_t key path getter for ConversationController.fetchUISceneOrientation : ConversationController@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_fetchUISceneOrientation);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = partial apply for thunk for @escaping @callee_guaranteed () -> (@unowned CNKDeviceOrientation?);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v4, v5);
}

uint64_t key path setter for ConversationController.fetchUISceneOrientation : ConversationController(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed () -> (@out CNKDeviceOrientation?);
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC15ConversationKit22ConversationController_fetchUISceneOrientation);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v3, v4);
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v8, v9);
}

uint64_t ConversationController.didUpdateVisibleParticipantScreenInfo.getter(uint64_t *a1, void (*a2)(uint64_t))
{
  OUTLINED_FUNCTION_3_37(*a1);
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v3 = OUTLINED_FUNCTION_4_31();
  a2(v3);
  return OUTLINED_FUNCTION_4_31();
}

uint64_t ConversationController.didUpdateVisibleParticipantScreenInfo.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  OUTLINED_FUNCTION_15_25();
  v9 = OUTLINED_FUNCTION_3_37(*v8);
  OUTLINED_FUNCTION_3_5(v9, v10);
  v11 = *v4;
  v12 = v4[1];
  *v4 = v6;
  v4[1] = v5;
  return a4(v11, v12);
}

uint64_t ConversationController.callCenter.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15ConversationKit22ConversationController_callCenter;
  OUTLINED_FUNCTION_112_1();
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  return outlined init with copy of CallCenterProvider(v1 + v3, a1);
}

uint64_t ConversationController.call.setter()
{
  OUTLINED_FUNCTION_55();
  v3 = OUTLINED_FUNCTION_3_37(OBJC_IVAR____TtC15ConversationKit22ConversationController_call);
  OUTLINED_FUNCTION_3_5(v3, v4);
  *v1 = v2;
  v1[1] = v0;
  return swift_unknownObjectRelease();
}

uint64_t ConversationController.isSplitView.getter(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC15ConversationKit22ConversationController_isSplitView;
  OUTLINED_FUNCTION_19_1(a1);
  return *(v1 + v2);
}

void key path getter for ConversationController.isSplitView : ConversationController(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15ConversationKit22ConversationController_isSplitView;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t ConversationController.didDeferStartCameraAction.setter(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t))
{
  v6 = a1;
  OUTLINED_FUNCTION_296_0(a1, a2, a3);
  v7 = *(v3 + v4);
  *(v3 + v4) = v6;
  return a3(v7);
}

void ConversationController.isSplitView.didset(char a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit22ConversationController_isSplitView;
  swift_beginAccess();
  if (*(v1 + v3) == 1 && (a1 & 1) == 0)
  {
    ConversationController.updateWaitingParticipantsAsDoneWaiting()();
  }
}

void ConversationController.updateWaitingParticipantsAsDoneWaiting()()
{
  v1 = v0;
  v39 = type metadata accessor for Participant.State(0);
  MEMORY[0x1EEE9AC00](v39);
  v3 = &v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Participant(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v38 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v37 - v8;
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = (&v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v13 = static OS_dispatch_queue.main.getter();
  (*(v11 + 104))(v13, *MEMORY[0x1E69E8020], v10);
  v14 = _dispatchPreconditionTest(_:)();
  (*(v11 + 8))(v13, v10);
  if ((v14 & 1) == 0)
  {
LABEL_15:
    __break(1u);
    return;
  }

  v15 = OBJC_IVAR____TtC15ConversationKit22ConversationController_remoteParticipants;
  swift_beginAccess();
  v16 = *(*(v1 + v15) + 16);
  if (v16)
  {
    v17 = 0;
    while (1)
    {
      v18 = *(v1 + v15);
      if (v17 >= *(v18 + 16))
      {
        break;
      }

      v19 = (*(v5 + 80) + 32) & ~*(v5 + 80);
      v20 = *(v5 + 72) * v17;
      _s15ConversationKit11ParticipantVWOcTm_17(v18 + v19 + v20, v9);
      _s15ConversationKit11ParticipantVWOcTm_17(v9, v3);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v21 = type metadata accessor for Date();
        v22 = (*(*(v21 - 8) + 8))(v3, v21);
        Participant.asFullyWaited()(v22, v23, v24, v25, v26, v27, v28, v29, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48);
        v30 = *(v1 + v15);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          specialized _ArrayBuffer._consumeAndCreateNew()();
          v30 = v36;
        }

        if (v17 >= *(v30 + 16))
        {
          goto LABEL_14;
        }

        v31 = v30 + v19 + v20;
        v32 = v38;
        outlined assign with copy of Participant.State(v38, v31);
        ConversationController.remoteParticipants.setter(v30, &OBJC_IVAR____TtC15ConversationKit22ConversationController_remoteParticipants, v33);
        v34 = type metadata accessor for Participant;
        v35 = v32;
      }

      else
      {
        v34 = type metadata accessor for Participant.State;
        v35 = v3;
      }

      _s15ConversationKit11ParticipantVWOhTm_18(v35, v34);
      ++v17;
      _s15ConversationKit11ParticipantVWOhTm_18(v9, type metadata accessor for Participant);
      if (v16 == v17)
      {
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

uint64_t ConversationController.isSplitView.modify()
{
  v0 = OUTLINED_FUNCTION_39_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_18_7(v1);
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_36_4();
  return OUTLINED_FUNCTION_28_3();
}

void ConversationController.conversationUUID.didset(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v17[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v17[-v7];
  v9 = OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationUUID;
  swift_beginAccess();
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v1 + v9, v8, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v10 = type metadata accessor for UUID();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v8, 1, v10);
  outlined destroy of CallControlsService?(v8, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  if (EnumTagSinglePayload == 1 && __swift_getEnumTagSinglePayload(a1, 1, v10) != 1 || (outlined init with copy of IDView<AvatarStackView, [UUID]>(v1 + v9, v5, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR), v12 = __swift_getEnumTagSinglePayload(v5, 1, v10), outlined destroy of CallControlsService?(v5, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR), v12 != 1) && __swift_getEnumTagSinglePayload(a1, 1, v10) == 1)
  {
    v13 = v1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_isTrackingActiveConversationDidChange;
    swift_beginAccess();
    v14 = *v13;
    if (*v13)
    {
      v15 = *(v13 + 8);

      active = ConversationController.isTrackingActiveConversation.getter();
      v14(active & 1);
      outlined consume of (@escaping @callee_guaranteed () -> ())?(v14, v15);
    }
  }
}

uint64_t ConversationController.conversationUUID.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v8[-v4];
  v6 = OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationUUID;
  swift_beginAccess();
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v1 + v6, v5, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  swift_beginAccess();
  outlined assign with copy of UUID?(a1, v1 + v6);
  swift_endAccess();
  ConversationController.conversationUUID.didset(v5);
  outlined destroy of CallControlsService?(a1, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  return outlined destroy of CallControlsService?(v5, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
}

uint64_t ConversationController.videoMessageConversationUUID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15ConversationKit22ConversationController_videoMessageConversationUUID;
  OUTLINED_FUNCTION_112_1();
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  return outlined init with copy of IDView<AvatarStackView, [UUID]>(v1 + v3, a1, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
}

uint64_t ConversationController.mostRecentActiveConversation.setter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15ConversationKit22ConversationController_videoMessageController);
  OUTLINED_FUNCTION_123_2();
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v2, v3, v4, v5);
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x128))(v9);
  v6 = OUTLINED_FUNCTION_44_0();
  return outlined destroy of CallControlsService?(v6, v7, &_s15ConversationKit0A0_pSgMR);
}

double ConversationController.callUUIDsAwaitingFirstRemoteVideoFrame.didset(unint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v92 = &v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v95 = &v77 - v7;
  v98 = type metadata accessor for UUID();
  v96 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98);
  v78 = &v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v81 = &v77 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v80 = &v77 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v97 = &v77 - v14;
  v15 = *(v2 + OBJC_IVAR____TtC15ConversationKit22ConversationController_callUUIDsAwaitingFirstRemoteVideoFrame);

  v16 = specialized Set.subtracting(_:)(a1, v15);

  v18 = specialized Set.subtracting(_:)(v17, a1);

  if (one-time initialization token for conversationKit == -1)
  {
    goto LABEL_2;
  }

LABEL_37:
  swift_once();
LABEL_2:
  v19 = static OS_os_log.conversationKit;
  v20 = static os_log_type_t.error.getter();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v22 = swift_allocObject();
  v91 = xmmword_1BC4BA940;
  *(v22 + 16) = xmmword_1BC4BA940;
  v99 = v16;
  v93 = v16;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy10Foundation4UUIDVGMd, &_sShy10Foundation4UUIDVGMR);
  v23 = String.init<A>(reflecting:)();
  v25 = v24;
  *(v22 + 56) = MEMORY[0x1E69E6158];
  v26 = lazy protocol witness table accessor for type String and conformance String();
  *(v22 + 64) = v26;
  *(v22 + 32) = v23;
  *(v22 + 40) = v25;
  os_log(_:dso:log:type:_:)("Inserted timeout for first remote frame for callUUID %@", 55, 2, &dword_1BBC58000, v19, v20, v22);

  v27 = static os_log_type_t.error.getter();
  v86 = v21;
  v28 = swift_allocObject();
  *(v28 + 16) = v91;
  v99 = v18;

  v29 = String.init<A>(reflecting:)();
  *(v28 + 56) = MEMORY[0x1E69E6158];
  *(v28 + 64) = v26;
  v85 = v26;
  *(v28 + 32) = v29;
  *(v28 + 40) = v30;
  v87 = v19;
  os_log(_:dso:log:type:_:)("Removed timeout for first remote frame for callUUID %@", 54, 2, &dword_1BBC58000, v19, v27, v28);

  v31 = v2 + OBJC_IVAR____TtC15ConversationKit22ConversationController_isWaitingOnFirstRemoteFrameDidChange;
  swift_beginAccess();
  v32 = *v31;
  if (*v31)
  {
    v33 = *(v31 + 8);

    ConversationController.isWaitingOnFirstRemoteFrame.getter();
    v32(v34 & 1);
    outlined consume of (@escaping @callee_guaranteed () -> ())?(v32, v33);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BC4BAA20;
  *(inited + 32) = 0xD000000000000025;
  *(inited + 40) = 0x80000001BC508740;
  v36 = v2 + OBJC_IVAR____TtC15ConversationKit22ConversationController_call;
  swift_beginAccess();
  v37 = *(v36 + 8);
  ObjectType = swift_getObjectType();
  v39 = *(v37 + 232);
  *(inited + 72) = v98;
  __swift_allocate_boxed_opaque_existential_1((inited + 48));
  swift_unknownObjectRetain();
  v39(ObjectType, v37);
  swift_unknownObjectRelease();
  *(inited + 80) = 0xD000000000000021;
  *(inited + 88) = 0x80000001BC508770;
  ConversationController.isWaitingOnFirstRemoteFrame.getter();
  *(inited + 120) = MEMORY[0x1E69E6370];
  *(inited + 96) = v40 & 1;
  v41 = Dictionary.init(dictionaryLiteral:)();
  v42 = *(v2 + OBJC_IVAR____TtC15ConversationKit22ConversationController_mode) == 1;
  v90 = v2;
  if (v42)
  {
    v43 = [objc_opt_self() defaultCenter];
    v47 = v93;
    if (one-time initialization token for DidChangeIsWaitingOnFirstFrameNotification != -1)
    {
      swift_once();
    }

    v44 = static ConversationController.DidChangeIsWaitingOnFirstFrameNotification;
    specialized _dictionaryUpCast<A, B, C, D>(_:)(v41);
    v46 = v45;

    outlined bridged method (mnnbnn) of @objc NSNotificationCenter.post(name:object:userInfo:)(v44, 0, v46, v43);
  }

  else
  {

    v47 = v93;
  }

  v48 = v18 + 56;
  v49 = 1 << *(v18 + 32);
  v50 = -1;
  if (v49 < 64)
  {
    v50 = ~(-1 << v49);
  }

  v2 = v50 & *(v18 + 7);
  v82 = OBJC_IVAR____TtC15ConversationKit22ConversationController_callUUIDsAwaitingFirstRemoteVideoFrameTasks;
  v51 = (v49 + 63) >> 6;
  v89 = (v96 + 16);
  v79 = (v96 + 32);
  v16 = (v96 + 8);

  v52 = 0;
  v53 = v92;
  v83 = v18 + 56;
  v88 = v18;
  v84 = v16;
  while (v2)
  {
LABEL_16:
    v55 = *(v96 + 16);
    v56 = v97;
    v57 = v98;
    v55(v97, *(v18 + 6) + *(v96 + 72) * (__clz(__rbit64(v2)) | (v52 << 6)), v98);
    v94 = static os_log_type_t.error.getter();
    v58 = swift_allocObject();
    *(v58 + 16) = v91;
    v59 = v95;
    v55(v95, v56, v57);
    __swift_storeEnumTagSinglePayload(v59, 0, 1, v57);
    outlined init with copy of IDView<AvatarStackView, [UUID]>(v59, v53, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    if (__swift_getEnumTagSinglePayload(v53, 1, v57) == 1)
    {
      outlined destroy of CallControlsService?(v53, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v60 = 0xE300000000000000;
      v61 = 7104878;
      v16 = v84;
    }

    else
    {
      v62 = v80;
      v63 = v98;
      (*v79)(v80, v53, v98);
      v55(v81, v62, v63);
      v61 = String.init<A>(reflecting:)();
      v60 = v64;
      v16 = v84;
      (*v84)(v62, v63);
    }

    outlined destroy of CallControlsService?(v95, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v65 = v85;
    *(v58 + 56) = MEMORY[0x1E69E6158];
    *(v58 + 64) = v65;
    *(v58 + 32) = v61;
    *(v58 + 40) = v60;
    os_log(_:dso:log:type:_:)("Cancelling timeout for first remote frame for callUUID %@", 57, 2, &dword_1BBC58000, v87, v94, v58);

    v66 = v90;
    v67 = v82;
    swift_beginAccess();
    v18 = v88;
    if (*(*(v66 + v67) + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(), (v68 & 1) != 0))
    {
      swift_endAccess();

      dispatch thunk of DispatchWorkItem.cancel()();
    }

    else
    {
      swift_endAccess();
    }

    v47 = v93;
    v53 = v92;
    v48 = v83;
    v2 &= v2 - 1;
    (*v16)(v97, v98);
  }

  while (1)
  {
    v54 = v52 + 1;
    if (__OFADD__(v52, 1))
    {
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    if (v54 >= v51)
    {
      break;
    }

    v2 = *&v48[8 * v54];
    ++v52;
    if (v2)
    {
      v52 = v54;
      goto LABEL_16;
    }
  }

  v69 = 1 << *(v47 + 32);
  v70 = -1;
  if (v69 < 64)
  {
    v70 = ~(-1 << v69);
  }

  v71 = v70 & *(v47 + 7);
  v72 = (v69 + 63) >> 6;

  v73 = 0;
  v74 = v90;
  v2 = v78;
  v18 = v89;
  if (v71)
  {
    while (1)
    {
      v75 = v73;
LABEL_32:
      (*(v96 + 16))(v2, *(v47 + 6) + *(v96 + 72) * (__clz(__rbit64(v71)) | (v75 << 6)), v98);
      closure #2 in ConversationController.callUUIDsAwaitingFirstRemoteVideoFrame.didset(v2, v74);
      v71 &= v71 - 1;
      (*v16)(v2, v98);
      v73 = v75;
      if (!v71)
      {
        goto LABEL_29;
      }
    }
  }

  while (1)
  {
LABEL_29:
    v75 = v73 + 1;
    if (__OFADD__(v73, 1))
    {
      goto LABEL_36;
    }

    if (v75 >= v72)
    {
      break;
    }

    v71 = *(v47 + v75 + 7);
    ++v73;
    if (v71)
    {
      goto LABEL_32;
    }
  }

  return result;
}

void (*specialized Set.subtracting(_:)(unint64_t a1, uint64_t a2))(char *, unint64_t, uint64_t, __n128)
{
  if (*(a1 + 16) <= *(a2 + 16) >> 3)
  {
    specialized Set._subtract<A>(_:)(a1);
    return a2;
  }

  else
  {

    return specialized _NativeSet.subtracting<A>(_:)(a1, a2);
  }
}

uint64_t closure #2 in ConversationController.callUUIDsAwaitingFirstRemoteVideoFrame.didset(uint64_t a1, uint64_t a2)
{
  v50 = a2;
  v3 = type metadata accessor for DispatchTime();
  v53 = *(v3 - 8);
  v54 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v51 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v52 = &v42 - v6;
  v48 = type metadata accessor for DispatchWorkItemFlags();
  MEMORY[0x1EEE9AC00](v48);
  v49 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v45 = v10;
  v47 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v42 - v12;
  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  v44 = static OS_os_log.conversationKit;
  HIDWORD(v43) = static os_log_type_t.error.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1BC4BA940;
  v15 = *(v9 + 16);
  v15(v13, a1, v8);
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v8);
  specialized >> prefix<A>(_:)(v13, v16, v17, v18, v19, v20, v21, v22, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51);
  v46 = a1;
  v24 = v23;
  v26 = v25;
  outlined destroy of CallControlsService?(v13, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  *(v14 + 56) = MEMORY[0x1E69E6158];
  *(v14 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v14 + 32) = v24;
  *(v14 + 40) = v26;
  os_log(_:dso:log:type:_:)("Adding timeout for first remote frame for callUUID %@", 53, 2, &dword_1BBC58000, v44, HIDWORD(v43), v14);

  v27 = swift_allocObject();
  v28 = v50;
  swift_unknownObjectWeakInit();
  v29 = v47;
  v15(v47, a1, v8);
  v30 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v31 = (v45 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  v32 = swift_allocObject();
  (*(v9 + 32))(v32 + v30, v29, v8);
  *(v32 + v31) = v27;
  aBlock[4] = partial apply for closure #1 in closure #2 in ConversationController.callUUIDsAwaitingFirstRemoteVideoFrame.didset;
  aBlock[5] = v32;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_1132;
  _Block_copy(aBlock);
  v56 = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type ConversationController and conformance ConversationController(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  type metadata accessor for DispatchWorkItem();
  swift_allocObject();
  v33 = DispatchWorkItem.init(flags:block:)();

  v34 = OBJC_IVAR____TtC15ConversationKit22ConversationController_callUUIDsAwaitingFirstRemoteVideoFrameTasks;
  swift_beginAccess();

  swift_isUniquelyReferenced_nonNull_native();
  v56 = *(v28 + v34);
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)();
  *(v28 + v34) = v56;
  swift_endAccess();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  v35 = static OS_dispatch_queue.main.getter();
  v36 = v51;
  static DispatchTime.now()();
  v37 = v52;
  + infix(_:_:)(3.0);
  v38 = *(v53 + 8);
  v39 = v36;
  v40 = v54;
  v38(v39, v54);
  MEMORY[0x1BFB21520](v37, v33);

  return (v38)(v37, v40);
}

void closure #1 in closure #2 in ConversationController.callUUIDsAwaitingFirstRemoteVideoFrame.didset(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v26 - v7;
  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  v9 = static OS_os_log.conversationKit;
  v10 = static os_log_type_t.error.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1BC4BA940;
  v12 = type metadata accessor for UUID();
  (*(*(v12 - 8) + 16))(v8, a1, v12);
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v12);
  specialized >> prefix<A>(_:)(v8, v13, v14, v15, v16, v17, v18, v19, v26[0], v26[1], v26[2], v26[3], v26[4], v26[5], v26[6], v26[7], v26[8], v26[9]);
  v21 = v20;
  v23 = v22;
  outlined destroy of CallControlsService?(v8, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  *(v11 + 56) = MEMORY[0x1E69E6158];
  *(v11 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v11 + 32) = v21;
  *(v11 + 40) = v23;
  os_log(_:dso:log:type:_:)("Timeout reached waiting for first remote frame for callUUID %@", 62, 2, &dword_1BBC58000, v9, v10, v11);

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v25 = Strong;
    v26[0] = *(Strong + OBJC_IVAR____TtC15ConversationKit22ConversationController_callUUIDsAwaitingFirstRemoteVideoFrame);

    specialized Set._Variant.remove(_:)();
    outlined destroy of CallControlsService?(v5, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    ConversationController.callUUIDsAwaitingFirstRemoteVideoFrame.setter(v26[0]);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v5, 1, 1, v12);
    outlined destroy of CallControlsService?(v5, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  }
}

double ConversationController.callUUIDsAwaitingFirstRemoteVideoFrame.setter(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_callUUIDsAwaitingFirstRemoteVideoFrame);
  *(v1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_callUUIDsAwaitingFirstRemoteVideoFrame) = a1;
  ConversationController.callUUIDsAwaitingFirstRemoteVideoFrame.didset(v2);

  return result;
}

uint64_t ConversationController.localVideoRecordingTransactionID.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_6_11(a1);
  v2 = *v1;

  return v2;
}

void ConversationController.description.getter()
{
  OUTLINED_FUNCTION_29();
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  OUTLINED_FUNCTION_22(v3);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_101();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS4name_ypSg5valuetGMd, &_ss23_ContiguousArrayStorageCySS4name_ypSg5valuetGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BC4D4E70;
  *(inited + 32) = 1701080941;
  *(inited + 40) = 0xE400000000000000;
  *(inited + 48) = v0[OBJC_IVAR____TtC15ConversationKit22ConversationController_mode];
  OUTLINED_FUNCTION_24_7();
  v6[9] = v7;
  v6[10] = 0xD000000000000011;
  v6[11] = v8;
  v9 = OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationState;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v10 = *&v0[v9];
  type metadata accessor for TUConversationState(0);
  *(inited + 96) = v10;
  OUTLINED_FUNCTION_24_7();
  *(inited + 120) = v11;
  *(inited + 128) = 0xD000000000000010;
  *(inited + 136) = v12;
  v13 = OBJC_IVAR____TtC15ConversationKit22ConversationController_localParticipant;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  *(inited + 168) = type metadata accessor for Participant(0);
  __swift_allocate_boxed_opaque_existential_1((inited + 144));
  OUTLINED_FUNCTION_1_186();
  _s15ConversationKit11ParticipantVWOcTm_17(&v0[v13], v14);
  OUTLINED_FUNCTION_24_7();
  *(inited + 176) = 0xD000000000000012;
  *(inited + 184) = v15;
  v16 = OBJC_IVAR____TtC15ConversationKit22ConversationController_remoteParticipants;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v17 = *&v0[v16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15ConversationKit11ParticipantVGMd, &_sSay15ConversationKit11ParticipantVGMR);
  *(inited + 192) = v17;
  OUTLINED_FUNCTION_24_7();
  *(inited + 216) = v18;
  *(inited + 224) = 0xD000000000000011;
  *(inited + 232) = v19;
  v20 = &v0[OBJC_IVAR____TtC15ConversationKit22ConversationController_broadcastingState];
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v21 = v20[16];
  *(inited + 240) = *v20;
  *(inited + 256) = v21;
  *(inited + 264) = &type metadata for BroadcastingState;
  *(inited + 272) = 1819042147;
  *(inited + 280) = 0xE400000000000000;
  v22 = OBJC_IVAR____TtC15ConversationKit22ConversationController_call;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v23 = *&v0[v22];
  swift_getObjectType();
  *(inited + 288) = v23;
  OUTLINED_FUNCTION_24_7();
  *(inited + 312) = v24;
  *(inited + 320) = 0xD000000000000010;
  *(inited + 328) = v25;
  v26 = OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationUUID;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  outlined init with copy of IDView<AvatarStackView, [UUID]>(&v0[v26], v1, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v27 = type metadata accessor for UUID();
  v28 = OUTLINED_FUNCTION_90_2();
  OUTLINED_FUNCTION_115(v28, v29, v27);
  if (v30)
  {

    swift_unknownObjectRetain();
    outlined destroy of CallControlsService?(v1, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    *(inited + 336) = 0u;
    *(inited + 352) = 0u;
  }

  else
  {
    *(inited + 360) = v27;
    __swift_allocate_boxed_opaque_existential_1((inited + 336));
    OUTLINED_FUNCTION_2_3();
    (*(v31 + 32))();

    swift_unknownObjectRetain();
  }

  v33[3] = ObjectType;
  v33[0] = v0;
  v32 = v0;
  String.init(namedPropertyValues:for:)(inited, v33);
  OUTLINED_FUNCTION_30_0();
}

void ConversationController.init(activeCall:callCenter:participantMediaProviderCreator:participantCaptionsProviderCreator:includeLocalParticipantInVisibleParticipants:screenSharingSession:mode:idsCapabilitiesChecker:defaults:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char *a22, char *a23)
{
  OUTLINED_FUNCTION_29();
  v48 = v26;
  v49 = v23;
  v52 = v27;
  v51 = v28;
  v50 = v29;
  v31 = v30;
  v33 = v32;
  v47 = v34;
  v36 = v35;
  v38 = *(v32 + 24);
  v37 = *(v32 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v32, v38);
  OUTLINED_FUNCTION_2_7();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_6_1();
  (*(v40 + 16))(v24);
  v41 = v31[3];
  v42 = v31[4];
  v43 = OUTLINED_FUNCTION_48_0();
  __swift_mutable_project_boxed_opaque_existential_1(v43, v44);
  OUTLINED_FUNCTION_2_7();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_4_2();
  (*(v46 + 16))(v25);
  specialized ConversationController.init(activeCall:callCenter:participantMediaProviderCreator:participantCaptionsProviderCreator:includeLocalParticipantInVisibleParticipants:screenSharingSession:mode:idsCapabilitiesChecker:defaults:)(v36, v47, v48, v24, v25, v50, v51, v52, a21, a22, a23, v49, v38, v41, v37, v42);
  __swift_destroy_boxed_opaque_existential_1(v31);
  __swift_destroy_boxed_opaque_existential_1(v33);
  OUTLINED_FUNCTION_30_0();
}

void ConversationController.updateIdentityClaimingAssociations(in:)()
{
  OUTLINED_FUNCTION_29();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  OUTLINED_FUNCTION_22(v4);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_13_1();
  v63 = v6;
  v7 = OUTLINED_FUNCTION_4_24();
  v8 = type metadata accessor for Participant(v7);
  OUTLINED_FUNCTION_1();
  v65 = v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_4();
  v61 = v11;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_23_19();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_32();
  v68 = v14;
  v67 = OBJC_IVAR____TtC15ConversationKit22ConversationController_remoteParticipants;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v15 = 0;
  v58 = xmmword_1BC4BA940;
  v64 = v3;
  v66 = v0;
  v62 = v1;
  while (1)
  {
    while (1)
    {
      if (v15 >= *(*(v0 + v67) + 16))
      {
        OUTLINED_FUNCTION_30_0();
        return;
      }

      v16 = (*(v65 + 80) + 32) & ~*(v65 + 80);
      v17 = *(v65 + 72);
      v18 = v15;
      v19 = v17 * v15;
      OUTLINED_FUNCTION_1_186();
      _s15ConversationKit11ParticipantVWOcTm_17(v20 + v19, v68);
      v21 = OUTLINED_FUNCTION_209();
      ConversationController.activeParticipant(correspondingTo:in:)(v21, v22);
      if (!v23)
      {
        OUTLINED_FUNCTION_0_222();
        _s15ConversationKit11ParticipantVWOhTm_18(v68, v54);
        goto LABEL_32;
      }

      v24 = v23;
      ConversationController.identityClaimingAssociationRelationship(for:in:)(v23, v3);
      if (!v26)
      {
        ConversationController.remoteParticipant(with:)(v25, v63);
        v28 = OUTLINED_FUNCTION_90_2();
        OUTLINED_FUNCTION_115(v28, v29, v8);
        if (v30)
        {
          outlined destroy of CallControlsService?(v63, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
        }

        else
        {
          OUTLINED_FUNCTION_4_150();
          _s15ConversationKit11ParticipantVWObTm_8(v63, v62);
          v31 = ConversationController.indexOfRemoteParticipant(with:)(v62 + *(v8 + 20));
          if (v32)
          {
            OUTLINED_FUNCTION_0_222();
            _s15ConversationKit11ParticipantVWOhTm_18(v62, v33);
          }

          else
          {
            v59 = v31;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit11ParticipantVGMd, &_ss23_ContiguousArrayStorageCy15ConversationKit11ParticipantVGMR);
            *(swift_allocObject() + 16) = v58;
            OUTLINED_FUNCTION_1_186();
            _s15ConversationKit11ParticipantVWOcTm_17(v68, v34 + v16);
            _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC15ConversationKit11ParticipantV_Tt0g5();
            Participant.withAssociatedParticipants(_:)(v35, v36, v37, v38, v39, v40, v41, v42, v58, *(&v58 + 1), v59, v61, v62, v63, v64, v65, v66, v67, v68, v69);

            v43 = *(v0 + v67);

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              specialized _ArrayBuffer._consumeAndCreateNew()();
              v43 = v57;
            }

            if ((v60 & 0x8000000000000000) != 0)
            {
              goto LABEL_35;
            }

            if (v60 >= *(v43 + 16))
            {
              goto LABEL_36;
            }

            OUTLINED_FUNCTION_42_31();
            outlined assign with copy of Participant.State(v61, v44);
            ConversationController.remoteParticipants.setter(v43, &OBJC_IVAR____TtC15ConversationKit22ConversationController_remoteParticipants, v45);
            _s15ConversationKit11ParticipantVWOhTm_18(v61, type metadata accessor for Participant);
            _s15ConversationKit11ParticipantVWOhTm_18(v62, type metadata accessor for Participant);
          }
        }

        goto LABEL_18;
      }

      if (v26 != 1)
      {
        break;
      }

      OUTLINED_FUNCTION_0_222();
      _s15ConversationKit11ParticipantVWOhTm_18(v68, v55);

      v0 = v66;
LABEL_32:
      v15 = v18 + 1;
    }

    v0 = v66;
    if (v26 == 255)
    {
      OUTLINED_FUNCTION_0_222();
      _s15ConversationKit11ParticipantVWOhTm_18(v68, v27);

      goto LABEL_32;
    }

LABEL_18:
    v46 = *(v0 + v67);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      specialized _ArrayBuffer._consumeAndCreateNew()();
      v46 = v56;
    }

    v47 = *(v46 + 16);
    if (v18 >= v47)
    {
      break;
    }

    v48 = v47 - 1;
    OUTLINED_FUNCTION_0_222();
    _s15ConversationKit11ParticipantVWOhTm_18(v46 + v16 + v19, v49);
    v50 = v48 - v18;
    if (v17 > 0 || v46 + v16 + v19 >= v46 + v16 + v19 + v17 + (v48 - v18) * v17)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    *(v46 + 16) = v48;
    v52 = v46;
    v0 = v66;
    ConversationController.remoteParticipants.setter(v52, &OBJC_IVAR____TtC15ConversationKit22ConversationController_remoteParticipants, v50);

    OUTLINED_FUNCTION_0_222();
    _s15ConversationKit11ParticipantVWOhTm_18(v68, v53);
    v3 = v64;
    v15 = v18;
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
}

void closure #1 in ConversationController.deinit(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  v3 = (*(v2 + 80))(v1, v2);
  [v3 stopPreview];
}

uint64_t ConversationController.indexOfRemoteParticipant(with:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit22ConversationController_remoteParticipants;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v4 = *(v1 + v3);
  v7[2] = a1;

  v5 = specialized Collection.firstIndex(where:)(partial apply for closure #1 in ConversationController.participant(with:), v7, v4);

  return v5;
}

Swift::Int_optional __swiftcall ConversationController.indexOfRemoteIDSParticipant(with:)(Swift::UInt64 with)
{
  OUTLINED_FUNCTION_29();
  v4 = v3;
  v5 = type metadata accessor for Participant(0);
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_24_5();
  v7 = OBJC_IVAR____TtC15ConversationKit22ConversationController_remoteParticipants;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v8 = *(v1 + v7);
  v9 = *(v8 + 16);
  if (v9)
  {
    OUTLINED_FUNCTION_40_3();

    v12 = 0;
    while (v12 < *(v8 + 16))
    {
      OUTLINED_FUNCTION_1_186();
      _s15ConversationKit11ParticipantVWOcTm_17(v13, v2);
      v14 = v2 + *(v5 + 28);
      if (*v14 && (*(v14 + 16) & 1) == 0)
      {
        v16 = *(v14 + 8);
        OUTLINED_FUNCTION_0_222();
        v10 = _s15ConversationKit11ParticipantVWOhTm_18(v2, v17);
        if (v16 == v4)
        {
          goto LABEL_11;
        }
      }

      else
      {
        OUTLINED_FUNCTION_0_222();
        v10 = _s15ConversationKit11ParticipantVWOhTm_18(v2, v15);
      }

      if (v9 == ++v12)
      {
LABEL_11:

        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:
    OUTLINED_FUNCTION_30_0();
  }

  result.value = v10;
  result.is_nil = v11;
  return result;
}

void ConversationController.participant(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = type metadata accessor for Participant(0);
  v5 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC15ConversationKit22ConversationController_remoteParticipants;
  swift_beginAccess();
  v9 = *(v2 + v8);
  v10 = *(v9 + 16);
  if (v10)
  {
    v20 = a2;
    v11 = v9 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

    v12 = 0;
    while (v12 < *(v9 + 16))
    {
      _s15ConversationKit11ParticipantVWOcTm_17(v11 + *(v5 + 72) * v12, v7);
      v13 = &v7[*(v21 + 28)];
      v14 = *v13;
      v15 = *(v13 + 4);
      if (*v13)
      {
        v16 = *(v13 + 1);
      }

      else
      {
        v16 = 0;
      }

      v17 = [a1 identifier];
      if (v14 && (v15 & 1) == 0 && v16 == v17)
      {

        a2 = v20;
        _s15ConversationKit11ParticipantVWObTm_8(v7, v20);
        v18 = 0;
        goto LABEL_14;
      }

      ++v12;
      _s15ConversationKit11ParticipantVWOhTm_18(v7, type metadata accessor for Participant);
      if (v10 == v12)
      {

        v18 = 1;
        a2 = v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v18 = 1;
LABEL_14:
    __swift_storeEnumTagSinglePayload(a2, v18, 1, v21);
  }
}

void ConversationController.participant(fromMemberAssociation:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = type metadata accessor for Participant(0);
  v5 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC15ConversationKit22ConversationController_remoteParticipants;
  swift_beginAccess();
  v9 = *(v2 + v8);
  v10 = *(v9 + 16);
  if (v10)
  {
    v20 = a2;
    v11 = v9 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

    v12 = 0;
    while (1)
    {
      if (v12 >= *(v9 + 16))
      {
        __break(1u);
        return;
      }

      _s15ConversationKit11ParticipantVWOcTm_17(v11 + *(v5 + 72) * v12, v7);
      v13 = *&v7[*(v21 + 28)];
      if (v13)
      {
        v14 = v13;
      }

      v15 = [a1 handle];
      v16 = v15;
      if (!v13)
      {
        break;
      }

      if (!v15)
      {
        v16 = v13;
LABEL_13:

        goto LABEL_14;
      }

      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00);
      v17 = static NSObject.== infix(_:_:)();

      if (v17)
      {
        goto LABEL_17;
      }

LABEL_14:
      ++v12;
      _s15ConversationKit11ParticipantVWOhTm_18(v7, type metadata accessor for Participant);
      if (v10 == v12)
      {

        v18 = 1;
        a2 = v20;
        goto LABEL_18;
      }
    }

    if (!v15)
    {
LABEL_17:

      a2 = v20;
      _s15ConversationKit11ParticipantVWObTm_8(v7, v20);
      v18 = 0;
      goto LABEL_18;
    }

    goto LABEL_13;
  }

  v18 = 1;
LABEL_18:
  __swift_storeEnumTagSinglePayload(a2, v18, 1, v21);
}

void ConversationController.remoteParticipant(with:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for Participant(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC15ConversationKit22ConversationController_remoteParticipants;
  swift_beginAccess();
  v10 = *(v2 + v9);
  v11 = *(v10 + 16);
  if (v11)
  {
    v12 = v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80));

    v13 = 0;
    while (v13 < *(v10 + 16))
    {
      _s15ConversationKit11ParticipantVWOcTm_17(v12 + *(v6 + 72) * v13, v8);
      v14 = &v8[*(v5 + 28)];
      if (*v14 && (*(v14 + 4) & 1) == 0 && *(v14 + 1) == a1)
      {

        _s15ConversationKit11ParticipantVWObTm_8(v8, a2);
        v15 = 0;
        goto LABEL_11;
      }

      ++v13;
      _s15ConversationKit11ParticipantVWOhTm_18(v8, type metadata accessor for Participant);
      if (v11 == v13)
      {

        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_9:
    v15 = 1;
LABEL_11:
    __swift_storeEnumTagSinglePayload(a2, v15, 1, v5);
  }
}

void ConversationController.identityClaimingAssociationRelationship(for:in:)(void *a1, void *a2)
{
  swift_getObjectType();
  v4 = [a1 handle];
  static ConversationController.member(correspondingTo:in:)(v4, a2);
  v6 = v5;

  if (!v6)
  {
    return;
  }

  v7 = [v6 association];
  if (!v7)
  {
LABEL_17:

    return;
  }

  v8 = v7;
  if ([v7 type] != 2)
  {
LABEL_13:

    return;
  }

  if (([v8 isPrimary] & 1) == 0)
  {
    v20 = [v8 identifier];
    v21 = a2[3];
    v22 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v21);
    if (v20 != (*(v22 + 240))(v21, v22))
    {
      [v8 identifier];

      return;
    }

    goto LABEL_13;
  }

  v9 = [v8 handle];
  static ConversationController.member(correspondingTo:in:)(v9, a2);
  v11 = v10;

  if (!v11)
  {
LABEL_16:

    goto LABEL_17;
  }

  v12 = [v11 association];
  if (!v12)
  {

    goto LABEL_16;
  }

  v13 = v12;
  v14 = a2[3];
  v15 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v14);
  v16 = (*(v15 + 168))(v14, v15);
  if (v16)
  {
    v17 = v16;
    if ([v11 isEqualToMember_])
    {
      v18 = [a1 identifier];
      v19 = [v13 identifier];

      if (v18 == v19)
      {

LABEL_22:
        return;
      }
    }

    else
    {
    }
  }

  v52 = v11;
  v23 = [v13 identifier];
  v24 = a2[3];
  v25 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v24);
  if ((*(v25 + 240))(v24, v25) == v23)
  {

    goto LABEL_22;
  }

  v49 = v13;
  if ([a1 identifier] != v23)
  {

    return;
  }

  v26 = a2[3];
  v27 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v26);
  v28 = (*(v27 + 104))(v26, v27);
  if ((v28 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationParticipant, 0x1E69D8B90);
    lazy protocol witness table accessor for type TUConversationInvitationPreference and conformance NSObject(&lazy protocol witness table cache variable for type TUConversationParticipant and conformance NSObject, &lazy cache variable for type metadata for TUConversationParticipant, 0x1E69D8B90);
    Set.Iterator.init(_cocoa:)();
    v30 = v54;
    v29 = v55;
    v31 = v56;
    v32 = v57;
    v33 = v58;
  }

  else
  {
    v34 = -1 << *(v28 + 32);
    v29 = v28 + 56;
    v31 = ~v34;
    v35 = -v34;
    if (v35 < 64)
    {
      v36 = ~(-1 << v35);
    }

    else
    {
      v36 = -1;
    }

    v33 = v36 & *(v28 + 56);
    v32 = 0;
  }

  v37 = (v31 + 64) >> 6;
  v38 = v52;
  v50 = v29;
  while (v30 < 0)
  {
    v43 = v38;
    if (!__CocoaSet.Iterator.next()())
    {
      v48 = v43;
      goto LABEL_44;
    }

    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationParticipant, 0x1E69D8B90);
    swift_dynamicCast();
    v41 = v33;
    v42 = v53;
LABEL_40:
    if (!v42)
    {
      v48 = v52;
LABEL_44:
      outlined consume of Set<TUHandle>.Iterator._Variant(v30);

      return;
    }

    v44 = v30;
    v51 = v42;
    v45 = [v42 handle];
    v46 = [v8 handle];
    v47 = [v45 isEquivalentToHandle_];

    if (v47)
    {
      outlined consume of Set<TUHandle>.Iterator._Variant(v44);

      [v51 identifier];

      return;
    }

    v33 = v41;
    v38 = v52;
    v30 = v44;
    v29 = v50;
  }

  v39 = v32;
  v40 = v33;
  if (v33)
  {
LABEL_37:
    v41 = (v40 - 1) & v40;
    v42 = *(*(v30 + 48) + ((v32 << 9) | (8 * __clz(__rbit64(v40)))));
    goto LABEL_40;
  }

  while (1)
  {
    v32 = v39 + 1;
    if (__OFADD__(v39, 1))
    {
      break;
    }

    if (v32 >= v37)
    {
      v48 = v52;
      goto LABEL_44;
    }

    v40 = *(v29 + 8 * v32);
    ++v39;
    if (v40)
    {
      goto LABEL_37;
    }
  }

  __break(1u);
}

void static ConversationController.member(correspondingTo:in:)(uint64_t a1, void *a2)
{
  v3 = a2[3];
  v4 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v3);
  v5 = (*(v4 + 168))(v3, v4);
  if (v5)
  {
    v6 = v5;
    v7 = [v5 handle];
    v8 = [v7 isEqualToHandle_];

    if (v8)
    {
      return;
    }
  }

  v9 = a2[3];
  v10 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v9);
  v11 = (*(v10 + 88))(v9, v10);
  v12 = a2[3];
  v13 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v12);
  v14 = (*(v13 + 128))(v12, v13);
  specialized Set.union<A>(_:)(v14, v11, v15, v16, v17, v18, v19, v20, v49, v52, a1, v57, v59, v62, v65, v68, v71, v74, v77, v79, v81, v83, v85, v87, v89, v91, v93, v95, vars0, vars8);
  v22 = v21;
  v23 = a2[3];
  v24 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v23);
  v25 = (*(v24 + 144))(v23, v24);
  specialized Set.union<A>(_:)(v25, v22, v26, v27, v28, v29, v30, v31, v50, v53, v55, v58, v60, v63, v66, v69, v72, v75, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96, vars0a, vars8a);
  if ((v32 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationMember, 0x1E69D8B80);
    lazy protocol witness table accessor for type TUConversationInvitationPreference and conformance NSObject(&lazy protocol witness table cache variable for type TUConversationMember and conformance NSObject, &lazy cache variable for type metadata for TUConversationMember, 0x1E69D8B80);
    Set.Iterator.init(_cocoa:)();
    v34 = v64;
    v33 = v67;
    v36 = v70;
    v35 = v73;
    v37 = v76;
  }

  else
  {
    v38 = -1 << *(v32 + 32);
    v33 = v32 + 56;
    v36 = ~v38;
    v39 = -v38;
    if (v39 < 64)
    {
      v40 = ~(-1 << v39);
    }

    else
    {
      v40 = -1;
    }

    v37 = v40 & *(v32 + 56);
    v35 = 0;
  }

  v51 = v36;
  v41 = (v36 + 64) >> 6;
  if (v34 < 0)
  {
    goto LABEL_17;
  }

LABEL_11:
  v42 = v35;
  v43 = v37;
  v44 = v35;
  if (v37)
  {
LABEL_15:
    v45 = (v43 - 1) & v43;
    v46 = *(*(v34 + 48) + ((v44 << 9) | (8 * __clz(__rbit64(v43)))));
    if (v46)
    {
      do
      {
        v47 = [v46 handle];
        v48 = [v47 isEqualToHandle_];

        if (v48)
        {
          break;
        }

        v35 = v44;
        v37 = v45;
        if ((v34 & 0x8000000000000000) == 0)
        {
          goto LABEL_11;
        }

LABEL_17:
        if (!__CocoaSet.Iterator.next()())
        {
          break;
        }

        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationMember, 0x1E69D8B80);
        swift_dynamicCast();
        v46 = v61;
        v44 = v35;
        v45 = v37;
      }

      while (v61);
    }

LABEL_22:
    outlined consume of Set<TUHandle>.Iterator._Variant(v34);
  }

  else
  {
    while (1)
    {
      v44 = v42 + 1;
      if (__OFADD__(v42, 1))
      {
        break;
      }

      if (v44 >= v41)
      {
        goto LABEL_22;
      }

      v43 = *(v33 + 8 * v44);
      ++v42;
      if (v43)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }
}

void closure #2 in ConversationController.update(presentationContexts:forceUpdate:)(void *__src@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  memcpy(__dst, __src, 0x41uLL);
  v5 = a2[3];
  v6 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v5);
  active = Conversation.displayableActiveParticipants.getter(v5, v6);
  if ((active & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationParticipant, 0x1E69D8B90);
    lazy protocol witness table accessor for type TUConversationInvitationPreference and conformance NSObject(&lazy protocol witness table cache variable for type TUConversationParticipant and conformance NSObject, &lazy cache variable for type metadata for TUConversationParticipant, 0x1E69D8B90);
    Set.Iterator.init(_cocoa:)();
    v9 = v41;
    v8 = v42;
    v11 = v43;
    v10 = v44;
    v12 = v45;
  }

  else
  {
    v13 = -1 << *(active + 32);
    v8 = active + 56;
    v11 = ~v13;
    v14 = -v13;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v12 = v15 & *(active + 56);
    v10 = 0;
  }

  if (v9 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v16 = v10;
  v17 = v12;
  v18 = v10;
  if (v12)
  {
LABEL_12:
    v19 = (v17 - 1) & v17;
    v20 = *(*(v9 + 48) + ((v18 << 9) | (8 * __clz(__rbit64(v17)))));
    if (v20)
    {
      while (1)
      {
        v22 = [v20 identifier];
        if (v22 == __dst[0])
        {
          break;
        }

        v10 = v18;
        v12 = v19;
        if ((v9 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        v21 = __CocoaSet.Iterator.next()();
        if (v21)
        {
          v47 = v21;
          type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationParticipant, 0x1E69D8B90);
          swift_dynamicCast();
          v20 = v40;
          v18 = v10;
          v19 = v12;
          if (v40)
          {
            continue;
          }
        }

        goto LABEL_19;
      }

      v24 = v22;
      outlined consume of Set<TUHandle>.Iterator._Variant(v9);

      v25 = OBJC_IVAR____TtC15ConversationKit22ConversationController_recentPresentationContexts;
      v26 = a3;
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v47 = *(a3 + v25);
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(__dst, v24, isUniquelyReferenced_nonNull_native, v28, v29, v30, v31, v32, v37, a3);
      *(v26 + v25) = v47;
      swift_endAccess();
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationParticipantPresentationContext, 0x1E69D8BA0);
      v33 = [v20 identifier];
      v34 = __dst[1];
      v35 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
      v36 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
      v23 = TUConversationParticipantPresentationContext.__allocating_init(participantIdentifier:videoQuality:visibility:prominence:spatialPosition:isInCanvas:)(v33, v34, v35, v36, __dst[8], *&__dst[4], *&__dst[5], *&__dst[6], *&__dst[7]);
    }

    else
    {
LABEL_19:
      outlined consume of Set<TUHandle>.Iterator._Variant(v9);

      v23 = 0;
    }

    *a4 = v23;
  }

  else
  {
    while (1)
    {
      v18 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v18 >= ((v11 + 64) >> 6))
      {
        goto LABEL_19;
      }

      v17 = *(v8 + 8 * v18);
      ++v16;
      if (v17)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

id TUConversationParticipantPresentationContext.__allocating_init(participantIdentifier:videoQuality:visibility:prominence:spatialPosition:isInCanvas:)(uint64_t a1, uint64_t a2, void *a3, void *a4, char a5, double a6, double a7, double a8, double a9)
{
  v11 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithParticipantIdentifier:a1 videoQuality:a2 visibility:a3 prominence:a4 spatialPosition:a5 & 1 isInCanvas:{a6, a7, a8, a9}];

  return v11;
}

uint64_t closure #1 in ConversationController.participant(with:)(uint64_t a1, uint64_t a2)
{
  v2 = OUTLINED_FUNCTION_46_4();
  type metadata accessor for Participant(v2);
  return static UUID.== infix(_:_:)() & 1;
}

void ConversationController.postParticipantStateChangeCallbacks(for:updatedFrom:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for Participant.State(0);
  MEMORY[0x1EEE9AC00](v5);
  v122 = &v118 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v118 - v8;
  v129 = v2;
  v10 = ConversationController.visibleParticipants.getter();
  v131[2] = a1;
  v11 = specialized Collection.firstIndex(where:)(partial apply for closure #1 in ConversationController.postParticipantStateChangeCallbacks(for:updatedFrom:), v131, v10);
  v13 = v12;

  if (v13)
  {
    v134[0] = 0;
    v134[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(55);
    MEMORY[0x1BFB20B10](0xD000000000000035, 0x80000001BC522B40);
    type metadata accessor for Participant(0);
    _print_unlocked<A, B>(_:_:)();
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v121 = v5;
  v123 = a2;
  if (one-time initialization token for conversationKit != -1)
  {
    goto LABEL_46;
  }

  while (1)
  {
    v14 = static OS_os_log.conversationKit;
    v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v15 = swift_allocObject();
    v124 = xmmword_1BC4BAA20;
    *(v15 + 16) = xmmword_1BC4BAA20;
    v128 = v11;
    v134[0] = v11;
    v16 = String.init<A>(reflecting:)();
    v18 = v17;
    v19 = MEMORY[0x1E69E6158];
    *(v15 + 56) = MEMORY[0x1E69E6158];
    v20 = lazy protocol witness table accessor for type String and conformance String();
    *(v15 + 64) = v20;
    *(v15 + 32) = v16;
    *(v15 + 40) = v18;
    _s15ConversationKit11ParticipantVWOcTm_17(a1, v9);
    v130 = type metadata accessor for Participant(0);
    __swift_storeEnumTagSinglePayload(v9, 0, 1, v130);
    specialized >> prefix<A>(_:)();
    v22 = v21;
    v24 = v23;
    outlined destroy of CallControlsService?(v9, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
    *(v15 + 96) = v19;
    *(v15 + 104) = v20;
    v126 = v20;
    *(v15 + 72) = v22;
    *(v15 + 80) = v24;
    v25 = static os_log_type_t.default.getter();
    v127 = v14;
    os_log(_:dso:log:type:_:)("Updated participant at index %@: %@", 35, 2, &dword_1BBC58000, v14, v25, v15);

    v26 = v123;
    if ((Participant.isActive.getter() & 1) != 0 || (Participant.isActive.getter() & 1) == 0)
    {
      break;
    }

    v27 = Participant.isDestinationTemporary.getter();
    v28 = v128;
    if ((v27 & 1) == 0)
    {
      goto LABEL_13;
    }

    v119 = v9;
    v120 = a1;
    v29 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Non-Apple participant joined conversation, hiding non-Apple invited tiles", 73, 2, &dword_1BBC58000, v127, v29, MEMORY[0x1E69E7CC0]);
    v11 = OBJC_IVAR____TtC15ConversationKit22ConversationController_otherInvitedParticipants;
    v30 = v129;
    swift_beginAccess();
    a1 = *(*(v30 + v11) + 16);
    if (!a1)
    {
LABEL_12:
      a1 = v120;
      ConversationController.scheduleKickabilityUpdate(for:)(v120);
      v28 = v128;
      v26 = v123;
      v9 = v119;
LABEL_13:
      v37 = swift_allocObject();
      *(v37 + 16) = v124;
      v134[0] = v28;
      v38 = String.init<A>(reflecting:)();
      v19 = MEMORY[0x1E69E6158];
      v39 = v26;
      v40 = v126;
      *(v37 + 56) = MEMORY[0x1E69E6158];
      *(v37 + 64) = v40;
      *(v37 + 32) = v38;
      *(v37 + 40) = v41;
      _s15ConversationKit11ParticipantVWOcTm_17(a1, v9);
      __swift_storeEnumTagSinglePayload(v9, 0, 1, v130);
      specialized >> prefix<A>(_:)();
      v43 = v42;
      v45 = v44;
      outlined destroy of CallControlsService?(v9, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
      *(v37 + 96) = v19;
      *(v37 + 104) = v40;
      v26 = v39;
      *(v37 + 72) = v43;
      *(v37 + 80) = v45;
      v46 = static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)("Participant did become active. Index: %@, %@", 44, 2, &dword_1BBC58000, v127, v46, v37);

      v47 = v129 + OBJC_IVAR____TtC15ConversationKit22ConversationController_visibleParticipantDidBecomeActive;
      swift_beginAccess();
      v48 = *v47;
      if (*v47)
      {
        v49 = *(v47 + 8);

        v48(a1, v128);
        outlined consume of (@escaping @callee_guaranteed () -> ())?(v48, v49);
      }

      break;
    }

    v31 = 0;
    v9 = 1;
    while (1)
    {
      v32 = v30;
      v33 = *(v30 + v11);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized _ArrayBuffer._consumeAndCreateNew()();
        v33 = v36;
      }

      if (v31 >= *(v33 + 16))
      {
        break;
      }

      *(v33 + ((*(*(v130 - 8) + 80) + 32) & ~*(*(v130 - 8) + 80)) + *(*(v130 - 8) + 72) * v31 + *(v130 + 52)) = 1;
      v35 = v33;
      v30 = v32;
      ConversationController.remoteParticipants.setter(v35, &OBJC_IVAR____TtC15ConversationKit22ConversationController_otherInvitedParticipants, v34);
      if (a1 == ++v31)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_46:
    swift_once();
  }

  if ((Participant.isActive.getter() & 1) != 0 && (Participant.isActive.getter() & 1) == 0)
  {
    v50 = swift_allocObject();
    *(v50 + 16) = v124;
    v134[0] = v128;
    v51 = String.init<A>(reflecting:)();
    v52 = v26;
    v53 = v126;
    *(v50 + 56) = v19;
    *(v50 + 64) = v53;
    *(v50 + 32) = v51;
    *(v50 + 40) = v54;
    _s15ConversationKit11ParticipantVWOcTm_17(a1, v9);
    __swift_storeEnumTagSinglePayload(v9, 0, 1, v130);
    specialized >> prefix<A>(_:)();
    v56 = v55;
    v58 = v57;
    outlined destroy of CallControlsService?(v9, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
    *(v50 + 96) = v19;
    *(v50 + 104) = v53;
    v26 = v52;
    *(v50 + 72) = v56;
    *(v50 + 80) = v58;
    v59 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Participant did become inactive. Index: %@, %@", 46, 2, &dword_1BBC58000, v127, v59, v50);

    v60 = v129 + OBJC_IVAR____TtC15ConversationKit22ConversationController_visibleParticipantDidBecomeInactive;
    swift_beginAccess();
    v61 = *v60;
    if (*v60)
    {
      v62 = *(v60 + 8);

      v61(a1, v128);
      outlined consume of (@escaping @callee_guaranteed () -> ())?(v61, v62);
    }
  }

  Participant.screenInfo.getter();
  Participant.screenInfo.getter();
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v137, v134, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMR);
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v136, v135, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMR);
  if (v134[3] == 1)
  {
    outlined destroy of CallControlsService?(v136, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMR);
    outlined destroy of CallControlsService?(v137, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMR);
    if (v135[3] == 1)
    {
      outlined destroy of CallControlsService?(v134, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMR);
      v63 = v128;
      v64 = a1;
      goto LABEL_28;
    }

    goto LABEL_24;
  }

  outlined init with copy of IDView<AvatarStackView, [UUID]>(v134, v133, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMR);
  if (v135[3] == 1)
  {
    outlined destroy of CallControlsService?(v136, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMR);
    outlined destroy of CallControlsService?(v137, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMR);
    outlined destroy of Participant.ScreenInfo(v133);
LABEL_24:
    outlined destroy of CallControlsService?(v134, &_s15ConversationKit11ParticipantV10ScreenInfoVSg_AFtMd, &_s15ConversationKit11ParticipantV10ScreenInfoVSg_AFtMR);
    v63 = v128;
    v64 = a1;
    goto LABEL_25;
  }

  memcpy(v132, v135, 0xD1uLL);
  v79 = static Participant.ScreenInfo.== infix(_:_:)();
  outlined destroy of Participant.ScreenInfo(v132);
  outlined destroy of CallControlsService?(v136, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMR);
  outlined destroy of CallControlsService?(v137, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMR);
  outlined destroy of Participant.ScreenInfo(v133);
  outlined destroy of CallControlsService?(v134, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMR);
  v63 = v128;
  v64 = a1;
  if (!v79)
  {
LABEL_25:
    v65 = swift_allocObject();
    *(v65 + 16) = v124;
    v134[0] = v63;
    v66 = String.init<A>(reflecting:)();
    v67 = MEMORY[0x1E69E6158];
    v68 = v26;
    v69 = v126;
    *(v65 + 56) = MEMORY[0x1E69E6158];
    *(v65 + 64) = v69;
    *(v65 + 32) = v66;
    *(v65 + 40) = v70;
    _s15ConversationKit11ParticipantVWOcTm_17(v64, v9);
    __swift_storeEnumTagSinglePayload(v9, 0, 1, v130);
    specialized >> prefix<A>(_:)();
    v72 = v71;
    v74 = v73;
    outlined destroy of CallControlsService?(v9, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
    *(v65 + 96) = v67;
    *(v65 + 104) = v69;
    v26 = v68;
    *(v65 + 72) = v72;
    *(v65 + 80) = v74;
    v75 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Participant screen info did change. Index: %@, %@", 49, 2, &dword_1BBC58000, v127, v75, v65);

    v76 = v129 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateVisibleParticipantScreenInfo;
    swift_beginAccess();
    v77 = *v76;
    if (*v76)
    {
      v78 = *(v76 + 8);

      v77(v64, v63);
      outlined consume of (@escaping @callee_guaranteed () -> ())?(v77, v78);
    }
  }

LABEL_28:
  if (Participant.isPendingAuthorization.getter() & 1) == 0 && (Participant.isPendingAuthorization.getter())
  {
    v80 = swift_allocObject();
    *(v80 + 16) = xmmword_1BC4BA940;
    _s15ConversationKit11ParticipantVWOcTm_17(v64, v9);
    __swift_storeEnumTagSinglePayload(v9, 0, 1, v130);
    specialized >> prefix<A>(_:)();
    v82 = v81;
    v84 = v83;
    outlined destroy of CallControlsService?(v9, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
    v85 = v126;
    *(v80 + 56) = MEMORY[0x1E69E6158];
    *(v80 + 64) = v85;
    *(v80 + 32) = v82;
    *(v80 + 40) = v84;
    v86 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Participant changed to pending: %@", 34, 2, &dword_1BBC58000, v127, v86, v80);

    v87 = v129 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didAddPendingParticipant;
    swift_beginAccess();
    v88 = *v87;
    if (*v87)
    {
      v89 = *(v87 + 8);

      v88(v64);
      outlined consume of (@escaping @callee_guaranteed () -> ())?(v88, v89);
    }
  }

  if (Participant.isPendingAuthorization.getter())
  {
    v90 = v122;
    _s15ConversationKit11ParticipantVWOcTm_17(v64, v122);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v91 = type metadata accessor for Date();
      (*(*(v91 - 8) + 8))(v90, v91);
      v92 = v129 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didApprovePendingParticipant;
      swift_beginAccess();
      v93 = *v92;
      if (*v92)
      {
        v94 = *(v92 + 8);

        v93(v64);
        outlined consume of (@escaping @callee_guaranteed () -> ())?(v93, v94);
      }
    }

    else
    {
      _s15ConversationKit11ParticipantVWOhTm_18(v90, type metadata accessor for Participant.State);
    }
  }

  if (Participant.isActive.getter() & 1) != 0 && (Participant.isActive.getter())
  {
    v95 = Participant.isActiveWithAV.getter() & 1;
    if (v95 != (Participant.isActiveWithAV.getter() & 1))
    {
      v96 = swift_allocObject();
      *(v96 + 16) = v124;
      _s15ConversationKit11ParticipantVWOcTm_17(v64, v9);
      v97 = v130;
      __swift_storeEnumTagSinglePayload(v9, 0, 1, v130);
      specialized >> prefix<A>(_:)();
      v99 = v98;
      v100 = v64;
      v101 = v9;
      v102 = v100;
      v104 = v103;
      outlined destroy of CallControlsService?(v101, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
      v105 = v126;
      *(v96 + 56) = MEMORY[0x1E69E6158];
      *(v96 + 64) = v105;
      *(v96 + 32) = v99;
      *(v96 + 40) = v104;
      _s15ConversationKit11ParticipantVWOcTm_17(v26, v101);
      __swift_storeEnumTagSinglePayload(v101, 0, 1, v97);
      specialized >> prefix<A>(_:)();
      v107 = v106;
      v109 = v108;
      v110 = v101;
      v64 = v102;
      v63 = v128;
      outlined destroy of CallControlsService?(v110, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
      *(v96 + 96) = MEMORY[0x1E69E6158];
      *(v96 + 104) = v105;
      *(v96 + 72) = v107;
      *(v96 + 80) = v109;
      v111 = static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)("Participant changed isActiveWithAV: %@ vs %@", 44, 2, &dword_1BBC58000, v127, v111, v96);

      v112 = v129 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateParticipantAVMode;
      swift_beginAccess();
      v113 = *v112;
      if (*v112)
      {
        v114 = *(v112 + 8);

        v113(v102);
        outlined consume of (@escaping @callee_guaranteed () -> ())?(v113, v114);
      }
    }
  }

  v115 = v129 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateVisibleParticipant;
  swift_beginAccess();
  v116 = *v115;
  if (*v115)
  {
    v117 = *(v115 + 8);

    v116(v64, v63);
    outlined consume of (@escaping @callee_guaranteed () -> ())?(v116, v117);
  }
}

void ConversationController.updateScreenShare(attributes:shouldUpdateCall:)(uint64_t a1, char a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit21ScreenShareAttributesVSgMd, &_s15ConversationKit21ScreenShareAttributesVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v56 - v8;
  v10 = type metadata accessor for ScreenShareAttributes(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchPredicate();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = (&v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v16 = static OS_dispatch_queue.main.getter();
  (*(v14 + 104))(v16, *MEMORY[0x1E69E8020], v13);
  v17 = _dispatchPreconditionTest(_:)();
  (*(v14 + 8))(v16, v13);
  if ((v17 & 1) == 0)
  {
    __break(1u);
    goto LABEL_18;
  }

  outlined init with copy of IDView<AvatarStackView, [UUID]>(a1, v9, &_s15ConversationKit21ScreenShareAttributesVSgMd, &_s15ConversationKit21ScreenShareAttributesVSgMR);
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    outlined destroy of CallControlsService?(v9, &_s15ConversationKit21ScreenShareAttributesVSgMd, &_s15ConversationKit21ScreenShareAttributesVSgMR);
    if (one-time initialization token for conversationKit == -1)
    {
LABEL_4:
      v18 = static OS_os_log.conversationKit;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_1BC4BAA20;
      specialized >> prefix<A>(_:)();
      v21 = v20;
      v23 = v22;
      v24 = MEMORY[0x1E69E6158];
      *(v19 + 56) = MEMORY[0x1E69E6158];
      v25 = lazy protocol witness table accessor for type String and conformance String();
      *(v19 + 64) = v25;
      *(v19 + 32) = v21;
      *(v19 + 40) = v23;
      v26 = v57 + OBJC_IVAR____TtC15ConversationKit22ConversationController_call;
      swift_beginAccess();
      v27 = *(v26 + 8);
      ObjectType = swift_getObjectType();
      v29 = *(v27 + 352);
      swift_unknownObjectRetain();
      LOBYTE(v27) = v29(ObjectType, v27);
      swift_unknownObjectRelease();
      __src[96] = v27 & 1;
      v30 = String.init<A>(reflecting:)();
      *(v19 + 96) = v24;
      *(v19 + 104) = v25;
      *(v19 + 72) = v30;
      *(v19 + 80) = v31;
      v32 = static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)("Not updating call with screen sharing attributes %@, call isSharingScreen = %@", 78, 2, &dword_1BBC58000, v18, v32, v19);

      return;
    }

LABEL_18:
    swift_once();
    goto LABEL_4;
  }

  _s15ConversationKit11ParticipantVWObTm_8(v9, v12);
  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  v33 = static OS_os_log.conversationKit;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1BC4BA940;
  _s15ConversationKit11ParticipantVWOcTm_17(v12, v6);
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v10);
  specialized >> prefix<A>(_:)();
  v36 = v35;
  v38 = v37;
  outlined destroy of CallControlsService?(v6, &_s15ConversationKit21ScreenShareAttributesVSgMd, &_s15ConversationKit21ScreenShareAttributesVSgMR);
  *(v34 + 56) = MEMORY[0x1E69E6158];
  *(v34 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v34 + 32) = v36;
  *(v34 + 40) = v38;
  v39 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Updating call screen sharing attributes %@", 42, 2, &dword_1BBC58000, v33, v39, v34);

  if ((a2 & 1) == 0 || (v40 = ScreenShareAttributes.tuCallScreenShareAttributes.getter()) == 0)
  {
    _s15ConversationKit11ParticipantVWOhTm_18(v12, type metadata accessor for ScreenShareAttributes);
    return;
  }

  v41 = v40;
  v42 = v57 + OBJC_IVAR____TtC15ConversationKit22ConversationController_call;
  swift_beginAccess();
  v43 = *(v42 + 8);
  v44 = swift_getObjectType();
  v45 = *(v43 + 352);
  swift_unknownObjectRetain();
  LOBYTE(v45) = v45(v44, v43);
  swift_unknownObjectRelease();
  v46 = *(v42 + 8);
  v47 = swift_getObjectType();
  if (v45)
  {
    v48 = *(v46 + 200);
    swift_unknownObjectRetain();
    v49 = v48(v47, v46);
    swift_unknownObjectRelease();
    if (v49)
    {
      v50 = [v49 isSignificantChangeFromAttributes_];

      if (!v50)
      {
        goto LABEL_16;
      }
    }

    v51 = *(v42 + 8);
    v52 = swift_getObjectType();
    v53 = *(v51 + 32);
    swift_unknownObjectRetain();
    v53(v41, v52, v51);
  }

  else
  {
    v54 = *(v46 + 40);
    swift_unknownObjectRetain();
    v54(1, v41, v47, v46);
  }

  swift_unknownObjectRelease();
LABEL_16:
  _s15ConversationKit11ParticipantV21ScreenShareAttributesVyAESo08TUScreeneF0_pcfCTf4en_nSo06TUCalldeF0C_Tt0g5(v41, __src);
  _s15ConversationKit11ParticipantVWOhTm_18(v12, type metadata accessor for ScreenShareAttributes);
  v58 = 0;
  v55 = v57 + OBJC_IVAR____TtC15ConversationKit22ConversationController_latestRemoteAttributes;
  memcpy((v57 + OBJC_IVAR____TtC15ConversationKit22ConversationController_latestRemoteAttributes), __src, 0x60uLL);
  *(v55 + 96) = v58;
}

void closure #2 in ConversationController.setupScreenSharingSessionCallbacks()(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    ConversationController.startScreenShare(attributes:)(a1);
  }
}

void *ConversationController.startScreenShare(attributes:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit21ScreenShareAttributesVSgMd, &_s15ConversationKit21ScreenShareAttributesVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v33[-v5];
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v33[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v10 = static OS_dispatch_queue.main.getter();
  (*(v8 + 104))(v10, *MEMORY[0x1E69E8020], v7);
  v11 = _dispatchPreconditionTest(_:)();
  (*(v8 + 8))(v10, v7);
  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  outlined init with copy of IDView<AvatarStackView, [UUID]>(a1, v6, &_s15ConversationKit21ScreenShareAttributesVSgMd, &_s15ConversationKit21ScreenShareAttributesVSgMR);
  v12 = type metadata accessor for ScreenShareAttributes(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v12) == 1)
  {
    outlined destroy of CallControlsService?(v6, &_s15ConversationKit21ScreenShareAttributesVSgMd, &_s15ConversationKit21ScreenShareAttributesVSgMR);
    goto LABEL_8;
  }

  v13 = ScreenShareAttributes.tuCallScreenShareAttributes.getter();
  _s15ConversationKit11ParticipantVWOhTm_18(v6, type metadata accessor for ScreenShareAttributes);
  if (!v13)
  {
LABEL_8:
    if (one-time initialization token for conversationKit == -1)
    {
LABEL_9:
      v27 = static OS_os_log.conversationKit;
      v28 = static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)("Set call isSharingScreen = YES", 30, 2, &dword_1BBC58000, v27, v28, MEMORY[0x1E69E7CC0]);
      v29 = v2 + OBJC_IVAR____TtC15ConversationKit22ConversationController_call;
      swift_beginAccess();
      v30 = *(v29 + 8);
      ObjectType = swift_getObjectType();
      v32 = *(v30 + 360);
      swift_unknownObjectRetain();
      v32(1, ObjectType, v30);
      return swift_unknownObjectRelease();
    }

LABEL_11:
    swift_once();
    goto LABEL_9;
  }

  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  v14 = static OS_os_log.conversationKit;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1BC4BA940;
  specialized >> prefix<A>(_:)();
  v17 = v16;
  v19 = v18;
  *(v15 + 56) = MEMORY[0x1E69E6158];
  *(v15 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v15 + 32) = v17;
  *(v15 + 40) = v19;
  v20 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Set call isSharingScreen = YES, with attributes %@", 50, 2, &dword_1BBC58000, v14, v20, v15);

  v21 = v2 + OBJC_IVAR____TtC15ConversationKit22ConversationController_call;
  swift_beginAccess();
  v22 = *(v21 + 8);
  v23 = swift_getObjectType();
  v24 = *(v22 + 40);
  swift_unknownObjectRetain();
  v24(1, v13, v23, v22);
  swift_unknownObjectRelease();
  _s15ConversationKit11ParticipantV21ScreenShareAttributesVyAESo08TUScreeneF0_pcfCTf4en_nSo06TUCalldeF0C_Tt0g5(v13, __src);
  v34 = 0;
  v25 = (v2 + OBJC_IVAR____TtC15ConversationKit22ConversationController_latestRemoteAttributes);
  result = memcpy(v25, __src, 0x60uLL);
  v25[96] = v34;
  return result;
}

uint64_t ConversationController.stopScreenShare()()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v5 = static OS_dispatch_queue.main.getter();
  (*(v3 + 104))(v5, *MEMORY[0x1E69E8020], v2);
  v6 = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if ((v6 & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (one-time initialization token for conversationKit != -1)
  {
LABEL_5:
    swift_once();
  }

  v7 = static OS_os_log.conversationKit;
  v8 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Set call isSharingScreen = NO", 29, 2, &dword_1BBC58000, v7, v8, MEMORY[0x1E69E7CC0]);
  v9 = v1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_call;
  swift_beginAccess();
  v10 = *(v9 + 8);
  ObjectType = swift_getObjectType();
  v12 = *(v10 + 360);
  swift_unknownObjectRetain();
  v12(0, ObjectType, v10);
  return swift_unknownObjectRelease();
}

void closure #1 in ConversationController.setupScreenSharingSessionCallbacks()(uint64_t a1, void *a2)
{
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = OUTLINED_FUNCTION_28_0();
    ConversationController.updateScreenShare(attributes:shouldUpdateCall:)(v3, 1);
  }
}

void closure #3 in ConversationController.setupScreenSharingSessionCallbacks()(uint64_t a1)
{
  OUTLINED_FUNCTION_247_0(a1);
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    ConversationController.stopScreenShare()();
  }
}

void ConversationController.updateBuzzedMember(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_29();
  v24 = v20;
  v166 = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  OUTLINED_FUNCTION_22(v26);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_13_1();
  v162 = v28;
  OUTLINED_FUNCTION_4_24();
  v29 = type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_1();
  v159 = v30;
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_40();
  v158 = v32;
  OUTLINED_FUNCTION_4_24();
  v33 = type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_1();
  v157 = v34;
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_40();
  v156 = v36;
  OUTLINED_FUNCTION_4_24();
  v164 = type metadata accessor for DispatchTime();
  OUTLINED_FUNCTION_1();
  v155 = v37;
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_10(v40);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  OUTLINED_FUNCTION_22(v41);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_13_1();
  v44 = OUTLINED_FUNCTION_16(v43);
  v167 = type metadata accessor for Participant(v44);
  OUTLINED_FUNCTION_1();
  v46 = v45;
  MEMORY[0x1EEE9AC00](v47);
  v160 = &v143 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_32();
  v161 = v50;
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_149();
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_32();
  v165 = v53;
  v153 = v54;
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_53_17();
  v56 = type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_320_0();
  v58 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  v59 = OUTLINED_FUNCTION_39_22(v58);
  *v22 = static OS_dispatch_queue.main.getter();
  OUTLINED_FUNCTION_398_0();
  v60(v22);
  _dispatchPreconditionTest(_:)();
  OUTLINED_FUNCTION_414();
  v61(v22, v56);
  if ((v59 & 1) == 0)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
LABEL_10:
    v74 = static OS_os_log.conversationKit;
    v75 = static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    OUTLINED_FUNCTION_37_22();
    v76 = swift_allocObject();
    *(v76 + 16) = xmmword_1BC4BA940;
    v77 = [v166 handle];
    if (v77)
    {
      v168[0] = v77;
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00);
      v78 = OUTLINED_FUNCTION_437();
      v80 = v79;
    }

    else
    {
      v80 = 0xE300000000000000;
      v78 = 7104878;
    }

    *(v76 + 56) = MEMORY[0x1E69E6158];
    *(v76 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v76 + 32) = v78;
    *(v76 + 40) = v80;
    os_log(_:dso:log:type:_:)("Could not find participant with handle %@", 41, 2, &dword_1BBC58000, v74, v75, v76);

LABEL_27:
    OUTLINED_FUNCTION_30_0();
    return;
  }

  v149 = v33;
  v62 = OBJC_IVAR____TtC15ConversationKit22ConversationController_remoteParticipants;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v163 = v24;
  v150 = v62;
  v63 = *(v24 + v62);
  v64 = *(v63 + 16);
  if (!v64)
  {
LABEL_9:
    if (one-time initialization token for conversationKit == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_30;
  }

  v148 = v23;
  v146 = v29;
  v65 = *(v46 + 80);
  v144 = ~v65;
  v145 = v65;
  v147 = (v65 + 32) & ~v65;

  v66 = 0;
  while (1)
  {
    if (v66 >= *(v63 + 16))
    {
      __break(1u);
      goto LABEL_29;
    }

    v67 = *(v46 + 72);
    OUTLINED_FUNCTION_1_186();
    _s15ConversationKit11ParticipantVWOcTm_17(v68, v21);
    v69 = *(v21 + *(v167 + 28));
    if (v69)
    {
      v70 = v69;
      v71 = [v166 handle];
      v72 = [v70 isEquivalentToHandle_];

      if (v72)
      {
        break;
      }
    }

    ++v66;
    OUTLINED_FUNCTION_0_222();
    _s15ConversationKit11ParticipantVWOhTm_18(v21, v73);
    if (v64 == v66)
    {

      goto LABEL_9;
    }
  }

  OUTLINED_FUNCTION_43_30();
  v81 = v165;
  _s15ConversationKit11ParticipantVWObTm_8(v21, v165);
  v82 = v148;
  _s15ConversationKit11ParticipantVWObTm_8(v81, v148);
  v83 = *(v167 + 20);
  v84 = v163;
  v85 = ConversationController.indexOfRemoteParticipant(with:)(v82 + v83);
  if (v86)
  {
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
    }

    static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    OUTLINED_FUNCTION_37_22();
    v87 = swift_allocObject();
    v88 = OUTLINED_FUNCTION_424_0(v87, xmmword_1BC4BA940);
    OUTLINED_FUNCTION_7_0();
    v90 = v162;
    (*(v89 + 16))(v162, v82 + v83, v88);
    OUTLINED_FUNCTION_12();
    __swift_storeEnumTagSinglePayload(v91, v92, v93, v88);
    specialized >> prefix<A>(_:)(v90, v94, v95, v96, v97, v98, v99, v100, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152);
    OUTLINED_FUNCTION_213();
    outlined destroy of CallControlsService?(v90, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v87[3].n128_u64[1] = MEMORY[0x1E69E6158];
    v101 = lazy protocol witness table accessor for type String and conformance String();
    OUTLINED_FUNCTION_416(v101);
    OUTLINED_FUNCTION_94_11();
    os_log(_:dso:log:type:_:)(v102);

    goto LABEL_26;
  }

  v103 = v85;
  v104 = v161;
  Participant.asRung()();
  v105 = *(v84 + v150);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    specialized _ArrayBuffer._consumeAndCreateNew()();
    v105 = v142;
  }

  if ((v103 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_32;
  }

  if (v103 >= *(v105 + 16))
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v81 = v103 * v67;
  OUTLINED_FUNCTION_85_8();
  _s15ConversationKit11ParticipantVWOdTm_0(v104, v106 + v103 * v67);
  ConversationController.remoteParticipants.setter(v105, &OBJC_IVAR____TtC15ConversationKit22ConversationController_remoteParticipants, v107);
  OUTLINED_FUNCTION_483();
  if (v108)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  OUTLINED_FUNCTION_1_186();
  v67 = v160;
  _s15ConversationKit11ParticipantVWOcTm_17(v109 + v81, v160);
  ConversationController.postParticipantStateChangeCallbacks(for:updatedFrom:)(v67, v82);
  OUTLINED_FUNCTION_0_222();
  _s15ConversationKit11ParticipantVWOhTm_18(v67, v110);
  if (one-time initialization token for conversationKit != -1)
  {
LABEL_34:
    OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  OUTLINED_FUNCTION_37_22();
  *(swift_allocObject() + 16) = xmmword_1BC4BA940;
  OUTLINED_FUNCTION_483();
  if (!v108)
  {
    v112 = v111;
    OUTLINED_FUNCTION_265_3();
    v114 = v152;
    _s15ConversationKit11ParticipantVWOcTm_17(v113 + v81, v152);
    v115 = OUTLINED_FUNCTION_127_2();
    __swift_storeEnumTagSinglePayload(v115, v116, v117, v167);
    specialized >> prefix<A>(_:)();
    OUTLINED_FUNCTION_314_0();
    outlined destroy of CallControlsService?(v114, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
    *(v112 + 56) = MEMORY[0x1E69E6158];
    v118 = lazy protocol witness table accessor for type String and conformance String();
    OUTLINED_FUNCTION_345_0(v118);
    static os_log_type_t.default.getter();
    OUTLINED_FUNCTION_156();
    os_log(_:dso:log:type:_:)(v119);

    v166 = static OS_dispatch_queue.main.getter();
    v120 = v154;
    static DispatchTime.now()();
    OUTLINED_FUNCTION_417_0();
    + infix(_:_:)(v121);
    v167 = *(v155 + 8);
    (v167)(v120, v164);
    OUTLINED_FUNCTION_20();
    v122 = swift_allocObject();
    OUTLINED_FUNCTION_278(v122);
    swift_unknownObjectWeakInit();
    v123 = OUTLINED_FUNCTION_316_1();
    _s15ConversationKit11ParticipantVWOcTm_17(v123, v124);
    v125 = (v145 + 24) & v144;
    OUTLINED_FUNCTION_91_11();
    v126 = swift_allocObject();
    *(v126 + 16) = v120;
    OUTLINED_FUNCTION_4_150();
    _s15ConversationKit11ParticipantVWObTm_8(v67, v127 + v125);
    v168[4] = partial apply for closure #2 in ConversationController.updateBuzzedMember(_:);
    v168[5] = v126;
    OUTLINED_FUNCTION_241_3();
    v168[1] = 1107296256;
    OUTLINED_FUNCTION_6_5();
    v168[2] = v128;
    v168[3] = &block_descriptor_126;
    v129 = _Block_copy(v168);

    v130 = v156;
    static DispatchQoS.unspecified.getter();
    v168[0] = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_3_164();
    lazy protocol witness table accessor for type ConversationController and conformance ConversationController(v131, v132);
    v133 = OUTLINED_FUNCTION_209();
    __swift_instantiateConcreteTypeFromMangledNameV2(v133, v134);
    OUTLINED_FUNCTION_9_8();
    lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(v135, v136, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    v137 = v158;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v138 = v166;
    MEMORY[0x1BFB21510](v81, v130, v137, v129);
    _Block_release(v129);

    v139 = OUTLINED_FUNCTION_281();
    v140(v139);
    (*(v157 + 8))(v130, v149);
    (v167)(v81, v164);
LABEL_26:
    OUTLINED_FUNCTION_0_222();
    _s15ConversationKit11ParticipantVWOhTm_18(v82, v141);
    goto LABEL_27;
  }

  __break(1u);
}

void closure #2 in ConversationController.updateBuzzedMember(_:)(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v55 = &v51 - v4;
  v5 = type metadata accessor for Participant.State(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Participant(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v51 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v51 - v16;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v19 = Strong;
  v54 = v7;
  swift_beginAccess();
  v20 = swift_unknownObjectWeakLoadStrong();
  if (!v20 || (v21 = v20, v22 = ConversationController.indexOfRemoteParticipant(with:)(a2 + *(v8 + 20)), v24 = v23, v21, (v24 & 1) != 0))
  {
LABEL_4:

    return;
  }

  v25 = OBJC_IVAR____TtC15ConversationKit22ConversationController_remoteParticipants;
  swift_beginAccess();
  if ((v22 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_20;
  }

  v26 = *&v19[v25];
  v27 = v54;
  if (v22 >= *(v26 + 16))
  {
LABEL_20:
    __break(1u);
LABEL_21:
    specialized _ArrayBuffer._consumeAndCreateNew()();
    v30 = v50;
LABEL_12:
    if (v22 >= *(v30 + 16))
    {
      __break(1u);
    }

    else
    {
      v31 = v52;
      _s15ConversationKit11ParticipantVWOdTm_0(v14, v30 + v53 + v52);
      ConversationController.remoteParticipants.setter(v30, &OBJC_IVAR____TtC15ConversationKit22ConversationController_remoteParticipants, v32);
      v33 = *&v19[v25];
      if (v22 < *(v33 + 16))
      {
        v34 = v53;
        _s15ConversationKit11ParticipantVWOcTm_17(v33 + v53 + v31, v11);
        ConversationController.postParticipantStateChangeCallbacks(for:updatedFrom:)(v11, v17);
        _s15ConversationKit11ParticipantVWOhTm_18(v11, type metadata accessor for Participant);
        v11 = v34;
        if (one-time initialization token for conversationKit == -1)
        {
          goto LABEL_15;
        }

        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_24:
    swift_once();
LABEL_15:
    v35 = static OS_os_log.conversationKit;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_1BC4BA940;
    v37 = *&v19[v25];
    if (v22 >= *(v37 + 16))
    {
      __break(1u);
    }

    else
    {
      v38 = v36;
      v39 = &v11[v37 + v52];
      v40 = v55;
      _s15ConversationKit11ParticipantVWOcTm_17(v39, v55);
      __swift_storeEnumTagSinglePayload(v40, 0, 1, v8);
      specialized >> prefix<A>(_:)();
      v42 = v41;
      v44 = v43;
      outlined destroy of CallControlsService?(v40, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
      v38[7] = MEMORY[0x1E69E6158];
      v38[8] = lazy protocol witness table accessor for type String and conformance String();
      v38[4] = v42;
      v38[5] = v44;
      v45 = static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)("Updated buzzed participant to .waiting: %@", 42, 2, &dword_1BBC58000, v35, v45, v38);

      _s15ConversationKit11ParticipantVWOhTm_18(v17, type metadata accessor for Participant);
      v46 = type metadata accessor for Date();
      (*(*(v46 - 8) + 8))(v54, v46);
    }

    return;
  }

  v53 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v28 = *(v9 + 72) * v22;
  _s15ConversationKit11ParticipantVWOcTm_17(v26 + v53 + v28, v17);
  _s15ConversationKit11ParticipantVWOcTm_17(v17, v27);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 3u:
      v52 = v28;
      Participant.asWaiting()();
      v30 = *&v19[v25];

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_12;
      }

      goto LABEL_21;
    case 4u:
      _s15ConversationKit11ParticipantVWOhTm_18(v17, type metadata accessor for Participant);

      v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd, &_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMR);
      v48 = *(v47 + 48);
      v49 = (v27 + *(v47 + 64));
      outlined consume of Participant.CopresenceInfo?(*v49, v49[1], v49[2], v49[3], v49[4], v49[5], v49[6], v49[7]);
      outlined destroy of Participant.MediaInfo(v27 + v48);
      break;
    case 6u:
      _s15ConversationKit11ParticipantVWOhTm_18(v17, type metadata accessor for Participant);
      goto LABEL_4;
    default:
      _s15ConversationKit11ParticipantVWOhTm_18(v17, type metadata accessor for Participant);

      break;
  }

  v29 = type metadata accessor for Date();
  (*(*(v29 - 8) + 8))(v27, v29);
}

Swift::Void __swiftcall ConversationController.setIgnoreLetMeInRequests(_:)(Swift::Bool a1)
{
  ConversationController.lookupActiveConversation()();
  if (v13[3])
  {
    OUTLINED_FUNCTION_525(v2, v3, v4, v5, v6, v7, v8, v9);
    v10 = OBJC_IVAR____TtC15ConversationKit22ConversationController_callCenter;
    OUTLINED_FUNCTION_112_1();
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    outlined init with copy of CallCenterProvider(v1 + v10, v13);
    OUTLINED_FUNCTION_113_5(v13);
    OUTLINED_FUNCTION_123_2();
    v11();
    __swift_destroy_boxed_opaque_existential_1(v14);
    __swift_destroy_boxed_opaque_existential_1(v13);
  }

  else
  {
    outlined destroy of CallControlsService?(v13, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
    }

    static os_log_type_t.error.getter();
    OUTLINED_FUNCTION_41_0();
    os_log(_:dso:log:type:_:)(v12);
  }
}

uint64_t ConversationController.addScreenSharingType(_:)()
{
  ConversationController.lookupActiveConversation()();
  if (v13[3])
  {
    OUTLINED_FUNCTION_525(v1, v2, v3, v4, v5, v6, v7, v8);
    v9 = OBJC_IVAR____TtC15ConversationKit22ConversationController_callCenter;
    OUTLINED_FUNCTION_112_1();
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    outlined init with copy of CallCenterProvider(v0 + v9, v13);
    OUTLINED_FUNCTION_113_5(v13);
    OUTLINED_FUNCTION_123_2();
    v10();
    __swift_destroy_boxed_opaque_existential_1(v14);
    return __swift_destroy_boxed_opaque_existential_1(v13);
  }

  else
  {
    outlined destroy of CallControlsService?(v13, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
    }

    static os_log_type_t.error.getter();
    OUTLINED_FUNCTION_41_0();
    return os_log(_:dso:log:type:_:)(v12);
  }
}

void closure #1 in ConversationController.shareableLink(completionHandler:)(void *a1, void *a2, void (*a3)(void *, void *), uint64_t a4, void *a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v47 - v10;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1BC4BA940;
    v50 = a2;
    v13 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v14 = String.init<A>(reflecting:)();
    v16 = v15;
    *(v12 + 56) = MEMORY[0x1E69E6158];
    *(v12 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v12 + 32) = v14;
    *(v12 + 40) = v16;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_os_log, 0x1E69E9BF8);
    v17 = static OS_os_log.default.getter();
    v18 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Failed to generate link with error %@", 37, 2, &dword_1BBC58000, v17, v18, v12);

    if (!a3)
    {
      return;
    }

    v19 = a2;
    goto LABEL_4;
  }

  if (a1)
  {
    v20 = one-time initialization token for conversationKit;
    v21 = a1;
    if (v20 != -1)
    {
      swift_once();
    }

    v49 = static OS_os_log.conversationKit;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1BC4BAA20;
    v50 = v21;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationLink, 0x1E69D8B70);
    v48 = v21;
    v23 = String.init<A>(reflecting:)();
    v25 = v24;
    v26 = MEMORY[0x1E69E6158];
    *(v22 + 56) = MEMORY[0x1E69E6158];
    v27 = lazy protocol witness table accessor for type String and conformance String();
    *(v22 + 64) = v27;
    *(v22 + 32) = v23;
    *(v22 + 40) = v25;
    v28 = a5[3];
    v29 = a5[4];
    __swift_project_boxed_opaque_existential_1(a5, v28);
    (*(v29 + 8))(v28, v29);
    v30 = type metadata accessor for UUID();
    __swift_storeEnumTagSinglePayload(v11, 0, 1, v30);
    specialized >> prefix<A>(_:)(v11, v31, v32, v33, v34, v35, v36, v37, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56);
    v39 = v38;
    v41 = v40;
    outlined destroy of CallControlsService?(v11, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    *(v22 + 96) = v26;
    *(v22 + 104) = v27;
    *(v22 + 72) = v39;
    *(v22 + 80) = v41;
    v42 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Received generated link %@ for conversation UUID %@", 51, 2, &dword_1BBC58000, v49, v42, v22);

    if (a3)
    {
      v43 = v48;
      a3(a1, 0);
    }

    else
    {
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_1BC4BA940;
    *(v44 + 56) = MEMORY[0x1E69E6158];
    *(v44 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v44 + 32) = 7104878;
    *(v44 + 40) = 0xE300000000000000;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_os_log, 0x1E69E9BF8);
    v45 = static OS_os_log.default.getter();
    v46 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Link object %@ is nil", 21, 2, &dword_1BBC58000, v45, v46, v44);

    if (a3)
    {
      v19 = 0;
LABEL_4:
      a3(0, v19);
    }
  }
}

Swift::Void __swiftcall ConversationController.pauseLocalVideoIfStopped()()
{
  OUTLINED_FUNCTION_443();
  OUTLINED_FUNCTION_3_37(OBJC_IVAR____TtC15ConversationKit22ConversationController_call);
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_447();
  v3 = *(v2 + 328);
  swift_unknownObjectRetain();
  v4 = OUTLINED_FUNCTION_33_0();
  v3(v4);
  OUTLINED_FUNCTION_530();
  if ((v1 & 1) == 0)
  {
    *(v0 + OBJC_IVAR____TtC15ConversationKit22ConversationController_pauseOnFirstFrame) = 1;
    ConversationController.startLocalVideo(allowVideoUpgrade:)(1);
  }

  OUTLINED_FUNCTION_7_17();
}

Swift::Void __swiftcall ConversationController.registerForMoments()()
{
  OUTLINED_FUNCTION_29();
  v1 = v0;
  type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_2_12();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_1_7();
  type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_287();
  if (!v4)
  {
    goto LABEL_18;
  }

  ConversationController.lookupActiveConversation()();
  if (v37)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A0_pMd, &_s15ConversationKit0A0_pMR);
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversation, 0x1E69D8B20);
    if (swift_dynamicCast())
    {
      v5 = v38;
      if ([v38 state] != 3 || (v35 = v38, v6 = objc_msgSend(v38, sel_mergedActiveRemoteParticipants), type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationParticipant, 0x1E69D8B90), OUTLINED_FUNCTION_1_65(), lazy protocol witness table accessor for type TUConversationInvitationPreference and conformance NSObject(v7, &lazy cache variable for type metadata for TUConversationParticipant, 0x1E69D8B90), OUTLINED_FUNCTION_252(), static Set._unconditionallyBridgeFromObjectiveC(_:)(), v6, specialized Set.count.getter(), OUTLINED_FUNCTION_42_12(), , v8 = v6 < 1, v5 = v38, v8))
      {
        if (one-time initialization token for conversationKit != -1)
        {
          OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
        }

        static os_log_type_t.default.getter();
        OUTLINED_FUNCTION_41_0();
        os_log(_:dso:log:type:_:)(v13);
      }

      else
      {
        v9 = [objc_allocWithZone(MEMORY[0x1E69D8C68]) initWithConversation_];
        v10 = OBJC_IVAR____TtC15ConversationKit22ConversationController_lastRegisteredMomentsProvider;
        v11 = *&v1[OBJC_IVAR____TtC15ConversationKit22ConversationController_lastRegisteredMomentsProvider];
        if (v11 && ([v11 isEqualToProvider_] & 1) != 0)
        {
        }

        else
        {
          ConversationController.unregisterForMoments()();
          v14 = *&v1[v10];
          *&v1[v10] = v9;
          v15 = v9;

          v16 = ConversationController.momentsController.getter();
          type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
          v34 = static OS_dispatch_queue.main.getter();
          OUTLINED_FUNCTION_37_0();
          v17 = swift_allocObject();
          v17[2] = v16;
          v17[3] = v15;
          v17[4] = v1;
          OUTLINED_FUNCTION_231_4(v17);
          v36[1] = 1107296256;
          OUTLINED_FUNCTION_6_5();
          v36[2] = v18;
          v37 = &block_descriptor_132;
          v19 = _Block_copy(v36);
          v33 = v15;
          v32 = v16;
          v20 = v1;

          static DispatchQoS.unspecified.getter();
          v36[0] = MEMORY[0x1E69E7CC0];
          OUTLINED_FUNCTION_3_164();
          lazy protocol witness table accessor for type ConversationController and conformance ConversationController(v21, v22);
          v23 = OUTLINED_FUNCTION_334();
          __swift_instantiateConcreteTypeFromMangledNameV2(v23, v24);
          OUTLINED_FUNCTION_9_8();
          lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(v25, v26, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
          OUTLINED_FUNCTION_78_8();
          OUTLINED_FUNCTION_124_1();
          dispatch thunk of SetAlgebra.init<A>(_:)();
          v27 = OUTLINED_FUNCTION_117();
          MEMORY[0x1BFB215C0](v27);
          _Block_release(v19);

          v28 = OUTLINED_FUNCTION_15_44();
          v29(v28);
          v30 = OUTLINED_FUNCTION_206();
          v31(v30);
        }
      }

      goto LABEL_18;
    }
  }

  else
  {
    outlined destroy of CallControlsService?(v36, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
  }

  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
  }

  static os_log_type_t.default.getter();
  OUTLINED_FUNCTION_41_0();
  os_log(_:dso:log:type:_:)(v12);
LABEL_18:
  OUTLINED_FUNCTION_30_0();
}

void closure #1 in ConversationController.registerForMoments()(void *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6[4] = partial apply for closure #1 in closure #1 in ConversationController.registerForMoments();
  v6[5] = v4;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ();
  v6[3] = &block_descriptor_1168;
  v5 = _Block_copy(v6);

  [a1 registerProvider:a2 completion:v5];
  _Block_release(v5);
}

void *closure #1 in closure #1 in ConversationController.registerForMoments()(void *a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    v5 = static OS_os_log.conversationKit;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1BC4BA940;
    if (a1)
    {
      v19[0] = a1;
      v7 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v8 = String.init<A>(reflecting:)();
      v10 = v9;
    }

    else
    {
      v10 = 0xE300000000000000;
      v8 = 7104878;
    }

    *(v6 + 56) = MEMORY[0x1E69E6158];
    *(v6 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v6 + 32) = v8;
    *(v6 + 40) = v10;
    v11 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Moments controller registered, error: %@", 40, 2, &dword_1BBC58000, v5, v11, v6);

    ConversationController.lookupActiveConversation()();
    if (v18)
    {
      outlined init with take of TapInteractionHandler(&v17, v19);
      v12 = v20;
      v13 = v21;
      __swift_project_boxed_opaque_existential_1(v19, v20);
      if ((*(v13 + 56))(v12, v13) == 3)
      {
        v14 = v20;
        v15 = v21;
        __swift_project_boxed_opaque_existential_1(v19, v20);
        (*(v15 + 120))(v14, v15);
        v16 = specialized Set.count.getter();

        if (v16 >= 1)
        {
          ConversationController.updateParticipants(with:)(v19);
        }
      }

      return __swift_destroy_boxed_opaque_existential_1(v19);
    }

    else
    {

      return outlined destroy of CallControlsService?(&v17, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
    }
  }

  return result;
}

uint64_t ConversationController.updateParticipants(with:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v45[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v7 = static OS_dispatch_queue.main.getter();
  (*(v5 + 104))(v7, *MEMORY[0x1E69E8020], v4);
  v8 = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v7, v4);
  if ((v8 & 1) == 0)
  {
    __break(1u);
LABEL_20:
    swift_once();
    goto LABEL_13;
  }

  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  if ((*(v10 + 56))(v9, v10) == 4)
  {
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    v11 = static OS_os_log.conversationKit;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1BC4BA940;
    v13 = a1[3];
    v14 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v13);
    v47[0] = (*(v14 + 56))(v13, v14);
    type metadata accessor for TUConversationState(0);
    v15 = String.init<A>(reflecting:)();
    v17 = v16;
    *(v12 + 56) = MEMORY[0x1E69E6158];
    *(v12 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v12 + 32) = v15;
    *(v12 + 40) = v17;
    v18 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Not updating remote participants; local user is leaving the conversation: %@", 76, 2, &dword_1BBC58000, v11, v18, v12);
  }

  else
  {
    if (one-time initialization token for conversationController != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, static Logger.conversationController);
    outlined init with copy of CallCenterProvider(a1, v47);
    v20 = v2;
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v46 = v24;
      *v23 = 136315394;
      v45[0] = *(v20 + OBJC_IVAR____TtC15ConversationKit22ConversationController_mode);
      v25 = String.init<A>(reflecting:)();
      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, &v46);

      *(v23 + 4) = v27;
      *(v23 + 12) = 2080;
      outlined init with copy of CallCenterProvider(v47, v45);
      v28 = specialized >> prefix<A>(_:)(v45);
      v30 = v29;
      outlined destroy of CallControlsService?(v45, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
      __swift_destroy_boxed_opaque_existential_1(v47);
      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v30, &v46);

      *(v23 + 14) = v31;
      _os_log_impl(&dword_1BBC58000, v21, v22, "[%s] Updating remote participants with conversation: %s", v23, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFB23DF0](v24, -1, -1);
      MEMORY[0x1BFB23DF0](v23, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(v47);
    }

    ConversationController.removeParticipants(notIn:)(a1);
    ConversationController.createNewParticipants(with:)(a1);
    ConversationController.updateRemoteParticipantsStates(with:)(a1);
    ConversationController.updateRemoteParticipantsNames(with:)(a1);
    ConversationController.updateLocalMemberAuthorizedToChangeGroupMembership(with:)(a1);
    ConversationController.updateParticipantsForcedToShowAsNeedingAuthorization()();
    ConversationController.updateOtherInvitedParticipants()();
    ConversationController.updateIdentityClaimingAssociations(in:)();
  }

  if (one-time initialization token for screenSharing != -1)
  {
    goto LABEL_20;
  }

LABEL_13:
  v32 = type metadata accessor for Logger();
  __swift_project_value_buffer(v32, &static Log.screenSharing);
  outlined init with copy of CallCenterProvider(a1, v47);
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 134217984;
    v36 = v48;
    v37 = v49;
    __swift_project_boxed_opaque_existential_1(v47, v48);
    (*(v37 + 120))(v36, v37);
    v38 = specialized Set.count.getter();

    __swift_destroy_boxed_opaque_existential_1(v47);
    *(v35 + 4) = v38;
    _os_log_impl(&dword_1BBC58000, v33, v34, "mergedActiveRemoteParticipants.count = %ld", v35, 0xCu);
    MEMORY[0x1BFB23DF0](v35, -1, -1);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v47);
  }

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v39 = static ScreenSharingInteractionController.shared;
  v40 = a1[3];
  v41 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v40);
  (*(v41 + 120))(v40, v41);
  v42 = specialized Set.count.getter();

  return (*((*MEMORY[0x1E69E7D40] & *v39) + 0x150))(v42 == 1);
}

void closure #1 in ConversationController.unregisterForMoments()(void *a1, uint64_t a2)
{
  v5[4] = closure #1 in closure #1 in ConversationController.unregisterForMoments();
  v5[5] = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 1107296256;
  v5[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ();
  v5[3] = &block_descriptor_1171;
  v4 = _Block_copy(v5);
  [a1 unregisterProvider:a2 completion:v4];
  _Block_release(v4);
}

double closure #1 in closure #1 in ConversationController.unregisterForMoments()(void *a1)
{
  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  v2 = static OS_os_log.conversationKit;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1BC4BA940;
  if (a1)
  {
    v4 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v5 = String.init<A>(reflecting:)();
    v7 = v6;
  }

  else
  {
    v7 = 0xE300000000000000;
    v5 = 7104878;
  }

  *(v3 + 56) = MEMORY[0x1E69E6158];
  *(v3 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v3 + 32) = v5;
  *(v3 + 40) = v7;
  v8 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Moments controller unregistered, error: %@", 42, 2, &dword_1BBC58000, v2, v8, v3);

  return result;
}

void closure #1 in ConversationController.captureMoment(for:)(uint64_t a1, void *a2, id a3, uint64_t a4)
{
  if (a3)
  {
    v5 = a3;
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    v6 = static OS_os_log.conversationKit;
    v7 = static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1BC4BA940;
    v9 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v10 = String.init<A>(reflecting:)();
    v12 = v11;
    *(v8 + 56) = MEMORY[0x1E69E6158];
    *(v8 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v8 + 32) = v10;
    *(v8 + 40) = v12;
    os_log(_:dso:log:type:_:)("FaceTime live photo capture failed with error:", 46, 2, &dword_1BBC58000, v6, v7, v8);
  }

  else if (a2)
  {
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    v15 = static OS_os_log.conversationKit;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1BC4BA940;

    v17 = MEMORY[0x1E69E6158];
    v18 = String.init<A>(reflecting:)();
    v20 = v19;
    *(v16 + 56) = v17;
    *(v16 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v16 + 32) = v18;
    *(v16 + 40) = v20;
    v21 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Successfully finished capturing FaceTime photo with transactionID: %@", 69, 2, &dword_1BBC58000, v15, v21, v16);

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v23 = Strong;
      v24._countAndFlagsBits = a1;
      v24._object = a2;
      ConversationController.endRequest(for:)(v24);
    }
  }

  else
  {
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    v25 = static OS_os_log.conversationKit;
    v26 = static os_log_type_t.error.getter();
    v27 = MEMORY[0x1E69E7CC0];

    os_log(_:dso:log:type:_:)("FaceTime live photo capture failed.", 35, 2, &dword_1BBC58000, v25, v26, v27);
  }
}

Swift::Void __swiftcall ConversationController.endRequest(for:)(Swift::String a1)
{
  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_287();
  if (v5)
  {
    ConversationController.momentsController.getter();
    v6 = OUTLINED_FUNCTION_6_4();
    v7 = MEMORY[0x1BFB209B0](v6);
    OUTLINED_FUNCTION_24();
    v8 = swift_allocObject();
    *(v8 + 16) = v3;
    *(v8 + 24) = v1;
    v17 = partial apply for closure #1 in ConversationController.endRequest(for:);
    v18 = v8;
    OUTLINED_FUNCTION_1_25();
    v14 = 1107296256;
    v15 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ();
    v16 = &block_descriptor_138_0;
    v9 = _Block_copy(&v13);

    [v2 endRequestWithTransactionID:v7 completion:v9];
    _Block_release(v9);
  }

  else
  {
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    OUTLINED_FUNCTION_37_22();
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1BC4BA940;
    v13 = v3;
    v14 = v1;

    v11 = MEMORY[0x1E69E6158];
    String.init<A>(reflecting:)();
    OUTLINED_FUNCTION_267_2();
    *(v10 + 56) = v11;
    *(v10 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v10 + 32) = v3;
    *(v10 + 40) = v4;
    static os_log_type_t.default.getter();
    OUTLINED_FUNCTION_156();
    os_log(_:dso:log:type:_:)(v12, v13, v14);
  }
}

void closure #1 in ConversationController.startRecordingLocalVideo()(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v8 = Strong;
  if (a3)
  {
    v9 = a3;
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    v10 = static OS_os_log.conversationKit;
    v11 = static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1BC4BA940;
    v35[0] = a3;
    v13 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v14 = String.init<A>(reflecting:)();
    v16 = v15;
    *(v12 + 56) = MEMORY[0x1E69E6158];
    *(v12 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v12 + 32) = v14;
    *(v12 + 40) = v16;
    os_log(_:dso:log:type:_:)("FaceTime local video recording failed with error: %@", 52, 2, &dword_1BBC58000, v10, v11, v12);

    return;
  }

  if (!a2)
  {
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    v30 = static OS_os_log.conversationKit;
    v31 = static os_log_type_t.error.getter();
    os_log(_:dso:log:type:_:)("FaceTime local video recording failed.", 38, 2, &dword_1BBC58000, v30, v31, MEMORY[0x1E69E7CC0]);
    goto LABEL_20;
  }

  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  v17 = static OS_os_log.conversationKit;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1BC4BA940;
  v35[0] = a1;
  v35[1] = a2;

  v19 = MEMORY[0x1E69E6158];
  v20 = String.init<A>(reflecting:)();
  v22 = v21;
  *(v18 + 56) = v19;
  *(v18 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v18 + 32) = v20;
  *(v18 + 40) = v22;
  v23 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Successfully started recording FaceTime local video with transactionID: %@", 74, 2, &dword_1BBC58000, v17, v23, v18);

  v24 = &v8[OBJC_IVAR____TtC15ConversationKit22ConversationController_localVideoRecordingTransactionID];
  swift_beginAccess();
  *v24 = a1;
  *(v24 + 1) = a2;

  ConversationController.lookupActiveConversation()();
  if (!v34)
  {
    outlined destroy of CallControlsService?(&v33, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
LABEL_19:
    v32 = static os_log_type_t.error.getter();
    os_log(_:dso:log:type:_:)("Started recording local video but there is no joined conversation, stopping recording", 85, 2, &dword_1BBC58000, v17, v32, MEMORY[0x1E69E7CC0]);
    ConversationController.stopRecordingLocalVideo()();
LABEL_20:

    return;
  }

  outlined init with take of TapInteractionHandler(&v33, v35);
  v25 = v36;
  v26 = v37;
  __swift_project_boxed_opaque_existential_1(v35, v36);
  if ((*(v26 + 56))(v25, v26) != 3)
  {
    __swift_destroy_boxed_opaque_existential_1(v35);
    goto LABEL_19;
  }

  v27 = &v8[OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateRecordingLocalVideo];
  swift_beginAccess();
  v28 = *v27;
  if (*v27)
  {
    v29 = *(v27 + 1);

    v28(1);
    outlined consume of (@escaping @callee_guaranteed () -> ())?(v28, v29);
  }

  __swift_destroy_boxed_opaque_existential_1(v35);
}

double closure #1 in ConversationController.endRequest(for:)(void *a1, void *a2, uint64_t a3)
{
  if (a1)
  {
    v4 = a1;
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    v5 = static OS_os_log.conversationKit;
    v6 = static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1BC4BA940;
    v8 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v9 = String.init<A>(reflecting:)();
    v11 = v10;
    *(v7 + 56) = MEMORY[0x1E69E6158];
    *(v7 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v7 + 32) = v9;
    *(v7 + 40) = v11;
    os_log(_:dso:log:type:_:)("FaceTime live photo end request failed with error:", 50, 2, &dword_1BBC58000, v5, v6, v7, a1);
  }

  else
  {
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    v15 = static OS_os_log.conversationKit;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1BC4BA940;
    v22 = a2;
    v23 = a3;

    v17 = MEMORY[0x1E69E6158];
    v18 = String.init<A>(reflecting:)();
    v20 = v19;
    *(v16 + 56) = v17;
    *(v16 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v16 + 32) = v18;
    *(v16 + 40) = v20;
    v21 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Successfully ended capturing FaceTime photo with transactionID: %@", 66, 2, &dword_1BBC58000, v15, v21, v16, v22, v23);
  }

  return result;
}