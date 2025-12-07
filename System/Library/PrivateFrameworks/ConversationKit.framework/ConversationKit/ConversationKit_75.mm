uint64_t closure #1 in ConversationController.startCountdownToRecordVideoMessage(withDuration:countdownTicker:countdownStopped:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a8;
  v8[7] = v13;
  v8[4] = a6;
  v8[5] = a7;
  v8[2] = a4;
  v8[3] = a5;
  type metadata accessor for MainActor();
  v8[8] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in ConversationController.startCountdownToRecordVideoMessage(withDuration:countdownTicker:countdownStopped:), v10, v9);
}

uint64_t closure #1 in ConversationController.startCountdownToRecordVideoMessage(withDuration:countdownTicker:countdownStopped:)()
{

  OUTLINED_FUNCTION_7_8();
  VideoMessageController.prewarm(withDuration:countdownTicker:countdownStopped:)();
  OUTLINED_FUNCTION_13();

  return v0();
}

uint64_t closure #1 in ConversationController.startRecordingVideoMessage()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a4;
  type metadata accessor for MainActor();
  v4[13] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[14] = v6;
  v4[15] = v5;

  return MEMORY[0x1EEE6DFA0](closure #1 in ConversationController.startRecordingVideoMessage(), v6, v5);
}

uint64_t closure #1 in ConversationController.startRecordingVideoMessage()()
{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(Strong + OBJC_IVAR____TtC15ConversationKit22ConversationController_videoMessageController);
    *(v0 + 128) = v3;
    v4 = v3;

    v5 = swift_task_alloc();
    *(v0 + 136) = v5;
    *v5 = v0;
    OUTLINED_FUNCTION_285_1(v5);

    return VideoMessageController.start()();
  }

  else
  {

    OUTLINED_FUNCTION_13();

    return v7();
  }
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_0();
  v3 = v2;
  OUTLINED_FUNCTION_14_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4_6();
  *v6 = v5;
  *(v3 + 144) = v0;

  if (v0)
  {
    v7 = *(v3 + 112);
    v8 = *(v3 + 120);
    v9 = closure #1 in ConversationController.startRecordingVideoMessage();
  }

  else
  {

    v7 = *(v3 + 112);
    v8 = *(v3 + 120);
    v9 = closure #1 in ConversationController.startRecordingVideoMessage();
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t closure #1 in ConversationController.pauseRecordingVideoMessage()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  type metadata accessor for MainActor();
  v4[3] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x1EEE6DFA0](closure #1 in ConversationController.pauseRecordingVideoMessage(), v6, v5);
}

uint64_t closure #1 in ConversationController.pauseRecordingVideoMessage()()
{
  OUTLINED_FUNCTION_24_0();
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = closure #1 in ConversationController.pauseRecordingVideoMessage();

  return VideoMessageController.pause()();
}

{
  OUTLINED_FUNCTION_24_0();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_4_6();
  *v3 = v2;

  v4 = *(v1 + 40);
  v5 = *(v1 + 32);

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in closure #1 in CallScreening.CallStateObserver.start(onCallStatusUpdate:), v5, v4);
}

uint64_t closure #1 in ConversationController.stopRecordingVideoMessage()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a4;
  type metadata accessor for MainActor();
  v4[13] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[14] = v6;
  v4[15] = v5;

  return MEMORY[0x1EEE6DFA0](closure #1 in ConversationController.stopRecordingVideoMessage(), v6, v5);
}

uint64_t closure #1 in ConversationController.stopRecordingVideoMessage()()
{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(Strong + OBJC_IVAR____TtC15ConversationKit22ConversationController_videoMessageController);
    *(v0 + 128) = v3;
    v4 = v3;

    v5 = swift_task_alloc();
    *(v0 + 136) = v5;
    *v5 = v0;
    OUTLINED_FUNCTION_285_1(v5);

    return VideoMessageController.stop()();
  }

  else
  {

    OUTLINED_FUNCTION_13();

    return v7();
  }
}

uint64_t closure #1 in ConversationController.saveRecordedVideoMessage()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a4;
  type metadata accessor for MainActor();
  v4[13] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[14] = v6;
  v4[15] = v5;

  return MEMORY[0x1EEE6DFA0](closure #1 in ConversationController.saveRecordedVideoMessage(), v6, v5);
}

uint64_t closure #1 in ConversationController.saveRecordedVideoMessage()()
{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(Strong + OBJC_IVAR____TtC15ConversationKit22ConversationController_videoMessageController);
    *(v0 + 128) = v3;
    v4 = v3;

    v5 = swift_task_alloc();
    *(v0 + 136) = v5;
    *v5 = v0;
    OUTLINED_FUNCTION_285_1(v5);

    return VideoMessageController.save()();
  }

  else
  {

    OUTLINED_FUNCTION_13();

    return v7();
  }
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_0();
  v3 = v2;
  OUTLINED_FUNCTION_14_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4_6();
  *v6 = v5;
  *(v3 + 144) = v0;

  if (v0)
  {
    v7 = *(v3 + 112);
    v8 = *(v3 + 120);
    v9 = closure #1 in ConversationController.saveRecordedVideoMessage();
  }

  else
  {

    v7 = *(v3 + 112);
    v8 = *(v3 + 120);
    v9 = closure #1 in ConversationController.saveRecordedVideoMessage();
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

{
  OUTLINED_FUNCTION_24_0();

  OUTLINED_FUNCTION_13();

  return v0();
}

{
  v1 = *(v0 + 144);
  v2 = *(v0 + 128);

  *(v0 + 88) = v1;
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if ((swift_dynamicCast() & 1) != 0 && (v4 = *(v0 + 152), OUTLINED_FUNCTION_3_0(), swift_beginAccess(), (Strong = swift_unknownObjectWeakLoadStrong()) != 0))
  {
    v6 = Strong;
    v7 = (Strong + OBJC_IVAR____TtC15ConversationKit22ConversationController_videoMessageErrorOccured);
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    v8 = *v7;
    v9 = *(v0 + 144);
    if (*v7)
    {
      v10 = OUTLINED_FUNCTION_246_0();
      outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v10, v11);

      v8(v4);
      v12 = OUTLINED_FUNCTION_246_0();
      outlined consume of (@escaping @callee_guaranteed () -> ())?(v12, v13);
    }

    else
    {
    }
  }

  else
  {
  }

  OUTLINED_FUNCTION_13();

  return v14();
}

uint64_t closure #1 in ConversationController.resetRecordingVideoMessage(completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[13] = a5;
  v6[14] = a6;
  v6[12] = a4;
  type metadata accessor for MainActor();
  v6[15] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[16] = v8;
  v6[17] = v7;

  return MEMORY[0x1EEE6DFA0](closure #1 in ConversationController.resetRecordingVideoMessage(completion:), v8, v7);
}

uint64_t closure #1 in ConversationController.resetRecordingVideoMessage(completion:)()
{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(Strong + OBJC_IVAR____TtC15ConversationKit22ConversationController_videoMessageController);
    v0[18] = v3;
    v4 = v3;

    v5 = swift_task_alloc();
    v0[19] = v5;
    *v5 = v0;
    OUTLINED_FUNCTION_285_1(v5);

    return VideoMessageController.reset()();
  }

  else
  {

    v7 = v0[13];
    if (v7)
    {
      v7(1);
    }

    OUTLINED_FUNCTION_13();

    return v8();
  }
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_0();
  v3 = v2;
  OUTLINED_FUNCTION_14_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4_6();
  *v6 = v5;
  *(v3 + 160) = v0;

  if (v0)
  {
    v7 = *(v3 + 128);
    v8 = *(v3 + 136);
    v9 = closure #1 in ConversationController.resetRecordingVideoMessage(completion:);
  }

  else
  {

    v7 = *(v3 + 128);
    v8 = *(v3 + 136);
    v9 = closure #1 in ConversationController.resetRecordingVideoMessage(completion:);
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

{
  OUTLINED_FUNCTION_24_0();

  v1 = *(v0 + 104);
  if (v1)
  {
    v1(1);
  }

  OUTLINED_FUNCTION_13();

  return v2();
}

{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 160);
  v2 = *(v0 + 144);

  *(v0 + 88) = v1;
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {
    v4 = *(v0 + 168);
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = Strong;
      v7 = (Strong + OBJC_IVAR____TtC15ConversationKit22ConversationController_videoMessageErrorOccured);
      OUTLINED_FUNCTION_3_0();
      swift_beginAccess();
      v8 = *v7;
      if (*v7)
      {
        v9 = OUTLINED_FUNCTION_76();
        outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v9, v10);

        v8(v4);
        v11 = OUTLINED_FUNCTION_76();
        outlined consume of (@escaping @callee_guaranteed () -> ())?(v11, v12);
      }

      else
      {
      }
    }
  }

  v13 = *(v0 + 104);
  v14 = *(v0 + 160);
  if (v13)
  {
    v13(0);
  }

  OUTLINED_FUNCTION_13();

  return v15();
}

uint64_t closure #1 in ConversationController.discardRecordedVideoMessage()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  type metadata accessor for MainActor();
  v4[3] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x1EEE6DFA0](closure #1 in ConversationController.discardRecordedVideoMessage(), v6, v5);
}

uint64_t closure #1 in ConversationController.discardRecordedVideoMessage()()
{
  OUTLINED_FUNCTION_24_0();
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = closure #1 in ConversationController.discardRecordedVideoMessage();

  return VideoMessageController.discardRecording()();
}

{
  OUTLINED_FUNCTION_24_0();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_4_6();
  *v3 = v2;

  v4 = *(v1 + 40);
  v5 = *(v1 + 32);

  return MEMORY[0x1EEE6DFA0](closure #3 in ScreeningService.startScreening(callUUID:endCall:), v5, v4);
}

void ConversationController.checkScreenTimeRestricts(_:)(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v2);
  if ((*(v3 + 160))(v2, v3))
  {
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    v4 = static OS_os_log.conversationKit;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1BC4BA940;
    v6 = a1[3];
    v7 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v6);
    (*(v7 + 120))(v6, v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sShySo25TUConversationParticipantCGMd, &_sShySo25TUConversationParticipantCGMR);
    v8 = String.init<A>(reflecting:)();
    v10 = v9;
    *(v5 + 56) = MEMORY[0x1E69E6158];
    *(v5 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v5 + 32) = v8;
    *(v5 + 40) = v10;
    v11 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Conversation contains restricted participant, leaving conversation with active participants: %@", 95, 2, &dword_1BBC58000, v4, v11, v5);

    ConversationController.leaveConversation(reason:)();
  }
}

uint64_t ConversationController.updateRemoteScreenShareAttributesChanged(remoteAttributes:isLocallySharing:)(uint64_t a1, int a2)
{
  LODWORD(v187) = a2;
  v185 = a1;
  v191 = type metadata accessor for Participant.State(0);
  MEMORY[0x1EEE9AC00](v191);
  v4 = &v171 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v189 = &v171 - v6;
  v176 = type metadata accessor for Participant(0);
  v183 = *(v176 - 8);
  MEMORY[0x1EEE9AC00](v176);
  v172 = &v171 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v171 - v9);
  MEMORY[0x1EEE9AC00](v11);
  v192 = &v171 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v175 = &v171 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A0_p06activeA0_AA11ParticipantV11participantSo20TUConversationNoticeC6noticetSgMd, &_s15ConversationKit0A0_p06activeA0_AA11ParticipantV11participantSo20TUConversationNoticeC6noticetSgMR);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v180 = &v171 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v184 = &v171 - v18;
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A0_p06activeA0_AA11ParticipantV11participantSo20TUConversationNoticeC6noticetMd, &_s15ConversationKit0A0_p06activeA0_AA11ParticipantV11participantSo20TUConversationNoticeC6noticetMR);
  MEMORY[0x1EEE9AC00](v190);
  v174 = (&v171 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v20);
  v182 = &v171 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v181 = &v171 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v179 = (&v171 - v25);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v171 - v27;
  v29 = type metadata accessor for DispatchPredicate();
  v30 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v32 = (&v171 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (one-time initialization token for conversationController != -1)
  {
    swift_once();
  }

  v33 = type metadata accessor for Logger();
  v34 = __swift_project_value_buffer(v33, static Logger.conversationController);
  v35 = v2;
  v178 = v34;
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.default.getter();

  v38 = os_log_type_enabled(v36, v37);
  v173 = v10;
  v177 = v4;
  v186 = v28;
  v188 = v35;
  if (v38)
  {
    v4 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *&v195[0] = v39;
    *v4 = 136315394;
    v207[0] = v35;
    v40 = String.init<A>(reflecting:)();
    v10 = v41;
    v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v41, v195);

    *(v4 + 4) = v42;
    *(v4 + 12) = 2080;
    *(v4 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000004CLL, 0x80000001BC5218E0, v195);
    _os_log_impl(&dword_1BBC58000, v36, v37, "ConversationController(%s recieved callback %s", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFB23DF0](v39, -1, -1);
    MEMORY[0x1BFB23DF0](v4, -1, -1);
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v32 = static OS_dispatch_queue.main.getter();
  (*(v30 + 104))(v32, *MEMORY[0x1E69E8020], v29);
  v43 = _dispatchPreconditionTest(_:)();
  (*(v30 + 8))(v32, v29);
  v44 = v190;
  if ((v43 & 1) == 0)
  {
    __break(1u);
    goto LABEL_71;
  }

  swift_getObjectType();
  v45 = swift_unknownObjectRetain();
  specialized Participant.ScreenShareAttributes.init(_:)(v45, v217);
  memcpy(v216, v217, sizeof(v216));
  v46 = OBJC_IVAR____TtC15ConversationKit22ConversationController_pendingNoticeWaitingForRemoteScreenShareAttributes;
  v47 = v188;
  swift_beginAccess();
  v48 = v184;
  outlined init with copy of IDView<AvatarStackView, [UUID]>(&v47[v46], v184, &_s15ConversationKit0A0_p06activeA0_AA11ParticipantV11participantSo20TUConversationNoticeC6noticetSgMd, &_s15ConversationKit0A0_p06activeA0_AA11ParticipantV11participantSo20TUConversationNoticeC6noticetSgMR);
  if (__swift_getEnumTagSinglePayload(v48, 1, v44) == 1)
  {
    result = outlined destroy of CallControlsService?(v48, &_s15ConversationKit0A0_p06activeA0_AA11ParticipantV11participantSo20TUConversationNoticeC6noticetSgMd, &_s15ConversationKit0A0_p06activeA0_AA11ParticipantV11participantSo20TUConversationNoticeC6noticetSgMR);
    v50 = v192;
    v51 = v187;
  }

  else
  {
    v52 = v48;
    v53 = v186;
    outlined init with take of ZStack<TupleView<(ModifiedContent<_ShapeView<Rectangle, Color>, _AllowsHitTestingModifier>, ModifiedContent<StaticIf<Solarium, _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, _AnimationModifier<Bool>>)>>(v52, v186, &_s15ConversationKit0A0_p06activeA0_AA11ParticipantV11participantSo20TUConversationNoticeC6noticetMd, &_s15ConversationKit0A0_p06activeA0_AA11ParticipantV11participantSo20TUConversationNoticeC6noticetMR);
    v54 = v179;
    outlined init with copy of IDView<AvatarStackView, [UUID]>(v53, v179, &_s15ConversationKit0A0_p06activeA0_AA11ParticipantV11participantSo20TUConversationNoticeC6noticetMd, &_s15ConversationKit0A0_p06activeA0_AA11ParticipantV11participantSo20TUConversationNoticeC6noticetMR);
    v55 = v181;
    outlined init with copy of IDView<AvatarStackView, [UUID]>(v53, v181, &_s15ConversationKit0A0_p06activeA0_AA11ParticipantV11participantSo20TUConversationNoticeC6noticetMd, &_s15ConversationKit0A0_p06activeA0_AA11ParticipantV11participantSo20TUConversationNoticeC6noticetMR);
    v56 = v53;
    v57 = v182;
    outlined init with copy of IDView<AvatarStackView, [UUID]>(v56, v182, &_s15ConversationKit0A0_p06activeA0_AA11ParticipantV11participantSo20TUConversationNoticeC6noticetMd, &_s15ConversationKit0A0_p06activeA0_AA11ParticipantV11participantSo20TUConversationNoticeC6noticetMR);
    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      LODWORD(v184) = v59;
      v61 = v60;
      v185 = swift_slowAlloc();
      v207[0] = v185;
      *v61 = 136315650;
      v62 = v174;
      v178 = v58;
      outlined init with copy of IDView<AvatarStackView, [UUID]>(v54, v174, &_s15ConversationKit0A0_p06activeA0_AA11ParticipantV11participantSo20TUConversationNoticeC6noticetMd, &_s15ConversationKit0A0_p06activeA0_AA11ParticipantV11participantSo20TUConversationNoticeC6noticetMR);
      v63 = *(v44 + 48);

      outlined init with take of TapInteractionHandler(v62, v195);
      v64 = specialized >> prefix<A>(_:)(v195);
      v66 = v65;
      outlined destroy of CallControlsService?(v195, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
      outlined destroy of CallControlsService?(v54, &_s15ConversationKit0A0_p06activeA0_AA11ParticipantV11participantSo20TUConversationNoticeC6noticetMd, &_s15ConversationKit0A0_p06activeA0_AA11ParticipantV11participantSo20TUConversationNoticeC6noticetMR);
      v179 = type metadata accessor for Participant;
      _s15ConversationKit11ParticipantVWOhTm_18(v62 + v63, type metadata accessor for Participant);
      v67 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v64, v66, v207);

      *(v61 + 4) = v67;
      *(v61 + 12) = 2080;
      v68 = v181;
      outlined init with copy of IDView<AvatarStackView, [UUID]>(v181, v62, &_s15ConversationKit0A0_p06activeA0_AA11ParticipantV11participantSo20TUConversationNoticeC6noticetMd, &_s15ConversationKit0A0_p06activeA0_AA11ParticipantV11participantSo20TUConversationNoticeC6noticetMR);
      v69 = *(v190 + 48);

      v70 = v175;
      _s15ConversationKit11ParticipantVWObTm_8(v62 + v69, v175);
      __swift_storeEnumTagSinglePayload(v70, 0, 1, v176);
      specialized >> prefix<A>(_:)();
      v72 = v71;
      v74 = v73;
      outlined destroy of CallControlsService?(v70, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
      outlined destroy of CallControlsService?(v68, &_s15ConversationKit0A0_p06activeA0_AA11ParticipantV11participantSo20TUConversationNoticeC6noticetMd, &_s15ConversationKit0A0_p06activeA0_AA11ParticipantV11participantSo20TUConversationNoticeC6noticetMR);
      __swift_destroy_boxed_opaque_existential_1(v62);
      v75 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v72, v74, v207);

      *(v61 + 14) = v75;
      *(v61 + 22) = 2080;
      v76 = v182;
      outlined init with copy of IDView<AvatarStackView, [UUID]>(v182, v62, &_s15ConversationKit0A0_p06activeA0_AA11ParticipantV11participantSo20TUConversationNoticeC6noticetMd, &_s15ConversationKit0A0_p06activeA0_AA11ParticipantV11participantSo20TUConversationNoticeC6noticetMR);
      v77 = *(v190 + 48);
      *&v195[0] = *(v62 + *(v190 + 64));
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationNotice, 0x1E69D8B88);
      v78 = String.init<A>(reflecting:)();
      v80 = v79;
      outlined destroy of CallControlsService?(v76, &_s15ConversationKit0A0_p06activeA0_AA11ParticipantV11participantSo20TUConversationNoticeC6noticetMd, &_s15ConversationKit0A0_p06activeA0_AA11ParticipantV11participantSo20TUConversationNoticeC6noticetMR);
      v81 = v62 + v77;
      v47 = v188;
      _s15ConversationKit11ParticipantVWOhTm_18(v81, v179);
      __swift_destroy_boxed_opaque_existential_1(v62);
      v82 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v78, v80, v207);
      v44 = v190;

      *(v61 + 24) = v82;
      v83 = v178;
      _os_log_impl(&dword_1BBC58000, v178, v184, "Calling sessionActionNoticePosted for %s, %s, %s", v61, 0x20u);
      v84 = v185;
      swift_arrayDestroy();
      MEMORY[0x1BFB23DF0](v84, -1, -1);
      MEMORY[0x1BFB23DF0](v61, -1, -1);
    }

    else
    {

      outlined destroy of CallControlsService?(v57, &_s15ConversationKit0A0_p06activeA0_AA11ParticipantV11participantSo20TUConversationNoticeC6noticetMd, &_s15ConversationKit0A0_p06activeA0_AA11ParticipantV11participantSo20TUConversationNoticeC6noticetMR);
      outlined destroy of CallControlsService?(v55, &_s15ConversationKit0A0_p06activeA0_AA11ParticipantV11participantSo20TUConversationNoticeC6noticetMd, &_s15ConversationKit0A0_p06activeA0_AA11ParticipantV11participantSo20TUConversationNoticeC6noticetMR);
      outlined destroy of CallControlsService?(v54, &_s15ConversationKit0A0_p06activeA0_AA11ParticipantV11participantSo20TUConversationNoticeC6noticetMd, &_s15ConversationKit0A0_p06activeA0_AA11ParticipantV11participantSo20TUConversationNoticeC6noticetMR);
    }

    v50 = v192;
    v51 = v187;
    v85 = v180;
    v86 = v217[9];
    __swift_storeEnumTagSinglePayload(v180, 1, 1, v44);
    swift_beginAccess();
    outlined assign with take of UICollectionView.SupplementaryRegistration<InCallControlsSectionHeaderView>?(v85, &v47[v46], &_s15ConversationKit0A0_p06activeA0_AA11ParticipantV11participantSo20TUConversationNoticeC6noticetSgMd, &_s15ConversationKit0A0_p06activeA0_AA11ParticipantV11participantSo20TUConversationNoticeC6noticetSgMR);
    swift_endAccess();
    v87 = &v47[OBJC_IVAR____TtC15ConversationKit22ConversationController_sessionActionNoticePosted];
    swift_beginAccess();
    v88 = *v87;
    v89 = v186;
    if (*v87)
    {
      v90 = *(v87 + 1);
      v91 = *(v44 + 48);
      v92 = *&v186[*(v44 + 64)];

      v88(v89, v89 + v91, v92, v86, 0);
      outlined consume of (@escaping @callee_guaranteed () -> ())?(v88, v90);
    }

    result = outlined destroy of CallControlsService?(v89, &_s15ConversationKit0A0_p06activeA0_AA11ParticipantV11participantSo20TUConversationNoticeC6noticetMd, &_s15ConversationKit0A0_p06activeA0_AA11ParticipantV11participantSo20TUConversationNoticeC6noticetMR);
  }

  v93 = v189;
  if (v51)
  {
    return result;
  }

  v94 = &v47[OBJC_IVAR____TtC15ConversationKit22ConversationController_latestRemoteAttributes];
  v95 = v47[OBJC_IVAR____TtC15ConversationKit22ConversationController_latestRemoteAttributes + 96];
  memcpy(v215, v216, sizeof(v215));
  v214 = 0;
  if ((v95 & 1) == 0)
  {
    memcpy(v224, v94, sizeof(v224));
    memcpy(__dst, v216, 0x60uLL);
    result = static Participant.ScreenShareAttributes.== infix(_:_:)(v224, __dst);
    if (result)
    {
      return result;
    }
  }

  if (v47[OBJC_IVAR____TtC15ConversationKit22ConversationController_didReceiveLatestRemoteAttributes])
  {
    if (v94[96])
    {
      v96 = 1;
    }

    else
    {
      v122 = *(v94 + 9);
      v123 = *(v94 + 10);
      v124 = *(v94 + 11);
      v125 = *(v94 + 40);
      v221 = *(v94 + 24);
      v222 = v125;
      v223 = *(v94 + 56);
      v218 = *&v217[3];
      v219 = *&v217[5];
      v220 = *&v217[7];
      v126 = static CGAffineTransform.== infix(_:_:)();
      v96 = 1;
      if ((v126 & 1) != 0 && v122 == v217[9] && v123 == v217[10])
      {
        v96 = v124 != v217[11];
      }
    }
  }

  else
  {
    v96 = 1;
    v47[OBJC_IVAR____TtC15ConversationKit22ConversationController_didReceiveLatestRemoteAttributes] = 1;
  }

  LODWORD(v184) = v96;
  memcpy(v94, v216, 0x60uLL);
  v94[96] = 0;
  ConversationController.lookupActiveConversation()();
  if (!*(&v195[1] + 1))
  {
    outlined destroy of CallControlsService?(v195, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
LABEL_46:
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    v120 = static OS_os_log.conversationKit;
    v121 = static os_log_type_t.error.getter();
    return os_log(_:dso:log:type:_:)("Unable to lookup active conversation in callCenter(_:receivedUpdatedRemoteAttributes:isLocallySharing:)", 103, 2, &dword_1BBC58000, v120, v121, MEMORY[0x1E69E7CC0]);
  }

  outlined init with take of TapInteractionHandler(v195, v211);
  v97 = v212;
  v98 = v213;
  __swift_project_boxed_opaque_existential_1(v211, v212);
  if ((*(v98 + 56))(v97, v98) != 3)
  {
    __swift_destroy_boxed_opaque_existential_1(v211);
    goto LABEL_46;
  }

  v99 = OBJC_IVAR____TtC15ConversationKit22ConversationController_remoteParticipants;
  swift_beginAccess();
  v190 = *&v47[v99];
  v187 = *(v190 + 16);
  if (!v187)
  {
LABEL_40:
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    v118 = static OS_os_log.conversationKit;
    v119 = static os_log_type_t.error.getter();
    os_log(_:dso:log:type:_:)("Unable to find participant sharing screen", 41, 2, &dword_1BBC58000, v118, v119, MEMORY[0x1E69E7CC0]);
    return __swift_destroy_boxed_opaque_existential_1(v211);
  }

  v100 = v183;
  v181 = (*(v183 + 80) + 32) & ~*(v183 + 80);
  v182 = v99;
  v101 = v190 + v181;

  v4 = 0;
  v102 = v187;
  v186 = v101;
  while (1)
  {
    if (v4 >= *(v190 + 16))
    {
      __break(1u);
      goto LABEL_67;
    }

    v103 = *(v100 + 72) * v4;
    _s15ConversationKit11ParticipantVWOcTm_17(v101 + v103, v50);
    _s15ConversationKit11ParticipantVWOcTm_17(v50, v93);
    if (swift_getEnumCaseMultiPayload() != 4)
    {
      _s15ConversationKit11ParticipantVWOhTm_18(v50, type metadata accessor for Participant);
      _s15ConversationKit11ParticipantVWOhTm_18(v93, type metadata accessor for Participant.State);
      memset(v208, 0, sizeof(v208));
      v209 = 1;
      bzero(&v210, 0xB1uLL);
      goto LABEL_30;
    }

    v185 = v103;
    v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd, &_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMR);
    v105 = *(v104 + 48);
    v106 = (v93 + *(v104 + 64));
    v107 = v106[1];
    v206[0] = *v106;
    v206[1] = v107;
    v108 = v106[2];
    v206[3] = v106[3];
    v206[2] = v108;
    outlined destroy of CallControlsService?(v206, &_s15ConversationKit11ParticipantV14CopresenceInfoVSgMd, &_s15ConversationKit11ParticipantV14CopresenceInfoVSgMR);
    memcpy(v207, (v93 + v105), sizeof(v207));
    v109 = type metadata accessor for Date();
    v110 = *(*(v109 - 8) + 8);
    v110(v93, v109);
    outlined init with copy of IDView<AvatarStackView, [UUID]>(&v207[12], v208, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMR);
    outlined destroy of Participant.MediaInfo(v207);
    if (v209 != 1)
    {
      break;
    }

    v50 = v192;
    _s15ConversationKit11ParticipantVWOhTm_18(v192, type metadata accessor for Participant);
    v100 = v183;
    v101 = v186;
    v102 = v187;
LABEL_30:
    outlined destroy of CallControlsService?(v208, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMR);
LABEL_38:
    if (v102 == ++v4)
    {

      goto LABEL_40;
    }
  }

  outlined destroy of CallControlsService?(v208, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMR);
  v111 = v192;
  v112 = v177;
  _s15ConversationKit11ParticipantVWOcTm_17(v192, v177);
  _s15ConversationKit11ParticipantVWOhTm_18(v111, type metadata accessor for Participant);
  if (swift_getEnumCaseMultiPayload() != 4)
  {
    _s15ConversationKit11ParticipantVWOhTm_18(v112, type metadata accessor for Participant.State);
    memset(v204, 0, 24);
    v204[3] = 1;
    bzero(&v204[4], 0xB1uLL);
    v93 = v189;
    v50 = v192;
    v101 = v186;
    v102 = v187;
LABEL_35:
    outlined destroy of CallControlsService?(v204, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMR);
    goto LABEL_37;
  }

  v113 = *(v104 + 48);
  v114 = (v112 + *(v104 + 64));
  v115 = v114[1];
  v202[0] = *v114;
  v202[1] = v115;
  v116 = v114[3];
  v202[2] = v114[2];
  v202[3] = v116;
  outlined destroy of CallControlsService?(v202, &_s15ConversationKit11ParticipantV14CopresenceInfoVSgMd, &_s15ConversationKit11ParticipantV14CopresenceInfoVSgMR);
  memcpy(v203, (v112 + v113), sizeof(v203));
  v110(v112, v109);
  outlined init with copy of IDView<AvatarStackView, [UUID]>(&v203[96], v204, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMR);
  outlined destroy of Participant.MediaInfo(v203);
  v102 = v187;
  if (v204[3] == 1)
  {
    v93 = v189;
    v50 = v192;
    v101 = v186;
    goto LABEL_35;
  }

  memcpy(v205, v204, 0xD1uLL);
  v117 = v205[40];
  outlined destroy of Participant.ScreenInfo(v205);
  v93 = v189;
  v50 = v192;
  v101 = v186;
  if ((v117 & 1) == 0)
  {
LABEL_37:
    v100 = v183;
    goto LABEL_38;
  }

  v128 = *&v188[v182];
  if (v4 >= *(v128 + 16))
  {
    __break(1u);
LABEL_89:
    swift_once();
LABEL_60:
    v129 = static OS_os_log.conversationKit;
    v130 = static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v131 = swift_allocObject();
    *(v131 + 16) = xmmword_1BC4BA940;
    v132 = v173;
    v133 = v175;
    _s15ConversationKit11ParticipantVWOcTm_17(v173, v175);
    __swift_storeEnumTagSinglePayload(v133, 0, 1, v176);
    specialized >> prefix<A>(_:)();
    v135 = v134;
    v137 = v136;
    outlined destroy of CallControlsService?(v133, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
    *(v131 + 56) = MEMORY[0x1E69E6158];
    *(v131 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v131 + 32) = v135;
    *(v131 + 40) = v137;
    os_log(_:dso:log:type:_:)("Unable to determine A/V info for participant whose remote shared screen attributes did change: %@", 97, 2, &dword_1BBC58000, v129, v130, v131);
LABEL_65:

    v146 = v132;
    goto LABEL_86;
  }

  _s15ConversationKit11ParticipantVWOcTm_17(v128 + v181 + v185, v173);
  if (Participant.avInfo.getter() == 2)
  {
    if (one-time initialization token for conversationKit == -1)
    {
      goto LABEL_60;
    }

    goto LABEL_89;
  }

  Participant.screenInfo.getter();
  if (*(&v195[1] + 1) == 1)
  {
    outlined destroy of CallControlsService?(v195, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMR);
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    v138 = static OS_os_log.conversationKit;
    v139 = static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v140 = swift_allocObject();
    *(v140 + 16) = xmmword_1BC4BA940;
    v132 = v173;
    v141 = v175;
    _s15ConversationKit11ParticipantVWOcTm_17(v173, v175);
    __swift_storeEnumTagSinglePayload(v141, 0, 1, v176);
    specialized >> prefix<A>(_:)();
    v143 = v142;
    v145 = v144;
    outlined destroy of CallControlsService?(v141, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
    *(v140 + 56) = MEMORY[0x1E69E6158];
    *(v140 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v140 + 32) = v143;
    *(v140 + 40) = v145;
    os_log(_:dso:log:type:_:)("Not updating remote screen attributes, participant screen info is nil: %@", 73, 2, &dword_1BBC58000, v138, v139, v140);
    goto LABEL_65;
  }

LABEL_67:
  v32 = v195;
  memcpy(v200, v195, sizeof(v200));
  memcpy(v201, v215, 0x60uLL);
  v201[96] = v214;
  outlined init with copy of Participant.ScreenInfo(v200, v199);
  Participant.screenInfo.getter();
  v43 = &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd;
  v10 = &_s15ConversationKit11ParticipantV10ScreenInfoVSgMR;
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v199, v195, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMR);
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v198, &v196, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMR);
  if (*(&v195[1] + 1) == 1)
  {
    outlined destroy of CallControlsService?(v198, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMR);
    outlined destroy of CallControlsService?(v199, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMR);
    if (v197 == 1)
    {
      outlined destroy of CallControlsService?(v195, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMR);
      v147 = 1;
      goto LABEL_75;
    }

LABEL_73:
    outlined destroy of CallControlsService?(v195, &_s15ConversationKit11ParticipantV10ScreenInfoVSg_AFtMd, &_s15ConversationKit11ParticipantV10ScreenInfoVSg_AFtMR);
    v147 = 0;
    goto LABEL_75;
  }

LABEL_71:
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v195, v194, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMR);
  if (v197 == 1)
  {
    outlined destroy of CallControlsService?(v198, v43, v10);
    outlined destroy of CallControlsService?(v199, v43, v10);
    outlined destroy of Participant.ScreenInfo(v194);
    goto LABEL_73;
  }

  memcpy(v193, v32 + 216, 0xD1uLL);
  v147 = static Participant.ScreenInfo.== infix(_:_:)();
  outlined destroy of Participant.ScreenInfo(v193);
  outlined destroy of CallControlsService?(v198, v43, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMR);
  outlined destroy of CallControlsService?(v199, v43, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMR);
  outlined destroy of Participant.ScreenInfo(v194);
  outlined destroy of CallControlsService?(v195, v43, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMR);
LABEL_75:
  Participant.videoInfo.getter();
  outlined init with copy of Participant.ScreenInfo(v200, v195);
  v148 = Participant.captionInfo.getter();
  Participant.copresenceInfo.getter(v198);
  v149 = v172;
  Participant.asJoined(avInfo:videoInfo:screenInfo:captionInfo:copresenceInfo:)();
  outlined destroy of CallControlsService?(v198, &_s15ConversationKit11ParticipantV14CopresenceInfoVSgMd, &_s15ConversationKit11ParticipantV14CopresenceInfoVSgMR);
  outlined destroy of CallControlsService?(v199, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd, &_s15ConversationKit11ParticipantV9VideoInfoVSgMR);
  outlined consume of Participant.CaptionInfo?(v148);
  outlined destroy of CallControlsService?(v195, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMR);
  v150 = *&v188[v182];

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    specialized _ArrayBuffer._consumeAndCreateNew()();
    v150 = v170;
  }

  if (v4 >= *(v150 + 16))
  {
    __break(1u);
  }

  else
  {
    LODWORD(v192) = v147;
    outlined assign with copy of Participant.State(v149, v150 + v181 + v185);
    ConversationController.remoteParticipants.setter(v150, &OBJC_IVAR____TtC15ConversationKit22ConversationController_remoteParticipants, v151);
    if (one-time initialization token for conversationKit == -1)
    {
      goto LABEL_79;
    }
  }

  swift_once();
LABEL_79:
  v152 = static OS_os_log.conversationKit;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v153 = swift_allocObject();
  *(v153 + 16) = xmmword_1BC4BAA20;
  outlined init with copy of Participant.ScreenInfo(v200, v195);
  v154 = specialized >> prefix<A>(_:)(v195);
  v156 = v155;
  outlined destroy of CallControlsService?(v195, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMR);
  v157 = MEMORY[0x1E69E6158];
  *(v153 + 56) = MEMORY[0x1E69E6158];
  v158 = lazy protocol witness table accessor for type String and conformance String();
  *(v153 + 64) = v158;
  *(v153 + 32) = v154;
  *(v153 + 40) = v156;
  v159 = v175;
  _s15ConversationKit11ParticipantVWOcTm_17(v149, v175);
  __swift_storeEnumTagSinglePayload(v159, 0, 1, v176);
  specialized >> prefix<A>(_:)();
  v161 = v160;
  v163 = v162;
  outlined destroy of CallControlsService?(v159, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  *(v153 + 96) = v157;
  *(v153 + 104) = v158;
  *(v153 + 72) = v161;
  *(v153 + 80) = v163;
  v164 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Updated remote participant's screen attributes to %@. %@", 56, 2, &dword_1BBC58000, v152, v164, v153);

  if (v192)
  {
    v165 = v149;
LABEL_85:
    _s15ConversationKit11ParticipantVWOhTm_18(v165, type metadata accessor for Participant);
    outlined destroy of Participant.ScreenInfo(v200);
    v146 = v173;
LABEL_86:
    _s15ConversationKit11ParticipantVWOhTm_18(v146, type metadata accessor for Participant);
  }

  else
  {
    if (!v184)
    {
      v165 = v172;
      goto LABEL_85;
    }

    v166 = &v188[OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateVisibleParticipantScreenInfo];
    swift_beginAccess();
    v167 = *v166;
    v168 = v172;
    if (*v166)
    {
      v169 = *(v166 + 1);
      swift_endAccess();

      v167(v168, v4);
      outlined consume of (@escaping @callee_guaranteed () -> ())?(v167, v169);
      v165 = v168;
      goto LABEL_85;
    }

    _s15ConversationKit11ParticipantVWOhTm_18(v172, type metadata accessor for Participant);
    outlined destroy of Participant.ScreenInfo(v200);
    _s15ConversationKit11ParticipantVWOhTm_18(v173, type metadata accessor for Participant);
    swift_endAccess();
  }

  return __swift_destroy_boxed_opaque_existential_1(v211);
}

