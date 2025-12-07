uint64_t lazy protocol witness table accessor for type ConversationController and conformance ConversationController(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_170();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t partial apply for closure #1 in ConversationController.resetRecordingVideoMessage(completion:)()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[6];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_2(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_5_0(v5);

  return closure #1 in ConversationController.resetRecordingVideoMessage(completion:)(v7, v8, v9, v1, v2, v3);
}

uint64_t partial apply for closure #1 in ConversationController.saveRecordedVideoMessage()()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_225();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_2(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_5_0(v2);

  return closure #1 in ConversationController.saveRecordedVideoMessage()(v4, v5, v6, v0);
}

uint64_t partial apply for closure #1 in ConversationController.discardRecordedVideoMessage()()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_225();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_2(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_5_0(v2);

  return closure #1 in ConversationController.discardRecordedVideoMessage()(v4, v5, v6, v0);
}

uint64_t objectdestroy_26Tm_0()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_4_48();

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in ConversationController.pauseRecordingVideoMessage()()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_225();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_2(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_5_0(v2);

  return closure #1 in ConversationController.pauseRecordingVideoMessage()(v4, v5, v6, v0);
}

uint64_t partial apply for closure #1 in ConversationController.startRecordingVideoMessage()()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_225();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_2(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_5_0(v2);

  return closure #1 in ConversationController.startRecordingVideoMessage()(v4, v5, v6, v0);
}

uint64_t partial apply for closure #1 in ConversationController.startCountdownToRecordVideoMessage(withDuration:countdownTicker:countdownStopped:)()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[7];
  v5 = v0[8];
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_2(v6);
  *v7 = v8;
  v7[1] = partial apply for closure #1 in CallRecordingService.startRecording(call:completion:);
  OUTLINED_FUNCTION_172_1();

  return closure #1 in ConversationController.startCountdownToRecordVideoMessage(withDuration:countdownTicker:countdownStopped:)(v9, v10, v11, v1, v2, v3, v4, v5);
}

uint64_t partial apply for closure #1 in ConversationController.stopRecordingVideoMessage()()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_225();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_2(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_5_0(v2);

  return closure #1 in ConversationController.stopRecordingVideoMessage()(v4, v5, v6, v0);
}

uint64_t objectdestroy_22Tm_1(void (*a1)(void))
{
  a1(*(v1 + 16));

  OUTLINED_FUNCTION_4_48();

  return swift_deallocObject();
}

uint64_t objectdestroy_128Tm()
{
  OUTLINED_FUNCTION_4_48();

  return swift_deallocObject();
}

uint64_t objectdestroy_241Tm()
{
  type metadata accessor for Notification();
  OUTLINED_FUNCTION_15_1();
  v2 = OUTLINED_FUNCTION_14_5();
  v3(v2);

  return swift_deallocObject();
}

unint64_t lazy protocol witness table accessor for type ConversationController.ControlsMode and conformance ConversationController.ControlsMode()
{
  result = lazy protocol witness table cache variable for type ConversationController.ControlsMode and conformance ConversationController.ControlsMode;
  if (!lazy protocol witness table cache variable for type ConversationController.ControlsMode and conformance ConversationController.ControlsMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConversationController.ControlsMode and conformance ConversationController.ControlsMode);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ConversationController.OneToOneModeChangeSource and conformance ConversationController.OneToOneModeChangeSource()
{
  result = lazy protocol witness table cache variable for type ConversationController.OneToOneModeChangeSource and conformance ConversationController.OneToOneModeChangeSource;
  if (!lazy protocol witness table cache variable for type ConversationController.OneToOneModeChangeSource and conformance ConversationController.OneToOneModeChangeSource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConversationController.OneToOneModeChangeSource and conformance ConversationController.OneToOneModeChangeSource);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ConversationController.CameraStartPolicy and conformance ConversationController.CameraStartPolicy()
{
  result = lazy protocol witness table cache variable for type ConversationController.CameraStartPolicy and conformance ConversationController.CameraStartPolicy;
  if (!lazy protocol witness table cache variable for type ConversationController.CameraStartPolicy and conformance ConversationController.CameraStartPolicy)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConversationController.CameraStartPolicy and conformance ConversationController.CameraStartPolicy);
  }

  return result;
}

void type metadata completion function for ConversationController(uint64_t a1)
{
  type metadata accessor for Participant(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for (activeConversation: Conversation, participant: Participant, notice: TUConversationNotice)?(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for UUID?(319);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void type metadata accessor for (activeConversation: Conversation, participant: Participant, notice: TUConversationNotice)?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (activeConversation: Conversation, participant: Participant, notice: TUConversationNotice)?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s15ConversationKit0A0_p06activeA0_AA11ParticipantV11participantSo20TUConversationNoticeC6noticetMd, &_s15ConversationKit0A0_p06activeA0_AA11ParticipantV11participantSo20TUConversationNoticeC6noticetMR);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for (activeConversation: Conversation, participant: Participant, notice: TUConversationNotice)?);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for ConversationController.ControlsMode(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ConversationController.OneToOneModeChangeSource(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

void type metadata completion function for ConversationController.ParticipantInfo(uint64_t a1)
{
  type metadata accessor for Participant(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for (Participant, Int)(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void type metadata accessor for (Participant, Int)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (Participant, Int))
  {
    type metadata accessor for Participant(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (Participant, Int));
    }
  }
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed () -> (@unowned CNKDeviceOrientation?)@<X0>(uint64_t a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  *(a1 + 8) = v4 & 1;
  return result;
}

uint64_t _sSbIegd_SbIegr_TRTA_0@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result & 1;
  return result;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Call) -> (@out ())(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v5[0] = a1;
  v5[1] = a2;
  return v3(v5);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Conversation, @in_guaranteed Activity, @in_guaranteed TUConversationActivitySessionApplicationState) -> (@out ())(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v6 = a3;
  return v4(a1, a2, &v6);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Conversation, @in_guaranteed Participant, @in_guaranteed TUConversationNotice, @in_guaranteed TUScreenShareDeviceFamily?) -> (@out ())(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = *(v5 + 16);
  v10 = a3;
  v8 = a4;
  v9 = a5 & 1;
  return v6(a1, a2, &v10, &v8);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Conversation, @in_guaranteed Data?) -> (@out ())(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v6[0] = a2;
  v6[1] = a3;
  return v4(a1, v6);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Participant, @in_guaranteed CameraPosition) -> (@out ())(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v5 = a2;
  return v3(a1, &v5);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed TUConversationState, @in_guaranteed TUConversationState) -> (@out ())(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v5 = a2;
  v6 = a1;
  return v3(&v6, &v5);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed CameraPosition) -> (@out ())(char a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Participant, @in_guaranteed SCSensitivityAnalysis?) -> (@out ())(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v5 = a2;
  return v3(a1, &v5);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Participant, @in_guaranteed BroadcastingState) -> (@out ())(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = *(v4 + 16);
  v7[0] = a2;
  v7[1] = a3;
  v8 = a4;
  return v5(a1, v7);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Participant, @in_guaranteed Float) -> (@out ())(uint64_t a1, float a2)
{
  v3 = *(v2 + 16);
  v5 = a2;
  return v3(a1, &v5);
}

uint64_t partial apply for closure #1 in ConversationController.handleLocalSensitiveContentAnalysisChanged(_:)(uint64_t (*a1)(void), uint64_t (*a2)(unint64_t, uint64_t))
{
  v3 = a1(0);
  OUTLINED_FUNCTION_9_0(v3);
  v5 = v4;
  v7 = v6;
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = *(v2 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a2(v2 + v8, v9);
}

void specialized ConversationController.updateAudioState(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = (a2 + OBJC_IVAR____TtC15ConversationKit22ConversationController_broadcastingState);
  swift_beginAccess();
  v7 = *v6;
  v8 = *(v6 + 16);
  if (v8 < 0)
  {
    v17 = v6[1];
    v18 = (*(a4 + 376))(a3, a4);
    v16 = v8 & 0xFFFFFF81;
    v9 = v7 & 0xFF00 | (v18 & 1);
    v15 = v17;
  }

  else
  {
    v9 = v7 & 0x100 | (*(a4 + 376))(a3, a4) & 1;
    v15 = 0;
    v16 = 0;
  }

  ConversationController.broadcastingState.setter(v9, v15, v16, v10, v11, v12, v13, v14, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30);
}

uint64_t objectdestroy_122Tm()
{
  OUTLINED_FUNCTION_29();
  v1 = type metadata accessor for Participant(0);
  v2 = (*(*(v1 - 1) + 80) + 24) & ~*(*(v1 - 1) + 80);

  v3 = v0 + v2;
  type metadata accessor for Participant.State(0);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 1u:
    case 2u:
    case 3u:
    case 5u:
      type metadata accessor for Date();
      OUTLINED_FUNCTION_15_1();
      (*(v4 + 8))(v0 + v2);
      break;
    case 4u:
      type metadata accessor for Date();
      OUTLINED_FUNCTION_15_1();
      (*(v18 + 8))(v0 + v2);
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd, &_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMR);
      v20 = (v3 + *(v19 + 48));

      if (v20[15] >= 2uLL)
      {
        __swift_destroy_boxed_opaque_existential_1(v20 + 12);
      }

      if (v20[39])
      {
        swift_unknownObjectRelease();
      }

      if (*(v3 + *(v19 + 64) + 8))
      {
      }

      break;
    default:
      break;
  }

  v5 = v1[5];
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_15_1();
  (*(v6 + 8))(v3 + v5);
  v7 = (v3 + v1[7]);
  if (*v7)
  {
  }

  v8 = v3 + v1[14];
  v9 = type metadata accessor for Date();
  v10 = OUTLINED_FUNCTION_60_16();
  if (!__swift_getEnumTagSinglePayload(v10, v11, v9))
  {
    OUTLINED_FUNCTION_2_3();
    v12 = OUTLINED_FUNCTION_40_2();
    v13(v12);
  }

  v14 = *(type metadata accessor for Participant.CountdownInfo(0) + 20);
  if (!__swift_getEnumTagSinglePayload(v8 + v14, 1, v9))
  {
    OUTLINED_FUNCTION_2_3();
    (*(v15 + 8))(v8 + v14, v9);
  }

  OUTLINED_FUNCTION_30_0();

  return swift_deallocObject();
}

uint64_t partial apply for closure #2 in ConversationController.updateBuzzedMember(_:)(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t, uint64_t))
{
  v3 = a1(0);
  OUTLINED_FUNCTION_22(v3);
  v5 = *(v2 + 16);
  v6 = v2 + ((*(v4 + 80) + 24) & ~*(v4 + 80));

  return a2(v5, v6);
}

uint64_t _s15ConversationKit11ParticipantVWOdTm_0(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_24_1();
  v4(v3);
  OUTLINED_FUNCTION_7_0();
  v5 = OUTLINED_FUNCTION_46();
  v6(v5);
  return a2;
}

id OUTLINED_FUNCTION_163_3(id a1, SEL a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return [a1 a2];
}

uint64_t OUTLINED_FUNCTION_219_2()
{

  return outlined destroy of CallControlsService?(v2 - 160, v0, v1);
}

uint64_t OUTLINED_FUNCTION_271_4()
{

  return swift_getObjectType();
}

void OUTLINED_FUNCTION_282_2()
{

  JUMPOUT(0x1BFB23DF0);
}

uint64_t OUTLINED_FUNCTION_283_2(unint64_t *a1, unint64_t *a2, void *a3)
{

  return lazy protocol witness table accessor for type TUConversationInvitationPreference and conformance NSObject(a1, a2, a3);
}

uint64_t OUTLINED_FUNCTION_287_1(uint64_t a1)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_288_0(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_289_0(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_299_0(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{

  return os_log(_:dso:log:type:_:)(a1, a2, 2, a4, v6, a6, v7);
}

double OUTLINED_FUNCTION_300_0(uint64_t a1, uint64_t a2)
{

  swift_beginAccess();
  return result;
}

uint64_t OUTLINED_FUNCTION_318_0(uint64_t result)
{
  v3[8] = result;
  v3[4] = v1;
  v3[5] = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_335()
{

  return outlined init with take of TapInteractionHandler((v0 - 160), v0 - 120);
}

double OUTLINED_FUNCTION_336@<D0>(uint64_t a1@<X8>)
{
  *(v1 - 104) = 1;
  result = 0.0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 96) = 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_355_0(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return os_log(_:dso:log:type:_:)(a1, a2, 2, a4, v4, v5, v6);
}

uint64_t OUTLINED_FUNCTION_363_0()
{
}

id OUTLINED_FUNCTION_374_0(id a1, SEL a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return [a1 a2];
}

uint64_t OUTLINED_FUNCTION_375_0()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_382_0()
{

  return swift_getObjectType();
}

uint64_t OUTLINED_FUNCTION_384_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);

  return outlined init with take of TapInteractionHandler(&a9, va);
}

uint64_t OUTLINED_FUNCTION_386_0(uint64_t a1)
{
  *(v3 + 96) = v2;
  *(v3 + 104) = v4;
  *(v3 + 72) = a1 & 1;
  *(v3 + 136) = v2;
  *(v3 + 144) = v4;
  *(v3 + 112) = v1 & 1;

  return static os_log_type_t.default.getter();
}

uint64_t OUTLINED_FUNCTION_387_0()
{

  return String.init<A>(reflecting:)();
}

void OUTLINED_FUNCTION_388_0()
{

  ConversationController.lookupActiveConversation()();
}

uint64_t OUTLINED_FUNCTION_391_0(uint64_t a1)
{
  *(v1 - 168) = a1;

  return type metadata accessor for UUID();
}

uint64_t OUTLINED_FUNCTION_416(uint64_t result)
{
  v1[8] = result;
  v1[4] = v2;
  v1[5] = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_436(void *a1)
{
  v6 = *(v4 - 72);

  _os_log_impl(a1, v6, v2, v1, v3, 0xCu);
}

uint64_t OUTLINED_FUNCTION_437()
{

  return String.init<A>(reflecting:)();
}

uint64_t OUTLINED_FUNCTION_438()
{

  return swift_slowAlloc();
}

double OUTLINED_FUNCTION_439()
{

  return result;
}

uint64_t OUTLINED_FUNCTION_440(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 - 184) = a5;
  *(v6 - 176) = a6;
  *(v6 - 200) = a3;
  *(v6 - 192) = a4;

  return swift_getObjectType();
}

uint64_t OUTLINED_FUNCTION_441()
{

  return outlined destroy of CallControlsService?(v0, v1, v2);
}

id OUTLINED_FUNCTION_442(id a1, SEL a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return [a1 a2];
}

uint64_t OUTLINED_FUNCTION_447()
{

  return swift_getObjectType();
}

__n128 OUTLINED_FUNCTION_464(__n128 *a1)
{
  result = v1[4];
  a1[1] = result;
  return result;
}

double OUTLINED_FUNCTION_466@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0;
  return result;
}

double OUTLINED_FUNCTION_467(_OWORD *a1)
{
  result = 0.0;
  a1[1] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_488(uint64_t result)
{
  v2[8] = result;
  v2[4] = v1;
  v2[5] = v3;
  return result;
}

void OUTLINED_FUNCTION_489(uint64_t a1@<X8>)
{
  *a1 = v1;
  *(a1 + 1) = 257;
  *(a1 + 3) = 0;
}

void OUTLINED_FUNCTION_493()
{
  v1[12] = v4;
  v1[13] = v3;
  v1[9] = v0;
  v1[10] = v2;
}

__n128 *OUTLINED_FUNCTION_498(__n128 *result, __n128 a2)
{
  result[1] = a2;
  *(v3 - 128) = (v2 ^ 1) & 1;
  return result;
}

void OUTLINED_FUNCTION_510(char a1)
{
  *(v2 + 56) = v1;
  *(v2 + 64) = v3;
  *(v2 + 32) = a1 & 1;

  ConversationController.isLocallySharingScreen.getter();
}

id OUTLINED_FUNCTION_513(uint64_t a1)
{
  v3[8] = a1;
  v3[4] = v2;
  v3[5] = v4;
  *(v5 - 160) = v1;

  return v1;
}

uint64_t OUTLINED_FUNCTION_514()
{
  v3 = *(v1 - 440);

  return _s15ConversationKit11ParticipantVWOcTm_17(v0, v3);
}

double OUTLINED_FUNCTION_515()
{

  return result;
}

void *OUTLINED_FUNCTION_516@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 4) = v1;
  v4 = *v2;
  v5 = *(v2 + 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);

  return outlined consume of Participant.RemoteIdentifiers?(v4, v5, v6, v7, v8);
}

uint64_t OUTLINED_FUNCTION_517()
{

  return swift_unknownObjectRetain();
}

uint64_t OUTLINED_FUNCTION_518(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_520()
{

  return outlined init with copy of CallCenterProvider(v0 - 152, v0 - 216);
}

uint64_t OUTLINED_FUNCTION_521(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return os_log(_:dso:log:type:_:)(a1, a2, a3, a4, a5, v5, v6);
}

uint64_t OUTLINED_FUNCTION_522(uint64_t a1, unint64_t a2)
{

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, (v2 + 400));
}

uint64_t OUTLINED_FUNCTION_524()
{

  return swift_unknownObjectRelease();
}

uint64_t OUTLINED_FUNCTION_525(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v10 = va_arg(va1, __int128);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);

  return outlined init with take of TapInteractionHandler(va, va1);
}

uint64_t OUTLINED_FUNCTION_528()
{

  return swift_getObjectType();
}

uint64_t OUTLINED_FUNCTION_530()
{

  return swift_unknownObjectRelease();
}

void OUTLINED_FUNCTION_531(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  __swift_storeEnumTagSinglePayload(a1, a2, a3, a4);

  specialized >> prefix<A>(_:)(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t NoticeViewModel.uuid.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NoticeViewModel(0) + 36);
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for NoticeViewModel(uint64_t a1)
{
  result = type metadata singleton initialization cache for NoticeViewModel;
  if (!type metadata singleton initialization cache for NoticeViewModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t NoticeViewModel.primaryAction.getter()
{
  type metadata accessor for NoticeViewModel(0);

  return OUTLINED_FUNCTION_46();
}

uint64_t NoticeViewModel.secondaryAction.getter()
{
  type metadata accessor for NoticeViewModel(0);

  return OUTLINED_FUNCTION_46();
}

uint64_t NoticeViewModel.init(title:subtitle:image:primaryActionTitle:secondaryActionTitle:uuid:needsIconBleedAdjustment:type:primaryAction:secondaryAction:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  *(a9 + 3) = a4;
  *(a9 + 4) = a5;
  *(a9 + 5) = a6;
  *(a9 + 6) = a7;
  *(a9 + 7) = a8;
  *(a9 + 8) = a10;
  v18 = type metadata accessor for NoticeViewModel(0);
  v19 = v18[9];
  v20 = type metadata accessor for UUID();
  result = (*(*(v20 - 8) + 32))(&a9[v19], a11, v20);
  a9[v18[10]] = a12;
  *&a9[v18[11]] = a13;
  v22 = &a9[v18[12]];
  *v22 = a14;
  *(v22 + 1) = a15;
  v23 = &a9[v18[13]];
  *v23 = a16;
  *(v23 + 1) = a17;
  return result;
}

uint64_t CNKNoticeRecipe.viewModelWithPrimaryAction(_:andSecondaryAction:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v6 = v5;
  v8 = [v5 title];
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = v10;
  v29 = v9;

  v11 = [v5 subtitle];
  v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  v14 = [v5 image];
  v15 = outlined bridged method (pb) of @objc TUConversationLink.displayName.getter(v5, &selRef_primaryActionTitle);
  v17 = v16;
  v18 = outlined bridged method (pb) of @objc TUConversationLink.displayName.getter(v5, &selRef_secondaryActionTitle);
  v20 = v19;
  v21 = [v5 uuid];
  v22 = type metadata accessor for NoticeViewModel(0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v23 = [v6 type];
  *a5 = v29;
  a5[1] = v28;
  a5[2] = v27;
  a5[3] = v13;
  a5[4] = v14;
  a5[5] = v15;
  a5[6] = v17;
  a5[7] = v18;
  a5[8] = v20;
  *(a5 + v22[10]) = 1;
  *(a5 + v22[11]) = v23;
  v24 = (a5 + v22[12]);
  *v24 = a1;
  v24[1] = a2;
  v25 = (a5 + v22[13]);
  *v25 = a3;
  v25[1] = a4;
}

void type metadata completion function for NoticeViewModel(uint64_t a1)
{
  type metadata accessor for UIImage();
  if (v1 <= 0x3F)
  {
    type metadata accessor for String?();
    if (v2 <= 0x3F)
    {
      type metadata accessor for UUID();
      if (v3 <= 0x3F)
      {
        type metadata accessor for CNKNoticeType(319);
        if (v4 <= 0x3F)
        {
          type metadata accessor for ()();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t specialized _resumeUnsafeThrowingContinuationWithError<A>(_:_:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v4 = swift_allocError();
  *v5 = a2;

  return MEMORY[0x1EEE6DEE8](a1, v4);
}

uint64_t specialized _resumeUnsafeThrowingContinuation<A>(_:_:)(uint64_t a1, uint64_t a2)
{
  **(*(a1 + 64) + 40) = a2;
  return MEMORY[0x1EEE6DEE0](a1);
}

{
  v4 = *(*(a1 + 64) + 40);
  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 32))(v4, a2, v5);

  return MEMORY[0x1EEE6DEE0](a1);
}

uint64_t specialized _resumeUnsafeThrowingContinuation<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(*(a1 + 64) + 40);
  *v5 = a2;
  v5[1] = a3;
  v5[2] = a4;
  v5[3] = a5;
  return MEMORY[0x1EEE6DEE0](a1);
}

uint64_t CKContainerSetupInfo.collaborationInitiator.getter()
{
  OUTLINED_FUNCTION_24_0();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
  OUTLINED_FUNCTION_22(v1);
  *(v0 + 16) = swift_task_alloc();
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = CKContainerSetupInfo.collaborationInitiator.getter;

  return CKContainerSetupInfo.userNameAndEmail.getter();
}

{
  OUTLINED_FUNCTION_3_165();
  v7 = v6;
  OUTLINED_FUNCTION_14_1();
  *v8 = v7;
  v9 = *v3;
  OUTLINED_FUNCTION_14_1();
  *v10 = v9;

  if (v1)
  {

    OUTLINED_FUNCTION_69();

    __asm { BRAA            X1, X16 }
  }

  v7[4] = v5;
  v7[5] = v4;
  v7[6] = v2;
  v7[7] = v0;
  OUTLINED_FUNCTION_8_107();
  OUTLINED_FUNCTION_69();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

id _SWPendingCollaboration.collaborationInitiator.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
  v2 = OUTLINED_FUNCTION_22(v1);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - v7;
  v9 = [v0 collaborationMetadata];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 initiatorNameComponents];

    if (v11)
    {
      static PersonNameComponents._unconditionallyBridgeFromObjectiveC(_:)();

      v12 = type metadata accessor for PersonNameComponents();
      v13 = 0;
    }

    else
    {
      v12 = type metadata accessor for PersonNameComponents();
      v13 = 1;
    }

    __swift_storeEnumTagSinglePayload(v4, v13, 1, v12);
    outlined init with take of PersonNameComponents?(v4, v8);
  }

  else
  {
    v14 = type metadata accessor for PersonNameComponents();
    __swift_storeEnumTagSinglePayload(v8, 1, 1, v14);
  }

  v15 = [v0 collaborationMetadata];
  if (v15)
  {
    outlined bridged method (ob) of @objc _SWCollaborationMetadata.initiatorHandle.getter(v15);
  }

  v16 = objc_allocWithZone(MEMORY[0x1E69D8AF0]);
  return OUTLINED_FUNCTION_4_151();
}

uint64_t URL.collaborationInitiator.getter()
{
  OUTLINED_FUNCTION_24_0();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
  OUTLINED_FUNCTION_22(v1);
  *(v0 + 16) = swift_task_alloc();
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = URL.collaborationInitiator.getter;

  return URL.userNameAndEmail.getter();
}

{
  OUTLINED_FUNCTION_3_165();
  v7 = v6;
  OUTLINED_FUNCTION_14_1();
  *v8 = v7;
  v9 = *v3;
  OUTLINED_FUNCTION_14_1();
  *v10 = v9;

  if (v1)
  {

    OUTLINED_FUNCTION_69();

    __asm { BRAA            X1, X16 }
  }

  v7[4] = v5;
  v7[5] = v4;
  v7[6] = v2;
  v7[7] = v0;
  OUTLINED_FUNCTION_8_107();
  OUTLINED_FUNCTION_69();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

{
  OUTLINED_FUNCTION_9();
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[2];
  PersonNameComponents.init(formattedName:)(v0[7], v0[6], v3);
  v4 = objc_allocWithZone(MEMORY[0x1E69D8AF0]);
  v5 = @nonobjc TUCollaborationInitiator.init(nameComponents:handle:)(v3, v2, v1);

  v6 = v0[1];

  return v6(v5);
}

id SWShareableContent.collaborationInitiator.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
  v2 = OUTLINED_FUNCTION_22(v1);
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - v4;
  v6 = [v0 initiatorNameComponents];
  if (v6)
  {
    v7 = v6;
    static PersonNameComponents._unconditionallyBridgeFromObjectiveC(_:)();

    v8 = type metadata accessor for PersonNameComponents();
    v9 = 0;
  }

  else
  {
    v8 = type metadata accessor for PersonNameComponents();
    v9 = 1;
  }

  __swift_storeEnumTagSinglePayload(v5, v9, 1, v8);
  outlined bridged method (pb) of @objc SWShareableContent.initiatorHandle.getter(v0);
  v10 = objc_allocWithZone(MEMORY[0x1E69D8AF0]);
  return OUTLINED_FUNCTION_4_151();
}

uint64_t CKContainerSetupInfo.userNameAndEmail.getter()
{
  *(v1 + 176) = v0;
  return OUTLINED_FUNCTION_1_187();
}

{
  v1 = v0[22];
  v2 = objc_opt_self();
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = CKContainerSetupInfo.userNameAndEmail.getter;
  swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySS_SSts5Error_pGMd, &_sSccySS_SSts5Error_pGMR);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  OUTLINED_FUNCTION_0_223();
  [v2 userNameAndEmail:0 containerSetupInfo:v1 completionHandler:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_14_1();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 184) = v4;
  if (v4)
  {
    v5 = CKContainerSetupInfo.userNameAndEmail.getter;
  }

  else
  {
    v5 = CKContainerSetupInfo.userNameAndEmail.getter;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

{
  return (*(v0 + 8))(*(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 168));
}

{
  OUTLINED_FUNCTION_9();
  swift_willThrow();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSString?, @unowned NSString?, @unowned NSError?) -> () with result type (String, String)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a4)
  {
    return specialized _resumeUnsafeThrowingContinuationWithError<A>(_:_:)(v5, a4);
  }

  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return specialized _resumeUnsafeThrowingContinuation<A>(_:_:)(v5, v7, v9, v11, v10);
}

uint64_t URL.userNameAndEmail.getter()
{
  *(v1 + 176) = v0;
  return OUTLINED_FUNCTION_1_187();
}

{
  v1 = objc_opt_self();
  URL._bridgeToObjectiveC()(v2);
  v4 = v3;
  v0[23] = v3;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = URL.userNameAndEmail.getter;
  swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySS_SSts5Error_pGMd, &_sSccySS_SSts5Error_pGMR);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  OUTLINED_FUNCTION_0_223();
  [v1 userNameAndEmail:v4 containerSetupInfo:0 completionHandler:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_14_1();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 192) = v4;
  if (v4)
  {
    v5 = URL.userNameAndEmail.getter;
  }

  else
  {
    v5 = URL.userNameAndEmail.getter;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

{
  OUTLINED_FUNCTION_9();
  v2 = *(v0 + 144);
  v1 = *(v0 + 152);
  v3 = *(v0 + 160);
  v4 = *(v0 + 168);

  v5 = *(v0 + 8);

  return v5(v2, v1, v3, v4);
}

{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 184);
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t outlined bridged method (pb) of @objc SWShareableContent.initiatorHandle.getter(void *a1)
{
  v1 = [a1 initiatorHandle];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t outlined bridged method (ob) of @objc _SWCollaborationMetadata.initiatorHandle.getter(void *a1)
{
  v2 = [a1 initiatorHandle];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

char *SystemApertureIncomingCallControlsView.init(recipe:controlsManager:menuHostViewController:)(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v116 = a4;
  ObjectType = swift_getObjectType();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A14ControlsRecipeVSgMd, &_s15ConversationKit0A14ControlsRecipeVSgMR);
  v10 = OUTLINED_FUNCTION_22(v9);
  MEMORY[0x1EEE9AC00](v10);
  v111 = &v104 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A14ControlsActionOSgMd, &_s15ConversationKit0A14ControlsActionOSgMR);
  v13 = OUTLINED_FUNCTION_22(v12);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_17();
  v109 = v14 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v106 = &v104 - v17;
  v114 = type metadata accessor for ConversationControlsAction(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_17();
  v110 = (v19 - v20);
  MEMORY[0x1EEE9AC00](v21);
  v115 = &v104 - v22;
  v23 = OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_features;
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_11_2();
    swift_once();
  }

  v24 = static Features.shared;
  *&v5[v23] = static Features.shared;
  *&v5[OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_leadingView] = 0;
  v25 = OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_primaryLabel;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UILabel, 0x1E69DCC10);
  v26 = objc_opt_self();
  v27 = *MEMORY[0x1E69DB970];
  v28 = v24;
  v29 = [v26 systemFontOfSize:16.67 weight:v27];
  v30 = objc_opt_self();
  v120.value.super.isa = [v30 whiteColor];
  UILabel.init(font:textColor:)(v31, v29, v120);
  v108 = v25;
  *&v5[v25] = v32;
  *&v5[OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_secondaryBadge] = 0;
  v33 = OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_secondaryLabel;
  type metadata accessor for BadgedLabel();
  *&v5[v33] = BadgedLabel.__allocating_init(font:textColor:badge:)([v26 systemFontOfSize_], objc_msgSend(v30, sel_secondaryLabelColor));
  *&v5[OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_alternatingLabelController] = 0;
  *&v5[OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_focusButton] = 0;
  v34 = &v5[OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_menuHostViewController];
  *&v5[OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_menuHostViewController + 8] = 0;
  swift_unknownObjectWeakInit();
  v113 = OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_context;
  v5[OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_context] = 0;
  *&v5[OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_cnkContentAlpha] = 0x3FF0000000000000;
  outlined init with copy of ConversationControlsRecipe(a1, &v5[OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_recipe]);
  v35 = a2;
  *&v5[OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_controlsManager] = a2;
  swift_beginAccess();
  *(v34 + 1) = v116;
  v117 = a3;
  swift_unknownObjectWeakAssign();
  v107 = type metadata accessor for ConversationControlsRecipe(0);
  v36 = *(v107 + 60);
  v112 = a1;
  v37 = a1 + v36;
  v39 = *v37;
  v38 = *(v37 + 8);
  v40 = *(v37 + 40);
  if ((v40 & 0x80000000) != 0)
  {
    v41 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    OUTLINED_FUNCTION_17_71();
    outlined copy of ConversationControlsRecipe.Actions();
    v41 = v39;
  }

  v42 = v106;
  specialized Collection.first.getter(v41, v106);
  v104 = v38;
  OUTLINED_FUNCTION_17_71();
  outlined copy of ConversationControlsRecipe.Actions?(v43, v44, v45, v46, v47, v48);
  v49 = v42;
  v50 = v35;

  v51 = v114;
  if (__swift_getEnumTagSinglePayload(v49, 1, v114) == 1)
  {
    v52 = v115;
    static ConversationControlsAction.rejectCall(controlsManager:)(v50, v115);
    if (__swift_getEnumTagSinglePayload(v49, 1, v51) != 1)
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v49, &_s15ConversationKit0A14ControlsActionOSgMd, &_s15ConversationKit0A14ControlsActionOSgMR);
    }
  }

  else
  {
    v52 = v115;
    outlined init with take of ConversationControlsAction(v49, v115);
  }

  OUTLINED_FUNCTION_25_55();
  v115 = v50;
  ConversationControlsAction.button(controlsManager:menuHostViewController:context:options:moreMenuButtonDelegate:)();
  v54 = v53;
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v119, &_s15ConversationKit0A30ControlsMoreMenuButtonDelegate_pSgMd, &_s15ConversationKit0A30ControlsMoreMenuButtonDelegate_pSgMR);
  OUTLINED_FUNCTION_2_172();
  outlined destroy of ConversationControlsAction(v52, v55);
  *&v5[OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_rejectButton] = v54;
  if (v40 <= 0xFFFFFFFD)
  {
    if ((v40 & 0x80000000) == 0)
    {
      goto LABEL_14;
    }

    OUTLINED_FUNCTION_17_71();
    outlined consume of ConversationControlsRecipe.Actions?(v56, v57, v58, v59, v60, v61);
  }

  v39 = MEMORY[0x1E69E7CC0];
LABEL_14:
  v62 = v115;
  v63 = v109;
  specialized BidirectionalCollection.last.getter(v39);

  v64 = v114;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v63, 1, v114);
  v66 = v112;
  v67 = v110;
  v68 = v107;
  if (EnumTagSinglePayload == 1)
  {
    static ConversationControlsAction.acceptCall(controlsManager:)(v62, v110);
    if (__swift_getEnumTagSinglePayload(v63, 1, v64) != 1)
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v63, &_s15ConversationKit0A14ControlsActionOSgMd, &_s15ConversationKit0A14ControlsActionOSgMR);
    }
  }

  else
  {
    outlined init with take of ConversationControlsAction(v63, v110);
  }

  OUTLINED_FUNCTION_25_55();
  ConversationControlsAction.button(controlsManager:menuHostViewController:context:options:moreMenuButtonDelegate:)();
  v70 = v69;
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v119, &_s15ConversationKit0A30ControlsMoreMenuButtonDelegate_pSgMd, &_s15ConversationKit0A30ControlsMoreMenuButtonDelegate_pSgMR);
  OUTLINED_FUNCTION_2_172();
  outlined destroy of ConversationControlsAction(v67, v71);
  *&v5[OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_acceptButton] = v70;
  [*&v5[v108] setAttributedText_];
  v72 = type metadata accessor for SystemApertureIncomingCallControlsView(0);
  v118.receiver = v5;
  v118.super_class = v72;
  v73 = objc_msgSendSuper2(&v118, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v74 = v111;
  __swift_storeEnumTagSinglePayload(v111, 1, 1, v68);
  SystemApertureIncomingCallControlsView.updateLeadingView(fromPreviousRecipe:)();
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v74, &_s15ConversationKit0A14ControlsRecipeVSgMd, &_s15ConversationKit0A14ControlsRecipeVSgMR);
  v75 = SystemApertureIncomingCallControlsView.updateSecondaryBadge()();
  SystemApertureIncomingCallControlsView.updateSecondaryLabel()(v75, v76, v77, v78, v79, v80, v81, v82, v104, ObjectType, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115);
  v83 = SystemApertureIncomingCallControlsView.updateGameControllerContext(animated:)(0);
  v84 = (*((*MEMORY[0x1E69E7D40] & *v62) + 0x340))(v83);
  if (v84)
  {
    v85 = v84;
    v86 = v73;
    specialized GameControllerManager.addResponder(_:)(v86, v85);
  }

  v87 = OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_secondaryLabel;
  v88 = [*&v73[OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_secondaryLabel] layer];
  v89 = *(v66 + *(v68 + 64));
  [v88 setAllowsHitTesting_];

  v90 = OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_primaryLabel;
  v91 = [*&v73[OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_primaryLabel] layer];
  [v91 setAllowsHitTesting_];

  [*&v73[v87] setUserInteractionEnabled_];
  [*&v73[v90] setUserInteractionEnabled_];
  OUTLINED_FUNCTION_55_21();
  OUTLINED_FUNCTION_55_21();
  OUTLINED_FUNCTION_55_21();
  OUTLINED_FUNCTION_55_21();
  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
  }

  v92 = type metadata accessor for Logger();
  __swift_project_value_buffer(v92, &static Logger.conversationControls);
  v93 = Logger.logObject.getter();
  v94 = static os_log_type_t.default.getter();
  v95 = OUTLINED_FUNCTION_18_0(v94);
  v96 = v117;
  if (v95)
  {
    v97 = OUTLINED_FUNCTION_42();
    v98 = OUTLINED_FUNCTION_23();
    v119[0] = v98;
    *v97 = 136446210;
    v99 = _typeName(_:qualified:)();
    v101 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v99, v100, v119);

    *(v97 + 4) = v101;
    _os_log_impl(&dword_1BBC58000, v93, v94, "[%{public}s] created", v97, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v98);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_18();
  }

  OUTLINED_FUNCTION_1_11();
  outlined destroy of ConversationControlsAction(v66, v102);
  return v73;
}

