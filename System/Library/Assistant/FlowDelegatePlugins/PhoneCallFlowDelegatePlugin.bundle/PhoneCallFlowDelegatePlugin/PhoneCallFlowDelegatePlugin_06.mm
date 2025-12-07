uint64_t AnnounceVoicemailPromptForValueFlowStrategy.makeFlowCancelledResponse()()
{
  OUTLINED_FUNCTION_15();
  *(v0 + 16) = type metadata accessor for PhoneError(0);
  *(v0 + 24) = swift_task_alloc();

  return _swift_task_switch(AnnounceVoicemailPromptForValueFlowStrategy.makeFlowCancelledResponse(), 0, 0);
}

{
  v1 = *(v0 + 24);
  *v1 = 0;
  *(v1 + 8) = 0;
  *(v1 + 16) = 2;
  swift_storeEnumTagMultiPayload();
  lazy protocol witness table accessor for type PhoneError and conformance PhoneError();
  swift_allocError();
  PhoneError.logged()(v2);
  outlined destroy of PhoneError(v1);
  swift_willThrow();

  OUTLINED_FUNCTION_11();

  return v3();
}

uint64_t AnnounceVoicemailPromptForValueFlowStrategy.makeErrorResponse(_:)(uint64_t a1)
{
  swift_willThrow();
  swift_errorRetain();
  OUTLINED_FUNCTION_11();

  return v1();
}

uint64_t AnnounceVoicemailPromptForValueFlowStrategy.getSystemDialogAct()@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v1 = type metadata accessor for Siri_Nlu_External_SystemGaveOptions();
  OUTLINED_FUNCTION_7();
  v3 = v2;
  __chkstk_darwin(v4);
  v6 = &v28[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v9 = &v28[-v8];
  Siri_Nlu_External_SystemGaveOptions.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D27_Nlu_External_UserDialogActVGMd, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D27_Nlu_External_UserDialogActVGMR);
  type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_426980;
  v11 = v32;
  AnnounceVoicemailPromptForValueFlowStrategy.playVoicemailDialogAct()();
  if (v11)
  {
    *(v10 + 16) = 0;

    return (*(v3 + 8))(v9, v1);
  }

  else
  {
    v30 = v6;
    v32 = v1;
    AnnounceVoicemailPromptForValueFlowStrategy.callBackDialogAct()();
    AnnounceVoicemailPromptForValueFlowStrategy.callReferenceDialogAct()();
    Siri_Nlu_External_SystemGaveOptions.choices.setter();
    v13 = v9;
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static Logger.siriPhone);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();
    v17 = v3;
    if (os_log_type_enabled(v15, v16))
    {
      OUTLINED_FUNCTION_13_14();
      v18 = swift_slowAlloc();
      OUTLINED_FUNCTION_12_17();
      v19 = swift_slowAlloc();
      v33 = v19;
      *v18 = 136315138;
      swift_beginAccess();
      v29 = v16;
      Siri_Nlu_External_SystemGaveOptions.choices.getter();
      swift_endAccess();
      v20 = v13;
      v21 = Array.description.getter();
      v23 = v22;

      v24 = v21;
      v13 = v20;
      v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v23, &v33);

      *(v18 + 4) = v25;
      _os_log_impl(&dword_0, v15, v29, "Returning NLUSystemGaveOptions: %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);
      OUTLINED_FUNCTION_8();

      OUTLINED_FUNCTION_8();
    }

    v26 = v32;
    v27 = v30;
    Siri_Nlu_External_SystemDialogAct.init()();
    swift_beginAccess();
    (*(v17 + 16))(v27, v13, v26);
    Siri_Nlu_External_SystemDialogAct.gaveOptions.setter();
    return (*(v17 + 8))(v13, v26);
  }
}

uint64_t AnnounceVoicemailPromptForValueFlowStrategy.playVoicemailDialogAct()()
{
  OUTLINED_FUNCTION_6_13();
  v0 = type metadata accessor for UsoEntity_common_ReferenceType.DefinedValues();
  OUTLINED_FUNCTION_7();
  v2 = v1;
  __chkstk_darwin(v3);
  OUTLINED_FUNCTION_4();
  v6 = v5 - v4;
  v7 = type metadata accessor for UsoEntityBuilder_common_ReferenceType();
  OUTLINED_FUNCTION_41_1(v7);
  UsoEntityBuilder_common_ReferenceType.init()();
  v8 = OUTLINED_FUNCTION_14_14();
  v9(v8);
  dispatch thunk of UsoEntityBuilder_common_ReferenceType.setDefinedValue(value:)();
  (*(v2 + 8))(v6, v0);
  v10 = type metadata accessor for UsoEntityBuilder_common_Voicemail();
  OUTLINED_FUNCTION_41_1(v10);
  UsoEntityBuilder_common_Voicemail.init()();

  dispatch thunk of UsoEntityBuilderGlobalArgs.setUsoReferenceType(value:)();

  v11 = type metadata accessor for UsoTaskBuilder_play_common_Voicemail();
  OUTLINED_FUNCTION_41_1(v11);
  UsoTaskBuilder_play_common_Voicemail.init()();
  dispatch thunk of Uso_VerbTemplateBuilder_Reference.setReference(value:)();
  UsoTaskBuilder.toUserStatedTaskDialogAct()();
}

uint64_t AnnounceVoicemailPromptForValueFlowStrategy.callBackDialogAct()()
{
  OUTLINED_FUNCTION_6_13();
  v0 = type metadata accessor for UsoEntityBuilder_common_PhoneCall();
  OUTLINED_FUNCTION_41_1(v0);
  UsoEntityBuilder_common_PhoneCall.init()();
  v1 = type metadata accessor for UsoTaskBuilder_callback_common_PhoneCall();
  OUTLINED_FUNCTION_41_1(v1);
  UsoTaskBuilder_callback_common_PhoneCall.init()();
  dispatch thunk of Uso_VerbTemplateBuilder_ReferenceTarget.setTarget(value:)();
  UsoTaskBuilder.toUserStatedTaskDialogAct()();
}

uint64_t AnnounceVoicemailPromptForValueFlowStrategy.callReferenceDialogAct()()
{
  OUTLINED_FUNCTION_6_13();
  v0 = type metadata accessor for UsoEntity_common_ReferenceType.DefinedValues();
  OUTLINED_FUNCTION_7();
  v2 = v1;
  __chkstk_darwin(v3);
  OUTLINED_FUNCTION_4();
  v6 = v5 - v4;
  v7 = type metadata accessor for UsoEntityBuilder_common_ReferenceType();
  OUTLINED_FUNCTION_41_1(v7);
  UsoEntityBuilder_common_ReferenceType.init()();
  v8 = OUTLINED_FUNCTION_14_14();
  v9(v8);
  dispatch thunk of UsoEntityBuilder_common_ReferenceType.setDefinedValue(value:)();
  (*(v2 + 8))(v6, v0);
  v10 = type metadata accessor for UsoEntityBuilder_common_Person();
  OUTLINED_FUNCTION_41_1(v10);
  UsoEntityBuilder_common_Person.init()();

  dispatch thunk of UsoEntityBuilderGlobalArgs.setUsoReferenceType(value:)();

  v11 = type metadata accessor for UsoEntityBuilder_common_PhoneCall();
  OUTLINED_FUNCTION_41_1(v11);
  UsoEntityBuilder_common_PhoneCall.init()();

  dispatch thunk of UsoEntityBuilder_common_PhoneCall.addRecipients(value:)();

  v12 = type metadata accessor for UsoTaskBuilder_call_common_PhoneCall();
  OUTLINED_FUNCTION_41_1(v12);
  UsoTaskBuilder_call_common_PhoneCall.init()();
  swift_allocObject();
  UsoEntityBuilder_common_PhoneCall.init()();
  dispatch thunk of Uso_VerbTemplateBuilder_Target.setTarget(value:)();

  UsoTaskBuilder.toUserStatedTaskDialogAct()();
}

uint64_t protocol witness for PromptForValueFlowStrategyAsync.parseValueResponse(input:) in conformance AnnounceVoicemailPromptForValueFlowStrategy(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = a1;
  v7 = (*(*v2 + 104) + **(*v2 + 104));
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = protocol witness for PromptForValueFlowStrategyAsync.parseValueResponse(input:) in conformance AnnounceVoicemailPromptForValueFlowStrategy;

  return v7(a2);
}

uint64_t protocol witness for PromptForValueFlowStrategyAsync.parseValueResponse(input:) in conformance AnnounceVoicemailPromptForValueFlowStrategy(char a1)
{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v6 = *(v5 + 8);

  return v6();
}

uint64_t protocol witness for PromptForValueFlowStrategyAsync.makePromptForValue() in conformance AnnounceVoicemailPromptForValueFlowStrategy(uint64_t a1)
{
  v6 = (*(*v1 + 120) + **(*v1 + 120));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance AnnounceVoicemailPromptForValueFlowStrategy;

  return v6(a1);
}

uint64_t protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance AnnounceVoicemailPromptForValueFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance AnnounceVoicemailPromptForValueFlowStrategy;

  return PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse()(a1, a2, a3);
}

uint64_t protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnLowConfidence() in conformance AnnounceVoicemailPromptForValueFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance AnnounceVoicemailPromptForValueFlowStrategy;

  return PromptForValueFlowStrategyAsync.makeRepromptOnLowConfidence()(a1, a2, a3);
}

uint64_t protocol witness for PromptForValueFlowStrategyAsync.makeFlowCancelledResponse() in conformance AnnounceVoicemailPromptForValueFlowStrategy(uint64_t a1)
{
  v6 = (*(*v1 + 128) + **(*v1 + 128));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = protocol witness for PromptForValueFlowStrategyAsync.makeFlowCancelledResponse() in conformance AnnounceVoicemailPromptForValueFlowStrategy;

  return v6(a1);
}

uint64_t protocol witness for PromptForValueFlowStrategyAsync.makeFlowCancelledResponse() in conformance AnnounceVoicemailPromptForValueFlowStrategy()
{
  OUTLINED_FUNCTION_15();

  OUTLINED_FUNCTION_11();

  return v0();
}

uint64_t protocol witness for PromptForValueFlowStrategyAsync.makeErrorResponse(_:) in conformance AnnounceVoicemailPromptForValueFlowStrategy(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 136) + **(*v2 + 136));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance AnnounceVoicemailPromptForValueFlowStrategy;

  return v8(a1, a2);
}

unint64_t lazy protocol witness table accessor for type PhoneError and conformance PhoneError()
{
  result = lazy protocol witness table cache variable for type PhoneError and conformance PhoneError;
  if (!lazy protocol witness table cache variable for type PhoneError and conformance PhoneError)
  {
    type metadata accessor for PhoneError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneError and conformance PhoneError);
  }

  return result;
}

uint64_t outlined destroy of PhoneError(uint64_t a1)
{
  v2 = type metadata accessor for PhoneError(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type AnnounceVoicemailPromptForValueFlowStrategy.VoicemailAnnouncementResponse and conformance AnnounceVoicemailPromptForValueFlowStrategy.VoicemailAnnouncementResponse()
{
  result = lazy protocol witness table cache variable for type AnnounceVoicemailPromptForValueFlowStrategy.VoicemailAnnouncementResponse and conformance AnnounceVoicemailPromptForValueFlowStrategy.VoicemailAnnouncementResponse;
  if (!lazy protocol witness table cache variable for type AnnounceVoicemailPromptForValueFlowStrategy.VoicemailAnnouncementResponse and conformance AnnounceVoicemailPromptForValueFlowStrategy.VoicemailAnnouncementResponse)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnnounceVoicemailPromptForValueFlowStrategy.VoicemailAnnouncementResponse and conformance AnnounceVoicemailPromptForValueFlowStrategy.VoicemailAnnouncementResponse);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AnnounceVoicemailPromptForValueFlowStrategy.VoicemailAnnouncementResponse(_BYTE *result, unsigned int a2, unsigned int a3)
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

void AnnounceVoicemailReadingFlow.__allocating_init(synchronousBurstIndex:voicemail:hintHistory:burstNotificationManager:sharedGlobals:announceVoicemailCats:)()
{
  OUTLINED_FUNCTION_13_15();
  OUTLINED_FUNCTION_7_10(v1, v2, v3, v4, v5);
  OUTLINED_FUNCTION_9_1();
  __chkstk_darwin(v6);
  v8 = OUTLINED_FUNCTION_0_21(v7, v19);
  v9(v8);
  v10 = OUTLINED_FUNCTION_6_14();
  specialized AnnounceVoicemailReadingFlow.__allocating_init(synchronousBurstIndex:voicemail:hintHistory:burstNotificationManager:sharedGlobals:announceVoicemailCats:)(v11, v12, v13, v14, v15, v16, v17, v18, v10, v20, v21);
  __swift_destroy_boxed_opaque_existential_1(v0);
  OUTLINED_FUNCTION_12_18();
}

unint64_t key path setter for AnnounceVoicemailReadingFlow.state : AnnounceVoicemailReadingFlow(unint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;
  outlined copy of AnnounceVoicemailReadingFlow.State(v2);
  return outlined consume of AnnounceVoicemailReadingFlow.State(v4);
}

unint64_t AnnounceVoicemailReadingFlow.state.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  outlined copy of AnnounceVoicemailReadingFlow.State(v1);
  return v1;
}

double key path getter for AnnounceVoicemailReadingFlow.readingState : AnnounceVoicemailReadingFlow@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (*(**a1 + 160))(v5);
  v3 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v3;
  result = *&v6;
  *(a2 + 32) = v6;
  *(a2 + 48) = v7;
  return result;
}

uint64_t key path setter for AnnounceVoicemailReadingFlow.readingState : AnnounceVoicemailReadingFlow(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v9 = *(a1 + 1);
  v5 = a1[4];
  v4 = a1[5];
  v6 = *(a1 + 48);
  v7 = *a2;
  swift_beginAccess();
  *(v7 + 24) = v3;
  *(v7 + 32) = v2;
  *(v7 + 40) = v9;
  *(v7 + 56) = v5;
  *(v7 + 64) = v4;
  *(v7 + 72) = v6;
}

uint64_t AnnounceVoicemailReadingFlow.readingState.getter@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  v4 = *(v1 + 56);
  v5 = *(v1 + 64);
  v6 = *(v1 + 72);
  *a1 = *(v1 + 24);
  *(a1 + 8) = v3;
  *(a1 + 16) = *(v1 + 40);
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  *(a1 + 48) = v6;
}

double AnnounceVoicemailReadingFlow.exitValue.getter@<D0>(uint64_t a1@<X8>)
{
  (*(*v1 + 160))(v5);
  v3 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v3;
  result = *&v6;
  *(a1 + 32) = v6;
  *(a1 + 48) = v7;
  return result;
}

void AnnounceVoicemailReadingFlow.__allocating_init(state:readingState:hintHistory:burstNotificationManager:sharedGlobals:announceVoicemailCats:)()
{
  OUTLINED_FUNCTION_13_15();
  v24 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = swift_allocObject();
  v18 = v5[3];
  v17 = v5[4];
  __swift_mutable_project_boxed_opaque_existential_1(v5, v18);
  OUTLINED_FUNCTION_9_1();
  __chkstk_darwin(v19);
  v21 = OUTLINED_FUNCTION_0_21(v20, v23);
  v22(v21);
  specialized AnnounceVoicemailReadingFlow.init(state:readingState:hintHistory:burstNotificationManager:sharedGlobals:announceVoicemailCats:)(v15, v13, v11, v9, v0, v3, v24, v16, v7, v18, v17);
  __swift_destroy_boxed_opaque_existential_1(v5);
  OUTLINED_FUNCTION_12_18();
}

void AnnounceVoicemailReadingFlow.init(state:readingState:hintHistory:burstNotificationManager:sharedGlobals:announceVoicemailCats:)()
{
  OUTLINED_FUNCTION_13_15();
  OUTLINED_FUNCTION_7_10(v1, v2, v3, v4, v5);
  OUTLINED_FUNCTION_9_1();
  __chkstk_darwin(v6);
  v8 = OUTLINED_FUNCTION_0_21(v7, v19);
  v9(v8);
  v10 = OUTLINED_FUNCTION_6_14();
  specialized AnnounceVoicemailReadingFlow.init(state:readingState:hintHistory:burstNotificationManager:sharedGlobals:announceVoicemailCats:)(v11, v12, v13, v14, v15, v16, v17, v18, v10, v20, v21);
  __swift_destroy_boxed_opaque_existential_1(v0);
  OUTLINED_FUNCTION_12_18();
}

uint64_t AnnounceVoicemailReadingFlow.execute(completion:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for AnnounceVoicemailReadingFlow();
  lazy protocol witness table accessor for type AnnounceVoicemailReadingFlow and conformance AnnounceVoicemailReadingFlow();
  return Flow.deferToExecuteAsync(_:)();
}

uint64_t AnnounceVoicemailReadingFlow.execute()(uint64_t a1)
{
  *(v2 + 544) = v1;
  *(v2 + 536) = a1;
  return _swift_task_switch(AnnounceVoicemailReadingFlow.execute(), 0, 0);
}

uint64_t AnnounceVoicemailReadingFlow.execute()()
{
  v61 = v0;
  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 552) = __swift_project_value_buffer(v1, static Logger.siriPhone);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 544);
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v60 = v7;
    *v6 = 136315138;
    *(v0 + 528) = (*(*v5 + 136))();
    v8 = String.init<A>(describing:)();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v60);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_0, v2, v3, "#AnnounceVoicemailReadingFlow .execute, state=%s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    OUTLINED_FUNCTION_26_0(v7);
    OUTLINED_FUNCTION_26_0(v6);
  }

  else
  {
  }

  v11 = (*(**(v0 + 544) + 136))();
  if (v11)
  {
    v12 = v11;
    if (v11 == 1)
    {
      v13 = AnnounceVoicemailReadingFlow.shouldAttemptToReadHint.getter();
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.debug.getter();
      v16 = os_log_type_enabled(v14, v15);
      if ((v13 & 1) == 0)
      {
        if (v16)
        {
          v52 = OUTLINED_FUNCTION_65_0();
          *v52 = 0;
          OUTLINED_FUNCTION_14_1(&dword_0, v53, v54, "#AnnounceVoicemailReadingFlow Not attempting to read hint for voicemail announcement.");
          OUTLINED_FUNCTION_26_0(v52);
        }

        v55 = *(v0 + 544);

        swift_beginAccess();
        v56 = *(v55 + 16);
        *(v55 + 16) = 2;
        outlined consume of AnnounceVoicemailReadingFlow.State(v56);
        static ExecuteResponse.replan(requireInput:)();
        outlined consume of AnnounceVoicemailReadingFlow.State(1uLL);
        goto LABEL_22;
      }

      if (v16)
      {
        v17 = OUTLINED_FUNCTION_65_0();
        *v17 = 0;
        OUTLINED_FUNCTION_14_1(&dword_0, v18, v19, "#AnnounceVoicemailReadingFlow Attempting to read hint for voicemail announcement.");
        OUTLINED_FUNCTION_26_0(v17);
      }

      v20 = *(v0 + 544);

      v21 = v20[23];
      __swift_project_boxed_opaque_existential_1(v20 + 19, v20[22]);
      v22 = OUTLINED_FUNCTION_11_0();
      v23(v22, v21);
      v24 = *(v0 + 264);
      v25 = *(v0 + 272);
      __swift_project_boxed_opaque_existential_1((v0 + 240), v24);
      *(v0 + 360) = v24;
      *(v0 + 368) = v25;
      __swift_allocate_boxed_opaque_existential_1((v0 + 336));
      OUTLINED_FUNCTION_40();
      (*(v26 + 16))();
      v27 = type metadata accessor for SimpleOutputFlow();
      OUTLINED_FUNCTION_41_1(v27);

      v28 = SimpleOutputFlow.init(outputPublisher:_:)();
      __swift_destroy_boxed_opaque_existential_1((v0 + 240));
      *(v0 + 512) = v28;
      OUTLINED_FUNCTION_50();
      v29 = swift_allocObject();
      *(v29 + 16) = partial apply for implicit closure #6 in implicit closure #5 in AnnounceVoicemailReadingFlow.execute();
      *(v29 + 24) = v20;

      static ExecuteResponse.ongoing<A>(next:childCompletion:)();
      outlined consume of AnnounceVoicemailReadingFlow.State(1uLL);
    }

    else
    {
      if (v11 == 2)
      {
        static ExecuteResponse.complete()();
LABEL_22:
        v57 = *(v0 + 8);

        return v57();
      }

      v43 = *(v0 + 544);
      v44 = v43[22];
      v45 = v43[23];
      __swift_project_boxed_opaque_existential_1(v43 + 19, v44);
      (*(v45 + 16))(v44, v45);
      v59 = *(v0 + 312);
      __swift_project_boxed_opaque_existential_1((v0 + 288), *(v0 + 312));
      *(v0 + 400) = v59;
      __swift_allocate_boxed_opaque_existential_1((v0 + 376));
      OUTLINED_FUNCTION_40();
      (*(v46 + 16))();
      OUTLINED_FUNCTION_50();
      v47 = swift_allocObject();
      *(v47 + 16) = v43;
      *(v47 + 24) = v12;
      v48 = type metadata accessor for SimpleOutputFlow();
      OUTLINED_FUNCTION_41_1(v48);

      outlined copy of AnnounceVoicemailReadingFlow.State(v12);
      v49 = SimpleOutputFlow.init(outputPublisher:_:)();
      __swift_destroy_boxed_opaque_existential_1((v0 + 288));
      *(v0 + 520) = v49;
      OUTLINED_FUNCTION_50();
      v50 = swift_allocObject();
      *(v50 + 16) = v43;
      *(v50 + 24) = v12;
      OUTLINED_FUNCTION_50();
      v51 = swift_allocObject();
      *(v51 + 16) = partial apply for closure #1 in AnnounceVoicemailReadingFlow.announcementCompleted(voicemails:);
      *(v51 + 24) = v50;

      outlined copy of AnnounceVoicemailReadingFlow.State(v12);
      static ExecuteResponse.ongoing<A>(next:childCompletion:)();
      outlined consume of AnnounceVoicemailReadingFlow.State(v12);
    }

    goto LABEL_22;
  }

  v30 = *(v0 + 544);
  static Signpost.begin(_:)();
  *(v0 + 560) = v31;
  *(v0 + 568) = v32;
  *(v0 + 576) = v33;
  *(v0 + 66) = v34;
  v35 = v30[16];
  v36 = v30[17];
  __swift_project_boxed_opaque_existential_1(v30 + 13, v35);
  v37 = *(*v30 + 160);
  v38 = *v30 + 160;
  *(v0 + 584) = v37;
  *(v0 + 592) = v38 & 0xFFFFFFFFFFFFLL | 0xD77000000000000;
  v37();
  v39 = *(v0 + 216);
  v40 = *(v0 + 224);
  *(v0 + 600) = v40;

  outlined destroy of AnnounceVoicemailReadingState(v0 + 184);
  v58 = (*(v36 + 8) + **(v36 + 8));
  v41 = swift_task_alloc();
  *(v0 + 608) = v41;
  *v41 = v0;
  v41[1] = AnnounceVoicemailReadingFlow.execute();

  return v58(v39, v40, v35, v36);
}

{
  v1 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v2 = v1;
  v4[77] = v3;
  v4[78] = v5;
  v4[79] = v6;
  v4[80] = v7;

  return _swift_task_switch(AnnounceVoicemailReadingFlow.execute(), 0, 0);
}

{
  v31 = v0;
  v1 = v0[80];
  v2 = v0[79];
  v3 = v0[78];
  swift_beginAccess();
  AnnounceVoicemailReadingState.update(_:)(v3, v2, v1, (v0 + 16));
  swift_endAccess();
  outlined destroy of AnnounceVoicemailReadingState((v0 + 16));

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[73];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v30 = v8;
    *v7 = 136315138;
    v6();
    AnnounceVoicemailReadingState.description.getter();
    v10 = v9;
    v12 = v11;
    outlined destroy of AnnounceVoicemailReadingState((v0 + 9));
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v12, &v30);

    *(v7 + 4) = v13;
    _os_log_impl(&dword_0, v4, v5, "#AnnounceVoicemailReadingFlow Updated reading state: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    OUTLINED_FUNCTION_26_0(v8);
    OUTLINED_FUNCTION_26_0(v7);
  }

  (v0[73])();
  v14 = specialized Array.count.getter(v0[3]);
  outlined destroy of AnnounceVoicemailReadingState((v0 + 2));
  if (v14 == v0[2])
  {

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = OUTLINED_FUNCTION_65_0();
      *v17 = 0;
      OUTLINED_FUNCTION_15_3(&dword_0, v18, v19, "#AnnounceVoicemailReadingFlow Found no incoming voicemails in burst. Try hinting.");
      OUTLINED_FUNCTION_26_0(v17);
    }

    v20 = 1;
  }

  else
  {
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = OUTLINED_FUNCTION_65_0();
      *v23 = 0;
      OUTLINED_FUNCTION_15_3(&dword_0, v24, v25, "#AnnounceVoicemailReadingFlow Found incoming voicemails in burst. Back to reading.");
      OUTLINED_FUNCTION_26_0(v23);
    }

    v20 = v0[77];
  }

  v26 = v0[68];
  swift_beginAccess();
  v27 = *(v26 + 16);
  *(v26 + 16) = v20;
  outlined consume of AnnounceVoicemailReadingFlow.State(v27);
  Signpost.OpenSignpost.end()();
  static ExecuteResponse.replan(requireInput:)();

  outlined consume of AnnounceVoicemailReadingFlow.State(0);
  v28 = v0[1];

  return v28();
}

unint64_t implicit closure #6 in implicit closure #5 in AnnounceVoicemailReadingFlow.execute()(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 16);
  *(a1 + 16) = 2;
  return outlined consume of AnnounceVoicemailReadingFlow.State(v2);
}

uint64_t AnnounceVoicemailReadingFlow.makeAnnouncement(voicemails:completion:)(unint64_t a1, void (*a2)(void *), uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO3MapVy_AA12AnyPublisherVy11SiriKitFlow16TemplatingResultVs5Error_pGAH6Output_pGMd, &_s7Combine10PublishersO3MapVy_AA12AnyPublisherVy11SiriKitFlow16TemplatingResultVs5Error_pGAH6Output_pGMR);
  OUTLINED_FUNCTION_9_1();
  v8 = v7;
  __chkstk_darwin(v9);
  v11 = v60 - v10;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO7FlatMapVy_AA6FutureCy11SiriKitFlow16TemplatingResultVs5Error_pGAA12AnyPublisherVyAJsAK_pGGMd, &_s7Combine10PublishersO7FlatMapVy_AA6FutureCy11SiriKitFlow16TemplatingResultVs5Error_pGAA12AnyPublisherVyAJsAK_pGGMR);
  OUTLINED_FUNCTION_9_1();
  v13 = v12;
  __chkstk_darwin(v14);
  v71 = v60 - v15;
  v16 = specialized Array.count.getter(a1);
  if (!v16)
  {
    type metadata accessor for EmptyOutput();
    static EmptyOutput.instance.getter();
    v75 = 0;
    a2(v74);
    return outlined destroy of SpeakableString?(v74, &_ss6ResultOy11SiriKitFlow6Output_ps5Error_pGMd, &_ss6ResultOy11SiriKitFlow6Output_ps5Error_pGMR);
  }

  v17 = v16;
  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (a1 & 0xC000000000000001) == 0, a1);
  v65 = v8;
  v66 = v6;
  v63 = a3;
  v64 = v11;
  v62 = a2;
  v67 = v13;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v18 = *(a1 + 32);
  }

  v19 = v18;
  OUTLINED_FUNCTION_50();
  v20 = swift_allocObject();
  *(v20 + 16) = v73;
  *(v20 + 24) = v19;
  v21 = &_s7Combine6FutureCy11SiriKitFlow16TemplatingResultVs5Error_pGMR;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCy11SiriKitFlow16TemplatingResultVs5Error_pGMd, &_s7Combine6FutureCy11SiriKitFlow16TemplatingResultVs5Error_pGMR);
  OUTLINED_FUNCTION_41_1(v22);

  v61 = v19;
  v74[0] = Future.init(_:)();
  OUTLINED_FUNCTION_5_18();
  v69 = lazy protocol witness table accessor for type TerminalOntologyNode<VoiceMail.VoiceMailNoun> and conformance TerminalOntologyNode<A>(v23, &_s7Combine6FutureCy11SiriKitFlow16TemplatingResultVs5Error_pGMd, &_s7Combine6FutureCy11SiriKitFlow16TemplatingResultVs5Error_pGMR, v24);
  v70 = v22;
  v25 = Publisher.eraseToAnyPublisher()();

  if (v17 < 1)
  {
    __break(1u);
  }

  else
  {
    v26 = v17;
    specialized Array._checkIndex(_:)();
    specialized Array._checkIndex(_:)();
    if ((a1 & 0xC000000000000001) == 0 || v17 == 1)
    {

      v21 = v67;
    }

    else
    {
      type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INCallRecord, INCallRecord_ptr);

      v27 = 1;
      v21 = v67;
      do
      {
        v28 = v27 + 1;
        _ArrayBuffer._typeCheckSlowPath(_:)(v27);
        v27 = v28;
      }

      while (v17 != v28);
    }

    if (!(a1 >> 62))
    {
      result = a1 & 0xFFFFFFFFFFFFFF8;
      v68 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
      v30 = 1;
      goto LABEL_14;
    }
  }

  result = _CocoaArrayWrapper.subscript.getter();
  v68 = v57;
  v30 = v58;
  v26 = v59 >> 1;