uint64_t closure #1 in ConversationController.requestScreenSharingSession(for:)(id *a1, uint64_t a2)
{
  v3 = [*a1 identifier];
  v4 = a2 + *(type metadata accessor for Participant(0) + 28);
  if (*v4)
  {
    return (v3 == *(v4 + 8)) & ~*(v4 + 16);
  }

  else
  {
    return 0;
  }
}

void ConversationController.pauseLocalVideoAndClearState()()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit22ConversationController_pauseOnFirstFrame) = 0;
  v2 = v0 + OBJC_IVAR____TtC15ConversationKit22ConversationController_call;
  swift_beginAccess();
  v3 = *(v2 + 8);
  ObjectType = swift_getObjectType();
  v5 = *(v3 + 24);
  swift_unknownObjectRetain();
  v5(2, ObjectType, v3);
  swift_unknownObjectRelease();
  v6 = (v1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_callCenter);
  swift_beginAccess();
  v7 = v6[3];
  v8 = v6[4];
  v9 = __swift_project_boxed_opaque_existential_1(v6, v7);
  v10 = *(v7 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v15[-v12];
  (*(v10 + 16))(&v15[-v12], v11);
  v14 = (*(v8 + 80))(v7, v8);
  (*(v10 + 8))(v13, v7);
  [v14 pausePreview];
}

void ConversationController.callCenter(_:oneToOneModeChangedFor:)()
{
  OUTLINED_FUNCTION_48_2();
  v4 = v0;
  v6 = v5;
  type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_16(v8);
  v124 = type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_16(v10);
  v126 = type metadata accessor for DispatchTime();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_16(v13);
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_1_17();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_39_3();
  v18 = type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_174();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v3 = static OS_dispatch_queue.main.getter();
  (*(v20 + 104))(v3, *MEMORY[0x1E69E8020], v18);
  v22 = _dispatchPreconditionTest(_:)();
  v23 = OUTLINED_FUNCTION_281();
  v24(v23);
  if ((v22 & 1) == 0)
  {
    __break(1u);
LABEL_38:
    OUTLINED_FUNCTION_8_106(&one-time initialization token for conversationController);
    goto LABEL_10;
  }

  ConversationController.lookupActiveConversation()();
  OUTLINED_FUNCTION_91_0();
  if (v25)
  {
    outlined init with take of TapInteractionHandler(&v128, v135);
    __swift_project_boxed_opaque_existential_1(v135, v135[3]);
    OUTLINED_FUNCTION_71_13();
    v26 = OUTLINED_FUNCTION_258_0();
    v27(v26);
    __swift_project_boxed_opaque_existential_1(v6, v6[3]);
    OUTLINED_FUNCTION_125_1();
    v28 = OUTLINED_FUNCTION_258_0();
    v29(v28);
    OUTLINED_FUNCTION_48_0();
    v30 = static UUID.== infix(_:_:)();
    v31 = *(v15 + 8);
    v32 = OUTLINED_FUNCTION_1_5();
    v31(v32);
    (v31)(v2, v1);
    if ((v30 & 1) == 0)
    {
      goto LABEL_31;
    }

    v33 = v4[OBJC_IVAR____TtC15ConversationKit22ConversationController_isOneToOneModeEnabledByCallCenter];
    OUTLINED_FUNCTION_82_0(v6);
    v34 = OUTLINED_FUNCTION_2_14();
    if (v33 == (v35(v34) & 1))
    {
      goto LABEL_31;
    }

    if (one-time initialization token for conversationController != -1)
    {
      OUTLINED_FUNCTION_8_106(&one-time initialization token for conversationController);
    }

    v36 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v36, static Logger.conversationController);
    outlined init with copy of CallCenterProvider(v6, &v128);
    v37 = v4;
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.default.getter();

    v40 = &OBJC_IVAR____TtC15ConversationKit22ConversationController_callAnyRemoteSupportsRequestToScreenShareDidChange;
    if (os_log_type_enabled(v38, v39))
    {
      v41 = OUTLINED_FUNCTION_30_1();
      *&v134[0] = OUTLINED_FUNCTION_29_7();
      *v41 = 136315394;
      LOBYTE(v133[0]) = v37[OBJC_IVAR____TtC15ConversationKit22ConversationController_mode];
      v42 = String.init<A>(reflecting:)();
      v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v43, v134);

      *(v41 + 4) = v44;
      *(v41 + 12) = 2080;
      __swift_project_boxed_opaque_existential_1(&v128, v130);
      v45 = OUTLINED_FUNCTION_179_0();
      LOBYTE(v133[0]) = v46(v45) & 1;
      String.init<A>(reflecting:)();
      __swift_destroy_boxed_opaque_existential_1(&v128);
      v47 = OUTLINED_FUNCTION_325_1();
      v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v48, v49);

      *(v41 + 14) = v40;
      _os_log_impl(&dword_1BBC58000, v38, v39, "[%s] Received CallCenter callback that one-to-one mode changed to %s", v41, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_2_2();
      OUTLINED_FUNCTION_26();
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(&v128);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
    swift_allocBox();
    OUTLINED_FUNCTION_305();
    type metadata accessor for Participant(0);
    OUTLINED_FUNCTION_10_0();
    __swift_storeEnumTagSinglePayload(v57, v58, v59, v60);
    OUTLINED_FUNCTION_20();
    v61 = swift_allocObject();
    *(v61 + 16) = 0;
    OUTLINED_FUNCTION_37_0();
    v62 = swift_allocObject();
    v62[2] = v38;
    v62[3] = v37;
    v62[4] = v61;
    v63 = v37;
    OUTLINED_FUNCTION_28_0();
    swift_retain_n();
    swift_retain_n();
    v64 = v40;
    v65 = OUTLINED_FUNCTION_246_0();
    closure #1 in ConversationController.callCenter(_:oneToOneModeChangedFor:)(v65, v66, v61);
    ConversationController.updateShouldShowLastFrameDuringUPlusOneHandoff()();
    if (*(v64 + OBJC_IVAR____TtC15ConversationKit22ConversationController_shouldShowLastFrameDuringUPlusOneHandoff) == 1)
    {
      v67 = v6[4];
      v68 = OUTLINED_FUNCTION_11_36();
      __swift_project_boxed_opaque_existential_1(v68, v69);
      v70 = OUTLINED_FUNCTION_246();
      *(v64 + OBJC_IVAR____TtC15ConversationKit22ConversationController_waitForModeSwitchDuringUPlusOneHandoff) = (v71(v70, v67) & 1) == 0;
    }

    outlined init with copy of CallCenterProvider(v6, v134);
    outlined init with copy of CallCenterProvider(v134, v133);
    v72 = swift_allocObject();
    v72[2] = v64;
    outlined init with take of TapInteractionHandler(v134, (v72 + 3));
    v72[8] = partial apply for closure #1 in ConversationController.callCenter(_:oneToOneModeChangedFor:);
    v72[9] = v62;
    v72[10] = v38;
    v72[11] = v61;
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    v73 = *(v61 + 16);
    if (v73)
    {
      v74 = v64;

      v75 = v73;
      v76 = [v75 remoteVideoAttributes];
      if (v76)
      {
        v77 = v76;
        v73 = &selRef_isRecordingAllowed;
        [v76 ratio];
        v79 = v78;
        [v77 ratio];
        if (v79 == v80)
        {
          v117 = v74;
          v118 = v75;
          v81 = v6[4];
          v82 = OUTLINED_FUNCTION_77_1();
          __swift_project_boxed_opaque_existential_1(v82, v83);
          v84 = OUTLINED_FUNCTION_6_4();
          if (v85(v84, v81))
          {
            if (one-time initialization token for shared != -1)
            {
              OUTLINED_FUNCTION_0_9(&one-time initialization token for shared);
            }

            v73 = static Defaults.shared;
            OUTLINED_FUNCTION_0_1();
            if ((*(v86 + 632))())
            {
              __swift_destroy_boxed_opaque_existential_1(v133);
              if (*(v117 + OBJC_IVAR____TtC15ConversationKit22ConversationController_isOneToOneCallCenterUpdateWaitingForNonSquareVideo))
              {

LABEL_30:

LABEL_31:
                __swift_destroy_boxed_opaque_existential_1(v135);
                goto LABEL_32;
              }

              v116 = v77;
              outlined init with copy of CallCenterProvider(v6, &v128);
              v89 = v117;
              v90 = Logger.logObject.getter();
              v91 = static os_log_type_t.default.getter();

              if (os_log_type_enabled(v90, v91))
              {
                v92 = swift_slowAlloc();
                v119 = OUTLINED_FUNCTION_23();
                OUTLINED_FUNCTION_39_22(v119);
                *v92 = 136315394;
                v93 = String.init<A>(reflecting:)();
                v95 = v89;
                v96 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v93, v94, &v127);

                *(v92 + 4) = v96;
                *(v92 + 12) = 1024;
                v97 = v130;
                v98 = v131;
                __swift_project_boxed_opaque_existential_1(&v128, v130);
                v99 = v97;
                v89 = v95;
                v100 = (*(v98 + 25))(v99, v98) & 1;
                __swift_destroy_boxed_opaque_existential_1(&v128);
                *(v92 + 14) = v100;
                _os_log_impl(&dword_1BBC58000, v90, v91, "[%s] One-to-one mode changed to %{BOOL}d, but we still havent received non-square remote video frames, delaying updating UI", v92, 0x12u);
                __swift_destroy_boxed_opaque_existential_1(v119);
                OUTLINED_FUNCTION_3_83();
                OUTLINED_FUNCTION_282_2();
              }

              else
              {
                __swift_destroy_boxed_opaque_existential_1(&v128);
              }

              ConversationController.isOneToOneCallCenterUpdateWaitingForNonSquareVideo.setter(1);
              v120 = static OS_dispatch_queue.main.getter();
              static DispatchTime.now()();
              + infix(_:_:)(5.0);
              OUTLINED_FUNCTION_23_26();
              v121 = v101;
              v101(v122, v126);
              OUTLINED_FUNCTION_20();
              v102 = swift_allocObject();
              OUTLINED_FUNCTION_278(v102);
              swift_unknownObjectWeakInit();
              OUTLINED_FUNCTION_37_0();
              v103 = swift_allocObject();
              v103[2] = v122;
              v103[3] = partial apply for closure #2 in ConversationController.callCenter(_:oneToOneModeChangedFor:);
              v103[4] = v72;
              v131 = partial apply for closure #3 in ConversationController.callCenter(_:oneToOneModeChangedFor:);
              v132 = v103;
              *&v128 = MEMORY[0x1E69E9820];
              *(&v128 + 1) = 1107296256;
              OUTLINED_FUNCTION_6_5();
              v129 = v104;
              v130 = &block_descriptor_154;
              v105 = _Block_copy(&v128);

              static DispatchQoS.unspecified.getter();
              *&v128 = MEMORY[0x1E69E7CC0];
              OUTLINED_FUNCTION_3_164();
              lazy protocol witness table accessor for type ConversationController and conformance ConversationController(v106, v107);
              v108 = OUTLINED_FUNCTION_243();
              __swift_instantiateConcreteTypeFromMangledNameV2(v108, v109);
              OUTLINED_FUNCTION_9_8();
              lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(v110, v111, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
              dispatch thunk of SetAlgebra.init<A>(_:)();
              v112 = OUTLINED_FUNCTION_157();
              MEMORY[0x1BFB21510](v112);

              _Block_release(v105);

              OUTLINED_FUNCTION_23_26();
              v113 = OUTLINED_FUNCTION_256_3();
              v114(v113);
              OUTLINED_FUNCTION_23_26();
              v115(v123, v124);
              v121(v125, v126);
LABEL_29:

              goto LABEL_30;
            }
          }
        }
      }

      else
      {
      }
    }

    else
    {
      v87 = v64;
    }

    v88 = v64;
    OUTLINED_FUNCTION_182();

    specialized closure #2 in ConversationController.callCenter(_:oneToOneModeChangedFor:)(v73, v133, v38, v61, v38, v73, v61);

    __swift_destroy_boxed_opaque_existential_1(v133);
    goto LABEL_29;
  }

  outlined destroy of CallControlsService?(&v128, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
  if (one-time initialization token for conversationController != -1)
  {
    goto LABEL_38;
  }

LABEL_10:
  v50 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v50, static Logger.conversationController);
  v51 = v4;
  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.error.getter();

  if (OUTLINED_FUNCTION_64_14())
  {
    v54 = OUTLINED_FUNCTION_42();
    v55 = swift_slowAlloc();
    *v54 = 138412290;
    *(v54 + 4) = v51;
    *v55 = v51;
    v56 = v51;
    _os_log_impl(&dword_1BBC58000, v52, v53, "Unable to lookup active conversation in CallCenterProviderDelegate oneToOneModeChangedFor: callback - %@", v54, 0xCu);
    outlined destroy of CallControlsService?(v55, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_4_4();
    OUTLINED_FUNCTION_18();
  }

LABEL_32:
  OUTLINED_FUNCTION_20_6();
}

uint64_t TUConversationState.shouldHaveAudioFrequencyController.getter(unint64_t a1)
{
  if (a1 < 5)
  {
    return (8u >> a1) & 1;
  }

  _StringGuts.grow(_:)(72);
  MEMORY[0x1BFB20B10](0xD000000000000046, 0x80000001BC521D50);
  v2 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1BFB20B10](v2);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void ConversationController.removeParticipants(notIn:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v161 = &v143 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v166 = &v143 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v155 = &v143 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v159 = &v143 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v164 = &v143 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v148 = &v143 - v15;
  v172 = type metadata accessor for Participant(0);
  v169 = *(v172 - 8);
  MEMORY[0x1EEE9AC00](v172);
  v156 = &v143 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v157 = &v143 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v149 = &v143 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v143 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v152 = &v143 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v151 = &v143 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v150 = &v143 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v158 = &v143 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v143 - v33;
  v35 = type metadata accessor for DispatchPredicate();
  v36 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v38 = (&v143 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v38 = static OS_dispatch_queue.main.getter();
  (*(v36 + 104))(v38, *MEMORY[0x1E69E8020], v35);
  v39 = _dispatchPreconditionTest(_:)();
  (*(v36 + 8))(v38, v35);
  if ((v39 & 1) == 0)
  {
    goto LABEL_64;
  }

  v40 = a1[3];
  v41 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v40);
  v42 = default argument 0 of Conversation.allHandles(excludeOtherInvitedHandles:)();
  Conversation.allHandles(excludeOtherInvitedHandles:)(v42 & 1, v40, v41);
  v44 = v43;
  v170 = OBJC_IVAR____TtC15ConversationKit22ConversationController_remoteParticipants;
  swift_beginAccess();
  v46 = 0;
  v167 = v44 & 0xC000000000000001;
  v47 = v44 & 0xFFFFFFFFFFFFFF8;
  if (v44 < 0)
  {
    v47 = v44;
  }

  v163 = v47;
  v173 = v44 + 56;
  v174 = v44;
  *&v45 = 136315138;
  v147 = v45;
  v160 = xmmword_1BC4BAA20;
  v154 = xmmword_1BC4BA940;
  v168 = v2;
  v48 = v172;
  v153 = v23;
  v162 = a1;
  while (1)
  {
    v49 = *(v2 + v170);
    if (v46 >= *(v49 + 16))
    {

      return;
    }

    if (v46 < 0)
    {
      break;
    }

    v50 = (*(v169 + 80) + 32) & ~*(v169 + 80);
    v51 = *(v169 + 72) * v46;
    _s15ConversationKit11ParticipantVWOcTm_17(v49 + v50 + v51, v34);
    v52 = *&v34[*(v48 + 28)];
    if (!v52)
    {
      ++v46;
      goto LABEL_52;
    }

    v53 = v52;
    ConversationController.activeParticipant(correspondingTo:in:)(v34, a1);
    v171 = v54;
    if (!v54)
    {
      v55 = 0;
      v56 = *&v34[*(v48 + 44)];
      v57 = 1 << *(v56 + 32);
      v58 = (v57 + 63) >> 6;
      v59 = 56;
      if (v58)
      {
        while (1)
        {
          v60 = *(v56 + v59);
          if (v60)
          {
            break;
          }

          v55 -= 64;
          --v58;
          v59 += 8;
          if (!v58)
          {
            goto LABEL_23;
          }
        }

        v61 = __clz(__rbit64(v60));
        if (v61 - v57 != v55)
        {
          v62 = v158;
          specialized Set.subscript.getter(v61 - v55);
          ConversationController.activeParticipant(correspondingTo:in:)(v62, a1);
          v165 = v63;
          if (v63)
          {
            if (one-time initialization token for conversationController != -1)
            {
              swift_once();
            }

            v64 = type metadata accessor for Logger();
            v171 = __swift_project_value_buffer(v64, static Logger.conversationController);
            v65 = Logger.logObject.getter();
            v66 = static os_log_type_t.default.getter();
            v67 = os_log_type_enabled(v65, v66);
            v68 = v150;
            if (v67)
            {
              v69 = swift_slowAlloc();
              *v69 = 0;
              _os_log_impl(&dword_1BBC58000, v65, v66, "Active participant left but associate is still in the call.", v69, 2u);
              MEMORY[0x1BFB23DF0](v69, -1, -1);
            }

            _s15ConversationKit11ParticipantVWOcTm_17(v34, v68);
            v70 = Logger.logObject.getter();
            v71 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v70, v71))
            {
              v72 = swift_slowAlloc();
              v145 = v72;
              v146 = swift_slowAlloc();
              v175 = v146;
              *v72 = v147;
              v73 = v68;
              v74 = v148;
              _s15ConversationKit11ParticipantVWOcTm_17(v73, v148);
              __swift_storeEnumTagSinglePayload(v74, 0, 1, v172);
              specialized >> prefix<A>(_:)();
              v144 = v75;
              v77 = v76;
              outlined destroy of CallControlsService?(v74, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
              _s15ConversationKit11ParticipantVWOhTm_18(v150, type metadata accessor for Participant);
              v78 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v144, v77, &v175);

              v79 = v145;
              *(v145 + 1) = v78;
              _os_log_impl(&dword_1BBC58000, v70, v71, "Replacing old participant %s with...", v79, 0xCu);
              v80 = v146;
              __swift_destroy_boxed_opaque_existential_1(v146);
              MEMORY[0x1BFB23DF0](v80, -1, -1);
              MEMORY[0x1BFB23DF0](v79, -1, -1);
            }

            else
            {

              _s15ConversationKit11ParticipantVWOhTm_18(v68, type metadata accessor for Participant);
            }

            v126 = v151;
            _s15ConversationKit11ParticipantVWOcTm_17(v158, v151);
            v127 = Logger.logObject.getter();
            v128 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v127, v128))
            {
              v129 = swift_slowAlloc();
              v146 = v129;
              v171 = swift_slowAlloc();
              v175 = v171;
              *v129 = v147;
              v130 = v126;
              v131 = v148;
              _s15ConversationKit11ParticipantVWOcTm_17(v130, v148);
              __swift_storeEnumTagSinglePayload(v131, 0, 1, v172);
              specialized >> prefix<A>(_:)();
              v145 = v132;
              v134 = v133;
              outlined destroy of CallControlsService?(v131, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
              _s15ConversationKit11ParticipantVWOhTm_18(v151, type metadata accessor for Participant);
              v135 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v145, v134, &v175);

              v136 = v146;
              *(v146 + 4) = v135;
              _os_log_impl(&dword_1BBC58000, v127, v128, "... associated participant %s", v136, 0xCu);
              v137 = v171;
              __swift_destroy_boxed_opaque_existential_1(v171);
              MEMORY[0x1BFB23DF0](v137, -1, -1);
              MEMORY[0x1BFB23DF0](v136, -1, -1);
            }

            else
            {

              _s15ConversationKit11ParticipantVWOhTm_18(v126, type metadata accessor for Participant);
            }

            v2 = v168;
            v23 = v153;
            ConversationController.updateActiveParticipant(_:with:in:)(v165, v158, a1, v152);
            v138 = *(v2 + v170);

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              specialized _ArrayBuffer._consumeAndCreateNew()();
              v138 = v142;
            }

            if (v46 >= *(v138 + 16))
            {
              goto LABEL_63;
            }

            v139 = v138 + v50 + v51;
            v140 = v152;
            outlined assign with copy of Participant.State(v152, v139);
            ConversationController.remoteParticipants.setter(v138, &OBJC_IVAR____TtC15ConversationKit22ConversationController_remoteParticipants, v141);
            ConversationController.postParticipantStateChangeCallbacks(for:updatedFrom:)(v140, v34);

            _s15ConversationKit11ParticipantVWOhTm_18(v140, type metadata accessor for Participant);
            _s15ConversationKit11ParticipantVWOhTm_18(v158, type metadata accessor for Participant);
            ++v46;
            goto LABEL_51;
          }

          _s15ConversationKit11ParticipantVWOhTm_18(v62, type metadata accessor for Participant);
        }
      }
    }