uint64_t type metadata accessor for SystemApertureIncomingCallControlsView(uint64_t a1)
{
  result = type metadata singleton initialization cache for SystemApertureIncomingCallControlsView;
  if (!type metadata singleton initialization cache for SystemApertureIncomingCallControlsView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id SystemApertureIncomingCallControlsView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void SystemApertureIncomingCallControlsView.init(coder:)()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_features;
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_11_2();
    swift_once();
  }

  v3 = static Features.shared;
  *(v1 + v2) = static Features.shared;
  *(v1 + OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_leadingView) = 0;
  v4 = OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_primaryLabel;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UILabel, 0x1E69DCC10);
  v5 = objc_opt_self();
  v6 = *MEMORY[0x1E69DB970];
  v7 = v3;
  v8 = [v5 systemFontOfSize:16.67 weight:v6];
  v9 = objc_opt_self();
  v13.value.super.isa = [v9 whiteColor];
  UILabel.init(font:textColor:)(v10, v8, v13);
  *(v1 + v4) = v11;
  *(v1 + OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_secondaryBadge) = 0;
  v12 = OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_secondaryLabel;
  type metadata accessor for BadgedLabel();
  *(v1 + v12) = BadgedLabel.__allocating_init(font:textColor:badge:)([v5 systemFontOfSize_], objc_msgSend(v9, sel_secondaryLabelColor));
  *(v1 + OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_alternatingLabelController) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_focusButton) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_menuHostViewController + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_context) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_cnkContentAlpha) = 0x3FF0000000000000;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void SystemApertureIncomingCallControlsView.updateGameControllerFocusButton(isVisible:animated:gameControllerContext:)(char a1, char a2, uint64_t a3)
{
  v4 = v3;
  type metadata accessor for ConversationControlsAction(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_8();
  v11 = v10 - v9;
  v12 = OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_focusButton;
  if ((a1 & 1) != 0 && !*(v4 + OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_focusButton))
  {
    v13 = *(a3 + 16);
    *v11 = *a3;
    *(v11 + 16) = v13;
    *(v11 + 32) = *(a3 + 32);
    *(v11 + 48) = *(a3 + 48);
    swift_storeEnumTagMultiPayload();
    v14 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x188);
    v15 = outlined init with copy of (CGFloat, AutoplayCandidate)(a3, &aBlock, &_s15ConversationKit21GameControllerContextVSgMd, &_s15ConversationKit21GameControllerContextVSgMR);
    v16 = v14(v15);
    v87 = 0;
    aBlock = 0u;
    v86 = 0u;
    ConversationControlsAction.button(controlsManager:menuHostViewController:context:options:moreMenuButtonDelegate:)();
    v18 = v17;

    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&aBlock, &_s15ConversationKit0A30ControlsMoreMenuButtonDelegate_pSgMd, &_s15ConversationKit0A30ControlsMoreMenuButtonDelegate_pSgMR);
    OUTLINED_FUNCTION_2_172();
    outlined destroy of ConversationControlsAction(v11, v19);
    v20 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x1A0);
    v21 = v18;
    v20();
    [v21 setAlpha_];

    v22 = *(v4 + v12);
    *(v4 + v12) = v21;
    v23 = v21;

    [v4 addSubview_];
    v12 = OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_focusButton;
  }

  v24 = *(v4 + v12);
  if (v24)
  {
    if (a2)
    {
      v83 = *(v4 + v12);
      v25 = v24;
      v26 = [v25 layer];
      v28 = v26;
      v29 = a1 & 1;
      if (a1)
      {
        *&v27 = 0.0;
      }

      else
      {
        *&v27 = 1.0;
      }

      if (a1)
      {
        v30 = 1.0;
      }

      else
      {
        v30 = 0.0;
      }

      [v26 setOpacity_];

      v31 = [*(v4 + OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_rejectButton) layer];
      *&v32 = v30;
      [v31 setOpacity_];

      v33 = [*(v4 + OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_acceptButton) layer];
      *&v34 = v30;
      [v33 setOpacity_];

      v35 = OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_rejectButton;
      v36 = [*(v4 + OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_rejectButton) layer];
      [v36 removeAllAnimations];

      v84 = a1;
      v37 = OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_acceptButton;
      v38 = [*(v4 + OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_acceptButton) layer];
      [v38 removeAllAnimations];

      v39 = v25;
      v40 = [v39 layer];
      [v40 removeAllAnimations];

      [*(v4 + v35) setHidden_];
      [*(v4 + v37) setHidden_];
      [v39 setHidden_];
      v41 = objc_opt_self();
      [v41 begin];
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CABasicAnimation, 0x1E6979318);
      v42 = OUTLINED_FUNCTION_35_31();
      v44 = @nonobjc CABasicAnimation.__allocating_init(keyPath:)(v42, v43);
      v45 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v46 = swift_allocObject();
      *(v46 + 16) = v45;
      *(v46 + 24) = v29;
      *(v46 + 32) = 0x74756F2D65646166;
      *(v46 + 40) = 0xE800000000000000;
      *(v46 + 48) = v39;
      v87 = partial apply for closure #1 in SystemApertureIncomingCallControlsView.updateGameControllerFocusButton(isVisible:animated:gameControllerContext:);
      v88 = v46;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      *&v86 = thunk for @escaping @callee_guaranteed () -> ();
      *(&v86 + 1) = &block_descriptor_45_1;
      v47 = _Block_copy(&aBlock);
      v48 = v39;

      v82 = v41;
      [v41 setCompletionBlock_];
      _Block_release(v47);
      isa = CGFloat._bridgeToObjectiveC()().super.super.isa;
      [v44 setFromValue_];

      v50 = CGFloat._bridgeToObjectiveC()().super.super.isa;
      [v44 setToValue_];

      v51 = v44;
      [v51 setDuration_];
      v81 = *MEMORY[0x1E69797E8];
      [v51 setFillMode_];
      [v51 setRemovedOnCompletion_];
      v52 = *MEMORY[0x1E6979EB8];
      v53 = objc_opt_self();
      v54 = [v53 functionWithName_];
      [v51 setTimingFunction_];

      v79 = v37;
      v80 = v35;
      if (v84)
      {
        v55 = [*(v4 + v35) layer];
        OUTLINED_FUNCTION_46_27();
        outlined bridged method (mnbgnn) of @objc CALayer.add(_:forKey:)(v56, v35, 0xE800000000000000, v55);

        v57 = [*(v4 + v37) layer];
      }

      else
      {
        [v48 layer];
        OUTLINED_FUNCTION_46_27();
      }

      v69 = v57;
      outlined bridged method (mnbnn) of @objc CALayer.add(_:forKey:)(v51, v35, 0xE800000000000000, v69);

      v70 = OUTLINED_FUNCTION_35_31();
      v72 = @nonobjc CABasicAnimation.__allocating_init(keyPath:)(v70, v71);
      v73 = CGFloat._bridgeToObjectiveC()().super.super.isa;
      [v72 setFromValue_];

      v74 = CGFloat._bridgeToObjectiveC()().super.super.isa;
      [v72 setToValue_];

      v75 = v72;
      [v75 setDuration_];
      [v75 setFillMode_];
      [v75 setRemovedOnCompletion_];
      v76 = [v53 functionWithName_];
      [v75 setTimingFunction_];

      v24 = v83;
      if (v84)
      {
        v77 = [v48 layer];
      }

      else
      {

        v78 = [*(v4 + v80) layer];
        outlined bridged method (mnbgnn) of @objc CALayer.add(_:forKey:)(v75, 0x6E692D65646166, 0xE700000000000000, v78);

        v77 = [*(v4 + v79) layer];
      }

      outlined bridged method (mnbnn) of @objc CALayer.add(_:forKey:)(v75, 0x6E692D65646166, 0xE700000000000000, v77);

      [v82 commit];
    }

    else
    {
      v58 = *(v4 + OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_rejectButton);
      v59 = v24;
      v60 = [v58 layer];
      v62 = v60;
      if (a1)
      {
        v63 = 0.0;
      }

      else
      {
        v63 = 1.0;
      }

      if (a1)
      {
        v64 = 1.0;
      }

      else
      {
        v64 = 0.0;
      }

      *&v61 = v63;
      [v60 setOpacity_];

      v65 = [*(v4 + OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_acceptButton) layer];
      *&v66 = v63;
      [v65 setOpacity_];

      v67 = [v59 layer];
      *&v68 = v64;
      [v67 setOpacity_];

      [*(v4 + OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_rejectButton) setHidden_];
      [*(v4 + OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_acceptButton) setHidden_];
      [v59 setHidden_];
    }
  }
}

void closure #1 in SystemApertureIncomingCallControlsView.updateGameControllerFocusButton(isVisible:animated:gameControllerContext:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, void *a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    if (a2)
    {
      v11 = OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_rejectButton;
      v12 = [*(Strong + OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_rejectButton) layer];
      v13 = MEMORY[0x1BFB209B0](a3, a4);
      v14 = [v12 animationForKey_];

      if (v14)
      {

        [*&v10[v11] setHidden_];
        v15 = [*&v10[v11] layer];
        v16 = MEMORY[0x1BFB209B0](a3, a4);
        [v15 removeAnimationForKey_];
      }

      v17 = OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_acceptButton;
      v18 = [*&v10[OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_acceptButton] layer];
      v19 = MEMORY[0x1BFB209B0](a3, a4);
      v20 = [v18 animationForKey_];

      if (!v20)
      {
        goto LABEL_10;
      }

      [*&v10[v17] setHidden_];
      a5 = *&v10[v17];
    }

    else
    {
      v21 = [a5 layer];
      v22 = MEMORY[0x1BFB209B0](a3, a4);
      v23 = [v21 animationForKey_];

      if (!v23)
      {
LABEL_10:

        return;
      }

      [a5 setHidden_];
    }

    v24 = [a5 layer];
    v25 = MEMORY[0x1BFB209B0](a3, a4);
    [v24 removeAnimationForKey_];

    goto LABEL_10;
  }
}

uint64_t SystemApertureIncomingCallControlsView.updateGameControllerContext(animated:)(char a1)
{
  (*((*MEMORY[0x1E69E7D40] & **(v1 + OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_controlsManager)) + 0x360))(v5);
  if (v5[2] == 2)
  {
    v3 = 0;
  }

  else
  {
    v3 = (LODWORD(v5[0]) < 3) & v5[0];
  }

  SystemApertureIncomingCallControlsView.updateGameControllerFocusButton(isVisible:animated:gameControllerContext:)(v3, a1 & 1, v5);
  return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v5, &_s15ConversationKit21GameControllerContextVSgMd, &_s15ConversationKit21GameControllerContextVSgMR);
}

uint64_t key path getter for SystemApertureIncomingCallControlsView.menuHostViewController : SystemApertureIncomingCallControlsView@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x188))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t key path setter for SystemApertureIncomingCallControlsView.menuHostViewController : SystemApertureIncomingCallControlsView(uint64_t a1, void **a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x190);
  v5 = *a1;
  return v4(v2, v3);
}

uint64_t SystemApertureIncomingCallControlsView.menuHostViewController.getter()
{
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

void SystemApertureIncomingCallControlsView.menuHostViewController.setter(void *a1, uint64_t a2)
{
  v5 = v2 + OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_menuHostViewController;
  swift_beginAccess();
  *(v5 + 8) = a2;
  swift_unknownObjectWeakAssign();
}

void (*SystemApertureIncomingCallControlsView.menuHostViewController.modify(void *a1))(id **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_menuHostViewController;
  v3[5] = v1;
  v3[6] = v4;
  v5 = v1 + v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 8);
  v3[3] = Strong;
  v3[4] = v7;
  return ConversationControlsShareCardViewController.delegate.modify;
}

void SystemApertureIncomingCallControlsView.cnkContentAlpha.didset()
{
  v1 = *&v0[OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_leadingView];
  if (v1)
  {
    v2 = v1;
    [v0 alpha];
    [v2 setAlpha_];
  }

  v3 = *&v0[OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_secondaryLabel];
  [v0 alpha];
  [v3 setAlpha_];
  v4 = *&v0[OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_primaryLabel];
  [v0 alpha];
  [v4 setAlpha_];
  v5 = *&v0[OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_rejectButton];
  [v0 alpha];
  [v5 setAlpha_];

  v6 = *&v0[OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_acceptButton];
  [v0 alpha];
  [v6 setAlpha_];

  v7 = *&v0[OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_focusButton];
  if (v7)
  {
    v8 = v7;
    [v0 alpha];
    [v8 setAlpha_];
  }
}

double SystemApertureIncomingCallControlsView.cnkContentAlpha.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_cnkContentAlpha;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  return *(v0 + v1);
}

void SystemApertureIncomingCallControlsView.cnkContentAlpha.setter(double a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_cnkContentAlpha;
  swift_beginAccess();
  *(v1 + v3) = a1;
  SystemApertureIncomingCallControlsView.cnkContentAlpha.didset();
}

void (*SystemApertureIncomingCallControlsView.cnkContentAlpha.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return SystemApertureIncomingCallControlsView.cnkContentAlpha.modify;
}

void SystemApertureIncomingCallControlsView.cnkContentAlpha.modify(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    SystemApertureIncomingCallControlsView.cnkContentAlpha.didset();
  }
}

uint64_t key path setter for SystemApertureIncomingCallControlsView.recipe : SystemApertureIncomingCallControlsView(uint64_t a1, void **a2)
{
  v4 = type metadata accessor for ConversationControlsRecipe(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ConversationControlsRecipe(a1, v6);
  return (*((*MEMORY[0x1E69E7D40] & **a2) + 0x1C0))(v6);
}

id SystemApertureIncomingCallControlsView.recipe.didset(uint64_t a1)
{
  v2 = v1;
  v86 = a1;
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A14ControlsRecipeVSgMd, &_s15ConversationKit0A14ControlsRecipeVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v85 = &v81 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A14ControlsActionOSgMd, &_s15ConversationKit0A14ControlsActionOSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v83 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v81 - v9;
  v90 = type metadata accessor for ConversationControlsRecipe(0);
  MEMORY[0x1EEE9AC00](v90);
  v89 = &v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v81 - v13;
  v15 = type metadata accessor for ConversationControlsAction(0);
  MEMORY[0x1EEE9AC00](v15);
  v84 = &v81 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v87 = &v81 - v18;
  v19 = v1 + OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_recipe;
  swift_beginAccess();
  outlined init with copy of ConversationControlsType(v19, &v95);
  v91 = 5;
  v92 = 0u;
  v93 = 0u;
  v94 = 7;
  v20 = static ConversationControlsType.== infix(_:_:)(&v95, &v91);
  outlined destroy of ConversationControlsType(&v91);
  outlined destroy of ConversationControlsType(&v95);
  v88 = v15;
  if ((v20 & 1) == 0)
  {
    outlined init with copy of ConversationControlsType(v19, &v95);
    v91 = 7;
    v92 = 0u;
    v93 = 0u;
    v94 = 7;
    v21 = static ConversationControlsType.== infix(_:_:)(&v95, &v91);
    outlined destroy of ConversationControlsType(&v91);
    outlined destroy of ConversationControlsType(&v95);
    if ((v21 & 1) == 0)
    {
      if (one-time initialization token for conversationControls != -1)
      {
        swift_once();
      }

      v22 = type metadata accessor for Logger();
      __swift_project_value_buffer(v22, &static Logger.conversationControls);
      v23 = v2;
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        HIDWORD(v81) = v25;
        v27 = v26;
        v91 = swift_slowAlloc();
        v82 = ObjectType;
        v28 = v91;
        *v27 = 136446466;
        v29 = _typeName(_:qualified:)();
        v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, &v91);

        *(v27 + 4) = v31;
        *(v27 + 12) = 2080;
        outlined init with copy of ConversationControlsType(v19, &v95);
        v32 = specialized >> prefix<A>(_:)(&v95);
        v34 = v33;
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v95, &_s15ConversationKit0A12ControlsTypeOSgMd, &_s15ConversationKit0A12ControlsTypeOSgMR);
        v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v34, &v91);

        *(v27 + 14) = v35;
        _os_log_impl(&dword_1BBC58000, v24, BYTE4(v81), "[%{public}s.recipe.didSet] Applied invalid recipe type %s", v27, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1BFB23DF0](v28, -1, -1);
        MEMORY[0x1BFB23DF0](v27, -1, -1);
      }

      v15 = v88;
    }
  }

  v36 = v87;
  if (*(v19 + *(v90 + 40)))
  {
    if (one-time initialization token for conversationControls != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    __swift_project_value_buffer(v37, &static Logger.conversationControls);
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *&v95 = v41;
      *v40 = 136446210;
      v42 = _typeName(_:qualified:)();
      v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v43, &v95);

      *(v40 + 4) = v44;
      _os_log_impl(&dword_1BBC58000, v38, v39, "[%{public}s.recipe.didSet] Ignoring recipe subtitleLeadingBadge which is unsupported for the latest telephony design", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v41);
      v45 = v41;
      v36 = v87;
      MEMORY[0x1BFB23DF0](v45, -1, -1);
      v46 = v40;
      v15 = v88;
      MEMORY[0x1BFB23DF0](v46, -1, -1);
    }
  }

  v47 = OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_rejectButton;
  [*(v2 + OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_rejectButton) removeFromSuperview];
  outlined init with copy of ConversationControlsRecipe(v19, v14);
  v48 = &v14[*(v90 + 60)];
  if (v48[40] < 0)
  {
    v49 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v49 = *v48;
    outlined copy of ConversationControlsRecipe.Actions();
  }

  outlined destroy of ConversationControlsAction(v14, type metadata accessor for ConversationControlsRecipe);
  specialized Collection.first.getter(v49, v10);

  if (__swift_getEnumTagSinglePayload(v10, 1, v15) == 1)
  {
    static ConversationControlsAction.rejectCall(controlsManager:)(*(v2 + OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_controlsManager), v36);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v15);
    if (EnumTagSinglePayload != 1)
    {
      EnumTagSinglePayload = outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v10, &_s15ConversationKit0A14ControlsActionOSgMd, &_s15ConversationKit0A14ControlsActionOSgMR);
    }
  }

  else
  {
    EnumTagSinglePayload = outlined init with take of ConversationControlsAction(v10, v36);
  }

  v51 = *(v2 + OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_controlsManager);
  v52 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x188);
  v53 = v52(EnumTagSinglePayload);
  v97 = 0;
  v95 = 0u;
  v96 = 0u;
  ConversationControlsAction.button(controlsManager:menuHostViewController:context:options:moreMenuButtonDelegate:)();
  v55 = v54;

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v95, &_s15ConversationKit0A30ControlsMoreMenuButtonDelegate_pSgMd, &_s15ConversationKit0A30ControlsMoreMenuButtonDelegate_pSgMR);
  outlined destroy of ConversationControlsAction(v36, type metadata accessor for ConversationControlsAction);
  v56 = *(v2 + v47);
  *(v2 + v47) = v55;
  v57 = v55;

  [v2 addSubview_];
  v58 = OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_acceptButton;
  [*(v2 + OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_acceptButton) removeFromSuperview];
  v59 = v89;
  outlined init with copy of ConversationControlsRecipe(v19, v89);
  v60 = v59 + *(v90 + 60);
  if (*(v60 + 40) < 0)
  {
    v61 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v61 = *v60;
    outlined copy of ConversationControlsRecipe.Actions();
  }

  v62 = v84;
  v63 = v83;
  outlined destroy of ConversationControlsAction(v89, type metadata accessor for ConversationControlsRecipe);
  specialized BidirectionalCollection.last.getter(v61);

  v64 = v88;
  if (__swift_getEnumTagSinglePayload(v63, 1, v88) == 1)
  {
    static ConversationControlsAction.acceptCall(controlsManager:)(v51, v62);
    v65 = __swift_getEnumTagSinglePayload(v63, 1, v64);
    if (v65 != 1)
    {
      v65 = outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v63, &_s15ConversationKit0A14ControlsActionOSgMd, &_s15ConversationKit0A14ControlsActionOSgMR);
    }
  }

  else
  {
    v65 = outlined init with take of ConversationControlsAction(v63, v62);
  }

  v66 = v52(v65);
  v97 = 0;
  v95 = 0u;
  v96 = 0u;
  ConversationControlsAction.button(controlsManager:menuHostViewController:context:options:moreMenuButtonDelegate:)();
  v68 = v67;

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v95, &_s15ConversationKit0A30ControlsMoreMenuButtonDelegate_pSgMd, &_s15ConversationKit0A30ControlsMoreMenuButtonDelegate_pSgMR);
  outlined destroy of ConversationControlsAction(v62, type metadata accessor for ConversationControlsAction);
  v69 = *(v2 + v58);
  *(v2 + v58) = v68;
  v70 = v68;

  [v2 addSubview_];
  v71 = v85;
  outlined init with copy of ConversationControlsRecipe(v86, v85);
  __swift_storeEnumTagSinglePayload(v71, 0, 1, v90);
  SystemApertureIncomingCallControlsView.updateLeadingView(fromPreviousRecipe:)();
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v71, &_s15ConversationKit0A14ControlsRecipeVSgMd, &_s15ConversationKit0A14ControlsRecipeVSgMR);
  v72 = SystemApertureIncomingCallControlsView.updateSecondaryBadge()();
  SystemApertureIncomingCallControlsView.updateSecondaryLabel()(v72, v73, v74, v75, v76, v77, v78, v79, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92);
  SystemApertureIncomingCallControlsView.updateGameControllerContext(animated:)(0);
  [*(v2 + OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_primaryLabel) setAttributedText_];
  return [v2 setNeedsLayout];
}

uint64_t SystemApertureIncomingCallControlsView.recipe.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_recipe;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  return outlined init with copy of ConversationControlsRecipe(v1 + v3, a1);
}