LABEL_14:
  if (v26 < v30)
  {
    __break(1u);
  }

  else
  {
    v67 = v21 + 1;
    v60[0] = result;
    swift_unknownObjectRetain_n();

    v60[1] = v25;
    v31 = v25;
    while (v26 != v30)
    {
      v32 = *(v68 + 8 * v30);
      v74[0] = v31;
      v33 = swift_allocObject();
      v33[2] = v73;
      v33[3] = v30;
      v33[4] = v32;
      v34 = v32;
      OUTLINED_FUNCTION_11_0();

      v35 = v30;
      static Subscribers.Demand.unlimited.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy11SiriKitFlow16TemplatingResultVs5Error_pGMd, &_s7Combine12AnyPublisherVy11SiriKitFlow16TemplatingResultVs5Error_pGMR);
      type metadata accessor for TemplatingResult();
      OUTLINED_FUNCTION_3_14();
      lazy protocol witness table accessor for type TerminalOntologyNode<VoiceMail.VoiceMailNoun> and conformance TerminalOntologyNode<A>(&lazy protocol witness table cache variable for type AnyPublisher<TemplatingResult, Error> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy11SiriKitFlow16TemplatingResultVs5Error_pGMd, &_s7Combine12AnyPublisherVy11SiriKitFlow16TemplatingResultVs5Error_pGMR, v36);
      v37 = v71;
      Publisher.flatMap<A, B>(maxPublishers:_:)();

      lazy protocol witness table accessor for type TerminalOntologyNode<VoiceMail.VoiceMailNoun> and conformance TerminalOntologyNode<A>(&lazy protocol witness table cache variable for type Publishers.FlatMap<Future<TemplatingResult, Error>, AnyPublisher<TemplatingResult, Error>> and conformance Publishers.FlatMap<A, B>, &_s7Combine10PublishersO7FlatMapVy_AA6FutureCy11SiriKitFlow16TemplatingResultVs5Error_pGAA12AnyPublisherVyAJsAK_pGGMd, &_s7Combine10PublishersO7FlatMapVy_AA6FutureCy11SiriKitFlow16TemplatingResultVs5Error_pGAA12AnyPublisherVyAJsAK_pGGMR, &protocol conformance descriptor for Publishers.FlatMap<A, B>);
      v38 = v72;
      v39 = Publisher.eraseToAnyPublisher()();

      (*v67)(v37, v38);
      ++v30;
      v31 = v39;
    }

    swift_unknownObjectRelease_n();
    v74[0] = v31;
    OUTLINED_FUNCTION_50();
    v40 = swift_allocObject();
    v41 = v73;
    v42 = v61;
    *(v40 + 16) = v73;
    *(v40 + 24) = v42;

    v43 = v42;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy11SiriKitFlow16TemplatingResultVs5Error_pGMd, &_s7Combine12AnyPublisherVy11SiriKitFlow16TemplatingResultVs5Error_pGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow6Output_pMd, &_s11SiriKitFlow6Output_pMR);
    OUTLINED_FUNCTION_3_14();
    lazy protocol witness table accessor for type TerminalOntologyNode<VoiceMail.VoiceMailNoun> and conformance TerminalOntologyNode<A>(v44, &_s7Combine12AnyPublisherVy11SiriKitFlow16TemplatingResultVs5Error_pGMd, &_s7Combine12AnyPublisherVy11SiriKitFlow16TemplatingResultVs5Error_pGMR, v45);
    v46 = v64;
    Publisher.map<A>(_:)();

    OUTLINED_FUNCTION_50();
    v47 = swift_allocObject();
    v48 = v62;
    v49 = v63;
    *(v47 + 16) = v62;
    *(v47 + 24) = v49;
    OUTLINED_FUNCTION_50();
    v50 = swift_allocObject();
    *(v50 + 16) = v48;
    *(v50 + 24) = v49;
    OUTLINED_FUNCTION_4_12();
    lazy protocol witness table accessor for type TerminalOntologyNode<VoiceMail.VoiceMailNoun> and conformance TerminalOntologyNode<A>(v51, v52, v53, v54);
    OUTLINED_FUNCTION_11_0();
    swift_retain_n();
    v55 = v66;
    v56 = Publisher.sink(receiveCompletion:receiveValue:)();

    swift_unknownObjectRelease();

    (*(v65 + 8))(v46, v55);
    *(v41 + 192) = v56;
  }

  return result;
}

uint64_t closure #1 in AnnounceVoicemailReadingFlow.makeAnnouncement(voicemails:completion:)(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = type metadata accessor for Locale();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = (&v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = a3[18];
  v14 = *(*a3 + 160);
  v14(v25, v10);
  result = outlined destroy of AnnounceVoicemailReadingState(v25);
  if (__OFADD__(v26, v25[0]))
  {
    __break(1u);
  }

  else
  {
    v23 = a2;
    v22 = (v26 + v25[0]);
    (v14)(v27, result);
    outlined destroy of AnnounceVoicemailReadingState(v27);
    v21 = a1;
    v16 = v27[0] > 0;
    type metadata accessor for AppInfoBuilder();
    v17 = swift_allocObject();
    static Device.current.getter();
    __swift_project_boxed_opaque_existential_1(v24, v24[3]);
    dispatch thunk of DeviceState.siriLocale.getter();
    __swift_destroy_boxed_opaque_existential_1(v24);
    v18 = _s27PhoneCallFlowDelegatePlugin0aB6RecordC10getBuilder04callF07options07appInfoH06localeAC0H0CSo06INCallF0C_AC7OptionsVAA03AppL8Building_p10Foundation6LocaleVtFZTf4nnenn_nAA0plH0C_Tt3g5(a4, 0, v17, v12);
    type metadata accessor for PhoneCallRecord(0);
    swift_allocObject();
    v19 = PhoneCallRecord.init(builder:)(v18);

    (*(v9 + 8))(v12, v8);
    (*(*v13 + class metadata base offset for AnnounceVoicemailCATs))(COERCE_DOUBLE(*&v22), 0, v16, v19, v21, v23);
  }

  return result;
}

uint64_t closure #1 in closure #2 in AnnounceVoicemailReadingFlow.makeAnnouncement(voicemails:completion:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = type metadata accessor for TemplatingResult();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  (*(v11 + 16))(&v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v10, v13);
  v14 = (*(v11 + 80) + 40) & ~*(v11 + 80);
  v15 = swift_allocObject();
  *(v15 + 2) = a2;
  *(v15 + 3) = a3;
  *(v15 + 4) = a4;
  (*(v11 + 32))(&v15[v14], &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCy11SiriKitFlow16TemplatingResultVs5Error_pGMd, &_s7Combine6FutureCy11SiriKitFlow16TemplatingResultVs5Error_pGMR);
  swift_allocObject();

  v16 = a4;
  result = Future.init(_:)();
  *a5 = result;
  return result;
}

uint64_t closure #1 in closure #1 in closure #2 in AnnounceVoicemailReadingFlow.makeAnnouncement(voicemails:completion:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6)
{
  v38 = a5;
  v11 = type metadata accessor for TemplatingResult();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v40 = v13;
  v41 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for Locale();
  v14 = *(v39 - 8);
  v15 = __chkstk_darwin(v39);
  v17 = (&v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = a3[18];
  (*(*a3 + 160))(v43, v15);
  result = outlined destroy of AnnounceVoicemailReadingState(v43);
  v20 = v44 + v43[0];
  if (__OFADD__(v44, v43[0]))
  {
    __break(1u);
  }

  else
  {
    v21 = __OFADD__(v20, a4);
    v22 = v20 + a4;
    if (!v21)
    {
      v37 = v22;
      type metadata accessor for AppInfoBuilder();
      v23 = swift_allocObject();
      static Device.current.getter();
      v35 = a1;
      v36 = a2;
      v24 = a6;
      v25 = v11;
      __swift_project_boxed_opaque_existential_1(v42, v42[3]);
      dispatch thunk of DeviceState.siriLocale.getter();
      __swift_destroy_boxed_opaque_existential_1(v42);
      v26 = _s27PhoneCallFlowDelegatePlugin0aB6RecordC10getBuilder04callF07options07appInfoH06localeAC0H0CSo06INCallF0C_AC7OptionsVAA03AppL8Building_p10Foundation6LocaleVtFZTf4nnenn_nAA0plH0C_Tt3g5(v38, 0, v23, v17);
      type metadata accessor for PhoneCallRecord(0);
      swift_allocObject();
      v27 = PhoneCallRecord.init(builder:)(v26);

      (*(v14 + 8))(v17, v39);
      v28 = v41;
      (*(v12 + 16))(v41, v24, v25);
      v29 = (*(v12 + 80) + 16) & ~*(v12 + 80);
      v30 = (v40 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
      v31 = swift_allocObject();
      (*(v12 + 32))(v31 + v29, v28, v25);
      v32 = (v31 + v30);
      v33 = v36;
      *v32 = v35;
      v32[1] = v33;
      v34 = *(*v18 + class metadata base offset for AnnounceVoicemailCATs);

      v34(*&v37, 0, 1, v27, partial apply for closure #1 in closure #1 in closure #1 in closure #2 in AnnounceVoicemailReadingFlow.makeAnnouncement(voicemails:completion:), v31);
    }
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in closure #1 in closure #1 in closure #2 in AnnounceVoicemailReadingFlow.makeAnnouncement(voicemails:completion:)(uint64_t a1, uint64_t a2, void (*a3)(char *))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow21BehaviorAfterSpeakingOSgMd, &_s11SiriKitFlow21BehaviorAfterSpeakingOSgMR);
  __chkstk_darwin(v6 - 8);
  v8 = var50 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  __chkstk_darwin(v9);
  v11 = var50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = var50 - v13;
  v15 = type metadata accessor for TemplatingResult();
  (*(*(v15 - 8) + 16))(v14, a2, v15);
  swift_storeEnumTagMultiPayload();
  v16 = type metadata accessor for BehaviorAfterSpeaking();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v16);
  specialized Result<>.merge(with:behaviorAfterSpeaking:)(a1, v8, v17, v18, v19, v20, v21, v22, var50[0], var50[1], var50[2], var50[3], var50[4], var50[5], var50[6], var50[7], var50[8], var50[9], var50[10], var50[11]);
  outlined destroy of SpeakableString?(v8, &_s11SiriKitFlow21BehaviorAfterSpeakingOSgMd, &_s11SiriKitFlow21BehaviorAfterSpeakingOSgMR);
  a3(v11);
  outlined destroy of SpeakableString?(v11, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  return outlined destroy of SpeakableString?(v14, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
}

uint64_t closure #3 in AnnounceVoicemailReadingFlow.makeAnnouncement(voicemails:completion:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v52 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  __chkstk_darwin(v7 - 8);
  v54 = &v47 - v8;
  v9 = type metadata accessor for AceOutput();
  v53 = *(v9 - 8);
  __chkstk_darwin(v9);
  v56 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TemplatingResult();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  v16 = __swift_project_value_buffer(v15, static Logger.siriPhone);
  v17 = *(v12 + 16);
  v55 = a1;
  v17(v14, a1, v11);
  v51 = v16;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v60[0] = v48;
    *v20 = 136315138;
    TemplatingResult.sections.getter();
    type metadata accessor for TemplatingSection();
    v21 = Array.description.getter();
    v50 = v9;
    v22 = v21;
    v49 = a4;
    v24 = v23;

    (*(v12 + 8))(v14, v11);
    v25 = v22;
    v9 = v50;
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v24, v60);
    a4 = v49;

    *(v20 + 4) = v26;
    _os_log_impl(&dword_0, v18, v19, "#AnnounceVoicemailReadingFlow announcement = %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v48);
  }

  else
  {

    (*(v12 + 8))(v14, v11);
  }

  v27 = a2[22];
  v28 = a2[23];
  __swift_project_boxed_opaque_existential_1(a2 + 19, v27);
  (*(v28 + 8))(v60, v27, v28);
  v29 = a2[22];
  v30 = a2[23];
  __swift_project_boxed_opaque_existential_1(a2 + 19, v29);
  (*(v30 + 8))(v59, v29, v30);
  __swift_project_boxed_opaque_existential_1(v59, v59[3]);
  dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
  v31 = type metadata accessor for NLContextUpdate();
  v32 = v54;
  __swift_storeEnumTagSinglePayload(v54, 1, 1, v31);
  v58 = 0;
  memset(v57, 0, sizeof(v57));
  v33 = v56;
  static AceOutputHelper.makeConfirmedViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  outlined destroy of SpeakableString?(v57, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
  outlined destroy of SpeakableString?(v32, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  __swift_destroy_boxed_opaque_existential_1(v60);
  v34 = __swift_destroy_boxed_opaque_existential_1(v59);
  (*(*a2 + 160))(v60, v34);
  result = outlined destroy of AnnounceVoicemailReadingState(v60);
  if (__OFADD__(v61, v60[0]))
  {
    __break(1u);
  }

  else if (v61 + v60[0])
  {
    a4[3] = v9;
    a4[4] = &protocol witness table for AceOutput;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a4);
    return (*(v53 + 32))(boxed_opaque_existential_1, v33, v9);
  }

  else
  {
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_0, v37, v38, "#AnnounceVoicemailReadingFlow Sending SAUIPlayNotification sound first because this is the initial notification announcement.", v39, 2u);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_426260;
    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SAUIPlayNotificationSound, SAUIPlayNotificationSound_ptr);
    v41 = [v52 identifier];
    v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v44 = v43;

    v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v40 + 32) = SAUIPlayNotificationSound.init(notificationId:soundType:)(v42, v44, v45, v46);
    a4[3] = v9;
    a4[4] = &protocol witness table for AceOutput;
    __swift_allocate_boxed_opaque_existential_1(a4);
    AceOutput.copyAndPrepend(commands:)(v40);

    return (*(v53 + 8))(v33, v9);
  }

  return result;
}

uint64_t closure #1 in AnnounceVoicemailReadingFlow.announcementCompleted(voicemails:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  *(a1 + 16) = 0;
  outlined consume of AnnounceVoicemailReadingFlow.State(v4);
  v5 = specialized Array.count.getter(a2);
  result = swift_beginAccess();
  v7 = *(a1 + 24);
  v8 = __OFADD__(v7, v5);
  v9 = v7 + v5;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    *(a1 + 24) = v9;
  }

  return result;
}

void *AnnounceVoicemailReadingFlow.shouldAttemptToReadHint.getter()
{
  result = (*(*v0 + 160))(v4);
  v2 = v6 - v5;
  if (__OFSUB__(v6, v5))
  {
    __break(1u);
  }

  else
  {
    v3 = specialized Array.count.getter(v4[1]);
    outlined destroy of AnnounceVoicemailReadingState(v4);
    return (v2 == v3);
  }

  return result;
}

uint64_t AnnounceVoicemailReadingFlow.makeHint(completion:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v21[0] = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO3MapVy_AA6FutureCy11SiriKitFlow16TemplatingResultVs5Error_pGAH6Output_pGMd, &_s7Combine10PublishersO3MapVy_AA6FutureCy11SiriKitFlow16TemplatingResultVs5Error_pGAH6Output_pGMR);
  OUTLINED_FUNCTION_9_1();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCy11SiriKitFlow16TemplatingResultVs5Error_pGMd, &_s7Combine6FutureCy11SiriKitFlow16TemplatingResultVs5Error_pGMR);
  OUTLINED_FUNCTION_41_1(v11);

  v21[1] = Future.init(_:)();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow6Output_pMd, &_s11SiriKitFlow6Output_pMR);
  OUTLINED_FUNCTION_5_18();
  lazy protocol witness table accessor for type TerminalOntologyNode<VoiceMail.VoiceMailNoun> and conformance TerminalOntologyNode<A>(v12, &_s7Combine6FutureCy11SiriKitFlow16TemplatingResultVs5Error_pGMd, &_s7Combine6FutureCy11SiriKitFlow16TemplatingResultVs5Error_pGMR, v13);
  Publisher.map<A>(_:)();

  OUTLINED_FUNCTION_50();
  v14 = swift_allocObject();
  v15 = v21[0];
  *(v14 + 16) = v21[0];
  *(v14 + 24) = a2;
  OUTLINED_FUNCTION_50();
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  *(v16 + 24) = a2;
  OUTLINED_FUNCTION_4_12();
  lazy protocol witness table accessor for type TerminalOntologyNode<VoiceMail.VoiceMailNoun> and conformance TerminalOntologyNode<A>(v17, &_s7Combine10PublishersO3MapVy_AA6FutureCy11SiriKitFlow16TemplatingResultVs5Error_pGAH6Output_pGMd, &_s7Combine10PublishersO3MapVy_AA6FutureCy11SiriKitFlow16TemplatingResultVs5Error_pGAH6Output_pGMR, v18);
  OUTLINED_FUNCTION_11_0();
  swift_retain_n();
  v19 = Publisher.sink(receiveCompletion:receiveValue:)();

  (*(v7 + 8))(v10, v5);
  *(v3 + 192) = v19;
}

uint64_t closure #1 in AnnounceVoicemailReadingFlow.makeHint(completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 144);
  v7 = *(a3 + 80);
  (*(*a3 + 160))(v12);
  result = outlined destroy of AnnounceVoicemailReadingState(v12);
  if (__OFADD__(v7, v12[0]))
  {
    __break(1u);
  }

  else
  {
    v9 = (v7 + v12[0]);
    v10 = *(a3 + 88);
    v11 = AnnounceVoicemailHintHistory.daysSinceLastHint.getter(*(a3 + 96));
    return (*(*v6 + class metadata base offset for AnnounceVoicemailCATs + 32))(*&v9, 0, *&v11, 0, v10, 0, a1, a2);
  }

  return result;
}

void *closure #2 in AnnounceVoicemailReadingFlow.makeHint(completion:)@<X0>(uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  __chkstk_darwin(v5 - 8);
  v7 = v22 - v6;
  v8 = *(TemplatingResult.sections.getter() + 16);

  if (v8 && ((v9 = *(TemplatingResult.print.getter() + 16), , v9) || (v10 = *(TemplatingResult.speak.getter() + 16), , v10)))
  {
    swift_beginAccess();
    *(a2 + 72) = 1;
    v11 = *(a2 + 176);
    v12 = *(a2 + 184);
    __swift_project_boxed_opaque_existential_1((a2 + 152), v11);
    (*(v12 + 8))(v25, v11, v12);
    v13 = *(a2 + 176);
    v14 = *(a2 + 184);
    __swift_project_boxed_opaque_existential_1((a2 + 152), v13);
    (*(v14 + 8))(v24, v13, v14);
    __swift_project_boxed_opaque_existential_1(v24, v24[3]);
    dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
    v15 = type metadata accessor for NLContextUpdate();
    __swift_storeEnumTagSinglePayload(v7, 1, 1, v15);
    v16 = type metadata accessor for AceOutput();
    memset(v22, 0, sizeof(v22));
    v23 = 0;
    a3[3] = v16;
    a3[4] = &protocol witness table for AceOutput;
    __swift_allocate_boxed_opaque_existential_1(a3);
    static AceOutputHelper.makeConfirmedViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
    outlined destroy of SpeakableString?(v22, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
    outlined destroy of SpeakableString?(v7, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
    __swift_destroy_boxed_opaque_existential_1(v25);
    return __swift_destroy_boxed_opaque_existential_1(v24);
  }

  else
  {
    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static Logger.siriPhone);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_0, v19, v20, "#AnnounceVoicemailReadingFlow CAT hint rules resulted in no output, returning EmptyOutput", v21, 2u);
    }

    type metadata accessor for EmptyOutput();
    return static EmptyOutput.instance.getter();
  }
}

unint64_t *AnnounceVoicemailReadingFlow.deinit()
{
  outlined consume of AnnounceVoicemailReadingFlow.State(v0[2]);

  __swift_destroy_boxed_opaque_existential_1(v0 + 13);

  __swift_destroy_boxed_opaque_existential_1(v0 + 19);

  return v0;
}

uint64_t AnnounceVoicemailReadingFlow.__deallocating_deinit()
{
  AnnounceVoicemailReadingFlow.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for Flow.onAsync(input:) in conformance AnnounceVoicemailReadingFlow(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = protocol witness for Flow.onAsync(input:) in conformance AnnounceVoicemailReadingFlow;

  return Flow.onAsync(input:)(a1, a2, a3);
}

uint64_t protocol witness for Flow.onAsync(input:) in conformance AnnounceVoicemailReadingFlow(uint64_t a1)
{
  v3 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(a1);
}

uint64_t protocol witness for Flow.execute() in conformance AnnounceVoicemailReadingFlow(uint64_t a1)
{
  v6 = (*(**v1 + 240) + **(**v1 + 240));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = protocol witness for Flow.execute() in conformance AnnounceVoicemailReadingFlow;

  return v6(a1);
}

uint64_t protocol witness for Flow.execute() in conformance AnnounceVoicemailReadingFlow()
{
  v1 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

double protocol witness for Flow.exitValue.getter in conformance AnnounceVoicemailReadingFlow@<D0>(uint64_t a1@<X8>)
{
  (*(**v1 + 208))(v5);
  v3 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v3;
  result = *&v6;
  *(a1 + 32) = v6;
  *(a1 + 48) = v7;
  return result;
}

uint64_t specialized closure #1 in Publisher.sink(receiveResultCompletion:)(uint64_t result, void (*a2)(void *))
{
  if (result)
  {
    v3[0] = result;
    v4 = 1;
    swift_errorRetain();
    a2(v3);
    return outlined destroy of SpeakableString?(v3, &_ss6ResultOy11SiriKitFlow6Output_ps5Error_pGMd, &_ss6ResultOy11SiriKitFlow6Output_ps5Error_pGMR);
  }

  return result;
}

uint64_t specialized closure #2 in Publisher.sink(receiveResultCompletion:)(uint64_t a1, void (*a2)(_BYTE *))
{
  _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_0(a1, v4);
  v4[40] = 0;
  a2(v4);
  return outlined destroy of SpeakableString?(v4, &_ss6ResultOy11SiriKitFlow6Output_ps5Error_pGMd, &_ss6ResultOy11SiriKitFlow6Output_ps5Error_pGMR);
}

uint64_t specialized AnnounceVoicemailReadingFlow.__allocating_init(synchronousBurstIndex:voicemail:hintHistory:burstNotificationManager:sharedGlobals:announceVoicemailCats:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, double a9, uint64_t a10, uint64_t a11)
{
  v27[3] = a10;
  v27[4] = a11;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v27);
  (*(*(a10 - 8) + 32))(boxed_opaque_existential_1, a5, a10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_426260;
  *(v21 + 32) = a2;
  v22 = a2;
  static AnnounceVoicemailReadingState.makeInitialState(synchronousBurstIndex:voicemail:)(a1, v22, v28);
  _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_0(v27, v26);
  _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_0(a6, v25);
  v23 = (*(a8 + 216))(v21, v28, a3, a4, v26, v25, a7, a9);

  __swift_destroy_boxed_opaque_existential_1(a6);
  __swift_destroy_boxed_opaque_existential_1(v27);
  return v23;
}

unint64_t outlined copy of AnnounceVoicemailReadingFlow.State(unint64_t result)
{
  if (result >= 3)
  {
  }

  return result;
}

uint64_t specialized AnnounceVoicemailReadingFlow.init(state:readingState:hintHistory:burstNotificationManager:sharedGlobals:announceVoicemailCats:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int128 *a6, uint64_t a7, uint64_t a8, double a9, uint64_t a10, uint64_t a11)
{
  *(a8 + 128) = a10;
  *(a8 + 136) = a11;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((a8 + 104));
  (*(*(a10 - 8) + 32))(boxed_opaque_existential_1, a5, a10);
  *(a8 + 192) = 0;
  *(a8 + 16) = a1;
  v21 = *(a2 + 16);
  *(a8 + 24) = *a2;
  *(a8 + 40) = v21;
  *(a8 + 56) = *(a2 + 32);
  *(a8 + 72) = *(a2 + 48);
  *(a8 + 80) = a3;
  *(a8 + 88) = a4;
  *(a8 + 96) = a9;
  *(a8 + 144) = a7;
  outlined init with take of PhoneCallFeatureFlagProviding(a6, a8 + 152);
  return a8;
}

unint64_t lazy protocol witness table accessor for type AnnounceVoicemailReadingFlow and conformance AnnounceVoicemailReadingFlow()
{
  result = lazy protocol witness table cache variable for type AnnounceVoicemailReadingFlow and conformance AnnounceVoicemailReadingFlow;
  if (!lazy protocol witness table cache variable for type AnnounceVoicemailReadingFlow and conformance AnnounceVoicemailReadingFlow)
  {
    type metadata accessor for AnnounceVoicemailReadingFlow();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnnounceVoicemailReadingFlow and conformance AnnounceVoicemailReadingFlow);
  }

  return result;
}

unint64_t outlined consume of AnnounceVoicemailReadingFlow.State(unint64_t result)
{
  if (result >= 3)
  {
  }

  return result;
}

uint64_t objectdestroy_3Tm()
{

  OUTLINED_FUNCTION_50();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t get_enum_tag_for_layout_string_27PhoneCallFlowDelegatePlugin024AnnounceVoicemailReadingC0C5StateO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t getEnumTagSinglePayload for AnnounceVoicemailReadingFlow.State(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 8))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AnnounceVoicemailReadingFlow.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t objectdestroy_31Tm()
{

  OUTLINED_FUNCTION_50();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t partial apply for closure #1 in closure #1 in closure #2 in AnnounceVoicemailReadingFlow.makeAnnouncement(voicemails:completion:)(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for TemplatingResult() - 8);
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2 + ((*(v5 + 80) + 40) & ~*(v5 + 80));

  return closure #1 in closure #1 in closure #2 in AnnounceVoicemailReadingFlow.makeAnnouncement(voicemails:completion:)(a1, a2, v6, v7, v8, v9);
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in closure #2 in AnnounceVoicemailReadingFlow.makeAnnouncement(voicemails:completion:)(uint64_t a1)
{
  v3 = *(type metadata accessor for TemplatingResult() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return closure #1 in closure #1 in closure #1 in closure #2 in AnnounceVoicemailReadingFlow.makeAnnouncement(voicemails:completion:)(a1, v1 + v4, v5);
}

void static AnnounceVoicemailReadingState.makeInitialState(synchronousBurstIndex:voicemail:)(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_426260;
  *(v6 + 32) = a2;
  v7 = a1 + 1;
  if (__OFADD__(a1, 1))
  {
    __break(1u);
  }

  else if (v7 >= a1)
  {
    v8 = v6;
    v9 = [a2 identifier];
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    *a3 = 0;
    *(a3 + 8) = v8;
    *(a3 + 16) = a1;
    *(a3 + 24) = v7;
    *(a3 + 32) = v10;
    *(a3 + 40) = v12;
    *(a3 + 48) = 0;
    return;
  }

  __break(1u);
}

uint64_t AnnounceVoicemailReadingState.update(_:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;

  result = specialized Array.append<A>(contentsOf:)(v11);
  v13 = v5[3];
  v14 = __OFADD__(v13, a2);
  v15 = v13 + a2;
  if (v14)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v15 < v5[2])
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v5[3] = v15;
  if (a4)
  {
    v16 = a4;
  }

  else
  {
    a3 = v5[4];
    v17 = v5[5];

    v16 = v17;
  }

  *(v6 + 32) = a3;
  *(v6 + 40) = v16;

  return outlined init with copy of AnnounceVoicemailReadingState(v6, a5);
}

BOOL AnnounceVoicemailReadingState.allVoicemailsRead.getter()
{
  v1 = v0[1];
  if (v1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8));
  }

  return v2 == *v0;
}

uint64_t AnnounceVoicemailReadingState.burstWindowIndex.getter()
{
  v1 = v0[2];
  result = v1 + *v0;
  if (__OFADD__(v1, *v0))
  {
    __break(1u);
  }

  return result;
}

BOOL AnnounceVoicemailReadingState.isInitialNotificationInBurst.getter()
{
  v1 = v0[2];
  v2 = __OFADD__(v1, *v0);
  v3 = v1 + *v0;
  if (!v2)
  {
    return v3 == 0;
  }

  __break(1u);
  return result;
}

uint64_t AnnounceVoicemailReadingState.incrementVoicemailsRead(count:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (__OFADD__(*v2, result))
  {
    __break(1u);
  }

  else
  {
    *v2 += result;
    return outlined init with copy of AnnounceVoicemailReadingState(v2, a2);
  }

  return result;
}

BOOL AnnounceVoicemailReadingState.isLastNotificationInBurst.getter()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v2 - v1;
  if (__OFSUB__(v2, v1))
  {
    __break(1u);
    goto LABEL_6;
  }

  v4 = v0[1];
  if (v4 >> 62)
  {
LABEL_6:
    v5 = _CocoaArrayWrapper.endIndex.getter();
    return v3 == v5;
  }

  v5 = *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8));
  return v3 == v5;
}