LABEL_23:
    v81 = a1[3];
    v82 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v81);
    v83 = (*(v82 + 176))(v81, v82);
    if (v83)
    {
      v84 = v83;
      v85 = v164;
      ConversationController.participant(from:)(v83, v164);
      v86 = v172;
      if (__swift_getEnumTagSinglePayload(v85, 1, v172) == 1)
      {

        outlined destroy of CallControlsService?(v85, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
      }

      else
      {
        _s15ConversationKit11ParticipantVWObTm_8(v85, v23);
        v87 = ConversationController.indexOfRemoteParticipant(with:)(&v23[*(v86 + 20)]);
        if (v88)
        {
          _s15ConversationKit11ParticipantVWOhTm_18(v23, type metadata accessor for Participant);
        }

        else
        {
          ConversationController.removeParticipant(_:at:)(v23, v87);
          if (one-time initialization token for conversationKit != -1)
          {
            swift_once();
          }

          v165 = static OS_os_log.conversationKit;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
          v89 = swift_allocObject();
          *(v89 + 16) = v154;
          v90 = v159;
          _s15ConversationKit11ParticipantVWOcTm_17(v23, v159);
          v91 = v172;
          __swift_storeEnumTagSinglePayload(v90, 0, 1, v172);
          v92 = v90;
          v93 = v155;
          outlined init with copy of IDView<AvatarStackView, [UUID]>(v92, v155, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
          if (__swift_getEnumTagSinglePayload(v93, 1, v91) == 1)
          {
            outlined destroy of CallControlsService?(v93, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
            v94 = 0xE300000000000000;
            v95 = 7104878;
          }

          else
          {
            v96 = v149;
            _s15ConversationKit11ParticipantVWObTm_8(v93, v149);
            _s15ConversationKit11ParticipantVWOcTm_17(v96, v157);
            v95 = String.init<A>(reflecting:)();
            v94 = v97;
            v98 = v96;
            v23 = v153;
            _s15ConversationKit11ParticipantVWOhTm_18(v98, type metadata accessor for Participant);
          }

          outlined destroy of CallControlsService?(v159, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
          *(v89 + 56) = MEMORY[0x1E69E6158];
          *(v89 + 64) = lazy protocol witness table accessor for type String and conformance String();
          *(v89 + 32) = v95;
          *(v89 + 40) = v94;
          v99 = static os_log_type_t.default.getter();
          os_log(_:dso:log:type:_:)("Remove local participant association from showing: %@", 53, 2, &dword_1BBC58000, v165, v99, v89);

          _s15ConversationKit11ParticipantVWOhTm_18(v23, type metadata accessor for Participant);
          a1 = v162;
        }
      }
    }

    if (v167)
    {
      v100 = v53;
      v101 = __CocoaSet.contains(_:)();

      if (v101)
      {
        goto LABEL_44;
      }
    }

    else if (v174[2])
    {
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00);
      v102 = v174;
      v103 = NSObject._rawHashValue(seed:)(v174[5]);
      v104 = ~(-1 << *(v102 + 32));
      while (1)
      {
        v105 = v103 & v104;
        if (((*(v173 + (((v103 & v104) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v103 & v104)) & 1) == 0)
        {
          break;
        }

        v106 = *(v174[6] + 8 * v105);
        v107 = static NSObject.== infix(_:_:)();

        v103 = v105 + 1;
        if (v107)
        {
          goto LABEL_44;
        }
      }
    }

    v108 = a1[3];
    v109 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v108);
    v110 = (*(v109 + 168))(v108, v109);
    if (!v110 || (v111 = v110, v112 = [v110 handle], v111, LODWORD(v111) = objc_msgSend(v112, sel_isEqualToHandle_, v53), v112, !v111))
    {
      if (one-time initialization token for conversationKit != -1)
      {
        swift_once();
      }

      v165 = static OS_os_log.conversationKit;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v113 = swift_allocObject();
      *(v113 + 16) = v160;
      v114 = v166;
      _s15ConversationKit11ParticipantVWOcTm_17(v34, v166);
      v115 = v172;
      __swift_storeEnumTagSinglePayload(v114, 0, 1, v172);
      v116 = v114;
      v117 = v161;
      outlined init with copy of IDView<AvatarStackView, [UUID]>(v116, v161, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
      if (__swift_getEnumTagSinglePayload(v117, 1, v115) == 1)
      {
        outlined destroy of CallControlsService?(v117, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
        v118 = 0xE300000000000000;
        v119 = 7104878;
      }

      else
      {
        v120 = v156;
        _s15ConversationKit11ParticipantVWObTm_8(v117, v156);
        _s15ConversationKit11ParticipantVWOcTm_17(v120, v157);
        v119 = String.init<A>(reflecting:)();
        v118 = v121;
        _s15ConversationKit11ParticipantVWOhTm_18(v120, type metadata accessor for Participant);
      }

      outlined destroy of CallControlsService?(v166, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
      *(v113 + 56) = MEMORY[0x1E69E6158];
      *(v113 + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v113 + 32) = v119;
      *(v113 + 40) = v118;
      a1 = v162;
      v123 = v162[3];
      v122 = v162[4];
      __swift_project_boxed_opaque_existential_1(v162, v123);
      v124 = (*(v122 + 88))(v123, v122);
      *(v113 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sShySo20TUConversationMemberCGMd, &_sShySo20TUConversationMemberCGMR);
      *(v113 + 104) = lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(&lazy protocol witness table cache variable for type Set<TUConversationMember> and conformance Set<A>, &_sShySo20TUConversationMemberCGMd, &_sShySo20TUConversationMemberCGMR);
      *(v113 + 72) = v124;
      v125 = static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)("Removing participant %@ not in %@", 33, 2, &dword_1BBC58000, v165, v125, v113);

      v2 = v168;
      ConversationController.removeParticipant(_:at:)(v34, v46);

      goto LABEL_51;
    }

LABEL_44:

    ++v46;
    v2 = v168;
LABEL_51:
    v48 = v172;
LABEL_52:
    _s15ConversationKit11ParticipantVWOhTm_18(v34, type metadata accessor for Participant);
  }

  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
}

uint64_t ConversationController.createNewParticipants(with:)(void *a1)
{
  v457[5] = *MEMORY[0x1E69E9840];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v399 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v404 = &v399 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v399 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v416 = &v399 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v415 = &v399 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v414 = &v399 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v399 - v17;
  v19 = type metadata accessor for Participant(0);
  v447 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v409 = &v399 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v400 = &v399 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v403 = &v399 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v422 = &v399 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v413 = &v399 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v423 = &v399 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v412 = &v399 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v411 = &v399 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v408 = &v399 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v417 = &v399 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v427 = &v399 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v419 = &v399 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v446 = &v399 - v44;
  MEMORY[0x1EEE9AC00](v45);
  v434 = &v399 - v46;
  v47 = type metadata accessor for DispatchPredicate();
  v48 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v50 = &v399 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v50 = static OS_dispatch_queue.main.getter();
  (*(v48 + 104))(v50, *MEMORY[0x1E69E8020], v47);
  v51 = _dispatchPreconditionTest(_:)();
  (*(v48 + 8))(v50, v47);
  if ((v51 & 1) == 0)
  {
    goto LABEL_227;
  }

  v52 = a1[3];
  v53 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v52);
  v47 = (*(v53 + 88))(v52, v53);
  v450 = v47;
  v54 = a1[3];
  v55 = a1[4];
  v430 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v54);
  v56 = (*(v55 + 168))(v54, v55);
  if (v56)
  {
    specialized Set._Variant.insert(_:)(v457, v56, v57, v58, v59, v60, v61, v62, v399, v400, v401, v402, v403, v404, v405, *(&v405 + 1), v406, *(&v406 + 1), v407, v408, v409, v410);

    v47 = v450;
  }

  v401 = v4;
  v402 = v9;
  v445 = v19;
  v420 = v18;
  if ((v47 & 0xC000000000000001) == 0)
  {
    v78 = *(v47 + 32);
    v51 = ((1 << v78) + 63) >> 6;
    v50 = 8 * v51;
    if ((v78 & 0x3Fu) <= 0xD)
    {
      goto LABEL_23;
    }

    goto LABEL_229;
  }

  v63 = MEMORY[0x1E69E7CD0];
  v457[0] = MEMORY[0x1E69E7CD0];
  v47 = __CocoaSet.makeIterator()();
  v50 = &lazy cache variable for type metadata for TUConversationMember;
  v19 = 1;
  while (1)
  {
    while (1)
    {
      v64 = __CocoaSet.Iterator.next()();
      if (!v64)
      {

        v410 = 0;
        v19 = v445;
        goto LABEL_38;
      }

      v451 = v64;
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationMember, 0x1E69D8B80);
      swift_dynamicCast();
      v65 = [v452 isOtherInvitedHandle];
      v66 = v452;
      if ((v65 & 1) == 0)
      {
        break;
      }
    }

    v67 = v63[2];
    if (v63[3] <= v67)
    {
      specialized _NativeSet.resize(capacity:)(v67 + 1);
    }

    v63 = v457[0];
    v51 = v66;
    v68 = NSObject._rawHashValue(seed:)(*(v457[0] + 5));
    v69 = (v63 + 7);
    v70 = -1 << *(v63 + 32);
    v71 = v68 & ~v70;
    v72 = v71 >> 6;
    if (((-1 << v71) & ~v63[(v71 >> 6) + 7]) == 0)
    {
      break;
    }

    v73 = __clz(__rbit64((-1 << v71) & ~v63[(v71 >> 6) + 7])) | v71 & 0x7FFFFFFFFFFFFFC0;
LABEL_20:
    *&v69[(v73 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v73;
    *(v63[6] + 8 * v73) = v66;
    ++v63[2];
  }

  v74 = 0;
  v75 = (63 - v70) >> 6;
  while (++v72 != v75 || (v74 & 1) == 0)
  {
    v76 = v72 == v75;
    if (v72 == v75)
    {
      v72 = 0;
    }

    v74 |= v76;
    v77 = *&v69[8 * v72];
    if (v77 != -1)
    {
      v73 = __clz(__rbit64(~v77)) + (v72 << 6);
      goto LABEL_20;
    }
  }

LABEL_222:
  __break(1u);
  while (1)
  {
    __break(1u);
LABEL_224:
    __break(1u);
    while (1)
    {
      __break(1u);
LABEL_226:
      __break(1u);
LABEL_227:
      __break(1u);
LABEL_228:
      __break(1u);
LABEL_229:
      swift_bridgeObjectRetain_n();
      if (!swift_stdlib_isStackAllocationSafe())
      {
        break;
      }

      v56 = swift_bridgeObjectRelease_n();
LABEL_23:
      MEMORY[0x1EEE9AC00](v56);
      v50 = &v399 - ((v50 + 15) & 0x3FFFFFFFFFFFFFF0);
      specialized UnsafeMutablePointer.assign(repeating:count:)(0, v51, v50);
      v79 = 0;
      v80 = 0;
      v81 = 1 << *(v47 + 32);
      v82 = -1;
      if (v81 < 64)
      {
        v82 = ~(-1 << v81);
      }

      v83 = v82 & *(v47 + 56);
      v84 = (v81 + 63) >> 6;
      while (v83)
      {
        v85 = __clz(__rbit64(v83));
        v83 &= v83 - 1;
LABEL_33:
        v19 = v85 | (v80 << 6);
        if (([*(*(v47 + 48) + 8 * v19) isOtherInvitedHandle] & 1) == 0)
        {
          *(v50 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
          if (__OFADD__(v79++, 1))
          {
            __break(1u);
LABEL_37:
            specialized _NativeSet.extractSubset(using:count:)(v50, v51, v79, v47);
            v63 = v89;
            v410 = 0;
            goto LABEL_38;
          }
        }
      }

      v86 = v80;
      v19 = v445;
      while (1)
      {
        v80 = v86 + 1;
        if (__OFADD__(v86, 1))
        {
          break;
        }

        if (v80 >= v84)
        {
          goto LABEL_37;
        }

        v87 = *(v47 + 56 + 8 * v80);
        ++v86;
        if (v87)
        {
          v85 = __clz(__rbit64(v87));
          v83 = (v87 - 1) & v87;
          goto LABEL_33;
        }
      }
    }

    v397 = swift_slowAlloc();

    v398 = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s10_NativeSetVySo20TUConversationMemberCG_Tg506_ss10_gh28V6filteryAByxGSbxKXEKFADs13_ab11VKXEfU_So20iJ5C_TG5AJxSbs5Error_pRi_zRi0_zlyAIIsgndzo_Tf1nc_n(v397, v51, v47, closure #2 in ConversationController.createNewParticipants(with:), 0);
    v410 = 0;
    v63 = v398;
    swift_bridgeObjectRelease_n();
    MEMORY[0x1BFB23DF0](v397, -1, -1);
LABEL_38:
    v90 = v430[3];
    v91 = v430[4];
    v92 = __swift_project_boxed_opaque_existential_1(v430, v90);
    v93 = v91;
    v51 = v92;
    active = Conversation.displayableActiveParticipants.getter(v90, v93);
    v95 = active;
    if ((active & 0xC000000000000001) != 0)
    {
      __CocoaSet.makeIterator()();
      v51 = &lazy cache variable for type metadata for TUConversationParticipant;
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationParticipant, 0x1E69D8B90);
      lazy protocol witness table accessor for type TUConversationInvitationPreference and conformance NSObject(&lazy protocol witness table cache variable for type TUConversationParticipant and conformance NSObject, &lazy cache variable for type metadata for TUConversationParticipant, 0x1E69D8B90);
      Set.Iterator.init(_cocoa:)();
      v95 = v452;
      v96 = v453;
      v97 = v454;
      v47 = v455;
      v50 = v456;
    }

    else
    {
      v47 = 0;
      v98 = -1 << *(active + 32);
      v96 = active + 56;
      v99 = ~v98;
      v100 = -v98;
      v101 = v100 < 64 ? ~(-1 << v100) : -1;
      v50 = v101 & *(active + 56);
      v97 = v99;
    }

    v418 = v97;
    v102 = (v97 + 64) >> 6;
    v406 = xmmword_1BC4BAA20;
    v421 = xmmword_1BC4BA940;
    v405 = xmmword_1BC4BB980;
    v432 = v63;
    v424 = v102;
    v426 = v95;
    v425 = v96;
    if (v95 < 0)
    {
      break;
    }

LABEL_45:
    v103 = v47;
    v104 = v50;
    v105 = v47;
    if (v50)
    {
LABEL_49:
      v106 = __clz(__rbit64(v104));
      v428 = (v104 - 1) & v104;
      v107 = *(v95 + 48);
      v429 = v105;
      v108 = *(v107 + ((v105 << 9) | (8 * v106)));
      if (!v108)
      {
        goto LABEL_144;
      }

      goto LABEL_53;
    }

    while (1)
    {
      v105 = v103 + 1;
      if (__OFADD__(v103, 1))
      {
        break;
      }

      if (v105 >= v102)
      {
        goto LABEL_144;
      }

      v104 = *(v96 + 8 * v105);
      ++v103;
      if (v104)
      {
        goto LABEL_49;
      }
    }
  }

LABEL_51:
  v109 = __CocoaSet.Iterator.next()();
  if (v109)
  {
    v451 = v109;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationParticipant, 0x1E69D8B90);
    swift_dynamicCast();
    v108 = v457[0];
    v429 = v47;
    v428 = v50;
    if (v457[0])
    {
LABEL_53:
      v50 = &selRef_isRecordingAllowed;
      v110 = [v108 handle];
      v436 = TUNormalizedHandleForTUHandle();

      v111 = v108;
      v112 = [v111 handle];
      v443 = [v111 identifier];
      v113 = [v111 avcIdentifier];
      v441 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v442 = v114;
      v431 = v111;

      v115 = OBJC_IVAR____TtC15ConversationKit22ConversationController_remoteParticipants;
      v51 = v433;
      swift_beginAccess();
      v444 = *(v51 + v115);
      v440 = v444[2];
      v435 = v112;
      if (!v440)
      {
        goto LABEL_69;
      }

      v116 = v434;
      i = v434 + *(v19 + 28);
      v439 = v444 + ((*(v447 + 80) + 32) & ~*(v447 + 80));

      v47 = 0;
      while (1)
      {
        if (v47 >= v444[2])
        {
          __break(1u);
LABEL_221:
          __break(1u);
          goto LABEL_222;
        }

        _s15ConversationKit11ParticipantVWOcTm_17(&v439[*(v447 + 72) * v47], v116);
        v117 = *i;
        v118 = *(i + 8);
        v120 = *(i + 16);
        v119 = *(i + 24);
        v51 = *(i + 32);
        if (*i)
        {
          if (v112)
          {
            v437 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSObject, 0x1E69E58C0);
            v121 = v112;
            v122 = v112;
            v123 = v442;
            swift_bridgeObjectRetain_n();
            v50 = v121;
            v124 = v51;
            outlined copy of Participant.RemoteIdentifiers?(v117, v118, v120, v119, v51);
            v51 = static NSObject.== infix(_:_:)();

            outlined consume of Participant.RemoteIdentifiers?(v122, v443, 0, v441, v123);
            if (v51)
            {
              v116 = v434;
              _s15ConversationKit11ParticipantVWOhTm_18(v434, type metadata accessor for Participant);
              outlined consume of Participant.RemoteIdentifiers?(v117, v118, v120, v119, v124);
              v112 = v435;
              if ((v120 & 1) == 0 && v118 == v443)
              {

                goto LABEL_104;
              }
            }

            else
            {
              v116 = v434;
              _s15ConversationKit11ParticipantVWOhTm_18(v434, type metadata accessor for Participant);
              outlined consume of Participant.RemoteIdentifiers?(v117, v118, v120, v119, v124);
              v112 = v435;
            }

            goto LABEL_67;
          }

          v127 = v442;

          v128 = v119;
          v50 = v119;
          v125 = v51;
          outlined copy of Participant.RemoteIdentifiers?(v117, v118, v120, v128, v51);
          _s15ConversationKit11ParticipantVWOhTm_18(v116, type metadata accessor for Participant);
        }

        else
        {
          v50 = *(i + 24);
          v125 = *(i + 32);
          v126 = v112;
          v127 = v442;

          outlined copy of Participant.RemoteIdentifiers?(0, v118, v120, v50, v51);
          _s15ConversationKit11ParticipantVWOhTm_18(v116, type metadata accessor for Participant);
          if (!v112)
          {

            outlined consume of Participant.RemoteIdentifiers?(0, v118, v120, v50, v51);
LABEL_104:
            v47 = v429;
            v50 = v428;
            v19 = v445;
            goto LABEL_142;
          }
        }

        outlined consume of Participant.RemoteIdentifiers?(v117, v118, v120, v50, v125);
        outlined consume of Participant.RemoteIdentifiers?(v112, v443, 0, v441, v127);
LABEL_67:
        ++v47;
        v19 = v445;
        if (v440 == v47)
        {

          v51 = v433;
LABEL_69:
          v129 = *(v51 + OBJC_IVAR____TtC15ConversationKit22ConversationController_remoteParticipants);
          v47 = *(v129 + 16);
          if (v47)
          {
            v444 = ((*(v447 + 80) + 32) & ~*(v447 + 80));
            v130 = v444 + v129;

            v131 = 0;
            v132 = v431;
            while (1)
            {
              if (v131 >= *(v129 + 16))
              {
                goto LABEL_221;
              }

              v50 = *(v447 + 72) * v131;
              v51 = v446;
              _s15ConversationKit11ParticipantVWOcTm_17(&v130[v50], v446);
              v133 = v51 + *(v19 + 28);
              if (!*v133 || (*(v133 + 16) & 1) == 0)
              {
                goto LABEL_82;
              }

              v134 = *v133;
              v135 = TUNormalizedHandleForTUHandle();
              v136 = v135;
              if (!v436)
              {
                break;
              }

              if (!v135)
              {
                v136 = v134;
                goto LABEL_81;
              }

              type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00);
              v137 = v436;
              v51 = static NSObject.== infix(_:_:)();

              v19 = v445;
              _s15ConversationKit11ParticipantVWOhTm_18(v446, type metadata accessor for Participant);
              if (v51)
              {

                goto LABEL_115;
              }

LABEL_83:
              if (v47 == ++v131)
              {

                goto LABEL_86;
              }
            }

            if (v136)
            {
LABEL_81:

LABEL_82:
              _s15ConversationKit11ParticipantVWOhTm_18(v446, type metadata accessor for Participant);
              goto LABEL_83;
            }

            _s15ConversationKit11ParticipantVWOhTm_18(v446, type metadata accessor for Participant);
LABEL_115:
            v440 = OBJC_IVAR____TtC15ConversationKit22ConversationController_remoteParticipants;
            v184 = *(v433 + OBJC_IVAR____TtC15ConversationKit22ConversationController_remoteParticipants);
            specialized Array._checkSubscript(_:wasNativeTypeChecked:)();
            v185 = v444 + v50 + v184;
            v186 = v419;
            _s15ConversationKit11ParticipantVWOcTm_17(v185, v419);
            v187 = (v186 + *(v19 + 28));
            v188 = *v187;
            v189 = v187[1];
            v190 = v187[2];
            v191 = v187[3];
            v192 = v187[4];
            v193 = v435;
            v439 = v435;
            v194 = v442;

            v195 = v188;
            v51 = v194;
            outlined consume of Participant.RemoteIdentifiers?(v195, v189, v190, v191, v192);
            v196 = v443;
            *v187 = v193;
            v187[1] = v196;
            v197 = v441;
            v187[2] = 0;
            v187[3] = v197;
            v187[4] = v194;
            v47 = *(v433 + v440);

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              specialized _ArrayBuffer._consumeAndCreateNew()();
              v47 = v290;
            }

            v198 = v431;
            v19 = v445;
            if (v131 < *(v47 + 16))
            {
              v199 = v444 + v47 + v50;
              v200 = v419;
              outlined assign with copy of Participant.State(v419, v199);
              v51 = v433;
              ConversationController.remoteParticipants.setter(v47, &OBJC_IVAR____TtC15ConversationKit22ConversationController_remoteParticipants, v201);

              v154 = v200;
              goto LABEL_141;
            }

            goto LABEL_228;
          }

          v132 = v431;
LABEL_86:
          ConversationController.createParticipant(for:conversation:)(v132, v430, v427);
          v138 = v423;
          if (one-time initialization token for shared != -1)
          {
            swift_once();
          }

          if ((*(*static Defaults.shared + 608))())
          {
            v139 = [v132 association];
            if (v139)
            {
              v140 = v139;
              v141 = v420;
              ConversationController.participant(from:)(v139, v420);
              if (__swift_getEnumTagSinglePayload(v141, 1, v19) == 1)
              {

                outlined destroy of CallControlsService?(v141, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
              }

              else
              {
                v142 = v417;
                _s15ConversationKit11ParticipantVWObTm_8(v141, v417);
                v143 = ConversationController.indexOfRemoteParticipant(with:)(v142 + *(v19 + 20));
                if ((v144 & 1) == 0)
                {
                  v165 = v143;
                  v166 = *(v142 + *(v19 + 44));
                  MEMORY[0x1EEE9AC00](v143);
                  v167 = v427;
                  *(&v399 - 2) = v427;
                  v168 = v410;
                  v169 = specialized Sequence.contains(where:)(partial apply for closure #5 in ConversationController.createNewParticipants(with:), (&v399 - 4), v166);
                  v410 = v168;
                  if (v169)
                  {
                    if (one-time initialization token for conversationKit != -1)
                    {
                      swift_once();
                    }

                    v444 = static OS_os_log.conversationKit;
                    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
                    v51 = swift_allocObject();
                    *(v51 + 16) = v406;
                    v170 = v431;
                    v457[0] = v431;
                    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationParticipant, 0x1E69D8B90);
                    v443 = v170;
                    v171 = String.init<A>(reflecting:)();
                    v173 = v172;
                    v174 = MEMORY[0x1E69E6158];
                    *(v51 + 56) = MEMORY[0x1E69E6158];
                    v175 = lazy protocol witness table accessor for type String and conformance String();
                    *(v51 + 64) = v175;
                    *(v51 + 32) = v171;
                    *(v51 + 40) = v173;
                    v176 = v417;
                    v177 = v414;
                    _s15ConversationKit11ParticipantVWOcTm_17(v417, v414);
                    __swift_storeEnumTagSinglePayload(v177, 0, 1, v19);
                    specialized >> prefix<A>(_:)();
                    v179 = v178;
                    v181 = v180;
                    outlined destroy of CallControlsService?(v177, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
                    *(v51 + 96) = v174;
                    *(v51 + 104) = v175;
                    *(v51 + 72) = v179;
                    *(v51 + 80) = v181;
                    v182 = static os_log_type_t.default.getter();
                    os_log(_:dso:log:type:_:)("Skipping creation of active participant: %@. Already associated with: %@", 72, 2, &dword_1BBC58000, v444, v182, v51);

                    v183 = v427;
                  }

                  else
                  {
                    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit11ParticipantVGMd, &_ss23_ContiguousArrayStorageCy15ConversationKit11ParticipantVGMR);
                    v261 = *(v447 + 72);
                    v262 = (*(v447 + 80) + 32) & ~*(v447 + 80);
                    v263 = swift_allocObject();
                    *(v263 + 16) = v421;
                    _s15ConversationKit11ParticipantVWOcTm_17(v167, v263 + v262);

                    specialized Set.union<A>(_:)();
                    Participant.withAssociatedParticipants(_:)(v264, v265, v266, v267, v268, v269, v270, v271, v399, v400, v401, v402, v403, v404, v405, *(&v405 + 1), v406, *(&v406 + 1), v407, v408);

                    v272 = *(v433 + OBJC_IVAR____TtC15ConversationKit22ConversationController_remoteParticipants);

                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      specialized _ArrayBuffer._consumeAndCreateNew()();
                      v272 = v293;
                    }

                    v273 = v431;
                    if ((v165 & 0x8000000000000000) != 0)
                    {
                      goto LABEL_236;
                    }

                    if (v165 >= *(v272 + 16))
                    {
                      goto LABEL_237;
                    }

                    outlined assign with copy of Participant.State(v408, v272 + v262 + v261 * v165);
                    ConversationController.remoteParticipants.setter(v272, &OBJC_IVAR____TtC15ConversationKit22ConversationController_remoteParticipants, v274);
                    if (one-time initialization token for conversationKit != -1)
                    {
                      swift_once();
                    }

                    v444 = static OS_os_log.conversationKit;
                    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
                    v51 = swift_allocObject();
                    *(v51 + 16) = v405;
                    v457[0] = v273;
                    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationParticipant, 0x1E69D8B90);
                    v443 = v273;
                    v275 = String.init<A>(reflecting:)();
                    v277 = v276;
                    v278 = MEMORY[0x1E69E6158];
                    *(v51 + 56) = MEMORY[0x1E69E6158];
                    v279 = lazy protocol witness table accessor for type String and conformance String();
                    *(v51 + 64) = v279;
                    *(v51 + 32) = v275;
                    *(v51 + 40) = v277;
                    v183 = v427;
                    v280 = v414;
                    _s15ConversationKit11ParticipantVWOcTm_17(v427, v414);
                    __swift_storeEnumTagSinglePayload(v280, 0, 1, v19);
                    specialized >> prefix<A>(_:)();
                    v282 = v281;
                    v284 = v283;
                    outlined destroy of CallControlsService?(v280, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
                    *(v51 + 96) = v278;
                    *(v51 + 104) = v279;
                    *(v51 + 72) = v282;
                    *(v51 + 80) = v284;
                    v19 = v445;
                    v176 = v417;
                    _s15ConversationKit11ParticipantVWOcTm_17(v417, v280);
                    __swift_storeEnumTagSinglePayload(v280, 0, 1, v19);
                    specialized >> prefix<A>(_:)();
                    v286 = v285;
                    v288 = v287;
                    outlined destroy of CallControlsService?(v280, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
                    *(v51 + 136) = MEMORY[0x1E69E6158];
                    *(v51 + 144) = v279;
                    *(v51 + 112) = v286;
                    *(v51 + 120) = v288;
                    v289 = static os_log_type_t.default.getter();
                    os_log(_:dso:log:type:_:)("Skipping creation of active participant: %@. Instead associated participant: %@ with: %@", 88, 2, &dword_1BBC58000, v444, v289, v51);

                    _s15ConversationKit11ParticipantVWOhTm_18(v408, type metadata accessor for Participant);
                  }

                  _s15ConversationKit11ParticipantVWOhTm_18(v176, type metadata accessor for Participant);
                  v154 = v183;
                  goto LABEL_141;
                }

                _s15ConversationKit11ParticipantVWOhTm_18(v142, type metadata accessor for Participant);

                v138 = v423;
              }
            }
          }

          v51 = v433;
          ConversationController.identityClaimingAssociationRelationship(for:in:)(v132, v430);
          if (!v146)
          {
            v157 = v415;
            v158 = v433;
            v51 = v433;
            ConversationController.remoteParticipant(with:)(v145, v415);
            EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v157, 1, v19);
            v147 = v427;
            if (EnumTagSinglePayload == 1)
            {
              outlined destroy of CallControlsService?(v157, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
            }

            else
            {
              v162 = v411;
              _s15ConversationKit11ParticipantVWObTm_8(v157, v411);
              v51 = v158;
              v163 = ConversationController.indexOfRemoteParticipant(with:)(v162 + *(v19 + 20));
              if ((v164 & 1) == 0)
              {
                v231 = v163;
                __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit11ParticipantVGMd, &_ss23_ContiguousArrayStorageCy15ConversationKit11ParticipantVGMR);
                v232 = *(v447 + 72);
                v233 = (*(v447 + 80) + 32) & ~*(v447 + 80);
                v234 = swift_allocObject();
                *(v234 + 16) = v421;
                _s15ConversationKit11ParticipantVWOcTm_17(v147, v234 + v233);
                _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC15ConversationKit11ParticipantV_Tt0g5();
                Participant.withAssociatedParticipants(_:)(v235, v236, v237, v238, v239, v240, v241, v242, v399, v400, v401, v402, v403, v404, v405, *(&v405 + 1), v406, *(&v406 + 1), v407, v408);

                v243 = *(v158 + OBJC_IVAR____TtC15ConversationKit22ConversationController_remoteParticipants);

                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  specialized _ArrayBuffer._consumeAndCreateNew()();
                  v243 = v292;
                }

                if ((v231 & 0x8000000000000000) != 0)
                {
                  __break(1u);
LABEL_233:
                  __break(1u);
LABEL_234:
                  __break(1u);
LABEL_235:
                  __break(1u);
LABEL_236:
                  __break(1u);
LABEL_237:
                  __break(1u);
                }

                if (v231 >= *(v243 + 16))
                {
                  goto LABEL_234;
                }

                outlined assign with copy of Participant.State(v412, v243 + v233 + v232 * v231);
                ConversationController.remoteParticipants.setter(v243, &OBJC_IVAR____TtC15ConversationKit22ConversationController_remoteParticipants, v244);
                if (one-time initialization token for conversationKit != -1)
                {
                  swift_once();
                }

                v444 = static OS_os_log.conversationKit;
                __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
                v245 = swift_allocObject();
                *(v245 + 16) = v405;
                v457[0] = v132;
                type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationParticipant, 0x1E69D8B90);
                v443 = v132;
                v246 = String.init<A>(reflecting:)();
                v248 = v247;
                *(v245 + 56) = MEMORY[0x1E69E6158];
                v249 = lazy protocol witness table accessor for type String and conformance String();
                *(v245 + 64) = v249;
                *(v245 + 32) = v246;
                *(v245 + 40) = v248;
                v250 = v427;
                v51 = v414;
                _s15ConversationKit11ParticipantVWOcTm_17(v427, v414);
                __swift_storeEnumTagSinglePayload(v51, 0, 1, v19);
                specialized >> prefix<A>(_:)();
                v252 = v251;
                v254 = v253;
                outlined destroy of CallControlsService?(v51, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
                *(v245 + 96) = MEMORY[0x1E69E6158];
                *(v245 + 104) = v249;
                *(v245 + 72) = v252;
                *(v245 + 80) = v254;
                v255 = v412;
                _s15ConversationKit11ParticipantVWOcTm_17(v412, v51);
                __swift_storeEnumTagSinglePayload(v51, 0, 1, v19);
                specialized >> prefix<A>(_:)();
                v257 = v256;
                v259 = v258;
                outlined destroy of CallControlsService?(v51, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
                *(v245 + 136) = MEMORY[0x1E69E6158];
                *(v245 + 144) = v249;
                *(v245 + 112) = v257;
                *(v245 + 120) = v259;
                v260 = static os_log_type_t.default.getter();
                os_log(_:dso:log:type:_:)("Skipping creation of active participant: %@. Instead associated primary participant: %@ with associate: %@", 106, 2, &dword_1BBC58000, v444, v260, v245);

                _s15ConversationKit11ParticipantVWOhTm_18(v255, type metadata accessor for Participant);
                _s15ConversationKit11ParticipantVWOhTm_18(v411, type metadata accessor for Participant);
                v154 = v250;
                goto LABEL_141;
              }

              _s15ConversationKit11ParticipantVWOhTm_18(v162, type metadata accessor for Participant);
            }

LABEL_110:
            closure #1 in ConversationController.createNewParticipants(with:)(v147, v433);

            v154 = v147;
            goto LABEL_141;
          }

          if (v146 == 1)
          {
            v155 = v416;
            v156 = v433;
            v51 = v433;
            ConversationController.remoteParticipant(with:)(v145, v416);
            if (__swift_getEnumTagSinglePayload(v155, 1, v19) == 1)
            {
              outlined destroy of CallControlsService?(v155, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
            }

            else
            {
              _s15ConversationKit11ParticipantVWObTm_8(v155, v138);
              v51 = v156;
              v160 = ConversationController.indexOfRemoteParticipant(with:)(v138 + *(v19 + 20));
              if ((v161 & 1) == 0)
              {
                v202 = v160;
                __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit11ParticipantVGMd, &_ss23_ContiguousArrayStorageCy15ConversationKit11ParticipantVGMR);
                v203 = *(v447 + 72);
                v204 = v138;
                v205 = (*(v447 + 80) + 32) & ~*(v447 + 80);
                v206 = swift_allocObject();
                *(v206 + 16) = v421;
                _s15ConversationKit11ParticipantVWOcTm_17(v204, v206 + v205);
                _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC15ConversationKit11ParticipantV_Tt0g5();
                Participant.withAssociatedParticipants(_:)(v207, v208, v209, v210, v211, v212, v213, v214, v399, v400, v401, v402, v403, v404, v405, *(&v405 + 1), v406, *(&v406 + 1), v407, v408);

                v215 = *(v156 + OBJC_IVAR____TtC15ConversationKit22ConversationController_remoteParticipants);

                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  specialized _ArrayBuffer._consumeAndCreateNew()();
                  v215 = v291;
                }

                if ((v202 & 0x8000000000000000) != 0)
                {
                  goto LABEL_233;
                }

                if (v202 >= *(v215 + 16))
                {
                  goto LABEL_235;
                }

                outlined assign with copy of Participant.State(v413, v215 + v205 + v203 * v202);
                ConversationController.remoteParticipants.setter(v215, &OBJC_IVAR____TtC15ConversationKit22ConversationController_remoteParticipants, v216);
                if (one-time initialization token for conversationKit != -1)
                {
                  swift_once();
                }

                v444 = static OS_os_log.conversationKit;
                __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
                v217 = swift_allocObject();
                *(v217 + 16) = v406;
                v218 = v423;
                v219 = v414;
                _s15ConversationKit11ParticipantVWOcTm_17(v423, v414);
                __swift_storeEnumTagSinglePayload(v219, 0, 1, v19);
                specialized >> prefix<A>(_:)();
                v221 = v220;
                v223 = v222;
                outlined destroy of CallControlsService?(v219, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
                v224 = MEMORY[0x1E69E6158];
                *(v217 + 56) = MEMORY[0x1E69E6158];
                v225 = lazy protocol witness table accessor for type String and conformance String();
                *(v217 + 64) = v225;
                *(v217 + 32) = v221;
                *(v217 + 40) = v223;
                v51 = v413;
                _s15ConversationKit11ParticipantVWOcTm_17(v413, v219);
                __swift_storeEnumTagSinglePayload(v219, 0, 1, v19);
                specialized >> prefix<A>(_:)();
                v227 = v226;
                v229 = v228;
                outlined destroy of CallControlsService?(v219, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
                *(v217 + 96) = v224;
                *(v217 + 104) = v225;
                *(v217 + 72) = v227;
                *(v217 + 80) = v229;
                v230 = static os_log_type_t.default.getter();
                os_log(_:dso:log:type:_:)("Replacing primary participant: %@ with vouched participant: %@", 62, 2, &dword_1BBC58000, v444, v230, v217);

                _s15ConversationKit11ParticipantVWOhTm_18(v51, type metadata accessor for Participant);
                _s15ConversationKit11ParticipantVWOhTm_18(v218, type metadata accessor for Participant);
                v154 = v427;
                goto LABEL_141;
              }

              _s15ConversationKit11ParticipantVWOhTm_18(v138, type metadata accessor for Participant);
            }

            v147 = v427;
            goto LABEL_110;
          }

          v147 = v427;
          if (v146 != 2)
          {
            goto LABEL_110;
          }

          if (one-time initialization token for conversationKit != -1)
          {
            swift_once();
          }

          v148 = static OS_os_log.conversationKit;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
          v51 = swift_allocObject();
          *(v51 + 16) = v421;
          v457[0] = v132;
          type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationParticipant, 0x1E69D8B90);
          v149 = v132;
          v150 = String.init<A>(reflecting:)();
          v152 = v151;
          *(v51 + 56) = MEMORY[0x1E69E6158];
          *(v51 + 64) = lazy protocol witness table accessor for type String and conformance String();
          *(v51 + 32) = v150;
          *(v51 + 40) = v152;
          v153 = static os_log_type_t.default.getter();
          os_log(_:dso:log:type:_:)("Skipping creation of active participant: %@. Associated with me!", 64, 2, &dword_1BBC58000, v148, v153, v51);

          v154 = v427;
LABEL_141:
          _s15ConversationKit11ParticipantVWOhTm_18(v154, type metadata accessor for Participant);
          v47 = v429;
          v50 = v428;
LABEL_142:
          v95 = v426;
          v96 = v425;
          v102 = v424;
          if ((v426 & 0x8000000000000000) == 0)
          {
            goto LABEL_45;
          }

          goto LABEL_51;
        }
      }
    }
  }

LABEL_144:
  outlined consume of Set<TUHandle>.Iterator._Variant(v95);
  v294 = v430;
  v295 = v430[3];
  v296 = v430[4];
  __swift_project_boxed_opaque_existential_1(v430, v295);
  v297 = (*(v296 + 88))(v295, v296);
  v298 = v294[3];
  v299 = v294[4];
  v51 = __swift_project_boxed_opaque_existential_1(v294, v298);
  v300 = (*(v299 + 128))(v298, v299);
  specialized Set.union<A>(_:)(v300, v297, v301, v302, v303, v304, v305, v306, v399, v400, v401, v402, v403, v404, v405, *(&v405 + 1), v406, *(&v406 + 1), v407, v408, v409, v410, v411, v412, v413, v414, v415, v416, v417, v418);
  v308 = v307;
  if ((v307 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    v51 = &lazy cache variable for type metadata for TUConversationMember;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationMember, 0x1E69D8B80);
    lazy protocol witness table accessor for type TUConversationInvitationPreference and conformance NSObject(&lazy protocol witness table cache variable for type TUConversationMember and conformance NSObject, &lazy cache variable for type metadata for TUConversationMember, 0x1E69D8B80);
    Set.Iterator.init(_cocoa:)();
    v308 = v457[0];
    v47 = v457[1];
    v309 = v457[2];
    v50 = v457[3];
    v310 = v457[4];
  }

  else
  {
    v50 = 0;
    v311 = -1 << *(v307 + 32);
    v47 = v307 + 56;
    v309 = ~v311;
    v312 = -v311;
    if (v312 < 64)
    {
      v313 = ~(-1 << v312);
    }

    else
    {
      v313 = -1;
    }

    v310 = (v313 & *(v307 + 56));
  }

  v435 = v309;
  v314 = (v309 + 64) >> 6;
  v439 = v47;
  v436 = v308;
  for (i = v314; v308 < 0; v314 = i)
  {
    v320 = __CocoaSet.Iterator.next()();
    if (!v320)
    {
      goto LABEL_219;
    }

    v448 = v320;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationMember, 0x1E69D8B80);
    swift_dynamicCast();
    v319 = v449;
    v317 = v50;
    v318 = v310;
    if (!v449)
    {
      goto LABEL_219;
    }

LABEL_159:
    v441 = v318;
    v321 = [v319 handles];
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00);
    v442 = lazy protocol witness table accessor for type TUConversationInvitationPreference and conformance NSObject(&lazy protocol witness table cache variable for type TUHandle and conformance NSObject, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00);
    v51 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v322 = v51 & 0xC000000000000001;
    v446 = v319;
    if ((v51 & 0xC000000000000001) != 0)
    {
      v323 = __CocoaSet.startIndex.getter();
      v19 = v324;
      v325 = __CocoaSet.endIndex.getter();
      v327 = v326;
      v328 = MEMORY[0x1BFB21E50](v323, v19, v325, v326);
      outlined consume of Set<CallGameController.GameControllerEventBox>.Index._Variant(v325, v327, 1);
      if (v328)
      {
        goto LABEL_167;
      }
    }

    else
    {
      v329 = 0;
      v330 = (v51 + 56);
      v323 = 1 << *(v51 + 32);
      v331 = (v323 + 63) >> 6;
      if (!v331)
      {
LABEL_165:
        v19 = *(v51 + 36);
LABEL_167:
        outlined consume of Set<CallGameController.GameControllerEventBox>.Index._Variant(v323, v19, v322 != 0);

        goto LABEL_168;
      }

      while (!*v330)
      {
        v329 -= 64;
        --v331;
        ++v330;
        if (!v331)
        {
          goto LABEL_165;
        }
      }

      v332 = __clz(__rbit64(*v330));
      v19 = *(v51 + 36);
      if (v332 - v323 == v329)
      {
        goto LABEL_167;
      }

      v323 = v332 - v329;
    }

    v333 = v322 != 0;
    specialized Set.subscript.getter(v323, v19, v322 != 0, v51);
    v335 = v334;

    outlined consume of Set<CallGameController.GameControllerEventBox>.Index._Variant(v323, v19, v333);
    v47 = OBJC_IVAR____TtC15ConversationKit22ConversationController_remoteParticipants;
    v336 = v433;
    swift_beginAccess();
    v51 = *(v336 + v47);
    v443 = *(v51 + 16);
    if (v443)
    {
      v444 = (v51 + ((*(v447 + 80) + 32) & ~*(v447 + 80)));

      v337 = 0;
      v50 = v445;
      v338 = v422;
      v19 = v446;
      v440 = v51;
      v437 = v335;
      while (1)
      {
        if (v337 >= *(v51 + 16))
        {
          goto LABEL_226;
        }

        _s15ConversationKit11ParticipantVWOcTm_17(v444 + *(v447 + 72) * v337, v338);
        v339 = *(v338 + *(v50 + 28));
        if (!v339)
        {
          goto LABEL_184;
        }

        v340 = v339;
        v47 = [v19 handles];
        v341 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

        if ((v341 & 0xC000000000000001) == 0)
        {
          break;
        }

        v342 = v340;
        v47 = __CocoaSet.contains(_:)();

        v51 = v440;
        _s15ConversationKit11ParticipantVWOhTm_18(v338, type metadata accessor for Participant);
        v50 = v445;
        v19 = v446;
        if (v47)
        {
LABEL_187:

          goto LABEL_188;
        }

LABEL_185:
        if (++v337 == v443)
        {

          v308 = v436;
          goto LABEL_193;
        }
      }

      if (*(v341 + 16))
      {
        v343 = NSObject._rawHashValue(seed:)(*(v341 + 40));
        v344 = ~(-1 << *(v341 + 32));
        while (1)
        {
          v345 = v343 & v344;
          if (((*(v341 + 56 + (((v343 & v344) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v343 & v344)) & 1) == 0)
          {
            break;
          }

          v47 = *(*(v341 + 48) + 8 * v345);
          v346 = static NSObject.== infix(_:_:)();

          v343 = v345 + 1;
          if (v346)
          {

            _s15ConversationKit11ParticipantVWOhTm_18(v422, type metadata accessor for Participant);
            v335 = v437;
            v19 = v446;
            v51 = v440;
            goto LABEL_187;
          }
        }

        v338 = v422;
        v335 = v437;
        v51 = v440;
      }

      v50 = v445;
      v19 = v446;
LABEL_184:
      _s15ConversationKit11ParticipantVWOhTm_18(v338, type metadata accessor for Participant);
      goto LABEL_185;
    }

    v50 = v445;
    v19 = v446;
LABEL_193:
    v347 = [v19 isOtherInvitedHandle];
    v348 = v430;
    if (v347)
    {
    }

    else
    {
      v349 = [v19 association];
      if (v349)
      {
        v350 = v349;
        if ([v349 type] == 2)
        {
          v351 = v348;
          v352 = v348[3];
          v353 = v351[4];
          __swift_project_boxed_opaque_existential_1(v351, v352);
          v354 = (*(v353 + 168))(v352, v353);
          if (v354)
          {
            v51 = v354;
            v355 = [v354 handle];
            v356 = [v350 handle];
            v357 = TUHandlesAreCanonicallyEqual();

            if (v357)
            {
              v358 = v335;
              if (one-time initialization token for conversationKit != -1)
              {
                swift_once();
              }

              v359 = static OS_os_log.conversationKit;
              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
              v360 = swift_allocObject();
              *(v360 + 16) = v421;
              v449 = v19;
              type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationMember, 0x1E69D8B80);
              v361 = v19;
              v362 = String.init<A>(reflecting:)();
              v19 = v363;
              *(v360 + 56) = MEMORY[0x1E69E6158];
              *(v360 + 64) = lazy protocol witness table accessor for type String and conformance String();
              *(v360 + 32) = v362;
              *(v360 + 40) = v19;
              v364 = static os_log_type_t.default.getter();
              os_log(_:dso:log:type:_:)("Skipping creation of pending member: %@. Associated with me!", 60, 2, &dword_1BBC58000, v359, v364, v360);

LABEL_188:

              v50 = v317;
              v310 = v441;
              goto LABEL_189;
            }

            v308 = v436;
          }

          if (([v350 isPrimary] & 1) == 0)
          {
            v375 = v335;
            v19 = v308;
            if (one-time initialization token for conversationKit != -1)
            {
              swift_once();
            }

            v376 = static OS_os_log.conversationKit;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
            v51 = swift_allocObject();
            *(v51 + 16) = v421;
            v377 = v446;
            v449 = v446;
            type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationMember, 0x1E69D8B80);
            v378 = v377;
            v379 = String.init<A>(reflecting:)();
            v381 = v380;
            *(v51 + 56) = MEMORY[0x1E69E6158];
            *(v51 + 64) = lazy protocol witness table accessor for type String and conformance String();
            *(v51 + 32) = v379;
            *(v51 + 40) = v381;
            v382 = static os_log_type_t.default.getter();
            os_log(_:dso:log:type:_:)("Skipping creation pending identityClaimer: %@", 45, 2, &dword_1BBC58000, v376, v382, v51);

            v50 = v317;
            v310 = v441;
            v308 = v19;
            goto LABEL_190;
          }

          v366 = v402;
          ConversationController.participant(fromMemberAssociation:)(v350, v402);
          if (__swift_getEnumTagSinglePayload(v366, 1, v50) != 1)
          {
            v437 = v335;
            v383 = v403;
            _s15ConversationKit11ParticipantVWObTm_8(v366, v403);
            if (one-time initialization token for conversationKit != -1)
            {
              swift_once();
            }

            v446 = static OS_os_log.conversationKit;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
            v384 = swift_allocObject();
            *(v384 + 16) = v406;
            v449 = v19;
            type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationMember, 0x1E69D8B80);
            v444 = v19;
            v385 = String.init<A>(reflecting:)();
            v387 = v386;
            *(v384 + 56) = MEMORY[0x1E69E6158];
            v388 = lazy protocol witness table accessor for type String and conformance String();
            *(v384 + 64) = v388;
            *(v384 + 32) = v385;
            *(v384 + 40) = v387;
            v389 = v404;
            _s15ConversationKit11ParticipantVWOcTm_17(v383, v404);
            v390 = v445;
            __swift_storeEnumTagSinglePayload(v389, 0, 1, v445);
            v391 = v389;
            v392 = v401;
            v51 = &_s15ConversationKit11ParticipantVSgMR;
            outlined init with copy of IDView<AvatarStackView, [UUID]>(v391, v401, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
            if (__swift_getEnumTagSinglePayload(v392, 1, v390) == 1)
            {
              outlined destroy of CallControlsService?(v392, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
              v19 = 0xE300000000000000;
              v393 = 7104878;
            }

            else
            {
              v51 = v400;
              _s15ConversationKit11ParticipantVWObTm_8(v392, v400);
              _s15ConversationKit11ParticipantVWOcTm_17(v51, v409);
              v393 = String.init<A>(reflecting:)();
              v19 = v394;
              _s15ConversationKit11ParticipantVWOhTm_18(v51, type metadata accessor for Participant);
            }

            outlined destroy of CallControlsService?(v404, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
            *(v384 + 96) = MEMORY[0x1E69E6158];
            *(v384 + 104) = v388;
            *(v384 + 72) = v393;
            *(v384 + 80) = v19;
            v395 = static os_log_type_t.default.getter();
            os_log(_:dso:log:type:_:)("Skipping creation of pending member: %@. Associated with: %@", 60, 2, &dword_1BBC58000, v446, v395, v384);

            _s15ConversationKit11ParticipantVWOhTm_18(v403, type metadata accessor for Participant);
            v50 = v317;
            v310 = v441;
LABEL_189:
            v308 = v436;
            goto LABEL_190;
          }

          v367 = v308;
          outlined destroy of CallControlsService?(v366, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
          if (one-time initialization token for conversationKit != -1)
          {
            swift_once();
          }

          v368 = static OS_os_log.conversationKit;
          v369 = static os_log_type_t.error.getter();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
          v370 = swift_allocObject();
          *(v370 + 16) = v421;
          v449 = v19;
          type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationMember, 0x1E69D8B80);
          v371 = v19;
          v372 = String.init<A>(reflecting:)();
          v374 = v373;
          *(v370 + 56) = MEMORY[0x1E69E6158];
          *(v370 + 64) = lazy protocol witness table accessor for type String and conformance String();
          *(v370 + 32) = v372;
          *(v370 + 40) = v374;
          v19 = v446;
          os_log(_:dso:log:type:_:)("Inserting non-primary association because primary associate not found: %@", 73, 2, &dword_1BBC58000, v368, v369, v370);

          v348 = v430;
          v308 = v367;
        }

        else
        {
        }
      }

      v365 = v409;
      v51 = v433;
      ConversationController.createParticipant(for:conversation:)(v335, v348, v409);
      closure #1 in ConversationController.createNewParticipants(with:)(v365, v51);

      _s15ConversationKit11ParticipantVWOhTm_18(v365, type metadata accessor for Participant);
    }

LABEL_168:
    v50 = v317;
    v310 = v441;
LABEL_190:
    v47 = v439;
  }

  v315 = v50;
  v316 = v310;
  v317 = v50;
  if (!v310)
  {
    do
    {
      v317 = v315 + 1;
      if (__OFADD__(v315, 1))
      {
        goto LABEL_224;
      }

      if (v317 >= v314)
      {
        goto LABEL_219;
      }

      v316 = *(v47 + 8 * v317);
      ++v315;
    }

    while (!v316);
  }

  v318 = (v316 - 1) & v316;
  v319 = *(*(v308 + 48) + ((v317 << 9) | (8 * __clz(__rbit64(v316)))));
  if (v319)
  {
    goto LABEL_159;
  }

LABEL_219:

  return outlined consume of Set<TUHandle>.Iterator._Variant(v308);
}