uint64_t SystemApertureIncomingCallControlsView.recipe.setter(uint64_t a1)
{
  v3 = type metadata accessor for ConversationControlsRecipe(0);
  v4 = OUTLINED_FUNCTION_22(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_8();
  v7 = v6 - v5;
  v8 = OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_recipe;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  outlined init with copy of ConversationControlsRecipe(v1 + v8, v7);
  swift_beginAccess();
  outlined assign with copy of ConversationControlsRecipe(a1, v1 + v8);
  swift_endAccess();
  SystemApertureIncomingCallControlsView.recipe.didset(v7);
  outlined destroy of ConversationControlsAction(a1, type metadata accessor for ConversationControlsRecipe);
  return outlined destroy of ConversationControlsAction(v7, type metadata accessor for ConversationControlsRecipe);
}

void (*SystemApertureIncomingCallControlsView.recipe.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[3] = v1;
  v4 = type metadata accessor for ConversationControlsRecipe(0);
  OUTLINED_FUNCTION_22(v4);
  v6 = *(v5 + 64);
  v3[4] = __swift_coroFrameAllocStub(v6);
  v7 = __swift_coroFrameAllocStub(v6);
  v3[5] = v7;
  v8 = OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_recipe;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  outlined init with copy of ConversationControlsRecipe(v1 + v8, v7);
  return SystemApertureIncomingCallControlsView.recipe.modify;
}

void SystemApertureIncomingCallControlsView.recipe.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  if (a2)
  {
    outlined init with copy of ConversationControlsRecipe(v4, v3);
    SystemApertureIncomingCallControlsView.recipe.setter(v3);
    OUTLINED_FUNCTION_1_11();
    outlined destroy of ConversationControlsAction(v4, v5);
  }

  else
  {
    SystemApertureIncomingCallControlsView.recipe.setter(v4);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t SystemApertureIncomingCallControlsView.canUpdate(to:)(uint64_t a1)
{
  v5 = 5;
  v6 = 0u;
  v7 = 0u;
  v8 = 7;
  v2 = static ConversationControlsType.== infix(_:_:)(a1, &v5);
  outlined destroy of ConversationControlsType(&v5);
  if (v2)
  {
    v3 = 1;
  }

  else
  {
    v5 = 7;
    v6 = 0u;
    v7 = 0u;
    v8 = 7;
    v3 = static ConversationControlsType.== infix(_:_:)(a1, &v5);
    outlined destroy of ConversationControlsType(&v5);
  }

  return v3 & 1;
}

uint64_t SystemApertureIncomingCallControlsView.systemAperturePreferredContentSize.getter()
{
  v1 = [v0 window];
  if (v1)
  {
    v2 = v1;
    [v1 frame];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;

    v14.origin.x = v4;
    v14.origin.y = v6;
    v14.size.width = v8;
    v14.size.height = v10;
    Width = CGRectGetWidth(v14);
  }

  else
  {
    Width = 1.79769313e308;
  }

  v12 = [v0 SBUISA_systemApertureLeadingConcentricContentLayoutGuide];
  [v12 layoutFrame];

  return *&Width;
}

Swift::Void __swiftcall SystemApertureIncomingCallControlsView.layoutSubviews()()
{
  OUTLINED_FUNCTION_36_1();
  v2 = v0;
  swift_getObjectType();
  v3 = type metadata accessor for ConversationControlsRecipe(0);
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_1_7();
  v183.receiver = v0;
  v183.super_class = type metadata accessor for SystemApertureIncomingCallControlsView(0);
  v5 = objc_msgSendSuper2(&v183, sel_layoutSubviews);
  v6 = OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_leadingView;
  v7 = *(v0 + OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_leadingView);
  if (v7)
  {
    v8 = 50.0;
  }

  else
  {
    v8 = 4.0;
  }

  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x1B8))(v5);
  v9 = v1 + *(v4 + 76);
  v10 = *v9;
  v11 = *(v9 + 8);
  v12 = *(v9 + 16);
  outlined copy of LeadingViewType?(*v9, v11, *(v9 + 16));
  OUTLINED_FUNCTION_1_11();
  outlined destroy of ConversationControlsAction(v1, v13);
  MaxY = 16.0;
  if (v12 != 255)
  {
    outlined consume of LeadingViewType?(v10, v11, v12);
    if (v12)
    {
      v15 = *&v6[v2];
      MaxY = 23.0;
      if (v15)
      {
        v16 = [v15 layer];
        [v16 setCornerRadius_];

        v17 = *&v6[v2];
        if (v17)
        {
          v18 = [v17 layer];
          [v18 setMasksToBounds_];
        }
      }
    }
  }

  inited = &off_1E7FE9000;
  [v2 bounds];
  v176 = (CGRectGetHeight(v184) + -50.0) * 0.5;
  [*&v6[v2] setFrame_];
  if (one-time initialization token for conversationControls != -1)
  {
LABEL_64:
    OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
  }

  v20 = type metadata accessor for Logger();
  __swift_project_value_buffer(v20, &static Logger.conversationControls);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.debug.getter();
  v175 = v8;
  v169 = v6;
  v170 = v7;
  if (OUTLINED_FUNCTION_18_0(v22))
  {
    OUTLINED_FUNCTION_30_1();
    v23 = OUTLINED_FUNCTION_16_8();
    OUTLINED_FUNCTION_15_64(v23);
    *v10 = 136446466;
    v24 = OUTLINED_FUNCTION_11_107();
    OUTLINED_FUNCTION_33_43(v24, v25);
    OUTLINED_FUNCTION_17_2();
    OUTLINED_FUNCTION_8_60();
    v177 = MaxY;
    v178 = *&v176;
    v179 = v8;
    v180 = 0x4049000000000000;
    type metadata accessor for CGRect(0);
    v27 = OUTLINED_FUNCTION_57_18(v26);
    OUTLINED_FUNCTION_33_43(v27, v28);
    OUTLINED_FUNCTION_17_2();
    *(v10 + 14) = v7;
    OUTLINED_FUNCTION_30_7(&dword_1BBC58000, v29, v30, "[%{public}s][layout] leadingFrame is %s");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_3_26();
    OUTLINED_FUNCTION_27();
  }

  [v2 *(inited + 4024)];
  v31 = CGRectGetWidth(v185) + -16.0;
  v186.origin.x = OUTLINED_FUNCTION_3_166();
  v32 = v31 - CGRectGetWidth(v186) * 0.5;
  [v2 *(inited + 4024)];
  v33 = CGRectGetHeight(v187) * 0.5;
  v34 = OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_acceptButton;
  v35 = OUTLINED_FUNCTION_3_166();
  [v36 v37];
  v174 = v34;
  v38 = OUTLINED_FUNCTION_38_39([*(v2 + v34) setCenter_]);
  v39 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_18_0(v39))
  {
    OUTLINED_FUNCTION_30_1();
    v40 = OUTLINED_FUNCTION_16_8();
    OUTLINED_FUNCTION_15_64(v40);
    *v10 = 136446466;
    v41 = OUTLINED_FUNCTION_11_107();
    OUTLINED_FUNCTION_33_43(v41, v42);
    OUTLINED_FUNCTION_17_2();
    OUTLINED_FUNCTION_8_60();
    v177 = v32;
    v178 = *&v33;
    type metadata accessor for CGPoint(0);
    v44 = OUTLINED_FUNCTION_57_18(v43);
    OUTLINED_FUNCTION_33_43(v44, v45);
    OUTLINED_FUNCTION_17_2();
    *(v10 + 14) = v7;
    OUTLINED_FUNCTION_30_7(&dword_1BBC58000, v46, v47, "[%{public}s][layout] acceptCenter is %s");
    OUTLINED_FUNCTION_37_35();
    OUTLINED_FUNCTION_3_26();
    OUTLINED_FUNCTION_27();
  }

  v188.origin.x = OUTLINED_FUNCTION_3_166();
  v48 = v32 - CGRectGetWidth(v188) * 0.5 + -10.0;
  v189.origin.x = OUTLINED_FUNCTION_3_166();
  v49 = v48 - CGRectGetWidth(v189) * 0.5;
  [v2 bounds];
  v50 = CGRectGetHeight(v190) * 0.5;
  v51 = OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_rejectButton;
  v52 = OUTLINED_FUNCTION_3_166();
  [v53 v54];
  v173 = v51;
  v55 = OUTLINED_FUNCTION_38_39([*(v2 + v51) setCenter_]);
  v56 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_18_0(v56))
  {
    OUTLINED_FUNCTION_30_1();
    v57 = OUTLINED_FUNCTION_16_8();
    OUTLINED_FUNCTION_15_64(v57);
    *v10 = 136446466;
    v58 = OUTLINED_FUNCTION_11_107();
    OUTLINED_FUNCTION_33_43(v58, v59);
    OUTLINED_FUNCTION_17_2();
    OUTLINED_FUNCTION_8_60();
    v177 = v49;
    v178 = *&v50;
    type metadata accessor for CGPoint(0);
    v61 = OUTLINED_FUNCTION_57_18(v60);
    OUTLINED_FUNCTION_33_43(v61, v62);
    OUTLINED_FUNCTION_17_2();
    *(v10 + 14) = v7;
    OUTLINED_FUNCTION_30_7(&dword_1BBC58000, v63, v64, "[%{public}s][layout] rejectCenter is %s");
    OUTLINED_FUNCTION_37_35();
    OUTLINED_FUNCTION_3_26();
    OUTLINED_FUNCTION_27();
  }

  v65 = OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_focusButton;
  v66 = *(v2 + OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_focusButton);
  if (v66)
  {
    v67 = OUTLINED_FUNCTION_3_166();
    [v68 v69];
    v66 = *(v2 + v65);
    if (v66)
    {
      v66 = [v66 setCenter_];
    }
  }

  v70 = OUTLINED_FUNCTION_38_39(v66);
  v71 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_18_0(v71))
  {
    OUTLINED_FUNCTION_30_1();
    v72 = OUTLINED_FUNCTION_16_8();
    OUTLINED_FUNCTION_15_64(v72);
    *v10 = 136446466;
    v73 = OUTLINED_FUNCTION_11_107();
    OUTLINED_FUNCTION_33_43(v73, v74);
    OUTLINED_FUNCTION_17_2();
    OUTLINED_FUNCTION_8_60();
    v177 = v32;
    v178 = *&v33;
    type metadata accessor for CGPoint(0);
    v76 = OUTLINED_FUNCTION_57_18(v75);
    OUTLINED_FUNCTION_33_43(v76, v77);
    OUTLINED_FUNCTION_17_2();
    *(v10 + 14) = v7;
    OUTLINED_FUNCTION_30_7(&dword_1BBC58000, v78, v79, "[%{public}s][layout] focusCenter is %s");
    OUTLINED_FUNCTION_37_35();
    OUTLINED_FUNCTION_3_26();
    OUTLINED_FUNCTION_27();
  }

  v80 = *(v2 + v173);
  v81 = objc_opt_self();
  v82 = v80;
  v83 = [v81 conversationKit];
  v84 = OUTLINED_FUNCTION_42_32();
  v85 = OUTLINED_FUNCTION_30_36(v84 & 0xFFFFFFFFFFFFLL | 0x455F000000000000, 0xED000058415F444ELL);
  v87 = v86;

  outlined bridged method (mbnn) of @objc NSObject.accessibilityLabel.setter(v85, v87, v82);
  v88 = *(v2 + v174);
  v89 = [v81 conversationKit];
  v90 = OUTLINED_FUNCTION_30_36(0xD000000000000010, 0x80000001BC522F70);
  v92 = v91;

  outlined bridged method (mbnn) of @objc NSObject.accessibilityLabel.setter(v90, v92, v88);
  v93 = *(v2 + v65);
  if (v93)
  {
    v94 = v93;
    v95 = [v81 conversationKit];
    v96._countAndFlagsBits = OUTLINED_FUNCTION_42_32() & 0xFFFFFFFFFFFFLL | 0x465F000000000000;
    v96._object = 0xEF58415F5355434FLL;
    v97.value._countAndFlagsBits = 0x61737265766E6F43;
    v97.value._object = 0xEF74694B6E6F6974;
    v98._countAndFlagsBits = 0;
    v98._object = 0xE000000000000000;
    v99 = 0;
    v100 = NSLocalizedString(_:tableName:bundle:value:comment:)(v96, v97, v95, v98, *(&v170 - 1));

    outlined bridged method (mbnn) of @objc NSObject.accessibilityLabel.setter(v100._countAndFlagsBits, v100._object, v94);
  }

  if (v170)
  {
    v191.origin.x = MaxY;
    v191.origin.y = v176;
    v191.size.width = v175;
    v191.size.height = 50.0;
    v101 = CGRectGetMaxX(v191) + 9.0;
  }

  else
  {
    v101 = 29.0;
  }

  [v2 bounds];
  v102 = CGRectGetWidth(v192) + -136.0 - v101;
  if (v102 > 0.0)
  {
    v103 = v102;
  }

  else
  {
    v103 = 0.0;
  }

  v172 = *(v2 + OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_primaryLabel);
  v104 = [v172 font];
  if (!v104)
  {
    goto LABEL_66;
  }

  v105 = v104;
  [v104 lineHeight];
  v107 = v106;

  [v2 bounds];
  Height = CGRectGetHeight(v193);
  SystemApertureIncomingCallControlsView.maxSubtitleLabelSizeThatFits(_:)(v103, Height - v107);
  v110 = v109;
  v112 = v111;
  v113 = dbl_1BC4E9C90[v170 == 0];
  v115 = OUTLINED_FUNCTION_38_39(v114);
  v116 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_18_0(v116))
  {
    v117 = swift_slowAlloc();
    v118 = COERCE_DOUBLE(OUTLINED_FUNCTION_23());
    v177 = v118;
    *v117 = 136446978;
    v119 = OUTLINED_FUNCTION_11_107();
    v121 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v119, v120, &v177);

    *(v117 + 4) = v121;
    *(v117 + 12) = 1024;
    *(v117 + 14) = v110 <= v113;
    *(v117 + 18) = 2048;
    *(v117 + 20) = v110;
    *(v117 + 28) = 2048;
    *(v117 + 30) = v113;
    _os_log_impl(&dword_1BBC58000, v115, v116, "[%{public}s][layout] secondaryNextToSensor: %{BOOL}d, textWidth: %f, secondaryShortTextWidthThreshold: %f", v117, 0x26u);
    __swift_destroy_boxed_opaque_existential_1(*&v118);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_3_26();
  }

  v122 = objc_opt_self();
  v10 = swift_allocObject();
  *(v10 + 2) = v2;
  *(v10 + 3) = v110;
  *(v10 + 4) = v112;
  v123 = swift_allocObject();
  *(v123 + 16) = partial apply for closure #1 in SystemApertureIncomingCallControlsView.layoutSubviews();
  *(v123 + 24) = v10;
  v181 = partial apply for thunk for @escaping @callee_guaranteed () -> ();
  v182 = v123;
  v177 = MEMORY[0x1E69E9820];
  v178 = 1107296256;
  OUTLINED_FUNCTION_11_0();
  v179 = v124;
  v180 = &block_descriptor_119;
  v125 = _Block_copy(&v177);
  v6 = v2;

  [v122 performWithoutAnimation_];
  _Block_release(v125);
  LOBYTE(v122) = swift_isEscapingClosureAtFileLocation();

  if (v122)
  {
    __break(1u);
LABEL_66:
    __break(1u);
    return;
  }

  v171 = v113;
  if (v110 > v113)
  {
    v8 = 38.0 - (*((*MEMORY[0x1E69E7D40] & **&v6[OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_secondaryLabel]) + 0x98))(v126);
  }

  else
  {
    [v6 bounds];
    v8 = (CGRectGetHeight(v194) - v112 - v107) * 0.5;
  }

  v128 = OUTLINED_FUNCTION_38_39(v127);
  v7 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_18_0(v7))
  {
    v129 = OUTLINED_FUNCTION_30_1();
    v177 = COERCE_DOUBLE(swift_slowAlloc());
    *v129 = 136446466;
    v130 = OUTLINED_FUNCTION_11_107();
    v132 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v130, v131, &v177);

    *(v129 + 4) = v132;
    *(v129 + 12) = 2080;
    OUTLINED_FUNCTION_7_109();
    v133 = CGRect.description.getter();
    v135 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v133, v134, &v177);

    *(v129 + 14) = v135;
    _os_log_impl(&dword_1BBC58000, v128, v7, "[%{public}s][layout] secondaryFrame: %s", v129, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }

  v136 = *&v6[OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_secondaryLabel];
  v137 = OUTLINED_FUNCTION_7_109();
  [v138 v139];
  v195.origin.x = OUTLINED_FUNCTION_7_109();
  CGRectGetMaxY(v195);
  v140 = OUTLINED_FUNCTION_44_20();
  [v141 v142];
  v196.origin.x = MaxY;
  v196.origin.y = v176;
  v196.size.width = v175;
  v196.size.height = 50.0;
  MaxY = CGRectGetMaxY(v196);
  v197.origin.x = OUTLINED_FUNCTION_44_20();
  v144 = CGRectGetMaxY(v197);
  MinY = 17.0;
  if (v110 <= v171)
  {
    v198.origin.x = OUTLINED_FUNCTION_7_109();
    MinY = CGRectGetMinY(v198);
  }

  v146 = OUTLINED_FUNCTION_38_39(v143);
  v147 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_18_0(v147))
  {
    v8 = MaxY + 14.0;
    MaxY = v144 + MinY;
    v7 = swift_slowAlloc();
    v148 = COERCE_DOUBLE(OUTLINED_FUNCTION_23());
    v177 = v148;
    *v7 = 136446978;
    v149 = OUTLINED_FUNCTION_11_107();
    v151 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v149, v150, &v177);

    *(v7 + 4) = v151;
    *(v7 + 12) = 2048;
    *(v7 + 14) = v8;
    *(v7 + 22) = 2048;
    *(v7 + 24) = v144 + MinY;
    *(v7 + 32) = 2048;
    *(v7 + 34) = 0x4055000000000000;
    _os_log_impl(&dword_1BBC58000, v146, v147, "[%{public}s][layout] leadingViewMaxY: %f, textMaxY: %f, %f", v7, 0x2Au);
    __swift_destroy_boxed_opaque_existential_1(*&v148);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }

  if ([v6 effectiveUserInterfaceLayoutDirection] == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo6UIViewCSgGMd, &_ss23_ContiguousArrayStorageCySo6UIViewCSgGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BC4BE790;
    v152 = *&v169[v2];
    *(inited + 32) = v152;
    *(inited + 40) = v136;
    *(inited + 48) = v172;
    v153 = *(v2 + v173);
    *(inited + 56) = v153;
    v154 = *(v2 + v174);
    *(inited + 64) = v154;
    v2 = MEMORY[0x1E69E7CC0];
    v177 = MEMORY[0x1E69E7CC0];
    v155 = v152;
    v156 = v136;
    v157 = v172;
    v158 = v153;
    v159 = v154;
    for (i = 0; i != 5; ++i)
    {
      if (i > 4)
      {
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
        goto LABEL_64;
      }

      v161 = *(inited + 8 * i + 32);
      if (v161)
      {
        v162 = v161;
        MEMORY[0x1BFB20CC0]();
        if (*((*&v177 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v177 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v2 = *&v177;
      }
    }

    swift_setDeallocating();
    specialized _ContiguousArrayStorage.__deallocating_deinit();
    v163 = specialized Array.count.getter();
    inited = 0;
    v7 = 0x1FB3E9000;
    while (v163 != inited)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v164 = MEMORY[0x1BFB22010](inited, v2);
      }

      else
      {
        if (inited >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_63;
        }

        v164 = *(v2 + 8 * inited + 32);
      }

      v165 = v164;
      if (__OFADD__(inited, 1))
      {
        goto LABEL_62;
      }

      [v6 bounds];
      Width = CGRectGetWidth(v199);
      OUTLINED_FUNCTION_54_20();
      v168 = Width - v167;
      OUTLINED_FUNCTION_54_20();
      v8 = v168 - CGRectGetMinX(v200);
      OUTLINED_FUNCTION_54_20();
      MaxY = CGRectGetMinY(v201);
      OUTLINED_FUNCTION_54_20();
      [v165 setFrame_];

      ++inited;
    }
  }

  else
  {
  }

  OUTLINED_FUNCTION_35_3();
}

id closure #1 in SystemApertureIncomingCallControlsView.layoutSubviews()(uint64_t a1, double a2, double a3)
{
  v3 = *(a1 + OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_secondaryLabel);
  [v3 setFrame_];
  [v3 setNeedsLayout];

  return [v3 layoutIfNeeded];
}

CGSize __swiftcall SystemApertureIncomingCallControlsView.sizeThatFits(_:)(CGSize a1)
{
  OUTLINED_FUNCTION_36_1();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  swift_getObjectType();
  v69 = type metadata accessor for ConversationControlsRecipe(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8();
  v10 = v9 - v8;
  if (v4 <= 2.22507386e-308)
  {
    v4 = 1.79769313e308;
  }

  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, &static Logger.conversationControls);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_18_0(v13))
  {
    v14 = OUTLINED_FUNCTION_30_1();
    v75 = COERCE_DOUBLE(swift_slowAlloc());
    *v14 = 136446466;
    v15 = _typeName(_:qualified:)();
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v75);

    *(v14 + 4) = v17;
    *(v14 + 12) = 2080;
    *&v70 = v6;
    *(&v70 + 1) = v4;
    type metadata accessor for CGSize(0);
    v18 = String.init<A>(reflecting:)();
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v75);

    *(v14 + 14) = v20;
    OUTLINED_FUNCTION_16_16(&dword_1BBC58000, v21, v22, "[%{public}s][sizing] sizingThatFits %s");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_3_26();
  }

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_18_0(v24))
  {
    v25 = OUTLINED_FUNCTION_30_1();
    v75 = COERCE_DOUBLE(swift_slowAlloc());
    *v25 = 136446466;
    v26 = _typeName(_:qualified:)();
    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, &v75);

    *(v25 + 4) = v28;
    *(v25 + 12) = 2080;
    v70 = xmmword_1BC4BB460;
    type metadata accessor for CGSize(0);
    v29 = String.init<A>(reflecting:)();
    v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, &v75);

    *(v25 + 14) = v31;
    OUTLINED_FUNCTION_16_16(&dword_1BBC58000, v32, v33, "[%{public}s][sizing] actionsSize is  %s");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_3_26();
  }

  (*((*MEMORY[0x1E69E7D40] & *v2) + 0x1B8))();
  v34 = v10 + *(v69 + 68);
  v35 = *v34;
  v36 = *(v34 + 8);
  v37 = *(v34 + 16);
  outlined copy of LeadingViewType?(*v34, v36, *(v34 + 16));
  OUTLINED_FUNCTION_1_11();
  outlined destroy of ConversationControlsAction(v10, v38);
  if (v37 == 255)
  {
    v39 = 75.0;
  }

  else
  {
    outlined consume of LeadingViewType?(v35, v36, v37);
    if (v37)
    {
      v39 = 82.0;
    }

    else
    {
      v39 = 75.0;
    }
  }

  [*(v2 + OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_primaryLabel) sizeThatFits_];
  v41 = v40;
  v43 = v42;
  [*(v2 + OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_secondaryLabel) sizeThatFits_];
  v45 = v44;
  v47 = v46;
  v75 = 0.0;
  v48 = objc_opt_self();
  v49 = swift_allocObject();
  *(v49 + 16) = v2;
  *(v49 + 24) = v45;
  *(v49 + 32) = v47;
  *(v49 + 40) = &v75;
  v50 = swift_allocObject();
  *(v50 + 16) = partial apply for closure #1 in SystemApertureIncomingCallControlsView.sizeThatFits(_:);
  *(v50 + 24) = v49;
  v73 = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  v74 = v50;
  *&v70 = MEMORY[0x1E69E9820];
  *(&v70 + 1) = 1107296256;
  OUTLINED_FUNCTION_11_0();
  v71 = v51;
  v72 = &block_descriptor_13_4;
  v52 = _Block_copy(&v70);
  v53 = v2;

  [v48 performWithoutAnimation_];
  _Block_release(v52);
  LOBYTE(v52) = swift_isEscapingClosureAtFileLocation();

  if (v52)
  {
    __break(1u);
  }

  else
  {
    if (v41 > v45)
    {
      v56 = v41;
    }

    else
    {
      v56 = v45;
    }

    v57 = v43 + v47 - v75 + 38.0 + 17.0;
    if (v56 <= 156.0)
    {
      v56 = 156.0;
    }

    v58 = v39 + v56 + 136.0;
    specialized max<A>(_:_:_:_:)(MEMORY[0x1E69E7CC0], 78.0, v57, 84.0);
    v60 = v59;
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_18_0(v62))
    {
      v63 = OUTLINED_FUNCTION_23();
      v64 = OUTLINED_FUNCTION_23();
      *&v70 = v64;
      *v63 = 136446722;
      v65 = _typeName(_:qualified:)();
      v67 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v65, v66, &v70);

      *(v63 + 4) = v67;
      *(v63 + 12) = 2048;
      *(v63 + 14) = v58;
      *(v63 + 22) = 2048;
      *(v63 + 24) = v60;
      _os_log_impl(&dword_1BBC58000, v61, v62, "[%{public}s][sizing] measuredWidth: %f, measuredHeight: %f", v63, 0x20u);
      __swift_destroy_boxed_opaque_existential_1(v64);
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_18();
    }

    OUTLINED_FUNCTION_35_3();
  }

  result.height = v55;
  result.width = v54;
  return result;
}

id closure #1 in SystemApertureIncomingCallControlsView.sizeThatFits(_:)(uint64_t a1, double *a2, double a3, double a4)
{
  v7 = *(a1 + OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_secondaryLabel);
  [v7 frame];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  [v7 setFrame_];
  [v7 setNeedsLayout];
  v16 = [v7 layoutIfNeeded];
  *a2 = (*((*MEMORY[0x1E69E7D40] & *v7) + 0x98))(v16);

  return [v7 setFrame_];
}

CGSize __swiftcall SystemApertureIncomingCallControlsView.systemLayoutSizeFitting(_:withHorizontalFittingPriority:verticalFittingPriority:)(CGSize _, __C::UILayoutPriority withHorizontalFittingPriority, __C::UILayoutPriority verticalFittingPriority)
{
  [v3 sizeThatFits_];
  result.height = v5;
  result.width = v4;
  return result;
}

void SystemApertureIncomingCallControlsView.updateLeadingView(fromPreviousRecipe:)()
{
  OUTLINED_FUNCTION_29();
  v1 = v0;
  v3 = v2;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for ConversationControlsRecipe(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_17();
  v9 = v7 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v119 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v122 = &v119 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v123 = &v119 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A14ControlsRecipeVSgMd, &_s15ConversationKit0A14ControlsRecipeVSgMR);
  v18 = OUTLINED_FUNCTION_22(v17);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v119 - v19;
  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
  }

  v21 = type metadata accessor for Logger();
  v126 = __swift_project_value_buffer(v21, &static Logger.conversationControls);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  v24 = OUTLINED_FUNCTION_18_0(v23);
  v127 = v5;
  v125 = ObjectType;
  if (v24)
  {
    v25 = OUTLINED_FUNCTION_42();
    v124 = v12;
    v26 = v3;
    v27 = v25;
    v28 = v9;
    v29 = OUTLINED_FUNCTION_23();
    v128 = v29;
    *v27 = 136446210;
    v30 = _typeName(_:qualified:)();
    v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, &v128);

    *(v27 + 4) = v32;
    _os_log_impl(&dword_1BBC58000, v22, v23, "[%{public}s] updateLeadingView", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v29);
    v9 = v28;
    v5 = v127;
    OUTLINED_FUNCTION_27();
    v3 = v26;
    v12 = v124;
    OUTLINED_FUNCTION_27();
  }

  v33 = OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_leadingView;
  v34 = *(v1 + OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_leadingView);
  v35 = MEMORY[0x1E69E7D40];
  if (v34)
  {
    outlined init with copy of (CGFloat, AutoplayCandidate)(v3, v20, &_s15ConversationKit0A14ControlsRecipeVSgMd, &_s15ConversationKit0A14ControlsRecipeVSgMR);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v20, 1, v5);
    v124 = v34;
    if (EnumTagSinglePayload == 1)
    {
      v37 = v34;
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v20, &_s15ConversationKit0A14ControlsRecipeVSgMd, &_s15ConversationKit0A14ControlsRecipeVSgMR);
    }

    else
    {
      v39 = &v20[*(v5 + 68)];
      v41 = *v39;
      v40 = *(v39 + 1);
      v42 = v39[16];
      v43 = v34;
      v120 = v41;
      v121 = v40;
      v44 = v40;
      v35 = MEMORY[0x1E69E7D40];
      outlined copy of LeadingViewType?(v41, v44, v42);
      OUTLINED_FUNCTION_1_11();
      outlined destroy of ConversationControlsAction(v20, v45);
      if (v42 != 255)
      {
        v119 = v43;
        if (v42)
        {
          LODWORD(v123) = v42;
          OUTLINED_FUNCTION_43_31();
          v47 = v122;
          (*(v46 + 440))();
          v48 = v47 + *(v5 + 68);
          v50 = *v48;
          v49 = *(v48 + 8);
          v51 = *(v48 + 16);
          outlined copy of LeadingViewType?(*v48, v49, *(v48 + 16));
          OUTLINED_FUNCTION_1_11();
          outlined destroy of ConversationControlsAction(v47, v52);
          if (v51 == 255)
          {
            v72 = v120;
          }

          else
          {
            v53 = v120;
            if (v51)
            {
              type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSObject, 0x1E69E58C0);
              if (static NSObject.== infix(_:_:)())
              {
                v54 = Logger.logObject.getter();
                static os_log_type_t.default.getter();
                OUTLINED_FUNCTION_45_2();
                if (os_log_type_enabled(v54, v55))
                {
                  v56 = OUTLINED_FUNCTION_42();
                  v57 = OUTLINED_FUNCTION_23();
                  OUTLINED_FUNCTION_41_28(v57);
                  v58 = OUTLINED_FUNCTION_24_58(4.8751e-34);
                  v60 = v49;
                  v61 = OUTLINED_FUNCTION_56_20(v58, v59);

                  *(v56 + 4) = v61;
                  OUTLINED_FUNCTION_13_84(&dword_1BBC58000, v62, v63, "[%{public}s] skipping updateLeadingView: recipe leadingViewType (brandedCallIcon) image is unchanged");
                  __swift_destroy_boxed_opaque_existential_1(v35);
                  OUTLINED_FUNCTION_18();
                  OUTLINED_FUNCTION_27();

                  v64 = v50;
                  v65 = v60;
                }

                else
                {

                  v64 = v50;
                  v65 = v49;
                }

                outlined consume of LeadingViewType?(v64, v65, v51);
                v116 = v53;
                v117 = v121;
                v118 = v123;
                goto LABEL_41;
              }
            }

            outlined consume of LeadingViewType?(v50, v49, v51);
            v72 = v53;
          }

          v73 = v121;
          v74 = v123;
          goto LABEL_31;
        }

        v85 = v121;
        outlined consume of LeadingViewType?(v120, v121, v42);
        v86 = v123;
        (*((*v35 & *v1) + 0x1B8))();
        v87 = v86 + *(v5 + 68);
        v89 = *v87;
        v88 = *(v87 + 8);
        v90 = *(v87 + 16);
        outlined copy of LeadingViewType?(*v87, v88, *(v87 + 16));
        OUTLINED_FUNCTION_1_11();
        outlined destroy of ConversationControlsAction(v86, v91);
        if (v90 == 255)
        {
          goto LABEL_32;
        }

        outlined consume of LeadingViewType?(v89, v88, v90);
        if ((v90 & 1) != 0 || v85 != v88)
        {
          goto LABEL_32;
        }

        v92 = Logger.logObject.getter();
        static os_log_type_t.default.getter();
        OUTLINED_FUNCTION_45_2();
        if (os_log_type_enabled(v92, v93))
        {
          v94 = OUTLINED_FUNCTION_42();
          v95 = OUTLINED_FUNCTION_23();
          OUTLINED_FUNCTION_41_28(v95);
          v96 = OUTLINED_FUNCTION_24_58(4.8751e-34);
          v98 = OUTLINED_FUNCTION_56_20(v96, v97);

          *(v94 + 4) = v98;
          OUTLINED_FUNCTION_13_84(&dword_1BBC58000, v99, v100, "[%{public}s] skipping updateLeadingView: recipe leadingViewType (contactAvatar) hash is unchanged");
          __swift_destroy_boxed_opaque_existential_1(v35);
          OUTLINED_FUNCTION_18();
          OUTLINED_FUNCTION_27();
        }

        v84 = v119;
LABEL_21:

        goto LABEL_42;
      }
    }

    OUTLINED_FUNCTION_43_31();
    (*(v66 + 440))();
    v67 = &v12[*(v5 + 68)];
    v68 = *v67;
    v69 = *(v67 + 1);
    v70 = v67[16];
    outlined copy of LeadingViewType?(*v67, v69, v67[16]);
    OUTLINED_FUNCTION_1_11();
    outlined destroy of ConversationControlsAction(v12, v71);
    if (v70 != 255)
    {
      v72 = v68;
      v73 = v69;
      v74 = v70;
LABEL_31:
      outlined consume of LeadingViewType?(v72, v73, v74);
LABEL_32:
      v101 = v124;
      [v124 removeFromSuperview];

      v38 = *(v1 + v33);
      v5 = v127;
      goto LABEL_33;
    }

    v75 = Logger.logObject.getter();
    static os_log_type_t.default.getter();
    OUTLINED_FUNCTION_45_2();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = OUTLINED_FUNCTION_42();
      v78 = OUTLINED_FUNCTION_23();
      OUTLINED_FUNCTION_41_28(v78);
      v79 = OUTLINED_FUNCTION_24_58(4.8751e-34);
      v81 = OUTLINED_FUNCTION_56_20(v79, v80);

      *(v77 + 4) = v81;
      OUTLINED_FUNCTION_13_84(&dword_1BBC58000, v82, v83, "[%{public}s] skipping updateLeadingView: recipe leadingViewType is still nil");
      __swift_destroy_boxed_opaque_existential_1(v35);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_27();
    }

    v84 = v124;
    goto LABEL_21;
  }

  v38 = 0;
LABEL_33:
  *(v1 + v33) = 0;

  (*((*v35 & *v1) + 0x1B8))();
  v102 = v9 + *(v5 + 68);
  v104 = *v102;
  v103 = *(v102 + 8);
  v105 = *(v102 + 16);
  outlined copy of LeadingViewType?(*v102, v103, *(v102 + 16));
  OUTLINED_FUNCTION_1_11();
  outlined destroy of ConversationControlsAction(v9, v106);
  if (v105 != 255)
  {
    if (v105)
    {
      SystemApertureIncomingCallControlsView.updateBrandedImageIcon(using:)();
    }

    else
    {
      SystemApertureIncomingCallControlsView.updateAvatar(using:)();
    }

    v116 = v104;
    v117 = v103;
    v118 = v105;
LABEL_41:
    outlined consume of LeadingViewType?(v116, v117, v118);
    goto LABEL_42;
  }

  v107 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  OUTLINED_FUNCTION_45_2();
  if (os_log_type_enabled(v107, v108))
  {
    v109 = OUTLINED_FUNCTION_42();
    v110 = OUTLINED_FUNCTION_23();
    OUTLINED_FUNCTION_41_28(v110);
    v111 = OUTLINED_FUNCTION_24_58(4.8751e-34);
    v113 = OUTLINED_FUNCTION_56_20(v111, v112);

    *(v109 + 4) = v113;
    OUTLINED_FUNCTION_13_84(&dword_1BBC58000, v114, v115, "[%{public}s] omitting leading view");
    __swift_destroy_boxed_opaque_existential_1(v35);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_27();
  }

LABEL_42:
  OUTLINED_FUNCTION_30_0();
}

void SystemApertureIncomingCallControlsView.updateAvatar(using:)()
{
  OUTLINED_FUNCTION_29();
  v3 = v0;
  OUTLINED_FUNCTION_288();
  swift_getObjectType();
  type metadata accessor for ConversationControlsRecipe(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_1_7();
  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, &static Logger.conversationControls);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_18_0(v7))
  {
    v8 = OUTLINED_FUNCTION_42();
    v9 = OUTLINED_FUNCTION_23();
    v20 = v9;
    *v8 = 136446210;
    v10 = _typeName(_:qualified:)();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v20);

    *(v8 + 4) = v12;
    OUTLINED_FUNCTION_17_11(&dword_1BBC58000, v13, v14, "[%{public}s] showing avatar");
    __swift_destroy_boxed_opaque_existential_1(v9);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }

  v15 = *(v3 + OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_leadingView);
  *(v3 + OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_leadingView) = v2;
  v16 = v2;

  v17 = [v16 layer];
  v18 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x1B8);
  OUTLINED_FUNCTION_33_4();
  v18();
  OUTLINED_FUNCTION_7_11();
  outlined destroy of ConversationControlsAction(v1, v19);
  [v17 setAllowsHitTesting_];

  OUTLINED_FUNCTION_33_4();
  v18();
  OUTLINED_FUNCTION_37_6();
  [v16 setUserInteractionEnabled_];
  [v3 addSubview_];
  [v3 setNeedsLayout];
  OUTLINED_FUNCTION_30_0();
}

void SystemApertureIncomingCallControlsView.updateBrandedImageIcon(using:)()
{
  OUTLINED_FUNCTION_29();
  v3 = v0;
  OUTLINED_FUNCTION_288();
  swift_getObjectType();
  type metadata accessor for ConversationControlsRecipe(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_1_7();
  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, &static Logger.conversationControls);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_18_0(v7))
  {
    v8 = OUTLINED_FUNCTION_42();
    v9 = OUTLINED_FUNCTION_23();
    v21 = v9;
    *v8 = 136446210;
    v10 = _typeName(_:qualified:)();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v21);

    *(v8 + 4) = v12;
    OUTLINED_FUNCTION_17_11(&dword_1BBC58000, v13, v14, "[%{public}s] updateBrandedImageIcon");
    __swift_destroy_boxed_opaque_existential_1(v9);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }

  v15 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithImage_];
  v16 = *(v3 + OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_leadingView);
  *(v3 + OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_leadingView) = v15;
  v17 = v15;

  v18 = [v17 layer];
  v19 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x1B8);
  OUTLINED_FUNCTION_33_4();
  v19();
  OUTLINED_FUNCTION_7_11();
  outlined destroy of ConversationControlsAction(v1, v20);
  [v18 setAllowsHitTesting_];

  OUTLINED_FUNCTION_33_4();
  v19();
  OUTLINED_FUNCTION_37_6();
  [v17 setUserInteractionEnabled_];
  [v3 addSubview_];
  [v3 setNeedsLayout];

  OUTLINED_FUNCTION_30_0();
}