void AnnounceVoicemailReadingState.IncomingNotificationsUpdate.description.getter(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  _StringGuts.grow(_:)(82);
  v8._object = 0x8000000000457F30;
  v8._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v8);
  v9 = specialized Array.count.getter(a1);
  if (v9)
  {
    v10 = v9;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    if (v10 < 0)
    {
      __break(1u);
      return;
    }

    v30 = a2;
    v31 = a3;
    v32 = a4;
    v11 = 0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v12 = *(a1 + 8 * v11 + 32);
      }

      v13 = v12;
      v14 = [v12 identifier];
      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;

      v18 = _swiftEmptyArrayStorage[2];
      if (v18 >= _swiftEmptyArrayStorage[3] >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      ++v11;
      _swiftEmptyArrayStorage[2] = v18 + 1;
      v19 = &_swiftEmptyArrayStorage[2 * v18];
      v19[4] = v15;
      v19[5] = v17;
    }

    while (v10 != v11);
    a3 = v31;
    a4 = v32;
  }

  v20 = Array.description.getter();
  v22 = v21;

  v23._countAndFlagsBits = v20;
  v23._object = v22;
  String.append(_:)(v23);

  v24._countAndFlagsBits = 0xD00000000000001ELL;
  v24._object = 0x8000000000457F50;
  String.append(_:)(v24);
  v25._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v25);

  v26._countAndFlagsBits = 0xD00000000000001ALL;
  v26._object = 0x8000000000457F70;
  String.append(_:)(v26);
  if (a4)
  {
    v27 = a4;
  }

  else
  {
    a3 = 7104878;
    v27 = 0xE300000000000000;
  }

  v28._countAndFlagsBits = a3;
  v28._object = v27;
  String.append(_:)(v28);

  v29._countAndFlagsBits = 32010;
  v29._object = 0xE200000000000000;
  String.append(_:)(v29);
}

uint64_t AnnounceVoicemailReadingState.init(voicemailsRead:voicemails:burstWindow:lastNotificationId:didReadHint:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  *a8 = result;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 40) = a6;
  *(a8 + 48) = a7;
  return result;
}

void AnnounceVoicemailReadingState.description.getter()
{
  v1 = v0;
  _StringGuts.grow(_:)(115);
  OUTLINED_FUNCTION_0_22();
  String.append(_:)(v2);
  v3._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v3);

  OUTLINED_FUNCTION_0_22();
  String.append(_:)(v4);
  v5 = *(v0 + 8);
  v6 = specialized Array.count.getter(v5);
  if (v6)
  {
    v7 = v6;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    if (v7 < 0)
    {
      __break(1u);
      return;
    }

    v35 = v0;
    v8 = 0;
    do
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v9 = *(v5 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = [v9 identifier];
      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;

      v15 = _swiftEmptyArrayStorage[2];
      if (v15 >= _swiftEmptyArrayStorage[3] >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      ++v8;
      _swiftEmptyArrayStorage[2] = v15 + 1;
      v16 = &_swiftEmptyArrayStorage[2 * v15];
      v16[4] = v12;
      v16[5] = v14;
    }

    while (v7 != v8);
    v1 = v35;
  }

  v17 = Array.description.getter();
  v19 = v18;

  v20._countAndFlagsBits = v17;
  v20._object = v19;
  String.append(_:)(v20);

  OUTLINED_FUNCTION_0_22();
  v21._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v21);
  v28._countAndFlagsBits = specialized Range.description.getter(*(v1 + 16), *(v1 + 24), v22, v23, v24, v25, v26, v27);
  String.append(_:)(v28);

  OUTLINED_FUNCTION_0_22();
  String.append(_:)(v29);
  String.append(_:)(*(v1 + 32));
  OUTLINED_FUNCTION_0_22();
  v30._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v30);
  if (*(v1 + 48))
  {
    v31 = 1702195828;
  }

  else
  {
    v31 = 0x65736C6166;
  }

  if (*(v1 + 48))
  {
    v32 = 0xE400000000000000;
  }

  else
  {
    v32 = 0xE500000000000000;
  }

  v33 = v32;
  String.append(_:)(*&v31);

  v34._countAndFlagsBits = 32010;
  v34._object = 0xE200000000000000;
  String.append(_:)(v34);
}

uint64_t specialized Range.description.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v19 = a2;
  v20 = a1;
  OUTLINED_FUNCTION_1_31(&v20, a2, a3, a4, a5, a6, a7, a8, 0);
  v8._countAndFlagsBits = 3943982;
  v8._object = 0xE300000000000000;
  String.append(_:)(v8);
  OUTLINED_FUNCTION_1_31(&v19, v9, v10, v11, v12, v13, v14, v15, v17);
  return v18;
}

uint64_t getEnumTagSinglePayload for AnnounceVoicemailReadingState(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 49))
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

uint64_t storeEnumTagSinglePayload for AnnounceVoicemailReadingState(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for AnnounceVoicemailReadingState.IncomingNotificationsUpdate(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for AnnounceVoicemailReadingState.IncomingNotificationsUpdate(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

PhoneCallFlowDelegatePlugin::AnswerCallCATs::Properties_optional __swiftcall AnswerCallCATs.Properties.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of AnswerCallCATs.Properties.init(rawValue:), v2);

  if (v3 == 1)
  {
    v4.value = PhoneCallFlowDelegatePlugin_AnswerCallCATs_Properties_offerFollowUpIntent;
  }

  else
  {
    v4.value = PhoneCallFlowDelegatePlugin_AnswerCallCATs_Properties_unknownDefault;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

unint64_t AnswerCallCATs.Properties.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0xD00000000000001ELL;
  }

  else
  {
    return 0xD000000000000020;
  }
}

PhoneCallFlowDelegatePlugin::AnswerCallCATs::Properties_optional protocol witness for RawRepresentable.init(rawValue:) in conformance AnswerCallCATs.Properties@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::AnswerCallCATs::Properties_optional *a2@<X8>)
{
  result.value = AnswerCallCATs.Properties.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance AnswerCallCATs.Properties@<X0>(unint64_t *a1@<X8>)
{
  result = AnswerCallCATs.Properties.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t AnswerCallCATs.intentHandledResponse(incomingCallConcept:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v5 = OUTLINED_FUNCTION_35_1(v4);
  *(v5 + 16) = xmmword_424FD0;
  OUTLINED_FUNCTION_0_8(v5, "incomingCallConcept");
  if (a1)
  {
    v6 = type metadata accessor for PhoneIncomingCall();
    v7 = a1;
  }

  else
  {
    v7 = 0;
    v6 = 0;
    *(v5 + 56) = 0;
    *(v5 + 64) = 0;
  }

  *(v5 + 48) = v7;
  *(v5 + 72) = v6;

  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();
}

uint64_t AnswerCallCATs.intentHandledResponse(incomingCallConcept:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t AnswerCallCATs.intentHandledResponse(incomingCallConcept:)()
{
  v1 = v0[3];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_35_1(v2);
  v0[5] = v3;
  *(v3 + 16) = xmmword_424FD0;
  OUTLINED_FUNCTION_0_8(v3, "incomingCallConcept");
  v4 = 0;
  if (v1)
  {
    v4 = type metadata accessor for PhoneIncomingCall();
  }

  else
  {
    *(v3 + 56) = 0;
    *(v3 + 64) = 0;
  }

  *(v3 + 48) = v1;
  *(v3 + 72) = v4;
  OUTLINED_FUNCTION_9_13();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[6] = v5;
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_10_16(v5);

  return v9(v7);
}

{
  v1 = v0[2];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_35_1(v2);
  v0[4] = v3;
  *(v3 + 16) = xmmword_424FD0;
  OUTLINED_FUNCTION_0_8(v3, "incomingCallConcept");
  v4 = 0;
  if (v1)
  {
    v4 = type metadata accessor for PhoneIncomingCall();
  }

  else
  {
    *(v3 + 56) = 0;
    *(v3 + 64) = 0;
  }

  *(v3 + 48) = v1;
  *(v3 + 72) = v4;
  OUTLINED_FUNCTION_9_13();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[5] = v5;
  *v5 = v6;
  v5[1] = AnnounceIncomingCallCATs.intentHandledResponse(incomingCallConcept:);

  return v8(0xD000000000000020, 0x8000000000452220, v3);
}

uint64_t AnswerCallCATs.intentHandledResponse(incomingCallConcept:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_0();
}

{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_35_1(v2);
  *(v3 + 16) = xmmword_424FD0;
  *(v3 + 32) = 0xD000000000000013;
  *(v3 + 40) = 0x8000000000457A70;
  if (a1)
  {
    v4 = type metadata accessor for PhoneIncomingCall();
    v5 = a1;
  }

  else
  {
    v5 = 0;
    v4 = 0;
    *(v3 + 56) = 0;
    *(v3 + 64) = 0;
  }

  *(v3 + 48) = v5;
  *(v3 + 72) = v4;

  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t AnswerCallCATs.offerFollowUpIntent(followUpOfferType:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v5 = OUTLINED_FUNCTION_21(v4);
  __chkstk_darwin(v5);
  v7 = &v13 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v9 = OUTLINED_FUNCTION_35_1(v8);
  *(v9 + 16) = xmmword_424FD0;
  *(v9 + 32) = 0xD000000000000011;
  *(v9 + 40) = 0x8000000000457A90;
  outlined init with copy of SpeakableString?(a1, v7, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v10 = type metadata accessor for SpeakableString();
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    outlined destroy of SpeakableString?(v7, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v9 + 48) = 0u;
    *(v9 + 64) = 0u;
  }

  else
  {
    *(v9 + 72) = v10;
    __swift_allocate_boxed_opaque_existential_1((v9 + 48));
    OUTLINED_FUNCTION_40();
    (*(v11 + 32))();
  }

  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();
}

uint64_t AnswerCallCATs.offerFollowUpIntent(followUpOfferType:)()
{
  OUTLINED_FUNCTION_15();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v4);
  v1[5] = swift_task_alloc();
  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v5, v6, v7);
}

{
  v1 = v0[5];
  v2 = v0[3];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_35_1(v3);
  v0[6] = v4;
  *(v4 + 16) = xmmword_424FD0;
  OUTLINED_FUNCTION_0_8(v4, "followUpOfferType");
  outlined init with copy of SpeakableString?(v2, v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v5 = type metadata accessor for SpeakableString();
  if (OUTLINED_FUNCTION_58(v5) == 1)
  {
    outlined destroy of SpeakableString?(v0[5], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v4 + 48) = 0u;
    *(v4 + 64) = 0u;
  }

  else
  {
    *(v4 + 72) = v2;
    __swift_allocate_boxed_opaque_existential_1((v4 + 48));
    OUTLINED_FUNCTION_40();
    (*(v6 + 32))();
  }

  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_25();
  v0[7] = v7;
  *v7 = v8;
  v9 = OUTLINED_FUNCTION_10_16(v7);

  return v11(v9);
}

{
  OUTLINED_FUNCTION_15();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v3);
  v1[4] = swift_task_alloc();
  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v4, v5, v6);
}

{
  v1 = v0[4];
  v2 = v0[2];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_35_1(v3);
  v0[5] = v4;
  *(v4 + 16) = xmmword_424FD0;
  OUTLINED_FUNCTION_0_8(v4, "followUpOfferType");
  outlined init with copy of SpeakableString?(v2, v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v5 = type metadata accessor for SpeakableString();
  if (OUTLINED_FUNCTION_58(v5) == 1)
  {
    outlined destroy of SpeakableString?(v0[4], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v4 + 48) = 0u;
    *(v4 + 64) = 0u;
  }

  else
  {
    *(v4 + 72) = v2;
    __swift_allocate_boxed_opaque_existential_1((v4 + 48));
    OUTLINED_FUNCTION_40();
    (*(v6 + 32))();
  }

  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_25();
  v0[6] = v7;
  *v7 = v8;
  v7[1] = AnnounceIncomingCallCATs.offerFollowUpIntent(followUpOfferType:);

  return v10(0xD00000000000001ELL, 0x8000000000452250, v4);
}

uint64_t AnswerCallCATs.offerFollowUpIntent(followUpOfferType:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v3 = OUTLINED_FUNCTION_21(v2);
  __chkstk_darwin(v3);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v7 = OUTLINED_FUNCTION_35_1(v6);
  *(v7 + 16) = xmmword_424FD0;
  *(v7 + 32) = 0xD000000000000011;
  *(v7 + 40) = 0x8000000000457A90;
  outlined init with copy of SpeakableString?(a1, v5, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v8 = type metadata accessor for SpeakableString();
  if (__swift_getEnumTagSinglePayload(v5, 1, v8) == 1)
  {
    outlined destroy of SpeakableString?(v5, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v7 + 48) = 0u;
    *(v7 + 64) = 0u;
  }

  else
  {
    *(v7 + 72) = v8;
    __swift_allocate_boxed_opaque_existential_1((v7 + 48));
    OUTLINED_FUNCTION_40();
    (*(v9 + 32))();
  }

  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t AnswerCallCATs.init(templateDir:options:globals:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for CATOption();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v10 = OUTLINED_FUNCTION_21(v9);
  __chkstk_darwin(v10);
  outlined init with copy of SpeakableString?(a1, &v14 - v11, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(v6 + 16))(v8, a2, v5);
  v12 = CATWrapper.init(templateDir:options:globals:)();
  (*(v6 + 8))(a2, v5);
  outlined destroy of SpeakableString?(a1, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  return v12;
}

unint64_t lazy protocol witness table accessor for type AnswerCallCATs.Properties and conformance AnswerCallCATs.Properties()
{
  result = lazy protocol witness table cache variable for type AnswerCallCATs.Properties and conformance AnswerCallCATs.Properties;
  if (!lazy protocol witness table cache variable for type AnswerCallCATs.Properties and conformance AnswerCallCATs.Properties)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnswerCallCATs.Properties and conformance AnswerCallCATs.Properties);
  }

  return result;
}

uint64_t type metadata accessor for AnswerCallCATs(uint64_t a1)
{
  result = type metadata singleton initialization cache for AnswerCallCATs;
  if (!type metadata singleton initialization cache for AnswerCallCATs)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AnswerCallCATs.Properties(_BYTE *result, unsigned int a2, unsigned int a3)
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

PhoneCallFlowDelegatePlugin::AnswerCallCATsSimple::Properties_optional __swiftcall AnswerCallCATsSimple.Properties.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of AnswerCallCATsSimple.Properties.init(rawValue:), v2);

  if (v3 == 1)
  {
    v4.value = PhoneCallFlowDelegatePlugin_AnswerCallCATsSimple_Properties_offerFollowUpIntent;
  }

  else
  {
    v4.value = PhoneCallFlowDelegatePlugin_AnswerCallCATsSimple_Properties_unknownDefault;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

PhoneCallFlowDelegatePlugin::AnswerCallCATsSimple::Properties_optional protocol witness for RawRepresentable.init(rawValue:) in conformance AnswerCallCATsSimple.Properties@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::AnswerCallCATsSimple::Properties_optional *a2@<X8>)
{
  result.value = AnswerCallCATsSimple.Properties.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t AnswerCallCATsSimple.intentHandledResponse(incomingCallConcept:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t AnswerCallCATsSimple.intentHandledResponse(incomingCallConcept:)()
{
  v1 = v0[2];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_35_1(v2);
  v0[4] = v3;
  *(v3 + 16) = xmmword_424FD0;
  OUTLINED_FUNCTION_0_8(v3, "incomingCallConcept");
  v4 = 0;
  if (v1)
  {
    v4 = type metadata accessor for PhoneIncomingCall();
  }

  else
  {
    *(v3 + 56) = 0;
    *(v3 + 64) = 0;
  }

  *(v3 + 48) = v1;
  *(v3 + 72) = v4;
  OUTLINED_FUNCTION_9_13();
  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = AnnounceIncomingCallCATsSimple.intentHandledResponse(incomingCallConcept:);

  return v7(0xD000000000000020, 0x8000000000452220, v3);
}

PhoneCallFlowDelegatePlugin::AnswerCallCATsSimple::IntentHandledResponseDialogIds_optional __swiftcall AnswerCallCATsSimple.IntentHandledResponseDialogIds.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of AnswerCallCATsSimple.IntentHandledResponseDialogIds.init(rawValue:), v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t AnswerCallCATsSimple.IntentHandledResponseDialogIds.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0x7373694D7473754ALL;
  }

  if (a1 == 1)
  {
    return 0xD000000000000015;
  }

  return 0x696D6F636E496F4ELL;
}

PhoneCallFlowDelegatePlugin::AnswerCallCATsSimple::IntentHandledResponseDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance AnswerCallCATsSimple.IntentHandledResponseDialogIds@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::AnswerCallCATsSimple::IntentHandledResponseDialogIds_optional *a2@<X8>)
{
  result.value = AnswerCallCATsSimple.IntentHandledResponseDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance AnswerCallCATsSimple.IntentHandledResponseDialogIds@<X0>(uint64_t *a1@<X8>)
{
  result = AnswerCallCATsSimple.IntentHandledResponseDialogIds.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t AnswerCallCATsSimple.intentHandledResponseAsLabels(incomingCallConcept:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t AnswerCallCATsSimple.intentHandledResponseAsLabels(incomingCallConcept:)()
{
  v1 = v0[2];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_35_1(v2);
  v0[4] = v3;
  *(v3 + 16) = xmmword_424FD0;
  OUTLINED_FUNCTION_0_8(v3, "incomingCallConcept");
  v4 = 0;
  if (v1)
  {
    v4 = type metadata accessor for PhoneIncomingCall();
  }

  else
  {
    *(v3 + 56) = 0;
    *(v3 + 64) = 0;
  }

  *(v3 + 48) = v1;
  *(v3 + 72) = v4;
  OUTLINED_FUNCTION_9_13();
  v5 = swift_task_alloc();
  v0[5] = v5;
  v6 = lazy protocol witness table accessor for type AnswerCallCATsSimple.IntentHandledResponseDialogIds and conformance AnswerCallCATsSimple.IntentHandledResponseDialogIds();
  *v5 = v0;
  v5[1] = AnnounceIncomingCallCATsSimple.intentHandledResponseAsLabels(incomingCallConcept:);

  return v8(0xD000000000000020, 0x8000000000452220, v3, &type metadata for AnswerCallCATsSimple.IntentHandledResponseDialogIds, v6);
}

unint64_t lazy protocol witness table accessor for type AnswerCallCATsSimple.IntentHandledResponseDialogIds and conformance AnswerCallCATsSimple.IntentHandledResponseDialogIds()
{
  result = lazy protocol witness table cache variable for type AnswerCallCATsSimple.IntentHandledResponseDialogIds and conformance AnswerCallCATsSimple.IntentHandledResponseDialogIds;
  if (!lazy protocol witness table cache variable for type AnswerCallCATsSimple.IntentHandledResponseDialogIds and conformance AnswerCallCATsSimple.IntentHandledResponseDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnswerCallCATsSimple.IntentHandledResponseDialogIds and conformance AnswerCallCATsSimple.IntentHandledResponseDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnswerCallCATsSimple.IntentHandledResponseDialogIds and conformance AnswerCallCATsSimple.IntentHandledResponseDialogIds;
  if (!lazy protocol witness table cache variable for type AnswerCallCATsSimple.IntentHandledResponseDialogIds and conformance AnswerCallCATsSimple.IntentHandledResponseDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnswerCallCATsSimple.IntentHandledResponseDialogIds and conformance AnswerCallCATsSimple.IntentHandledResponseDialogIds);
  }

  return result;
}

uint64_t AnswerCallCATsSimple.offerFollowUpIntent(followUpOfferType:)()
{
  OUTLINED_FUNCTION_15();
  v1[2] = v2;
  v1[3] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v1[4] = swift_task_alloc();
  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v3, v4, v5);
}

{
  OUTLINED_FUNCTION_17_2();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v5 = OUTLINED_FUNCTION_35_1(v4);
  *(v2 + 40) = v5;
  *(v5 + 16) = xmmword_424FD0;
  OUTLINED_FUNCTION_0_8(v5, "followUpOfferType");
  outlined init with copy of SpeakableString?(v0, v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v6 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_20(v6);
  if (v7)
  {
    outlined destroy of SpeakableString?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v5 + 48) = 0u;
    *(v5 + 64) = 0u;
  }

  else
  {
    *(v5 + 72) = v0;
    __swift_allocate_boxed_opaque_existential_1((v5 + 48));
    OUTLINED_FUNCTION_40();
    (*(v8 + 32))();
  }

  v9 = OUTLINED_FUNCTION_12_0();
  *(v2 + 48) = v9;
  *v9 = v2;
  v9[1] = AnnounceIncomingCallCATsSimple.offerFollowUpIntent(followUpOfferType:);

  return v11(v3 + 13, 0x8000000000452250, v5);
}

BOOL AnswerCallCATsSimple.OfferFollowUpIntentDialogIds.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of AnswerCallCATsSimple.OfferFollowUpIntentDialogIds.init(rawValue:), v2);

  return v3 != 0;
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance AnswerCallCATsSimple.OfferFollowUpIntentDialogIds@<W0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = AnswerCallCATsSimple.OfferFollowUpIntentDialogIds.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t AnswerCallCATsSimple.offerFollowUpIntentAsLabels(followUpOfferType:)()
{
  OUTLINED_FUNCTION_15();
  v1[2] = v2;
  v1[3] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v1[4] = swift_task_alloc();
  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v3, v4, v5);
}

{
  OUTLINED_FUNCTION_17_2();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v5 = OUTLINED_FUNCTION_35_1(v4);
  *(v2 + 40) = v5;
  *(v5 + 16) = xmmword_424FD0;
  OUTLINED_FUNCTION_0_8(v5, "followUpOfferType");
  outlined init with copy of SpeakableString?(v0, v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v6 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_20(v6);
  if (v7)
  {
    outlined destroy of SpeakableString?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v5 + 48) = 0u;
    *(v5 + 64) = 0u;
  }

  else
  {
    *(v5 + 72) = v0;
    __swift_allocate_boxed_opaque_existential_1((v5 + 48));
    OUTLINED_FUNCTION_40();
    (*(v8 + 32))();
  }

  v9 = OUTLINED_FUNCTION_12_0();
  *(v2 + 48) = v9;
  v10 = lazy protocol witness table accessor for type AnswerCallCATsSimple.OfferFollowUpIntentDialogIds and conformance AnswerCallCATsSimple.OfferFollowUpIntentDialogIds();
  *v9 = v2;
  v9[1] = AnnounceIncomingCallCATsSimple.offerFollowUpIntentAsLabels(followUpOfferType:);

  return v12(v3 + 13, 0x8000000000452250, v5, &type metadata for AnswerCallCATsSimple.OfferFollowUpIntentDialogIds, v10);
}

unint64_t lazy protocol witness table accessor for type AnswerCallCATsSimple.OfferFollowUpIntentDialogIds and conformance AnswerCallCATsSimple.OfferFollowUpIntentDialogIds()
{
  result = lazy protocol witness table cache variable for type AnswerCallCATsSimple.OfferFollowUpIntentDialogIds and conformance AnswerCallCATsSimple.OfferFollowUpIntentDialogIds;
  if (!lazy protocol witness table cache variable for type AnswerCallCATsSimple.OfferFollowUpIntentDialogIds and conformance AnswerCallCATsSimple.OfferFollowUpIntentDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnswerCallCATsSimple.OfferFollowUpIntentDialogIds and conformance AnswerCallCATsSimple.OfferFollowUpIntentDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnswerCallCATsSimple.OfferFollowUpIntentDialogIds and conformance AnswerCallCATsSimple.OfferFollowUpIntentDialogIds;
  if (!lazy protocol witness table cache variable for type AnswerCallCATsSimple.OfferFollowUpIntentDialogIds and conformance AnswerCallCATsSimple.OfferFollowUpIntentDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnswerCallCATsSimple.OfferFollowUpIntentDialogIds and conformance AnswerCallCATsSimple.OfferFollowUpIntentDialogIds);
  }

  return result;
}

uint64_t AnswerCallCATsSimple.init(templateDir:options:globals:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for CATOption();
  OUTLINED_FUNCTION_14_5();
  v7 = v6;
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_4();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  __chkstk_darwin(v12 - 8);
  outlined init with copy of SpeakableString?(a1, &v16 - v13, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(v7 + 16))(v11, a2, v3);
  v14 = CATWrapperSimple.init(templateDir:options:globals:)();
  (*(v7 + 8))(a2, v3);
  outlined destroy of SpeakableString?(a1, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  return v14;
}

uint64_t AnswerCallCATsSimple.__allocating_init(useResponseMode:options:)(uint64_t a1)
{
  type metadata accessor for CATOption();
  OUTLINED_FUNCTION_14_5();
  __chkstk_darwin(v1);
  OUTLINED_FUNCTION_4();
  v2 = swift_allocObject();
  v3 = OUTLINED_FUNCTION_39_1();
  v4(v3);
  CATWrapperSimple.init(useResponseMode:options:)();
  v5 = OUTLINED_FUNCTION_53();
  v6(v5);
  return v2;
}

uint64_t AnswerCallCATsSimple.init(useResponseMode:options:)(uint64_t a1)
{
  type metadata accessor for CATOption();
  OUTLINED_FUNCTION_14_5();
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_4();
  v3 = OUTLINED_FUNCTION_39_1();
  v4(v3);
  CATWrapperSimple.init(useResponseMode:options:)();
  v5 = OUTLINED_FUNCTION_53();
  v6(v5);
  return v1;
}

unint64_t lazy protocol witness table accessor for type AnswerCallCATsSimple.Properties and conformance AnswerCallCATsSimple.Properties()
{
  result = lazy protocol witness table cache variable for type AnswerCallCATsSimple.Properties and conformance AnswerCallCATsSimple.Properties;
  if (!lazy protocol witness table cache variable for type AnswerCallCATsSimple.Properties and conformance AnswerCallCATsSimple.Properties)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnswerCallCATsSimple.Properties and conformance AnswerCallCATsSimple.Properties);
  }

  return result;
}

uint64_t type metadata accessor for AnswerCallCATsSimple(uint64_t a1)
{
  result = type metadata singleton initialization cache for AnswerCallCATsSimple;
  if (!type metadata singleton initialization cache for AnswerCallCATsSimple)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AnswerCallCATsSimple.Properties(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for AnswerCallCATsSimple.IntentHandledResponseDialogIds(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for AnswerCallCATsSimple.OfferFollowUpIntentDialogIds(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t protocol witness for IncomingCallCATsSimple.intentHandledResponse(incomingCallConcept:) in conformance AnswerCallCATsSimple()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_15_15();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_11_13(v1);

  return v3(v2);
}

uint64_t protocol witness for IncomingCallCATsSimple.offerFollowUpIntent(followUpOfferType:) in conformance AnswerCallCATsSimple()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_15_15();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_11_13(v1);

  return v3(v2);
}

id static AnswerCallIntentConversion.convertToIntent(phoneCallNLIntent:app:sharedGlobals:previousIntent:previousIntentResponse:groupResolver:)(void *a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6)
{
  __swift_project_boxed_opaque_existential_1(a6, a6[3]);

  return specialized static AnswerCallIntentConversion.convertToIntent(phoneCallNLIntent:app:sharedGlobals:previousIntent:previousIntentResponse:groupResolver:)(a1, a2, a3, a4, a5);
}

uint64_t static AnswerCallIntentConversion.getCallIdentifierFromCallNotifications(sharedGlobals:app:)(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v2);
  v4 = (*(v3 + 56))(v2, v3);
  LOBYTE(v2) = (*(*v4 + 176))(v4);

  if ((v2 & 1) != 0 && !App.isFirstParty()())
  {
    v7 = a1[3];
    v8 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v7);
    if (!(*(v8 + 112))(v7, v8))
    {
      return 0;
    }

    v9 = CurrentRequest.refId.getter();
    v11 = v10;

    if (v11)
    {
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      v12 = OUTLINED_FUNCTION_0_23();
      v13(v12);
      v14 = v22;
      v15 = v23;
      __swift_project_boxed_opaque_existential_1(v21, v22);
      v16 = (*(v15 + 16))(v9, v11, v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v21);
      if (v16)
      {
        __swift_project_boxed_opaque_existential_1(a1, a1[3]);
        v17 = OUTLINED_FUNCTION_0_23();
        v18(v17);
        v19 = v22;
        v20 = v23;
        __swift_project_boxed_opaque_existential_1(v21, v22);
        v5 = (*(v20 + 32))(v9, v11, v19, v20);

        __swift_destroy_boxed_opaque_existential_1(v21);
        return v5;
      }
    }
  }

  return 0;
}

id specialized static AnswerCallIntentConversion.convertToIntent(phoneCallNLIntent:app:sharedGlobals:previousIntent:previousIntentResponse:groupResolver:)(void *a1, uint64_t a2, void *a3, id a4, void *a5)
{
  v41 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSSSgGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSSSgGMR);
  v43 = *(v9 - 8);
  v44 = v9;
  __chkstk_darwin(v9);
  v11 = &v41 - v10;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo16INCallAudioRouteVGMR);
  v12 = *(v45 - 8);
  __chkstk_darwin(v45);
  v14 = &v41 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v15 = a4;
  if (!PhoneCallNLIntent.hasAnyConfirmation()())
  {
LABEL_9:
    v42 = v12;
    outlined init with copy of SignalProviding(a3, v47);
    v27 = swift_allocObject();
    outlined init with take of PhoneCallFeatureFlagProviding(v47, v27 + 16);
    *(v27 + 56) = v15;
    v28 = a4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMR);
    type metadata accessor for INCallAudioRoute(0);
    Transformer.init(transform:)();
    *(swift_allocObject() + 16) = a5;
    v29 = a5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    Transformer.init(transform:)();
    v30 = Transformer.transform.getter();
    v30(v47, a1);

    v31 = *&v47[0];
    v32 = Transformer.transform.getter();
    v32(v47, a1);

    v33 = *(&v47[0] + 1);
    if (*(&v47[0] + 1))
    {
      v34 = *&v47[0];
      v36 = v41;
      v35 = v42;
    }

    else
    {
      v36 = v41;
      v34 = static AnswerCallIntentConversion.getCallIdentifierFromCallNotifications(sharedGlobals:app:)(a3);
      v33 = v37;
      v35 = v42;
    }

    v38 = objc_allocWithZone(INAnswerCallIntent);
    v39 = @nonobjc INAnswerCallIntent.init(audioRoute:callIdentifier:)(v31, v34, v33);
    a4 = _s27PhoneCallFlowDelegatePlugin20NLv4IntentConversionPAAE03setG8Metadata3for13sharedGlobals3app08previousG00G4TypeQzAJ_AA06SharedM9Providing_p17SiriAppResolution0T0CAJSgtFZAA06AnswerbgH0O_Tt3g5(v39, a3, v36, a4);

    (*(v43 + 8))(v11, v44);
    (*(v35 + 8))(v14, v45);
    return a4;
  }

  if (!a4)
  {
    v15 = 0;
    goto LABEL_9;
  }

  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static Logger.siriPhone);
  v17 = a4;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *&v47[0] = v21;
    *v20 = 136315138;
    v46 = a4;
    v22 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo18INAnswerCallIntentCSgMd, &_sSo18INAnswerCallIntentCSgMR);
    v23 = String.init<A>(describing:)();
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, v47);

    *(v20 + 4) = v25;
    _os_log_impl(&dword_0, v18, v19, "#AnswerCallIntentConversion is confirmation, returning previousIntent: %s.", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v21);
  }

  v26 = v17;
  return a4;
}