void ConversationController.updateRemoteParticipantsStates(with:)(void *a1)
{
  v2 = v1;
  v182 = a1;
  v166 = type metadata accessor for UUID();
  v3 = *(v166 - 8);
  MEMORY[0x1EEE9AC00](v166);
  v161 = &v154 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v165 = &v154 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v158 = &v154 - v8;
  v190 = type metadata accessor for Participant.State(0);
  MEMORY[0x1EEE9AC00](v190);
  v10 = &v154 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v160 = &v154 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v168 = &v154 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v167 = &v154 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v174 = &v154 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v181 = &v154 - v20;
  v178 = type metadata accessor for Participant(0);
  v184 = *(v178 - 8);
  MEMORY[0x1EEE9AC00](v178);
  v157 = &v154 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v171 = &v154 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v154 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v154 - v28;
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_15ConversationKit11ParticipantV7elementtMd, &_sSi6offset_15ConversationKit11ParticipantV7elementtMR);
  MEMORY[0x1EEE9AC00](v179);
  v172 = (&v154 - v30);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_15ConversationKit11ParticipantV7elementtSgMd, &_sSi6offset_15ConversationKit11ParticipantV7elementtSgMR);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v187 = &v154 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v191 = &v154 - v34;
  v35 = type metadata accessor for DispatchPredicate();
  v36 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v38 = (&v154 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v38 = static OS_dispatch_queue.main.getter();
  (*(v36 + 104))(v38, *MEMORY[0x1E69E8020], v35);
  v39 = _dispatchPreconditionTest(_:)();
  (*(v36 + 8))(v38, v35);
  if ((v39 & 1) == 0)
  {
    goto LABEL_82;
  }

  v40 = OBJC_IVAR____TtC15ConversationKit22ConversationController_remoteParticipants;
  swift_beginAccess();
  v177 = v40;
  v41 = *(v2 + v40);
  v183 = *(v41 + 16);
  v42 = v2 + OBJC_IVAR____TtC15ConversationKit22ConversationController_call;
  v163 = OBJC_IVAR____TtC15ConversationKit22ConversationController_callUUIDsAwaitingFirstRemoteVideoFrame;
  v175 = v41;

  v164 = v42;
  swift_beginAccess();
  v43 = 0;
  v170 = "participant as left: ";
  v155 = "g participant as waiting: ";
  v156 = "ipant as waiting: ";
  v159 = "ttributes:isLocallySharing:)";
  v162 = (v3 + 8);
  v176 = xmmword_1BC4BA940;
  v169 = v2;
  v173 = v10;
  v45 = v178;
  v44 = v179;
  v46 = v187;
  v47 = v191;
  while (1)
  {
    if (v43 == v183)
    {
      v48 = 1;
      v192 = v183;
    }

    else
    {
      if ((v43 & 0x8000000000000000) != 0)
      {
        goto LABEL_80;
      }

      if (v43 >= *(v175 + 16))
      {
        goto LABEL_81;
      }

      v49 = v43 + 1;
      v50 = v175 + ((*(v184 + 80) + 32) & ~*(v184 + 80)) + *(v184 + 72) * v43;
      v51 = *(v44 + 48);
      v52 = v172;
      *v172 = v43;
      _s15ConversationKit11ParticipantVWOcTm_17(v50, v52 + v51);
      v53 = v52;
      v46 = v187;
      outlined init with take of ZStack<TupleView<(ModifiedContent<_ShapeView<Rectangle, Color>, _AllowsHitTestingModifier>, ModifiedContent<StaticIf<Solarium, _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, _AnimationModifier<Bool>>)>>(v53, v187, &_sSi6offset_15ConversationKit11ParticipantV7elementtMd, &_sSi6offset_15ConversationKit11ParticipantV7elementtMR);
      v48 = 0;
      v192 = v49;
      v47 = v191;
    }

    __swift_storeEnumTagSinglePayload(v46, v48, 1, v44);
    outlined init with take of ZStack<TupleView<(ModifiedContent<_ShapeView<Rectangle, Color>, _AllowsHitTestingModifier>, ModifiedContent<StaticIf<Solarium, _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, _AnimationModifier<Bool>>)>>(v46, v47, &_sSi6offset_15ConversationKit11ParticipantV7elementtSgMd, &_sSi6offset_15ConversationKit11ParticipantV7elementtSgMR);
    if (__swift_getEnumTagSinglePayload(v47, 1, v44) == 1)
    {

      return;
    }

    v189 = *v47;
    _s15ConversationKit11ParticipantVWObTm_8(v47 + *(v44 + 48), v29);
    if (*&v29[*(v45 + 28)])
    {
      break;
    }

LABEL_70:
    _s15ConversationKit11ParticipantVWOhTm_18(v29, type metadata accessor for Participant);
    v43 = v192;
  }

  v180 = *(v45 + 28);
  v54 = v182;
  ConversationController.activeParticipant(correspondingTo:in:)(v29, v182);
  v193 = v55;
  ConversationController.pendingMember(correspondingTo:in:)(v29, v54);
  v188 = v56;
  if (v56)
  {
    _s15ConversationKit11ParticipantVWOcTm_17(v29, v181);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    switch(EnumCaseMultiPayload)
    {
      case 2:
        v66 = type metadata accessor for Date();
        (*(*(v66 - 8) + 8))(v181, v66);
        goto LABEL_15;
      case 4:
        v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd, &_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMR);
        v71 = *(v70 + 48);
        v72 = v181;
        v73 = (v181 + *(v70 + 64));
        outlined consume of Participant.CopresenceInfo?(*v73, v73[1], v73[2], v73[3], v73[4], v73[5], v73[6], v73[7]);
        v74 = v72 + v71;
        v44 = v179;
        outlined destroy of Participant.MediaInfo(v74);
        goto LABEL_12;
      case 6:
        goto LABEL_13;
      default:
LABEL_12:
        v65 = type metadata accessor for Date();
        EnumCaseMultiPayload = (*(*(v65 - 8) + 8))(v181, v65);
LABEL_13:
        Participant.asPendingAuthorization()(EnumCaseMultiPayload, v58, v59, v60, v61, v62, v63, v64, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165);
        v195[0] = 0;
        v195[1] = 0xE000000000000000;
        _StringGuts.grow(_:)(95);
        MEMORY[0x1BFB20B10](0xD00000000000005DLL, v170 | 0x8000000000000000);
        _print_unlocked<A, B>(_:_:)();
        v185 = v195[0];
        v186 = v195[1];
        break;
    }
  }

  else
  {
LABEL_15:
    _s15ConversationKit11ParticipantVWOcTm_17(v29, v174);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 4u:
        v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd, &_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMR);
        v76 = *(v75 + 48);
        v77 = v174;
        v78 = (v174 + *(v75 + 64));
        outlined consume of Participant.CopresenceInfo?(*v78, v78[1], v78[2], v78[3], v78[4], v78[5], v78[6], v78[7]);
        outlined destroy of Participant.MediaInfo(v77 + v76);
        v79 = type metadata accessor for Date();
        (*(*(v79 - 8) + 8))(v77, v79);
        if (v193)
        {
          v68 = 0;
          goto LABEL_23;
        }

        Participant.asLeft()();
        v195[0] = 0;
        v195[1] = 0xE000000000000000;
        _StringGuts.grow(_:)(103);
        v116 = 0xD000000000000065;
        v117 = v155;
LABEL_47:
        MEMORY[0x1BFB20B10](v116, v117 | 0x8000000000000000);
        _print_unlocked<A, B>(_:_:)();
        v185 = v195[0];
        v186 = v195[1];
        v10 = v173;
        goto LABEL_48;
      case 6u:
        break;
      default:
        v67 = type metadata accessor for Date();
        (*(*(v67 - 8) + 8))(v174, v67);
        break;
    }

    v68 = v193 == 0;
    if (!(v188 | v193))
    {
      _s15ConversationKit11ParticipantVWOcTm_17(v29, v167);
      v68 = 1;
      switch(swift_getEnumCaseMultiPayload())
      {
        case 2u:
          v115 = type metadata accessor for Date();
          (*(*(v115 - 8) + 8))(v167, v115);
          Participant.asWaiting()();
          v195[0] = 0;
          v195[1] = 0xE000000000000000;
          _StringGuts.grow(_:)(76);
          v116 = 0xD00000000000004ALL;
          v117 = v156;
          goto LABEL_47;
        case 4u:
          v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd, &_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMR);
          v119 = *(v118 + 48);
          v120 = v167;
          v121 = (v167 + *(v118 + 64));
          outlined consume of Participant.CopresenceInfo?(*v121, v121[1], v121[2], v121[3], v121[4], v121[5], v121[6], v121[7]);
          outlined destroy of Participant.MediaInfo(v120 + v119);
          break;
        case 6u:
          goto LABEL_23;
        default:
          break;
      }

      v69 = type metadata accessor for Date();
      (*(*(v69 - 8) + 8))(v167, v69);
    }

LABEL_23:
    v80 = v182[3];
    v81 = v182[4];
    __swift_project_boxed_opaque_existential_1(v182, v80);
    if ((*(v81 + 56))(v80, v81) == 3)
    {
      v82 = v182;
      v44 = v179;
      if (!v68)
      {
        v83 = v182[3];
        v84 = v182[4];
        __swift_project_boxed_opaque_existential_1(v182, v83);
        v85 = *(v84 + 56);
        v86 = v193;
        if (v85(v83, v84) == 3)
        {
          v2 = v169;
          ConversationController.updateActiveParticipant(_:with:in:)(v86, v29, v82, v26);

          v185 = 0;
          v186 = 0xE000000000000000;
          v10 = v173;
          v45 = v178;
          v44 = v179;
          v46 = v187;
          goto LABEL_49;
        }

        v2 = v169;
        v44 = v179;
        v46 = v187;
      }

      _s15ConversationKit11ParticipantVWOcTm_17(v29, v26);
      v185 = 0;
      v186 = 0xE000000000000000;
      v10 = v173;
      v45 = v178;
    }

    else
    {
      _s15ConversationKit11ParticipantVWOcTm_17(v29, v168);
      v87 = swift_getEnumCaseMultiPayload();
      v10 = v173;
      v88 = v160;
      v45 = v178;
      v89 = v171;
      switch(v87)
      {
        case 2:
          v104 = type metadata accessor for Date();
          (*(*(v104 - 8) + 8))(v168, v104);
          _s15ConversationKit11ParticipantVWOcTm_17(v29, v89);
          goto LABEL_30;
        case 4:
          v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd, &_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMR);
          v107 = *(v106 + 48);
          v108 = v168;
          v109 = (v168 + *(v106 + 64));
          outlined consume of Participant.CopresenceInfo?(*v109, v109[1], v109[2], v109[3], v109[4], v109[5], v109[6], v109[7]);
          v110 = v108 + v107;
          v46 = v187;
          outlined destroy of Participant.MediaInfo(v110);
          goto LABEL_28;
        case 6:
          goto LABEL_29;
        default:
LABEL_28:
          v90 = type metadata accessor for Date();
          (*(*(v90 - 8) + 8))(v168, v90);
LABEL_29:
          Participant.asWaiting()();
          v89 = v171;
LABEL_30:
          _s15ConversationKit11ParticipantVWOcTm_17(v89, v88);
          switch(swift_getEnumCaseMultiPayload())
          {
            case 2u:
              v105 = type metadata accessor for Date();
              (*(*(v105 - 8) + 8))(v88, v105);
              goto LABEL_41;
            case 4u:
              v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd, &_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMR);
              v112 = *(v111 + 48);
              v113 = (v88 + *(v111 + 64));
              outlined consume of Participant.CopresenceInfo?(*v113, v113[1], v113[2], v113[3], v113[4], v113[5], v113[6], v113[7]);
              v114 = v88 + v112;
              v89 = v171;
              outlined destroy of Participant.MediaInfo(v114);
              goto LABEL_31;
            case 6u:
              goto LABEL_32;
            default:
LABEL_31:
              v91 = type metadata accessor for Date();
              (*(*(v91 - 8) + 8))(v88, v91);
LABEL_32:
              v92 = *(v89 + *(v45 + 28));
              if (v92)
              {
                v93 = [v92 value];
                if (!v93)
                {
                  v94 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v93 = MEMORY[0x1BFB209B0](v94);
                }

                v95 = [v93 destinationIdIsTemporary];

                v89 = v171;
                if (v95)
                {
                  v103 = v157;
                  Participant.asKickable(_:)(0, v96, v97, v98, v99, v100, v101, v102, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165);
                  v89 = v171;
                  _s15ConversationKit11ParticipantVWOdTm_0(v103, v171);
                }
              }

LABEL_41:
              _s15ConversationKit11ParticipantVWOcTm_17(v89, v26);
              v195[0] = 0;
              v195[1] = 0xE000000000000000;
              _StringGuts.grow(_:)(68);
              MEMORY[0x1BFB20B10](0xD000000000000042, v159 | 0x8000000000000000);
              _print_unlocked<A, B>(_:_:)();
              v185 = v195[0];
              v186 = v195[1];
              _s15ConversationKit11ParticipantVWOhTm_18(v89, type metadata accessor for Participant);
              break;
          }

          break;
      }

LABEL_48:
      v44 = v179;
    }
  }

LABEL_49:
  ConversationController.updateAudioFrequencyController(with:from:)(v26);
  _s15ConversationKit11ParticipantVWOcTm_17(v26, v10);
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd, &_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMR);
    v123 = *(v122 + 48);
    v124 = &v10[*(v122 + 64)];
    outlined consume of Participant.CopresenceInfo?(*v124, v124[1], v124[2], v124[3], v124[4], v124[5], v124[6], v124[7]);
    memcpy(v195, &v10[v123], sizeof(v195));
    v125 = type metadata accessor for Date();
    (*(*(v125 - 8) + 8))(v10, v125);
    if (v193)
    {
      v126 = v193;
      if (([v126 isVideoEnabled] & 1) == 0)
      {
        v133 = *(v164 + 8);
        ObjectType = swift_getObjectType();
        v135 = *(v133 + 232);
        swift_unknownObjectRetain();
        v136 = v165;
        v137 = ObjectType;
        v2 = v169;
        v138 = v133;
        v10 = v173;
        v135(v137, v138);
        v46 = v187;
        swift_unknownObjectRelease();
        v194 = *(v2 + v163);

        v139 = v158;
        specialized Set._Variant.remove(_:)();
        (*v162)(v136, v166);
        v140 = v139;
        v44 = v179;
        outlined destroy of CallControlsService?(v140, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        ConversationController.callUUIDsAwaitingFirstRemoteVideoFrame.setter(v194);

        v45 = v178;
LABEL_58:
        outlined destroy of Participant.MediaInfo(v195);
        goto LABEL_59;
      }

      v45 = v178;
    }

    if (!v195[2] || (v195[3] & 1) == 0)
    {
      v127 = *(v164 + 8);
      v128 = swift_getObjectType();
      v129 = *(v127 + 232);
      swift_unknownObjectRetain();
      v130 = v128;
      v2 = v169;
      v131 = v127;
      v46 = v187;
      v129(v130, v131);
      v44 = v179;
      v10 = v173;
      swift_unknownObjectRelease();
      v194 = *(v2 + v163);

      v132 = v165;
      v45 = v178;
      specialized Set._Variant.insert(_:)();
      (*v162)(v132, v166);
      ConversationController.callUUIDsAwaitingFirstRemoteVideoFrame.setter(v194);
    }

    goto LABEL_58;
  }

  _s15ConversationKit11ParticipantVWOhTm_18(v10, type metadata accessor for Participant.State);
LABEL_59:
  static Participant.State.== infix(_:_:)();
  v47 = v191;
  if ((v141 & 1) != 0 && (static UUID.== infix(_:_:)() & 1) != 0 && (*&v29[v180] == 0) == (*&v26[*(v45 + 28)] == 0))
  {
    v149 = *(v45 + 24);
    v150 = &v26[v149];
    v151 = v26[v149];
    v152 = &v29[v149];
    if (v151 == *v152 && ((v150[1] ^ v152[1]) & 1) == 0 && ((v150[2] ^ v152[2]) & 1) == 0 && ((v150[3] ^ v152[3]) & 1) == 0 && ((v150[4] ^ v152[4]) & 1) == 0)
    {

      v148 = v193;
      v193 = v188;
LABEL_69:

      _s15ConversationKit11ParticipantVWOhTm_18(v26, type metadata accessor for Participant);
      goto LABEL_70;
    }
  }

  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  v142 = static OS_os_log.conversationKit;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v143 = swift_allocObject();
  *(v143 + 16) = v176;
  *(v143 + 56) = MEMORY[0x1E69E6158];
  *(v143 + 64) = lazy protocol witness table accessor for type String and conformance String();
  v144 = v186;
  *(v143 + 32) = v185;
  *(v143 + 40) = v144;
  v145 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("%@", 2, 2, &dword_1BBC58000, v142, v145, v143);

  v146 = *(v2 + v177);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    specialized _ArrayBuffer._consumeAndCreateNew()();
    v146 = v153;
  }

  v46 = v187;
  if ((v189 & 0x8000000000000000) == 0)
  {
    if (v189 >= *(v146 + 16))
    {
      goto LABEL_79;
    }

    outlined assign with copy of Participant.State(v26, v146 + ((*(v184 + 80) + 32) & ~*(v184 + 80)) + *(v184 + 72) * v189);
    ConversationController.remoteParticipants.setter(v146, &OBJC_IVAR____TtC15ConversationKit22ConversationController_remoteParticipants, v147);
    ConversationController.postParticipantStateChangeCallbacks(for:updatedFrom:)(v26, v29);
    v148 = v188;
    v47 = v191;
    goto LABEL_69;
  }

  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
}