id SystemApertureIncomingCallControlsView.updateSecondaryBadge()()
{
  v2 = v0;
  v3 = type metadata accessor for ConversationControlsRecipe(0);
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_1_7();
  v5 = *(v0 + OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_secondaryLabel);
  v6 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x1B8))();
  v7 = *(v1 + *(v4 + 48));
  if (v7)
  {
    v8 = v7;
  }

  OUTLINED_FUNCTION_1_11();
  outlined destroy of ConversationControlsAction(v1, v9);
  (*((*v6 & *v5) + 0x68))(v7);
  return [v2 setNeedsLayout];
}

void SystemApertureIncomingCallControlsView.updateSecondaryLabel()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_29();
  a19 = v21;
  a20 = v22;
  v23 = v20;
  v24 = type metadata accessor for ConversationControlsRecipe(0);
  v25 = OUTLINED_FUNCTION_22(v24);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_17();
  v28 = v26 - v27;
  v31.n128_f64[0] = MEMORY[0x1EEE9AC00](v29);
  v33 = &a9 - v32;
  v34 = OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_alternatingLabelController;
  v35 = *(v20 + OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_alternatingLabelController);
  if (v35)
  {
    v36 = *(*v35 + 264);

    v36(v37);
  }

  v38 = MEMORY[0x1E69E7D40];
  v39 = *((*MEMORY[0x1E69E7D40] & *v23) + 0x1B8);
  (v39)(v30, v31);

  OUTLINED_FUNCTION_1_11();
  outlined destroy of ConversationControlsAction(v33, v40);
  v41 = specialized Array.count.getter();

  v42 = *(v23 + OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_secondaryLabel);
  if (v41 < 2)
  {
    OUTLINED_FUNCTION_33_4();
    v39();
    v51 = *(v28 + 88);

    OUTLINED_FUNCTION_1_11();
    outlined destroy of ConversationControlsAction(v28, v52);
    if (specialized Array.count.getter())
    {
      specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v51 & 0xC000000000000001) == 0, v51);
      if ((v51 & 0xC000000000000001) != 0)
      {
        v53 = MEMORY[0x1BFB22010](0, v51);
      }

      else
      {
        v53 = *(v51 + 32);
      }

      v54 = v53;
    }

    else
    {

      v54 = 0;
    }

    (*((*v38 & *v42) + 0x80))(v54);
  }

  else
  {
    v42;
    v39();

    OUTLINED_FUNCTION_1_11();
    outlined destroy of ConversationControlsAction(v33, v43);
    type metadata accessor for AlternatingLabelController();
    swift_allocObject();
    OUTLINED_FUNCTION_3_0();
    v50 = specialized AlternatingLabelController.init(label:timeInterval:alternatingBetween:observer:)(v44, v45, v49, v46, v47, v48);
    (*(*v50 + 256))();
    *(v23 + v34) = v50;
  }

  [v23 setNeedsLayout];
  OUTLINED_FUNCTION_30_0();
}

void SystemApertureIncomingCallControlsView.maxSubtitleLabelSizeThatFits(_:)(double a1, double a2)
{
  v5 = type metadata accessor for ConversationControlsRecipe(0);
  v6 = OUTLINED_FUNCTION_22(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_17();
  v9 = v7 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v48 - v11;
  v13 = *(v2 + OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_secondaryLabel);
  v14 = [v13 sizeThatFits_];
  v15 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x1B8);
  (v15)(v14);

  OUTLINED_FUNCTION_1_11();
  outlined destroy of ConversationControlsAction(v12, v16);
  specialized Array.count.getter();
  OUTLINED_FUNCTION_288();

  if (v12 >= 2)
  {
    OUTLINED_FUNCTION_15_63();
    v18 = (*(v17 + 120))();
    v15();
    v50 = *(v9 + 88);
    v19 = specialized Array.count.getter();
    if (v19)
    {
      v20 = v19;
      v51 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v19 & ~(v19 >> 63), 0);
      if (v20 < 0)
      {
        __break(1u);
        return;
      }

      v48 = v18;
      v49 = v9;
      v21 = 0;
      OUTLINED_FUNCTION_15_63();
      v23 = *(v22 + 128);
      v24 = v51;
      v25 = v50 & 0xC000000000000001;
      do
      {
        if (v25)
        {
          v26 = MEMORY[0x1BFB22010](v21, v50);
        }

        else
        {
          v26 = *(v50 + 8 * v21 + 32);
        }

        v27 = v26;
        v28 = v26;
        v23(v27);
        [v13 sizeThatFits_];
        v30 = v29;
        v32 = v31;

        v51 = v24;
        v34 = *(v24 + 16);
        v33 = *(v24 + 24);
        if (v34 >= v33 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v33 > 1, v34 + 1, 1);
          v24 = v51;
        }

        ++v21;
        *(v24 + 16) = v34 + 1;
        v35 = v24 + 16 * v34;
        *(v35 + 32) = v30;
        *(v35 + 40) = v32;
      }

      while (v20 != v21);
      OUTLINED_FUNCTION_1_11();
      outlined destroy of ConversationControlsAction(v49, v36);
      v18 = v48;
    }

    else
    {
      OUTLINED_FUNCTION_1_11();
      outlined destroy of ConversationControlsAction(v9, v37);
      v24 = MEMORY[0x1E69E7CC0];
    }

    OUTLINED_FUNCTION_15_63();
    v39 = *(v38 + 128);
    v40 = v18;
    v39(v18);
    v41 = *(v24 + 16);
    if (v41)
    {
      v42 = v41 - 1;
      if (v42)
      {
        v43 = 48;
        v44 = v42;
        v45 = *(v24 + 32);
        do
        {
          if (v45 < *(v24 + v43))
          {
            v45 = *(v24 + v43);
          }

          v43 += 16;
          --v44;
        }

        while (v44);
        v46 = 56;
        v47 = *(v24 + 40);
        do
        {
          if (v47 < *(v24 + v46))
          {
            v47 = *(v24 + v46);
          }

          v46 += 16;
          --v42;
        }

        while (v42);
      }
    }

    else
    {
    }
  }
}

id SystemApertureIncomingCallControlsView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id SystemApertureIncomingCallControlsView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SystemApertureIncomingCallControlsView(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void (*protocol witness for ControlsView.cnkContentAlpha.modify in conformance SystemApertureIncomingCallControlsView(void *a1))(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x1B0))();
  return protocol witness for ControlsView.cnkContentAlpha.modify in conformance SystemApertureOngoingTelephonyControlsView;
}

void (*protocol witness for ControlsView.recipe.modify in conformance SystemApertureIncomingCallControlsView(void *a1))(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x1C8))();
  return protocol witness for ControlsView.recipe.modify in conformance SystemApertureOngoingTelephonyControlsView;
}

uint64_t specialized AlternatingLabelController.init(label:timeInterval:alternatingBetween:observer:)(void *a1, uint64_t a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(a6 + 16) = 0;
  *(a6 + 32) = 0;
  swift_unknownObjectWeakInit();
  *(a6 + 56) = 0;
  *(a6 + 72) = 0;
  swift_unknownObjectWeakInit();
  v11 = specialized Array.count.getter();
  if (v11)
  {
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (a2 & 0xC000000000000001) == 0, a2);
    if ((a2 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x1BFB22010](0, a2);
    }

    else
    {
      v11 = *(a2 + 32);
    }
  }

  (*((*MEMORY[0x1E69E7D40] & *a1) + 0x80))(v11);
  *(a6 + 32) = &protocol witness table for BadgedLabel;
  swift_unknownObjectWeakAssign();

  *(a6 + 48) = a2;
  *(a6 + 40) = a3;
  *(a6 + 72) = a5;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return a6;
}

uint64_t type metadata completion function for SystemApertureIncomingCallControlsView(uint64_t a1)
{
  result = type metadata accessor for ConversationControlsRecipe(319);
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

void specialized Collection.firstIndex(where:)(uint64_t a1, char *a2)
{
  v9 = specialized Array.count.getter();
  v4 = 0;
  while (1)
  {
    if (v9 == v4)
    {
      goto LABEL_14;
    }

    if ((a1 & 0xC000000000000001) == 0)
    {
      break;
    }

    v5 = MEMORY[0x1BFB22010](v4, a1);
LABEL_6:
    v6 = v5;
    type metadata accessor for NSObject();
    if (static NSObject.== infix(_:_:)())
    {

      a2 = v6;
LABEL_14:

      return;
    }

    v7 = static NSObject.== infix(_:_:)();

    if (v7)
    {
      goto LABEL_14;
    }

    if (__OFADD__(v4++, 1))
    {
      goto LABEL_16;
    }
  }

  if (v4 < *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v5 = *(a1 + 8 * v4 + 32);
    goto LABEL_6;
  }

  __break(1u);
LABEL_16:
  __break(1u);
}

{
  v4 = specialized Array.count.getter();
  v5 = 0;
  while (1)
  {
    if (v4 == v5)
    {
LABEL_11:

      return;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x1BFB22010](v5, a1);
      goto LABEL_6;
    }

    if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      break;
    }

    v6 = *(a1 + 8 * v5 + 32);
LABEL_6:
    v7 = v6;
    type metadata accessor for NSObject();
    v8 = static NSObject.== infix(_:_:)();

    if (v8)
    {
      goto LABEL_11;
    }

    if (__OFADD__(v5++, 1))
    {
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
}

{
  v4 = specialized Array.count.getter();
  v5 = 0;
  while (1)
  {
    if (v4 == v5)
    {
LABEL_11:

      return;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x1BFB22010](v5, a1);
      goto LABEL_6;
    }

    if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      break;
    }

    v6 = *(a1 + 8 * v5 + 32);
LABEL_6:
    v7 = v6;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSObject, 0x1E69E58C0);
    v8 = static NSObject.== infix(_:_:)();

    if (v8)
    {
      goto LABEL_11;
    }

    if (__OFADD__(v5++, 1))
    {
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
}

void SharedContentView.isPaused.setter(char a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC15ConversationKit17SharedContentView_isPaused;
  OUTLINED_FUNCTION_6_0(v2 + OBJC_IVAR____TtC15ConversationKit17SharedContentView_isPaused, a2);
  *(v2 + v4) = a1;
  SharedContentView.isPaused.didset();
}

Swift::Int SharedContentView.configure(with:)(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for SharedContentViewModel(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_8();
  v9 = v8 - v7;
  v10 = type metadata accessor for SharedContentViewModel.ParticipantDetails(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  OUTLINED_FUNCTION_8();
  v13 = v12 - v11;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit22SharedContentViewModelOSgMd, &_s15ConversationKit22SharedContentViewModelOSgMR);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v59 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v59 - v18;
  Hasher.init(_seed:)();
  SharedContentViewModel.hash(into:)(__dst);
  result = Hasher._finalize()();
  if ((v1[OBJC_IVAR____TtC15ConversationKit17SharedContentView_mostRecentViewModelHash + 8] & 1) != 0 || *&v1[OBJC_IVAR____TtC15ConversationKit17SharedContentView_mostRecentViewModelHash] != result)
  {
    v61 = &v1[OBJC_IVAR____TtC15ConversationKit17SharedContentView_mostRecentViewModelHash];
    v62 = result;
    v66 = ObjectType;
    v67 = v9;
    v21 = v5;
    v22 = a1;
    v68 = v13;
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
    }

    v60 = static OS_os_log.conversationKit;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1BC4BB980;
    v24 = OBJC_IVAR____TtC15ConversationKit17SharedContentView_loggingIdentifier;
    v25 = type metadata accessor for UUID();
    OUTLINED_FUNCTION_7_0();
    v27 = *(v26 + 16);
    v63 = v26 + 16;
    v64 = v27;
    v27(v19, &v2[v24], v25);
    v65 = v25;
    __swift_storeEnumTagSinglePayload(v19, 0, 1, v25);
    specialized >> prefix<A>(_:)(v19, v28, v29, v30, v31, v32, v33, v34, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68);
    v36 = v35;
    v38 = v37;
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v19, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    *(v23 + 56) = MEMORY[0x1E69E6158];
    v39 = lazy protocol witness table accessor for type String and conformance String();
    *(v23 + 64) = v39;
    *(v23 + 32) = v36;
    *(v23 + 40) = v38;
    outlined init with copy of SharedContentViewModel(v22, v16);
    __swift_storeEnumTagSinglePayload(v16, 0, 1, v21);
    specialized >> prefix<A>(_:)();
    v41 = v40;
    v43 = v42;
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v16, &_s15ConversationKit22SharedContentViewModelOSgMd, &_s15ConversationKit22SharedContentViewModelOSgMR);
    *(v23 + 96) = MEMORY[0x1E69E6158];
    *(v23 + 104) = v39;
    *(v23 + 72) = v41;
    *(v23 + 80) = v43;
    __dst[0] = v2;
    v44 = v2;
    v45 = String.init<A>(reflecting:)();
    *(v23 + 136) = MEMORY[0x1E69E6158];
    *(v23 + 144) = v39;
    *(v23 + 112) = v45;
    *(v23 + 120) = v46;
    v47 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Configuring shared content view %@ with %@. %@", 46, 2, &dword_1BBC58000, v60, v47, v23);

    v48 = v61;
    *v61 = v62;
    v48[8] = 0;
    SharedContentView.configureViewVisibility(for:)(v22);
    v49 = v67;
    outlined init with copy of SharedContentViewModel(v22, v67);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit22SharedContentViewModelO18ParticipantDetailsV_So20CNKDeviceOrientationVAA0cd5VideoE0C0eF0VAA0gk7OverlayE0CAJOtMd, &_s15ConversationKit22SharedContentViewModelO18ParticipantDetailsV_So20CNKDeviceOrientationVAA0cd5VideoE0C0eF0VAA0gk7OverlayE0CAJOtMR);
      v51 = *(v49 + v50[12]);
      v52 = v50[16];
      v53 = v50[20];
      v54 = v68;
      outlined init with take of SharedContentViewModel.ParticipantDetails(v49, v68);
      memcpy(__dst, (v49 + v52), 0xA8uLL);
      memcpy(v71, (v49 + v53), 0x69uLL);
    }

    else
    {
      v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit22SharedContentViewModelO18ParticipantDetailsV_So20CNKDeviceOrientationVAA0cd5VideoE0C0eF0VtMd, &_s15ConversationKit22SharedContentViewModelO18ParticipantDetailsV_So20CNKDeviceOrientationVAA0cd5VideoE0C0eF0VtMR);
      v51 = *(v49 + *(v55 + 48));
      v56 = *(v55 + 64);
      v54 = v68;
      outlined init with take of SharedContentViewModel.ParticipantDetails(v49, v68);
      memcpy(__dst, (v49 + v56), 0xA8uLL);
      memset(v71, 0, 104);
      v71[104] = -1;
    }

    v57 = v65;
    v64(v19, v54, v65);
    __swift_storeEnumTagSinglePayload(v19, 0, 1, v57);
    v58 = OBJC_IVAR____TtC15ConversationKit17SharedContentView_participantIdentifier;
    swift_beginAccess();
    outlined assign with take of UUID?(v19, &v44[v58]);
    swift_endAccess();
    *&v44[OBJC_IVAR____TtC15ConversationKit17SharedContentView_deviceOrientation] = v51;
    SharedContentView.updateVideoViewTransform()();
    outlined init with copy of (CGFloat, AutoplayCandidate)(__dst, v69, &_s15ConversationKit22SharedContentVideoViewC0F5ModelVSgMd, &_s15ConversationKit22SharedContentVideoViewC0F5ModelVSgMR);
    if (v69[3] == 1)
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v69, &_s15ConversationKit22SharedContentVideoViewC0F5ModelVSgMd, &_s15ConversationKit22SharedContentVideoViewC0F5ModelVSgMR);
    }

    else
    {
      memcpy(v70, v69, sizeof(v70));
      SharedContentVideoView.configure(with:)(v70);
      outlined destroy of SharedContentVideoView.ViewModel(v70);
    }

    outlined init with copy of (CGFloat, AutoplayCandidate)(v71, v69, &_s15ConversationKit27ParticipantVideoOverlayViewC0F5ModelOSgMd, &_s15ConversationKit27ParticipantVideoOverlayViewC0F5ModelOSgMR);
    if (LOBYTE(v69[13]) == 255)
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v71, &_s15ConversationKit27ParticipantVideoOverlayViewC0F5ModelOSgMd, &_s15ConversationKit27ParticipantVideoOverlayViewC0F5ModelOSgMR);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(__dst, &_s15ConversationKit22SharedContentVideoViewC0F5ModelVSgMd, &_s15ConversationKit22SharedContentVideoViewC0F5ModelVSgMR);
      outlined destroy of SharedContentViewModel.ParticipantDetails(v54);
      return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v69, &_s15ConversationKit27ParticipantVideoOverlayViewC0F5ModelOSgMd, &_s15ConversationKit27ParticipantVideoOverlayViewC0F5ModelOSgMR);
    }

    else
    {
      memcpy(v70, v69, 0x69uLL);
      ParticipantVideoOverlayView.configure(with:)(v70);
      outlined destroy of ParticipantVideoOverlayView.ViewModel(v70);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v71, &_s15ConversationKit27ParticipantVideoOverlayViewC0F5ModelOSgMd, &_s15ConversationKit27ParticipantVideoOverlayViewC0F5ModelOSgMR);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(__dst, &_s15ConversationKit22SharedContentVideoViewC0F5ModelVSgMd, &_s15ConversationKit22SharedContentVideoViewC0F5ModelVSgMR);
      return outlined destroy of SharedContentViewModel.ParticipantDetails(v54);
    }
  }

  return result;
}

id SharedContentView.customCornerRadius.setter(double a1, uint64_t a2, uint64_t a3)
{
  v5 = OBJC_IVAR____TtC15ConversationKit17SharedContentView_customCornerRadius;
  OUTLINED_FUNCTION_6_0(v3 + OBJC_IVAR____TtC15ConversationKit17SharedContentView_customCornerRadius, a3);
  *(v3 + v5) = a1;
  return SharedContentView.customCornerRadius.didset();
}

void SharedContentView.systemRootLayerTransform.setter(_OWORD *a1)
{
  v3 = (v1 + OBJC_IVAR____TtC15ConversationKit17SharedContentView_systemRootLayerTransform);
  swift_beginAccess();
  v4 = a1[1];
  *v3 = *a1;
  v3[1] = v4;
  v3[2] = a1[2];
  SharedContentView.updateVideoViewTransform()();
}

uint64_t SharedContentView.participantIdentifier.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = OBJC_IVAR____TtC15ConversationKit17SharedContentView_participantIdentifier;
  OUTLINED_FUNCTION_4_5(v2 + OBJC_IVAR____TtC15ConversationKit17SharedContentView_participantIdentifier, a1);
  return outlined init with copy of (CGFloat, AutoplayCandidate)(v2 + v4, a2, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
}

uint64_t key path getter for SharedContentView.delegate : SharedContentView@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC15ConversationKit17SharedContentView_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t key path setter for SharedContentView.delegate : SharedContentView(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtC15ConversationKit17SharedContentView_delegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t SharedContentView.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC15ConversationKit17SharedContentView_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*SharedContentView.delegate.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC15ConversationKit17SharedContentView_delegate;
  v3[5] = v1;
  v3[6] = v4;
  v5 = v1 + v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 8);
  v3[3] = Strong;
  v3[4] = v7;
  return InCallControlsBaseCell.delegate.modify;
}

double SharedContentView.customCornerRadius.getter(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC15ConversationKit17SharedContentView_customCornerRadius;
  OUTLINED_FUNCTION_4_5(v2 + OBJC_IVAR____TtC15ConversationKit17SharedContentView_customCornerRadius, a2);
  return *(v2 + v3);
}

double key path getter for SharedContentView.customCornerRadius : SharedContentView@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15ConversationKit17SharedContentView_customCornerRadius;
  swift_beginAccess();
  result = *(v3 + v4);
  *a2 = result;
  return result;
}

id SharedContentView.customCornerRadius.didset()
{
  v1 = OBJC_IVAR____TtC15ConversationKit17SharedContentView_customCornerRadius;
  OUTLINED_FUNCTION_4_0(&v0[OBJC_IVAR____TtC15ConversationKit17SharedContentView_customCornerRadius], v16);
  [v0 _setContinuousCornerRadius_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BC4BA930;
  v3 = *&v0[OBJC_IVAR____TtC15ConversationKit17SharedContentView_videoView];
  *(inited + 32) = v3;
  v4 = *&v0[OBJC_IVAR____TtC15ConversationKit17SharedContentView_videoOverlayView];
  *(inited + 40) = v4;
  v5 = inited & 0xC000000000000001;
  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (inited & 0xC000000000000001) == 0, inited);
  if ((inited & 0xC000000000000001) != 0)
  {
    v14 = v3;
    v15 = v4;
    v9 = MEMORY[0x1BFB22010](0, inited);
  }

  else
  {
    v6 = *(inited + 32);
    v7 = v3;
    v8 = v4;
    v9 = v6;
  }

  v10 = v9;
  [v9 _setContinuousCornerRadius_];

  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(1, v5 == 0, inited);
  if (v5)
  {
    v11 = MEMORY[0x1BFB22010](1, inited);
  }

  else
  {
    v11 = *(inited + 40);
  }

  v12 = v11;

  [v12 _setContinuousCornerRadius_];

  result = *&v0[OBJC_IVAR____TtC15ConversationKit17SharedContentView_videoViewSnapshot];
  if (result)
  {
    return [result _setContinuousCornerRadius_];
  }

  return result;
}

uint64_t SharedContentView.customCornerRadius.modify(uint64_t a1)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_38();
  return OUTLINED_FUNCTION_8_0();
}

uint64_t SharedContentView.isPaused.getter(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC15ConversationKit17SharedContentView_isPaused;
  OUTLINED_FUNCTION_4_5(v2 + OBJC_IVAR____TtC15ConversationKit17SharedContentView_isPaused, a2);
  return *(v2 + v3);
}

void key path getter for SharedContentView.isPaused : SharedContentView(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15ConversationKit17SharedContentView_isPaused;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

void SharedContentView.isPaused.didset()
{
  v1 = OBJC_IVAR____TtC15ConversationKit17SharedContentView_isPaused;
  OUTLINED_FUNCTION_4_0(&v0[OBJC_IVAR____TtC15ConversationKit17SharedContentView_isPaused], v22);
  if (v0[v1] == 1)
  {
    v2 = [*&v0[OBJC_IVAR____TtC15ConversationKit17SharedContentView_videoView] snapshotViewAfterScreenUpdates_];
    v3 = OBJC_IVAR____TtC15ConversationKit17SharedContentView_videoViewSnapshot;
    v4 = *&v0[OBJC_IVAR____TtC15ConversationKit17SharedContentView_videoViewSnapshot];
    *&v0[OBJC_IVAR____TtC15ConversationKit17SharedContentView_videoViewSnapshot] = v2;

    v5 = *&v0[v3];
    if (v5)
    {
      [v5 setClipsToBounds_];
      v7 = *&v0[v3];
      if (v7)
      {
        v8 = OBJC_IVAR____TtC15ConversationKit17SharedContentView_customCornerRadius;
        OUTLINED_FUNCTION_4_5(&v0[OBJC_IVAR____TtC15ConversationKit17SharedContentView_customCornerRadius], v6);
        [v7 _setContinuousCornerRadius_];
        if (*&v0[v3])
        {
          [v0 addSubview_];
        }
      }
    }

    [v0 setNeedsLayout];
  }

  else
  {
    v9 = objc_opt_self();
    v10 = swift_allocObject();
    *(v10 + 16) = v0;
    v20 = partial apply for closure #1 in SharedContentView.isPaused.didset;
    v21 = v10;
    aBlock = MEMORY[0x1E69E9820];
    v17 = 1107296256;
    v18 = thunk for @escaping @callee_guaranteed () -> ();
    v19 = &block_descriptor_120;
    v11 = _Block_copy(&aBlock);
    v12 = v0;

    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    v20 = partial apply for closure #2 in SharedContentView.isPaused.didset;
    v21 = v13;
    aBlock = MEMORY[0x1E69E9820];
    v17 = 1107296256;
    v18 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
    v19 = &block_descriptor_14_2;
    v14 = _Block_copy(&aBlock);
    v15 = v12;

    [v9 animateWithDuration:v11 animations:v14 completion:0.3];
    _Block_release(v14);
    _Block_release(v11);
  }
}

id closure #1 in SharedContentView.isPaused.didset(uint64_t a1)
{
  result = *(a1 + OBJC_IVAR____TtC15ConversationKit17SharedContentView_videoViewSnapshot);
  if (result)
  {
    return [result setAlpha_];
  }

  return result;
}

void closure #2 in SharedContentView.isPaused.didset(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC15ConversationKit17SharedContentView_videoViewSnapshot;
  v4 = *(a2 + OBJC_IVAR____TtC15ConversationKit17SharedContentView_videoViewSnapshot);
  if (v4)
  {
    [v4 removeFromSuperview];
    v4 = *(a2 + v3);
  }

  *(a2 + v3) = 0;
}

uint64_t SharedContentView.isPaused.modify(uint64_t a1)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_38();
  return OUTLINED_FUNCTION_8_0();
}

uint64_t SharedContentView.isScreenSharing.getter(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC15ConversationKit17SharedContentView_isScreenSharing;
  OUTLINED_FUNCTION_4_5(v2 + OBJC_IVAR____TtC15ConversationKit17SharedContentView_isScreenSharing, a2);
  return *(v2 + v3);
}

uint64_t SharedContentView.isScreenSharing.setter(char a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC15ConversationKit17SharedContentView_isScreenSharing;
  result = OUTLINED_FUNCTION_6_0(v2 + OBJC_IVAR____TtC15ConversationKit17SharedContentView_isScreenSharing, a2);
  *(v2 + v4) = a1;
  return result;
}

void SharedContentView.updateVideoViewTransform()()
{
  v1 = (v0 + OBJC_IVAR____TtC15ConversationKit17SharedContentView_systemRootLayerTransform);
  OUTLINED_FUNCTION_4_0(v0 + OBJC_IVAR____TtC15ConversationKit17SharedContentView_systemRootLayerTransform, v24);
  v2 = v1[1];
  *&v26.a = *v1;
  *&v26.c = v2;
  *&v26.tx = v1[2];
  CGAffineTransformInvert(&v25, &v26);
  v18 = *&v25.a;
  v19 = *&v25.c;
  v26 = v25;
  tx = v25.tx;
  ty = v25.ty;
  if (static Platform.current.getter())
  {
    CGAffineTransform.rotatingTranslationComponent(for:)(*(v0 + OBJC_IVAR____TtC15ConversationKit17SharedContentView_deviceOrientation), &v25);
    v18 = *&v25.a;
    v19 = *&v25.c;
    tx = v25.tx;
    ty = v25.ty;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BC4BA930;
  v6 = *(v0 + OBJC_IVAR____TtC15ConversationKit17SharedContentView_videoView);
  *(inited + 32) = v6;
  v7 = *(v0 + OBJC_IVAR____TtC15ConversationKit17SharedContentView_videoOverlayView);
  *(inited + 40) = v7;
  v8 = inited & 0xC000000000000001;
  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (inited & 0xC000000000000001) == 0, inited);
  if ((inited & 0xC000000000000001) != 0)
  {
    v16 = v6;
    v17 = v7;
    v12 = MEMORY[0x1BFB22010](0, inited);
  }

  else
  {
    v9 = *(inited + 32);
    v10 = v6;
    v11 = v7;
    v12 = v9;
  }

  v13 = v12;
  v20 = v18;
  v21 = v19;
  v22 = tx;
  v23 = ty;
  [v12 setTransform_];

  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(1, v8 == 0, inited);
  if (v8)
  {
    v14 = MEMORY[0x1BFB22010](1, inited);
  }

  else
  {
    v14 = *(inited + 40);
  }

  v15 = v14;

  v20 = v18;
  v21 = v19;
  v22 = tx;
  v23 = ty;
  [v15 setTransform_];
}

__n128 SharedContentView.systemRootLayerTransform.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC15ConversationKit17SharedContentView_systemRootLayerTransform;
  OUTLINED_FUNCTION_4_0(v3, v6);
  v4 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v4;
  result = *(v3 + 32);
  *(a1 + 32) = result;
  return result;
}

__n128 key path getter for SharedContentView.systemRootLayerTransform : SharedContentView@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC15ConversationKit17SharedContentView_systemRootLayerTransform;
  swift_beginAccess();
  v4 = *(v3 + 16);
  *a2 = *v3;
  *(a2 + 16) = v4;
  result = *(v3 + 32);
  *(a2 + 32) = result;
  return result;
}

uint64_t SharedContentView.systemRootLayerTransform.modify(uint64_t a1)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_38();
  return OUTLINED_FUNCTION_8_0();
}

uint64_t SharedContentView.customCornerRadius.modify(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return a3(result);
  }

  return result;
}

id SharedContentView.__allocating_init(frame:)()
{
  OUTLINED_FUNCTION_20_2();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_3_167();

  return [v2 v3];
}

char *SharedContentView.init(frame:)()
{
  v1 = v0;
  OUTLINED_FUNCTION_20_2();
  swift_getObjectType();
  v2 = OBJC_IVAR____TtC15ConversationKit17SharedContentView_contentView;
  *(v1 + v2) = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  *(v1 + OBJC_IVAR____TtC15ConversationKit17SharedContentView_videoViewSnapshot) = 0;
  v3 = OBJC_IVAR____TtC15ConversationKit17SharedContentView_videoView;
  *(v1 + v3) = [objc_allocWithZone(type metadata accessor for SharedContentVideoView()) init];
  v4 = OBJC_IVAR____TtC15ConversationKit17SharedContentView_videoOverlayView;
  v5 = objc_allocWithZone(type metadata accessor for ParticipantVideoOverlayView());
  *(v1 + v4) = ParticipantVideoOverlayView.init(localParticipant:)(0);
  v6 = v1 + OBJC_IVAR____TtC15ConversationKit17SharedContentView_mostRecentViewModelHash;
  *v6 = 0;
  *(v6 + 8) = 1;
  UUID.init()();
  v7 = OBJC_IVAR____TtC15ConversationKit17SharedContentView_participantIdentifier;
  v8 = type metadata accessor for UUID();
  __swift_storeEnumTagSinglePayload(v1 + v7, 1, 1, v8);
  *(v1 + OBJC_IVAR____TtC15ConversationKit17SharedContentView_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + OBJC_IVAR____TtC15ConversationKit17SharedContentView_customCornerRadius) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit17SharedContentView_isPaused) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit17SharedContentView_isScreenSharing) = 1;
  *(v1 + OBJC_IVAR____TtC15ConversationKit17SharedContentView_deviceOrientation) = 1;
  v9 = (v1 + OBJC_IVAR____TtC15ConversationKit17SharedContentView_systemRootLayerTransform);
  *v9 = 0x3FF0000000000000;
  v9[1] = 0;
  v9[2] = 0;
  v9[3] = 0x3FF0000000000000;
  v9[4] = 0;
  v9[5] = 0;
  v10 = OUTLINED_FUNCTION_3_167();
  v13 = objc_msgSendSuper2(v11, v12, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BC4BA930;
  v15 = OBJC_IVAR____TtC15ConversationKit17SharedContentView_videoView;
  v16 = *&v13[OBJC_IVAR____TtC15ConversationKit17SharedContentView_videoView];
  *(inited + 32) = v16;
  v17 = *&v13[OBJC_IVAR____TtC15ConversationKit17SharedContentView_videoOverlayView];
  *(inited + 40) = v17;
  v18 = inited & 0xC000000000000001;
  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (inited & 0xC000000000000001) == 0, inited);
  if ((inited & 0xC000000000000001) != 0)
  {
    v37 = v13;
    v38 = v16;
    v39 = v17;
    v23 = MEMORY[0x1BFB22010](0, inited);
  }

  else
  {
    v19 = *(inited + 32);
    v20 = v13;
    v21 = v16;
    v22 = v17;
    v23 = v19;
  }

  v24 = v23;
  [v23 setHidden_];
  [v24 setClipsToBounds_];

  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(1, v18 == 0, inited);
  if (v18)
  {
    v25 = MEMORY[0x1BFB22010](1, inited);
  }

  else
  {
    v25 = *(inited + 40);
  }

  v26 = v25;

  [v26 setHidden_];
  [v26 setClipsToBounds_];

  v27 = v13;
  [v27 setClipsToBounds_];
  v28 = objc_opt_self();
  v29 = [v28 clearColor];
  [v27 setBackgroundColor_];

  v30 = OBJC_IVAR____TtC15ConversationKit17SharedContentView_contentView;
  v31 = one-time initialization token for shared;
  v32 = *&v27[OBJC_IVAR____TtC15ConversationKit17SharedContentView_contentView];
  if (v31 != -1)
  {
    swift_once();
  }

  if ((*(*static Defaults.shared + 336))())
  {
    if (one-time initialization token for background != -1)
    {
      swift_once();
    }

    v33 = static Colors.ParticipantViews.background;
  }

  else
  {
    v33 = [v28 clearColor];
  }

  v34 = v33;
  [v32 setBackgroundColor_];

  [v27 addSubview_];
  [*&v27[v30] addSubview_];
  v35 = [v27 layer];
  [v35 setShadowPathIsBounds_];

  return v27;
}