uint64_t one-time initialization function for instance()
{
  type metadata accessor for DefaultAppProvider();
  result = swift_initStaticObject();
  static DefaultAppProvider.instance = result;
  return result;
}

{
  type metadata accessor for AppResolutionProvider();
  swift_allocObject();
  result = AppResolutionProvider.().init()();
  static AppResolutionProvider.instance = result;
  return result;
}

{
  type metadata accessor for ThirdPartyAnnotatedAppStore();
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin21DictionaryBackedCacheCySSAA12AnnotatedAppVGMd, &_s27PhoneCallFlowDelegatePlugin21DictionaryBackedCacheCySSAA12AnnotatedAppVGMR);
  swift_allocObject();
  result = specialized DictionaryBackedCache.init(timeToLiveInSeconds:capacity:nowDateProvider:)(5, closure #1 in default argument 2 of DictionaryBackedCache.init(timeToLiveInSeconds:capacity:nowDateProvider:), 0, 1.0);
  *(v0 + 16) = result;
  static ThirdPartyAnnotatedAppStore.instance = v0;
  return result;
}

uint64_t *DefaultAppProvider.instance.unsafeMutableAddressor()
{
  if (one-time initialization token for instance != -1)
  {
    swift_once();
  }

  return &static DefaultAppProvider.instance;
}

uint64_t static DefaultAppProvider.instance.getter()
{
  type metadata accessor for DefaultAppProvider();

  return swift_initStaticObject();
}

uint64_t DefaultAppProvider.defaultPhoneAppBundleId.getter()
{
  v0 = [objc_opt_self() defaultWorkspace];
  if (!v0)
  {
    __break(1u);
  }

  v1 = v0;
  v12 = 0;
  v2 = [v0 defaultApplicationForCategory:4 error:&v12];

  if (v2)
  {
    v3 = v12;
    return outlined bridged method (ob) of @objc LSBundleRecord.bundleIdentifier.getter(v2);
  }

  else
  {
    v5 = v12;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Logger.siriPhone);
    swift_errorRetain();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      swift_errorRetain();
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 4) = v11;
      *v10 = v11;
      _os_log_impl(&dword_0, v7, v8, "#AppUtils failed to get default phoneCalls application: %@", v9, 0xCu);
      outlined destroy of NSObject?(v10);
    }

    else
    {
    }

    return 0;
  }
}

uint64_t outlined destroy of NSObject?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined bridged method (ob) of @objc LSBundleRecord.bundleIdentifier.getter(void *a1)
{
  v2 = [a1 bundleIdentifier];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

PhoneCallFlowDelegatePlugin::AnnounceCallsContext __swiftcall AnnounceCallsContext.init(incomingCall:invocationType:)(PhoneCallFlowDelegatePlugin::AnnounceCallsContext incomingCall, PhoneCallFlowDelegatePlugin::AnnounceCallInvocationType invocationType)
{
  v2 = invocationType & 1;
  incomingCall.invocationType = v2;
  return incomingCall;
}

uint64_t AnnounceCallsContext.description.getter(void *a1, char a2)
{
  BYTE8(v13) = 0;
  _StringGuts.grow(_:)(39);
  v4._object = 0x80000000004580D0;
  v4._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v4);
  v5 = [a1 description];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v9._countAndFlagsBits = v6;
  v9._object = v8;
  String.append(_:)(v9);

  v10._countAndFlagsBits = 0xD000000000000011;
  v10._object = 0x80000000004580F0;
  String.append(_:)(v10);
  *&v13 = a2 & 1;
  _print_unlocked<A, B>(_:_:)();
  v11._countAndFlagsBits = 32010;
  v11._object = 0xE200000000000000;
  String.append(_:)(v11);
  return *(&v13 + 1);
}

uint64_t AnswerCallOutputStrategy.init(device:incomingCallCats:announceCallsContext:audioSessionManager:entitlementChecker:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, __int128 *a5@<X4>, __int128 *a6@<X5>, uint64_t a7@<X8>)
{
  *(a7 + 24) = type metadata accessor for AnswerCallCATsSimple(0);
  *(a7 + 32) = &protocol witness table for AnswerCallCATsSimple;
  *a7 = a2;
  *(a7 + 40) = a3;
  *(a7 + 48) = a4;
  outlined init with take of SPHConversation(a1, a7 + 56);
  outlined init with take of SPHConversation(a5, a7 + 96);

  return outlined init with take of SPHConversation(a6, a7 + 136);
}

id AnswerCallOutputStrategy.makeCallConnectedSound(intentResponse:)(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.siriPhone);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = OUTLINED_FUNCTION_65_0();
    *v7 = 0;
    _os_log_impl(&dword_0, v5, v6, "#AnswerCallOutputStrategy makeCallConnectedSound:", v7, 2u);
    OUTLINED_FUNCTION_26_0(v7);
  }

  v8 = *(v2 + 40);
  if (!v8)
  {
    v11 = Logger.logObject.getter();
    v22 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v11, v22))
    {
      v23 = OUTLINED_FUNCTION_65_0();
      *v23 = 0;
      _os_log_impl(&dword_0, v11, v22, "This is not a follow-up to a call announcement - not sending answer chime", v23, 2u);
      OUTLINED_FUNCTION_26_0(v23);
    }

    goto LABEL_22;
  }

  ObjectType = swift_getObjectType();
  v10 = *(a2 + 8);
  v11 = v8;
  if (v10(ObjectType, a2) != 2)
  {
    if (one-time initialization token for announceTelephony != -1)
    {
      OUTLINED_FUNCTION_0_24(&one-time initialization token for announceTelephony);
    }

    __swift_project_value_buffer(v4, static Logger.announceTelephony);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = OUTLINED_FUNCTION_65_0();
      *v26 = 0;
      OUTLINED_FUNCTION_36_0(&dword_0, v27, v28, "Siri did not find an incoming call when attempting to answer - not sending answer chime");
      OUTLINED_FUNCTION_26_0(v26);
    }

LABEL_22:
    return 0;
  }

  if (one-time initialization token for announceTelephony != -1)
  {
    OUTLINED_FUNCTION_0_24(&one-time initialization token for announceTelephony);
  }

  __swift_project_value_buffer(v4, static Logger.announceTelephony);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = OUTLINED_FUNCTION_65_0();
    *v14 = 0;
    _os_log_impl(&dword_0, v12, v13, "Call was answered - sending answer chime.", v14, 2u);
    OUTLINED_FUNCTION_26_0(v14);
  }

  if ([v11 preferredCallProvider]== &dword_0 + 2)
  {
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = OUTLINED_FUNCTION_65_0();
      *v17 = 0;
      OUTLINED_FUNCTION_36_0(&dword_0, v18, v19, "This is a FT call - sending answer chime with ID nil.");
      OUTLINED_FUNCTION_26_0(v17);
    }

    v20 = 0;
    v21 = 0;
  }

  else
  {
    v30 = [v11 identifier];
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v31;
  }

  type metadata accessor for SAUIPlayNotificationSound();
  v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = SAUIPlayNotificationSound.init(notificationId:soundType:)(v20, v21, v32, v33);

  return v29;
}

BOOL AnswerCallOutputStrategy.shouldCloseAssistantEarly(intentResponse:)(uint64_t a1, uint64_t a2)
{
  __swift_project_boxed_opaque_existential_1((v2 + 56), *(v2 + 80));
  if ((dispatch thunk of DeviceState.isWatch.getter() & 1) == 0)
  {
    return 0;
  }

  ObjectType = swift_getObjectType();
  return (*(a2 + 8))(ObjectType, a2) == 2;
}

BOOL AnswerCallOutputStrategy.shouldShowIntentHandledDialog(intentResponse:)(void *a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  IncomingCallIntentResponse.isIncomingCall.getter(ObjectType, a2);
  v6 = v5;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Logger.siriPhone);
  v8 = a1;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v19 = v13;
    *v11 = 136315394;
    if (v6)
    {
      v14 = 0x6F7420544F4ELL;
    }

    else
    {
      v14 = 28532;
    }

    if (v6)
    {
      v15 = 0xE600000000000000;
    }

    else
    {
      v15 = 0xE200000000000000;
    }

    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v19);

    *(v11 + 4) = v16;
    *(v11 + 12) = 2112;
    *(v11 + 14) = v8;
    *v12 = v8;
    v17 = v8;
    _os_log_impl(&dword_0, v9, v10, "#AnswerCallOutputStrategy AnswerCall decided %s send AddViews because intentResponse %@ is incoming call.", v11, 0x16u);
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v12, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_26_0(v12);
    __swift_destroy_boxed_opaque_existential_1(v13);
    OUTLINED_FUNCTION_26_0(v13);
    OUTLINED_FUNCTION_26_0(v11);
  }

  return (v6 & 1) == 0;
}

uint64_t AnswerCallOutputStrategy.shouldAllowAppToInitiateRecordingTemporarily(sharedGlobals:app:)(void *a1, uint64_t a2)
{
  v38 = a2;
  v3 = type metadata accessor for AudioSource();
  v40 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v36[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11AudioSourceVSg_ADtMd, &_s13SiriUtilities11AudioSourceVSg_ADtMR);
  __chkstk_darwin(v6);
  v8 = &v36[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
  __chkstk_darwin(v9 - 8);
  v11 = &v36[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v14 = &v36[-v13];
  __chkstk_darwin(v15);
  v17 = &v36[-v16];
  v19 = a1[3];
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v19);
  if ((*(v18 + 112))(v19, v18))
  {
    CurrentRequest.audioSource.getter();
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v17, 1, 1, v3);
  }

  static AudioSource.bluetoothDoAPDevice.getter();
  __swift_storeEnumTagSinglePayload(v14, 0, 1, v3);
  v20 = *(v6 + 48);
  outlined init with copy of AudioSource?(v17, v8);
  outlined init with copy of AudioSource?(v14, &v8[v20]);
  OUTLINED_FUNCTION_6_1(v8);
  if (v21)
  {
    OUTLINED_FUNCTION_7_11(v14);
    OUTLINED_FUNCTION_7_11(v17);
    OUTLINED_FUNCTION_6_1(&v8[v20]);
    if (v21)
    {
      _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v8, &_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
      goto LABEL_14;
    }

LABEL_12:
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v8, &_s13SiriUtilities11AudioSourceVSg_ADtMd, &_s13SiriUtilities11AudioSourceVSg_ADtMR);
LABEL_20:
    v34 = 0;
    return v34 & 1;
  }

  outlined init with copy of AudioSource?(v8, v11);
  OUTLINED_FUNCTION_6_1(&v8[v20]);
  if (v21)
  {
    OUTLINED_FUNCTION_7_11(v14);
    OUTLINED_FUNCTION_7_11(v17);
    (*(v40 + 8))(v11, v3);
    goto LABEL_12;
  }

  v22 = v40;
  (*(v40 + 32))(v5, &v8[v20], v3);
  lazy protocol witness table accessor for type AudioSource and conformance AudioSource();
  v37 = dispatch thunk of static Equatable.== infix(_:_:)();
  v23 = *(v22 + 8);
  v23(v5, v3);
  _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v14, &_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
  _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v17, &_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
  v23(v11, v3);
  _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v8, &_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
  if ((v37 & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_14:
  v24 = v39;
  v25 = *(v39 + 40);
  if (!v25)
  {
    goto LABEL_20;
  }

  v26 = *(v39 + 48);
  v27 = v25;
  if ([v27 callCapability] != &dword_0 + 1 || (v26 & 1) == 0 || (v28 = App.appIdentifier.getter(), !v29))
  {

    goto LABEL_20;
  }

  v30 = v28;
  v31 = v29;
  v32 = v24[20];
  v33 = v24[21];
  __swift_project_boxed_opaque_existential_1(v24 + 17, v32);
  v34 = (*(v33 + 8))(v30, v31, v32, v33);

  return v34 & 1;
}

unint64_t type metadata accessor for SAUIPlayNotificationSound()
{
  result = lazy cache variable for type metadata for SAUIPlayNotificationSound;
  if (!lazy cache variable for type metadata for SAUIPlayNotificationSound)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for SAUIPlayNotificationSound);
  }

  return result;
}

uint64_t outlined init with copy of AudioSource?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type AudioSource and conformance AudioSource()
{
  result = lazy protocol witness table cache variable for type AudioSource and conformance AudioSource;
  if (!lazy protocol witness table cache variable for type AudioSource and conformance AudioSource)
  {
    type metadata accessor for AudioSource();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AudioSource and conformance AudioSource);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AnnounceCallInvocationType and conformance AnnounceCallInvocationType()
{
  result = lazy protocol witness table cache variable for type AnnounceCallInvocationType and conformance AnnounceCallInvocationType;
  if (!lazy protocol witness table cache variable for type AnnounceCallInvocationType and conformance AnnounceCallInvocationType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnnounceCallInvocationType and conformance AnnounceCallInvocationType);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AnnounceCallsContext(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 9))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for AnnounceCallsContext(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AnnounceCallInvocationType(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for AnswerCallOutputStrategy(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 176))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t storeEnumTagSinglePayload for AnswerCallOutputStrategy(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 176) = 1;
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

    *(result + 176) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

Swift::Bool __swiftcall App.isPhoneFirstPartyApp()()
{
  v0 = App.appIdentifier.getter();
  v2 = static PhoneCallAppNameConstants.isPhone(appId:)(v0, v1);

  return v2 & 1;
}

uint64_t App.getAppName(forLocale:appInfoBuilder:)(uint64_t a1, void *a2)
{
  v4 = a2[3];
  v5 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v4);
  return (*(v5 + 16))(v2, a1, v4, v5);
}

uint64_t App.toSpeakableStringAppName(forLocale:appInfoBuilder:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a2[3];
  v7 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v6);
  (*(v7 + 16))(v3, a1, v6, v7);
  if (v8)
  {
    SpeakableString.init(print:speak:)();
    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = type metadata accessor for SpeakableString();

  return __swift_storeEnumTagSinglePayload(a3, v9, 1, v10);
}

uint64_t App.toUsoEntityBuilder(locale:)(uint64_t a1)
{
  v1 = type metadata accessor for UsoIdentifier();
  OUTLINED_FUNCTION_7();
  v3 = v2;
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_4();
  v7 = v6 - v5;
  type metadata accessor for UsoEntityBuilder_common_App();
  swift_allocObject();
  v8 = UsoEntityBuilder_common_App.init()();
  type metadata accessor for AppInformationResolver();
  swift_allocObject();

  AppInformationResolver.init(app:)();
  dispatch thunk of AppInformationResolver.getLocalizedAppDisplayName(inLocale:)();
  v10 = v9;

  if (v10)
  {
    dispatch thunk of UsoEntityBuilder_common_App.setName(value:)();
  }

  App.appIdentifier.getter();
  if (v11)
  {
    if (dispatch thunk of UsoEntityBuilder_common_App.name.getter())
    {
      UsoIdentifier.init(value:appBundleId:namespace:)();
      dispatch thunk of UsoBuilder.addUsoIdentifier(usoIdentifier:)();

      (*(v3 + 8))(v7, v1);
    }

    else
    {
    }
  }

  return v8;
}

uint64_t App.settingsUrl.getter()
{
  type metadata accessor for PhoneError(0);
  OUTLINED_FUNCTION_23_1();
  __chkstk_darwin(v0);
  OUTLINED_FUNCTION_4();
  v3 = v2 - v1;
  v4 = App.appIdentifier.getter();
  v6 = static PhoneCallAppNameConstants.isPhone(appId:)(v4, v5);

  if (v6)
  {
    return 0xD000000000000010;
  }

  if (App.isFaceTime()())
  {
    return 0xD000000000000013;
  }

  v8 = App.appIdentifier.getter();
  if (v9)
  {
    String.append(_:)(*&v8);

    return 0x666572702D707061;
  }

  else
  {
    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static Logger.siriPhone);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_0, v11, v12, "#App+SiriKitPhone missing app identifier when getting settingsUrl", v13, 2u);
    }

    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type PhoneError and conformance PhoneError(&lazy protocol witness table cache variable for type PhoneError and conformance PhoneError, type metadata accessor for PhoneError, &protocol conformance descriptor for PhoneError);
    swift_allocError();
    PhoneError.logged()(v14);
    _s27PhoneCallFlowDelegatePlugin0A5ErrorOWOhTm_0(v3, type metadata accessor for PhoneError);
    return swift_willThrow();
  }
}

uint64_t App.toAppDescription(deviceState:appInfoBuilder:)@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_7();
  v39 = v7;
  v40 = v6;
  __chkstk_darwin(v6);
  OUTLINED_FUNCTION_4();
  v38 = v9 - v8;
  type metadata accessor for CommonDirectAction(0);
  OUTLINED_FUNCTION_23_1();
  __chkstk_darwin(v10);
  OUTLINED_FUNCTION_4();
  v13 = (v12 - v11);
  v14 = type metadata accessor for Locale();
  OUTLINED_FUNCTION_7();
  v16 = v15;
  __chkstk_darwin(v17);
  OUTLINED_FUNCTION_4();
  v20 = v19 - v18;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of DeviceState.siriLocale.getter();
  v21 = a2[3];
  v22 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v21);
  v23 = (*(v22 + 16))(v3, v20, v21, v22);
  v25 = v24;
  (*(v16 + 8))(v20, v14);
  if (!v25)
  {
    goto LABEL_5;
  }

  v26 = App.appIdentifier.getter();
  if (!v27)
  {

LABEL_5:
    v36 = type metadata accessor for AppDescription(0);
    v34 = a3;
    v35 = 1;
    return __swift_storeEnumTagSinglePayload(v34, v35, 1, v36);
  }

  v28 = v26;
  v29 = v27;
  *v13 = v26;
  v13[1] = v27;
  swift_storeEnumTagMultiPayload();

  CommonDirectAction.toSAIntentGroupRunSiriKitExecutor(deviceState:)(a1);
  _s27PhoneCallFlowDelegatePlugin0A5ErrorOWOhTm_0(v13, type metadata accessor for CommonDirectAction);
  v30 = App.isFirstParty()();
  UUID.init()();
  (*(v39 + 16))(a3, v38, v40);
  v31 = type metadata accessor for AppDescription(0);
  v32 = (a3 + v31[5]);
  *v32 = v23;
  v32[1] = v25;
  v33 = (a3 + v31[6]);
  *v33 = v28;
  v33[1] = v29;
  *(a3 + v31[7]) = v30;
  type metadata accessor for SAIntentGroupRunSiriKitExecutor();
  CodableAceObject.init(wrappedValue:)();
  (*(v39 + 8))(v38, v40);
  v34 = a3;
  v35 = 0;
  v36 = v31;
  return __swift_storeEnumTagSinglePayload(v34, v35, 1, v36);
}

uint64_t Unmanaged<>.stringValue.getter(void *a1)
{
  v1 = a1;
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

void _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_15_17();
  if (v31 && (__swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR), v32 = OUTLINED_FUNCTION_3_15(), v33 = v32, (v34 = *(v30 + 16)) != 0))
  {
    v35 = 0;
    v36 = v32 + 56;
    while (v35 < *(v30 + 16))
    {
      v37 = (v30 + 32 + 16 * v35);
      v39 = *v37;
      v38 = v37[1];
      ++v35;
      Hasher.init(_seed:)();

      String.hash(into:)();
      Hasher._finalize()();
      OUTLINED_FUNCTION_7_12();
      v42 = ~v41;
      while (1)
      {
        v43 = v40 & v42;
        v44 = (v40 & v42) >> 6;
        v45 = *(v36 + 8 * v44);
        v46 = 1 << (v40 & v42);
        if ((v46 & v45) == 0)
        {
          break;
        }

        v47 = (*(v33 + 48) + 16 * v43);
        v48 = *v47 == v39 && v47[1] == v38;
        if (v48 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          goto LABEL_16;
        }

        v40 = v43 + 1;
      }

      *(v36 + 8 * v44) = v46 | v45;
      v49 = (*(v33 + 48) + 16 * v43);
      *v49 = v39;
      v49[1] = v38;
      OUTLINED_FUNCTION_8_18();
      if (v51)
      {
        goto LABEL_19;
      }

      *(v33 + 16) = v50;
LABEL_16:
      if (v35 == v34)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_17:

    OUTLINED_FUNCTION_11_10();
  }
}

uint64_t _s27PhoneCallFlowDelegatePlugin0A5ErrorOWOhTm_0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_23_1();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t type metadata accessor for SAIntentGroupRunSiriKitExecutor()
{
  result = lazy cache variable for type metadata for SAIntentGroupRunSiriKitExecutor;
  if (!lazy cache variable for type metadata for SAIntentGroupRunSiriKitExecutor)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for SAIntentGroupRunSiriKitExecutor);
  }

  return result;
}

void _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC27PhoneCallFlowDelegatePlugin0eF4VerbO_Tt0g5()
{
  OUTLINED_FUNCTION_15_17();
  if (v1 && (__swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy27PhoneCallFlowDelegatePlugin0cD4VerbOGMd, &_ss11_SetStorageCy27PhoneCallFlowDelegatePlugin0cD4VerbOGMR), v2 = OUTLINED_FUNCTION_3_15(), v3 = v2, (v28 = *(v0 + 16)) != 0))
  {
    v4 = 0;
    v5 = v2 + 56;
    v26 = v0;
    v27 = v0 + 32;
    while (v4 < *(v0 + 16))
    {
      v6 = *(v27 + v4++);
      Hasher.init(_seed:)();
      switch(v6)
      {
        case 2:
        case 3:
          OUTLINED_FUNCTION_13_16();
          break;
        default:
          break;
      }

      String.hash(into:)();

      Hasher._finalize()();
      OUTLINED_FUNCTION_7_12();
      v8 = ~v7;
      v10 = v9 & ~v7;
      v11 = v10 >> 6;
      v12 = *(v5 + 8 * (v10 >> 6));
      v13 = 1 << v10;
      if (((1 << v10) & v12) != 0)
      {
        while (1)
        {
          v14 = 0xE400000000000000;
          v15 = 1819042147;
          switch(*(*(v3 + 48) + v10))
          {
            case 1:
              v15 = 0x636162206C6C6163;
              v14 = 0xE90000000000006BLL;
              break;
            case 2:
              v14 = 0xE800000000000000;
              v15 = OUTLINED_FUNCTION_17_6();
              break;
            case 3:
              v15 = OUTLINED_FUNCTION_17_6();
              v17 = 0x6F6964756120;
              goto LABEL_19;
            case 4:
              v15 = 0x7072656B61657073;
              v16 = 1701736296;
              goto LABEL_23;
            case 5:
              v15 = 1684957542;
              break;
            case 6:
              v14 = 0xE600000000000000;
              v15 = 0x6C6169646572;
              break;
            case 7:
              v14 = 0xE700000000000000;
              v15 = 0x79666972616C63;
              break;
            case 8:
              v15 = 1684104562;
              break;
            case 9:
              v14 = 0xE700000000000000;
              v15 = 0x6D7269666E6F63;
              break;
            case 0xA:
              v14 = 0xE600000000000000;
              v15 = 0x726577736E61;
              break;
            case 0xB:
              v14 = 0xE700000000000000;
              v15 = 0x70755F676E6168;
              break;
            case 0xC:
              v14 = 0xE600000000000000;
              v15 = 0x6574656C6564;
              break;
            case 0xD:
              v15 = 0x65526F54746E6177;
              v16 = 1952540016;
LABEL_23:
              v14 = v16 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
              break;
            case 0xE:
              v15 = 1852403562;
              break;
            case 0xF:
              v15 = 0x6974726150646461;
              v17 = 0x746E61706963;
LABEL_19:
              v14 = v17 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
              break;
            case 0x10:
              v15 = 0xD000000000000011;
              v14 = 0x8000000000453820;
              break;
            default:
              break;
          }

          v18 = 0xE400000000000000;
          v19 = 1819042147;
          switch(v6)
          {
            case 1:
              v19 = 0x636162206C6C6163;
              v18 = 0xE90000000000006BLL;
              break;
            case 2:
              v18 = 0xE800000000000000;
              OUTLINED_FUNCTION_16_7();
              break;
            case 3:
              OUTLINED_FUNCTION_16_7();
              v21 = 0x6F6964756120;
              goto LABEL_38;
            case 4:
              v19 = 0x7072656B61657073;
              v20 = 1701736296;
              goto LABEL_42;
            case 5:
              v19 = 1684957542;
              break;
            case 6:
              v18 = 0xE600000000000000;
              v19 = 0x6C6169646572;
              break;
            case 7:
              v18 = 0xE700000000000000;
              v19 = 0x79666972616C63;
              break;
            case 8:
              v19 = 1684104562;
              break;
            case 9:
              v18 = 0xE700000000000000;
              v19 = 0x6D7269666E6F63;
              break;
            case 10:
              v18 = 0xE600000000000000;
              v19 = 0x726577736E61;
              break;
            case 11:
              v18 = 0xE700000000000000;
              v19 = 0x70755F676E6168;
              break;
            case 12:
              v18 = 0xE600000000000000;
              v19 = 0x6574656C6564;
              break;
            case 13:
              v19 = 0x65526F54746E6177;
              v20 = 1952540016;
LABEL_42:
              v18 = v20 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
              break;
            case 14:
              v19 = 1852403562;
              break;
            case 15:
              v19 = 0x6974726150646461;
              v21 = 0x746E61706963;
LABEL_38:
              v18 = v21 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
              break;
            case 16:
              v19 = 0xD000000000000011;
              v18 = 0x8000000000453820;
              break;
            default:
              break;
          }

          if (v15 == v19 && v14 == v18)
          {
            break;
          }

          v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v23)
          {
            goto LABEL_55;
          }

          v10 = (v10 + 1) & v8;
          v11 = v10 >> 6;
          v12 = *(v5 + 8 * (v10 >> 6));
          v13 = 1 << v10;
          if ((v12 & (1 << v10)) == 0)
          {
            goto LABEL_52;
          }
        }
      }

      else
      {
LABEL_52:
        *(v5 + 8 * v11) = v12 | v13;
        *(*(v3 + 48) + v10) = v6;
        OUTLINED_FUNCTION_8_18();
        if (v25)
        {
          goto LABEL_58;
        }

        *(v3 + 16) = v24;
      }

LABEL_55:
      v0 = v26;
      if (v4 == v28)
      {
        goto LABEL_56;
      }
    }

    __break(1u);
LABEL_58:
    __break(1u);
  }

  else
  {
LABEL_56:
  }
}

void _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC17SiriAppResolution0F0C_Tt0g5(uint64_t a1)
{
  v1 = a1;
  if (specialized Array.count.getter(a1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy17SiriAppResolution0D0CGMd, &_ss11_SetStorageCy17SiriAppResolution0D0CGMR);
    v2 = OUTLINED_FUNCTION_3_15();
  }

  else
  {
    v2 = _swiftEmptySetSingleton;
  }

  v20 = specialized Array.count.getter(v1);
  if (v20)
  {
    v3 = 0;
    v4 = v2 + 7;
    v18 = v1;
    v19 = v1 & 0xC000000000000001;
    v17 = v1 + 32;
    while (1)
    {
      specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v3, v19 == 0, v1);
      if (v19)
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v5 = *(v17 + 8 * v3);
      }

      v6 = __OFADD__(v3++, 1);
      if (v6)
      {
        break;
      }

      type metadata accessor for App();
      OUTLINED_FUNCTION_6_15();
      lazy protocol witness table accessor for type PhoneError and conformance PhoneError(&lazy protocol witness table cache variable for type App and conformance App, v7, &protocol conformance descriptor for App);
      dispatch thunk of Hashable._rawHashValue(seed:)();
      OUTLINED_FUNCTION_7_12();
      v10 = ~v9;
      while (1)
      {
        v11 = v8 & v10;
        v12 = (v8 & v10) >> 6;
        v13 = v4[v12];
        v14 = 1 << (v8 & v10);
        if ((v14 & v13) == 0)
        {
          break;
        }

        OUTLINED_FUNCTION_6_15();
        lazy protocol witness table accessor for type PhoneError and conformance PhoneError(&lazy protocol witness table cache variable for type App and conformance App, v15, &protocol conformance descriptor for App);
        if (dispatch thunk of static Equatable.== infix(_:_:)())
        {

          goto LABEL_17;
        }

        v8 = v11 + 1;
      }

      v4[v12] = v14 | v13;
      *(v2[6] + 8 * v11) = v5;
      OUTLINED_FUNCTION_8_18();
      if (v6)
      {
        goto LABEL_20;
      }

      v2[2] = v16;
LABEL_17:
      v1 = v18;
      if (v3 == v20)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_18:
  }
}