void ConversationController.updateRemoteParticipantsNames(with:)(void *a1)
{
  v2 = v1;
  v109 = a1;
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v103 = &v92 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v117 = &v92 - v6;
  v104 = type metadata accessor for Participant(0);
  v110 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104);
  v95 = &v92 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v94 = &v92 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v116 = &v92 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v92 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_15ConversationKit11ParticipantV7elementtMd, &_sSi6offset_15ConversationKit11ParticipantV7elementtMR);
  MEMORY[0x1EEE9AC00](v15);
  v96 = (&v92 - v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_15ConversationKit11ParticipantV7elementtSgMd, &_sSi6offset_15ConversationKit11ParticipantV7elementtSgMR);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v92 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = (&v92 - v21);
  v23 = type metadata accessor for DispatchPredicate();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = (&v92 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v26 = static OS_dispatch_queue.main.getter();
  (*(v24 + 104))(v26, *MEMORY[0x1E69E8020], v23);
  v27 = _dispatchPreconditionTest(_:)();
  (*(v24 + 8))(v26, v23);
  if ((v27 & 1) == 0)
  {
    goto LABEL_60;
  }

  v28 = OBJC_IVAR____TtC15ConversationKit22ConversationController_remoteParticipants;
  swift_beginAccess();
  v100 = v28;
  v115 = v2;
  v29 = *(v2 + v28);
  v30 = *(v29 + 16);
  v93 = v14 + 8;
  v97 = v29;

  v31 = 0;
  v98 = xmmword_1BC4BB990;
  v32 = v104;
  v102 = v14;
  v101 = v15;
  v106 = v22;
  v107 = v19;
  for (i = v30; ; v30 = i)
  {
    if (v31 == v30)
    {
      v33 = 1;
      v31 = v30;
    }

    else
    {
      if ((v31 & 0x8000000000000000) != 0)
      {
        goto LABEL_58;
      }

      if (v31 >= *(v97 + 16))
      {
        goto LABEL_59;
      }

      v34 = v97 + ((*(v110 + 80) + 32) & ~*(v110 + 80)) + *(v110 + 72) * v31;
      v35 = *(v15 + 48);
      v36 = v96;
      *v96 = v31;
      _s15ConversationKit11ParticipantVWOcTm_17(v34, v36 + v35);
      outlined init with take of ZStack<TupleView<(ModifiedContent<_ShapeView<Rectangle, Color>, _AllowsHitTestingModifier>, ModifiedContent<StaticIf<Solarium, _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, _AnimationModifier<Bool>>)>>(v36, v19, &_sSi6offset_15ConversationKit11ParticipantV7elementtMd, &_sSi6offset_15ConversationKit11ParticipantV7elementtMR);
      v33 = 0;
      ++v31;
    }

    __swift_storeEnumTagSinglePayload(v19, v33, 1, v15);
    outlined init with take of ZStack<TupleView<(ModifiedContent<_ShapeView<Rectangle, Color>, _AllowsHitTestingModifier>, ModifiedContent<StaticIf<Solarium, _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, _AnimationModifier<Bool>>)>>(v19, v22, &_sSi6offset_15ConversationKit11ParticipantV7elementtSgMd, &_sSi6offset_15ConversationKit11ParticipantV7elementtSgMR);
    if (__swift_getEnumTagSinglePayload(v22, 1, v15) == 1)
    {

      return;
    }

    v37 = *v22;
    _s15ConversationKit11ParticipantVWObTm_8(v22 + *(v15 + 48), v14);
    v38 = static ConversationController.member(correspondingTo:in:)(v14, v109);
    v43 = v38;
    if (!v38)
    {
      v49 = 0;
      v51 = 0;
      v118 = 0;
      v53 = *&v93[*(v32 + 36)];
      goto LABEL_20;
    }

    v44 = v37;
    v45 = v38;
    v46 = outlined bridged method (ob) of @objc TUConversationLink.displayName.getter(v45, &selRef_nickname);
    v48 = v47;
    v49 = outlined bridged method (ob) of @objc TUConversationLink.displayName.getter([v45 handle], &selRef_siriDisplayName);
    v51 = v50;
    v52 = &v14[*(v32 + 36)];
    v53 = *(v52 + 1);
    v118 = v46;
    if (!v48)
    {
      v37 = v44;
LABEL_20:
      v48 = 0;
      if (v53)
      {
        goto LABEL_35;
      }

LABEL_21:
      v57 = *&v14[*(v32 + 28)];
      if (v57)
      {
        v58 = v49;
        v59 = outlined bridged method (ob) of @objc TUConversationLink.displayName.getter(v57, &selRef_siriDisplayName);
        if (v51)
        {
          v49 = v58;
          if (v60)
          {
            if (v58 == v59 && v51 == v60)
            {

LABEL_53:

LABEL_54:

              v22 = v106;
              v19 = v107;
              goto LABEL_51;
            }

            v114 = v37;
            v62 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v62)
            {
              goto LABEL_53;
            }

            v37 = v114;
            v49 = v58;
          }
        }

        else
        {
          if (!v60)
          {
            goto LABEL_54;
          }

          v49 = v58;
          v51 = 0;
        }
      }

      else if (!v51)
      {
        goto LABEL_54;
      }

      goto LABEL_35;
    }

    if (!v53)
    {
      v37 = v44;
      goto LABEL_35;
    }

    v54 = v46 == *v52 && v48 == v53;
    v37 = v44;
    if (v54)
    {
      goto LABEL_21;
    }

    v55 = v49;
    v56 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v49 = v55;
    if (v56)
    {
      goto LABEL_21;
    }

LABEL_35:
    v63 = v37;
    v113 = v43;
    v114 = v31;
    v112 = v49;
    Participant.withNames(nickname:siriDisplayName:)(v118, v48, v49, v51, v39, v40, v41, v42, v92, v93, v94, v95, v96, v97, v98, *(&v98 + 1), v99, v100, v101, v102);
    v64 = v14;
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    v65 = static OS_os_log.conversationKit;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v66 = swift_allocObject();
    *(v66 + 16) = v98;
    v67 = v64;
    v68 = v117;
    _s15ConversationKit11ParticipantVWOcTm_17(v67, v117);
    __swift_storeEnumTagSinglePayload(v68, 0, 1, v32);
    v69 = v68;
    v70 = v103;
    outlined init with copy of IDView<AvatarStackView, [UUID]>(v69, v103, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v70, 1, v32);
    v111 = v65;
    if (EnumTagSinglePayload == 1)
    {
      outlined destroy of CallControlsService?(v70, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
      v72 = 0xE300000000000000;
      v73 = 7104878;
    }

    else
    {
      v74 = v94;
      _s15ConversationKit11ParticipantVWObTm_8(v70, v94);
      _s15ConversationKit11ParticipantVWOcTm_17(v74, v95);
      v73 = String.init<A>(reflecting:)();
      v72 = v75;
      _s15ConversationKit11ParticipantVWOhTm_18(v74, type metadata accessor for Participant);
    }

    outlined destroy of CallControlsService?(v117, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
    v76 = MEMORY[0x1E69E6158];
    *(v66 + 56) = MEMORY[0x1E69E6158];
    v77 = lazy protocol witness table accessor for type String and conformance String();
    *(v66 + 64) = v77;
    *(v66 + 32) = v73;
    *(v66 + 40) = v72;
    v119 = v63;
    v78 = String.init<A>(reflecting:)();
    *(v66 + 96) = v76;
    *(v66 + 104) = v77;
    *(v66 + 72) = v78;
    *(v66 + 80) = v79;
    v80 = v113;
    if (v48)
    {
      v119 = v118;
      v120 = v48;
      v81 = String.init<A>(reflecting:)();
    }

    else
    {
      v82 = 0xE300000000000000;
      v81 = 7104878;
    }

    v83 = v115;
    v19 = v107;
    v84 = v112;
    *(v66 + 136) = v76;
    *(v66 + 144) = v77;
    *(v66 + 112) = v81;
    *(v66 + 120) = v82;
    v15 = v101;
    if (v51)
    {
      v119 = v84;
      v120 = v51;
      v85 = String.init<A>(reflecting:)();
    }

    else
    {
      v86 = 0xE300000000000000;
      v85 = 7104878;
    }

    v22 = v106;
    *(v66 + 176) = v76;
    *(v66 + 184) = v77;
    *(v66 + 152) = v85;
    *(v66 + 160) = v86;
    v87 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Updating participant %@ at index %@ with nickname %@ siriDisplayName %@", 71, 2, &dword_1BBC58000, v111, v87, v66);

    v88 = *(v83 + v100);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      specialized _ArrayBuffer._consumeAndCreateNew()();
      v88 = v91;
    }

    v32 = v104;
    v14 = v102;
    v31 = v114;
    if ((v63 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v63 >= *(v88 + 16))
    {
      goto LABEL_57;
    }

    v89 = v116;
    outlined assign with copy of Participant.State(v116, v88 + ((*(v110 + 80) + 32) & ~*(v110 + 80)) + *(v110 + 72) * v63);
    ConversationController.remoteParticipants.setter(v88, &OBJC_IVAR____TtC15ConversationKit22ConversationController_remoteParticipants, v90);
    ConversationController.didUpdateVisibleParticipant(_:)(v89);

    _s15ConversationKit11ParticipantVWOhTm_18(v89, type metadata accessor for Participant);
LABEL_51:
    _s15ConversationKit11ParticipantVWOhTm_18(v14, type metadata accessor for Participant);
  }

  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
}

void ConversationController.updateLocalMemberAuthorizedToChangeGroupMembership(with:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Participant(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v27 - v8;
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = (v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v13 = static OS_dispatch_queue.main.getter();
  (*(v11 + 104))(v13, *MEMORY[0x1E69E8020], v10);
  v14 = _dispatchPreconditionTest(_:)();
  (*(v11 + 8))(v13, v10);
  if ((v14 & 1) == 0)
  {
    __break(1u);
LABEL_8:
    swift_once();
    goto LABEL_4;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  LOBYTE(a1) = Conversation.isLocalMemberAuthorizedToChangeGroupMembership()();
  v10 = v2 + OBJC_IVAR____TtC15ConversationKit22ConversationController_localParticipant;
  swift_beginAccess();
  if ((a1 & 1) == *(v10 + *(v4 + 60)))
  {
    return;
  }

  if (one-time initialization token for conversationKit != -1)
  {
    goto LABEL_8;
  }

LABEL_4:
  v15 = static OS_os_log.conversationKit;
  v16 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Updating local member authorized to change group membership", 59, 2, &dword_1BBC58000, v15, v16, MEMORY[0x1E69E7CC0]);
  _s15ConversationKit11ParticipantVWOcTm_17(v10, v6);
  Participant.asAuthorizedToChangeGroupMembership(_:)(a1 & 1, v17, v18, v19, v20, v21, v22, v23, v27[0], v27[1], v27[2], v28, v29, v30, v31, v32, v33, v34, v35, v36);
  _s15ConversationKit11ParticipantVWOhTm_18(v6, type metadata accessor for Participant);
  swift_beginAccess();
  _s15ConversationKit11ParticipantVWOdTm_0(v9, v10);
  swift_endAccess();
  v24 = v2 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateLocalMemberAuthorizedToChangeGroupMembership;
  swift_beginAccess();
  v25 = *v24;
  if (*v24)
  {
    v26 = *(v24 + 8);

    v25(a1 & 1);
    outlined consume of (@escaping @callee_guaranteed () -> ())?(v25, v26);
  }
}

double ConversationController.updateParticipantsForcedToShowAsNeedingAuthorization()()
{
  v1 = v0;
  v2 = type metadata accessor for Participant(0);
  v3 = *(v2 - 8);
  v52 = v2;
  v53 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v43 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v42 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v42 - v9;
  if (one-time initialization token for shared != -1)
  {
    goto LABEL_29;
  }

  while (1)
  {
    v11 = (*(*static Defaults.shared + 712))();
    v12 = v11;
    v49 = *(v11 + 16);
    if (!v49)
    {
      break;
    }

    v42 = v7;
    v13 = OBJC_IVAR____TtC15ConversationKit22ConversationController_remoteParticipants;
    v47 = v11 + 32;
    swift_beginAccess();
    v14 = 0;
    v45 = v13;
    v46 = v1;
    v44 = v12;
    while (1)
    {
      if (v14 >= *(v12 + 16))
      {
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v15 = *(v1 + v13);
      v16 = *(v15 + 16);
      if (v16)
      {
        break;
      }

LABEL_20:
      if (++v14 == v49)
      {
        goto LABEL_21;
      }
    }

    v50 = v14;
    v17 = (v47 + 16 * v14);
    v18 = v17[1];
    v51 = *v17;
    v48 = (*(v53 + 80) + 32) & ~*(v53 + 80);
    v1 = v15 + v48;

    v19 = 0;
    while (1)
    {
      if (v19 >= *(v15 + 16))
      {
        __break(1u);
        goto LABEL_26;
      }

      v7 = *(v53 + 72) * v19;
      _s15ConversationKit11ParticipantVWOcTm_17(v1 + v7, v10);
      v20 = *&v10[*(v52 + 28)];
      if (!v20)
      {
        _s15ConversationKit11ParticipantVWOhTm_18(v10, type metadata accessor for Participant);
        goto LABEL_12;
      }

      v21 = [v20 value];
      v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v24 = v23;

      v56 = v22;
      v57 = v24;
      v54 = v51;
      v55 = v18;
      lazy protocol witness table accessor for type String and conformance String();
      v25 = StringProtocol.caseInsensitiveCompare<A>(_:)();

      _s15ConversationKit11ParticipantVWOhTm_18(v10, type metadata accessor for Participant);
      if (!v25)
      {
        break;
      }

LABEL_12:
      if (v16 == ++v19)
      {

        v13 = v45;
        v1 = v46;
LABEL_19:
        v12 = v44;
        v14 = v50;
        goto LABEL_20;
      }
    }

    v13 = v45;
    v1 = v46;
    v26 = *(v46 + v45);
    if (v19 >= *(v26 + 16))
    {
      goto LABEL_27;
    }

    v27 = v48;
    v28 = v43;
    v29 = _s15ConversationKit11ParticipantVWOcTm_17(v26 + v48 + v7, v43);
    v30 = v42;
    Participant.asPendingAuthorization()(v29, v31, v32, v33, v34, v35, v36, v37, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53);
    _s15ConversationKit11ParticipantVWOhTm_18(v28, type metadata accessor for Participant);
    v38 = *(v1 + v13);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      specialized _ArrayBuffer._consumeAndCreateNew()();
      v38 = v40;
    }

    if (v19 < *(v38 + 16))
    {
      _s15ConversationKit11ParticipantVWOdTm_0(v30, v38 + v27 + v7);
      ConversationController.remoteParticipants.setter(v38, &OBJC_IVAR____TtC15ConversationKit22ConversationController_remoteParticipants, v39);
      goto LABEL_19;
    }

LABEL_28:
    __break(1u);
LABEL_29:
    swift_once();
  }

LABEL_21:

  return result;
}

uint64_t ConversationController.updateOtherInvitedParticipants()()
{
  v1 = v0;
  v2 = type metadata accessor for Participant(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v9 = static OS_dispatch_queue.main.getter();
  (*(v7 + 104))(v9, *MEMORY[0x1E69E8020], v6);
  v10 = _dispatchPreconditionTest(_:)();
  result = (*(v7 + 8))(v9, v6);
  if (v10)
  {
    ConversationController.lookupActiveConversation()();
    if (v36)
    {
      outlined init with take of TapInteractionHandler(&v35, v37);
      v12 = OBJC_IVAR____TtC15ConversationKit22ConversationController_otherInvitedParticipants;
      swift_beginAccess();
      v13 = *(v1 + v12);
      v14 = *(v13 + 16);
      v15 = MEMORY[0x1E69E7CC0];
      if (v14)
      {
        v33 = v12;
        v34[0] = MEMORY[0x1E69E7CC0];

        specialized ContiguousArray.reserveCapacity(_:)();
        v16 = v13 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
        v17 = *(v3 + 72);
        do
        {
          _s15ConversationKit11ParticipantVWOcTm_17(v16, v5);
          v18 = *&v5[*(v2 + 28)];
          if (v18)
          {
            v19 = v18;
          }

          _s15ConversationKit11ParticipantVWOhTm_18(v5, type metadata accessor for Participant);
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          v16 += v17;
          --v14;
        }

        while (v14);

        v12 = v33;
        v15 = v34[0];
      }

      v20 = v38;
      v21 = v39;
      __swift_project_boxed_opaque_existential_1(v37, v38);
      v22 = (*(v21 + 152))(v20, v21);
      v23 = specialized Set._Variant.filter(_:)(v22, v15);
      v24 = specialized Set.isEmpty.getter();
      if (v24)
      {
      }

      else
      {
        MEMORY[0x1EEE9AC00](v24);
        *(&v32 - 2) = v37;
        _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShySo8TUHandleCG_15ConversationKit11ParticipantVs5NeverOTg5(partial apply for closure #3 in ConversationController.updateOtherInvitedParticipants(), (&v32 - 4), v23);
        v26 = v25;

        v34[0] = *(v1 + v12);

        specialized Array.append<A>(contentsOf:)(v27);
        ConversationController.remoteParticipants.setter(v34[0], &OBJC_IVAR____TtC15ConversationKit22ConversationController_otherInvitedParticipants, v28);
        v29 = v1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didInviteOtherParticipants;
        swift_beginAccess();
        v30 = *v29;
        if (*v29)
        {
          v31 = *(v29 + 8);

          v30(v26);
          outlined consume of (@escaping @callee_guaranteed () -> ())?(v30, v31);
        }
      }

      return __swift_destroy_boxed_opaque_existential_1(v37);
    }

    else
    {
      return outlined destroy of CallControlsService?(&v35, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t ConversationController.videoProviderForResizingLocal.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = (&v26 - v5);
  ConversationController.remoteOneToOneParticipant.getter();
  v7 = type metadata accessor for Participant(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    v8 = &_s15ConversationKit11ParticipantVSgMd;
    v9 = &_s15ConversationKit11ParticipantVSgMR;
    v10 = v6;
LABEL_3:
    outlined destroy of CallControlsService?(v10, v8, v9);
    goto LABEL_9;
  }

  Participant.videoInfo.getter();
  _s15ConversationKit11ParticipantVWOhTm_18(v6, type metadata accessor for Participant);
  if (!v32)
  {
    goto LABEL_9;
  }

  v11 = v33;
  specialized Dictionary.subscript.getter();
  if (!v28)
  {
    outlined destroy of CallControlsService?(&v32, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd, &_s15ConversationKit11ParticipantV9VideoInfoVSgMR);
    v8 = &_s15ConversationKit24ParticipantVideoProvider_pSgMd;
    v9 = _s15ConversationKit24ParticipantVideoProvider_pSgMR;
    v10 = &v27;
    goto LABEL_3;
  }

  outlined init with take of TapInteractionHandler(&v27, &v29);
  v12 = ConversationController.isOneToOneModeEnabled.getter();
  outlined destroy of CallControlsService?(&v32, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd, &_s15ConversationKit11ParticipantV9VideoInfoVSgMR);
  if ((v12 & 1) != 0 && (v11 & 1) == 0)
  {
    return outlined init with take of TapInteractionHandler(&v29, a1);
  }

  __swift_destroy_boxed_opaque_existential_1(&v29);
LABEL_9:
  v13 = (v2 + OBJC_IVAR____TtC15ConversationKit22ConversationController_callCenter);
  swift_beginAccess();
  v14 = v13[3];
  v15 = v13[4];
  v16 = __swift_project_boxed_opaque_existential_1(v13, v14);
  v17 = *(v14 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v26 - v19;
  (*(v17 + 16))(&v26 - v19, v18);
  (*(v15 + 32))(&v29, v14, v15);
  (*(v17 + 8))(v20, v14);
  v21 = v30;
  v22 = v31;
  v23 = __swift_project_boxed_opaque_existential_1(&v29, v30);
  a1[3] = v21;
  a1[4] = v22;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  (*(*(v21 - 8) + 16))(boxed_opaque_existential_1, v23, v21);
  return __swift_destroy_boxed_opaque_existential_1(&v29);
}

void ConversationController.activeParticipant(correspondingTo:in:)(uint64_t a1, void *a2)
{
  v3 = a1 + *(type metadata accessor for Participant(0) + 28);
  v4 = *v3;
  if (*v3)
  {
    if (*(v3 + 16))
    {
      v5 = a2[3];
      v6 = a2[4];
      __swift_project_boxed_opaque_existential_1(a2, v5);
      v44 = v4;
      active = Conversation.displayableActiveParticipants.getter(v5, v6);
      if ((active & 0xC000000000000001) != 0)
      {
        swift_unknownObjectRetain();
        __CocoaSet.makeIterator()();
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationParticipant, 0x1E69D8B90);
        lazy protocol witness table accessor for type TUConversationInvitationPreference and conformance NSObject(&lazy protocol witness table cache variable for type TUConversationParticipant and conformance NSObject, &lazy cache variable for type metadata for TUConversationParticipant, 0x1E69D8B90);
        Set.Iterator.init(_cocoa:)();
        v9 = v46;
        v8 = v47;
        v11 = v48;
        v10 = v49;
        v12 = v50;
      }

      else
      {
        v22 = -1 << *(active + 32);
        v8 = active + 56;
        v11 = ~v22;
        v23 = -v22;
        if (v23 < 64)
        {
          v24 = ~(-1 << v23);
        }

        else
        {
          v24 = -1;
        }

        v12 = v24 & *(active + 56);
        v10 = 0;
      }

      v43 = v11;
      v25 = (v11 + 64) >> 6;
      if (v9 < 0)
      {
        goto LABEL_19;
      }

LABEL_13:
      v26 = v10;
      v27 = v12;
      v28 = v10;
      if (!v12)
      {
        while (1)
        {
          v28 = v26 + 1;
          if (__OFADD__(v26, 1))
          {
            break;
          }

          if (v28 >= v25)
          {
            goto LABEL_24;
          }

          v27 = *(v8 + 8 * v28);
          ++v26;
          if (v27)
          {
            goto LABEL_17;
          }
        }

        __break(1u);
LABEL_46:
        __break(1u);
        return;
      }

LABEL_17:
      v29 = (v27 - 1) & v27;
      v30 = *(*(v9 + 48) + ((v28 << 9) | (8 * __clz(__rbit64(v27)))));
      if (v30)
      {
        do
        {
          v31 = [v30 handle];
          v32 = [v31 isEqualToHandle_];

          if (v32)
          {
            break;
          }

          v10 = v28;
          v12 = v29;
          if ((v9 & 0x8000000000000000) == 0)
          {
            goto LABEL_13;
          }

LABEL_19:
          if (!__CocoaSet.Iterator.next()())
          {
            break;
          }

          type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationParticipant, 0x1E69D8B90);
          swift_dynamicCast();
          v30 = v45;
          v28 = v10;
          v29 = v12;
        }

        while (v45);
      }

LABEL_24:

      v33 = v9;
    }

    else
    {
      v13 = *(v3 + 8);
      v14 = a2[3];
      v15 = a2[4];
      __swift_project_boxed_opaque_existential_1(a2, v14);
      v16 = Conversation.displayableActiveParticipants.getter(v14, v15);
      if ((v16 & 0xC000000000000001) != 0)
      {
        swift_unknownObjectRetain();
        __CocoaSet.makeIterator()();
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationParticipant, 0x1E69D8B90);
        lazy protocol witness table accessor for type TUConversationInvitationPreference and conformance NSObject(&lazy protocol witness table cache variable for type TUConversationParticipant and conformance NSObject, &lazy cache variable for type metadata for TUConversationParticipant, 0x1E69D8B90);
        Set.Iterator.init(_cocoa:)();
        v18 = v46;
        v17 = v47;
        v19 = v48;
        v20 = v49;
        v21 = v50;
      }

      else
      {
        v34 = -1 << *(v16 + 32);
        v17 = v16 + 56;
        v19 = ~v34;
        v35 = -v34;
        if (v35 < 64)
        {
          v36 = ~(-1 << v35);
        }

        else
        {
          v36 = -1;
        }

        v21 = v36 & *(v16 + 56);
        v20 = 0;
      }

      v37 = (v19 + 64) >> 6;
      if (v18 < 0)
      {
        goto LABEL_36;
      }

LABEL_30:
      v38 = v20;
      v39 = v21;
      for (i = v20; !v39; ++v38)
      {
        i = v38 + 1;
        if (__OFADD__(v38, 1))
        {
          goto LABEL_46;
        }

        if (i >= v37)
        {
          goto LABEL_41;
        }

        v39 = *(v17 + 8 * i);
      }

      v41 = (v39 - 1) & v39;
      v42 = *(*(v18 + 48) + ((i << 9) | (8 * __clz(__rbit64(v39)))));
      if (v42)
      {
        while ([v42 identifier] != v13)
        {

          v20 = i;
          v21 = v41;
          if ((v18 & 0x8000000000000000) == 0)
          {
            goto LABEL_30;
          }

LABEL_36:
          if (__CocoaSet.Iterator.next()())
          {
            type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationParticipant, 0x1E69D8B90);
            swift_dynamicCast();
            v42 = v45;
            i = v20;
            v41 = v21;
            if (v45)
            {
              continue;
            }
          }

          goto LABEL_41;
        }

        v33 = v18;
      }

      else
      {
LABEL_41:
        v33 = v18;
      }
    }

    outlined consume of Set<TUHandle>.Iterator._Variant(v33);
  }
}

void ConversationController.scheduleResetVideoInfo(for:after:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_48_2();
  v26 = v22;
  v28 = v27;
  v147 = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  OUTLINED_FUNCTION_22(v30);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_13_1();
  v137 = v32;
  OUTLINED_FUNCTION_4_24();
  type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_1();
  v135 = v34;
  v136 = v33;
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_16(v35);
  v134 = type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_1();
  v133 = v36;
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_16(v38);
  v144 = type metadata accessor for DispatchTime();
  OUTLINED_FUNCTION_1();
  v132 = v39;
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_32();
  v142 = v43;
  OUTLINED_FUNCTION_4_24();
  v145 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v45 = v44;
  MEMORY[0x1EEE9AC00](v46);
  v130 = v47;
  OUTLINED_FUNCTION_10(&v123 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0));
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v49 = OUTLINED_FUNCTION_22(v48);
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_4();
  v143 = v50;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_170_4();
  v52 = type metadata accessor for Date();
  OUTLINED_FUNCTION_1();
  v54 = v53;
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_35_6();
  MEMORY[0x1EEE9AC00](v56);
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_83_1();
  Date.init()();
  Date.addingTimeInterval(_:)();
  v58 = *(v54 + 8);
  v59 = OUTLINED_FUNCTION_252();
  v58(v59);
  v60 = OBJC_IVAR____TtC15ConversationKit22ConversationController_scheduledVideoInfoResetDates;
  swift_beginAccess();
  v146 = v26;
  v141 = v60;
  v61 = v147;
  specialized Dictionary.subscript.getter();
  OUTLINED_FUNCTION_115(v25, 1, v52);
  v138 = v58;
  v139 = v54 + 8;
  if (v62)
  {
    outlined destroy of CallControlsService?(v25, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    swift_endAccess();
    v63 = v52;
  }

  else
  {
    v64 = OUTLINED_FUNCTION_299();
    v65(v64);
    swift_endAccess();
    OUTLINED_FUNCTION_258_0();
    v66 = static Date.> infix(_:_:)();
    (v58)(v23, v52);
    v63 = v52;
    if (v66)
    {
      goto LABEL_8;
    }
  }

  v140 = *(v45 + 16);
  v67 = v131;
  v140(v131, v61, v145);
  v68 = *(v54 + 16);
  v69 = v143;
  v126 = v24;
  v68(v143, v24, v63);
  OUTLINED_FUNCTION_12();
  v127 = v63;
  __swift_storeEnumTagSinglePayload(v70, v71, v72, v63);
  OUTLINED_FUNCTION_30_2(v146 + v141, v148);
  specialized Dictionary.subscript.setter();
  swift_endAccess();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  v125 = static OS_dispatch_queue.main.getter();
  v73 = v128;
  static DispatchTime.now()();
  OUTLINED_FUNCTION_417_0();
  + infix(_:_:)(v28);
  v74 = *(v132 + 8);
  v74(v73, v144);
  v124 = v74;
  + infix(_:_:)(0.01);
  v75 = OUTLINED_FUNCTION_46();
  (v74)(v75);
  OUTLINED_FUNCTION_20();
  v76 = swift_allocObject();
  OUTLINED_FUNCTION_247_0(v76);
  swift_unknownObjectWeakInit();
  v77 = OUTLINED_FUNCTION_77_1();
  v78 = v145;
  v132 = v45 + 16;
  (v140)(v77);
  v79 = (*(v45 + 80) + 24) & ~*(v45 + 80);
  v80 = swift_allocObject();
  *(v80 + 16) = v69;
  v81 = v67;
  v82 = v78;
  (*(v45 + 32))(v80 + v79, v81, v78);
  v148[4] = partial apply for closure #1 in ConversationController.scheduleResetVideoInfo(for:after:);
  v148[5] = v80;
  v148[0] = MEMORY[0x1E69E9820];
  v148[1] = 1107296256;
  v148[2] = thunk for @escaping @callee_guaranteed () -> ();
  v148[3] = &block_descriptor_161;
  v83 = _Block_copy(v148);

  OUTLINED_FUNCTION_502();
  static DispatchQoS.unspecified.getter();
  v148[0] = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_3_164();
  v86 = lazy protocol witness table accessor for type ConversationController and conformance ConversationController(v84, v85);
  v87 = OUTLINED_FUNCTION_325_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(v87, v88);
  OUTLINED_FUNCTION_9_8();
  lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(v89, v90, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  OUTLINED_FUNCTION_462();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v91 = v142;
  v92 = OUTLINED_FUNCTION_62_0();
  v93 = v125;
  MEMORY[0x1BFB21510](v92);
  _Block_release(v83);

  v94 = OUTLINED_FUNCTION_157();
  v95(v94);
  OUTLINED_FUNCTION_23_26();
  v96(v45 + 16, v134);
  v124(v91, v144);
  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  OUTLINED_FUNCTION_194();
  v97 = swift_allocObject();
  *(v97 + 16) = xmmword_1BC4BAA20;
  v98 = v141;
  swift_beginAccess();
  v99 = v143;
  specialized Dictionary.subscript.getter();
  swift_endAccess();
  specialized >> prefix<A>(_:)(v99, v100, v101, v102, v103, v104, v105, v106, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132);
  OUTLINED_FUNCTION_213();
  outlined destroy of CallControlsService?(v99, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v107 = MEMORY[0x1E69E6158];
  *(v97 + 56) = MEMORY[0x1E69E6158];
  v108 = lazy protocol witness table accessor for type String and conformance String();
  *(v97 + 64) = v108;
  *(v97 + 32) = v98;
  *(v97 + 40) = v86;
  v109 = v137;
  v110 = OUTLINED_FUNCTION_2_100();
  (v140)(v110);
  v111 = OUTLINED_FUNCTION_127_2();
  __swift_storeEnumTagSinglePayload(v111, v112, v113, v82);
  specialized >> prefix<A>(_:)(v109, v114, v115, v116, v117, v118, v119, v120, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132);
  OUTLINED_FUNCTION_213();
  outlined destroy of CallControlsService?(v109, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  *(v97 + 96) = v107;
  *(v97 + 104) = v108;
  *(v97 + 72) = v98;
  *(v97 + 80) = v86;
  static os_log_type_t.default.getter();
  OUTLINED_FUNCTION_41_0();
  os_log(_:dso:log:type:_:)(v121);

LABEL_8:
  v122 = OUTLINED_FUNCTION_281();
  v138(v122);
  OUTLINED_FUNCTION_20_6();
}

uint64_t ConversationController.updateActiveParticipant(_:with:in:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v148 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v147 = &v136 - v8;
  v9 = type metadata accessor for Participant(0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v136 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a1 isVideoEnabled] && objc_msgSend(a1, sel_streamToken))
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v145.i32[0] = (*(*static Defaults.shared + 152))();
  }

  else
  {
    v145.i32[0] = 0;
  }

  if ([a1 isScreenEnabled])
  {
    v13 = [a1 screenToken] != 0;
  }

  else
  {
    v13 = 0;
  }

  v14 = a3;
  v15 = v153;
  ConversationController.copresenceInfo(for:in:)(a1, v14, v177);
  v16 = *(v15 + OBJC_IVAR____TtC15ConversationKit22ConversationController_mode);
  if (v16 == 1)
  {
    v17 = ConversationController.captionsProvider(for:token:)(a2, [a1 captionsToken]);
    v19 = MEMORY[0x1E69E7CC0];
    if (v17)
    {
      v20 = v17;
    }

    else
    {
      v20 = 0;
    }

    if (v17)
    {
      v21 = v18;
    }

    else
    {
      v21 = 0;
    }

    v151 = v21;
    v152 = v20;
    if (!v17)
    {
      v19 = 0;
    }

    v150 = v19;
  }

  else
  {
    v151 = 0;
    v152 = 0;
    v150 = 0;
  }

  v22 = a1;
  LODWORD(v146) = Participant.AVInfo.init(for:)(v22);
  v24 = v23;
  v149 = a2;
  if (v13)
  {
    v144 = v23;
    if (v16 == 2)
    {
      ConversationController.remoteVideoClient(for:ofType:token:)(a2, 3, [v22 screenToken], &v161);
      v25 = Participant.screenState.getter();
      v143 = v12;
      if (v25 == 2)
      {
        LODWORD(v141) = 0;
        v140 = 0;
      }

      else
      {
        HIDWORD(v140) = HIWORD(v25) & 1;
        LODWORD(v141) = (v25 >> 8) & 1;
        LODWORD(v140) = HIBYTE(v25) & 1;
      }

      v32 = *(&v162 + 1);
      v33 = v163;
      __swift_project_boxed_opaque_existential_1(&v161, *(&v162 + 1));
      LODWORD(v139) = (*(v33 + 16))(v32, v33);
      v34 = *(&v162 + 1);
      v35 = v163;
      __swift_project_boxed_opaque_existential_1(&v161, *(&v162 + 1));
      v36 = (*(v35 + 40))(v34, v35);
      if ((v36 & 0x100000000) != 0)
      {
        LODWORD(v36) = 0;
      }

      v37 = VideoAttributeOrientation.deviceOrientation.getter(v36);
      v38 = (v153 + OBJC_IVAR____TtC15ConversationKit22ConversationController_latestRemoteAttributes);
      if (*(v153 + OBJC_IVAR____TtC15ConversationKit22ConversationController_latestRemoteAttributes + 96))
      {
        v39 = 0;
      }

      else
      {
        v39 = v38[9];
      }

      v40 = *(&v162 + 1);
      v41 = v163;
      __swift_project_boxed_opaque_existential_1(&v161, *(&v162 + 1));
      v42 = COERCE_DOUBLE((*(v41 + 80))(v40, v41));
      if (v44)
      {
        v45 = 0.0;
      }

      else
      {
        v45 = v42;
      }

      if (v44)
      {
        v46 = 0.0;
      }

      else
      {
        v46 = v43;
      }

      *&v138[4] = v37;
      v47 = ConversationController.remoteOrientationFor(aspectRatio:videoRotation:deviceFamily:)(v37, v39, v45, v46);
      v48 = *(&v162 + 1);
      v49 = v163;
      __swift_project_boxed_opaque_existential_1(&v161, *(&v162 + 1));
      (*(v49 + 64))(v178, v48, v49);
      v50 = *&v178[2];
      v51 = *&v178[3];
      if (v179)
      {
        v50 = 0.0;
        v51 = 0.0;
      }

      if (v46 >= v45)
      {
        v52 = v45;
      }

      else
      {
        v52 = v46;
      }

      if (v45 > v46)
      {
        v53 = v45;
      }

      else
      {
        v53 = v46;
      }

      v54 = ceil(v52 * v50);
      v55 = ceil(v53 * v51);
      v56 = ceil(v53 * v50);
      v57 = ceil(v52 * v51);
      outlined init with copy of CallCenterProvider(&v161, v160);
      memcpy(v154, v38, 0x61uLL);
      v58 = *(&v162 + 1);
      v59 = v163;
      __swift_project_boxed_opaque_existential_1(&v161, *(&v162 + 1));
      v60 = (*(v59 + 72))(v58, v59);
      v164 = 0u;
      v165 = 0u;
      v166 = 0;
      LOBYTE(v159[0]) = 1;
      memset(v176, 0, 96);
      v176[96] = 1;
      outlined assign with take of UICollectionView.SupplementaryRegistration<InCallControlsSectionHeaderView>?(v160, &v164, &_s15ConversationKit24ParticipantVideoProvider_pSgMd, _s15ConversationKit24ParticipantVideoProvider_pSgMR);
      v167 = v139 & 1;
      v168 = v141;
      v169 = BYTE4(v140);
      v170 = v140;
      memcpy(v176, v154, sizeof(v176));
      v171.i64[0] = v47;
      v171.i64[1] = *&v138[4];
      *&v172 = v54;
      *(&v172 + 1) = v55;
      *&v173 = v56;
      *(&v173 + 1) = v57;
      v174 = 0;
      v175 = *&v60;
      __swift_destroy_boxed_opaque_existential_1(&v161);
      v12 = v143;
    }

    else
    {
      v142 = v9;
      v26 = v12;
      v27 = Participant.screenState.getter();
      if (v27 == 2)
      {
        LOBYTE(v28) = 0;
        LOBYTE(v29) = 0;
        LOBYTE(v30) = 0;
        v31 = 1;
      }

      else
      {
        v31 = v27;
        v28 = (v27 >> 8) & 1;
        v29 = HIWORD(v27) & 1;
        v30 = HIBYTE(v27) & 1;
      }

      v163 = 0;
      v161 = 0u;
      v162 = 0u;
      memcpy(v154, (v15 + OBJC_IVAR____TtC15ConversationKit22ConversationController_latestRemoteAttributes), 0x61uLL);
      v164 = 0u;
      v165 = 0u;
      v166 = 0;
      LOBYTE(v160[0]) = 1;
      memset(v176, 0, 96);
      v176[96] = 1;
      outlined assign with take of UICollectionView.SupplementaryRegistration<InCallControlsSectionHeaderView>?(&v161, &v164, &_s15ConversationKit24ParticipantVideoProvider_pSgMd, _s15ConversationKit24ParticipantVideoProvider_pSgMR);
      v167 = v31 & 1;
      v168 = v28;
      v169 = v29;
      v170 = v30;
      memcpy(v176, v154, sizeof(v176));
      v171 = vdupq_n_s64(1uLL);
      v172 = 0u;
      v173 = 0u;
      v174 = 1;
      v175 = 0x3FF0000000000000;
      v12 = v26;
      v9 = v142;
    }

    a2 = v149;
    v24 = v144;
  }

  else
  {
    v164 = 0uLL;
    *&v165 = 0;
    *(&v165 + 1) = 1;
    bzero(&v166, 0xB1uLL);
  }

  if ((v145.i8[0] & 1) == 0)
  {
    goto LABEL_57;
  }

  if (v16 == 1)
  {
    v143 = v12;
    v144 = v24;
    v61 = [v22 streamToken];
    ConversationController.remoteVideoClient(for:ofType:token:)(a2, 1, v61, v160);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit11ParticipantV17VideoProviderTypeO_AC0fgH0_ptGMd, &_ss23_ContiguousArrayStorageCy15ConversationKit11ParticipantV17VideoProviderTypeO_AC0fgH0_ptGMR);
    v62 = swift_allocObject();
    *(v62 + 16) = xmmword_1BC4BAA20;
    *(v62 + 32) = 0;
    outlined init with copy of CallCenterProvider(&v161, v62 + 40);
    *(v62 + 80) = 1;
    outlined init with copy of CallCenterProvider(v160, v62 + 88);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit24ParticipantVideoProvider_pMd, &_s15ConversationKit24ParticipantVideoProvider_pMR);
    lazy protocol witness table accessor for type Participant.VideoProviderType and conformance Participant.VideoProviderType();
    v145.i64[0] = Dictionary.init(dictionaryLiteral:)();
    v63 = Participant.videoState.getter();
    v142 = v9;
    if (v63 == 2)
    {
      v65 = *(&v162 + 1);
      v66 = v163;
      __swift_project_boxed_opaque_existential_1(&v161, *(&v162 + 1));
      LOBYTE(v65) = (*(v66 + 16))(v65, v66);
      v67 = *(&v162 + 1);
      v68 = v163;
      __swift_project_boxed_opaque_existential_1(&v161, *(&v162 + 1));
      v69 = (*(v68 + 24))(v67, v68);
      v140 = 0;
      v141 = 0;
      *&v138[8] = 0;
      v139 = 0;
      v137 = 0;
      v70 = 0;
      LOBYTE(v71) = 0;
      *v138 = v65 & 1;
      LOBYTE(v72) = v69 & 1;
    }

    else
    {
      v141 = v63 >> 24;
      *v138 = v63 & 1;
      LODWORD(v140) = WORD1(v63) & 1;
      HIDWORD(v140) = (v63 >> 8) & 1;
      v72 = (v63 >> 40) & 1;
      *&v138[4] = HIWORD(v63) & 1;
      v139 = HIDWORD(v63) & 1;
      v137 = HIBYTE(v63) & 1;
      v70 = v64 & 1;
      v71 = (v64 >> 8) & 1;
    }

    v78 = *(&v162 + 1);
    v79 = v163;
    __swift_project_boxed_opaque_existential_1(&v161, *(&v162 + 1));
    v80 = (*(v79 + 40))(v78, v79);
    if ((v80 & 0x100000000) != 0)
    {
      LODWORD(v80) = 0;
    }

    v81 = VideoAttributeOrientation.deviceOrientation.getter(v80);
    v82 = *(&v162 + 1);
    v83 = v163;
    __swift_project_boxed_opaque_existential_1(&v161, *(&v162 + 1));
    v84 = (*(v83 + 56))(v82, v83);
    if ((v84 & 0x100000000) != 0)
    {
      LODWORD(v84) = 0;
    }

    v85 = VideoAttributeCamera.cameraPosition.getter(v84);
    outlined init with copy of CallCenterProvider(&v161, v159);
    if (ConversationController.isOneToOneModeEnabled.getter())
    {
      v86 = 0.0;
      static AspectRatio.remoteAspectRatios(with:contentsRect:)(v159, v154, 1.0, 1.0);
      v87 = *(v154 + 1);
      v88 = *v154;
      v89 = v154[1];
      v90 = *(&v154[1] + 1);
      v91 = *&v154[2];
      v92 = BYTE8(v154[2]);
      __swift_destroy_boxed_opaque_existential_1(v159);
      if ((v89 & 1) == 0 && v88 != v87)
      {
        v93 = 0;
        if (v92)
        {
          v90 = v87;
          v91 = v88;
        }

        v86 = v88;
        goto LABEL_75;
      }

      v93 = 1;
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(v159);
      v93 = 1;
      v86 = 0.0;
    }

    v87 = 0.0;
    v90 = 0.0;
    v91 = 0.0;
LABEL_75:
    v94 = [v22 isCameraMixedWithScreen];
    v158 = v93;
    *&v154[0] = v145.i64[0];
    BYTE8(v154[0]) = v138[0];
    BYTE9(v154[0]) = BYTE4(v140);
    BYTE10(v154[0]) = v140;
    BYTE11(v154[0]) = v141;
    BYTE12(v154[0]) = v139;
    BYTE13(v154[0]) = v72;
    BYTE14(v154[0]) = v138[4];
    HIBYTE(v154[0]) = v137;
    LOBYTE(v154[1]) = v70;
    BYTE1(v154[1]) = v71;
    *(&v154[1] + 1) = v81;
    LOBYTE(v154[2]) = v85;
    *(&v154[2] + 1) = v86;
    *&v154[3] = v87;
    *(&v154[3] + 1) = v90;
    *&v154[4] = v91;
    BYTE8(v154[4]) = v93;
    *(&v154[4] + 9) = v94;
    v12 = v143;
    Participant.asJoined(avInfo:videoInfo:screenInfo:captionInfo:copresenceInfo:)();

    v156 = 0;
    v157 = 0xE000000000000000;
    _StringGuts.grow(_:)(142);
    MEMORY[0x1BFB20B10](0xD000000000000031, 0x80000001BC521AA0);
    v95 = [v22 isVideoEnabled];
    v96 = v95 == 0;
    if (v95)
    {
      v97 = 1702195828;
    }

    else
    {
      v97 = 0x65736C6166;
    }

    if (v96)
    {
      v98 = 0xE500000000000000;
    }

    else
    {
      v98 = 0xE400000000000000;
    }

    MEMORY[0x1BFB20B10](v97, v98);

    MEMORY[0x1BFB20B10](0xD00000000000001ALL, 0x80000001BC521BD0);
    v99 = *(&v162 + 1);
    v100 = v163;
    __swift_project_boxed_opaque_existential_1(&v161, *(&v162 + 1));
    v101 = (*(v100 + 16))(v99, v100);
    v102 = (v101 & 1) == 0;
    if (v101)
    {
      v103 = 1702195828;
    }

    else
    {
      v103 = 0x65736C6166;
    }

    if (v102)
    {
      v104 = 0xE500000000000000;
    }

    else
    {
      v104 = 0xE400000000000000;
    }

    MEMORY[0x1BFB20B10](v103, v104);

    MEMORY[0x1BFB20B10](0x6D61657274730A2CLL, 0xEE003D6E656B6F54);
    v155 = [v22 streamToken];
    v105 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1BFB20B10](v105);

    MEMORY[0x1BFB20B10](0xD00000000000002DLL, 0x80000001BC521BF0);
    v9 = v142;
    _print_unlocked<A, B>(_:_:)();
    v146 = v156;
    v145.i64[0] = v157;
    __swift_destroy_boxed_opaque_existential_1(v160);
    __swift_destroy_boxed_opaque_existential_1(&v161);
    goto LABEL_98;
  }

  if (!v16)
  {
    v143 = v12;
    v144 = v24;
    v142 = v9;
    v106 = Participant.videoState.getter();
    if (v106 == 2)
    {
      LOBYTE(v108) = 0;
      LOBYTE(v109) = 0;
      LOBYTE(v110) = 0;
      v111 = 0;
      LOBYTE(v112) = 0;
      v145 = 0u;
      v113 = 1;
    }

    else
    {
      v110 = v106 >> 24;
      v113 = v106 & 1;
      v108 = (v106 >> 8) & 1;
      v109 = WORD1(v106) & 1;
      v114 = vdupq_n_s64(v106);
      v115 = vuzp1q_s32(vshlq_u64(v114, xmmword_1BC4E9680), vshlq_u64(v114, xmmword_1BC4E9670));
      *v115.i8 = vand_s8(vmovn_s32(v115), 0x1000100010001);
      v145 = v115;
      v111 = v107 & 1;
      v112 = (v107 >> 8) & 1;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit24ParticipantVideoProvider_pMd, &_s15ConversationKit24ParticipantVideoProvider_pMR);
    lazy protocol witness table accessor for type Participant.VideoProviderType and conformance Participant.VideoProviderType();
    v116 = Dictionary.init(dictionaryLiteral:)();
    v117 = [v22 isCameraMixedWithScreen];
    LOBYTE(v159[0]) = 1;
    *&v154[0] = v116;
    BYTE8(v154[0]) = v113;
    BYTE9(v154[0]) = v108;
    BYTE10(v154[0]) = v109;
    BYTE11(v154[0]) = v110;
    HIDWORD(v154[0]) = vuzp1_s8(*v145.i8, *v145.i8).u32[0];
    LOBYTE(v154[1]) = v111;
    BYTE1(v154[1]) = v112;
    *(&v154[1] + 1) = 1;
    LOBYTE(v154[2]) = 2;
    *(&v154[2] + 8) = 0u;
    *(&v154[3] + 8) = 0u;
    BYTE8(v154[4]) = 1;
    *(&v154[4] + 9) = v117;
    v12 = v143;
    Participant.asJoined(avInfo:videoInfo:screenInfo:captionInfo:copresenceInfo:)();

    *&v161 = 0;
    *(&v161 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(132);
    MEMORY[0x1BFB20B10](0xD000000000000031, 0x80000001BC521AA0);
    v118 = [v22 isVideoEnabled];
    v119 = v118 == 0;
    if (v118)
    {
      v120 = 1702195828;
    }

    else
    {
      v120 = 0x65736C6166;
    }

    if (v119)
    {
      v121 = 0xE500000000000000;
    }

    else
    {
      v121 = 0xE400000000000000;
    }

    MEMORY[0x1BFB20B10](v120, v121);

    MEMORY[0x1BFB20B10](0x6D6165727473202CLL, 0xEE003D6E656B6F54);
    v160[0] = [v22 streamToken];
    v122 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1BFB20B10](v122);

    MEMORY[0x1BFB20B10](0xD00000000000003FLL, 0x80000001BC521B90);
    v9 = v142;
    _print_unlocked<A, B>(_:_:)();
    v145.i64[0] = *(&v161 + 1);
    v146 = v161;
  }

  else
  {
LABEL_57:
    memset(v154, 0, 75);
    Participant.asJoined(avInfo:videoInfo:screenInfo:captionInfo:copresenceInfo:)();
    *&v161 = 0;
    *(&v161 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(131);
    MEMORY[0x1BFB20B10](0xD000000000000031, 0x80000001BC521AA0);
    v73 = [v22 isVideoEnabled];
    v74 = v73 == 0;
    if (v73)
    {
      v75 = 1702195828;
    }

    else
    {
      v75 = 0x65736C6166;
    }

    if (v74)
    {
      v76 = 0xE500000000000000;
    }

    else
    {
      v76 = 0xE400000000000000;
    }

    MEMORY[0x1BFB20B10](v75, v76);

    MEMORY[0x1BFB20B10](0x6D6165727473202CLL, 0xEE003D6E656B6F54);
    v160[0] = [v22 streamToken];
    v77 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1BFB20B10](v77);

    MEMORY[0x1BFB20B10](0xD00000000000003ELL, 0x80000001BC521AE0);
    _print_unlocked<A, B>(_:_:)();
    v145.i64[0] = *(&v161 + 1);
    v146 = v161;
  }

LABEL_98:
  v123 = [v22 capabilities];
  v124 = [v123 isMomentsAvailable];

  if (v124)
  {
    v153 = ConversationController.momentsLocallyAvailable.getter();
  }

  else
  {
    v153 = 0;
  }

  v125 = [v22 capabilities];
  LODWORD(v144) = [v125 isScreenSharingAvailable];

  v126 = [v22 capabilities];
  [v126 isGondolaCallingAvailable];

  v127 = [v22 capabilities];
  [v127 supportsRequestToScreenShare];

  [v22 identifier];
  v128 = v12;
  v129 = [v22 avcIdentifier];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v130 = v147;
  Participant.with(idsIdentifier:avcIdentifier:capabilities:nickname:)();

  if (__swift_getEnumTagSinglePayload(v130, 1, v9) == 1)
  {
    outlined destroy of CallControlsService?(v130, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
    *&v161 = 0;
    *(&v161 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(54);
    MEMORY[0x1BFB20B10](0xD000000000000034, 0x80000001BC521B50);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    outlined destroy of CallControlsService?(v177, &_s15ConversationKit11ParticipantV14CopresenceInfoVSgMd, &_s15ConversationKit11ParticipantV14CopresenceInfoVSgMR);
    _s15ConversationKit11ParticipantVWObTm_8(v130, v148);
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    v131 = static OS_os_log.conversationKit;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v132 = swift_allocObject();
    *(v132 + 16) = xmmword_1BC4BA940;
    *(v132 + 56) = MEMORY[0x1E69E6158];
    *(v132 + 64) = lazy protocol witness table accessor for type String and conformance String();
    v133 = v145.i64[0];
    *(v132 + 32) = v146;
    *(v132 + 40) = v133;
    v134 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("%@", 2, 2, &dword_1BBC58000, v131, v134, v132);

    outlined consume of Participant.CaptionInfo?(v152);
    _s15ConversationKit11ParticipantVWOhTm_18(v128, type metadata accessor for Participant);
    return outlined destroy of CallControlsService?(&v164, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMR);
  }

  return result;
}

void ConversationController.removeParticipant(_:at:)(uint64_t a1, unint64_t a2)
{
  v5 = v2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v49 - v9;
  v11 = ConversationController.visibleParticipants.getter();
  v12 = OBJC_IVAR____TtC15ConversationKit22ConversationController_remoteParticipants;
  swift_beginAccess();
  v13 = *(v5 + v12);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    specialized _ArrayBuffer._consumeAndCreateNew()();
    v13 = v48;
  }

  v14 = *(v13 + 16);
  if (v14 <= a2)
  {
    __break(1u);
LABEL_15:
    swift_once();
    goto LABEL_6;
  }

  v15 = v14 - 1;
  v3 = type metadata accessor for Participant(0);
  v16 = *(*(v3 - 8) + 72);
  v17 = v13 + ((*(*(v3 - 8) + 80) + 32) & ~*(*(v3 - 8) + 80)) + v16 * a2;
  _s15ConversationKit11ParticipantVWOhTm_18(v17, type metadata accessor for Participant);
  specialized UnsafeMutablePointer.moveInitialize(from:count:)(v17 + v16, v15 - a2, v17);
  *(v13 + 16) = v15;
  ConversationController.remoteParticipants.setter(v13, &OBJC_IVAR____TtC15ConversationKit22ConversationController_remoteParticipants, v18);
  MEMORY[0x1EEE9AC00](v19);
  *(&v49 - 2) = a1;
  v20 = specialized Collection.firstIndex(where:)(partial apply for closure #1 in ConversationController.removeParticipant(_:at:), (&v49 - 4), v11);
  v22 = v21;

  v4 = &static OS_os_log.conversationKit;
  v23 = MEMORY[0x1E69E6158];
  if (v22)
  {
    goto LABEL_8;
  }

  v50 = v20;
  a2 = MEMORY[0x1E69E6158];
  if (one-time initialization token for conversationKit != -1)
  {
    goto LABEL_15;
  }

LABEL_6:
  v49 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1BC4BAA20;
  _s15ConversationKit11ParticipantVWOcTm_17(a1, v10);
  __swift_storeEnumTagSinglePayload(v10, 0, 1, v3);
  specialized >> prefix<A>(_:)();
  v26 = v25;
  v27 = v4;
  v29 = v28;
  outlined destroy of CallControlsService?(v10, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  *(v24 + 56) = a2;
  v30 = lazy protocol witness table accessor for type String and conformance String();
  *(v24 + 64) = v30;
  *(v24 + 32) = v26;
  *(v24 + 40) = v29;
  v23 = a2;
  v4 = v27;
  v31 = v50;
  v51 = v50;
  v32 = String.init<A>(reflecting:)();
  *(v24 + 96) = a2;
  *(v24 + 104) = v30;
  *(v24 + 72) = v32;
  *(v24 + 80) = v33;
  v34 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Removed participant %@ at index %@", 34, 2, &dword_1BBC58000, v49, v34, v24);

  v35 = v5 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didRemoveVisibleParticipant;
  swift_beginAccess();
  v36 = *v35;
  if (*v35)
  {
    v37 = *(v35 + 8);

    v36(a1, v31);
    outlined consume of (@escaping @callee_guaranteed () -> ())?(v36, v37);
  }

LABEL_8:
  if (Participant.isPendingAuthorization.getter())
  {
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    v38 = *v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_1BC4BA940;
    _s15ConversationKit11ParticipantVWOcTm_17(a1, v10);
    __swift_storeEnumTagSinglePayload(v10, 0, 1, v3);
    specialized >> prefix<A>(_:)();
    v41 = v40;
    v43 = v42;
    outlined destroy of CallControlsService?(v10, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
    *(v39 + 56) = v23;
    *(v39 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v39 + 32) = v41;
    *(v39 + 40) = v43;
    v44 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Removed pending participant %@", 30, 2, &dword_1BBC58000, v38, v44, v39);

    v45 = v5 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didRemovePendingParticipant;
    swift_beginAccess();
    v46 = *v45;
    if (*v45)
    {
      v47 = *(v45 + 8);

      v46(a1);
      outlined consume of (@escaping @callee_guaranteed () -> ())?(v46, v47);
    }
  }
}

void ConversationController.removeAllParticipants()()
{
  v1 = v0;
  v2 = type metadata accessor for Participant(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v9 = static OS_dispatch_queue.main.getter();
  (*(v7 + 104))(v9, *MEMORY[0x1E69E8020], v6);
  v10 = _dispatchPreconditionTest(_:)();
  (*(v7 + 8))(v9, v6);
  if (v10)
  {
    ConversationController.remoteParticipants.setter(MEMORY[0x1E69E7CC0], &OBJC_IVAR____TtC15ConversationKit22ConversationController_otherInvitedParticipants, v11);
    v12 = OBJC_IVAR____TtC15ConversationKit22ConversationController_remoteParticipants;
    swift_beginAccess();
    while (1)
    {
      v13 = *(v1 + v12);
      if (!*(v13 + 16))
      {
        break;
      }

      _s15ConversationKit11ParticipantVWOcTm_17(v13 + ((*(v3 + 80) + 32) & ~*(v3 + 80)), v5);
      ConversationController.removeParticipant(_:at:)(v5, 0);
      _s15ConversationKit11ParticipantVWOhTm_18(v5, type metadata accessor for Participant);
    }
  }

  else
  {
    __break(1u);
  }
}

void closure #1 in ConversationController.createNewParticipants(with:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v43 - v5;
  v7 = type metadata accessor for Participant(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s15ConversationKit11ParticipantVWOcTm_17(a1, v10);
  v11 = OBJC_IVAR____TtC15ConversationKit22ConversationController_remoteParticipants;
  swift_beginAccess();
  v12 = *(a2 + v11);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v12 = v41;
  }

  v13 = *(v12 + 16);
  if (v13 >= *(v12 + 24) >> 1)
  {
    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v12 = v42;
  }

  *(v12 + 16) = v13 + 1;
  _s15ConversationKit11ParticipantVWObTm_8(v10, v12 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v13);
  ConversationController.remoteParticipants.setter(v12, &OBJC_IVAR____TtC15ConversationKit22ConversationController_remoteParticipants, v14);
  v15 = ConversationController.visibleParticipants.getter();
  v16 = specialized Collection<>.firstIndex(of:)(a1, v15);
  v18 = v17;

  if (v18)
  {
    v45 = 0;
    v46 = 0xE000000000000000;
    _StringGuts.grow(_:)(56);
    MEMORY[0x1BFB20B10](0xD000000000000036, 0x80000001BC522370);
    _print_unlocked<A, B>(_:_:)();
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v44 = a2;
  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  v19 = static OS_os_log.conversationKit;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1BC4BAA20;
  v43 = v16;
  v45 = v16;
  v21 = String.init<A>(reflecting:)();
  v23 = v22;
  v24 = MEMORY[0x1E69E6158];
  *(v20 + 56) = MEMORY[0x1E69E6158];
  v25 = lazy protocol witness table accessor for type String and conformance String();
  *(v20 + 64) = v25;
  *(v20 + 32) = v21;
  *(v20 + 40) = v23;
  _s15ConversationKit11ParticipantVWOcTm_17(a1, v6);
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v7);
  specialized >> prefix<A>(_:)();
  v27 = v26;
  v29 = v28;
  outlined destroy of CallControlsService?(v6, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  *(v20 + 96) = v24;
  *(v20 + 104) = v25;
  *(v20 + 72) = v27;
  *(v20 + 80) = v29;
  v30 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Inserted new participant at index %@: %@", 40, 2, &dword_1BBC58000, v19, v30, v20);

  if (Participant.isPendingAuthorization.getter())
  {
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_1BC4BA940;
    _s15ConversationKit11ParticipantVWOcTm_17(a1, v6);
    __swift_storeEnumTagSinglePayload(v6, 0, 1, v7);
    specialized >> prefix<A>(_:)();
    v33 = v32;
    v35 = v34;
    outlined destroy of CallControlsService?(v6, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
    *(v31 + 56) = MEMORY[0x1E69E6158];
    *(v31 + 64) = v25;
    *(v31 + 32) = v33;
    *(v31 + 40) = v35;
    v36 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Added new pending participant %@", 32, 2, &dword_1BBC58000, v19, v36, v31);

    v37 = v44 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didAddPendingParticipant;
    swift_beginAccess();
    v38 = *v37;
    if (!*v37)
    {
      return;
    }

    v39 = *(v37 + 8);

    v38(a1);
  }

  else
  {
    v40 = v44 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didAddVisibleParticipant;
    swift_beginAccess();
    v38 = *v40;
    if (!*v40)
    {
      return;
    }

    v39 = *(v40 + 8);

    (v38)(a1, v43);
  }

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v38, v39);
}

void ConversationController.createParticipant(for:conversation:)(unint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v4 = v3;
  v182 = a3;
  v184 = v4;
  ObjectType = swift_getObjectType();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v174 = &v169 - v8;
  v9 = type metadata accessor for Participant(0);
  MEMORY[0x1EEE9AC00](v9);
  v169 = &v169 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for conversationKit == -1)
  {
    goto LABEL_2;
  }

  while (1)
  {
    swift_once();
LABEL_2:
    v176 = v9;
    v11 = static OS_os_log.conversationKit;
    v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v12 = swift_allocObject();
    v175 = xmmword_1BC4BAA20;
    *(v12 + 16) = xmmword_1BC4BAA20;
    *&v197[0] = a1;
    v13 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationParticipant, 0x1E69D8B90);
    v14 = a1;
    v172 = v13;
    v15 = String.init<A>(reflecting:)();
    v17 = v16;
    v18 = MEMORY[0x1E69E6158];
    *(v12 + 56) = MEMORY[0x1E69E6158];
    v19 = lazy protocol witness table accessor for type String and conformance String();
    *(v12 + 64) = v19;
    *(v12 + 32) = v15;
    *(v12 + 40) = v17;
    outlined init with copy of CallCenterProvider(a2, v197);
    v20 = specialized >> prefix<A>(_:)(v197);
    v22 = v21;
    outlined destroy of CallControlsService?(v197, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
    *(v12 + 96) = v18;
    *(v12 + 104) = v19;
    v185 = v19;
    *(v12 + 72) = v20;
    *(v12 + 80) = v22;
    v23 = static os_log_type_t.default.getter();
    v177 = v11;
    os_log(_:dso:log:type:_:)("Creating new participant for active remote participant: %@ in conversation: %@", 78, 2, &dword_1BBC58000, v11, v23, v12);

    v181 = [v14 handle];
    v187 = [v14 identifier];
    v24 = [v14 avcIdentifier];
    v186 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v180 = v25;

    v188 = v14;
    v26 = [v14 capabilities];
    LODWORD(v11) = [v26 isMomentsAvailable];

    v27 = 0;
    if (v11)
    {
      v27 = ConversationController.momentsLocallyAvailable.getter();
    }

    v178 = v27;
    v28 = v188;
    v29 = [v188 capabilities];
    v30 = [v29 isScreenSharingAvailable];

    v31 = [v28 capabilities];
    v32 = [v31 isGondolaCallingAvailable];

    v33 = *(a2 + 24);
    v34 = *(a2 + 32);
    __swift_project_boxed_opaque_existential_1(a2, v33);
    v35 = [v28 handle];
    v183 = a2;
    v36 = v35;
    v37 = Conversation.containsKickable(participantWithHandle:)(v35, v33, v34);

    v38 = v183;
    v39 = [v28 capabilities];
    v40 = [v39 supportsRequestToScreenShare];

    *&v197[0] = v181;
    *(&v197[0] + 1) = v187;
    LOBYTE(v197[1]) = 0;
    *(&v197[1] + 1) = v186;
    *&v197[2] = v180;
    v41 = 0x100000000;
    if (!v40)
    {
      v41 = 0;
    }

    v42 = 0x1000000;
    if ((v37 & 1) == 0)
    {
      v42 = 0;
    }

    v43 = 0x10000;
    if (!v32)
    {
      v43 = 0;
    }

    v44 = 256;
    if (!v30)
    {
      v44 = 0;
    }

    ConversationController.createParticipant(for:conversation:capabilities:)(v197, v38, v44 | v178 | v43 | v42 | v41, v182);
    v45 = v38[3];
    v46 = v38[4];
    __swift_project_boxed_opaque_existential_1(v38, v45);
    v47 = (*(v46 + 88))(v45, v46);
    v171 = v47;
    if ((v47 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationMember, 0x1E69D8B80);
      lazy protocol witness table accessor for type TUConversationInvitationPreference and conformance NSObject(&lazy protocol witness table cache variable for type TUConversationMember and conformance NSObject, &lazy cache variable for type metadata for TUConversationMember, 0x1E69D8B80);
      Set.Iterator.init(_cocoa:)();
      a2 = v198[10];
      v9 = v198[11];
      a1 = v198[12];
      v48 = v198[13];
      v49 = v198[14];
    }

    else
    {
      v50 = -1 << *(v47 + 32);
      v9 = v47 + 56;
      a1 = ~v50;
      v51 = -v50;
      v52 = v51 < 64 ? ~(-1 << v51) : -1;
      v49 = v52 & *(v47 + 56);
      v48 = 0;
    }

    v170 = a1;
    v53 = (a1 + 64) >> 6;
    if (a2 < 0)
    {
      break;
    }

LABEL_19:
    v54 = v48;
    v55 = v49;
    v56 = v48;
    if (v49)
    {
LABEL_23:
      v57 = (v55 - 1) & v55;
      a1 = *(*(a2 + 48) + ((v56 << 9) | (8 * __clz(__rbit64(v55)))));
      if (a1)
      {
        goto LABEL_27;
      }

      goto LABEL_30;
    }

    while (1)
    {
      v56 = (v54 + 1);
      if (__OFADD__(v54, 1))
      {
        break;
      }

      if (v56 >= v53)
      {
        goto LABEL_30;
      }

      v55 = *(v9 + 8 * v56);
      ++v54;
      if (v55)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
  }

  while (1)
  {
    v58 = __CocoaSet.Iterator.next()();
    if (!v58)
    {
      break;
    }

    v192[0] = v58;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationMember, 0x1E69D8B80);
    swift_dynamicCast();
    a1 = *&v197[0];
    v56 = v48;
    v57 = v49;
    if (!*&v197[0])
    {
      break;
    }

LABEL_27:
    v186 = v49;
    v187 = v48;
    v59 = [a1 handle];
    v60 = [v188 handle];
    v61 = [v59 isEquivalentToHandle_];

    if (v61)
    {
      v178 = a1;
      v62 = 0;
      goto LABEL_31;
    }

    v48 = v56;
    v49 = v57;
    if ((a2 & 0x8000000000000000) == 0)
    {
      goto LABEL_19;
    }
  }

LABEL_30:
  v178 = 0;
  v62 = 1;
LABEL_31:
  outlined consume of Set<TUHandle>.Iterator._Variant(a2);

  v63 = swift_allocObject();
  *(v63 + 16) = v175;
  *&v197[0] = v188;
  v64 = v188;
  v65 = String.init<A>(reflecting:)();
  v66 = v185;
  *(v63 + 56) = MEMORY[0x1E69E6158];
  *(v63 + 64) = v66;
  *(v63 + 32) = v65;
  *(v63 + 40) = v67;
  v69 = v176;
  v68 = v177;
  if (v62)
  {
    v70 = 0xE300000000000000;
    v71 = 7104878;
  }

  else
  {
    v72 = v178;
    *&v197[0] = v178;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationMember, 0x1E69D8B80);
    v73 = v72;
    v71 = String.init<A>(reflecting:)();
  }

  v74 = v185;
  *(v63 + 96) = MEMORY[0x1E69E6158];
  *(v63 + 104) = v74;
  *(v63 + 72) = v71;
  *(v63 + 80) = v70;
  v75 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Remote member for active remote participant %@ is %@", 52, 2, &dword_1BBC58000, v68, v75, v63);

  v76 = [v64 handle];
  v77 = v183;
  static ConversationController.member(correspondingTo:in:)(v76, v183);
  v79 = v78;

  v80 = [v79 lightweightPrimary];
  v81 = *(v69 + 48);
  v82 = v182;

  *&v82[v81] = v80;
  v83 = v77[3];
  v84 = v77[4];
  __swift_project_boxed_opaque_existential_1(v77, v83);
  if ((*(v84 + 56))(v83, v84) == 3)
  {
    v85 = [v64 streamToken];
    v86 = [v64 screenToken];
    v87 = [v64 isVideoEnabled];
    v88 = v184;
    if (!v87 || *(v184 + OBJC_IVAR____TtC15ConversationKit22ConversationController_mode) != 1)
    {
      if ([v64 isVideoEnabled] && !*(v88 + OBJC_IVAR____TtC15ConversationKit22ConversationController_mode))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit24ParticipantVideoProvider_pMd, &_s15ConversationKit24ParticipantVideoProvider_pMR);
        lazy protocol witness table accessor for type Participant.VideoProviderType and conformance Participant.VideoProviderType();
        v122 = Dictionary.init(dictionaryLiteral:)();
        v123 = [v64 isCameraMixedWithScreen];
        LOBYTE(v197[0]) = 1;
        v198[0] = v122;
        LOBYTE(v198[1]) = 1;
        *(&v198[1] + 1) = 0;
        BYTE1(v198[2]) = 0;
        v198[3] = 1;
        LOBYTE(v198[4]) = 2;
        memset(&v198[5], 0, 32);
        LOBYTE(v198[9]) = 1;
        *(&v198[9] + 1) = v123;
      }

      else
      {
        memset(v198, 0, 75);
      }

      goto LABEL_55;
    }

    v188 = v86;
    v89 = OBJC_IVAR____TtC15ConversationKit22ConversationController_participantMediaProviderCreator;
    swift_beginAccess();
    outlined init with copy of CallCenterProvider(v88 + v89, v197);
    v90 = *(&v197[1] + 1);
    v91 = *&v197[2];
    __swift_project_boxed_opaque_existential_1(v197, *(&v197[1] + 1));
    (*(v91 + 8))(v192, v85, v88, &protocol witness table for ConversationController, v90, v91);
    __swift_destroy_boxed_opaque_existential_1(v197);
    outlined init with copy of CallCenterProvider(v88 + v89, v197);
    v92 = *(&v197[1] + 1);
    v93 = *&v197[2];
    __swift_project_boxed_opaque_existential_1(v197, *(&v197[1] + 1));
    (*(v93 + 8))(v193, v85, v88, &protocol witness table for ConversationController, v92, v93);
    __swift_destroy_boxed_opaque_existential_1(v197);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit11ParticipantV17VideoProviderTypeO_AC0fgH0_ptGMd, &_ss23_ContiguousArrayStorageCy15ConversationKit11ParticipantV17VideoProviderTypeO_AC0fgH0_ptGMR);
    v94 = swift_allocObject();
    *(v94 + 16) = v175;
    *(v94 + 32) = 0;
    outlined init with copy of CallCenterProvider(v192, v94 + 40);
    *(v94 + 80) = 1;
    outlined init with copy of CallCenterProvider(v193, v94 + 88);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit24ParticipantVideoProvider_pMd, &_s15ConversationKit24ParticipantVideoProvider_pMR);
    lazy protocol witness table accessor for type Participant.VideoProviderType and conformance Participant.VideoProviderType();
    v187 = Dictionary.init(dictionaryLiteral:)();
    v95 = v192[3];
    v96 = v192[4];
    __swift_project_boxed_opaque_existential_1(v192, v192[3]);
    LOBYTE(v95) = (*(v96 + 16))(v95, v96);
    v97 = v192[3];
    v98 = v192[4];
    __swift_project_boxed_opaque_existential_1(v192, v192[3]);
    LOBYTE(v97) = (*(v98 + 32))(v97, v98);
    v99 = v192[3];
    v100 = v192[4];
    __swift_project_boxed_opaque_existential_1(v192, v192[3]);
    v101 = v95 & 1;
    v102 = (*(v100 + 24))(v99, v100) & 1;
    v103 = v97 & 1;
    v104 = v192[3];
    v105 = v192[4];
    __swift_project_boxed_opaque_existential_1(v192, v192[3]);
    v106 = (*(v105 + 40))(v104, v105);
    if ((v106 & 0x100000000) != 0)
    {
      v107 = 0;
    }

    else
    {
      v107 = v106;
    }

    v108 = v192[3];
    v109 = v192[4];
    __swift_project_boxed_opaque_existential_1(v192, v192[3]);
    v110 = (*(v109 + 56))(v108, v109);
    if ((v110 & 0x100000000) != 0)
    {
      v111 = 0;
    }

    else
    {
      v111 = v110;
    }

    v112 = VideoAttributeOrientation.deviceOrientation.getter(v107);
    v113 = VideoAttributeCamera.cameraPosition.getter(v111);
    outlined init with copy of CallCenterProvider(v192, __dst);
    if (ConversationController.isOneToOneModeEnabled.getter())
    {
      v114 = 0.0;
      static AspectRatio.remoteAspectRatios(with:contentsRect:)(__dst, v197, 1.0, 1.0);
      v115 = *(v197 + 1);
      v116 = *v197;
      v117 = v197[1];
      v118 = *(&v197[1] + 1);
      v119 = *&v197[2];
      v120 = BYTE8(v197[2]);
      __swift_destroy_boxed_opaque_existential_1(__dst);
      if ((v117 & 1) == 0 && v116 != v115)
      {
        v121 = 0;
        if (v120)
        {
          v118 = v115;
          v119 = v116;
        }

        v114 = v116;
        goto LABEL_54;
      }

      v121 = 1;
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(__dst);
      v121 = 1;
      v114 = 0.0;
    }

    v115 = 0.0;
    v118 = 0.0;
    v119 = 0.0;
LABEL_54:
    v124 = [v64 isCameraMixedWithScreen];
    __swift_destroy_boxed_opaque_existential_1(v193);
    LOBYTE(v197[0]) = v121;
    __swift_destroy_boxed_opaque_existential_1(v192);
    v198[0] = v187;
    LOBYTE(v198[1]) = v101;
    *(&v198[1] + 1) = 0;
    BYTE5(v198[1]) = v102;
    BYTE6(v198[1]) = v103;
    *(&v198[1] + 7) = 0;
    BYTE1(v198[2]) = 0;
    v198[3] = v112;
    LOBYTE(v198[4]) = v113;
    *&v198[5] = v114;
    *&v198[6] = v115;
    *&v198[7] = v118;
    *&v198[8] = v119;
    LOBYTE(v198[9]) = v121;
    *(&v198[9] + 1) = v124;
    v82 = v182;
    v69 = v176;
    v68 = v177;
    v88 = v184;
    v86 = v188;
LABEL_55:
    memcpy(__dst, v198, 0x4BuLL);
    if ([v64 isScreenEnabled])
    {
      if (*(v88 + OBJC_IVAR____TtC15ConversationKit22ConversationController_mode) == 2)
      {
        v125 = OBJC_IVAR____TtC15ConversationKit22ConversationController_participantMediaProviderCreator;
        swift_beginAccess();
        outlined init with copy of CallCenterProvider(v88 + v125, v197);
        v126 = *(&v197[1] + 1);
        v127 = *&v197[2];
        __swift_project_boxed_opaque_existential_1(v197, *(&v197[1] + 1));
        (*(v127 + 8))(v194, v86, v88, &protocol witness table for ConversationController, v126, v127);
        __swift_destroy_boxed_opaque_existential_1(v197);
        v128 = v195;
        v129 = v196;
        __swift_project_boxed_opaque_existential_1(v194, v195);
        v130 = (*(v129 + 40))(v128, v129);
        if ((v130 & 0x100000000) != 0)
        {
          v131 = 0;
        }

        else
        {
          v131 = v130;
        }

        v132 = v195;
        v133 = v196;
        __swift_project_boxed_opaque_existential_1(v194, v195);
        v134 = (*(v133 + 40))(v132, v133);
        if ((v134 & 0x100000000) != 0)
        {
          v135 = 1;
        }

        else
        {
          v135 = VideoAttributeOrientation.deviceOrientation.getter(v134);
        }

        v136 = v195;
        v137 = v196;
        __swift_project_boxed_opaque_existential_1(v194, v195);
        v138 = (*(v137 + 16))(v136, v137);
        outlined init with copy of CallCenterProvider(v194, v191);
        memcpy(v193, (v184 + OBJC_IVAR____TtC15ConversationKit22ConversationController_latestRemoteAttributes), 0x61uLL);
        v139 = VideoAttributeOrientation.deviceOrientation.getter(v131);
        outlined init with copy of CallCenterProvider(v194, v190);
        v140 = v195;
        v141 = v196;
        __swift_project_boxed_opaque_existential_1(v194, v195);
        (*(v141 + 64))(v199, v140, v141);
        v142 = 1.0;
        v143 = 0;
        v144 = 1.0;
        if ((v200 & 1) == 0)
        {
          v144 = *&v199[3];
          v142 = *&v199[2];
        }

        static AspectRatio.remoteAspectRatios(with:contentsRect:)(v190, v197, v142, v144);
        v146 = *(v197 + 1);
        v145 = *v197;
        v147 = v197[1];
        v148 = *(&v197[1] + 1);
        v149 = *&v197[2];
        v150 = BYTE8(v197[2]);
        __swift_destroy_boxed_opaque_existential_1(v190);
        if (v147)
        {
          v146 = 0.0;
          v148 = 0.0;
          v149 = 0.0;
          v151 = 1;
        }

        else if (v145 == v146)
        {
          v151 = 1;
          v146 = 0.0;
          v148 = 0.0;
          v149 = 0.0;
        }

        else
        {
          v151 = 0;
          if (v150)
          {
            v148 = v146;
            v149 = v145;
          }

          v143 = *&v145;
        }

        v152 = v195;
        v153 = v196;
        __swift_project_boxed_opaque_existential_1(v194, v195);
        v154 = (*(v153 + 72))(v152, v153);
        memset(v192, 0, 40);
        v189 = 1;
        memset(&v192[14], 0, 96);
        LOBYTE(v192[26]) = 1;
        outlined assign with take of UICollectionView.SupplementaryRegistration<InCallControlsSectionHeaderView>?(v191, v192, &_s15ConversationKit24ParticipantVideoProvider_pSgMd, _s15ConversationKit24ParticipantVideoProvider_pSgMR);
        LOBYTE(v192[5]) = v138 & 1;
        *(&v192[5] + 1) = 0;
        BYTE3(v192[5]) = 0;
        memcpy(&v192[14], v193, 0x61uLL);
        v192[6] = v139;
        v192[7] = v135;
        v192[8] = v143;
        *&v192[9] = v146;
        *&v192[10] = v148;
        *&v192[11] = v149;
        LOBYTE(v192[12]) = v151;
        *&v192[13] = v154;
        memcpy(v197, v192, 0xD1uLL);
        __swift_destroy_boxed_opaque_existential_1(v194);
        v82 = v182;
        v69 = v176;
        v68 = v177;
        v88 = v184;
      }

      else
      {
        memset(v193, 0, 40);
        memcpy(v192, (v88 + OBJC_IVAR____TtC15ConversationKit22ConversationController_latestRemoteAttributes), 0x61uLL);
        memset(v197, 0, 40);
        LOBYTE(v194[0]) = 1;
        memset(&v197[7], 0, 96);
        LOBYTE(v197[13]) = 1;
        outlined assign with take of UICollectionView.SupplementaryRegistration<InCallControlsSectionHeaderView>?(v193, v197, &_s15ConversationKit24ParticipantVideoProvider_pSgMd, _s15ConversationKit24ParticipantVideoProvider_pSgMR);
        DWORD2(v197[2]) = 1;
        memcpy(&v197[7], v192, 0x61uLL);
        v197[3] = vdupq_n_s64(1uLL);
        memset(&v197[4], 0, 32);
        LOBYTE(v197[6]) = 1;
        *(&v197[6] + 1) = 0x3FF0000000000000;
      }
    }

    else
    {
      memset(v197, 0, 24);
      *(&v197[1] + 1) = 1;
      bzero(&v197[2], 0xB1uLL);
    }

    if (*(v88 + OBJC_IVAR____TtC15ConversationKit22ConversationController_mode) == 1)
    {
      v155 = OBJC_IVAR____TtC15ConversationKit22ConversationController_participantCaptionsProviderCreator;
      swift_beginAccess();
      outlined init with copy of CallCenterProvider(v88 + v155, v192);
      v156 = v192[3];
      v157 = v192[4];
      __swift_project_boxed_opaque_existential_1(v192, v192[3]);
      v158 = (*(v157 + 8))([v64 captionsToken], v156, v157);
      __swift_destroy_boxed_opaque_existential_1(v192);
      if (v158)
      {
        swift_unknownObjectRetain();
      }
    }

    else
    {
      v158 = 0;
    }

    ConversationController.copresenceInfo(for:in:)(v64, v183, v192);
    Participant.AVInfo.init(for:)(v64);
    v159 = v169;
    Participant.asJoined(avInfo:videoInfo:screenInfo:captionInfo:copresenceInfo:)();
    outlined consume of Participant.CaptionInfo?(v158);
    outlined destroy of CallControlsService?(v192, &_s15ConversationKit11ParticipantV14CopresenceInfoVSgMd, &_s15ConversationKit11ParticipantV14CopresenceInfoVSgMR);
    outlined destroy of CallControlsService?(v198, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd, &_s15ConversationKit11ParticipantV9VideoInfoVSgMR);
    outlined consume of Participant.CaptionInfo?(v158);
    outlined destroy of CallControlsService?(v197, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMR);
    _s15ConversationKit11ParticipantVWOdTm_0(v159, v82);
  }

  v160 = swift_allocObject();
  *(v160 + 16) = xmmword_1BC4BA940;
  v161 = v82;
  v162 = v174;
  _s15ConversationKit11ParticipantVWOcTm_17(v161, v174);
  __swift_storeEnumTagSinglePayload(v162, 0, 1, v69);
  specialized >> prefix<A>(_:)();
  v164 = v163;
  v166 = v165;
  outlined destroy of CallControlsService?(v162, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  v167 = v185;
  *(v160 + 56) = MEMORY[0x1E69E6158];
  *(v160 + 64) = v167;
  *(v160 + 32) = v164;
  *(v160 + 40) = v166;
  v168 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Created new participant from active remote participant: %@", 58, 2, &dword_1BBC58000, v68, v168, v160);
}

BOOL closure #5 in ConversationController.createNewParticipants(with:)(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for Participant(0) + 28);
  v5 = *(a1 + v4);
  if (!v5)
  {
    return *(a2 + v4) == 0;
  }

  v6 = *(a2 + v4);
  v7 = v5;
  v8 = v7;
  if (v6)
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00);
    v9 = v6;
    v10 = static NSObject.== infix(_:_:)();

    return v10 & 1;
  }

  else
  {

    return 0;
  }
}

void ConversationController.createParticipant(for:conversation:)(void *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v6 = a2[3];
  v7 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v6);
  v9 = a1;
  v10[0] = v9;
  v10[1] = 0;
  v11 = 1;
  if (Conversation.containsKickable(participantWithHandle:)(v9, v6, v7))
  {
    v8 = 16843008;
  }

  else
  {
    v8 = 65792;
  }

  v12 = 0;
  v13 = 0;
  ConversationController.createParticipant(for:conversation:capabilities:)(v10, a2, v8, a3);
}