id SharedContentView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void SharedContentView.init(coder:)()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC15ConversationKit17SharedContentView_contentView;
  *(v1 + v2) = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  *(v1 + OBJC_IVAR____TtC15ConversationKit17SharedContentView_videoViewSnapshot) = 0;
  v3 = OBJC_IVAR____TtC15ConversationKit17SharedContentView_videoView;
  *(v1 + v3) = [objc_allocWithZone(type metadata accessor for SharedContentVideoView()) init];
  v4 = OBJC_IVAR____TtC15ConversationKit17SharedContentView_videoOverlayView;
  v5 = objc_allocWithZone(type metadata accessor for ParticipantVideoOverlayView());
  *(v1 + v4) = ParticipantVideoOverlayView.init(localParticipant:)(0);
  v6 = v1 + OBJC_IVAR____TtC15ConversationKit17SharedContentView_mostRecentViewModelHash;
  *v6 = 0;
  *(v6 + 8) = 1;
  UUID.init()();
  v7 = OBJC_IVAR____TtC15ConversationKit17SharedContentView_participantIdentifier;
  v8 = type metadata accessor for UUID();
  __swift_storeEnumTagSinglePayload(v1 + v7, 1, 1, v8);
  *(v1 + OBJC_IVAR____TtC15ConversationKit17SharedContentView_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + OBJC_IVAR____TtC15ConversationKit17SharedContentView_customCornerRadius) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit17SharedContentView_isPaused) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit17SharedContentView_isScreenSharing) = 1;
  *(v1 + OBJC_IVAR____TtC15ConversationKit17SharedContentView_deviceOrientation) = 1;
  v9 = (v1 + OBJC_IVAR____TtC15ConversationKit17SharedContentView_systemRootLayerTransform);
  *v9 = 0x3FF0000000000000;
  v9[1] = 0;
  v9[2] = 0;
  v9[3] = 0x3FF0000000000000;
  v9[4] = 0;
  v9[5] = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Void __swiftcall SharedContentView.layoutSubviews()()
{
  v1.receiver = v0;
  v1.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v1, sel_layoutSubviews);
  SharedContentView._layout()();
}

void SharedContentView._layout()()
{
  [v0 bounds];
  if (!CGRectIsInfinite(v29))
  {
    [v0 bounds];
    if (!CGRectIsEmpty(v30))
    {
      [v0 bounds];
      v2 = v1;
      v4 = v3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1BC4BC370;
      v6 = *&v0[OBJC_IVAR____TtC15ConversationKit17SharedContentView_contentView];
      *(inited + 32) = v6;
      v7 = *&v0[OBJC_IVAR____TtC15ConversationKit17SharedContentView_videoView];
      *(inited + 40) = v7;
      v8 = *&v0[OBJC_IVAR____TtC15ConversationKit17SharedContentView_videoOverlayView];
      *(inited + 48) = v8;
      v9 = inited & 0xC000000000000001;
      specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (inited & 0xC000000000000001) == 0, inited);
      if ((inited & 0xC000000000000001) != 0)
      {
        v26 = v6;
        v27 = v7;
        v28 = v8;
        v14 = MEMORY[0x1BFB22010](0, inited);
      }

      else
      {
        v10 = *(inited + 32);
        v11 = v6;
        v12 = v7;
        v13 = v8;
        v14 = v10;
      }

      v15 = v14;
      [v14 setBounds_];
      [v0 bounds];
      MidX = CGRectGetMidX(v31);
      [v0 bounds];
      [v15 setCenter_];

      specialized Array._checkSubscript(_:wasNativeTypeChecked:)(1, v9 == 0, inited);
      if (v9)
      {
        v17 = MEMORY[0x1BFB22010](1, inited);
      }

      else
      {
        v17 = *(inited + 40);
      }

      v18 = v17;
      [v17 setBounds_];
      [v0 bounds];
      v19 = CGRectGetMidX(v33);
      [v0 bounds];
      [v18 setCenter_];

      specialized Array._checkSubscript(_:wasNativeTypeChecked:)(2, v9 == 0, inited);
      if (v9)
      {
        v20 = MEMORY[0x1BFB22010](2, inited);
      }

      else
      {
        v20 = *(inited + 48);
      }

      v21 = v20;

      [v21 setBounds_];
      [v0 bounds];
      v22 = CGRectGetMidX(v35);
      [v0 bounds];
      [v21 setCenter_];

      v23 = *&v0[OBJC_IVAR____TtC15ConversationKit17SharedContentView_videoViewSnapshot];
      if (v23)
      {
        v24 = v23;
        [v24 setBounds_];
        [v0 bounds];
        v25 = CGRectGetMidX(v37);
        [v0 bounds];
        [v24 setCenter_];
      }
    }
  }
}

id SharedContentView.convert(_:to:)(uint64_t a1)
{
  OUTLINED_FUNCTION_20_2();
  ObjectType = swift_getObjectType();
  v4 = (v1 + OBJC_IVAR____TtC15ConversationKit17SharedContentView_systemRootLayerTransform);
  OUTLINED_FUNCTION_4_0(v1 + OBJC_IVAR____TtC15ConversationKit17SharedContentView_systemRootLayerTransform, v14);
  v5 = v4[1];
  *&v13.a = *v4;
  *&v13.c = v5;
  *&v13.tx = v4[2];
  if (CGAffineTransformIsIdentity(&v13))
  {
    v6 = OUTLINED_FUNCTION_3_167();
    return objc_msgSendSuper2(v7, v8, a1, v6, v1, ObjectType);
  }

  else
  {
    v10 = OUTLINED_FUNCTION_3_167();
    return [v11 v12];
  }
}

void SharedContentView.configureViewVisibility(for:)(uint64_t a1)
{
  v3 = type metadata accessor for SharedContentViewModel(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  inited = swift_initStackObject();
  v48 = xmmword_1BC4BA930;
  *(inited + 16) = xmmword_1BC4BA930;
  v7 = *&v1[OBJC_IVAR____TtC15ConversationKit17SharedContentView_videoView];
  *(inited + 32) = v7;
  v8 = *&v1[OBJC_IVAR____TtC15ConversationKit17SharedContentView_videoOverlayView];
  *(inited + 40) = v8;
  v49 = inited;
  outlined init with copy of SharedContentViewModel(a1, v5);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit22SharedContentViewModelO18ParticipantDetailsV_So20CNKDeviceOrientationVAA0cd5VideoE0C0eF0VAA0gk7OverlayE0CAJOtMd, &_s15ConversationKit22SharedContentViewModelO18ParticipantDetailsV_So20CNKDeviceOrientationVAA0cd5VideoE0C0eF0VAA0gk7OverlayE0CAJOtMR);
    v10 = *(v9 + 64);
    v11 = *(v9 + 80);
    v12 = v1;
    v13 = v7;
    v14 = v8;
    specialized MutableCollection._halfStablePartition(isSuffixElement:)(&v49, v12);
    v16 = v15;
    v17 = specialized Array.count.getter();
    v18 = v17 - v16;
    if (v17 < v16)
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    if (v16 < 0)
    {
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    if (specialized Array.count.getter() < v17)
    {
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    v19 = __OFSUB__(0, v18);
    v20 = -v18;
    if (v19)
    {
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    v21 = specialized Array.count.getter();
    v19 = __OFADD__(v21, v20);
    v22 = v21 + v20;
    if (v19)
    {
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(v22, 1);
    specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v16);
    v23 = v49;
    v24 = swift_allocObject();
    *(v24 + 16) = v48;
    *(v24 + 32) = v13;
    *(v24 + 40) = v14;
    v25 = v13;
    v26 = v14;
    outlined destroy of ParticipantVideoOverlayView.ViewModel(&v5[v11]);
LABEL_14:
    outlined destroy of SharedContentVideoView.ViewModel(&v5[v10]);
    outlined destroy of SharedContentViewModel.ParticipantDetails(v5);
    v38 = specialized Array.count.getter();
    if (v38)
    {
      v39 = v38;
      if (v38 < 1)
      {
        __break(1u);
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      for (i = 0; i != v39; ++i)
      {
        if ((v23 & 0xC000000000000001) != 0)
        {
          v41 = MEMORY[0x1BFB22010](i, v23);
        }

        else
        {
          v41 = *(v23 + 8 * i + 32);
        }

        v42 = v41;
        [v41 setHidden_];
      }
    }

    v43 = specialized Array.count.getter();
    if (!v43)
    {
LABEL_28:

      return;
    }

    v44 = v43;
    if (v43 >= 1)
    {
      for (j = 0; j != v44; ++j)
      {
        if ((v24 & 0xC000000000000001) != 0)
        {
          v46 = MEMORY[0x1BFB22010](j, v24);
        }

        else
        {
          v46 = *(v24 + 8 * j + 32);
        }

        v47 = v46;
        [v46 setHidden_];
      }

      goto LABEL_28;
    }

    goto LABEL_30;
  }

  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit22SharedContentViewModelO18ParticipantDetailsV_So20CNKDeviceOrientationVAA0cd5VideoE0C0eF0VtMd, &_s15ConversationKit22SharedContentViewModelO18ParticipantDetailsV_So20CNKDeviceOrientationVAA0cd5VideoE0C0eF0VtMR) + 64);
  v27 = v1;
  v28 = v7;
  v29 = v8;
  specialized MutableCollection._halfStablePartition(isSuffixElement:)(&v49, v27);
  v31 = v30;
  v32 = specialized Array.count.getter();
  v33 = v32 - v31;
  if (v32 < v31)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (v31 < 0)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (specialized Array.count.getter() < v32)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v19 = __OFSUB__(0, v33);
  v34 = -v33;
  if (v19)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v35 = specialized Array.count.getter();
  v19 = __OFADD__(v35, v34);
  v36 = v35 + v34;
  if (!v19)
  {
    specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(v36, 1);
    specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v31);
    v23 = v49;
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1BC4BAC30;
    *(v24 + 32) = v28;
    v37 = v28;
    goto LABEL_14;
  }

LABEL_40:
  __break(1u);
}

uint64_t SharedContentView.registerVideoLayers(with:)(uint64_t a1)
{
  type metadata accessor for SharedContentViewModel(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_8();
  v6 = v5 - v4;
  if ([*(v1 + OBJC_IVAR____TtC15ConversationKit17SharedContentView_videoView) isHidden])
  {
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
    }

    v7 = static OS_os_log.conversationKit;
    v8 = static os_log_type_t.default.getter();
    v9 = MEMORY[0x1E69E7CC0];

    return os_log(_:dso:log:type:_:)("Not registering video layers since the videoView is hidden", 58, 2, &dword_1BBC58000, v7, v8, v9);
  }

  else
  {
    outlined init with copy of SharedContentViewModel(a1, v6);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit22SharedContentViewModelO18ParticipantDetailsV_So20CNKDeviceOrientationVAA0cd5VideoE0C0eF0VAA0gk7OverlayE0CAJOtMd, &_s15ConversationKit22SharedContentViewModelO18ParticipantDetailsV_So20CNKDeviceOrientationVAA0cd5VideoE0C0eF0VAA0gk7OverlayE0CAJOtMR);
      v12 = *(v11 + 80);
      memcpy(v18, (v6 + *(v11 + 64)), sizeof(v18));
      outlined destroy of ParticipantVideoOverlayView.ViewModel(v6 + v12);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit22SharedContentViewModelO18ParticipantDetailsV_So20CNKDeviceOrientationVAA0cd5VideoE0C0eF0VtMd, &_s15ConversationKit22SharedContentViewModelO18ParticipantDetailsV_So20CNKDeviceOrientationVAA0cd5VideoE0C0eF0VtMR);
      memcpy(v18, (v6 + *(v13 + 64)), sizeof(v18));
    }

    outlined destroy of SharedContentViewModel.ParticipantDetails(v6);
    memcpy(__dst, v18, sizeof(__dst));
    outlined init with copy of (CGFloat, AutoplayCandidate)(__dst, v16, &_s15ConversationKit22SharedContentVideoViewC0F5ModelVSgMd, &_s15ConversationKit22SharedContentVideoViewC0F5ModelVSgMR);
    if (v16[3] == 1)
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v16, &_s15ConversationKit22SharedContentVideoViewC0F5ModelVSgMd, &_s15ConversationKit22SharedContentVideoViewC0F5ModelVSgMR);
      if (one-time initialization token for conversationKit != -1)
      {
        OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
      }

      v14 = static OS_os_log.conversationKit;
      v15 = static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)("Not registering video layers since the viewModel is not video", 61, 2, &dword_1BBC58000, v14, v15, MEMORY[0x1E69E7CC0]);
    }

    else
    {
      memcpy(v17, v16, sizeof(v17));
      SharedContentVideoView.registerVideoLayers(with:)(v17);
      outlined destroy of SharedContentVideoView.ViewModel(v17);
    }

    return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(__dst, &_s15ConversationKit22SharedContentVideoViewC0F5ModelVSgMd, &_s15ConversationKit22SharedContentVideoViewC0F5ModelVSgMR);
  }
}

id SharedContentView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t outlined init with copy of SharedContentViewModel(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SharedContentViewModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of SharedContentViewModel.ParticipantDetails(uint64_t a1)
{
  v2 = type metadata accessor for SharedContentViewModel.ParticipantDetails(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void specialized MutableCollection._halfStablePartition(isSuffixElement:)(unint64_t *a1, void *a2)
{
  v3 = a1;
  v4 = *a1;
  v5 = a2;
  specialized Collection.firstIndex(where:)(v4, v5);
  v8 = v6;
  if (v2)
  {
    goto LABEL_38;
  }

  if (v7)
  {
    specialized Array.count.getter();
LABEL_38:

    return;
  }

  v9 = v6 + 1;
  if (!__OFADD__(v6, 1))
  {
    while (1)
    {
      v10 = v4 >> 62 ? __CocoaSet.count.getter() : *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v9 == v10)
      {
        goto LABEL_38;
      }

      if ((v4 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x1BFB22010](v9, v4);
      }

      else
      {
        if ((v9 & 0x8000000000000000) != 0)
        {
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
          break;
        }

        if (v9 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_40;
        }

        v11 = *(v4 + 8 * v9 + 32);
      }

      v12 = v11;
      type metadata accessor for NSObject();
      v13 = static NSObject.== infix(_:_:)();

      if ((v13 & 1) == 0)
      {
        if (v8 != v9)
        {
          if ((v4 & 0xC000000000000001) != 0)
          {
            v14 = MEMORY[0x1BFB22010](v8, v4);
            v15 = MEMORY[0x1BFB22010](v9, v4);
          }

          else
          {
            if ((v8 & 0x8000000000000000) != 0)
            {
              goto LABEL_44;
            }

            v16 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v8 >= v16)
            {
              goto LABEL_45;
            }

            if (v9 >= v16)
            {
              goto LABEL_46;
            }

            v17 = *(v4 + 32 + 8 * v9);
            v14 = *(v4 + 32 + 8 * v8);
            v15 = v17;
          }

          v18 = v15;
          v19 = v3;
          if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v4 & 0x8000000000000000) != 0 || (v4 & 0x4000000000000000) != 0)
          {
            v4 = specialized _ArrayBuffer._consumeAndCreateNew()();
            v20 = (v4 >> 62) & 1;
          }

          else
          {
            LODWORD(v20) = 0;
          }

          v21 = v4 & 0xFFFFFFFFFFFFFF8;
          v22 = *((v4 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20);
          *((v4 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20) = v18;

          if ((v4 & 0x8000000000000000) != 0 || v20)
          {
            v4 = specialized _ArrayBuffer._consumeAndCreateNew()();
            v21 = v4 & 0xFFFFFFFFFFFFFF8;
            if ((v9 & 0x8000000000000000) != 0)
            {
LABEL_37:
              __break(1u);
              goto LABEL_38;
            }
          }

          else if ((v9 & 0x8000000000000000) != 0)
          {
            goto LABEL_37;
          }

          if (v9 >= *(v21 + 16))
          {
            goto LABEL_43;
          }

          v3 = v19;
          v23 = v21 + 8 * v9;
          v24 = *(v23 + 32);
          *(v23 + 32) = v14;

          *v19 = v4;
        }

        v25 = __OFADD__(v8++, 1);
        if (v25)
        {
          goto LABEL_42;
        }
      }

      v25 = __OFADD__(v9++, 1);
      if (v25)
      {
        goto LABEL_41;
      }
    }
  }

  __break(1u);
}

{
  v3 = a1;
  v4 = *a1;
  v5 = a2;
  specialized Collection.firstIndex(where:)(v4, v5);
  v8 = v6;
  if (v2)
  {
    goto LABEL_40;
  }

  if (v7)
  {
    specialized Array.count.getter();
LABEL_40:

    return;
  }

  v9 = v6 + 1;
  if (!__OFADD__(v6, 1))
  {
    while (1)
    {
      v10 = v4 >> 62 ? __CocoaSet.count.getter() : *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v9 == v10)
      {
        goto LABEL_40;
      }

      if ((v4 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x1BFB22010](v9, v4);
      }

      else
      {
        if ((v9 & 0x8000000000000000) != 0)
        {
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
LABEL_47:
          __break(1u);
LABEL_48:
          __break(1u);
          break;
        }

        if (v9 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_42;
        }

        v11 = *(v4 + 8 * v9 + 32);
      }

      v12 = v11;
      type metadata accessor for NSObject();
      if (static NSObject.== infix(_:_:)())
      {
      }

      else
      {
        v13 = static NSObject.== infix(_:_:)();

        if ((v13 & 1) == 0)
        {
          if (v8 != v9)
          {
            if ((v4 & 0xC000000000000001) != 0)
            {
              v25 = MEMORY[0x1BFB22010](v8, v4);
              v14 = MEMORY[0x1BFB22010](v9, v4);
            }

            else
            {
              if ((v8 & 0x8000000000000000) != 0)
              {
                goto LABEL_46;
              }

              v15 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v8 >= v15)
              {
                goto LABEL_47;
              }

              if (v9 >= v15)
              {
                goto LABEL_48;
              }

              v16 = *(v4 + 32 + 8 * v9);
              v25 = *(v4 + 32 + 8 * v8);
              v14 = v16;
            }

            v17 = v14;
            v18 = v3;
            if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v4 & 0x8000000000000000) != 0 || (v4 & 0x4000000000000000) != 0)
            {
              v4 = specialized _ArrayBuffer._consumeAndCreateNew()();
              v19 = (v4 >> 62) & 1;
            }

            else
            {
              LODWORD(v19) = 0;
            }

            v20 = v4 & 0xFFFFFFFFFFFFFF8;
            v21 = *((v4 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20);
            *((v4 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20) = v17;

            if ((v4 & 0x8000000000000000) != 0 || v19)
            {
              v4 = specialized _ArrayBuffer._consumeAndCreateNew()();
              v20 = v4 & 0xFFFFFFFFFFFFFF8;
              if ((v9 & 0x8000000000000000) != 0)
              {
LABEL_39:
                __break(1u);
                goto LABEL_40;
              }
            }

            else if ((v9 & 0x8000000000000000) != 0)
            {
              goto LABEL_39;
            }

            if (v9 >= *(v20 + 16))
            {
              goto LABEL_45;
            }

            v3 = v18;
            v22 = v20 + 8 * v9;
            v23 = *(v22 + 32);
            *(v22 + 32) = v25;

            *v18 = v4;
          }

          v24 = __OFADD__(v8++, 1);
          if (v24)
          {
            goto LABEL_44;
          }
        }
      }

      v24 = __OFADD__(v9++, 1);
      if (v24)
      {
        goto LABEL_43;
      }
    }
  }

  __break(1u);
}

{
  v3 = a1;
  v4 = *a1;
  v5 = a2;
  specialized Collection.firstIndex(where:)(v4, v5);
  v8 = v6;
  if (v2)
  {
    goto LABEL_38;
  }

  if (v7)
  {
    specialized Array.count.getter();
LABEL_38:

    return;
  }

  v9 = v6 + 1;
  if (!__OFADD__(v6, 1))
  {
    while (1)
    {
      v10 = v4 >> 62 ? __CocoaSet.count.getter() : *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v9 == v10)
      {
        goto LABEL_38;
      }

      if ((v4 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x1BFB22010](v9, v4);
      }

      else
      {
        if ((v9 & 0x8000000000000000) != 0)
        {
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
          break;
        }

        if (v9 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_40;
        }

        v11 = *(v4 + 8 * v9 + 32);
      }

      v12 = v11;
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSObject, 0x1E69E58C0);
      v13 = static NSObject.== infix(_:_:)();

      if ((v13 & 1) == 0)
      {
        if (v8 != v9)
        {
          if ((v4 & 0xC000000000000001) != 0)
          {
            v14 = MEMORY[0x1BFB22010](v8, v4);
            v15 = MEMORY[0x1BFB22010](v9, v4);
          }

          else
          {
            if ((v8 & 0x8000000000000000) != 0)
            {
              goto LABEL_44;
            }

            v16 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v8 >= v16)
            {
              goto LABEL_45;
            }

            if (v9 >= v16)
            {
              goto LABEL_46;
            }

            v17 = *(v4 + 32 + 8 * v9);
            v14 = *(v4 + 32 + 8 * v8);
            v15 = v17;
          }

          v18 = v15;
          v19 = v3;
          if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v4 & 0x8000000000000000) != 0 || (v4 & 0x4000000000000000) != 0)
          {
            v4 = specialized _ArrayBuffer._consumeAndCreateNew()();
            v20 = (v4 >> 62) & 1;
          }

          else
          {
            LODWORD(v20) = 0;
          }

          v21 = v4 & 0xFFFFFFFFFFFFFF8;
          v22 = *((v4 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20);
          *((v4 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20) = v18;

          if ((v4 & 0x8000000000000000) != 0 || v20)
          {
            v4 = specialized _ArrayBuffer._consumeAndCreateNew()();
            v21 = v4 & 0xFFFFFFFFFFFFFF8;
            if ((v9 & 0x8000000000000000) != 0)
            {
LABEL_37:
              __break(1u);
              goto LABEL_38;
            }
          }

          else if ((v9 & 0x8000000000000000) != 0)
          {
            goto LABEL_37;
          }

          if (v9 >= *(v21 + 16))
          {
            goto LABEL_43;
          }

          v3 = v19;
          v23 = v21 + 8 * v9;
          v24 = *(v23 + 32);
          *(v23 + 32) = v14;

          *v19 = v4;
        }

        v25 = __OFADD__(v8++, 1);
        if (v25)
        {
          goto LABEL_42;
        }
      }

      v25 = __OFADD__(v9++, 1);
      if (v25)
      {
        goto LABEL_41;
      }
    }
  }

  __break(1u);
}

{
  v4 = *a1;
  v5 = a2;
  specialized Collection.firstIndex(where:)(v4, v5);
  v8 = v6;
  if (v2)
  {
    goto LABEL_38;
  }

  if (v7)
  {
    specialized Array.count.getter();
LABEL_38:

    return;
  }

  v26 = a1;
  v9 = v6 + 1;
  if (!__OFADD__(v6, 1))
  {
    while (1)
    {
      v10 = v4 >> 62 ? __CocoaSet.count.getter() : *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v9 == v10)
      {
        goto LABEL_38;
      }

      if ((v4 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x1BFB22010](v9, v4);
      }

      else
      {
        if ((v9 & 0x8000000000000000) != 0)
        {
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
          break;
        }

        if (v9 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_40;
        }

        v11 = *(v4 + 8 * v9 + 32);
      }

      v12 = v11;
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSObject, 0x1E69E58C0);
      v13 = ParticipantView.monogramView.getter();
      v14 = static NSObject.== infix(_:_:)();

      if ((v14 & 1) == 0)
      {
        if (v8 != v9)
        {
          if ((v4 & 0xC000000000000001) != 0)
          {
            v15 = MEMORY[0x1BFB22010](v8, v4);
            v16 = MEMORY[0x1BFB22010](v9, v4);
          }

          else
          {
            if ((v8 & 0x8000000000000000) != 0)
            {
              goto LABEL_44;
            }

            v17 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v8 >= v17)
            {
              goto LABEL_45;
            }

            if (v9 >= v17)
            {
              goto LABEL_46;
            }

            v18 = *(v4 + 32 + 8 * v9);
            v15 = *(v4 + 32 + 8 * v8);
            v16 = v18;
          }

          v19 = v16;
          if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v4 & 0x8000000000000000) != 0 || (v4 & 0x4000000000000000) != 0)
          {
            v4 = specialized _ArrayBuffer._consumeAndCreateNew()();
            v20 = (v4 >> 62) & 1;
          }

          else
          {
            LODWORD(v20) = 0;
          }

          v21 = v4 & 0xFFFFFFFFFFFFFF8;
          v22 = *((v4 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20);
          *((v4 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20) = v19;

          if ((v4 & 0x8000000000000000) != 0 || v20)
          {
            v4 = specialized _ArrayBuffer._consumeAndCreateNew()();
            v21 = v4 & 0xFFFFFFFFFFFFFF8;
            if ((v9 & 0x8000000000000000) != 0)
            {
LABEL_37:
              __break(1u);
              goto LABEL_38;
            }
          }

          else if ((v9 & 0x8000000000000000) != 0)
          {
            goto LABEL_37;
          }

          if (v9 >= *(v21 + 16))
          {
            goto LABEL_43;
          }

          v23 = v21 + 8 * v9;
          v24 = *(v23 + 32);
          *(v23 + 32) = v15;

          *v26 = v4;
        }

        v25 = __OFADD__(v8++, 1);
        if (v25)
        {
          goto LABEL_42;
        }
      }

      v25 = __OFADD__(v9++, 1);
      if (v25)
      {
        goto LABEL_41;
      }
    }
  }

  __break(1u);
}

uint64_t type metadata accessor for SharedContentView(uint64_t a1)
{
  result = type metadata singleton initialization cache for SharedContentView;
  if (!type metadata singleton initialization cache for SharedContentView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for SharedContentView(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    type metadata accessor for UUID?(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

unint64_t type metadata accessor for NSObject()
{
  result = lazy cache variable for type metadata for NSObject;
  if (!lazy cache variable for type metadata for NSObject)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSObject);
  }

  return result;
}

uint64_t LeaveButtonViewModel.__allocating_init(service:)(__int128 *a1)
{
  v2 = swift_allocObject();
  LeaveButtonViewModel.init(service:)(a1);
  return v2;
}

uint64_t LeaveButtonViewModel.init(service:)(__int128 *a1)
{
  closure #1 in variable initialization expression of LeaveButtonViewModel.flexibleGlass();
  *(v1 + OBJC_IVAR____TtC15ConversationKit20LeaveButtonViewModel____lazy_storage___config) = 0;
  outlined init with take of TapInteractionHandler(a1, v1 + 16);
  return v1;
}

uint64_t LeaveButtonViewModel.config.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CommunicationsUI15IconButtonStyleVyytGMd, &_s16CommunicationsUI15IconButtonStyleVyytGMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = OBJC_IVAR____TtC15ConversationKit20LeaveButtonViewModel____lazy_storage___config;
  if (*(v0 + OBJC_IVAR____TtC15ConversationKit20LeaveButtonViewModel____lazy_storage___config))
  {
    v5 = *(v0 + OBJC_IVAR____TtC15ConversationKit20LeaveButtonViewModel____lazy_storage___config);
  }

  else
  {
    LeaveButtonViewModel.buttonStyle.getter(&v15 - v3);
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    if ((Features.isICUIRedesignEnabled.getter() & 1) == 0)
    {
      v6 = [objc_opt_self() conversationKit];
      v16._object = 0xE000000000000000;
      v7._object = 0x80000001BC502930;
      v7._countAndFlagsBits = 0xD00000000000001ALL;
      v8.value._countAndFlagsBits = 0x61737265766E6F43;
      v8.value._object = 0xEF74694B6E6F6974;
      v9._countAndFlagsBits = 0;
      v9._object = 0xE000000000000000;
      v16._countAndFlagsBits = 0;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v7, v8, v6, v9, v16);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CommunicationsUI16IconButtonConfigCyytGMd, &_s16CommunicationsUI16IconButtonConfigCyytGMR);
    v10 = [objc_opt_self() conversationKit];
    v17._object = 0xE000000000000000;
    v11._countAndFlagsBits = 0x455F524557415244;
    v11._object = 0xED000058415F444ELL;
    v12.value._countAndFlagsBits = 0x61737265766E6F43;
    v12.value._object = 0xEF74694B6E6F6974;
    v13._countAndFlagsBits = 0;
    v13._object = 0xE000000000000000;
    v17._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v11, v12, v10, v13, v17);

    swift_allocObject();
    swift_weakInit();
    v5 = IconButtonConfig<A>.init(style:title:hasBadge:accessibilityLabel:accessibilityValue:accessibilityIdentifier:enabled:didTap:)();
    *(v1 + v4) = v5;
  }

  return v5;
}

uint64_t LeaveButtonViewModel.enabled(for:)(uint64_t a1)
{
  if (BYTE4(a1) > 0x1Fu)
  {
    v1 = 0;
    switch(BYTE4(a1) >> 5)
    {
      case 2:
      case 3:
      case 4:
        return v1 & 1;
      case 5:
        v2 = BYTE4(a1) == 160;
        goto LABEL_6;
      case 6:
        v2 = BYTE4(a1) == 192;
LABEL_6:
        v1 = v2;
        break;
      default:
        goto LABEL_2;
    }
  }

  else
  {
LABEL_2:
    v1 = BYTE4(a1) ^ 1;
  }

  return v1 & 1;
}

Swift::Void __swiftcall LeaveButtonViewModel.didTap()()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  (*(v2 + 176))(v1, v2);
}

uint64_t LeaveButtonViewModel.symbolName.getter()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = (*(v2 + 160))(v1, v2);
  if (v3 && (v4 = v3, (*((*MEMORY[0x1E69E7D40] & *v3) + 0x2A0))(), v6 = v5, v4, ObjectType = swift_getObjectType(), LOBYTE(v4) = (*(v6 + 136))(ObjectType, v6), swift_unknownObjectRelease(), (v4 & 1) != 0))
  {
    v8 = *MEMORY[0x1E69DDDC8];
    v15 = 0;
    v9 = 0x6B72616D78;
    v10 = 0xE500000000000000;
  }

  else
  {
    v8 = *MEMORY[0x1E69DDDC8];
    v15 = 0;
    v9 = 0x6F642E656E6F6870;
    v10 = 0xEF6C6C69662E6E77;
  }

  v16[0] = v9;
  v16[1] = v10;
  v16[2] = 2;
  v16[3] = v8;
  v17 = 0;
  v18 = 7;
  v19 = 0;
  v20 = 0;
  v21[0] = v9;
  v21[1] = v10;
  v21[2] = 2;
  v21[3] = v8;
  v22 = 0;
  v23 = 7;
  v24 = 0;
  v25 = 0;
  v11 = v8;
  outlined init with copy of SymbolImageDescription(v16, v14);
  outlined destroy of SymbolImageDescription(v21);
  v12 = v16[0];

  outlined destroy of SymbolImageDescription(v16);
  return v12;
}