void _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC27PhoneCallFlowDelegatePlugin07OngoingF12OfferOptionsO_Tt0g5(uint64_t a1)
{
  v1 = a1;
  if (!*(a1 + 16))
  {
    goto LABEL_29;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy27PhoneCallFlowDelegatePlugin07OngoingD12OfferOptionsOGMd, &_ss11_SetStorageCy27PhoneCallFlowDelegatePlugin07OngoingD12OfferOptionsOGMR);
  v2 = OUTLINED_FUNCTION_3_15();
  v22 = *(v1 + 16);
  if (!v22)
  {
    goto LABEL_29;
  }

  v3 = 0;
  v20 = v1;
  v21 = v1 + 32;
  while (1)
  {
    if (v3 >= *(v1 + 16))
    {
      __break(1u);
      goto LABEL_31;
    }

    v4 = *(v21 + v3++);
    Hasher.init(_seed:)();
    String.hash(into:)();

    Hasher._finalize()();
    OUTLINED_FUNCTION_7_12();
    v6 = ~v5;
    v8 = v7 & ~v5;
    OUTLINED_FUNCTION_14_15();
    if ((v11 & v10) == 0)
    {
      break;
    }

    while (1)
    {
      if (*(*(v2 + 48) + v8))
      {
        if (*(*(v2 + 48) + v8) == 1)
        {
          v12 = 0x654E646E41646E65;
          v13 = 0xED00006C6C614377;
          if (!v4)
          {
            goto LABEL_18;
          }
        }

        else
        {
          v12 = 0x4E646E41646C6F68;
          v13 = 0xEE006C6C61437765;
          if (!v4)
          {
LABEL_18:
            v15 = 0xE300000000000000;
            v14 = 6579297;
            goto LABEL_19;
          }
        }
      }

      else
      {
        v13 = 0xE300000000000000;
        v12 = 6579297;
        if (!v4)
        {
          goto LABEL_18;
        }
      }

      v14 = v4 == 1 ? 0x654E646E41646E65 : 0x4E646E41646C6F68;
      v15 = v4 == 1 ? 0xED00006C6C614377 : 0xEE006C6C61437765;
LABEL_19:
      if (v12 == v14 && v13 == v15)
      {
        break;
      }

      v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v17)
      {
        goto LABEL_28;
      }

      v8 = (v8 + 1) & v6;
      OUTLINED_FUNCTION_14_15();
      if ((v10 & v11) == 0)
      {
        goto LABEL_25;
      }
    }

LABEL_28:
    v1 = v20;
    if (v3 == v22)
    {
LABEL_29:

      return;
    }
  }

LABEL_25:
  *(v2 + 56 + 8 * v9) = v10 | v11;
  *(*(v2 + 48) + v8) = v4;
  OUTLINED_FUNCTION_8_18();
  if (!v19)
  {
    *(v2 + 16) = v18;
    goto LABEL_28;
  }

LABEL_31:
  __break(1u);
}

void *_sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC11SiriKitFlow0eF16ReliabilityCodesO_Tt0g5(uint64_t a1)
{
  v2 = type metadata accessor for SiriKitReliabilityCodes();
  OUTLINED_FUNCTION_7();
  v36 = v3;
  __chkstk_darwin(v4);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v40 = &v31 - v8;
  if (!*(a1 + 16))
  {
    v10 = _swiftEmptySetSingleton;
    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy11SiriKitFlow0cD16ReliabilityCodesOGMd, &_ss11_SetStorageCy11SiriKitFlow0cD16ReliabilityCodesOGMR);
  result = OUTLINED_FUNCTION_3_15();
  v10 = result;
  v35 = *(a1 + 16);
  if (!v35)
  {
LABEL_15:

    return v10;
  }

  v11 = 0;
  v39 = result + 7;
  v12 = *(v36 + 80);
  v33 = a1;
  v34 = a1 + ((v12 + 32) & ~v12);
  v38 = v36 + 16;
  v13 = (v36 + 8);
  v32 = (v36 + 32);
  while (v11 < *(a1 + 16))
  {
    v14 = *(v36 + 72);
    v37 = v11 + 1;
    v15 = *(v36 + 16);
    v15(v40, v34 + v14 * v11, v2);
    OUTLINED_FUNCTION_4_13();
    lazy protocol witness table accessor for type PhoneError and conformance PhoneError(&lazy protocol witness table cache variable for type SiriKitReliabilityCodes and conformance SiriKitReliabilityCodes, v16, &protocol conformance descriptor for SiriKitReliabilityCodes);
    v17 = dispatch thunk of Hashable._rawHashValue(seed:)();
    v18 = ~(-1 << *(v10 + 32));
    while (1)
    {
      v19 = v17 & v18;
      v20 = (v17 & v18) >> 6;
      v21 = v39[v20];
      v22 = 1 << (v17 & v18);
      if ((v22 & v21) == 0)
      {
        break;
      }

      v23 = v10;
      v15(v6, v10[6] + v19 * v14, v2);
      OUTLINED_FUNCTION_4_13();
      lazy protocol witness table accessor for type PhoneError and conformance PhoneError(&lazy protocol witness table cache variable for type SiriKitReliabilityCodes and conformance SiriKitReliabilityCodes, v24, &protocol conformance descriptor for SiriKitReliabilityCodes);
      v25 = dispatch thunk of static Equatable.== infix(_:_:)();
      v26 = *v13;
      (*v13)(v6, v2);
      if (v25)
      {
        result = (v26)(v40, v2);
        v10 = v23;
        goto LABEL_12;
      }

      v17 = v19 + 1;
      v10 = v23;
    }

    v27 = v40;
    v39[v20] = v22 | v21;
    result = (*v32)(v10[6] + v19 * v14, v27, v2);
    v28 = v10[2];
    v29 = __OFADD__(v28, 1);
    v30 = v28 + 1;
    if (v29)
    {
      goto LABEL_17;
    }

    v10[2] = v30;
LABEL_12:
    v11 = v37;
    a1 = v33;
    if (v37 == v35)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

void _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC27PhoneCallFlowDelegatePlugin23AppAndDeviceRestrictionV0J8CategoryO_Tt0g5()
{
  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_15_17();
  if (v1 && (__swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy27PhoneCallFlowDelegatePlugin23AppAndDeviceRestrictionV0H8CategoryOGMd, &_ss11_SetStorageCy27PhoneCallFlowDelegatePlugin23AppAndDeviceRestrictionV0H8CategoryOGMR), v5 = OUTLINED_FUNCTION_3_15(), (v6 = *(v0 + 16)) != 0))
  {
    OUTLINED_FUNCTION_11_18();
    while (v2 < *(v0 + 16))
    {
      v7 = *(v4 + v2++);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v7);
      Hasher._finalize()();
      while (1)
      {
        OUTLINED_FUNCTION_10_17();
        if (v12)
        {
          break;
        }

        if (v7 == *(*(v5 + 48) + v8))
        {
          goto LABEL_11;
        }
      }

      *(v3 + 8 * v9) = v11 | v10;
      *(*(v5 + 48) + v8) = v7;
      OUTLINED_FUNCTION_8_18();
      if (v14)
      {
        goto LABEL_14;
      }

      *(v5 + 16) = v13;
LABEL_11:
      if (v2 == v6)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
  }

  else
  {
LABEL_12:

    OUTLINED_FUNCTION_11_10();
  }
}

void *_sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC12SiriOntology025UsoEntity_applePhoneCall_jK9AttributeC13DefinedValuesOSg_Tt0g5(uint64_t a1)
{
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSg_AFtMR);
  OUTLINED_FUNCTION_23_1();
  __chkstk_darwin(v2);
  v4 = &v49 - v3;
  v5 = type metadata accessor for UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues();
  OUTLINED_FUNCTION_7();
  v7 = v6;
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_4();
  v56 = v10 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
  v53 = *(v11 - 8);
  __chkstk_darwin(v11 - 8);
  v60 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v49 - v14;
  __chkstk_darwin(v16);
  v18 = &v49 - v17;
  __chkstk_darwin(v19);
  v63 = &v49 - v20;
  if (!*(a1 + 16))
  {
    v64 = _swiftEmptySetSingleton;
    goto LABEL_26;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy12SiriOntology025UsoEntity_applePhoneCall_hI9AttributeC13DefinedValuesOSgGMd, &_ss11_SetStorageCy12SiriOntology025UsoEntity_applePhoneCall_hI9AttributeC13DefinedValuesOSgGMR);
  result = OUTLINED_FUNCTION_3_15();
  v64 = result;
  v52 = *(a1 + 16);
  if (!v52)
  {
    goto LABEL_26;
  }

  v22 = 0;
  v57 = v64 + 7;
  v51 = a1 + ((*(v53 + 80) + 32) & ~*(v53 + 80));
  v55 = (v7 + 32);
  v59 = (v7 + 8);
  v23 = &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd;
  v49 = v18;
  v50 = a1;
  while (1)
  {
    if (v22 >= *(a1 + 16))
    {
      __break(1u);
      goto LABEL_28;
    }

    v24 = *(v53 + 72);
    v54 = v22;
    v62 = v24;
    v25 = v63;
    outlined init with copy of UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues?(v51 + v24 * v22, v63);
    Hasher.init(_seed:)();
    outlined init with copy of UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues?(v25, v18);
    OUTLINED_FUNCTION_21_3(v18);
    if (v36)
    {
      Hasher._combine(_:)(0);
    }

    else
    {
      v26 = v56;
      (*v55)(v56, v18, v5);
      Hasher._combine(_:)(1u);
      OUTLINED_FUNCTION_5_19();
      lazy protocol witness table accessor for type PhoneError and conformance PhoneError(&lazy protocol witness table cache variable for type UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues and conformance UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues, v27, &protocol conformance descriptor for UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues);
      dispatch thunk of Hashable.hash(into:)();
      (*v59)(v26, v5);
    }

    v28 = v58;
    v29 = Hasher._finalize()();
    v61 = ~(-1 << *(v64 + 32));
    v30 = v29 & v61;
    v31 = (v29 & v61) >> 6;
    v32 = v57;
    v33 = v57[v31];
    v34 = 1 << (v29 & v61);
    if ((v34 & v33) == 0)
    {
      break;
    }

    while (1)
    {
      outlined init with copy of UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues?(v64[6] + v30 * v62, v15);
      v35 = *(v28 + 48);
      outlined init with copy of UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues?(v15, v4);
      outlined init with copy of UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues?(v63, &v4[v35]);
      OUTLINED_FUNCTION_21_3(v4);
      if (v36)
      {
        break;
      }

      outlined init with copy of UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues?(v4, v60);
      OUTLINED_FUNCTION_21_3(&v4[v35]);
      if (v36)
      {
        OUTLINED_FUNCTION_12_19(v15);
        (*v59)(v60, v5);
LABEL_17:
        outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v4, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSg_AFtMR);
        goto LABEL_19;
      }

      v37 = v56;
      v38 = v23;
      v39 = v60;
      (*v55)(v56, &v4[v35], v5);
      OUTLINED_FUNCTION_5_19();
      lazy protocol witness table accessor for type PhoneError and conformance PhoneError(&lazy protocol witness table cache variable for type UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues and conformance UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues, v40, &protocol conformance descriptor for UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues);
      v41 = dispatch thunk of static Equatable.== infix(_:_:)();
      v42 = *v59;
      v43 = v37;
      v32 = v57;
      (*v59)(v43, v5);
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v15, v38, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
      v44 = v39;
      v23 = v38;
      v42(v44, v5);
      v28 = v58;
      OUTLINED_FUNCTION_12_19(v4);
      if (v41)
      {
        goto LABEL_22;
      }

LABEL_19:
      v30 = (v30 + 1) & v61;
      v31 = v30 >> 6;
      v33 = v32[v30 >> 6];
      v34 = 1 << v30;
      if ((v33 & (1 << v30)) == 0)
      {
        goto LABEL_20;
      }
    }

    OUTLINED_FUNCTION_12_19(v15);
    OUTLINED_FUNCTION_21_3(&v4[v35]);
    if (!v36)
    {
      goto LABEL_17;
    }

    OUTLINED_FUNCTION_12_19(v4);
LABEL_22:
    result = OUTLINED_FUNCTION_12_19(v63);
LABEL_23:
    v22 = v54 + 1;
    a1 = v50;
    v18 = v49;
    if (v54 + 1 == v52)
    {
LABEL_26:

      return v64;
    }
  }

LABEL_20:
  v32[v31] = v33 | v34;
  v45 = v64;
  result = outlined init with take of UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues?(v63, v64[6] + v30 * v62);
  v46 = v45[2];
  v47 = __OFADD__(v46, 1);
  v48 = v46 + 1;
  if (!v47)
  {
    v64[2] = v48;
    goto LABEL_23;
  }

LABEL_28:
  __break(1u);
  return result;
}

void _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo25INSiriAuthorizationStatusV_Tt0g5()
{
  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_15_17();
  if (v1 && (__swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo25INSiriAuthorizationStatusVGMd, &_ss11_SetStorageCySo25INSiriAuthorizationStatusVGMR), v5 = OUTLINED_FUNCTION_3_15(), (v6 = *(v0 + 16)) != 0))
  {
    OUTLINED_FUNCTION_11_18();
    while (v2 < *(v0 + 16))
    {
      v7 = *(v4 + 8 * v2++);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v7);
      Hasher._finalize()();
      while (1)
      {
        OUTLINED_FUNCTION_10_17();
        if (v12)
        {
          break;
        }

        if (*(*(v5 + 48) + 8 * v8) == v7)
        {
          goto LABEL_11;
        }
      }

      *(v3 + 8 * v9) = v11 | v10;
      *(*(v5 + 48) + 8 * v8) = v7;
      OUTLINED_FUNCTION_8_18();
      if (v14)
      {
        goto LABEL_14;
      }

      *(v5 + 16) = v13;
LABEL_11:
      if (v2 == v6)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
  }

  else
  {
LABEL_12:

    OUTLINED_FUNCTION_11_10();
  }
}

uint64_t outlined init with copy of UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t lazy protocol witness table accessor for type PhoneError and conformance PhoneError(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t AppDescription.init(id:appName:appBundleId:isFirstParty:rskeCommand:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a8@<X8>)
{
  v15 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_7();
  v23 = v16;
  (*(v17 + 16))(a8, a1, v15);
  v18 = type metadata accessor for AppDescription(0);
  v19 = (a8 + v18[5]);
  *v19 = a2;
  v19[1] = a3;
  v20 = (a8 + v18[6]);
  *v20 = a4;
  v20[1] = a5;
  *(a8 + v18[7]) = a6;
  type metadata accessor for SAIntentGroupRunSiriKitExecutor();
  CodableAceObject.init(wrappedValue:)();
  v21 = *(v23 + 8);

  return v21(a1, v15);
}

uint64_t type metadata accessor for AppDescription(uint64_t a1)
{
  result = type metadata singleton initialization cache for AppDescription;
  if (!type metadata singleton initialization cache for AppDescription)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AppDescription.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UUID();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t AppDescription.appName.getter()
{
  v1 = *(v0 + *(type metadata accessor for AppDescription(0) + 20));

  return v1;
}

uint64_t AppDescription.appBundleId.getter()
{
  v1 = *(v0 + *(type metadata accessor for AppDescription(0) + 24));

  return v1;
}

uint64_t property wrapper backing initializer of SingleResultVoicemailModel.repeatDirectInvocation(uint64_t a1)
{
  type metadata accessor for SAIntentGroupRunSiriKitExecutor();

  return CodableAceObject.init(wrappedValue:)();
}

uint64_t AppDescription.rskeCommand.getter()
{
  type metadata accessor for AppDescription(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  return CodableAceObject.wrappedValue.getter();
}

uint64_t AppDescription.rskeCommand.setter(uint64_t a1)
{
  type metadata accessor for AppDescription(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  return CodableAceObject.wrappedValue.setter();
}

uint64_t (*AppDescription.rskeCommand.modify(uint64_t *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  type metadata accessor for AppDescription(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  v2[4] = CodableAceObject.wrappedValue.modify();
  return AppDescription.rskeCommand.modify;
}

void AppDescription.rskeCommand.modify(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t static AppDescription.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for AppDescription(0) + 24);
  v5 = *(a1 + v4);
  v6 = *(a1 + v4 + 8);
  v7 = (a2 + v4);
  if (v5 == *v7 && v6 == v7[1])
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t AppDescription.hash(into:)(uint64_t a1)
{
  type metadata accessor for AppDescription(0);

  return String.hash(into:)();
}

uint64_t AppDescription.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656D614E707061 && a2 == 0xE700000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6C646E7542707061 && a2 == 0xEB00000000644965;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x5074737269467369 && a2 == 0xEC00000079747261;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x6D6D6F43656B7372 && a2 == 0xEB00000000646E61)
        {

          return 4;
        }

        else
        {
          v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

uint64_t AppDescription.CodingKeys.stringValue.getter(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x656D614E707061;
      break;
    case 2:
      result = 0x6C646E7542707061;
      break;
    case 3:
      result = 0x5074737269467369;
      break;
    case 4:
      result = 0x6D6D6F43656B7372;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AppDescription.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = AppDescription.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance AppDescription.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = static PhoneContactDisambiguationProperties.maxItemsForVoxReadout.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AppDescription.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppDescription.CodingKeys and conformance AppDescription.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AppDescription.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppDescription.CodingKeys and conformance AppDescription.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t AppDescription.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy27PhoneCallFlowDelegatePlugin14AppDescriptionV10CodingKeys33_AC6D52F0B5CB89634BA19EC0736619FFLLOGMd, &_ss22KeyedEncodingContainerVy27PhoneCallFlowDelegatePlugin14AppDescriptionV10CodingKeys33_AC6D52F0B5CB89634BA19EC0736619FFLLOGMR);
  OUTLINED_FUNCTION_7();
  v5 = v4;
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v6);
  v8 = &v12[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AppDescription.CodingKeys and conformance AppDescription.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12[15] = 0;
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_2_23();
  _s10Foundation4UUIDVACSEAAWlTm_0(v9, v10, &protocol conformance descriptor for UUID);
  OUTLINED_FUNCTION_5_3();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v1)
  {
    type metadata accessor for AppDescription(0);
    v12[14] = 1;
    OUTLINED_FUNCTION_5_3();
    KeyedEncodingContainer.encode(_:forKey:)();
    v12[13] = 2;
    OUTLINED_FUNCTION_5_3();
    KeyedEncodingContainer.encode(_:forKey:)();
    v12[12] = 3;
    OUTLINED_FUNCTION_5_3();
    KeyedEncodingContainer.encode(_:forKey:)();
    v12[11] = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
    lazy protocol witness table accessor for type CodableAceObject<SAIntentGroupRunSiriKitExecutor> and conformance CodableAceObject<A>(&lazy protocol witness table cache variable for type CodableAceObject<SAIntentGroupRunSiriKitExecutor> and conformance CodableAceObject<A>, &protocol conformance descriptor for CodableAceObject<A>);
    OUTLINED_FUNCTION_5_3();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v5 + 8))(v8, v3);
}

unint64_t lazy protocol witness table accessor for type AppDescription.CodingKeys and conformance AppDescription.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AppDescription.CodingKeys and conformance AppDescription.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppDescription.CodingKeys and conformance AppDescription.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppDescription.CodingKeys and conformance AppDescription.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppDescription.CodingKeys and conformance AppDescription.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppDescription.CodingKeys and conformance AppDescription.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppDescription.CodingKeys and conformance AppDescription.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppDescription.CodingKeys and conformance AppDescription.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppDescription.CodingKeys and conformance AppDescription.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppDescription.CodingKeys and conformance AppDescription.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppDescription.CodingKeys and conformance AppDescription.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppDescription.CodingKeys and conformance AppDescription.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppDescription.CodingKeys and conformance AppDescription.CodingKeys);
  }

  return result;
}

Swift::Int AppDescription.hashValue.getter()
{
  Hasher.init(_seed:)();
  type metadata accessor for AppDescription(0);
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t AppDescription.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  OUTLINED_FUNCTION_7();
  v36 = v3;
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v4);
  v6 = &v35 - v5;
  v7 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_7();
  v39 = v8;
  __chkstk_darwin(v9);
  v42 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy27PhoneCallFlowDelegatePlugin14AppDescriptionV10CodingKeys33_AC6D52F0B5CB89634BA19EC0736619FFLLOGMd, &_ss22KeyedDecodingContainerVy27PhoneCallFlowDelegatePlugin14AppDescriptionV10CodingKeys33_AC6D52F0B5CB89634BA19EC0736619FFLLOGMR);
  OUTLINED_FUNCTION_7();
  v40 = v12;
  v41 = v11;
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v13);
  v15 = &v35 - v14;
  v16 = type metadata accessor for AppDescription(0);
  __chkstk_darwin(v16);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AppDescription.CodingKeys and conformance AppDescription.CodingKeys();
  v43 = v15;
  v19 = v44;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v19)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v44 = v6;
  v20 = v39;
  v49 = 0;
  OUTLINED_FUNCTION_2_23();
  _s10Foundation4UUIDVACSEAAWlTm_0(v21, v22, &protocol conformance descriptor for UUID);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v23 = v18;
  (*(v20 + 32))(v18, v42, v7);
  v48 = 1;
  v24 = KeyedDecodingContainer.decode(_:forKey:)();
  v25 = v16;
  v26 = (v23 + *(v16 + 20));
  *v26 = v24;
  v26[1] = v27;
  v47 = 2;
  v42 = 0;
  v28 = KeyedDecodingContainer.decode(_:forKey:)();
  v29 = (v23 + *(v16 + 24));
  *v29 = v28;
  v29[1] = v30;
  v46 = 3;
  v31 = a1;
  *(v23 + *(v25 + 28)) = KeyedDecodingContainer.decode(_:forKey:)() & 1;
  v45 = 4;
  lazy protocol witness table accessor for type CodableAceObject<SAIntentGroupRunSiriKitExecutor> and conformance CodableAceObject<A>(&lazy protocol witness table cache variable for type CodableAceObject<SAIntentGroupRunSiriKitExecutor> and conformance CodableAceObject<A>, &protocol conformance descriptor for CodableAceObject<A>);
  v32 = v44;
  v33 = v38;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v40 + 8))(v43, v41);
  (*(v36 + 32))(v23 + *(v25 + 32), v32, v33);
  outlined init with copy of AppDescription(v23, v37);
  __swift_destroy_boxed_opaque_existential_1(v31);
  return outlined destroy of AppDescription(v23);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AppDescription(uint64_t a1)
{
  Hasher.init(_seed:)();
  AppDescription.hash(into:)(v2);
  return Hasher._finalize()();
}

uint64_t lazy protocol witness table accessor for type CodableAceObject<SAIntentGroupRunSiriKitExecutor> and conformance CodableAceObject<A>(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined init with copy of AppDescription(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppDescription(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of AppDescription(uint64_t a1)
{
  v2 = type metadata accessor for AppDescription(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t AppDisambiguationModel.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7263736544707061 && a2 == 0xEF736E6F69747069;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74706D6F7270 && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t AppDisambiguationModel.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 0x74706D6F7270;
  }

  else
  {
    return 0x7263736544707061;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AppDisambiguationModel.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = AppDisambiguationModel.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

PhoneCallFlowDelegatePlugin::PhoneCallMetrics::CodingKeys_optional protocol witness for CodingKey.init(intValue:) in conformance AppDisambiguationModel.CodingKeys@<W0>(Swift::Int a1@<X0>, PhoneCallFlowDelegatePlugin::PhoneCallMetrics::CodingKeys_optional *a2@<X8>)
{
  result.value = PhoneCallMetrics.CodingKeys.init(intValue:)(a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AppDisambiguationModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppDisambiguationModel.CodingKeys and conformance AppDisambiguationModel.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AppDisambiguationModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppDisambiguationModel.CodingKeys and conformance AppDisambiguationModel.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t AppDisambiguationModel.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy27PhoneCallFlowDelegatePlugin22AppDisambiguationModelV10CodingKeys33_AC6D52F0B5CB89634BA19EC0736619FFLLOGMd, &_ss22KeyedEncodingContainerVy27PhoneCallFlowDelegatePlugin22AppDisambiguationModelV10CodingKeys33_AC6D52F0B5CB89634BA19EC0736619FFLLOGMR);
  OUTLINED_FUNCTION_7();
  v9 = v8;
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v10);
  v12 = &v14 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AppDisambiguationModel.CodingKeys and conformance AppDisambiguationModel.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17 = a2;
  v16 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay27PhoneCallFlowDelegatePlugin14AppDescriptionVGMd, &_sSay27PhoneCallFlowDelegatePlugin14AppDescriptionVGMR);
  lazy protocol witness table accessor for type [AppDescription] and conformance <A> [A](&lazy protocol witness table cache variable for type [AppDescription] and conformance <A> [A], &lazy protocol witness table cache variable for type AppDescription and conformance AppDescription, &protocol conformance descriptor for AppDescription, &protocol conformance descriptor for <A> [A]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v4)
  {
    v15 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v9 + 8))(v12, v7);
}

unint64_t lazy protocol witness table accessor for type AppDisambiguationModel.CodingKeys and conformance AppDisambiguationModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AppDisambiguationModel.CodingKeys and conformance AppDisambiguationModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppDisambiguationModel.CodingKeys and conformance AppDisambiguationModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppDisambiguationModel.CodingKeys and conformance AppDisambiguationModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppDisambiguationModel.CodingKeys and conformance AppDisambiguationModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppDisambiguationModel.CodingKeys and conformance AppDisambiguationModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppDisambiguationModel.CodingKeys and conformance AppDisambiguationModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppDisambiguationModel.CodingKeys and conformance AppDisambiguationModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppDisambiguationModel.CodingKeys and conformance AppDisambiguationModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppDisambiguationModel.CodingKeys and conformance AppDisambiguationModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppDisambiguationModel.CodingKeys and conformance AppDisambiguationModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppDisambiguationModel.CodingKeys and conformance AppDisambiguationModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppDisambiguationModel.CodingKeys and conformance AppDisambiguationModel.CodingKeys);
  }

  return result;
}

uint64_t AppDisambiguationModel.init(from:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy27PhoneCallFlowDelegatePlugin22AppDisambiguationModelV10CodingKeys33_AC6D52F0B5CB89634BA19EC0736619FFLLOGMd, &_ss22KeyedDecodingContainerVy27PhoneCallFlowDelegatePlugin22AppDisambiguationModelV10CodingKeys33_AC6D52F0B5CB89634BA19EC0736619FFLLOGMR);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v3);
  v4 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  lazy protocol witness table accessor for type AppDisambiguationModel.CodingKeys and conformance AppDisambiguationModel.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay27PhoneCallFlowDelegatePlugin14AppDescriptionVGMd, &_sSay27PhoneCallFlowDelegatePlugin14AppDescriptionVGMR);
    lazy protocol witness table accessor for type [AppDescription] and conformance <A> [A](&lazy protocol witness table cache variable for type [AppDescription] and conformance <A> [A], &lazy protocol witness table cache variable for type AppDescription and conformance AppDescription, &protocol conformance descriptor for AppDescription, &protocol conformance descriptor for <A> [A]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v4 = v8;
    KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v6 = OUTLINED_FUNCTION_3_16();
    v7(v6);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v4;
}