uint64_t ConversationController.createParticipant(for:conversation:capabilities:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, unint64_t a3@<X2>, id a4@<X8>)
{
  v108 = a3;
  ObjectType = swift_getObjectType();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v95 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v96 = &v95 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v95 = &v95 - v13;
  v110 = type metadata accessor for Participant.CountdownInfo(0);
  MEMORY[0x1EEE9AC00](v110);
  v112 = &v95 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Participant(0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v95 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantV13CountdownInfoVSgMd, &_s15ConversationKit11ParticipantV13CountdownInfoVSgMR);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v116 = &v95 - v19;
  v100 = type metadata accessor for Participant.State(0);
  MEMORY[0x1EEE9AC00](v100);
  v101 = &v95 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v123 = &v95 - v22;
  v23 = type metadata accessor for UUID();
  v24 = *(v23 - 8);
  v121 = v23;
  v122 = v24;
  MEMORY[0x1EEE9AC00](v23);
  v117 = &v95 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v95 - v27;
  v29 = *a1;
  v104 = *(a1 + 8);
  v105 = *(a1 + 16);
  v30 = *(a1 + 32);
  v103 = *(a1 + 24);
  v118 = v30;
  if (one-time initialization token for conversationKit != -1)
  {
LABEL_28:
    swift_once();
  }

  v111 = v17;
  v113 = v15;
  v114 = v9;
  v15 = static OS_os_log.conversationKit;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1BC4BAA20;
  v127[0] = v29;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00);
  v32 = v29;
  v33 = String.init<A>(reflecting:)();
  v35 = v34;
  v36 = MEMORY[0x1E69E6158];
  *(v31 + 56) = MEMORY[0x1E69E6158];
  v37 = lazy protocol witness table accessor for type String and conformance String();
  *(v31 + 64) = v37;
  *(v31 + 32) = v33;
  *(v31 + 40) = v35;
  outlined init with copy of CallCenterProvider(a2, v127);
  v38 = specialized >> prefix<A>(_:)(v127);
  v40 = v39;
  outlined destroy of CallControlsService?(v127, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
  *(v31 + 96) = v36;
  *(v31 + 104) = v37;
  v106 = v37;
  *(v31 + 72) = v38;
  *(v31 + 80) = v40;
  v41 = static os_log_type_t.default.getter();
  v109 = v15;
  os_log(_:dso:log:type:_:)("Creating new participant for handle: %@ in conversation: %@", 59, 2, &dword_1BBC58000, v15, v41, v31);

  UUID.init()();
  v124 = v32;
  v99 = static Colors.ParticipantGradients.gradient(for:)(v32);
  v42 = a2[3];
  v43 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v42);
  v44 = (*(v43 + 128))(v42, v43);
  v119 = a2;
  v120 = v28;
  v115 = a4;
  v98 = v44;
  if ((v44 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationMember, 0x1E69D8B80);
    lazy protocol witness table accessor for type TUConversationInvitationPreference and conformance NSObject(&lazy protocol witness table cache variable for type TUConversationMember and conformance NSObject, &lazy cache variable for type metadata for TUConversationMember, 0x1E69D8B80);
    Set.Iterator.init(_cocoa:)();
    v45 = v127[0];
    v29 = v127[1];
    v9 = v127[2];
    v46 = v127[3];
    v28 = v127[4];
  }

  else
  {
    v47 = -1 << *(v44 + 32);
    v29 = (v44 + 56);
    v9 = ~v47;
    v48 = -v47;
    if (v48 < 64)
    {
      v49 = ~(-1 << v48);
    }

    else
    {
      v49 = -1;
    }

    v28 = (v49 & *(v44 + 56));
    v46 = 0;
  }

  v97 = v9;
  a2 = ((v9 + 64) >> 6);
  while (1)
  {
    v17 = v46;
    if (v45 < 0)
    {
      break;
    }

    v50 = v46;
    v51 = v28;
    if (!v28)
    {
      while (1)
      {
        v46 = v50 + 1;
        if (__OFADD__(v50, 1))
        {
          break;
        }

        if (v46 >= a2)
        {
          goto LABEL_19;
        }

        v51 = *(v29 + v46);
        ++v50;
        if (v51)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
      goto LABEL_28;
    }

LABEL_14:
    v28 = ((v51 - 1) & v51);
    v9 = *(*(v45 + 48) + ((v46 << 9) | (8 * __clz(__rbit64(v51)))));
    if (!v9)
    {
      goto LABEL_19;
    }

LABEL_18:
    v15 = [v9 handle];
    a4 = [v15 isEqualToHandle_];

    if (a4)
    {
      goto LABEL_19;
    }
  }

  v52 = __CocoaSet.Iterator.next()();
  if (v52)
  {
    v125 = v52;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationMember, 0x1E69D8B80);
    swift_dynamicCast();
    v9 = v126;
    if (v126)
    {
      goto LABEL_18;
    }
  }