uint64_t closure #1 in variable initialization expression of LeaveButtonViewModel.flexibleGlass()
{
  v0 = type metadata accessor for _Glass();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  static _Glass.regular.getter();
  v4 = [objc_opt_self() systemRedColor];
  Color.init(uiColor:)();
  _Glass.tintColor(_:)();

  (*(v1 + 8))(v3, v0);
  static _Glass.Options.supportsFlexInteraction.getter();
  return _Glass.options.setter();
}

uint64_t LeaveButtonViewModel.buttonStyle.getter@<X0>(uint64_t a1@<X8>)
{
  v37 = a1;
  v2 = type metadata accessor for IconButtonWidthRestriction();
  v35 = *(v2 - 8);
  v36 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v34 = v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Font.Leading();
  v30 = *(v4 - 8);
  v31 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v29 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Image.Scale();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6_GlassVSgMd, &_s7SwiftUI6_GlassVSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v27 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CommunicationsUI15IconButtonStyleV12SystemSymbolVyyt_GMd, &_s16CommunicationsUI15IconButtonStyleV12SystemSymbolVyyt_GMR);
  v32 = *(v13 - 8);
  v33 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v28 = v27 - v14;
  v27[1] = LeaveButtonViewModel.symbolName.getter();
  v15 = [objc_opt_self() systemRedColor];
  v16 = Color.init(uiColor:)();
  *(&v39 + 1) = MEMORY[0x1E69815C0];
  v40 = MEMORY[0x1E6981568];
  *&v38 = v16;
  v17 = OBJC_IVAR____TtC15ConversationKit20LeaveButtonViewModel_flexibleGlass;
  v18 = type metadata accessor for _Glass();
  (*(*(v18 - 8) + 16))(v12, v1 + v17, v18);
  __swift_storeEnumTagSinglePayload(v12, 0, 1, v18);
  static Font.Weight.bold.getter();
  static Color.white.getter();
  (*(v7 + 104))(v9, *MEMORY[0x1E69816E0], v6);
  static IconButtonStyle.Defaults.phone.iconFont.getter();
  static IconButtonStyle.SystemSymbol<A>.iosCallControl(name:color:background:glass:scale:font:weight:)();

  (*(v7 + 8))(v9, v6);
  outlined destroy of CallControlsService?(v12, &_s7SwiftUI6_GlassVSgMd, &_s7SwiftUI6_GlassVSgMR);
  outlined destroy of CallControlsService?(&v38, &_s7SwiftUI10ShapeStyle_pSgMd, &_s7SwiftUI10ShapeStyle_pSgMR);
  v40 = 0;
  v38 = 0u;
  v39 = 0u;
  __swift_storeEnumTagSinglePayload(v12, 1, 1, v18);
  static Color.white.getter();
  static Font.subheadline.getter();
  v19 = v29;
  v20 = v30;
  v21 = v31;
  (*(v30 + 104))(v29, *MEMORY[0x1E6980EA8], v31);
  Font.leading(_:)();

  (*(v20 + 8))(v19, v21);
  static IconButtonStyle.Defaults.phone.iconWidth.getter();
  v23 = v34;
  v22 = v35;
  v24 = v36;
  (*(v35 + 104))(v34, *MEMORY[0x1E6995BD0], v36);
  v25 = v28;
  static IconButtonStyle.iosCallControl(symbol:background:glass:labelColor:labelFont:labelPosition:maxWidth:width:widthRestriction:spacing:)();

  (*(v22 + 8))(v23, v24);
  outlined destroy of CallControlsService?(v12, &_s7SwiftUI6_GlassVSgMd, &_s7SwiftUI6_GlassVSgMR);
  outlined destroy of CallControlsService?(&v38, &_s7SwiftUI10ShapeStyle_pSgMd, &_s7SwiftUI10ShapeStyle_pSgMR);
  return (*(v32 + 8))(v25, v33);
}

void *closure #1 in LeaveButtonViewModel.config.getter(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = result[5];
    v3 = result[6];
    __swift_project_boxed_opaque_existential_1(result + 2, v2);
    (*(v3 + 176))(v2, v3);
  }

  return result;
}

uint64_t LeaveButtonViewModel.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = OBJC_IVAR____TtC15ConversationKit20LeaveButtonViewModel_flexibleGlass;
  type metadata accessor for _Glass();
  OUTLINED_FUNCTION_15_1();
  (*(v2 + 8))(v0 + v1);

  return v0;
}

uint64_t LeaveButtonViewModel.__deallocating_deinit()
{
  LeaveButtonViewModel.deinit();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for LeaveButtonViewModel(uint64_t a1)
{
  result = type metadata singleton initialization cache for LeaveButtonViewModel;
  if (!type metadata singleton initialization cache for LeaveButtonViewModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for LeaveButtonViewModel(uint64_t a1)
{
  result = type metadata accessor for _Glass();
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

void InCallControlsTitleCellViewModel.init(groupName:groupPhotoData:participants:mode:linksEnabled:shouldUseGroupHeader:conversation:)(int *a1@<X0>, uint64_t a2@<X1>, int *a3@<X2>, int *a4@<X3>, unint64_t a5@<X4>, int a6@<W5>, int a7@<W7>, int **a8@<X8>, int *a9)
{
  v169 = a7;
  v171 = a4;
  v170 = a3;
  v172 = a8;
  v13 = 0xEF74694B6E6F6974;
  v14 = 0x61737265766E6F43;
  v181 = type metadata accessor for Participant.State(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_40();
  v180 = v16;
  v17 = type metadata accessor for PersonNameComponents();
  v18 = OUTLINED_FUNCTION_0_100(v17, &v191);
  v174 = v19;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_40();
  v178 = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = &v162 - v22;
  v24 = type metadata accessor for Participant(0);
  v25 = OUTLINED_FUNCTION_0_100(v24, &v192);
  v182 = v26;
  MEMORY[0x1EEE9AC00](v25);
  v183 = &v162 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v162 - v29;
  MEMORY[0x1EEE9AC00](v31);
  v33 = (&v162 - v32);
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v162 - v35;
  v176 = a6;
  v175 = a6 >> 5;
  if (a2)
  {
    if (String.count.getter() > 0)
    {
      goto LABEL_8;
    }
  }

  OUTLINED_FUNCTION_6_122();
  if (v37 <= 0x1F && (v176 & 1) != 0)
  {
    v38 = [objc_opt_self() conversationKit];
    OUTLINED_FUNCTION_40_0();
    OUTLINED_FUNCTION_12_98();
    v39.super.isa = v38;
    a1 = OUTLINED_FUNCTION_17_0(v40, v41, v42, v43, v39);
    a2 = v44;

    goto LABEL_9;
  }

  v45 = [objc_opt_self() conversationKit];
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_12_98();
  v46.super.isa = v45;
  a1 = OUTLINED_FUNCTION_17_0(v47, v48, v49, v50, v46);
  a2 = v51;

LABEL_8:
  if (((1 << v175) & 0x73) != 0)
  {
    goto LABEL_9;
  }

  if (v175 == 2)
  {
    v58 = [objc_opt_self() conversationKit];
    v162 = 0xE000000000000000;
LABEL_22:
    OUTLINED_FUNCTION_12_98();
    v88.super.isa = v58;
    v93 = OUTLINED_FUNCTION_17_0(v89, v90, v91, v92, v88);
    OUTLINED_FUNCTION_3_168(v93, v94);

    goto LABEL_23;
  }

  OUTLINED_FUNCTION_6_122();
  if (v87 == 96)
  {
    v58 = [objc_opt_self() conversationKit];
    OUTLINED_FUNCTION_40_0();
    goto LABEL_22;
  }

LABEL_9:
  v52 = *(a5 + 16);
  if (v52 == 1)
  {
    specialized Collection.first.getter(a5, v23);
    if (__swift_getEnumTagSinglePayload(v23, 1, v179) != 1)
    {
      v67 = OUTLINED_FUNCTION_46();
      outlined init with take of Participant(v67, v68);
      v69 = [objc_opt_self() conversationKit];
      v164 = a5;
      v70 = v69;
      OUTLINED_FUNCTION_40_0();
      OUTLINED_FUNCTION_12_98();
      v71.super.isa = v70;
      v184 = OUTLINED_FUNCTION_17_0(v72, v73, v74, v75, v71);
      v173 = v76;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v77 = swift_allocObject();
      *(v77 + 16) = xmmword_1BC4BA940;
      Participant.contactDetails.getter();
      v78 = v187;
      v13 = v188;
      v79 = a1;
      v80 = v189;

      v185 = v13;
      v186 = v80;
      a1 = v79;
      v81 = MEMORY[0x1E69E6158];
      v82 = String.init<A>(_:)();
      v84 = v83;
      *(v77 + 56) = v81;
      *(v77 + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v77 + 32) = v82;
      *(v77 + 40) = v84;
      a5 = v164;
      v85 = String.init(format:_:)();
      OUTLINED_FUNCTION_3_168(v85, v86);

      outlined destroy of Participant(v36);
      goto LABEL_23;
    }

    outlined destroy of Participant?(v23);
  }

  v13 = a5;
  if (one-time initialization token for participantCountFormatter != -1)
  {
    goto LABEL_86;
  }

LABEL_13:
  v53 = static InCallControlsTitleCellViewModel.participantCountFormatter;
  v54 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  v55 = [v53 stringFromNumber_];

  if (v55)
  {
    v184 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v57 = v56;
  }

  else
  {
    v187 = v52;
    v184 = dispatch thunk of CustomStringConvertible.description.getter();
    v57 = v59;
  }

  v60 = [objc_opt_self() conversationKit];
  v162 = 0xE000000000000000;
  v61.super.isa = v60;
  OUTLINED_FUNCTION_17_0(0xD000000000000025, 0x80000001BC5232A0, v14, 0xEF74694B6E6F6974, v61);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v62 = swift_allocObject();
  *(v62 + 16) = xmmword_1BC4BAA20;
  *(v62 + 56) = MEMORY[0x1E69E6158];
  v63 = lazy protocol witness table accessor for type String and conformance String();
  *(v62 + 32) = v184;
  *(v62 + 40) = v57;
  v64 = MEMORY[0x1E69E65A8];
  *(v62 + 96) = MEMORY[0x1E69E6530];
  *(v62 + 104) = v64;
  *(v62 + 64) = v63;
  *(v62 + 72) = v52;
  v65 = String.init(format:arguments:)();
  OUTLINED_FUNCTION_3_168(v65, v66);

  a5 = v13;
LABEL_23:
  v167 = a1;
  v168 = a2;
  v95 = MEMORY[0x1E69E7CC0];
  v190 = MEMORY[0x1E69E7CC0];
  v96 = *(a5 + 16);
  if (v96)
  {
    v97 = (*(v182 + 80) + 32) & ~*(v182 + 80);
    v164 = a5;
    v98 = a5 + v97;
    v184 = *(v182 + 72);
    v173 = (v174 + 8);
    v163 = v96;
    OUTLINED_FUNCTION_7_110();
    *(v99 - 256) = v30;
    while (1)
    {
      OUTLINED_FUNCTION_7_5();
      _s15ConversationKit11ParticipantVWOcTm_4(v98, v33, v100);
      v13 = a1[7];
      v101 = *(v33 + v13);
      if (!v101)
      {
        goto LABEL_38;
      }

      v102 = v101;
      if (([v102 shouldHideContact] & 1) == 0)
      {
        break;
      }

      type metadata accessor for CNContact();
      v103 = type metadata completion function for SyncedScreeningAlphaGradientView();
      v105 = @nonobjc CNContact.init(displayName:handle:)(v103, v104, 0);
      MEMORY[0x1BFB20CC0]();
      if (*((v190 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v190 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

LABEL_53:
      v95 = v190;
      outlined destroy of Participant(v33);
      v98 += v184;
      if (!--v96)
      {
        a5 = v164;
        v96 = v163;
        goto LABEL_56;
      }
    }

    v106 = *(v33 + v13);
    if (v106)
    {
      v107 = v106;
      outlined bridged method (pb) of @objc TUHandle.siriDisplayName.getter(v107);
      if (v108)
      {
        if ([v107 shouldHideContact])
        {
          PersonNameComponents.init()();
          type metadata completion function for SyncedScreeningAlphaGradientView();
          PersonNameComponents.givenName.setter();
          type metadata completion function for SyncedScreeningAlphaGradientView();
          PersonNameComponents.familyName.setter();
          if (one-time initialization token for initials != -1)
          {
            OUTLINED_FUNCTION_1_188();
            swift_once();
          }

          swift_beginAccess();
          v109 = static NSPersonNameComponentsFormatter.initials;
          isa = PersonNameComponents._bridgeToObjectiveC()().super.isa;
          a1 = [v109 stringFromPersonNameComponents_];

          v111 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v113 = v112;

          (*v173)(v178, v177);
          v187 = v111;
          v188 = v113;
          lazy protocol witness table accessor for type String and conformance String();
          StringProtocol.localizedUppercase.getter();

          OUTLINED_FUNCTION_7_110();
          v30 = *(v114 - 256);
          goto LABEL_40;
        }
      }

      else
      {
      }
    }

LABEL_38:
    OUTLINED_FUNCTION_7_5();
    _s15ConversationKit11ParticipantVWOcTm_4(v33, v30, v115);
    OUTLINED_FUNCTION_13_85();
    outlined destroy of Participant(v30);
    v116 = v187;

    if (v116)
    {
      v117 = v116;
LABEL_50:
      v102 = v117;
      MEMORY[0x1BFB20CC0]();
      if (*((v190 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v190 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      goto LABEL_53;
    }

LABEL_40:
    v118 = *(v33 + v13);
    if (v118)
    {
      v119 = v118;
      v120 = outlined bridged method (pb) of @objc TUHandle.siriDisplayName.getter(v119);
      if (v121)
      {
        v122 = v120;
        v123 = v121;
        if ([v119 shouldHideContact])
        {
          v124 = v178;
          PersonNameComponents.init()();
          type metadata completion function for SyncedScreeningAlphaGradientView();
          PersonNameComponents.givenName.setter();
          type metadata completion function for SyncedScreeningAlphaGradientView();
          PersonNameComponents.familyName.setter();
          if (one-time initialization token for initials != -1)
          {
            OUTLINED_FUNCTION_1_188();
            swift_once();
          }

          swift_beginAccess();
          v125 = static NSPersonNameComponentsFormatter.initials;
          v126 = PersonNameComponents._bridgeToObjectiveC()().super.isa;
          v127 = [v125 stringFromPersonNameComponents_];

          v128 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          a1 = v129;

          (*v173)(v124, v177);
          v187 = v128;
          v188 = a1;
          lazy protocol witness table accessor for type String and conformance String();
          StringProtocol.localizedUppercase.getter();

          v13 = 0;
          OUTLINED_FUNCTION_7_110();
          v30 = *(v130 - 256);
          goto LABEL_49;
        }
      }

      else
      {
      }
    }

    OUTLINED_FUNCTION_7_5();
    _s15ConversationKit11ParticipantVWOcTm_4(v33, v30, v131);
    OUTLINED_FUNCTION_13_85();
    outlined destroy of Participant(v30);
    v13 = v187;
    v122 = v188;
    v123 = v189;
LABEL_49:

    type metadata accessor for CNContact();

    v117 = @nonobjc CNContact.init(displayName:handle:)(v122, v123, 0);
    goto LABEL_50;
  }

  a1 = v179;
LABEL_56:
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit32InCallControlsTitleCellViewModelV0iJ6ButtonO_SbtGMd, &_ss23_ContiguousArrayStorageCy15ConversationKit32InCallControlsTitleCellViewModelV0iJ6ButtonO_SbtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BC4BAA20;
  *(inited + 32) = 0;
  OUTLINED_FUNCTION_6_122();
  v135 = v134 == 96;
  v136 = v134 != 96;
  v137 = v135;
  if (v175 != 3)
  {
    v136 = v175 != 2;
  }

  v133[33] = v136;
  v133[34] = 1;
  v133[35] = v137;
  lazy protocol witness table accessor for type InCallControlsTitleCellViewModel.TitleCellButton and conformance InCallControlsTitleCellViewModel.TitleCellButton();

  v138 = Dictionary.init(dictionaryLiteral:)();
  v139 = v138;
  if (!v96)
  {

    v156 = 0;
    goto LABEL_84;
  }

  v184 = v138;
  v140 = a5;
  v141 = v96;
  v14 = 0;
  v30 = a1[7];
  a2 = v140;
  a1 = (v140 + ((*(v182 + 80) + 32) & ~*(v182 + 80)));
  v33 = &selRef_isRecordingAllowed;
  v52 = v183;
  while (1)
  {
    if (v14 >= *(a2 + 16))
    {
      __break(1u);
LABEL_86:
      swift_once();
      goto LABEL_13;
    }

    OUTLINED_FUNCTION_7_5();
    _s15ConversationKit11ParticipantVWOcTm_4(v142, v52, v143);
    v144 = *(v52 + v30);
    if (!v144)
    {
      break;
    }

    v145 = [v144 value];
    if (!v145)
    {
      v146 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v145 = MEMORY[0x1BFB209B0](v146);
    }

    v13 = [v145 destinationIdIsTemporary];

    v52 = v183;
    if ((v13 & 1) == 0)
    {
      break;
    }

LABEL_76:
    outlined destroy of Participant(v52);
LABEL_77:
    if (v141 == ++v14)
    {

      v156 = 0;
      goto LABEL_83;
    }
  }

  v13 = v180;
  _s15ConversationKit11ParticipantVWOcTm_4(v52, v180, type metadata accessor for Participant.State);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 2u:
      type metadata accessor for Date();
      OUTLINED_FUNCTION_7_0();
      (*(v151 + 8))(v13);
      goto LABEL_76;
    case 4u:
      v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd, &_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMR);
      v153 = *(v152 + 48);
      v154 = (v13 + *(v152 + 64));
      outlined consume of Participant.CopresenceInfo?(*v154, v154[1], v154[2], v154[3], v154[4], v154[5], v154[6], v154[7]);
      v155 = v13 + v153;
      v52 = v183;
      outlined destroy of Participant.MediaInfo(v155);
      goto LABEL_69;
    case 6u:
      goto LABEL_70;
    default:
LABEL_69:
      type metadata accessor for Date();
      OUTLINED_FUNCTION_7_0();
      (*(v147 + 8))(v13);
LABEL_70:
      v148 = *(v52 + v30);
      if (v148)
      {
        v149 = [v148 value];
        if (!v149)
        {
          v150 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v149 = MEMORY[0x1BFB209B0](v150);
        }

        v13 = [v149 destinationIdIsPseudonym];

        v52 = v183;
        outlined destroy of Participant(v183);
        if ((v13 & 1) == 0)
        {

          goto LABEL_82;
        }

        goto LABEL_77;
      }

      outlined destroy of Participant(v52);
LABEL_82:

      v156 = 1;
LABEL_83:
      v139 = v184;
LABEL_84:
      v157 = v169 & 1;
      v158 = v172;
      v159 = v168;
      *v172 = v167;
      v158[1] = v159;
      v160 = v165;
      v158[2] = v166;
      v158[3] = v160;
      v161 = v170;
      v158[4] = v95;
      v158[5] = v161;
      v158[6] = v171;
      *(v158 + 56) = v157;
      v158[8] = v139;
      *(v158 + 72) = v156;
      v158[10] = a9;
      return;
  }
}

Swift::Int InCallControlsTitleCellViewModel.TitleCellButton.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1BFB22640](a1 & 1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance InCallControlsTitleCellViewModel.TitleCellButton(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  InCallControlsTitleCellViewModel.TitleCellButton.hash(into:)(v4, v2);
  return Hasher._finalize()();
}

uint64_t InCallControlsTitleCellViewModel.groupPhotoData.getter()
{
  v0 = OUTLINED_FUNCTION_46();
  outlined copy of Data?(v0, v1);
  return OUTLINED_FUNCTION_46();
}

void *InCallControlsTitleCellViewModel.conversation.getter()
{
  v1 = *(v0 + 80);
  v2 = v1;
  return v1;
}

id one-time initialization function for participantCountFormatter()
{
  result = [objc_allocWithZone(MEMORY[0x1E696ADA0]) init];
  static InCallControlsTitleCellViewModel.participantCountFormatter = result;
  return result;
}

id @nonobjc CNContact.init(displayName:handle:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    v4 = 0;
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5.super.isa = 0;
    goto LABEL_6;
  }

  v4 = MEMORY[0x1BFB209B0](a1);

  if (!a3)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5.super.isa = Array._bridgeToObjectiveC()().super.isa;

LABEL_6:
  v6 = [swift_getObjCClassFromMetadata() contactWithDisplayName:v4 handleStrings:v5.super.isa];

  return v6;
}

unint64_t lazy protocol witness table accessor for type InCallControlsTitleCellViewModel.TitleCellButton and conformance InCallControlsTitleCellViewModel.TitleCellButton()
{
  result = lazy protocol witness table cache variable for type InCallControlsTitleCellViewModel.TitleCellButton and conformance InCallControlsTitleCellViewModel.TitleCellButton;
  if (!lazy protocol witness table cache variable for type InCallControlsTitleCellViewModel.TitleCellButton and conformance InCallControlsTitleCellViewModel.TitleCellButton)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InCallControlsTitleCellViewModel.TitleCellButton and conformance InCallControlsTitleCellViewModel.TitleCellButton);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InCallControlsTitleCellViewModel.TitleCellButton and conformance InCallControlsTitleCellViewModel.TitleCellButton;
  if (!lazy protocol witness table cache variable for type InCallControlsTitleCellViewModel.TitleCellButton and conformance InCallControlsTitleCellViewModel.TitleCellButton)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InCallControlsTitleCellViewModel.TitleCellButton and conformance InCallControlsTitleCellViewModel.TitleCellButton);
  }

  return result;
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

uint64_t getEnumTagSinglePayload for InCallControlsTitleCellViewModel(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for InCallControlsTitleCellViewModel(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for InCallControlsTitleCellViewModel.TitleCellButton(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

id PLPillView.__allocating_init(leadingAccessoryView:trailingAccessoryView:)(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithLeadingAccessoryView:a1 trailingAccessoryView:a2];

  return v4;
}

uint64_t key path getter for TapToRadarBannerViewController.isBannerPresent : TapToRadarBannerViewController@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x130))();
  *a2 = result & 1;
  return result;
}

uint64_t TapToRadarBannerViewController.isBannerPresent.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit30TapToRadarBannerViewController_isBannerPresent;
  swift_beginAccess();
  return *(v0 + v1);
}

void TapToRadarBannerViewController.isBannerPresent.setter(char a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit30TapToRadarBannerViewController_isBannerPresent;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

id TapToRadarBannerViewController.bannerSource.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit30TapToRadarBannerViewController____lazy_storage___bannerSource;
  v2 = *&v0[OBJC_IVAR____TtC15ConversationKit30TapToRadarBannerViewController____lazy_storage___bannerSource];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC15ConversationKit30TapToRadarBannerViewController____lazy_storage___bannerSource];
LABEL_5:
    v9 = v2;
    return v3;
  }

  v4 = v0;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for BNBannerSource, 0x1E698E580);
  v5 = outlined bridged method (pb) of @objc TapToRadarBannerViewController.requesterIdentifier.getter(v0);
  result = @nonobjc BNBannerSource.__allocating_init(for:forRequesterIdentifier:)(0, v5, v6);
  if (result)
  {
    v8 = *&v0[v1];
    *&v4[v1] = result;
    v3 = result;

    v2 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

void TapToRadarBannerViewController.init(feature:)()
{
  OUTLINED_FUNCTION_29();
  v2 = v0;
  v3 = 0xD000000000000013;
  if (v1)
  {
    v3 = 0xD00000000000001FLL;
  }

  v63 = v3;
  v4 = "TTR_BANNER_TITLE";
  v5 = 0xD00000000000001CLL;
  if ((v1 & 1) == 0)
  {
    v5 = 0xD000000000000010;
    v4 = "TTR_HOLD_ASSIST_BANNER_SUBTITLE";
  }

  v61 = v5;
  v62 = v4;
  v6 = "ackViewController";
  v7 = v1 & 1;
  if ((v1 & 1) == 0)
  {
    v6 = "TTR_HOLD_ASSIST_BANNER_TITLE";
  }

  v60 = v6;
  v8 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = &v2[OBJC_IVAR____TtC15ConversationKit30TapToRadarBannerViewController_groupUUIDString];
  *v14 = 0;
  v14[1] = 0;
  v2[OBJC_IVAR____TtC15ConversationKit30TapToRadarBannerViewController_fullLogArchive] = 0;
  *&v2[OBJC_IVAR____TtC15ConversationKit30TapToRadarBannerViewController_call] = 0;
  *&v2[OBJC_IVAR____TtC15ConversationKit30TapToRadarBannerViewController____lazy_storage___bannerSource] = 0;
  UUID.init()();
  v15 = UUID.uuidString.getter();
  v17 = v16;
  (*(v10 + 8))(v13, v8);
  v18 = &v2[OBJC_IVAR____TtC15ConversationKit30TapToRadarBannerViewController_requestID];
  *v18 = v15;
  v18[1] = v17;
  v2[OBJC_IVAR____TtC15ConversationKit30TapToRadarBannerViewController_isBannerPresent] = 0;
  v2[OBJC_IVAR____TtC15ConversationKit30TapToRadarBannerViewController_feature] = v7;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage, 0x1E69DCAB8);
  v19 = @nonobjc UIImage.init(_systemName:)(0x7261646172, 0xE500000000000000);
  v20 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithImage_];

  v59 = OBJC_IVAR____TtC15ConversationKit30TapToRadarBannerViewController_pillLeadingImageView;
  *&v2[OBJC_IVAR____TtC15ConversationKit30TapToRadarBannerViewController_pillLeadingImageView] = v20;
  v21 = objc_opt_self();
  v22 = v20;
  v23 = [v21 systemPurpleColor];
  [v22 setTintColor_];

  v24 = @nonobjc UIImage.init(_systemName:)(0xD000000000000011, 0x80000001BC523360);
  v25 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithImage_];

  v58 = OBJC_IVAR____TtC15ConversationKit30TapToRadarBannerViewController_pillTrailingImageView;
  *&v2[OBJC_IVAR____TtC15ConversationKit30TapToRadarBannerViewController_pillTrailingImageView] = v25;
  v26 = v25;
  v27 = [v21 systemPurpleColor];
  [v26 setTintColor_];

  v28 = [objc_opt_self() conversationKit];
  v29 = OUTLINED_FUNCTION_6_123(v61, v60);
  v31 = v30;

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for PLPillContentItem, 0x1E69C4A68);
  v32 = PLPillContentItem.__allocating_init(text:)(v29, v31);
  v33 = OBJC_IVAR____TtC15ConversationKit30TapToRadarBannerViewController_pillViewTitle;
  *&v2[OBJC_IVAR____TtC15ConversationKit30TapToRadarBannerViewController_pillViewTitle] = v32;
  v34 = [objc_opt_self() conversationKit];
  v35 = OUTLINED_FUNCTION_6_123(v63, v62);
  v37 = v36;

  v38 = PLPillContentItem.__allocating_init(text:style:)(v35, v37, 5);
  v39 = OBJC_IVAR____TtC15ConversationKit30TapToRadarBannerViewController_pillViewSubtitle;
  *&v2[OBJC_IVAR____TtC15ConversationKit30TapToRadarBannerViewController_pillViewSubtitle] = v38;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for PLPillView, 0x1E69C4A70);
  v40 = *&v2[v59];
  v41 = *&v2[v58];
  v42 = v40;
  v43 = v41;
  v44 = PLPillView.__allocating_init(leadingAccessoryView:trailingAccessoryView:)(v40, v41);
  *&v2[OBJC_IVAR____TtC15ConversationKit30TapToRadarBannerViewController_pillView] = v44;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_1BC4BA930;
  v46 = *&v2[v33];
  v47 = *&v2[v39];
  *(v45 + 32) = v46;
  *(v45 + 40) = v47;
  v48 = v44;
  v49 = v46;
  v50 = v47;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v48 setCenterContentItems_];

  *&v2[OBJC_IVAR____TtC15ConversationKit30TapToRadarBannerViewController_addressList] = MEMORY[0x1E69E7CD0];
  v52 = type metadata accessor for TapToRadarBannerViewController();
  v65.receiver = v2;
  v65.super_class = v52;
  v53 = objc_msgSendSuper2(&v65, sel_initWithNibName_bundle_, 0, 0);
  v64[3] = v52;
  v64[0] = v53;
  objc_allocWithZone(MEMORY[0x1E69DD060]);
  v54 = v53;
  v55 = @nonobjc UITapGestureRecognizer.init(target:action:)(v64, sel_handleTap_);
  v56 = [v54 view];
  if (v56)
  {
    v57 = v56;
    [v56 addGestureRecognizer_];

    OUTLINED_FUNCTION_30_0();
  }

  else
  {
    __break(1u);
  }
}

id TapToRadarBannerViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void TapToRadarBannerViewController.init(coder:)()
{
  v1 = (v0 + OBJC_IVAR____TtC15ConversationKit30TapToRadarBannerViewController_groupUUIDString);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit30TapToRadarBannerViewController_fullLogArchive) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit30TapToRadarBannerViewController_call) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit30TapToRadarBannerViewController____lazy_storage___bannerSource) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Void __swiftcall TapToRadarBannerViewController.viewDidLoad()()
{
  v1 = OBJC_IVAR____TtC15ConversationKit30TapToRadarBannerViewController_pillView;
  [*&v0[OBJC_IVAR____TtC15ConversationKit30TapToRadarBannerViewController_pillView] setAutoresizingMask_];
  v2 = *&v0[v1];
  v3 = [v0 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = v3;
  [v3 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  [v2 setFrame_];
  v13 = [v0 view];
  if (!v13)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v14 = v13;
  [v13 addSubview_];
}

Swift::Void __swiftcall TapToRadarBannerViewController.handleTap(_:)(UITapGestureRecognizer_optional *a1)
{
  OUTLINED_FUNCTION_29();
  v3 = type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_1();
  v20 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  v19 = OUTLINED_FUNCTION_32_0();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_8();
  v11 = v10 - v9;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  v12 = static OS_dispatch_queue.main.getter();
  OUTLINED_FUNCTION_20();
  v13 = swift_allocObject();
  *(v13 + 16) = v1;
  OUTLINED_FUNCTION_7_6(v13);
  OUTLINED_FUNCTION_4_81(COERCE_DOUBLE(1107296256));
  v21[2] = v14;
  v21[3] = &block_descriptor_121;
  v15 = _Block_copy(v21);
  v16 = v1;

  static DispatchQoS.unspecified.getter();
  v21[0] = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  v17 = OUTLINED_FUNCTION_3_169(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A]);
  OUTLINED_FUNCTION_5_141(v17);
  v18 = OUTLINED_FUNCTION_117();
  MEMORY[0x1BFB215C0](v18);
  _Block_release(v15);

  (*(v20 + 8))(v2, v3);
  (*(v7 + 8))(v11, v19);
  OUTLINED_FUNCTION_30_0();
}

void closure #1 in TapToRadarBannerViewController.handleTap(_:)(void *a1)
{
  v215 = a1;
  v211 = type metadata accessor for URL();
  v204 = *(v211 - 8);
  MEMORY[0x1EEE9AC00](v211);
  v203 = &v192 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v210 = &v192 - v3;
  v201 = type metadata accessor for Date();
  v206 = *(v201 - 8);
  MEMORY[0x1EEE9AC00](v201);
  v205 = &v192 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v192 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v200 = &v192 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v197 = &v192 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v198 = &v192 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v195 = &v192 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v196 = &v192 - v17;
  v214 = type metadata accessor for URLQueryItem();
  v18 = *(v214 - 8);
  MEMORY[0x1EEE9AC00](v214);
  v209 = &v192 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v208 = &v192 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v202 = &v192 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v207 = &v192 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v212 = &v192 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v192 - v29;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v192 - v32;
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v192 - v35;
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v192 - v38;
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v192 - v41;
  URLQueryItem.init(name:value:)();
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  v44 = v43;
  v46 = *(v43 + 16);
  v45 = *(v43 + 24);
  v199 = v7;
  if (v46 >= v45 >> 1)
  {
    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v44 = v182;
  }

  *(v44 + 16) = v46 + 1;
  v47 = *(v18 + 32);
  v217 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v216 = *(v18 + 72);
  v48 = v42;
  v49 = v214;
  v213 = v47;
  v50 = v18 + 32;
  v47(v44 + v217 + v216 * v46, v48, v214);
  URLQueryItem.init(name:value:)();

  v51 = *(v44 + 16);
  if (v51 >= *(v44 + 24) >> 1)
  {
    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v44 = v183;
  }

  *(v44 + 16) = v51 + 1;
  v52 = v44 + v217 + v51 * v216;
  v53 = v213;
  v213(v52, v39, v49);
  URLQueryItem.init(name:value:)();
  v54 = *(v44 + 16);
  if (v54 >= *(v44 + 24) >> 1)
  {
    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v44 = v184;
  }

  *(v44 + 16) = v54 + 1;
  v55 = v214;
  v53(v44 + v217 + v54 * v216, v36, v214);
  URLQueryItem.init(name:value:)();
  v56 = *(v44 + 16);
  if (v56 >= *(v44 + 24) >> 1)
  {
    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v44 = v185;
  }

  v58 = v215;
  v57 = v216;
  *(v44 + 16) = v56 + 1;
  v59 = v44 + v217 + v56 * v57;
  v60 = v213;
  v213(v59, v33, v55);
  URLQueryItem.init(name:value:)();
  v61 = *(v44 + 16);
  if (v61 >= *(v44 + 24) >> 1)
  {
    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v44 = v186;
  }

  *(v44 + 16) = v61 + 1;
  v60(v44 + v217 + v61 * v216, v30, v55);
  v194 = 0xD000000000000010;
  URLQueryItem.init(name:value:)();
  v62 = *(v44 + 16);
  if (v62 >= *(v44 + 24) >> 1)
  {
    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v44 = v187;
  }

  *(v44 + 16) = v62 + 1;
  v60(v44 + v217 + v62 * v216, v212, v55);
  v219[2] = 10;
  v219[3] = 0xE100000000000000;
  v63 = *(v58 + OBJC_IVAR____TtC15ConversationKit30TapToRadarBannerViewController_call);
  if (v63)
  {
    v219[0] = 0;
    v219[1] = 0xE000000000000000;
    v64 = v63;
    _StringGuts.grow(_:)(436);
    MEMORY[0x1BFB20B10](0xD000000000000075, 0x80000001BC5240E0);
    v65 = [v64 callUUID];
    v66 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v68 = v67;

    MEMORY[0x1BFB20B10](v66, v68);

    MEMORY[0x1BFB20B10](0xD000000000000015, 0x80000001BC524160);
    v69 = [v64 service];
    v74 = TUCallService.description.getter(v69, v70, v71, v72, v73);
    MEMORY[0x1BFB20B10](v74);

    MEMORY[0x1BFB20B10](0x7453206C6C61430ALL, 0xED0000203A747261);
    v75 = [v64 dateConnected];
    if (v75)
    {
      v76 = v75;
      v77 = v195;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v78 = 0;
      v79 = v201;
    }

    else
    {
      v78 = 1;
      v79 = v201;
      v77 = v195;
    }

    __swift_storeEnumTagSinglePayload(v77, v78, 1, v79);
    v80 = v196;
    outlined init with take of Date?(v77, v196);
    if (__swift_getEnumTagSinglePayload(v80, 1, v79))
    {
      outlined destroy of TapInteractionHandler?(v80, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    }

    else
    {
      v83 = v205;
      v84 = v206;
      (*(v206 + 16))(v205, v80, v79);
      outlined destroy of TapInteractionHandler?(v80, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      v82 = Date.formated.getter();
      v81 = v85;
      (*(v84 + 8))(v83, v79);
      if (v81)
      {
LABEL_21:
        MEMORY[0x1BFB20B10](v82, v81);

        MEMORY[0x1BFB20B10](0x6E45206C6C61430ALL, 0xEB00000000203A64);
        v86 = [v64 dateEnded];
        if (v86)
        {
          v87 = v86;
          v88 = v197;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v89 = 0;
        }

        else
        {
          v89 = 1;
          v88 = v197;
        }

        __swift_storeEnumTagSinglePayload(v88, v89, 1, v79);
        v90 = v198;
        outlined init with take of Date?(v88, v198);
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v90, 1, v79);
        v193 = v50;
        if (EnumTagSinglePayload)
        {
          outlined destroy of TapInteractionHandler?(v90, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        }

        else
        {
          v94 = v205;
          v95 = v206;
          (*(v206 + 16))(v205, v90, v79);
          outlined destroy of TapInteractionHandler?(v90, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
          v93 = Date.formated.getter();
          v92 = v96;
          (*(v95 + 8))(v94, v79);
          if (v92)
          {
LABEL_28:
            MEMORY[0x1BFB20B10](v93, v92);

            MEMORY[0x1BFB20B10](0xD000000000000016, 0x80000001BC5241A0);
            v97 = [v64 disconnectedReason];
            v102 = TUCallDisconnectedReason.description.getter(v97, v98, v99, v100, v101);
            MEMORY[0x1BFB20B10](v102);

            MEMORY[0x1BFB20B10](0xD000000000000014, 0x80000001BC5241C0);
            v103 = [v64 isOutgoing];
            v104 = v103 == 0;
            if (v103)
            {
              v105 = 1702195828;
            }

            else
            {
              v105 = 0x65736C6166;
            }

            if (v104)
            {
              v106 = 0xE500000000000000;
            }

            else
            {
              v106 = 0xE400000000000000;
            }

            MEMORY[0x1BFB20B10](v105, v106);

            MEMORY[0x1BFB20B10](0x64656B636F6C420ALL, 0xEA0000000000203ALL);
            v107 = [v64 isBlocked];
            v108 = v107 == 0;
            if (v107)
            {
              v109 = 1702195828;
            }

            else
            {
              v109 = 0x65736C6166;
            }

            if (v108)
            {
              v110 = 0xE500000000000000;
            }

            else
            {
              v110 = 0xE400000000000000;
            }

            MEMORY[0x1BFB20B10](v109, v110);

            MEMORY[0x1BFB20B10](0xD00000000000001ALL, 0x80000001BC5241E0);
            v111 = [v64 dateAnsweredOrDialed];
            if (v111)
            {
              v112 = v111;
              v113 = v199;
              static Date._unconditionallyBridgeFromObjectiveC(_:)();

              v114 = 0;
              v60 = v213;
            }

            else
            {
              v114 = 1;
              v60 = v213;
              v113 = v199;
            }

            __swift_storeEnumTagSinglePayload(v113, v114, 1, v79);
            v115 = v200;
            outlined init with take of Date?(v113, v200);
            if (__swift_getEnumTagSinglePayload(v115, 1, v79))
            {
              outlined destroy of TapInteractionHandler?(v115, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
            }

            else
            {
              v118 = v205;
              v119 = v206;
              (*(v206 + 16))(v205, v115, v79);
              outlined destroy of TapInteractionHandler?(v115, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
              v117 = Date.formated.getter();
              v116 = v120;
              (*(v119 + 8))(v118, v79);
              if (v116)
              {
                goto LABEL_47;
              }
            }

            v116 = 0x80000001BC524180;
            v117 = 0xD000000000000012;
LABEL_47:
            MEMORY[0x1BFB20B10](v117, v116);

            MEMORY[0x1BFB20B10](0xD000000000000023, 0x80000001BC524200);
            v121 = [v64 isEligibleForManualScreening];
            v122 = v121 == 0;
            if (v121)
            {
              v123 = 1702195828;
            }

            else
            {
              v123 = 0x65736C6166;
            }

            if (v122)
            {
              v124 = 0xE500000000000000;
            }

            else
            {
              v124 = 0xE400000000000000;
            }

            MEMORY[0x1BFB20B10](v123, v124);

            MEMORY[0x1BFB20B10](0xD00000000000001CLL, 0x80000001BC524230);
            v125 = [v64 isEligibleForScreening];
            v126 = v125 == 0;
            if (v125)
            {
              v127 = 1702195828;
            }

            else
            {
              v127 = 0x65736C6166;
            }

            if (v126)
            {
              v128 = 0xE500000000000000;
            }

            else
            {
              v128 = 0xE400000000000000;
            }

            MEMORY[0x1BFB20B10](v127, v128);

            MEMORY[0x1BFB20B10](0xD00000000000001BLL, 0x80000001BC524250);
            v129 = [v64 shouldSuppressRingtone];
            v130 = v129 == 0;
            if (v129)
            {
              v131 = 1702195828;
            }

            else
            {
              v131 = 0x65736C6166;
            }

            if (v130)
            {
              v132 = 0xE500000000000000;
            }

            else
            {
              v132 = 0xE400000000000000;
            }

            MEMORY[0x1BFB20B10](v131, v132);

            MEMORY[0x1BFB20B10](0xD000000000000012, 0x80000001BC524270);
            v133 = [v64 uniqueProxyIdentifier];
            v134 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v136 = v135;

            MEMORY[0x1BFB20B10](v134, v136);

            MEMORY[0x1BFB20B10](0x206B6E696C70550ALL, 0xEF203A646574754DLL);
            v137 = [v64 isUplinkMuted];
            v138 = v137 == 0;
            if (v137)
            {
              v139 = 1702195828;
            }

            else
            {
              v139 = 0x65736C6166;
            }

            if (v138)
            {
              v140 = 0xE500000000000000;
            }

            else
            {
              v140 = 0xE400000000000000;
            }

            MEMORY[0x1BFB20B10](v139, v140);

            MEMORY[0x1BFB20B10](0xD000000000000015, 0x80000001BC524290);
            v141 = [v64 isDownlinkMuted];
            v142 = v141 == 0;
            if (v141)
            {
              v143 = 1702195828;
            }

            else
            {
              v143 = 0x65736C6166;
            }

            if (v142)
            {
              v144 = 0xE500000000000000;
            }

            else
            {
              v144 = 0xE400000000000000;
            }

            MEMORY[0x1BFB20B10](v143, v144);

            MEMORY[0x1BFB20B10](0xD000000000000016, 0x80000001BC5242B0);
            v218 = [v64 screenSharingType];
            type metadata accessor for TUCallScreenSharingType(0);
            v145 = String.init<A>(describing:)();
            MEMORY[0x1BFB20B10](v145);

            MEMORY[0x1BFB20B10](v219[0], v219[1]);

            strcpy(v219, "Is Recording: ");
            HIBYTE(v219[1]) = -18;
            v146 = [v64 isRecording];
            v147 = v146 == 0;
            if (v146)
            {
              v148 = 1702195828;
            }

            else
            {
              v148 = 0x65736C6166;
            }

            if (v147)
            {
              v149 = 0xE500000000000000;
            }

            else
            {
              v149 = 0xE400000000000000;
            }

            MEMORY[0x1BFB20B10](v148, v149);

            MEMORY[0x1BFB20B10](v219[0], v219[1]);

            v55 = v214;
            v58 = v215;
            goto LABEL_84;
          }
        }

        v92 = 0x80000001BC524180;
        v93 = 0xD000000000000012;
        goto LABEL_28;
      }
    }

    v81 = 0x80000001BC524180;
    v82 = 0xD000000000000012;
    goto LABEL_21;
  }

LABEL_84:
  v150 = v207;
  URLQueryItem.init(name:value:)();

  v151 = *(v44 + 16);
  if (v151 >= *(v44 + 24) >> 1)
  {
    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v44 = v188;
  }

  *(v44 + 16) = v151 + 1;
  v60(v44 + v217 + v151 * v216, v150, v55);
  if (*(v58 + OBJC_IVAR____TtC15ConversationKit30TapToRadarBannerViewController_groupUUIDString + 8))
  {

    v152 = v202;
    URLQueryItem.init(name:value:)();

    v153 = *(v44 + 16);
    if (v153 >= *(v44 + 24) >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v44 = v190;
    }

    *(v44 + 16) = v153 + 1;
    v60(v44 + v217 + v153 * v216, v152, v55);
  }

  v219[0] = *(v58 + OBJC_IVAR____TtC15ConversationKit30TapToRadarBannerViewController_addressList);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sShySSGMd, &_sShySSGMR);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Set<String> and conformance Set<A>, &_sShySSGMd, &_sShySSGMR, MEMORY[0x1E69E6508]);
  lazy protocol witness table accessor for type String and conformance String();
  Sequence<>.joined(separator:)();

  v154 = v208;
  URLQueryItem.init(name:value:)();

  v155 = *(v44 + 16);
  if (v155 >= *(v44 + 24) >> 1)
  {
    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v44 = v189;
  }

  *(v44 + 16) = v155 + 1;
  v60(v44 + v217 + v155 * v216, v154, v55);
  if (*(v58 + OBJC_IVAR____TtC15ConversationKit30TapToRadarBannerViewController_fullLogArchive) == 1)
  {
    URLQueryItem.init(name:value:)();
    v156 = *(v44 + 16);
    if (v156 >= *(v44 + 24) >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v44 = v191;
    }

    *(v44 + 16) = v156 + 1;
    v60(v44 + v217 + v156 * v216, v209, v55);
  }

  v157 = [objc_allocWithZone(MEMORY[0x1E696AF20]) init];
  outlined bridged method (mbnn) of @objc UIViewController.title.setter(0x722D6F742D706174, 0xEC00000072616461, v157, &selRef_setScheme_);
  outlined bridged method (mbnn) of @objc UIViewController.title.setter(7824750, 0xE300000000000000, v157, &selRef_setHost_);
  outlined bridged method (mbnn) of @objc NSURLComponents.queryItems.setter(v44, v157);
  v158 = v211;
  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  v159 = static OS_os_log.conversationKit;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v160 = swift_allocObject();
  *(v160 + 16) = xmmword_1BC4BA940;
  v161 = [v157 URL];
  v162 = v210;
  if (v161)
  {
    v163 = v161;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v164 = 0;
  }

  else
  {
    v164 = 1;
  }

  __swift_storeEnumTagSinglePayload(v162, v164, 1, v158);
  specialized >> prefix<A>(_:)(v162, v165, v166, v167, v168, v169, v170, v171, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201);
  v173 = v172;
  v175 = v174;
  outlined destroy of TapInteractionHandler?(v162, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  *(v160 + 56) = MEMORY[0x1E69E6158];
  *(v160 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v160 + 32) = v173;
  *(v160 + 40) = v175;
  v176 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Tap-To-Radar Components URL:%@", 30, 2, &dword_1BBC58000, v159, v176, v160);

  v177 = [objc_opt_self() sharedApplication];
  v178 = [v157 URL];
  if (v178)
  {
    v179 = v203;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    URL._bridgeToObjectiveC()(v180);
    v178 = v181;
    (*(v204 + 8))(v179, v158);
  }

  [v177 openURL:v178 withCompletionHandler:0];

  (*((*MEMORY[0x1E69E7D40] & *v58) + 0x1D8))();
}

uint64_t Date.formated.getter()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  outlined bridged method (mbnn) of @objc UIViewController.title.setter(0xD000000000000013, 0x80000001BC5233C0, v0, &selRef_setDateFormat_);
  [v0 setDoesRelativeDateFormatting_];
  isa = Date._bridgeToObjectiveC()().super.isa;
  v2 = [v0 stringFromDate_];

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v3;
}

void TapToRadarBannerViewController.showBanner(for:)()
{
  OUTLINED_FUNCTION_29();
  v2 = v0;
  v4 = v3;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_8();
  v9 = OUTLINED_FUNCTION_32_0();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_8();
  v15 = v14 - v13;
  v16 = *(v2 + OBJC_IVAR____TtC15ConversationKit30TapToRadarBannerViewController_call);
  *(v2 + OBJC_IVAR____TtC15ConversationKit30TapToRadarBannerViewController_call) = v4;
  v17 = v4;

  v27 = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
  if (((*((*MEMORY[0x1E69E7D40] & *v2) + 0x130))() & 1) != 0 || ([v27 TTRBannerEnabled] & 1) == 0 || (type metadata accessor for SpringBoardUtilities(), static SpringBoardUtilities.checkSpringBoardState(for:)(0xD00000000000002DLL, 0x80000001BC4F49E0)))
  {
    OUTLINED_FUNCTION_30_0();
  }

  else
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
    v26 = static OS_dispatch_queue.main.getter();
    OUTLINED_FUNCTION_20();
    v20 = swift_allocObject();
    *(v20 + 16) = v2;
    OUTLINED_FUNCTION_7_6(v20);
    OUTLINED_FUNCTION_4_81(COERCE_DOUBLE(1107296256));
    v28[2] = v21;
    v28[3] = &block_descriptor_6_7;
    v25 = _Block_copy(v28);
    v22 = v2;

    static DispatchQoS.unspecified.getter();
    v28[0] = MEMORY[0x1E69E7CC0];
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    v23 = OUTLINED_FUNCTION_3_169(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A]);
    OUTLINED_FUNCTION_5_141(v23);
    v24 = OUTLINED_FUNCTION_117();
    MEMORY[0x1BFB215C0](v24);

    _Block_release(v25);
    (*(v7 + 8))(v1, v5);
    (*(v11 + 8))(v15, v9);
    OUTLINED_FUNCTION_30_0();
  }
}

void closure #1 in TapToRadarBannerViewController.showBanner(for:)(char *a1)
{
  v19[1] = *MEMORY[0x1E69E9840];
  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  v2 = static OS_os_log.conversationKit;
  v3 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Show TTR Banner", 15, 2, &dword_1BBC58000, v2, v3, MEMORY[0x1E69E7CC0]);
  v4 = TapToRadarBannerViewController.bannerSource.getter();
  v19[0] = 0;
  v5 = [v4 layoutDescriptionWithError_];

  if (v5)
  {
    v6 = v19[0];
    [v5 presentationSize];
    v8 = v7;
    v10 = v9;
    [v5 containerSize];
    [a1 preferredContentSizeWithPresentationSize:v8 containerSize:{v10, v11, v12}];
    [a1 setPreferredContentSize_];
    v13 = *&a1[OBJC_IVAR____TtC15ConversationKit30TapToRadarBannerViewController____lazy_storage___bannerSource];
    v19[0] = 0;
    if ([v13 postPresentable:a1 options:1 userInfo:0 error:v19])
    {
      v14 = v19[0];

      return;
    }

    v17 = v19[0];
    v16 = _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  else
  {
    v15 = v19[0];
    v16 = _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v18 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Unable to post banner source", 28, 2, &dword_1BBC58000, v2, v18, MEMORY[0x1E69E7CC0]);
}

Swift::Void __swiftcall TapToRadarBannerViewController.dismissBanner()()
{
  OUTLINED_FUNCTION_29();
  v2 = type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  v6 = OUTLINED_FUNCTION_32_0();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_8();
  v12 = v11 - v10;
  if ((*((*MEMORY[0x1E69E7D40] & *v0) + 0x130))())
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
    v20 = static OS_dispatch_queue.main.getter();
    OUTLINED_FUNCTION_20();
    v13 = swift_allocObject();
    *(v13 + 16) = v0;
    OUTLINED_FUNCTION_7_6(v13);
    OUTLINED_FUNCTION_4_81(COERCE_DOUBLE(1107296256));
    v21[2] = v14;
    v21[3] = &block_descriptor_12_5;
    v19 = v6;
    v15 = _Block_copy(v21);
    v16 = v0;

    static DispatchQoS.unspecified.getter();
    v21[0] = MEMORY[0x1E69E7CC0];
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    v17 = OUTLINED_FUNCTION_3_169(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A]);
    OUTLINED_FUNCTION_5_141(v17);
    v18 = OUTLINED_FUNCTION_117();
    MEMORY[0x1BFB215C0](v18);
    _Block_release(v15);

    (*(v4 + 8))(v1, v2);
    (*(v8 + 8))(v12, v19);
  }

  OUTLINED_FUNCTION_30_0();
}

void closure #1 in TapToRadarBannerViewController.dismissBanner()(uint64_t a1)
{
  v12[1] = *MEMORY[0x1E69E9840];
  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  v2 = static OS_os_log.conversationKit;
  v3 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Dismiss TTR Banner", 18, 2, &dword_1BBC58000, v2, v3, MEMORY[0x1E69E7CC0]);
  v4 = TapToRadarBannerViewController.bannerSource.getter();
  v5 = MEMORY[0x1BFB209B0](*(a1 + OBJC_IVAR____TtC15ConversationKit30TapToRadarBannerViewController_requestID), *(a1 + OBJC_IVAR____TtC15ConversationKit30TapToRadarBannerViewController_requestID + 8));
  v6 = MEMORY[0x1BFB209B0](0xD000000000000013, 0x80000001BC524010);
  v12[0] = 0;
  v7 = [v4 revokePresentableWithRequestIdentifier:v5 reason:v6 animated:1 userInfo:0 error:v12];

  if (v7)
  {
    v8 = v12[0];
  }

  else
  {
    v9 = v12[0];
    v10 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v11 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Unable to revoke banner source", 30, 2, &dword_1BBC58000, v2, v11, MEMORY[0x1E69E7CC0]);
  }
}

double TapToRadarBannerViewController.addMessagesBubbleRecipientsList(groupMessageUUID:with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  v7 = static OS_os_log.conversationKit;
  v8 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("TTRBanner: Assign Senders", 25, 2, &dword_1BBC58000, v7, v8, MEMORY[0x1E69E7CC0]);
  *(v3 + OBJC_IVAR____TtC15ConversationKit30TapToRadarBannerViewController_addressList) = a3;

  v9 = (v3 + OBJC_IVAR____TtC15ConversationKit30TapToRadarBannerViewController_groupUUIDString);
  *v9 = a1;
  v9[1] = a2;

  return result;
}

id TapToRadarBannerViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = MEMORY[0x1BFB209B0](a1);
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id TapToRadarBannerViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TapToRadarBannerViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t TUCallService.description.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = OUTLINED_FUNCTION_8_108("Fatal error", a2, a3, a4, a5, "ConversationKit/TapToRadarBannerViewController.swift");
  __break(1u);
  return result;
}

uint64_t TUCallDisconnectedReason.description.getter(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = 0xD000000000000020;
  switch(a1)
  {
    case 0:
    case 2:
      return result;
    case 1:
    case 3:
    case 5:
      return 0xD000000000000029;
    case 4:
    case 11:
    case 16:
    case 23:
      return 0xD000000000000028;
    case 6:
      return 0xD000000000000024;
    case 7:
    case 34:
    case 44:
      return 0xD000000000000021;
    case 8:
    case 48:
      return 0xD000000000000033;
    case 9:
    case 38:
      return 0xD000000000000030;
    case 10:
    case 51:
      return 0xD000000000000026;
    case 12:
      return 0xD00000000000003DLL;
    case 13:
    case 21:
    case 41:
      return 0xD000000000000023;
    case 14:
    case 15:
    case 17:
      return 0xD000000000000022;
    case 18:
    case 19:
    case 24:
    case 49:
    case 50:
      return 0xD00000000000002ALL;
    case 20:
    case 35:
      goto LABEL_28;
    case 22:
    case 40:
    case 45:
    case 46:
      return 0xD000000000000027;
    case 25:
      return 0xD000000000000035;
    case 26:
      return 0xD00000000000001ELL;
    case 27:
    case 39:
    case 43:
      return 0xD00000000000002ELL;
    case 28:
    case 30:
    case 42:
      return 0xD00000000000002FLL;
    case 29:
    case 31:
      return 0xD000000000000031;
    case 32:
      return 0xD000000000000032;
    case 33:
    case 36:
      return 0xD00000000000002CLL;
    case 37:
      return 0xD00000000000003ELL;
    case 47:
      return 0xD000000000000036;
    default:
      if (a1 == 1000)
      {
        return 0xD000000000000029;
      }

      if (a1 == 1001)
      {
        return 0xD00000000000002BLL;
      }

LABEL_28:
      result = OUTLINED_FUNCTION_8_108("Fatal error", a2, a3, a4, a5, "ConversationKit/TapToRadarBannerViewController.swift");
      __break(1u);
      return result;
  }
}

uint64_t TapToRadarBannerViewController.requestIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15ConversationKit30TapToRadarBannerViewController_requestID);

  return v1;
}

uint64_t TapToRadarBannerViewController.requesterIdentifier.getter()
{
  type metadata accessor for TapToRadarBannerViewController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];

  return outlined bridged method (ob) of @objc NSBundle.bundleIdentifier.getter(v1);
}

CGSize __swiftcall TapToRadarBannerViewController.preferredContentSize(withPresentationSize:containerSize:)(CGSize withPresentationSize, CGSize containerSize)
{
  [*(v2 + OBJC_IVAR____TtC15ConversationKit30TapToRadarBannerViewController_pillView) systemLayoutSizeFittingSize_];
  result.height = v4;
  result.width = v3;
  return result;
}

uint64_t outlined bridged method (pb) of @objc TapToRadarBannerViewController.requesterIdentifier.getter(void *a1)
{
  v1 = [a1 requesterIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

void outlined bridged method (mbnn) of @objc NSURLComponents.queryItems.setter(uint64_t a1, void *a2)
{
  type metadata accessor for URLQueryItem();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a2 setQueryItems_];
}

uint64_t SidebarStateStream.states.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO16RemoveDuplicatesVy_AA19CurrentValueSubjectCy15ConversationKit12SidebarStateOs5NeverOGGMd, &_s7Combine10PublishersO16RemoveDuplicatesVy_AA19CurrentValueSubjectCy15ConversationKit12SidebarStateOs5NeverOGGMR);
  OUTLINED_FUNCTION_1();
  v3 = v2;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v4);
  v6 = v9 - v5;
  v9[1] = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCy15ConversationKit12SidebarStateOs5NeverOGMd, &_s7Combine19CurrentValueSubjectCy15ConversationKit12SidebarStateOs5NeverOGMR);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type CurrentValueSubject<SidebarState, Never> and conformance CurrentValueSubject<A, B>, &_s7Combine19CurrentValueSubjectCy15ConversationKit12SidebarStateOs5NeverOGMd, &_s7Combine19CurrentValueSubjectCy15ConversationKit12SidebarStateOs5NeverOGMR, MEMORY[0x1E695BFB0]);
  lazy protocol witness table accessor for type SidebarState and conformance SidebarState();
  Publisher<>.removeDuplicates()();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.RemoveDuplicates<CurrentValueSubject<SidebarState, Never>> and conformance Publishers.RemoveDuplicates<A>, &_s7Combine10PublishersO16RemoveDuplicatesVy_AA19CurrentValueSubjectCy15ConversationKit12SidebarStateOs5NeverOGGMd, &_s7Combine10PublishersO16RemoveDuplicatesVy_AA19CurrentValueSubjectCy15ConversationKit12SidebarStateOs5NeverOGGMR, MEMORY[0x1E695BD38]);
  v7 = Publisher.eraseToAnyPublisher()();
  (*(v3 + 8))(v6, v1);
  return v7;
}

unint64_t lazy protocol witness table accessor for type SidebarState and conformance SidebarState()
{
  result = lazy protocol witness table cache variable for type SidebarState and conformance SidebarState;
  if (!lazy protocol witness table cache variable for type SidebarState and conformance SidebarState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SidebarState and conformance SidebarState);
  }

  return result;
}

uint64_t SidebarButtonViewModel.__allocating_init(service:stream:isScreenLocked:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  SidebarButtonViewModel.init(service:stream:isScreenLocked:)(a1, a2, a3);
  return v6;
}

uint64_t SidebarStateStream.__allocating_init(initial:)(char a1)
{
  OUTLINED_FUNCTION_36();
  v2 = swift_allocObject();
  SidebarStateStream.init(initial:)(a1 & 1);
  return v2;
}

uint64_t one-time initialization function for showDetailsSideBar()
{
  result = MEMORY[0x1BFB209B0](0xD000000000000012, 0x80000001BC524390);
  static NSNotificationName.showDetailsSideBar = result;
  return result;
}

id static NSNotificationName.showDetailsSideBar.getter()
{
  if (one-time initialization token for showDetailsSideBar != -1)
  {
    swift_once();
  }

  v1 = static NSNotificationName.showDetailsSideBar;

  return v1;
}

Swift::Int SidebarState.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1BFB22640](a1 & 1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SidebarState(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  SidebarState.hash(into:)(v4, v2);
  return Hasher._finalize()();
}

uint64_t SidebarStateStream.init(initial:)(char a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCy15ConversationKit12SidebarStateOs5NeverOGMd, &_s7Combine19CurrentValueSubjectCy15ConversationKit12SidebarStateOs5NeverOGMR);
  swift_allocObject();
  *(v1 + 16) = CurrentValueSubject.init(_:)();
  return v1;
}

uint64_t SidebarStateStream.__deallocating_deinit()
{

  OUTLINED_FUNCTION_36();

  return swift_deallocClassInstance();
}

void *SidebarButtonViewModel.init(service:stream:isScreenLocked:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = MEMORY[0x1E69E7CC0];
  v3[9] = 0;
  v3[10] = v7;
  outlined init with copy of IDSLookupManager(a1, (v3 + 3));
  v3[8] = a2;
  v3[2] = a3;

  SidebarButtonViewModel.observeState()();

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v3;
}