uint64_t lazy protocol witness table accessor for type [AppDescription] and conformance <A> [A](unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay27PhoneCallFlowDelegatePlugin14AppDescriptionVGMd, &_sSay27PhoneCallFlowDelegatePlugin14AppDescriptionVGMR);
    _s10Foundation4UUIDVACSEAAWlTm_0(a2, type metadata accessor for AppDescription, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _s10Foundation4UUIDVACSEAAWlTm_0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t instantiation function for generic protocol witness table for AppDisambiguationModel(uint64_t a1)
{
  result = lazy protocol witness table accessor for type AppDisambiguationModel and conformance AppDisambiguationModel();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type AppDisambiguationModel and conformance AppDisambiguationModel()
{
  result = lazy protocol witness table cache variable for type AppDisambiguationModel and conformance AppDisambiguationModel;
  if (!lazy protocol witness table cache variable for type AppDisambiguationModel and conformance AppDisambiguationModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppDisambiguationModel and conformance AppDisambiguationModel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppDisambiguationModel and conformance AppDisambiguationModel;
  if (!lazy protocol witness table cache variable for type AppDisambiguationModel and conformance AppDisambiguationModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppDisambiguationModel and conformance AppDisambiguationModel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppDisambiguationModel and conformance AppDisambiguationModel;
  if (!lazy protocol witness table cache variable for type AppDisambiguationModel and conformance AppDisambiguationModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppDisambiguationModel and conformance AppDisambiguationModel);
  }

  return result;
}

uint64_t protocol witness for Decodable.init(from:) in conformance AppDisambiguationModel@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = AppDisambiguationModel.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

void type metadata completion function for AppDescription(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    type metadata accessor for CodableAceObject<SAIntentGroupRunSiriKitExecutor>(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for CodableAceObject<SAIntentGroupRunSiriKitExecutor>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for CodableAceObject<SAIntentGroupRunSiriKitExecutor>)
  {
    type metadata accessor for SAIntentGroupRunSiriKitExecutor();
    v1 = type metadata accessor for CodableAceObject();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for CodableAceObject<SAIntentGroupRunSiriKitExecutor>);
    }
  }
}

uint64_t getEnumTagSinglePayload for AppDisambiguationModel(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for AppDisambiguationModel(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AppDisambiguationModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for AppDescription.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t AppInfoBuilding.getAppNameIfThirdParty(_:requestedLocale:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (App.isFirstParty()())
  {
    return 0;
  }

  else
  {
    return (*(a4 + 16))(a1, a2, a3, a4);
  }
}

uint64_t AppInfoBuilder.getAppName(_:requestedLocale:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for AppInformationResolver();
  swift_allocObject();

  AppInformationResolver.init(app:)();
  v2 = dispatch thunk of AppInformationResolver.getLocalizedAppDisplayName(inLocale:)();

  return v2;
}

PhoneCallFlowDelegatePlugin::AppNameSpecifiedByUserSignalCollectionHistory __swiftcall AppNameSpecifiedByUserSignalCollectionHistory.init()()
{
  v0 = type metadata accessor for Date();
  OUTLINED_FUNCTION_7();
  v2 = v1;
  __chkstk_darwin(v3);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Date.distantPast.getter();
  Date.timeIntervalSince1970.getter();
  v7 = v6;
  (*(v2 + 8))(v5, v0);
  v8 = _swiftEmptyArrayStorage;
  v9 = v7;
  result.timestamp = v9;
  result.apps._rawValue = v8;
  return result;
}

uint64_t AppNameSpecifiedByUserSignalCollectionHistory.init(date:apps:)(uint64_t a1, uint64_t a2)
{
  Date.timeIntervalSince1970.getter();
  v4 = type metadata accessor for Date();
  (*(*(v4 - 8) + 8))(a1, v4);
  return a2;
}

void AppNameSpecifiedByUserSignalCollectionHistory.daysSinceLastShowed.getter(uint64_t a1, double a2)
{
  v2 = type metadata accessor for Date();
  OUTLINED_FUNCTION_7();
  v4 = v3;
  __chkstk_darwin(v5);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v26 - v9;
  Date.init(timeIntervalSince1970:)();
  Date.init()();
  Date.distance(to:)();
  v12 = v11;
  v13 = *(v4 + 8);
  v13(v7, v2);
  v13(v10, v2);
  v14 = v12 / 86400.0;
  if (v12 / 86400.0 < 0.0)
  {
    v15 = 0.0;
  }

  else
  {
    v15 = v12 / 86400.0;
  }

  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static Logger.siriPhone);

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v26 = v14;
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v27 = v20;
    *v19 = 136315394;
    Date.init(timeIntervalSince1970:)();
    lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v22;
    v13(v10, v2);
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v23, &v27);

    *(v19 + 4) = v24;
    *(v19 + 12) = 2048;
    if (v14 >= 0.0 && (*&v26 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_21;
    }

    if (v15 <= -9.22337204e18)
    {
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    if (v15 >= 9.22337204e18)
    {
LABEL_23:
      __break(1u);
      return;
    }

    v25 = fabs(v14);
    *(v19 + 14) = v15;
    _os_log_impl(&dword_0, v17, v18, "#AppNameSpecifiedByUserSignalCollectionHistory is shown at %s, which is %ld days ago last time", v19, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v20);
  }

  else
  {

    v25 = fabs(v14);
  }

  if (v14 >= 0.0 && v25 == INFINITY)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (v15 <= -9.22337204e18)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v15 >= 9.22337204e18)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }
}

uint64_t AppNameSpecifiedByUserSignalCollectionHistory.description.getter(uint64_t a1, double a2)
{
  _StringGuts.grow(_:)(27);
  v2._countAndFlagsBits = 0x203A737070610A7BLL;
  v2._object = 0xE800000000000000;
  String.append(_:)(v2);
  v3._countAndFlagsBits = Array.description.getter();
  String.append(_:)(v3);

  v4._countAndFlagsBits = 0x7473656D69740A2CLL;
  v4._object = 0xED0000203A706D61;
  String.append(_:)(v4);
  Double.write<A>(to:)();
  v5._countAndFlagsBits = 32010;
  v5._object = 0xE200000000000000;
  String.append(_:)(v5);
  return 0;
}

uint64_t AppNameSpecifiedByUserSignalCollectionHistory.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1936748641 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t AppNameSpecifiedByUserSignalCollectionHistory.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 1936748641;
  }

  else
  {
    return 0x6D617473656D6974;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AppNameSpecifiedByUserSignalCollectionHistory.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = AppNameSpecifiedByUserSignalCollectionHistory.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AppNameSpecifiedByUserSignalCollectionHistory.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppNameSpecifiedByUserSignalCollectionHistory.CodingKeys and conformance AppNameSpecifiedByUserSignalCollectionHistory.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AppNameSpecifiedByUserSignalCollectionHistory.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppNameSpecifiedByUserSignalCollectionHistory.CodingKeys and conformance AppNameSpecifiedByUserSignalCollectionHistory.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t static AppNameSpecifiedByUserSignalCollectionHistory.__derived_struct_equals(_:_:)(double a1, double a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a2)
  {
    return _sSasSQRzlE2eeoiySbSayxG_ABtFZ27PhoneCallFlowDelegatePlugin8AppQueryV8OverrideO_Tt1g5(a3, a4);
  }

  else
  {
    return 0;
  }
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ27PhoneCallFlowDelegatePlugin8AppQueryV8OverrideO_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ13SiriInference12ContactQueryV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContactQuery();
  OUTLINED_FUNCTION_7();
  v6 = v5;
  __chkstk_darwin(v7);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v10);
  v13 = &v27 - v12;
  v14 = *(a1 + 16);
  if (v14 != *(a2 + 16))
  {
    v24 = 0;
    return v24 & 1;
  }

  if (!v14 || a1 == a2)
  {
    v24 = 1;
    return v24 & 1;
  }

  v15 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v16 = a1 + v15;
  v17 = a2 + v15;
  v19 = *(v6 + 16);
  v18 = v6 + 16;
  v20 = (v18 - 8);
  v27 = *(v18 + 56);
  v28 = v19;
  while (1)
  {
    v21 = v28;
    result = (v28)(v13, v16, v4, v11);
    if (!v14)
    {
      break;
    }

    v23 = v18;
    v21(v9, v17, v4);
    lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type ContactQuery and conformance ContactQuery, &type metadata accessor for ContactQuery, &protocol conformance descriptor for ContactQuery);
    v24 = dispatch thunk of static Equatable.== infix(_:_:)();
    v25 = *v20;
    (*v20)(v9, v4);
    v25(v13, v4);
    if (v24)
    {
      v17 += v27;
      v16 += v27;
      v26 = v14-- == 1;
      v18 = v23;
      if (!v26)
      {
        continue;
      }
    }

    return v24 & 1;
  }

  __break(1u);
  return result;
}

uint64_t AppNameSpecifiedByUserSignalCollectionHistory.encode(to:)(void *a1, uint64_t a2, double a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy27PhoneCallFlowDelegatePlugin45AppNameSpecifiedByUserSignalCollectionHistoryV10CodingKeys33_BB580367CAC1C111592B619CF9D3CACFLLOGMd, &_ss22KeyedEncodingContainerVy27PhoneCallFlowDelegatePlugin45AppNameSpecifiedByUserSignalCollectionHistoryV10CodingKeys33_BB580367CAC1C111592B619CF9D3CACFLLOGMR);
  OUTLINED_FUNCTION_7();
  v8 = v7;
  __chkstk_darwin(v9);
  v11 = v13 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AppNameSpecifiedByUserSignalCollectionHistory.CodingKeys and conformance AppNameSpecifiedByUserSignalCollectionHistory.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v3)
  {
    v13[1] = a2;
    v14 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A], &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v8 + 8))(v11, v6);
}

void *AppNameSpecifiedByUserSignalCollectionHistory.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy27PhoneCallFlowDelegatePlugin45AppNameSpecifiedByUserSignalCollectionHistoryV10CodingKeys33_BB580367CAC1C111592B619CF9D3CACFLLOGMd, &_ss22KeyedDecodingContainerVy27PhoneCallFlowDelegatePlugin45AppNameSpecifiedByUserSignalCollectionHistoryV10CodingKeys33_BB580367CAC1C111592B619CF9D3CACFLLOGMR);
  OUTLINED_FUNCTION_7();
  v5 = v4;
  __chkstk_darwin(v6);
  v8 = v11 - v7;
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AppNameSpecifiedByUserSignalCollectionHistory.CodingKeys and conformance AppNameSpecifiedByUserSignalCollectionHistory.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v13 = 0;
    KeyedDecodingContainer.decode(_:forKey:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    v12 = 1;
    lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A], &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v5 + 8))(v8, v3);
    v9 = v11[1];
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v9;
}

uint64_t protocol witness for SiriPhoneDefaultsCodable.init() in conformance AppNameSpecifiedByUserSignalCollectionHistory@<X0>(void **a1@<X8>)
{
  v3 = AppNameSpecifiedByUserSignalCollectionHistory.init()();
  result = *&v3.timestamp;
  *a1 = v3.apps._rawValue;
  a1[1] = _swiftEmptyArrayStorage;
  return result;
}

void *protocol witness for Decodable.init(from:) in conformance AppNameSpecifiedByUserSignalCollectionHistory@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = AppNameSpecifiedByUserSignalCollectionHistory.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
    a2[1] = result;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AppNameSpecifiedByUserSignalCollectionHistory.CodingKeys and conformance AppNameSpecifiedByUserSignalCollectionHistory.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AppNameSpecifiedByUserSignalCollectionHistory.CodingKeys and conformance AppNameSpecifiedByUserSignalCollectionHistory.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppNameSpecifiedByUserSignalCollectionHistory.CodingKeys and conformance AppNameSpecifiedByUserSignalCollectionHistory.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppNameSpecifiedByUserSignalCollectionHistory.CodingKeys and conformance AppNameSpecifiedByUserSignalCollectionHistory.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppNameSpecifiedByUserSignalCollectionHistory.CodingKeys and conformance AppNameSpecifiedByUserSignalCollectionHistory.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppNameSpecifiedByUserSignalCollectionHistory.CodingKeys and conformance AppNameSpecifiedByUserSignalCollectionHistory.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppNameSpecifiedByUserSignalCollectionHistory.CodingKeys and conformance AppNameSpecifiedByUserSignalCollectionHistory.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppNameSpecifiedByUserSignalCollectionHistory.CodingKeys and conformance AppNameSpecifiedByUserSignalCollectionHistory.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppNameSpecifiedByUserSignalCollectionHistory.CodingKeys and conformance AppNameSpecifiedByUserSignalCollectionHistory.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppNameSpecifiedByUserSignalCollectionHistory.CodingKeys and conformance AppNameSpecifiedByUserSignalCollectionHistory.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppNameSpecifiedByUserSignalCollectionHistory.CodingKeys and conformance AppNameSpecifiedByUserSignalCollectionHistory.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppNameSpecifiedByUserSignalCollectionHistory.CodingKeys and conformance AppNameSpecifiedByUserSignalCollectionHistory.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppNameSpecifiedByUserSignalCollectionHistory.CodingKeys and conformance AppNameSpecifiedByUserSignalCollectionHistory.CodingKeys);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [String] and conformance <A> [A](unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSGMd, &_sSaySSGMR);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for AppNameSpecifiedByUserSignalCollectionHistory(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type AppNameSpecifiedByUserSignalCollectionHistory and conformance AppNameSpecifiedByUserSignalCollectionHistory();
  a1[2] = lazy protocol witness table accessor for type AppNameSpecifiedByUserSignalCollectionHistory and conformance AppNameSpecifiedByUserSignalCollectionHistory();
  result = lazy protocol witness table accessor for type AppNameSpecifiedByUserSignalCollectionHistory and conformance AppNameSpecifiedByUserSignalCollectionHistory();
  a1[3] = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type AppNameSpecifiedByUserSignalCollectionHistory and conformance AppNameSpecifiedByUserSignalCollectionHistory()
{
  result = lazy protocol witness table cache variable for type AppNameSpecifiedByUserSignalCollectionHistory and conformance AppNameSpecifiedByUserSignalCollectionHistory;
  if (!lazy protocol witness table cache variable for type AppNameSpecifiedByUserSignalCollectionHistory and conformance AppNameSpecifiedByUserSignalCollectionHistory)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppNameSpecifiedByUserSignalCollectionHistory and conformance AppNameSpecifiedByUserSignalCollectionHistory);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppNameSpecifiedByUserSignalCollectionHistory and conformance AppNameSpecifiedByUserSignalCollectionHistory;
  if (!lazy protocol witness table cache variable for type AppNameSpecifiedByUserSignalCollectionHistory and conformance AppNameSpecifiedByUserSignalCollectionHistory)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppNameSpecifiedByUserSignalCollectionHistory and conformance AppNameSpecifiedByUserSignalCollectionHistory);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppNameSpecifiedByUserSignalCollectionHistory and conformance AppNameSpecifiedByUserSignalCollectionHistory;
  if (!lazy protocol witness table cache variable for type AppNameSpecifiedByUserSignalCollectionHistory and conformance AppNameSpecifiedByUserSignalCollectionHistory)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppNameSpecifiedByUserSignalCollectionHistory and conformance AppNameSpecifiedByUserSignalCollectionHistory);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppNameSpecifiedByUserSignalCollectionHistory and conformance AppNameSpecifiedByUserSignalCollectionHistory;
  if (!lazy protocol witness table cache variable for type AppNameSpecifiedByUserSignalCollectionHistory and conformance AppNameSpecifiedByUserSignalCollectionHistory)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppNameSpecifiedByUserSignalCollectionHistory and conformance AppNameSpecifiedByUserSignalCollectionHistory);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppNameSpecifiedByUserSignalCollectionHistory and conformance AppNameSpecifiedByUserSignalCollectionHistory;
  if (!lazy protocol witness table cache variable for type AppNameSpecifiedByUserSignalCollectionHistory and conformance AppNameSpecifiedByUserSignalCollectionHistory)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppNameSpecifiedByUserSignalCollectionHistory and conformance AppNameSpecifiedByUserSignalCollectionHistory);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppNameSpecifiedByUserSignalCollectionHistory and conformance AppNameSpecifiedByUserSignalCollectionHistory;
  if (!lazy protocol witness table cache variable for type AppNameSpecifiedByUserSignalCollectionHistory and conformance AppNameSpecifiedByUserSignalCollectionHistory)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppNameSpecifiedByUserSignalCollectionHistory and conformance AppNameSpecifiedByUserSignalCollectionHistory);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for AppNameSpecifiedByUserSignalCollectionHistory(uint64_t a1)
{
  *(a1 + 8) = lazy protocol witness table accessor for type AppNameSpecifiedByUserSignalCollectionHistory and conformance AppNameSpecifiedByUserSignalCollectionHistory();
  result = lazy protocol witness table accessor for type AppNameSpecifiedByUserSignalCollectionHistory and conformance AppNameSpecifiedByUserSignalCollectionHistory();
  *(a1 + 16) = result;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for AppNameSpecifiedByUserSignalCollectionHistory(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t storeEnumTagSinglePayload for AppNameSpecifiedByUserSignalCollectionHistory(uint64_t result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for AppNameSpecifiedByUserSignalCollectionHistory.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t lazy protocol witness table accessor for type Date and conformance Date(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

BOOL AppQuery.isFirstParty.getter(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 1;
  }

  OUTLINED_FUNCTION_1_15();
  type metadata accessor for App();

  OUTLINED_FUNCTION_0();
  App.__allocating_init(appIdentifier:)();
  v2 = App.isFirstParty()();

  return v2;
}

uint64_t AppQuery.appId.getter()
{
  OUTLINED_FUNCTION_1_15();
  if (!v2)
  {
    v0 = AppQuery.defaultAppId.getter(v0, 0, v1);
  }

  return v0;
}

BOOL AppQuery.isThirdParty.getter(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_1_15();
    type metadata accessor for App();

    OUTLINED_FUNCTION_0();
    App.__allocating_init(appIdentifier:)();
    v2 = App.isFirstParty()();

    return !v2;
  }

  else
  {
    return 0;
  }
}

uint64_t AppQuery.source.getter(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t AppQuery.Builder.__allocating_init(app:)(uint64_t a1)
{
  v2 = App.appIdentifier.getter();
  v3 = (*(v1 + 144))(v2);

  return v3;
}

uint64_t static AppQuery.userRequested(applicationId:)()
{
  OUTLINED_FUNCTION_1_15();

  return OUTLINED_FUNCTION_0();
}

uint64_t static AppQuery.Override.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t AppQuery.Builder.__allocating_init(requestedAppId:overrides:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  AppQuery.Builder.init(requestedAppId:overrides:)(a1, a2, a3);
  return v6;
}

void *AppQuery.Builder.init(requestedAppId:overrides:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = _swiftEmptyArrayStorage;
  v3[2] = a1;
  v3[3] = a2;
  swift_beginAccess();
  v3[4] = a3;
  return v3;
}

uint64_t AppQuery.Builder.__allocating_init(intent:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v3 = OUTLINED_FUNCTION_41_4();
  v5 = PhoneCallNLIntent.applicationId.getter(v3, v4);
  if (!v6)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v7 = OUTLINED_FUNCTION_41_4();
    v5 = PhoneCallNLIntent.appName.getter(v7, v8);
  }

  v9 = (*(v1 + 144))(v5);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

uint64_t AppQuery.Builder.withOverrides(_:)(uint64_t a1)
{
  swift_beginAccess();

  specialized Array.append<A>(contentsOf:)(v1);
  swift_endAccess();
}

PhoneCallFlowDelegatePlugin::AppQuery __swiftcall AppQuery.Builder.build()()
{
  v1 = v0[2];
  v2 = v0[3];
  swift_beginAccess();
  v3 = v0[4];

  v4 = v1;
  v5 = v2;
  v6 = v3;
  result.overrides._rawValue = v6;
  result.requestedAppId.value._object = v5;
  result.requestedAppId.value._countAndFlagsBits = v4;
  return result;
}

uint64_t AppQuery.Builder.deinit()
{

  return v0;
}

uint64_t AppQuery.Builder.__deallocating_deinit()
{
  AppQuery.Builder.deinit();

  return swift_deallocClassInstance();
}

uint64_t static AppQuery.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    if (a5)
    {
      v5 = a1 == a4 && a2 == a5;
      if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

    return 0;
  }

  if (a5)
  {
    return 0;
  }

LABEL_8:
  v6 = OUTLINED_FUNCTION_0();

  return _sSasSQRzlE2eeoiySbSayxG_ABtFZ27PhoneCallFlowDelegatePlugin8AppQueryV8OverrideO_Tt1g5(v6, v7);
}

uint64_t getEnumTagSinglePayload for AppQuery(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t storeEnumTagSinglePayload for AppQuery(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t _sSS10describingSSx_tcs23CustomStringConvertibleRzlufC27PhoneCallFlowDelegatePlugin026AppResolutionBeforeResolveG0C5State08_3322C18O22FCD5B61BCB3AF0EBDB34E5LLO_Tt0g5(char *a1)
{
  v2 = type metadata accessor for AppResolutionBeforeResolveFlow.State(0);
  __chkstk_darwin(v2);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AppResolutionBeforeResolveFlow.State(a1, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      outlined destroy of AppResolutionBeforeResolveFlow.State(a1, type metadata accessor for AppResolutionBeforeResolveFlow.State);
      v6 = 0x74656C706D6F632ELL;
      a1 = v4;
    }

    else
    {
      v6 = 0xD00000000000001CLL;
    }
  }

  else
  {
    outlined destroy of AppResolutionBeforeResolveFlow.State(v4, type metadata accessor for AppResolutionBeforeResolveFlow.State);
    v6 = 0x6C616974696E692ELL;
  }

  outlined destroy of AppResolutionBeforeResolveFlow.State(a1, type metadata accessor for AppResolutionBeforeResolveFlow.State);
  return v6;
}

unint64_t _sSS10describingSSx_tcs23CustomStringConvertibleRzlufC27PhoneCallFlowDelegatePlugin011UnsupportedeF0O_Tt0g5(char a1)
{
  result = 0xD00000000000001DLL;
  switch(a1)
  {
    case 1:
    case 2:
      result = 0xD000000000000019;
      break;
    case 3:
      result = 0xD000000000000021;
      break;
    case 4:
    case 7:
      result = 0xD00000000000001CLL;
      break;
    case 5:
    case 6:
      result = 0xD000000000000015;
      break;
    case 8:
      result = 0xD00000000000001DLL;
      break;
    case 9:
      result = 0xD00000000000001ELL;
      break;
    case 10:
      result = 0xD00000000000001FLL;
      break;
    case 11:
      result = 0xD000000000000020;
      break;
    case 12:
      result = 0xD000000000000017;
      break;
    case 13:
      result = 0xD00000000000001ALL;
      break;
    default:
      return result;
  }

  return result;
}

void *_sSaySayxGqd__c7ElementQyd__RszSTRd__lufCSS_ShySSGTt0g5(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS_Tt1g5(*(a1 + 16), 0);
  v4 = specialized Sequence._copySequenceContents(initializing:)(&v6, v3 + 4, v2, a1);
  outlined consume of Set<LSApplicationExtensionRecord>.Iterator._Variant(v6);
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return _swiftEmptyArrayStorage;
  }

  return v3;
}

uint64_t AppResolutionBeforeResolveFlow.State.description.getter()
{
  v1 = type metadata accessor for AppResolutionBeforeResolveFlow.State(0);
  __chkstk_darwin(v1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AppResolutionBeforeResolveFlow.State(v0, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      outlined destroy of AppResolutionBeforeResolveFlow.State(v3, type metadata accessor for AppResolutionBeforeResolveFlow.State);
      return 0x74656C706D6F632ELL;
    }

    else
    {
      return 0xD00000000000001CLL;
    }
  }

  else
  {
    outlined destroy of AppResolutionBeforeResolveFlow.State(v3, type metadata accessor for AppResolutionBeforeResolveFlow.State);
    return 0x6C616974696E692ELL;
  }
}

uint64_t AppResolutionBeforeResolveFlow.__allocating_init(previousTurnIntent:previouslyResolvedApp:sharedGlobals:appFinder:)(void *a1, uint64_t a2, __int128 *a3, __int128 *a4)
{
  v8 = swift_allocObject();
  AppResolutionBeforeResolveFlow.init(previousTurnIntent:previouslyResolvedApp:sharedGlobals:appFinder:)(a1, a2, a3, a4);
  return v8;
}

uint64_t AppResolutionBeforeResolveFlow.init(previousTurnIntent:previouslyResolvedApp:sharedGlobals:appFinder:)(void *a1, uint64_t a2, __int128 *a3, __int128 *a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  outlined init with take of SPHConversation(a3, v4 + 72);
  outlined init with take of SPHConversation(a4, v4 + 32);
  v8 = (v4 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin30AppResolutionBeforeResolveFlow_state);
  *v8 = a1;
  v8[1] = a2;
  type metadata accessor for AppResolutionBeforeResolveFlow.State(0);
  swift_storeEnumTagMultiPayload();
  v9 = a1;

  return v4;
}

uint64_t AppResolutionBeforeResolveFlow.execute(completion:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for AppResolutionBeforeResolveFlow(0);
  lazy protocol witness table accessor for type AppResolutionBeforeResolveFlow and conformance AppResolutionBeforeResolveFlow(&lazy protocol witness table cache variable for type AppResolutionBeforeResolveFlow and conformance AppResolutionBeforeResolveFlow, type metadata accessor for AppResolutionBeforeResolveFlow, &protocol conformance descriptor for AppResolutionBeforeResolveFlow);
  return Flow.deferToExecuteAsync(_:)();
}

uint64_t AppResolutionBeforeResolveFlow.exitValue.getter@<X0>(uint64_t *a1@<X8>)
{
  v24 = a1;
  type metadata accessor for PhoneError(0);
  OUTLINED_FUNCTION_23_1();
  __chkstk_darwin(v2);
  v4 = (&v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for AppResolutionBeforeResolveFlow.State(0);
  OUTLINED_FUNCTION_23_1();
  __chkstk_darwin(v5);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for AppResolutionFlowResult();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin30AppResolutionBeforeResolveFlow_state;
  swift_beginAccess();
  outlined init with copy of AppResolutionBeforeResolveFlow.State(v1 + v15, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = *(v12 + 32);
    v16(v14, v10, v11);
    return (v16)(v24, v14, v11);
  }

  else
  {
    outlined destroy of AppResolutionBeforeResolveFlow.State(v10, type metadata accessor for AppResolutionBeforeResolveFlow.State);
    outlined init with copy of AppResolutionBeforeResolveFlow.State(v1 + v15, v7);
    v18 = AppResolutionBeforeResolveFlow.State.description.getter();
    v20 = v19;
    outlined destroy of AppResolutionBeforeResolveFlow.State(v7, type metadata accessor for AppResolutionBeforeResolveFlow.State);
    *v4 = 0xD00000000000001ELL;
    v4[1] = 0x800000000042B240;
    v4[2] = v18;
    v4[3] = v20;
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type AppResolutionBeforeResolveFlow and conformance AppResolutionBeforeResolveFlow(&lazy protocol witness table cache variable for type PhoneError and conformance PhoneError, type metadata accessor for PhoneError, &protocol conformance descriptor for PhoneError);
    v21 = swift_allocError();
    PhoneError.logged()(v22);
    outlined destroy of AppResolutionBeforeResolveFlow.State(v4, type metadata accessor for PhoneError);
    v23 = v24;
    *v24 = v21;
    *(v23 + 8) = 0;
    return (*(v12 + 104))();
  }
}

uint64_t outlined init with copy of AppResolutionBeforeResolveFlow.State(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppResolutionBeforeResolveFlow.State(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t lazy protocol witness table accessor for type AppResolutionBeforeResolveFlow and conformance AppResolutionBeforeResolveFlow(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t outlined destroy of AppResolutionBeforeResolveFlow.State(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_23_1();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t AppResolutionBeforeResolveFlow.execute()()
{
  OUTLINED_FUNCTION_15();
  v1[13] = v2;
  v1[14] = v0;
  v1[15] = type metadata accessor for AppResolutionBeforeResolveFlow.State(0);
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v3, v4, v5);
}

{
  v26 = v0;
  v1 = v0[17];
  v2 = v0[14];
  v3 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin30AppResolutionBeforeResolveFlow_state;
  v0[18] = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin30AppResolutionBeforeResolveFlow_state;
  swift_beginAccess();
  outlined init with copy of AppResolutionBeforeResolveFlow.State(v2 + v3, v1);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
      }

      v5 = type metadata accessor for Logger();
      __swift_project_value_buffer(v5, static Logger.siriPhone);

      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v6, v7))
      {
        v8 = v0[16];
        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        v25 = v10;
        *v9 = 136315138;
        outlined init with copy of AppResolutionBeforeResolveFlow.State(v2 + v3, v8);
        v11 = _sSS10describingSSx_tcs23CustomStringConvertibleRzlufC27PhoneCallFlowDelegatePlugin026AppResolutionBeforeResolveG0C5State08_3322C18O22FCD5B61BCB3AF0EBDB34E5LLO_Tt0g5(v8);
        v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v25);

        *(v9 + 4) = v13;
        OUTLINED_FUNCTION_17_4();
        _os_log_impl(v14, v15, v16, v17, v18, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v10);
        OUTLINED_FUNCTION_26_0(v10);
        OUTLINED_FUNCTION_12_3();
      }
    }

    v19 = v0[17];
    static ExecuteResponse.complete()();
    OUTLINED_FUNCTION_2_24();
    outlined destroy of AppResolutionBeforeResolveFlow.State(v19, v20);

    v21 = v0[1];

    return v21();
  }

  else
  {
    v23 = v0[17];
    v0[19] = *v23;
    v0[20] = v23[1];
    v24 = swift_task_alloc();
    v0[21] = v24;
    *v24 = v0;
    v24[1] = AppResolutionBeforeResolveFlow.execute();

    return AppResolutionBeforeResolveFlow.makeAppResolutionFlow(intent:previouslyResolvedApp:)();
  }
}

{
  OUTLINED_FUNCTION_15();
  *(*v0 + 176) = v1;

  v2 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v2, v3, v4);
}

{
  v31 = v1;
  v2 = v1[22];
  if (v2)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static Logger.siriPhone);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_11_1(v6);
      _os_log_impl(&dword_0, v4, v5, "#AppResolutionBeforeResolveFlow pushing app resolution flow", v0, 2u);
      OUTLINED_FUNCTION_12_3();
    }

    v7 = v1[19];
    v8 = v1[18];
    v9 = v1[16];
    v10 = v1[14];

    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    outlined assign with take of AppResolutionBeforeResolveFlow.State(v9, v10 + v8);
    swift_endAccess();
    v1[12] = v2;
    v11 = swift_allocObject();
    *(v11 + 16) = v7;
    *(v11 + 24) = v10;
    v12 = v7;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow016AnyAppResolutionC0CySo8INIntentCGMd, &_s11SiriKitFlow016AnyAppResolutionC0CySo8INIntentCGMR);
    lazy protocol witness table accessor for type AnyAppResolutionFlow<INIntent> and conformance AnyAppResolutionFlow<A>();
    static ExecuteResponse.ongoing<A>(next:childCompletion:)();
  }

  else
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static Logger.siriPhone);

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = v1[20];
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v30 = v18;
      *v17 = 136315138;
      v1[11] = v16;
      type metadata accessor for App();
      lazy protocol witness table accessor for type AppResolutionBeforeResolveFlow and conformance AppResolutionBeforeResolveFlow(&lazy protocol witness table cache variable for type App and conformance App, &type metadata accessor for App, &protocol conformance descriptor for App);
      v19 = dispatch thunk of CustomStringConvertible.description.getter();
      v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, &v30);

      *(v17 + 4) = v21;
      _os_log_impl(&dword_0, v14, v15, "#AppResolutionBeforeResolveFlow no app resolution flow, returning previously resolved app: %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v18);
      OUTLINED_FUNCTION_26_0(v18);
      OUTLINED_FUNCTION_26_0(v17);
    }

    v22 = v1[19];
    v23 = v1[18];
    v24 = v1[16];
    v25 = v1[14];
    *v24 = v1[20];
    v26 = enum case for AppResolutionFlowResult.resolved(_:);
    type metadata accessor for AppResolutionFlowResult();
    OUTLINED_FUNCTION_23_1();
    (*(v27 + 104))(v24, v26);
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();

    outlined assign with take of AppResolutionBeforeResolveFlow.State(v24, v25 + v23);
    swift_endAccess();
    static ExecuteResponse.complete()();
  }

  v28 = v1[1];

  return v28();
}