LABEL_19:
  outlined consume of Set<TUHandle>.Iterator._Variant(v45);

  Date.init()();
  swift_storeEnumTagMultiPayload();
  static ConversationController.member(correspondingTo:in:)(v124, v119);
  if (v53)
  {
    ObjectType = outlined bridged method (ob) of @objc TUConversationLink.displayName.getter(v53, &selRef_nickname);
    v100 = v54;
  }

  else
  {
    ObjectType = 0;
    v100 = 0;
  }

  v55 = v113;
  v57 = v119;
  v56 = v120;
  v58 = v119[3];
  __swift_project_boxed_opaque_existential_1(v119, v58);
  v59 = v124;
  LODWORD(v113) = Conversation.containsAuthorizedToChangeGroupMembership(participantWithHandle:)(v124, v58);
  v60 = v101;
  _s15ConversationKit11ParticipantVWOcTm_17(v123, v101);
  v61 = v121;
  (*(v122 + 16))(v117, v56, v121);
  v62 = v116;
  v63 = v110;
  __swift_storeEnumTagSinglePayload(v116, 1, 1, v110);
  v64 = type metadata accessor for ParticipantContactDetailsCache();
  v65 = v57[3];
  v66 = __swift_project_boxed_opaque_existential_1(v57, v65);

  v67 = v59;
  v68 = specialized static ParticipantContactDetailsCache.cache(for:)(v66, v64, v65);
  v69 = v111;
  v70 = &v111[v55[7]];
  *(v70 + 4) = 0;
  *v70 = 0u;
  *(v70 + 1) = 0u;
  v71 = (v69 + v55[9]);
  *(v69 + v55[10]) = 0;
  *(v69 + v55[11]) = MEMORY[0x1E69E7CD0];
  *(v69 + v55[12]) = 0;
  _s15ConversationKit11ParticipantVWObTm_8(v60, v69);
  (*(v122 + 32))(v69 + v55[5], v117, v61);
  v72 = v69 + v55[6];
  v73 = vdupq_n_s64(v108);
  *v72 = v108 & 1;
  *v73.i8 = vand_s8(vmovn_s32(vuzp1q_s32(vshlq_u64(v73, xmmword_1BC4DFB90), vshlq_u64(v73, xmmword_1BC4DFB80))), 0x1000100010001);
  *(v72 + 1) = vuzp1_s8(*v73.i8, *v73.i8).u32[0];
  outlined consume of Participant.RemoteIdentifiers?(*v70, *(v70 + 1), *(v70 + 2), *(v70 + 3), *(v70 + 4));
  v74 = v104;
  *v70 = v59;
  *(v70 + 1) = v74;
  v75 = v103;
  *(v70 + 2) = v105;
  *(v70 + 3) = v75;
  *(v70 + 4) = v118;
  *(v69 + v55[8]) = v99;
  v76 = v100;
  *v71 = ObjectType;
  v71[1] = v76;
  *(v69 + v55[15]) = v113 & 1;
  *(v69 + v55[13]) = 0;
  if (__swift_getEnumTagSinglePayload(v62, 1, v63) == 1)
  {
    v77 = v68;
    v78 = type metadata accessor for Date();
    v79 = v95;
    __swift_storeEnumTagSinglePayload(v95, 1, 1, v78);
    v80 = v96;
    __swift_storeEnumTagSinglePayload(v96, 1, 1, v78);
    v81 = v112;
    __swift_storeEnumTagSinglePayload(v112, 1, 1, v78);
    v82 = *(v63 + 20);
    __swift_storeEnumTagSinglePayload(v81 + v82, 1, 1, v78);
    v83 = v79;
    v84 = v116;
    outlined assign with take of UICollectionView.SupplementaryRegistration<InCallControlsSectionHeaderView>?(v83, v81, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v68 = v77;
    outlined assign with take of UICollectionView.SupplementaryRegistration<InCallControlsSectionHeaderView>?(v80, v81 + v82, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    *(v81 + *(v63 + 24)) = 0;
    if (__swift_getEnumTagSinglePayload(v84, 1, v63) != 1)
    {
      outlined destroy of CallControlsService?(v84, &_s15ConversationKit11ParticipantV13CountdownInfoVSgMd, &_s15ConversationKit11ParticipantV13CountdownInfoVSgMR);
    }
  }

  else
  {
    v81 = v112;
    _s15ConversationKit11ParticipantVWObTm_8(v62, v112);
  }

  _s15ConversationKit11ParticipantVWObTm_8(v81, v69 + v55[14]);
  *(v69 + v55[16]) = v68;
  v85 = v115;
  _s15ConversationKit11ParticipantVWObTm_8(v69, v115);
  v86 = swift_allocObject();
  *(v86 + 16) = xmmword_1BC4BA940;
  v87 = v114;
  _s15ConversationKit11ParticipantVWOcTm_17(v85, v114);
  __swift_storeEnumTagSinglePayload(v87, 0, 1, v55);
  specialized >> prefix<A>(_:)();
  v89 = v88;
  v91 = v90;
  outlined destroy of CallControlsService?(v87, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  v92 = v106;
  *(v86 + 56) = MEMORY[0x1E69E6158];
  *(v86 + 64) = v92;
  *(v86 + 32) = v89;
  *(v86 + 40) = v91;
  v93 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Created new participant from handle: %@", 39, 2, &dword_1BBC58000, v109, v93, v86);

  _s15ConversationKit11ParticipantVWOhTm_18(v123, type metadata accessor for Participant.State);
  return (*(v122 + 8))(v120, v121);
}

void ConversationController.copresenceInfo(for:in:)(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = a2[3];
  v6 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v5);
  v7 = Conversation.currentSharePlayActivity.getter(v5, v6);
  if (!v7)
  {
    v22 = 0;
    v23 = 0;
    v12 = 0;
    v11 = 0;
LABEL_10:
    v21 = 0;
    v16 = 0;
    v15 = 0;
LABEL_11:
    v24 = 0;
    goto LABEL_15;
  }

  v8 = v7;
  v9 = outlined bridged method (ob) of @objc TUConversationActivity.localizedApplicationName.getter([v7 activity]);
  v11 = v10;
  if (!v10)
  {

    v22 = 0;
    v23 = 0;
    v12 = 0;
    goto LABEL_10;
  }

  v12 = v9;
  v13 = TUConversationActivitySession.ongoingDescription.getter();
  v15 = v14;
  if (!v14)
  {

    v22 = 0;
    v23 = 0;
    v12 = 0;
    v11 = 0;
    v21 = 0;
    v16 = 0;
    goto LABEL_11;
  }

  v16 = v13;
  ConversationController.isParticipant(_:activeIn:)(a1, v8);
  v18 = v17;
  if (v17)
  {
    v19 = TUConversationActivitySession.preferredBroadcastingAttributes.getter();
    if (v20)
    {
      v21 = 0;
    }

    else
    {
      v21 = v19;
    }
  }

  else
  {
    v21 = 0;
  }

  v22 = TUConversationActivitySession.uniqueIdentifier.getter();
  v23 = v25;

  v24 = v18 & 1;
LABEL_15:
  *a3 = v22;
  a3[1] = v23;
  a3[2] = v12;
  a3[3] = v11;
  a3[4] = v24;
  a3[5] = v21;
  a3[6] = v16;
  a3[7] = v15;
}

void ConversationController.scheduleKickabilityUpdate(for:)(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v41 = *(v2 - 8);
  v42 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v39 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for DispatchQoS();
  v38 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v37 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Participant(0);
  v35 = *(v5 - 8);
  v6 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v43 = type metadata accessor for DispatchTime();
  v36 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v34 - v10;
  v12 = type metadata accessor for Participant.State(0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a1 + *(v5 + 28));
  if (v16)
  {
    v17 = [v16 value];
    if (!v17)
    {
      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = MEMORY[0x1BFB209B0](v18);
    }

    v19 = [v17 destinationIdIsTemporary];

    if (v19)
    {
      _s15ConversationKit11ParticipantVWOcTm_17(a1, v15);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 4u:
          v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd, &_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMR);
          v22 = *(v21 + 48);
          v23 = &v15[*(v21 + 64)];
          outlined consume of Participant.CopresenceInfo?(*v23, v23[1], v23[2], v23[3], v23[4], v23[5], v23[6], v23[7]);
          outlined destroy of Participant.MediaInfo(&v15[v22]);
          v24 = type metadata accessor for Date();
          (*(*(v24 - 8) + 8))(v15, v24);
          if (*(a1 + *(v5 + 24) + 3))
          {
            if (one-time initialization token for shared != -1)
            {
              swift_once();
            }

            v25 = (*(*static Defaults.shared + 720))() + 0.01;
            type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
            v34 = static OS_dispatch_queue.main.getter();
            static DispatchTime.now()();
            + infix(_:_:)(v25);
            v36 = *(v36 + 8);
            (v36)(v8, v43);
            v26 = swift_allocObject();
            swift_unknownObjectWeakInit();
            _s15ConversationKit11ParticipantVWOcTm_17(a1, &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
            v27 = (*(v35 + 80) + 24) & ~*(v35 + 80);
            v28 = swift_allocObject();
            *(v28 + 16) = v26;
            _s15ConversationKit11ParticipantVWObTm_8(&v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v28 + v27);
            aBlock[4] = partial apply for closure #1 in ConversationController.scheduleKickabilityUpdate(for:);
            aBlock[5] = v28;
            aBlock[0] = MEMORY[0x1E69E9820];
            aBlock[1] = 1107296256;
            aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
            aBlock[3] = &block_descriptor_1204;
            v29 = _Block_copy(aBlock);

            v30 = v37;
            static DispatchQoS.unspecified.getter();
            aBlock[0] = MEMORY[0x1E69E7CC0];
            lazy protocol witness table accessor for type ConversationController and conformance ConversationController(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
            lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
            v31 = v39;
            v32 = v42;
            dispatch thunk of SetAlgebra.init<A>(_:)();
            v33 = v34;
            MEMORY[0x1BFB21510](v11, v30, v31, v29);
            _Block_release(v29);

            (*(v41 + 8))(v31, v32);
            (*(v38 + 8))(v30, v40);
            (v36)(v11, v43);
          }

          break;
        case 6u:
          return;
        default:
          v20 = type metadata accessor for Date();
          (*(*(v20 - 8) + 8))(v15, v20);
          break;
      }
    }
  }
}

void closure #1 in ConversationController.scheduleKickabilityUpdate(for:)(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v23 - v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = ConversationController.visibleParticipants.getter();
    MEMORY[0x1EEE9AC00](v8);
    *(&v23 - 2) = a2;
    v9 = specialized Collection.firstIndex(where:)(partial apply for closure #1 in ConversationController.postParticipantStateChangeCallbacks(for:updatedFrom:), (&v23 - 4), v8);
    v11 = v10;

    if (v11)
    {
      if (one-time initialization token for conversationKit != -1)
      {
        swift_once();
      }

      v12 = static OS_os_log.conversationKit;
      v13 = static os_log_type_t.error.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_1BC4BA940;
      _s15ConversationKit11ParticipantVWOcTm_17(a2, v5);
      v15 = type metadata accessor for Participant(0);
      __swift_storeEnumTagSinglePayload(v5, 0, 1, v15);
      specialized >> prefix<A>(_:)();
      v17 = v16;
      v19 = v18;
      outlined destroy of CallControlsService?(v5, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
      *(v14 + 56) = MEMORY[0x1E69E6158];
      *(v14 + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v14 + 32) = v17;
      *(v14 + 40) = v19;
      os_log(_:dso:log:type:_:)("Unable to determine visible index for %@", 40, 2, &dword_1BBC58000, v12, v13, v14);
    }

    else
    {
      v20 = &v7[OBJC_IVAR____TtC15ConversationKit22ConversationController_visibleParticipantKickableStatusDidChange];
      swift_beginAccess();
      v21 = *v20;
      if (*v20)
      {
        v22 = *(v20 + 1);

        v21(a2, v9);
        outlined consume of (@escaping @callee_guaranteed () -> ())?(v21, v22);
      }
    }
  }
}

void ConversationController.pendingMember(correspondingTo:in:)(uint64_t a1, void *a2)
{
  v3 = *(a1 + *(type metadata accessor for Participant(0) + 28));
  if (v3)
  {
    v4 = a2[3];
    v5 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v4);
    v6 = *(v5 + 128);
    v25 = v3;
    v7 = v6(v4, v5);
    if ((v7 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationMember, 0x1E69D8B80);
      lazy protocol witness table accessor for type TUConversationInvitationPreference and conformance NSObject(&lazy protocol witness table cache variable for type TUConversationMember and conformance NSObject, &lazy cache variable for type metadata for TUConversationMember, 0x1E69D8B80);
      Set.Iterator.init(_cocoa:)();
      v9 = v27;
      v8 = v28;
      v11 = v29;
      v10 = v30;
      v12 = v31;
    }

    else
    {
      v13 = -1 << *(v7 + 32);
      v8 = v7 + 56;
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

      v12 = v15 & *(v7 + 56);
      v10 = 0;
    }

    v24 = v11;
    v16 = (v11 + 64) >> 6;
    if (v9 < 0)
    {
      goto LABEL_16;
    }

LABEL_10:
    v17 = v10;
    v18 = v12;
    v19 = v10;
    if (v12)
    {
LABEL_14:
      v20 = (v18 - 1) & v18;
      v21 = *(*(v9 + 48) + ((v19 << 9) | (8 * __clz(__rbit64(v18)))));
      if (v21)
      {
        do
        {
          v22 = [v21 handle];
          v23 = [v22 isEqualToHandle_];

          if (v23)
          {
            break;
          }

          v10 = v19;
          v12 = v20;
          if ((v9 & 0x8000000000000000) == 0)
          {
            goto LABEL_10;
          }

LABEL_16:
          if (!__CocoaSet.Iterator.next()())
          {
            break;
          }

          type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationMember, 0x1E69D8B80);
          swift_dynamicCast();
          v21 = v26;
          v19 = v10;
          v20 = v12;
        }

        while (v26);
      }

LABEL_21:

      outlined consume of Set<TUHandle>.Iterator._Variant(v9);
    }

    else
    {
      while (1)
      {
        v19 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        if (v19 >= v16)
        {
          goto LABEL_21;
        }

        v18 = *(v8 + 8 * v19);
        ++v17;
        if (v18)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
    }
  }
}