uint64_t SidebarButtonViewModel.observeState()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVySbs5NeverOGSo9NSRunLoopCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVySbs5NeverOGSo9NSRunLoopCGMR);
  v43 = *(v2 - 8);
  v44 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v42 = &v35 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v41 = &v35 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVy15ConversationKit12SidebarStateOs5NeverOGSo9NSRunLoopCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVy15ConversationKit12SidebarStateOs5NeverOGSo9NSRunLoopCGMR);
  v39 = *(v6 - 8);
  v40 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v38 = &v35 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v35 - v9;
  v48 = type metadata accessor for NSNotificationCenter.Publisher();
  v11 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_So20NSNotificationCenterC10FoundationE9PublisherVSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_So20NSNotificationCenterC10FoundationE9PublisherVSo17OS_dispatch_queueCGMR);
  v49 = *(v14 - 1);
  v50 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v35 - v15;
  swift_beginAccess();
  v0[10] = MEMORY[0x1E69E7CC0];

  v17 = [objc_opt_self() defaultCenter];
  if (one-time initialization token for showDetailsSideBar != -1)
  {
    swift_once();
  }

  NSNotificationCenter.publisher(for:object:)();

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  v18 = static OS_dispatch_queue.main.getter();
  v52 = v18;
  v19 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v19);
  lazy protocol witness table accessor for type NSNotificationCenter.Publisher and conformance NSNotificationCenter.Publisher();
  lazy protocol witness table accessor for type TUCall and conformance TUCall(&lazy protocol witness table cache variable for type OS_dispatch_queue and conformance OS_dispatch_queue, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610, MEMORY[0x1E69E8028]);
  v20 = v48;
  Publisher.receive<A>(on:options:)();
  outlined destroy of TapInteractionHandler?(v10, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);

  (*(v11 + 8))(v13, v20);
  swift_allocObject();
  swift_weakInit();
  v37 = MEMORY[0x1E695BE98];
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.ReceiveOn<NSNotificationCenter.Publisher, OS_dispatch_queue> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_So20NSNotificationCenterC10FoundationE9PublisherVSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_So20NSNotificationCenterC10FoundationE9PublisherVSo17OS_dispatch_queueCGMR, MEMORY[0x1E695BE98]);
  v21 = v50;
  Publisher<>.sink(receiveValue:)();

  (*(v49 + 8))(v16, v21);
  swift_beginAccess();
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay7Combine14AnyCancellableCGMd, &_sSay7Combine14AnyCancellableCGMR);
  v49 = lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type [AnyCancellable] and conformance [A], &_sSay7Combine14AnyCancellableCGMd, &_sSay7Combine14AnyCancellableCGMR, MEMORY[0x1E69E6348]);
  AnyCancellable.store<A>(in:)();
  swift_endAccess();

  v52 = SidebarStateStream.states.getter();
  v50 = objc_opt_self();
  v22 = [v50 mainRunLoop];
  v51 = v22;
  v48 = type metadata accessor for NSRunLoop.SchedulerOptions();
  v23 = v41;
  __swift_storeEnumTagSinglePayload(v41, 1, 1, v48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy15ConversationKit12SidebarStateOs5NeverOGMd, &_s7Combine12AnyPublisherVy15ConversationKit12SidebarStateOs5NeverOGMR);
  v47 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSRunLoop, 0x1E695DFD0);
  v36 = MEMORY[0x1E695BED8];
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<SidebarState, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy15ConversationKit12SidebarStateOs5NeverOGMd, &_s7Combine12AnyPublisherVy15ConversationKit12SidebarStateOs5NeverOGMR, MEMORY[0x1E695BED8]);
  v46 = lazy protocol witness table accessor for type TUCall and conformance TUCall(&lazy protocol witness table cache variable for type NSRunLoop and conformance NSRunLoop, &lazy cache variable for type metadata for NSRunLoop, 0x1E695DFD0, MEMORY[0x1E696A010]);
  v24 = v38;
  Publisher.receive<A>(on:options:)();
  outlined destroy of TapInteractionHandler?(v23, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMR);

  swift_allocObject();
  swift_weakInit();
  v25 = v37;
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.ReceiveOn<AnyPublisher<SidebarState, Never>, NSRunLoop> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVy15ConversationKit12SidebarStateOs5NeverOGSo9NSRunLoopCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVy15ConversationKit12SidebarStateOs5NeverOGSo9NSRunLoopCGMR, v37);
  v26 = v40;
  Publisher<>.sink(receiveValue:)();

  (*(v39 + 8))(v24, v26);
  swift_beginAccess();
  AnyCancellable.store<A>(in:)();
  swift_endAccess();

  v52 = v1[2];

  v27 = [v50 mainRunLoop];
  v51 = v27;
  __swift_storeEnumTagSinglePayload(v23, 1, 1, v48);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySbs5NeverOGMd, &_s7Combine12AnyPublisherVySbs5NeverOGMR);
  v39 = lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<Bool, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySbs5NeverOGMd, &_s7Combine12AnyPublisherVySbs5NeverOGMR, v36);
  v28 = v42;
  Publisher.receive<A>(on:options:)();
  outlined destroy of TapInteractionHandler?(v23, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMR);

  swift_allocObject();
  swift_weakInit();
  v38 = lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.ReceiveOn<AnyPublisher<Bool, Never>, NSRunLoop> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVySbs5NeverOGSo9NSRunLoopCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVySbs5NeverOGSo9NSRunLoopCGMR, v25);
  v29 = v44;
  Publisher<>.sink(receiveValue:)();

  v30 = *(v43 + 8);
  v30(v28, v29);
  swift_beginAccess();
  AnyCancellable.store<A>(in:)();
  swift_endAccess();

  v31 = v1[6];
  v32 = v1[7];
  __swift_project_boxed_opaque_existential_1(v1 + 3, v31);
  v52 = (*(v32 + 112))(v31, v32);
  v33 = [v50 mainRunLoop];
  v51 = v33;
  __swift_storeEnumTagSinglePayload(v23, 1, 1, v48);
  Publisher.receive<A>(on:options:)();
  outlined destroy of TapInteractionHandler?(v23, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMR);

  swift_allocObject();
  swift_weakInit();
  Publisher<>.sink(receiveValue:)();

  v30(v28, v29);
  swift_beginAccess();
  AnyCancellable.store<A>(in:)();
  swift_endAccess();
}

uint64_t SidebarButtonViewModel.config.getter()
{
  v1 = type metadata accessor for IconButtonWidthRestriction();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for Font.Leading();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6_GlassVSgMd, &_s7SwiftUI6_GlassVSgMR);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v34 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CommunicationsUI15IconButtonStyleV12SystemSymbolVySb_GMd, &_s16CommunicationsUI15IconButtonStyleV12SystemSymbolVySb_GMR);
  OUTLINED_FUNCTION_1();
  v38 = v17;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v34 - v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CommunicationsUI15IconButtonStyleVySbGMd, &_s16CommunicationsUI15IconButtonStyleVySbGMR);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v34 - v22;
  if (v0[9])
  {
    v24 = v0[9];
  }

  else
  {
    v37 = v23;
    static IconButtonStyle.Defaults.mac.iconFont.getter();
    v35 = v1;
    static IconButtonStyle.SystemSymbol<A>.catalystCallControl(name:color:background:glass:font:)();

    v39[3] = type metadata accessor for Material();
    v39[4] = MEMORY[0x1E6981AD0];
    __swift_allocate_boxed_opaque_existential_1(v39);
    static Material.ultraThin.getter();
    static IconButtonStyle.SystemSymbol<A>.controlGlassOff.getter();
    v25 = type metadata accessor for _Glass();
    __swift_storeEnumTagSinglePayload(v15, 0, 1, v25);
    static Color.white.getter();
    v34 = v16;
    static Font.subheadline.getter();
    v36 = v0;
    (*(v9 + 104))(v12, *MEMORY[0x1E6980EA8], v7);
    Font.leading(_:)();

    (*(v9 + 8))(v12, v7);
    static IconButtonStyle.Defaults.mac.iconWidth.getter();
    static IconButtonStyle.Defaults.mac.iconWidth.getter();
    *v6 = 0x401C000000000000;
    v26 = v35;
    (*(v3 + 104))(v6, *MEMORY[0x1E6995BD8], v35);
    static IconButtonStyle.catalystCallControl(symbol:background:glass:labelColor:labelFont:labelPosition:maxWidth:width:widthRestriction:spacing:)();

    (*(v3 + 8))(v6, v26);
    outlined destroy of TapInteractionHandler?(v15, &_s7SwiftUI6_GlassVSgMd, &_s7SwiftUI6_GlassVSgMR);
    (*(v38 + 8))(v20, v34);
    outlined destroy of TapInteractionHandler?(v39, &_s7SwiftUI10ShapeStyle_pSgMd, &_s7SwiftUI10ShapeStyle_pSgMR);
    v27 = objc_opt_self();
    v28 = [v27 conversationKit];
    v38 = OUTLINED_FUNCTION_2_173(0xD000000000000018, 0x80000001BC5242D0);

    v29 = v36;
    v30 = v36[6];
    v31 = v36[7];
    __swift_project_boxed_opaque_existential_1(v36 + 3, v30);
    (*(v31 + 104))(v30, v31);
    v32 = [v27 conversationKit];
    OUTLINED_FUNCTION_2_173(0xD000000000000011, 0x80000001BC5242F0);

    LOBYTE(v32) = SidebarStateStream.currentState.getter();
    swift_allocObject();
    swift_weakInit();
    LOBYTE(v39[0]) = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CommunicationsUI16IconButtonConfigCySbGMd, &_s16CommunicationsUI16IconButtonConfigCySbGMR);
    swift_allocObject();
    v24 = IconButtonConfig.init(style:title:hasBadge:accessibilityLabel:accessibilityValue:accessibilityIdentifier:state:enabled:didTap:)();
    v29[9] = v24;
  }

  return v24;
}

Swift::Void __swiftcall SidebarButtonViewModel.didTap()()
{
  SidebarButtonViewModel.config.getter();
  v0 = IconButtonConfig.state.modify();
  *v1 = !*v1;
  v0(v2, 0);

  IconButtonConfig.state.getter();

  SidebarStateStream.update(_:)(v2[0]);
}

uint64_t closure #1 in SidebarButtonViewModel.config.getter(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    SidebarButtonViewModel.didTap()();
  }

  return result;
}

uint64_t closure #1 in SidebarButtonViewModel.observeState()(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for conversationController != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.conversationController);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1BBC58000, v3, v4, "Received notification about showing details side bar.", v5, 2u);
    MEMORY[0x1BFB23DF0](v5, -1, -1);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    SidebarButtonViewModel.config.getter();
    IconButtonConfig.state.setter();

    SidebarStateStream.update(_:)(ConversationKit_SidebarState_visible);
  }

  return result;
}

uint64_t closure #2 in SidebarButtonViewModel.observeState()(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    SidebarButtonViewModel.config.getter();
    IconButtonConfig.state.getter();

    if (v2 != v4)
    {

      IconButtonConfig.state.setter();
    }
  }

  return result;
}

uint64_t closure #3 in SidebarButtonViewModel.observeState()(unsigned __int8 *a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    SidebarButtonViewModel.config.getter();
    IconButtonConfig.enabled.setter();
  }

  return result;
}

uint64_t closure #4 in SidebarButtonViewModel.observeState()(unsigned __int8 *a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    SidebarButtonViewModel.config.getter();
    IconButtonConfig.hasBadge.setter();
  }

  return result;
}

uint64_t SidebarButtonViewModel.deinit()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return v0;
}

uint64_t SidebarButtonViewModel.__deallocating_deinit()
{
  SidebarButtonViewModel.deinit();

  return swift_deallocClassInstance();
}

uint64_t closure #1 in default argument 1 of static IconButtonStyle.SystemSymbol<A>.catalystCallControl(name:color:background:glass:font:)(uint64_t a1)
{
  if (a1)
  {
    return static Color.black.getter();
  }

  else
  {
    return static Color.white.getter();
  }
}

_BYTE *storeEnumTagSinglePayload for SidebarState(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t InCallControlsTitleCell.ButtonType.debugDescription.getter(char a1)
{
  result = 0x6567617373656D2ELL;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0xD00000000000001ELL;
      break;
    case 4:
      result = 0xD000000000000014;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t InCallControlsTitleCell.ButtonType.init(rawValue:)(unint64_t result)
{
  if (result >= 5)
  {
    return 5;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type InCallControlsTitleCell.ButtonType and conformance InCallControlsTitleCell.ButtonType()
{
  result = lazy protocol witness table cache variable for type InCallControlsTitleCell.ButtonType and conformance InCallControlsTitleCell.ButtonType;
  if (!lazy protocol witness table cache variable for type InCallControlsTitleCell.ButtonType and conformance InCallControlsTitleCell.ButtonType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InCallControlsTitleCell.ButtonType and conformance InCallControlsTitleCell.ButtonType);
  }

  return result;
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance InCallControlsTitleCell.ButtonType@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = InCallControlsTitleCell.ButtonType.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance InCallControlsTitleCell.ButtonType@<X0>(uint64_t *a1@<X8>)
{
  result = InCallControlsTitleCell.ButtonType.rawValue.getter(*v1);
  *a1 = result;
  return result;
}

_BYTE *storeEnumTagSinglePayload for InCallControlsTitleCell.ButtonType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t CancelButtonViewModel.__allocating_init(service:letMeInViewModel:)(__int128 *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  CancelButtonViewModel.init(service:letMeInViewModel:)(a1, a2);
  return v4;
}

uint64_t CancelButtonViewModel.init(service:letMeInViewModel:)(__int128 *a1, uint64_t a2)
{
  *(v2 + 64) = 1;
  *(v2 + 72) = 0;
  outlined init with take of TapInteractionHandler(a1, v2 + 16);
  *(v2 + 56) = a2;
  return v2;
}

uint64_t CancelButtonViewModel.config.getter()
{
  v1 = v0;
  v2 = type metadata accessor for CallControlTextButtonStyle(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = (&v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (*(v1 + 72))
  {
    v5 = *(v1 + 72);
  }

  else
  {
    v6 = static IconButtonStyle.SystemSymbol<A>.controlBackgroundOff.getter();
    v7 = *(v2 + 20);
    static ButtonRole.cancel.getter();
    v8 = type metadata accessor for ButtonRole();
    __swift_storeEnumTagSinglePayload(v4 + v7, 0, 1, v8);
    *v4 = v6;
    v9 = objc_opt_self();
    v10 = [v9 conversationKit];
    v23._object = 0xE000000000000000;
    v11._countAndFlagsBits = 0x6C65636E6143;
    v11._object = 0xE600000000000000;
    v12.value._countAndFlagsBits = 0x61737265766E6F43;
    v12.value._object = 0xEF74694B6E6F6974;
    v13._countAndFlagsBits = 0;
    v13._object = 0xE000000000000000;
    v23._countAndFlagsBits = 0;
    v14 = NSLocalizedString(_:tableName:bundle:value:comment:)(v11, v12, v10, v13, v23);

    v15 = [v9 conversationKit];
    v24._object = 0xE000000000000000;
    v16._object = 0x80000001BC4F46F0;
    v16._countAndFlagsBits = 0xD000000000000010;
    v17.value._countAndFlagsBits = 0x61737265766E6F43;
    v17.value._object = 0xEF74694B6E6F6974;
    v18._countAndFlagsBits = 0;
    v18._object = 0xE000000000000000;
    v24._countAndFlagsBits = 0;
    v19 = NSLocalizedString(_:tableName:bundle:value:comment:)(v16, v17, v15, v18, v24);

    v20 = swift_allocObject();
    swift_weakInit();
    type metadata accessor for CallControlsTextButtonConfiguration(0);
    swift_allocObject();
    v5 = CallControlsTextButtonConfiguration.init(buttonStyle:text:accessibilityLabel:accessibilityIdentifier:enabled:didTap:)(v4, v14._countAndFlagsBits, v14._object, v19._countAndFlagsBits, v19._object, 0x75426C65636E6163, 0xEC0000006E6F7474, 1, partial apply for closure #1 in LeaveButtonViewModel.config.getter, v20);
    *(v1 + 72) = v5;
  }

  return v5;
}

uint64_t CancelButtonViewModel.enabled(for:)(uint64_t a1, uint64_t a2, char a3)
{
  v4 = (a1 & 0xE100000000) == 0x4100000000 && a2 == 2;
  v5 = v4;
  if (v4)
  {
    *(v3 + 64) = a3 & 1;
    CancelButtonViewModel.isAppFrontMost.didset();
  }

  return v5;
}

Swift::Void __swiftcall CancelButtonViewModel.didTap()()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  (*(v2 + 176))(v1, v2);
}

void CancelButtonViewModel.isAppFrontMost.didset()
{
  if ((*(v0 + 64) & 1) == 0)
  {
    LetMeInCountdownViewModel.skipCountdown()();
  }
}

uint64_t CancelButtonViewModel.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return v0;
}

uint64_t CancelButtonViewModel.__deallocating_deinit()
{
  CancelButtonViewModel.deinit();

  return swift_deallocClassInstance();
}

double CGRect.rounded(originRule:sizeRule:toScale:)(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6, double a7)
{
  v13 = CGFloat.rounded(_:toScale:)(a1, a3, a4);
  CGFloat.rounded(_:toScale:)(a1, a3, a5);
  CGFloat.rounded(_:toScale:)(a2, a3, a6);
  CGFloat.rounded(_:toScale:)(a2, a3, a7);
  return v13;
}

double CGRect.rounded(originRule:sizeRule:toScaleOf:)()
{
  OUTLINED_FUNCTION_20_2();
  v5 = v4;
  v7 = v6;
  [v8 displayScale];
  v10 = v9;
  v11 = CGFloat.rounded(_:toScale:)(v7, v9, v3);
  CGFloat.rounded(_:toScale:)(v7, v10, v2);
  CGFloat.rounded(_:toScale:)(v5, v10, v1);
  CGFloat.rounded(_:toScale:)(v5, v10, v0);
  return v11;
}

{
  OUTLINED_FUNCTION_20_2();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  swift_getObjectType();

  return specialized CGRect.rounded(originRule:sizeRule:toScaleOf:)(v9, v7, v5, v3, v2, v1, v0);
}

double specialized CGRect.rounded(originRule:sizeRule:toScaleOf:)(uint64_t a1, uint64_t a2, id a3, double a4, double a5, double a6, double a7)
{
  v13 = [a3 traitCollection];
  [v13 displayScale];
  v15 = v14;
  v16 = CGFloat.rounded(_:toScale:)(a1, v14, a4);
  CGFloat.rounded(_:toScale:)(a1, v15, a5);
  CGFloat.rounded(_:toScale:)(a2, v15, a6);
  CGFloat.rounded(_:toScale:)(a2, v15, a7);

  return v16;
}

uint64_t ScreenShareButtonViewModel.__allocating_init(service:)(__int128 *a1)
{
  v2 = swift_allocObject();
  ScreenShareButtonViewModel.init(service:)(a1);
  return v2;
}

void *ScreenShareButtonViewModel.init(service:)(__int128 *a1)
{
  v2 = MEMORY[0x1E69E7CC0];
  v1[8] = 0;
  v1[9] = 0;
  v1[7] = v2;
  outlined init with take of ImageName(a1, (v1 + 2));
  return v1;
}

void *ScreenShareButtonViewModel.shareButtonConfig.getter()
{
  if (v0[8])
  {
    v1 = v0[8];
  }

  else
  {
    v2 = v0;
    ScreenShareButtonViewModel.iconButtonConfig.getter();
    v3 = v0[5];
    v4 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v3);
    (*(v4 + 32))(v3, v4);
    OUTLINED_FUNCTION_20();
    v5 = swift_allocObject();
    OUTLINED_FUNCTION_20_0(v5);
    type metadata accessor for ShareScreenButtonConfig(0);
    swift_allocObject();
    v1 = ShareScreenButtonConfig.init(buttonConfig:menuItems:didTapAskToScreenShare:)();
    v2[8] = v1;
  }

  return v1;
}

uint64_t closure #2 in ScreenShareButtonViewModel.controlType.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CommunicationsUI10IconButtonVy15ConversationKit20ShareMenuActionStateVGMd, &_s16CommunicationsUI10IconButtonVy15ConversationKit20ShareMenuActionStateVGMR);
  MEMORY[0x1EEE9AC00](v0);
  ScreenShareButtonViewModel.iconButtonConfig.getter();
  IconButton.init(config:action:)();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type IconButton<ShareMenuActionState> and conformance IconButton<A>, &_s16CommunicationsUI10IconButtonVy15ConversationKit20ShareMenuActionStateVGMd, &_s16CommunicationsUI10IconButtonVy15ConversationKit20ShareMenuActionStateVGMR, MEMORY[0x1E6995958]);
  return AnyView.init<A>(_:)();
}

uint64_t ScreenShareButtonViewModel.iconButtonConfig.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CommunicationsUI15IconButtonStyleVy15ConversationKit20ShareMenuActionStateVGMd, &_s16CommunicationsUI15IconButtonStyleVy15ConversationKit20ShareMenuActionStateVGMR);
  OUTLINED_FUNCTION_22(v2);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v3);
  if (v0[9])
  {
    v5 = v0[9];
  }

  else
  {
    ScreenShareButtonViewModel.buttonStyle()(v26 - v4);
    v6 = objc_opt_self();
    v7 = [v6 conversationKit];
    v30._object = 0xE000000000000000;
    v8._countAndFlagsBits = OUTLINED_FUNCTION_9_103();
    v9._countAndFlagsBits = 0;
    v9._object = 0xE000000000000000;
    v30._countAndFlagsBits = 0;
    v11 = NSLocalizedString(_:tableName:bundle:value:comment:)(v8, v10, v7, v9, v30);
    v26[1] = v11._object;
    v26[2] = v11._countAndFlagsBits;

    v12 = [v6 conversationKit];
    v31._object = 0xE000000000000000;
    v13._countAndFlagsBits = OUTLINED_FUNCTION_9_103();
    v14._countAndFlagsBits = 0;
    v14._object = 0xE000000000000000;
    v31._countAndFlagsBits = 0;
    v26[0] = NSLocalizedString(_:tableName:bundle:value:comment:)(v13, v15, v12, v14, v31)._countAndFlagsBits;

    v16 = v1[5];
    v17 = v1[6];
    __swift_project_boxed_opaque_existential_1(v1 + 2, v16);
    LOWORD(v16) = (*(v17 + 16))(v16, v17);
    v19 = v18;
    v21 = v20;
    v22 = v1[5];
    v23 = v1[6];
    __swift_project_boxed_opaque_existential_1(v1 + 2, v22);
    (*(v23 + 16))(v22, v23);
    OUTLINED_FUNCTION_20();
    v24 = swift_allocObject();
    OUTLINED_FUNCTION_20_0(v24);
    v27 = v16 & 0x101;
    v28 = v19;
    v29 = v21 & 0x101;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CommunicationsUI16IconButtonConfigCy15ConversationKit20ShareMenuActionStateVGMd, &_s16CommunicationsUI16IconButtonConfigCy15ConversationKit20ShareMenuActionStateVGMR);
    swift_allocObject();
    v5 = IconButtonConfig.init(style:title:hasBadge:accessibilityLabel:accessibilityValue:accessibilityIdentifier:state:enabled:didTap:)();
    v1[9] = v5;
  }

  return v5;
}

uint64_t ScreenShareButtonViewModel.enabled(for:)(unint64_t a1)
{
  v1 = (a1 >> 37) & 7;
  v2 = v1 - 2;
  if (v1)
  {
    v3 = BYTE4(a1) ^ 1;
  }

  else
  {
    v3 = 1;
  }

  if (v2 < 5)
  {
    v3 = 0;
  }

  if (a1 == 3)
  {
    v3 = 0;
  }

  return v3 & 1;
}

Swift::Void __swiftcall ScreenShareButtonViewModel.onAppear()()
{
  swift_beginAccess();
  *(v0 + 56) = MEMORY[0x1E69E7CC0];

  ScreenShareButtonViewModel.observeShareMenuState()();
  ScreenShareButtonViewModel.observeParticipantState()();
}

Swift::Void __swiftcall ScreenShareButtonViewModel.observeShareMenuState()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMR);
  OUTLINED_FUNCTION_22(v1);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v2);
  v4 = v21 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVy15ConversationKit20ShareMenuActionStateVs5NeverOGSo9NSRunLoopCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVy15ConversationKit20ShareMenuActionStateVs5NeverOGSo9NSRunLoopCGMR);
  OUTLINED_FUNCTION_5_86(v5);
  v7 = v6;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v21 - v9;
  v11 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v12 = OUTLINED_FUNCTION_182();
  v21[2] = v13(v12, v11);
  v14 = [objc_opt_self() mainRunLoop];
  v21[5] = v14;
  v15 = type metadata accessor for NSRunLoop.SchedulerOptions();
  OUTLINED_FUNCTION_11_61(v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy15ConversationKit20ShareMenuActionStateVs5NeverOGMd, &_s7Combine12AnyPublisherVy15ConversationKit20ShareMenuActionStateVs5NeverOGMR);
  type metadata accessor for NSRunLoop();
  v16 = OUTLINED_FUNCTION_1_19(&lazy protocol witness table cache variable for type AnyPublisher<ShareMenuActionState, Never> and conformance AnyPublisher<A, B>);
  v17 = lazy protocol witness table accessor for type NSRunLoop and conformance NSRunLoop();
  OUTLINED_FUNCTION_3_9(v17);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v4, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMR);

  OUTLINED_FUNCTION_20();
  v18 = swift_allocObject();
  OUTLINED_FUNCTION_20_0(v18);
  OUTLINED_FUNCTION_22_4();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(v19, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVy15ConversationKit20ShareMenuActionStateVs5NeverOGSo9NSRunLoopCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVy15ConversationKit20ShareMenuActionStateVs5NeverOGSo9NSRunLoopCGMR, v20);
  OUTLINED_FUNCTION_7_13();
  OUTLINED_FUNCTION_182();

  (*(v7 + 8))(v10, v16);
  OUTLINED_FUNCTION_10_53();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay7Combine14AnyCancellableCGMd, &_sSay7Combine14AnyCancellableCGMR);
  OUTLINED_FUNCTION_2_106(&lazy protocol witness table cache variable for type [AnyCancellable] and conformance [A]);
  AnyCancellable.store<A>(in:)();
  swift_endAccess();
}

Swift::Void __swiftcall ScreenShareButtonViewModel.observeParticipantState()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMR);
  OUTLINED_FUNCTION_22(v1);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v2);
  v4 = v22 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVyyts5NeverOGSo9NSRunLoopCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVyyts5NeverOGSo9NSRunLoopCGMR);
  OUTLINED_FUNCTION_5_86(v5);
  v7 = v6;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v22 - v9;
  v11 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v12 = OUTLINED_FUNCTION_182();
  v22[2] = v13(v12, v11);
  v14 = [objc_opt_self() mainRunLoop];
  v22[5] = v14;
  v15 = type metadata accessor for NSRunLoop.SchedulerOptions();
  OUTLINED_FUNCTION_11_61(v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVyyts5NeverOGMd, &_s7Combine12AnyPublisherVyyts5NeverOGMR);
  type metadata accessor for NSRunLoop();
  v16 = OUTLINED_FUNCTION_1_19(&lazy protocol witness table cache variable for type AnyPublisher<(), Never> and conformance AnyPublisher<A, B>);
  v17 = lazy protocol witness table accessor for type NSRunLoop and conformance NSRunLoop();
  OUTLINED_FUNCTION_3_9(v17);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v4, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMR);

  OUTLINED_FUNCTION_20();
  v18 = swift_allocObject();
  OUTLINED_FUNCTION_20_0(v18);
  v19 = swift_allocObject();
  *(v19 + 16) = partial apply for closure #1 in ScreenShareButtonViewModel.observeParticipantState();
  *(v19 + 24) = v18;
  OUTLINED_FUNCTION_22_4();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(v20, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVyyts5NeverOGSo9NSRunLoopCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVyyts5NeverOGSo9NSRunLoopCGMR, v21);
  OUTLINED_FUNCTION_7_13();
  OUTLINED_FUNCTION_182();

  (*(v7 + 8))(v10, v16);
  OUTLINED_FUNCTION_10_53();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay7Combine14AnyCancellableCGMd, &_sSay7Combine14AnyCancellableCGMR);
  OUTLINED_FUNCTION_2_106(&lazy protocol witness table cache variable for type [AnyCancellable] and conformance [A]);
  AnyCancellable.store<A>(in:)();
  swift_endAccess();
}

Swift::Void __swiftcall ScreenShareButtonViewModel.didTapScreenShare()()
{
  v1 = v0;
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  v2 = OUTLINED_FUNCTION_2_14();
  v4 = v3(v2);
  if (((v4 | v5) & 0x100) != 0)
  {
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_2_9(&one-time initialization token for conversationKit);
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Logger.conversationKit);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_75(&dword_1BBC58000, v9, v10, "dismissScreenShare (iPhone/iPad)");
      OUTLINED_FUNCTION_27();
    }
  }

  else
  {
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_2_9(&one-time initialization token for conversationKit);
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Logger.conversationKit);
    v7 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v12))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_75(&dword_1BBC58000, v13, v14, "didTapScreenShare (iPhone/iPad)");
      OUTLINED_FUNCTION_27();
    }
  }

  __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  v15 = OUTLINED_FUNCTION_2_14();
  v16(v15);
}

uint64_t ScreenShareButtonViewModel.didTapAskToScreenShare(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Participant(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_2_9(&one-time initialization token for conversationKit);
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logger.conversationKit);
  outlined init with copy of Participant(a1, v7);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    v13 = *&v7[*(v4 + 28)];
    if (v13)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    *(v11 + 4) = v14;
    *v12 = v13;
    outlined destroy of Participant(v7);
    _os_log_impl(&dword_1BBC58000, v9, v10, "Requesting participant with handle: %@ to screen share", v11, 0xCu);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v12, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }

  else
  {

    outlined destroy of Participant(v7);
  }

  v15 = v2[5];
  v16 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v15);
  return (*(v16 + 64))(a1, v15, v16);
}

uint64_t closure #1 in ScreenShareButtonViewModel.observeShareMenuState()(unsigned __int8 *a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    ScreenShareButtonViewModel.shareButtonConfig.getter();

    ShareScreenButtonConfig.buttonConfig.getter();

    IconButtonConfig.state.setter();
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    ScreenShareButtonViewModel.shareButtonConfig.getter();

    ShareScreenButtonConfig.buttonConfig.getter();

    IconButtonConfig.enabled.setter();
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    ScreenShareButtonViewModel.updateLabels()();
  }

  return result;
}

uint64_t ScreenShareButtonViewModel.updateLabels()()
{
  ScreenShareButtonViewModel.shareButtonConfig.getter();
  ShareScreenButtonConfig.buttonConfig.getter();

  IconButtonConfig.state.getter();

  ShareScreenButtonConfig.buttonConfig.getter();

  v0 = [objc_opt_self() conversationKit];
  v1 = "onKit21CancelButtonViewModel";
  if (v7)
  {
    v1 = "$_iconButtonConfig";
    v2 = 0xD00000000000001BLL;
  }

  else
  {
    v2 = 0xD00000000000001CLL;
  }

  v8._object = 0xE000000000000000;
  v3.value._countAndFlagsBits = 0x61737265766E6F43;
  v3.value._object = 0xEF74694B6E6F6974;
  v4 = v1 | 0x8000000000000000;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  v8._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(*&v2, v3, v0, v5, v8);

  IconButtonConfig.accessibilityLabel.setter();
}

uint64_t closure #1 in ScreenShareButtonViewModel.observeParticipantState()(uint64_t a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    ScreenShareButtonViewModel.updateMenuItems()();
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    ScreenShareButtonViewModel.updateLabels()();
  }

  return result;
}

uint64_t ScreenShareButtonViewModel.updateMenuItems()()
{
  ScreenShareButtonViewModel.shareButtonConfig.getter();
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = (*(v2 + 32))(v1, v2);
  ShareScreenButtonConfig.menuItems.setter(v3);
}

uint64_t ScreenShareButtonViewModel.buttonStyle()@<X0>(uint64_t a1@<X8>)
{
  v44 = a1;
  v43 = type metadata accessor for IconButtonWidthRestriction();
  v41 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v39 = &v29 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for Font.Leading();
  v37 = *(v2 - 8);
  v38 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v36 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6_GlassVSgMd, &_s7SwiftUI6_GlassVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v34 = &v29 - v5;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CommunicationsUI15IconButtonStyleV12SystemSymbolVy15ConversationKit20ShareMenuActionStateV_GMd, &_s16CommunicationsUI15IconButtonStyleV12SystemSymbolVy15ConversationKit20ShareMenuActionStateV_GMR);
  v40 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v31 = &v29 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CommunicationsUI15IconButtonStyleV12SystemSymbolVySb_GMd, &_s16CommunicationsUI15IconButtonStyleV12SystemSymbolVySb_GMR);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v29 - v12;
  static IconButtonStyle.Defaults.phone.iconFont.getter();
  static IconButtonStyle.SystemSymbol<A>.iosCallControl(name:color:background:glass:font:)();

  v30 = *(v8 + 16);
  v33 = v13;
  v30(v10, v13, v7);
  v14 = *(v8 + 80);
  v35 = v8;
  v15 = (v14 + 16) & ~v14;
  v16 = swift_allocObject();
  v17 = *(v8 + 32);
  v17(v16 + v15, v10, v7);
  v32 = v7;
  v30(v10, v13, v7);
  v18 = swift_allocObject();
  v17(v18 + v15, v10, v7);
  static IconButtonStyle.Defaults.phone.iconFont.getter();
  v19 = v31;
  static IconButtonStyle.SystemSymbol.iosCallControl(name:color:background:glass:font:)();

  v20 = type metadata accessor for _Glass();
  memset(v45, 0, sizeof(v45));
  v46 = 0;
  v21 = v34;
  __swift_storeEnumTagSinglePayload(v34, 1, 1, v20);
  static Color.white.getter();
  static Font.subheadline.getter();
  v23 = v36;
  v22 = v37;
  v24 = v38;
  (*(v37 + 104))(v36, *MEMORY[0x1E6980EA8], v38);
  Font.leading(_:)();

  (*(v22 + 8))(v23, v24);
  static IconButtonStyle.Defaults.phone.iconWidth.getter();
  v25 = v41;
  v26 = v39;
  v27 = v43;
  (*(v41 + 104))(v39, *MEMORY[0x1E6995BD0], v43);
  static IconButtonStyle.iosCallControl(symbol:background:glass:labelColor:labelFont:labelPosition:maxWidth:width:widthRestriction:spacing:)();

  (*(v25 + 8))(v26, v27);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v21, &_s7SwiftUI6_GlassVSgMd, &_s7SwiftUI6_GlassVSgMR);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v45, &_s7SwiftUI10ShapeStyle_pSgMd, &_s7SwiftUI10ShapeStyle_pSgMR);
  (*(v40 + 8))(v19, v42);
  return (*(v35 + 8))(v33, v32);
}