uint64_t closure #1 in AppResolutionBeforeResolveFlow.execute()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v53 = a3;
  v47 = a2;
  v51 = type metadata accessor for AppResolutionBeforeResolveFlow.State(0);
  __chkstk_darwin(v51);
  v50 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AppResolutionFlowResult();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v49 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v44 - v9;
  __chkstk_darwin(v11);
  v13 = &v44 - v12;
  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  v15 = __swift_project_value_buffer(v14, static Logger.siriPhone);
  v16 = (v6 + 16);
  v52 = *(v6 + 16);
  v52(v13, a1, v5);
  v46 = v15;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v48 = a1;
    v20 = v19;
    v45 = swift_slowAlloc();
    v55[0] = v45;
    *v20 = 136315138;
    v52(v10, v13, v5);
    v21 = String.init<A>(describing:)();
    v22 = v6;
    v24 = v23;
    v25 = *(v22 + 8);
    v25(v13, v5);
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v24, v55);
    v6 = v22;

    *(v20 + 4) = v26;
    _os_log_impl(&dword_0, v17, v18, "#AppResolutionBeforeResolveFlow app resolution flow completed with %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v45);

    a1 = v48;
  }

  else
  {

    v25 = *(v6 + 8);
    v25(v13, v5);
  }

  v27 = v49;
  v28 = v52;
  v52(v49, a1, v5);
  if ((*(v6 + 88))(v27, v5) == enum case for AppResolutionFlowResult.resolved(_:))
  {
    (*(v6 + 96))(v27, v5);
    v29 = *v27;

    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v49 = v16;
      v33 = v32;
      v34 = swift_slowAlloc();
      v48 = a1;
      v35 = v34;
      v54 = v29;
      v55[0] = v34;
      *v33 = 136315138;
      type metadata accessor for App();
      lazy protocol witness table accessor for type AppResolutionBeforeResolveFlow and conformance AppResolutionBeforeResolveFlow(&lazy protocol witness table cache variable for type App and conformance App, &type metadata accessor for App, &protocol conformance descriptor for App);
      v36 = dispatch thunk of CustomStringConvertible.description.getter();
      v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v37, v55);

      *(v33 + 4) = v38;
      _os_log_impl(&dword_0, v30, v31, "#AppResolutionBeforeResolveFlow set meta data for app: %s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v35);
      a1 = v48;
    }

    INIntent.setMetaData(app:previousIntent:sharedGlobals:)(v39, 0, (v53 + 72));
  }

  else
  {
    v25(v27, v5);
  }

  v40 = v50;
  v28(v50, a1, v5);
  swift_storeEnumTagMultiPayload();
  v41 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin30AppResolutionBeforeResolveFlow_state;
  v42 = v53;
  swift_beginAccess();
  outlined assign with take of AppResolutionBeforeResolveFlow.State(v40, v42 + v41);
  return swift_endAccess();
}

uint64_t AppResolutionBeforeResolveFlow.makeAppResolutionFlow(intent:previouslyResolvedApp:)()
{
  OUTLINED_FUNCTION_15();
  v1[189] = v0;
  v1[188] = v2;
  type metadata accessor for AppResolver();
  v1[190] = OUTLINED_FUNCTION_45();
  type metadata accessor for CATOption();
  v1[191] = OUTLINED_FUNCTION_45();
  v3 = type metadata accessor for Parse();
  v1[192] = v3;
  v1[193] = *(v3 - 8);
  v1[194] = OUTLINED_FUNCTION_45();
  v4 = type metadata accessor for Input();
  v1[195] = v4;
  v1[196] = *(v4 - 8);
  v1[197] = OUTLINED_FUNCTION_45();
  v5 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v5, v6, v7);
}

{
  v112 = v0;
  v1 = *(v0 + 1512);
  v2 = v1[12];
  v3 = v1[13];
  __swift_project_boxed_opaque_existential_1(v1 + 9, v2);
  v4 = (*(v3 + 72))(v2, v3);
  (*(*v4 + 216))(v4);

  if (!*(v0 + 192))
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v0 + 160, &_s27PhoneCallFlowDelegatePlugin20TransformationResultVSgMd, &_s27PhoneCallFlowDelegatePlugin20TransformationResultVSgMR);
    *(v0 + 608) = 0u;
    *(v0 + 624) = 0u;
    *(v0 + 640) = 0;
    goto LABEL_12;
  }

  outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(v0 + 208, v0 + 608, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
  outlined destroy of TransformationResult(v0 + 160);
  if (!*(v0 + 632))
  {
LABEL_12:
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v0 + 608, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v24 = type metadata accessor for Logger();
    __swift_project_value_buffer(v24, static Logger.siriPhone);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_8_0(v26))
    {
      v27 = OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_11_1(v27);
      OUTLINED_FUNCTION_17_4();
      _os_log_impl(v28, v29, v30, v31, v32, 2u);
      OUTLINED_FUNCTION_12_3();
    }

    goto LABEL_26;
  }

  v5 = (v0 + 440);
  outlined init with take of SPHConversation((v0 + 608), v0 + 568);
  v6 = v1[12];
  v7 = v1[13];
  v109 = v1;
  __swift_project_boxed_opaque_existential_1(v1 + 9, v6);
  (*(v7 + 152))(v6, v7);
  v8 = *(v0 + 720);
  __swift_project_boxed_opaque_existential_1((v0 + 688), *(v0 + 712));
  v9 = App.appIdentifier.getter();
  (*(v8 + 16))(v9);

  __swift_destroy_boxed_opaque_existential_1((v0 + 688));
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Logger.siriPhone);
  outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(v0 + 440, v0 + 392, &_s27PhoneCallFlowDelegatePlugin12AnnotatedAppVSgMd, &_s27PhoneCallFlowDelegatePlugin12AnnotatedAppVSgMR);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v0 + 440, &_s27PhoneCallFlowDelegatePlugin12AnnotatedAppVSgMd, &_s27PhoneCallFlowDelegatePlugin12AnnotatedAppVSgMR);
  v110 = v0 + 440;
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v111[0] = v14;
    *v13 = 136315138;
    v15 = *(v0 + 456);
    *(v0 + 296) = *v5;
    *(v0 + 312) = v15;
    *(v0 + 328) = *(v0 + 472);
    outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(v5, v0 + 344, &_s27PhoneCallFlowDelegatePlugin12AnnotatedAppVSgMd, &_s27PhoneCallFlowDelegatePlugin12AnnotatedAppVSgMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin12AnnotatedAppVSgMd, &_s27PhoneCallFlowDelegatePlugin12AnnotatedAppVSgMR);
    v16 = String.init<A>(describing:)();
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, v111);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_0, v11, v12, "#AppResolutionBeforeResolveFlow Previously-resolved annotated app %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    OUTLINED_FUNCTION_26_0(v14);
    OUTLINED_FUNCTION_26_0(v13);
  }

  if (*v5)
  {
    v19 = *(v0 + 448);
    v20 = *(v0 + 480);
    v21 = *(v0 + 472);
    *(v0 + 1440) = *(v0 + 456);

    *(v0 + 1488) = v19;
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v0 + 1488, &_sShySSGMd, &_sShySSGMR);
    *(v0 + 1424) = *(v0 + 1440);
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v0 + 1424, &_sSSSgMd, &_sSSSgMR);
    *(v0 + 1472) = v20;
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v0 + 1472, &_sShySSGMd, &_sShySSGMR);
    if (v21 == 2)
    {
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_8_0(v23))
      {
        goto LABEL_23;
      }

      goto LABEL_24;
    }
  }

  v33 = *(v0 + 1512);
  type metadata accessor for AppQuery.Builder();
  outlined init with copy of SignalProviding(v0 + 568, v0 + 768);
  v34 = AppQuery.Builder.__allocating_init(intent:)((v0 + 768));
  v107 = (*(*v34 + 160))(v34);
  v36 = v35;
  v38 = v37;

  v39 = v33[7];
  v40 = v33[8];
  __swift_project_boxed_opaque_existential_1(v33 + 4, v39);
  v42 = v109[12];
  v41 = v109[13];
  __swift_project_boxed_opaque_existential_1(v109 + 9, v42);
  (*(v41 + 8))(v42, v41);
  AnnotatedAppFinding.find(appQuery:device:)(v107, v36, v38, v0 + 808, v39, v40, (v0 + 248));

  __swift_destroy_boxed_opaque_existential_1((v0 + 808));
  if (!*(v0 + 248))
  {
    v22 = Logger.logObject.getter();
    v67 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_8_0(v67))
    {
LABEL_23:
      v68 = OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_11_1(v68);
      OUTLINED_FUNCTION_17_4();
      _os_log_impl(v69, v70, v71, v72, v73, 2u);
      OUTLINED_FUNCTION_12_3();

      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v110, &_s27PhoneCallFlowDelegatePlugin12AnnotatedAppVSgMd, &_s27PhoneCallFlowDelegatePlugin12AnnotatedAppVSgMR);
LABEL_25:
      __swift_destroy_boxed_opaque_existential_1((v0 + 568));
LABEL_26:
      v74 = 0;
      goto LABEL_27;
    }

LABEL_24:
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v110, &_s27PhoneCallFlowDelegatePlugin12AnnotatedAppVSgMd, &_s27PhoneCallFlowDelegatePlugin12AnnotatedAppVSgMR);

    goto LABEL_25;
  }

  v105 = *(v0 + 288);
  v43 = *(v0 + 1552);
  v44 = *(v0 + 1544);
  v104 = *(v0 + 1536);
  *(v0 + 1408) = *(v0 + 264);
  v45 = v109[12];
  v46 = v109[13];
  __swift_project_boxed_opaque_existential_1(v109 + 9, v45);
  (*(v46 + 104))(v45, v46);
  v102 = *(v0 + 880);
  v103 = *(v0 + 872);
  __swift_project_boxed_opaque_existential_1((v0 + 848), v103);
  static PhoneCallNLv3Intent.placeCall()(v43);
  (*(v44 + 104))(v43, enum case for Parse.NLv3IntentOnly(_:), v104);
  Input.init(parse:)();

  v100 = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCSS_ShySSGTt0g5(v47);
  outlined init with copy of SignalProviding((v33 + 4), v0 + 888);
  outlined init with copy of SignalProviding((v109 + 9), v0 + 928);
  type metadata accessor for StartCallCATsSimple(0);
  *(v0 + 488) = 0u;
  *(v0 + 504) = 0u;
  v108 = v0 + 488;
  *(v0 + 520) = 0;
  static CATOption.defaultMode.getter();
  v48 = CATWrapperSimple.__allocating_init(options:globals:)();
  type metadata accessor for PhoneCallDisplayTextCATsSimple(0);
  static CATOption.defaultMode.getter();
  v49 = CATWrapperSimple.__allocating_init(options:globals:)();
  v50 = type metadata accessor for ResponseFactory();
  swift_allocObject();
  v51 = ResponseFactory.init()();
  if (one-time initialization token for instance != -1)
  {
    swift_once();
  }

  v106 = (v0 + 1456);
  v99 = *(v0 + 1520);
  v52 = static EligibleAppFinder.instance;
  v53 = type metadata accessor for AppInfoBuilder();
  v54 = swift_allocObject();
  v55 = type metadata accessor for PhoneAppResolutionOnDeviceFlowStrategy();
  v56 = swift_allocObject();
  *(v0 + 1032) = v50;
  *(v0 + 1040) = &protocol witness table for ResponseFactory;
  *(v0 + 1008) = v51;
  v96 = type metadata accessor for EligibleAppFinder();
  *(v0 + 1072) = v96;
  *(v0 + 1080) = &protocol witness table for EligibleAppFinder;
  *(v0 + 1048) = v52;
  *(v0 + 1112) = v53;
  *(v0 + 1120) = &protocol witness table for AppInfoBuilder;
  *(v0 + 1088) = v54;
  *(v56 + 16) = _swiftEmptyArrayStorage;
  *(v56 + 24) = 0;

  v97 = v52;

  *(v56 + 344) = OUTLINED_FUNCTION_12_20();
  *(v56 + 352) = OUTLINED_FUNCTION_12_20();
  *(v56 + 360) = v55;
  *(v56 + 368) = &outlined read-only object #0 of AppResolutionBeforeResolveFlow.makeAppResolutionFlow(intent:previouslyResolvedApp:);
  *(v56 + 376) = 0;
  *(v56 + 384) = 0;
  *(v56 + 392) = v55;
  *(v56 + 400) = &outlined read-only object #1 of AppResolutionBeforeResolveFlow.makeAppResolutionFlow(intent:previouslyResolvedApp:);
  *(v56 + 408) = 0;
  *(v56 + 416) = 0;
  *(v56 + 424) = v55;
  v101 = v55;
  *(v56 + 432) = &outlined read-only object #2 of AppResolutionBeforeResolveFlow.makeAppResolutionFlow(intent:previouslyResolvedApp:);
  *(v56 + 440) = 0u;
  *(v56 + 456) = 0u;
  *(v56 + 472) = 0u;
  *(v56 + 488) = 0;
  *(v56 + 192) = v100;
  outlined init with copy of SignalProviding(v0 + 888, v56 + 32);
  v57 = *(v0 + 952);
  v58 = *(v0 + 960);
  __swift_project_boxed_opaque_existential_1((v0 + 928), v57);
  (*(v58 + 8))(v57, v58);
  outlined init with take of SPHConversation((v0 + 1128), v56 + 152);
  outlined init with copy of SignalProviding(v0 + 928, v56 + 200);
  outlined init with copy of SignalProviding(v0 + 1048, v56 + 112);
  outlined init with copy of SignalProviding(v0 + 1088, v56 + 72);
  *(v56 + 240) = v48;
  *(v56 + 248) = v49;
  outlined init with copy of SignalProviding(v0 + 1008, v56 + 256);
  outlined init with copy of SignalProviding(v0 + 928, v0 + 1168);
  outlined init with copy of SignalProviding(v0 + 1048, v0 + 1208);
  type metadata accessor for AppUsageProvider();
  memset(v111, 0, 40);
  v98 = swift_allocObject();

  AppResolver.init(appResolutionRules:)();
  type metadata accessor for PhoneAppResolutionHelper(0);
  v59 = swift_allocObject();
  v60 = *(v0 + 1232);
  v61 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 1208, v60);
  v62 = *(v60 - 8);
  v63 = OUTLINED_FUNCTION_45();
  (*(v62 + 16))(v63, v61, v60);
  v64 = specialized PhoneAppResolutionHelper.init(sharedGlobals:eligibleAppsFinder:smartAppSelection:phoneAppResolutionLogger:appUsageProvider:appResolver:)((v0 + 1168), *v63, 0, v111, v98, v99, v59);
  __swift_destroy_boxed_opaque_existential_1((v0 + 1208));

  *(v56 + 296) = v64;
  outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(v108, v0 + 1288, &_s27PhoneCallFlowDelegatePlugin0A20AppResolutionLogging_pSgMd, &_s27PhoneCallFlowDelegatePlugin0A20AppResolutionLogging_pSgMR);
  if (*(v0 + 1312))
  {
    v65 = (v0 + 1248);

    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v108, &_s27PhoneCallFlowDelegatePlugin0A20AppResolutionLogging_pSgMd, &_s27PhoneCallFlowDelegatePlugin0A20AppResolutionLogging_pSgMR);
    OUTLINED_FUNCTION_10_18();
    outlined init with take of SPHConversation((v0 + 1288), v0 + 1248);
    v66 = v109;
  }

  else
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v0 + 1288, &_s27PhoneCallFlowDelegatePlugin0A20AppResolutionLogging_pSgMd, &_s27PhoneCallFlowDelegatePlugin0A20AppResolutionLogging_pSgMR);
    outlined init with copy of SignalProviding(v0 + 928, v0 + 1368);
    v77 = [objc_opt_self() sharedAnalytics];
    v95 = [v77 defaultMessageStream];

    *(v0 + 552) = v96;
    *(v0 + 560) = &protocol witness table for EligibleAppFinder;
    *(v0 + 528) = v97;
    *(v0 + 1352) = &type metadata for PhoneAppResolutionLogger;
    *(v0 + 1360) = &protocol witness table for PhoneAppResolutionLogger;
    v78 = swift_allocObject();
    *(v0 + 1328) = v78;
    v79 = *(v0 + 1392);
    v80 = *(v0 + 1400);
    __swift_project_boxed_opaque_existential_1((v0 + 1368), v79);
    v81 = *(v80 + 112);

    if (v81(v79, v80))
    {
      v82 = CurrentRequest.executionRequestId.getter();
      v84 = v83;
    }

    else
    {
      v82 = 0;
      v84 = 0;
    }

    v66 = v109;
    *(v0 + 16) = v82;
    *(v0 + 24) = v84;
    *(v0 + 32) = v95;
    outlined init with copy of SignalProviding(v0 + 1368, v0 + 40);
    v85 = *(v0 + 1392);
    v86 = *(v0 + 1400);
    __swift_project_boxed_opaque_existential_1((v0 + 1368), v85);
    (*(v86 + 216))(v85, v86);
    outlined init with take of SPHConversation((v0 + 528), v0 + 120);
    memcpy((v78 + 16), (v0 + 16), 0x90uLL);

    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v108, &_s27PhoneCallFlowDelegatePlugin0A20AppResolutionLogging_pSgMd, &_s27PhoneCallFlowDelegatePlugin0A20AppResolutionLogging_pSgMR);
    OUTLINED_FUNCTION_10_18();
    __swift_destroy_boxed_opaque_existential_1((v0 + 1368));
    v65 = (v0 + 1328);
  }

  outlined init with take of SPHConversation(v65, v56 + 304);
  v87 = *(v0 + 1576);
  v88 = *(v0 + 1568);
  v89 = *(v0 + 1560);
  __swift_destroy_boxed_opaque_existential_1((v0 + 928));
  *(v0 + 1480) = v56;
  outlined init with copy of SignalProviding(v0 + 568, v0 + 728);
  outlined init with copy of SignalProviding((v66 + 9), v0 + 648);
  v90 = type metadata accessor for PhoneProtectedAppCheckStrategy();
  v91 = swift_allocObject();
  outlined init with take of SPHConversation((v0 + 728), v91 + 16);
  outlined init with take of SPHConversation((v0 + 648), v91 + 56);
  *(v0 + 992) = v90;
  *(v0 + 1000) = lazy protocol witness table accessor for type AppResolutionBeforeResolveFlow and conformance AppResolutionBeforeResolveFlow(&lazy protocol witness table cache variable for type PhoneProtectedAppCheckStrategy and conformance PhoneProtectedAppCheckStrategy, type metadata accessor for PhoneProtectedAppCheckStrategy, &protocol conformance descriptor for PhoneProtectedAppCheckStrategy);
  *(v0 + 968) = v91;
  v92 = *(v102 + 72);
  v93 = type metadata accessor for INIntent();
  v94 = lazy protocol witness table accessor for type AppResolutionBeforeResolveFlow and conformance AppResolutionBeforeResolveFlow(&lazy protocol witness table cache variable for type PhoneAppResolutionOnDeviceFlowStrategy and conformance PhoneAppResolutionOnDeviceFlowStrategy, type metadata accessor for PhoneAppResolutionOnDeviceFlowStrategy, &protocol conformance descriptor for PhoneAppResolutionOnDeviceFlowStrategy);
  v74 = v92(v87, v0 + 1480, v0 + 968, v101, v93, v94, v103, v102);

  *v106 = *(v0 + 1408);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v106, &_sSSSgMd, &_sSSSgMR);
  *(v0 + 1496) = v105;
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v0 + 1496, &_sShySSGMd, &_sShySSGMR);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v110, &_s27PhoneCallFlowDelegatePlugin12AnnotatedAppVSgMd, &_s27PhoneCallFlowDelegatePlugin12AnnotatedAppVSgMR);

  (*(v88 + 8))(v87, v89);
  __swift_destroy_boxed_opaque_existential_1((v0 + 568));
  __swift_destroy_boxed_opaque_existential_1((v0 + 968));
  __swift_destroy_boxed_opaque_existential_1((v0 + 848));
LABEL_27:

  v75 = *(v0 + 8);

  return v75(v74);
}

uint64_t AppResolutionBeforeResolveFlow.deinit()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  __swift_destroy_boxed_opaque_existential_1((v0 + 72));
  OUTLINED_FUNCTION_2_24();
  outlined destroy of AppResolutionBeforeResolveFlow.State(v0 + v1, v2);
  return v0;
}

uint64_t AppResolutionBeforeResolveFlow.__deallocating_deinit()
{
  AppResolutionBeforeResolveFlow.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for Flow.onAsync(input:) in conformance AppResolutionBeforeResolveFlow(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = protocol witness for Flow.onAsync(input:) in conformance AppResolutionBeforeResolveFlow;

  return Flow.onAsync(input:)(a1, a2, a3);
}

uint64_t protocol witness for Flow.onAsync(input:) in conformance AppResolutionBeforeResolveFlow()
{
  OUTLINED_FUNCTION_15();
  v2 = v1;
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3(v2);
}

uint64_t protocol witness for Flow.execute() in conformance AppResolutionBeforeResolveFlow(uint64_t a1)
{
  v6 = (*(**v1 + 176) + **(**v1 + 176));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = protocol witness for Flow.execute() in conformance AppResolutionBeforeResolveFlow;

  return v6(a1);
}

uint64_t protocol witness for Flow.execute() in conformance AppResolutionBeforeResolveFlow()
{
  OUTLINED_FUNCTION_15();
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t outlined assign with take of AppResolutionBeforeResolveFlow.State(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppResolutionBeforeResolveFlow.State(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type AnyAppResolutionFlow<INIntent> and conformance AnyAppResolutionFlow<A>()
{
  result = lazy protocol witness table cache variable for type AnyAppResolutionFlow<INIntent> and conformance AnyAppResolutionFlow<A>;
  if (!lazy protocol witness table cache variable for type AnyAppResolutionFlow<INIntent> and conformance AnyAppResolutionFlow<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s11SiriKitFlow016AnyAppResolutionC0CySo8INIntentCGMd, &_s11SiriKitFlow016AnyAppResolutionC0CySo8INIntentCGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnyAppResolutionFlow<INIntent> and conformance AnyAppResolutionFlow<A>);
  }

  return result;
}

uint64_t type metadata completion function for AppResolutionBeforeResolveFlow(uint64_t a1)
{
  result = type metadata accessor for AppResolutionBeforeResolveFlow.State(319);
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

void type metadata completion function for AppResolutionBeforeResolveFlow.State(uint64_t a1)
{
  type metadata accessor for (INIntent, App)(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for AppResolutionFlowResult();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void type metadata accessor for (INIntent, App)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (INIntent, App))
  {
    type metadata accessor for INIntent();
    type metadata accessor for App();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (INIntent, App));
    }
  }
}

unint64_t type metadata accessor for INIntent()
{
  result = lazy cache variable for type metadata for INIntent;
  if (!lazy cache variable for type metadata for INIntent)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for INIntent);
  }

  return result;
}

uint64_t *AppResolutionProvider.instance.unsafeMutableAddressor()
{
  if (one-time initialization token for instance != -1)
  {
    OUTLINED_FUNCTION_3_17(&one-time initialization token for instance);
  }

  return &static AppResolutionProvider.instance;
}

uint64_t static AppResolutionProvider.instance.getter()
{
  if (one-time initialization token for instance != -1)
  {
    OUTLINED_FUNCTION_3_17(&one-time initialization token for instance);
  }
}

uint64_t key path setter for AppResolutionProvider.annotatedApps : AppResolutionProvider(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 16) = v2;
}

uint64_t AppResolutionProvider.().init()()
{
  *(v0 + 16) = Dictionary.init(dictionaryLiteral:)();
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0;
  return v0;
}

double key path getter for AppResolutionProvider.lastSetApp : AppResolutionProvider@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  (*(**a1 + 136))(v5);
  v3 = v5[1];
  *a2 = v5[0];
  a2[1] = v3;
  result = *&v6;
  a2[2] = v6;
  return result;
}

uint64_t key path setter for AppResolutionProvider.lastSetApp : AppResolutionProvider(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  v8 = *a2;
  swift_beginAccess();
  v9 = v8[4];
  v10 = v8[5];
  v11 = v8[6];
  v14 = v8[7];
  v15 = v8[3];
  v13 = v8[8];
  v8[3] = v2;
  v8[4] = v3;
  v8[5] = v4;
  v8[6] = v5;
  v8[7] = v6;
  v8[8] = v7;
  outlined copy of AnnotatedApp?(v2, v3, v4, v5, v6, v7);
  return outlined consume of AnnotatedApp?(v15, v9, v10, v11, v14, v13);
}

uint64_t AppResolutionProvider.lastSetApp.getter@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v8 = v1[7];
  v7 = v1[8];
  result = outlined copy of AnnotatedApp?(v3, v4, v5, v6, v8, v7);
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v8;
  a1[5] = v7;
  return result;
}

void AppResolutionProvider.set(annotatedApp:phoneCallNLIntent:)(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *a1;
  v7 = a1[1];
  v8 = a1 + 2;
  v33 = a1[3];
  v34 = a1[2];
  v35 = *(a1 + 32);
  v9 = a1[5];

  v10 = App.appIdentifier.getter();
  if (v11)
  {
    v12 = v10;
    v13 = v11;

    v42[0] = v7;
    v41 = *v8;
    v40 = v9;
    swift_beginAccess();

    outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(v42, &v36, &_sShySSGMd, &_sShySSGMR);
    outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(&v41, &v36, &_sSSSgMd, &_sSSSgMR);
    outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(&v40, &v36, &_sShySSGMd, &_sShySSGMR);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v36 = v2[2];
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, v12, v13, isUniquelyReferenced_nonNull_native);
    v2[2] = v36;

    swift_endAccess();
    swift_beginAccess();
    v15 = v2[3];
    v16 = v3[4];
    v17 = v3[5];
    v18 = v3[6];
    v19 = v7;
    v20 = a2;
    v21 = v3[7];
    v22 = v3[8];
    v3[3] = v6;
    v3[4] = v19;
    v3[5] = v34;
    v3[6] = v33;
    v3[7] = v35;
    v3[8] = v9;

    outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(v42, v38, &_sShySSGMd, &_sShySSGMR);
    outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(&v41, v38, &_sSSSgMd, &_sSSSgMR);
    outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(&v40, v38, &_sShySSGMd, &_sShySSGMR);
    outlined consume of AnnotatedApp?(v15, v16, v17, v18, v21, v22);
    outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(v20, &v36, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
    if (v37)
    {
      outlined init with take of PhoneCallFeatureFlagProviding(&v36, v38);
      outlined init with copy of SignalProviding(v38, &v36);
      type metadata accessor for CarryOverCallFiltersProvider();
      swift_allocObject();
      v23 = CarryOverCallFiltersProvider.init(phoneCallNLIntent:)(&v36);
      __swift_destroy_boxed_opaque_existential_1(v38);
      v3[9] = v23;
    }

    else
    {
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v36, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
      v3[9] = 0;
    }
  }

  else
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v24 = type metadata accessor for Logger();
    __swift_project_value_buffer(v24, static Logger.siriPhone);
    v39[0] = a1[1];
    v38[0] = *v8;
    *&v41 = a1[5];

    outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(v39, &v36, &_sShySSGMd, &_sShySSGMR);
    outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(v38, &v36, &_sSSSgMd, &_sSSSgMR);
    outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(&v41, &v36, &_sShySSGMd, &_sShySSGMR);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();

    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v39, &_sShySSGMd, &_sShySSGMR);
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v38, &_sSSSgMd, &_sSSSgMR);
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v41, &_sShySSGMd, &_sShySSGMR);
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *&v36 = v28;
      *v27 = 136315138;
      v42[0] = v6;
      type metadata accessor for App();
      lazy protocol witness table accessor for type App and conformance App();
      v29 = dispatch thunk of CustomStringConvertible.description.getter();
      v31 = v30;

      v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v31, &v36);

      *(v27 + 4) = v32;
      _os_log_impl(&dword_0, v25, v26, "#AppResolution annotatedApp: %s could not be cached since it doesn't have an app identifier", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v28);

      return;
    }
  }
}

uint64_t *AppResolutionProvider.deinit()
{

  outlined consume of AnnotatedApp?(v0[3], v0[4], v0[5], v0[6], v0[7], v0[8]);

  return v0;
}

uint64_t AppResolutionProvider.__deallocating_deinit()
{
  AppResolutionProvider.deinit();

  return swift_deallocClassInstance();
}

double protocol witness for AppResolutionProviding.lastSetApp.getter in conformance AppResolutionProvider@<D0>(_OWORD *a1@<X8>)
{
  (*(**v1 + 136))(v5);
  v3 = v5[1];
  *a1 = v5[0];
  a1[1] = v3;
  result = *&v6;
  a1[2] = v6;
  return result;
}