void ConversationController.updateAudioFrequencyController(with:from:)(uint64_t a1)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v77 - v6;
  if (*(v1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_mode) != 1)
  {
    return;
  }

  v8 = *(v1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_audioFrequencyController);
  if (v8)
  {
    v78 = v8;
    v9 = Participant.audioToken.getter();
    if ((v10 & 1) == 0 && !v9)
    {
      if (one-time initialization token for conversationKit != -1)
      {
        swift_once();
      }

      v11 = static OS_os_log.conversationKit;
      v12 = static os_log_type_t.error.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_1BC4BA940;
      _s15ConversationKit11ParticipantVWOcTm_17(a1, v7);
      v14 = type metadata accessor for Participant(0);
      __swift_storeEnumTagSinglePayload(v7, 0, 1, v14);
      specialized >> prefix<A>(_:)();
      v16 = v15;
      v18 = v17;
      outlined destroy of CallControlsService?(v7, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
      *(v13 + 56) = MEMORY[0x1E69E6158];
      *(v13 + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v13 + 32) = v16;
      *(v13 + 40) = v18;
      os_log(_:dso:log:type:_:)("No valid stream token for participant. Skipping audio frequency controller registration: %@", 91, 2, &dword_1BBC58000, v11, v12, v13);

LABEL_8:

      return;
    }

    v2 = Participant.audioToken.getter();
    v30 = v29;
    Participant.videoInfo.getter();
    v20 = Participant.audioToken.getter();
    v3 = v31;
    Participant.videoInfo.getter();
    if (v30)
    {
      if (v3)
      {
        if (v80[0])
        {
          if (!v81[0])
          {
            goto LABEL_22;
          }

          goto LABEL_34;
        }

LABEL_24:

        v33 = v81;
        goto LABEL_35;
      }

      outlined destroy of CallControlsService?(v80, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd, &_s15ConversationKit11ParticipantV9VideoInfoVSgMR);
      if (v81[0])
      {
        goto LABEL_24;
      }

      goto LABEL_40;
    }

    v32 = v81[0];
    if (v80[0])
    {
      if (v3)
      {
        if (!v81[0])
        {
LABEL_22:

          v33 = v80;
LABEL_35:
          outlined destroy of CallControlsService?(v33, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd, &_s15ConversationKit11ParticipantV9VideoInfoVSgMR);
          return;
        }

LABEL_34:

        outlined destroy of CallControlsService?(v81, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd, &_s15ConversationKit11ParticipantV9VideoInfoVSgMR);
        v33 = v80;
        goto LABEL_35;
      }

      if (v81[0])
      {
        goto LABEL_34;
      }

      outlined destroy of CallControlsService?(v80, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd, &_s15ConversationKit11ParticipantV9VideoInfoVSgMR);
LABEL_40:
      if (v20)
      {
        if (one-time initialization token for conversationKit != -1)
        {
          swift_once();
        }

        v50 = static OS_os_log.conversationKit;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
        v51 = swift_allocObject();
        *(v51 + 16) = xmmword_1BC4BAA20;
        v79 = v20;
        v52 = String.init<A>(reflecting:)();
        v54 = v53;
        v55 = MEMORY[0x1E69E6158];
        *(v51 + 56) = MEMORY[0x1E69E6158];
        v56 = lazy protocol witness table accessor for type String and conformance String();
        *(v51 + 64) = v56;
        *(v51 + 32) = v52;
        *(v51 + 40) = v54;
        _s15ConversationKit11ParticipantVWOcTm_17(a1, v7);
        v57 = type metadata accessor for Participant(0);
        __swift_storeEnumTagSinglePayload(v7, 0, 1, v57);
        specialized >> prefix<A>(_:)();
        v59 = v58;
        v61 = v60;
        outlined destroy of CallControlsService?(v7, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
        *(v51 + 96) = v55;
        *(v51 + 104) = v56;
        *(v51 + 72) = v59;
        *(v51 + 80) = v61;
        v62 = static os_log_type_t.default.getter();
        os_log(_:dso:log:type:_:)("Unregistering token %@ from audio frequency controller %@", 57, 2, &dword_1BBC58000, v50, v62, v51);

        [v78 unregisterParticipantPowerSpectrum_];
      }

      goto LABEL_48;
    }

LABEL_27:
    if ((v3 & 1) != 0 || v32)
    {
      outlined destroy of CallControlsService?(v81, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd, &_s15ConversationKit11ParticipantV9VideoInfoVSgMR);
      if (one-time initialization token for conversationKit != -1)
      {
        swift_once();
      }

      v37 = static OS_os_log.conversationKit;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v38 = swift_allocObject();
      *(v38 + 16) = xmmword_1BC4BAA20;
      v79 = v2;
      v39 = String.init<A>(reflecting:)();
      v41 = v40;
      v42 = MEMORY[0x1E69E6158];
      *(v38 + 56) = MEMORY[0x1E69E6158];
      v43 = lazy protocol witness table accessor for type String and conformance String();
      *(v38 + 64) = v43;
      *(v38 + 32) = v39;
      *(v38 + 40) = v41;
      _s15ConversationKit11ParticipantVWOcTm_17(a1, v7);
      v44 = type metadata accessor for Participant(0);
      __swift_storeEnumTagSinglePayload(v7, 0, 1, v44);
      specialized >> prefix<A>(_:)();
      v46 = v45;
      v48 = v47;
      outlined destroy of CallControlsService?(v7, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
      *(v38 + 96) = v42;
      *(v38 + 104) = v43;
      *(v38 + 72) = v46;
      *(v38 + 80) = v48;
      v49 = static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)("Registering token %@ with audio frequency controller %@", 55, 2, &dword_1BBC58000, v37, v49, v38);
    }

    else
    {
      if (v2 == v20)
      {
        v36 = v78;

        return;
      }

      if (one-time initialization token for conversationKit != -1)
      {
        swift_once();
      }

      v77 = static OS_os_log.conversationKit;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v63 = swift_allocObject();
      *(v63 + 16) = xmmword_1BC4BB980;
      v79 = v20;
      v64 = String.init<A>(reflecting:)();
      v66 = v65;
      v67 = MEMORY[0x1E69E6158];
      *(v63 + 56) = MEMORY[0x1E69E6158];
      v68 = lazy protocol witness table accessor for type String and conformance String();
      *(v63 + 64) = v68;
      *(v63 + 32) = v64;
      *(v63 + 40) = v66;
      v79 = v2;
      v69 = String.init<A>(reflecting:)();
      *(v63 + 96) = v67;
      *(v63 + 104) = v68;
      *(v63 + 72) = v69;
      *(v63 + 80) = v70;
      _s15ConversationKit11ParticipantVWOcTm_17(a1, v7);
      v71 = type metadata accessor for Participant(0);
      __swift_storeEnumTagSinglePayload(v7, 0, 1, v71);
      specialized >> prefix<A>(_:)();
      v73 = v72;
      v75 = v74;
      outlined destroy of CallControlsService?(v7, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
      *(v63 + 136) = v67;
      *(v63 + 144) = v68;
      *(v63 + 112) = v73;
      *(v63 + 120) = v75;
      v76 = static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)("Unregistering old token %@ and registering new token %@ with audio frequency controller %@", 90, 2, &dword_1BBC58000, v77, v76, v63);

      [v78 unregisterParticipantPowerSpectrum_];
    }

    [v78 registerParticipantPowerSpectrum_];
LABEL_48:

    return;
  }

  v19 = OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationState;
  swift_beginAccess();
  v20 = *(v1 + v19);
  if (v20 >= 3)
  {
    if (v20 == 3)
    {
      if (one-time initialization token for conversationKit != -1)
      {
        swift_once();
      }

      v21 = static OS_os_log.conversationKit;
      v22 = static os_log_type_t.error.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_1BC4BA940;
      _s15ConversationKit11ParticipantVWOcTm_17(a1, v7);
      v24 = type metadata accessor for Participant(0);
      __swift_storeEnumTagSinglePayload(v7, 0, 1, v24);
      specialized >> prefix<A>(_:)();
      v26 = v25;
      v28 = v27;
      outlined destroy of CallControlsService?(v7, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
      *(v23 + 56) = MEMORY[0x1E69E6158];
      *(v23 + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v23 + 32) = v26;
      *(v23 + 40) = v28;
      os_log(_:dso:log:type:_:)("Attempting to update frequency controller before it has been created: %@", 72, 2, &dword_1BBC58000, v21, v22, v23);
      goto LABEL_8;
    }

    if (v20 != 4)
    {
      v80[0] = 0;
      v80[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(72);
      MEMORY[0x1BFB20B10](0xD000000000000046, 0x80000001BC521D50);
      v79 = v20;
      v34 = dispatch thunk of CustomStringConvertible.description.getter();
      v7 = v35;
      MEMORY[0x1BFB20B10](v34);

      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      goto LABEL_27;
    }
  }
}

uint64_t ConversationController.captionsProvider(for:token:)(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v30 - v6;
  v8 = ConversationController.existingCaptionsProvider(for:token:)(a1, a2);
  if (v8)
  {
    return v8;
  }

  v10 = OBJC_IVAR____TtC15ConversationKit22ConversationController_participantCaptionsProviderCreator;
  swift_beginAccess();
  outlined init with copy of CallCenterProvider(v2 + v10, v32);
  v11 = v33;
  v12 = v34;
  __swift_project_boxed_opaque_existential_1(v32, v33);
  v9 = (*(v12 + 8))(a2, v11, v12);
  v14 = v13;
  __swift_destroy_boxed_opaque_existential_1(v32);
  if (v9)
  {
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    v31 = static OS_os_log.conversationKit;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1BC4BB980;
    v32[0] = v9;
    v32[1] = v14;
    swift_unknownObjectRetain_n();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit27ParticipantCaptionsProvider_pMd, &_s15ConversationKit27ParticipantCaptionsProvider_pMR);
    v16 = String.init<A>(reflecting:)();
    v18 = v17;
    v19 = MEMORY[0x1E69E6158];
    *(v15 + 56) = MEMORY[0x1E69E6158];
    v20 = lazy protocol witness table accessor for type String and conformance String();
    *(v15 + 64) = v20;
    *(v15 + 32) = v16;
    *(v15 + 40) = v18;
    v32[0] = a2;
    v21 = String.init<A>(reflecting:)();
    *(v15 + 96) = v19;
    *(v15 + 104) = v20;
    *(v15 + 72) = v21;
    *(v15 + 80) = v22;
    _s15ConversationKit11ParticipantVWOcTm_17(a1, v7);
    v23 = type metadata accessor for Participant(0);
    __swift_storeEnumTagSinglePayload(v7, 0, 1, v23);
    specialized >> prefix<A>(_:)();
    v25 = v24;
    v27 = v26;
    outlined destroy of CallControlsService?(v7, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
    *(v15 + 136) = v19;
    *(v15 + 144) = v20;
    *(v15 + 112) = v25;
    *(v15 + 120) = v27;
    v28 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Created captions provider %@ for participant with token %@. %@", 62, 2, &dword_1BBC58000, v31, v28, v15);
    swift_unknownObjectRelease();
  }

  return v9;
}

double ConversationController.remoteVideoClient(for:ofType:token:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v33[-v10];
  ConversationController.existingVideoProvider(for:ofType:token:)(v6, a3, &v34);
  if (v35)
  {
    outlined init with take of TapInteractionHandler(&v34, a4);
  }

  else
  {
    outlined destroy of CallControlsService?(&v34, &_s15ConversationKit24ParticipantVideoProvider_pSgMd, _s15ConversationKit24ParticipantVideoProvider_pSgMR);
    v13 = OBJC_IVAR____TtC15ConversationKit22ConversationController_participantMediaProviderCreator;
    swift_beginAccess();
    outlined init with copy of CallCenterProvider(v4 + v13, &v34);
    v14 = v35;
    v15 = v36;
    __swift_project_boxed_opaque_existential_1(&v34, v35);
    (*(v15 + 8))(a3, v4, &protocol witness table for ConversationController, v14, v15);
    __swift_destroy_boxed_opaque_existential_1(&v34);
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    v16 = static OS_os_log.conversationKit;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1BC4BB990;
    outlined init with copy of CallCenterProvider(a4, &v34);
    v18 = specialized >> prefix<A>(_:)(&v34);
    v20 = v19;
    outlined destroy of CallControlsService?(&v34, &_s15ConversationKit24ParticipantVideoProvider_pSgMd, _s15ConversationKit24ParticipantVideoProvider_pSgMR);
    v21 = MEMORY[0x1E69E6158];
    *(v17 + 56) = MEMORY[0x1E69E6158];
    v22 = lazy protocol witness table accessor for type String and conformance String();
    *(v17 + 64) = v22;
    *(v17 + 32) = v18;
    *(v17 + 40) = v20;
    *&v34 = a3;
    v23 = String.init<A>(reflecting:)();
    *(v17 + 96) = v21;
    *(v17 + 104) = v22;
    *(v17 + 72) = v23;
    *(v17 + 80) = v24;
    LOBYTE(v34) = v6;
    v25 = String.init<A>(reflecting:)();
    *(v17 + 136) = v21;
    *(v17 + 144) = v22;
    *(v17 + 112) = v25;
    *(v17 + 120) = v26;
    _s15ConversationKit11ParticipantVWOcTm_17(a1, v11);
    v27 = type metadata accessor for Participant(0);
    __swift_storeEnumTagSinglePayload(v11, 0, 1, v27);
    specialized >> prefix<A>(_:)();
    v29 = v28;
    v31 = v30;
    outlined destroy of CallControlsService?(v11, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
    *(v17 + 176) = v21;
    *(v17 + 184) = v22;
    *(v17 + 152) = v29;
    *(v17 + 160) = v31;
    v32 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Created video provider %@ for participant with token %@ type %@. %@", 67, 2, &dword_1BBC58000, v16, v32, v17);
  }

  return result;
}

unint64_t ConversationController.remoteOrientationFor(aspectRatio:videoRotation:deviceFamily:)(unint64_t result, uint64_t a2, double a3, double a4)
{
  if (a4 >= a3)
  {
    if (result <= 3)
    {
      v4 = &unk_1BC4E9BC0;
      return v4[result];
    }

    return 1;
  }

  if (a2 != 3)
  {
    return result;
  }

  if (result >= 4)
  {
    return 1;
  }

  v4 = &unk_1BC4E9BA0;
  return v4[result];
}

uint64_t static ConversationController.member(correspondingTo:in:)(uint64_t a1, void *a2)
{
  v3 = *(a1 + *(type metadata accessor for Participant(0) + 28));
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  static ConversationController.member(correspondingTo:in:)(v4, a2);
  v6 = v5;

  return v6;
}

void ConversationController.didUpdateVisibleParticipant(_:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v21[-v4];
  v6 = ConversationController.visibleParticipants.getter();
  v22 = a1;
  v7 = specialized Collection.firstIndex(where:)(partial apply for closure #1 in ConversationController.postParticipantStateChangeCallbacks(for:updatedFrom:), v21, v6);
  v9 = v8;

  if (v9)
  {
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    v10 = static OS_os_log.conversationKit;
    v11 = static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1BC4BA940;
    _s15ConversationKit11ParticipantVWOcTm_17(a1, v5);
    v13 = type metadata accessor for Participant(0);
    __swift_storeEnumTagSinglePayload(v5, 0, 1, v13);
    specialized >> prefix<A>(_:)();
    v15 = v14;
    v17 = v16;
    outlined destroy of CallControlsService?(v5, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
    *(v12 + 56) = MEMORY[0x1E69E6158];
    *(v12 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v12 + 32) = v15;
    *(v12 + 40) = v17;
    os_log(_:dso:log:type:_:)("Unable to determine visible index for %@", 40, 2, &dword_1BBC58000, v10, v11, v12);
  }

  else
  {
    v18 = v1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateVisibleParticipant;
    swift_beginAccess();
    v19 = *v18;
    if (*v18)
    {
      v20 = *(v18 + 8);

      v19(a1, v7);
      outlined consume of (@escaping @callee_guaranteed () -> ())?(v19, v20);
    }
  }
}

void ConversationController.updateRemoteParticipantsKickableAndAuthorizedToChangeGroupMembership(with:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v102 = &v93 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v110 = &v93 - v7;
  v114 = type metadata accessor for Participant(0);
  v108 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114);
  v93 = &v93 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v105 = &v93 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v93 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v93 - v15;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_15ConversationKit11ParticipantV7elementtMd, &_sSi6offset_15ConversationKit11ParticipantV7elementtMR);
  MEMORY[0x1EEE9AC00](v103);
  v94 = (&v93 - v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_15ConversationKit11ParticipantV7elementtSgMd, &_sSi6offset_15ConversationKit11ParticipantV7elementtSgMR);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v93 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v111 = &v93 - v22;
  v23 = type metadata accessor for DispatchPredicate();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = (&v93 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v26 = static OS_dispatch_queue.main.getter();
  (*(v24 + 104))(v26, *MEMORY[0x1E69E8020], v23);
  v27 = _dispatchPreconditionTest(_:)();
  (*(v24 + 8))(v26, v23);
  if ((v27 & 1) == 0)
  {
    goto LABEL_43;
  }

  v28 = OBJC_IVAR____TtC15ConversationKit22ConversationController_remoteParticipants;
  swift_beginAccess();
  v99 = v28;
  v29 = *(v2 + v28);
  v30 = *(v29 + 16);
  v96 = v2 + OBJC_IVAR____TtC15ConversationKit22ConversationController_visibleParticipantKickableStatusDidChange;
  v95 = v29;

  v31 = 0;
  v97 = xmmword_1BC4BB990;
  v100 = a1;
  v101 = v2;
  v32 = v114;
  v33 = v103;
  v34 = v111;
  v104 = v16;
  v106 = v30;
  v107 = v20;
  while (1)
  {
    while (1)
    {
      if (v31 == v30)
      {
        v35 = 1;
        v31 = v30;
      }

      else
      {
        if ((v31 & 0x8000000000000000) != 0)
        {
          goto LABEL_41;
        }

        if (v31 >= *(v95 + 16))
        {
          goto LABEL_42;
        }

        v36 = v95 + ((*(v108 + 80) + 32) & ~*(v108 + 80)) + *(v108 + 72) * v31;
        v37 = *(v33 + 48);
        v38 = v94;
        *v94 = v31;
        _s15ConversationKit11ParticipantVWOcTm_17(v36, v38 + v37);
        outlined init with take of ZStack<TupleView<(ModifiedContent<_ShapeView<Rectangle, Color>, _AllowsHitTestingModifier>, ModifiedContent<StaticIf<Solarium, _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, _AnimationModifier<Bool>>)>>(v38, v20, &_sSi6offset_15ConversationKit11ParticipantV7elementtMd, &_sSi6offset_15ConversationKit11ParticipantV7elementtMR);
        v35 = 0;
        ++v31;
        v34 = v111;
      }

      __swift_storeEnumTagSinglePayload(v20, v35, 1, v33);
      outlined init with take of ZStack<TupleView<(ModifiedContent<_ShapeView<Rectangle, Color>, _AllowsHitTestingModifier>, ModifiedContent<StaticIf<Solarium, _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, _AnimationModifier<Bool>>)>>(v20, v34, &_sSi6offset_15ConversationKit11ParticipantV7elementtSgMd, &_sSi6offset_15ConversationKit11ParticipantV7elementtSgMR);
      if (__swift_getEnumTagSinglePayload(v34, 1, v33) == 1)
      {

        return;
      }

      v39 = *v34;
      _s15ConversationKit11ParticipantVWObTm_8(v34 + *(v33 + 48), v16);
      v40 = *(v32 + 28);
      v41 = *&v16[v40];
      if (v41)
      {
        break;
      }

      _s15ConversationKit11ParticipantVWOhTm_18(v16, type metadata accessor for Participant);
      v30 = v106;
      v20 = v107;
    }

    _s15ConversationKit11ParticipantVWOcTm_17(v16, v13);
    v42 = v32;
    v43 = a1[3];
    v44 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v43);
    v113 = v41;
    v112 = Conversation.containsKickable(participantWithHandle:)(v113, v43, v44);
    v52 = v112 & 1;
    v53 = &v13[*(v42 + 24)];
    if (v52 != v53[3])
    {
      v54 = v105;
      Participant.asKickable(_:)(v52, v45, v46, v47, v48, v49, v50, v51, v93, v94, v95, v96, v97, *(&v97 + 1), v98, v99, v100, v101, v102, v103);
      _s15ConversationKit11ParticipantVWOhTm_18(v13, type metadata accessor for Participant);
      _s15ConversationKit11ParticipantVWObTm_8(v54, v13);
    }

    v55 = a1[3];
    __swift_project_boxed_opaque_existential_1(a1, v55);
    v63 = Conversation.containsAuthorizedToChangeGroupMembership(participantWithHandle:)(v113, v55);
    v64 = v63 & 1;
    v32 = v114;
    if (v64 != v13[*(v114 + 60)])
    {
      v65 = v105;
      Participant.asAuthorizedToChangeGroupMembership(_:)(v64, v56, v57, v58, v59, v60, v61, v62, v93, v94, v95, v96, v97, *(&v97 + 1), v98, v99, v100, v101, v102, v103);
      v32 = v114;
      _s15ConversationKit11ParticipantVWOhTm_18(v13, type metadata accessor for Participant);
      _s15ConversationKit11ParticipantVWObTm_8(v65, v13);
    }

    v16 = v104;
    static Participant.State.== infix(_:_:)();
    if ((v66 & 1) != 0 && (static UUID.== infix(_:_:)() & 1) != 0 && (*&v16[v40] == 0) == (*&v13[*(v32 + 28)] == 0))
    {
      v91 = &v16[*(v32 + 24)];
      if (*v53 == *v91 && ((v53[1] ^ v91[1]) & 1) == 0 && ((v53[2] ^ v91[2]) & 1) == 0 && ((v53[3] ^ v91[3]) & 1) == 0 && ((v53[4] ^ v91[4]) & 1) == 0)
      {

        _s15ConversationKit11ParticipantVWOhTm_18(v13, type metadata accessor for Participant);
        _s15ConversationKit11ParticipantVWOhTm_18(v16, type metadata accessor for Participant);
        v33 = v103;
        goto LABEL_31;
      }
    }

    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    v109 = static OS_os_log.conversationKit;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v67 = swift_allocObject();
    *(v67 + 16) = v97;
    v68 = v110;
    _s15ConversationKit11ParticipantVWOcTm_17(v16, v110);
    v69 = v114;
    __swift_storeEnumTagSinglePayload(v68, 0, 1, v114);
    v70 = v68;
    v71 = v102;
    outlined init with copy of IDView<AvatarStackView, [UUID]>(v70, v102, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
    if (__swift_getEnumTagSinglePayload(v71, 1, v69) == 1)
    {
      outlined destroy of CallControlsService?(v71, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
      v72 = 0xE300000000000000;
      v73 = 7104878;
    }

    else
    {
      v74 = v93;
      _s15ConversationKit11ParticipantVWObTm_8(v71, v93);
      _s15ConversationKit11ParticipantVWOcTm_17(v74, v105);
      v73 = String.init<A>(reflecting:)();
      v72 = v75;
      v76 = v74;
      v16 = v104;
      _s15ConversationKit11ParticipantVWOhTm_18(v76, type metadata accessor for Participant);
    }

    outlined destroy of CallControlsService?(v110, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
    v77 = MEMORY[0x1E69E6158];
    *(v67 + 56) = MEMORY[0x1E69E6158];
    v78 = lazy protocol witness table accessor for type String and conformance String();
    *(v67 + 64) = v78;
    *(v67 + 32) = v73;
    *(v67 + 40) = v72;
    v115 = v39;
    v79 = String.init<A>(reflecting:)();
    *(v67 + 96) = v77;
    *(v67 + 104) = v78;
    *(v67 + 72) = v79;
    *(v67 + 80) = v80;
    LOBYTE(v115) = v112 & 1;
    v81 = String.init<A>(reflecting:)();
    *(v67 + 136) = v77;
    *(v67 + 144) = v78;
    *(v67 + 112) = v81;
    *(v67 + 120) = v82;
    LOBYTE(v115) = v63 & 1;
    v83 = String.init<A>(reflecting:)();
    *(v67 + 176) = v77;
    *(v67 + 184) = v78;
    *(v67 + 152) = v83;
    *(v67 + 160) = v84;
    v85 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Updating participant: %@ at index: %@ as kickable: %@, and as authorizedToChangeGroupMembership: %@", 99, 2, &dword_1BBC58000, v109, v85, v67);

    v86 = *(v101 + v99);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      specialized _ArrayBuffer._consumeAndCreateNew()();
      v86 = v92;
    }

    v33 = v103;
    a1 = v100;
    if ((v39 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v39 >= *(v86 + 16))
    {
      goto LABEL_40;
    }

    outlined assign with copy of Participant.State(v13, v86 + ((*(v108 + 80) + 32) & ~*(v108 + 80)) + *(v108 + 72) * v39);
    ConversationController.remoteParticipants.setter(v86, &OBJC_IVAR____TtC15ConversationKit22ConversationController_remoteParticipants, v87);
    v88 = v96;
    swift_beginAccess();
    v89 = *v88;
    if (*v88)
    {
      v90 = *(v88 + 8);
      swift_endAccess();

      v89(v13, v39);
      outlined consume of (@escaping @callee_guaranteed () -> ())?(v89, v90);

      _s15ConversationKit11ParticipantVWOhTm_18(v13, type metadata accessor for Participant);
      _s15ConversationKit11ParticipantVWOhTm_18(v16, type metadata accessor for Participant);
    }

    else
    {
      _s15ConversationKit11ParticipantVWOhTm_18(v13, type metadata accessor for Participant);
      _s15ConversationKit11ParticipantVWOhTm_18(v16, type metadata accessor for Participant);
      swift_endAccess();
    }

    v32 = v114;
LABEL_31:
    v30 = v106;
    v20 = v107;
    v34 = v111;
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
}

uint64_t closure #3 in ConversationController.updateOtherInvitedParticipants()@<X0>(void **a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v44 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v43 = &v42 - v9;
  v10 = type metadata accessor for Participant.CountdownInfo(0);
  MEMORY[0x1EEE9AC00](v10);
  v49 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantV13CountdownInfoVSgMd, &_s15ConversationKit11ParticipantV13CountdownInfoVSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v42 - v13;
  v45 = &v42 - v13;
  v48 = type metadata accessor for UUID();
  v15 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Participant.State(0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *a1;
  v46 = v21;
  Date.init()();
  swift_storeEnumTagMultiPayload();
  UUID.init()();
  v47 = static Colors.ParticipantGradients.gradient(for:)(v21);
  v22 = v14;
  v23 = v10;
  __swift_storeEnumTagSinglePayload(v22, 1, 1, v10);
  v24 = type metadata accessor for ParticipantContactDetailsCache();
  v25 = a2[3];
  v26 = __swift_project_boxed_opaque_existential_1(a2, v25);
  v27 = specialized static ParticipantContactDetailsCache.cache(for:)(v26, v24, v25);
  v28 = type metadata accessor for Participant(0);
  v29 = a3 + v28[7];
  *(v29 + 32) = 0;
  *v29 = 0u;
  *(v29 + 16) = 0u;
  v30 = (a3 + v28[9]);
  *(a3 + v28[10]) = 0;
  *(a3 + v28[11]) = MEMORY[0x1E69E7CD0];
  *(a3 + v28[12]) = 0;
  _s15ConversationKit11ParticipantVWObTm_8(v20, a3);
  (*(v15 + 32))(a3 + v28[5], v17, v48);
  v31 = v23;
  v32 = a3 + v28[6];
  *v32 = 16843008;
  *(v32 + 4) = 0;
  outlined consume of Participant.RemoteIdentifiers?(*v29, *(v29 + 8), *(v29 + 16), *(v29 + 24), *(v29 + 32));
  v33 = v47;
  *v29 = v46;
  *(v29 + 8) = xmmword_1BC4BB7D0;
  *(v29 + 24) = 0;
  *(v29 + 32) = 0;
  v34 = v45;
  *(a3 + v28[8]) = v33;
  *v30 = 0;
  v30[1] = 0;
  *(a3 + v28[15]) = 0;
  *(a3 + v28[13]) = 0;
  if (__swift_getEnumTagSinglePayload(v34, 1, v23) == 1)
  {
    v35 = type metadata accessor for Date();
    v48 = v27;
    v36 = v43;
    __swift_storeEnumTagSinglePayload(v43, 1, 1, v35);
    v37 = v44;
    __swift_storeEnumTagSinglePayload(v44, 1, 1, v35);
    v38 = v49;
    __swift_storeEnumTagSinglePayload(v49, 1, 1, v35);
    v39 = *(v31 + 20);
    __swift_storeEnumTagSinglePayload(v38 + v39, 1, 1, v35);
    v40 = v36;
    v27 = v48;
    outlined assign with take of UICollectionView.SupplementaryRegistration<InCallControlsSectionHeaderView>?(v40, v38, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    outlined assign with take of UICollectionView.SupplementaryRegistration<InCallControlsSectionHeaderView>?(v37, v38 + v39, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    *(v38 + *(v31 + 24)) = 0;
    if (__swift_getEnumTagSinglePayload(v34, 1, v31) != 1)
    {
      outlined destroy of CallControlsService?(v34, &_s15ConversationKit11ParticipantV13CountdownInfoVSgMd, &_s15ConversationKit11ParticipantV13CountdownInfoVSgMR);
    }
  }

  else
  {
    v38 = v49;
    _s15ConversationKit11ParticipantVWObTm_8(v34, v49);
  }

  result = _s15ConversationKit11ParticipantVWObTm_8(v38, a3 + v28[14]);
  *(a3 + v28[16]) = v27;
  return result;
}

void ConversationController.isParticipant(_:activeIn:)(void *a1, id a2)
{
  v2 = [a2 activeRemoteParticipants];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationParticipant, 0x1E69D8B90);
  lazy protocol witness table accessor for type TUConversationInvitationPreference and conformance NSObject(&lazy protocol witness table cache variable for type TUConversationParticipant and conformance NSObject, &lazy cache variable for type metadata for TUConversationParticipant, 0x1E69D8B90);
  v3 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v3 = v19;
    v4 = v20;
    v5 = v21;
    v6 = v22;
    v7 = v23;
  }

  else
  {
    v8 = -1 << *(v3 + 32);
    v4 = v3 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(v3 + 56);

    v6 = 0;
  }

  v11 = (v5 + 64) >> 6;
  while (v3 < 0)
  {
    if (!__CocoaSet.Iterator.next()() || (swift_dynamicCast(), (v14 = v18) == 0))
    {
LABEL_18:
      outlined consume of Set<TUHandle>.Iterator._Variant(v3);

      return;
    }

LABEL_17:
    v15 = [v14 identifier];
    v16 = [a1 identifier];

    if (v15 == v16)
    {
      goto LABEL_18;
    }
  }

  v12 = v6;
  v13 = v7;
  if (v7)
  {
LABEL_13:
    v7 = (v13 - 1) & v13;
    v14 = *(*(v3 + 48) + ((v6 << 9) | (8 * __clz(__rbit64(v13)))));
    if (!v14)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v6 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      goto LABEL_18;
    }

    v13 = *(v4 + 8 * v6);
    ++v12;
    if (v13)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

void ConversationController.activeParticipant(from:in:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for Participant(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
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
      v14 = [a1 identifier];
      v15 = &v8[*(v5 + 28)];
      if (*v15 && (*(v15 + 4) & 1) == 0 && v14 == *(v15 + 1))
      {

        _s15ConversationKit11ParticipantVWObTm_8(v8, a2);
        v16 = 0;
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
    v16 = 1;
LABEL_11:
    __swift_storeEnumTagSinglePayload(a2, v16, 1, v5);
  }
}

uint64_t closure #1 in ConversationController.lookupActiveConversation()(void *a1, uint64_t a2)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  (*(v8 + 8))(v7, v8);
  LOBYTE(a1) = static UUID.== infix(_:_:)();
  (*(v4 + 8))(v6, v3);
  return a1 & 1;
}

uint64_t ConversationController.conversationActiveRemoteParticipantsCount.getter()
{
  ConversationController.lookupActiveConversation()();
  if (v14)
  {
    OUTLINED_FUNCTION_384_0(v0, v1, v2, v3, v4, v5, v6, v7, v12, v13, v14, v15);
    v8 = v16[3];
    OUTLINED_FUNCTION_97_8(v16);
    v9 = OUTLINED_FUNCTION_4_38();
    v10(v9);
    specialized Set.count.getter();
    OUTLINED_FUNCTION_247();

    __swift_destroy_boxed_opaque_existential_1(v16);
  }

  else
  {
    outlined destroy of CallControlsService?(&v12, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
    return 0;
  }

  return v8;
}

uint64_t ConversationController.conversationHandoffInProgress.getter()
{
  ConversationController.lookupActiveConversation()();
  if (v8)
  {
    outlined init with take of TapInteractionHandler(&v7, v9);
    v0 = v10;
    v1 = v11;
    __swift_project_boxed_opaque_existential_1(v9, v10);
    Conversation.displayableActiveParticipants.getter(v0, v1);
    v2 = specialized Set.count.getter();

    if (v2 == 2)
    {
      v3 = v10;
      v4 = v11;
      __swift_project_boxed_opaque_existential_1(v9, v10);
      v5 = (*(v4 + 184))(v3, v4);
    }

    else
    {
      v5 = 0;
    }

    __swift_destroy_boxed_opaque_existential_1(v9);
  }

  else
  {
    outlined destroy of CallControlsService?(&v7, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
    v5 = 0;
  }

  return v5 & 1;
}

double ConversationController.existingVideoProvider(for:ofType:token:)@<D0>(char a1@<W1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  if (a1 == 3)
  {
    Participant.screenProvider.getter();
  }

  else
  {
    Participant.videoProvider(for:)();
  }

  outlined init with copy of IDView<AvatarStackView, [UUID]>(v25, &v20, &_s15ConversationKit24ParticipantVideoProvider_pSgMd, _s15ConversationKit24ParticipantVideoProvider_pSgMR);
  if (v21)
  {
    outlined init with take of TapInteractionHandler(&v20, v22);
    v5 = v23;
    v6 = v24;
    __swift_project_boxed_opaque_existential_1(v22, v23);
    v7 = (*(v6 + 8))(v5, v6);
    if ((v8 & 1) == 0 && v7 == a2)
    {
      outlined destroy of CallControlsService?(v25, &_s15ConversationKit24ParticipantVideoProvider_pSgMd, _s15ConversationKit24ParticipantVideoProvider_pSgMR);
      outlined init with copy of CallCenterProvider(v22, a3);
      __swift_destroy_boxed_opaque_existential_1(v22);
      return result;
    }

    __swift_destroy_boxed_opaque_existential_1(v22);
  }

  else
  {
    outlined destroy of CallControlsService?(&v20, &_s15ConversationKit24ParticipantVideoProvider_pSgMd, _s15ConversationKit24ParticipantVideoProvider_pSgMR);
  }

  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  v10 = static OS_os_log.conversationKit;
  v11 = static os_log_type_t.error.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1BC4BAA20;
  v13 = specialized >> prefix<A>(_:)(v25);
  v15 = v14;
  v16 = MEMORY[0x1E69E6158];
  *(v12 + 56) = MEMORY[0x1E69E6158];
  v17 = lazy protocol witness table accessor for type String and conformance String();
  *(v12 + 64) = v17;
  *(v12 + 32) = v13;
  *(v12 + 40) = v15;
  v22[0] = a2;
  v18 = String.init<A>(reflecting:)();
  *(v12 + 96) = v16;
  *(v12 + 104) = v17;
  *(v12 + 72) = v18;
  *(v12 + 80) = v19;
  os_log(_:dso:log:type:_:)("Existing video provider %@, for participant does not have requested token %@", 76, 2, &dword_1BBC58000, v10, v11, v12);

  outlined destroy of CallControlsService?(v25, &_s15ConversationKit24ParticipantVideoProvider_pSgMd, _s15ConversationKit24ParticipantVideoProvider_pSgMR);
  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0;
  return result;
}

uint64_t ConversationController.existingCaptionsProvider(for:token:)(uint64_t a1, uint64_t a2)
{
  v3 = Participant.captionsProvider.getter();
  if (!Participant.captionsProvider.getter() || (v5 = v4, ObjectType = swift_getObjectType(), v7 = (*(v5 + 8))(ObjectType, v5), v9 = v8, swift_unknownObjectRelease(), (v9 & 1) != 0) || v7 != a2)
  {
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    v10 = static OS_os_log.conversationKit;
    v11 = static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1BC4BAA20;
    if (v3)
    {
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit27ParticipantCaptionsProvider_pMd, &_s15ConversationKit27ParticipantCaptionsProvider_pMR);
      v13 = String.init<A>(reflecting:)();
      v15 = v14;
    }

    else
    {
      v15 = 0xE300000000000000;
      v13 = 7104878;
    }

    v16 = MEMORY[0x1E69E6158];
    *(v12 + 56) = MEMORY[0x1E69E6158];
    v17 = lazy protocol witness table accessor for type String and conformance String();
    *(v12 + 64) = v17;
    *(v12 + 32) = v13;
    *(v12 + 40) = v15;
    v18 = String.init<A>(reflecting:)();
    *(v12 + 96) = v16;
    *(v12 + 104) = v17;
    *(v12 + 72) = v18;
    *(v12 + 80) = v19;
    os_log(_:dso:log:type:_:)("Existing captions provider %@, for participant does not have requested token %@", 79, 2, &dword_1BBC58000, v10, v11, v12, a2);
    swift_unknownObjectRelease();

    return 0;
  }

  return v3;
}

void closure #1 in ConversationController.updateShouldShowLastFrameDuringUPlusOneHandoff()(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    if (*(Strong + OBJC_IVAR____TtC15ConversationKit22ConversationController_shouldShowLastFrameDuringUPlusOneHandoff) == 1)
    {
      if (one-time initialization token for conversationController != -1)
      {
        swift_once();
      }

      v3 = type metadata accessor for Logger();
      __swift_project_value_buffer(v3, static Logger.conversationController);
      v4 = v2;
      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        v8 = swift_slowAlloc();
        v12 = v8;
        *v7 = 136315138;
        v9 = String.init<A>(reflecting:)();
        v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v12);

        *(v7 + 4) = v11;
        _os_log_impl(&dword_1BBC58000, v5, v6, "[%s] Reset shouldShowLastFrameDuringUPlusOneHandoff flag on timeout", v7, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v8);
        MEMORY[0x1BFB23DF0](v8, -1, -1);
        MEMORY[0x1BFB23DF0](v7, -1, -1);
      }

      ConversationController.shouldShowLastFrameDuringUPlusOneHandoff.setter(0);
    }
  }
}

id ConversationController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void ConversationController.callCenter(_:stateChangedFor:)()
{
  OUTLINED_FUNCTION_29();
  v2 = v0;
  v4 = v3;
  swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  OUTLINED_FUNCTION_22(v5);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_13_1();
  v102 = v7;
  OUTLINED_FUNCTION_4_24();
  v8 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_23_19();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_170_4();
  type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_363();
  v14 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v1 = static OS_dispatch_queue.main.getter();
  v15 = OUTLINED_FUNCTION_171_3();
  v16(v15);
  _dispatchPreconditionTest(_:)();
  v17 = OUTLINED_FUNCTION_173_2();
  v18(v17);
  if ((v14 & 1) == 0)
  {
    __break(1u);
LABEL_25:
    OUTLINED_FUNCTION_8_106(&one-time initialization token for conversationController);
    goto LABEL_12;
  }

  ConversationController.lookupActiveConversation()();
  if (v109)
  {
    OUTLINED_FUNCTION_335();
    OUTLINED_FUNCTION_359_0(v110);
    v19 = OUTLINED_FUNCTION_114_2();
    v20(v19);
    OUTLINED_FUNCTION_359_0(v4);
    v21 = OUTLINED_FUNCTION_114_2();
    v22(v21);
    OUTLINED_FUNCTION_2_125();
    v23 = static UUID.== infix(_:_:)();
    v24 = *(v10 + 8);
    v25 = OUTLINED_FUNCTION_281();
    v24(v25);
    v26 = OUTLINED_FUNCTION_196_2();
    v24(v26);
    if (v23)
    {
      v27 = &v2[OBJC_IVAR____TtC15ConversationKit22ConversationController_call];
      OUTLINED_FUNCTION_3_0();
      swift_beginAccess();
      v28 = *(v27 + 1);
      swift_getObjectType();
      v29 = *(v28 + 96);
      swift_unknownObjectRetain();
      v30 = OUTLINED_FUNCTION_112();
      v31 = v29(v30);
      swift_unknownObjectRelease();
      if (v31)
      {
        if (one-time initialization token for conversationController != -1)
        {
          OUTLINED_FUNCTION_8_106(&one-time initialization token for conversationController);
        }

        v32 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_52(v32, static Logger.conversationController);
        v33 = OUTLINED_FUNCTION_365_0();
        outlined init with copy of CallCenterProvider(v33, v34);
        v35 = v2;
        v36 = Logger.logObject.getter();
        v37 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v36, v37))
        {
          v38 = OUTLINED_FUNCTION_23();
          OUTLINED_FUNCTION_13_31();
          *v38 = 136315650;
          v39 = String.init<A>(reflecting:)();
          v41 = OUTLINED_FUNCTION_449(v39, v40);

          *(v38 + 4) = v41;
          *(v38 + 12) = 2080;
          __swift_project_boxed_opaque_existential_1(v108, v109);
          v42 = OUTLINED_FUNCTION_114_2();
          v43(v42);
          type metadata accessor for TUConversationState(0);
          String.init<A>(reflecting:)();
          OUTLINED_FUNCTION_250();
          __swift_destroy_boxed_opaque_existential_1(v108);
          v44 = OUTLINED_FUNCTION_334();
          getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v45, v46);
          OUTLINED_FUNCTION_239_4();

          *(v38 + 14) = v31;
          *(v38 + 22) = 2080;
          v47 = v35;
          v48 = String.init<A>(reflecting:)();
          OUTLINED_FUNCTION_449(v48, v49);
          OUTLINED_FUNCTION_173();

          *(v38 + 24) = 2080;
          OUTLINED_FUNCTION_379_0();
          _os_log_impl(v50, v51, v52, v53, v54, 0x20u);
          OUTLINED_FUNCTION_399_0();
          swift_arrayDestroy();
          OUTLINED_FUNCTION_104_2();
          OUTLINED_FUNCTION_2_2();
        }

        else
        {

          __swift_destroy_boxed_opaque_existential_1(v108);
        }

        v99 = OUTLINED_FUNCTION_365_0();
        outlined init with copy of CallCenterProvider(v99, v100);
        ConversationController.update(with:)();
        outlined destroy of CallControlsService?(v108, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
        __swift_destroy_boxed_opaque_existential_1(v110);
        goto LABEL_21;
      }
    }

    __swift_destroy_boxed_opaque_existential_1(v110);
  }

  else
  {
    outlined destroy of CallControlsService?(v108, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
  }

  if (one-time initialization token for conversationController != -1)
  {
    goto LABEL_25;
  }

LABEL_12:
  v55 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v55, static Logger.conversationController);
  outlined init with copy of CallCenterProvider(v4, v110);
  v56 = OUTLINED_FUNCTION_365_0();
  outlined init with copy of CallCenterProvider(v56, v57);
  v58 = v2;
  v59 = Logger.logObject.getter();
  v60 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v59, v60))
  {
    v61 = OUTLINED_FUNCTION_23();
    v107 = OUTLINED_FUNCTION_13_31();
    *v61 = 136315650;
    LOBYTE(v106) = v58[OBJC_IVAR____TtC15ConversationKit22ConversationController_mode];
    v62 = String.init<A>(reflecting:)();
    v64 = OUTLINED_FUNCTION_449(v62, v63);

    *(v61 + 4) = v64;
    *(v61 + 12) = 2080;
    v65 = v102;
    v66 = OUTLINED_FUNCTION_183_4(v110, v110[3]);
    v67 = OUTLINED_FUNCTION_28_14();
    v68(v67);
    v69 = OUTLINED_FUNCTION_18_9();
    OUTLINED_FUNCTION_531(v69, v70, v71, v8, v72, v73, v74, v75, v101, v107, v102, v103, v104, v105, v106, v107, v108[0], v108[1]);
    OUTLINED_FUNCTION_87();
    outlined destroy of CallControlsService?(v65, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    __swift_destroy_boxed_opaque_existential_1(v110);
    v76 = OUTLINED_FUNCTION_209();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v76, v77, v78);
    OUTLINED_FUNCTION_182();

    *(v61 + 14) = v66;
    *(v61 + 22) = 2080;
    OUTLINED_FUNCTION_2_167(v108);
    v79 = OUTLINED_FUNCTION_0_212();
    v80(v79);
    type metadata accessor for TUConversationState(0);
    v81 = String.init<A>(reflecting:)();
    __swift_destroy_boxed_opaque_existential_1(v108);
    v82 = OUTLINED_FUNCTION_208();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v82, v83, v84);
    OUTLINED_FUNCTION_246();

    *(v61 + 24) = v81;
    _os_log_impl(&dword_1BBC58000, v59, v60, "[%s] Untracked conversation %s state changed to %s", v61, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_3_83();
    OUTLINED_FUNCTION_3_26();
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(v110);
    __swift_destroy_boxed_opaque_existential_1(v108);
  }

  v85 = OUTLINED_FUNCTION_101_5();
  __swift_project_boxed_opaque_existential_1(v85, v86);
  v87 = OUTLINED_FUNCTION_0_212();
  if (v88(v87) == 2 || (v89 = OUTLINED_FUNCTION_101_5(), __swift_project_boxed_opaque_existential_1(v89, v90), v91 = OUTLINED_FUNCTION_0_212(), v92(v91) == 3))
  {
    v93 = *&v58[OBJC_IVAR____TtC15ConversationKit22ConversationController_videoMessageController];
    OUTLINED_FUNCTION_184_2(v4);
    v94 = OUTLINED_FUNCTION_84_9();
    v96 = v95(v94);
    if (v96)
    {
      v97 = v96;
      v98 = [v96 handle];
    }

    else
    {
      v98 = 0;
    }

    (*((*MEMORY[0x1E69E7D40] & *v93) + 0x140))(v98);
    ConversationController.handleRingingCallChangedToActiveIfNecessary()();
  }

LABEL_21:
  OUTLINED_FUNCTION_30_0();
}

void ConversationController.handleRingingCallChangedToActiveIfNecessary()()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC15ConversationKit22ConversationController_callWaitingUUIDs;
  swift_beginAccess();
  v6 = v5;
  v66 = v0;
  v7 = *&v0[v5];
  v65 = *(v7 + 16);
  if (!v65)
  {
    return;
  }

  v55 = v6;
  v8 = &v66[OBJC_IVAR____TtC15ConversationKit22ConversationController_callCenter];
  v54 = OBJC_IVAR____TtC15ConversationKit22ConversationController_mode;
  v64 = v7 + ((*(v2 + 80) + 32) & ~*(v2 + 80));

  swift_beginAccess();
  v9 = 0;
  v57 = 0;
  v63 = v2 + 16;
  v61 = (v2 + 8);
  *&v10 = 136315394;
  v53 = v10;
  v60 = v2;
  v59 = v4;
  v62 = v7;
  v58 = v8;
  while (v9 < *(v7 + 16))
  {
    (*(v2 + 16))(v4, v64 + *(v2 + 72) * v9, v1);
    v11 = *(v8 + 3);
    v12 = *(v8 + 4);
    v13 = __swift_project_boxed_opaque_existential_1(v8, v11);
    v14 = *(v11 - 8);
    v15 = MEMORY[0x1EEE9AC00](v13);
    v17 = v8;
    v18 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v14 + 16))(v18, v15);
    v19 = (*(v12 + 24))(v11, v12);
    (*(v14 + 8))(v18, v11);
    v20 = UUID.uuidString.getter();
    v21 = MEMORY[0x1BFB209B0](v20);

    v22 = [v19 callWithUniqueProxyIdentifier_];

    swift_unknownObjectRelease();
    if (v22)
    {
      v23 = v1;
      outlined init with copy of CallCenterProvider(v17, v70);
      v24 = v70[4];
      __swift_project_boxed_opaque_existential_1(v70, v70[3]);
      lazy protocol witness table accessor for type TUConversationInvitationPreference and conformance NSObject(&lazy protocol witness table cache variable for type TUCall and conformance TUCall, &lazy cache variable for type metadata for TUCall, 0x1E69D8A40);
      v25 = *(v24 + 104);
      v26 = v22;
      v25(&v68);

      if (!v69)
      {

        outlined destroy of CallControlsService?(&v68, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
        v46 = v70;
LABEL_19:
        __swift_destroy_boxed_opaque_existential_1(v46);
        v2 = v60;
        v4 = v59;
        v8 = v58;
        goto LABEL_20;
      }

      outlined init with take of TapInteractionHandler(&v68, v71);
      __swift_destroy_boxed_opaque_existential_1(v70);
      v27 = v72;
      v28 = v73;
      __swift_project_boxed_opaque_existential_1(v71, v72);
      if ((*(v28 + 56))(v27, v28) != 2)
      {
        v29 = v72;
        v30 = v73;
        __swift_project_boxed_opaque_existential_1(v71, v72);
        if ((*(v30 + 56))(v29, v30) != 3)
        {

          v46 = v71;
          goto LABEL_19;
        }
      }

      v31 = v59;
      if (one-time initialization token for conversationController != -1)
      {
        swift_once();
      }

      v32 = type metadata accessor for Logger();
      __swift_project_value_buffer(v32, static Logger.conversationController);
      outlined init with copy of CallCenterProvider(v71, v70);
      v33 = v66;
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.default.getter();
      v56 = v33;

      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v67[0] = v37;
        *v36 = v53;
        LOBYTE(v68) = v66[v54];
        v38 = String.init<A>(reflecting:)();
        v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v39, v67);

        *(v36 + 4) = v40;
        *(v36 + 12) = 2080;
        outlined init with copy of CallCenterProvider(v70, &v68);
        v41 = specialized >> prefix<A>(_:)(&v68);
        v43 = v42;
        outlined destroy of CallControlsService?(&v68, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
        __swift_destroy_boxed_opaque_existential_1(v70);
        v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v43, v67);

        *(v36 + 14) = v44;
        _os_log_impl(&dword_1BBC58000, v34, v35, "[%s] Ringing call has now been answered, transitioning tracked conversation to use %s", v36, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1BFB23DF0](v37, -1, -1);
        MEMORY[0x1BFB23DF0](v36, -1, -1);
      }

      else
      {

        v45 = __swift_destroy_boxed_opaque_existential_1(v70);
      }

      v1 = v23;
      v47 = v26;
      MEMORY[0x1EEE9AC00](v45);
      *(&v53 - 2) = v31;
      v48 = v55;
      swift_beginAccess();
      v49 = v57;
      v50 = specialized MutableCollection._halfStablePartition(isSuffixElement:)(partial apply for closure #1 in ConversationController.handleRingingCallChangedToActiveIfNecessary(), (&v53 - 2));
      if (v49)
      {
        goto LABEL_25;
      }

      v51 = *(*&v66[v48] + 16);
      v2 = v60;
      if (v51 < v50)
      {
        goto LABEL_24;
      }

      v57 = 0;
      specialized Array.replaceSubrange<A>(_:with:)(v50, v51);
      swift_endAccess();
      v52 = v47;
      specialized ConversationController.migrate(to:with:isUpgrade:)(v71, v52, 0, v56);

      __swift_destroy_boxed_opaque_existential_1(v71);
      v8 = v58;
      v4 = v31;
    }

    else
    {
      v8 = v17;
    }

LABEL_20:
    ++v9;
    (*v61)(v4, v1);
    v7 = v62;
    if (v65 == v9)
    {

      return;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  swift_endAccess();
  __break(1u);
}

void ConversationController.callCenter(_:localVideoToggledFor:)()
{
  OUTLINED_FUNCTION_29();
  v2 = v0;
  v4 = v3;
  v56 = v5;
  ObjectType = swift_getObjectType();
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_23_19();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_170_4();
  type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_363();
  v11 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v1 = static OS_dispatch_queue.main.getter();
  v12 = OUTLINED_FUNCTION_171_3();
  v13(v12);
  _dispatchPreconditionTest(_:)();
  v14 = OUTLINED_FUNCTION_173_2();
  v15(v14);
  if ((v11 & 1) == 0)
  {
    __break(1u);
LABEL_20:
    OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
    goto LABEL_10;
  }

  ConversationController.lookupActiveConversation()();
  if (v67[3])
  {
    OUTLINED_FUNCTION_446();
    v16 = v68[4];
    OUTLINED_FUNCTION_183_4(v68, v68[3]);
    v17 = OUTLINED_FUNCTION_246();
    v18(v17, v16);
    v19 = *(v4 + 32);
    v20 = OUTLINED_FUNCTION_48_0();
    __swift_project_boxed_opaque_existential_1(v20, v21);
    v22 = OUTLINED_FUNCTION_47_18();
    v23(v22, v19);
    OUTLINED_FUNCTION_2_125();
    v24 = static UUID.== infix(_:_:)();
    v25 = *(v7 + 8);
    v26 = OUTLINED_FUNCTION_281();
    v25(v26);
    v27 = OUTLINED_FUNCTION_196_2();
    v25(v27);
    if ((v24 & 1) == 0)
    {
LABEL_17:
      __swift_destroy_boxed_opaque_existential_1(v68);
      goto LABEL_18;
    }

    v28 = &v2[OBJC_IVAR____TtC15ConversationKit22ConversationController_broadcastingState];
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    if ((v28[16] & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    if ((dispatch thunk of CPCarPlayObserver.isCarplaySessionConnected.getter() & 1) != 0 || (OUTLINED_FUNCTION_3_0(), swift_beginAccess(), OUTLINED_FUNCTION_528(), v37 = *(v4 + 328), swift_unknownObjectRetain(), v38 = OUTLINED_FUNCTION_157(), v39 = v37(v38), swift_unknownObjectRelease(), (v39 & 1) == 0))
    {
      ConversationController.stopLocalVideo()();
    }

    else if ((v28[16] & 0x80000000) == 0)
    {
LABEL_5:
      if ((dispatch thunk of CPCarPlayObserver.isCarplaySessionConnected.getter() & 1) == 0)
      {
        v29 = &v2[OBJC_IVAR____TtC15ConversationKit22ConversationController_call];
        OUTLINED_FUNCTION_3_0();
        swift_beginAccess();
        v30 = *(v29 + 1);
        swift_getObjectType();
        v31 = *(v30 + 328);
        swift_unknownObjectRetain();
        v32 = OUTLINED_FUNCTION_7_8();
        LOBYTE(v29) = v31(v32);
        swift_unknownObjectRelease();
        if ((v29 & 1) != 0 && v2[OBJC_IVAR____TtC15ConversationKit22ConversationController_mode] == 1)
        {
          ConversationController.startLocalVideo(allowVideoUpgrade:)(0);
        }
      }
    }

    v40 = &v2[OBJC_IVAR____TtC15ConversationKit22ConversationController_call];
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    v41 = *(v40 + 1);
    outlined init with copy of CallCenterProvider(v56, v67);
    v42 = OBJC_IVAR____TtC15ConversationKit22ConversationController_deviceOrientation;
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    v43 = *&v2[v42];
    v44 = OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationState;
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    LOBYTE(v44) = *&v2[v44] == 3;
    v45 = swift_getObjectType();
    v46 = swift_unknownObjectRetain();
    v47 = specialized BroadcastingState.init(call:callCenter:deviceOrientation:shouldMaintainCameraPosition:)(v46, v67, v43, v44, v45, v41);
    ConversationController.broadcastingState.setter(v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, ObjectType, v58, v59, v60, v61, v62, v63, v64, v65, v66);
    goto LABEL_17;
  }

  outlined destroy of CallControlsService?(v67, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
  if (one-time initialization token for conversationKit != -1)
  {
    goto LABEL_20;
  }

LABEL_10:
  static os_log_type_t.error.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  OUTLINED_FUNCTION_37_22();
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_1BC4BA940;
  v68[0] = v2;
  v34 = v2;
  String.init<A>(reflecting:)();
  OUTLINED_FUNCTION_213_1();
  *(v33 + 56) = MEMORY[0x1E69E6158];
  v35 = lazy protocol witness table accessor for type String and conformance String();
  OUTLINED_FUNCTION_318_0(v35);
  OUTLINED_FUNCTION_51_22();
  os_log(_:dso:log:type:_:)(v36);

LABEL_18:
  OUTLINED_FUNCTION_30_0();
}

void ConversationController.callCenter(_:remoteMembersChangedFor:)(uint64_t a1, uint64_t a2, const char *a3, ...)
{
  OUTLINED_FUNCTION_29();
  v13 = OUTLINED_FUNCTION_440(v7, v8, v9, v10, v11, v12);
  v14 = OUTLINED_FUNCTION_391_0(v13);
  OUTLINED_FUNCTION_1();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_227();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_78_4();
  type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_7_10();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v3 = static OS_dispatch_queue.main.getter();
  v20 = OUTLINED_FUNCTION_450();
  v21(v20);
  v22 = _dispatchPreconditionTest(_:)();
  v23 = OUTLINED_FUNCTION_246_0();
  v24(v23);
  if ((v22 & 1) == 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  ConversationController.lookupActiveConversation()();
  if (!v41[3])
  {
    outlined destroy of CallControlsService?(v41, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
    if (one-time initialization token for conversationKit == -1)
    {
LABEL_9:
      static os_log_type_t.error.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      OUTLINED_FUNCTION_37_22();
      v38 = swift_allocObject();
      *(v38 + 16) = xmmword_1BC4BA940;
      v42[0] = v4;
      v39 = v4;
      OUTLINED_FUNCTION_387_0();
      OUTLINED_FUNCTION_267_2();
      *(v38 + 56) = MEMORY[0x1E69E6158];
      *(v38 + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v38 + 32) = v4;
      *(v38 + 40) = v6;
      OUTLINED_FUNCTION_94_11();
      os_log(_:dso:log:type:_:)(v40);

      goto LABEL_10;
    }

LABEL_12:
    OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_335();
  v25 = v42[4];
  OUTLINED_FUNCTION_203_4(v42, v42[3]);
  v26 = OUTLINED_FUNCTION_28_0();
  v27(v26, v25);
  v28 = *(v5 + 32);
  v29 = OUTLINED_FUNCTION_309();
  OUTLINED_FUNCTION_203_4(v29, v30);
  v31 = OUTLINED_FUNCTION_28_0();
  v32(v31, v28);
  v33 = static UUID.== infix(_:_:)();
  v34 = *(v16 + 8);
  v35 = OUTLINED_FUNCTION_28_14();
  v34(v35);
  (v34)(v6, v14);
  if (v33)
  {
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    OUTLINED_FUNCTION_37_22();
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_1BC4BA940;
    v41[0] = v4;
    v4;
    String.init<A>(reflecting:)();
    OUTLINED_FUNCTION_43_7();
    *(v36 + 56) = MEMORY[0x1E69E6158];
    *(v36 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v36 + 32) = v6;
    *(v36 + 40) = v28;
    static os_log_type_t.default.getter();
    OUTLINED_FUNCTION_41_0();
    os_log(_:dso:log:type:_:)(v37);

    outlined init with copy of CallCenterProvider(v5, v41);
    ConversationController.update(with:)();
    outlined destroy of CallControlsService?(v41, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
  }

  __swift_destroy_boxed_opaque_existential_1(v42);
LABEL_10:
  OUTLINED_FUNCTION_30_0();
}

void ConversationController.callCenter(_:activeRemoteParticipantsChangedFor:)(uint64_t a1, uint64_t a2, const char *a3, ...)
{
  OUTLINED_FUNCTION_29();
  v13 = OUTLINED_FUNCTION_440(v7, v8, v9, v10, v11, v12);
  v14 = OUTLINED_FUNCTION_391_0(v13);
  OUTLINED_FUNCTION_1();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_227();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_78_4();
  type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_7_10();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v3 = static OS_dispatch_queue.main.getter();
  v20 = OUTLINED_FUNCTION_450();
  v21(v20);
  v22 = _dispatchPreconditionTest(_:)();
  v23 = OUTLINED_FUNCTION_246_0();
  v24(v23);
  if ((v22 & 1) == 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  ConversationController.lookupActiveConversation()();
  if (!v41[3])
  {
    outlined destroy of CallControlsService?(v41, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
    if (one-time initialization token for conversationKit == -1)
    {
LABEL_9:
      static os_log_type_t.error.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      OUTLINED_FUNCTION_37_22();
      v38 = swift_allocObject();
      *(v38 + 16) = xmmword_1BC4BA940;
      v42[0] = v4;
      v39 = v4;
      OUTLINED_FUNCTION_387_0();
      OUTLINED_FUNCTION_267_2();
      *(v38 + 56) = MEMORY[0x1E69E6158];
      *(v38 + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v38 + 32) = v4;
      *(v38 + 40) = v6;
      OUTLINED_FUNCTION_94_11();
      os_log(_:dso:log:type:_:)(v40);

      goto LABEL_10;
    }

LABEL_12:
    OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_335();
  v25 = v42[4];
  OUTLINED_FUNCTION_203_4(v42, v42[3]);
  v26 = OUTLINED_FUNCTION_28_0();
  v27(v26, v25);
  v28 = v5[4];
  v29 = OUTLINED_FUNCTION_309();
  OUTLINED_FUNCTION_203_4(v29, v30);
  v31 = OUTLINED_FUNCTION_28_0();
  v32(v31, v28);
  v33 = static UUID.== infix(_:_:)();
  v34 = *(v16 + 8);
  v35 = OUTLINED_FUNCTION_28_14();
  v34(v35);
  (v34)(v6, v14);
  if (v33)
  {
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_0_6(&one-time initialization token for conversationKit);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    OUTLINED_FUNCTION_37_22();
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_1BC4BA940;
    v41[0] = v4;
    v4;
    String.init<A>(reflecting:)();
    OUTLINED_FUNCTION_508();
    *(v36 + 56) = MEMORY[0x1E69E6158];
    *(v36 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v36 + 32) = v4;
    *(v36 + 40) = v28;
    static os_log_type_t.default.getter();
    OUTLINED_FUNCTION_41_0();
    os_log(_:dso:log:type:_:)(v37);

    ConversationController.checkScreenTimeRestricts(_:)(v5);
    outlined init with copy of CallCenterProvider(v5, v41);
    ConversationController.update(with:)();
    outlined destroy of CallControlsService?(v41, &_s15ConversationKit0A0_pSgMd, &_s15ConversationKit0A0_pSgMR);
  }

  __swift_destroy_boxed_opaque_existential_1(v42);
LABEL_10:
  OUTLINED_FUNCTION_30_0();
}

void closure #1 in ConversationController.callCenter(_:oneToOneModeChangedFor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for Participant(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v17 - v11;
  v13 = swift_projectBox();
  ConversationController.remoteOneToOneParticipant.getter();
  swift_beginAccess();
  outlined assign with take of UICollectionView.SupplementaryRegistration<InCallControlsSectionHeaderView>?(v12, v13, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  swift_beginAccess();
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v13, v9, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
  if (__swift_getEnumTagSinglePayload(v9, 1, v4) == 1)
  {
    outlined destroy of CallControlsService?(v9, &_s15ConversationKit11ParticipantVSgMd, &_s15ConversationKit11ParticipantVSgMR);
LABEL_11:
    v15 = 0;
    goto LABEL_12;
  }

  _s15ConversationKit11ParticipantVWObTm_8(v9, v6);
  Participant.videoInfo.getter();
  if (!v22[0])
  {
    v21 = 0;
    v19 = 0u;
    v20 = 0u;
    goto LABEL_9;
  }

  specialized Dictionary.subscript.getter();
  outlined destroy of CallControlsService?(v22, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd, &_s15ConversationKit11ParticipantV9VideoInfoVSgMR);
  if (!*(&v20 + 1))
  {
LABEL_9:
    outlined destroy of CallControlsService?(&v19, &_s15ConversationKit24ParticipantVideoProvider_pSgMd, _s15ConversationKit24ParticipantVideoProvider_pSgMR);
    goto LABEL_10;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit24ParticipantVideoProvider_pMd, &_s15ConversationKit24ParticipantVideoProvider_pMR);
  type metadata accessor for RemoteParticipantVideoProvider();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    _s15ConversationKit11ParticipantVWOhTm_18(v6, type metadata accessor for Participant);
    goto LABEL_11;
  }

  v14 = v18;
  v15 = (*((*MEMORY[0x1E69E7D40] & *v18) + 0x100))();

  _s15ConversationKit11ParticipantVWOhTm_18(v6, type metadata accessor for Participant);
  if (!v15)
  {
    goto LABEL_11;
  }

LABEL_12:
  swift_beginAccess();
  v16 = *(a3 + 16);
  *(a3 + 16) = v15;
}