unint64_t lazy protocol witness table accessor for type App and conformance App()
{
  result = lazy protocol witness table cache variable for type App and conformance App;
  if (!lazy protocol witness table cache variable for type App and conformance App)
  {
    type metadata accessor for App();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type App and conformance App);
  }

  return result;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2)
{
  specialized __RawDictionaryStorage.find<A>(_:)(a2);
  OUTLINED_FUNCTION_0_25();
  if (v7)
  {
    __break(1u);
LABEL_14:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay13SiriInference12ContactQueryVGMd, &_sSay13SiriInference12ContactQueryVGMR);
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v8 = v5;
  v9 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySay13SiriInference12ContactQueryVGSayAC08Resolvedc3KitE0VGGMd, &_ss17_NativeDictionaryVySay13SiriInference12ContactQueryVGSayAC08Resolvedc3KitE0VGGMR);
  if (OUTLINED_FUNCTION_10_19())
  {
    specialized __RawDictionaryStorage.find<A>(_:)(a2);
    OUTLINED_FUNCTION_2_25();
    if (!v11)
    {
      goto LABEL_14;
    }

    v8 = v10;
  }

  v12 = *v2;
  if (v9)
  {
    *(*(v12 + 56) + 8 * v8) = a1;
    OUTLINED_FUNCTION_60_1();
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v8, a2, a1, v12);
    OUTLINED_FUNCTION_60_1();
  }
}

void specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  type metadata accessor for ContactResolverConfigHashable(0);
  OUTLINED_FUNCTION_23_1();
  __chkstk_darwin(v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  specialized __RawDictionaryStorage.find<A>(_:)(a2);
  OUTLINED_FUNCTION_0_25();
  if (v14)
  {
    __break(1u);
    goto LABEL_11;
  }

  v15 = v12;
  v16 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVy27PhoneCallFlowDelegatePlugin29ContactResolverConfigHashableVSay13SiriInference0H5QueryVGGMd, &_ss17_NativeDictionaryVy27PhoneCallFlowDelegatePlugin29ContactResolverConfigHashableVSay13SiriInference0H5QueryVGGMR);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(a3 & 1, v11))
  {
    goto LABEL_5;
  }

  v17 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  if ((v16 & 1) != (v18 & 1))
  {
LABEL_11:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v15 = v17;
LABEL_5:
  v19 = *v4;
  if (v16)
  {
    OUTLINED_FUNCTION_8_19();
    OUTLINED_FUNCTION_65();
  }

  else
  {
    outlined init with copy of ContactResolverConfigHashable(a2, v10);
    specialized _NativeDictionary._insert(at:key:value:)(v15, v10, a1, v19);
    OUTLINED_FUNCTION_65();
  }
}

_OWORD *specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  OUTLINED_FUNCTION_0_25();
  if (v9)
  {
    __break(1u);
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v10 = v7;
  v11 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSypGMd, &_ss17_NativeDictionaryVySSypGMR);
  if (OUTLINED_FUNCTION_1_33())
  {
    specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    OUTLINED_FUNCTION_2_25();
    if (!v13)
    {
      goto LABEL_14;
    }

    v10 = v12;
  }

  v14 = *v3;
  if (v11)
  {
    __swift_destroy_boxed_opaque_existential_1((*(v14 + 56) + 32 * v10));
    OUTLINED_FUNCTION_60_1();

    return outlined init with take of Any(v15, v16);
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v10, a2, a3, a1, v14);
    OUTLINED_FUNCTION_60_1();
  }
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_5_20(a1, a2, a3);
  OUTLINED_FUNCTION_0_25();
  if (v9)
  {
    __break(1u);
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v10 = v7;
  v11 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSShySSGGMd, &_ss17_NativeDictionaryVySSShySSGGMR);
  if (OUTLINED_FUNCTION_1_33())
  {
    specialized __RawDictionaryStorage.find<A>(_:)(v5, v3);
    OUTLINED_FUNCTION_2_25();
    if (!v13)
    {
      goto LABEL_14;
    }

    v10 = v12;
  }

  if (v11)
  {
    *(*(*v6 + 56) + 8 * v10) = v4;
    OUTLINED_FUNCTION_60_1();
  }

  else
  {
    v16 = OUTLINED_FUNCTION_7_13();
    specialized _NativeDictionary._insert(at:key:value:)(v16, v17, v18, v19, v20);
    OUTLINED_FUNCTION_60_1();
  }
}

{
  OUTLINED_FUNCTION_5_20(a1, a2, a3);
  OUTLINED_FUNCTION_0_25();
  if (v9)
  {
    __break(1u);
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v10 = v7;
  v11 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSScTySay17SiriAppResolution0D0CGs5NeverOGGMd, &_ss17_NativeDictionaryVySSScTySay17SiriAppResolution0D0CGs5NeverOGGMR);
  if (OUTLINED_FUNCTION_1_33())
  {
    specialized __RawDictionaryStorage.find<A>(_:)(v5, v3);
    OUTLINED_FUNCTION_2_25();
    if (!v13)
    {
      goto LABEL_14;
    }

    v10 = v12;
  }

  if (v11)
  {
    *(*(*v6 + 56) + 8 * v10) = v4;
    OUTLINED_FUNCTION_60_1();
  }

  else
  {
    v16 = OUTLINED_FUNCTION_7_13();
    specialized _NativeDictionary._insert(at:key:value:)(v16, v17, v18, v19, v20);
    OUTLINED_FUNCTION_60_1();
  }
}

void specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2)
{
  specialized __RawDictionaryStorage.find<A>(_:)(a2);
  OUTLINED_FUNCTION_0_25();
  if (v7)
  {
    __break(1u);
    goto LABEL_11;
  }

  v8 = v5;
  v9 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySi27PhoneCallFlowDelegatePlugin18OneTimeHintHistoryVGMd, &_ss17_NativeDictionaryVySi27PhoneCallFlowDelegatePlugin18OneTimeHintHistoryVGMR);
  if (!OUTLINED_FUNCTION_10_19())
  {
    goto LABEL_5;
  }

  v10 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  if ((v9 & 1) != (v11 & 1))
  {
LABEL_11:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v8 = v10;
LABEL_5:
  if (v9)
  {
    *(*(*v2 + 56) + 8 * v8) = a1;
    OUTLINED_FUNCTION_60_1();
  }

  else
  {
    OUTLINED_FUNCTION_60_1();

    specialized _NativeDictionary._insert(at:key:value:)(v12, v13, v14, v15);
  }
}

{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  specialized __RawDictionaryStorage.find<A>(_:)(a2);
  OUTLINED_FUNCTION_0_25();
  if (v11)
  {
    __break(1u);
    goto LABEL_11;
  }

  v12 = v9;
  v13 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVy10Foundation4UUIDV27PhoneCallFlowDelegatePlugin0F16StateOneTimeTaskCGMd, &_ss17_NativeDictionaryVy10Foundation4UUIDV27PhoneCallFlowDelegatePlugin0F16StateOneTimeTaskCGMR);
  if (!OUTLINED_FUNCTION_1_33())
  {
    goto LABEL_5;
  }

  v14 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  if ((v13 & 1) != (v15 & 1))
  {
LABEL_11:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v12 = v14;
LABEL_5:
  v16 = *v2;
  if (v13)
  {
    OUTLINED_FUNCTION_8_19();
    OUTLINED_FUNCTION_65();
  }

  else
  {
    (*(v6 + 16))(v8, a2, v5);
    specialized _NativeDictionary._insert(at:key:value:)(v12, v8, a1, v16);
    OUTLINED_FUNCTION_65();
  }
}

unint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = *v2;
  specialized __RawDictionaryStorage.find<A>(_:)();
  OUTLINED_FUNCTION_0_25();
  if (v9)
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = v7;
  v11 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVy27PhoneCallFlowDelegatePlugin23TemplatingOperationTypeOAC0hI0030_EDC7BAD48289BA0912D37340779F4O1BLLCGMd, &_ss17_NativeDictionaryVy27PhoneCallFlowDelegatePlugin23TemplatingOperationTypeOAC0hI0030_EDC7BAD48289BA0912D37340779F4O1BLLCGMR);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(a2 & 1, v6))
  {
    goto LABEL_5;
  }

  v12 = specialized __RawDictionaryStorage.find<A>(_:)();
  if ((v11 & 1) != (v13 & 1))
  {
LABEL_13:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v10 = v12;
LABEL_5:
  v14 = *v3;
  if (v11)
  {
    *(*(v14 + 56) + 8 * v10) = a1;
  }

  else
  {

    return specialized _NativeDictionary._insert(at:key:value:)(v10, a1, v14);
  }
}

void AppResolutionStateProvider.init(requestedBundleId:)(uint64_t a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(SAIntentGroupSiriKitAppSelectionState) init];
  v6 = [objc_allocWithZone(SASyncAppIdentifyingInfo) init];
  outlined bridged method (mbnn) of @objc SASyncAppIdentifyingInfo.bundleId.setter(a1, a2, v6);
  [v4 setRequestedApp:v6];
  v5 = v4;
  AppResolutionStateProvider.init(appSelectionState:)();
}

void outlined bridged method (mbnn) of @objc SASyncAppIdentifyingInfo.bundleId.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();

  [a3 setBundleId:v4];
}

uint64_t static AppSelectionSignalsGatheringHelper.triggerSignalCollection(sharedGlobals:contacts:phoneCallNLIntent:smartAppSelection:eligibleAppsFinder:skIntent:)(void *a1, uint8_t *a2, void *a3, void *a4, void *a5, uint64_t a6, uint64_t a7)
{
  v13 = a5[3];
  v14 = a5[4];
  v15 = __swift_project_boxed_opaque_existential_1(a5, v13);
  return specialized static AppSelectionSignalsGatheringHelper.triggerSignalCollection(sharedGlobals:contacts:phoneCallNLIntent:smartAppSelection:eligibleAppsFinder:skIntent:)(a1, a2, a3, a4, v15, a6, a7, v13, v14);
}

void *static AppSelectionSignalsGatheringHelper.getShowedForcedAppDisambiguationList(sharedGlobals:)(void *a1)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v43[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  (*(v7 + 64))(v49, v6, v7);
  v8 = v50;
  v9 = v51;
  __swift_project_boxed_opaque_existential_1(v49, v50);
  static Date.distantPast.getter();
  Date.timeIntervalSince1970.getter();
  v11 = v10;
  v12 = *(v3 + 8);
  v12(v5, v2);
  v43[0] = 0;
  v44 = v11;
  v45 = _swiftEmptyArrayStorage;
  v13 = lazy protocol witness table accessor for type ForcedAppDisambiguationHistory and conformance ForcedAppDisambiguationHistory();
  SiriPhoneDefaultsProviding.getOrDefault<A>(key:defaultValue:)(2, v43, v8, &type metadata for ForcedAppDisambiguationHistory, v9, v13, v46);
  v14 = v46[0];
  v15 = v47;
  v16 = v48;
  __swift_destroy_boxed_opaque_existential_1(v49);
  v17 = "showedForcedAppDisambiguation";
  if (!v14)
  {
    v17 = "ow";
  }

  if ((v17 | 0x8000000000000000) == 0x80000000004525C0)
  {
  }

  else
  {
    v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v18 & 1) == 0)
    {

      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
      }

      v39 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_9_0(v39, static Logger.siriPhone);
      v23 = Logger.logObject.getter();
      v40 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v23, v40))
      {
        goto LABEL_21;
      }

      v25 = OUTLINED_FUNCTION_65_0();
      *v25 = 0;
      v26 = "#AppSelectionSignalsGatheringHelper: don't find showedForcedAppDisambiguation from user default, return empty apps list and will not trigger data collection";
      v27 = v40;
      v28 = v23;
      v29 = v25;
      v30 = 2;
      goto LABEL_20;
    }
  }

  Date.init()();
  Date.timeIntervalSince1970.getter();
  v20 = v19;
  v12(v5, v2);
  v21 = v20 - v15;
  if (v21 > 10.0)
  {

    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v22 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v22, static Logger.siriPhone);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v23, v24))
    {
      goto LABEL_21;
    }

    v25 = swift_slowAlloc();
    *v25 = 134217984;
    *(v25 + 4) = v21;
    v26 = "#AppSelectionSignalsGatheringHelper: interval since app disambiguation is showed %fs ago, which exceeds 10s";
    v27 = v24;
    v28 = v23;
    v29 = v25;
    v30 = 12;
LABEL_20:
    _os_log_impl(&dword_0, v28, v27, v26, v29, v30);
    OUTLINED_FUNCTION_26_0(v25);
LABEL_21:

    return _swiftEmptyArrayStorage;
  }

  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v31 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v31, static Logger.siriPhone);

  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v49[0] = v35;
    *v34 = 136315138;
    v36 = Array.description.getter();
    v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v37, v49);

    *(v34 + 4) = v38;
    _os_log_impl(&dword_0, v32, v33, "#AppSelectionSignalsGatheringHelper: retrieve app list %s", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v35);
    OUTLINED_FUNCTION_26_0(v35);
    OUTLINED_FUNCTION_26_0(v34);
  }

  return v16;
}

void static AppSelectionSignalsGatheringHelper.triggerForcedAppDisambiguationSignalCollection(sharedGlobals:contacts:phoneCallNLIntent:phoneAppResolutionHelper:appBundleIds:selectedAppId:skIntent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint8_t *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  __chkstk_darwin(v14 - 8);
  v16 = &v34 - v15;
  if (!a2 || !specialized Array.count.getter(a2))
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v25 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v25, static Logger.siriPhone);
    v35 = Logger.logObject.getter();
    static os_log_type_t.debug.getter();
    OUTLINED_FUNCTION_2_26();
    if (!os_log_type_enabled(v35, v26))
    {
      goto LABEL_21;
    }

    v27 = OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_7_14(v27);
    v24 = "#AppSelectionSignalsGatheringHelper triggerForcedAppDisambiguationSignalCollection doesn't expect contacts is empty, cancel signal collection";
    goto LABEL_20;
  }

  if (specialized Array.count.getter(a2) != 1)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v28 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v28, static Logger.siriPhone);
    v35 = Logger.logObject.getter();
    static os_log_type_t.debug.getter();
    OUTLINED_FUNCTION_2_26();
    if (!os_log_type_enabled(v35, v29))
    {
      goto LABEL_21;
    }

    v30 = OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_7_14(v30);
    v24 = "#AppSelectionSignalsGatheringHelper triggerForcedAppDisambiguationSignalCollection there are more than one contacts, ForcedAppDisambiguation shouldn't triggered, cancel signal collection";
    goto LABEL_20;
  }

  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (a2 & 0xC000000000000001) == 0, a2);
  if ((a2 & 0xC000000000000001) != 0)
  {

    v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v17 = *(a2 + 32);

    v18 = v17;
  }

  v19 = outlined bridged method (ob) of @objc INPerson.siriMatches.getter(v18);
  if (!v19 || (v20 = specialized Array.count.getter(v19), , v20 < 2))
  {
    v32 = type metadata accessor for TaskPriority();
    __swift_storeEnumTagSinglePayload(v16, 1, 1, v32);
    outlined init with copy of SignalProviding(a1, v37);
    outlined init with copy of SignalProviding(a3, v36);
    v33 = swift_allocObject();
    v33[2] = 0;
    v33[3] = 0;
    outlined init with take of SPHConversation(v37, (v33 + 4));
    v33[9] = a5;
    v33[10] = a4;
    v33[11] = a6;
    v33[12] = a7;
    v33[13] = a2;
    outlined init with take of SPHConversation(v36, (v33 + 14));

    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();

    return;
  }

  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v21 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v21, static Logger.siriPhone);
  v35 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  OUTLINED_FUNCTION_2_26();
  if (os_log_type_enabled(v35, v22))
  {
    v23 = OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_7_14(v23);
    v24 = "#AppSelectionSignalsGatheringHelper triggerForcedAppDisambiguationSignalCollection requests needs disambiguation, waiting signal collection after disambiguation";
LABEL_20:
    _os_log_impl(&dword_0, v35, a7, v24, a4, 2u);
    OUTLINED_FUNCTION_26_0(a4);
  }

LABEL_21:
  v31 = v35;
}

void static AppSelectionSignalsGatheringHelper.triggerAppNameSpecifiedSignalCollection(sharedGlobals:contacts:phoneCallNLIntent:phoneAppResolutionHelper:skIntent:)(uint64_t a1, uint8_t *a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  __chkstk_darwin(v8 - 8);
  v10 = &v21 - v9;
  if (!a2 || !specialized Array.count.getter(a2))
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v15 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v15, static Logger.siriPhone);
    v22 = Logger.logObject.getter();
    static os_log_type_t.debug.getter();
    OUTLINED_FUNCTION_2_26();
    if (!os_log_type_enabled(v22, v16))
    {
      goto LABEL_13;
    }

    v17 = OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_7_14(v17);
    v14 = "#AppSelectionSignalsGatheringHelper doesn't expect contacts is empty, return";
    goto LABEL_12;
  }

  if (specialized Array.count.getter(a2) < 2)
  {
    v19 = type metadata accessor for TaskPriority();
    __swift_storeEnumTagSinglePayload(v10, 1, 1, v19);
    outlined init with copy of SignalProviding(a1, v24);
    outlined init with copy of SignalProviding(a3, v23);
    v20 = swift_allocObject();
    v20[2] = 0;
    v20[3] = 0;
    outlined init with take of SPHConversation(v24, (v20 + 4));
    v20[9] = a4;
    outlined init with take of SPHConversation(v23, (v20 + 10));
    v20[15] = a2;

    _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v10, &async function pointer to partial apply for closure #1 in static AppSelectionSignalsGatheringHelper.triggerAppNameSpecifiedSignalCollection(sharedGlobals:contacts:phoneCallNLIntent:phoneAppResolutionHelper:skIntent:), v20);

    return;
  }

  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v11 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v11, static Logger.siriPhone);
  v22 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  OUTLINED_FUNCTION_2_26();
  if (os_log_type_enabled(v22, v12))
  {
    v13 = OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_7_14(v13);
    v14 = "#AppSelectionSignalsGatheringHelper there are more than one match, wait logging after disambiguation";
LABEL_12:
    _os_log_impl(&dword_0, v22, a4, v14, a2, 2u);
    OUTLINED_FUNCTION_26_0(a2);
  }

LABEL_13:
  v18 = v22;
}

uint64_t static AppSelectionSignalsGatheringHelper.getCommunicationType(phoneCallNLIntent:skIntent:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  if (a1 && (ObjectType = swift_getObjectType(), ((*(a2 + 136))(ObjectType, a2) & 1) != 0) || (OUTLINED_FUNCTION_1_34(), PhoneCallNLIntent.isGroupFaceTimeCall()()))
  {
    OUTLINED_FUNCTION_1_34();
    v6 = PhoneCallNLIntent.isVideoCall()();
    type metadata accessor for CommunicationTypeSignal.CommunicationType();
    OUTLINED_FUNCTION_23_1();
    v8 = *(v7 + 104);
    if (v6)
    {
      v9 = &enum case for CommunicationTypeSignal.CommunicationType.groupVideoCall(_:);
    }

    else
    {
      v9 = &enum case for CommunicationTypeSignal.CommunicationType.groupAudioCall(_:);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_34();
    v10 = PhoneCallNLIntent.isVideoCall()();
    type metadata accessor for CommunicationTypeSignal.CommunicationType();
    OUTLINED_FUNCTION_23_1();
    v8 = *(v11 + 104);
    if (v10)
    {
      v9 = &enum case for CommunicationTypeSignal.CommunicationType.videoCall(_:);
    }

    else
    {
      v9 = &enum case for CommunicationTypeSignal.CommunicationType.audioCall(_:);
    }
  }

  v12 = *v9;

  return v8(a3, v12);
}

uint64_t closure #1 in static AppSelectionSignalsGatheringHelper.triggerForcedAppDisambiguationSignalCollection(sharedGlobals:contacts:phoneCallNLIntent:phoneAppResolutionHelper:appBundleIds:selectedAppId:skIntent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[15] = v12;
  v8[16] = v13;
  v8[13] = a7;
  v8[14] = a8;
  v8[11] = a5;
  v8[12] = a6;
  v8[10] = a4;
  v9 = type metadata accessor for Date();
  v8[17] = v9;
  v8[18] = *(v9 - 8);
  v8[19] = swift_task_alloc();

  return _swift_task_switch(closure #1 in static AppSelectionSignalsGatheringHelper.triggerForcedAppDisambiguationSignalCollection(sharedGlobals:contacts:phoneCallNLIntent:phoneAppResolutionHelper:appBundleIds:selectedAppId:skIntent:), 0, 0);
}

uint64_t closure #1 in static AppSelectionSignalsGatheringHelper.triggerForcedAppDisambiguationSignalCollection(sharedGlobals:contacts:phoneCallNLIntent:phoneAppResolutionHelper:appBundleIds:selectedAppId:skIntent:)()
{
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.siriPhone);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = OUTLINED_FUNCTION_65_0();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "#AppSelectionSignalsGatheringHelper triggerSignalCollection for ForcedAppDisambiguationSignalCollection asynchronously", v4, 2u);
    OUTLINED_FUNCTION_26_0(v4);
  }

  v6 = *(v0 + 144);
  v5 = *(v0 + 152);
  v41 = *(v0 + 136);
  v7 = *(v0 + 88);
  v8 = *(v0 + 80);

  static Signpost.begin(_:)();
  v9 = v8[3];
  v10 = v8[4];
  __swift_project_boxed_opaque_existential_1(v8, v9);
  v42 = (*(v10 + 192))(v9, v10);
  v11 = v8[3];
  v12 = v8[4];
  __swift_project_boxed_opaque_existential_1(v8, v11);
  (*(v12 + 64))(v11, v12);
  v13 = *(v0 + 40);
  v14 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v13);
  Date.init()();
  Date.timeIntervalSince1970.getter();
  v16 = v15;
  (*(v6 + 8))(v5, v41);
  *(v0 + 56) = 1;
  *(v0 + 64) = v16;
  v17 = _swiftEmptyArrayStorage;
  *(v0 + 72) = _swiftEmptyArrayStorage;
  v18 = *(v14 + 16);
  v19 = lazy protocol witness table accessor for type ForcedAppDisambiguationHistory and conformance ForcedAppDisambiguationHistory();
  v18(2, v0 + 56, &type metadata for ForcedAppDisambiguationHistory, v19, v13, v14);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v20 = *(v7 + 16);
  for (i = (v7 + 40); v20; --v20)
  {
    v23 = *(i - 1);
    v22 = *i;
    v24 = *(**(v0 + 96) + 256);

    v25 = v24(v23, v22);
    v27 = v26;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v17 = v30;
    }

    v28 = v17[2];
    if (v28 >= v17[3] >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v17 = v31;
    }

    v17[2] = v28 + 1;
    v29 = &v17[2 * v28];
    v29[4] = v25;
    v29[5] = v27;
    i += 2;
  }

  v32 = *(v0 + 120);
  (*(**(v0 + 96) + 256))(*(v0 + 104), *(v0 + 112));
  v33 = v32 & 1;
  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v32 & 0xC000000000000001) == 0, v32);
  if ((v32 & 0xC000000000000001) != 0)
  {
    v34 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v34 = *(*(v0 + 120) + 32);
  }

  v35 = v34;
  (*(*v42 + 144))();

  Signpost.OpenSignpost.end()();
  v36 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  OUTLINED_FUNCTION_2_26();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = OUTLINED_FUNCTION_65_0();
    *v38 = 0;
    _os_log_impl(&dword_0, v36, v33, "#AppSelectionSignalsGatheringHelper triggerSignalCollection finished", v38, 2u);
    OUTLINED_FUNCTION_26_0(v38);
  }

  OUTLINED_FUNCTION_11();

  return v39();
}

uint64_t closure #1 in static AppSelectionSignalsGatheringHelper.triggerAppNameSpecifiedSignalCollection(sharedGlobals:contacts:phoneCallNLIntent:phoneAppResolutionHelper:skIntent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[11] = a6;
  v7[12] = a7;
  v7[9] = a4;
  v7[10] = a5;
  v8 = type metadata accessor for Date();
  v7[13] = v8;
  v7[14] = *(v8 - 8);
  v7[15] = swift_task_alloc();

  return _swift_task_switch(closure #1 in static AppSelectionSignalsGatheringHelper.triggerAppNameSpecifiedSignalCollection(sharedGlobals:contacts:phoneCallNLIntent:phoneAppResolutionHelper:skIntent:), 0, 0);
}

uint64_t closure #1 in static AppSelectionSignalsGatheringHelper.triggerAppNameSpecifiedSignalCollection(sharedGlobals:contacts:phoneCallNLIntent:phoneAppResolutionHelper:skIntent:)()
{
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v1 = type metadata accessor for Logger();
  v0[16] = __swift_project_value_buffer(v1, static Logger.siriPhone);
  v2 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  OUTLINED_FUNCTION_2_26();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = OUTLINED_FUNCTION_65_0();
    *v4 = 0;
    OUTLINED_FUNCTION_14_1(&dword_0, v5, v6, "#AppSelectionSignalsGatheringHelper triggerSignalCollection for specified app name asynchronously");
    OUTLINED_FUNCTION_26_0(v4);
  }

  v7 = v0[9];
  v8 = v0[10];

  v9 = v7[3];
  v10 = v7[4];
  __swift_project_boxed_opaque_existential_1(v7, v9);
  v0[17] = (*(v10 + 192))(v9, v10);
  v14 = (*(*v8 + 168) + **(*v8 + 168));
  v11 = swift_task_alloc();
  v0[18] = v11;
  *v11 = v0;
  v11[1] = closure #1 in static AppSelectionSignalsGatheringHelper.triggerAppNameSpecifiedSignalCollection(sharedGlobals:contacts:phoneCallNLIntent:phoneAppResolutionHelper:skIntent:);
  v12 = v0[11];

  return v14(v12);
}

{
  OUTLINED_FUNCTION_15();
  v2 = *v1;
  *(v2 + 152) = v3;
  *(v2 + 160) = v0;

  if (v0)
  {
    v4 = closure #1 in static AppSelectionSignalsGatheringHelper.triggerAppNameSpecifiedSignalCollection(sharedGlobals:contacts:phoneCallNLIntent:phoneAppResolutionHelper:skIntent:);
  }

  else
  {
    v4 = closure #1 in static AppSelectionSignalsGatheringHelper.triggerAppNameSpecifiedSignalCollection(sharedGlobals:contacts:phoneCallNLIntent:phoneAppResolutionHelper:skIntent:);
  }

  return _swift_task_switch(v4, 0, 0);
}

{
  v1 = *(v0 + 152);
  v2 = specialized Array.count.getter(v1);
  v3 = 0;
  v4 = v1 & 0xC000000000000001;
  v5 = v1 & 0xFFFFFFFFFFFFFF8;
  v6 = _swiftEmptyArrayStorage;
  while (v2 != v3)
  {
    if (v4)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v3 >= *(v5 + 16))
      {
        goto LABEL_27;
      }
    }

    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    v7 = *(v47 + 80);
    v8 = App.appIdentifier.getter();
    if (v9)
    {
      v10 = v9;
    }

    else
    {
      v8 = 0;
      v10 = 0xE000000000000000;
    }

    v11 = (*(*v7 + 256))(v8, v10);
    v13 = v12;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v6 = v16;
    }

    v14 = v6[2];
    if (v14 >= v6[3] >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v6 = v17;
    }

    v6[2] = v14 + 1;
    v15 = &v6[2 * v14];
    v15[4] = v11;
    v15[5] = v13;
    ++v3;
  }

  v18 = *(v47 + 112);
  v19 = *(v47 + 120);
  v45 = *(v47 + 104);
  v46 = *(v47 + 96);
  v20 = *(v47 + 80);
  v21 = *(v47 + 88);
  v22 = *(v47 + 72);

  v23 = v22[3];
  v24 = v22[4];
  __swift_project_boxed_opaque_existential_1(v22, v23);
  (*(v24 + 64))(v23, v24);
  v25 = *(v47 + 40);
  v26 = *(v47 + 48);
  __swift_project_boxed_opaque_existential_1((v47 + 16), v25);
  Date.init()();

  Date.timeIntervalSince1970.getter();
  v28 = v27;
  (*(v18 + 8))(v19, v45);
  *(v47 + 56) = v28;
  *(v47 + 64) = v6;
  v29 = *(v26 + 16);
  v30 = lazy protocol witness table accessor for type AppNameSpecifiedByUserSignalCollectionHistory and conformance AppNameSpecifiedByUserSignalCollectionHistory();
  v29(3, v47 + 56, &type metadata for AppNameSpecifiedByUserSignalCollectionHistory, v30, v25, v26);

  __swift_destroy_boxed_opaque_existential_1((v47 + 16));
  v31 = v21[3];
  v32 = v21[4];
  __swift_project_boxed_opaque_existential_1(v21, v31);
  v33 = PhoneCallNLIntent.applicationId.getter(v31, v32);
  if (v34)
  {
    v35 = v34;
  }

  else
  {
    v33 = 0;
    v35 = 0xE000000000000000;
  }

  (*(*v20 + 256))(v33, v35);

  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v46 & 0xC000000000000001) == 0, v46);
  if ((v46 & 0xC000000000000001) == 0)
  {
    v36 = *(*(v47 + 96) + 32);
    goto LABEL_21;
  }

LABEL_28:
  v36 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_21:
  v37 = v36;
  (*(**(v47 + 136) + 144))();

  v38 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  OUTLINED_FUNCTION_2_26();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = OUTLINED_FUNCTION_65_0();
    *v40 = 0;
    OUTLINED_FUNCTION_14_1(&dword_0, v41, v42, "#AppSelectionSignalsGatheringHelper triggerSignalCollection finished ");
    OUTLINED_FUNCTION_26_0(v40);
  }

  OUTLINED_FUNCTION_11();

  return v43();
}

{
  OUTLINED_FUNCTION_15();

  OUTLINED_FUNCTION_11();

  return v0();
}